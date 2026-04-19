
moc("${ROOT}/src/gui/dialogs/qdialog.h")
moc("${ROOT}/src/gui/dialogs/qerrormessage.h")
moc("${ROOT}/src/gui/dialogs/qinputdialog.h")
moc("${ROOT}/src/gui/image/qimageiohandler.h")
moc("${ROOT}/src/gui/image/qiconengineplugin.h")
moc("${ROOT}/src/gui/inputmethod/qinputcontext.h")
moc("${ROOT}/src/gui/inputmethod/qinputcontextplugin.h")
moc("${ROOT}/src/gui/itemviews/qabstractitemdelegate.h")
moc("${ROOT}/src/gui/itemviews/qabstractitemview.h")
moc("${ROOT}/src/gui/itemviews/qdirmodel.h")
moc("${ROOT}/src/gui/itemviews/qheaderview.h")
moc("${ROOT}/src/gui/itemviews/qitemdelegate.h")
moc("${ROOT}/src/gui/itemviews/qitemselectionmodel.h")
moc("${ROOT}/src/gui/itemviews/qlistview.h")
moc("${ROOT}/src/gui/itemviews/qproxymodel.h")
moc("${ROOT}/src/gui/itemviews/qstandarditemmodel.h")
moc("${ROOT}/src/gui/itemviews/qstringlistmodel.h")
moc("${ROOT}/src/gui/itemviews/qtableview.h")
moc("${ROOT}/src/gui/itemviews/qtreeview.h")
moc("${ROOT}/src/gui/kernel/qboxlayout.h")
moc("${ROOT}/src/gui/kernel/qclipboard.h")
moc("${ROOT}/src/gui/kernel/qdesktopwidget.h")
moc("${ROOT}/src/gui/kernel/qdnd_p.h")
moc("${ROOT}/src/gui/kernel/qdrag.h")
moc("${ROOT}/src/gui/kernel/qgridlayout.h")
moc("${ROOT}/src/gui/kernel/qlayout.h")
moc("${ROOT}/src/gui/kernel/qpalette.h")
moc("${ROOT}/src/gui/kernel/qsessionmanager.h")
moc("${ROOT}/src/gui/kernel/qsizepolicy.h")
moc("${ROOT}/src/gui/kernel/qshortcut.h")
moc("${ROOT}/src/gui/kernel/qsound.h")
moc("${ROOT}/src/gui/kernel/qsound_p.h")
moc("${ROOT}/src/gui/kernel/qstackedlayout.h")
moc("${ROOT}/src/gui/styles/qcommonstyle.h")
moc("${ROOT}/src/gui/styles/qstyle.h")
moc("${ROOT}/src/gui/styles/qstyleplugin.h")
moc("${ROOT}/src/gui/styles/qwindowsstyle.h")
moc("${ROOT}/src/gui/text/qfont_p.h")
moc("${ROOT}/src/gui/text/qtextdocument.h")
moc("${ROOT}/src/gui/text/qtextdocumentlayout_p.h")
moc("${ROOT}/src/gui/text/qtextimagehandler_p.h")
moc("${ROOT}/src/gui/text/qtextlist.h")
moc("${ROOT}/src/gui/text/qtextobject.h")
moc("${ROOT}/src/gui/text/qtexttable.h")
moc("${ROOT}/src/gui/widgets/qabstractbutton.h")
moc("${ROOT}/src/gui/widgets/qabstractslider.h")
moc("${ROOT}/src/gui/widgets/qbuttongroup.h")
moc("${ROOT}/src/gui/widgets/qcheckbox.h")
moc("${ROOT}/src/gui/widgets/qcombobox_p.h")
moc("${ROOT}/src/gui/widgets/qdialogbuttons_p.h")
moc("${ROOT}/src/gui/widgets/qdockseparator_p.h")
moc("${ROOT}/src/gui/widgets/qdockwidgetlayout_p.h")
moc("${ROOT}/src/gui/widgets/qdockwidgetseparator_p.h")
moc("${ROOT}/src/gui/widgets/qfocusframe.h")
moc("${ROOT}/src/gui/widgets/qframe.h")
moc("${ROOT}/src/gui/widgets/qmainwindow.h")
moc("${ROOT}/src/gui/widgets/qmainwindowlayout_p.h")
moc("${ROOT}/src/gui/widgets/qprogressbar.h")
moc("${ROOT}/src/gui/widgets/qradiobutton.h")
moc("${ROOT}/src/gui/widgets/qrubberband.h")
moc("${ROOT}/src/gui/widgets/qscrollarea.h")
moc("${ROOT}/src/gui/widgets/qscrollbar.h")
moc("${ROOT}/src/gui/widgets/qsizegrip.h")
moc("${ROOT}/src/gui/widgets/qslider.h")
moc("${ROOT}/src/gui/widgets/qspinbox.h")
moc("${ROOT}/src/gui/widgets/qsplashscreen.h")
moc("${ROOT}/src/gui/widgets/qsplitter.h")
moc("${ROOT}/src/gui/widgets/qstackedwidget.h")
moc("${ROOT}/src/gui/widgets/qstatusbar.h")
moc("${ROOT}/src/gui/widgets/qtoolbar_p.h")
moc("${ROOT}/src/gui/widgets/qtoolbarextension_p.h")
moc("${ROOT}/src/gui/widgets/qtoolbarhandle_p.h")
moc("${ROOT}/src/gui/widgets/qtoolbarseparator_p.h")
moc("${ROOT}/src/gui/widgets/qvalidator.h")
moc("${ROOT}/src/gui/widgets/qwidgetresizehandler_p.h")
if(WIN32)
    moc("${ROOT}/src/gui/inputmethod/qwininputcontext_p.h")
elseif(X11)
    moc("${ROOT}/src/gui/inputmethod/qximinputcontext_p.h")
    moc("${ROOT}/src/gui/kernel/qeventdispatcher_x11_p.h")
    moc("${ROOT}/src/gui/kernel/qx11embed_x11.h")
endif()

