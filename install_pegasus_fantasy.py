#!/usr/bin/env python3
from pathlib import Path
import re
import shutil

ROOT = Path.cwd()

SONG_ID = 574
CONST = "MUS_PEGASUS_FANTASY"
SLUG = "pegasus_fantasy"

SOURCE_NAME = "mus_pegasus_fantasy_gba_RADIO_FINAL_LOOP.mid"

IMPORT_DIR = ROOT / "music_to_import" / SLUG
SOURCE = IMPORT_DIR / SOURCE_NAME

MIDI_DIR = ROOT / "sound/songs/midi"
DEST_MIDI = MIDI_DIR / f"mus_{SLUG}.mid"

VOICEGROUP = ROOT / "sound/voicegroups/pegasus_fantasy.inc"


def fail(msg):
    raise SystemExit("\nERRO: " + msg)


def remove_if_exists(path):
    path = Path(path)
    if path.exists():
        path.unlink()
        print("[REMOVE]", path)


print()
print("================================================")
print("        PEGASUS FANTASY -> SLOT 574")
print("================================================")
print()


# ============================================================
# 1. LOCALIZAR MIDI
# ============================================================

IMPORT_DIR.mkdir(parents=True, exist_ok=True)

root_source = ROOT / SOURCE_NAME

if not SOURCE.exists() and root_source.exists():
    shutil.move(str(root_source), str(SOURCE))
    print("[MOVE]", root_source, "->", SOURCE)

if not SOURCE.exists():
    fail(
        "Não achei:\n"
        f"{SOURCE}\n\n"
        "Coloque o arquivo:\n"
        f"{SOURCE_NAME}\n"
        "em:\n"
        f"{IMPORT_DIR}"
    )

print("[FOUND]", SOURCE)
print("[SIZE ]", SOURCE.stat().st_size, "bytes")


# ============================================================
# 2. CHECAR SAMPLES
# ============================================================

direct_data = ROOT / "sound/direct_sound_data.inc"

if not direct_data.exists():
    fail("sound/direct_sound_data.inc não encontrado")

direct_text = direct_data.read_text(errors="ignore")

required_samples = [
    "DirectSoundWaveData_sc88pro_fingered_bass",
    "DirectSoundWaveData_sc88pro_square_wave",
    "DirectSoundWaveData_dp_altosax_c3_16",
]

print()
print("========== SAMPLE CHECK ==========")

for symbol in required_samples:
    if re.search(
        rf'(?m)^\s*{re.escape(symbol)}::?',
        direct_text
    ):
        print("[FOUND]", symbol)
    else:
        fail(
            "Sample necessário não encontrado:\n"
            + symbol
        )


# ============================================================
# 3. COPIAR MIDI
# ============================================================

for stale in [
    MIDI_DIR / f"mus_{SLUG}.s",
    ROOT / f"build/modern/sound/songs/midi/mus_{SLUG}.o",
    ROOT / f"build/modern/sound/songs/midi/mus_{SLUG}.d",
]:
    remove_if_exists(stale)

shutil.copy2(SOURCE, DEST_MIDI)

print("[COPY]", SOURCE, "->", DEST_MIDI)


# ============================================================
# 4. VOICEGROUP
# ============================================================

VOICEGROUP.write_text(
"""voice_group pegasus_fantasy
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_fingered_bass, 255, 252, 0, 127 @ 0 - bass
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_square_wave, 255, 204, 0, 127 @ 1 - harmony
    voice_directsound 60, 0, DirectSoundWaveData_dp_altosax_c3_16, 255, 0, 255, 127 @ 2 - lead
"""
)

print("[CREATE]", VOICEGROUP)


# ============================================================
# 5. voice_groups.inc
# ============================================================

voice_groups = ROOT / "sound/voice_groups.inc"

if not voice_groups.exists():
    fail("sound/voice_groups.inc não encontrado")

text = voice_groups.read_text()

# Remove duplicata se rodar novamente.
text = re.sub(
    r'^[ \t]*\.include[ \t]+'
    r'"sound/voicegroups/pegasus_fantasy\.inc"'
    r'[^\n]*\n?',
    '',
    text,
    flags=re.M
)

if not text.endswith("\n"):
    text += "\n"

text += '.include "sound/voicegroups/pegasus_fantasy.inc"\n'

voice_groups.write_text(text)

print("[UPDATE]", voice_groups)


# ============================================================
# 6. midi.cfg
# ============================================================

cfg = MIDI_DIR / "midi.cfg"

if not cfg.exists():
    fail("sound/songs/midi/midi.cfg não encontrado")

text = cfg.read_text()

text = re.sub(
    r'^mus_pegasus_fantasy\.mid:.*\n?',
    '',
    text,
    flags=re.M
)

if not text.endswith("\n"):
    text += "\n"

cfg_line = (
    "mus_pegasus_fantasy.mid: "
    "-E -R50 -G_pegasus_fantasy -V100"
)

text += cfg_line + "\n"

cfg.write_text(text)

print("[ADD]", cfg_line)


