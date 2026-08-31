#!/usr/bin/env python3
from pathlib import Path
import shutil

SCRIPT = Path(__file__).resolve()

def find_root():
    for p in (Path.cwd().resolve(), SCRIPT.parent.resolve(), SCRIPT.parent.parent.resolve()):
        if (p / "src/radio.c").exists():
            return p
    raise SystemExit(
        "ERRO: nao achei src/radio.c.\n"
        "Use:\n"
        "  cd ~/pokeemerald-expansion\n"
        "  python3 PHYTON/FINAL_fix_radio_blendpalettes.py"
    )

def find_function_span(text, signature):
    start = text.find(signature)
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
                return start, i + 1
    return None

ROOT = find_root()
RADIO = ROOT / "src/radio.c"
BACKUP_DIR = ROOT / "PHYTON/_backups/final_blendpalettes_fix"

text = RADIO.read_text(encoding="utf-8")
signature = "static void Radio_BlendVisibleArt(u8 coeff)"
span = find_function_span(text, signature)

if span is None:
    raise SystemExit("ERRO: Radio_BlendVisibleArt nao encontrada.")

start, end = span
new_func = 'static void Radio_BlendVisibleArt(u8 coeff)\n{\n    u8 spriteId = Radio_GetVisibleArtSpriteId();\n\n    if (spriteId < MAX_SPRITES)\n    {\n        u8 objPalette = gSprites[spriteId].oam.paletteNum;\n        u32 selectedPalettes;\n\n        if (coeff > 16)\n            coeff = 16;\n\n        // BlendPalettes(selectedPalettes, coeff, color)\n        // OBJ palette 0..15 corresponds to bits 16..31.\n        selectedPalettes = 1u << (16 + objPalette);\n        BlendPalettes(selectedPalettes, coeff, RGB_WHITE);\n    }\n}'

BACKUP_DIR.mkdir(parents=True, exist_ok=True)
backup = BACKUP_DIR / "radio.c.before_final_blendpalettes_fix"
if not backup.exists():
    shutil.copyfile(RADIO, backup)
    backup.touch()
    print("[BACKUP]", backup.relative_to(ROOT))

new_text = text[:start] + new_func + text[end:]
RADIO.write_text(new_text, encoding="utf-8")
RADIO.touch()

verify = RADIO.read_text(encoding="utf-8")

bad_patterns = [
    "BlendPalette(",
    "BlendPalettes(palOffset",
    "BlendPalettes(selectedPalettes, 16,",
]

for bad in bad_patterns:
    if bad in verify:
        raise SystemExit("ERRO: ainda existe chamada invalida: " + bad)

good = "BlendPalettes(selectedPalettes, coeff, RGB_WHITE);"
if good not in verify:
    raise SystemExit("ERRO: chamada correta nao foi instalada.")

print("[PATCH]", RADIO.relative_to(ROOT))
print()
print("FUNCAO FINAL:")
print("-" * 60)
span2 = find_function_span(verify, signature)
print(verify[span2[0]:span2[1]])
print("-" * 60)

for obj in ROOT.glob("build/*/src/radio.o"):
    try:
        obj.unlink()
        print("[DELETE]", obj.relative_to(ROOT))
    except FileNotFoundError:
        pass

for dep in ROOT.glob("build/*/src/radio.d"):
    try:
        dep.unlink()
        print("[DELETE]", dep.relative_to(ROOT))
    except FileNotFoundError:
        pass

print()
print("[OK] BlendPalettes corrigido para a assinatura real do seu projeto.")
print()
print("Confira:")
print('  grep -n "BlendPalette" src/radio.c')
print()
print("Deve aparecer:")
print("  BlendPalettes(selectedPalettes, coeff, RGB_WHITE);")
print()
print("Depois:")
print("  make -j8")
