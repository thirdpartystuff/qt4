
moc("${ROOT}/src/corelib/global/qnamespace.h")
moc("${ROOT}/src/corelib/io/qfile.h")
moc("${ROOT}/src/corelib/io/qiodevice.h")
moc("${ROOT}/src/corelib/io/qsettings.h")
moc("${ROOT}/src/corelib/io/qtemporaryfile.h")
moc("${ROOT}/src/corelib/kernel/qabstracteventdispatcher.h")
moc("${ROOT}/src/corelib/kernel/qabstractitemmodel.h")
moc("${ROOT}/src/corelib/kernel/qcoreapplication.h")
moc("${ROOT}/src/corelib/kernel/qeventloop.h")
moc("${ROOT}/src/corelib/kernel/qmimedata.h")
moc("${ROOT}/src/corelib/kernel/qobjectcleanuphandler.h")
moc("${ROOT}/src/corelib/kernel/qsocketnotifier.h")
moc("${ROOT}/src/corelib/kernel/qtimer.h")
moc("${ROOT}/src/corelib/plugin/qfactoryloader_p.h")
moc("${ROOT}/src/corelib/plugin/qlibrary.h")
moc("${ROOT}/src/corelib/plugin/qpluginloader.h")
moc("${ROOT}/src/corelib/thread/qthread.h")

if(WIN32)
    moc("${ROOT}/src/corelib/kernel/qeventdispatcher_win_p.h")
    moc("${ROOT}/src/corelib/kernel/qwineventnotifier_p.h")
elseif(UNIX)
    moc("${ROOT}/src/corelib/kernel/qeventdispatcher_unix_p.h")
endif()

moc2("moc_qbuffer.cpp" "${ROOT}/src/corelib/io/qbuffer.h")
moc2("moc_qprocess.cpp" "${ROOT}/src/corelib/io/qprocess.h")
moc2("qtextstream.moc" "${ROOT}/src/corelib/io/qtextstream.cpp")
moc2("moc_qobject.cpp" "${ROOT}/src/corelib/kernel/qobject.h")
moc2("qtimer.moc" "${ROOT}/src/corelib/kernel/qtimer.cpp")

if(WIN32)
    moc2("qprocess_win.moc" "${ROOT}/src/corelib/io/qprocess_win.cpp")
else()
    moc2("qprocess_unix.moc" "${ROOT}/src/corelib/io/qprocess_unix.cpp")
endif()

set(src_corelib_codecs
    "${ROOT}/src/corelib/codecs/qfontlaocodec.cpp"
    "${ROOT}/src/corelib/codecs/qfontlaocodec_p.h"
    "${ROOT}/src/corelib/codecs/qisciicodec.cpp"
    "${ROOT}/src/corelib/codecs/qisciicodec_p.h"
    "${ROOT}/src/corelib/codecs/qlatincodec.cpp"
    "${ROOT}/src/corelib/codecs/qlatincodec_p.h"
    "${ROOT}/src/corelib/codecs/qsimplecodec.cpp"
    "${ROOT}/src/corelib/codecs/qsimplecodec_p.h"
    "${ROOT}/src/corelib/codecs/qtextcodec.cpp"
    "${ROOT}/src/corelib/codecs/qtextcodec.h"
    "${ROOT}/src/corelib/codecs/qtextcodecplugin.cpp"
    "${ROOT}/src/corelib/codecs/qtextcodecplugin.h"
    "${ROOT}/src/corelib/codecs/qtsciicodec.cpp"
    "${ROOT}/src/corelib/codecs/qtsciicodec_p.h"
    "${ROOT}/src/corelib/codecs/qutfcodec.cpp"
    "${ROOT}/src/corelib/codecs/qutfcodec_p.h"
    )

set(src_corelib_global
    "${ROOT}/src/corelib/global/qfeatures.h"
    "${ROOT}/src/corelib/global/qglobal.cpp"
    "${ROOT}/src/corelib/global/qglobal.h"
    "${ROOT}/src/corelib/global/qlibraryinfo.cpp"
    "${ROOT}/src/corelib/global/qlibraryinfo.h"
    "${ROOT}/src/corelib/global/qnamespace.h"
    "${ROOT}/src/corelib/global/qnumeric_p.h"
    "${ROOT}/src/corelib/global/qt_pch.h"
    "${ROOT}/src/corelib/global/qt_windows.h"
    )