# ============================================================
# 7. songs.h
#
# Esperado:
# MUS_THE_WORLD               572
# MUS_CRUEL_ANGELS_THESIS     573
# MUS_PEGASUS_FANTASY         574
# END_MUS MUS_PEGASUS_FANTASY
# ============================================================

songs_h = ROOT / "include/constants/songs.h"

if not songs_h.exists():
    fail("include/constants/songs.h não encontrado")

text = songs_h.read_text()

# Remove definição duplicada caso já exista.
text = re.sub(
    rf'^[ \t]*#define[ \t]+{CONST}[ \t]+\d+[^\n]*\n?',
    '',
    text,
    flags=re.M
)

anchor = re.search(
    r'^[ \t]*#define[ \t]+'
    r'MUS_CRUEL_ANGELS_THESIS'
    r'[ \t]+573\b[^\n]*',
    text,
    re.M
)

if not anchor:
    fail(
        "Não achei MUS_CRUEL_ANGELS_THESIS = 573 "
        "em include/constants/songs.h"
    )

line = f"#define {CONST:<40} {SONG_ID}\n"

text = (
    text[:anchor.end()]
    + "\n"
    + line.rstrip("\n")
    + text[anchor.end():]
)

# Atualiza END_MUS.
if re.search(
    r'^[ \t]*#define[ \t]+END_MUS\b[^\n]*',
    text,
    re.M
):
    text = re.sub(
        r'^[ \t]*#define[ \t]+END_MUS\b[^\n]*',
        f"#define END_MUS {CONST}",
        text,
        count=1,
        flags=re.M
    )
else:
    fail("Não achei #define END_MUS em songs.h")

songs_h.write_text(text)

print("[ADD]", CONST, "=", SONG_ID)
print("[SET] END_MUS ->", CONST)


# ============================================================
# 8. song_table.inc
# ============================================================

song_table = ROOT / "sound/song_table.inc"

if not song_table.exists():
    fail("sound/song_table.inc não encontrado")

text = song_table.read_text()

# Remove duplicata caso rode novamente.
text = re.sub(
    r'^[ \t]*song[ \t]+'
    r'mus_pegasus_fantasy'
    r'[ \t]*,[^\n]*\n?',
    '',
    text,
    flags=re.M
)

anchor = re.search(
    r'^([ \t]*)song[ \t]+'
    r'mus_cruel_angels_thesis'
    r'[ \t]*,[ \t]*0'
    r'[ \t]*,[ \t]*0'
    r'[^\n]*',
    text,
    re.M
)

if not anchor:
    fail(
        "Não achei song mus_cruel_angels_thesis, 0, 0 "
        "em sound/song_table.inc"
    )

indent = anchor.group(1)

text = (
    text[:anchor.end()]
    + "\n"
    + indent
    + "song mus_pegasus_fantasy, 0, 0"
    + text[anchor.end():]
)

song_table.write_text(text)

print("[ADD] song mus_pegasus_fantasy, 0, 0")


# ============================================================
# 9. X-MACROS EM debug.c / radio.c
# ============================================================

def add_x_macro(path):
    path = Path(path)

    if not path.exists():
        print("[SKIP]", path)
        return

    text = path.read_text()

    # Remove duplicata se existir.
    text = re.sub(
        rf'^[ \t]*X\({CONST}\)[^\n]*\n?',
        '',
        text,
        flags=re.M
    )

    anchor = re.search(
        r'^(?P<indent>[ \t]*)'
        r'X\(MUS_CRUEL_ANGELS_THESIS\)'
        r'(?P<tail>[ \t]*\\?[ \t]*)$',
        text,
        re.M
    )

    if not anchor:
        print(
            "[WARN] não achei X(MUS_CRUEL_ANGELS_THESIS) em",
            path
        )
        return

    indent = anchor.group("indent")

    replacement = (
        f"{indent}X(MUS_CRUEL_ANGELS_THESIS) \\\n"
        f"{indent}X({CONST})"
    )

    text = (
        text[:anchor.start()]
        + replacement
        + text[anchor.end():]
    )

    path.write_text(text)

    print("[ADD]", CONST, "em", path)


add_x_macro(ROOT / "src/debug.c")
add_x_macro(ROOT / "src/radio.c")


# ============================================================
# 10. LIMPEZA FINAL
# ============================================================

remove_if_exists(MIDI_DIR / "mus_pegasus_fantasy.s")
remove_if_exists(
    ROOT / "build/modern/sound/songs/midi/mus_pegasus_fantasy.o"
)
remove_if_exists(
    ROOT / "build/modern/sound/songs/midi/mus_pegasus_fantasy.d"
)


print()
print("================================================")
print("          PEGASUS FANTASY INSTALADA")
print("================================================")
print()
print("ID:")
print("   MUS_PEGASUS_FANTASY = 574")
print()
print("END_MUS:")
print("   MUS_PEGASUS_FANTASY")
print()
print("MIDI:")
print("   sound/songs/midi/mus_pegasus_fantasy.mid")
print()
print("VOICEGROUP:")
print("   0 = Fingered Bass")
print("   1 = Square Wave")
print("   2 = Alto Sax")
print()
print("Agora rode:")
print()
print("   make -j8")
print()
