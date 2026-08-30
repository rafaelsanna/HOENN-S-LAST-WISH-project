#!/usr/bin/env python3
from pathlib import Path
import re
import shutil

ROOT = Path.cwd()

SONGS = [
    {
        "const": "MUS_DEATH_NOTE_THEME",
        "id": 572,
        "slug": "death_note_theme",
        "import_dir": ROOT / "music_to_import" / "death_note",
        "source_name": "mus_death_note_theme_gba_RADIO_FINAL_LOOP.mid",
        "midi_name": "mus_death_note_theme.mid",
        "voicegroup_name": "death_note_theme",
        "voicegroup_file": ROOT / "sound/voicegroups/death_note_theme.inc",
        "voicegroup_text": """voice_group death_note_theme
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_synth_bass, 255, 252, 0, 127 @ 0 - bass
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_square_wave, 255, 204, 0, 127 @ 1 - harmony
    voice_directsound 60, 0, DirectSoundWaveData_dp_altosax_c3_16, 255, 0, 255, 127 @ 2 - lead
""",
    },
    {
        "const": "MUS_CRUEL_ANGELS_THESIS",
        "id": 573,
        "slug": "cruel_angels_thesis",
        "import_dir": ROOT / "music_to_import" / "evangelion",
        "source_name": "mus_cruel_angels_thesis_gba_RADIO_FINAL_LOOP.mid",
        "midi_name": "mus_cruel_angels_thesis.mid",
        "voicegroup_name": "cruel_angels_thesis",
        "voicegroup_file": ROOT / "sound/voicegroups/cruel_angels_thesis.inc",
        "voicegroup_text": """voice_group cruel_angels_thesis
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_fingered_bass, 255, 252, 0, 127 @ 0 - bass
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_square_wave, 255, 204, 0, 127 @ 1 - harmony
    voice_directsound 60, 0, DirectSoundWaveData_dp_altosax_c3_16, 255, 0, 255, 127 @ 2 - lead
""",
    },
]

PREVIOUS_CONST = "MUS_BLUE_BIRD"
PREVIOUS_ID = 571
FINAL_CONST = SONGS[-1]["const"]


def fail(msg):
    raise SystemExit("\nERRO: " + msg)


def remove_if_exists(path):
    path = Path(path)
    if path.exists():
        path.unlink()
        print("[REMOVE]", path)


print()
print("================================================")
print(" DEATH NOTE + EVANGELION -> 572 / 573")
print("================================================")
print()

# ------------------------------------------------------------
# 1. MIDI files
# ------------------------------------------------------------
midi_dir = ROOT / "sound/songs/midi"

for s in SONGS:
    s["import_dir"].mkdir(parents=True, exist_ok=True)
    source = s["import_dir"] / s["source_name"]

    # Also accept the generated file if user dropped it in repo root.
    root_source = ROOT / s["source_name"]
    if not source.exists() and root_source.exists():
        shutil.move(str(root_source), str(source))
        print("[MOVE]", root_source, "->", source)

    if not source.exists():
        fail(
            f"Não achei:\n{source}\n\n"
            f"Coloque {s['source_name']} em:\n{s['import_dir']}"
        )

    dest = midi_dir / s["midi_name"]
    shutil.copy2(source, dest)
    print("[COPY]", source, "->", dest)

    remove_if_exists(dest.with_suffix(".s"))
    remove_if_exists(
        ROOT / "build/modern/sound/songs/midi" /
        (Path(s["midi_name"]).stem + ".o")
    )
    remove_if_exists(
        ROOT / "build/modern/sound/songs/midi" /
        (Path(s["midi_name"]).stem + ".d")
    )

# ------------------------------------------------------------
# 2. Voicegroups
# ------------------------------------------------------------
for s in SONGS:
    s["voicegroup_file"].write_text(s["voicegroup_text"])
    print("[CREATE]", s["voicegroup_file"])

voice_groups = ROOT / "sound/voice_groups.inc"
if not voice_groups.exists():
    fail("sound/voice_groups.inc não encontrado")

text = voice_groups.read_text()

for s in SONGS:
    inc = f'.include "sound/voicegroups/{s["voicegroup_file"].name}"'
    text = re.sub(
        rf'^[ \t]*\.include[ \t]+"sound/voicegroups/{re.escape(s["voicegroup_file"].name)}"[^\n]*\n?',
        '',
        text,
        flags=re.M,
    )

if not text.endswith("\n"):
    text += "\n"

for s in SONGS:
    text += f'.include "sound/voicegroups/{s["voicegroup_file"].name}"\n'

voice_groups.write_text(text)
print("[UPDATE]", voice_groups)

# ------------------------------------------------------------
# 3. midi.cfg
# ------------------------------------------------------------
cfg = midi_dir / "midi.cfg"
if not cfg.exists():
    fail("sound/songs/midi/midi.cfg não encontrado")

text = cfg.read_text()

for s in SONGS:
    text = re.sub(
        rf'^{re.escape(s["midi_name"])}:.*\n?',
        '',
        text,
        flags=re.M,
    )

if not text.endswith("\n"):
    text += "\n"

for s in SONGS:
    line = (
        f'{s["midi_name"]}: '
        f'-E -R50 -G_{s["voicegroup_name"]} -V100'
    )
    text += line + "\n"
    print("[ADD]", line)

cfg.write_text(text)

