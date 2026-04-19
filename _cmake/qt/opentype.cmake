
set(src_3rdparty_opentype
    "${ROOT}/src/3rdparty/opentype/fterrcompat.h"
    "${ROOT}/src/3rdparty/opentype/ftxgdef.c"
    "${ROOT}/src/3rdparty/opentype/ftxgdef.h"
    "${ROOT}/src/3rdparty/opentype/ftxgpos.c"
    "${ROOT}/src/3rdparty/opentype/ftxgpos.h"
    "${ROOT}/src/3rdparty/opentype/ftxgsub.c"
    "${ROOT}/src/3rdparty/opentype/ftxgsub.h"
    "${ROOT}/src/3rdparty/opentype/ftxopen.c"
    "${ROOT}/src/3rdparty/opentype/ftxopen.h"
    "${ROOT}/src/3rdparty/opentype/ftxopenf.h"
    "${ROOT}/src/3rdparty/opentype/ftxopentype.c"
    )

source_group("Source Files\\OpenType" FILES ${src_3rdparty_opentype})

set_source_files_properties(
    "${ROOT}/src/3rdparty/opentype/ftxgdef.c"
    "${ROOT}/src/3rdparty/opentype/ftxgpos.c"
    "${ROOT}/src/3rdparty/opentype/ftxgsub.c"
    "${ROOT}/src/3rdparty/opentype/ftxopen.c"
    PROPERTIES HEADER_FILE_ONLY TRUE
    )
