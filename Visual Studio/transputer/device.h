#include <Windows.h>
#include <winusb.h>

//
// Define below GUIDs
//
#include <initguid.h>

//
// Device Interface GUID.
// Used by all WinUsb devices that this application talks to.
// Must match "DeviceInterfaceGUIDs" registry value specified in the INF file.
// 26e9e82f-b3e8-4e7d-bdc9-8285cdce4704
//
DEFINE_GUID(GUID_DEVINTERFACE_USBApplication1,
	0x60833b09, 0x7fde, 0x4410, 0xaf, 0xd1, 0x54, 0x1e, 0xfd, 0xf3, 0x6d, 0x8a);
   // 0x26e9e82f,0xb3e8,0x4e7d,0xbd,0xc9,0x82,0x85,0xcd,0xce,0x47,0x04);

typedef struct _DEVICE_DATA {

    BOOL                    HandlesOpen;
    WINUSB_INTERFACE_HANDLE WinusbHandle;
    HANDLE                  DeviceHandle;
    TCHAR                   DevicePath[MAX_PATH];

} DEVICE_DATA, *PDEVICE_DATA;

HRESULT
OpenDevice(
    _Out_     PDEVICE_DATA DeviceData,
    _Out_opt_ PBOOL        FailureDeviceNotFound
    );

VOID
CloseDevice(
    _Inout_ PDEVICE_DATA DeviceData
    );
