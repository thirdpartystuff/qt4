/****************************************************************************
**
** Copyright (C) 1992-2005 Trolltech AS. All rights reserved.
**
** This file is part of the QtCore module of the Qt Toolkit.
**
** This file may be used under the terms of the GNU General Public
** License version 2.0 as published by the Free Software Foundation
** and appearing in the file LICENSE.GPL included in the packaging of
** this file.  Please review the following information to ensure GNU
** General Public Licensing requirements will be met:
** http://www.trolltech.com/products/qt/opensource.html
**
** If you are unsure which license is appropriate for your use, please
** review the following information:
** http://www.trolltech.com/products/qt/licensing.html or contact the
** sales department at sales@trolltech.com.
**
** This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
** WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
**
****************************************************************************/

#ifndef QT_WINDOWS_H
#define QT_WINDOWS_H

#if defined(Q_CC_BOR)
// Borland's windows.h does not set these correctly, resulting in
// unusable WinSDK standard dialogs
#ifndef WINVER
#define WINVER 0x400
#endif
#ifndef _WIN32_WINNT
#define _WIN32_WINNT 0x400
#endif
#endif

#include <windows.h>
#include <stdbool.h>

// already defined when compiled with WINVER >= 0x0500
// and we only use them in Qt::WV_2000 and Qt::WV_98
#ifndef SPI_SETMENUANIMATION
#define SPI_SETMENUANIMATION 0x1003
#endif
#ifndef SPI_SETMENUFADE
#define SPI_SETMENUFADE 0x1013
#endif
#ifndef SPI_SETCOMBOBOXANIMATION
#define SPI_SETCOMBOBOXANIMATION 0x1005
#endif
#ifndef SPI_SETTOOLTIPANIMATION
#define SPI_SETTOOLTIPANIMATION 0x1017
#endif
#ifndef SPI_SETTOOLTIPFADE
#define SPI_SETTOOLTIPFADE 0x1019
#endif
#ifndef SPI_SETUIEFFECTS
#define SPI_SETUIEFFECTS 0x103F
#endif
#ifndef SPI_GETMENUANIMATION
#define SPI_GETMENUANIMATION 0x1002
#endif
#ifndef SPI_GETMENUFADE
#define SPI_GETMENUFADE 0x1012
#endif
#ifndef SPI_GETCOMBOBOXANIMATION
#define SPI_GETCOMBOBOXANIMATION 0x1004
#endif
#ifndef SPI_GETTOOLTIPANIMATION
#define SPI_GETTOOLTIPANIMATION 0x1016
#endif
#ifndef SPI_GETTOOLTIPFADE
#define SPI_GETTOOLTIPFADE 0x1018
#endif
#ifndef SPI_GETUIEFFECTS
#define SPI_GETUIEFFECTS 0x103E
#endif
#ifndef SPI_GETKEYBOARDCUES
#define SPI_GETKEYBOARDCUES 0x100A
#endif
#ifndef IDC_HAND
#define IDC_HAND            MAKEINTRESOURCE(32649)
#endif
#ifndef WM_MOUSEWHEEL
#define WM_MOUSEWHEEL        0x020A
#endif

