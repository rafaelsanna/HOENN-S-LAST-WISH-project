#!/usr/bin/env python3
"""Export the player-facing WishDex from the game's configured species tables.

Run from any directory with Python 3, Pillow, and a C preprocessor installed:
    python3 tools/wishdex/generate.py
    python3 tools/wishdex/generate.py --check

The manifest follows wishmon.png, left to right, excluding its blank cells.
Hidden entries export only a flattened silhouette, never their game data.
"""

import argparse
import ast
import html
import json
import operator
import re
import subprocess
from pathlib import Path

from PIL import Image


ROOT = Path(__file__).resolve().parents[2]
ROWS = [
    "BULBASAUR IVYSAUR VENUSAUR TOTODILE CROCONAW FERALIGATR TORCHIC COMBUSKEN BLAZIKEN",
    "DARKRAI NOSEPASS PROBOPASS SENTRET FURRET ODDISH GLOOM VILEPLUME BELLOSSOM",
    "PIDGEY PIDGEOTTO PIDGEOT POLIWAG POLIWHIRL POLIWRATH POLITOED JIGGLYPUFF WIGGLYTUFF",
    "SLUGMA MAGCARGO GULPIN SWALOT PINSIR SKITTY DELCATTY SKARMORY CURSOLA",
    "CLAMPERL GOREBYSS HUNTAIL LUVDISC VOLCARONA HOPPIP SKIPLOOM JUMPLUFF TORKOAL",
    "VULPIX NINETALES DRUDDIGON CHIMECHO RELICANTH VIRIZION WURMPLE SILCOON CASCOON",
    "DUSTOX BEAUTIFLY OBSTAGOON SNUBBULL GRANBULL SEEDOT NUZLEAF SHIFTRY ZUBAT",
    "GOLBAT CROBAT SEVIPER MEOWTH PERSIAN BIBAREL VOLTORB ELECTRODE CARVANHA",
    "SHARPEDO CACNEA CACTURNE NUMEL CAMERUPT MUDKIP MARSHTOMP SWAMPERT TREECKO",
    "RALTS KIRLIA GARDEVOIR GALLADE GROVYLE SCEPTILE BAGON SHELGON SALAMENCE",
    "TRAPINCH VIBRAVA FLYGON IGGLYBUFF CHINGLING WOOPER QUAGSIRE",
    "TEDDIURSA URSARING URSALUNA",
]
MANIFEST = [f"SPECIES_{slot}" for row in ROWS for slot in row.split()]
HIDDEN = {"SPECIES_SALAMENCE": "hidden-1", "SPECIES_QUAGSIRE": "hidden-2"}
START = "<!-- BEGIN GENERATED WISHDEX CARDS -->"
END = "<!-- END GENERATED WISHDEX CARDS -->"
STRING = r'"(?:\\.|[^"\\])*"'


def preprocess(source):
    # Keep species/move/ability/item identifiers symbolic for parsing. The
    # game's config still resolves every #if branch and generation setting.
    result = subprocess.run(
        ["cpp", "-E", "-P", "-x", "c", "-DTRUE=1", "-DFALSE=0",
         "-I", str(ROOT / "include"), "-I", str(ROOT / "src"), "-"],
        input='#include "constants/global.h"\n' + source,
        text=True, capture_output=True, check=True,
    )
    return result.stdout


def balanced(text, start):
    """Return one {...} or (...) group, ignoring braces inside C strings."""
    opener = text[start]
    closer = {"{": "}", "(": ")"}[opener]
    depth = 0
    quoted = escaped = False
    for i in range(start, len(text)):
        c = text[i]
        if quoted:
            if escaped:
                escaped = False
            elif c == "\\":
                escaped = True
            elif c == '"':
                quoted = False
            continue
        if c == '"':
            quoted = True
        elif c == opener:
            depth += 1
        elif c == closer:
            depth -= 1
            if depth == 0:
                return text[start:i + 1]
    raise ValueError("Unbalanced C initializer")


def initializers(text, prefix):
    return {
        match[1]: balanced(text, match.end() - 1)
        for match in re.finditer(rf"\[({prefix}\w+)\]\s*=\s*\{{", text)
    }


def field(block, name):
    match = re.search(rf"\.{name}\s*=\s*", block)
    if not match:
        return None
    start = match.end()
    depth = 0
    quoted = escaped = False
    for i in range(start, len(block)):
        c = block[i]
        if quoted:
            if escaped:
                escaped = False
            elif c == "\\":
                escaped = True
            elif c == '"':
                quoted = False
            continue
        if c == '"':
            quoted = True
        elif c in "({[":
            depth += 1
        elif c in ")}]":
            depth -= 1
        elif c == "," and depth == 0:
            return block[start:i].strip()
    raise ValueError(f"Unterminated field: {name}")


