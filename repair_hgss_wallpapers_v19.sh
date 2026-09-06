#!/usr/bin/env bash
set -euo pipefail

# HOENN'S LAST WISH - HGSS wallpaper bank/asset repair V19
#
# Fixes two issues from the first wallpaper import:
#  1) cp -an kept legacy source files while adding new branch source files,
#     allowing old tilemaps to be paired with new tilesets/rules.
#  2) pokemon_storage_system.c used a fixed tilemap palette offset even though
#     legacy and HGSS wallpaper tilemaps use different source palette numbers.
#
# This repair overwrites wallpaper source assets with a coherent copy from the
# open-source 'wallpapers' branch, while preserving the user's edited
# torchic/tiles.png. It then installs the V19 storage source supplied beside
# this script.

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
ROOT="${1:-$PWD}"
ROOT="$(cd "$ROOT" && pwd)"

C_SRC="$SCRIPT_DIR/pokemon_storage_system_hgss_wallpaper_bankfix_v19.c"
C_DST="$ROOT/src/pokemon_storage_system.c"
ASSET_DST="$ROOT/graphics/pokemon_storage/wallpapers"

if [[ ! -f "$C_SRC" ]]; then
    echo "ERROR: missing bundled source: $C_SRC" >&2
    exit 1
fi
if [[ ! -f "$C_DST" || ! -d "$ASSET_DST" ]]; then
    echo "ERROR: '$ROOT' does not look like the HLW pokeemerald-expansion repo." >&2
    exit 1
fi

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
UPSTREAM="$TMP/upstream"

STAMP="$(date +%Y%m%d_%H%M%S)"
BACKUP="$ROOT/.hlw_wallpaper_v19_backup_$STAMP"
mkdir -p "$BACKUP"
cp "$C_DST" "$BACKUP/pokemon_storage_system.c"
cp -a "$ASSET_DST" "$BACKUP/wallpapers"

echo "[1/5] Backup created: $BACKUP"

echo "[2/5] Fetching Greenphx9 wallpapers branch..."
git clone --quiet --depth 1 --single-branch --branch wallpapers \
    https://github.com/Greenphx9/pokeemerald-expansion.git "$UPSTREAM"

UPSTREAM_ASSETS="$UPSTREAM/graphics/pokemon_storage/wallpapers"
if [[ ! -d "$UPSTREAM_ASSETS" ]]; then
    echo "ERROR: upstream wallpaper directory not found." >&2
    exit 1
fi

# Preserve the user's recolored Torchic artwork only. The tilemap and other
# source files are intentionally refreshed from upstream so they remain a
# coherent set with the imported rules.
CUSTOM_TORCHIC="$TMP/torchic_tiles_custom.png"
if [[ -f "$ASSET_DST/torchic/tiles.png" ]]; then
    cp "$ASSET_DST/torchic/tiles.png" "$CUSTOM_TORCHIC"
fi

echo "[3/5] Re-synchronizing wallpaper source assets..."
# IMPORTANT: overwrite matching files. The original V17 used cp -an, which is
# what allowed legacy tilemaps to remain beside HGSS tilesets.
cp -a "$UPSTREAM_ASSETS/." "$ASSET_DST/"

if [[ -f "$CUSTOM_TORCHIC" ]]; then
    mkdir -p "$ASSET_DST/torchic"
    cp "$CUSTOM_TORCHIC" "$ASSET_DST/torchic/tiles.png"
    echo "      Preserved custom torchic/tiles.png"
fi

echo "[4/5] Installing wallpaper double-buffer/palette fix..."
cp "$C_SRC" "$C_DST"

# Rebuild every generated wallpaper artifact from the now-consistent source
# assets. Keep authored .bin tilemaps; only generated/compressed outputs go.
find "$ASSET_DST" -type f \( \
    -name '*.4bpp' -o -name '*.gbapal' -o -name '*.smol' -o \
    -name '*.smolTM' -o -name '*.lz' \) -delete 2>/dev/null || true

rm -f "$ROOT/build/modern/src/pokemon_storage_system.o" \
      "$ROOT/build/modern/src/pokemon_storage_system.d"
touch "$C_DST"

echo "[5/5] Repair installed."
echo
echo "Now run:"
echo "  cd '$ROOT' && make -j8"
echo
echo "Backup: $BACKUP"