#ifdef __cplusplus
extern "C" {
#endif

bool isWin32s(void);
bool useWide(void);

typedef int (WINAPI* PFNCOMPARESTRINGA)(LCID, DWORD, LPCSTR, int, LPCSTR, int);
typedef int (WINAPI* PFNGETDATEFORMATA)(LCID, DWORD, const SYSTEMTIME*, LPCSTR, LPSTR, int);
typedef int (WINAPI* PFNGETTIMEFORMATA)(LCID, DWORD, const SYSTEMTIME*, LPCSTR, LPSTR, int);
typedef int (WINAPI* PFNGETLOCALEINFOA)(LCID, LCTYPE, LPSTR, int);

extern PFNCOMPARESTRINGA pfnCompareStringA;
extern PFNGETDATEFORMATA pfnGetDateFormatA;
extern PFNGETTIMEFORMATA pfnGetTimeFormatA;
extern PFNGETLOCALEINFOA pfnGetLocaleInfoA;

typedef DWORD (WINAPI* PFNMSGWAITFORMULTIPLEOBJECTSEX)(DWORD, const HANDLE*, DWORD, DWORD, DWORD);

extern PFNMSGWAITFORMULTIPLEOBJECTSEX pfnMsgWaitForMultipleObjectsEx;

typedef HBITMAP (WINAPI* PFNCREATEDIBSECTION)(HDC, const BITMAPINFO*, UINT, VOID**, HANDLE, DWORD);
typedef HRESULT (WINAPI* PFNENUMFONTFAMILIESEXA)(HDC, LPLOGFONTA, FONTENUMPROCA, LPARAM, DWORD);
typedef HRESULT (WINAPI* PFNENUMFONTFAMILIESEXW)(HDC, LPLOGFONTW, FONTENUMPROCW, LPARAM, DWORD);
typedef int (WINAPI* PFNGETTEXTCHARSETINFO)(HDC, LPFONTSIGNATURE, DWORD);
typedef BOOL (WINAPI* PFNTRANSLATECHARSETINFO)(DWORD*, LPCHARSETINFO, DWORD);

extern PFNCREATEDIBSECTION pfnCreateDIBSection;
extern PFNGETTEXTCHARSETINFO pfnGetTextCharsetInfo;
extern PFNENUMFONTFAMILIESEXA pfnEnumFontFamiliesExA;
extern PFNENUMFONTFAMILIESEXW pfnEnumFontFamiliesExW;
extern PFNTRANSLATECHARSETINFO pfnTranslateCharsetInfo;

typedef HRESULT (WINAPI* PFNOLEINITIALIZE)(LPVOID);
typedef void (WINAPI* PFNOLEUNINITIALIZE)(void);
typedef HRESULT (WINAPI* PFNOLEGETCLIPBOARD)(LPDATAOBJECT*);
typedef HRESULT (WINAPI* PFNOLESETCLIPBOARD)(LPDATAOBJECT);
typedef HRESULT (WINAPI* PFNOLEISCURRENTCLIPBOARD)(LPDATAOBJECT);
typedef HRESULT (WINAPI* PFNOLEFLUSHCLIPBOARD)(void);

extern PFNOLEINITIALIZE pfnOleInitialize;
extern PFNOLEUNINITIALIZE pfnOleUninitialize;
extern PFNOLEGETCLIPBOARD pfnOleGetClipboard;
extern PFNOLESETCLIPBOARD pfnOleSetClipboard;
extern PFNOLEISCURRENTCLIPBOARD pfnOleIsCurrentClipboard;
extern PFNOLEFLUSHCLIPBOARD pfnOleFlushClipboard;

typedef HRESULT (WINAPI* PFNCOINITIALIZE)(LPVOID);
typedef void (WINAPI* PFNCOUNINITIALIZE)(void);
typedef HRESULT (WINAPI* PFNCOGETMALLOC)(DWORD, LPMALLOC*);
typedef void (WINAPI* PFNCOTASKMEMFREE)(LPVOID);
typedef HRESULT (WINAPI* PFNCOCREATEGUID)(GUID*);
typedef HRESULT (WINAPI* PFNCOCREATEINSTANCE)(REFCLSID, LPUNKNOWN, DWORD, REFIID, LPVOID*);
typedef HRESULT (WINAPI* PFNCOLOCKOBJECTEXTERNAL)(LPUNKNOWN, BOOL, BOOL);
typedef void (WINAPI* PFNRELEASESTGMEDIUM)(LPSTGMEDIUM);

extern PFNCOINITIALIZE pfnCoInitialize;
extern PFNCOUNINITIALIZE pfnCoUninitialize;
extern PFNCOGETMALLOC pfnCoGetMalloc;
extern PFNCOTASKMEMFREE pfnCoTaskMemFree;
extern PFNCOCREATEGUID pfnCoCreateGuid;
extern PFNCOCREATEINSTANCE pfnCoCreateInstance;
extern PFNCOLOCKOBJECTEXTERNAL pfnCoLockObjectExternal;
extern PFNRELEASESTGMEDIUM pfnReleaseStgMedium;

typedef int (WINAPI* PFNSTRINGFROMGUID2)(REFGUID, LPOLESTR, int);
typedef HRESULT (WINAPI* PFNREGISTERDRAGDROP)(HWND, LPDROPTARGET);
typedef HRESULT (WINAPI* PFNDODRAGDROP)(LPDATAOBJECT, LPDROPSOURCE, DWORD, LPDWORD);
typedef HRESULT (WINAPI* PFNREVOKEDRAGDROP)(HWND);

extern PFNSTRINGFROMGUID2 pfnStringFromGUID2;
extern PFNREGISTERDRAGDROP pfnRegisterDragDrop;
extern PFNDODRAGDROP pfnDoDragDrop;
extern PFNREVOKEDRAGDROP pfnRevokeDragDrop;

typedef RPC_STATUS (WINAPI* PFNUUIDCREATE)(UUID*);
typedef RPC_STATUS (WINAPI* PFNUUIDTOSTRINGW)(const UUID*, WCHAR**);
typedef RPC_STATUS (WINAPI* PFNRPCSTRINGFREEW)(WCHAR**);

extern PFNUUIDCREATE pfnUuidCreate;
extern PFNUUIDTOSTRINGW pfnUuidToStringW;
extern PFNRPCSTRINGFREEW pfnRpcStringFreeW;

#ifdef __cplusplus
}
#endif

#endif // QT_WINDOWS_H
