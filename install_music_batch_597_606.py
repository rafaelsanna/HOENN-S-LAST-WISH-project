#!/usr/bin/env python3
from pathlib import Path
import re
import shutil

ROOT = Path.cwd()

ANCHOR_CONST = "MUS_THE_YOUNG_PHOTOGRAPHER"
ANCHOR_ID = 596
ANCHOR_SLUG = "the_young_photographer"

SONGS = [
    ("MUS_HOPE_GRAND_CHASE", 597, "hope_grand_chase", "mus_hope_grand_chase_gba_RADIO_FINAL_LOOP.mid", True),
    ("MUS_GLAST_HEIM_THEME", 598, "glast_heim_theme", "mus_glast_heim_theme_gba_RADIO_FINAL_LOOP.mid", True),
    ("MUS_ANCIENT_GROOVER", 599, "ancient_groover", "mus_ancient_groover_gba_RADIO_FINAL_LOOP.mid", True),
    ("MUS_DIVINE_GRACE", 600, "divine_grace", "mus_divine_grace_gba_RADIO_FINAL_LOOP.mid", False),
    ("MUS_THEME_OF_MORROC", 601, "theme_of_morroc", "mus_theme_of_morroc_gba_RADIO_FINAL_LOOP.mid", False),
    ("MUS_EVERLASTING_WANDERERS", 602, "everlasting_wanderers", "mus_everlasting_wanderers_gba_RADIO_FINAL_LOOP.mid", False),
    ("MUS_THEME_OF_GEFFEN", 603, "theme_of_geffen", "mus_theme_of_geffen_gba_RADIO_FINAL_LOOP.mid", False),
    ("MUS_THEME_OF_ALDEBARAN", 604, "theme_of_aldebaran", "mus_theme_of_aldebaran_gba_RADIO_FINAL_LOOP.mid", True),
    ("MUS_THEME_OF_ALBERTA", 605, "theme_of_alberta", "mus_theme_of_alberta_gba_RADIO_FINAL_LOOP.mid", True),
    ("MUS_THEME_OF_PRONTERA", 606, "theme_of_prontera", "mus_theme_of_prontera_gba_RADIO_FINAL_LOOP.mid", True),
]

MIDI_DIR = ROOT / "sound/songs/midi"
IMPORT_ROOT = ROOT / "music_to_import"
VOICEGROUP_DIR = ROOT / "sound/voicegroups"


def fail(msg):
    raise SystemExit("\nERRO: " + msg)


def remove_if_exists(path):
    path = Path(path)

    if path.exists():
        path.unlink()
        print("[REMOVE]", path)


def locate_source(const, song_id, slug, filename, has_drums):
    folder = IMPORT_ROOT / slug
    folder.mkdir(parents=True, exist_ok=True)

    expected = folder / filename

    if expected.exists():
        return expected

    root_copy = ROOT / filename

    if root_copy.exists():
        shutil.move(str(root_copy), str(expected))
        print("[MOVE]", root_copy, "->", expected)
        return expected

    candidates = [
        p for p in IMPORT_ROOT.rglob(filename)
        if p.is_file()
    ]

    if len(candidates) == 1:
        source = candidates[0]

        if source.resolve() != expected.resolve():
            shutil.move(str(source), str(expected))
            print("[MOVE]", source, "->", expected)

        return expected

    fail(
        "Não achei:\n"
        f"{filename}\n\n"
        "Coloque em:\n"
        f"{folder}"
    )


print()
print("======================================================")
print("       HLW NOSTALGIA BATCH 597 -> 606")
print("======================================================")
print()

# ------------------------------------------------------------
# 1. Find all files before modifying the repo
# ------------------------------------------------------------

sources = {}

for const, song_id, slug, filename, has_drums in SONGS:
    src = locate_source(
        const,
        song_id,
        slug,
        filename,
        has_drums,
    )

    sources[slug] = src

    print(
        "[FOUND]",
        song_id,
        const,
        "->",
        src,
    )

# ------------------------------------------------------------
# 2. Sample check
# ------------------------------------------------------------

direct_data = ROOT / "sound/direct_sound_data.inc"

if not direct_data.exists():
    fail("sound/direct_sound_data.inc não encontrado")

direct_text = direct_data.read_text(errors="ignore")

