#!/usr/bin/env bash
set -euo pipefail

REPO="${1:-$HOME/pokeemerald-expansion}"
SELF_DIR="$(cd "$(dirname "$0")" && pwd)"
DIR="$REPO/graphics/pokemon_storage/wallpapers/torchic"
RULES="$REPO/graphics_file_rules.mk"

[[ -d "$DIR" ]] || { echo "ERROR: Torchic wallpaper directory not found: $DIR" >&2; exit 1; }
[[ -f "$RULES" ]] || { echo "ERROR: graphics_file_rules.mk not found: $RULES" >&2; exit 1; }

STAMP="$(date +%Y%m%d_%H%M%S)"
BACKUP="$REPO/.hlw_torchic_v22_backup_$STAMP"
mkdir -p "$BACKUP"
cp -a "$DIR" "$BACKUP/torchic"
cp -a "$RULES" "$BACKUP/graphics_file_rules.mk"
echo "[1/4] Backup: $BACKUP"

cp "$SELF_DIR/torchic_tiles_green.png" "$DIR/tiles.png"
cp "$SELF_DIR/torchic_tilemap_green_pal1.bin" "$DIR/tilemap.bin"
echo "[2/4] Installed matching Torchic tiles + tilemap normalized to HGSS palette base 1."

python3 - "$RULES" <<'PY'
from pathlib import Path
import sys
p=Path(sys.argv[1])
s=p.read_text()
if '-num_tiles 86' in s:
    # Limit replacement to the Torchic rule region where possible.
    lines=s.splitlines(True)
    changed=False
    for i,line in enumerate(lines):
        if 'torchic' in line.lower():
            for j in range(i, min(i+10,len(lines))):
                if '-num_tiles 86' in lines[j]:
                    lines[j]=lines[j].replace('-num_tiles 86','-num_tiles 133')
                    changed=True
                    break
            if changed:
                break
    if changed:
        p.write_text(''.join(lines))
        print('[3/4] Torchic build rule confirmed at 133 tiles.')
    else:
        print('[3/4] Torchic 86-tile rule not found near Torchic; leaving rules unchanged.')
else:
    print('[3/4] Torchic rule already no longer uses 86 tiles.')
PY

rm -f \
  "$DIR/tiles.4bpp" \
  "$DIR/tiles.4bpp.lz" \
  "$DIR/tiles.4bpp.smol" \
  "$DIR/tiles.gbapal" \
  "$DIR/tilemap.bin.lz" \
  "$DIR/tilemap.bin.smolTM"

echo "[4/4] Cleared generated Torchic outputs."
echo
echo "Now run:"
echo "  cd $REPO && make -j8"
