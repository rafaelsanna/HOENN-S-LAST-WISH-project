#!/usr/bin/env bash
set -euo pipefail

# HLW PC wallpapers V23c recovery/install.
# - restores missing HGSS-format source assets without overwriting existing customs
# - installs the single-palette wallpaper runtime
# - removes per-wallpaper -num_tiles limits from direct tiles.png rules
# - clears generated derivatives so make rebuilds from the current source art

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
BACKUP="$ROOT/.hlw_wallpaper_v23c_backup_$STAMP"
mkdir -p "$BACKUP/src" "$BACKUP/graphics"
cp "$C_DST" "$BACKUP/src/pokemon_storage_system.c"
cp "$RULES" "$BACKUP/graphics_file_rules.mk"

echo "[1/6] Backup created: $BACKUP"

# Read direct HGSS-style wallpaper directories from the current storage rules.
mapfile -t DIRS < <(python3 - "$RULES" <<'PY'
from pathlib import Path
import re, sys
s = Path(sys.argv[1]).read_text()
start = s.find('### Pokémon Storage System ###')
end = s.find('### Pokenav ###', start) if start >= 0 else -1
sec = s[start:end if end >= 0 else None] if start >= 0 else s
names = set()
for m in re.finditer(r'\$\(WALLPAPERGFXDIR\)/([^/\s:]+)/tiles\.4bpp\s*:', sec):
    names.add(m.group(1))
for n in sorted(names):
    print(n)
PY
)

if [[ ${#DIRS[@]} -eq 0 ]]; then
    echo "ERROR: no direct wallpaper tiles.png rules found in graphics_file_rules.mk" >&2
    exit 1
fi

echo "[2/6] Checking ${#DIRS[@]} wallpaper source directories..."

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
UPSTREAM=""

find_backup_file() {
    local rel="$1"
    # newest matching hidden HLW backup first
    find "$ROOT" -maxdepth 5 -type f -path "$ROOT/.hlw_*backup_*/graphics/pokemon_storage/wallpapers/$rel" \
        -printf '%T@ %p\n' 2>/dev/null | sort -nr | head -1 | cut -d' ' -f2-
}

need_upstream=0
for d in "${DIRS[@]}"; do
    mkdir -p "$ASSETS/$d"
    for f in tiles.png tilemap.bin; do
        if [[ ! -f "$ASSETS/$d/$f" ]]; then
            rel="$d/$f"
            src="$(find_backup_file "$rel" || true)"
            if [[ -n "$src" && -f "$src" ]]; then
                cp "$src" "$ASSETS/$d/$f"
                echo "      restored $rel from local backup"
            else
                need_upstream=1
            fi
        fi
    done
done

if [[ $need_upstream -eq 1 ]]; then
    echo "      Some sources were not in local backups; fetching upstream fallback..."
    UPSTREAM="$TMP/upstream"
    git clone --quiet --depth 1 --single-branch --branch wallpapers \
        https://github.com/Greenphx9/pokeemerald-expansion.git "$UPSTREAM"
    UP_ASSETS="$UPSTREAM/graphics/pokemon_storage/wallpapers"
    for d in "${DIRS[@]}"; do
        for f in tiles.png tilemap.bin; do
            dst="$ASSETS/$d/$f"
            [[ -f "$dst" ]] && continue
            src="$UP_ASSETS/$d/$f"
            if [[ -f "$src" ]]; then
                cp "$src" "$dst"
                echo "      restored $d/$f from upstream"
            fi
        done
    done
fi

missing=0
for d in "${DIRS[@]}"; do
    for f in tiles.png tilemap.bin; do
        if [[ ! -f "$ASSETS/$d/$f" ]]; then
            echo "ERROR: still missing $ASSETS/$d/$f" >&2
            missing=1
        fi
    done
done
[[ $missing -eq 0 ]] || exit 1

echo "[3/6] All required wallpaper source assets are present. Existing custom files were NOT overwritten."

cp "$C_SRC" "$C_DST"
echo "[4/6] Installed the HLW single-palette wallpaper runtime."

python3 - "$RULES" <<'PY'
from pathlib import Path
import re, sys
p = Path(sys.argv[1])
s = p.read_text()
start_marker = '### Pokémon Storage System ###'
end_marker = '### Pokenav ###'
start = s.find(start_marker)
if start < 0:
    raise SystemExit('ERROR: Pokémon Storage System rules section not found')
end = s.find(end_marker, start)
if end < 0:
    end = len(s)
pre, sec, post = s[:start], s[start:end], s[end:]
# Editable direct-sheet slots must not retain upstream fixed tile-count caps.
sec2 = re.sub(r'\s+-num_tiles\s+\d+\s+-Wnum_tiles', '', sec)
p.write_text(pre + sec2 + post)
print('      removed fixed -num_tiles limits from wallpaper build recipes')
PY

echo "[5/6] Updated wallpaper build rules for editable HLW sheets."

# Clear generated derivatives ONLY, never source PNG/BIN artwork.
for d in "${DIRS[@]}"; do
    rm -f "$ASSETS/$d/tiles.4bpp" \
          "$ASSETS/$d/tiles.4bpp.lz" \
          "$ASSETS/$d/tiles.4bpp.smol" \
          "$ASSETS/$d/tiles.gbapal" \
          "$ASSETS/$d/tilemap.bin.lz" \
          "$ASSETS/$d/tilemap.bin.smolTM"
done
rm -f "$ROOT/build/modern/src/pokemon_storage_system.o" \
      "$ROOT/build/modern/src/pokemon_storage_system.d"
touch "$C_DST" "$RULES"

echo "[6/6] Recovery + V23 runtime installation complete."
echo
echo "Now run:"
echo "  cd '$ROOT' && make -j8"
echo
echo "Backup: $BACKUP"