set(src_corelib_io
    "${ROOT}/src/corelib/io/qbuffer.cpp"
    "${ROOT}/src/corelib/io/qbuffer.h"
    "${ROOT}/src/corelib/io/qbufferedfsfileengine.cpp"
    "${ROOT}/src/corelib/io/qbufferedfsfileengine_p.h"
    "${ROOT}/src/corelib/io/qdatastream.cpp"
    "${ROOT}/src/corelib/io/qdatastream.h"
    "${ROOT}/src/corelib/io/qdebug.cpp"
    "${ROOT}/src/corelib/io/qdebug.h"
    "${ROOT}/src/corelib/io/qdir.cpp"
    "${ROOT}/src/corelib/io/qdir.h"
    "${ROOT}/src/corelib/io/qfile.cpp"
    "${ROOT}/src/corelib/io/qfile.h"
    "${ROOT}/src/corelib/io/qfile_p.h"
    "${ROOT}/src/corelib/io/qfileengine.cpp"
    "${ROOT}/src/corelib/io/qfileengine.h"
    "${ROOT}/src/corelib/io/qfileengine_p.h"
    "${ROOT}/src/corelib/io/qfileinfo.cpp"
    "${ROOT}/src/corelib/io/qfileinfo.h"
    "${ROOT}/src/corelib/io/qfileinfoengine_p.h"
    "${ROOT}/src/corelib/io/qfsfileengine.cpp"
    "${ROOT}/src/corelib/io/qfsfileengine_p.h"
    "${ROOT}/src/corelib/io/qfsfileengine_unix.cpp"
    "${ROOT}/src/corelib/io/qfsfileengine_win.cpp"
    "${ROOT}/src/corelib/io/qiodevice.cpp"
    "${ROOT}/src/corelib/io/qiodevice.h"
    "${ROOT}/src/corelib/io/qiodevice_p.h"
    "${ROOT}/src/corelib/io/qprocess.cpp"
    "${ROOT}/src/corelib/io/qprocess.h"
    "${ROOT}/src/corelib/io/qprocess_p.h"
    "${ROOT}/src/corelib/io/qprocess_unix.cpp"
    "${ROOT}/src/corelib/io/qprocess_win.cpp"
    "${ROOT}/src/corelib/io/qresource.cpp"
    "${ROOT}/src/corelib/io/qresource_p.h"
    "${ROOT}/src/corelib/io/qsettings.cpp"
    "${ROOT}/src/corelib/io/qsettings.h"
    "${ROOT}/src/corelib/io/qsettings_mac.cpp"
    "${ROOT}/src/corelib/io/qsettings_p.h"
    "${ROOT}/src/corelib/io/qsettings_win.cpp"
    "${ROOT}/src/corelib/io/qtemporaryfile.cpp"
    "${ROOT}/src/corelib/io/qtemporaryfile.h"
    "${ROOT}/src/corelib/io/qtextstream.cpp"
    "${ROOT}/src/corelib/io/qtextstream.h"
    "${ROOT}/src/corelib/io/qurl.cpp"
    "${ROOT}/src/corelib/io/qurl.h"
    )

