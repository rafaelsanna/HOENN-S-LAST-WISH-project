#!/usr/bin/env python3
from pathlib import Path
import re
import shutil

ROOT = Path.cwd()
CONST = "MUS_MIDNAS_LAMENT"
SONG_ID = 576
SLUG = "midnas_lament"
SOURCE_NAME = "mus_midnas_lament_gba_RADIO_FINAL_LOOP.mid"
ANCHOR_CONST = "MUS_LUGIAS_SONG"
ANCHOR_ID = 575
ANCHOR_SLUG = "lugias_song"

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

print("\n================================================")
print(f" {CONST} -> SLOT {SONG_ID}")
print("================================================\n")

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
    if not re.search(rf'(?m)^\s*{re.escape(symbol)}::?', direct_text):
        fail("Sample necessário não encontrado:\n" + symbol)
    print("[FOUND]", symbol)

for stale in [
    MIDI_DIR / f"mus_{SLUG}.s",
    ROOT / f"build/modern/sound/songs/midi/mus_{SLUG}.o",
    ROOT / f"build/modern/sound/songs/midi/mus_{SLUG}.d",
]:
    remove_if_exists(stale)

shutil.copy2(SOURCE, DEST_MIDI)
print("[COPY]", SOURCE, "->", DEST_MIDI)

VOICEGROUP.write_text(
f"""voice_group {SLUG}
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_fingered_bass, 255, 252, 0, 127 @ 0 - bass
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_square_wave, 255, 204, 0, 127 @ 1 - harmony
    voice_directsound 60, 0, DirectSoundWaveData_dp_altosax_c3_16, 255, 0, 255, 127 @ 2 - lead
"""
)
print("[CREATE]", VOICEGROUP)

voice_groups = ROOT / "sound/voice_groups.inc"
if not voice_groups.exists():
    fail("sound/voice_groups.inc não encontrado")
vg = voice_groups.read_text()
vg = re.sub(
    rf'^\s*\.include\s+"sound/voicegroups/{re.escape(SLUG)}\.inc"[^\n]*\n?',
    '', vg, flags=re.M
)
if not vg.endswith("\n"): vg += "\n"
vg += f'.include "sound/voicegroups/{SLUG}.inc"\n'
voice_groups.write_text(vg)
print("[UPDATE]", voice_groups)

cfg = MIDI_DIR / "midi.cfg"
if not cfg.exists():
    fail("sound/songs/midi/midi.cfg não encontrado")
ct = cfg.read_text()
ct = re.sub(rf'^mus_{re.escape(SLUG)}\.mid:.*\n?', '', ct, flags=re.M)
if not ct.endswith("\n"): ct += "\n"
cfg_line = f"mus_{SLUG}.mid: -E -R50 -G_{SLUG} -V100"
ct += cfg_line + "\n"
cfg.write_text(ct)
print("[ADD]", cfg_line)

songs_h = ROOT / "include/constants/songs.h"
if not songs_h.exists():
    fail("include/constants/songs.h não encontrado")
st = songs_h.read_text()
st = re.sub(rf'^\s*#define\s+{CONST}\s+\d+[^\n]*\n?', '', st, flags=re.M)
anchor = re.search(
    rf'^\s*#define\s+{ANCHOR_CONST}\s+{ANCHOR_ID}\b[^\n]*',
    st, re.M
)
if not anchor:
    fail(f"Não achei {ANCHOR_CONST} = {ANCHOR_ID} em songs.h")
line = f"#define {CONST:<40} {SONG_ID}"
st = st[:anchor.end()] + "\n" + line + st[anchor.end():]
st = re.sub(
    r'^\s*#define\s+END_MUS\b[^\n]*',
    f"#define END_MUS {CONST}",
    st, count=1, flags=re.M
)
songs_h.write_text(st)
print("[ADD]", CONST, "=", SONG_ID)
print("[SET] END_MUS ->", CONST)

song_table = ROOT / "sound/song_table.inc"
if not song_table.exists():
    fail("sound/song_table.inc não encontrado")
tt = song_table.read_text()
tt = re.sub(
    rf'^\s*song\s+mus_{re.escape(SLUG)}\s*,[^\n]*\n?',
    '', tt, flags=re.M
)
anchor = re.search(
    rf'^(?P<indent>\s*)song\s+mus_{re.escape(ANCHOR_SLUG)}\s*,\s*0\s*,\s*0[^\n]*',
    tt, re.M
)
if not anchor:
    fail(f"Não achei song mus_{ANCHOR_SLUG}, 0, 0")
indent = anchor.group("indent")
tt = tt[:anchor.end()] + "\n" + indent + f"song mus_{SLUG}, 0, 0" + tt[anchor.end():]
song_table.write_text(tt)
print("[ADD] song mus_"+SLUG+", 0, 0")

def add_x(path):
    if not path.exists():
        print("[SKIP]", path); return
    x = path.read_text()
    x = re.sub(rf'^\s*X\({CONST}\)[^\n]*\n?', '', x, flags=re.M)
    a = re.search(
        rf'^(?P<indent>[ \t]*)X\({ANCHOR_CONST}\)[ \t]*(?:\\)?[ \t]*$',
        x, re.M
    )
    if not a:
        print("[WARN] não achei X("+ANCHOR_CONST+") em", path); return
    indent = a.group("indent")
    repl = indent + f"X({ANCHOR_CONST}) \\\n" + indent + f"X({CONST})"
    x = x[:a.start()] + repl + x[a.end():]
    path.write_text(x)
    print("[ADD]", CONST, "em", path)

add_x(ROOT / "src/debug.c")
add_x(ROOT / "src/radio.c")

for stale in [
    MIDI_DIR / f"mus_{SLUG}.s",
    ROOT / f"build/modern/sound/songs/midi/mus_{SLUG}.o",
    ROOT / f"build/modern/sound/songs/midi/mus_{SLUG}.d",
]:
    remove_if_exists(stale)

print("\n================================================")
print(" INSTALAÇÃO CONCLUÍDA")
print("================================================")
print(f"{CONST} = {SONG_ID}")
print("Agora rode: make -j8")
