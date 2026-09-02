#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import sys
from datetime import datetime

ROOT = Path.cwd()

SONG_CONST = "MUS_INTRO_EPICA"
SONG_BASENAME = "intro_epica_pokeemerald_gba"
RADIO_DISPLAY_NAME = "INTRO EPICA (HLW)"

SONGS_H = ROOT / "include/constants/songs.h"
SONG_TABLE = ROOT / "sound/song_table.inc"
MIDI_CFG = ROOT / "sound/songs/midi/midi.cfg"
MIDI_FILE = ROOT / f"sound/songs/midi/{SONG_BASENAME}.mid"
RADIO_C = ROOT / "src/radio.c"
DEBUG_C = ROOT / "src/debug.c"

FILES = [SONGS_H, SONG_TABLE, MIDI_CFG, MIDI_FILE, RADIO_C, DEBUG_C]


def die(msg):
    print(f"\n[ERRO] {msg}")
    sys.exit(1)


def read(path):
    return path.read_text(encoding="utf-8")


def write(path, text):
    path.write_text(text, encoding="utf-8")


def backup(path, stamp):
    dst = path.with_name(path.name + f".before_intro_epica_register_{stamp}.bak")
    shutil.copy2(path, dst)
    return dst


def parse_numeric_music_defines(text):
    out = []
    for m in re.finditer(r"(?m)^\s*#define\s+(MUS_[A-Z0-9_]+)\s+((?:0x[0-9A-Fa-f]+)|(?:\d+))\b", text):
        name = m.group(1)
        if name == "MUS_NONE":
            continue
        try:
            value = int(m.group(2), 0)
        except ValueError:
            continue
        out.append((name, value))
    return out


def get_existing_const_id(text):
    m = re.search(
        rf"(?m)^\s*#define\s+{re.escape(SONG_CONST)}\s+((?:0x[0-9A-Fa-f]+)|(?:\d+))\b",
        text,
    )
    return int(m.group(1), 0) if m else None


def add_song_constant_and_end_mus(text):
    existing = get_existing_const_id(text)
    numeric_defs = parse_numeric_music_defines(text)
    if not numeric_defs:
        die("Nao consegui localizar os IDs MUS_* numericos em include/constants/songs.h.")

    prior_name, prior_id = max(numeric_defs, key=lambda x: x[1])

    if existing is None:
        new_id = prior_id + 1

        end_match = re.search(r"(?m)^(?P<indent>\s*)#define\s+END_MUS\b.*$", text)
        if end_match:
            line = f"#define {SONG_CONST:<44} {new_id}\n"
            text = text[:end_match.start()] + line + text[end_match.start():]
        else:
            prev = re.search(
                rf"(?m)^(?P<line>\s*#define\s+{re.escape(prior_name)}\s+(?:0x[0-9A-Fa-f]+|\d+).*)$",
                text,
            )
            if not prev:
                die("Nao encontrei um ponto seguro para inserir o novo MUS_* em songs.h.")
            text = text[:prev.end()] + f"\n#define {SONG_CONST:<44} {new_id}" + text[prev.end():]
    else:
        new_id = existing

    end_pattern = re.compile(r"(?m)^(?P<indent>\s*)#define\s+END_MUS\s+.*$")
    if end_pattern.search(text):
        text = end_pattern.sub(
            lambda m: f"{m.group('indent')}#define END_MUS {SONG_CONST}",
            text,
            count=1,
        )
    else:
        die("Nao encontrei #define END_MUS em songs.h. Nao vou adivinhar.")

    return text, new_id, prior_name, prior_id


