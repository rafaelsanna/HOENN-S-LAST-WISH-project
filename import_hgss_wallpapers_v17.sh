#!/usr/bin/env bash
set -euo pipefail

# HOENN'S LAST WISH - HGSS wallpaper importer
# Source branch: Greenphx9/pokeemerald-expansion, branch "wallpapers"
#
# This intentionally does NOT replace the project's whole storage system.
# It imports the wallpaper data/build rules/assets and installs the curated
# HLW pokemon_storage_system.c supplied alongside this script.

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
ROOT="${1:-$PWD}"
ROOT="$(cd "$ROOT" && pwd)"

C_SRC="$SCRIPT_DIR/pokemon_storage_system_hgss_wallpapers_port_v17.c"
C_DST="$ROOT/src/pokemon_storage_system.c"
HEADER_DST="$ROOT/src/data/wallpapers.h"
RULES_DST="$ROOT/graphics_file_rules.mk"
ASSET_DST="$ROOT/graphics/pokemon_storage/wallpapers"

for f in "$C_DST" "$HEADER_DST" "$RULES_DST"; do
    if [[ ! -f "$f" ]]; then
        echo "ERROR: expected project file not found: $f" >&2
        exit 1
    fi
done
if [[ ! -f "$C_SRC" ]]; then
    echo "ERROR: bundled HLW storage source not found: $C_SRC" >&2
    exit 1
fi

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
BRANCH="$TMP/upstream"

echo "[1/7] Fetching the open-source wallpaper branch..."
git clone --quiet --depth 1 --single-branch --branch wallpapers \
    https://github.com/Greenphx9/pokeemerald-expansion.git "$BRANCH"

BRANCH_HEADER="$BRANCH/src/data/wallpapers.h"
BRANCH_RULES="$BRANCH/graphics_file_rules.mk"
BRANCH_ASSETS="$BRANCH/graphics/pokemon_storage/wallpapers"
for f in "$BRANCH_HEADER" "$BRANCH_RULES"; do
    if [[ ! -f "$f" ]]; then
        echo "ERROR: required file missing in upstream branch: $f" >&2
        exit 1
    fi
done
if [[ ! -d "$BRANCH_ASSETS" ]]; then
    echo "ERROR: wallpaper asset directory missing in upstream branch." >&2
    exit 1
fi

STAMP="$(date +%Y%m%d_%H%M%S)"
BACKUP="$ROOT/.hlw_wallpaper_port_backup_$STAMP"
mkdir -p "$BACKUP/src/data" "$BACKUP/src"
cp "$C_DST" "$BACKUP/src/pokemon_storage_system.c"
cp "$HEADER_DST" "$BACKUP/src/data/wallpapers.h"
cp "$RULES_DST" "$BACKUP/graphics_file_rules.mk"
echo "[2/7] Backup created: $BACKUP"

NEW_HEADER="$TMP/wallpapers.h"
NEW_RULES="$TMP/graphics_file_rules.mk"

python3 - "$HEADER_DST" "$BRANCH_HEADER" "$NEW_HEADER" <<'PY'
from pathlib import Path
import re
import sys

current_path, branch_path, output_path = map(Path, sys.argv[1:4])
current = current_path.read_text()
branch = branch_path.read_text()

# Keep the modern/current Walda section and other local tail data. The regular
# wallpaper table from the feature branch is the authoritative source for the
# imported HGSS wallpaper assets.
marker = "static const u8 sArrow_Gfx[]"
if marker not in current or marker not in branch:
    raise SystemExit("Could not find the wallpaper/Walda split marker in wallpapers.h")

branch_top = branch[:branch.index(marker)]
current_tail = current[current.index(marker):]

# Save compatibility: in HLW, FRIENDS historically occupies its existing id.
# The feature branch puts FRIENDS after the expanded regular wallpapers. Move
# it back immediately after the old last regular wallpaper and let the imported
# wallpapers occupy ids after FRIENDS.
def enum_block(text):
    start = text.find("enum {")
    if start < 0:
        raise SystemExit("Could not find wallpaper enum")
    end = text.find("};", start)
    if end < 0:
        raise SystemExit("Could not find end of wallpaper enum")
    return start, end + 2, text[start:end + 2]

_, _, current_enum = enum_block(current)
b_start, b_end, branch_enum = enum_block(branch_top)

cur_lines = current_enum.splitlines()
friend_idx = next((i for i, line in enumerate(cur_lines) if "WALLPAPER_FRIENDS" in line), None)
if friend_idx is None or friend_idx == 0:
    raise SystemExit("Could not determine the legacy wallpaper id anchor")