set(src_corelib_kernel
    "${ROOT}/src/corelib/kernel/qabstracteventdispatcher.cpp"
    "${ROOT}/src/corelib/kernel/qabstracteventdispatcher.h"
    "${ROOT}/src/corelib/kernel/qabstracteventdispatcher_p.h"
    "${ROOT}/src/corelib/kernel/qabstractitemmodel.cpp"
    "${ROOT}/src/corelib/kernel/qabstractitemmodel.h"
    "${ROOT}/src/corelib/kernel/qabstractitemmodel_p.h"
    "${ROOT}/src/corelib/kernel/qbasictimer.cpp"
    "${ROOT}/src/corelib/kernel/qbasictimer.h"
    "${ROOT}/src/corelib/kernel/qcoreapplication.cpp"
    "${ROOT}/src/corelib/kernel/qcoreapplication.h"
    "${ROOT}/src/corelib/kernel/qcoreapplication_mac.cpp"
    "${ROOT}/src/corelib/kernel/qcoreapplication_p.h"
    "${ROOT}/src/corelib/kernel/qcoreapplication_win.cpp"
    "${ROOT}/src/corelib/kernel/qcoreevent.cpp"
    "${ROOT}/src/corelib/kernel/qcoreevent.h"
    "${ROOT}/src/corelib/kernel/qcore_mac.cpp"
    "${ROOT}/src/corelib/kernel/qcore_mac_p.h"
    "${ROOT}/src/corelib/kernel/qcrashhandler.cpp"
    "${ROOT}/src/corelib/kernel/qcrashhandler_p.h"
    "${ROOT}/src/corelib/kernel/qeventdispatcher_unix.cpp"
    "${ROOT}/src/corelib/kernel/qeventdispatcher_unix_p.h"
    "${ROOT}/src/corelib/kernel/qeventdispatcher_win.cpp"
    "${ROOT}/src/corelib/kernel/qeventdispatcher_win_p.h"
    "${ROOT}/src/corelib/kernel/qeventloop.cpp"
    "${ROOT}/src/corelib/kernel/qeventloop.h"
    "${ROOT}/src/corelib/kernel/qinternal.cpp"
    "${ROOT}/src/corelib/kernel/qinternal_p.h"
    "${ROOT}/src/corelib/kernel/qmetaobject.cpp"
    "${ROOT}/src/corelib/kernel/qmetaobject.h"
    "${ROOT}/src/corelib/kernel/qmetatype.cpp"
    "${ROOT}/src/corelib/kernel/qmetatype.h"
    "${ROOT}/src/corelib/kernel/qmimedata.cpp"
    "${ROOT}/src/corelib/kernel/qmimedata.h"
    "${ROOT}/src/corelib/kernel/qobject.cpp"
    "${ROOT}/src/corelib/kernel/qobject.h"
    "${ROOT}/src/corelib/kernel/qobjectcleanuphandler.cpp"
    "${ROOT}/src/corelib/kernel/qobjectcleanuphandler.h"
    "${ROOT}/src/corelib/kernel/qobjectdefs.h"
    "${ROOT}/src/corelib/kernel/qobject_p.h"
    "${ROOT}/src/corelib/kernel/qpointer.cpp"
    "${ROOT}/src/corelib/kernel/qpointer.h"
    "${ROOT}/src/corelib/kernel/qsharedmemory_p.cpp"
    "${ROOT}/src/corelib/kernel/qsharedmemory_p.h "
    "${ROOT}/src/corelib/kernel/qsignalmapper.cpp"
    "${ROOT}/src/corelib/kernel/qsignalmapper.h"
    "${ROOT}/src/corelib/kernel/qsocketnotifier.cpp"
    "${ROOT}/src/corelib/kernel/qsocketnotifier.h"
    "${ROOT}/src/corelib/kernel/qtimer.cpp"
    "${ROOT}/src/corelib/kernel/qtimer.h"
    "${ROOT}/src/corelib/kernel/qtranslator.cpp"
    "${ROOT}/src/corelib/kernel/qtranslator.h"
    "${ROOT}/src/corelib/kernel/qvariant.cpp"
    "${ROOT}/src/corelib/kernel/qvariant.h"
    "${ROOT}/src/corelib/kernel/qvariant_p.h"
    "${ROOT}/src/corelib/kernel/qwineventnotifier_p.cpp"
    "${ROOT}/src/corelib/kernel/qwineventnotifier_p.h"
    )

set(src_corelib_plugin
    "${ROOT}/src/corelib/plugin/qfactoryinterface.h"
    "${ROOT}/src/corelib/plugin/qfactoryloader.cpp"
    "${ROOT}/src/corelib/plugin/qfactoryloader_p.h"
    "${ROOT}/src/corelib/plugin/qlibrary.cpp"
    "${ROOT}/src/corelib/plugin/qlibrary.h"
    "${ROOT}/src/corelib/plugin/qlibrary_p.h"
    "${ROOT}/src/corelib/plugin/qlibrary_unix.cpp"
    "${ROOT}/src/corelib/plugin/qlibrary_win.cpp"
    "${ROOT}/src/corelib/plugin/qplugin.h"
    "${ROOT}/src/corelib/plugin/qpluginloader.cpp"
    "${ROOT}/src/corelib/plugin/qpluginloader.h"
    "${ROOT}/src/corelib/plugin/quuid.cpp"
    "${ROOT}/src/corelib/plugin/quuid.h"
    )

