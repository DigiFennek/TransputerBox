#ifndef _INA260_H_
#define _INA260_H_

#include "stdint.h"

void ina260_init(void);
uint16_t ina260_read_current(void);
uint16_t ina260_read_voltage(void);

#endif