required_samples = [
    "DirectSoundWaveData_sc88pro_fingered_bass",
    "DirectSoundWaveData_sc88pro_square_wave",
    "DirectSoundWaveData_dp_altosax_c3_16",
]

for symbol in required_samples:
    if not re.search(
        rf'(?m)^\s*{re.escape(symbol)}::?',
        direct_text,
    ):
        fail("Sample necessário não encontrado:\n" + symbol)

    print("[FOUND]", symbol)

# ------------------------------------------------------------
# 3. Copy MIDIs + create voicegroups
# ------------------------------------------------------------

for const, song_id, slug, filename, has_drums in SONGS:
    src = sources[slug]
    dest = MIDI_DIR / f"mus_{slug}.mid"

    for stale in [
        MIDI_DIR / f"mus_{slug}.s",
        ROOT / f"build/modern/sound/songs/midi/mus_{slug}.o",
        ROOT / f"build/modern/sound/songs/midi/mus_{slug}.d",
    ]:
        remove_if_exists(stale)

    shutil.copy2(src, dest)
    print("[COPY]", src, "->", dest)

    vg = VOICEGROUP_DIR / f"{slug}.inc"

    lines = [
        f"voice_group {slug}",
        "    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_fingered_bass, 255, 252, 0, 127 @ 0 - bass",
        "    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_square_wave, 255, 204, 0, 127 @ 1 - harmony",
        "    voice_directsound 60, 0, DirectSoundWaveData_dp_altosax_c3_16, 255, 0, 255, 127 @ 2 - lead",
    ]

    if has_drums:
        lines.append(
            "    voice_keysplit_all voicegroup_rs_drumset"
        )

    vg.write_text("\n".join(lines) + "\n")

    print("[CREATE]", vg)

# ------------------------------------------------------------
# 4. voice_groups.inc
# ------------------------------------------------------------

voice_groups = ROOT / "sound/voice_groups.inc"

if not voice_groups.exists():
    fail("sound/voice_groups.inc não encontrado")

text = voice_groups.read_text()

for const, song_id, slug, filename, has_drums in SONGS:
    text = re.sub(
        rf'^[ \t]*\.include[ \t]+'
        rf'"sound/voicegroups/{re.escape(slug)}\.inc"'
        rf'[^\n]*\n?',
        '',
        text,
        flags=re.M,
    )

if not text.endswith("\n"):
    text += "\n"

for const, song_id, slug, filename, has_drums in SONGS:
    text += f'.include "sound/voicegroups/{slug}.inc"\n'

voice_groups.write_text(text)
print("[UPDATE]", voice_groups)

# ------------------------------------------------------------
# 5. midi.cfg
# ------------------------------------------------------------

cfg = MIDI_DIR / "midi.cfg"

if not cfg.exists():
    fail("sound/songs/midi/midi.cfg não encontrado")

text = cfg.read_text()

for const, song_id, slug, filename, has_drums in SONGS:
    text = re.sub(
        rf'^mus_{re.escape(slug)}\.mid:.*\n?',
        '',
        text,
        flags=re.M,
    )

if not text.endswith("\n"):
    text += "\n"

for const, song_id, slug, filename, has_drums in SONGS:
    line = (
        f"mus_{slug}.mid: "
        f"-E -R50 -G_{slug} -V100"
    )

    text += line + "\n"
    print("[ADD]", line)

cfg.write_text(text)

# ------------------------------------------------------------
# 6. songs.h 597 -> 606
# ------------------------------------------------------------

songs_h = ROOT / "include/constants/songs.h"

if not songs_h.exists():
    fail("include/constants/songs.h não encontrado")

text = songs_h.read_text()

for const, song_id, slug, filename, has_drums in SONGS:
    text = re.sub(
        rf'^[ \t]*#define[ \t]+'
        rf'{re.escape(const)}[ \t]+\d+'
        rf'[^\n]*\n?',
        '',
        text,
        flags=re.M,
    )

anchor = re.search(
    rf'^[ \t]*#define[ \t]+'
    rf'{ANCHOR_CONST}[ \t]+{ANCHOR_ID}\b[^\n]*',
    text,
    re.M,
)

if not anchor:
    fail(
        f"Não achei {ANCHOR_CONST} = {ANCHOR_ID} "
        "em include/constants/songs.h"
    )

