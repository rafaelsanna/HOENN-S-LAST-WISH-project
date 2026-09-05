#!/usr/bin/env python3
from pathlib import Path
from PIL import Image
import colorsys

BASE_DIR = Path("graphics/text_window")
SOURCE = BASE_DIR / "1.png"

# This color must stay EXACTLY the same.
LOCK_RGB = (0x21, 0x21, 0x29)  # #212129

# Theme hue colors for 4..20.
THEMES = {
    4:  "#ff6fb5",  # pink
    5:  "#5aa7ff",  # blue
    6:  "#56d6a9",  # mint
    7:  "#ff625f",  # red
    8:  "#e3aa3d",  # gold
    9:  "#89d8ff",  # ice blue
    10: "#f18a3c",  # orange
    11: "#b98cff",  # lavender
    12: "#b8d94a",  # lime
    13: "#4cc8ff",  # cyan
    14: "#d8b882",  # sand
    15: "#806bff",  # violet
    16: "#42d6d0",  # aqua
    17: "#d2d5dc",  # silver
    18: "#f2d94e",  # yellow
    19: "#e87cff",  # magenta
    20: "#f29ab5",  # pastel pink
}

def hex_to_rgb(value):
    value = value.lstrip("#")
    return tuple(int(value[i:i+2], 16) for i in (0, 2, 4))

def luma(rgb):
    r, g, b = rgb
    return (0.2126 * r + 0.7152 * g + 0.0722 * b) / 255.0

def recolor_with_hue(src_rgb, target_rgb):
    """
    Keep the source color's relative brightness, but replace its hue/saturation
    with the theme color. This preserves the sprite's light/dark structure.
    """
    src_v = luma(src_rgb)

    tr, tg, tb = [c / 255.0 for c in target_rgb]
    h, s, _ = colorsys.rgb_to_hsv(tr, tg, tb)

    # Keep enough saturation for the border to read well.
    s = max(s, 0.35)

    # Map source luminance into a useful themed value range.
    # Dark source pixels stay dark; bright source pixels become highlights.
    v = 0.22 + src_v * 0.78

    r, g, b = colorsys.hsv_to_rgb(h, s, min(v, 1.0))
    return (round(r * 255), round(g * 255), round(b * 255))

def main():
    if not SOURCE.exists():
        raise SystemExit(f"ERROR: {SOURCE} not found.")

    src = Image.open(SOURCE)

    if src.mode != "P":
        raise SystemExit(
            f"ERROR: {SOURCE} must be an indexed/paletted PNG (mode P), "
            f"but it is {src.mode}."
        )

    used_indices = sorted(set(src.getdata()))
    if len(used_indices) > 16:
        raise SystemExit(
            f"ERROR: source uses {len(used_indices)} colors; 4bpp supports at most 16."
        )

    palette = src.getpalette()
    if palette is None:
        raise SystemExit("ERROR: source PNG has no palette.")

    source_colors = {
        idx: tuple(palette[idx * 3: idx * 3 + 3])
        for idx in used_indices
    }

    locked_indices = [
        idx for idx, rgb in source_colors.items()
        if rgb == LOCK_RGB
    ]

    if not locked_indices:
        raise SystemExit(
            "ERROR: #212129 was not found in 1.png, so I stopped instead of "
            "risking recoloring the center."
        )

    print("Source:", SOURCE)
    print("Mode:", src.mode)
    print("Used palette indices:", used_indices)
    print("Locked #212129 indices:", locked_indices)

    for number, theme_hex in THEMES.items():
        target = hex_to_rgb(theme_hex)

        # Copy pixel INDICES exactly. Only palette entries change.
        out = src.copy()
        new_palette = list(palette)

        for idx in used_indices:
            old_rgb = source_colors[idx]

            if old_rgb == LOCK_RGB:
                new_rgb = LOCK_RGB
            else:
                new_rgb = recolor_with_hue(old_rgb, target)

            new_palette[idx * 3: idx * 3 + 3] = list(new_rgb)

        # Ensure a full 256-entry RGB palette for Pillow.
        if len(new_palette) < 768:
            new_palette += [0] * (768 - len(new_palette))
        else:
            new_palette = new_palette[:768]

        out.putpalette(new_palette)

        # Keep PNG indexed, 4-bit, <=16 used colors.
        out_path = BASE_DIR / f"{number}.png"
        out.save(out_path, format="PNG", bits=4, optimize=False)

        # Verify the generated PNG before moving on.
        check = Image.open(out_path)
        if check.mode != "P":
            raise SystemExit(
                f"ERROR: generated {out_path} is {check.mode}, expected P."
            )

        used = sorted(set(check.getdata()))
        if len(used) > 16:
            raise SystemExit(
                f"ERROR: generated {out_path} uses {len(used)} colors."
            )

        check_pal = check.getpalette()
        for locked_idx in locked_indices:
            rgb = tuple(check_pal[locked_idx * 3: locked_idx * 3 + 3])
            if rgb != LOCK_RGB:
                raise SystemExit(
                    f"ERROR: {out_path} changed locked #212129 at palette "
                    f"index {locked_idx}: {rgb}"
                )

        print(f"OK {number:02d}.png  {theme_hex}  P-mode / {len(used)} colors")

    print()
    print("DONE: 4.png through 20.png generated as indexed paletted PNGs.")
    print("The #212129 center was preserved exactly.")

if __name__ == "__main__":
    main()
