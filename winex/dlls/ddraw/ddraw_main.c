#include "config.h"
#include "winbase.h"

#include "wine/debug.h"

WINE_DEFAULT_DEBUG_CHANNEL(ddraw);

BOOL WINAPI DDRAW_DllMain(HINSTANCE hInstDLL, DWORD fdwReason, LPVOID lpv)
{
    return TRUE;
}
