#!/usr/bin/env python3
"""Check the prop-slot transfer against its frozen pre-transfer Git revision.

Run from any directory with Python 3. No Pillow, build products or ROM are
required. The historical refs document which original artwork was restored.
Runtime save/animation/collision coverage lives in test/prop_graphics.c.
"""

import copy
import functools
import json
import re
import struct
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
BASELINE = "8f9c28e5437d9e37ed3f6873bb8dd54dac78ccf3"
TRANSFERS = {
    "ACCELGOR": "COALOSSAL", "ARCHEOPS": "FIDOUGH",
    "CORVIKNIGHT": "VAROOM", "GIRATINA": "DOLLIV",
    "RESHIRAM": "SMOLIV", "KORAIDON": "PAWMI", "KYUREM": "PAWMO",
    "MELMETAL": "REVAVROOM", "MIRAIDON": "STONJOURNER", "PALKIA": "WUGTRIO",
    "POLTEAGEIST": "TAROUNTULA", "SOLGALEO": "BOMBIRDIER",
    "TADBULB": "ROLYCOLY", "XERNEAS": "CUFANT", "ZEKROM": "COPPERAJAH",
}
SMALL = {"ACCELGOR", "ARCHEOPS", "CORVIKNIGHT", "POLTEAGEIST", "TADBULB"}
ORIGINAL_REFS = {
    **dict.fromkeys(set(TRANSFERS) - SMALL - {"GIRATINA", "RESHIRAM"}, "02aa7058c2^"),
    "ACCELGOR": "bbeff414a0^", "ARCHEOPS": "e58e4a50f9^",
    "CORVIKNIGHT": "268edd30c9^", "GIRATINA": "d9024c9c81^",
    "RESHIRAM": "ade5ffb8a0^", "POLTEAGEIST": "caa0baa562^",
    "TADBULB": "cd7b5c5171^",
}
ORIGINAL_INFO = {
    "ACCELGOR": (5, "ACCELGOR"), "ARCHEOPS": (5, "ARCHEOPS"),
    "CORVIKNIGHT": (8, "CORVIKNIGHT"), "GIRATINA": (4, "GIRATINA_ALTERED"),
    "RESHIRAM": (5, "RESHIRAM"), "KORAIDON": (9, "KORAIDON"),
    "KYUREM": (5, "KYUREM"), "MELMETAL": (7, "MELMETAL"),
    "MIRAIDON": (9, "MIRAIDON"), "PALKIA": (4, "PALKIA"),
    "POLTEAGEIST": (8, "POLTEAGEIST_PHONY"), "SOLGALEO": (7, "SOLGALEO"),
    "TADBULB": (9, "TADBULB"), "XERNEAS": (6, "XERNEAS_NEUTRAL"),
    "ZEKROM": (5, "ZEKROM"),
}
FAMILIES = [f"src/data/pokemon/species_info/gen_{gen}_families.h" for gen in range(1, 10)]
PIC_TABLES = "src/data/object_events/object_event_pic_tables_followers.h"
OW_FILES = ("overworld.png", "overworld_normal.pal", "overworld_shiny.pal")


def git(*args):
    return subprocess.check_output(["git", "-C", str(ROOT), *args])


@functools.cache
def historical(ref, path):
    return git("show", f"{ref}:{path}")


def current(path):
    return (ROOT / path).read_bytes()


def asset(species, name):
    return f"graphics/pokemon/{species.lower()}/{name}"


def same_asset(actual, expected, filename):
    # Palette converters may normalize CRLF/LF without changing any colors.
    return actual.decode().splitlines() == expected.decode().splitlines() if filename.endswith(".pal") else actual == expected


def text(ref, path):
    return historical(ref, path).decode() if ref else current(path).decode()


def png_size(data):
    assert data[:8] == b"\x89PNG\r\n\x1a\n", "not a PNG"
    return struct.unpack(">II", data[16:24])


def species_blocks(ref):
    result = {}
    for path in FAMILIES:
        result.update(re.findall(r"    \[(SPECIES_\w+)\] =\s*\n    \{(.*?)\n    \},",
                                 text(ref, path), re.S))
    return result


def overworld(block):
    return re.findall(r"\b(OVERWORLD(?:_FEMALE)?)\s*\((.*?)\n\s*\)", block, re.S)


def picture_tables(ref):
    return dict(re.findall(r"sPicTable_(\w+)\[\] = \{(.*?)\};", text(ref, PIC_TABLES), re.S))


