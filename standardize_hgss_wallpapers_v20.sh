#!/usr/bin/env bash
set -euo pipefail

# HOENN'S LAST WISH - HGSS-only wallpaper standardization V20
#
# Goal:
#   - stop mixing Emerald legacy wallpaper sources with HGSS-format sources;
#   - expose only the HGSS-format wallpapers in the PC menu;
#   - remap legacy wallpaper IDs from old saves to the first HGSS wallpaper;
#   - normalize every HGSS tilemap to the same palette-base convention;
#   - preserve the user's custom torchic/tiles.png artwork.
#
# Source: Greenphx9/pokeemerald-expansion, branch "wallpapers".

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
ROOT="${1:-$PWD}"
ROOT="$(cd "$ROOT" && pwd)"

C_SRC="$SCRIPT_DIR/pokemon_storage_system_hgss_only_v20.c"
C_DST="$ROOT/src/pokemon_storage_system.c"
HEADER_DST="$ROOT/src/data/wallpapers.h"
RULES_DST="$ROOT/graphics_file_rules.mk"
ASSET_DST="$ROOT/graphics/pokemon_storage/wallpapers"

for f in "$C_SRC" "$C_DST" "$HEADER_DST" "$RULES_DST"; do
    if [[ ! -f "$f" ]]; then
        echo "ERROR: expected file not found: $f" >&2
        exit 1
    fi
done
if [[ ! -d "$ASSET_DST" ]]; then
    echo "ERROR: wallpaper directory not found: $ASSET_DST" >&2
    exit 1
fi

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
UPSTREAM="$TMP/upstream"

STAMP="$(date +%Y%m%d_%H%M%S)"
BACKUP="$ROOT/.hlw_hgss_only_v20_backup_$STAMP"
mkdir -p "$BACKUP/src/data" "$BACKUP/src" "$BACKUP/graphics/pokemon_storage"
cp "$C_DST" "$BACKUP/src/pokemon_storage_system.c"
cp "$HEADER_DST" "$BACKUP/src/data/wallpapers.h"
cp "$RULES_DST" "$BACKUP/graphics_file_rules.mk"
cp -a "$ASSET_DST" "$BACKUP/graphics/pokemon_storage/wallpapers"

echo "[1/7] Backup created: $BACKUP"

echo "[2/7] Fetching Greenphx9 wallpapers branch..."
git clone --quiet --depth 1 --single-branch --branch wallpapers \
    https://github.com/Greenphx9/pokeemerald-expansion.git "$UPSTREAM"

UPSTREAM_HEADER="$UPSTREAM/src/data/wallpapers.h"
UPSTREAM_RULES="$UPSTREAM/graphics_file_rules.mk"
UPSTREAM_ASSETS="$UPSTREAM/graphics/pokemon_storage/wallpapers"

for f in "$UPSTREAM_HEADER" "$UPSTREAM_RULES"; do
    [[ -f "$f" ]] || { echo "ERROR: upstream file missing: $f" >&2; exit 1; }
done
[[ -d "$UPSTREAM_ASSETS" ]] || { echo "ERROR: upstream wallpaper assets missing." >&2; exit 1; }

# Preserve the player's edited Torchic sheet. Only artwork is preserved;
# tilemap/build rules come from upstream so the format stays coherent.
CUSTOM_TORCHIC="$TMP/custom_torchic_tiles.png"
if [[ -f "$ASSET_DST/torchic/tiles.png" ]]; then
    cp "$ASSET_DST/torchic/tiles.png" "$CUSTOM_TORCHIC"
fi

# Discover HGSS-format regular wallpapers by their direct tiles.png source.
# Emerald legacy wallpapers are frame.png + bg.png and are deliberately not
# copied/used by the player-facing V20 menu.
mapfile -t HGSS_DIRS < <(
    find "$UPSTREAM_ASSETS" -mindepth 2 -maxdepth 2 -type f -name 'tiles.png' -print \
    | sed "s#^$UPSTREAM_ASSETS/##; s#/tiles.png$##" \
    | sort
)

