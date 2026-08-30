#!/usr/bin/env python3
from pathlib import Path
import re
import shutil

ROOT = Path.cwd()

SONG_ID = 585

OLD_CONST = "MUS_VOGEL_IM_KAFIG"
NEW_CONST = "MUS_TETRIS_MAIN_THEME"

OLD_SLUG = "vogel_im_kafig"
NEW_SLUG = "tetris_main_theme"

SOURCE_NAME = "mus_tetris_main_theme_gba_RADIO_FINAL_LOOP.mid"

IMPORT_DIR = ROOT / "music_to_import" / NEW_SLUG
SOURCE = IMPORT_DIR / SOURCE_NAME

MIDI_DIR = ROOT / "sound/songs/midi"

OLD_MIDI = MIDI_DIR / "mus_vogel_im_kafig.mid"
NEW_MIDI = MIDI_DIR / "mus_tetris_main_theme.mid"

OLD_VOICEGROUP = ROOT / "sound/voicegroups/vogel_im_kafig.inc"
NEW_VOICEGROUP = ROOT / "sound/voicegroups/tetris_main_theme.inc"


def fail(msg):
    raise SystemExit("\nERRO: " + msg)


def remove_if_exists(path):
    path = Path(path)

    if path.exists():
        path.unlink()

        print(
            "[REMOVE]",
            path,
        )


print()
print("================================================")
print(" VOGEL IM KAFIG -> TETRIS MAIN THEME | ID 585")
print("================================================")
print()


# ============================================================
# 1. LOCATE SOURCE
# ============================================================

IMPORT_DIR.mkdir(
    parents=True,
    exist_ok=True,
)

root_source = ROOT / SOURCE_NAME

if not SOURCE.exists() and root_source.exists():
    shutil.move(
        str(root_source),
        str(SOURCE),
    )

    print(
        "[MOVE]",
        root_source,
        "->",
        SOURCE,
    )

if not SOURCE.exists():
    fail(
        "Não achei:\n"
        f"{SOURCE}\n\n"
        "Coloque:\n"
        f"{SOURCE_NAME}\n"
        "em:\n"
        f"{IMPORT_DIR}"
    )

print(
    "[FOUND]",
    SOURCE,
)


# ============================================================
# 2. SAMPLE CHECK
# ============================================================

direct_data = ROOT / "sound/direct_sound_data.inc"

if not direct_data.exists():
    fail(
        "sound/direct_sound_data.inc não encontrado"
    )

direct_text = direct_data.read_text(
    errors="ignore"
)

required = [
    "DirectSoundWaveData_sc88pro_fingered_bass",
    "DirectSoundWaveData_sc88pro_square_wave",
]

for symbol in required:
    if not re.search(
        rf'(?m)^\s*{re.escape(symbol)}::?',
        direct_text,
    ):
        fail(
            "Sample necessário não encontrado:\n"
            + symbol
        )

    print(
        "[FOUND]",
        symbol,
    )


# ============================================================
# 3. REMOVE OLD VOGEL FILES
# ============================================================

for path in [
    OLD_MIDI,
    MIDI_DIR / "mus_vogel_im_kafig.s",
    ROOT / "build/modern/sound/songs/midi/mus_vogel_im_kafig.o",
    ROOT / "build/modern/sound/songs/midi/mus_vogel_im_kafig.d",
    OLD_VOICEGROUP,
]:
    remove_if_exists(
        path
    )

for path in [
    MIDI_DIR / "mus_tetris_main_theme.s",
    ROOT / "build/modern/sound/songs/midi/mus_tetris_main_theme.o",
    ROOT / "build/modern/sound/songs/midi/mus_tetris_main_theme.d",
]:
    remove_if_exists(
        path
    )


# ============================================================
# 4. MIDI
# ============================================================

shutil.copy2(
    SOURCE,
    NEW_MIDI,
)

print(
    "[COPY]",
    SOURCE,
    "->",
    NEW_MIDI,
)


