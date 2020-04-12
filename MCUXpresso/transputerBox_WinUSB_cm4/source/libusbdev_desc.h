#include "lpc_types.h"

#ifndef __LIBUSBDEV_DESC_H_
#define __LIBUSBDEV_DESC_H_

#ifdef __cplusplus
extern "C" {
#endif

extern const uint8_t USB_DeviceDescriptor[];
extern uint8_t USB_HsConfigDescriptor[];
extern uint8_t USB_FsConfigDescriptor[];
extern const uint8_t USB_StringDescriptor[];
extern const uint8_t USB_DeviceQualifier[];
extern const uint8_t WCID_String_Descriptor[];
extern const uint8_t WCID_CompatID_Descriptor[];
extern const uint8_t WCID_Properties_Descriptor[];

#ifdef __cplusplus
}
#endif

#endif /* __LIBUSBDEV_DESC_H_ */
