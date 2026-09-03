#!/usr/bin/env python3
"""
HLW Bag cleanup fix
===================

Use this from the project's PYTHON/PYHTON folder.

What it fixes:
- Reverts the broken V5 tileset edit that modified shared tiles and caused
  repeated blue bars / broken graphics.
- Keeps the V4 sky, pastel-red UI, rounded pocket marker and 36 falling stars.
- Removes obsolete border graphics by clearing only their SCREEN TILEMAP
  positions, instead of editing shared tile artwork.

This is intentionally scoped to the Bag.

Usage:
    python3 fix_bag_legacy_borders.py

Optional restore:
    python3 fix_bag_legacy_borders.py --restore
"""

from pathlib import Path
import base64
import shutil
import sys
import re
import os

MARKER = "HLW_BAG_LEGACY_BORDER_TILEMAP_FIX_V6"

GOOD_MENU_PNG_B64 = """
iVBORw0KGgoAAAANSUhEUgAAAIAAAAAoCAMAAAABrwJ6AAADAFBMVEViYnMYIUohK1spM20xO346Q49DTJ5MVa1WXrpgZ8Zqb9F0d9p+fOGJgefBO0eijPAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADc6qqYAAACiElEQVR4nO2Y2ZqrIBCEjazu7/+2B6q7XQExZ5yrqS9j4hipn2oQTdPUygVZKH5yjU0Kx6zpV1l6m+fwmvurqv2996F9NGktdhKt9TjkTwDsjLfzafbOdKft3GiT9A+HLgBEAAH+AYA7CKdSM6EdlwM4l8AdAc7nlQDWmlNxyw0VAIrgJYAYull1E+WWeNQO4KZ0NwBma+lmMBUASoPXlkuQGM0ylTL+V91MX9fIFzuWGKeQ9GdT7v876VSHtFpbUPCRyDYAmkaPADK6ljQAfF4AqFMGQKbN/5SgTlyCHwRYv5QrwVFhKqcA5NL5RQn4S1qpT43I8BHAeUAlS6Dr7LMApRKcDZMAtf45gC6jXPzS4+vcpwb73oQrzoOx+RiAa54FCGPN+3hGXDXqAJaLigA8Nnh/P05o8bIEQOtWDcCyDCdFghJAan+3fDuUoBog+oe/+CJz7H8BsLuBaR4BRFd5DahAePsGYL2Fa74H4DGQAlD3AEfVDkLqN5cgD9A8BqhUR5W/TeA1HQHyY+BFgG0WLIVZ8B5A5XXgRYC6K+GbAFVrwR/Aa5LFtGUp1nYnJ49mu6eLILnsCrA8X8hAHlkTSx7rZJitizi5M4BiAM0AhgEsAzgG8AzQMUDPAAMDjAwwMcDMAEsCoG3pg1KUgNaUgDH7Nd4YWWu9pwS6jhKQm7lhoATGkRKYJkpgnimBZSkm8Mv5HxNoEQKMkYBGCDBGAhYh8I8U+AXEI4EOIciDJYyRwIgQYIwEZoQA11QCsKfOYwN76jw2sKfOYwN76jw2sKfOYwN76jw2sCfjQgIBgsNvOXzF4WsO38gPNRy+4/C9PFxz+D2HP3D4I4c/sW8ygd8u/wHgHz56XFibqzpXAAAAAElFTkSuQmCC
""".strip()

def find_repo_root() -> Path:
    here = Path(__file__).resolve().parent
    candidates = [here, *here.parents]
    for root in candidates:
        if (root / "src" / "item_menu.c").is_file() and (root / "graphics" / "bag").is_dir():
            return root
    raise SystemExit(
        "ERROR: Could not find the pokeemerald project root.\n"
        "Put this script inside the project's PYTHON/PYHTON folder and run it again."
    )

def backup_once(path: Path):
    backup = path.with_name(path.name + ".bak_before_bag_border_fix_v6")
    if path.exists() and not backup.exists():
        shutil.copy2(path, backup)
        print(f"[backup] {backup.relative_to(ROOT)}")
    return backup

def restore():
    src = ROOT / "src" / "item_menu.c"
    gfx = ROOT / "graphics" / "bag" / "menu_scrolling.png"
    restored = False

    for path in (src, gfx):
        backup = path.with_name(path.name + ".bak_before_bag_border_fix_v6")
        if backup.exists():
            shutil.copy2(backup, path)
            print(f"[restore] {path.relative_to(ROOT)}")
            restored = True

    if not restored:
        print("No V6 backups were found.")
    return 0