moc2("moc_qcolordialog.cpp" "${ROOT}/src/gui/dialogs/qcolordialog.h")
moc2("qcolordialog.moc" "${ROOT}/src/gui/dialogs/qcolordialog.cpp")
moc2("moc_qfiledialog.cpp" "${ROOT}/src/gui/dialogs/qfiledialog.h")
moc2("moc_qfontdialog.cpp" "${ROOT}/src/gui/dialogs/qfontdialog.h")
moc2("qfontdialog.moc" "${ROOT}/src/gui/dialogs/qfontdialog.cpp")
moc2("moc_qmessagebox.cpp" "${ROOT}/src/gui/dialogs/qmessagebox.h")
moc2("moc_qaction.cpp" "${ROOT}/src/gui/kernel/qaction.h")
moc2("moc_qactiongroup.cpp" "${ROOT}/src/gui/kernel/qactiongroup.h")
moc2("moc_qapplication.cpp" "${ROOT}/src/gui/kernel/qapplication.h")
moc2("qtooltip.moc" "${ROOT}/src/gui/kernel/qtooltip.cpp")
moc2("moc_qwidget.cpp" "${ROOT}/src/gui/kernel/qwidget.h")
moc2("moc_qmovie.cpp" "${ROOT}/src/gui/image/qmovie.h")
moc2("qpixmapcache.moc" "${ROOT}/src/gui/image/qpixmapcache.cpp")
moc2("moc_qlistwidget.cpp" "${ROOT}/src/gui/itemviews/qlistwidget.h")
moc2("qlistwidget.moc" "${ROOT}/src/gui/itemviews/qlistwidget.cpp")
moc2("moc_qtablewidget.cpp" "${ROOT}/src/gui/itemviews/qtablewidget.h")
moc2("qtablewidget.moc" "${ROOT}/src/gui/itemviews/qtablewidget.cpp")
moc2("moc_qtreewidget.cpp" "${ROOT}/src/gui/itemviews/qtreewidget.h")
moc2("qtreewidget.moc" "${ROOT}/src/gui/itemviews/qtreewidget.cpp")
moc2("moc_qabstracttextdocumentlayout.cpp" "${ROOT}/src/gui/text/qabstracttextdocumentlayout.h")
moc2("moc_qabstractscrollarea.cpp" "${ROOT}/src/gui/widgets/qabstractscrollarea.h")
moc2("moc_qabstractspinbox.cpp" "${ROOT}/src/gui/widgets/qabstractspinbox.h")
moc2("moc_qcombobox.cpp" "${ROOT}/src/gui/widgets/qcombobox.h")
moc2("moc_qdockwidget.cpp" "${ROOT}/src/gui/widgets/qdockwidget.h")
moc2("qdockwidget.moc" "${ROOT}/src/gui/widgets/qdockwidget.cpp")
moc2("moc_qgroupbox.cpp" "${ROOT}/src/gui/widgets/qgroupbox.h")
moc2("moc_qlabel.cpp" "${ROOT}/src/gui/widgets/qlabel.h")
moc2("moc_qlineedit.cpp" "${ROOT}/src/gui/widgets/qlineedit.h")
moc2("moc_qmenu.cpp" "${ROOT}/src/gui/widgets/qmenu.h")
moc2("qmenu.moc" "${ROOT}/src/gui/widgets/qmenu.cpp")
moc2("moc_qmenubar.cpp" "${ROOT}/src/gui/widgets/qmenubar.h")
moc2("moc_qpushbutton.cpp" "${ROOT}/src/gui/widgets/qpushbutton.h")
moc2("moc_qtabbar.cpp" "${ROOT}/src/gui/widgets/qtabbar.h")
moc2("moc_qtabwidget.cpp" "${ROOT}/src/gui/widgets/qtabwidget.h")
moc2("moc_qtextbrowser.cpp" "${ROOT}/src/gui/widgets/qtextbrowser.h")
moc2("moc_qtextedit.cpp" "${ROOT}/src/gui/widgets/qtextedit.h")
moc2("moc_qtoolbar.cpp" "${ROOT}/src/gui/widgets/qtoolbar.h")
moc2("moc_qtoolbox.cpp" "${ROOT}/src/gui/widgets/qtoolbox.h")
moc2("qtoolbox.moc" "${ROOT}/src/gui/widgets/qtoolbox.cpp")
moc2("moc_qtoolbutton.cpp" "${ROOT}/src/gui/widgets/qtoolbutton.h")
moc2("moc_qworkspace.cpp" "${ROOT}/src/gui/widgets/qworkspace.h")
moc2("qworkspace.moc" "${ROOT}/src/gui/widgets/qworkspace.cpp")
if(WIN32)
    moc2("qsound_win.moc" "${ROOT}/src/gui/kernel/qsound_win.cpp")
elseif(X11)
    moc2("qapplication_x11.moc" "${ROOT}/src/gui/kernel/qapplication_x11.cpp")
endif()

rcc("${ROOT}/src/gui/styles/qstyle.qrc")

set(src_gui_dialogs
    "${ROOT}/src/gui/dialogs/qabstractpagesetupdialog.cpp"
    "${ROOT}/src/gui/dialogs/qabstractpagesetupdialog.h"
    "${ROOT}/src/gui/dialogs/qabstractpagesetupdialog_p.h"
    "${ROOT}/src/gui/dialogs/qabstractprintdialog.cpp"
    "${ROOT}/src/gui/dialogs/qabstractprintdialog.h"
    "${ROOT}/src/gui/dialogs/qabstractprintdialog_p.h"
    "${ROOT}/src/gui/dialogs/qcolordialog.cpp"
    "${ROOT}/src/gui/dialogs/qcolordialog.h"
    "${ROOT}/src/gui/dialogs/qcolordialog_mac.cpp"
    "${ROOT}/src/gui/dialogs/qdialog.cpp"
    "${ROOT}/src/gui/dialogs/qdialog.h"
    "${ROOT}/src/gui/dialogs/qdialog_p.h"
    "${ROOT}/src/gui/dialogs/qerrormessage.cpp"
    "${ROOT}/src/gui/dialogs/qerrormessage.h"
    "${ROOT}/src/gui/dialogs/qfiledialog.cpp"
    "${ROOT}/src/gui/dialogs/qfiledialog.h"
    "${ROOT}/src/gui/dialogs/qfiledialog_mac.cpp"
    "${ROOT}/src/gui/dialogs/qfiledialog_p.h"
    "${ROOT}/src/gui/dialogs/qfiledialog_win.cpp"
    "${ROOT}/src/gui/dialogs/qfontdialog.cpp"
    "${ROOT}/src/gui/dialogs/qfontdialog.h"
    "${ROOT}/src/gui/dialogs/qinputdialog.cpp"
    "${ROOT}/src/gui/dialogs/qinputdialog.h"
    "${ROOT}/src/gui/dialogs/qmessagebox.cpp"
    "${ROOT}/src/gui/dialogs/qmessagebox.h"
    "${ROOT}/src/gui/dialogs/qpagesetupdialog.h"
    "${ROOT}/src/gui/dialogs/qpagesetupdialog_mac.cpp"
    "${ROOT}/src/gui/dialogs/qpagesetupdialog_unix.cpp"
    "${ROOT}/src/gui/dialogs/qpagesetupdialog_win.cpp"
    "${ROOT}/src/gui/dialogs/qprintdialog.h"
    "${ROOT}/src/gui/dialogs/qprintdialog_mac.cpp"
    "${ROOT}/src/gui/dialogs/qprintdialog_unix.cpp"
    "${ROOT}/src/gui/dialogs/qprintdialog_win.cpp"
    "${ROOT}/src/gui/dialogs/qprogressdialog.cpp"
    "${ROOT}/src/gui/dialogs/qprogressdialog.h"
    )

