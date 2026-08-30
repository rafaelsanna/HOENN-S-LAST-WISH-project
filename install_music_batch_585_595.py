#!/usr/bin/env python3
from pathlib import Path
import re
import shutil

ROOT = Path.cwd()

ANCHOR_CONST = "MUS_PAPER_MOON"
ANCHOR_ID = 584
ANCHOR_SLUG = "paper_moon"

SONGS = [
    ("MUS_VOGEL_IM_KAFIG", 585, "vogel_im_kafig", "mus_vogel_im_kafig_gba_RADIO_FINAL_LOOP.mid"),
    ("MUS_I_WILL", 586, "i_will", "mus_i_will_gba_RADIO_FINAL_LOOP.mid"),
    ("MUS_YOU_AND_WHOSE_ARMY", 587, "you_and_whose_army", "mus_you_and_whose_army_gba_RADIO_FINAL_LOOP.mid"),
    ("MUS_MOTION_PICTURE_SOUNDTRACK", 588, "motion_picture_soundtrack", "mus_motion_picture_soundtrack_gba_RADIO_FINAL_LOOP.mid"),
    ("MUS_EVERYTHING_IN_ITS_RIGHT_PLACE", 589, "everything_in_its_right_place", "mus_everything_in_its_right_place_gba_RADIO_FINAL_LOOP.mid"),
    ("MUS_NO_SURPRISES", 590, "no_surprises", "mus_no_surprises_gba_RADIO_FINAL_LOOP.mid"),
    ("MUS_LUCKY", 591, "lucky", "mus_lucky_gba_RADIO_FINAL_LOOP.mid"),
    ("MUS_HIGH_AND_DRY", 592, "high_and_dry", "mus_high_and_dry_gba_RADIO_FINAL_LOOP.mid"),
    ("MUS_STREET_SPIRIT", 593, "street_spirit", "mus_street_spirit_gba_RADIO_FINAL_LOOP.mid"),
    ("MUS_GAZE_AT_THE_SKIES", 594, "gaze_at_the_skies", "mus_gaze_at_the_skies_gba_RADIO_FINAL_LOOP.mid"),
    ("MUS_GUTS_THEME", 595, "guts_theme", "mus_guts_theme_gba_RADIO_FINAL_LOOP.mid"),
]

MIDI_DIR = ROOT / "sound/songs/midi"
IMPORT_ROOT = ROOT / "music_to_import"
VOICEGROUP_DIR = ROOT / "sound/voicegroups"


def fail(msg):
    raise SystemExit(
        "\nERRO: " + msg
    )


def remove_if_exists(path):
    path = Path(path)

    if path.exists():
        path.unlink()

        print(
            "[REMOVE]",
            path,
        )


def locate_source(const, song_id, slug, filename):
    folder = IMPORT_ROOT / slug

    folder.mkdir(
        parents=True,
        exist_ok=True,
    )

    expected = folder / filename

    if expected.exists():
        return expected

    root_copy = ROOT / filename

    if root_copy.exists():
        shutil.move(
            str(root_copy),
            str(expected),
        )

        print(
            "[MOVE]",
            root_copy,
            "->",
            expected,
        )

        return expected

    candidates = [
        p
        for p in IMPORT_ROOT.rglob(filename)
        if p.is_file()
    ]

    if len(candidates) == 1:
        source = candidates[0]

        if source.resolve() != expected.resolve():
            shutil.move(
                str(source),
                str(expected),
            )

            print(
                "[MOVE]",
                source,
                "->",
                expected,
            )

        return expected

    fail(
        "Não achei:\n"
        f"{filename}\n\n"
        "Coloque em:\n"
        f"{folder}"
    )


print()
print("======================================================")
print("       HLW MUSIC BATCH 585 -> 595 | 11 SONGS")
print("======================================================")
print()


# ============================================================
# 1. LOCATE EVERYTHING FIRST
# ============================================================

sources = {}

