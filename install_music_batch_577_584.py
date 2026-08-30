#!/usr/bin/env python3
from pathlib import Path
import re
import shutil

ROOT = Path.cwd()

ANCHOR_CONST = "MUS_MIDNAS_LAMENT"
ANCHOR_ID = 576
ANCHOR_SLUG = "midnas_lament"

SONGS = [
    {
        "const": "MUS_SHOUSHIN_NO_KIKI",
        "id": 577,
        "slug": "shoushin_no_kiki",
        "source": "mus_shoushin_no_kiki_gba_RADIO_FINAL_LOOP.mid",
    },
    {
        "const": "MUS_OMOKAGE",
        "id": 578,
        "slug": "omokage",
        "source": "mus_omokage_gba_RADIO_FINAL_LOOP.mid",
    },
    {
        "const": "MUS_BROTHERS",
        "id": 579,
        "slug": "brothers",
        "source": "mus_brothers_gba_RADIO_FINAL_LOOP.mid",
    },
    {
        "const": "MUS_DISTANCE",
        "id": 580,
        "slug": "distance",
        "source": "mus_distance_gba_RADIO_FINAL_LOOP.mid",
    },
    {
        "const": "MUS_KANASHIMI_WO_YASASHISA_NI",
        "id": 581,
        "slug": "kanashimi_wo_yasashisa_ni",
        "source": "mus_kanashimi_wo_yasashisa_ni_gba_RADIO_FINAL_LOOP.mid",
    },
    {
        "const": "MUS_KOKUTEN",
        "id": 582,
        "slug": "kokuten",
        "source": "mus_kokuten_gba_RADIO_FINAL_LOOP.mid",
    },
    {
        "const": "MUS_RESONANCE",
        "id": 583,
        "slug": "resonance",
        "source": "mus_resonance_gba_RADIO_FINAL_LOOP.mid",
    },
    {
        "const": "MUS_PAPER_MOON",
        "id": 584,
        "slug": "paper_moon",
        "source": "mus_paper_moon_gba_RADIO_FINAL_LOOP.mid",
    },
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


def locate_source(song):
    folder = IMPORT_ROOT / song["slug"]
    folder.mkdir(
        parents=True,
        exist_ok=True,
    )

    expected = folder / song["source"]

    if expected.exists():
        return expected

    # Facilita: se o usuário deixou o arquivo na raiz do repo.
    root_copy = ROOT / song["source"]

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

    # Facilita ainda mais: procura dentro de music_to_import.
    candidates = [
        p
        for p in IMPORT_ROOT.rglob(song["source"])
        if p.is_file()
    ]

    if len(candidates) == 1:
        src = candidates[0]

        if src.resolve() != expected.resolve():
            shutil.move(
                str(src),
                str(expected),
            )

            print(
                "[MOVE]",
                src,
                "->",
                expected,
            )

        return expected

    fail(
        "Não achei:\n"
        f"{song['source']}\n\n"
        "Coloque em:\n"
        f"{folder}"
    )


print()
print("======================================================")
print("     HLW MUSIC BATCH 577 -> 584 | 8 MÚSICAS")
print("======================================================")
print()


# ============================================================
# 1. LOCALIZAR TODOS OS MIDIS ANTES DE ALTERAR O REPO
# ============================================================

sources = {}

for song in SONGS:
    src = locate_source(song)
    sources[song["slug"]] = src

    print(
        "[FOUND]",
        song["id"],
        song["const"],
        "->",
        src,
    )


# ============================================================
# 2. CHECAR OS 3 SAMPLES REUTILIZADOS
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
# 3. COPIAR MIDIS + CRIAR VOICEGROUPS
# ============================================================

for song in SONGS:
    slug = song["slug"]
    src = sources[slug]

    dest = MIDI_DIR / f"mus_{slug}.mid"

    for stale in [
        MIDI_DIR / f"mus_{slug}.s",
        ROOT / f"build/modern/sound/songs/midi/mus_{slug}.o",
        ROOT / f"build/modern/sound/songs/midi/mus_{slug}.d",
    ]:
        remove_if_exists(stale)

    shutil.copy2(
        src,
        dest,
    )

    print(
        "[COPY]",
        src,
        "->",
        dest,
    )

    vg = VOICEGROUP_DIR / f"{slug}.inc"

    vg.write_text(
        f"""voice_group {slug}
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_fingered_bass, 255, 252, 0, 127 @ 0 - bass
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_square_wave, 255, 204, 0, 127 @ 1 - harmony
    voice_directsound 60, 0, DirectSoundWaveData_dp_altosax_c3_16, 255, 0, 255, 127 @ 2 - lead
"""
    )

    print(
        "[CREATE]",
        vg,
    )


# ============================================================
# 4. voice_groups.inc
# ============================================================

voice_groups = ROOT / "sound/voice_groups.inc"

if not voice_groups.exists():
    fail(
        "sound/voice_groups.inc não encontrado"
    )

text = voice_groups.read_text()

for song in SONGS:
    slug = song["slug"]

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

for song in SONGS:
    text += (
        f'.include "sound/voicegroups/{song["slug"]}.inc"\n'
    )

voice_groups.write_text(text)

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

for song in SONGS:
    slug = song["slug"]

    text = re.sub(
        rf'^mus_{re.escape(slug)}\.mid:.*\n?',
        '',
        text,
        flags=re.M,
    )

if not text.endswith("\n"):
    text += "\n"

for song in SONGS:
    slug = song["slug"]

    line = (
        f"mus_{slug}.mid: "
        f"-E -R50 -G_{slug} -V100"
    )

    text += line + "\n"

    print(
        "[ADD]",
        line,
    )

cfg.write_text(text)


# ============================================================
# 6. songs.h
#
# 576 MUS_MIDNAS_LAMENT
# 577 ... 584
# END_MUS = MUS_PAPER_MOON
# ============================================================

songs_h = ROOT / "include/constants/songs.h"

if not songs_h.exists():
    fail(
        "include/constants/songs.h não encontrado"
    )

text = songs_h.read_text()

# Remove o bloco se o instalador for executado novamente.
for song in SONGS:
    text = re.sub(
        rf'^[ \t]*#define[ \t]+'
        rf'{re.escape(song["const"])}[ \t]+\d+'
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
    f'#define {song["const"]:<40} {song["id"]}'
    for song in SONGS
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
    "#define END_MUS MUS_PAPER_MOON",
    text,
    count=1,
    flags=re.M,
)

songs_h.write_text(text)

print()
print("[ADD] songs.h IDs 577 -> 584")
print("[SET] END_MUS -> MUS_PAPER_MOON")


# ============================================================
# 7. song_table.inc
# ============================================================

song_table = ROOT / "sound/song_table.inc"

if not song_table.exists():
    fail(
        "sound/song_table.inc não encontrado"
    )

text = song_table.read_text()

for song in SONGS:
    slug = song["slug"]

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

indent = anchor.group("indent")

block = "\n".join(
    indent
    + f'song mus_{song["slug"]}, 0, 0'
    for song in SONGS
)

text = (
    text[:anchor.end()]
    + "\n"
    + block
    + text[anchor.end():]
)

song_table.write_text(text)

print(
    "[ADD] song_table 577 -> 584"
)


# ============================================================
# 8. X-MACROS debug.c / radio.c
#
# Regra importante:
# todos têm "\" exceto o ÚLTIMO.
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

    # Remove linhas do batch em caso de re-run.
    for song in SONGS:
        text = re.sub(
            rf'^[ \t]*X\({re.escape(song["const"])}\)'
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
        indent
        + f"X({ANCHOR_CONST})"
        + " \\"
    ]

    for i, song in enumerate(SONGS):
        line = (
            indent
            + f'X({song["const"]})'
        )

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
# 9. LIMPEZA EXTRA
# ============================================================

for song in SONGS:
    slug = song["slug"]

    for stale in [
        MIDI_DIR / f"mus_{slug}.s",
        ROOT / f"build/modern/sound/songs/midi/mus_{slug}.o",
        ROOT / f"build/modern/sound/songs/midi/mus_{slug}.d",
    ]:
        remove_if_exists(stale)


# ============================================================
# FINAL
# ============================================================

print()
print("======================================================")
print("        8 MÚSICAS INSTALADAS | 577 -> 584")
print("======================================================")
print()

for song in SONGS:
    print(
        f'{song["id"]}: '
        f'{song["const"]}'
    )

print()
print("END_MUS = MUS_PAPER_MOON")
print()
print("Agora rode:")
print()
print("    make -j8")
print()
print("Depois confira os loops:")
print()
print(
    "    grep -n \"GOTO\" "
    "sound/songs/midi/mus_*.s"
)
print()