set(src_gui_image
    "${ROOT}/src/gui/image/qbitmap.cpp"
    "${ROOT}/src/gui/image/qbitmap.h"
    "${ROOT}/src/gui/image/qbmphandler.cpp"
    "${ROOT}/src/gui/image/qbmphandler_p.h"
    "${ROOT}/src/gui/image/qicon.cpp"
    "${ROOT}/src/gui/image/qicon.h"
    "${ROOT}/src/gui/image/qiconengine.cpp"
    "${ROOT}/src/gui/image/qiconengine.h"
    "${ROOT}/src/gui/image/qiconengineplugin.cpp"
    "${ROOT}/src/gui/image/qiconengineplugin.h"
    "${ROOT}/src/gui/image/qimage.cpp"
    "${ROOT}/src/gui/image/qimage.h"
    "${ROOT}/src/gui/image/qimageiohandler.cpp"
    "${ROOT}/src/gui/image/qimageiohandler.h"
    "${ROOT}/src/gui/image/qimagereader.cpp"
    "${ROOT}/src/gui/image/qimagereader.h"
    "${ROOT}/src/gui/image/qimagewriter.cpp"
    "${ROOT}/src/gui/image/qimagewriter.h"
    "${ROOT}/src/gui/image/qmovie.cpp"
    "${ROOT}/src/gui/image/qmovie.h"
    "${ROOT}/src/gui/image/qpaintengine_pic.cpp"
    "${ROOT}/src/gui/image/qpaintengine_pic_p.h"
    "${ROOT}/src/gui/image/qpicture.cpp"
    "${ROOT}/src/gui/image/qpicture.h"
    "${ROOT}/src/gui/image/qpictureformatplugin.cpp"
    "${ROOT}/src/gui/image/qpictureformatplugin.h"
    "${ROOT}/src/gui/image/qpicture_p.h"
    "${ROOT}/src/gui/image/qpixmap.cpp"
    "${ROOT}/src/gui/image/qpixmap.h"
    "${ROOT}/src/gui/image/qpixmapcache.cpp"
    "${ROOT}/src/gui/image/qpixmapcache.h"
    "${ROOT}/src/gui/image/qpixmap_mac.cpp"
    "${ROOT}/src/gui/image/qpixmap_p.h"
    "${ROOT}/src/gui/image/qpixmap_qws.cpp"
    "${ROOT}/src/gui/image/qpixmap_raster.cpp"
    "${ROOT}/src/gui/image/qpixmap_win.cpp"
    "${ROOT}/src/gui/image/qpixmap_x11.cpp"
    "${ROOT}/src/gui/image/qpnghandler.cpp"
    "${ROOT}/src/gui/image/qpnghandler_p.h"
    "${ROOT}/src/gui/image/qppmhandler.cpp"
    "${ROOT}/src/gui/image/qppmhandler_p.h"
    "${ROOT}/src/gui/image/qxbmhandler.cpp"
    "${ROOT}/src/gui/image/qxbmhandler_p.h"
    "${ROOT}/src/gui/image/qxpmhandler.cpp"
    "${ROOT}/src/gui/image/qxpmhandler_p.h"
    )

set(src_gui_inputmethod
    "${ROOT}/src/gui/inputmethod/qinputcontext.cpp"
    "${ROOT}/src/gui/inputmethod/qinputcontext.h"
    "${ROOT}/src/gui/inputmethod/qinputcontextfactory.cpp"
    "${ROOT}/src/gui/inputmethod/qinputcontextfactory.h"
    "${ROOT}/src/gui/inputmethod/qinputcontextplugin.cpp"
    "${ROOT}/src/gui/inputmethod/qinputcontextplugin.h"
    "${ROOT}/src/gui/inputmethod/qmacinputcontext_mac.cpp"
    "${ROOT}/src/gui/inputmethod/qmacinputcontext_p.h"
    "${ROOT}/src/gui/inputmethod/qwininputcontext_p.h"
    "${ROOT}/src/gui/inputmethod/qwininputcontext_win.cpp"
    "${ROOT}/src/gui/inputmethod/qwsinputcontext_p.h"
    "${ROOT}/src/gui/inputmethod/qwsinputcontext_qws.cpp"
    "${ROOT}/src/gui/inputmethod/qximinputcontext_p.h"
    "${ROOT}/src/gui/inputmethod/qximinputcontext_x11.cpp"
    )

set(src_gui_itemviews
    "${ROOT}/src/gui/itemviews/qabstractitemdelegate.cpp"
    "${ROOT}/src/gui/itemviews/qabstractitemdelegate.h"
    "${ROOT}/src/gui/itemviews/qabstractitemview.cpp"
    "${ROOT}/src/gui/itemviews/qabstractitemview.h"
    "${ROOT}/src/gui/itemviews/qabstractitemview_p.h"
    "${ROOT}/src/gui/itemviews/qdirmodel.cpp"
    "${ROOT}/src/gui/itemviews/qdirmodel.h"
    "${ROOT}/src/gui/itemviews/qheaderview.cpp"
    "${ROOT}/src/gui/itemviews/qheaderview.h"
    "${ROOT}/src/gui/itemviews/qheaderview_p.h"
    "${ROOT}/src/gui/itemviews/qitemdelegate.cpp"
    "${ROOT}/src/gui/itemviews/qitemdelegate.h"
    "${ROOT}/src/gui/itemviews/qitemeditorfactory.cpp"
    "${ROOT}/src/gui/itemviews/qitemeditorfactory.h"
    "${ROOT}/src/gui/itemviews/qitemselectionmodel.cpp"
    "${ROOT}/src/gui/itemviews/qitemselectionmodel.h"
    "${ROOT}/src/gui/itemviews/qitemselectionmodel_p.h"
    "${ROOT}/src/gui/itemviews/qlistview.cpp"
    "${ROOT}/src/gui/itemviews/qlistview.h"
    "${ROOT}/src/gui/itemviews/qlistview_p.h"
    "${ROOT}/src/gui/itemviews/qlistwidget.cpp"
    "${ROOT}/src/gui/itemviews/qlistwidget.h"
    "${ROOT}/src/gui/itemviews/qproxymodel.cpp"
    "${ROOT}/src/gui/itemviews/qproxymodel.h"
    "${ROOT}/src/gui/itemviews/qproxymodel_p.h"
    "${ROOT}/src/gui/itemviews/qstandarditemmodel.cpp"
    "${ROOT}/src/gui/itemviews/qstandarditemmodel.h"
    "${ROOT}/src/gui/itemviews/qstandarditemmodel_p.h"
    "${ROOT}/src/gui/itemviews/qstringlistmodel.cpp"
    "${ROOT}/src/gui/itemviews/qstringlistmodel.h"
    "${ROOT}/src/gui/itemviews/qtableview.cpp"
    "${ROOT}/src/gui/itemviews/qtableview.h"
    "${ROOT}/src/gui/itemviews/qtableview_p.h"
    "${ROOT}/src/gui/itemviews/qtablewidget.cpp"
    "${ROOT}/src/gui/itemviews/qtablewidget.h"
    "${ROOT}/src/gui/itemviews/qtreeview.cpp"
    "${ROOT}/src/gui/itemviews/qtreeview.h"
    "${ROOT}/src/gui/itemviews/qtreeview_p.h"
    "${ROOT}/src/gui/itemviews/qtreewidget.cpp"
    "${ROOT}/src/gui/itemviews/qtreewidget.h"
    "${ROOT}/src/gui/itemviews/qwidgetitemdata_p.h"
    )

