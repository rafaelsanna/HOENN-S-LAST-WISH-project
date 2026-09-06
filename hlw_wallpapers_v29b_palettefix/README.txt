HLW Wallpapers V29b palette fix

Fixes the five generated tiles.png files so their PNG PLTE contains exactly 16 entries.
The previous V29 files had 256 palette entries in the PNG even though only indices 0-15 were used; gbagfx therefore emitted an oversized tiles.gbapal, which overflowed sWallpaperPalettes_*[][16].

Mapped slots:
nostalgic1 = BLUE SKY
trio1 = NIGHT SKY
pikapika1 = SOFT SKY
timeandspace = PINK SKY
galactic1 = DREAM SKY
