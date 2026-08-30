#!/usr/bin/env python3
from pathlib import Path
import re
import shutil

ROOT = Path.cwd()

SONG_ID = 596
CONST = "MUS_THE_YOUNG_PHOTOGRAPHER"
SLUG = "the_young_photographer"
SOURCE_NAME = "mus_the_young_photographer_gba_RADIO_FINAL_LOOP.mid"

ANCHOR_CONST = "MUS_GUTS_THEME"
ANCHOR_ID = 595
ANCHOR_SLUG = "guts_theme"

IMPORT_DIR = ROOT / "music_to_import" / SLUG
SOURCE = IMPORT_DIR / SOURCE_NAME
MIDI_DIR = ROOT / "sound/songs/midi"
DEST_MIDI = MIDI_DIR / f"mus_{SLUG}.mid"
VOICEGROUP = ROOT / f"sound/voicegroups/{SLUG}.inc"


def fail(msg):
    raise SystemExit("\nERRO: " + msg)


def remove_if_exists(path):
    path = Path(path)
    if path.exists():
        path.unlink()
        print("[REMOVE]", path)


print()
print("====================================================")
print(" THE YOUNG PHOTOGRAPHER -> SLOT 596")
print("====================================================")
print()

IMPORT_DIR.mkdir(parents=True, exist_ok=True)

root_source = ROOT / SOURCE_NAME

if not SOURCE.exists() and root_source.exists():
    shutil.move(str(root_source), str(SOURCE))
    print("[MOVE]", root_source, "->", SOURCE)

if not SOURCE.exists():
    fail(
        "Não achei:\n"
        f"{SOURCE}\n\n"
        "Coloque:\n"
        f"{SOURCE_NAME}\n"
        "em:\n"
        f"{IMPORT_DIR}"
    )

print("[FOUND]", SOURCE)

# ------------------------------------------------------------
# Sample check
# ------------------------------------------------------------

direct_data = ROOT / "sound/direct_sound_data.inc"

if not direct_data.exists():
    fail("sound/direct_sound_data.inc não encontrado")

direct_text = direct_data.read_text(errors="ignore")

required = [
    "DirectSoundWaveData_sc88pro_fingered_bass",
    "DirectSoundWaveData_sc88pro_square_wave",
    "DirectSoundWaveData_dp_altosax_c3_16",
]

for symbol in required:
    if not re.search(
        rf'(?m)^\s*{re.escape(symbol)}::?',
        direct_text,
    ):
        fail("Sample necessário não encontrado:\n" + symbol)

    print("[FOUND]", symbol)

# ------------------------------------------------------------
# Clean + copy MIDI
# ------------------------------------------------------------

for stale in [
    MIDI_DIR / f"mus_{SLUG}.s",
    ROOT / f"build/modern/sound/songs/midi/mus_{SLUG}.o",
    ROOT / f"build/modern/sound/songs/midi/mus_{SLUG}.d",
]:
    remove_if_exists(stale)

shutil.copy2(SOURCE, DEST_MIDI)
print("[COPY]", SOURCE, "->", DEST_MIDI)

# ------------------------------------------------------------
# Voicegroup
# 0 = Fingered Bass
# 1 = Square Wave
# 2 = Alto Sax
# 3 = rs drumset
# ------------------------------------------------------------

VOICEGROUP.write_text(
"""voice_group the_young_photographer
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_fingered_bass, 255, 252, 0, 127 @ 0 - bass
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_square_wave, 255, 204, 0, 127 @ 1 - harmony
    voice_directsound 60, 0, DirectSoundWaveData_dp_altosax_c3_16, 255, 0, 255, 127 @ 2 - lead
    voice_keysplit_all voicegroup_rs_drumset
"""
)

print("[CREATE]", VOICEGROUP)

# ------------------------------------------------------------
# voice_groups.inc
# ------------------------------------------------------------

voice_groups = ROOT / "sound/voice_groups.inc"

if not voice_groups.exists():
    fail("sound/voice_groups.inc não encontrado")

text = voice_groups.read_text()

text = re.sub(
    r'^[ \t]*\.include[ \t]+'
    r'"sound/voicegroups/the_young_photographer\.inc"'
    r'[^\n]*\n?',
    '',
    text,
    flags=re.M,
)

if not text.endswith("\n"):
    text += "\n"

text += '.include "sound/voicegroups/the_young_photographer.inc"\n'

voice_groups.write_text(text)
print("[UPDATE]", voice_groups)

# ------------------------------------------------------------
# midi.cfg
# ------------------------------------------------------------

cfg = MIDI_DIR / "midi.cfg"

if not cfg.exists():
    fail("sound/songs/midi/midi.cfg não encontrado")

text = cfg.read_text()

text = re.sub(
    r'^mus_the_young_photographer\.mid:.*\n?',
    '',
    text,
    flags=re.M,
)

if not text.endswith("\n"):
    text += "\n"

line = (
    "mus_the_young_photographer.mid: "
    "-E -R50 -G_the_young_photographer -V100"
)

text += line + "\n"
cfg.write_text(text)
print("[ADD]", line)

