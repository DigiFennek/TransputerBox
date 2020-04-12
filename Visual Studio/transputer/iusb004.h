#pragma once

#include <Windows.h>
#include "fifo.h"

typedef bool (*driverCallback_t)(UCHAR Opcode);

class virtual_IUSB004 {
public:
	virtual_IUSB004(fifo_t* rx_fifo, fifo_t* tx_fifo, driverCallback_t driverCallback);
};
