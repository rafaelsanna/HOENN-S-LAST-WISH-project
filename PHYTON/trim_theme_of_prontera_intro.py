#!/usr/bin/env python3
"""Remove Theme of Prontera's four-bar C/D count-in.

The imported Ragnarok MIDI opens with four bars where only a repeated C/D
figure (and a sustained pad) plays.  On the GBA it sounds like a stuck mini
intro rather than the beginning of the actual song.  This tool removes exactly
four 4/4 bars (7,680 ticks at the file's 480 PPQN) and leaves the song's real
opening at tick zero.

It is deliberately limited to this one song.  The script retains MIDI setup
events (tempo, programs, volume and pan) at tick zero, discards count-in notes
including any note-offs that belong to them, then shifts everything else
earlier.  Re-running it is safe: a song whose real multi-channel opening is
already at tick zero is left unchanged.
"""

from __future__ import annotations

from collections import Counter
from dataclasses import dataclass, replace
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
MIDI_PATH = ROOT / "sound" / "songs" / "midi" / "mus_theme_of_prontera.mid"
PPQN = 480
CUT_TICKS = 4 * 4 * PPQN


@dataclass(frozen=True)
class Event:
    time: int
    order: int
    kind: str
    status: int
    data: bytes
    meta_type: int | None = None

    @property
    def channel(self) -> int | None:
        return self.status & 0x0F if self.kind == "channel" else None

    @property
    def event_type(self) -> int | None:
        return self.status & 0xF0 if self.kind == "channel" else None


def read_vlq(data: bytes, pos: int) -> tuple[int, int]:
    value = 0
    for _ in range(4):
        if pos >= len(data):
            raise ValueError("truncated variable-length quantity")
        byte = data[pos]
        pos += 1
        value = (value << 7) | (byte & 0x7F)
        if not byte & 0x80:
            return value, pos
    raise ValueError("invalid variable-length quantity")


def write_vlq(value: int) -> bytes:
    if value < 0:
        raise ValueError("negative MIDI delta")
    encoded = bytearray([value & 0x7F])
    value >>= 7
    while value:
        encoded.append((value & 0x7F) | 0x80)
        value >>= 7
    return bytes(reversed(encoded))


def parse_track(payload: bytes) -> list[Event]:
    events: list[Event] = []
    pos = now = order = 0
    running_status: int | None = None

    while pos < len(payload):
        delta, pos = read_vlq(payload, pos)
        now += delta
        if pos >= len(payload):
            raise ValueError("missing MIDI event after delta")
        byte = payload[pos]
        if byte & 0x80:
            status = byte
            pos += 1
            if 0x80 <= status <= 0xEF:
                running_status = status
            elif status == 0xFF:
                meta_type = payload[pos]
                pos += 1
                length, pos = read_vlq(payload, pos)
                data = payload[pos:pos + length]
                pos += length
                events.append(Event(now, order, "meta", status, data, meta_type))
                order += 1
                continue
            elif status in (0xF0, 0xF7):
                length, pos = read_vlq(payload, pos)
                data = payload[pos:pos + length]
                pos += length
                events.append(Event(now, order, "sysex", status, data))
                order += 1
                continue
            else:
                raise ValueError(f"unsupported MIDI system status 0x{status:02X}")
        else:
            if running_status is None:
                raise ValueError("running status without a preceding channel status")
            status = running_status

        event_type = status & 0xF0
        length = 1 if event_type in (0xC0, 0xD0) else 2
        data = payload[pos:pos + length]
        if len(data) != length:
            raise ValueError("truncated MIDI channel event")
        pos += length
        events.append(Event(now, order, "channel", status, data))
        order += 1
    return events


def event_bytes(event: Event) -> bytes:
    if event.kind == "channel":
        return bytes([event.status]) + event.data
    if event.kind == "meta":
        return b"\xFF" + bytes([event.meta_type]) + write_vlq(len(event.data)) + event.data
    if event.kind == "sysex":
        return bytes([event.status]) + write_vlq(len(event.data)) + event.data
    raise ValueError(f"unknown event kind {event.kind!r}")


