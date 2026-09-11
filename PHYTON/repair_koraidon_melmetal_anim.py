#!/usr/bin/env python3
from pathlib import Path
import shutil
import sys

ROOT = Path.cwd()
ANIMS = ROOT / "src/data/object_events/object_event_anims.h"

if not ANIMS.exists():
    raise SystemExit(
        "ERRO: não achei src/data/object_events/object_event_anims.h\n"
        "Rode este script na raiz do pokeemerald-expansion."
    )

text = ANIMS.read_text(encoding="utf-8")
original = text

# Backup simples, criado só na primeira execução.
backup = ANIMS.with_suffix(ANIMS.suffix + ".bak_koraidon")
if not backup.exists():
    shutil.copy2(ANIMS, backup)

# 1) Adiciona animações FACE próprias para spritesheets custom 4x 64x64.
face_block = """static const union AnimCmd sAnim_FaceWestKoraidon[] =
{
    ANIMCMD_FRAME(0, 16),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd sAnim_FaceEastKoraidon[] =
{
    ANIMCMD_FRAME(0, 16, .hFlip = TRUE),
    ANIMCMD_JUMP(0),
};

"""

anchor = "static const union AnimCmd sAnim_GoWestKoraidon[] =\n"

if "static const union AnimCmd sAnim_FaceWestKoraidon[]" not in text:
    if anchor not in text:
        raise SystemExit(
            "ERRO: não achei sAnim_GoWestKoraidon[] para usar como ponto de inserção."
        )
    text = text.replace(anchor, face_block + anchor, 1)

# 2) Altera SOMENTE a sAnimTable_Koraidon.
table_start = "const union AnimCmd *const sAnimTable_Koraidon[] = {"
start = text.find(table_start)

if start == -1:
    raise SystemExit("ERRO: não achei sAnimTable_Koraidon[].")

end = text.find("};", start)
if end == -1:
    raise SystemExit("ERRO: não achei o fim de sAnimTable_Koraidon[].")

end += 2
table = text[start:end]

old_west = "[ANIM_STD_FACE_WEST] = sAnim_FaceWest2F,"
new_west = "[ANIM_STD_FACE_WEST] = sAnim_FaceWestKoraidon,"
old_east = "[ANIM_STD_FACE_EAST] = sAnim_FaceEast2F,"
new_east = "[ANIM_STD_FACE_EAST] = sAnim_FaceEastKoraidon,"

if old_west in table:
    table = table.replace(old_west, new_west, 1)
elif new_west not in table:
    raise SystemExit(
        "ERRO: FACE_WEST da sAnimTable_Koraidon está em um formato inesperado."
    )

if old_east in table:
    table = table.replace(old_east, new_east, 1)
elif new_east not in table:
    raise SystemExit(
        "ERRO: FACE_EAST da sAnimTable_Koraidon está em um formato inesperado."
    )

text = text[:start] + table + text[end:]

# 3) Salva.
if text != original:
    ANIMS.write_text(text, encoding="utf-8")
    print("OK: object_event_anims.h corrigido.")
else:
    print("OK: a correção já estava aplicada; nenhuma alteração necessária.")

# 4) Validação básica.
check = ANIMS.read_text(encoding="utf-8")
required = [
    "static const union AnimCmd sAnim_FaceWestKoraidon[]",
    "static const union AnimCmd sAnim_FaceEastKoraidon[]",
    "[ANIM_STD_FACE_WEST] = sAnim_FaceWestKoraidon,",
    "[ANIM_STD_FACE_EAST] = sAnim_FaceEastKoraidon,",
    "ANIMCMD_FRAME(0, 16)",
    "ANIMCMD_FRAME(0, 16, .hFlip = TRUE)",
]

missing = [x for x in required if x not in check]
if missing:
    print("\nERRO: validação falhou. Itens ausentes:")
    for item in missing:
        print(" -", item)
    raise SystemExit(1)

print(f"Backup: {backup}")
print("\nAgora rode:")
print("  make -j8")
print("\nSe quiser conferir:")
print("  grep -n -A30 'sAnimTable_Koraidon' src/data/object_events/object_event_anims.h")
