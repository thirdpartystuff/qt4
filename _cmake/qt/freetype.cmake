
add_definitions(
    /DFT_CONFIG_OPTION_SYSTEM_ZLIB
    )

set(src_3rdparty_freetype_autohint
    "${ROOT}/src/3rdparty/freetype/src/autohint/ahangles.c"
    "${ROOT}/src/3rdparty/freetype/src/autohint/ahangles.h"
    "${ROOT}/src/3rdparty/freetype/src/autohint/aherrors.h"
    "${ROOT}/src/3rdparty/freetype/src/autohint/ahglobal.c"
    "${ROOT}/src/3rdparty/freetype/src/autohint/ahglobal.h"
    "${ROOT}/src/3rdparty/freetype/src/autohint/ahglyph.c"
    "${ROOT}/src/3rdparty/freetype/src/autohint/ahglyph.h"
    "${ROOT}/src/3rdparty/freetype/src/autohint/ahhint.c"
    "${ROOT}/src/3rdparty/freetype/src/autohint/ahhint.h"
    "${ROOT}/src/3rdparty/freetype/src/autohint/ahloader.h"
    "${ROOT}/src/3rdparty/freetype/src/autohint/ahmodule.c"
    "${ROOT}/src/3rdparty/freetype/src/autohint/ahmodule.h"
    "${ROOT}/src/3rdparty/freetype/src/autohint/ahtypes.h"
    "${ROOT}/src/3rdparty/freetype/src/autohint/autohint.c"
    )

set(src_3rdparty_freetype_base
    "${ROOT}/src/3rdparty/freetype/src/base/ftapi.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftbase.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftbbox.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftbdf.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftcalc.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftdbgmem.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftdebug.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftgloadr.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftglyph.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftinit.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftmac.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftmm.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftnames.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftobjs.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftoutln.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftpfr.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftrfork.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftstream.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftstroke.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftsynth.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftsystem.c"
    "${ROOT}/src/3rdparty/freetype/src/base/fttrigon.c"
    "${ROOT}/src/3rdparty/freetype/src/base/fttype1.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftutil.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftwinfnt.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftxf86.c"
    )

set(src_3rdparty_freetype_bdf
    "${ROOT}/src/3rdparty/freetype/src/bdf/bdf.c"
    "${ROOT}/src/3rdparty/freetype/src/bdf/bdf.h"
    "${ROOT}/src/3rdparty/freetype/src/bdf/bdfdrivr.c"
    "${ROOT}/src/3rdparty/freetype/src/bdf/bdfdrivr.h"
    "${ROOT}/src/3rdparty/freetype/src/bdf/bdferror.h"
    "${ROOT}/src/3rdparty/freetype/src/bdf/bdflib.c"
    )

set(src_3rdparty_freetype_cff
    "${ROOT}/src/3rdparty/freetype/src/cff/cff.c"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffcmap.c"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffcmap.h"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffdrivr.c"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffdrivr.h"
    "${ROOT}/src/3rdparty/freetype/src/cff/cfferrs.h"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffgload.c"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffgload.h"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffload.c"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffload.h"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffobjs.c"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffobjs.h"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffparse.c"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffparse.h"
    "${ROOT}/src/3rdparty/freetype/src/cff/cfftoken.h"
    "${ROOT}/src/3rdparty/freetype/src/cff/cfftypes.h"
    )

set(src_3rdparty_freetype_cid
    "${ROOT}/src/3rdparty/freetype/src/cid/ciderrs.h"
    "${ROOT}/src/3rdparty/freetype/src/cid/cidgload.c"
    "${ROOT}/src/3rdparty/freetype/src/cid/cidgload.h"
    "${ROOT}/src/3rdparty/freetype/src/cid/cidload.c"
    "${ROOT}/src/3rdparty/freetype/src/cid/cidload.h"
    "${ROOT}/src/3rdparty/freetype/src/cid/cidobjs.c"
    "${ROOT}/src/3rdparty/freetype/src/cid/cidobjs.h"
    "${ROOT}/src/3rdparty/freetype/src/cid/cidparse.c"
    "${ROOT}/src/3rdparty/freetype/src/cid/cidparse.h"
    "${ROOT}/src/3rdparty/freetype/src/cid/cidriver.c"
    "${ROOT}/src/3rdparty/freetype/src/cid/cidriver.h"
    "${ROOT}/src/3rdparty/freetype/src/cid/cidtoken.h"
    "${ROOT}/src/3rdparty/freetype/src/cid/type1cid.c"
    )

