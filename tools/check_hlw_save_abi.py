#!/usr/bin/env python3
"""Check the released HLW 0.9 persistence ABI without writing build outputs.

Requires arm-none-eabi-gcc. The target compiler, not the host's sizeof/alignment,
evaluates every layout and numeric identity. Run from any directory. New IDs may
be appended, but existing named IDs and song-table slots may not be reassigned.
Reserved names are deliberately not identities. A schema migration requires an
explicit review of the frozen manifest and production assertions; this command
never updates either file. --report and --assertions only print candidate text.
"""
import argparse
import copy
import json
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MANIFEST = ROOT / "tools/hlw_save_abi_v1.json"
ASSERTIONS = ROOT / "include/hlw_save_abi_asserts.h"
HEADERS = ["global.h", "save.h", "pokemon_storage_system.h", "hlw_media_save.h",
           "constants/map_event_ids.h",
           "follower_npc.h", "constants/encounter_ids.h", "constants/moves.h",
           "constants/abilities.h", "constants/songs.h", "constants/decorations.h"]
HEADERS += ["constants/game_stat.h", "constants/berry.h", "constants/easy_chat.h",
            "constants/battle_frontier.h", "constants/battle_frontier_mons.h",
            "constants/battle_frontier_trainers.h", "constants/battle_tent_mons.h",
            "constants/battle_tent_trainers.h", "constants/event_objects.h",
            "constants/event_object_movement.h", "constants/layouts.h", "constants/region_map_sections.h"]
INCLUDES = "".join(f'#include "{name}"\n' for name in HEADERS)
CC = ["arm-none-eabi-gcc", "-iquote", "include", "-iquote", ".", "-DMODERN=1",
      "-DTESTING=0", "-std=gnu17", "-mthumb", "-mthumb-interwork", "-mabi=apcs-gnu",
      "-march=armv4t", "-Wno-pointer-to-int-cast", "-x", "c"]
ROOT_TYPES = ["struct SaveBlock1", "struct SaveBlock2", "struct SaveBlock3",
              "struct PokemonStorage", "struct SaveSector", "struct HlwSaveExtensionSector",
              "struct HlwHallOfFameArchive", "struct PokemonSubstruct0",
              "struct PokemonSubstruct1", "struct PokemonSubstruct2", "struct PokemonSubstruct3"]
ROOT_SIZES = {"struct SaveBlock1": 15872, "struct SaveBlock2": 3968,
              "struct SaveBlock3": 1624, "struct PokemonStorage": 35712}
ID_PREFIXES = ("SPECIES_", "ITEM_", "TRAINER_", "FLAG_", "VAR_", "MOVE_", "ABILITY_",
               "MAP_", "MUS_", "SE_", "DECOR_", "NATIONAL_DEX_", "REMATCH_",
               "ENCOUNTER_ID_", "HIDDEN_GROTTO_ID_", "FOLLOWER_SCRIPT_", "SHADOW_ID_",
               "ACH_", "MINING_LOCATION_", "PARTNER_", "LOCALID_", "GAME_STAT_",
               "BERRY_TREE_", "BERRY_STAGE_", "EC_GROUP_", "EC_WORD_",
               "FRONTIER_FACILITY_", "FRONTIER_MODE_", "FRONTIER_LVL_", "RANKING_HALL_",
               "FRONTIER_MON_", "FRONTIER_TRAINER_", "FACILITY_CLASS_", "CHALLENGE_STATUS_",
               "SLATEPORT_TENT_MON_", "VERDANTURF_TENT_MON_", "FALLARBOR_TENT_MON_",
               "SLATEPORT_TENT_TRAINER_", "VERDANTURF_TENT_TRAINER_", "FALLARBOR_TENT_TRAINER_",
               "OPTIONS_", "OBJ_EVENT_GFX_", "MOVEMENT_TYPE_", "LAYOUT_", "MAPSEC_")
# These are runtime/table bounds or category markers, not saved identities.
ID_EXCLUSIONS = {"SPECIES_EGG", "SPECIES_SHINY_TAG", "ITEM_FIELD_ARROW"}


