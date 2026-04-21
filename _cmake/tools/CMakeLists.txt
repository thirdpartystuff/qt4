cmake_minimum_required(VERSION 3.5.2...3.31.4)

include(../common.cmake)

add_definitions(
    -DQT_BOOTSTRAPPED
    -DQT_NODLL
    -DQT_LITE_UNICODE
    -DQT_NO_DATASTREAM
    -DQT_NO_QOBJECT
    -DQT_NO_THREAD
    -DQT_NO_UNICODETABLES
    -DQT_NO_LIBRARY
    -DQT_NO_STL
    )

if(NOT WIN32)
    find_package(ZLIB)
endif()
if(ZLIB_FOUND)
    include_directories(${ZLIB_INCLUDE_DIRS})
    set(src_3rdparty_zlib)
else()
    include_directories("${ROOT}/src/3rdparty/zlib")
    include(../qt/zlib.cmake)
endif()

set(src_corelib_codecs
    "${ROOT}/src/corelib/codecs/qlatincodec.cpp"
    "${ROOT}/src/corelib/codecs/qtextcodec.cpp"
    "${ROOT}/src/corelib/codecs/qutfcodec.cpp"
    )

set(src_corelib_global
    "${ROOT}/src/corelib/global/qglobal.cpp"
    )

set(src_corelib_io
    "${ROOT}/src/corelib/io/qbuffer.cpp"
    "${ROOT}/src/corelib/io/qbufferedfsfileengine.cpp"
    "${ROOT}/src/corelib/io/qdir.cpp"
    "${ROOT}/src/corelib/io/qfile.cpp"
    "${ROOT}/src/corelib/io/qfileengine.cpp"
    "${ROOT}/src/corelib/io/qfileinfo.cpp"
    "${ROOT}/src/corelib/io/qfsfileengine.cpp"
    "${ROOT}/src/corelib/io/qfsfileengine_unix.cpp"
    "${ROOT}/src/corelib/io/qfsfileengine_win.cpp"
    "${ROOT}/src/corelib/io/qiodevice.cpp"
    "${ROOT}/src/corelib/io/qtemporaryfile.cpp"
    "${ROOT}/src/corelib/io/qtextstream.cpp"
    )

set(src_corelib_tools
    "${ROOT}/src/corelib/tools/qbitarray.cpp"
    "${ROOT}/src/corelib/tools/qbytearray.cpp"
    "${ROOT}/src/corelib/tools/qbytearraymatcher.cpp"
    "${ROOT}/src/corelib/tools/qchar.cpp"
    "${ROOT}/src/corelib/tools/qdatetime.cpp"
    "${ROOT}/src/corelib/tools/qhash.cpp"
    "${ROOT}/src/corelib/tools/qlistdata.cpp"
    "${ROOT}/src/corelib/tools/qlocale.cpp"
    "${ROOT}/src/corelib/tools/qmap.cpp"
    "${ROOT}/src/corelib/tools/qregexp.cpp"
    "${ROOT}/src/corelib/tools/qstring.cpp"
    "${ROOT}/src/corelib/tools/qstringlist.cpp"
    "${ROOT}/src/corelib/tools/qstringmatcher.cpp"
    "${ROOT}/src/corelib/tools/qunicodetables.cpp"
    "${ROOT}/src/corelib/tools/qvector.cpp"
    "${ROOT}/src/corelib/tools/qvsnprintf.cpp"
    )

set(src_xml
    "${ROOT}/src/xml/qdom.cpp"
    "${ROOT}/src/xml/qxml.cpp"
    )

source_group("Source Files\\Qt\\corelib\\codecs" FILES ${src_corelib_codecs})
source_group("Source Files\\Qt\\corelib\\global" FILES ${src_corelib_global})
source_group("Source Files\\Qt\\corelib\\io" FILES ${src_corelib_io})
source_group("Source Files\\Qt\\corelib\\tools" FILES ${src_corelib_tools})
source_group("Source Files\\Qt\\xml" FILES ${src_xml})

if(WIN32)
    set_source_files_properties(
        "${ROOT}/src/corelib/io/qfsfileengine_unix.cpp"
        PROPERTIES HEADER_FILE_ONLY TRUE
        )
else()
    set_source_files_properties(
        "${ROOT}/src/corelib/io/qfsfileengine_win.cpp"
        PROPERTIES HEADER_FILE_ONLY TRUE
        )
endif()

set(src_common
    ${src_3rdparty_zlib}
    ${src_corelib_codecs}
    ${src_corelib_global}
    ${src_corelib_io}
    ${src_corelib_tools}
    )

