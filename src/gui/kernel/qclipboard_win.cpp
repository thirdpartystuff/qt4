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

#include "qclipboard.h"

#ifndef QT_NO_CLIPBOARD

#include "qapplication.h"
#include "qapplication_p.h"
#include "qeventloop.h"
#include "qwidget.h"
#include "qevent.h"
#include "qmime.h"
#include "qt_windows.h"
#include "qdnd_p.h"

extern const QString s_text_plain;
extern const QString s_text_html;
extern const QString s_text_uri_list;
extern const QString s_application_x_qt_image;
extern const QString s_application_x_color;

extern int CF_PERFORMEDDROPEFFECT;

int getCf(const FORMATETC &formatetc);
STDAPI_(LPENUMFORMATETC) OleStdEnumFmtEtc_Create(ULONG nCount, LPFORMATETC lpEtc);

class QNonOleClipboard : public QOleDataObject
{
public:
    QNonOleClipboard() : QOleDataObject(NULL), m_open(false) {}
    ~QNonOleClipboard() { if (m_open) CloseClipboard(); }

    bool open() { if (!m_open) { m_open = OpenClipboard(NULL); } return m_open; }

    // IUnknown methods
    STDMETHOD(QueryInterface)(REFIID riid, void FAR* FAR* ppvObj);
    STDMETHOD_(ULONG,AddRef)(void);
    STDMETHOD_(ULONG,Release)(void);

    // IDataObject methods
    STDMETHOD(QueryGetData)(LPFORMATETC pformatetc);
    STDMETHOD(GetData)(LPFORMATETC pformatetcIn, LPSTGMEDIUM pmedium);
    STDMETHOD(EnumFormatEtc)(DWORD dwDirection, LPENUMFORMATETC FAR* ppenumFormatEtc);

private:
    bool m_open;
};

STDMETHODIMP QNonOleClipboard::QueryInterface(REFIID iid, void** ppv) { return ResultFromScode(E_NOINTERFACE); }
STDMETHODIMP_(ULONG) QNonOleClipboard::AddRef(void) { return 1; }
STDMETHODIMP_(ULONG) QNonOleClipboard::Release(void) { return 1; }

STDMETHODIMP QNonOleClipboard::QueryGetData(LPFORMATETC pformatetc)
{
    if (IsClipboardFormatAvailable(getCf(*pformatetc)))
        return ResultFromScode(S_OK);
    else
        return ResultFromScode(DATA_E_FORMATETC);
}

STDMETHODIMP QNonOleClipboard::GetData(LPFORMATETC pformatetc, LPSTGMEDIUM pmedium)
{
    pmedium->tymed = TYMED_HGLOBAL;
    pmedium->hGlobal = GetClipboardData(getCf(*pformatetc));
    pmedium->pUnkForRelease = this;
    return ResultFromScode(S_OK);
}

STDMETHODIMP QNonOleClipboard::EnumFormatEtc(DWORD dwDirection, LPENUMFORMATETC FAR* ppenumFormatEtc)
{
    SCODE sc = S_OK;

    if (dwDirection == DATADIR_GET) {
        QVector<FORMATETC> fmtetcs = QWindowsMime::allFormatsForMime(NULL);
        for (int i = 0; i < fmtetcs.size(); ) {
            if (IsClipboardFormatAvailable(getCf(fmtetcs.at(i))))
                ++i;
            else
                fmtetcs.remove(i);
        }
        *ppenumFormatEtc = OleStdEnumFmtEtc_Create(fmtetcs.size(), fmtetcs.data());
        if (*ppenumFormatEtc == NULL)
            sc = E_OUTOFMEMORY;
    } else {
        FORMATETC formatetc;
        formatetc.cfFormat = CF_PERFORMEDDROPEFFECT;
        formatetc.dwAspect = DVASPECT_CONTENT;
        formatetc.lindex = -1;
        formatetc.ptd = NULL;
        formatetc.tymed = TYMED_HGLOBAL;
        *ppenumFormatEtc = OleStdEnumFmtEtc_Create(1, &formatetc);
        if (*ppenumFormatEtc == NULL)
            sc = E_OUTOFMEMORY;
    }

    return ResultFromScode(sc);
}

