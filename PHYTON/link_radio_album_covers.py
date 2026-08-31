#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import struct

SCRIPT = Path(__file__).resolve()

COVERS = {
    "3doorsdown": [
        "MUS_KRYPTONITE",
    ],
    "aroundthefur": [
        "MUS_MY_OWN_SUMMER",
        "MUS_BE_QUIET_AND_DRIVE",
        "MUS_AROUND_THE_FUR",
    ],
    "eravulgaris": [
        "MUS_3S_AND_7S",
    ],
    "hybridtheory": [
        "MUS_CRAWLING",
    ],
    "koinoyokan": [
        "MUS_ROSEMARY_DEFTONES",
    ],
    "likeclockwork": [
        "MUS_MY_GOD_IS_THE_SUN",
    ],
    "meteora": [
        "MUS_FAINT",
        "MUS_EASIER_TO_RUN",
        "MUS_BREAKING_THE_HABIT",
    ],
    "onex": [
        "MUS_ANIMAL_I_HAVE_BECOME",
    ],
    "songsforthedeaf": [
        "MUS_GO_WITH_THE_FLOW",
    ],
    "whitepony": [
        "MUS_CHANGE_IN_THE_HOUSE_OF_FLIES",
    ],
}

COVER_ENUMS = {
    "3doorsdown": "RADIO_COVER_3DOORSDOWN",
    "aroundthefur": "RADIO_COVER_AROUND_THE_FUR",
    "eravulgaris": "RADIO_COVER_ERA_VULGARIS",
    "hybridtheory": "RADIO_COVER_HYBRID_THEORY",
    "koinoyokan": "RADIO_COVER_KOI_NO_YOKAN",
    "likeclockwork": "RADIO_COVER_LIKE_CLOCKWORK",
    "meteora": "RADIO_COVER_METEORA",
    "onex": "RADIO_COVER_ONE_X",
    "songsforthedeaf": "RADIO_COVER_SONGS_FOR_THE_DEAF",
    "whitepony": "RADIO_COVER_WHITE_PONY",
}

C_IDENT = {
    "3doorsdown": "ThreeDoorsDown",
    "aroundthefur": "AroundTheFur",
    "eravulgaris": "EraVulgaris",
    "hybridtheory": "HybridTheory",
    "koinoyokan": "KoiNoYokan",
    "likeclockwork": "LikeClockwork",
    "meteora": "Meteora",
    "onex": "OneX",
    "songsforthedeaf": "SongsForTheDeaf",
    "whitepony": "WhitePony",
}

def die(msg):
    raise SystemExit("ERRO: " + msg)

def find_root():
    for p in (Path.cwd().resolve(), SCRIPT.parent.resolve(), SCRIPT.parent.parent.resolve()):
        if (p / "src/radio.c").exists() and (p / "include/constants/songs.h").exists():
            return p
    die(
        "nao achei a raiz do pokeemerald-expansion.\n"
        "Use:\n"
        "  cd ~/pokeemerald-expansion\n"
        "  python3 PHYTON/link_radio_album_covers.py"
    )

def parse_png_info(path):
    data = path.read_bytes()
    if len(data) < 33 or data[:8] != b"\x89PNG\r\n\x1a\n":
        die(f"{path} nao e PNG valido")

    if data[12:16] != b"IHDR":
        die(f"{path}: IHDR ausente")

    width, height, bit_depth, color_type = struct.unpack(">IIBB", data[16:26])

    palette_entries = None
    pos = 8
    while pos + 12 <= len(data):
        length = struct.unpack(">I", data[pos:pos+4])[0]
        ctype = data[pos+4:pos+8]
        payload = data[pos+8:pos+8+length]
        if ctype == b"PLTE":
            palette_entries = len(payload) // 3
            break
        pos += 12 + length

    return width, height, bit_depth, color_type, palette_entries

def parse_defines(text):
    return {
        m.group(1): m.group(2)
        for m in re.finditer(
            r"^\s*#define\s+([A-Za-z0-9_]+)\s+([^\s/]+)",
            text,
            re.M,
        )
    }

