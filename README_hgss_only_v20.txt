HOENN'S LAST WISH - HGSS-ONLY PC WALLPAPER STANDARD V20

This version intentionally stops trying to support two regular-wallpaper source
formats at the same time.

Player-facing wallpaper menu:
  HGSS 1: Space, Backyard, Nostalgic 1, Torchic, Trio 1, Pika Pika 1
  HGSS 2: Time & Space, Galactic 1, Distortion, Contest, Nostalgic 2, Croagunk
  HGSS 3: Trio 2, Pika Pika 2, Renegade, Galactic 2, Heart, Soul
  HGSS 4: Big Brother, Pokeathlon, Trio 3, Spiky Pika, Kimono Girl, Revival

Legacy Emerald wallpaper IDs remain only as save-compatibility placeholders.
If an old save contains one of those IDs, the storage code displays the first
HGSS wallpaper instead. The legacy wallpapers are no longer selectable.

The installer:
  * backs up C/header/rules/all wallpaper assets;
  * fetches the Greenphx9 wallpapers branch;
  * discovers HGSS-format wallpapers via their tiles.png source;
  * replaces those directories with coherent upstream copies;
  * preserves the user's custom torchic/tiles.png;
  * normalizes HGSS tilemap palette bases to 1 so both PC double buffers use
    the exact same convention;
  * installs the upstream storage graphics rules section;
  * preserves HLW's modern Walda tail;
  * installs the HLW C without the V19 mixed-format palette detector;
  * cleans generated wallpaper derivatives before rebuilding.
