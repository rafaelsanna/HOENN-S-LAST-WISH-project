#!/usr/bin/env python3
"""Explicitly select voice 0 for custom-radio MIDI percussion tracks.

The Rock/Metal and Indie Rock voice groups reserve program/voice 0 for their
custom drumkit. Some imported General MIDI files put notes on MIDI channel 10
without sending a Program Change. mid2agb therefore omits ``VOICE , 0`` and
the GBA driver starts that track with its default tone instead of the drumkit.

This script adds the standard zero-delta ``Program Change, channel 10,
program 0`` event to only those source MIDI tracks that need it.  It is
idempotent: running it again leaves already-fixed tracks untouched.
"""

from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
MIDI_DIR = ROOT / "sound" / "songs" / "midi"
ROCK_METAL_SONGS = (
    "mus_3s_and_7s",
    "mus_animal_i_have_become",
    "mus_around_the_fur",
    "mus_be_quiet_and_drive",
    "mus_breaking_the_habit",
    "mus_change_in_the_house_of_flies",
    "mus_easier_to_run",
    "mus_faint",
    "mus_go_with_the_flow",
    "mus_in_the_end",
    "mus_kryptonite",
    "mus_my_god_is_the_sun",
    "mus_my_own_summer",
    "mus_rosemary",
)

INDIE_ROCK_SONGS = (
    "mus_freaking_out_the_neighborhood",
    "mus_dracula_tame_impala",
    "mus_lovesong_the_cure",
    "mus_friday_im_in_love",
    "mus_boys_dont_cry",
    "mus_rose_parade",
    "mus_shadowplay",
    "mus_new_dawn_fades",
    "mus_disorder",
    "mus_love_will_tear_us_apart",
)

STATIONS = (
    ("Rock/Metal", ROCK_METAL_SONGS),
    ("Indie Rock", INDIE_ROCK_SONGS),
)

# Delta time 0, Program Change, MIDI channel 10, program 0.
DRUMKIT_PROGRAM_EVENT = b"\x00\xC9\x00"


def read_vlq(data, pos, end):
    """Read one MIDI variable-length quantity and return its new position."""
    for _ in range(4):
        if pos >= end:
            raise ValueError("truncated variable-length quantity")
        byte = data[pos]
        pos += 1
        if not byte & 0x80:
            return pos
    raise ValueError("invalid variable-length quantity")


def inspect_track(track):
    """Return whether a track has ch.10 notes and an explicit ch.10 program."""
    pos = 0
    end = len(track)
    running_status = None
    has_percussion_notes = False
    has_percussion_program = False

    while pos < end:
        pos = read_vlq(track, pos, end)
        if pos >= end:
            raise ValueError("missing MIDI event after delta time")

        byte = track[pos]
        if byte & 0x80:
            status = byte
            pos += 1
            if 0x80 <= status <= 0xEF:
                running_status = status
            elif status == 0xFF:
                if pos >= end:
                    raise ValueError("truncated meta event")
                pos += 1  # Meta event type.
                length_start = pos
                pos = read_vlq(track, pos, end)
                length = 0
                for value in track[length_start:pos]:
                    length = (length << 7) | (value & 0x7F)
                pos += length
                if pos > end:
                    raise ValueError("truncated meta event payload")
                continue
            elif status in (0xF0, 0xF7):
                length_start = pos
                pos = read_vlq(track, pos, end)
                length = 0
                for value in track[length_start:pos]:
                    length = (length << 7) | (value & 0x7F)
                pos += length
                if pos > end:
                    raise ValueError("truncated SysEx event payload")
                continue
            else:
                raise ValueError(f"unsupported MIDI system status 0x{status:02X}")
        else:
            if running_status is None:
                raise ValueError("running status without a preceding channel event")
            status = running_status

        event_type = status & 0xF0
        channel = status & 0x0F
        data_length = 1 if event_type in (0xC0, 0xD0) else 2
        if pos + data_length > end:
            raise ValueError("truncated channel event")
        event_data = track[pos:pos + data_length]
        pos += data_length

        if channel != 9:
            continue
        if event_type == 0x90 and event_data[1] != 0:
            has_percussion_notes = True
        elif event_type == 0xC0:
            has_percussion_program = True

    return has_percussion_notes, has_percussion_program


def patch_midi(path):
    data = bytearray(path.read_bytes())
    if data[:4] != b"MThd" or len(data) < 14:
        raise ValueError("not a Standard MIDI file")

    header_length = int.from_bytes(data[4:8], "big")
    pos = 8 + header_length
    candidates = []

    while pos < len(data):
        if pos + 8 > len(data):
            raise ValueError("truncated MIDI chunk header")
        chunk_type = bytes(data[pos:pos + 4])
        chunk_length = int.from_bytes(data[pos + 4:pos + 8], "big")
        payload_start = pos + 8
        payload_end = payload_start + chunk_length
        if payload_end > len(data):
            raise ValueError("truncated MIDI chunk payload")

        if chunk_type == b"MTrk":
            has_notes, has_program = inspect_track(data[payload_start:payload_end])
            if has_notes and not has_program:
                candidates.append((pos + 4, payload_start, chunk_length))
        pos = payload_end

    for length_offset, payload_start, old_length in reversed(candidates):
        data[payload_start:payload_start] = DRUMKIT_PROGRAM_EVENT
        data[length_offset:length_offset + 4] = (old_length + len(DRUMKIT_PROGRAM_EVENT)).to_bytes(4, "big")

    if candidates:
        path.write_bytes(data)
    return len(candidates)


def main():
    patched_songs = 0
    for station, songs in STATIONS:
        print(f"[{station}]")
        for song in songs:
            path = MIDI_DIR / f"{song}.mid"
            count = patch_midi(path)
            if count:
                patched_songs += 1
                print(f"[PATCH] {path.relative_to(ROOT)}: {count} percussion track(s)")
            else:
                print(f"[OK]    {path.relative_to(ROOT)}")
    print(f"\n[OK] Patched {patched_songs} custom-radio source MIDI file(s).")


if __name__ == "__main__":
    main()
