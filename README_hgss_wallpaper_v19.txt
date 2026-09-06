HOENN'S LAST WISH - HGSS WALLPAPER REPAIR V19

What V19 fixes
--------------
1. Wallpaper depends on the box beside it / odd-even box behavior.
   The PC double-buffers wallpapers. Legacy Emerald tilemaps and the imported
   HGSS-style tilemaps do not use the same authored palette numbers. V19
   detects the first palette bank used by each 20x18 tilemap and remaps it to
   the correct live wallpaper banks (4/5 or 6/7).

2. Legacy wallpapers became visually scrambled after the V17 import.
   V17 used `cp -an` when importing source assets. That preserved old files
   while adding new branch files, which could pair a legacy tilemap with a new
   tileset/build rule. The V19 repair script overwrites wallpaper source assets
   with one coherent upstream set.

3. Custom Torchic recolor is preserved.
   `graphics/pokemon_storage/wallpapers/torchic/tiles.png` is saved before the
   upstream resync and restored afterward.

Install
-------
Place this bundle anywhere (the repo root is fine), then from Debian:

  cd ~/pokeemerald-expansion
  chmod +x repair_hgss_wallpapers_v19.sh
  ./repair_hgss_wallpapers_v19.sh ~/pokeemerald-expansion
  make -j8

The script creates a full wallpaper-source backup before changing anything.
