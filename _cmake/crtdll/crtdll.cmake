
set(CRTDLL_DLL "${ROOT}/_cmake/crtdll/crtdll.dll")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
add_definitions(-march=i586)

set(exe_flags "-Wl,--pic-executable -Wl,--emit-relocs -Wl,--image-base=0x01000000")
set(all_flags "-Wl,--major-os-version=3 -Wl,--minor-os-version=10")
set(all_flags "${all_flags} -Wl,--major-subsystem-version=3 -Wl,--minor-subsystem-version=10")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${all_flags} ${exe_flags}")
set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} ${all_flags}")

source_group("Source Files" FILES "${ROOT}/_cmake/crtdll/_funcs.c")
add_library(crtdll_compat OBJECT "${ROOT}/_cmake/crtdll/_funcs.c")

source_group("Source Files" FILES "${ROOT}/_cmake/crtdll/_crt1.c")
add_library(crtdll_crt1 OBJECT "${ROOT}/_cmake/crtdll/_crt1.c")

source_group("Source Files" FILES "${ROOT}/_cmake/crtdll/_dllcrt1.c")
add_library(crtdll_dllcrt1 OBJECT "${ROOT}/_cmake/crtdll/_dllcrt1.c")

macro(extra_link _target _type)
    target_compile_options(${_target} PUBLIC -fno-exceptions)
    target_compile_definitions(${_target} PUBLIC QT_NO_EXCEPTIONS CRTDLL_DLL mktemp=_mktemp)
    target_link_libraries(${_target} PRIVATE -nostdlib "${CRTDLL_DLL}" stdc++ gcc gcc_eh mingwex mingw32 "${CRTDLL_DLL}")
    target_sources(${_target} PRIVATE $<TARGET_OBJECTS:crtdll_compat>)

    if("${_type}" STREQUAL "EXE")
        target_sources(${_target} PRIVATE $<TARGET_OBJECTS:crtdll_crt1>)
    elseif("${_type}" STREQUAL "DLL")
        target_sources(${_target} PRIVATE $<TARGET_OBJECTS:crtdll_dllcrt1>)
    else()
        message(FATAL_ERROR "Invalid type ${_type}")
    endif()
endmacro()