set(src_gui_kernel
    "${ROOT}/src/gui/kernel/qaction.cpp"
    "${ROOT}/src/gui/kernel/qaction.h"
    "${ROOT}/src/gui/kernel/qactiongroup.cpp"
    "${ROOT}/src/gui/kernel/qactiongroup.h"
    "${ROOT}/src/gui/kernel/qaction_p.h"
    "${ROOT}/src/gui/kernel/qapplication.cpp"
    "${ROOT}/src/gui/kernel/qapplication.h"
    "${ROOT}/src/gui/kernel/qapplication_mac.cpp"
    "${ROOT}/src/gui/kernel/qapplication_p.h"
    "${ROOT}/src/gui/kernel/qapplication_qws.cpp"
    "${ROOT}/src/gui/kernel/qapplication_win.cpp"
    "${ROOT}/src/gui/kernel/qapplication_x11.cpp"
    "${ROOT}/src/gui/kernel/qboxlayout.cpp"
    "${ROOT}/src/gui/kernel/qboxlayout.h"
    "${ROOT}/src/gui/kernel/qclipboard.cpp"
    "${ROOT}/src/gui/kernel/qclipboard.h"
    "${ROOT}/src/gui/kernel/qclipboard_mac.cpp"
    "${ROOT}/src/gui/kernel/qclipboard_p.h"
    "${ROOT}/src/gui/kernel/qclipboard_qws.cpp"
    "${ROOT}/src/gui/kernel/qclipboard_win.cpp"
    "${ROOT}/src/gui/kernel/qclipboard_x11.cpp"
    "${ROOT}/src/gui/kernel/qcursor.cpp"
    "${ROOT}/src/gui/kernel/qcursor.h"
    "${ROOT}/src/gui/kernel/qcursor_mac.cpp"
    "${ROOT}/src/gui/kernel/qcursor_p.h"
    "${ROOT}/src/gui/kernel/qcursor_qws.cpp"
    "${ROOT}/src/gui/kernel/qcursor_win.cpp"
    "${ROOT}/src/gui/kernel/qcursor_x11.cpp"
    "${ROOT}/src/gui/kernel/qdesktopwidget.h"
    "${ROOT}/src/gui/kernel/qdesktopwidget_mac.cpp"
    "${ROOT}/src/gui/kernel/qdesktopwidget_qws.cpp"
    "${ROOT}/src/gui/kernel/qdesktopwidget_win.cpp"
    "${ROOT}/src/gui/kernel/qdesktopwidget_x11.cpp"
    "${ROOT}/src/gui/kernel/qdnd.cpp"
    "${ROOT}/src/gui/kernel/qdnd_mac.cpp"
    "${ROOT}/src/gui/kernel/qdnd_p.h"
    "${ROOT}/src/gui/kernel/qdnd_qws.cpp"
    "${ROOT}/src/gui/kernel/qdnd_win.cpp"
    "${ROOT}/src/gui/kernel/qdnd_x11.cpp"
    "${ROOT}/src/gui/kernel/qdrag.cpp"
    "${ROOT}/src/gui/kernel/qdrag.h"
    "${ROOT}/src/gui/kernel/qevent.cpp"
    "${ROOT}/src/gui/kernel/qevent.h"
    "${ROOT}/src/gui/kernel/qeventdispatcher_mac.cpp"
    "${ROOT}/src/gui/kernel/qeventdispatcher_mac_p.h"
    "${ROOT}/src/gui/kernel/qeventdispatcher_qws.cpp"
    "${ROOT}/src/gui/kernel/qeventdispatcher_qws_p.h"
    "${ROOT}/src/gui/kernel/qeventdispatcher_x11.cpp"
    "${ROOT}/src/gui/kernel/qeventdispatcher_x11_p.h"
    "${ROOT}/src/gui/kernel/qgridlayout.cpp"
    "${ROOT}/src/gui/kernel/qgridlayout.h"
    "${ROOT}/src/gui/kernel/qguivariant.cpp"
    "${ROOT}/src/gui/kernel/qkeysequence.cpp"
    "${ROOT}/src/gui/kernel/qkeysequence.h"
    "${ROOT}/src/gui/kernel/qlayout.cpp"
    "${ROOT}/src/gui/kernel/qlayout.h"
    "${ROOT}/src/gui/kernel/qlayoutengine.cpp"
    "${ROOT}/src/gui/kernel/qlayoutengine_p.h"
    "${ROOT}/src/gui/kernel/qlayoutitem.cpp"
    "${ROOT}/src/gui/kernel/qlayoutitem.h"
    "${ROOT}/src/gui/kernel/qlayout_p.h"
    "${ROOT}/src/gui/kernel/qmime.cpp"
    "${ROOT}/src/gui/kernel/qmime.h"
    "${ROOT}/src/gui/kernel/qmime_mac.cpp"
    "${ROOT}/src/gui/kernel/qmime_win.cpp"
    "${ROOT}/src/gui/kernel/qmotifdnd_x11.cpp"
    "${ROOT}/src/gui/kernel/qole_win.c"
    "${ROOT}/src/gui/kernel/qpalette.cpp"
    "${ROOT}/src/gui/kernel/qpalette.h"
    "${ROOT}/src/gui/kernel/qsessionmanager.h"
    "${ROOT}/src/gui/kernel/qshortcut.cpp"
    "${ROOT}/src/gui/kernel/qshortcut.h"
    "${ROOT}/src/gui/kernel/qshortcutmap.cpp"
    "${ROOT}/src/gui/kernel/qshortcutmap_p.h"
    "${ROOT}/src/gui/kernel/qsizepolicy.h"
    "${ROOT}/src/gui/kernel/qsound.cpp"
    "${ROOT}/src/gui/kernel/qsound.h"
    "${ROOT}/src/gui/kernel/qsound_mac.cpp"
    "${ROOT}/src/gui/kernel/qsound_p.h"
    "${ROOT}/src/gui/kernel/qsound_qws.cpp"
    "${ROOT}/src/gui/kernel/qsound_win.cpp"
    "${ROOT}/src/gui/kernel/qsound_x11.cpp"
    "${ROOT}/src/gui/kernel/qstackedlayout.cpp"
    "${ROOT}/src/gui/kernel/qstackedlayout.h"
    "${ROOT}/src/gui/kernel/qtooltip.cpp"
    "${ROOT}/src/gui/kernel/qtooltip.h"
    "${ROOT}/src/gui/kernel/qt_gui_pch.h"
    "${ROOT}/src/gui/kernel/qt_mac_p.h"
    "${ROOT}/src/gui/kernel/qt_x11_p.h"
    "${ROOT}/src/gui/kernel/qwhatsthis.cpp"
    "${ROOT}/src/gui/kernel/qwhatsthis.h"
    "${ROOT}/src/gui/kernel/qwidget.cpp"
    "${ROOT}/src/gui/kernel/qwidget.h"
    "${ROOT}/src/gui/kernel/qwidgetcreate_x11.cpp"
    "${ROOT}/src/gui/kernel/qwidget_mac.cpp"
    "${ROOT}/src/gui/kernel/qwidget_p.h"
    "${ROOT}/src/gui/kernel/qwidget_qws.cpp"
    "${ROOT}/src/gui/kernel/qwidget_qws_p.h"
    "${ROOT}/src/gui/kernel/qwidget_win.cpp"
    "${ROOT}/src/gui/kernel/qwidget_x11.cpp"
    "${ROOT}/src/gui/kernel/qwindowdefs.h"
    "${ROOT}/src/gui/kernel/qwindowdefs_win.h"
    "${ROOT}/src/gui/kernel/qx11embed_x11.cpp"
    "${ROOT}/src/gui/kernel/qx11embed_x11.h"
    "${ROOT}/src/gui/kernel/qx11info_x11.cpp"
    "${ROOT}/src/gui/kernel/qx11info_x11.h"
    )