def build_track(events: list[Event]) -> bytes:
    output = bytearray()
    previous_time = 0
    for event in sorted(events, key=lambda event: (event.time, event.order)):
        output.extend(write_vlq(event.time - previous_time))
        output.extend(event_bytes(event))
        previous_time = event.time
    return bytes(output)


def is_note_on(event: Event) -> bool:
    return event.kind == "channel" and event.event_type == 0x90 and event.data[1] != 0


def is_note_off(event: Event) -> bool:
    return (event.kind == "channel" and (
        event.event_type == 0x80
        or (event.event_type == 0x90 and event.data[1] == 0)
    ))


def is_setup_event(event: Event) -> bool:
    if event.kind == "meta":
        # Keep timing/loop metadata and the track title, but never bring the
        # old end-of-track marker to the new start.
        return event.meta_type != 0x2F
    if event.kind != "channel":
        return False
    # These configure an instrument rather than sounding a note.  Carrying
    # them to tick zero makes the cut independent of the old count-in.
    return event.event_type in (0xB0, 0xC0, 0xD0, 0xE0)


def real_opening_is_already_first(events: list[Event]) -> bool:
    """Detect the post-trim opening without relying on a custom MIDI marker."""
    return any(
        event.time == 0 and is_note_on(event) and event.channel in (0, 9)
        for event in events
    )


def trim_intro(events: list[Event]) -> list[Event]:
    active_count_in_notes: Counter[tuple[int, int]] = Counter()
    initial_setup: list[Event] = []
    shifted: list[Event] = []

    for event in events:
        if event.time < CUT_TICKS:
            if is_note_on(event):
                active_count_in_notes[(event.channel, event.data[0])] += 1
            elif is_note_off(event):
                key = (event.channel, event.data[0])
                if active_count_in_notes[key]:
                    active_count_in_notes[key] -= 1
            elif is_setup_event(event):
                initial_setup.append(replace(event, time=0))
            continue

        if is_note_off(event):
            key = (event.channel, event.data[0])
            if active_count_in_notes[key]:
                active_count_in_notes[key] -= 1
                continue
        shifted.append(replace(event, time=event.time - CUT_TICKS))

    # Original ordering makes all setup happen before the new opening notes.
    return initial_setup + shifted


def main() -> None:
    data = MIDI_PATH.read_bytes()
    if data[:4] != b"MThd" or len(data) < 22:
        raise ValueError(f"{MIDI_PATH}: not a Standard MIDI file")
    header_length = int.from_bytes(data[4:8], "big")
    header_end = 8 + header_length
    if data[8:10] != b"\x00\x00" or data[10:12] != b"\x00\x01":
        raise ValueError("Theme of Prontera must remain a format-0, one-track MIDI")
    if int.from_bytes(data[12:14], "big") != PPQN:
        raise ValueError(f"expected {PPQN} PPQN")
    if data[header_end:header_end + 4] != b"MTrk":
        raise ValueError("missing MIDI track")
    track_length = int.from_bytes(data[header_end + 4:header_end + 8], "big")
    track_start = header_end + 8
    track_end = track_start + track_length
    if track_end != len(data):
        raise ValueError("Theme of Prontera must contain exactly one complete MTrk chunk")

    events = parse_track(data[track_start:track_end])
    if real_opening_is_already_first(events):
        print("[OK] Theme of Prontera already starts at the real song opening.")
        return

    trimmed = trim_intro(events)
    output_track = build_track(trimmed)
    output = data[:header_end] + b"MTrk" + len(output_track).to_bytes(4, "big") + output_track
    MIDI_PATH.write_bytes(output)
    print(f"[PATCH] Removed {CUT_TICKS} MIDI ticks (four 4/4 bars) from Theme of Prontera.")


if __name__ == "__main__":
    main()