block = "\n".join(
    f"#define {const:<40} {song_id}"
    for const, song_id, slug, filename, has_drums in SONGS
)

text = (
    text[:anchor.end()]
    + "\n"
    + block
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
    "#define END_MUS MUS_THEME_OF_PRONTERA",
    text,
    count=1,
    flags=re.M,
)

songs_h.write_text(text)

print("[ADD] songs.h IDs 597 -> 606")
print("[SET] END_MUS -> MUS_THEME_OF_PRONTERA")

# ------------------------------------------------------------
# 7. song_table.inc
# ------------------------------------------------------------

song_table = ROOT / "sound/song_table.inc"

if not song_table.exists():
    fail("sound/song_table.inc não encontrado")

text = song_table.read_text()

for const, song_id, slug, filename, has_drums in SONGS:
    text = re.sub(
        rf'^[ \t]*song[ \t]+'
        rf'mus_{re.escape(slug)}'
        rf'[ \t]*,[^\n]*\n?',
        '',
        text,
        flags=re.M,
    )

anchor = re.search(
    rf'^(?P<indent>[ \t]*)'
    rf'song[ \t]+mus_{ANCHOR_SLUG}'
    rf'[ \t]*,[ \t]*0'
    rf'[ \t]*,[ \t]*0'
    rf'[^\n]*',
    text,
    re.M,
)

if not anchor:
    fail(
        "Não achei song mus_the_young_photographer, 0, 0"
    )

indent = anchor.group("indent")

block = "\n".join(
    indent + f"song mus_{slug}, 0, 0"
    for const, song_id, slug, filename, has_drums in SONGS
)

text = (
    text[:anchor.end()]
    + "\n"
    + block
    + text[anchor.end():]
)

song_table.write_text(text)

print("[ADD] song_table 597 -> 606")

# ------------------------------------------------------------
# 8. X-macro helper for debug.c / radio.c
# ------------------------------------------------------------

def update_x_macro(path):
    path = Path(path)

    if not path.exists():
        print("[SKIP]", path)
        return

    text = path.read_text()

    # Remove batch lines on re-run.
    for const, song_id, slug, filename, has_drums in SONGS:
        text = re.sub(
            rf'^[ \t]*X\({re.escape(const)}\)'
            rf'[^\n]*\n?',
            '',
            text,
            flags=re.M,
        )

    anchor = re.search(
        rf'^(?P<indent>[ \t]*)'
        rf'X\({ANCHOR_CONST}\)'
        rf'[ \t]*(?:\\)?[ \t]*$',
        text,
        re.M,
    )

    if not anchor:
        print(
            "[WARN] Não achei X("
            + ANCHOR_CONST
            + ") em",
            path,
        )
        return

    indent = anchor.group("indent")

    lines = [
        indent + f"X({ANCHOR_CONST}) \\"
    ]

    for i, (const, song_id, slug, filename, has_drums) in enumerate(SONGS):
        line = indent + f"X({const})"

        if i != len(SONGS) - 1:
            line += " \\"

        lines.append(line)

    replacement = "\n".join(lines)

    text = (
        text[:anchor.start()]
        + replacement
        + text[anchor.end():]
    )

    path.write_text(text)
    print("[UPDATE]", path)


update_x_macro(ROOT / "src/debug.c")
update_x_macro(ROOT / "src/radio.c")

# These are videogame songs, so on the organized radio they stay
# in ALL TRACKS only (no Anime / Other-World / Amaterasu pollution).

# ------------------------------------------------------------
# 9. Final clean
# ------------------------------------------------------------

for const, song_id, slug, filename, has_drums in SONGS:
    for stale in [
        MIDI_DIR / f"mus_{slug}.s",
        ROOT / f"build/modern/sound/songs/midi/mus_{slug}.o",
        ROOT / f"build/modern/sound/songs/midi/mus_{slug}.d",
    ]:
        remove_if_exists(stale)

print()
print("======================================================")
print("       10 MÚSICAS INSTALADAS | 597 -> 606")
print("======================================================")
print()

for const, song_id, slug, filename, has_drums in SONGS:
    print(f"{song_id}: {const}")

print()
print("END_MUS = MUS_THEME_OF_PRONTERA")
print()
print("Agora rode:")
print()
print("    make -j8")
