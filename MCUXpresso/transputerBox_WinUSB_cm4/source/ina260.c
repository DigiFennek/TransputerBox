#include "ina260.h"
#include "peripherals.h"

#define I2C_BUS I2C_7_PERIPHERAL

#define I2C_ADDRESS 0x40

static int16_t read_register_int16(uint8_t reg)
{
	uint8_t result[2];
	I2C_MasterStart(I2C_BUS, I2C_ADDRESS, kI2C_Write);
	I2C_MasterWriteBlocking(I2C_BUS, &reg, 1, kI2C_TransferDefaultFlag);
	I2C_MasterStop(I2C_BUS);
	I2C_MasterStart(I2C_BUS, I2C_ADDRESS, kI2C_Read);
	I2C_MasterReadBlocking(I2C_BUS, &result, 2, kI2C_TransferDefaultFlag);
	I2C_MasterStop(I2C_BUS);
	return (((uint16_t)result[0]) << 8) + result[1];
}

void ina260_init(void)
{
	//  number of averages = 1024
	uint16_t configuration[] = {0x6F, 0x27};
	I2C_MasterStart(I2C_BUS, I2C_ADDRESS, kI2C_Write);
	I2C_MasterWriteBlocking(I2C_BUS, &configuration, 2, kI2C_TransferDefaultFlag);
	I2C_MasterStop(I2C_BUS);
}

uint16_t ina260_read_current(void)
{
	float i = read_register_int16(0x01);
	if (i < 0.0) {
		i = -i;
	}
	return i * 1.25;
}

uint16_t ina260_read_voltage(void)
{
	float u = read_register_int16(0x02);
	return u * 1.25;
}
