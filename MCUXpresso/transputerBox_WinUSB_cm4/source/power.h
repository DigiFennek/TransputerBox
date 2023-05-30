#ifndef _POWER_H_
#define _POWER_H_

#include <stdbool.h>
#include <stdint.h>

typedef enum
{
	power_state_off,
	power_state_on,
	power_state_check_voltage,
	power_state_switch_on,
	power_state_power_up,
	power_state_ready
} power_state_t;

typedef enum
{
	power_error_none,
	power_error_min_voltage,
	power_error_max_voltage,
	power_error_max_current,
	power_error_cooling,
} power_error_t;

typedef struct
{
	uint8_t timer_10ms;
	power_state_t state;
	power_error_t error;
	uint16_t voltage_mV;
	uint16_t current_mA;
	uint16_t wattage_mW;
} power_t;

extern power_t power;

void power_on(void);
void power_off(void);
void power_emergency_off(power_error_t error);
void power_init(void);
void power_task(void);

#endif