def check_maps():
    pattern = r"OBJ_EVENT_GFX_SPECIES\((" + "|".join(TRANSFERS) + r")\)"
    paths = [line.split(":", 1)[1] for line in git(
        "grep", "-l", "-E", pattern, BASELINE, "--", "data/maps/*/map.json").decode().splitlines()]
    placements = set()
    for path in paths:
        original = json.loads(historical(BASELINE, path))
        expected = copy.deepcopy(original)
        for index, obj in enumerate(expected.get("object_events", []), 1):
            match = re.fullmatch(pattern, obj.get("graphics_id", ""))
            if match:
                old = match[1]
                obj["graphics_id"] = f"OBJ_EVENT_GFX_SPECIES({TRANSFERS[old]})"
                local_id = obj.get("local_id", index)
                placements.add((original["id"], str(local_id), obj["graphics_id"]))
        assert json.loads(current(path)) == expected, f"unexpected map attributes or graphics: {path}"

    actual = set()
    for path in (ROOT / "data/maps").glob("*/map.json"):
        data = json.loads(path.read_text())
        for index, obj in enumerate(data.get("object_events", []), 1):
            graphic = obj.get("graphics_id", "")
            assert not re.fullmatch(pattern, graphic), f"old prop reference remains: {path}"
            if graphic in {f"OBJ_EVENT_GFX_SPECIES({target})" for target in TRANSFERS.values()}:
                actual.add((data["id"], str(obj.get("local_id", index)), graphic))
    assert len(placements) == 38, f"baseline placement count changed: {len(placements)}"
    assert actual == placements, f"unexpected replacement placements: {actual ^ placements}"

    path = "data/maps/MOSSDEEP01/scripts.pory"
    baseline = text(BASELINE, path)
    assert baseline.count("showmonpic SPECIES_ARAQUANID") == 2
    assert text(None, path) == baseline.replace("showmonpic SPECIES_ARAQUANID", "showmonpic SPECIES_SPIDOPS"), \
        "script changes extend beyond the two Time Gear pictures"
    return len(paths), len(placements)


def check_assets():
    for old, target in TRANSFERS.items():
        for filename in OW_FILES:
            assert same_asset(current(asset(target, filename)), historical(BASELINE, asset(old, filename)), filename), \
                f"{target} did not receive {old}'s {filename}"
            assert same_asset(current(asset(old, filename)), historical(ORIGINAL_REFS[old], asset(old, filename)), filename), \
                f"{old}'s original {filename} was not restored"
        width, height = png_size(current(asset(target, "overworld.png")))
        size = 32 if old in SMALL else 64
        frames = 4 if old in {"KORAIDON", "KYUREM", "MELMETAL"} else 6
        assert (width, height) == (size * frames, size), f"wrong prop frame layout: {target}"

    for filename in ("anim_front.png", "normal.pal", "shiny.pal"):
        assert same_asset(current(asset("SPIDOPS", filename)), historical(BASELINE, asset("ARAQUANID", filename)), filename), \
            f"Spidops Time Gear {filename} differs from the original prop"
        assert same_asset(current(asset("ARAQUANID", filename)), historical("ec9b914b74^", asset("ARAQUANID", filename)), filename), \
            f"Araquanid original {filename} not restored"
    assert png_size(current(asset("SPIDOPS", "anim_front.png"))) == (64, 128)
    for filename in ("normal.pal", "shiny.pal"):
        assert same_asset(current(asset("MIRAIDON", filename)), historical("951c61f7ee^", asset("MIRAIDON", filename)), filename), \
            f"Miraidon's original front {filename} not restored"

    # These front drawings belong to actual Pokemon or pre-existing story art.
    protected = set(TRANSFERS) | set(TRANSFERS.values()) | {"DUCKLETT", "ESCAVALIER", "ARBOLIVA"}
    for species in protected:
        for filename in ("front.png", "anim_front.png", "normal.pal", "shiny.pal"):
            if species == "SPIDOPS" and filename != "front.png":
                continue
            if species == "MIRAIDON" and filename.endswith(".pal"):
                continue
            path = asset(species, filename)
            if (ROOT / path).exists():
                assert same_asset(current(path), historical(BASELINE, path), filename), f"unrelated front asset changed: {path}"

    # Terra and the two nightmare Fakemon retain their overworld assets too.
    for species in ("ARAQUANID", "DUCKLETT", "ESCAVALIER"):
        for filename in OW_FILES:
            assert same_asset(current(asset(species, filename)), historical(BASELINE, asset(species, filename)), filename), \
                f"non-prop overworld changed: {species}/{filename}"


