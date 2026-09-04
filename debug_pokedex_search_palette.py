#!/usr/bin/env python3
"""
Pokédex HGSS Search palette debugger
====================================

Purpose:
- Verify which 4 palette banks are actually in graphics/pokedex/hgss/palette_search_menu_dark.pal
- Detect the "all purple" Copilot palette
- Optionally install a VERY obvious diagnostic palette so we can prove whether
  SetSearchRectHighlight() is switching palette banks correctly.

Usage from anywhere inside the repo:
    python3 debug_pokedex_search_palette.py

Install diagnostic palette:
    python3 debug_pokedex_search_palette.py --diagnostic

Restore original palette:
    python3 debug_pokedex_search_palette.py --restore
"""

from pathlib import Path
import sys, shutil, os

TARGET_REL = Path("graphics/pokedex/hgss/palette_search_menu_dark.pal")
BACKUP_SUFFIX = ".bak_before_search_palette_debug"

def find_root():
    here = Path(__file__).resolve().parent
    for root in (here, *here.parents):
        if (root / TARGET_REL).is_file() and (root / "src/pokedex_plus_hgss.c").is_file():
            return root
    raise SystemExit(
        "ERROR: Could not find the pokeemerald-expansion repo.\n"
        "Put this script anywhere inside the repository and run it again."
    )

def read_palette(path):
    lines = [x.strip() for x in path.read_text(encoding="utf-8").splitlines() if x.strip()]
    if len(lines) < 67 or lines[0] != "JASC-PAL" or lines[2] != "64":
        raise SystemExit(f"ERROR: Unexpected palette format in {path}")
    colors = [tuple(map(int, line.split())) for line in lines[3:67]]
    return colors

def write_palette(path, colors):
    out = ["JASC-PAL", "0100", "64"]
    out += [f"{r} {g} {b}" for r,g,b in colors]
    path.write_text("\n".join(out) + "\n", encoding="utf-8")
    os.utime(path, None)

ROOT = find_root()
target = ROOT / TARGET_REL
backup = target.with_name(target.name + BACKUP_SUFFIX)

if "--restore" in sys.argv:
    if not backup.exists():
        raise SystemExit("No debug backup exists yet.")
    shutil.copy2(backup, target)
    os.utime(target, None)
    print("[restore]", target.relative_to(ROOT))
    print("Now force rebuild with:")
    print("  rm -f graphics/pokedex/hgss/palette_search_menu_dark.gbapal")
    print("  rm -f build/modern/src/pokedex_plus_hgss.o build/modern/src/pokedex_plus_hgss.d")
    print("  make -j8")
    raise SystemExit(0)

colors = read_palette(target)

print("Active Search dark palette:")
for bank in range(4):
    chunk = colors[bank*16:(bank+1)*16]
    print(f"\nBANK {bank}")
    for idx in range(8, 15):
        print(f"  index {idx:2d}: {chunk[idx]}")

purple = (122, 109, 184)
purple_count = sum(c == purple for c in colors)
print(f"\nExact Copilot purple {purple} appears {purple_count} times.")

if purple_count >= 8:
    print("RESULT: This file still looks like the repeated-purple Copilot palette.")
else:
    print("RESULT: This file is NOT the repeated-purple Copilot palette.")

if "--diagnostic" not in sys.argv:
    print("\nNo files changed.")
    print("For the decisive bank-switch test, run:")
    print("  python3 debug_pokedex_search_palette.py --diagnostic")
    raise SystemExit(0)

if not backup.exists():
    shutil.copy2(target, backup)
    print("[backup]", backup.relative_to(ROOT))

# Preserve neutral/text indices 0..7 and 15 from each existing bank.
# Replace only semantic/search-art indices 8..14 with unmistakable hues.
#
# Bank meaning in SetSearchRectHighlight:
#   0 = selected
#   1 = unselected
#   2 = disabled selected
#   3 = disabled unselected
diagnostic = [
    # bank 0: bright GREEN
    [(40,255,80), (10,150,40), (80,255,120), (20,130,60), (140,255,160), (0,90,20), (220,255,220)],
    # bank 1: bright RED
    [(255,60,80), (170,20,30), (255,120,130), (130,10,20), (255,170,180), (90,0,10), (255,220,220)],
    # bank 2: bright BLUE
    [(70,120,255), (20,50,170), (120,160,255), (10,30,130), (170,195,255), (0,15,90), (220,230,255)],
    # bank 3: bright YELLOW
    [(255,235,40), (170,140,0), (255,245,110), (120,95,0), (255,250,170), (80,65,0), (255,255,220)],
]

new_colors = colors[:]
for bank in range(4):
    base = bank * 16
    for offset, idx in enumerate(range(8, 15)):
        new_colors[base + idx] = diagnostic[bank][offset]

write_palette(target, new_colors)

print("\n[diagnostic installed]", target.relative_to(ROOT))
print("\nIMPORTANT TEST:")
print("1. Force rebuild:")
print("   touch graphics/bag/menu.bin")
print("   rm -f graphics/pokedex/hgss/palette_search_menu_dark.gbapal")
print("   rm -f build/modern/src/pokedex_plus_hgss.o build/modern/src/pokedex_plus_hgss.d")
print("   make -j8")
print("2. Open Pokédex -> Search.")
print("3. Move the cursor through SEARCH / SHIFT / CANCEL / NAME / COLOR / TYPE / ORDER / MODE / OK.")
print("")
print("Expected diagnostic behavior:")
print("  selected areas      = GREEN")
print("  unselected areas    = RED")
print("  disabled selected   = BLUE")
print("  disabled unselected = YELLOW")
print("")
print("If the colors change with the cursor, the highlight code is correct and only the final palette needs fixing.")
print("If they DO NOT change, the problem is in tilemap palette-bank switching, not the palette file.")
