#!/usr/bin/env python3
"""Recolor frames 3–20 in Summary display order; preserve pixel indices and background."""
from pathlib import Path
import colorsys
import re
from PIL import Image, ImageDraw

ROOT = Path(__file__).resolve().parents[1]
FRAMES = ROOT / 'graphics/text_window'
LOCK = (33, 33, 41)


def main():
    source = (ROOT / 'src/pokemon_summary_screen.c').read_text()
    order_block = source.split('sSummaryThemeCycleOrder[SUMMARY_COLOR_THEME_COUNT] =', 1)[1].split('};', 1)[0]
    order = re.findall(r'SUMMARY_COLOR_THEME_(\w+)', order_block)
    palette_block = source.split('sSummaryThemeColors[SUMMARY_COLOR_THEME_COUNT] =', 1)[1].split('\n};', 1)[0]
    themes = {}
    for name, body in re.findall(r'\[SUMMARY_COLOR_THEME_(\w+)\] = \{(.*?)\}', palette_block, re.S):
        colors = re.findall(r'RGB\(\s*(\d+),\s*(\d+),\s*(\d+)\)', body)
        themes[name] = tuple(int(c) / 31 for c in colors[-1])
    assert len(order) == 16
    targets = [(name, themes[name]) for name in order]
    targets += [(name, tuple(c / 255 for c in rgb)) for name, rgb in [
        ('LIME', (186, 245, 48)), ('SCARLET', (255, 55, 35)),
        ('TANGERINE', (255, 127, 24)), ('MAGENTA', (244, 55, 255)),
    ]]
    untouched = [(FRAMES / f'{n}.png').read_bytes() for n in (1, 2)]
    preview = Image.new('RGB', (800, 540), (22, 24, 31))
    draw = ImageDraw.Draw(preview)
    for number, (name, target) in enumerate(targets, 1):
        path = FRAMES / f'{number}.png'
        im = Image.open(path)
        assert im.mode == 'P' and im.size == (24, 24)
        pixels = im.tobytes()
        pal = im.getpalette()
        used = sorted(set(pixels))
        assert max(used) < 16
        if number > 2:
            # Index 0 is transparent in-game; keep it and the exact dark center.
            editable = [i for i in used if i != 0 and tuple(pal[3*i:3*i+3]) != LOCK]
            editable.sort(key=lambda i: sum(c*w for c, w in zip(pal[3*i:3*i+3], (.2126, .7152, .0722))))
            h, s, v = colorsys.rgb_to_hsv(*target)
            for rank, index in enumerate(editable):
                t = rank / (len(editable) - 1)
                # Rich shadows, bright middle border, softly lit bevel highlights.
                value = .40 + .58 * t
                saturation = min(.90, s * 1.20) * (1 - .32 * t)
                rgb = tuple(round(c * 255) for c in colorsys.hsv_to_rgb(h, saturation, value))
                pal[3*index:3*index+3] = rgb
            im.putpalette(pal)
            im.save(path, bits=4, optimize=False)
            check = Image.open(path)
            assert check.mode == 'P' and check.tobytes() == pixels
            assert check.getpalette()[3:6] == list(LOCK)
            assert path.read_bytes()[24] == 4  # PNG IHDR bit depth
        # Reconstruct a real window from the nine 8x8 tiles.
        window = Image.new('RGB', (64, 32), LOCK)
        for y in range(4):
            for x in range(8):
                tx = 0 if x == 0 else 2 if x == 7 else 1
                ty = 0 if y == 0 else 2 if y == 3 else 1
                tile = im.crop((tx*8, ty*8, tx*8+8, ty*8+8))
                mask = Image.frombytes('L', tile.size, bytes(0 if i == 0 else 255 for i in tile.tobytes()))
                window.paste(tile.convert('RGB'), (x*8, y*8), mask)
        x, y = ((number-1) % 4)*200, ((number-1)//4)*108
        preview.paste(window.resize((192, 96), Image.Resampling.NEAREST), (x, y))
        draw.text((x+18, y+42), f'{number:02} {name.replace("MIDNIGHT_", "")}', fill='white')
        print(f'{number:02}: {name}' + (' (unchanged)' if number < 3 else ''))
    assert untouched == [(FRAMES / f'{n}.png').read_bytes() for n in (1, 2)]
    preview.save('/tmp/summary-frames-preview.png')


if __name__ == '__main__':
    main()