set(src_gui_painting
    "${ROOT}/src/gui/painting/qbezier.cpp"
    "${ROOT}/src/gui/painting/qbezier_p.h"
    "${ROOT}/src/gui/painting/qblackraster.c"
    "${ROOT}/src/gui/painting/qblackraster_p.h"
    "${ROOT}/src/gui/painting/qbrush.cpp"
    "${ROOT}/src/gui/painting/qbrush.h"
    "${ROOT}/src/gui/painting/qcolor.cpp"
    "${ROOT}/src/gui/painting/qcolor.h"
    "${ROOT}/src/gui/painting/qcolormap.h"
    "${ROOT}/src/gui/painting/qcolormap_mac.cpp"
    "${ROOT}/src/gui/painting/qcolormap_qws.cpp"
    "${ROOT}/src/gui/painting/qcolormap_win.cpp"
    "${ROOT}/src/gui/painting/qcolormap_x11.cpp"
    "${ROOT}/src/gui/painting/qcolor_p.cpp"
    "${ROOT}/src/gui/painting/qcolor_p.h"
    "${ROOT}/src/gui/painting/qdatabuffer_p.h"
    "${ROOT}/src/gui/painting/qdrawhelper.cpp"
    "${ROOT}/src/gui/painting/qdrawhelper_p.h"
    "${ROOT}/src/gui/painting/qdrawhelper_x86.cpp"
    "${ROOT}/src/gui/painting/qdrawutil.cpp"
    "${ROOT}/src/gui/painting/qdrawutil.h"
    "${ROOT}/src/gui/painting/qgrayraster.c"
    "${ROOT}/src/gui/painting/qgrayraster_p.h"
    "${ROOT}/src/gui/painting/qmath_p.h"
    "${ROOT}/src/gui/painting/qmatrix.cpp"
    "${ROOT}/src/gui/painting/qmatrix.h"
    "${ROOT}/src/gui/painting/qpaintdevice.h"
    "${ROOT}/src/gui/painting/qpaintdevice_mac.cpp"
    "${ROOT}/src/gui/painting/qpaintdevice_qws.cpp"
    "${ROOT}/src/gui/painting/qpaintdevice_win.cpp"
    "${ROOT}/src/gui/painting/qpaintdevice_x11.cpp"
    "${ROOT}/src/gui/painting/qpaintengine.cpp"
    "${ROOT}/src/gui/painting/qpaintengine.h"
    "${ROOT}/src/gui/painting/qpaintengine_mac.cpp"
    "${ROOT}/src/gui/painting/qpaintengine_mac_p.h"
    "${ROOT}/src/gui/painting/qpaintengine_p.h"
    "${ROOT}/src/gui/painting/qpaintengine_raster.cpp"
    "${ROOT}/src/gui/painting/qpaintengine_raster_p.h"
    "${ROOT}/src/gui/painting/qpaintengine_x11.cpp"
    "${ROOT}/src/gui/painting/qpaintengine_x11_p.h"
    "${ROOT}/src/gui/painting/qpainter.cpp"
    "${ROOT}/src/gui/painting/qpainter.h"
    "${ROOT}/src/gui/painting/qpainterpath.cpp"
    "${ROOT}/src/gui/painting/qpainterpath.h"
    "${ROOT}/src/gui/painting/qpainterpath_p.h"
    "${ROOT}/src/gui/painting/qpainter_p.h"
    "${ROOT}/src/gui/painting/qpen.cpp"
    "${ROOT}/src/gui/painting/qpen.h"
    "${ROOT}/src/gui/painting/qpolygon.cpp"
    "${ROOT}/src/gui/painting/qpolygon.h"
    "${ROOT}/src/gui/painting/qpolygonclipper_p.h"
    "${ROOT}/src/gui/painting/qprintengine.h"
    "${ROOT}/src/gui/painting/qprintengine_mac.cpp"
    "${ROOT}/src/gui/painting/qprintengine_mac_p.h"
    "${ROOT}/src/gui/painting/qprintengine_ps.cpp"
    "${ROOT}/src/gui/painting/qprintengine_ps_p.h"
    "${ROOT}/src/gui/painting/qprintengine_win.cpp"
    "${ROOT}/src/gui/painting/qprintengine_win_p.h"
    "${ROOT}/src/gui/painting/qprinter.cpp"
    "${ROOT}/src/gui/painting/qprinter.h"
    "${ROOT}/src/gui/painting/qprinter_p.h"
    "${ROOT}/src/gui/painting/qrasterdefs_p.h"
    "${ROOT}/src/gui/painting/qregion.cpp"
    "${ROOT}/src/gui/painting/qregion.h"
    "${ROOT}/src/gui/painting/qregion_mac.cpp"
    "${ROOT}/src/gui/painting/qregion_unix.cpp"
    "${ROOT}/src/gui/painting/qregion_win.cpp"
    "${ROOT}/src/gui/painting/qregion_x11.cpp"
    "${ROOT}/src/gui/painting/qrgb.h"
    "${ROOT}/src/gui/painting/qstroker.cpp"
    "${ROOT}/src/gui/painting/qstroker_p.h"
    "${ROOT}/src/gui/painting/qstylepainter.cpp"
    "${ROOT}/src/gui/painting/qstylepainter.h"
    "${ROOT}/src/gui/painting/qwmatrix.h"
    )

set(src_gui_styles
    "${ROOT}/src/gui/styles/qcdestyle.cpp"
    "${ROOT}/src/gui/styles/qcdestyle.h"
    "${ROOT}/src/gui/styles/qcommonstyle.cpp"
    "${ROOT}/src/gui/styles/qcommonstyle.h"
    "${ROOT}/src/gui/styles/qcommonstylepixmaps_p.h"
    "${ROOT}/src/gui/styles/qmacstylepixmaps_mac_p.h"
    "${ROOT}/src/gui/styles/qmacstyle_mac.cpp"
    "${ROOT}/src/gui/styles/qmacstyle_mac.h"
    "${ROOT}/src/gui/styles/qmotifstyle.cpp"
    "${ROOT}/src/gui/styles/qmotifstyle.h"
    "${ROOT}/src/gui/styles/qplastiquestyle.cpp"
    "${ROOT}/src/gui/styles/qplastiquestyle.h"
    "${ROOT}/src/gui/styles/qstyle.cpp"
    "${ROOT}/src/gui/styles/qstyle.h"
    "${ROOT}/src/gui/styles/qstyle.qrc"
    "${ROOT}/src/gui/styles/qstylefactory.cpp"
    "${ROOT}/src/gui/styles/qstylefactory.h"
    "${ROOT}/src/gui/styles/qstyleoption.cpp"
    "${ROOT}/src/gui/styles/qstyleoption.h"
    "${ROOT}/src/gui/styles/qstyleplugin.cpp"
    "${ROOT}/src/gui/styles/qstyleplugin.h"
    "${ROOT}/src/gui/styles/qwindowsstyle.cpp"
    "${ROOT}/src/gui/styles/qwindowsstyle.h"
    "${ROOT}/src/gui/styles/qwindowsxpstyle.cpp"
    "${ROOT}/src/gui/styles/qwindowsxpstyle.h"
    )