ROOT = find_repo_root()

if "--restore" in sys.argv:
    raise SystemExit(restore())

src_path = ROOT / "src" / "item_menu.c"
gfx_path = ROOT / "graphics" / "bag" / "menu_scrolling.png"

backup_once(src_path)
backup_once(gfx_path)

# -------------------------------------------------------------------------
# 1) Restore the known-good V4 Bag interface tileset.
#
# V5 broke because it painted over SHARED 8x8 interface tiles. Those tiles
# are referenced at several positions in the Bag tilemap, so changing one
# tile caused the same altered graphic to repeat in unrelated places.
#
# The correct fix is: keep the shared graphics intact and remove obsolete
# borders by SCREEN POSITION in the tilemap.
# -------------------------------------------------------------------------
gfx_path.write_bytes(base64.b64decode(GOOD_MENU_PNG_B64))
print(f"[write]  {gfx_path.relative_to(ROOT)} (restored known-good V4 tileset)")

src = src_path.read_text(encoding="utf-8")

# Keep the denser star effect even if this script is run on an older V2 file.
src = re.sub(
    r"#define\s+BAG_STAR_COUNT\s+18\b",
    "#define BAG_STAR_COUNT        36",
    src
)

helper = r"""
// HLW_BAG_LEGACY_BORDER_TILEMAP_FIX_V6
//
// IMPORTANT:
// Do not erase these old borders by modifying menu_scrolling.png tiles.
// The Bag reuses several 8x8 interface tiles in multiple positions, so a
// tileset-level edit creates repeated bars/glitches elsewhere.
//
// Instead, clear only the obsolete SCREEN POSITIONS in BG2. Tile 0 in the
// restored Bag tileset is fully transparent, revealing the scrolling sky on
// BG3 underneath.
//
// Layout kept:
// - right item-list panel and its frame
// - lower-left item-description panel and its frame
// - top pocket/title header
//
// Layout removed:
// - legacy border/fill debris in the upper-left item-art area that belonged
//   to the old striped Bag background.
static void HLW_ClearBagLegacyBorders(void)
{
    u16 *tilemap = (u16 *)gBagMenu->tilemapBuffer;
    u8 x;
    u8 y;

    // Upper-left item display area.
    //
    // x 0..12  = pixels   0..103
    // y 3..12  = pixels  24..103
    //
    // Column 13+ is intentionally untouched because it belongs to the
    // item-list frame/separator. Row 13+ is intentionally untouched because
    // it belongs to the description panel.
    for (y = 3; y <= 12; y++)
    {
        for (x = 0; x <= 12; x++)
            tilemap[y * 32 + x] = 0;
    }
}
"""

if MARKER not in src:
    needle = "static bool8 LoadBagMenu_Graphics(void)\n{"
    if needle not in src:
        raise SystemExit(
            "ERROR: Could not find `static bool8 LoadBagMenu_Graphics(void)` "
            "in src/item_menu.c. No source changes were made."
        )
    src = src.replace(needle, helper + "\n" + needle, 1)
    print("[patch]  added HLW_ClearBagLegacyBorders()")
else:
    print("[skip]   cleanup helper already present")

# Insert the call directly after the Bag tilemap is decompressed.
call = "            HLW_ClearBagLegacyBorders();"
if call not in src:
    patterns = [
        "            DecompressDataWithHeaderWram(gBagScreen_GfxTileMap, gBagMenu->tilemapBuffer);",
        "            LZDecompressWram(gBagScreen_GfxTileMap, gBagMenu->tilemapBuffer);",
    ]
    for p in patterns:
        if p in src:
            src = src.replace(p, p + "\n" + call, 1)
            print("[patch]  cleanup runs immediately after Bag tilemap decompression")
            break
    else:
        raise SystemExit(
            "ERROR: Could not locate the Bag tilemap decompression call. "
            "The tileset was restored, but item_menu.c was not patched."
        )
else:
    print("[skip]   cleanup call already present")

src_path.write_text(src, encoding="utf-8")

# Normalize timestamps to avoid the future-mtime make loop seen before.
os.utime(src_path, None)
os.utime(gfx_path, None)

print()
print("DONE.")
print("This fix edits screen tilemap positions, NOT shared border tiles.")
print()
print("Build with:")
print("    make -j8")
print()
print("If you want to undo only this script:")
print("    python3 " + Path(__file__).name + " --restore")
