#!/usr/bin/env python3
from pathlib import Path
import re
import shutil

ROOT = Path.cwd()

OLD_CONST = "MUS_DEATH_NOTE_THEME"
NEW_CONST = "MUS_THE_WORLD"

SONG_ID = 572

OLD_SLUG = "death_note_theme"
NEW_SLUG = "the_world"

SOURCE_NAME = "mus_the_world_gba_RADIO_FINAL_LOOP.mid"

IMPORT_DIR = ROOT / "music_to_import" / "the_world"
SOURCE = IMPORT_DIR / SOURCE_NAME

MIDI_DIR = ROOT / "sound/songs/midi"

OLD_MIDI = MIDI_DIR / "mus_death_note_theme.mid"
NEW_MIDI = MIDI_DIR / "mus_the_world.mid"

OLD_VOICEGROUP = ROOT / "sound/voicegroups/death_note_theme.inc"
NEW_VOICEGROUP = ROOT / "sound/voicegroups/the_world.inc"


def fail(msg):
    raise SystemExit("\nERRO: " + msg)


def remove_if_exists(path):
    path = Path(path)

    if path.exists():
        path.unlink()
        print("[REMOVE]", path)


print()
print("================================================")
print("  DEATH NOTE THEME -> THE WORLD | SLOT 572")
print("================================================")
print()


# ============================================================
# 1. LOCALIZAR MIDI OTIMIZADO
# ============================================================

IMPORT_DIR.mkdir(
    parents=True,
    exist_ok=True
)

# Se estiver na raiz do repo, organiza automaticamente.
root_source = ROOT / SOURCE_NAME

if not SOURCE.exists() and root_source.exists():
    shutil.move(
        str(root_source),
        str(SOURCE)
    )

    print(
        "[MOVE]",
        root_source,
        "->",
        SOURCE
    )


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
# 2. CONFIRMAR SAMPLES EXISTENTES
# ============================================================

direct_data = ROOT / "sound/direct_sound_data.inc"

if not direct_data.exists():
    fail(
        "sound/direct_sound_data.inc não encontrado"
    )


direct_text = direct_data.read_text(
    errors="ignore"
)