set(src_gui_text
    "${ROOT}/src/gui/text/qabstracttextdocumentlayout.cpp"
    "${ROOT}/src/gui/text/qabstracttextdocumentlayout.h"
    "${ROOT}/src/gui/text/qabstracttextdocumentlayout_p.h"
    "${ROOT}/src/gui/text/qfont.cpp"
    "${ROOT}/src/gui/text/qfont.h"
    "${ROOT}/src/gui/text/qfontdatabase.cpp"
    "${ROOT}/src/gui/text/qfontdatabase.h"
    "${ROOT}/src/gui/text/qfontdatabase_mac.cpp"
    "${ROOT}/src/gui/text/qfontdatabase_qws.cpp"
    "${ROOT}/src/gui/text/qfontdatabase_win.cpp"
    "${ROOT}/src/gui/text/qfontdatabase_x11.cpp"
    "${ROOT}/src/gui/text/qfontengine.cpp"
    "${ROOT}/src/gui/text/qfontengine_mac.cpp"
    "${ROOT}/src/gui/text/qfontengine_p.h"
    "${ROOT}/src/gui/text/qfontengine_qws.cpp"
    "${ROOT}/src/gui/text/qfontengine_win.cpp"
    "${ROOT}/src/gui/text/qfontengine_win_p.h"
    "${ROOT}/src/gui/text/qfontengine_x11.cpp"
    "${ROOT}/src/gui/text/qfontengine_x11_p.h"
    "${ROOT}/src/gui/text/qfontinfo.h"
    "${ROOT}/src/gui/text/qfontmetrics.cpp"
    "${ROOT}/src/gui/text/qfontmetrics.h"
    "${ROOT}/src/gui/text/qfont_mac.cpp"
    "${ROOT}/src/gui/text/qfont_p.h"
    "${ROOT}/src/gui/text/qfont_qws.cpp"
    "${ROOT}/src/gui/text/qfont_win.cpp"
    "${ROOT}/src/gui/text/qfont_x11.cpp"
    "${ROOT}/src/gui/text/qfragmentmap.cpp"
    "${ROOT}/src/gui/text/qfragmentmap_p.h"
    "${ROOT}/src/gui/text/qopentype.cpp"
    "${ROOT}/src/gui/text/qopentype_p.h"
    "${ROOT}/src/gui/text/qscriptengine.cpp"
    "${ROOT}/src/gui/text/qscriptengine_mac.cpp"
    "${ROOT}/src/gui/text/qscriptengine_p.h"
    "${ROOT}/src/gui/text/qscriptengine_unix.cpp"
    "${ROOT}/src/gui/text/qscriptengine_win.cpp"
    "${ROOT}/src/gui/text/qtextcursor.cpp"
    "${ROOT}/src/gui/text/qtextcursor.h"
    "${ROOT}/src/gui/text/qtextcursor_p.h"
    "${ROOT}/src/gui/text/qtextdocument.cpp"
    "${ROOT}/src/gui/text/qtextdocument.h"
    "${ROOT}/src/gui/text/qtextdocumentfragment.cpp"
    "${ROOT}/src/gui/text/qtextdocumentfragment.h"
    "${ROOT}/src/gui/text/qtextdocumentfragment_p.h"
    "${ROOT}/src/gui/text/qtextdocumentlayout.cpp"
    "${ROOT}/src/gui/text/qtextdocumentlayout_p.h"
    "${ROOT}/src/gui/text/qtextdocument_p.cpp"
    "${ROOT}/src/gui/text/qtextdocument_p.h"
    "${ROOT}/src/gui/text/qtextengine.cpp"
    "${ROOT}/src/gui/text/qtextengine_mac.cpp"
    "${ROOT}/src/gui/text/qtextengine_p.h"
    "${ROOT}/src/gui/text/qtextengine_unix.cpp"
    "${ROOT}/src/gui/text/qtextengine_win.cpp"
    "${ROOT}/src/gui/text/qtextformat.cpp"
    "${ROOT}/src/gui/text/qtextformat.h"
    "${ROOT}/src/gui/text/qtextformat_p.h"
    "${ROOT}/src/gui/text/qtexthtmlparser.cpp"
    "${ROOT}/src/gui/text/qtexthtmlparser_p.h"
    "${ROOT}/src/gui/text/qtextimagehandler.cpp"
    "${ROOT}/src/gui/text/qtextimagehandler_p.h"
    "${ROOT}/src/gui/text/qtextlayout.cpp"
    "${ROOT}/src/gui/text/qtextlayout.h"
    "${ROOT}/src/gui/text/qtextlist.cpp"
    "${ROOT}/src/gui/text/qtextlist.h"
    "${ROOT}/src/gui/text/qtextobject.cpp"
    "${ROOT}/src/gui/text/qtextobject.h"
    "${ROOT}/src/gui/text/qtextobject_p.h"
    "${ROOT}/src/gui/text/qtextoption.cpp"
    "${ROOT}/src/gui/text/qtextoption.h"
    "${ROOT}/src/gui/text/qtexttable.cpp"
    "${ROOT}/src/gui/text/qtexttable.h"
    "${ROOT}/src/gui/text/qtexttable_p.h"
    )

