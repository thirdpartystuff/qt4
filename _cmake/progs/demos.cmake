
moc("${ROOT}/demos/mainwindow/colorswatch.h")
moc("${ROOT}/demos/mainwindow/mainwindow.h")
moc("${ROOT}/demos/mainwindow/toolbar.h")

set(src_demos_mainwindow
    "${ROOT}/demos/mainwindow/colorswatch.cpp"
    "${ROOT}/demos/mainwindow/colorswatch.h"
    "${ROOT}/demos/mainwindow/main.cpp"
    "${ROOT}/demos/mainwindow/mainwindow.cpp"
    "${ROOT}/demos/mainwindow/mainwindow.h"
    "${ROOT}/demos/mainwindow/toolbar.cpp"
    "${ROOT}/demos/mainwindow/toolbar.h"
    )

source_group("Source Files" FILES ${src_demos_mainwindow})

add_executable(demo WIN32 MACOSX_BUNDLE
    ${gen}
    ${src_demos_mainwindow}
    )

set_target_properties(demo PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}"
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}"
    )

target_link_libraries(demo PRIVATE qt)
extra_link(demo EXE)

if(MSVC)
    source_group("Source Files" FILES _stdafx.h)
    target_sources(demo PRIVATE _stdafx.h)
    target_precompile_headers(demo PRIVATE _stdafx.h)
endif()
