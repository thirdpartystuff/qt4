
moc("${ROOT}/src/opengl/qgl.h")
if(X11)
    moc2("qgl_x11.moc" "${ROOT}/src/opengl/qgl_x11.cpp")
endif()

set(src_opengl
    "${ROOT}/src/opengl/qgl.cpp"
    "${ROOT}/src/opengl/qgl.h"
    "${ROOT}/src/opengl/qglcolormap.cpp"
    "${ROOT}/src/opengl/qglcolormap.h"
    "${ROOT}/src/opengl/qgl_mac.cpp"
    "${ROOT}/src/opengl/qgl_p.h"
    "${ROOT}/src/opengl/qgl_win.cpp"
    "${ROOT}/src/opengl/qgl_x11.cpp"
    "${ROOT}/src/opengl/qpaintengine_opengl.cpp"
    "${ROOT}/src/opengl/qpaintengine_opengl_p.h"
    )

source_group("Source Files\\Qt\\opengl" FILES ${src_opengl})

foreach(suffix ${skip_platforms})
    set_source_files_properties(
        "${ROOT}/src/opengl/qgl_${suffix}.cpp"
        PROPERTIES HEADER_FILE_ONLY TRUE
        )
endforeach()
