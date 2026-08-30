#!/usr/bin/env python3
from pathlib import Path
import re
import shutil

ROOT = Path.cwd()
RADIO = ROOT / "src/radio.c"

if not RADIO.exists():
    raise SystemExit("ERRO: rode este Python na raiz do pokeemerald-expansion.")

text = RADIO.read_text()

required = [
    "STATION_GAMES",
    "MUS_UMINEKO_HOPE",
    "MUS_SCARS_OF_TIME",
    "MUS_MIDNAS_LAMENT",
    "MUS_TETRIS_MAIN_THEME",
    "MUS_THE_YOUNG_PHOTOGRAPHER",
    "MUS_HOPE_GRAND_CHASE",
    "MUS_GLAST_HEIM_THEME",
    "MUS_THEME_OF_PRONTERA",
]
missing = [x for x in required if x not in text]
if missing:
    raise SystemExit("ERRO: radio.c nao parece ser a V8.3/GAMES esperada. Faltando: " + ", ".join(missing))

# Safety fix from the first GAMES package.
text = text.replace("600 MILLION IN C# MINOR (UMINEKO)", "600 MILLION IN C SHARP MINOR (UMINEKO)")

station = '''static const u16 sStation_Games[] = {
    // HLW original / in-game custom tracks
    MUS_HLW_DISTORTION_WORLD,
    MUS_HLW_VS_EVIL,
    MUS_HLW_PHOENIX_TOWN,

    // Chrono Cross / Zelda / Tetris / Pokemon Snap / Grand Chase
    MUS_SCARS_OF_TIME,
    MUS_MIDNAS_LAMENT,
    MUS_TETRIS_MAIN_THEME,
    MUS_THE_YOUNG_PHOTOGRAPHER,
    MUS_HOPE_GRAND_CHASE,

    // Ragnarok Online
    MUS_GLAST_HEIM_THEME,
    MUS_ANCIENT_GROOVER,
    MUS_DIVINE_GRACE,
    MUS_THEME_OF_MORROC,
    MUS_EVERLASTING_WANDERERS,
    MUS_THEME_OF_GEFFEN,
    MUS_THEME_OF_ALDEBARAN,
    MUS_THEME_OF_ALBERTA,
    MUS_THEME_OF_PRONTERA,

    // Umineko no Naku Koro ni
    MUS_UMINEKO_HOPE,
    MUS_UMINEKO_600_MILLION,
    MUS_UMINEKO_WINGLESS,
    MUS_UMINEKO_WORLDEND,
    MUS_UMINEKO_FAR,
    MUS_UMINEKO_WORLDEND_DOMINATOR,
    STATION_END
};'''

text, count = re.subn(
    r"static const u16 sStation_Games\[\] = \{.*?\n\};",
    station,
    text,
    count=1,
    flags=re.S,
)
if count != 1:
    raise SystemExit("ERRO: nao consegui localizar sStation_Games[].")