set(src_gui_widgets
    "${ROOT}/src/gui/widgets/qabstractbutton.cpp"
    "${ROOT}/src/gui/widgets/qabstractbutton.h"
    "${ROOT}/src/gui/widgets/qabstractbutton_p.h"
    "${ROOT}/src/gui/widgets/qabstractscrollarea.cpp"
    "${ROOT}/src/gui/widgets/qabstractscrollarea.h"
    "${ROOT}/src/gui/widgets/qabstractscrollarea_p.h"
    "${ROOT}/src/gui/widgets/qabstractslider.cpp"
    "${ROOT}/src/gui/widgets/qabstractslider.h"
    "${ROOT}/src/gui/widgets/qabstractslider_p.h"
    "${ROOT}/src/gui/widgets/qabstractspinbox.cpp"
    "${ROOT}/src/gui/widgets/qabstractspinbox.h"
    "${ROOT}/src/gui/widgets/qabstractspinbox_p.h"
    "${ROOT}/src/gui/widgets/qbuttongroup.cpp"
    "${ROOT}/src/gui/widgets/qbuttongroup.h"
    "${ROOT}/src/gui/widgets/qcheckbox.cpp"
    "${ROOT}/src/gui/widgets/qcheckbox.h"
    "${ROOT}/src/gui/widgets/qcombobox.cpp"
    "${ROOT}/src/gui/widgets/qcombobox.h"
    "${ROOT}/src/gui/widgets/qcombobox_p.h"
    "${ROOT}/src/gui/widgets/qdatetimeedit.cpp"
    "${ROOT}/src/gui/widgets/qdatetimeedit.h"
    "${ROOT}/src/gui/widgets/qdial.cpp"
    "${ROOT}/src/gui/widgets/qdial.h"
    "${ROOT}/src/gui/widgets/qdialogbuttons.cpp"
    "${ROOT}/src/gui/widgets/qdialogbuttons_p.h"
    "${ROOT}/src/gui/widgets/qdockseparator.cpp"
    "${ROOT}/src/gui/widgets/qdockseparator_p.h"
    "${ROOT}/src/gui/widgets/qdockwidget.cpp"
    "${ROOT}/src/gui/widgets/qdockwidget.h"
    "${ROOT}/src/gui/widgets/qdockwidgetlayout.cpp"
    "${ROOT}/src/gui/widgets/qdockwidgetlayout_p.h"
    "${ROOT}/src/gui/widgets/qdockwidgetseparator.cpp"
    "${ROOT}/src/gui/widgets/qdockwidgetseparator_p.h"
    "${ROOT}/src/gui/widgets/qdockwidget_p.h"
    "${ROOT}/src/gui/widgets/qeffects.cpp"
    "${ROOT}/src/gui/widgets/qeffects_p.h"
    "${ROOT}/src/gui/widgets/qfocusframe.cpp"
    "${ROOT}/src/gui/widgets/qfocusframe.h"
    "${ROOT}/src/gui/widgets/qframe.cpp"
    "${ROOT}/src/gui/widgets/qframe.h"
    "${ROOT}/src/gui/widgets/qframe_p.h"
    "${ROOT}/src/gui/widgets/qgroupbox.cpp"
    "${ROOT}/src/gui/widgets/qgroupbox.h"
    "${ROOT}/src/gui/widgets/qlabel.cpp"
    "${ROOT}/src/gui/widgets/qlabel.h"
    "${ROOT}/src/gui/widgets/qlcdnumber.cpp"
    "${ROOT}/src/gui/widgets/qlcdnumber.h"
    "${ROOT}/src/gui/widgets/qlineedit.cpp"
    "${ROOT}/src/gui/widgets/qlineedit.h"
    "${ROOT}/src/gui/widgets/qlineedit_p.h"
    "${ROOT}/src/gui/widgets/qmainwindow.cpp"
    "${ROOT}/src/gui/widgets/qmainwindow.h"
    "${ROOT}/src/gui/widgets/qmainwindowlayout.cpp"
    "${ROOT}/src/gui/widgets/qmainwindowlayout_p.h"
    "${ROOT}/src/gui/widgets/qmenu.cpp"
    "${ROOT}/src/gui/widgets/qmenu.h"
    "${ROOT}/src/gui/widgets/qmenubar.cpp"
    "${ROOT}/src/gui/widgets/qmenubar.h"
    "${ROOT}/src/gui/widgets/qmenubar_p.h"
    "${ROOT}/src/gui/widgets/qmenudata.cpp"
    "${ROOT}/src/gui/widgets/qmenudata.h"
    "${ROOT}/src/gui/widgets/qmenu_mac.cpp"
    "${ROOT}/src/gui/widgets/qmenu_p.h"
    "${ROOT}/src/gui/widgets/qprogressbar.cpp"
    "${ROOT}/src/gui/widgets/qprogressbar.h"
    "${ROOT}/src/gui/widgets/qpushbutton.cpp"
    "${ROOT}/src/gui/widgets/qpushbutton.h"
    "${ROOT}/src/gui/widgets/qradiobutton.cpp"
    "${ROOT}/src/gui/widgets/qradiobutton.h"
    "${ROOT}/src/gui/widgets/qrubberband.cpp"
    "${ROOT}/src/gui/widgets/qrubberband.h"
    "${ROOT}/src/gui/widgets/qscrollarea.cpp"
    "${ROOT}/src/gui/widgets/qscrollarea.h"
    "${ROOT}/src/gui/widgets/qscrollbar.cpp"
    "${ROOT}/src/gui/widgets/qscrollbar.h"
    "${ROOT}/src/gui/widgets/qsizegrip.cpp"
    "${ROOT}/src/gui/widgets/qsizegrip.h"
    "${ROOT}/src/gui/widgets/qslider.cpp"
    "${ROOT}/src/gui/widgets/qslider.h"
    "${ROOT}/src/gui/widgets/qspinbox.cpp"
    "${ROOT}/src/gui/widgets/qspinbox.h"
    "${ROOT}/src/gui/widgets/qsplashscreen.cpp"
    "${ROOT}/src/gui/widgets/qsplashscreen.h"
    "${ROOT}/src/gui/widgets/qsplitter.cpp"
    "${ROOT}/src/gui/widgets/qsplitter.h"
    "${ROOT}/src/gui/widgets/qstackedwidget.cpp"
    "${ROOT}/src/gui/widgets/qstackedwidget.h"
    "${ROOT}/src/gui/widgets/qstatusbar.cpp"
    "${ROOT}/src/gui/widgets/qstatusbar.h"
    "${ROOT}/src/gui/widgets/qtabbar.cpp"
    "${ROOT}/src/gui/widgets/qtabbar.h"
    "${ROOT}/src/gui/widgets/qtabwidget.cpp"
    "${ROOT}/src/gui/widgets/qtabwidget.h"
    "${ROOT}/src/gui/widgets/qtextbrowser.cpp"
    "${ROOT}/src/gui/widgets/qtextbrowser.h"
    "${ROOT}/src/gui/widgets/qtextedit.cpp"
    "${ROOT}/src/gui/widgets/qtextedit.h"
    "${ROOT}/src/gui/widgets/qtextedit_p.h"
    "${ROOT}/src/gui/widgets/qtoolbar.cpp"
    "${ROOT}/src/gui/widgets/qtoolbar.h"
    "${ROOT}/src/gui/widgets/qtoolbarextension.cpp"
    "${ROOT}/src/gui/widgets/qtoolbarextension_p.h"
    "${ROOT}/src/gui/widgets/qtoolbarhandle.cpp"
    "${ROOT}/src/gui/widgets/qtoolbarhandle_p.h"
    "${ROOT}/src/gui/widgets/qtoolbarseparator.cpp"
    "${ROOT}/src/gui/widgets/qtoolbarseparator_p.h"
    "${ROOT}/src/gui/widgets/qtoolbar_p.h"
    "${ROOT}/src/gui/widgets/qtoolbox.cpp"
    "${ROOT}/src/gui/widgets/qtoolbox.h"
    "${ROOT}/src/gui/widgets/qtoolbutton.cpp"
    "${ROOT}/src/gui/widgets/qtoolbutton.h"
    "${ROOT}/src/gui/widgets/qvalidator.cpp"
    "${ROOT}/src/gui/widgets/qvalidator.h"
    "${ROOT}/src/gui/widgets/qwidgetresizehandler.cpp"
    "${ROOT}/src/gui/widgets/qwidgetresizehandler_p.h"
    "${ROOT}/src/gui/widgets/qworkspace.cpp"
    "${ROOT}/src/gui/widgets/qworkspace.h"
    )