def resolve_value(token, defs, seen=None):
    token = token.strip()
    seen = set() if seen is None else seen
    try:
        return int(token, 0)
    except ValueError:
        pass
    if token in seen or token not in defs:
        return None
    seen.add(token)
    return resolve_value(defs[token], defs, seen)

def find_struct_initializer_end(text, marker):
    start = text.find(marker)
    if start < 0:
        return None
    brace = text.find("{", start)
    if brace < 0:
        return None
    depth = 0
    for i in range(brace, len(text)):
        if text[i] == "{":
            depth += 1
        elif text[i] == "}":
            depth -= 1
            if depth == 0:
                semi = text.find(";", i)
                if semi < 0:
                    return None
                return semi + 1
    return None

ROOT = find_root()
RADIO_C = ROOT / "src/radio.c"
SONGS_H = ROOT / "include/constants/songs.h"
COVERS_DIR = ROOT / "graphics/radio/covers"
BACKUP_DIR = ROOT / "PHYTON/_backups/radio_album_covers_link_v1"

if not COVERS_DIR.is_dir():
    die("nao achei graphics/radio/covers/")

print("Validando capas 64x64 indexadas...")
for stem in COVERS:
    path = COVERS_DIR / f"{stem}.png"
    if not path.exists():
        candidates = [
            p for p in COVERS_DIR.glob(stem + ".*")
            if p.suffix.lower() == ".png"
        ]
        if len(candidates) == 1:
            path = candidates[0]
        else:
            die(f"nao achei {COVERS_DIR / (stem + '.png')}")

    w, h, depth, ctype, palette_entries = parse_png_info(path)
    if (w, h) != (64, 64):
        die(f"{path.name}: esperado 64x64, achei {w}x{h}")
    if ctype != 3:
        die(f"{path.name}: precisa ser PNG INDEXADO")
    if palette_entries is None or palette_entries > 16:
        die(f"{path.name}: esperado no maximo 16 cores, achei {palette_entries}")
    print(f"[OK] {path.name}: {w}x{h}, indexed, {palette_entries} cores")

songs_text = SONGS_H.read_text(encoding="utf-8")
defs = parse_defines(songs_text)

all_macros = [macro for macros in COVERS.values() for macro in macros]
missing = [macro for macro in all_macros if macro not in defs]
if missing:
    die("faltam macros em songs.h: " + ", ".join(missing))

bad_ids = []
for macro in all_macros:
    value = resolve_value(macro, defs)
    if value is None:
        bad_ids.append(f"{macro}=nao resolvido")
    elif not (0 <= value <= 0xFFFF):
        bad_ids.append(f"{macro}={value}")

if bad_ids:
    die(
        "ha song IDs fora de u16: "
        + ", ".join(bad_ids)
        + "\nCorrija os IDs antes de instalar as capas."
    )

text = RADIO_C.read_text(encoding="utf-8")

if "RADIO_ALBUM_COVERS_LINK_V1" in text:
    print("[OK] Album covers ja estao linkadas no radio.c.")
    raise SystemExit(0)

BACKUP_DIR.mkdir(parents=True, exist_ok=True)
backup = BACKUP_DIR / "radio.c.before_album_covers_link_v1"
if not backup.exists():
    shutil.copyfile(RADIO_C, backup)
    backup.touch()
    print("[BACKUP]", backup.relative_to(ROOT))

state_anchor = "static EWRAM_DATA u8 sRadioBtnSelectId;"
if state_anchor not in text:
    die("anchor sRadioBtnSelectId nao encontrado")

state_insert = '''
// RADIO_ALBUM_COVERS_LINK_V1
// Static 64x64 album artwork replaces Jigglypuff only for mapped songs.
static EWRAM_DATA u8 sRadioCoverSpriteId;
static EWRAM_DATA u8 sRadioCurrentCoverId;
'''
text = text.replace(state_anchor, state_anchor + state_insert, 1)