def add_song_table_entry(text, prior_const_name):
    if re.search(rf"(?m)^\s*song\s+{re.escape(SONG_BASENAME)}\s*,", text):
        return text

    new_line = f"    song {SONG_BASENAME}, 0, 0"

    prior_symbol = prior_const_name.lower()
    m = re.search(
        rf"(?m)^(?P<line>\s*song\s+{re.escape(prior_symbol)}\s*,[^\n]*)$",
        text,
    )
    if m:
        return text[:m.end()] + "\n" + new_line + text[m.end():]

    matches = list(re.finditer(r"(?m)^(?P<line>\s*song\s+[A-Za-z0-9_]+\s*,[^\n]*)$", text))
    if not matches:
        die("Nao encontrei nenhuma entrada 'song ...' em sound/song_table.inc.")

    m = matches[-1]
    return text[:m.end()] + "\n" + new_line + text[m.end():]


def ensure_single_midi_cfg_entry(text):
    kept_line = None

    for line in text.splitlines():
        s = line.strip()
        if not s or s.startswith("#") or ":" not in s:
            continue
        lhs = s.split(":", 1)[0].strip()
        if lhs == SONG_BASENAME + ".mid":
            kept_line = line

    if kept_line is None:
        die(
            f"Nao achei '{SONG_BASENAME}.mid:' em midi.cfg. "
            "Rode primeiro o porter da musica que voce ja usou."
        )

    out = []
    emitted = False
    for line in text.splitlines():
        s = line.strip()
        lhs = s.split(":", 1)[0].strip() if ":" in s else ""
        if lhs in (SONG_BASENAME, SONG_BASENAME + ".mid"):
            if not emitted:
                out.append(kept_line)
                emitted = True
            continue
        out.append(line)

    return "\n".join(out) + "\n"


def append_to_xmacro(text, macro_name, end_marker, item):
    start = text.find(f"#define {macro_name}")
    if start < 0:
        die(f"Nao encontrei o macro {macro_name}.")
    end = text.find(end_marker, start)
    if end < 0:
        die(f"Nao encontrei o fim do macro {macro_name}.")

    block = text[start:end]
    if f"X({item})" in block:
        return text

    lines = block.splitlines()
    candidates = [i for i, line in enumerate(lines) if re.search(r"\bX\(MUS_[A-Z0-9_]+\)", line)]
    if not candidates:
        die(f"O macro {macro_name} nao possui entradas MUS_*.")

    last = candidates[-1]
    if not lines[last].rstrip().endswith("\\"):
        lines[last] = lines[last].rstrip() + " \\"

    indent = re.match(r"^\s*", lines[last]).group(0)
    lines.insert(last + 1, f"{indent}X({item})")

    new_block = "\n".join(lines)
    if block.endswith("\n"):
        new_block += "\n"

    return text[:start] + new_block + text[end:]


def add_to_station(text, station_name, item):
    marker = f"static const u16 {station_name}[]"
    start = text.find(marker)
    if start < 0:
        die(f"Nao encontrei {station_name} em src/radio.c.")

    open_brace = text.find("{", start)
    close = text.find("};", open_brace)
    if open_brace < 0 or close < 0:
        die(f"Bloco invalido para {station_name}.")

    block = text[open_brace:close]
    if re.search(rf"\b{re.escape(item)}\b", block):
        return text

    rel = block.rfind("STATION_END")
    if rel < 0:
        die(f"Nao encontrei STATION_END em {station_name}.")

    abs_pos = open_brace + rel
    line_start = text.rfind("\n", open_brace, abs_pos) + 1
    indent = re.match(r"\s*", text[line_start:abs_pos]).group(0)

    return text[:line_start] + f"{indent}{item},\n" + text[line_start:]


def add_radio_display_name(text):
    declaration = f'static const u8 sHlwName_IntroEpica[] = _("{RADIO_DISPLAY_NAME}");'
    if declaration not in text:
        anchor = 'static const u8 sGamesName_ThroughTheSeaOfTime[] = _("THROUGH THE SEA OF TIME (POKEMON MYSTERY DUNGEON)");'
        pos = text.find(anchor)
        if pos >= 0:
            text = text[:pos + len(anchor)] + "\n" + declaration + text[pos + len(anchor):]
        else:
            print("[AVISO] Nome especial nao inserido; Radio exibira 'INTRO EPICA'.")
            return text

    case = f"    case {SONG_CONST}:\n        return sHlwName_IntroEpica;\n"
    if f"case {SONG_CONST}:" not in text:
        fn = text.find("static const u8 *Radio_GetGamesDisplayName(u16 songId)")
        if fn >= 0:
            default = text.find("    default:", fn)
            if default >= 0:
                text = text[:default] + case + "\n" + text[default:]
            else:
                print("[AVISO] Nao achei default do display-name; usando nome generico.")
        else:
            print("[AVISO] Nao achei Radio_GetGamesDisplayName; usando nome generico.")

    return text


