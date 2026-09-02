#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import sys
from datetime import datetime

ROOT = Path.cwd()

OLD_CONST = "MUS_INTRO_EPICA"
NEW_CONST = "MUS_INTRO_SUPERNOVA"
BASENAME = "intro_epica_pokeemerald_gba"
DISPLAY_NAME = "INTRO (SUPERNOVA)"

SONGS_H = ROOT / "include/constants/songs.h"
RADIO_C = ROOT / "src/radio.c"
DEBUG_C = ROOT / "src/debug.c"

def die(msg):
    print(f"[ERRO] {msg}")
    sys.exit(1)

def read(p):
    return p.read_text(encoding="utf-8")

def backup(p, stamp):
    dst = p.with_name(p.name + f".before_intro_supernova_{stamp}.bak")
    shutil.copy2(p, dst)
    print(f"[BACKUP] {dst.relative_to(ROOT)}")

def rename_constant_in_songs_h(text):
    old = re.search(
        rf"(?m)^(\s*#define\s+){re.escape(OLD_CONST)}(\s+)([^\n]+)$",
        text
    )
    new = re.search(
        rf"(?m)^(\s*#define\s+){re.escape(NEW_CONST)}(\s+)([^\n]+)$",
        text
    )

    if old and not new:
        text = (
            text[:old.start()]
            + old.group(1) + NEW_CONST + old.group(2) + old.group(3)
            + text[old.end():]
        )
    elif not old and not new:
        die(f"Nao achei {OLD_CONST} nem {NEW_CONST} em include/constants/songs.h.")

    # Keep END_MUS pointing to the renamed constant if it was using the old one.
    text = re.sub(
        rf"(?m)^(\s*#define\s+END_MUS\s+){re.escape(OLD_CONST)}\s*$",
        rf"\1{NEW_CONST}",
        text,
    )
    return text

def replace_const_everywhere(text):
    return re.sub(rf"\b{re.escape(OLD_CONST)}\b", NEW_CONST, text)

def station_block_bounds(text, station_name):
    marker = f"static const u16 {station_name}[]"
    start = text.find(marker)
    if start < 0:
        die(f"Nao achei {station_name} no radio.c.")
    open_brace = text.find("{", start)
    close = text.find("};", open_brace)
    if open_brace < 0 or close < 0:
        die(f"Bloco invalido: {station_name}")
    return open_brace, close

def remove_from_station(text, station_name, const_name):
    open_brace, close = station_block_bounds(text, station_name)
    block = text[open_brace:close]
    block2 = re.sub(
        rf"(?m)^\s*{re.escape(const_name)}\s*,\s*\n?",
        "",
        block
    )
    return text[:open_brace] + block2 + text[close:]

def add_to_station(text, station_name, const_name):
    open_brace, close = station_block_bounds(text, station_name)
    block = text[open_brace:close]
    if re.search(rf"\b{re.escape(const_name)}\b", block):
        return text

    rel = block.rfind("STATION_END")
    if rel < 0:
        die(f"Nao achei STATION_END em {station_name}.")

    abs_pos = open_brace + rel
    line_start = text.rfind("\n", open_brace, abs_pos) + 1
    indent = re.match(r"\s*", text[line_start:abs_pos]).group(0)
    return text[:line_start] + f"{indent}{const_name},\n" + text[line_start:]

def ensure_radio_display_name(text):
    # Remove any old custom display-name declaration/case from the previous script.
    text = re.sub(
        r'(?m)^\s*static const u8 sHlwName_IntroEpica\[\]\s*=\s*_\("[^"]*"\);\s*\n?',
        "",
        text
    )
    text = re.sub(
        rf"(?ms)^\s*case\s+{re.escape(NEW_CONST)}\s*:\s*\n\s*return\s+sHlwName_IntroEpica\s*;\s*\n?",
        "",
        text
    )

    decl = f'static const u8 sGamesName_IntroSupernova[] = _("{DISPLAY_NAME}");'
    if decl not in text:
        anchor = 'static const u8 sGamesName_ThroughTheSeaOfTime[] = _("THROUGH THE SEA OF TIME (POKEMON MYSTERY DUNGEON)");'
        pos = text.find(anchor)
        if pos < 0:
            die("Nao achei o bloco de nomes da Radio GAMES.")
        text = text[:pos + len(anchor)] + "\n" + decl + text[pos + len(anchor):]

    case = f"    case {NEW_CONST}:\n        return sGamesName_IntroSupernova;\n"
    if f"case {NEW_CONST}:" not in text:
        fn = text.find("static const u8 *Radio_GetGamesDisplayName(u16 songId)")
        if fn < 0:
            die("Nao achei Radio_GetGamesDisplayName().")
        default = text.find("    default:", fn)
        if default < 0:
            die("Nao achei default em Radio_GetGamesDisplayName().")
        text = text[:default] + case + "\n" + text[default:]

    return text

def main():
    for p in (SONGS_H, RADIO_C, DEBUG_C):
        if not p.exists():
            die(f"Arquivo ausente: {p}")

    stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    for p in (SONGS_H, RADIO_C, DEBUG_C):
        backup(p, stamp)

    songs = rename_constant_in_songs_h(read(SONGS_H))
    SONGS_H.write_text(songs, encoding="utf-8")
    print(f"[OK] {OLD_CONST} -> {NEW_CONST}")

    debug = replace_const_everywhere(read(DEBUG_C))
    DEBUG_C.write_text(debug, encoding="utf-8")
    print("[OK] Debug Sound atualizado")

    radio = replace_const_everywhere(read(RADIO_C))

    # Keep it in ALL TRACKS.
    radio = add_to_station(radio, "sStation_All", NEW_CONST)

    # Move it OUT of Pokemon GBA and INTO GAMES.
    radio = remove_from_station(radio, "sStation_PokemonGba", NEW_CONST)
    radio = add_to_station(radio, "sStation_Games", NEW_CONST)

    # Pretty display name.
    radio = ensure_radio_display_name(radio)

    RADIO_C.write_text(radio, encoding="utf-8")

    print("[OK] Radio > ALL TRACKS")
    print("[OK] Radio > GAMES")
    print("[OK] Removida de POKEMON GBA")
    print(f"[OK] Nome exibido: {DISPLAY_NAME}")

    print("\nAgora rode:")
    print("    make -j8")
    print("\nTeste no Radio:")
    print("    GAMES -> INTRO (SUPERNOVA)")
    print("\nE no Debug:")
    print("    Sound -> Music -> MUS_INTRO_SUPERNOVA")

if __name__ == "__main__":
    main()
