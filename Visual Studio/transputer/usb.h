#include "stdint.h"
#include "stdbool.h"
#include <Windows.h>

#define PIPE_ID_BULK_OUT	1
#define PIPE_ID_INTR_OUT	2
#define PIPE_ID_BULK_IN		129
#define PIPE_ID_INTR_IN		130

typedef DWORD (*USB_CALLBACK)(UCHAR PipeID, DWORD byte_count, UCHAR* buffer);

void usbConnect(void);
void usbDisconnect(void);
void usbSignalPipe(UCHAR PipeID);
void usbInit(USB_CALLBACK callback);
