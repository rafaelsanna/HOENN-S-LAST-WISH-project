# WishDex exports

The player-facing WishDex is `wishdex.html`. Its dialog and hover behavior lives
in `wishdex.js`, separately from the site's navigation and slideshow in
`script.js`. `wishdex-data.js` and the card markup are generated from the game.

After editing Pokémon data or sprites, run:

```sh
python3 tools/wishdex/generate.py
python3 tools/wishdex/generate.py --check
```

Requirements: Python 3, Pillow, and `cpp` (the C preprocessor included with GCC).
Generated files are committed, so visitors and GitHub Pages do not need these
tools. The Pages workflow copies both WishDex scripts and the image directory.

Browser regression tests (requires Node and Playwright with Chromium installed):

```sh
node tools/wishdex/test.cjs
```

The test starts a temporary local server and checks all profiles, shiny toggles,
hidden entries, hover, keyboard/focus behavior, desktop/mobile layouts, light
mode, asset requests, and the home page's navigation/slideshow. External widgets
are excluded from this local test.

The manifest in `generate.py` follows the sprite sheet's row order and uses
internal species identifiers. Displayed names, stats, types, abilities,
descriptions, height, weight, evolutions, and level-up learnsets come from the
repo's active configuration. Indexed front sprites are exported as transparent
PNGs using their normal and shiny palettes. Hover uses the second frame.

Hidden entries export only a neutral ID and a flat gray silhouette. They have
no clickable card, profile, name, or shiny/hover frame. Evolution references to
them are labeled as an undiscovered Pokémon. Shiny toggles are omitted when a
source palette does not cover the sprite's color indices; game assets are not
modified to work around incomplete palettes.