jig_template_marker = "static const struct SpriteTemplate sSpriteTemplate_RadioJig ="
jig_end = find_struct_initializer_end(text, jig_template_marker)
if jig_end is None:
    die("nao achei sSpriteTemplate_RadioJig")

asset_defs = []
for stem in COVERS:
    ident = C_IDENT[stem]
    asset_defs.append(
        f'static const u16 sRadioCover{ident}_Pal[] = '
        f'INCBIN_U16("graphics/radio/covers/{stem}.gbapal");'
    )
    asset_defs.append(
        f'static const u32 sRadioCover{ident}_Gfx[] = '
        f'INCBIN_U32("graphics/radio/covers/{stem}.4bpp.smol");'
    )

enum_lines = [
    "enum RadioAlbumCoverId",
    "{",
]
for stem in COVERS:
    enum_lines.append(f"    {COVER_ENUMS[stem]},")
enum_lines += [
    "    RADIO_COVER_COUNT,",
    "};",
    "",
    "#define RADIO_COVER_NONE 0xFF",
    "#define TAG_RADIO_COVER  0xD10F",
]

sheet_lines = [
    "static const struct CompressedSpriteSheet sRadioCoverSheets[RADIO_COVER_COUNT] =",
    "{",
]
pal_lines = [
    "static const struct SpritePalette sRadioCoverPalettes[RADIO_COVER_COUNT] =",
    "{",
]
for stem in COVERS:
    enum_id = COVER_ENUMS[stem]
    ident = C_IDENT[stem]
    sheet_lines.append(
        f"    [{enum_id}] = {{sRadioCover{ident}_Gfx, 0x800, TAG_RADIO_COVER}},"
    )
    pal_lines.append(
        f"    [{enum_id}] = {{sRadioCover{ident}_Pal, TAG_RADIO_COVER}},"
    )
sheet_lines.append("};")
pal_lines.append("};")

cover_block = (
    "\n\n"
    "// ===========================================================================\n"
    "// RADIO ALBUM COVERS - static 64x64 OBJ artwork\n"
    "// Palette index 0 is transparent in GBA OBJ mode.\n"
    "// ===========================================================================\n\n"
    + "\n".join(enum_lines)
    + "\n\n"
    + "\n".join(asset_defs)
    + "\n\n"
    + '''static const struct OamData sOamData_RadioCover =
{
    .y          = DISPLAY_HEIGHT,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode    = ST_OAM_OBJ_NORMAL,
    .bpp        = ST_OAM_4BPP,
    .shape      = SPRITE_SHAPE(64x64),
    .size       = SPRITE_SIZE(64x64),
    .priority   = 0,
};

static const union AnimCmd sAnim_RadioCover[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd *const sAnims_RadioCover[] =
{
    sAnim_RadioCover,
};

static const struct SpriteTemplate sSpriteTemplate_RadioCover =
{
    .tileTag     = TAG_RADIO_COVER,
    .paletteTag  = TAG_RADIO_COVER,
    .oam         = &sOamData_RadioCover,
    .anims       = sAnims_RadioCover,
    .images      = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback    = SpriteCallbackDummy,
};

'''
    + "\n".join(sheet_lines)
    + "\n\n"
    + "\n".join(pal_lines)
    + "\n"
)

text = text[:jig_end] + cover_block + text[jig_end:]

create_anchor = "static void Radio_CreateSprites(void)"
create_pos = text.find(create_anchor)
if create_pos < 0:
    die("Radio_CreateSprites nao encontrado")

if "#define RADIO_JIG_X" not in text[:create_pos]:
    die("RADIO_JIG_X precisa existir antes de Radio_CreateSprites")

switch_lines = [
    "static u8 Radio_GetAlbumCoverForSong(u16 songId)",
    "{",
    "    switch (songId)",
    "    {",
]
for stem, macros in COVERS.items():
    for macro in macros:
        switch_lines.append(f"    case {macro}:")
    switch_lines.append(f"        return {COVER_ENUMS[stem]};")
