#include "display.h"
#include "power.h"
#include "libusbdev.h"
#include "transputer.h"
#include "peripherals.h"

// private
static uint8_t display_new[8];
static uint8_t display_old[8];
static bool brightness_flag;
static uint8_t display_mode;

#define I2C_BUS I2C_7_PERIPHERAL

#define I2C_ADDRESS_CTRL 	0x20
#define I2C_ADDRESS_DATA 	0x21

#define BRIGHTNESS_100 		0
#define BRIGHTNESS_80 		1
#define BRIGHTNESS_53 		2
#define BRIGHTNESS_40 		3
#define BRIGHTNESS_27 		4
#define BRIGHTNESS_20 		5
#define BRIGHTNESS_13		6
#define BRIGHTNESS_0		7

#define GLYPH_NONE			0
#define GLYPH_STANDBY		1
#define GLYPH_LINKSPEED_10	2
#define GLYPH_LINKSPEED_20	3
#define GLYPH_UP			4
#define GLYPH_DOWN			5
#define GLYPH_UP_DOWN		6
#define GLYPH_COUNT         7

enum {
	display_mode_current,
	display_mode_voltage,
	display_mode_wattage
};

uint8_t glyph_table[GLYPH_COUNT][7] = {
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}, // GLYPH_NONE
	{0x00, 0x0E, 0x1F, 0x1F, 0x1F, 0x0E, 0x00}, // GLYPH_STANDBY
	{0x0E, 0x04, 0x04, 0x04, 0x04, 0x04, 0x0E}, // GLYPH_LINKSPEED_10
	{0x1F, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x1F}, // GLYPH_LINKSPEED_20
	{0x04, 0x0E, 0x15, 0x04, 0x04, 0x04, 0x00}, // GLYPH_UP
	{0x00, 0x04, 0x04, 0x04, 0x15, 0x0E, 0x04}, // GLYPH_DOWN
	{0x04, 0x0E, 0x15, 0x04, 0x15, 0x0E, 0x04}, // GLYPH_UP_DOWN
};

static void write_port(uint8_t port, uint8_t byte)
{
	I2C_MasterStart(I2C_BUS, port, kI2C_Write);
	I2C_MasterWriteBlocking(I2C_BUS, &byte, 1, kI2C_TransferDefaultFlag);
	I2C_MasterStop(I2C_BUS);
}

static void write_reg(uint8_t reg, uint8_t data)
{
	write_port(I2C_ADDRESS_DATA, data);
	write_port(I2C_ADDRESS_CTRL, 0xE0 | reg);
	write_port(I2C_ADDRESS_CTRL, 0x60 | reg);
	write_port(I2C_ADDRESS_CTRL, 0x40 | reg);
	write_port(I2C_ADDRESS_CTRL, 0xE0 | reg);
}

static void write_char(uint8_t pos, uint8_t ch)
{
	if (ch <= GLYPH_COUNT) {
		write_reg(0x00, ch);
		write_reg(0x08, glyph_table[ch][0]);
		write_reg(0x09, glyph_table[ch][1]);
		write_reg(0x0A, glyph_table[ch][2]);
		write_reg(0x0B, glyph_table[ch][3]);
		write_reg(0x0C, glyph_table[ch][4]);
		write_reg(0x0D, glyph_table[ch][5]);
		write_reg(0x0E, glyph_table[ch][6]);
		write_reg(0x18 | pos, ch + 0x80);
	} else {
		write_reg(0x18 | pos, ch);
	}
}

static void set_brightness(uint8_t brightness)
{
	// normal operation, 53% brightness
	write_reg(0x10, brightness & 0x07);
}

void display_init(void)
{
	set_brightness(BRIGHTNESS_13);
}

static void write_text (char *text)
{
	int i = 0;
 	while(i < 8 && *text) {
		display_new[i++] = *text++;
 	}
 	while(i < 8) {
		display_new[i++] = ' ';
	}
}

static void display_value_unit(uint16_t value, char unit)
{
	if (value >= 10000) {
		display_new[0] = '0' + (value / 10000) % 10;
		display_new[1] = '0' + (value / 1000) % 10;
	} else {
		display_new[0] = ' ';
		display_new[1] = '0' + (value / 1000) % 10;
	}
	display_new[2] = '.';
	display_new[3] = '0' + (value / 100) % 10;
	display_new[4] = unit;
}

static void write_status(void)
{
	if (power.state > power_state_off) {
		switch(display_mode) {
		case display_mode_current:
			display_value_unit(power.current_mA, 'A');
			break;
		case display_mode_voltage:
			display_value_unit(power.voltage_mV, 'V');
			break;
		case display_mode_wattage:
			display_value_unit(power.wattage_mW, 'W');
			break;
		}

		if (transputer.analyse_led_10ms) {
			display_new[5] = 'A';
		} else if (transputer.reset_led_10ms) {
			display_new[5] = 'R';
		} else if (transputer.error_flag) {
			display_new[5] = 'E';
		} else {
			display_new[5] = ' ';
		}

		if (transputer.download_led_10ms && transputer.upload_led_10ms) {
			display_new[6] = GLYPH_UP_DOWN;
		} else if (transputer.download_led_10ms) {
			display_new[6] = GLYPH_DOWN;
		} else if (transputer.upload_led_10ms) {
			display_new[6] = GLYPH_UP;
		} else if (transputer.stall_flag) {
			display_new[6] = '!';
		} else {
			display_new[6] = ' ';
		}

		if (libusbdev_Connected()) {
			if (transputer.link_speed) {
				display_new[7] = GLYPH_LINKSPEED_20;
			} else {
				display_new[7] = GLYPH_LINKSPEED_10;
			}
		} else {
			display_new[7] = ' ';
		}
	} else {
		write_text("        ");
		display_new[7] = GLYPH_STANDBY;
	}
}

void display_next(void)
{
	switch(display_mode) {
	case display_mode_current:
		display_mode = display_mode_voltage;
		break;
	case display_mode_voltage:
		display_mode = display_mode_wattage;
		break;
	case display_mode_wattage:
		display_mode = display_mode_current;
		break;
	}
}

void display_task(void)
{
	switch (power.error) {
	case power_error_none:
		write_status();
		break;
	case power_error_min_voltage:
		write_text(" U-MIN!");
		break;
	case power_error_max_voltage:
		write_text(" U-MAX!");
		break;
	case power_error_max_current:
		write_text(" I-MAX!");
		break;
	case power_error_cooling:
		write_text("  FAN!");
		break;
	}

	for (int i = 0; i <= 7; i++) {
		if (display_old[i] != display_new[i]) {
		    write_char(i, display_new[i]);
			display_old[i] = display_new[i];
		}
	}

	if (power.state > power_state_off) {
		if (!brightness_flag) {
			brightness_flag = true;
			set_brightness(BRIGHTNESS_53);
		}
	} else {
		if (brightness_flag) {
			brightness_flag = false;
			set_brightness(BRIGHTNESS_13);
		}
	}
}
