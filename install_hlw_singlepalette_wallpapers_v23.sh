#!/usr/bin/env bash
set -euo pipefail

# HOENN'S LAST WISH - editable single-sheet wallpaper engine V23
#
# This does NOT fetch, replace, normalize, or recolor wallpaper source assets.
# The imported HGSS slots are now treated as editable HLW wallpaper slots.
#
# Contract for player-facing wallpapers:
#   - one tiles.png / tiles.4bpp tileset per wallpaper
#   - one 4bpp (16-color) palette per wallpaper
#   - one 20x18 tilemap.bin
#   - at most 256 tile IDs (0..255)
#   - source tilemap palette bits are ignored by the engine
#
# Runtime ownership:
#   BG palette 3 = PC animated background only
#   BG palette 4 = wallpaper buffer A
#   BG palette 6 = wallpaper buffer B

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
ROOT="${1:-$PWD}"
ROOT="$(cd "$ROOT" && pwd)"

C_SRC="$SCRIPT_DIR/pokemon_storage_system_hlw_singlepalette_v23.c"
C_DST="$ROOT/src/pokemon_storage_system.c"
RULES="$ROOT/graphics_file_rules.mk"
ASSETS="$ROOT/graphics/pokemon_storage/wallpapers"

for f in "$C_SRC" "$C_DST" "$RULES"; do
    [[ -f "$f" ]] || { echo "ERROR: expected file not found: $f" >&2; exit 1; }
done
[[ -d "$ASSETS" ]] || { echo "ERROR: wallpaper directory not found: $ASSETS" >&2; exit 1; }

STAMP="$(date +%Y%m%d_%H%M%S)"
BACKUP="$ROOT/.hlw_wallpaper_engine_v23_backup_$STAMP"
mkdir -p "$BACKUP/src" "$BACKUP/graphics/pokemon_storage"
cp "$C_DST" "$BACKUP/src/pokemon_storage_system.c"
cp "$RULES" "$BACKUP/graphics_file_rules.mk"

echo "[1/5] Backup created: $BACKUP"

cp "$C_SRC" "$C_DST"
echo "[2/5] Installed single-palette wallpaper runtime."

# The upstream HGSS branch pins each sheet to the original wallpaper's exact
# tile count. That is useful for matching upstream, but hostile to an editable
# slot: replacing Torchic with a 133-tile HLW sheet should not require changing
# C or a magic -num_tiles 86 every time. For direct wallpaper tiles.png rules,
# let gbagfx encode the actual sheet instead. Legacy frame+bg concatenation
# rules are left untouched.
python3 - "$RULES" <<'PY'
from pathlib import Path
import re, sys
p = Path(sys.argv[1])
s = p.read_text()
start_marker = "### Pokémon Storage System ###"
end_marker = "### Pokenav ###"
if start_marker not in s:
    raise SystemExit("ERROR: Pokémon Storage System rules section not found")
start = s.index(start_marker)
end = s.index(end_marker, start) if end_marker in s[start:] else len(s)
pre, sec, post = s[:start], s[start:end], s[end:]
lines = sec.splitlines(True)
changed = 0
for i, line in enumerate(lines):
    # Direct HGSS-style slot: .../tiles.4bpp is generated straight from tiles.png.
    if "$(WALLPAPERGFXDIR)/" in line and "/tiles.4bpp:" in line:
        rhs = line.split(":", 1)[1] if ":" in line else ""
        if "frame.4bpp" in rhs or "bg.4bpp" in rhs:
            continue
        # Search the recipe immediately following this target.
        for j in range(i + 1, min(i + 4, len(lines))):
            if lines[j].startswith("\t") and "$(GFX)" in lines[j]:
                new = re.sub(r"\s+-num_tiles\s+\d+\s+-Wnum_tiles", "", lines[j])
                if new != lines[j]:
                    lines[j] = new
                    changed += 1
                break
sec = "".join(lines)
p.write_text(pre + sec + post)
print(f"[3/5] Made {changed} direct wallpaper tileset rule(s) size-independent.")
PY

# Do not touch source PNG/BIN assets. Only clear generated derivatives so the
# user's current artwork is rebuilt under the new runtime/rules.
find "$ASSETS" -mindepth 2 -maxdepth 2 -type f -name 'tiles.png' -printf '%h\n' | sort -u | while IFS= read -r d; do
    rm -f "$d/tiles.4bpp" "$d/tiles.4bpp.lz" "$d/tiles.4bpp.smol" \
          "$d/tiles.gbapal" "$d/tilemap.bin.lz" "$d/tilemap.bin.smolTM"
done
rm -f "$ROOT/build/modern/src/pokemon_storage_system.o" \
      "$ROOT/build/modern/src/pokemon_storage_system.d"
touch "$C_DST" "$RULES"
echo "[4/5] Cleared generated wallpaper outputs; source artwork was not changed."

echo "[5/5] HLW editable wallpaper engine installed."
echo
echo "Important: each custom tiles.png must fit in <= 256 8x8 tiles and use <= 16 colors."
echo "The tilemap must be 20x18, but its palette nibble no longer matters."
echo
echo "Build with:"
echo "  cd '$ROOT' && make -j8"
echo
echo "Backup: $BACKUP"
