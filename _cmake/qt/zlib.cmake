
set(src_3rdparty_zlib
    "${ROOT}/src/3rdparty/zlib/adler32.c"
    "${ROOT}/src/3rdparty/zlib/compress.c"
    "${ROOT}/src/3rdparty/zlib/crc32.c"
    "${ROOT}/src/3rdparty/zlib/crc32.h"
    "${ROOT}/src/3rdparty/zlib/deflate.c"
    "${ROOT}/src/3rdparty/zlib/deflate.h"
    #"${ROOT}/src/3rdparty/zlib/gzio.c"
    "${ROOT}/src/3rdparty/zlib/infback.c"
    "${ROOT}/src/3rdparty/zlib/inffast.c"
    "${ROOT}/src/3rdparty/zlib/inffast.h"
    "${ROOT}/src/3rdparty/zlib/inffixed.h"
    "${ROOT}/src/3rdparty/zlib/inflate.c"
    "${ROOT}/src/3rdparty/zlib/inflate.h"
    "${ROOT}/src/3rdparty/zlib/inftrees.c"
    "${ROOT}/src/3rdparty/zlib/inftrees.h"
    "${ROOT}/src/3rdparty/zlib/trees.c"
    "${ROOT}/src/3rdparty/zlib/trees.h"
    "${ROOT}/src/3rdparty/zlib/uncompr.c"
    "${ROOT}/src/3rdparty/zlib/zconf.h"
    "${ROOT}/src/3rdparty/zlib/zlib.h"
    "${ROOT}/src/3rdparty/zlib/zutil.c"
    "${ROOT}/src/3rdparty/zlib/zutil.h"
    )

source_group("Source Files\\Zlib" FILES ${src_3rdparty_zlib})
