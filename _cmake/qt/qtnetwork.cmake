
moc("${ROOT}/src/network/qhostinfo_p.h")
moc("${ROOT}/src/network/qtcpsocket.h")

moc2("moc_qabstractsocket.cpp" "${ROOT}/src/network/qabstractsocket.h")
moc2("moc_qtcpserver.cpp" "${ROOT}/src/network/qtcpserver.h")

set(src_network
    "${ROOT}/src/network/qabstractsocket.cpp"
    "${ROOT}/src/network/qabstractsocket.h"
    "${ROOT}/src/network/qabstractsocket_p.h"
    "${ROOT}/src/network/qftp.cpp"
    "${ROOT}/src/network/qftp.h"
    "${ROOT}/src/network/qhostaddress.cpp"
    "${ROOT}/src/network/qhostaddress.h"
    "${ROOT}/src/network/qhostinfo.cpp"
    "${ROOT}/src/network/qhostinfo.h"
    "${ROOT}/src/network/qhostinfo_p.h"
    "${ROOT}/src/network/qhostinfo_unix.cpp"
    "${ROOT}/src/network/qhostinfo_win.cpp"
    "${ROOT}/src/network/qhttp.cpp"
    "${ROOT}/src/network/qhttp.h"
    "${ROOT}/src/network/qsocketlayer.cpp"
    "${ROOT}/src/network/qsocketlayer_p.h"
    "${ROOT}/src/network/qsocketlayer_unix.cpp"
    "${ROOT}/src/network/qsocketlayer_win.cpp"
    "${ROOT}/src/network/qtcpserver.cpp"
    "${ROOT}/src/network/qtcpserver.h"
    "${ROOT}/src/network/qtcpsocket.cpp"
    "${ROOT}/src/network/qtcpsocket.h"
    "${ROOT}/src/network/qudpsocket.cpp"
    "${ROOT}/src/network/qudpsocket.h"
    "${ROOT}/src/network/qurlinfo.cpp"
    "${ROOT}/src/network/qurlinfo.h"
    )

source_group("Source Files\\Qt\\network" FILES ${src_network})

if(WIN32)
    set_source_files_properties(
        "${ROOT}/src/network/qhostinfo_unix.cpp"
        "${ROOT}/src/network/qsocketlayer_unix.cpp"
        PROPERTIES HEADER_FILE_ONLY TRUE
        )
else()
    set_source_files_properties(
        "${ROOT}/src/network/qhostinfo_win.cpp"
        "${ROOT}/src/network/qsocketlayer_win.cpp"
        PROPERTIES HEADER_FILE_ONLY TRUE
        )
endif()