def main():
    print("=== REGISTRAR INTRO EPICA EM TODO O PROJETO ===\n")

    missing = [str(p) for p in FILES if not p.exists()]
    if missing:
        die("Arquivos ausentes:\n  " + "\n  ".join(missing))

    stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    for p in (SONGS_H, SONG_TABLE, MIDI_CFG, RADIO_C, DEBUG_C):
        b = backup(p, stamp)
        print(f"[BACKUP] {b.relative_to(ROOT)}")

    songs = read(SONGS_H)
    songs, song_id, prior_const, prior_id = add_song_constant_and_end_mus(songs)
    write(SONGS_H, songs)
    print(f"[OK] {SONG_CONST} = {song_id}")
    print(f"[OK] END_MUS = {SONG_CONST}")

    table = read(SONG_TABLE)
    table = add_song_table_entry(table, prior_const)
    write(SONG_TABLE, table)
    print(f"[OK] song_table.inc -> {SONG_BASENAME}")

    cfg = read(MIDI_CFG)
    cfg = ensure_single_midi_cfg_entry(cfg)
    write(MIDI_CFG, cfg)
    print("[OK] midi.cfg -> uma unica receita ativa")

    debug = read(DEBUG_C)
    debug = append_to_xmacro(
        debug,
        "SOUND_LIST_BGM",
        "// Create BGM list",
        SONG_CONST,
    )
    write(DEBUG_C, debug)
    print("[OK] Debug Menu > Sound > Music")

    radio = read(RADIO_C)
    radio = append_to_xmacro(
        radio,
        "RADIO_SOUND_LIST_BGM",
        "#define X(songId) static const u8 sRadioBGMName_",
        SONG_CONST,
    )
    radio = add_to_station(radio, "sStation_All", SONG_CONST)
    radio = add_to_station(radio, "sStation_PokemonGba", SONG_CONST)
    radio = add_radio_display_name(radio)
    write(RADIO_C, radio)
    print("[OK] Radio > ALL TRACKS")
    print("[OK] Radio > POKEMON GBA")
    print(f"[OK] Radio display -> {RADIO_DISPLAY_NAME}")

    checks = [
        (SONG_CONST in read(SONGS_H), "songs.h"),
        (f"song {SONG_BASENAME}," in read(SONG_TABLE), "song_table"),
        (f"X({SONG_CONST})" in read(DEBUG_C), "debug sound list"),
        (f"X({SONG_CONST})" in read(RADIO_C), "radio BGM list"),
        (read(RADIO_C).count(f"    {SONG_CONST},") >= 2, "radio stations"),
    ]
    failed = [label for ok, label in checks if not ok]
    if failed:
        die("Verificacao final falhou: " + ", ".join(failed))

    print("\n========================================")
    print("REGISTRO COMPLETO")
    print("========================================")
    print(f"Song constant : {SONG_CONST}")
    print(f"Music ID      : {song_id}")
    print(f"MIDI          : {MIDI_FILE.relative_to(ROOT)}")
    print("Radio         : ALL TRACKS + POKEMON GBA")
    print("Debug         : Sound > Music")
    print()
    print("Agora rode:")
    print("    make -j8")
    print()
    print("Conferencia:")
    print(
        "    grep -Rni --exclude-dir=build "
        f"'{SONG_CONST}\\|{SONG_BASENAME}' "
        "include/constants/songs.h sound/song_table.inc src/radio.c src/debug.c"
    )


if __name__ == "__main__":
    main()