display = '''// ---------------------------------------------------------------------------
// Games Radio display names - OST title followed by the game/source.
// These labels also survive when a song is opened through Favorites,
// Search or one of the three playlists.
// ---------------------------------------------------------------------------
static const u8 sGamesName_HlwDistortionWorld[] = _("DISTORTION WORLD (HLW)");
static const u8 sGamesName_HlwVsEvil[] = _("VS EVIL (HLW)");
static const u8 sGamesName_HlwPhoenixTown[] = _("PHOENIX TOWN (HLW)");

static const u8 sGamesName_ScarsOfTime[] = _("SCARS OF TIME (CHRONO CROSS)");
static const u8 sGamesName_MidnasLament[] = _("MIDNAS LAMENT (ZELDA)");
static const u8 sGamesName_TetrisMainTheme[] = _("TETRIS MAIN THEME (TETRIS)");
static const u8 sGamesName_YoungPhotographer[] = _("THE YOUNG PHOTOGRAPHER (POKEMON SNAP)");
static const u8 sGamesName_HopeGrandChase[] = _("HOPE (GRAND CHASE)");

static const u8 sGamesName_GlastHeim[] = _("GLAST HEIM THEME (RAGNAROK)");
static const u8 sGamesName_AncientGroover[] = _("ANCIENT GROOVER (RAGNAROK)");
static const u8 sGamesName_DivineGrace[] = _("DIVINE GRACE (RAGNAROK)");
static const u8 sGamesName_ThemeOfMorroc[] = _("THEME OF MORROC (RAGNAROK)");
static const u8 sGamesName_EverlastingWanderers[] = _("EVERLASTING WANDERERS (RAGNAROK)");
static const u8 sGamesName_ThemeOfGeffen[] = _("THEME OF GEFFEN (RAGNAROK)");
static const u8 sGamesName_ThemeOfAldebaran[] = _("THEME OF ALDEBARAN (RAGNAROK)");
static const u8 sGamesName_ThemeOfAlberta[] = _("THEME OF ALBERTA (RAGNAROK)");
static const u8 sGamesName_ThemeOfProntera[] = _("THEME OF PRONTERA (RAGNAROK)");

static const u8 sGamesName_UminekoHope[] = _("HOPE (UMINEKO)");
static const u8 sGamesName_Umineko600Million[] = _("600 MILLION IN C SHARP MINOR (UMINEKO)");
static const u8 sGamesName_UminekoWingless[] = _("WINGLESS (UMINEKO)");
static const u8 sGamesName_UminekoWorldend[] = _("WORLDEND (UMINEKO)");
static const u8 sGamesName_UminekoFar[] = _("FAR (UMINEKO)");
static const u8 sGamesName_UminekoWorldendDominator[] = _("WORLDEND DOMINATOR (UMINEKO)");

static const u8 *Radio_GetGamesDisplayName(u16 songId)
{
    switch (songId)
    {
    case MUS_HLW_DISTORTION_WORLD:
        return sGamesName_HlwDistortionWorld;
    case MUS_HLW_VS_EVIL:
        return sGamesName_HlwVsEvil;
    case MUS_HLW_PHOENIX_TOWN:
        return sGamesName_HlwPhoenixTown;
    case MUS_SCARS_OF_TIME:
        return sGamesName_ScarsOfTime;
    case MUS_MIDNAS_LAMENT:
        return sGamesName_MidnasLament;
    case MUS_TETRIS_MAIN_THEME:
        return sGamesName_TetrisMainTheme;
    case MUS_THE_YOUNG_PHOTOGRAPHER:
        return sGamesName_YoungPhotographer;
    case MUS_HOPE_GRAND_CHASE:
        return sGamesName_HopeGrandChase;
    case MUS_GLAST_HEIM_THEME:
        return sGamesName_GlastHeim;
    case MUS_ANCIENT_GROOVER:
        return sGamesName_AncientGroover;
    case MUS_DIVINE_GRACE:
        return sGamesName_DivineGrace;
    case MUS_THEME_OF_MORROC:
        return sGamesName_ThemeOfMorroc;
    case MUS_EVERLASTING_WANDERERS:
        return sGamesName_EverlastingWanderers;
    case MUS_THEME_OF_GEFFEN:
        return sGamesName_ThemeOfGeffen;
    case MUS_THEME_OF_ALDEBARAN:
        return sGamesName_ThemeOfAldebaran;
    case MUS_THEME_OF_ALBERTA:
        return sGamesName_ThemeOfAlberta;
    case MUS_THEME_OF_PRONTERA:
        return sGamesName_ThemeOfProntera;
    case MUS_UMINEKO_HOPE:
        return sGamesName_UminekoHope;
    case MUS_UMINEKO_600_MILLION:
        return sGamesName_Umineko600Million;
    case MUS_UMINEKO_WINGLESS:
        return sGamesName_UminekoWingless;
    case MUS_UMINEKO_WORLDEND:
        return sGamesName_UminekoWorldend;
    case MUS_UMINEKO_FAR:
        return sGamesName_UminekoFar;
    case MUS_UMINEKO_WORLDEND_DOMINATOR:
        return sGamesName_UminekoWorldendDominator;
    default:
        return NULL;
    }
}'''

pattern = (
    r"// ---------------------------------------------------------------------------\n"
    r"// Games Radio display names.*?"
    r"static const u8 \*Radio_GetGamesDisplayName\(u16 songId\)\n"
    r"\{.*?\n\}"
)
text, count = re.subn(pattern, display, text, count=1, flags=re.S)
if count != 1:
    raise SystemExit("ERRO: nao consegui localizar Radio_GetGamesDisplayName().")

backup = RADIO.with_name("radio.c.before_games_full_ost_update")
if not backup.exists():
    shutil.copyfile(RADIO, backup)
    backup.touch()
    print("[BACKUP]", backup)

RADIO.write_text(text)
RADIO.touch()

print("[OK] GAMES RADIO ampliada")
print("     HLW              : 3")
print("     Chrono Cross     : 1")
print("     Zelda            : 1")
print("     Tetris           : 1")
print("     Pokemon Snap     : 1")
print("     Grand Chase      : 1")
print("     Ragnarok Online  : 9")
print("     Umineko          : 6")
print("     TOTAL            : 23 musicas")
print()
print("Agora rode:")
print("  make -j9")
