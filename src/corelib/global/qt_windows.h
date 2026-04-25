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

#include <qglobal.h>

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
#include <shlobj.h>
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

extern int qt_win_major;
extern int qt_win_minor;

#ifdef __cplusplus
inline bool isWinLegacyGUI() { return QSysInfo::WindowsVersion == QSysInfo::WV_32s || (QSysInfo::WindowsVersion == QSysInfo::WV_NT && qt_win_major == 3); }
inline bool isWinNT(void) { return ((QSysInfo::WindowsVersion & QSysInfo::WV_DOS_based) == 0); }
inline bool isWin32s(void) { return QSysInfo::WindowsVersion == QSysInfo::WV_32s; }
inline bool useWide(void) { return ((QSysInfo::WindowsVersion & QSysInfo::WV_DOS_based) == 0); }
#endif

typedef int (WINAPI* PFNCOMPARESTRINGA)(LCID, DWORD, LPCSTR, int, LPCSTR, int);
typedef int (WINAPI* PFNGETDATEFORMATA)(LCID, DWORD, const SYSTEMTIME*, LPCSTR, LPSTR, int);
typedef int (WINAPI* PFNGETTIMEFORMATA)(LCID, DWORD, const SYSTEMTIME*, LPCSTR, LPSTR, int);
typedef int (WINAPI* PFNGETLOCALEINFOA)(LCID, LCTYPE, LPSTR, int);
typedef BOOL (WINAPI* PFNISVALIDLOCALE)(LCID, DWORD);
typedef BOOL (WINAPI *PFNISVALIDLANGUAGEGROUP)(DWORD, DWORD);

extern PFNCOMPARESTRINGA pfnCompareStringA;
extern PFNGETDATEFORMATA pfnGetDateFormatA;
extern PFNGETTIMEFORMATA pfnGetTimeFormatA;
extern PFNGETLOCALEINFOA pfnGetLocaleInfoA;
extern PFNISVALIDLOCALE pfnIsValidLocale;
extern PFNISVALIDLANGUAGEGROUP pfnIsValidLanguageGroup;

typedef BOOL (WINAPI* PFNENUMDISPLAYMONITORS)(HDC, LPCRECT, MONITORENUMPROC, LPARAM);
typedef BOOL (WINAPI* PFNGETMONITORINFOA)(HMONITOR, void*);
typedef BOOL (WINAPI* PFNGETMONITORINFOW)(HMONITOR, void*);
typedef int (WINAPI* PFNGETWINDOWRGN)(HWND, HRGN);
typedef DWORD (WINAPI* PFNMSGWAITFORMULTIPLEOBJECTSEX)(DWORD, const HANDLE*, DWORD, DWORD, DWORD);
typedef BOOL (WINAPI* PFNSETLAYEREDWINDOWATTRIBUTES)(HWND, COLORREF, BYTE, DWORD);
typedef int (WINAPI* PFNSETWINDOWRGN)(HWND, HRGN, BOOL);

extern PFNENUMDISPLAYMONITORS pfnEnumDisplayMonitors;
extern PFNGETMONITORINFOA pfnGetMonitorInfoA;
extern PFNGETMONITORINFOW pfnGetMonitorInfoW;
extern PFNGETWINDOWRGN pfnGetWindowRgn;
extern PFNMSGWAITFORMULTIPLEOBJECTSEX pfnMsgWaitForMultipleObjectsEx;
extern PFNSETLAYEREDWINDOWATTRIBUTES pfnSetLayeredWindowAttributes;
extern PFNSETWINDOWRGN pfnSetWindowRgn;

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

typedef HRESULT (WINAPI* PFNSHGETMALLOC)(IMalloc**);
typedef BOOL (WINAPI* PFNSHGETPATHFROMIDLISTA)(LPITEMIDLIST, LPSTR);
typedef BOOL (WINAPI* PFNSHGETPATHFROMIDLISTW)(LPITEMIDLIST, LPWSTR);
typedef LPITEMIDLIST (WINAPI* PFNSHBROWSEFORFOLDERA)(BROWSEINFOA*);
typedef LPITEMIDLIST (WINAPI* PFNSHBROWSEFORFOLDERW)(BROWSEINFOW*);

extern PFNSHGETMALLOC pfnSHGetMalloc;
extern PFNSHGETPATHFROMIDLISTA pfnSHGetPathFromIDListA;
extern PFNSHGETPATHFROMIDLISTW pfnSHGetPathFromIDListW;
extern PFNSHBROWSEFORFOLDERA pfnSHBrowseForFolderA;
extern PFNSHBROWSEFORFOLDERW pfnSHBrowseForFolderW;