def run_cc(args, source):
    result = subprocess.run(CC + args + ["-"], input=source, text=True,
                            capture_output=True, cwd=ROOT)
    if result.returncode:
        source_lines = source.splitlines()
        context = [source_lines[int(line) - 1] for line in re.findall(r"<stdin>:(\d+):", result.stderr)
                   if int(line) <= len(source_lines)]
        raise RuntimeError(result.stderr + "\n" + "\n".join(dict.fromkeys(context)))
    return result.stdout


def matching_brace(text, start):
    depth = 0
    for i in range(start, len(text)):
        if text[i] == "{":
            depth += 1
        elif text[i] == "}":
            depth -= 1
            if depth == 0:
                return i
    raise ValueError("Unclosed declaration")


def declarations(text):
    result = {}
    for match in re.finditer(r"\b(struct|union)\s+(\w+)\s*\{", text):
        start = text.index("{", match.start())
        end = matching_brace(text, start)
        result[f"{match[1]} {match[2]}"] = text[start + 1:end]
    # Anonymous typedef aggregates used directly by the retail save blocks.
    for match in re.finditer(r"\btypedef\s+(?:struct|union)\s*\{", text):
        start = text.index("{", match.start())
        end = matching_brace(text, start)
        alias = re.match(r"\s*(\w+)\s*;", text[end + 1:])
        if alias:
            result[alias[1]] = text[start + 1:end]
    result["OldMan"] = result["union OldMan"]
    return result


def split_top_level(text, separator):
    depth = 0
    start = 0
    for i, char in enumerate(text):
        if char in "{[(":
            depth += 1
        elif char in "}])":
            depth -= 1
        elif char == separator and depth == 0:
            yield text[start:i].strip()
            start = i + 1
    if text[start:].strip():
        yield text[start:].strip()


def members(body):
    for declaration in split_top_level(body, ";"):
        # Bitfields cannot be operands of sizeof/offsetof; their exact source
        # declaration is frozen separately, including order/type/width.
        if len(list(split_top_level(declaration, ":"))) > 1:
            continue
        if "}" in declaration:
            declaration = declaration[declaration.rindex("}") + 1:]
        for field in split_top_level(declaration, ","):
            field = re.sub(r"\[.*", "", field, flags=re.S).strip()
            match = re.search(r"(\w+)\s*$", field)
            if not match:
                raise ValueError(f"Unsupported saved member: {declaration}")
            yield match[1]


def collect_layout(preprocessed):
    types = declarations(preprocessed)
    todo = list(ROOT_TYPES)
    schemas = {}
    expressions = {}
    while todo:
        name = todo.pop()
        if name in schemas:
            continue
        body = types[name]
        # Token normalization preserves punctuation and array bounds while
        # ignoring comments/formatting; it also protects packed bitfields.
        schemas[name] = " ".join(re.findall(r"\w+|[^\w\s]", body))
        expressions[f"sizeof({name})"] = None
        for field in members(body):
            expressions[f"offsetof({name}, {field})"] = None
            expressions[f"sizeof((({name} *)0)->{field})"] = None
        for dependency in re.findall(r"\b(?:struct|union)\s+\w+", body):
            if dependency in types:
                todo.append(dependency)
        for alias in ("TVShow", "PokeNews", "OldMan", "LilycoveLady"):
            if re.search(rf"\b{alias}\b", body):
                todo.append(alias)
    return expressions, schemas