set(src_3rdparty_freetype_gzip
    "${ROOT}/src/3rdparty/freetype/src/gzip/adler32.c"
    "${ROOT}/src/3rdparty/freetype/src/gzip/ftgzip.c"
    "${ROOT}/src/3rdparty/freetype/src/gzip/infblock.c"
    "${ROOT}/src/3rdparty/freetype/src/gzip/infblock.h"
    "${ROOT}/src/3rdparty/freetype/src/gzip/infcodes.c"
    "${ROOT}/src/3rdparty/freetype/src/gzip/infcodes.h"
    "${ROOT}/src/3rdparty/freetype/src/gzip/inffixed.h"
    "${ROOT}/src/3rdparty/freetype/src/gzip/inflate.c"
    "${ROOT}/src/3rdparty/freetype/src/gzip/inftrees.c"
    "${ROOT}/src/3rdparty/freetype/src/gzip/inftrees.h"
    "${ROOT}/src/3rdparty/freetype/src/gzip/infutil.c"
    "${ROOT}/src/3rdparty/freetype/src/gzip/infutil.h"
    "${ROOT}/src/3rdparty/freetype/src/gzip/zconf.h"
    "${ROOT}/src/3rdparty/freetype/src/gzip/zlib.h"
    "${ROOT}/src/3rdparty/freetype/src/gzip/zutil.c"
    "${ROOT}/src/3rdparty/freetype/src/gzip/zutil.h"
    )

set(src_3rdparty_freetype_lzw
    "${ROOT}/src/3rdparty/freetype/src/lzw/ftlzw.c"
    "${ROOT}/src/3rdparty/freetype/src/lzw/zopen.c"
    "${ROOT}/src/3rdparty/freetype/src/lzw/zopen.h"
    )

set(src_3rdparty_freetype_pcf
    "${ROOT}/src/3rdparty/freetype/src/pcf/pcf.c"
    "${ROOT}/src/3rdparty/freetype/src/pcf/pcf.h"
    "${ROOT}/src/3rdparty/freetype/src/pcf/pcfdrivr.c"
    "${ROOT}/src/3rdparty/freetype/src/pcf/pcfdrivr.h"
    "${ROOT}/src/3rdparty/freetype/src/pcf/pcferror.h"
    "${ROOT}/src/3rdparty/freetype/src/pcf/pcfread.c"
    "${ROOT}/src/3rdparty/freetype/src/pcf/pcfread.h"
    "${ROOT}/src/3rdparty/freetype/src/pcf/pcfutil.c"
    "${ROOT}/src/3rdparty/freetype/src/pcf/pcfutil.h"
    )

set(src_3rdparty_freetype_pfr
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfr.c"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrcmap.c"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrcmap.h"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrdrivr.c"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrdrivr.h"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrerror.h"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrgload.c"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrgload.h"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrload.c"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrload.h"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrobjs.c"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrobjs.h"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrsbit.c"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrsbit.h"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrtypes.h"
    )

set(src_3rdparty_freetype_psaux
    "${ROOT}/src/3rdparty/freetype/src/psaux/psaux.c"
    "${ROOT}/src/3rdparty/freetype/src/psaux/psauxerr.h"
    "${ROOT}/src/3rdparty/freetype/src/psaux/psauxmod.c"
    "${ROOT}/src/3rdparty/freetype/src/psaux/psauxmod.h"
    "${ROOT}/src/3rdparty/freetype/src/psaux/psobjs.c"
    "${ROOT}/src/3rdparty/freetype/src/psaux/psobjs.h"
    "${ROOT}/src/3rdparty/freetype/src/psaux/t1cmap.c"
    "${ROOT}/src/3rdparty/freetype/src/psaux/t1cmap.h"
    "${ROOT}/src/3rdparty/freetype/src/psaux/t1decode.c"
    "${ROOT}/src/3rdparty/freetype/src/psaux/t1decode.h"
    )