typedef HIMC (WINAPI* PFNIMMGETCONTEXT)(HWND);
typedef BOOL (WINAPI* PFNIMMRELEASECONTEXT)(HWND, HIMC);
typedef BOOL (WINAPI* PFNIMMNOTIFYIME)(HIMC, DWORD, DWORD, DWORD);
typedef LONG (WINAPI* PFNIMMGETCOMPOSITIONSTRINGA)(HIMC, DWORD, LPVOID, DWORD);
typedef LONG (WINAPI* PFNIMMGETCOMPOSITIONSTRINGW)(HIMC, DWORD, LPVOID, DWORD);
typedef BOOL (WINAPI* PFNIMMSETCANDIDATEWINDOW)(HIMC, LPCANDIDATEFORM);
typedef BOOL (WINAPI* PFNIMMSETCOMPOSITIONWINDOW)(HIMC, LPCOMPOSITIONFORM);
typedef BOOL (WINAPI* PFNIMMSETCOMPOSITIONFONTA)(HIMC, LPLOGFONTA);
typedef BOOL (WINAPI* PFNIMMSETCOMPOSITIONFONTW)(HIMC, LPLOGFONTW);
typedef HIMC (WINAPI* PFNIMMASSOCIATECONTEXT)(HWND, HIMC);

extern PFNIMMGETCONTEXT pfnImmGetContext;
extern PFNIMMRELEASECONTEXT pfnImmReleaseContext;
extern PFNIMMNOTIFYIME pfnImmNotifyIME;
extern PFNIMMGETCOMPOSITIONSTRINGA pfnImmGetCompositionStringA;
extern PFNIMMGETCOMPOSITIONSTRINGW pfnImmGetCompositionStringW;
extern PFNIMMSETCANDIDATEWINDOW pfnImmSetCandidateWindow;
extern PFNIMMSETCOMPOSITIONWINDOW pfnImmSetCompositionWindow;
extern PFNIMMSETCOMPOSITIONFONTA pfnImmSetCompositionFontA;
extern PFNIMMSETCOMPOSITIONFONTW pfnImmSetCompositionFontW;
extern PFNIMMASSOCIATECONTEXT pfnImmAssociateContext;

