#!/usr/bin/env python3
"""Crop the indexed Indie Radio cover canvases to their embedded 64x64 art.

The cover sources have a #6ABE30 canvas around a single 64x64 album square.
Palette index 0 is deliberately kept as that green color because index 0 is
transparent for GBA OBJ sprites.  This script is safe to rerun: once a cover
has been cropped to 64x64 it is only validated, not cropped again.
"""

from collections import deque
from pathlib import Path
from shutil import copy2

from PIL import Image


ROOT = Path(__file__).resolve().parent.parent
COVERS_DIR = ROOT / "graphics" / "radio" / "covers"
BACKUP_DIR = ROOT / "PHYTON" / "_backups" / "radio_indie_cover_crops_v1"
GREEN = (106, 190, 48)  # #6ABE30, source palette index 0.

COVERS = (
    "AM",
    "KIDA",
    "ThreeImaginaryBoys",
    "aintnorestforthewicked",
    "amnesiac",
    "desintegration",
    "dracula",
    "eitheror",
    "freakingouttheneibhorhood",
    "hailtothethief",
    "isthisit",
    "okcomputer",
    "roomonfire",
    "slouvaki",
    "thebends",
    "thequeenisdead",
    "tonightthatimightsee",
    "unknowpleasures",
    "wish",
)


def die(message):
    raise SystemExit(f"ERROR: {message}")


def get_crop_box(image):
    """Find the non-canvas rectangle without treating interior green as canvas."""
    rgb = image.convert("RGB")
    width, height = rgb.size
    if rgb.getpixel((0, 0)) != GREEN:
        die("expected #6ABE30 at the top-left canvas pixel")

    canvas = bytearray(width * height)
    queue = deque()

    def enqueue(x, y):
        index = y * width + x
        if not canvas[index] and rgb.getpixel((x, y)) == GREEN:
            canvas[index] = 1
            queue.append((x, y))

    for x in range(width):
        enqueue(x, 0)
        enqueue(x, height - 1)
    for y in range(height):
        enqueue(0, y)
        enqueue(width - 1, y)

    while queue:
        x, y = queue.popleft()
        if x:
            enqueue(x - 1, y)
        if x + 1 < width:
            enqueue(x + 1, y)
        if y:
            enqueue(x, y - 1)
        if y + 1 < height:
            enqueue(x, y + 1)

    points = [
        (index % width, index // width)
        for index, is_canvas in enumerate(canvas)
        if not is_canvas
    ]
    if not points:
        die("found no cover art outside the green canvas")

    left = min(x for x, _ in points)
    top = min(y for _, y in points)
    right = max(x for x, _ in points) + 1
    bottom = max(y for _, y in points) + 1
    if (right - left, bottom - top) != (64, 64):
        die(
            f"expected one 64x64 art square, found "
            f"{right - left}x{bottom - top}+{left}+{top}"
        )
    return left, top, right, bottom


def reserve_transparent_palette_entry(image):
    """Turn an RGB crop into a 4bpp palette image with green reserved at index 0."""
    quantized = image.convert("RGB").quantize(
        colors=15,
        method=Image.Quantize.MEDIANCUT,
        dither=Image.Dither.NONE,
    )
    remapped = quantized.point([min(index + 1, 255) for index in range(256)])
    old_palette = quantized.getpalette()
    palette = list(GREEN) + old_palette[:45] + [0] * (768 - 48)
    remapped.putpalette(palette)
    return remapped


def validate_output(path):
    with Image.open(path) as image:
        if image.size != (64, 64) or image.mode != "P":
            die(f"{path.name}: expected an indexed 64x64 PNG")
        colors = image.getcolors(maxcolors=17)
        if colors is None or len(colors) > 16:
            die(f"{path.name}: expected at most 16 colors")
        if max(index for _, index in colors) > 15:
            die(f"{path.name}: uses a palette index above 15")
        if tuple(image.getpalette()[:3]) != GREEN:
            die(f"{path.name}: palette index 0 is not the transparent green")


def crop_cover(path):
    with Image.open(path) as source:
        source.load()
        if source.size == (64, 64):
            validate_output(path)
            return False

        box = get_crop_box(source)
        if source.mode == "P":
            if tuple(source.getpalette()[:3]) != GREEN:
                die(f"{path.name}: source palette index 0 is not #6ABE30")
            output = source.crop(box)
        else:
            output = reserve_transparent_palette_entry(source.crop(box))

        BACKUP_DIR.mkdir(parents=True, exist_ok=True)
        backup = BACKUP_DIR / path.name
        if not backup.exists():
            copy2(path, backup)

        output.save(path, format="PNG", bits=4, optimize=False)

    validate_output(path)
    return True


def main():
    changed = 0
    for stem in COVERS:
        path = COVERS_DIR / f"{stem}.png"
        if not path.exists():
            die(f"missing source cover: {path.relative_to(ROOT)}")
        if crop_cover(path):
            changed += 1
            print(f"[CROP] {path.relative_to(ROOT)}")
        else:
            print(f"[OK]   {path.relative_to(ROOT)}")
    print(f"\n[OK] Cropped {changed} Indie cover(s) to indexed 64x64 PNGs.")


if __name__ == "__main__":
    main()
