#include "cooling.h"
#include "power.h"

// private
static uint16_t tacho_timer_1;
static uint16_t tacho_timer_2;

// 10sec (n * 100ms)
#define FAN_TIMEOUT 100

void fan_tacho_int_1(void)
{
	tacho_timer_1 = FAN_TIMEOUT;
}

void fan_tacho_int_2(void)
{
	tacho_timer_2 = FAN_TIMEOUT;
}

void cooling_timer(void)
{
    if (power.state < power_state_ready) {
    	tacho_timer_1 = FAN_TIMEOUT;
    	tacho_timer_2 = FAN_TIMEOUT;
    } else {
    	if (tacho_timer_1) tacho_timer_1--;
    	if (tacho_timer_2) tacho_timer_2--;
    }
}

void cooling_init(void)
{
	tacho_timer_1 = FAN_TIMEOUT;
	tacho_timer_2 = FAN_TIMEOUT;
}

void cooling_task(void)
{
    if (tacho_timer_1 == 0 || tacho_timer_2 == 0) {
    	power_emergency_off(power_error_cooling);
    }
}