# ============================================================
# 5. VOICEGROUP
#
# 0 = fingered bass
# 1 = square accompaniment
# 2 = square melody
# ============================================================

NEW_VOICEGROUP.write_text(
"""voice_group tetris_main_theme
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_fingered_bass, 255, 252, 0, 127 @ 0 - bass
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_square_wave, 255, 204, 0, 127 @ 1 - square accompaniment
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_square_wave, 255, 0, 255, 127 @ 2 - square melody
"""
)

print(
    "[CREATE]",
    NEW_VOICEGROUP,
)


# ============================================================
# 6. voice_groups.inc
# ============================================================

voice_groups = ROOT / "sound/voice_groups.inc"

if not voice_groups.exists():
    fail(
        "sound/voice_groups.inc não encontrado"
    )

text = voice_groups.read_text()

for filename in [
    "vogel_im_kafig.inc",
    "tetris_main_theme.inc",
]:
    text = re.sub(
        rf'^[ \t]*\.include[ \t]+'
        rf'"sound/voicegroups/{re.escape(filename)}"'
        rf'[^\n]*\n?',
        '',
        text,
        flags=re.M,
    )

if not text.endswith("\n"):
    text += "\n"

text += (
    '.include "sound/voicegroups/tetris_main_theme.inc"\n'
)

voice_groups.write_text(
    text
)

print(
    "[UPDATE]",
    voice_groups,
)


# ============================================================
# 7. midi.cfg
# ============================================================

cfg = MIDI_DIR / "midi.cfg"

if not cfg.exists():
    fail(
        "sound/songs/midi/midi.cfg não encontrado"
    )

text = cfg.read_text()

text = re.sub(
    r'^mus_vogel_im_kafig\.mid:.*\n?',
    '',
    text,
    flags=re.M,
)

text = re.sub(
    r'^mus_tetris_main_theme\.mid:.*\n?',
    '',
    text,
    flags=re.M,
)

if not text.endswith("\n"):
    text += "\n"

line = (
    "mus_tetris_main_theme.mid: "
    "-E -R50 -G_tetris_main_theme -V100"
)

text += (
    line + "\n"
)

cfg.write_text(
    text
)

print(
    "[ADD]",
    line,
)


# ============================================================
# 8. songs.h
#
# 585 stays 585. IDs 586+ do not move.
# ============================================================

songs_h = ROOT / "include/constants/songs.h"

if not songs_h.exists():
    fail(
        "include/constants/songs.h não encontrado"
    )

text = songs_h.read_text()

old = re.search(
    r'^[ \t]*#define[ \t]+'
    r'MUS_VOGEL_IM_KAFIG[ \t]+585\b[^\n]*',
    text,
    re.M,
)

new = re.search(
    r'^[ \t]*#define[ \t]+'
    r'MUS_TETRIS_MAIN_THEME[ \t]+585\b[^\n]*',
    text,
    re.M,
)

if old:
    text = (
        text[:old.start()]
        + f"#define {NEW_CONST:<40} {SONG_ID}"
        + text[old.end():]
    )

    print(
        "[REPLACE]",
        OLD_CONST,
        "->",
        NEW_CONST,
    )

elif new:
    print(
        "[OK]",
        NEW_CONST,
        "=",
        SONG_ID,
    )

else:
    fail(
        "Não achei MUS_VOGEL_IM_KAFIG = 585 "
        "nem MUS_TETRIS_MAIN_THEME = 585"
    )

# Safety cleanup.
text = re.sub(
    r'^[ \t]*#define[ \t]+'
    r'MUS_VOGEL_IM_KAFIG[ \t]+\d+[^\n]*\n?',
    '',
    text,
    flags=re.M,
)

songs_h.write_text(
    text
)


# ============================================================
# 9. song_table.inc
# ============================================================

song_table = ROOT / "sound/song_table.inc"

if not song_table.exists():
    fail(
        "sound/song_table.inc não encontrado"
    )