set(src_moc
    "${ROOT}/src/tools/moc/generator.cpp"
    "${ROOT}/src/tools/moc/generator.h"
    "${ROOT}/src/tools/moc/keywords.cpp"
    "${ROOT}/src/tools/moc/main.cpp"
    "${ROOT}/src/tools/moc/moc.cpp"
    "${ROOT}/src/tools/moc/moc.h"
    "${ROOT}/src/tools/moc/mwerks_mac.cpp"
    "${ROOT}/src/tools/moc/mwerks_mac.h"
    "${ROOT}/src/tools/moc/outputrevision.h"
    "${ROOT}/src/tools/moc/ppkeywords.cpp"
    "${ROOT}/src/tools/moc/preprocessor.cpp"
    "${ROOT}/src/tools/moc/preprocessor.h"
    "${ROOT}/src/tools/moc/scanner.cpp"
    "${ROOT}/src/tools/moc/scanner.h"
    "${ROOT}/src/tools/moc/symbols.h"
    "${ROOT}/src/tools/moc/token.h"
    "${ROOT}/src/tools/moc/utils.h"
    )

set_source_files_properties(
    "${ROOT}/src/tools/moc/keywords.cpp"
    "${ROOT}/src/tools/moc/mwerks_mac.cpp"
    "${ROOT}/src/tools/moc/ppkeywords.cpp"
    PROPERTIES HEADER_FILE_ONLY TRUE
    )

set(src_uic
    "${ROOT}/src/tools/uic/customwidgetsinfo.cpp"
    "${ROOT}/src/tools/uic/customwidgetsinfo.h"
    "${ROOT}/src/tools/uic/databaseinfo.cpp"
    "${ROOT}/src/tools/uic/databaseinfo.h"
    "${ROOT}/src/tools/uic/driver.cpp"
    "${ROOT}/src/tools/uic/driver.h"
    "${ROOT}/src/tools/uic/globaldefs.h"
    "${ROOT}/src/tools/uic/main.cpp"
    "${ROOT}/src/tools/uic/option.h"
    "${ROOT}/src/tools/uic/qclass_lib_map.h"
    "${ROOT}/src/tools/uic/treewalker.cpp"
    "${ROOT}/src/tools/uic/treewalker.h"
    "${ROOT}/src/tools/uic/ui4.cpp"
    "${ROOT}/src/tools/uic/ui4.h"
    "${ROOT}/src/tools/uic/uic.cpp"
    "${ROOT}/src/tools/uic/uic.h"
    "${ROOT}/src/tools/uic/utils.h"
    "${ROOT}/src/tools/uic/validator.cpp"
    "${ROOT}/src/tools/uic/validator.h"
    "${ROOT}/src/tools/uic/writedeclaration.cpp"
    "${ROOT}/src/tools/uic/writedeclaration.h"
    "${ROOT}/src/tools/uic/writeicondata.cpp"
    "${ROOT}/src/tools/uic/writeicondata.h"
    "${ROOT}/src/tools/uic/writeicondeclaration.cpp"
    "${ROOT}/src/tools/uic/writeicondeclaration.h"
    "${ROOT}/src/tools/uic/writeiconinitialization.cpp"
    "${ROOT}/src/tools/uic/writeiconinitialization.h"
    "${ROOT}/src/tools/uic/writeincludes.cpp"
    "${ROOT}/src/tools/uic/writeincludes.h"
    "${ROOT}/src/tools/uic/writeinitialization.cpp"
    "${ROOT}/src/tools/uic/writeinitialization.h"
    )

set(src_rcc
    "${ROOT}/src/tools/rcc/main.cpp"
    "${ROOT}/src/tools/rcc/rcc.cpp"
    "${ROOT}/src/tools/rcc/rcc.h"
    )

source_group("Source Files" FILES ${src_moc})
source_group("Source Files" FILES ${src_uic})
source_group("Source Files" FILES ${src_rcc})

add_library(common OBJECT ${src_common} ${src_xml})
target_compile_definitions(common PRIVATE QT_RCC QT_UIC QT_MOC)

add_executable(moc ${src_moc} $<TARGET_OBJECTS:common>)
set_target_properties(moc PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}")
target_compile_definitions(moc PRIVATE QT_MOC)

add_executable(uic ${src_uic} $<TARGET_OBJECTS:common>)
set_target_properties(uic PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}")
target_compile_definitions(uic PRIVATE QT_UIC)

add_executable(rcc ${src_rcc} $<TARGET_OBJECTS:common>)
set_target_properties(rcc PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}")
target_compile_definitions(rcc PRIVATE QT_RCC)

if(ZLIB_FOUND)
    target_link_libraries(moc ${ZLIB_LIBRARIES})
    target_link_libraries(uic ${ZLIB_LIBRARIES})
    target_link_libraries(rcc ${ZLIB_LIBRARIES})
endif()

precompiled_header("_stdafx.h")