switch_lines += [
    "    default:",
    "        return RADIO_COVER_NONE;",
    "    }",
    "}",
]

runtime_block = (
    "\n"
    + "\n".join(switch_lines)
    + '''

static void Radio_DestroyAlbumCoverSprite(void)
{
    if (sRadioCoverSpriteId < MAX_SPRITES)
    {
        DestroySprite(&gSprites[sRadioCoverSpriteId]);
        sRadioCoverSpriteId = 0xFF;
    }

    FreeSpriteTilesByTag(TAG_RADIO_COVER);
    FreeSpritePaletteByTag(TAG_RADIO_COVER);
}

static void Radio_UpdateAlbumCover(void)
{
    u8 coverId;

    if (sRadioJigSpriteId >= MAX_SPRITES)
        return;

    coverId = Radio_GetAlbumCoverForSong(sRadioCurrentSong);

    if (coverId == sRadioCurrentCoverId)
        return;

    if (sRadioCoverSpriteId < MAX_SPRITES)
        Radio_DestroyAlbumCoverSprite();

    sRadioCurrentCoverId = coverId;

    if (coverId == RADIO_COVER_NONE)
    {
        gSprites[sRadioJigSpriteId].invisible = FALSE;
        return;
    }

    gSprites[sRadioJigSpriteId].invisible = TRUE;

    LoadCompressedSpriteSheet(&sRadioCoverSheets[coverId]);
    LoadSpritePalette(&sRadioCoverPalettes[coverId]);

    sRadioCoverSpriteId = CreateSprite(
        &sSpriteTemplate_RadioCover,
        RADIO_JIG_X,
        RADIO_JIG_Y,
        0
    );

    if (sRadioCoverSpriteId >= MAX_SPRITES)
    {
        sRadioCoverSpriteId = 0xFF;
        FreeSpriteTilesByTag(TAG_RADIO_COVER);
        FreeSpritePaletteByTag(TAG_RADIO_COVER);
        gSprites[sRadioJigSpriteId].invisible = FALSE;
    }
}

'''
)

text = text[:create_pos] + runtime_block + text[create_pos:]

init_anchor = "    sRadioBtnSelectId = 0xFF;"
if init_anchor not in text:
    die("inicializacao de sRadioBtnSelectId nao encontrada")

text = text.replace(
    init_anchor,
    init_anchor
    + '''
    sRadioCoverSpriteId = 0xFF;
    sRadioCurrentCoverId = RADIO_COVER_NONE;
''',
    1,
)

cb_anchor = "static void CB2_Radio(void)\n{\n    RunTasks();"
if cb_anchor not in text:
    die("CB2_Radio com RunTasks nao encontrado")

text = text.replace(
    cb_anchor,
    "static void CB2_Radio(void)\n{\n    RunTasks();\n    Radio_UpdateAlbumCover();",
    1,
)

required = [
    "RADIO_ALBUM_COVERS_LINK_V1",
    "Radio_GetAlbumCoverForSong",
    "Radio_UpdateAlbumCover",
    "sRadioCoverSheets",
    "sRadioCoverPalettes",
    "RADIO_COVER_METEORA",
    "MUS_EASIER_TO_RUN",
    "MUS_CRAWLING",
    "MUS_ANIMAL_I_HAVE_BECOME",
]
for item in required:
    if item not in text:
        die("sanity check falhou: " + item)

RADIO_C.write_text(text, encoding="utf-8")
RADIO_C.touch()

print()
print("[OK] Capas linkadas ao Radio")
print()
print("Mapa instalado:")
for stem, macros in COVERS.items():
    print(f"  {stem}.png")
    for macro in macros:
        print(f"    -> {macro}")

print()
print("Comportamento:")
print("  musica mapeada     -> cover estatica 64x64")
print("  musica nao mapeada -> Jigglypuff normal")
print("  posicao             -> exatamente RADIO_JIG_X / RADIO_JIG_Y")
print()
print("Agora rode:")
print("  make -j9")