if [[ ${#HGSS_DIRS[@]} -eq 0 ]]; then
    echo "ERROR: no HGSS-format wallpaper directories found upstream." >&2
    exit 1
fi

echo "[3/7] Replacing HGSS wallpaper sources with coherent upstream copies..."
for d in "${HGSS_DIRS[@]}"; do
    rm -rf "$ASSET_DST/$d"
    cp -a "$UPSTREAM_ASSETS/$d" "$ASSET_DST/$d"
done

if [[ -f "$CUSTOM_TORCHIC" && -d "$ASSET_DST/torchic" ]]; then
    cp "$CUSTOM_TORCHIC" "$ASSET_DST/torchic/tiles.png"
    echo "      Preserved custom torchic/tiles.png"
fi

# Normalize the authored palette numbers in all HGSS tilemaps.
# The storage engine's double-buffer convention expects source palettes to
# begin at bank 1: source 1/2 -> live 4/5 or 6/7 via DrawWallpaper's +3.
# Many HGSS tilemaps are authored as 0 (or 0/1), so shift the whole map until
# its minimum used palette is 1 while preserving tile indices and flip bits.
echo "[4/7] Normalizing HGSS tilemaps to one palette-bank convention..."
python3 - "$ASSET_DST" "${HGSS_DIRS[@]}" <<'PY'
from pathlib import Path
import struct
import sys

root = Path(sys.argv[1])
dirs = sys.argv[2:]
changed = 0
for name in dirs:
    path = root / name / "tilemap.bin"
    if not path.exists():
        continue
    raw = path.read_bytes()
    if len(raw) % 2:
        raise SystemExit(f"Odd-sized tilemap: {path}")
    vals = list(struct.unpack('<' + 'H' * (len(raw)//2), raw))
    if not vals:
        continue
    pals = [(v >> 12) & 0xF for v in vals]
    min_pal = min(pals)
    shift = 1 - min_pal
    if shift == 0:
        continue
    out = []
    for v in vals:
        pal = ((v >> 12) & 0xF) + shift
        if not 0 <= pal <= 15:
            raise SystemExit(f"Palette normalization overflow in {path}")
        out.append((v & 0x0FFF) | (pal << 12))
    path.write_bytes(struct.pack('<' + 'H' * len(out), *out))
    changed += 1
    print(f"      {name}: palette base {min_pal} -> 1")
print(f"      normalized {changed} tilemap(s)")
PY

# Merge the upstream expanded regular wallpaper table with the current HLW
# Walda tail, preserving the historical FRIENDS numeric ID exactly as V17 did.
NEW_HEADER="$TMP/wallpapers.h"
python3 - "$HEADER_DST" "$UPSTREAM_HEADER" "$NEW_HEADER" <<'PY'
from pathlib import Path
import re
import sys

current_path, branch_path, output_path = map(Path, sys.argv[1:4])
current = current_path.read_text()
branch = branch_path.read_text()
marker = "static const u8 sArrow_Gfx[]"
if marker not in current or marker not in branch:
    raise SystemExit("Could not find wallpaper/Walda split marker")
branch_top = branch[:branch.index(marker)]
current_tail = current[current.index(marker):]

def enum_block(text):
    start = text.find("enum {")
    end = text.find("};", start)
    if start < 0 or end < 0:
        raise SystemExit("Could not locate wallpaper enum")
    return start, end + 2, text[start:end + 2]

_, _, current_enum = enum_block(current)
b_start, b_end, branch_enum = enum_block(branch_top)
cur_lines = current_enum.splitlines()
friend_idx = next((i for i, line in enumerate(cur_lines) if "WALLPAPER_FRIENDS" in line), None)
if friend_idx is None or friend_idx == 0:
    raise SystemExit("Could not locate legacy FRIENDS id")
anchor_match = re.search(r"WALLPAPER_[A-Z0-9_]+", cur_lines[friend_idx - 1])
if not anchor_match:
    raise SystemExit("Could not locate legacy wallpaper anchor")
anchor = anchor_match.group(0)

lines = branch_enum.splitlines()
friend_lines = [line for line in lines if "WALLPAPER_FRIENDS" in line]
if len(friend_lines) != 1:
    raise SystemExit("Unexpected upstream FRIENDS enum layout")
friend_line = friend_lines[0]
lines = [line for line in lines if "WALLPAPER_FRIENDS" not in line]
insert_at = next((i + 1 for i, line in enumerate(lines) if anchor in line), None)
if insert_at is None:
    raise SystemExit(f"Upstream enum does not contain legacy anchor {anchor}")
lines.insert(insert_at, friend_line + " // HLW legacy id; old regular IDs are remapped at runtime.")
new_enum = "\n".join(lines)
branch_top = branch_top[:b_start] + new_enum + branch_top[b_end:]
branch_top = re.sub(
    r"static const struct Wallpaper sWallpapers\s*\[\s*WALLPAPER_COUNT\s*-\s*1\s*\]",
    "static const struct Wallpaper sWallpapers[WALLPAPER_COUNT]",
    branch_top,
    count=1,
)
Path(output_path).write_text(
    "// HLW V20: standardized HGSS wallpaper data; legacy regular IDs are hidden.\n" +
    branch_top + current_tail
)
PY

# Replace only the Pokémon Storage graphics rules section with upstream's
# HGSS-aware rules. Everything else in the user's project remains untouched.
NEW_RULES="$TMP/graphics_file_rules.mk"
python3 - "$RULES_DST" "$UPSTREAM_RULES" "$NEW_RULES" <<'PY'
from pathlib import Path
import sys
cur_path, up_path, out_path = map(Path, sys.argv[1:4])
cur = cur_path.read_text()
up = up_path.read_text()
start = "### Pokémon Storage System ###"
end = "### Pokenav ###"
for name, text in (("current", cur), ("upstream", up)):
    if start not in text or end not in text:
        raise SystemExit(f"Missing storage graphics markers in {name} rules")
cs = cur.index(start); ce = cur.index(end, cs)
us = up.index(start); ue = up.index(end, us)
out_path.write_text(cur[:cs] + up[us:ue] + cur[ce:])
PY

echo "[5/7] Installing standardized data/rules and HGSS-only storage code..."
cp "$NEW_HEADER" "$HEADER_DST"
cp "$NEW_RULES" "$RULES_DST"
cp "$C_SRC" "$C_DST"

# Delete every generated derivative under HGSS-format directories so make
# cannot reuse a stale palette/tile/tilemap generated under an older rule.
echo "[6/7] Clearing generated HGSS graphics and storage object..."
for d in "${HGSS_DIRS[@]}"; do
    find "$ASSET_DST/$d" -type f \( \
        -name '*.4bpp' -o -name '*.gbapal' -o -name '*.smol' -o \
        -name '*.smolTM' -o -name '*.lz' \) -delete 2>/dev/null || true
done
rm -f "$ROOT/build/modern/src/pokemon_storage_system.o" \
      "$ROOT/build/modern/src/pokemon_storage_system.d"
touch "$C_DST" "$HEADER_DST" "$RULES_DST"

echo "[7/7] HGSS-only wallpaper standard installed."
echo "      Detected ${#HGSS_DIRS[@]} HGSS-format wallpaper directories."
echo
echo "Backup: $BACKUP"
echo "Build with:"
echo "  cd '$ROOT' && make -j8"