# ------------------------------------------------------------
# 4. songs.h
# ------------------------------------------------------------
songs_h = ROOT / "include/constants/songs.h"
if not songs_h.exists():
    fail("include/constants/songs.h não encontrado")

text = songs_h.read_text()

# Remove previous runs of the two new definitions.
for s in SONGS:
    text = re.sub(
        rf'^[ \t]*#define[ \t]+{s["const"]}[ \t]+\d+[^\n]*\n?',
        '',
        text,
        flags=re.M,
    )

previous = re.search(
    rf'^[ \t]*#define[ \t]+{PREVIOUS_CONST}[ \t]+{PREVIOUS_ID}\b[^\n]*',
    text,
    re.M,
)
if not previous:
    fail(f"Não achei {PREVIOUS_CONST} = {PREVIOUS_ID}")

# Refuse to steal 572/573 from some other current song.
for s in SONGS:
    occupied = re.search(
        rf'^[ \t]*#define[ \t]+(MUS_[A-Za-z0-9_]+)[ \t]+{s["id"]}\b',
        text,
        re.M,
    )
    if occupied and occupied.group(1) != s["const"]:
        fail(f'ID {s["id"]} já pertence a {occupied.group(1)}')

lines = "\n".join(
    f'#define {s["const"]:<40} {s["id"]}'
    for s in SONGS
)

pos = previous.end()
text = text[:pos] + "\n" + lines + text[pos:]

end_match = re.search(
    r'^[ \t]*#define[ \t]+END_MUS[ \t]+([A-Za-z0-9_]+)[^\n]*',
    text,
    re.M,
)
if not end_match:
    fail("Não achei #define END_MUS")

current_end = end_match.group(1)

allowed_old_ends = {
    PREVIOUS_CONST,
    SONGS[0]["const"],
    SONGS[1]["const"],
}

if current_end in allowed_old_ends:
    text = re.sub(
        r'^([ \t]*#define[ \t]+END_MUS[ \t]+).*$',
        rf'\1{FINAL_CONST}',
        text,
        count=1,
        flags=re.M,
    )
    print("[SET] END_MUS ->", FINAL_CONST)
else:
    print("[WARN] END_MUS aponta para", current_end)
    print("       Preservado porque parece existir música posterior.")

songs_h.write_text(text)

# ------------------------------------------------------------
# 5. song_table.inc
# ------------------------------------------------------------
song_table = ROOT / "sound/song_table.inc"
if not song_table.exists():
    fail("sound/song_table.inc não encontrado")

text = song_table.read_text()

for s in SONGS:
    text = re.sub(
        rf'^[ \t]*song[ \t]+mus_{re.escape(s["slug"])}[ \t]*,[^\n]*\n?',
        '',
        text,
        flags=re.M,
    )

previous_song = re.search(
    r'^([ \t]*)song[ \t]+mus_blue_bird[ \t]*,[ \t]*0[ \t]*,[ \t]*0[^\n]*',
    text,
    re.M,
)
if not previous_song:
    fail("Não achei: song mus_blue_bird, 0, 0")

indent = previous_song.group(1)
entries = "\n".join(
    indent + f'song mus_{s["slug"]}, 0, 0'
    for s in SONGS
)

pos = previous_song.end()
text = text[:pos] + "\n" + entries + text[pos:]
song_table.write_text(text)

print("[ADD] song mus_death_note_theme, 0, 0")
print("[ADD] song mus_cruel_angels_thesis, 0, 0")

# ------------------------------------------------------------
# 6. Debug/radio X-macros
# ------------------------------------------------------------
def update_x_macro(path):
    path = Path(path)

    if not path.exists():
        print("[SKIP]", path)
        return

    text = path.read_text()

    # Remove previous runs.
    for s in SONGS:
        text = re.sub(
            rf'^[ \t]*X\({s["const"]}\)[ \t]*(?:\\)?[ \t]*\n?',
            '',
            text,
            flags=re.M,
        )

    m = re.search(
        rf'^(?P<indent>[ \t]*)X\({PREVIOUS_CONST}\)[ \t]*(?:\\)?[ \t]*$',
        text,
        re.M,
    )

    if not m:
        print("[WARN] não achei", f"X({PREVIOUS_CONST})", "em", path)
        return

    indent = m.group("indent")

    replacement = (
        f"{indent}X({PREVIOUS_CONST})        \\\n"
        f"{indent}X({SONGS[0]['const']})    \\\n"
        f"{indent}X({SONGS[1]['const']})"
    )

    text = text[:m.start()] + replacement + text[m.end():]
    path.write_text(text)

    print("[UPDATE]", path)


update_x_macro(ROOT / "src/debug.c")
update_x_macro(ROOT / "src/radio.c")

# ------------------------------------------------------------
# 7. Final stale cleanup
# ------------------------------------------------------------
for s in SONGS:
    remove_if_exists(midi_dir / (Path(s["midi_name"]).stem + ".s"))
    remove_if_exists(
        ROOT / "build/modern/sound/songs/midi" /
        (Path(s["midi_name"]).stem + ".o")
    )

print()
print("================================================")
print(" PRONTO")
print("================================================")
print()
print("MUS_DEATH_NOTE_THEME     = 572")
print("MUS_CRUEL_ANGELS_THESIS  = 573")
print("END_MUS                  =", FINAL_CONST)
print()
print("Agora rode:")
print("    make -j8")
print()