class QClipboardWatcher : public QInternalMimeData {
public:
    QClipboardWatcher()
        : QInternalMimeData()
    {
    }

    bool hasFormat_sys(const QString &mimetype) const;
    QStringList formats_sys() const;
    QVariant retrieveData_sys(const QString &mimetype, QVariant::Type preferredType) const;
};


bool QClipboardWatcher::hasFormat_sys(const QString &mime) const
{
    QNonOleClipboard nonOleClipboard;
    IDataObject * pDataObj = 0;

    if (!pfnOleGetClipboard || (pfnOleGetClipboard(&pDataObj) != S_OK && !pDataObj)) { // Sanity
        if (!nonOleClipboard.open())
            return false;
        pDataObj = &nonOleClipboard;
    }

    bool has = QWindowsMime::converterToMime(mime, pDataObj) != 0;

    pDataObj->Release();

    return has;
}

QStringList QClipboardWatcher::formats_sys() const
{
    QStringList fmts;
    QNonOleClipboard nonOleClipboard;
    IDataObject * pDataObj = 0;

    if (!pfnOleGetClipboard || (pfnOleGetClipboard(&pDataObj) != S_OK && !pDataObj)) { // Sanity
        if (!nonOleClipboard.open())
            return QStringList();
        pDataObj = &nonOleClipboard;
    }

    fmts = QWindowsMime::allMimesForFormats(pDataObj);

    pDataObj->Release();

    return fmts;
}

QVariant QClipboardWatcher::retrieveData_sys(const QString &mimeType, QVariant::Type type) const
{
    QVariant result;
    QNonOleClipboard nonOleClipboard;
    IDataObject * pDataObj = 0;

    if (!pfnOleGetClipboard || (pfnOleGetClipboard(&pDataObj) != S_OK && !pDataObj)) { // Sanity
        if (!nonOleClipboard.open())
            return result;
        pDataObj = &nonOleClipboard;
    }

    QWindowsMime *converter = QWindowsMime::converterToMime(mimeType, pDataObj);

    if (converter)
        result = converter->convertToMime(mimeType, pDataObj, type);

    pDataObj->Release();

    return result;
}

class QClipboardData
{
public:
    QClipboardData()
        : iData(0)
        , nextClipboardViewer(0)
    {
        clipBoardViewer = new QWidget();
        clipBoardViewer->setObjectName("internal clipboard owner");
    }

    ~QClipboardData()
    {
        ChangeClipboardChain(clipBoardViewer->winId(), nextClipboardViewer);
        delete clipBoardViewer;
        releaseIData();
    }

    void releaseIData()
    {
        if (iData) {
            delete iData->mimeData();
            iData->releaseQt();
            iData->Release();
            iData = 0;
        }
    }

    QOleDataObject * iData;
    QWidget *clipBoardViewer;
    HWND nextClipboardViewer;
    QClipboardWatcher watcher;
};

static QClipboardData *ptrClipboardData = 0;

static QClipboardData *clipboardData()
{
    if (ptrClipboardData == 0) {
        ptrClipboardData = new QClipboardData;
        // this needs to be done here to avoid recursion
        ptrClipboardData->nextClipboardViewer = SetClipboardViewer(ptrClipboardData->clipBoardViewer->winId());
    }
    return ptrClipboardData;
}

static void cleanupClipboardData()
{
    delete ptrClipboardData;
    ptrClipboardData = 0;
}

QClipboard::~QClipboard()
{
    cleanupClipboardData();
}