required_samples = [
    "DirectSoundWaveData_sc88pro_fingered_bass",
    "DirectSoundWaveData_sc88pro_square_wave",
    "DirectSoundWaveData_sd90_classical_distortion_guitar_high",
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
# 3. REMOVER ARQUIVOS ANTIGOS DO DEATH NOTE THEME
# ============================================================

old_files = [
    OLD_MIDI,
    MIDI_DIR / "mus_death_note_theme.s",
    ROOT / "build/modern/sound/songs/midi/mus_death_note_theme.o",
    ROOT / "build/modern/sound/songs/midi/mus_death_note_theme.d",
    OLD_VOICEGROUP,
]

for path in old_files:
    remove_if_exists(path)


# Também limpa build velho do The World, caso rode novamente.
new_stale = [
    MIDI_DIR / "mus_the_world.s",
    ROOT / "build/modern/sound/songs/midi/mus_the_world.o",
    ROOT / "build/modern/sound/songs/midi/mus_the_world.d",
]

for path in new_stale:
    remove_if_exists(path)


# ============================================================
# 4. COPIAR MIDI NOVO
# ============================================================

shutil.copy2(
    SOURCE,
    NEW_MIDI
)

print(
    "[COPY]",
    SOURCE,
    "->",
    NEW_MIDI
)


# ============================================================
# 5. CRIAR VOICEGROUP
#
# Program 0 = Fingered Bass
# Program 1 = Square Harmony
# Program 2 = Distortion Guitar Lead
# ============================================================

NEW_VOICEGROUP.write_text(
"""voice_group the_world
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_fingered_bass, 255, 252, 0, 127 @ 0 - bass
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_square_wave, 255, 204, 0, 127 @ 1 - harmony
    voice_directsound 60, 0, DirectSoundWaveData_sd90_classical_distortion_guitar_high, 255, 0, 255, 165 @ 2 - lead
"""
)

print(
    "[CREATE]",
    NEW_VOICEGROUP
)


# ============================================================
# 6. voice_groups.inc
#
# Remove:
# .include "sound/voicegroups/death_note_theme.inc"
#
# Adiciona:
# .include "sound/voicegroups/the_world.inc"
# ============================================================

voice_groups = ROOT / "sound/voice_groups.inc"

if not voice_groups.exists():
    fail(
        "sound/voice_groups.inc não encontrado"
    )


text = voice_groups.read_text()


for filename in (
    "death_note_theme.inc",
    "the_world.inc",
):
    text = re.sub(
        rf'^[ \t]*\.include[ \t]+'
        rf'"sound/voicegroups/{re.escape(filename)}"'
        rf'[^\n]*\n?',
        '',
        text,
        flags=re.M
    )


if not text.endswith("\n"):
    text += "\n"


text += (
    '.include "sound/voicegroups/the_world.inc"\n'
)


voice_groups.write_text(text)

print(
    "[UPDATE]",
    voice_groups
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


# Remove configuração velha e eventual duplicata nova.
text = re.sub(
    r'^mus_death_note_theme\.mid:.*\n?',
    '',
    text,
    flags=re.M
)

text = re.sub(
    r'^mus_the_world\.mid:.*\n?',
    '',
    text,
    flags=re.M
)


if not text.endswith("\n"):
    text += "\n"


cfg_line = (
    "mus_the_world.mid: "
    "-E -R50 -G_the_world -V100"
)


text += cfg_line + "\n"

cfg.write_text(text)

print(
    "[ADD]",
    cfg_line
)


# ============================================================
# 8. songs.h
#
# Troca:
#
# MUS_DEATH_NOTE_THEME 572
#
# por:
#
# MUS_THE_WORLD 572
#
# MUS_CRUEL_ANGELS_THESIS 573 continua igual.
# END_MUS também é preservado.
# ============================================================

songs_h = ROOT / "include/constants/songs.h"

if not songs_h.exists():
    fail(
        "include/constants/songs.h não encontrado"
    )


text = songs_h.read_text()


old_match = re.search(
    rf'^[ \t]*#define[ \t]+'
    rf'{OLD_CONST}[ \t]+{SONG_ID}\b[^\n]*',
    text,
    re.M
)

new_match = re.search(
    rf'^[ \t]*#define[ \t]+'
    rf'{NEW_CONST}[ \t]+{SONG_ID}\b[^\n]*',
    text,
    re.M
)


if old_match:

    replacement = (
        f"#define {NEW_CONST:<40} {SONG_ID}"
    )

    text = (
        text[:old_match.start()]
        + replacement
        + text[old_match.end():]
    )

    print(
        "[REPLACE]",
        OLD_CONST,
        "->",
        NEW_CONST,
        "| ID",
        SONG_ID
    )


elif new_match:

    print(
        "[OK]",
        NEW_CONST,
        "=",
        SONG_ID
    )


else:

    # Se o nome antigo não existir, insere antes do ID 573.
    next_song = re.search(
        r'^[ \t]*#define[ \t]+'
        r'MUS_CRUEL_ANGELS_THESIS'
        r'[ \t]+573\b[^\n]*',
        text,
        re.M
    )

    if not next_song:
        fail(
            "Não achei MUS_DEATH_NOTE_THEME = 572 "
            "nem MUS_CRUEL_ANGELS_THESIS = 573"
        )

    line = (
        f"#define {NEW_CONST:<40} {SONG_ID}\n"
    )

    text = (
        text[:next_song.start()]
        + line
        + text[next_song.start():]
    )

    print(
        "[ADD]",
        NEW_CONST,
        "=",
        SONG_ID
    )


# Segurança: não deixa definição velha.
text = re.sub(
    rf'^[ \t]*#define[ \t]+'
    rf'{OLD_CONST}[ \t]+\d+[^\n]*\n?',
    '',
    text,
    flags=re.M
)


songs_h.write_text(text)


# ============================================================
# 9. song_table.inc
#
# Troca:
#
# song mus_death_note_theme, 0, 0
#
# por:
#
# song mus_the_world, 0, 0
# ============================================================

song_table = ROOT / "sound/song_table.inc"

if not song_table.exists():
    fail(
        "sound/song_table.inc não encontrado"
    )


text = song_table.read_text()


old_song = re.compile(
    r'^([ \t]*)song[ \t]+'
    r'mus_death_note_theme'
    r'[ \t]*,[ \t]*0'
    r'[ \t]*,[ \t]*0'
    r'[^\n]*',
    re.M
)


match = old_song.search(text)


if match:

    indent = match.group(1)

    replacement = (
        indent
        + "song mus_the_world, 0, 0"
    )

    text = (
        text[:match.start()]
        + replacement
        + text[match.end():]
    )

    print(
        "[REPLACE] song mus_death_note_theme "
        "-> song mus_the_world"
    )


elif re.search(
    r'^[ \t]*song[ \t]+mus_the_world[ \t]*,',
    text,
    re.M
):

    print(
        "[OK] song mus_the_world, 0, 0"
    )


else:

    # Insere entre Blue Bird e Evangelion, no slot 572.
    blue = re.search(
        r'^([ \t]*)song[ \t]+'
        r'mus_blue_bird'
        r'[ \t]*,[ \t]*0'
        r'[ \t]*,[ \t]*0'
        r'[^\n]*',
        text,
        re.M
    )

    if not blue:
        fail(
            "Não achei song mus_death_note_theme "
            "nem song mus_blue_bird"
        )

    indent = blue.group(1)
    pos = blue.end()

    text = (
        text[:pos]
        + "\n"
        + indent
        + "song mus_the_world, 0, 0"
        + text[pos:]
    )

    print(
        "[ADD] song mus_the_world, 0, 0"
    )


# Segurança contra sobra antiga.
text = re.sub(
    r'^[ \t]*song[ \t]+'
    r'mus_death_note_theme'
    r'[ \t]*,[^\n]*\n?',
    '',
    text,
    flags=re.M
)


song_table.write_text(text)


# ============================================================
# 10. DEBUG.C / RADIO.C
#
# X(MUS_DEATH_NOTE_THEME)
#       ->
# X(MUS_THE_WORLD)
#
# Mantém as barras "\" existentes da X-macro.
# ============================================================

def replace_x_macro(path):
    path = Path(path)

    if not path.exists():
        print(
            "[SKIP]",
            path
        )
        return


    text = path.read_text()


    if f"X({OLD_CONST})" in text:

        text = text.replace(
            f"X({OLD_CONST})",
            f"X({NEW_CONST})"
        )

        path.write_text(text)

        print(
            "[REPLACE]",
            OLD_CONST,
            "->",
            NEW_CONST,
            "em",
            path
        )

        return


    if f"X({NEW_CONST})" in text:

        print(
            "[OK]",
            NEW_CONST,
            "em",
            path
        )

        return


    # Caso o Death Note antigo já tenha sumido,
    # insere entre Blue Bird e Evangelion.
    pattern = re.compile(
        r'^(?P<indent>[ \t]*)'
        r'X\(MUS_BLUE_BIRD\)'
        r'[ \t]*(?:\\)?[ \t]*$',
        re.M
    )


    match = pattern.search(text)


    if not match:
        print(
            "[WARN] não achei ponto seguro para "
            f"adicionar {NEW_CONST} em",
            path
        )
        return


    indent = match.group("indent")


    replacement = (
        f"{indent}X(MUS_BLUE_BIRD)        \\\n"
        f"{indent}X({NEW_CONST})        \\"
    )


    text = (
        text[:match.start()]
        + replacement
        + text[match.end():]
    )


    path.write_text(text)

    print(
        "[ADD]",
        NEW_CONST,
        "em",
        path
    )


replace_x_macro(
    ROOT / "src/debug.c"
)

replace_x_macro(
    ROOT / "src/radio.c"
)


# ============================================================
# 11. LIMPEZA FINAL
# ============================================================

remove_if_exists(
    MIDI_DIR / "mus_the_world.s"
)

remove_if_exists(
    ROOT / "build/modern/sound/songs/midi/mus_the_world.o"
)

remove_if_exists(
    ROOT / "build/modern/sound/songs/midi/mus_the_world.d"
)


# ============================================================
# FINAL
# ============================================================

print()
print("================================================")
print("             THE WORLD INSTALADA")
print("================================================")
print()
print("Substituiu:")
print("   MUS_DEATH_NOTE_THEME = 572")
print()
print("Agora:")
print("   MUS_THE_WORLD        = 572")
print()
print("Evangelion continua:")
print("   MUS_CRUEL_ANGELS_THESIS = 573")
print()
print("MIDI:")
print("   sound/songs/midi/mus_the_world.mid")
print()
print("VOICEGROUP:")
print("   0 = Fingered Bass")
print("   1 = Square Wave")
print("   2 = Distortion Guitar")
print()
print("Agora rode:")
print()
print("   make -j8")
print()
