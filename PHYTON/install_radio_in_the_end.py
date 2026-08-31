#!/usr/bin/env python3
"""Install Linkin Park's In The End in the former Crawling radio slot.

The source MIDI is intentionally read from music_to_import so it can be
re-imported without carrying a stale embedded copy in an installer.
"""

from pathlib import Path
import subprocess


SCRIPT = Path(__file__).resolve()


def die(message):
    raise SystemExit(f"ERROR: {message}")


def find_root():
    for candidate in (Path.cwd().resolve(), SCRIPT.parent.parent.resolve()):
        if (candidate / "src/radio.c").exists() and (candidate / "Makefile").exists():
            return candidate
    die("Could not find the pokeemerald-expansion root.")


ROOT = find_root()
SOURCE_MIDI = ROOT / "music_to_import" / "Linkin Park — In the End [MIDIfind.com].mid"
TARGET_MIDI = ROOT / "sound/songs/midi/mus_in_the_end.mid"
TARGET_ASM = TARGET_MIDI.with_suffix(".s")

TEXT_FILES = (
    ROOT / "include/constants/songs.h",
    ROOT / "sound/song_table.inc",
    ROOT / "sound/songs/midi/midi.cfg",
    ROOT / "src/radio.c",
    ROOT / "PHYTON/link_radio_album_covers.py",
)

REPLACEMENTS = (
    ("MUS_CRAWLING", "MUS_IN_THE_END"),
    ("mus_crawling", "mus_in_the_end"),
    ("sRockMetalName_Crawling", "sRockMetalName_InTheEnd"),
    ("CRAWLING (LINKIN PARK)", "IN THE END (LINKIN PARK)"),
)


def write_if_changed(path, data):
    if path.exists() and path.read_bytes() == data:
        print(f"[OK] {path.relative_to(ROOT)}")
        return False
    path.write_bytes(data)
    print(f"[WRITE] {path.relative_to(ROOT)}")
    return True


def patch_text_files():
    for path in TEXT_FILES:
        text = path.read_text(encoding="utf-8")
        patched = text
        for old, new in REPLACEMENTS:
            patched = patched.replace(old, new)
        if patched != text:
            path.write_text(patched, encoding="utf-8")
            print(f"[PATCH] {path.relative_to(ROOT)}")
        else:
            print(f"[OK] {path.relative_to(ROOT)}")


def import_midi():
    if not SOURCE_MIDI.exists():
        die(f"Missing source MIDI: {SOURCE_MIDI.relative_to(ROOT)}")

    midi = SOURCE_MIDI.read_bytes()
    piano_program = b"\xC0\x00"

    # Program 0 maps to the drum kit in hlw_rock_metal. This MIDI has exactly
    # one program-0 event: its Piano track. Program 1 is the piano keysplit.
    if midi.count(piano_program) != 1:
        die("The source MIDI no longer has the expected single Piano program event.")
    midi = midi.replace(piano_program, b"\xC0\x01", 1)
    write_if_changed(TARGET_MIDI, midi)


def remove_stale_crawling_assets():
    stale_paths = (
        ROOT / "sound/songs/midi/mus_crawling.mid",
        ROOT / "sound/songs/midi/mus_crawling.s",
    )
    for path in stale_paths:
        if path.exists():
            path.unlink()
            print(f"[REMOVE] {path.relative_to(ROOT)}")

    for path in ROOT.glob("build/*/sound/songs/midi/mus_crawling.o"):
        path.unlink()
        print(f"[REMOVE] {path.relative_to(ROOT)}")


def generate_assembly():
    converter = ROOT / "tools/mid2agb/mid2agb"
    if not converter.exists():
        die("tools/mid2agb/mid2agb is missing. Build the tools first.")

    subprocess.run(
        [
            converter,
            TARGET_MIDI,
            TARGET_ASM,
            "-E",
            "-R32",
            "-G_hlw_rock_metal",
            "-V098",
        ],
        check=True,
    )
    print(f"[GENERATE] {TARGET_ASM.relative_to(ROOT)}")


patch_text_files()
import_midi()
remove_stale_crawling_assets()
generate_assembly()

print("\n[OK] In The End now occupies radio song ID 649 with the Hybrid Theory cover.")
