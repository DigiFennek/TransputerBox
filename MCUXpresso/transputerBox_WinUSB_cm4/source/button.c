#include "button.h"
#include "peripherals.h"
#include "pin_mux.h"
#include "power.h"
#include "display.h"

// public
button_t button;

// private
static uint16_t pressed_timer_100ms;
static bool button_pressed;
static bool button_handled;

void button_init(void)
{
}

void button_task(void)
{
	if (button.timer_10ms) {
		return;
	} else {
		button.timer_10ms = 10;
	}

	button_pressed = !GPIO_PinRead(BOARD_BUTTON_GPIO, BOARD_BUTTON_PORT, BOARD_BUTTON_PIN);

	if (button_pressed) {
		if (pressed_timer_100ms == 0) {
			// button was pressed
			if (power.state == power_state_off) {
				power_on();
				button_handled = true;
			}
		}
		if (pressed_timer_100ms > 20) {
			// button was pressed for two seconds
			if (!button_handled) {
				power_off();
				button_handled = true;
			}
		}

		pressed_timer_100ms++;
	} else {
		if (pressed_timer_100ms > 0) {
			// button was released
			if (!button_handled) {
				display_next();
				button_handled = true;
			}
		}

		pressed_timer_100ms = 0;
		button_handled = false;
	}
}
