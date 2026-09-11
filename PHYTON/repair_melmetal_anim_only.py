#!/usr/bin/env python3
from pathlib import Path
import shutil

ROOT = Path.cwd()

ANIMS = ROOT / "src/data/object_events/object_event_anims.h"
GEN7  = ROOT / "src/data/pokemon/species_info/gen_7_families.h"
OWH   = ROOT / "include/overworld.h"

for p in (ANIMS, GEN7, OWH):
    if not p.exists():
        raise SystemExit(f"ERRO: não achei {p}\nRode este script na raiz do pokeemerald-expansion.")

def backup_once(path: Path):
    bak = path.with_suffix(path.suffix + ".bak_melmetal")
    if not bak.exists():
        shutil.copy2(path, bak)
    return bak

bak1 = backup_once(ANIMS)
bak2 = backup_once(GEN7)
bak3 = backup_once(OWH)

# 1) Cria animações/tabela próprias do Melmetal. NÃO altera Koraidon.
text = ANIMS.read_text(encoding="utf-8")
orig = text

melmetal_block = """
// Custom 4-frame 64x64 overworld animation for Melmetal.
// The sheet is 256x64: four 64x64 frames (0, 1, 2, 3).
static const union AnimCmd sAnim_FaceWestMelmetal[] =
{
    ANIMCMD_FRAME(0, 16),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd sAnim_FaceEastMelmetal[] =
{
    ANIMCMD_FRAME(0, 16, .hFlip = TRUE),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd sAnim_GoWestMelmetal[] =
{
    ANIMCMD_FRAME(0, 2),
    ANIMCMD_FRAME(1, 2),
    ANIMCMD_FRAME(2, 2),
    ANIMCMD_FRAME(3, 2),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd sAnim_GoEastMelmetal[] =
{
    ANIMCMD_FRAME(0, 2, .hFlip = TRUE),
    ANIMCMD_FRAME(1, 2, .hFlip = TRUE),
    ANIMCMD_FRAME(2, 2, .hFlip = TRUE),
    ANIMCMD_FRAME(3, 2, .hFlip = TRUE),
    ANIMCMD_JUMP(0),
};

const union AnimCmd *const sAnimTable_Melmetal[] =
{
    [ANIM_STD_FACE_SOUTH] = sAnim_FaceWestMelmetal,
    [ANIM_STD_FACE_NORTH] = sAnim_FaceWestMelmetal,
    [ANIM_STD_FACE_WEST] = sAnim_FaceWestMelmetal,
    [ANIM_STD_FACE_EAST] = sAnim_FaceEastMelmetal,

    [ANIM_STD_GO_SOUTH] = sAnim_GoWestMelmetal,
    [ANIM_STD_GO_NORTH] = sAnim_GoWestMelmetal,
    [ANIM_STD_GO_WEST] = sAnim_GoWestMelmetal,
    [ANIM_STD_GO_EAST] = sAnim_GoEastMelmetal,

    [ANIM_STD_GO_FAST_SOUTH] = sAnim_GoWestMelmetal,
    [ANIM_STD_GO_FAST_NORTH] = sAnim_GoWestMelmetal,
    [ANIM_STD_GO_FAST_WEST] = sAnim_GoWestMelmetal,
    [ANIM_STD_GO_FAST_EAST] = sAnim_GoEastMelmetal,

    [ANIM_STD_GO_FASTER_SOUTH] = sAnim_GoWestMelmetal,
    [ANIM_STD_GO_FASTER_NORTH] = sAnim_GoWestMelmetal,
    [ANIM_STD_GO_FASTER_WEST] = sAnim_GoWestMelmetal,
    [ANIM_STD_GO_FASTER_EAST] = sAnim_GoEastMelmetal,

    [ANIM_STD_GO_FASTEST_SOUTH] = sAnim_GoWestMelmetal,
    [ANIM_STD_GO_FASTEST_NORTH] = sAnim_GoWestMelmetal,
    [ANIM_STD_GO_FASTEST_WEST] = sAnim_GoWestMelmetal,
    [ANIM_STD_GO_FASTEST_EAST] = sAnim_GoEastMelmetal,

    [ANIM_EXIT_POKEBALL_FAST_SOUTH] = sAnim_GoWestMelmetal,
    [ANIM_EXIT_POKEBALL_FAST_NORTH] = sAnim_GoWestMelmetal,
    [ANIM_EXIT_POKEBALL_FAST_WEST] = sAnim_GoWestMelmetal,
    [ANIM_EXIT_POKEBALL_FAST_EAST] = sAnim_GoEastMelmetal,
};

"""