set(src_3rdparty_freetype_pshinter
    "${ROOT}/src/3rdparty/freetype/src/pshinter/pshalgo.c"
    "${ROOT}/src/3rdparty/freetype/src/pshinter/pshalgo.h"
    "${ROOT}/src/3rdparty/freetype/src/pshinter/pshglob.c"
    "${ROOT}/src/3rdparty/freetype/src/pshinter/pshglob.h"
    "${ROOT}/src/3rdparty/freetype/src/pshinter/pshinter.c"
    "${ROOT}/src/3rdparty/freetype/src/pshinter/pshmod.c"
    "${ROOT}/src/3rdparty/freetype/src/pshinter/pshmod.h"
    "${ROOT}/src/3rdparty/freetype/src/pshinter/pshnterr.h"
    "${ROOT}/src/3rdparty/freetype/src/pshinter/pshrec.c"
    "${ROOT}/src/3rdparty/freetype/src/pshinter/pshrec.h"
    )

set(src_3rdparty_freetype_psnames
    "${ROOT}/src/3rdparty/freetype/src/psnames/psmodule.c"
    "${ROOT}/src/3rdparty/freetype/src/psnames/psmodule.h"
    "${ROOT}/src/3rdparty/freetype/src/psnames/psnamerr.h"
    "${ROOT}/src/3rdparty/freetype/src/psnames/psnames.c"
    "${ROOT}/src/3rdparty/freetype/src/psnames/pstables.h"
    )

set(src_3rdparty_freetype_raster
    "${ROOT}/src/3rdparty/freetype/src/raster/ftraster.c"
    "${ROOT}/src/3rdparty/freetype/src/raster/ftraster.h"
    "${ROOT}/src/3rdparty/freetype/src/raster/ftrend1.c"
    "${ROOT}/src/3rdparty/freetype/src/raster/ftrend1.h"
    "${ROOT}/src/3rdparty/freetype/src/raster/raster.c"
    "${ROOT}/src/3rdparty/freetype/src/raster/rasterrs.h"
    )

set(src_3rdparty_freetype_sfnt
    "${ROOT}/src/3rdparty/freetype/src/sfnt/sfdriver.c"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/sfdriver.h"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/sferrors.h"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/sfnt.c"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/sfobjs.c"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/sfobjs.h"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/ttcmap0.c"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/ttcmap0.h"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/ttload.c"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/ttload.h"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/ttpost.c"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/ttpost.h"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/ttsbit.c"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/ttsbit.h"
    )

set(src_3rdparty_freetype_smooth
    "${ROOT}/src/3rdparty/freetype/src/smooth/ftgrays.c"
    "${ROOT}/src/3rdparty/freetype/src/smooth/ftgrays.h"
    "${ROOT}/src/3rdparty/freetype/src/smooth/ftsmerrs.h"
    "${ROOT}/src/3rdparty/freetype/src/smooth/ftsmooth.c"
    "${ROOT}/src/3rdparty/freetype/src/smooth/ftsmooth.h"
    "${ROOT}/src/3rdparty/freetype/src/smooth/smooth.c"
    )

set(src_3rdparty_freetype_truetype
    "${ROOT}/src/3rdparty/freetype/src/truetype/truetype.c"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttdriver.c"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttdriver.h"
    "${ROOT}/src/3rdparty/freetype/src/truetype/tterrors.h"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttgload.c"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttgload.h"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttgxvar.c"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttgxvar.h"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttinterp.c"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttinterp.h"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttobjs.c"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttobjs.h"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttpload.c"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttpload.h"
    )

set(src_3rdparty_freetype_type1
    "${ROOT}/src/3rdparty/freetype/src/type1/t1afm.c"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1afm.h"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1driver.c"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1driver.h"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1errors.h"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1gload.c"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1gload.h"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1load.c"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1load.h"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1objs.c"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1objs.h"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1parse.c"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1parse.h"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1tokens.h"
    "${ROOT}/src/3rdparty/freetype/src/type1/type1.c"
    )

set(src_3rdparty_freetype_type42
    "${ROOT}/src/3rdparty/freetype/src/type42/t42drivr.c"
    "${ROOT}/src/3rdparty/freetype/src/type42/t42drivr.h"
    "${ROOT}/src/3rdparty/freetype/src/type42/t42error.h"
    "${ROOT}/src/3rdparty/freetype/src/type42/t42objs.c"
    "${ROOT}/src/3rdparty/freetype/src/type42/t42objs.h"
    "${ROOT}/src/3rdparty/freetype/src/type42/t42parse.c"
    "${ROOT}/src/3rdparty/freetype/src/type42/t42parse.h"
    "${ROOT}/src/3rdparty/freetype/src/type42/t42types.h"
    "${ROOT}/src/3rdparty/freetype/src/type42/type42.c"
    )

