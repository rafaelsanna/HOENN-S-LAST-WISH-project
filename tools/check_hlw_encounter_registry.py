#!/usr/bin/env python3
"""Check the handwritten persistent encounter/grotto IDs; never assign IDs."""
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def check():
    text = (ROOT / "include/constants/encounter_ids.h").read_text()
    entries = [(name, int(identity), map_name, int(variant))
               for name, identity, map_name, variant in re.findall(
                   r"F\((\w+),\s*(\d+),\s*(MAP_\w+),\s*(\d+)\)", text)]
    assert entries, "empty encounter registry"
    assert len({entry[0] for entry in entries}) == len(entries), "duplicate encounter name"
    assert len({entry[1] for entry in entries}) == len(entries), "duplicate persistent encounter ID"
    assert all(0 <= entry[1] < 512 for entry in entries), "encounter ID outside frozen bank"
    lookup = {(map_name, variant): identity for _, identity, map_name, variant in entries}
    assert len(lookup) == len(entries), "duplicate map/variant encounter identity"
    data = json.loads((ROOT / "src/data/wild_encounters.json").read_text())
    group = next(group for group in data["wild_encounter_groups"] if group["label"] == "gWildMonHeaders")
    maps = {entry["map"] for entry in group["encounters"]}
    required = {(map_name, 0) for map_name in maps}
    required.update(("MAP_ALTERING_CAVE", variant) for variant in range(9))
    assert required <= lookup.keys(), f"new encounter maps need persistent IDs: {sorted(required - lookup.keys())}"
    assert lookup["MAP_ROUTE101", 0] == 0
    assert lookup["MAP_MT_PYRE_CAVE", 0] == 150
    assert [lookup["MAP_ALTERING_CAVE", variant] for variant in range(9)] == list(range(114, 123))

    grotto_text = (ROOT / "include/constants/hidden_grotto.h").read_text()
    grotto_ids = {name: int(value) for name, value in re.findall(
        r"#define (HIDDEN_GROTTO_ID_\w+)\s+(\d+)", grotto_text)}
    assert len(set(grotto_ids.values())) == len(grotto_ids), "duplicate persistent grotto ID"
    assert all(0 <= identity < 64 for identity in grotto_ids.values()), "grotto ID outside bank"
    source = (ROOT / "src/hidden_grotto.c").read_text()
    used = re.findall(r"\[(HIDDEN_GROTTO_ID_\w+)\]\s*=", source)
    assert len(used) == len(set(used)), "duplicate grotto table designator"
    assert set(used) <= grotto_ids.keys(), "grotto table needs explicit IDs"
    assert "sHiddenGrottoVars" not in source, "old grotto persistence remains live"
    assert "VAR_HIDDEN_GROTTO_RESET_DAYS" not in source, "old grotto counter remains live"
    print(f"Validated {len(entries)} explicit encounter IDs and {len(used)} grotto IDs; capacities 512 and 64.")


if __name__ == "__main__":
    check()