void QClipboard::setMimeData(QMimeData *src, Mode mode)
{
    if (mode != Clipboard)
        return;

    QClipboardData *d = clipboardData();

    d->releaseIData();

    if (!pfnOleSetClipboard) {
        if (OpenClipboard(NULL)) {
            EmptyClipboard();
            if (src->hasText()) {
                // FIXME: CF_UNICODETEXT !
                QByteArray data = src->text().toLocal8Bit();
                size_t dataSize = size_t(data.size()) + 1;
                HGLOBAL hMem = GlobalAlloc(GMEM_MOVEABLE, dataSize + 1);
                if (hMem) {
                    char* ptr = (char*)GlobalLock(hMem);
                    memcpy(ptr, data.data(), dataSize);
                    ptr[dataSize] = 0;
                    GlobalUnlock(hMem);
                    SetClipboardData(CF_TEXT, hMem);
                }
            }
            /* FIXME
            if (src->hasImage()) {
                QImage image = qvariant_cast<QImage>(src->imageData());
                HBITMAP hBitmap = QPixmap::fromImage(image).toWinHBITMAP(QPixmap::PremultipliedAlpha);
                if (hBitmap)
                    SetClipboardData(CF_BITMAP, hBitmap);
            }
            */
            CloseClipboard();
        }
        return;
    }

    d->iData = new QOleDataObject(src);

    if (pfnOleSetClipboard(d->iData) != S_OK) {
        d->releaseIData();
        qErrnoWarning("QClipboard::setMimeData: Failed to set data on clipboard");
        return;
    }

}

void QClipboard::clear(Mode mode)
{
    if (mode != Clipboard) return;

    QClipboardData *d = clipboardData();

    d->releaseIData();

    if (!pfnOleSetClipboard) {
        if (OpenClipboard(NULL)) {
            EmptyClipboard();
            CloseClipboard();
        }
        return;
    }

    if (pfnOleSetClipboard(0) != S_OK) {
        qErrnoWarning("QClipboard::clear: Failed to clear data on clipboard");
        return;
    }
}

bool QClipboard::event(QEvent *e)
{
    if (e->type() != QEvent::Clipboard)
        return QObject::event(e);

    QClipboardData *d = clipboardData();

    MSG *m = (MSG *)((QClipboardEvent*)e)->data();
    if (!m) {
        // this is sent to render all formats at app shut down
        if (ownsClipboard()) {
            if (pfnOleFlushClipboard) pfnOleFlushClipboard();
            d->releaseIData();
        }
        return true;
    }

    bool propagate = false;

    if (m->message == WM_CHANGECBCHAIN) {
        if ((HWND)m->wParam == d->nextClipboardViewer)
            d->nextClipboardViewer = (HWND)m->lParam;
        else
            propagate = true;
    } else if (m->message == WM_DRAWCLIPBOARD) {
        emit dataChanged();
        if (!ownsClipboard() && d->iData)
            // clean up the clipboard object if we no longer own the clipboard
            d->releaseIData();
        propagate = true;
    }

    if (propagate && d->nextClipboardViewer) {
        QT_WA({
            SendMessage(d->nextClipboardViewer, m->message,
                         m->wParam, m->lParam);
        } , {
            SendMessageA(d->nextClipboardViewer, m->message,
                         m->wParam, m->lParam);
        });
    }

    return true;
}

void QClipboard::connectNotify(const char *signal)
{
    if (qstrcmp(signal,SIGNAL(dataChanged())) == 0) {
        // ensure we are up and running
        QClipboardData *d = clipboardData();
        Q_UNUSED(d);
    }
}

const QMimeData *QClipboard::mimeData(Mode mode) const
{
    if (mode != Clipboard)
        return 0;

    QClipboardData *data = clipboardData();
    // sort cut for local copy / paste
    if (ownsClipboard() && data->iData->mimeData())
        return data->iData->mimeData();
    return &data->watcher;
}

bool QClipboard::ownsClipboard() const
{
    QClipboardData *d = clipboardData();

    if (!pfnOleIsCurrentClipboard)
        return GetClipboardOwner() == d->clipBoardViewer->winId();

    return d->iData && pfnOleIsCurrentClipboard(d->iData) == S_OK;
}

bool QClipboard::supportsSelection() const
{
    return false;
}

bool QClipboard::ownsSelection() const
{
    return false;
}

void QClipboard::ownerDestroyed()
{
}

#endif // QT_NO_CLIPBOARD
