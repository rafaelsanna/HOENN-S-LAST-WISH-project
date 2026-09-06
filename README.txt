HLW Torchic Wallpaper V22

Root cause:
V20 standardized HGSS tilemaps so their source palette bank starts at 1.
V21 restored the custom green Torchic tilemap after that normalization; that map
uses palette bank 0 for all 360 entries. The HGSS DrawWallpaper path adds its
runtime palette offset assuming source bank 1, so Torchic geometry was correct
but colors referenced the wrong live bank and could depend on neighbouring boxes.

This fix:
- keeps the 133-tile green Torchic sheet
- keeps the matching custom tile indices
- changes only tilemap palette nibble 0 -> 1
- keeps the Torchic rule at 133 tiles
- forces Torchic generated outputs to rebuild
- no C changes
