#!/usr/bin/env python3
from pathlib import Path
import re
import shutil

ROOT = Path.cwd()

SONG_ID = 617
CONST = "MUS_AINT_NO_REST_FOR_THE_WICKED"
SLUG = "aint_no_rest_for_the_wicked"
SOURCE_NAME = "mus_aint_no_rest_for_the_wicked_gba_RADIO_FINAL_LOOP.mid"

ANCHOR_CONST = "MUS_WHEN_THE_SUN_HITS"
ANCHOR_ID = 616
ANCHOR_SLUG = "when_the_sun_hits"

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
print("========================================================")
print(" AIN'T NO REST FOR THE WICKED -> SLOT 617")
print("========================================================")
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
# Existing sample check
# ------------------------------------------------------------

direct_data = ROOT / "sound/direct_sound_data.inc"

if not direct_data.exists():
    fail("sound/direct_sound_data.inc não encontrado")

direct_text = direct_data.read_text(errors="ignore")

required = [
    "DirectSoundWaveData_sc88pro_fingered_bass",
    "DirectSoundWaveData_sd90_classical_distortion_guitar_high",
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
# MIDI
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
#
# 0 = Fingered Bass
# 1 = Distortion Guitar rhythm
# 2 = Distortion Guitar lead
# 3 = Alto Sax vocal
# 4 = rs_drumset
# ------------------------------------------------------------

VOICEGROUP.write_text(
"""voice_group aint_no_rest_for_the_wicked
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_fingered_bass, 255, 252, 0, 127 @ 0 - bass
    voice_directsound 60, 0, DirectSoundWaveData_sd90_classical_distortion_guitar_high, 255, 204, 0, 127 @ 1 - rhythm guitar
    voice_directsound 60, 0, DirectSoundWaveData_sd90_classical_distortion_guitar_high, 255, 0, 255, 127 @ 2 - lead guitar
    voice_directsound 60, 0, DirectSoundWaveData_dp_altosax_c3_16, 255, 0, 255, 127 @ 3 - vocal
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
    r'"sound/voicegroups/aint_no_rest_for_the_wicked\.inc"'
    r'[^\n]*\n?',
    '',
    text,
    flags=re.M,
)

if not text.endswith("\n"):
    text += "\n"

text += '.include "sound/voicegroups/aint_no_rest_for_the_wicked.inc"\n'

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
    r'^mus_aint_no_rest_for_the_wicked\.mid:.*\n?',
    '',
    text,
    flags=re.M,
)

if not text.endswith("\n"):
    text += "\n"

line = (
    "mus_aint_no_rest_for_the_wicked.mid: "
    "-E -R50 -G_aint_no_rest_for_the_wicked -V100"
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

text = re.sub(
    r'^[ \t]*#define[ \t]+'
    r'MUS_AINT_NO_REST_FOR_THE_WICKED[ \t]+\d+'
    r'[^\n]*\n?',
    '',
    text,
    flags=re.M,
)

anchor = re.search(
    r'^[ \t]*#define[ \t]+'
    r'MUS_WHEN_THE_SUN_HITS[ \t]+616\b[^\n]*',
    text,
    re.M,
)

if not anchor:
    fail("Não achei MUS_WHEN_THE_SUN_HITS = 616 em songs.h")

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
    "#define END_MUS MUS_AINT_NO_REST_FOR_THE_WICKED",
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
    r'mus_aint_no_rest_for_the_wicked'
    r'[ \t]*,[^\n]*\n?',
    '',
    text,
    flags=re.M,
)

anchor = re.search(
    r'^(?P<indent>[ \t]*)'
    r'song[ \t]+mus_when_the_sun_hits'
    r'[ \t]*,[ \t]*0'
    r'[ \t]*,[ \t]*0'
    r'[^\n]*',
    text,
    re.M,
)

if not anchor:
    fail("Não achei song mus_when_the_sun_hits, 0, 0")

indent = anchor.group("indent")

text = (
    text[:anchor.end()]
    + "\n"
    + indent
    + "song mus_aint_no_rest_for_the_wicked, 0, 0"
    + text[anchor.end():]
)

song_table.write_text(text)

print("[ADD] song mus_aint_no_rest_for_the_wicked, 0, 0")

# ------------------------------------------------------------
# debug.c X-macro
# ------------------------------------------------------------

debug_c = ROOT / "src/debug.c"

if debug_c.exists():
    text = debug_c.read_text()

    text = re.sub(
        r'^[ \t]*X\(MUS_AINT_NO_REST_FOR_THE_WICKED\)'
        r'[^\n]*\n?',
        '',
        text,
        flags=re.M,
    )

    anchor = re.search(
        r'^(?P<indent>[ \t]*)'
        r'X\(MUS_WHEN_THE_SUN_HITS\)'
        r'[ \t]*(?:\\)?[ \t]*$',
        text,
        re.M,
    )

    if anchor:
        indent = anchor.group("indent")

        replacement = (
            indent
            + "X(MUS_WHEN_THE_SUN_HITS) \\\n"
            + indent
            + "X(MUS_AINT_NO_REST_FOR_THE_WICKED)"
        )

        text = (
            text[:anchor.start()]
            + replacement
            + text[anchor.end():]
        )

        debug_c.write_text(text)

        print("[UPDATE]", debug_c)
    else:
        print("[WARN] Não achei X(MUS_WHEN_THE_SUN_HITS) em debug.c")

print()
print("========================================================")
print(" AIN'T NO REST FOR THE WICKED INSTALADA")
print("========================================================")
print()
print("616: MUS_WHEN_THE_SUN_HITS")
print("617: MUS_AINT_NO_REST_FOR_THE_WICKED")
print()
print("END_MUS = MUS_AINT_NO_REST_FOR_THE_WICKED")
print()
print("Copie também o radio.c fornecido para src/radio.c.")
print()
print("Depois:")
print("  make -j8")