def constant_names(macros, preprocessed):
    macro_names = set(re.findall(r"^#define (\w+)[ \t]+\S", macros, re.M))
    enum_names = set()
    for body in re.findall(r"\benum(?:\s+\w+)?\s*\{([^{}]*)\}", preprocessed):
        for entry in split_top_level(body, ","):
            match = re.match(r"(\w+)", entry)
            if match:
                enum_names.add(match[1])
    names = macro_names | enum_names
    ids = {n for n in names if n.startswith(ID_PREFIXES)
           and "UNUSED" not in n and not n.endswith(("_COUNT", "_COUNTS", "_BYTES", "_SIZE", "_MAX", "_MIN", "_START", "_END", "_ENTRIES", "_TARGET"))
           and n not in ID_EXCLUSIONS}
    # Freeze every free-space configuration, including equal-size replacements.
    configs = {n for n in macro_names if n.startswith(("FREE_", "HLW_", "POKEMON_STORAGE_"))}
    configs.update({"PARTY_SIZE", "PLAYER_NAME_LENGTH", "POKEMON_NAME_LENGTH", "ROAMER_COUNT",
                    "TOTAL_BOXES_COUNT", "IN_BOX_COUNT", "IN_BOX_ROWS", "IN_BOX_COLUMNS",
                    "BOX_NAME_LENGTH", "MAX_TRAINERS_COUNT", "FLAGS_COUNT", "NUM_FLAG_BYTES",
                    "BAG_EXPANSION_MAGIC", "BAG_EXPANSION_VERSION", "HLW_SAVE_BLOCK3_VERSION",
                    "HLW_SAVE_PHYSICAL_VERSION", "HLW_SAVE_SCHEMA_VERSION", "SECTOR_DATA_SIZE",
                    "SAVE_BLOCK_3_CHUNK_SIZE", "SECTOR_FOOTER_SIZE", "SECTOR_SIZE",
                    "ACHIEVEMENT_SAVE_MAGIC", "ACHIEVEMENT_SAVE_VERSION", "ACHIEVEMENT_SAVE_DATA_SIZE",
                    "MINING_WALL_SAVE_VERSION", "NUM_HIDDEN_GROTTOES", "VARS_START", "VARS_END",
                    "EC_MASK_BITS", "FIRST_BERRY_INDEX"})
    configs.update(n for n in macro_names if n.startswith("BAG_") and n.endswith("_COUNT"))
    return ids - configs, configs


def evaluate(expressions, extra_source=""):
    # Separate symbols avoid assembler zero-run compression and preserve an
    # unambiguous expression-to-value map. Assembly is emitted only to stdout.
    source = INCLUDES + extra_source + "\n".join(f"const unsigned int hlw_abi_{i} = (unsigned int)({e});"
                                 for i, e in enumerate(expressions))
    assembly = run_cc(["-S", "-o", "-"], source)
    emitted = {int(index): (kind, value) for index, kind, value in re.findall(
        r"^hlw_abi_(\d+):\s*\n\s*\.(word|space)\s+(-?\d+)", assembly, re.M)}
    values = {}
    for index, expression in enumerate(expressions):
        if index not in emitted:
            raise ValueError(f"No compiler value for {expression}")
        kind, value = emitted[index]
        values[expression] = (int(value) & 0xFFFFFFFF) if kind == "word" else 0
    return values


def song_slots():
    return re.findall(r"^\s*song\s+(\w+)\s*,", (ROOT / "sound/song_table.inc").read_text(), re.M)


def radio_stations():
    text = (ROOT / "src/radio.c").read_text()
    body = re.search(r"enum RadioStation\s*\{(.*?)\};", text, re.S)[1]
    body = re.sub(r"//[^\n]*|/\*.*?\*/", "", body, flags=re.S)
    entries = re.findall(r"(STATION_\w+)\s*=\s*(\d+)", body)
    names = re.findall(r"\bSTATION_\w+", body)
    if len(entries) != len(names):
        raise ValueError("Radio station IDs must remain explicit integers")
    return {name: int(value) for name, value in entries if name != "STATION_COUNT"}


def registry_identities():
    identities = {}
    for value, species in re.findall(r"^WISH_FORM\((\d+),\s*(\w+)\)",
            (ROOT / "src/data/wish_form_registry.inc").read_text(), re.M):
        identities[f"wish:SPECIES_{species}"] = int(value)
    for name, value, map_name, variant in re.findall(r"^\s*F\((\w+),\s*(\d+),\s*(MAP_\w+),\s*(\d+)\)",
            (ROOT / "include/constants/encounter_ids.h").read_text(), re.M):
        identities[f"encounter:{map_name}:{variant}"] = int(value)
    return identities


