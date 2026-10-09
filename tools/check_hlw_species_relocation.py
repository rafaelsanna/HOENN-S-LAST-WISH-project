#!/usr/bin/env python3
"""Check the eight custom graphic transfers and their restored native slots.

Run from any directory; reads local Git history and source assets only. Requires
Pillow, as used by the WishDex tools. PNG compression/metadata and JASC palette
line endings, unused entries beyond 16, and added palette padding are insignificant.
The pre-relocation artwork is the preservation baseline, including existing
placeholder backs/footprints; this check does not invent replacement artwork.
"""

import io
import re
import subprocess
import sys
from functools import lru_cache
from pathlib import Path

try:
    from PIL import Image
except ImportError:
    sys.exit("This checker requires Pillow (python3 -m pip install Pillow).")

ROOT = Path(__file__).resolve().parents[1]
CUSTOM_REF = "f425794d23^"
NATIVE_REF = "f969c126b1f74a799f98f0bb9551b737abe812eb"
TRANSFERS = (
    ("Darkrai", "Dachsbun"),
    ("Volcarona", "Arboliva"),
    ("Druddigon", "Pawmot"),
    ("Virizion", "Wiglett"),
    ("Bibarel", "Scovillain"),
    ("Ducklett", "Nickit"),
    ("Escavalier", "Clobbopus"),
    ("Swanna", "Grapploct"),
)
PNGS = ("anim_front", "back", "icon", "footprint", "overworld")
PALETTES = ("normal", "shiny", "overworld_normal", "overworld_shiny")
GRAPHICS_HEADER = "src/data/graphics/pokemon.h"
FOLLOWER_HEADER = "src/data/object_events/object_event_pic_tables_followers.h"
SPECIES_HEADERS = (
    "src/data/pokemon/species_info/gen_4_families.h",
    "src/data/pokemon/species_info/gen_5_families.h",
    "src/data/pokemon/species_info/gen_8_families.h",
    "src/data/pokemon/species_info/gen_9_families.h",
)


@lru_cache(maxsize=None)
def historical(ref, path):
    result = subprocess.run(["git", "show", f"{ref}:{path}"], cwd=ROOT,
                            capture_output=True)
    if result.returncode:
        raise ValueError(f"Cannot read {ref}:{path}: {result.stderr.decode().strip()}")
    return result.stdout


def palette(data):
    """Available active 4bpp GBA colors, ignoring unused entries after 16."""
    lines = data.decode("utf-8-sig").splitlines()
    if len(lines) < 3 or lines[0].strip() != "JASC-PAL":
        raise ValueError("Expected a JASC-PAL palette")
    count = int(lines[2])
    colors = [tuple(int(channel) >> 3 for channel in line.split())
              for line in lines[3:] if line.strip()]
    if len(colors) != count or any(len(color) != 3 for color in colors):
        raise ValueError("Invalid JASC palette entry count")
    return tuple(colors[:16])


def pixels(data):
    """Compare indexed pixels, not PNG encoding or irrelevant embedded colors.

    Gbagfx consumes palette indices; the active battle/overworld palettes are
    checked separately. This also accepts equivalent 4-bit and 8-bit PNGs.
    """
    with Image.open(io.BytesIO(data)) as image:
        image.load()
        if image.mode != "P":
            raise ValueError(f"Expected indexed PNG, got {image.mode}")
        return image.size, image.tobytes()


def icon_palette(data):
    # icon.gbapal is generated from icon.png, not icon_normal.pal.
    with Image.open(io.BytesIO(data)) as image:
        colors = image.getpalette()
        if colors is None:
            raise ValueError("Icon PNG has no palette")
        colors = (colors + [0] * 48)[:48]
        return tuple(channel >> 3 for channel in colors)


def species_block(text, species):
    # Mask comments and quoted text so braces in prose cannot affect nesting.
    masked = re.sub(r'//[^\n]*|/\*.*?\*/|"(?:\\.|[^"\\])*"',
                    lambda match: " " * len(match[0]), text, flags=re.S)
    match = re.search(rf"\[SPECIES_{species.upper()}\]\s*=\s*\{{", masked)
    if not match:
        raise ValueError(f"Missing species definition: {species}")
    start = match.end() - 1
    depth = 0
    for end in range(start, len(masked)):
        depth += (masked[end] == "{") - (masked[end] == "}")
        if depth == 0:
            return text[start:end + 1]
    raise ValueError(f"Unclosed species definition: {species}")


