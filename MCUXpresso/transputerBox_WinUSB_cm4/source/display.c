#include "display.h"
#include "power.h"
#include "transputer.h"
#include "peripherals.h"

// private
static uint8_t display_new[8];
static uint8_t display_old[8];

static bool brightness_flag;

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
	write_reg(0x18 | pos, ch);
}

static void set_brightness(uint8_t brightness)
{
	// normal operation, 53% brightness
	write_reg(0x10, brightness & 0x07);
}

void display_init(void)
{
	set_brightness(BRIGHTNESS_13);

	// standby icon
	write_reg(0x00, 0x00);
	write_reg(0x08, 0x00);
	write_reg(0x09, 0x0E);
	write_reg(0x0A, 0x1F);
	write_reg(0x0B, 0x1F);
	write_reg(0x0C, 0x1F);
	write_reg(0x0D, 0x0E);
	write_reg(0x0E, 0x00);

	// upload icon
	write_reg(0x00, 0x01);
	write_reg(0x08, 0x04);
	write_reg(0x09, 0x0E);
	write_reg(0x0A, 0x15);
	write_reg(0x0B, 0x04);
	write_reg(0x0C, 0x04);
	write_reg(0x0D, 0x04);
	write_reg(0x0E, 0x00);

	// download icon
	write_reg(0x00, 0x02);
	write_reg(0x08, 0x00);
	write_reg(0x09, 0x04);
	write_reg(0x0A, 0x04);
	write_reg(0x0B, 0x04);
	write_reg(0x0C, 0x15);
	write_reg(0x0D, 0x0E);
	write_reg(0x0E, 0x04);

	// up/download icon
	write_reg(0x00, 0x03);
	write_reg(0x08, 0x04);
	write_reg(0x09, 0x0E);
	write_reg(0x0A, 0x15);
	write_reg(0x0B, 0x04);
	write_reg(0x0C, 0x15);
	write_reg(0x0D, 0x0E);
	write_reg(0x0E, 0x04);
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

static void write_status(void)
{
	if (power.state > power_state_off) {
		if (power.current >= 10000) {
			display_new[0] = '0' + (power.current / 10000) % 10;
			display_new[1] = '0' + (power.current / 1000) % 10;
		} else {
			display_new[0] = ' ';
			display_new[1] = '0' + (power.current / 1000) % 10;
		}
		display_new[2] = '.';
		display_new[3] = '0' + (power.current / 100) % 10;
		display_new[4] = 'A';
		display_new[5] = ' ';
		if (transputer.download_led_10ms && transputer.upload_led_10ms) {
			display_new[6] = '\x83';
		} else if (transputer.download_led_10ms) {
			display_new[6] = '\x82';
		} else if (transputer.upload_led_10ms) {
			display_new[6] = '\x81';
		} else if (transputer.stall_flag) {
			display_new[6] = '!';
		} else {
			display_new[6] = ' ';
		}
		if (transputer.error_flag) {
			display_new[7] = 'E';
		} else {
			display_new[7] = ' ';
		}
	} else {
		write_text("       \x80");
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