set(src_corelib_thread
    "${ROOT}/src/corelib/thread/qatomic.h"
    "${ROOT}/src/corelib/thread/qmutex.cpp"
    "${ROOT}/src/corelib/thread/qmutex.h"
    "${ROOT}/src/corelib/thread/qmutexpool.cpp"
    "${ROOT}/src/corelib/thread/qmutexpool_p.h"
    "${ROOT}/src/corelib/thread/qmutex_p.h"
    "${ROOT}/src/corelib/thread/qmutex_unix.cpp"
    "${ROOT}/src/corelib/thread/qmutex_win.cpp"
    "${ROOT}/src/corelib/thread/qreadwritelock.h"
    "${ROOT}/src/corelib/thread/qreadwritelock_p.h"
    "${ROOT}/src/corelib/thread/qreadwritelock_unix.cpp"
    "${ROOT}/src/corelib/thread/qreadwritelock_win.cpp"
    "${ROOT}/src/corelib/thread/qsemaphore.cpp"
    "${ROOT}/src/corelib/thread/qsemaphore.h"
    "${ROOT}/src/corelib/thread/qthread.cpp"
    "${ROOT}/src/corelib/thread/qthread.h"
    "${ROOT}/src/corelib/thread/qthreadstorage.cpp"
    "${ROOT}/src/corelib/thread/qthreadstorage.h"
    "${ROOT}/src/corelib/thread/qthread_p.h"
    "${ROOT}/src/corelib/thread/qthread_unix.cpp"
    "${ROOT}/src/corelib/thread/qthread_win.cpp"
    "${ROOT}/src/corelib/thread/qwaitcondition.h"
    "${ROOT}/src/corelib/thread/qwaitcondition_unix.cpp"
    "${ROOT}/src/corelib/thread/qwaitcondition_win.cpp"
    )

set(src_corelib_tools
    "${ROOT}/src/corelib/tools/qalgorithms.h"
    "${ROOT}/src/corelib/tools/qbitarray.cpp"
    "${ROOT}/src/corelib/tools/qbitarray.h"
    "${ROOT}/src/corelib/tools/qbytearray.cpp"
    "${ROOT}/src/corelib/tools/qbytearray.h"
    "${ROOT}/src/corelib/tools/qbytearraymatcher.cpp"
    "${ROOT}/src/corelib/tools/qbytearraymatcher.h"
    "${ROOT}/src/corelib/tools/qcache.h"
    "${ROOT}/src/corelib/tools/qchar.cpp"
    "${ROOT}/src/corelib/tools/qchar.h"
    "${ROOT}/src/corelib/tools/qdatetime.cpp"
    "${ROOT}/src/corelib/tools/qdatetime.h"
    "${ROOT}/src/corelib/tools/qdatetime_p.h"
    "${ROOT}/src/corelib/tools/qhash.cpp"
    "${ROOT}/src/corelib/tools/qhash.h"
    "${ROOT}/src/corelib/tools/qiterator.h"
    "${ROOT}/src/corelib/tools/qline.cpp"
    "${ROOT}/src/corelib/tools/qline.h"
    "${ROOT}/src/corelib/tools/qlinkedlist.cpp"
    "${ROOT}/src/corelib/tools/qlinkedlist.h"
    "${ROOT}/src/corelib/tools/qlist.h"
    "${ROOT}/src/corelib/tools/qlistdata.cpp"
    "${ROOT}/src/corelib/tools/qlocale.cpp"
    "${ROOT}/src/corelib/tools/qlocale.h"
    "${ROOT}/src/corelib/tools/qlocale_p.h"
    "${ROOT}/src/corelib/tools/qmap.cpp"
    "${ROOT}/src/corelib/tools/qmap.h"
    "${ROOT}/src/corelib/tools/qpair.h"
    "${ROOT}/src/corelib/tools/qpoint.cpp"
    "${ROOT}/src/corelib/tools/qpoint.h"
    "${ROOT}/src/corelib/tools/qqueue.cpp"
    "${ROOT}/src/corelib/tools/qqueue.h"
    "${ROOT}/src/corelib/tools/qrect.cpp"
    "${ROOT}/src/corelib/tools/qrect.h"
    "${ROOT}/src/corelib/tools/qregexp.cpp"
    "${ROOT}/src/corelib/tools/qregexp.h"
    "${ROOT}/src/corelib/tools/qset.h"
    "${ROOT}/src/corelib/tools/qshareddata.cpp"
    "${ROOT}/src/corelib/tools/qshareddata.h"
    "${ROOT}/src/corelib/tools/qsize.cpp"
    "${ROOT}/src/corelib/tools/qsize.h"
    "${ROOT}/src/corelib/tools/qstack.cpp"
    "${ROOT}/src/corelib/tools/qstack.h"
    "${ROOT}/src/corelib/tools/qstring.cpp"
    "${ROOT}/src/corelib/tools/qstring.h"
    "${ROOT}/src/corelib/tools/qstringlist.cpp"
    "${ROOT}/src/corelib/tools/qstringlist.h"
    "${ROOT}/src/corelib/tools/qstringmatcher.cpp"
    "${ROOT}/src/corelib/tools/qstringmatcher.h"
    "${ROOT}/src/corelib/tools/qtools_p.h"
    "${ROOT}/src/corelib/tools/qunicodedata.cpp"
    "${ROOT}/src/corelib/tools/qunicodedata_p.h"
    "${ROOT}/src/corelib/tools/qunicodetables.cpp"
    "${ROOT}/src/corelib/tools/qunicodetables_p.h"
    "${ROOT}/src/corelib/tools/qvarlengtharray.h"
    "${ROOT}/src/corelib/tools/qvector.cpp"
    "${ROOT}/src/corelib/tools/qvector.h"
    "${ROOT}/src/corelib/tools/qvsnprintf.cpp"
    )

