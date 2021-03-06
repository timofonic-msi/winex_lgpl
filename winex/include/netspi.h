/*
 * MPR - Network provider services
 */

#ifndef _NETSPI_H_
#define _NETSPI_H_

#include "windef.h"
#include "winnetwk.h"

/*
 * Note: The Unicode variants of all these routines/structures
 *       apparently don't exist, at least not in Win95 ...
 */

#define HPROVIDER LPVOID
typedef HPROVIDER *PHPROVIDER;

typedef struct
{
    DWORD  cbStructure;
    HWND   hwndOwner;
    LPCSTR lpResource;
    LPSTR  lpUsername;
    DWORD  cbUsername;
    LPSTR  lpPassword;
    DWORD  cbPassword;
    LPSTR  lpOrgUnit;
    DWORD  cbOrgUnit;
    LPCSTR lpOUTitle;
    LPCSTR lpExplainText;
    LPCSTR lpDefaultUserName;
    DWORD  dwFlags;

} AUTHDLGSTRUCTA, *LPAUTHDLGSTRUCTA;

DECL_WINELIB_TYPE_AW(AUTHDLGSTRUCT)
DECL_WINELIB_TYPE_AW(LPAUTHDLGSTRUCT)

#define AUTHDLG_ENABLECACHE       0x00000001
#define AUTHDLG_CHECKCACHE        0x00000002
#define AUTHDLG_CACHEINVALID      0x00000004
#define AUTHDLG_USE_DEFAULT_NAME  0x00000008
#define AUTHDLG_CHECKDEFAULT_NAME 0x00000010
#define AUTHDLG_LOGON             0x00000020

#define AUTHDLG_ENABLECACHE       0x00000001
#define AUTHDLG_CHECKCACHE        0x00000002
#define AUTHDLG_CACHEINVALID      0x00000004
#define AUTHDLG_USE_DEFAULT_NAME  0x00000008
#define AUTHDLG_CHECKDEFAULT_NAME 0x00000010
#define AUTHDLG_LOGON             0x00000020

DWORD WINAPI NPSAuthenticationDialogA(LPAUTHDLGSTRUCTA);
#define      NPSAuthenticationDialog WINELIB_NAME_AW(NPSAuthenticationDialog)
DWORD WINAPI NPSGetProviderHandleA(PHPROVIDER);
#define      NPSGetProviderHandle WINELIB_NAME_AW(NPSGetProviderHandle)
DWORD WINAPI NPSGetProviderNameA(HPROVIDER,LPCSTR *);
#define      NPSGetProviderName WINELIB_NAME_AW(NPSGetProviderName)
DWORD WINAPI NPSGetSectionNameA(HPROVIDER,LPCSTR *lpszSectionName);
#define      NPSGetSectionName WINELIB_NAME_AW(NPSGetSectionName)
DWORD WINAPI NPSSetExtendedErrorA(DWORD,LPSTR);
#define      NPSSetExtendedError WINELIB_NAME_AW(NPSSetExtendedError)
VOID  WINAPI NPSSetCustomTextA(LPSTR);
#define      NPSSetCustomText WINELIB_NAME_AW(NPSSetCustomText)
DWORD WINAPI NPSCopyStringA(LPCSTR,LPVOID,LPDWORD);
#define      NPSCopyString WINELIB_NAME_AW(NPSCopyString)
DWORD WINAPI NPSDeviceGetNumberA(LPSTR,LPDWORD,LPDWORD);
#define      NPSDeviceGetNumber WINELIB_NAME_AW(NPSDeviceGetNumber)
DWORD WINAPI NPSDeviceGetStringA(DWORD,DWORD,LPSTR,LPDWORD);
#define      NPSDeviceGetString WINELIB_NAME_AW(NPSDeviceGetString)


enum NOTIFYTYPE { NotifyAddConnection,
                  NotifyCancelConnection,
                  NotifyGetConnectionPerformance };

#define NOTIFY_PRE              0x00
#define NOTIFY_POST             0x01

typedef struct
{
    DWORD   cbStructure;
    DWORD   dwNotifyStatus;
    DWORD   dwOperationStatus;
    LPVOID  lpNPContext;

} NOTIFYINFO, *LPNOTIFYINFO;

typedef struct
{
    DWORD        cbStructure;
    HWND         hwndOwner;
    NETRESOURCEA NetResource;
    DWORD        dwAddFlags;
    LPSTR        lpAccessName;
    LPDWORD      lpBufferSize;
    DWORD        dwResult;
    DWORD        dwAddContext;

} NOTIFYADDA, *LPNOTIFYADDA;

#define CONNECT_CTXT_RESTORE   0x00000001
#define CONNECT_CTXT_GLOBAL    0x00000002
#define CONNECT_CTXT_PROVIDER  0x00000004
#define CONNECT_CTXT_SINGLE    0x00000008

typedef struct
{
    DWORD  cbStructure;
    LPSTR  lpName;
    LPSTR  lpProvider;
    DWORD  dwFlags;
    BOOL   fForce;

} NOTIFYCANCELA, *LPNOTIFYCANCELA;

typedef struct
{
    DWORD                  cbStructure;
    LPSTR                  lpRemoteName;
    LPSTR                  lpProviderName;
    LPNETCONNECTINFOSTRUCT lpNetConnectInfo;

} NOTIFYPERFORMANCEA, *LPNOTIFYPERFORMANCEA;

typedef DWORD (CALLBACK *NOTIFYCALLBACK)(LPNOTIFYINFO,LPVOID);

DWORD  WINAPI NPSNotifyRegisterA(enum NOTIFYTYPE,NOTIFYCALLBACK);
#define       NPSNotifyRegister WINELIB_NAME_AW(NPSNotifyRegister)
LPVOID WINAPI NPSNotifyGetContextA(NOTIFYCALLBACK);
#define       NPSNotifyGetContext WINELIB_NAME_AW(NPSNotifyGetContext)

#endif /* _NETSPI_H_ */

