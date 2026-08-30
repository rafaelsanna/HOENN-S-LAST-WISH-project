#!/usr/bin/env python3
from pathlib import Path
import shutil

ROOT = Path.cwd()
GLOBAL = ROOT / "include/global.h"

if not GLOBAL.exists():
    raise SystemExit("ERRO: rode na raiz do pokeemerald-expansion.")

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

    // Reserved BEFORE 1.0 for future persistent HLW features.
    u8 future[352];
};

STATIC_ASSERT(sizeof(struct HLWSaveExtension) == HLW_SAVE_EXTENSION_SIZE, HLWSaveExtensionSize);

"""

if "struct HLWSaveExtension" not in text:
    anchor = "struct SaveBlock1\n{"
    if anchor not in text:
        raise SystemExit("ERRO: não achei struct SaveBlock1.")
    text = text.replace(anchor, definitions + anchor, 1)

save_start = text.find("struct SaveBlock1\n{")
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

backup = GLOBAL.with_name("global.h.before_hlw_save_abi_v1")
if not backup.exists():
    shutil.copyfile(GLOBAL, backup)
    backup.touch()
    print("[BACKUP]", backup)

GLOBAL.write_text(text)
GLOBAL.touch()

print("[OK] HLW Save ABI instalado")
print("     Extension total : 512 bytes")
print("     Radio usado     : 152 bytes")
print("     Future reserve  : 352 bytes")
print()
print("A partir do release 1.0, mantenha esses 512 bytes fixos.")
