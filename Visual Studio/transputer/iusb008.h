#pragma once

#include "dosbox.h"
#include "dos_inc.h"
#include "fifo.h"

typedef bool (*driverCallback_t)(UCHAR Opcode);

class virtual_IUSB008 : public DOS_Device {
private:
	fifo_t* rx_fifo;
	fifo_t* tx_fifo;

	driverCallback_t driverCallback;

	bool Read(Bit8u* data, Bit16u* size);
	bool Write(Bit8u* data, Bit16u* size);
	bool Close(void);
	Bit16u GetInformation(void);
	bool ReadFromControlChannel(PhysPt bufptr, Bit16u size, Bit16u* retcode);
	bool WriteToControlChannel(PhysPt bufptr, Bit16u size, Bit16u* retcode);

public:
	virtual_IUSB008(fifo_t* rx_fifo, fifo_t* tx_fifo, driverCallback_t driverCallback);
};
