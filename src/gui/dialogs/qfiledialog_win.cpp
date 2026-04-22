/****************************************************************************
**
** Copyright (C) 1992-2005 Trolltech AS. All rights reserved.
**
** This file is part of the QtGui module of the Qt Toolkit.
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

#include "qfiledialog.h"

#ifndef QT_NO_FILEDIALOG

#include <private/qfiledialog_p.h>
#include <qapplication.h>
#include <private/qapplication_p.h>
#include <qt_windows.h>
#include <qglobal.h>
#include <qregexp.h>
#include <qbuffer.h>
#include <qdir.h>
#include <qstringlist.h>
#include <qlibrary.h>

#ifdef QT_THREAD_SUPPORT
#  include <private/qmutexpool_p.h>
#endif // QT_THREAD_SUPPORT

#include "shlobj.h"

#ifdef Q_OS_TEMP
#include "commdlg.h"
#endif




extern const char* qt_file_dialog_filter_reg_exp; // defined in qfiledialog.cpp
extern QStringList qt_make_filter_list(const QString &filter);

const int maxNameLen = 1023;
const int maxMultiLen = 65535;

// Returns the wildcard part of a filter.
static QString qt_win_extract_filter(const QString &rawFilter)
{
    QString result = rawFilter;
    QRegExp r(QString::fromLatin1(qt_file_dialog_filter_reg_exp));
    int index = r.indexIn(result);
    if (index >= 0)
        result = r.cap(2);
    return result.replace(QChar(' '), QChar(';'));
}

static QStringList qt_win_make_filters_list(const QString &filter)
{
    QString f(filter);

    if (f.isEmpty())
        f = QObject::tr("All Files (*.*)");

    return qt_make_filter_list(f);
}

// Makes a NUL-oriented Windows filter from a Qt filter.
static QString qt_win_filter(const QString &filter)
{
    QStringList filterLst = qt_win_make_filters_list(filter);
    QStringList::Iterator it = filterLst.begin();
    QString winfilters;
    for (; it != filterLst.end(); ++it) {
        winfilters += *it;
        winfilters += QChar();
        winfilters += qt_win_extract_filter(*it);
        winfilters += QChar();
    }
    winfilters += QChar();
    return winfilters;
}

static QString qt_win_selected_filter(const QString &filter, DWORD idx)
{
    return qt_win_make_filters_list(filter).at((int)idx - 1);
}

#ifndef Q_OS_TEMP
// Static vars for OFNA funcs:
static QByteArray aInitDir;
static QByteArray aInitSel;
static QByteArray aTitle;
static QByteArray aFilter;
// Use ANSI strings and API

// If you change this, then make sure you change qt_win_make_OFN (below) too
static OPENFILENAMEA *qt_win_make_OFNA(QWidget *parent,
				       const QString &initialSelection,
				       const QString &initialDirectory,
				       const QString &title,
				       const QString &filters,
				       QFileDialog::FileMode mode,
				       QFileDialog::Options options)
{
    if (parent)
        parent = parent->window();
    else
        parent = qApp->activeWindow();

    aTitle = title.toLocal8Bit();
    aInitDir = QDir::convertSeparators(initialDirectory).toLocal8Bit();
    if (initialSelection.isEmpty()) {
        aInitSel = "";
    } else {
        aInitSel = QDir::convertSeparators(initialSelection).toLocal8Bit();
	aInitSel.replace("<", "");
	aInitSel.replace(">", "");
	aInitSel.replace("\"", "");
	aInitSel.replace("|", "");
    }
    int maxLen = mode == QFileDialog::ExistingFiles ? maxMultiLen : maxNameLen;
    aInitSel.resize(maxLen + 1);                // make room for return value
    aFilter = filters.toLocal8Bit();

    OPENFILENAMEA* ofn = new OPENFILENAMEA;
    memset(ofn, 0, sizeof(OPENFILENAMEA));

#if defined(Q_CC_BOR) && (WINVER >= 0x0500) && (_WIN32_WINNT >= 0x0500)
    // according to the MSDN, this should also be necessary for MSVC, but
    // OPENFILENAME_SIZE_VERSION_400A is in not Microsoft header, as it seems
    if (QApplication::winVersion()==Qt::WV_NT || QApplication::winVersion()&Qt::WV_DOS_based) {
        ofn->lStructSize = OPENFILENAME_SIZE_VERSION_400A;
    } else {
        ofn->lStructSize = sizeof(OPENFILENAMEA);
    }
#else
    ofn->lStructSize = sizeof(OPENFILENAMEA);
#endif
    ofn->hwndOwner = parent ? parent->winId() : 0;
    ofn->lpstrFilter = aFilter;
    ofn->lpstrFile = aInitSel.data();
    ofn->nMaxFile = maxLen;
    ofn->lpstrInitialDir = aInitDir.data();
    ofn->lpstrTitle = aTitle.data();
    ofn->Flags = (OFN_NOCHANGEDIR | OFN_HIDEREADONLY | OFN_EXPLORER);

    if (mode == QFileDialog::ExistingFile ||
         mode == QFileDialog::ExistingFiles)
        ofn->Flags |= (OFN_FILEMUSTEXIST | OFN_PATHMUSTEXIST);
    if (mode == QFileDialog::ExistingFiles)
        ofn->Flags |= (OFN_ALLOWMULTISELECT);
    if (!(options & QFileDialog::DontConfirmOverwrite))
        ofn->Flags |= OFN_OVERWRITEPROMPT;

    return ofn;
}

static void qt_win_clean_up_OFNA(OPENFILENAMEA **ofn)
{
    delete *ofn;
    *ofn = 0;
}
#endif

static QString tFilters, tTitle, tInitDir;

// If you change this, then make sure you change qt_win_make_OFNA (above) too
static OPENFILENAMEW* qt_win_make_OFNW(QWidget *parent,
                                     const QString& initialSelection,
                                     const QString& initialDirectory,
                                     const QString& title,
                                     const QString& filters,
                                     QFileDialog::FileMode mode,
				     QFileDialog::Options options)
{
    if (parent)
        parent = parent->window();
    else
        parent = qApp->activeWindow();

    tInitDir = QDir::convertSeparators(initialDirectory);
    tFilters = filters;
    tTitle = title;
    QString initSel = QDir::convertSeparators(initialSelection);
    if (!initSel.isEmpty()) {
	initSel.replace("<", "");
	initSel.replace(">", "");
	initSel.replace("\"", "");
	initSel.replace("|", "");
    }

    int maxLen = mode == QFileDialog::ExistingFiles ? maxMultiLen : maxNameLen;
    WCHAR *tInitSel = new WCHAR[maxLen+1];
    if (initSel.length() > 0 && initSel.length() <= maxLen)
        memcpy(tInitSel, initSel.utf16(), (initSel.length()+1)*sizeof(WCHAR));
    else
        tInitSel[0] = 0;

    OPENFILENAMEW* ofn = new OPENFILENAMEW;
    memset(ofn, 0, sizeof(OPENFILENAMEW));

#if defined(Q_CC_BOR) && (WINVER >= 0x0500) && (_WIN32_WINNT >= 0x0500)
    // according to the MSDN, this should also be necessary for MSVC, but
    // OPENFILENAME_SIZE_VERSION_400 is in not Microsoft header, as it seems
    if (QApplication::winVersion()==Qt::WV_NT || QApplication::winVersion()&Qt::WV_DOS_based) {
        ofn->lStructSize= OPENFILENAME_SIZE_VERSION_400;
    } else {
        ofn->lStructSize = sizeof(OPENFILENAMEW);
    }
#else
    ofn->lStructSize = sizeof(OPENFILENAMEW);
#endif
    ofn->hwndOwner = parent ? parent->winId() : 0;
    ofn->lpstrFilter = (WCHAR *)tFilters.utf16();
    ofn->lpstrFile = tInitSel;
    ofn->nMaxFile = maxLen;
    ofn->lpstrInitialDir = (WCHAR *)tInitDir.utf16();
    ofn->lpstrTitle = (WCHAR *)tTitle.utf16();
    ofn->Flags = (OFN_NOCHANGEDIR | OFN_HIDEREADONLY | OFN_EXPLORER);

    if (mode == QFileDialog::ExistingFile ||
         mode == QFileDialog::ExistingFiles)
        ofn->Flags |= (OFN_FILEMUSTEXIST | OFN_PATHMUSTEXIST);
    if (mode == QFileDialog::ExistingFiles)
        ofn->Flags |= (OFN_ALLOWMULTISELECT);
    if (!(options & QFileDialog::DontConfirmOverwrite))
        ofn->Flags |= OFN_OVERWRITEPROMPT;

    return ofn;
}


static void qt_win_clean_up_OFNW(OPENFILENAMEW **ofn)
{
    delete (*ofn)->lpstrFile;
    delete *ofn;
    *ofn = 0;
}


extern void qt_win_eatMouseMove();

QString qt_win_get_open_file_name(const QFileDialogArgs &args,
                                  QString *initialDirectory,
                                  QString *selectedFilter)
{
    QString result;

    QString isel = args.selection;

    if (initialDirectory && initialDirectory->left(5) == "file:")
        initialDirectory->remove(0, 5);
    QFileInfo fi(*initialDirectory);

    if (initialDirectory && !fi.isDir()) {
        *initialDirectory = fi.absolutePath();
        if (isel.isEmpty())
            isel = fi.fileName();
    }

    if (!fi.exists())
        *initialDirectory = QDir::homePath();

    QString title = args.caption;
    if (title.isNull())
        title = QObject::tr("Open");

    DWORD selFilIdx;

    int idx = 0;
    if (selectedFilter) {
        QStringList filterLst = qt_win_make_filters_list(args.filter);
        idx = filterLst.indexOf(*selectedFilter);
    }

    if (args.parent) {
        QEvent e(QEvent::WindowBlocked);
        QApplication::sendEvent(args.parent, &e);
        QApplicationPrivate::enterModal(args.parent);
    }
    if (useWide()) {
        // Use Unicode strings and API
        OPENFILENAMEW* ofn = qt_win_make_OFNW(args.parent, args.selection,
                                            args.directory, args.caption,
                                            qt_win_filter(args.filter),
					    QFileDialog::ExistingFile,
					    args.options);
        if (idx)
            ofn->nFilterIndex = idx + 1;
        if (GetOpenFileNameW(ofn)) {
            result = QString::fromUtf16((ushort*)ofn->lpstrFile);
            selFilIdx = ofn->nFilterIndex;
        }
        qt_win_clean_up_OFNW(&ofn);
    } else {
        // Use ANSI strings and API
        OPENFILENAMEA* ofn = qt_win_make_OFNA(args.parent, args.selection,
                                              args.directory, args.caption,
                                              qt_win_filter(args.filter),
					      QFileDialog::ExistingFile,
					      args.options);
        if (idx)
            ofn->nFilterIndex = idx + 1;
        if (GetOpenFileNameA(ofn)) {
            result = QString::fromLocal8Bit(ofn->lpstrFile);
            selFilIdx = ofn->nFilterIndex;
        }
        qt_win_clean_up_OFNA(&ofn);
    }
    if (args.parent) {
        QApplicationPrivate::leaveModal(args.parent);
        QEvent e(QEvent::WindowUnblocked);
        QApplication::sendEvent(args.parent, &e);
    }

    qt_win_eatMouseMove();

    if (result.isEmpty())
        return result;

    fi = result;
    *initialDirectory = fi.path();
    if (selectedFilter)
        *selectedFilter = qt_win_selected_filter(args.filter, selFilIdx);
    return fi.absoluteFilePath();
}

QString qt_win_get_save_file_name(const QFileDialogArgs &args,
                                  QString *initialDirectory,
				  QString *selectedFilter)
{
    QString result;

    QString isel = args.selection;
    if (initialDirectory && initialDirectory->left(5) == "file:")
        initialDirectory->remove(0, 5);
    QFileInfo fi(*initialDirectory);

    if (initialDirectory && !fi.isDir()) {
        *initialDirectory = fi.absolutePath();
        if (isel.isEmpty())
            isel = fi.fileName();
    }

    if (!fi.exists())
        *initialDirectory = QDir::homePath();

    QString title = args.caption;
    if (title.isNull())
        title = QObject::tr("Save As");

    DWORD selFilIdx;

    int idx = 0;
    if (selectedFilter) {
        QStringList filterLst = qt_win_make_filters_list(args.filter);
        idx = filterLst.indexOf(*selectedFilter);
    }

    if (args.parent) {
        QEvent e(QEvent::WindowBlocked);
        QApplication::sendEvent(args.parent, &e);
        QApplicationPrivate::enterModal(args.parent);
    }
    if (useWide()) {
        // Use Unicode strings and API
        OPENFILENAMEW *ofn = qt_win_make_OFNW(args.parent, args.selection,
                                            args.directory, args.caption,
                                            qt_win_filter(args.filter),
					    QFileDialog::AnyFile,
					    args.options);
        if (idx)
            ofn->nFilterIndex = idx + 1;
        if (GetSaveFileNameW(ofn)) {
            result = QString::fromUtf16((ushort*)ofn->lpstrFile);
            selFilIdx = ofn->nFilterIndex;
        }
        qt_win_clean_up_OFNW(&ofn);
    } else {
        // Use ANSI strings and API
        OPENFILENAMEA *ofn = qt_win_make_OFNA(args.parent, args.selection,
                                              args.directory, args.caption,
                                              qt_win_filter(args.filter),
					      QFileDialog::AnyFile,
					      args.options);
        if (idx)
            ofn->nFilterIndex = idx + 1;
        if (GetSaveFileNameA(ofn)) {
            result = QString::fromLocal8Bit(ofn->lpstrFile);
            selFilIdx = ofn->nFilterIndex;
        }
        qt_win_clean_up_OFNA(&ofn);
    }
    if (args.parent) {
        QApplicationPrivate::leaveModal(args.parent);
        QEvent e(QEvent::WindowUnblocked);
        QApplication::sendEvent(args.parent, &e);
    }

    qt_win_eatMouseMove();

    if (result.isEmpty())
        return result;

    fi = result;
    *initialDirectory = fi.path();
    if (selectedFilter)
        *selectedFilter = qt_win_selected_filter(args.filter, selFilIdx);
    return fi.absoluteFilePath();
}

QStringList qt_win_get_open_file_names(const QFileDialogArgs &args,
                                       QString *initialDirectory,
                                       QString *selectedFilter)
{
    QStringList result;
    QFileInfo fi;
    QDir dir;
    QString isel;

    if (initialDirectory && initialDirectory->left(5) == "file:")
        initialDirectory->remove(0, 5);
    fi = QFileInfo(*initialDirectory);

    if (initialDirectory && !fi.isDir()) {
        *initialDirectory = fi.absolutePath();
        isel = fi.fileName();
    }

    if (!fi.exists())
        *initialDirectory = QDir::homePath();

    QString title = args.caption;
    if (title.isNull())
        title = QObject::tr("Open ");

    DWORD selFilIdx;

    int idx = 0;
    if (selectedFilter) {
        QStringList filterLst = qt_win_make_filters_list(args.filter);
        idx = filterLst.indexOf(*selectedFilter);
    }

    if (args.parent) {
        QEvent e(QEvent::WindowBlocked);
        QApplication::sendEvent(args.parent, &e);
        QApplicationPrivate::enterModal(args.parent);
    }
    if (useWide()) {
        OPENFILENAMEW* ofn = qt_win_make_OFNW(args.parent, args.selection,
                                            args.directory, title,
                                            qt_win_filter(args.filter),
					    QFileDialog::ExistingFiles,
					    args.options);
        if (idx)
            ofn->nFilterIndex = idx + 1;
        if (GetOpenFileNameW(ofn)) {
            QString fileOrDir = QString::fromUtf16((ushort*)ofn->lpstrFile);
            selFilIdx = ofn->nFilterIndex;
            int offset = fileOrDir.length() + 1;
            if (ofn->lpstrFile[offset] == 0) {
                // Only one file selected; has full path
                fi.setFile(fileOrDir);
                QString res = fi.absoluteFilePath();
                if (!res.isEmpty())
                    result.append(res);
            }
            else {
                // Several files selected; first string is path
                dir.setPath(fileOrDir);
                QString f;
                while(!(f = QString::fromUtf16((ushort*)ofn->lpstrFile+offset)).isEmpty()) {
                    fi.setFile(dir, f);
                    QString res = fi.absoluteFilePath();
                    if (!res.isEmpty())
                        result.append(res);
                    offset += f.length() + 1;
                }
            }
        }
        qt_win_clean_up_OFNW(&ofn);
    } else {
        OPENFILENAMEA* ofn = qt_win_make_OFNA(args.parent, args.selection,
                                              args.directory, args.caption,
                                              qt_win_filter(args.filter),
					      QFileDialog::ExistingFiles,
					      args.options);
        if (idx)
            ofn->nFilterIndex = idx + 1;
        if (GetOpenFileNameA(ofn)) {
            QByteArray fileOrDir(ofn->lpstrFile);
            selFilIdx = ofn->nFilterIndex;
            int offset = fileOrDir.length() + 1;
            if (ofn->lpstrFile[offset] == '\0') {
                // Only one file selected; has full path
                fi.setFile(QString::fromLocal8Bit(fileOrDir));
                QString res = fi.absoluteFilePath();
                if (!res.isEmpty())
                    result.append(res);
            }
            else {
                // Several files selected; first string is path
                dir.setPath(QString::fromLocal8Bit(fileOrDir));
                QByteArray f;
                while (!(f = QByteArray(ofn->lpstrFile + offset)).isEmpty()) {
                    fi.setFile(dir, QString::fromLocal8Bit(f));
                    QString res = fi.absoluteFilePath();
                    if (!res.isEmpty())
                        result.append(res);
                    offset += f.length() + 1;
                }
            }
            qt_win_clean_up_OFNA(&ofn);
        }
    }
    if (args.parent) {
        QApplicationPrivate::leaveModal(args.parent);
        QEvent e(QEvent::WindowUnblocked);
        QApplication::sendEvent(args.parent, &e);
    }

    qt_win_eatMouseMove();

    if (!result.isEmpty()) {
        *initialDirectory = fi.path();    // only save the path if there is a result
        if (selectedFilter)
            *selectedFilter = qt_win_selected_filter(args.filter, selFilIdx);
    }
    return result;
}

// MFC Directory Dialog. Contrib: Steve Williams (minor parts from Scott Powers)

static int __stdcall winGetExistDirCallbackProc(HWND hwnd,
                                                UINT uMsg,
                                                LPARAM lParam,
                                                LPARAM lpData, BOOL isWide)
{
#ifndef Q_OS_TEMP
    if (uMsg == BFFM_INITIALIZED && lpData != 0) {
        QString *initDir = (QString *)(lpData);
        if (!initDir->isEmpty()) {
            if (isWide) {
                SendMessageW(hwnd, BFFM_SETSELECTIONW, true, LPARAM(initDir->utf16()));
            } else {
                // From MSDN:
                // Even though there are ANSI and Unicode versions of this message,
                // both versions take a pointer to a Unicode string.
                SendMessageA(hwnd, BFFM_SETSELECTIONA, true, LPARAM(initDir->utf16()));
            }
        }
    } else if (uMsg == BFFM_SELCHANGED) {
        if (pfnSHGetPathFromIDListW) {
            WCHAR path[MAX_PATH];
            pfnSHGetPathFromIDListW(LPITEMIDLIST(lParam), path);
            QString tmpStr = QString::fromUtf16((ushort*)path);
            if (!tmpStr.isEmpty())
                SendMessageW(hwnd, BFFM_ENABLEOK, 1, 1);
            else
                SendMessageW(hwnd, BFFM_ENABLEOK, 0, 0);
            SendMessageW(hwnd, BFFM_SETSTATUSTEXTW, 1, LPARAM(path));
        } else if (pfnSHGetPathFromIDListA) {
            char path[MAX_PATH];
            pfnSHGetPathFromIDListA(LPITEMIDLIST(lParam), path);
            QString tmpStr = QString::fromLocal8Bit(path);
            if (!tmpStr.isEmpty())
                SendMessageA(hwnd, BFFM_ENABLEOK, 1, 1);
            else
                SendMessageA(hwnd, BFFM_ENABLEOK, 0, 0);
            SendMessageA(hwnd, BFFM_SETSTATUSTEXTA, 1, LPARAM(path));
        }
    }
#endif
    return 0;
}

static int __stdcall winGetExistDirCallbackProcA(HWND hwnd, UINT uMsg, LPARAM lParam, LPARAM lpData)
    { return winGetExistDirCallbackProc(hwnd, uMsg, lParam, lpData, FALSE); }
static int __stdcall winGetExistDirCallbackProcW(HWND hwnd, UINT uMsg, LPARAM lParam, LPARAM lpData)
    { return winGetExistDirCallbackProc(hwnd, uMsg, lParam, lpData, TRUE); }

#ifndef BIF_NEWDIALOGSTYLE
#define BIF_NEWDIALOGSTYLE     0x0040   // Use the new dialog layout with the ability to resize
#endif


QString qt_win_get_existing_directory(const QFileDialogArgs &args)
{
#ifndef Q_OS_TEMP
    QString currentDir = QDir::currentPath();
    QString result;
    QWidget *parent = args.parent;
    if (parent)
        parent = parent->window();
    else
        parent = qApp->activeWindow();
    QString title = args.caption;
    if (title.isNull())
        title = QObject::tr("Select a Directory");

    if (parent) {
        QEvent e(QEvent::WindowBlocked);
        QApplication::sendEvent(parent, &e);
        QApplicationPrivate::enterModal(parent);
    }
    if (pfnSHBrowseForFolderW && pfnSHGetPathFromIDListW) {
        QString initDir = QDir::convertSeparators(args.directory);
        WCHAR path[MAX_PATH];
        WCHAR initPath[MAX_PATH];
        initPath[0] = 0;
        path[0] = 0;
        tTitle = title;
        BROWSEINFOW bi;
        bi.hwndOwner = (parent ? parent->winId() : 0);
        bi.pidlRoot = NULL;
        bi.lpszTitle = (WCHAR*)tTitle.utf16();
        bi.pszDisplayName = initPath;
        bi.ulFlags = BIF_RETURNONLYFSDIRS | BIF_STATUSTEXT | BIF_NEWDIALOGSTYLE;
        bi.lpfn = winGetExistDirCallbackProcW;
        bi.lParam = LPARAM(&initDir);
        LPITEMIDLIST pItemIDList = pfnSHBrowseForFolderW(&bi);
        if (pItemIDList) {
            pfnSHGetPathFromIDListW(pItemIDList, path);
            IMalloc *pMalloc;
            if (pfnSHGetMalloc && pfnSHGetMalloc(&pMalloc) == S_OK) {
                pMalloc->Free(pItemIDList);
                pMalloc->Release();
            } else if (pfnCoTaskMemFree)
                pfnCoTaskMemFree(pItemIDList);
            result = QString::fromUtf16((ushort*)path);
        } else
            result = QString();
        tTitle = QString();
    } else if (pfnSHBrowseForFolderA && pfnSHGetPathFromIDListA) {
        QString initDir = QDir::convertSeparators(args.directory);
        char path[MAX_PATH];
        char initPath[MAX_PATH];
        QByteArray ctitle = title.toLocal8Bit();
        initPath[0]=0;
        path[0]=0;
        BROWSEINFOA bi;
        bi.hwndOwner = (parent ? parent->winId() : 0);
        bi.pidlRoot = NULL;
        bi.lpszTitle = ctitle;
        bi.pszDisplayName = initPath;
        bi.ulFlags = BIF_RETURNONLYFSDIRS | BIF_STATUSTEXT | BIF_NEWDIALOGSTYLE;
        bi.lpfn = winGetExistDirCallbackProcA;
        bi.lParam = LPARAM(&initDir);
        LPITEMIDLIST pItemIDList = pfnSHBrowseForFolderA(&bi);
        if (pItemIDList) {
            pfnSHGetPathFromIDListA(pItemIDList, path);
            IMalloc *pMalloc;
            if (pfnSHGetMalloc && pfnSHGetMalloc(&pMalloc) == S_OK) {
                pMalloc->Free(pItemIDList);
                pMalloc->Release();
            } else if (pfnCoTaskMemFree)
                pfnCoTaskMemFree(pItemIDList);
            result = QString::fromLocal8Bit(path);
        } else
            result = QString();
    }
    if (parent) {
        QApplicationPrivate::leaveModal(parent);
        QEvent e(QEvent::WindowUnblocked);
        QApplication::sendEvent(parent, &e);
    }

    qt_win_eatMouseMove();

    // Due to a bug on Windows Me, we need to reset the current
    // directory
    if ((QSysInfo::WindowsVersion == QSysInfo::WV_98 || QSysInfo::WindowsVersion == QSysInfo::WV_Me)
	&& QDir::currentPath() != currentDir)
        QDir::setCurrent(currentDir);

    if (!result.isEmpty())
        result.replace("\\", "/");
    return result;
#else
    return QString();
#endif
}


#endif