def strings(expression):
    # C uses adjacent literals; JSON decodes the ordinary escapes used here.
    return "".join(json.loads(token) for token in re.findall(STRING, expression))


def evaluate(expression):
    """Resolve numeric C expressions/ternaries without executing source code."""
    expression = expression.strip()
    while expression.startswith("(") and balanced(expression, 0) == expression:
        expression = expression[1:-1].strip()
    depth = 0
    question = None
    nested = 0
    for i, c in enumerate(expression):
        if c == "(":
            depth += 1
        elif c == ")":
            depth -= 1
        elif depth == 0 and c == "?":
            if question is None:
                question = i
            else:
                nested += 1
        elif depth == 0 and c == ":" and question is not None:
            if nested:
                nested -= 1
            else:
                condition = evaluate(expression[:question])
                return evaluate(expression[question + 1:i] if condition else expression[i + 1:])
    if re.fullmatch(r"[A-Z][A-Z0-9_]*", expression):
        return expression
    tree = ast.parse(expression, mode="eval")
    binary = {ast.Add: operator.add, ast.Sub: operator.sub, ast.Mult: operator.mul,
              ast.Div: operator.floordiv, ast.Mod: operator.mod}
    comparisons = {ast.Gt: operator.gt, ast.GtE: operator.ge, ast.Lt: operator.lt,
                   ast.LtE: operator.le, ast.Eq: operator.eq, ast.NotEq: operator.ne}

    def visit(node):
        if isinstance(node, ast.Constant) and type(node.value) is int:
            return node.value
        if isinstance(node, ast.BinOp) and type(node.op) in binary:
            return binary[type(node.op)](visit(node.left), visit(node.right))
        if isinstance(node, ast.Compare):
            values = [visit(node.left)] + [visit(n) for n in node.comparators]
            return all(comparisons[type(op)](a, b) for op, a, b in zip(node.ops, values, values[1:]))
        if isinstance(node, ast.UnaryOp) and isinstance(node.op, ast.USub):
            return -visit(node.operand)
        raise ValueError(f"Unsupported expression: {expression}")

    return visit(tree.body)


def split_arguments(expression):
    parts = []
    start = depth = 0
    for i, c in enumerate(expression):
        if c in "({[":
            depth += 1
        elif c in ")}]":
            depth -= 1
        elif c == "," and depth == 0:
            parts.append(expression[start:i].strip())
            start = i + 1
    parts.append(expression[start:].strip())
    return parts


def readable(token, prefix):
    return token.removeprefix(prefix).replace("_", " ").title()


def evolution_details(expression, species, moves, items):
    if not expression:
        return []
    result = []
    body = expression[expression.index("(") + 1:-1]
    for entry in split_arguments(body):
        method, param, target, *extra = split_arguments(entry.strip()[1:-1])
        if method == "EVO_NONE":
            continue
        if method == "EVO_LEVEL":
            level = evaluate(param)
            rule = f"Level {level}" if level else "Level up"
        elif method == "EVO_ITEM":
            rule = f"Use {items[param]}"
        elif method == "EVO_TRADE":
            rule = "Trade"
        else:
            raise ValueError(f"Unsupported evolution method: {method}")
        conditions = []
        if extra:
            for condition in split_arguments(extra[0][extra[0].index("(") + 1:-1]):
                kind, *values = split_arguments(condition.strip()[1:-1])
                value = values[0] if values else None
                if kind == "IF_TIME":
                    conditions.append({"TIME_NIGHT": "at night", "TIME_DAY": "during the day"}[value])
                elif kind == "IF_NOT_TIME" and value == "TIME_NIGHT":
                    conditions.append("during the day")
                elif kind == "IF_MIN_FRIENDSHIP":
                    conditions.append("with high friendship")
                elif kind in ("IF_HOLD_ITEM", "IF_HOLD_ITEM_NO_CONSUME"):
                    conditions.append(f"while holding {items[value]}")
                elif kind == "IF_KNOWS_MOVE":
                    conditions.append(f"while knowing {moves[value]}")
                elif kind == "IF_GENDER":
                    conditions.append({"MON_MALE": "if male", "MON_FEMALE": "if female"}[value])
                elif kind == "IF_IN_MAPSEC":
                    conditions.append(f"at {readable(value, 'MAPSEC_')}")
                elif kind == "IF_WEATHER":
                    conditions.append({"WEATHER_RAIN": "in rain", "WEATHER_FOG": "in fog"}[value])
                elif kind == "IF_USED_MOVE_X_TIMES":
                    count = evaluate(values[1])
                    times = "once" if count == 1 else f"{count} times"
                    conditions.append(f"after using {moves[value]} {times}")
                elif kind.startswith("IF_PID_UPPER_MODULO_10_"):
                    conditions.append("depending on personality")
                else:
                    raise ValueError(f"Unsupported evolution condition: {condition}")
        target_name = "an undiscovered Pokémon" if target in HIDDEN else strings(field(species[target], "speciesName"))
        result.append({"target": target_name, "method": " ".join([rule] + conditions)})
    # Wurmple's split is determined by personality, not a player choice.
    return [dict(pair) for pair in dict.fromkeys(tuple(item.items()) for item in result)]


