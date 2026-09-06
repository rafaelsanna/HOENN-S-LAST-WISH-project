#!/usr/bin/env bash
set -euo pipefail
REPO="${1:-$HOME/pokeemerald-expansion}"
HERE="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO"
cp -r "$HERE/graphics/pokemon_storage/wallpapers/"* graphics/pokemon_storage/wallpapers/
for d in nostalgic1 trio1 pikapika1 timeandspace galactic1; do
  rm -f "graphics/pokemon_storage/wallpapers/$d/tiles.4bpp"*
  rm -f "graphics/pokemon_storage/wallpapers/$d/tiles.gbapal"
  rm -f "graphics/pokemon_storage/wallpapers/$d/tilemap.bin."*
done
rm -f build/modern/src/pokemon_storage_system.o build/modern/src/pokemon_storage_system.d
touch src/pokemon_storage_system.c
echo "V29b assets installed. Run: make -j8"