for const, song_id, slug, filename in SONGS:
    source = locate_source(
        const,
        song_id,
        slug,
        filename,
    )

    sources[slug] = source

    print(
        "[FOUND]",
        song_id,
        const,
        "->",
        source,
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

required_samples = [
    "DirectSoundWaveData_sc88pro_fingered_bass",
    "DirectSoundWaveData_sc88pro_square_wave",
    "DirectSoundWaveData_dp_altosax_c3_16",
]

print()
print("========== SAMPLE CHECK ==========")

for symbol in required_samples:
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
# 3. MIDI + VOICEGROUPS
# ============================================================

for const, song_id, slug, filename in SONGS:
    source = sources[slug]
    dest = MIDI_DIR / f"mus_{slug}.mid"

    for stale in [
        MIDI_DIR / f"mus_{slug}.s",
        ROOT / f"build/modern/sound/songs/midi/mus_{slug}.o",
        ROOT / f"build/modern/sound/songs/midi/mus_{slug}.d",
    ]:
        remove_if_exists(
            stale
        )

    shutil.copy2(
        source,
        dest,
    )

    print(
        "[COPY]",
        source,
        "->",
        dest,
    )

    voicegroup = VOICEGROUP_DIR / f"{slug}.inc"

    voicegroup.write_text(
        f"""voice_group {slug}
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_fingered_bass, 255, 252, 0, 127 @ 0 - bass
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_square_wave, 255, 204, 0, 127 @ 1 - harmony
    voice_directsound 60, 0, DirectSoundWaveData_dp_altosax_c3_16, 255, 0, 255, 127 @ 2 - lead
"""
    )

    print(
        "[CREATE]",
        voicegroup,
    )


# ============================================================
# 4. sound/voice_groups.inc
# ============================================================

voice_groups = ROOT / "sound/voice_groups.inc"

if not voice_groups.exists():
    fail(
        "sound/voice_groups.inc não encontrado"
    )

text = voice_groups.read_text()

for const, song_id, slug, filename in SONGS:
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

for const, song_id, slug, filename in SONGS:
    text += (
        f'.include "sound/voicegroups/{slug}.inc"\n'
    )

voice_groups.write_text(
    text
)

print(
    "[UPDATE]",
    voice_groups,
)


# ============================================================
# 5. midi.cfg
# ============================================================

cfg = MIDI_DIR / "midi.cfg"

if not cfg.exists():
    fail(
        "sound/songs/midi/midi.cfg não encontrado"
    )

text = cfg.read_text()

for const, song_id, slug, filename in SONGS:
    text = re.sub(
        rf'^mus_{re.escape(slug)}\.mid:.*\n?',
        '',
        text,
        flags=re.M,
    )

if not text.endswith("\n"):
    text += "\n"

for const, song_id, slug, filename in SONGS:
    line = (
        f"mus_{slug}.mid: "
        f"-E -R50 -G_{slug} -V100"
    )

    text += (
        line + "\n"
    )

    print(
        "[ADD]",
        line,
    )

cfg.write_text(
    text
)


# ============================================================
# 6. songs.h
# ============================================================

songs_h = ROOT / "include/constants/songs.h"

if not songs_h.exists():
    fail(
        "include/constants/songs.h não encontrado"
    )

text = songs_h.read_text()

# Idempotent rerun: remove this batch first.
for const, song_id, slug, filename in SONGS:
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
    for const, song_id, slug, filename in SONGS
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
    fail(
        "Não achei #define END_MUS em songs.h"
    )

text = re.sub(
    r'^[ \t]*#define[ \t]+END_MUS\b[^\n]*',
    "#define END_MUS MUS_GUTS_THEME",
    text,
    count=1,
    flags=re.M,
)

songs_h.write_text(
    text
)

print()
print(
    "[ADD] songs.h IDs 585 -> 595"
)
print(
    "[SET] END_MUS -> MUS_GUTS_THEME"
)


# ============================================================
# 7. song_table.inc
# ============================================================

song_table = ROOT / "sound/song_table.inc"

if not song_table.exists():
    fail(
        "sound/song_table.inc não encontrado"
    )

text = song_table.read_text()

for const, song_id, slug, filename in SONGS:
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
        f"Não achei song mus_{ANCHOR_SLUG}, 0, 0 "
        "em sound/song_table.inc"
    )

indent = anchor.group(
    "indent"
)

block = "\n".join(
    indent
    + f"song mus_{slug}, 0, 0"
    for const, song_id, slug, filename in SONGS
)

text = (
    text[:anchor.end()]
    + "\n"
    + block
    + text[anchor.end():]
)

song_table.write_text(
    text
)

print(
    "[ADD] song_table 585 -> 595"
)


# ============================================================
# 8. X-MACROS debug.c / radio.c
#
# Every line has "\" except the final MUS_GUTS_THEME.
# ============================================================

def update_x_macro(path):
    path = Path(path)

    if not path.exists():
        print(
            "[SKIP]",
            path,
        )
        return

    text = path.read_text()

    for const, song_id, slug, filename in SONGS:
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

    indent = anchor.group(
        "indent"
    )

    lines = [
        indent
        + f"X({ANCHOR_CONST})"
        + " \\"
    ]

    for index, (const, song_id, slug, filename) in enumerate(SONGS):
        line = (
            indent
            + f"X({const})"
        )

        if index != len(SONGS) - 1:
            line += " \\"

        lines.append(
            line
        )

    replacement = "\n".join(
        lines
    )

    text = (
        text[:anchor.start()]
        + replacement
        + text[anchor.end():]
    )

    path.write_text(
        text
    )

    print(
        "[UPDATE]",
        path,
    )


update_x_macro(
    ROOT / "src/debug.c"
)

update_x_macro(
    ROOT / "src/radio.c"
)


# ============================================================
# 9. FINAL CLEAN
# ============================================================

for const, song_id, slug, filename in SONGS:
    for stale in [
        MIDI_DIR / f"mus_{slug}.s",
        ROOT / f"build/modern/sound/songs/midi/mus_{slug}.o",
        ROOT / f"build/modern/sound/songs/midi/mus_{slug}.d",
    ]:
        remove_if_exists(
            stale
        )


print()
print("======================================================")
print("        11 MÚSICAS INSTALADAS | 585 -> 595")
print("======================================================")
print()

for const, song_id, slug, filename in SONGS:
    print(
        f"{song_id}: {const}"
    )

print()
print(
    "END_MUS = MUS_GUTS_THEME"
)
print()
print(
    "Agora rode:"
)
print()
print(
    "    make -j8"
)