anchor_match = re.search(r"WALLPAPER_[A-Z0-9_]+", cur_lines[friend_idx - 1])
if not anchor_match:
    raise SystemExit("Could not determine the legacy last regular wallpaper")
anchor = anchor_match.group(0)

lines = branch_enum.splitlines()
friend_lines = [line for line in lines if "WALLPAPER_FRIENDS" in line]
if len(friend_lines) != 1:
    raise SystemExit("Unexpected WALLPAPER_FRIENDS layout in feature branch")
friend_line = friend_lines[0]
lines = [line for line in lines if "WALLPAPER_FRIENDS" not in line]
insert_at = next((i + 1 for i, line in enumerate(lines) if anchor in line), None)
if insert_at is None:
    raise SystemExit(f"Feature branch wallpaper enum does not contain {anchor}")
lines.insert(insert_at, friend_line + " // Kept here by HLW for save compatibility.")
new_enum = "\n".join(lines)
branch_top = branch_top[:b_start] + new_enum + branch_top[b_end:]

# FRIENDS is now an intentional hole in sWallpapers because it is loaded via
# sWaldaWallpapers. Give the designated-initializer table a real slot for it.
branch_top = re.sub(
    r"static const struct Wallpaper sWallpapers\s*\[\s*WALLPAPER_COUNT\s*-\s*1\s*\]",
    "static const struct Wallpaper sWallpapers[WALLPAPER_COUNT]",
    branch_top,
    count=1,
)

banner = (
    "// ---------------------------------------------------------------------------\n"
    "// HLW: regular wallpaper data below is ported from Greenphx9's open-source\n"
    "// 'wallpapers' branch. WALDA/custom data below sArrow_Gfx stays from HLW.\n"
    "// WALLPAPER_FRIENDS deliberately keeps its legacy numeric id.\n"
    "// ---------------------------------------------------------------------------\n"
)
Path(output_path).write_text(banner + branch_top + current_tail)
PY

python3 - "$RULES_DST" "$BRANCH_RULES" "$NEW_RULES" <<'PY'
from pathlib import Path
import sys

current_path, branch_path, output_path = map(Path, sys.argv[1:4])
current = current_path.read_text()
branch = branch_path.read_text()
start_marker = "### Pokémon Storage System ###"
end_marker = "### Pokenav ###"

for name, text in (("current", current), ("feature branch", branch)):
    if start_marker not in text or end_marker not in text:
        raise SystemExit(f"Could not find Pokémon Storage System graphics section in {name} graphics_file_rules.mk")

def section(text):
    start = text.index(start_marker)
    end = text.index(end_marker, start)
    return start, end, text[start:end]

c_start, c_end, _ = section(current)
_, _, branch_section = section(branch)

# Replace only the storage-graphics rule section. Everything else in HLW's
# graphics_file_rules.mk remains untouched.
merged = current[:c_start] + branch_section + current[c_end:]
Path(output_path).write_text(merged)
PY

echo "[3/7] Importing wallpaper source graphics..."
mkdir -p "$ASSET_DST"
# Do not overwrite artwork already edited in HLW. This adds all new branch
# assets and shared frame files while preserving local versions of old ones.
cp -an "$BRANCH_ASSETS/." "$ASSET_DST/"

echo "[4/7] Installing merged wallpaper data and graphics rules..."
cp "$NEW_HEADER" "$HEADER_DST"
cp "$NEW_RULES" "$RULES_DST"

echo "[5/7] Installing the HLW storage code with the expanded wallpaper menu..."
cp "$C_SRC" "$C_DST"

# Clear generated wallpaper outputs and the storage object so Make rebuilds the
# new data from PNG/palette/tilemap sources. Source .bin files are preserved.
echo "[6/7] Clearing stale generated graphics/objects..."
find "$ASSET_DST" -type f \( \
    -name '*.4bpp' -o -name '*.gbapal' -o -name '*.smol' -o \
    -name '*.smolTM' -o -name '*.lz' \) -delete 2>/dev/null || true
rm -f "$ROOT/build/modern/src/pokemon_storage_system.o" \
      "$ROOT/build/modern/src/pokemon_storage_system.d"
touch "$C_DST" "$HEADER_DST" "$RULES_DST"

echo "[7/7] Port installed."
echo
echo "Backup: $BACKUP"
echo "Now build with:"
echo "  cd '$ROOT' && make -j8"