def check_metadata():
    before, after = species_blocks(BASELINE), species_blocks(None)
    large_targets = {f"SPECIES_{TRANSFERS[old]}" for old in set(TRANSFERS) - SMALL}
    donor_species = {f"SPECIES_{species}" for _, species in ORIGINAL_INFO.values()}
    allowed_ow = large_targets | donor_species
    for species, block in before.items():
        if species not in allowed_ow:
            assert overworld(after[species]) == overworld(block), f"unnecessary overworld metadata change: {species}"
        if species not in {"SPECIES_ARAQUANID", "SPECIES_SPIDOPS"}:
            values = r"^\s*\.(?:front\w+|enemyMonElevation)\s*=.*?$"
            assert re.findall(values, after[species], re.M) == re.findall(values, block, re.M), \
                f"unrelated front metadata changed: {species}"
    for old, (gen, species) in ORIGINAL_INFO.items():
        path = f"src/data/pokemon/species_info/gen_{gen}_families.h"
        original = dict(re.findall(r"    \[(SPECIES_\w+)\] =\s*\n    \{(.*?)\n    \},",
                                  text(ORIGINAL_REFS[old], path), re.S))[f"SPECIES_{species}"]
        original_args = [arg.strip() for arg in overworld(original)[0][1].split(",")]
        restored_args = [arg.strip() for arg in overworld(after[f"SPECIES_{species}"])[0][1].split(",")]
        assert original_args == restored_args, f"donor overworld metadata not restored: {old}"
    for species in large_targets:
        args = [arg.strip() for arg in overworld(after[species])[0][1].split(",")]
        assert args[1] == "SIZE_64x64", f"large prop still uses small metadata: {species}"
    for species in ("SPECIES_MELMETAL", "SPECIES_SOLGALEO"):
        assert "SIZE_32x32" in overworld(after[species])[0][1], f"restored Pokemon remains enlarged: {species}"

    old_tables, new_tables = picture_tables(BASELINE), picture_tables(None)
    table_names = {
        "Dolliv", "Smoliv", "Pawmi", "Pawmo", "Revavroom", "Stonjourner", "Wugtrio",
        "Bombirdier", "Cufant", "Copperajah", "Melmetal", "Solgaleo",
    }
    table_names.update(re.search(r"sPicTable_(\w+)", overworld(after[species])[0][1])[1]
                       for species in donor_species)
    for name, body in old_tables.items():
        if name not in table_names:
            assert new_tables[name] == body, f"unnecessary frame table change: {name}"
    for old, (_, species) in ORIGINAL_INFO.items():
        table = re.search(r"sPicTable_(\w+)", overworld(after[f"SPECIES_{species}"])[0][1])[1]
        original_table = picture_tables(ORIGINAL_REFS[old])[table]
        assert new_tables[table].split() == original_table.split(), f"donor frame table not restored: {old}"
    for species in large_targets:
        table = re.search(r"sPicTable_(\w+)", overworld(after[species])[0][1])[1]
        assert re.search(r",\s*8,\s*8(?:,|\))", new_tables[table]), f"wrong 64x64 frame table: {species}"

    bindings = text(None, "src/data/graphics/pokemon.h")
    for target in TRANSFERS.values():
        assert re.search(r'INCBIN_COMP\("' + re.escape(asset(target, "overworld.4bpp")) + r'"\)', bindings), \
            f"prop graphics use the wrong compression binding: {target}"
    assert 'gMonFrontPic_Spidops[] = INCBIN_U32("graphics/pokemon/spidops/anim_front.4bpp.smol")' in bindings


def check_conversion_rules():
    pattern = r"\$\(POKEMONGFXDIR\)/(\S+)/overworld\.4bpp: [^\n]+\n\t([^\n]+)"
    before = dict(re.findall(pattern, text(BASELINE, "spritesheet_rules.mk")))
    after = dict(re.findall(pattern, text(None, "spritesheet_rules.mk")))
    resized = {TRANSFERS[old].lower() for old in set(TRANSFERS) - SMALL} | {"solgaleo", "melmetal"}
    for species, rule in before.items():
        if species not in resized:
            assert after[species] == rule, f"unrelated sprite conversion rule changed: {species}"
    for species in resized:
        size = 4 if species in {"solgaleo", "melmetal"} else 8
        assert f"-mwidth {size} -mheight {size}" in after[species], f"wrong conversion dimensions: {species}"


def check_behavior_references():
    def code_tokens(source):
        # Preserve string/character literals while ignoring explanatory comments.
        pattern = r'''"(?:\\.|[^"\\])*"|'(?:\\.|[^'\\])*'|//[^\n]*|/\*.*?\*/'''
        source = re.sub(pattern, lambda match: match[0] if match[0][0] in "\"'" else " ", source, flags=re.S)
        return source.split()

    for path in ("src/event_object_movement.c", "src/field_weather_effect.c"):
        baseline = text(BASELINE, path)
        expected = baseline
        for old, new in (("MELMETAL", "REVAVROOM"), ("SOLGALEO", "BOMBIRDIER"), ("ZEKROM", "COPPERAJAH")):
            expected = expected.replace(f"OBJ_EVENT_GFX_SPECIES({old})", f"OBJ_EVENT_GFX_SPECIES({new})")
        expected = re.sub(r"\bisMelmetal\b", "isStageScreen", expected)
        assert code_tokens(text(None, path)) == code_tokens(expected), \
            f"prop behavior changed beyond the graphics slot transfer: {path}"
    header = text(None, "include/overworld.h")
    assert "void MigratePropGraphicsForSavedObjects(void);" in header
    body = text(None, "src/overworld.c")
    load_hook = body.split("void LoadSaveblockObjEventScripts(void)", 1)[1].split("void SetObjEventTemplateCoords", 1)[0]
    assert "MigratePropGraphicsForSavedObjects();" in load_hook, "Continue does not migrate cached graphics"


def check():
    assert len(TRANSFERS) == len(set(TRANSFERS.values())) == 15, "replacement slots must be unique"
    maps, placements = check_maps()
    check_assets()
    check_metadata()
    check_conversion_rules()
    check_behavior_references()
    print(f"Validated {placements} prop objects across {maps} maps, 15 overworld transfers, "
          "both Time Gear pictures, restored assets/palettes and scoped graphics metadata.")


if __name__ == "__main__":
    check()
