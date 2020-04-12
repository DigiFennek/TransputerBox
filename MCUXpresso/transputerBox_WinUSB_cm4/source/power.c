#include "power.h"
#include "peripherals.h"
#include "pin_mux.h"
#include "ina260.h"
#include "beep.h"

// public
power_t power;

// private
static bool button_flag;

#define MAX_CURRENT 14000
#define MIN_VOLTAGE 4700
#define MAX_VOLTAGE 5300

void power_init(void)
{
	ina260_init();
}

static bool read_button(void)
{
	return !GPIO_PinRead(BOARD_BUTTON_GPIO, BOARD_BUTTON_PORT, BOARD_BUTTON_PIN);
}

static void set_power(bool on)
{
	GPIO_PinWrite(BOARD_PON_GPIO, BOARD_PON_PORT, BOARD_PON_PIN, on);
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

	if (button_flag != read_button()) {
		button_flag = read_button();
		if (button_flag) {
			if (power.error == power_error_none) {
				if (power.state > power_state_off) {
					power.state = power_state_off;
				} else {
					power.state = power_state_on;
				}
			}
		}
	}

	if (power.state >= power_state_on) {
		power.voltage = ina260_read_voltage();
		power.current = ina260_read_current();
	}

	if (power.state >= power_state_on) {
		if (power.voltage < MIN_VOLTAGE) {
			power_emergency_off(power_error_min_voltage);
		}
		if (power.current > MAX_CURRENT) {
			power_emergency_off(power_error_max_current);
		}
		if (power.voltage > MAX_VOLTAGE) {
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
		power.state = power_state_reset;
		break;
	case power_state_reset:
		power.state = power_state_ready;
		break;
	case power_state_ready:
		break;
	}
}
