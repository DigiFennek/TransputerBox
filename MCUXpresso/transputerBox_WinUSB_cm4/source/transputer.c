#include "transputer.h"
#include "power.h"
#include "peripherals.h"
#include "libusbdev.h"
#include "pin_mux.h"
#include "mcmgr.h"
#include "fifo.h"
#include "beep.h"

// public
transputer_t transputer;

// private
static uint32_t status_new;
static uint32_t status_old;

// multicore data for core M0
typedef volatile struct
{
	fifo_t *rx_fifo;
	fifo_t *tx_fifo;
} core_m0_data_t;

static core_m0_data_t core_m0_data;

// Address of RAM, where the image for core M0 should be copied
#define CORE1_BOOT_ADDRESS (void *)0x20010000

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
	len = fifo_deq(core_m0_data.tx_fifo, buffer, len);
	if (len) {
		transputer.upload_led_10ms = TRANSPUTER_LED_TIME_10ms;
	}
	return len;
}

// called by lusb_BulkOUT_Hdlr
bool bulk_out_callback(uint8_t *buffer, uint32_t len)
{
	if (power.state == power_state_ready) {
		if (fifo_enq(core_m0_data.rx_fifo, buffer, len) != len) {
			transputer.stall_flag = true;
		} else {
			transputer.download_led_10ms = TRANSPUTER_LED_TIME_10ms;
		}
	} else {
		// powered off: send back null data
		memset(buffer, 0, len);
		fifo_enq(core_m0_data.tx_fifo, buffer, len);
	}
	return true;
}

static void reset_transputer(bool analyse)
{
    // reboot boot secondary core application
	MCMGR_TriggerEventForce(kMCMGR_RemoteCoreDownEvent, 0);
	for(int i= 0; i < 1000; i++);
	MCMGR_StartCore(kMCMGR_Core1, CORE1_BOOT_ADDRESS, (uint32_t)&core_m0_data, kMCMGR_Start_Synchronous);
	for(int i= 0; i < 1000; i++);

	GPIO_PinWrite(BOARD_RESET_GPIO, BOARD_RESET_PORT, BOARD_RESET_PIN, false);
	for(int i= 0; i < 1000; i++);
	GPIO_PinWrite(BOARD_ANALYSE_GPIO, BOARD_ANALYSE_PORT, BOARD_ANALYSE_PIN, false);
	for(int i= 0; i < 1000; i++);
	GPIO_PinWrite(BOARD_ANALYSE_GPIO, BOARD_ANALYSE_PORT, BOARD_ANALYSE_PIN, analyse);
	for(int i= 0; i < 1000; i++);
	GPIO_PinWrite(BOARD_RESET_GPIO, BOARD_RESET_PORT, BOARD_RESET_PIN, true);
	for(int i= 0; i < 1000; i++);
	GPIO_PinWrite(BOARD_RESET_GPIO, BOARD_RESET_PORT, BOARD_RESET_PIN, false);
	for(int i= 0; i < 1000; i++);
	GPIO_PinWrite(BOARD_ANALYSE_GPIO, BOARD_ANALYSE_PORT, BOARD_ANALYSE_PIN, false);

	transputer.error_flag = false;
	transputer.stall_flag = false;

	// this will clear the stop flag (see below)
	status_new |= usb_intr_stop;
	status_old |= usb_intr_stop;

	if (analyse) {
		transputer.analyse_led_10ms = 100;
	} else {
		transputer.reset_led_10ms = 100;
	}
}

void transputer_init(void)
{
	// this will read the fifo pointers from the secondary core
	MCMGR_StartCore(kMCMGR_Core1, CORE1_BOOT_ADDRESS, (uint32_t)&core_m0_data, kMCMGR_Start_Synchronous);
	// give some time secondary core shut down again
	for(int i= 0; i < 1000; i++);
}

void transputer_task(void)
{
	// power off
	if (power.state == power_state_off) {
		if (transputer.power_flag) {
			MCMGR_TriggerEventForce(kMCMGR_RemoteCoreDownEvent, 0);
			transputer.power_flag = false;
		}
	}

	// power on
	if (power.state == power_state_ready) {
		if (!transputer.power_flag) {
			reset_transputer(false);
			transputer.power_flag = true;
		}
	}

	// check error pin
	if (power.state == power_state_ready) {
		transputer.error_flag = !GPIO_PinRead(BOARD_ERROR_GPIO, BOARD_ERROR_PORT, BOARD_ERROR_PIN);
	} else {
		transputer.error_flag = false;
	}

	// update link-speed pin
	if (power.state == power_state_ready) {
		GPIO_PinWrite(BOARD_LINK_SPEED_GPIO, BOARD_LINK_SPEED_PORT, BOARD_LINK_SPEED_PIN, transputer.link_speed);
	} else {
		GPIO_PinWrite(BOARD_LINK_SPEED_GPIO, BOARD_LINK_SPEED_PORT, BOARD_LINK_SPEED_PIN, false);
	}

	// update the stop flag
	fifo_int_t count = fifo_count(core_m0_data.rx_fifo);
	if (count < fifo_size(core_m0_data.rx_fifo) / 8) {
		status_new &= ~usb_intr_stop;
	}
	if (count > fifo_size(core_m0_data.rx_fifo) / 2) {
		status_new |= usb_intr_stop;
	}

	// update the error flag
	if (transputer.error_flag) {
		status_new |= usb_intr_error;
	} else {
		status_new &= ~usb_intr_error;
	}

	// update status to host
	if (status_old != status_new) {
		if (libusbdev_SendInterrupt(status_new) == LPC_OK) {
			status_old = status_new;
		}
	}

	// update status from host
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

	if (transputer.power_flag) {
		GPIO_PinWrite(BOARD_LED_GPIO, BOARD_LED_PORT, BOARD_LED_PIN, false);
	} else {
		GPIO_PinWrite(BOARD_LED_GPIO, BOARD_LED_PORT, BOARD_LED_PIN, true);
	}
}
