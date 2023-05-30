#include "power.h"
#include "peripherals.h"
#include "pin_mux.h"
#include "ina260.h"
#include "beep.h"

// public
power_t power;

#define MAX_CURRENT 14000
#define MIN_VOLTAGE 4700
#define MAX_VOLTAGE 5300

void power_init(void)
{
	ina260_init();
}

static void set_power(bool on)
{
	GPIO_PinWrite(BOARD_PON_GPIO, BOARD_PON_PORT, BOARD_PON_PIN, on);
}

void power_on(void)
{
	if (power.state == power_state_off) {
		if (power.error == power_error_none) {
			power.state = power_state_on;
		}
	}
}

void power_off(void)
{
	if (power.state != power_state_off) {
		power.state = power_state_off;
	}
}

void power_emergency_off(power_error_t error)
{
	set_power(false);
	power.state = power_state_off;
	power.error = error;
	beep(10);
}

void power_task(void)
{
	if (power.timer_10ms) {
		return;
	} else {
		power.timer_10ms = 10;
	}

	if (power.state >= power_state_on) {
		power.voltage_mV = ina260_read_voltage();
		power.current_mA = ina260_read_current();
		power.wattage_mW = ina260_read_wattage();
	}

	if (power.state >= power_state_on) {
		if (power.voltage_mV < MIN_VOLTAGE) {
			power_emergency_off(power_error_min_voltage);
		}
		if (power.current_mA > MAX_CURRENT) {
			power_emergency_off(power_error_max_current);
		}
		if (power.voltage_mV > MAX_VOLTAGE) {
			power_emergency_off(power_error_max_voltage);
		}
	}

	switch (power.state) {
	case power_state_off:
		set_power(false);
		break;
	case power_state_on:
		power.state = power_state_check_voltage;
		break;
	case power_state_check_voltage:
		power.state = power_state_switch_on;
		break;
	case power_state_switch_on:
		set_power(true);
		power.state = power_state_power_up;
		break;
	case power_state_power_up:
	    beep(1);
		power.state = power_state_ready;
		break;
	case power_state_ready:
		break;
	}
}