set(src_3rdparty_freetype_winfonts
    "${ROOT}/src/3rdparty/freetype/src/winfonts/fnterrs.h"
    "${ROOT}/src/3rdparty/freetype/src/winfonts/winfnt.c"
    "${ROOT}/src/3rdparty/freetype/src/winfonts/winfnt.h"
    )

source_group("Source Files\\FreeType\\autohint" FILES ${src_3rdparty_freetype_autohint})
source_group("Source Files\\FreeType\\base" FILES ${src_3rdparty_freetype_base})
source_group("Source Files\\FreeType\\bdf" FILES ${src_3rdparty_freetype_bdf})
source_group("Source Files\\FreeType\\cff" FILES ${src_3rdparty_freetype_cff})
source_group("Source Files\\FreeType\\cid" FILES ${src_3rdparty_freetype_cid})
source_group("Source Files\\FreeType\\gzip" FILES ${src_3rdparty_freetype_gzip})
source_group("Source Files\\FreeType\\lzw" FILES ${src_3rdparty_freetype_lzw})
source_group("Source Files\\FreeType\\pcf" FILES ${src_3rdparty_freetype_pcf})
source_group("Source Files\\FreeType\\pfr" FILES ${src_3rdparty_freetype_pfr})
source_group("Source Files\\FreeType\\psaux" FILES ${src_3rdparty_freetype_psaux})
source_group("Source Files\\FreeType\\pshinter" FILES ${src_3rdparty_freetype_pshinter})
source_group("Source Files\\FreeType\\psnames" FILES ${src_3rdparty_freetype_psnames})
source_group("Source Files\\FreeType\\raster" FILES ${src_3rdparty_freetype_raster})
source_group("Source Files\\FreeType\\sfnt" FILES ${src_3rdparty_freetype_sfnt})
source_group("Source Files\\FreeType\\smooth" FILES ${src_3rdparty_freetype_smooth})
source_group("Source Files\\FreeType\\truetype" FILES ${src_3rdparty_freetype_truetype})
source_group("Source Files\\FreeType\\type1" FILES ${src_3rdparty_freetype_type1})
source_group("Source Files\\FreeType\\type42" FILES ${src_3rdparty_freetype_type42})
source_group("Source Files\\FreeType\\winfonts" FILES ${src_3rdparty_freetype_winfonts})

