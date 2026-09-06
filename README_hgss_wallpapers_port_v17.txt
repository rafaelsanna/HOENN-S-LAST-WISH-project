HOENN'S LAST WISH - HGSS WALLPAPER PORT V17
===========================================

Source:
  Greenphx9/pokeemerald-expansion
  branch: wallpapers
  graphics/pokemon_storage/wallpapers

WHAT THIS PORT DOES
-------------------
- Uses the user's current pokemon_storage_system(4).c as the base.
- Keeps all HLW PC work intact: dark UI, BG themes, Party palette split,
  CHECK/WISHED, icon palette fix, text positioning, etc.
- Adds the expanded wallpaper menu from the feature branch:
  SCENERY 1 / SCENERY 2 / ETCETERA 1..4 / FRIENDS.
- Adds the HGSS wallpaper menu entries (Space, Backyard, Nostalgic, Torchic,
  Trio, Pika Pika, Time & Space, Galactic, Distortion, Contest, Croagunk,
  Renegade, Heart, Soul, Big Brother, Pokeathlon, Spiky Pika, Kimono Girl,
  Revival, and the numbered variants from the branch).
- Imports the exact open-source wallpaper source assets at install time.
- Imports only the Pokemon Storage graphics-rule section from the feature
  branch, leaving the rest of HLW graphics_file_rules.mk untouched.
- Keeps the current HLW Walda/custom wallpaper data.
- Preserves WALLPAPER_FRIENDS's legacy numeric id to avoid remapping an old
  saved FRIENDS wallpaper to a new HGSS wallpaper.

INSTALL
-------
1. Extract this bundle anywhere.
2. From the bundle directory run:

     ./import_hgss_wallpapers_v17.sh ~/pokeemerald-expansion

3. Then build:

     cd ~/pokeemerald-expansion
     make -j8

The installer creates a timestamped backup in the project root before changing
src/pokemon_storage_system.c, src/data/wallpapers.h, or graphics_file_rules.mk.

WHY THE INSTALLER FETCHES THE ASSETS
------------------------------------
The wallpaper art remains sourced directly from the public feature branch
instead of being recreated or renamed by hand. This ensures the PNGs, palettes,
tilemaps, shared frames and build rules stay exactly matched to that branch.
Existing HLW wallpaper artwork is not overwritten (cp -n); only missing/new
files are imported.
