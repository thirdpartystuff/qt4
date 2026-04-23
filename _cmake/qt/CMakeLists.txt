cmake_minimum_required(VERSION 3.5.2...3.31.4)

set(gen)
include(../common.cmake)

find_package(Threads)

if(NOT APPLE AND NOT WIN32 AND NOT QWS)
    set(X11 TRUE)
else()
    unset(X11)
endif()

if(UNIX)
    add_definitions(-fPIC)
endif()
if(CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    add_definitions(
        -Wno-logical-op-parentheses
        -Wno-bitwise-op-parentheses
        -Wno-shift-op-parentheses
        -Wno-dangling-else
        -Wno-parentheses
        -Wno-constant-conversion
        -Wno-tautological-pointer-compare
        -Wno-empty-body
        -Wno-unsequenced
        )
endif()

if(NOT WIN32)
    find_package(ZLIB)
endif()
if(ZLIB_FOUND)
    include_directories(${ZLIB_INCLUDE_DIRS})
    set(src_3rdparty_zlib)
else()
    include_directories("${ROOT}/src/3rdparty/zlib")
    include(zlib.cmake)
endif()

if(NOT WIN32)
    find_package(Freetype)
endif()
if(FREETYPE_FOUND)
    include_directories(${FREETYPE_INCLUDE_DIRS})
    set(src_3rdparty_freetype)
else()
    include_directories("${ROOT}/src/3rdparty/freetype/include")
    include(freetype.cmake)
endif()

include_directories("${ROOT}/src/3rdparty/libpng")

include(libpng.cmake)
include(wintab.cmake)
include(opentype.cmake)
include(qtcore.cmake)
include(qtgui.cmake)
include(qtxml.cmake)
include(qtnetwork.cmake)
if(NOT OLD_WINDOWS)
    include(qtopengl.cmake)
endif()

if(QT_STATIC)
    set(shared_or_static STATIC)
else()
    set(shared_or_static SHARED)
endif()

add_library(qt ${shared_or_static}
    ${gen}
    ${src_3rdparty_libpng}
    ${src_3rdparty_zlib}
    ${src_3rdparty_freetype}
    ${src_3rdparty_opentype}
    ${src_3rdparty_wintab}
    ${src_corelib}
    ${src_gui}
    ${src_network}
    ${src_opengl}
    ${src_xml}
    )

if(WIN32 AND NOT QT_STATIC)
     target_compile_definitions(qt PRIVATE
        -DQT_MAKEDLL
        -DQT_BUILD_CORE_LIB
        -DQT_BUILD_GUI_LIB
        -DQT_BUILD_NETWORK_LIB
        -DQT_BUILD_OPENGL_LIB
        -DQT_BUILD_XML_LIB
        )
    target_compile_definitions(qt INTERFACE QT_DLL)
endif()

set_target_properties(qt PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
    )

target_link_libraries(qt PUBLIC ${CMAKE_DL_LIBS} ${CMAKE_THREAD_LIBS_INIT})
if(WIN32)
    set_target_properties(qt PROPERTIES PREFIX "")
    target_link_libraries(qt PUBLIC winmm)
    if(NOT OLD_WINDOWS)
        target_link_libraries(qt PUBLIC opengl32 glu32 ws2_32)
    endif()
endif()
if(X11)
    find_package(X11 REQUIRED)
    find_package(OpenGL REQUIRED)
    target_include_directories(qt PRIVATE "${X11_INCLUDE_DIR}")
    target_include_directories(qt PUBLIC "${OPENGL_INCLUDE_DIR}")
    target_link_libraries(qt PUBLIC
        fontconfig
        ${X11_LIBRARIES}
        ${X11_ICE_LIB}
        ${X11_SM_LIB}
        ${X11_Xrender_LIB}
        ${X11_Xrandr_LIB}
        ${X11_Xi_LIB}
        ${X11_Xinerama_LIB}
        ${X11_Xcursor_LIB}
        ${OPENGL_LIBRARIES}
        )
endif()
if(FREETYPE_FOUND)
    target_link_libraries(qt PUBLIC ${FREETYPE_LIBRARIES})
endif()
if(ZLIB_FOUND)
    target_link_libraries(qt PUBLIC ${ZLIB_LIBRARIES})
endif()

if(MSVC)
    source_group("Source Files" FILES _stdafx.h)
    target_sources(qt PRIVATE _stdafx.h)
    target_precompile_headers(qt PRIVATE _stdafx.h)
endif()

if(WIN32)
    set(src_winmain "${ROOT}/src/winmain/qtmain_win.cpp")
    source_group("Source Files" FILES ${src_winmain})
    add_library(qtmain STATIC ${src_winmain})
    target_link_libraries(qtmain PUBLIC qt)
    target_link_libraries(qt INTERFACE qtmain)
endif()

extra_link(qt DLL)