text = song_table.read_text()

if re.search(
    r'^[ \t]*song[ \t]+mus_vogel_im_kafig[ \t]*,',
    text,
    re.M,
):
    text = re.sub(
        r'(^[ \t]*song[ \t]+)'
        r'mus_vogel_im_kafig'
        r'([ \t]*,[ \t]*0[ \t]*,[ \t]*0[^\n]*)',
        r'\1mus_tetris_main_theme\2',
        text,
        count=1,
        flags=re.M,
    )

    print(
        "[REPLACE] song mus_vogel_im_kafig "
        "-> song mus_tetris_main_theme"
    )

elif re.search(
    r'^[ \t]*song[ \t]+mus_tetris_main_theme[ \t]*,',
    text,
    re.M,
):
    print(
        "[OK] song mus_tetris_main_theme, 0, 0"
    )

else:
    fail(
        "Não achei song mus_vogel_im_kafig, 0, 0"
    )

text = re.sub(
    r'^[ \t]*song[ \t]+mus_vogel_im_kafig[^\n]*\n?',
    '',
    text,
    flags=re.M,
)

song_table.write_text(
    text
)


# ============================================================
# 10. debug.c
# ============================================================

debug_c = ROOT / "src/debug.c"

if debug_c.exists():
    text = debug_c.read_text()

    text = text.replace(
        "X(MUS_VOGEL_IM_KAFIG)",
        "X(MUS_TETRIS_MAIN_THEME)",
    )

    debug_c.write_text(
        text
    )

    print(
        "[UPDATE]",
        debug_c,
    )


# ============================================================
# 11. radio.c
#
# Tetris is a videogame song, so:
# - it remains available in ALL TRACKS through the main X-macro;
# - it is NOT placed in ANIME RADIO.
# ============================================================

radio_c = ROOT / "src/radio.c"

if radio_c.exists():
    text = radio_c.read_text()

    # Rename the song wherever Vogel was referenced.
    text = text.replace(
        "MUS_VOGEL_IM_KAFIG",
        "MUS_TETRIS_MAIN_THEME",
    )

    # If using the organized radio, remove Tetris specifically
    # from the ANIME station while keeping it in RADIO_SOUND_LIST_BGM.
    match = re.search(
        r'(static const u16 sStation_Anime\[\][ \t]*=[ \t]*\{)'
        r'(?P<body>.*?)'
        r'(\n\};)',
        text,
        re.S,
    )

    if match:
        body = match.group("body")

        body = re.sub(
            r'^[ \t]*MUS_TETRIS_MAIN_THEME[ \t]*,[ \t]*\n?',
            '',
            body,
            flags=re.M,
        )

        text = (
            text[:match.start("body")]
            + body
            + text[match.end("body"):]
        )

        print(
            "[RADIO] Tetris removida de ANIME RADIO; "
            "continua em ALL TRACKS"
        )

    radio_c.write_text(
        text
    )

    print(
        "[UPDATE]",
        radio_c,
    )


# ============================================================
# 12. FINAL CLEAN
# ============================================================

for path in [
    MIDI_DIR / "mus_tetris_main_theme.s",
    ROOT / "build/modern/sound/songs/midi/mus_tetris_main_theme.o",
    ROOT / "build/modern/sound/songs/midi/mus_tetris_main_theme.d",
]:
    remove_if_exists(
        path
    )


print()
print("================================================")
print("      TETRIS MAIN THEME INSTALADA | 585")
print("================================================")
print()
print("ANTES:")
print("  MUS_VOGEL_IM_KAFIG = 585")
print("  song mus_vogel_im_kafig, 0, 0")
print()
print("AGORA:")
print("  MUS_TETRIS_MAIN_THEME = 585")
print("  song mus_tetris_main_theme, 0, 0")
print()
print("IDs 586 -> 595 continuam exatamente iguais.")
print()
print("Agora rode:")
print()
print("  make -j8")