source_group("Source Files\\Qt\\corelib\\codecs" FILES ${src_corelib_codecs})
source_group("Source Files\\Qt\\corelib\\global" FILES ${src_corelib_global})
source_group("Source Files\\Qt\\corelib\\io" FILES ${src_corelib_io})
source_group("Source Files\\Qt\\corelib\\kernel" FILES ${src_corelib_kernel})
source_group("Source Files\\Qt\\corelib\\plugin" FILES ${src_corelib_plugin})
source_group("Source Files\\Qt\\corelib\\thread" FILES ${src_corelib_thread})
source_group("Source Files\\Qt\\corelib\\tools" FILES ${src_corelib_tools})

set_source_files_properties(
    "${ROOT}/src/corelib/tools/qunicodedata.cpp"
    PROPERTIES HEADER_FILE_ONLY TRUE
    )

if(NOT APPLE)
    set_source_files_properties(
        "${ROOT}/src/corelib/io/qsettings_mac.cpp"
        "${ROOT}/src/corelib/kernel/qcoreapplication_mac.cpp"
        "${ROOT}/src/corelib/kernel/qcore_mac.cpp"
        PROPERTIES HEADER_FILE_ONLY TRUE
        )
endif()

if(WIN32)
    set_source_files_properties(
        "${ROOT}/src/corelib/codecs/qfontlaocodec.cpp"
        "${ROOT}/src/corelib/codecs/qisciicodec.cpp"
        "${ROOT}/src/corelib/codecs/qsimplecodec.cpp"
        "${ROOT}/src/corelib/codecs/qtsciicodec.cpp"
        "${ROOT}/src/corelib/io/qfsfileengine_unix.cpp"
        "${ROOT}/src/corelib/io/qprocess_unix.cpp"
        "${ROOT}/src/corelib/kernel/qcrashhandler.cpp"
        "${ROOT}/src/corelib/kernel/qeventdispatcher_unix.cpp"
        "${ROOT}/src/corelib/kernel/qsharedmemory_p.cpp"
        "${ROOT}/src/corelib/plugin/qlibrary_unix.cpp"
        "${ROOT}/src/corelib/thread/qmutex_unix.cpp"
        "${ROOT}/src/corelib/thread/qreadwritelock_unix.cpp"
        "${ROOT}/src/corelib/thread/qthread_unix.cpp"
        "${ROOT}/src/corelib/thread/qwaitcondition_unix.cpp"
        "${ROOT}/src/gui/painting/qregion_unix.cpp"
        PROPERTIES HEADER_FILE_ONLY TRUE
        )
else()
    set_source_files_properties(
        "${ROOT}/src/corelib/io/qfsfileengine_win.cpp"
        "${ROOT}/src/corelib/io/qprocess_win.cpp"
        "${ROOT}/src/corelib/io/qsettings_win.cpp"
        "${ROOT}/src/corelib/kernel/qcoreapplication_win.cpp"
        "${ROOT}/src/corelib/kernel/qeventdispatcher_win.cpp"
        "${ROOT}/src/corelib/kernel/qwineventnotifier_p.cpp"
        "${ROOT}/src/corelib/plugin/qlibrary_win.cpp"
        "${ROOT}/src/corelib/thread/qmutex_win.cpp"
        "${ROOT}/src/corelib/thread/qreadwritelock_win.cpp"
        "${ROOT}/src/corelib/thread/qthread_win.cpp"
        "${ROOT}/src/corelib/thread/qwaitcondition_win.cpp"
        PROPERTIES HEADER_FILE_ONLY TRUE
        )
endif()

set(src_corelib
    ${src_corelib_codecs}
    ${src_corelib_global}
    ${src_corelib_io}
    ${src_corelib_kernel}
    ${src_corelib_plugin}
    ${src_corelib_thread}
    ${src_corelib_tools}
    )