source_group("Source Files\\Qt\\gui\\dialogs" FILES ${src_gui_dialogs})
source_group("Source Files\\Qt\\gui\\image" FILES ${src_gui_image})
source_group("Source Files\\Qt\\gui\\inputmethod" FILES ${src_gui_inputmethod})
source_group("Source Files\\Qt\\gui\\itemviews" FILES ${src_gui_itemviews})
source_group("Source Files\\Qt\\gui\\kernel" FILES ${src_gui_kernel})
source_group("Source Files\\Qt\\gui\\painting" FILES ${src_gui_painting})
source_group("Source Files\\Qt\\gui\\styles" FILES ${src_gui_styles})
source_group("Source Files\\Qt\\gui\\text" FILES ${src_gui_text})
source_group("Source Files\\Qt\\gui\\widgets" FILES ${src_gui_widgets})

set_source_files_properties(
    "${ROOT}/src/gui/painting/qdrawhelper_x86.cpp"
    "${ROOT}/src/gui/painting/qregion_mac.cpp"
    "${ROOT}/src/gui/painting/qregion_x11.cpp"
    "${ROOT}/src/gui/text/qfontdatabase_mac.cpp"
    "${ROOT}/src/gui/text/qfontdatabase_qws.cpp"
    "${ROOT}/src/gui/text/qfontdatabase_win.cpp"
    "${ROOT}/src/gui/text/qfontdatabase_x11.cpp"
    "${ROOT}/src/gui/text/qscriptengine_mac.cpp"
    "${ROOT}/src/gui/text/qscriptengine_unix.cpp"
    "${ROOT}/src/gui/text/qscriptengine_win.cpp"
    "${ROOT}/src/gui/text/qtextengine_mac.cpp"
    "${ROOT}/src/gui/text/qtextengine_p.h"
    "${ROOT}/src/gui/text/qtextengine_unix.cpp"
    "${ROOT}/src/gui/text/qtextengine_win.cpp"
    PROPERTIES HEADER_FILE_ONLY TRUE
    )

if(WIN32)
    set_source_files_properties(
        "${ROOT}/src/gui/painting/qregion_unix.cpp"
        PROPERTIES HEADER_FILE_ONLY TRUE
        )
else()
    set_source_files_properties(
        "${ROOT}/src/gui/kernel/qole_win.c"
        "${ROOT}/src/gui/painting/qregion_win.cpp"
        PROPERTIES HEADER_FILE_ONLY TRUE
        )
endif()

if(QWS)
    set(skip_platforms mac win x11)
    set_source_files_properties(
        "${ROOT}/src/gui/image/qpixmap.cpp"
        "${ROOT}/src/gui/inputmethod/qmacinputcontext_mac.cpp"
        "${ROOT}/src/gui/inputmethod/qwininputcontext_win.cpp"
        "${ROOT}/src/gui/inputmethod/qximinputcontext_x11.cpp"
        "${ROOT}/src/gui/styles/qmacstyle_mac.cpp"
        "${ROOT}/src/gui/dialogs/qcolordialog_mac.cpp"
        PROPERTIES HEADER_FILE_ONLY TRUE
        )
elseif(WIN32)
    set(skip_platforms qws mac x11)
    set_source_files_properties(
        "${ROOT}/src/gui/image/qpixmap.cpp"
        "${ROOT}/src/gui/inputmethod/qmacinputcontext_mac.cpp"
        "${ROOT}/src/gui/inputmethod/qwsinputcontext_qws.cpp"
        "${ROOT}/src/gui/inputmethod/qximinputcontext_x11.cpp"
        "${ROOT}/src/gui/styles/qmacstyle_mac.cpp"
        "${ROOT}/src/gui/dialogs/qcolordialog_mac.cpp"
        PROPERTIES HEADER_FILE_ONLY TRUE
        )
elseif(APPLE)
    set(skip_platforms qws win x11)
    set_source_files_properties(
        "${ROOT}/src/gui/image/qpixmap_raster.cpp"
        "${ROOT}/src/gui/inputmethod/qwininputcontext_win.cpp"
        "${ROOT}/src/gui/inputmethod/qwsinputcontext_qws.cpp"
        "${ROOT}/src/gui/inputmethod/qximinputcontext_x11.cpp"
        PROPERTIES HEADER_FILE_ONLY TRUE
        )
elseif(X11)
    set(skip_platforms qws win mac)
    set_source_files_properties(
        "${ROOT}/src/gui/image/qpixmap_raster.cpp"
        "${ROOT}/src/gui/inputmethod/qmacinputcontext_mac.cpp"
        "${ROOT}/src/gui/inputmethod/qwininputcontext_win.cpp"
        "${ROOT}/src/gui/inputmethod/qwsinputcontext_qws.cpp"
        "${ROOT}/src/gui/styles/qmacstyle_mac.cpp"
        "${ROOT}/src/gui/dialogs/qcolordialog_mac.cpp"
        PROPERTIES HEADER_FILE_ONLY TRUE
        )
endif()
foreach(suffix ${skip_platforms})
    set_source_files_properties(
        "${ROOT}/src/gui/dialogs/qfiledialog_${suffix}.cpp"
        "${ROOT}/src/gui/dialogs/qpagesetupdialog_${suffix}.cpp"
        "${ROOT}/src/gui/dialogs/qprintdialog_${suffix}.cpp"
        "${ROOT}/src/gui/image/qpixmap_${suffix}.cpp"
        "${ROOT}/src/gui/kernel/qapplication_${suffix}.cpp"
        "${ROOT}/src/gui/kernel/qclipboard_${suffix}.cpp"
        "${ROOT}/src/gui/kernel/qcursor_${suffix}.cpp"
        "${ROOT}/src/gui/kernel/qdesktopwidget_${suffix}.cpp"
        "${ROOT}/src/gui/kernel/qdnd_${suffix}.cpp"
        "${ROOT}/src/gui/kernel/qeventdispatcher_${suffix}.cpp"
        "${ROOT}/src/gui/kernel/qmime_${suffix}.cpp"
        "${ROOT}/src/gui/kernel/qmotifdnd_${suffix}.cpp"
        "${ROOT}/src/gui/kernel/qole_${suffix}.cpp"
        "${ROOT}/src/gui/kernel/qsound_${suffix}.cpp"
        "${ROOT}/src/gui/kernel/qwidgetcreate_${suffix}.cpp"
        "${ROOT}/src/gui/kernel/qwidget_${suffix}.cpp"
        "${ROOT}/src/gui/kernel/qx11embed_${suffix}.cpp"
        "${ROOT}/src/gui/kernel/qx11info_${suffix}.cpp"
        "${ROOT}/src/gui/painting/qcolormap_${suffix}.cpp"
        "${ROOT}/src/gui/painting/qpaintdevice_${suffix}.cpp"
        "${ROOT}/src/gui/painting/qpaintengine_${suffix}.cpp"
        "${ROOT}/src/gui/painting/qprintengine_${suffix}.cpp"
        "${ROOT}/src/gui/text/qfontengine_${suffix}.cpp"
        "${ROOT}/src/gui/text/qfont_${suffix}.cpp"
        "${ROOT}/src/gui/widgets/qmenu_${suffix}.cpp"
        PROPERTIES HEADER_FILE_ONLY TRUE
        )
endforeach()

set(src_gui
    ${src_gui_dialogs}
    ${src_gui_image}
    ${src_gui_inputmethod}
    ${src_gui_itemviews}
    ${src_gui_kernel}
    ${src_gui_painting}
    ${src_gui_styles}
    ${src_gui_text}
    ${src_gui_widgets}
    )