class Checker:
    def __init__(self):
        self.errors = []
        self.assets = 0
        self.graphics = (ROOT / GRAPHICS_HEADER).read_text()
        self.followers = (ROOT / FOLLOWER_HEADER).read_text()
        self.species = "\n".join((ROOT / path).read_text() for path in SPECIES_HEADERS)

    def require(self, condition, message):
        if not condition:
            self.errors.append(message)

    def compare(self, ref, source, destination):
        try:
            old = historical(ref, source)
            new = (ROOT / destination).read_bytes()
            if destination.endswith(".png"):
                equal = pixels(old) == pixels(new)
            else:
                expected = palette(old)
                actual = palette(new) + ((0, 0, 0),) * 16
                # Short old palettes were expanded to 16 entries. Their new
                # unused padding has no historical color to preserve.
                equal = expected == actual[:len(expected)]
            self.require(equal,
                         f"Asset differs: {destination} != {ref}:{source}")
            if destination.endswith("/icon.png"):
                self.require(icon_palette(old) == icon_palette(new),
                             f"Active icon palette differs: {destination}")
            self.assets += 1
        except (OSError, ValueError) as error:
            self.errors.append(f"{destination}: {error}")

    def binding(self, symbol, directory, asset):
        paths = re.findall(rf'\b{symbol}\[\]\s*=\s*INCBIN_\w+\("([^"]+)"\)',
                           self.graphics)
        expected = f"graphics/pokemon/{directory}/{asset}."
        self.require(bool(paths) and all(path.startswith(expected) for path in paths),
                     f"{symbol} must load {expected}*; found {paths}")

    def references(self, species, native=False, previous=None):
        directory = species.lower()
        block = species_block(self.species, species)
        ref = NATIVE_REF if native else CUSTOM_REF
        original = species_block("\n".join(historical(ref, path).decode()
                                           for path in SPECIES_HEADERS), previous or species)
        for field, prefix, asset in (
            ("frontPic", "gMonFrontPic", "anim_front"),
            ("backPic", "gMonBackPic", "back"),
            ("palette", "gMonPalette", "normal"),
            ("shinyPalette", "gMonShinyPalette", "shiny"),
            ("iconSprite", "gMonIcon", "icon"),
        ):
            symbol = f"{prefix}_{species}"
            self.require(re.search(rf"\.{field}\s*=\s*{symbol}\s*,", block),
                         f"{species}.{field} must use {symbol}")
            self.binding(symbol, directory, asset)
        footprint = re.search(r"\bFOOTPRINT\(\s*(\w+)\s*\)", original)[1]
        if footprint == previous:
            footprint = species
        self.require(re.search(rf"\bFOOTPRINT\(\s*{footprint}\s*\)", block),
                     f"{species} must preserve FOOTPRINT({footprint})")
        self.binding(f"gMonFootprint_{footprint}", footprint.lower(), "footprint")
        if footprint != species:
            path = f"graphics/pokemon/{footprint.lower()}/footprint.png"
            self.compare(ref, path, path)
        self.require(re.search(rf"\bOVERWORLD\(\s*sPicTable_{species}\s*,", block),
                     f"{species} must use its own overworld table")
        table = re.search(rf"\bsPicTable_{species}\[\]\s*=\s*\{{([^}}]+)\}}", self.followers)
        self.require(table and re.search(rf"\bgObjectEventPic_{species}\b", table[1]),
                     f"{species} overworld table must use its own graphic")
        self.binding(f"gObjectEventPic_{species}", directory, "overworld")
        for prefix, asset in (("gOverworldPalette", "overworld_normal"),
                              ("gShinyOverworldPalette", "overworld_shiny")):
            self.require(re.search(rf"\b{prefix}_{species}\b", block),
                         f"{species} must use its own {asset} palette")
            self.binding(f"{prefix}_{species}", directory, asset)
        if native:
            old_index = re.search(r"\.iconPalIndex\s*=\s*([^,]+)", original)
            new_index = re.search(r"\.iconPalIndex\s*=\s*([^,]+)", block)
            self.require(old_index and new_index and old_index[1].strip() == new_index[1].strip(),
                         f"{species} must retain its native shared icon palette index")

    def run(self):
        for old, new in TRANSFERS:
            for ref, source, destination, native in (
                (CUSTOM_REF, old.lower(), new.lower(), False),
                (NATIVE_REF, old.lower(), old.lower(), True),
            ):
                for asset in PNGS:
                    self.compare(ref, f"graphics/pokemon/{source}/{asset}.png",
                                 f"graphics/pokemon/{destination}/{asset}.png")
                for asset in PALETTES + (() if native else ("icon_normal", "icon_shiny")):
                    self.compare(ref, f"graphics/pokemon/{source}/{asset}.pal",
                                 f"graphics/pokemon/{destination}/{asset}.pal")
                self.references(old if native else new, native, old)
        for source, destination, assets in (
            ("bibarel", "scovillain", ("anim_frontf", "overworldf")),
            ("druddigon", "pawmot", ("druddigon",)),
            ("volcarona", "arboliva", ("anim_front_gba", "back_gba", "icon_gba")),
        ):
            for asset in assets:
                self.compare(CUSTOM_REF, f"graphics/pokemon/{source}/{asset}.png",
                             f"graphics/pokemon/{destination}/{asset}.png")
        block = species_block(self.species, "Scovillain")
        self.require(re.search(r"\.frontPicFemale\s*=\s*gMonFrontPic_ScovillainF\s*,", block),
                     "Ratybara female battle graphic is not connected")
        self.require(re.search(r"OVERWORLD_FEMALE\(\s*sPicTable_ScovillainF\s*,", block),
                     "Ratybara female overworld graphic is not connected")
        self.binding("gMonFrontPic_ScovillainF", "scovillain", "anim_frontf")
        self.binding("gObjectEventPic_ScovillainF", "scovillain", "overworldf")
        if self.errors:
            print("Species relocation graphic checks failed:", file=sys.stderr)
            for error in self.errors:
                print(f"  - {error}", file=sys.stderr)
            return 1
        print(f"Validated 8 custom transfers, 8 native restorations, {self.assets} assets and active species bindings.")
        return 0


if __name__ == "__main__":
    try:
        sys.exit(Checker().run())
    except (OSError, ValueError) as error:
        sys.exit(f"Species relocation checker: {error}")
