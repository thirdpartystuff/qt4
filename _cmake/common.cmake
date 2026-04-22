if(COMMON_CMAKE_INCLUDED)
    return()
endif()
set(COMMON_CMAKE_INCLUDED TRUE)

get_filename_component(CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" DIRECTORY)
get_filename_component(ROOT "${CMAKE_DIR}" DIRECTORY)

set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -DQT_NO_DEBUG")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -DQT_NO_DEBUG")
set(CMAKE_C_FLAGS_MINSIZEREL "${CMAKE_C_FLAGS_MINSIZEREL} -DQT_NO_DEBUG")
set(CMAKE_CXX_FLAGS_MINSIZEREL "${CMAKE_CXX_FLAGS_MINSIZEREL} -DQT_NO_DEBUG")

if(NOT MSVC)
    add_definitions(-Wno-deprecated-declarations)
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -static-libgcc -Wl,--as-needed")
    set(CMAKE_SHARED_LINKER_FLAGS_RELEASE "${CMAKE_SHARED_LINKER_FLAGS_RELEASE} -Wl,-s")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static-libgcc -Wl,--as-needed")
    set(CMAKE_EXE_LINKER_FLAGS_RELEASE "${CMAKE_EXE_LINKER_FLAGS_RELEASE} -Wl,-s")
endif()

if(OLD_WINDOWS)
    include("${ROOT}/_cmake/crtdll/crtdll.cmake")
else()
    macro(extra_link _target _type)
    endmacro()
endif()

macro(precompiled_header _header)
    if(MSVC)
        source_group("Source Files" FILES "${_header}")
        target_sources(common PRIVATE "${_header}")
        target_precompile_headers(common PRIVATE "${_header}")
    endif()
endmacro()

if(USE_CXX17)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --std=gnu++17 -Wno-register")
endif()

include(TestBigEndian)
test_big_endian(QT_BIG_ENDIAN)
if(NOT QT_BIG_ENDIAN)
    unset(QT_BIG_ENDIAN)
endif()

if(MSVC)
    set(arch "windows")
else()
    if(CMAKE_SIZEOF_VOID_P GREATER 4)
        set(arch "x86_64")
    else()
        set(arch "i386")
    endif()
endif()

if(WIN32)
    set(spec "win32-g++")
elseif(CMAKE_SYSTEM_NAME MATCHES "Linux")
    set(spec "linux-g++")
else()
    message(FATAL_ERROR "Unsupported target platform.")
endif()

if(APPLE)
    unset(QT_NO_STYLE_MAC)
else()
    set(QT_NO_STYLE_MAC TRUE)
endif()

configure_file("${CMAKE_DIR}/cmake-config.h.in" "${CMAKE_BINARY_DIR}/gen/cmake-config.h")

include_directories(
    "${CMAKE_BINARY_DIR}/gen"
    "${CMAKE_DIR}/include"
    "${ROOT}/src/corelib/arch/${arch}"
    "${ROOT}/src/3rdparty/wintab"
    "${ROOT}/src/3rdparty/opentype"
    "${ROOT}/include"
    "${ROOT}/include/QtCore"
    "${ROOT}/include/QtGui"
    "${ROOT}/include/QtNetwork"
    "${ROOT}/include/QtOpenGL"
    "${ROOT}/include/QtXml"
    "${ROOT}/mkspecs/${spec}"
    )

macro(moc _in)
    get_filename_component(_name "${_in}" NAME_WE)
    add_custom_command(
        OUTPUT "${CMAKE_BINARY_DIR}/gen/${_name}_moc.cpp"
        COMMAND moc
            "-I${ROOT}/_cmake/include"
            "-I${ROOT}/include"
            "-I${ROOT}/include/QtCore"
            "-I${ROOT}/include/QtGui"
            "-I${ROOT}/include/QtNetwork"
            "-I${ROOT}/include/QtOpenGL"
            "-I${ROOT}/include/QtXml"
            "-o${CMAKE_BINARY_DIR}/gen/${_name}_moc.cpp"
            "${_in}"
        DEPENDS "${_in}"
        )
    list(APPEND gen "${CMAKE_BINARY_DIR}/gen/${_name}_moc.cpp")
    source_group("Generated Files" FILES "${CMAKE_BINARY_DIR}/gen/${_name}_moc.cpp")
endmacro()

macro(moc2 _out _in)
    add_custom_command(
        OUTPUT "${CMAKE_BINARY_DIR}/gen/${_out}"
        COMMAND moc
            "-I${ROOT}/_cmake/include"
            "-I${ROOT}/include"
            "-I${ROOT}/include/QtCore"
            "-I${ROOT}/include/QtGui"
            "-I${ROOT}/include/QtNetwork"
            "-I${ROOT}/include/QtOpenGL"
            "-I${ROOT}/include/QtXml"
            "-o${CMAKE_BINARY_DIR}/gen/${_out}"
            "${_in}"
        DEPENDS "${_in}"
        )
    list(APPEND gen "${CMAKE_BINARY_DIR}/gen/${_out}")
    set_source_files_properties("${CMAKE_BINARY_DIR}/gen/${_out}" PROPERTIES HEADER_FILE_ONLY TRUE)
    source_group("Generated Files" FILES "${CMAKE_BINARY_DIR}/gen/${_out}")
endmacro()

macro(uic _in)
    get_filename_component(_name "${_in}" NAME_WE)
    add_custom_command(
        OUTPUT "${CMAKE_BINARY_DIR}/gen/ui_${_name}.h"
        COMMAND uic
            -o "${CMAKE_BINARY_DIR}/gen/ui_${_name}.h"
            "${_in}"
        DEPENDS "${_in}"
        )
    list(APPEND gen "${CMAKE_BINARY_DIR}/gen/ui_${_name}.h")
    source_group("Generated Files" FILES "${CMAKE_BINARY_DIR}/gen/ui_${_name}.h")
endmacro()

macro(rcc _in)
    get_filename_component(_name "${_in}" NAME_WE)
    add_custom_command(
        OUTPUT "${CMAKE_BINARY_DIR}/gen/${_name}_rcc.cpp"
        COMMAND rcc
            -compress 9
            -name "${_name}"
            -o "${CMAKE_BINARY_DIR}/gen/${_name}_rcc.cpp"
            "${_in}"
        DEPENDS "${_in}"
        )
    list(APPEND gen "${CMAKE_BINARY_DIR}/gen/${_name}_rcc.cpp")
    source_group("Generated Files" FILES "${CMAKE_BINARY_DIR}/gen/${_name}_rcc.cpp")
endmacro()