set_source_files_properties(
    "${ROOT}/src/3rdparty/freetype/src/autohint/ahangles.c"
    "${ROOT}/src/3rdparty/freetype/src/autohint/ahglobal.c"
    "${ROOT}/src/3rdparty/freetype/src/autohint/ahglyph.c"
    "${ROOT}/src/3rdparty/freetype/src/autohint/ahhint.c"
    "${ROOT}/src/3rdparty/freetype/src/autohint/ahmodule.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftcalc.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftdbgmem.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftgloadr.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftmac.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftnames.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftobjs.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftoutln.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftrfork.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftstream.c"
    "${ROOT}/src/3rdparty/freetype/src/base/fttrigon.c"
    "${ROOT}/src/3rdparty/freetype/src/base/ftutil.c"
    "${ROOT}/src/3rdparty/freetype/src/bdf/bdfdrivr.c"
    "${ROOT}/src/3rdparty/freetype/src/bdf/bdflib.c"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffcmap.c"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffdrivr.c"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffgload.c"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffload.c"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffobjs.c"
    "${ROOT}/src/3rdparty/freetype/src/cff/cffparse.c"
    "${ROOT}/src/3rdparty/freetype/src/cid/ciderrs.h"
    "${ROOT}/src/3rdparty/freetype/src/cid/cidgload.c"
    "${ROOT}/src/3rdparty/freetype/src/cid/cidload.c"
    "${ROOT}/src/3rdparty/freetype/src/cid/cidobjs.c"
    "${ROOT}/src/3rdparty/freetype/src/cid/cidparse.c"
    "${ROOT}/src/3rdparty/freetype/src/cid/cidriver.c"
    "${ROOT}/src/3rdparty/freetype/src/gzip/adler32.c"
    "${ROOT}/src/3rdparty/freetype/src/gzip/infblock.c"
    "${ROOT}/src/3rdparty/freetype/src/gzip/infcodes.c"
    "${ROOT}/src/3rdparty/freetype/src/gzip/inflate.c"
    "${ROOT}/src/3rdparty/freetype/src/gzip/inftrees.c"
    "${ROOT}/src/3rdparty/freetype/src/gzip/infutil.c"
    "${ROOT}/src/3rdparty/freetype/src/gzip/zutil.c"
    "${ROOT}/src/3rdparty/freetype/src/lzw/zopen.c"
    "${ROOT}/src/3rdparty/freetype/src/pcf/pcfdrivr.c"
    "${ROOT}/src/3rdparty/freetype/src/pcf/pcfread.c"
    "${ROOT}/src/3rdparty/freetype/src/pcf/pcfutil.c"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrcmap.c"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrdrivr.c"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrgload.c"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrload.c"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrobjs.c"
    "${ROOT}/src/3rdparty/freetype/src/pfr/pfrsbit.c"
    "${ROOT}/src/3rdparty/freetype/src/psaux/psauxmod.c"
    "${ROOT}/src/3rdparty/freetype/src/psaux/psobjs.c"
    "${ROOT}/src/3rdparty/freetype/src/psaux/t1cmap.c"
    "${ROOT}/src/3rdparty/freetype/src/psaux/t1decode.c"
    "${ROOT}/src/3rdparty/freetype/src/pshinter/pshalgo.c"
    "${ROOT}/src/3rdparty/freetype/src/pshinter/pshglob.c"
    "${ROOT}/src/3rdparty/freetype/src/pshinter/pshmod.c"
    "${ROOT}/src/3rdparty/freetype/src/pshinter/pshrec.c"
    "${ROOT}/src/3rdparty/freetype/src/psnames/psmodule.c"
    "${ROOT}/src/3rdparty/freetype/src/raster/ftraster.c"
    "${ROOT}/src/3rdparty/freetype/src/raster/ftrend1.c"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/sfdriver.c"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/sfobjs.c"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/ttcmap0.c"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/ttload.c"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/ttpost.c"
    "${ROOT}/src/3rdparty/freetype/src/sfnt/ttsbit.c"
    "${ROOT}/src/3rdparty/freetype/src/smooth/ftgrays.c"
    "${ROOT}/src/3rdparty/freetype/src/smooth/ftsmooth.c"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttdriver.c"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttgload.c"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttgxvar.c"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttinterp.c"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttobjs.c"
    "${ROOT}/src/3rdparty/freetype/src/truetype/ttpload.c"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1afm.c"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1driver.c"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1gload.c"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1load.c"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1objs.c"
    "${ROOT}/src/3rdparty/freetype/src/type1/t1parse.c"
    "${ROOT}/src/3rdparty/freetype/src/type42/t42drivr.c"
    "${ROOT}/src/3rdparty/freetype/src/type42/t42objs.c"
    "${ROOT}/src/3rdparty/freetype/src/type42/t42parse.c"
    PROPERTIES HEADER_FILE_ONLY TRUE
    )

set(src_3rdparty_freetype
    ${src_3rdparty_freetype_autohint}
    ${src_3rdparty_freetype_base}
    ${src_3rdparty_freetype_bdf}
    ${src_3rdparty_freetype_cff}
    ${src_3rdparty_freetype_cid}
    ${src_3rdparty_freetype_gzip}
    ${src_3rdparty_freetype_lzw}
    ${src_3rdparty_freetype_pcf}
    ${src_3rdparty_freetype_pfr}
    ${src_3rdparty_freetype_psaux}
    ${src_3rdparty_freetype_pshinter}
    ${src_3rdparty_freetype_psnames}
    ${src_3rdparty_freetype_raster}
    ${src_3rdparty_freetype_sfnt}
    ${src_3rdparty_freetype_smooth}
    ${src_3rdparty_freetype_truetype}
    ${src_3rdparty_freetype_type1}
    ${src_3rdparty_freetype_type42}
    ${src_3rdparty_freetype_winfonts}
    )