def content_identities():
    # Local enums are not visible to the save translation unit. Evaluate their
    # actual C declarations with the target compiler, including implicit IDs.
    identities = {}
    for filename, prefix in (
            ("src/party_menu.c", "PARTY_COLOR_THEME_"),
            ("src/pokemon_summary_screen.c", "SUMMARY_COLOR_THEME_"),
            ("src/pokedex_plus_hgss.c", "POKEDEX_COLOR_THEME_"),
            ("src/radio.c", "RADIO_COLOR_THEME_"),
            ("src/start_menu.c", "MENU_ACTION_"),
            ("src/data/wallpapers.h", "WALLPAPER_")):
        text = (ROOT / filename).read_text()
        text = re.sub(r"//[^\n]*|/\*.*?\*/", "", text, flags=re.S)
        bodies = [body for body in re.findall(r"\benum(?:\s+\w+)?\s*\{([^{}]*)\}", text)
                  if re.search(rf"\b{prefix}\w+", body)]
        if len(bodies) != 1:
            raise ValueError(f"Expected exactly one saved {prefix} enum in {filename}")
        names = [re.match(r"(\w+)", entry)[1] for entry in split_top_level(bodies[0], ",")]
        names = [name for name in names if not name.endswith("_COUNT")]
        identities.update(evaluate(names, "enum {" + bodies[0] + "};\n"))
    radio = (ROOT / "src/radio.c").read_text()
    radio_macros = dict(re.findall(r"^#define\s+(RADIO_\w+)\s+([^\n]+)", radio, re.M))
    saved_radio_names = [name for name in radio_macros if name.startswith((
        "RADIO_SAVE_", "RADIO_PLAYLIST_SAVE_", "RADIO_PLAYLIST2_", "RADIO_PLAYLIST_FUTURE_",
        "RADIO_STICKER_SAVE_", "RADIO_RETIRED_"))]
    saved_radio_names += ["RADIO_LIBRARY_CAPACITY", "RADIO_PLAYLIST_CAPACITY", "RADIO_STICKER_COUNT"]
    identities.update(evaluate(saved_radio_names, "\n".join(
        f"#define {name} {value}" for name, value in radio_macros.items()) + "\n"))
    wallpapers = run_cc(["-E", "-P"], INCLUDES + '\n#include "src/data/wallpapers.h"\n')
    for table in ("sWaldaWallpapers", "sWaldaWallpaperIcons"):
        match = re.search(rf"\b{table}\s*\[\s*\]\s*=\s*\{{", wallpapers)
        if match is None:
            raise ValueError(f"Missing persistent wallpaper table: {table}")
        start = wallpapers.index("{", match.start())
        body = wallpapers[start + 1:matching_brace(wallpapers, start)]
        for index, entry in enumerate(split_top_level(body, ",")):
            identities[f"wallpaper:{table}:{index}"] = " ".join(re.findall(r"\w+|[^\w\s]", entry))
    # A stored localId/warpId is an index in these ROM arrays. Read JSON directly
    # so a stale generated header or parallel map build cannot hide a reorder.
    # New entries may append; reusing a released index needs an explicit review.
    for path in sorted((ROOT / "data/maps").glob("*/map.json")):
        data = json.loads(path.read_text())
        for index, event in enumerate(data.get("object_events", []), 1):
            identities[f"object:{data['id']}:{index}"] = event.get("script", "0")
        for index, warp in enumerate(data.get("warp_events", [])):
            identities[f"warp:{data['id']}:{index}"] = json.dumps(warp, sort_keys=True, separators=(",", ":"))
    return identities


def current_manifest():
    preprocessed = run_cc(["-E", "-P"], INCLUDES)
    macros = run_cc(["-E", "-dM"], INCLUDES)
    layout, schemas = collect_layout(preprocessed)
    ids, configs = constant_names(macros, preprocessed)
    expressions = sorted(set(layout) | ids | configs)
    values = evaluate(expressions)
    for name, expected in ROOT_SIZES.items():
        if values[f"sizeof({name})"] != expected:
            raise ValueError(f"{name} must remain exactly {expected} bytes")
    return {"format": 1, "release": "HLW 0.9 save ABI v1", "layout": {e: values[e] for e in sorted(layout)},
            "configuration": {e: values[e] for e in sorted(configs)},
            "identities": {e: values[e] for e in sorted(ids)}, "declarations": dict(sorted(schemas.items())),
            "song_table": song_slots(), "radio_stations": radio_stations(),
            "registry_identities": registry_identities(), "content_identities": content_identities()}