def game_tables():
    headers = '\n'.join(f'#include "data/pokemon/species_info/gen_{n}_families.h"' for n in range(1, 10))
    species_text = preprocess(
        '#define FRIENDSHIP_EVO_THRESHOLD ((P_FRIENDSHIP_EVO_THRESHOLD >= GEN_8) ? 160 : 220)\n'
        '#include "data/pokemon/species_info/shared_dex_text.h"\n' + headers)
    species = initializers(species_text, "SPECIES_")
    shared = {m[1]: strings(m[2]) for m in re.finditer(
        rf'const u8 (g\w+PokedexText)\[\]\s*=\s*_\(((?:\s*{STRING})+)\);', species_text)}
    graphics_text = preprocess('#include "data/graphics/pokemon.h"\n')
    graphics = {m[1]: m[2] for m in re.finditer(
        r'(gMon(?:FrontPic|Palette|ShinyPalette)_\w+)\[\]\s*=\s*INCBIN_U(?:16|32)\("([^"\n]+)"\)', graphics_text)}
    config = preprocess('WISHDEX_LEARNSET_GEN P_LVL_UP_LEARNSETS\n')
    # Config generations are zero-based (GEN_1 = 0).
    generation = int(re.search(r"WISHDEX_LEARNSET_GEN (\d+)", config)[1]) + 1
    learn_text = preprocess(f'#include "data/pokemon/level_up_learnsets/gen_{generation}.h"\n')
    learnsets = {m[1]: [(int(level), move) for move, level in re.findall(
        r"\.move\s*=\s*(MOVE_\w+)\s*,\s*\.level\s*=\s*(\d+)", balanced(learn_text, m.end() - 1))]
        for m in re.finditer(r"static const struct LevelUpMove (s\w+)\[\]\s*=\s*\{", learn_text)}
    ability_text = (ROOT / "src/data/abilities.h").read_text()
    abilities = {key: strings(field(value, "name")) for key, value in initializers(ability_text, "ABILITY_").items()}
    move_text = (ROOT / "src/data/moves_info.h").read_text()
    moves = {key: strings(field(value, "name")) for key, value in initializers(move_text, "MOVE_").items()}
    item_text = (ROOT / "src/data/items.h").read_text()
    items = {key: strings(field(value, "name")) for key, value in initializers(item_text, "ITEM_").items()}
    return species, shared, graphics, learnsets, abilities, moves, items


