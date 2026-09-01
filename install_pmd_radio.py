#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
PMD RADIO GAMES - installer FIXED V2
Específico para o layout atual do HOENN'S LAST WISH / pokeemerald-expansion.

Coloque este arquivo na RAIZ do repo junto de pmd_radio_payload/ e rode:
    python3 install_pmd_radio.py

Depois:
    make -j8
"""

from pathlib import Path
import re
import shutil
import sys

ROOT = Path(__file__).resolve().parent
PAYLOAD = ROOT / "pmd_radio_payload"

SONGS = [
    ("MUS_TIME_GEAR", "mus_time_gear", "TIME GEAR (POKEMON MYSTERY DUNGEON)", "TimeGear"),
    ("MUS_DONT_EVER_FORGET", "mus_dont_ever_forget", "DON'T EVER FORGET (POKEMON MYSTERY DUNGEON)", "DontEverForget"),
    ("MUS_TEMPORAL_TOWER", "mus_temporal_tower", "TEMPORAL TOWER (POKEMON MYSTERY DUNGEON)", "TemporalTower"),
    ("MUS_TEMPORAL_SPIRE", "mus_temporal_spire", "TEMPORAL SPIRE (POKEMON MYSTERY DUNGEON)", "TemporalSpire"),
    ("MUS_THROUGH_THE_SEA_OF_TIME", "mus_through_the_sea_of_time", "THROUGH THE SEA OF TIME (POKEMON MYSTERY DUNGEON)", "ThroughTheSeaOfTime"),
]

VOICEGROUP = "fly_me_to_the_moon"

def fail(msg):
    print("\nERRO:", msg)
    sys.exit(1)

def read(path):
    return path.read_text(encoding="utf-8", errors="replace")

def write(path, text):
    path.write_text(text, encoding="utf-8")

def require(path, name):
    if not path.exists():
        fail(f"{name} não encontrado: {path}")
    return path

def backup(path):
    bak = path.with_suffix(path.suffix + ".bak")
    if not bak.exists():
        shutil.copy2(path, bak)

def copy_midis():
    dst = ROOT / "sound/songs/midi"
    dst.mkdir(parents=True, exist_ok=True)
    for _, symbol, _, _ in SONGS:
        src = require(PAYLOAD / f"{symbol}.mid", f"MIDI {symbol}")
        shutil.copy2(src, dst / src.name)
    print("OK: 5 MIDIs portados copiados para sound/songs/midi/")

def validate_voicegroup():
    path = require(
        ROOT / f"sound/voicegroups/{VOICEGROUP}.inc",
        f"voicegroup {VOICEGROUP}"
    )
    text = read(path)

    # This is the voicegroup already present in the user's repository.
    # We only verify the slots the prepared MIDIs actually use.
    checks = [
        "voicegroup_piano_keysplit",
        "keysplit_piano",
        "fretless_bass",
        "voicegroup_strings_keysplit",
        "sc88pro_flute",
    ]
    missing = [x for x in checks if x not in text]
    if missing:
        fail(
            f"{VOICEGROUP}.inc não possui os instrumentos esperados: "
            + ", ".join(missing)
        )
    print("OK: voicegroup com PIANO + bass + strings + flute encontrado")

def patch_songs_h():
    path = require(ROOT / "include/constants/songs.h", "songs.h")
    text = read(path)

    if all(re.search(rf"(?m)^#define\s+{re.escape(c)}\s+\d+\b", text) for c,_,_,_ in SONGS):
        print("OK: songs.h já possui os 5 IDs")
        return

    m = re.search(r"(?m)^\s*#define\s+END_MUS\s+(MUS_[A-Za-z0-9_]+)\s*$", text)
    if not m:
        fail("não achei END_MUS no songs.h")

    old_end = m.group(1)
    n = re.search(rf"(?m)^\s*#define\s+{re.escape(old_end)}\s+(\d+)\b", text)
    if not n:
        fail(f"não consegui ler o ID de {old_end}")

    next_id = int(n.group(1)) + 1
    lines = []
    for const, _, _, _ in SONGS:
        lines.append(f"#define {const:<43} {next_id}")
        next_id += 1
    lines.append(f"#define END_MUS {SONGS[-1][0]}")

    backup(path)
    text = text[:m.start()] + "\n".join(lines) + text[m.end():]
    write(path, text)
    print("OK: songs.h -> IDs adicionados e END_MUS atualizado")

def patch_midi_cfg():
    path = require(ROOT / "sound/songs/midi/midi.cfg", "midi.cfg")
    text = read(path)
    add = []

    for _, symbol, _, _ in SONGS:
        filename = f"{symbol}.mid"
        if not re.search(rf"(?m)^\s*{re.escape(filename)}\s*:", text):
            add.append(f"{filename}: -E -R50 -G_{VOICEGROUP} -V100")

    if not add:
        print("OK: midi.cfg já possui as músicas")
        return

    backup(path)
    if text and not text.endswith("\n"):
        text += "\n"
    text += "\n# Pokemon Mystery Dungeon - Radio GAMES\n"
    text += "\n".join(add) + "\n"
    write(path, text)
    print(f"OK: midi.cfg -> usando -G_{VOICEGROUP}")

def patch_song_table():
    path = require(ROOT / "sound/song_table.inc", "song_table.inc")
    text = read(path)

    missing = [symbol for _, symbol, _, _ in SONGS
               if not re.search(rf"(?m)^\s*song\s+{re.escape(symbol)}\s*,", text)]
    if not missing:
        print("OK: song_table.inc já possui as músicas")
        return

    # In this repo the last music is mus_touhou10_stage5_boss
    # followed immediately by ph_trap_blend. Insert PMD before phonemes.
    anchor = re.search(
        r"(?m)^([ \t]*song\s+mus_touhou10_stage5_boss\s*,[^\n]*\n)",
        text
    )
    if anchor:
        pos = anchor.end()
    else:
        ph = re.search(r"(?m)^[ \t]*song\s+ph_trap_blend\s*,", text)
        if not ph:
            fail("não achei ponto de inserção no song_table.inc")
        pos = ph.start()

    # Match the repo's actual format: song <symbol>, 0, 0
    block = "".join(f"\tsong {symbol}, 0, 0\n" for symbol in missing)

    backup(path)
    text = text[:pos] + block + text[pos:]
    write(path, text)
    print("OK: song_table.inc -> 5 entradas BGM adicionadas")

def patch_radio():
    path = require(ROOT / "src/radio.c", "radio.c")
    text = read(path)
    changed = False

    # 1) RADIO_SOUND_LIST_BGM
    macro_start = text.find("#define RADIO_SOUND_LIST_BGM")
    macro_end = text.find("#define X(songId)", macro_start) if macro_start >= 0 else -1
    if macro_start < 0 or macro_end < 0:
        fail("radio.c: não achei RADIO_SOUND_LIST_BGM")

    region = text[macro_start:macro_end]
    missing = [c for c,_,_,_ in SONGS if f"X({c})" not in region]
    if missing:
        matches = list(re.finditer(
            r"(?m)^(\s*)X\((MUS_[A-Za-z0-9_]+)\)\s*(\\)?\s*$",
            region
        ))
        if not matches:
            fail("radio.c: não achei o último X(MUS_...)")

        last = matches[-1]
        a = macro_start + last.start()
        b = macro_start + last.end()
        old = text[a:b].rstrip()
        if not old.endswith("\\"):
            old += " \\"

        lines = [old]
        for i, const in enumerate(missing):
            slash = " \\" if i != len(missing) - 1 else ""
            lines.append(f"    X({const}){slash}")

        text = text[:a] + "\n".join(lines) + text[b:]
        changed = True

    # 2) ALL TRACKS + GAMES
    def add_station(decl):
        nonlocal text, changed
        start = text.find(decl)
        if start < 0:
            fail(f"radio.c: não achei {decl}")
        end = text.find("    STATION_END", start)
        if end < 0:
            fail(f"radio.c: STATION_END ausente em {decl}")
        region = text[start:end]
        miss = [c for c,_,_,_ in SONGS if c not in region]
        if miss:
            text = text[:end] + "".join(f"    {c},\n" for c in miss) + text[end:]
            changed = True

    add_station("static const u16 sStation_All[] = {")
    add_station("static const u16 sStation_Games[] = {")

    # 3) Player-facing GAMES names
    func = text.find("static const u8 *Radio_GetGamesDisplayName")
    if func < 0:
        fail("radio.c: Radio_GetGamesDisplayName não encontrado")

    decls = []
    for const, symbol, display, var in SONGS:
        varname = f"sGamesName_{var}"
        if varname not in text[:func]:
            decls.append(f'static const u8 {varname}[] = _("{display}");')

    if decls:
        text = text[:func] + "\n".join(decls) + "\n\n" + text[func:]
        changed = True

    func = text.find("static const u8 *Radio_GetGamesDisplayName")
    default = text.find("    default:", func)
    if default < 0:
        fail("radio.c: default de Radio_GetGamesDisplayName não encontrado")

    func_region = text[func:default]
    cases = []
    for const, symbol, display, var in SONGS:
        if f"case {const}:" not in func_region:
            cases.append(
                f"    case {const}:\n"
                f"        return sGamesName_{var};\n"
            )

    if cases:
        text = text[:default] + "".join(cases) + "\n" + text[default:]
        changed = True

    if changed:
        backup(path)
        write(path, text)
        print("OK: radio.c -> ALL TRACKS + GAMES + display names")
    else:
        print("OK: radio.c já estava atualizado")

def main():
    print("=== PMD RADIO GAMES - FIXED V2 ===")
    print("Repo:", ROOT)

    validate_voicegroup()
    copy_midis()
    patch_songs_h()
    patch_midi_cfg()
    patch_song_table()
    patch_radio()

    print("\n====================================")
    print("INSTALAÇÃO CONCLUÍDA")
    print("Agora rode:")
    print("    make -j8")
    print("====================================")

if __name__ == "__main__":
    main()