typedef SOCKET (WINAPI* PFNACCEPT)(SOCKET, const struct sockaddr*, int*);
typedef int (WINAPI* PFNBIND)(SOCKET, const struct sockaddr*, int);
typedef int (WINAPI* PFNCLOSESOCKET)(SOCKET);
typedef int (WINAPI* PFNCONNECT)(SOCKET, const struct sockaddr*, int);
typedef struct hostent* (WINAPI* PFNGETHOSTBYNAME)(const char*);
typedef int (WINAPI* PFNGETHOSTNAME)(char*, int);
typedef int (WINAPI* PFNGETPEERNAME)(SOCKET, struct sockaddr*, int*);
typedef int (WINAPI* PFNGETSOCKNAME)(SOCKET, struct sockaddr*, int*);
typedef int (WINAPI* PFNGETSOCKOPT)(SOCKET, int, int, char*, int*);
typedef u_long (WINAPI* PFNHTONL)(u_long);
typedef u_short (WINAPI* PFNHTONS)(u_short);
typedef int (WINAPI* PFNIOCTLSOCKET)(SOCKET, long, u_long*);
typedef int (WINAPI* PFNLISTEN)(SOCKET, int);
typedef u_long (WINAPI* PFNNTOHL)(u_long);
typedef u_short (WINAPI* PFNNTOHS)(u_short);
typedef int (WINAPI* PFNRECV)(SOCKET, char*, int, int);
typedef int (WINAPI* PFNRECVFROM)(SOCKET, char*, int, int, struct sockaddr*, int*);
typedef int (WINAPI* PFNSELECT)(int, fd_set*, fd_set*, fd_set*, const struct timeval*);
typedef int (WINAPI* PFNSEND)(SOCKET, const char*, int, int);
typedef int (WINAPI* PFNSENDTO)(SOCKET, const char*, int, int, const struct sockaddr*, int);
typedef int (WINAPI* PFNSETSOCKOPT)(SOCKET, int, int, const char*, int);
typedef SOCKET (WINAPI* PFNSOCKET)(int, int, int);
typedef int (WINAPI* PFNWSAACCEPT)(SOCKET, struct sockaddr*, LPINT, /*LPCONDITIONPROC*/void(*)(), DWORD_PTR);
typedef int (WINAPI* PFNWSACLEANUP)(void);
typedef int (WINAPI* PFNWSACONNECT)(SOCKET, const struct sockaddr*, int, /*LPWSABUF*/void*, /*LPWSABUF*/void*, /*LPQOS*/void*, /*LPQOS*/void*);
typedef int (WINAPI* PFNWSAASYNCSELECT)(SOCKET, HWND, u_int, long);
typedef int (WINAPI* PFNWSAGETLASTERROR)(void);
typedef int (WINAPI* PFNWSAIOCTL)(SOCKET, DWORD, LPVOID, DWORD, LPVOID, DWORD, LPDWORD, /*LPWSAOVERLAPPED*/void*, /*LPWSAOVERLAPPED_COMPLETION_ROUTINE*/void(*)());
typedef int (WINAPI* PFNWSARECV)(SOCKET, /*LPWSABUF*/void*, DWORD, LPDWORD, LPDWORD, /*LPWSAOVERLAPPED*/void*, /*LPWSAOVERLAPPED_COMPLETION_ROUTINE*/void(*)());
typedef int (WINAPI* PFNWSARECVFROM)(SOCKET, /*LPWSABUF*/void*, DWORD, LPDWORD, LPDWORD, struct sockaddr*, LPINT, /*LPWSAOVERLAPPED*/void*, /*LPWSAOVERLAPPED_COMPLETION_ROUTINE*/void(*)());
typedef int (WINAPI* PFNWSASEND)(SOCKET, /*LPWSABUF*/void*, DWORD, LPDWORD, DWORD, /*LPWSAOVERLAPPED*/void*, /*LPWSAOVERLAPPED_COMPLETION_ROUTINE*/void(*)());
typedef int (WINAPI* PFNWSASENDTO)(SOCKET, /*LPWSABUF*/void*, DWORD, LPDWORD, DWORD, const struct sockaddr*, int, /*LPWSAOVERLAPPED*/void*, /*LPWSAOVERLAPPED_COMPLETION_ROUTINE*/void(*)());
typedef SOCKET (WINAPI* PFNWSASOCKETA)(int, int, int, /*LPWSAPROTOCOL_INFOA*/void*, /*GROUP*/unsigned int, DWORD);
typedef SOCKET (WINAPI* PFNWSASOCKETW)(int, int, int, /*LPWSAPROTOCOL_INFOW*/void*, /*GROUP*/unsigned int, DWORD);
typedef int (WINAPI* PFNWSASTARTUP)(WORD, LPWSADATA);
typedef int (WINAPI* PFN__WSAFDISSET)(SOCKET, fd_set*);

extern PFNACCEPT pfnaccept;
extern PFNBIND pfnbind;
extern PFNCLOSESOCKET pfnclosesocket;
extern PFNCONNECT pfnconnect;
extern PFNGETHOSTBYNAME pfngethostbyname;
extern PFNGETHOSTNAME pfngethostname;
extern PFNGETPEERNAME pfngetpeername;
extern PFNGETSOCKNAME pfngetsockname;
extern PFNGETSOCKOPT pfngetsockopt;
extern PFNHTONL pfnhtonl;
extern PFNHTONS pfnhtons;
extern PFNIOCTLSOCKET pfnioctlsocket;
extern PFNLISTEN pfnlisten;
extern PFNNTOHL pfnntohl;
extern PFNNTOHS pfnntohs;
extern PFNRECV pfnrecv;
extern PFNRECVFROM pfnrecvfrom;
extern PFNSELECT pfnselect;
extern PFNSEND pfnsend;
extern PFNSENDTO pfnsendto;
extern PFNSETSOCKOPT pfnsetsockopt;
extern PFNSOCKET pfnsocket;
extern PFNWSAACCEPT pfnWSAAccept;
extern PFNWSAASYNCSELECT pfnWSAAsyncSelect;
extern PFNWSACLEANUP pfnWSACleanup;
extern PFNWSACONNECT pfnWSAConnect;
extern PFNWSAGETLASTERROR pfnWSAGetLastError;
extern PFNWSAIOCTL pfnWSAIoctl;
extern PFNWSARECV pfnWSARecv;
extern PFNWSARECVFROM pfnWSARecvFrom;
extern PFNWSASEND pfnWSASend;
extern PFNWSASENDTO pfnWSASendTo;
extern PFNWSASOCKETA pfnWSASocketA;
extern PFNWSASOCKETW pfnWSASocketW;
extern PFNWSASTARTUP pfnWSAStartup;
extern PFN__WSAFDISSET pfn__WSAFDIsSet;

#ifdef __cplusplus
}
#endif

#endif // QT_WINDOWS_H
