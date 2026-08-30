#!/usr/bin/env python3
from pathlib import Path
import shutil

ROOT = Path.cwd()
GLOBAL = ROOT / "include/global.h"

if not GLOBAL.exists():
    raise SystemExit("ERRO: rode na raiz do pokeemerald-expansion (não achei include/global.h).")

text = GLOBAL.read_text()

if "struct RadioSaveData radioSave;" in text:
    raise SystemExit(
        "ERRO: detectei o patch experimental V8 antigo no global.h.\n"
        "Restaure include/global.h.before_radio_save_v8 primeiro."
    )

definitions = r"""
// ==========================================================================
// HLW SAVE ABI - FREEZE TARGET FOR RELEASE 1.0
//
// AFTER 1.0:
//   * do not move hlwSave
//   * do not change sizeof(struct HLWSaveExtension)
//   * consume bytes from future[]
//   * migrate by version when bytes gain meaning
// ==========================================================================
#define HLW_SAVE_EXTENSION_SIZE 512

struct RadioSaveData
{
    u32 magic;
    u32 shuffleState;
    u16 currentSong;
    u16 version;

    u8 station;
    u8 favoritesCount;
    u8 playlistCount;
    u8 flags;

    u16 favorites[32];
    u16 playlist[32];

    u8 reserved[8];
};

STATIC_ASSERT(sizeof(struct RadioSaveData) == 152, RadioSaveDataSize);

struct HLWSaveExtension
{
    u32 magic;
    u16 version;
    u16 size;

    struct RadioSaveData radio;

    // Raw reserved area. Radio V8.2 consumes only its first 56 bytes for
    // Playlist 2/3 storage, leaving 296 bytes for future HLW features.
    u8 future[352];
};

STATIC_ASSERT(sizeof(struct HLWSaveExtension) == HLW_SAVE_EXTENSION_SIZE, HLWSaveExtensionSize);

"""

changed = False

if "struct HLWSaveExtension" not in text:
    anchor = "struct SaveBlock1\n{"
    if anchor not in text:
        raise SystemExit("ERRO: não achei struct SaveBlock1.")
    text = text.replace(anchor, definitions + anchor, 1)
    changed = True
else:
    required = (
        "#define HLW_SAVE_EXTENSION_SIZE 512",
        "struct RadioSaveData",
        "u16 favorites[32];",
        "u16 playlist[32];",
        "u8 reserved[8];",
        "struct HLWSaveExtension",
        "struct RadioSaveData radio;",
        "u8 future[352];",
        "STATIC_ASSERT(sizeof(struct RadioSaveData) == 152",
        "STATIC_ASSERT(sizeof(struct HLWSaveExtension) == HLW_SAVE_EXTENSION_SIZE",
    )
    missing = [needle for needle in required if needle not in text]
    if missing:
        raise SystemExit(
            "ERRO: já existe um HLWSaveExtension, mas ele não bate com o ABI V8.1/V8.2 esperado.\n"
            "Não vou mexer automaticamente para não arriscar offsets do save.\n"
            "Faltando: " + ", ".join(missing)
        )

save_start = text.find("struct SaveBlock1\n{")
if save_start < 0:
    raise SystemExit("ERRO: não achei struct SaveBlock1.")

brace_start = text.find("{", save_start)
depth = 0
save_close = None

for i in range(brace_start, len(text)):
    if text[i] == "{":
        depth += 1
    elif text[i] == "}":
        depth -= 1
        if depth == 0:
            save_close = i
            break

if save_close is None:
    raise SystemExit("ERRO: não consegui achar o fim do SaveBlock1.")

save_body = text[save_start:save_close]

if "struct HLWSaveExtension hlwSave;" not in save_body:
    field = r"""
    // HLW persistent extension.
    // APPENDED at the end so older SaveBlock1 fields keep their offsets.
    struct HLWSaveExtension hlwSave;
"""
    text = text[:save_close] + field + text[save_close:]
    changed = True

if changed:
    backup = GLOBAL.with_name("global.h.before_hlw_save_abi_v2_three_playlists")
    if not backup.exists():
        shutil.copyfile(GLOBAL, backup)
        backup.touch()
        print("[BACKUP]", backup)

    GLOBAL.write_text(text)
    GLOBAL.touch()
    print("[OK] HLW Save ABI instalado/ajustado")
else:
    print("[OK] HLW Save ABI já estava correto; global.h não foi alterado")

print("     Extension total        : 512 bytes (INALTERADO)")
print("     RadioSaveData          : 152 bytes (INALTERADO)")
print("     future[] bruto         : 352 bytes")
print("     Playlists 2/3 em future: 56 bytes")
print("     future[] ainda livre   : 296 bytes")