def assertions(manifest):
    lines = ["#ifndef GUARD_HLW_SAVE_ABI_ASSERTS_H", "#define GUARD_HLW_SAVE_ABI_ASSERTS_H", "",
             "// Frozen HLW 0.9 save ABI v1. Do not refresh to silence a failure.",
             "// A deliberate schema migration must review tools/hlw_save_abi_v1.json."]
    lines.extend(f'#include "{header}"' for header in HEADERS[:4])
    for group in ("layout", "configuration"):
        lines.extend(["", f"// {group.capitalize()}"])
        for index, (expression, value) in enumerate(manifest[group].items()):
            lines.append(f"STATIC_ASSERT(({expression}) == {value}u, HlwAbi_{group}_{index});")
    lines.extend(["", "#endif", ""])
    return "\n".join(lines)


def check(frozen, current):
    errors = []
    for group in ("layout", "configuration", "declarations", "identities", "radio_stations", "registry_identities", "content_identities"):
        for name, expected in frozen[group].items():
            actual = current[group].get(name)
            if actual != expected:
                shown = "declaration changed" if group == "declarations" else f"{expected!r} -> {actual!r}"
                errors.append(f"{group}: {name}: {shown}")
        if group in ("layout", "configuration", "declarations"):
            for name in current[group].keys() - frozen[group].keys():
                errors.append(f"{group}: new saved declaration requires review: {name}")
    for index, expected in enumerate(frozen["song_table"]):
        actual = current["song_table"][index] if index < len(current["song_table"]) else None
        if actual != expected:
            errors.append(f"song table slot {index}: {expected} -> {actual}")
    if ASSERTIONS.read_text() != assertions(frozen):
        errors.append("Production assertions differ from the frozen manifest")
    if errors:
        raise ValueError("\n".join(errors))
    print(f"HLW save ABI v1: {len(frozen['layout'])} ARM layout guards, "
          f"{len(frozen['configuration'])} configuration guards, {len(frozen['declarations'])} saved type declarations, "
          f"{len(frozen['identities'])} numeric IDs, {len(frozen['content_identities'])} local enum/map bindings "
          f"and {len(frozen['song_table'])} song slots unchanged.")


def self_test(frozen, current):
    # Deliberately perturb values in memory: no source/save/build files change.
    if list(members("u8 bank[(4 ? 1 : 0)]; u8 flag:1; u8 tail[sizeof(int)];")) != ["bank", "tail"]:
        raise ValueError("ABI parser confused a ternary array bound with a bitfield")
    mutations = [
        ("layout", "offsetof(struct SaveBlock1, flags)", 1),
        ("layout", "sizeof(((struct SaveBlock1 *)0)->flags)", 1),
        ("configuration", "FREE_ENIGMA_BERRY", 0),
        ("identities", "SPECIES_BULBASAUR", 2),
        ("identities", "FLAG_SYS_POKEDEX_GET", 0),
        ("declarations", "struct SaveBlock2", "changed packed option bits"),
        ("radio_stations", "STATION_ALL", 1),
        ("registry_identities", "wish:SPECIES_BULBASAUR", 1),
        ("song_table", 1, "different_sound"),
        ("content_identities", "POKEDEX_COLOR_THEME_AMETHYST", 99),
        ("content_identities", "RADIO_SAVE_FLAG_REPEAT", 99),
        ("content_identities", next(k for k in current["content_identities"] if k.startswith("warp:")), "reordered warp"),
    ]
    for group, name, replacement in mutations:
        changed = copy.deepcopy(current)
        changed[group][name] = replacement
        try:
            check(frozen, changed)
        except ValueError:
            continue
        raise ValueError(f"Checker accepted a destructive change: {group}/{name}")
    print(f"ABI guard self-test: rejected all {len(mutations)} simulated incompatible changes.")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--report", action="store_true", help="print current manifest; never modify the frozen baseline")
    parser.add_argument("--assertions", action="store_true", help="print production assertions for the frozen manifest")
    parser.add_argument("--self-test", action="store_true", help="also prove incompatible changes are rejected in memory")
    args = parser.parse_args()
    try:
        if args.assertions:
            print(assertions(json.loads(MANIFEST.read_text())), end="")
        elif args.report:
            print(json.dumps(current_manifest(), indent=2) + "\n", end="")
        else:
            frozen, current = json.loads(MANIFEST.read_text()), current_manifest()
            check(frozen, current)
            if args.self_test:
                self_test(frozen, current)
    except (RuntimeError, ValueError, OSError) as error:
        print(f"HLW save ABI check failed: {error}", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
