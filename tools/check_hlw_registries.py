#!/usr/bin/env python3
"""Validate explicit HLW Wish/wall IDs against current content; never assign IDs.

Run after map or Wish content edits. Persistent IDs are handwritten in the
registries and remain stable when ROM order or wall coordinates change.
"""
import json
import re
import struct
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def words(path):
    return [value for (value,) in struct.iter_unpack("<H", path.read_bytes())]


def check():
    wish = re.findall(r"^WISH_FORM\((\d+),\s*(\w+)\)",
                      (ROOT / "src/data/wish_form_registry.inc").read_text(), re.M)
    assert len({int(i) for i, _ in wish}) == len(wish), "duplicate Wish ID"
    assert len({s for _, s in wish}) == len(wish), "duplicate Wish species"
    assert all(0 <= int(i) < 128 for i, _ in wish), "core Wish ID outside frozen bank"
    walls = re.findall(r"^MINING_WALL\((\d+),\s*(\w+),\s*(\d+),\s*(\d+)\)",
                       (ROOT / "src/data/mining_wall_registry.inc").read_text(), re.M)
    assert len({int(i) for i, *_ in walls}) == len(walls), "duplicate mining ID"
    assert all(0 <= int(i) < 256 for i, *_ in walls), "mining ID outside frozen bank"
    registered = {(m, int(x), int(y)) for _, m, x, y in walls}
    assert len(registered) == len(walls), "duplicate mining location"
    behaviors = re.findall(r"^\s*(MB_\w+)\s*,", (ROOT / "include/constants/metatile_behaviors.h").read_text(), re.M)
    mining_behavior = behaviors.index("MB_MINING_WALL")
    attributes = {name: words(ROOT / path) for name, path in re.findall(
        r'const u16 (gMetatileAttributes_\w+)\[\] = INCBIN_U16\("([^"]+)"\)',
        (ROOT / "src/data/tilesets/metatiles.h").read_text())}
    tilesets = {name: re.search(r"\.metatileAttributes\s*=\s*(\w+)", body)[1]
                for name, body in re.findall(r"const struct Tileset (\w+)\s*=\s*\{(.*?)\};",
                (ROOT / "src/data/tilesets/headers.h").read_text(), re.S)}
    layouts = {entry["id"]: entry for entry in json.loads((ROOT / "data/layouts/layouts.json").read_text())["layouts"]}
    placed = set()
    for path in (ROOT / "data/maps").glob("*/map.json"):
        map_data = json.loads(path.read_text())
        layout = layouts.get(map_data.get("layout"))
        if layout is None:
            continue
        banks = [attributes[tilesets[layout[key]]] for key in ("primary_tileset", "secondary_tileset")]
        for offset, block in enumerate(words(ROOT / layout["blockdata_filepath"])):
            tile = block & 0x3FF
            bank = banks[tile >= 512]
            index = tile % 512
            if index < len(bank) and bank[index] & 0xFF == mining_behavior:
                placed.add((map_data["id"], offset % layout["width"], offset // layout["width"]))
    assert placed <= registered, f"mining walls need explicit persistent IDs: {sorted(placed - registered)}"
    assert registered <= placed, f"update lookup coordinates or retain documented tombstones: {sorted(registered - placed)}"
    print(f"Validated {len(wish)} explicit core Wish IDs and {len(walls)} placed mining-wall IDs; capacities 128+100 and 256.")


if __name__ == "__main__":
    check()
