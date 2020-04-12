#include "transputer.h"
#include "power.h"
#include "peripherals.h"
#include "libusbdev.h"
#include "pin_mux.h"
#include "fifo.h"
#include "beep.h"

// public
transputer_t transputer;
transputer_c012_t c012;

// private
static uint32_t status_new;
static uint32_t status_old;

#define TRANSPUTER_LED_TIME_10ms 10

enum
{
	usb_intr_stop 			= 0x01,
	usb_intr_reset 			= 0x02,
	usb_intr_analyse 		= 0x04,
	usb_intr_error 			= 0x08,
	usb_intr_speed_10Mb 	= 0x10,
	usb_intr_speed_20Mb 	= 0x20,
};

// called by lusb_BulkIN_Hdlr
uint32_t bulk_in_callback(uint8_t *buffer, uint32_t len)
{
	len = fifo_deq(c012.tx_fifo, buffer, len);
	if (len) {
		transputer.upload_led_10ms = TRANSPUTER_LED_TIME_10ms;
	}
	return len;
}

// called by lusb_BulkOUT_Hdlr
bool bulk_out_callback(uint8_t *buffer, uint32_t len)
{
	if (power.state == power_state_ready) {
		if (fifo_enq(c012.rx_fifo, buffer, len) != len) {
			transputer.stall_flag = true;
		} else {
			transputer.download_led_10ms = TRANSPUTER_LED_TIME_10ms;
		}
		fifo_int_t count = fifo_count(c012.rx_fifo);
		if (count > fifo_size(c012.rx_fifo) / 2) {
			transputer.stop_flag = true;
		}
	} else {
		// powered off: send back null data
		memset(buffer, 0, len);
		fifo_enq(c012.tx_fifo, buffer, len);
	}
	return true;
}

static void reset_transputer(bool analyse)
{
	// reset C012 interface running on core 1
	c012.power = false;
	c012.reset = true;
	while(c012.reset);

	if (power.state >= power_state_reset) {
		GPIO_PinWrite(BOARD_RESET_GPIO, BOARD_RESET_PORT, BOARD_RESET_PIN, false);
		for(int i= 0; i < 100; i++);
		GPIO_PinWrite(BOARD_ANALYSE_GPIO, BOARD_ANALYSE_PORT, BOARD_ANALYSE_PIN, false);
		for(int i= 0; i < 100; i++);
		GPIO_PinWrite(BOARD_ANALYSE_GPIO, BOARD_ANALYSE_PORT, BOARD_ANALYSE_PIN, analyse);
		for(int i= 0; i < 100; i++);
		GPIO_PinWrite(BOARD_RESET_GPIO, BOARD_RESET_PORT, BOARD_RESET_PIN, true);
		for(int i= 0; i < 100; i++);
		GPIO_PinWrite(BOARD_RESET_GPIO, BOARD_RESET_PORT, BOARD_RESET_PIN, false);
		for(int i= 0; i < 100; i++);
		GPIO_PinWrite(BOARD_ANALYSE_GPIO, BOARD_ANALYSE_PORT, BOARD_ANALYSE_PIN, false);
	}

	transputer.error_flag = false;
	transputer.stall_flag = false;

	// suspend download for 100ms
	transputer.stop_timer_10ms = 10;
	transputer.stop_flag = true;
}

void transputer_init(void)
{
	//transputer.link_speed = true;
}

void transputer_task(void)
{
	if (power.state == power_state_ready) {
		if (!GPIO_PinRead(BOARD_ERROR_GPIO, BOARD_ERROR_PORT, BOARD_ERROR_PIN)) {
			transputer.error_flag = true;
		} else {
			transputer.error_flag = false;
		}
	} else {
		transputer.error_flag = false;
	}

	switch(power.state) {
	case power_state_ready:
		GPIO_PinWrite(BOARD_LINK_SPEED_GPIO, BOARD_LINK_SPEED_PORT, BOARD_LINK_SPEED_PIN, transputer.link_speed);
		break;
	case power_state_reset:
		reset_transputer(false);
		c012.reset = true;
		break;
	default:
		GPIO_PinWrite(BOARD_LINK_SPEED_GPIO, BOARD_LINK_SPEED_PORT, BOARD_LINK_SPEED_PIN, false);
		c012.power = false;
		break;
	}

	if (!transputer.stop_timer_10ms) {
		fifo_int_t count = fifo_count(c012.rx_fifo);
		if (count < fifo_size(c012.rx_fifo) / 8) {
			transputer.stop_flag = false;
		}
	}

	if (transputer.stop_flag) {
		status_new |= usb_intr_stop;
	} else {
		status_new &= ~usb_intr_stop;
	}

	if (transputer.error_flag) {
		status_new |= usb_intr_error;
	} else {
		status_new &= ~usb_intr_error;
	}

	if (status_old != status_new) {
		libusbdev_SendInterrupt(status_new);
		status_old = status_new;
	}

	uint32_t status;
	if (libusbdev_ReadInterrupt(&status) == LPC_OK) {
		if (status & usb_intr_reset) {
			reset_transputer(false);
		}
		if (status & usb_intr_analyse) {
			reset_transputer(true);
		}
		if (status & usb_intr_speed_10Mb) {
			transputer.link_speed = false;
		}
		if (status & usb_intr_speed_20Mb) {
			transputer.link_speed = true;
		}
	}

	if (libusbdev_Connected()) {
		GPIO_PinWrite(BOARD_LED_GPIO, BOARD_LED_PORT, BOARD_LED_PIN, false);
	} else {
		GPIO_PinWrite(BOARD_LED_GPIO, BOARD_LED_PORT, BOARD_LED_PIN, true);
	}
}