def image_for(block, graphics, frame=0, shiny=False, silhouette=False):
    path = re.sub(r"\.4bpp.*$", ".png", graphics[field(block, "frontPic")])
    source = Image.open(ROOT / path)
    assert source.mode == "P" and source.width == 64 and source.height % 64 == 0, path
    if silhouette:
        palette = [(132, 137, 153)] * 16
    else:
        symbol = field(block, "shinyPalette" if shiny else "palette")
        pal_path = re.sub(r"\.gbapal.*$", ".pal", graphics[symbol])
        lines = (ROOT / pal_path).read_text().splitlines()
        assert lines[:2] == ["JASC-PAL", "0100"], pal_path
        palette = [tuple(map(int, line.split())) for line in lines[3:]]
    frame = min(frame, source.height // 64 - 1)
    indices = list(source.crop((0, frame * 64, 64, (frame + 1) * 64)).getdata())
    if shiny and max(indices) >= len(palette):
        # Some custom shiny palettes are incomplete. Do not invent colors or
        # offer a broken shiny button; normal sprites still export normally.
        return None
    assert max(indices) < len(palette), path
    image = Image.new("RGBA", (64, 64))
    image.putdata([(*palette[index], 255) if index else (0, 0, 0, 0) for index in indices])
    return image


def export(check=False):
    species, shared, graphics, learnsets, abilities, moves, items = game_tables()
    data = []
    images = {}
    cards = []
    for number, slot in enumerate(MANIFEST, 1):
        block = species[slot]
        if slot in HIDDEN:
            sprite = f"images/wishdex/{HIDDEN[slot]}.png"
            images[sprite] = image_for(block, graphics, silhouette=True)
            data.append({"id": number, "hidden": True, "sprite": sprite})
            cards.append(f'''                <div class="pokemon-card pokemon-card-hidden">
                    <img src="{sprite}" alt="Undiscovered Wish form" class="pokemon-sprite" width="64" height="64" loading="lazy">
                    <span class="pokemon-card-name" aria-hidden="true">???</span>
                </div>''')
            continue
        name = strings(field(block, "speciesName"))
        basename = f"images/wishdex/{number:02d}"
        sprite, frame, shiny = f"{basename}.png", f"{basename}-frame.png", f"{basename}-shiny.png"
        images[sprite] = image_for(block, graphics)
        images[frame] = image_for(block, graphics, frame=1)
        shiny_image = image_for(block, graphics, shiny=True)
        if shiny_image is not None:
            images[shiny] = shiny_image
        else:
            shiny = None
        description = field(block, "description")
        description = strings(description) if '"' in description else shared[description]
        description = " ".join(description.replace("$", "").split())
        # Prevent text or evolution branches from disclosing hidden names.
        for hidden_slot in HIDDEN:
            hidden_name = strings(field(species[hidden_slot], "speciesName"))
            description = re.sub(rf"\b{re.escape(hidden_name)}\b", "an undiscovered Pokémon", description, flags=re.I)
        ability_values = split_arguments(field(block, "abilities")[1:-1])
        ability_names = []
        for index, expression in enumerate(ability_values):
            token = evaluate(expression)
            if token == "ABILITY_NONE":
                continue
            label = abilities[token] + (" (Hidden)" if index == 2 else "")
            if label not in ability_names:
                ability_names.append(label)
        learnset = learnsets[field(block, "levelUpLearnset")]
        assert learnset, f"Empty learnset: {slot}"
        record = {
            "id": number, "name": name,
            "species": strings(field(block, "categoryName")) + " Pokémon",
            "sprite": sprite, "frameSprite": frame, "shinySprite": shiny,
            "types": [readable(token, "TYPE_") for token in re.findall(r"TYPE_\w+", field(block, "types"))],
            "height": f"{evaluate(field(block, 'height')) / 10:g} m",
            "weight": f"{evaluate(field(block, 'weight')) / 10:g} kg",
            "abilities": ability_names, "description": description,
            "evolutions": evolution_details(field(block, "evolutions"), species, moves, items),
            "moveset": [{"level": level, "move": moves[move]} for level, move in learnset],
        }
        for output, source in {"hp": "HP", "attack": "Attack", "defense": "Defense",
                               "speed": "Speed", "spAttack": "SpAttack", "spDefense": "SpDefense"}.items():
            record[output] = evaluate(field(block, "base" + source))
            assert type(record[output]) is int and 0 < record[output] <= 255, slot
        assert record["types"] and record["abilities"] and description, slot
        data.append(record)
        escaped_name = html.escape(name, quote=True)
        cards.append(f'''                <button type="button" class="pokemon-card" data-pokemon-id="{number}" aria-label="View {escaped_name}">
                    <img src="{sprite}" alt="{escaped_name}" class="pokemon-sprite" data-normal="{sprite}" data-frame="{frame}" width="64" height="64" loading="lazy">
                    <span class="pokemon-card-name">{escaped_name}</span>
                </button>''')
    assert len(data) == 100 and sum(not entry.get("hidden") for entry in data) == 98
    serialized = json.dumps(data, ensure_ascii=False, indent=2)
    for slot in HIDDEN:
        assert strings(field(species[slot], "speciesName")) not in serialized
    generated = "// Generated by tools/wishdex/generate.py. Do not edit by hand.\nwindow.WISHDEX_DATA = " + serialized + ";\n"
    page_path = ROOT / "wishdex.html"
    page = page_path.read_text()
    start, end = page.index(START) + len(START), page.index(END)
    page = page[:start] + "\n" + "\n".join(cards) + "\n                " + page[end:]
    changes = []
    for relative, contents in {"wishdex-data.js": generated, "wishdex.html": page}.items():
        destination = ROOT / relative
        if not destination.exists() or destination.read_text() != contents:
            changes.append(relative)
            if not check:
                destination.write_text(contents)
    for relative, image in images.items():
        destination = ROOT / relative
        same = destination.exists() and Image.open(destination).convert("RGBA").tobytes() == image.tobytes()
        if not same:
            changes.append(relative)
            if not check:
                destination.parent.mkdir(parents=True, exist_ok=True)
                image.save(destination)
    if check and changes:
        raise SystemExit("WishDex needs regeneration:\n" + "\n".join(changes))
    print(f"WishDex: 98 detailed entries, 2 silhouettes; {len(changes)} {'outdated' if check else 'updated'} files.")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--check", action="store_true", help="Verify generated files without writing")
    export(parser.parse_args().check)