if "const union AnimCmd *const sAnimTable_Melmetal[]" not in text:
    anchor = "const union AnimCmd *const sAnimTable_Koraidon[] = {"
    pos = text.find(anchor)
    if pos == -1:
        raise SystemExit("ERRO: não achei sAnimTable_Koraidon[] como ponto de inserção.")
    text = text[:pos] + melmetal_block + text[pos:]

if text != orig:
    ANIMS.write_text(text, encoding="utf-8")

# 2) Declara em include/overworld.h
text = OWH.read_text(encoding="utf-8")
orig = text

decl = "extern const union AnimCmd *const sAnimTable_Melmetal[];\n"

if "sAnimTable_Melmetal[]" not in text:
    kora_decl = "extern const union AnimCmd *const sAnimTable_Koraidon[];\n"
    if kora_decl in text:
        text = text.replace(kora_decl, kora_decl + decl, 1)
    else:
        marker = "extern const union AnimCmd *const sAnimTable_"
        pos = text.find(marker)
        if pos == -1:
            raise SystemExit("ERRO: não achei onde inserir a declaração em include/overworld.h.")
        text = text[:pos] + decl + text[pos:]

if text != orig:
    OWH.write_text(text, encoding="utf-8")

# 3) Troca SOMENTE o bloco do Melmetal para sAnimTable_Melmetal.
text = GEN7.read_text(encoding="utf-8")
orig = text

marker = "FOOTPRINT(Melmetal)"
start = text.find(marker)
if start == -1:
    raise SystemExit("ERRO: não achei FOOTPRINT(Melmetal) em gen_7_families.h.")

end = min(len(text), start + 1200)
block = text[start:end]

if "sAnimTable_Melmetal" not in block:
    if "sAnimTable_Koraidon" not in block:
        raise SystemExit(
            "ERRO: o bloco do Melmetal não contém sAnimTable_Koraidon nem sAnimTable_Melmetal."
        )
    block = block.replace("sAnimTable_Koraidon", "sAnimTable_Melmetal", 1)
    text = text[:start] + block + text[end:]

if text != orig:
    GEN7.write_text(text, encoding="utf-8")

# 4) Validação
anims = ANIMS.read_text(encoding="utf-8")
gen7  = GEN7.read_text(encoding="utf-8")
owh   = OWH.read_text(encoding="utf-8")

checks = {
    "tabela Melmetal": "const union AnimCmd *const sAnimTable_Melmetal[]" in anims,
    "walk east Melmetal": "sAnim_GoEastMelmetal" in anims,
    "walk west Melmetal": "sAnim_GoWestMelmetal" in anims,
    "declaração extern": "extern const union AnimCmd *const sAnimTable_Melmetal[];" in owh,
}

s = gen7.find("FOOTPRINT(Melmetal)")
mel_block = gen7[s:s+1200] if s != -1 else ""
checks["SpeciesInfo usa Melmetal table"] = "sAnimTable_Melmetal" in mel_block
checks["SpeciesInfo não usa Koraidon table"] = "sAnimTable_Koraidon" not in mel_block

failed = [name for name, ok in checks.items() if not ok]
if failed:
    print("ERRO: validação falhou:")
    for name in failed:
        print(" -", name)
    raise SystemExit(1)

print("OK: Melmetal agora tem animação própria.")
print("OK: sAnimTable_Koraidon NÃO foi alterada por este script.")
print("")
print("Backups:")
print(" ", bak1)
print(" ", bak2)
print(" ", bak3)
print("")
print("Agora rode:")
print("  make -j8")
print("")
print("Depois confira:")
print("  grep -n -A35 'sAnimTable_Melmetal' src/data/object_events/object_event_anims.h")
print("  grep -n -A10 -B5 'FOOTPRINT(Melmetal)' src/data/pokemon/species_info/gen_7_families.h")
