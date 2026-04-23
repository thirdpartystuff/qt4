
set(gen)
moc("${ROOT}/examples/network/loopback/dialog.h")

set(src_examples_network_loopback
    "${ROOT}/examples/network/loopback/dialog.cpp"
    "${ROOT}/examples/network/loopback/dialog.h"
    "${ROOT}/examples/network/loopback/main.cpp"
    )

source_group("Source Files" FILES ${src_examples_network_loopback})

add_executable(loopback WIN32 MACOSX_BUNDLE
    ${gen}
    ${src_examples_network_loopback}
    )

set_target_properties(loopback PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
    )

target_link_libraries(loopback PRIVATE qt)
extra_link(loopback EXE)

if(MSVC)
    source_group("Source Files" FILES _stdafx.h)
    target_sources(loopback PRIVATE _stdafx.h)
    target_precompile_headers(loopback PRIVATE _stdafx.h)
endif()