# ------------------------------------------------------------
# songs.h
# ------------------------------------------------------------

songs_h = ROOT / "include/constants/songs.h"

if not songs_h.exists():
    fail("include/constants/songs.h não encontrado")

text = songs_h.read_text()

# Remove duplicate if rerun.
text = re.sub(
    r'^[ \t]*#define[ \t]+'
    r'MUS_THE_YOUNG_PHOTOGRAPHER[ \t]+\d+'
    r'[^\n]*\n?',
    '',
    text,
    flags=re.M,
)

anchor = re.search(
    r'^[ \t]*#define[ \t]+'
    r'MUS_GUTS_THEME[ \t]+595\b[^\n]*',
    text,
    re.M,
)

if not anchor:
    fail("Não achei MUS_GUTS_THEME = 595 em songs.h")

line = f"#define {CONST:<40} {SONG_ID}"

text = (
    text[:anchor.end()]
    + "\n"
    + line
    + text[anchor.end():]
)

if not re.search(
    r'^[ \t]*#define[ \t]+END_MUS\b',
    text,
    re.M,
):
    fail("Não achei #define END_MUS em songs.h")

text = re.sub(
    r'^[ \t]*#define[ \t]+END_MUS\b[^\n]*',
    "#define END_MUS MUS_THE_YOUNG_PHOTOGRAPHER",
    text,
    count=1,
    flags=re.M,
)

songs_h.write_text(text)

print("[ADD]", CONST, "=", SONG_ID)
print("[SET] END_MUS ->", CONST)

# ------------------------------------------------------------
# song_table.inc
# ------------------------------------------------------------

song_table = ROOT / "sound/song_table.inc"

if not song_table.exists():
    fail("sound/song_table.inc não encontrado")

text = song_table.read_text()

text = re.sub(
    r'^[ \t]*song[ \t]+'
    r'mus_the_young_photographer'
    r'[ \t]*,[^\n]*\n?',
    '',
    text,
    flags=re.M,
)

anchor = re.search(
    r'^(?P<indent>[ \t]*)'
    r'song[ \t]+mus_guts_theme'
    r'[ \t]*,[ \t]*0'
    r'[ \t]*,[ \t]*0'
    r'[^\n]*',
    text,
    re.M,
)

if not anchor:
    fail("Não achei song mus_guts_theme, 0, 0")

indent = anchor.group("indent")

text = (
    text[:anchor.end()]
    + "\n"
    + indent
    + "song mus_the_young_photographer, 0, 0"
    + text[anchor.end():]
)

song_table.write_text(text)

print("[ADD] song mus_the_young_photographer, 0, 0")

# ------------------------------------------------------------
# X-macros in debug.c / radio.c
#
# Makes GUTS_THEME non-final and new song final:
#
# X(MUS_GUTS_THEME) \
# X(MUS_THE_YOUNG_PHOTOGRAPHER)
# ------------------------------------------------------------

def append_x_after_guts(path):
    path = Path(path)

    if not path.exists():
        print("[SKIP]", path)
        return

    text = path.read_text()

    # Remove existing occurrence of the new song if rerun.
    text = re.sub(
        r'^[ \t]*X\(MUS_THE_YOUNG_PHOTOGRAPHER\)'
        r'[^\n]*\n?',
        '',
        text,
        flags=re.M,
    )

    anchor = re.search(
        r'^(?P<indent>[ \t]*)'
        r'X\(MUS_GUTS_THEME\)'
        r'[ \t]*(?:\\)?[ \t]*$',
        text,
        re.M,
    )

    if not anchor:
        print("[WARN] Não achei X(MUS_GUTS_THEME) em", path)
        return

    indent = anchor.group("indent")

    replacement = (
        indent
        + "X(MUS_GUTS_THEME) \\\n"
        + indent
        + "X(MUS_THE_YOUNG_PHOTOGRAPHER)"
    )

    text = (
        text[:anchor.start()]
        + replacement
        + text[anchor.end():]
    )

    path.write_text(text)
    print("[UPDATE]", path)


append_x_after_guts(ROOT / "src/debug.c")
append_x_after_guts(ROOT / "src/radio.c")

# The Young Photographer is videogame music.
# If the organized radio exists, it intentionally remains in ALL TRACKS only.

# ------------------------------------------------------------
# Final clean
# ------------------------------------------------------------

for stale in [
    MIDI_DIR / f"mus_{SLUG}.s",
    ROOT / f"build/modern/sound/songs/midi/mus_{SLUG}.o",
    ROOT / f"build/modern/sound/songs/midi/mus_{SLUG}.d",
]:
    remove_if_exists(stale)

print()
print("====================================================")
print(" THE YOUNG PHOTOGRAPHER INSTALADA")
print("====================================================")
print()
print("595: MUS_GUTS_THEME")
print("596: MUS_THE_YOUNG_PHOTOGRAPHER")
print()
print("END_MUS = MUS_THE_YOUNG_PHOTOGRAPHER")
print()
print("Agora rode:")
print()
print("  make -j8")
