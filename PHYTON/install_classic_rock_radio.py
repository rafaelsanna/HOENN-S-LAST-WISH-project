#!/usr/bin/env python3
"""Prepare the twelve Classic Rock radio MIDIs for the GBA sound driver.

The original files are intentionally left untouched in ``music_to_import``.
This importer copies only the new Classic Rock songs into ``sound/songs/midi``
and makes the small, deterministic changes that the GBA renderer requires:

* channel 10 always selects voice 0, the Classic Rock DirectSound drumkit;
* melodic piano/default channels select voice 1 instead of voice 0;
* overly dense accompaniment tracks are omitted per-song, preserving the
  rhythm section and recognisable lead/riff tracks;
* all split percussion tracks are merged into one logical drum track; and
* large same-tick chords are reduced to a practical GBA arrangement.
* leading empty time is removed, so changing radio tracks starts the music
  immediately instead of waiting through the source MIDI's count-in gap.

Use ``--inspect`` to print the source-track inventory before changing files.
Use ``--write`` to create the twelve target MIDI files.  It is idempotent:
every run starts again from the untouched imports.
"""

from __future__ import annotations

import argparse
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
SOURCE_DIR = ROOT / "music_to_import"
TARGET_DIR = ROOT / "sound" / "songs" / "midi"

# ``keep`` contains original MTrk indexes (one-based).  Track 1, which carries
# the timing/tempo metadata in these format-1 files, is always retained.
# The arrangements deliberately discard duplicate backing layers rather than
# changing the source MIDIs or relying on the driver's 12-channel note theft.
ARRANGEMENTS = {
    "mus_a_hard_rains_a_gonna_fall": {
        "source": "A Hard Rain's a-Gonna Fall.mid",
        "keep": None,
        "keep_channels": None,
        "chord_limit": 3,
    },
    "mus_another_brick_in_the_wall": {
        "source": "Another Brick In The Wall 1 (XG).mid",
        "keep": (3, 4, 5, 6, 7, 10),
        "keep_channels": None,
        "chord_limit": 3,
    },
    "mus_blowin_in_the_wind": {
        "source": "Bob Dylan - Blowin' in the Wind.mid",
        "keep": (4, 5, 6, 7, 9),
        "keep_channels": None,
        "chord_limit": 3,
    },
    "mus_like_a_rolling_stone": {
        "source": "Bob Dylan - Like A Rolling Stone.mid",
        "keep": None,
        "keep_channels": (1, 2, 5, 6, 8, 10),
        "chord_limit": 3,
    },
    "mus_comfortably_numb": {
        "source": "Comfortably Numb 1.mid",
        "keep": (2, 3, 5, 8),
        "keep_channels": None,
        "chord_limit": 3,
    },
    "mus_foxy_lady": {
        "source": "Hendrix Jimi — Foxey Lady [MIDIfind.com].mid",
        "keep": None,
        "keep_channels": None,
        "chord_limit": 3,
    },
    "mus_high_hopes": {
        "source": "High Hopes 1 (XG).mid",
        "keep": (3, 5, 6, 7, 8, 12, 14, 15),
        "keep_channels": None,
        "chord_limit": 2,
    },
    "mus_knockin_on_heavens_door": {
        "source": "Knockin' on Heaven's door.mid",
        "keep": None,
        "keep_channels": (1, 2, 3, 4, 6, 10),
        "chord_limit": 3,
    },
    "mus_mr_tambourine_man": {
        "source": "Mr. Tambourine Man.mid",
        "keep": None,
        "keep_channels": (2, 3, 4, 6, 10),
        "chord_limit": 3,
    },
    "mus_shine_on_you_crazy_diamond": {
        "source": "Pink Floyd - Shine On You Crazy Diamond.mid",
        "keep": None,
        "keep_channels": (3, 5, 7, 8, 9, 10, 13, 15),
        "chord_limit": 2,
    },
    "mus_the_great_gig_in_the_sky": {
        "source": "The Great Gig In The Sky 1.mid",
        "keep": (2, 3, 4, 7, 9),
        "keep_channels": None,
        "chord_limit": 2,
        "program_overrides": {
            (2, 4): 33,  # Bass Line is incorrectly tagged Alto Sax.
            (4, 5): 22,  # Harmo Pan Lead should stay a harmonica-like lead.
            (9, 8): 73,  # Shakuhachi is closer to the available flute voice.
        },
    },
    "mus_time": {
        "source": "Time 1.mid",
        "keep": None,
        "keep_channels": None,
        "chord_limit": 3,
    },
}


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
    result = bytearray([value & 0x7F])
    value >>= 7
    while value:
        result.append((value & 0x7F) | 0x80)
        value >>= 7
    return bytes(reversed(result))


def parse_track(payload: bytes) -> list[Event]:
    events: list[Event] = []
    pos = 0
    now = 0
    order = 0
    running_status: int | None = None

    while pos < len(payload):
        delta, pos = read_vlq(payload, pos)
        now += delta
        if pos >= len(payload):
            raise ValueError("missing MIDI event after delta")

        value = payload[pos]
        if value & 0x80:
            status = value
            pos += 1
            if 0x80 <= status <= 0xEF:
                running_status = status
            elif status == 0xFF:
                if pos >= len(payload):
                    raise ValueError("truncated meta event")
                meta_type = payload[pos]
                pos += 1
                length, pos = read_vlq(payload, pos)
                data = payload[pos:pos + length]
                if len(data) != length:
                    raise ValueError("truncated meta payload")
                pos += length
                events.append(Event(now, order, "meta", status, data, meta_type))
                order += 1
                continue
            elif status in (0xF0, 0xF7):
                length, pos = read_vlq(payload, pos)
                data = payload[pos:pos + length]
                if len(data) != length:
                    raise ValueError("truncated SysEx payload")
                pos += length
                events.append(Event(now, order, "sysex", status, data))
                order += 1
                continue
            else:
                raise ValueError(f"unsupported MIDI system event 0x{status:02X}")
        else:
            if running_status is None:
                raise ValueError("running status without a channel status")
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


def read_midi(path: Path) -> tuple[bytes, list[list[Event]]]:
    data = path.read_bytes()
    if data[:4] != b"MThd" or len(data) < 14:
        raise ValueError(f"{path}: not a Standard MIDI file")
    header_length = int.from_bytes(data[4:8], "big")
    header_end = 8 + header_length
    if header_end > len(data):
        raise ValueError(f"{path}: truncated MIDI header")

    pos = header_end
    tracks: list[list[Event]] = []
    while pos < len(data):
        if pos + 8 > len(data):
            raise ValueError(f"{path}: truncated MIDI chunk")
        chunk_type = data[pos:pos + 4]
        length = int.from_bytes(data[pos + 4:pos + 8], "big")
        payload_start = pos + 8
        payload_end = payload_start + length
        if payload_end > len(data):
            raise ValueError(f"{path}: truncated MIDI chunk payload")
        if chunk_type == b"MTrk":
            tracks.append(parse_track(data[payload_start:payload_end]))
        pos = payload_end
    return data[:header_end], tracks


def event_bytes(event: Event) -> bytes:
    if event.kind == "channel":
        return bytes([event.status]) + event.data
    if event.kind == "meta":
        return b"\xFF" + bytes([event.meta_type]) + write_vlq(len(event.data)) + event.data
    if event.kind == "sysex":
        return bytes([event.status]) + write_vlq(len(event.data)) + event.data
    raise ValueError(f"unknown event type {event.kind}")


def build_track(events: list[Event]) -> bytes:
    output = bytearray()
    previous_time = 0
    for event in sorted(events, key=lambda item: (item.time, item.order)):
        output.extend(write_vlq(event.time - previous_time))
        output.extend(event_bytes(event))
        previous_time = event.time
    if not any(event.kind == "meta" and event.meta_type == 0x2F for event in events):
        output.extend(b"\x00\xFF\x2F\x00")
    return bytes(output)


def track_name(events: list[Event]) -> str:
    for event in events:
        if event.kind == "meta" and event.meta_type == 0x03:
            return event.data.decode("latin-1", "replace")
    return ""


def channels_with_notes(events: list[Event]) -> dict[int, int]:
    result: dict[int, int] = defaultdict(int)
    for event in events:
        if event.kind == "channel" and event.event_type == 0x90 and event.data[1] != 0:
            result[event.channel] += 1
    return dict(result)


def program_changes(events: list[Event]) -> dict[int, list[int]]:
    result: dict[int, list[int]] = defaultdict(list)
    for event in events:
        if event.kind == "channel" and event.event_type == 0xC0:
            result[event.channel].append(event.data[0])
    return dict(result)


def inspect(path: Path) -> None:
    _, tracks = read_midi(path)
    print(f"\n{path.name}: {len(tracks)} MTrk chunk(s)")
    for index, events in enumerate(tracks, 1):
        notes = channels_with_notes(events)
        programs = program_changes(events)
        if not notes and not programs and not track_name(events):
            continue
        channel_text = ", ".join(f"ch{channel + 1}:{count}" for channel, count in sorted(notes.items())) or "-"
        program_text = ", ".join(
            f"ch{channel + 1}:{'/'.join(map(str, values))}"
            for channel, values in sorted(programs.items())
        ) or "-"
        name = track_name(events)
        print(f"  T{index:02d}  notes [{channel_text}]  programs [{program_text}]  {name}")


def first_note_time(events: list[Event], channel: int) -> int | None:
    for event in events:
        if (event.kind == "channel" and event.channel == channel
                and event.event_type == 0x90 and event.data[1] != 0):
            return event.time
    return None


def has_program_before(events: list[Event], channel: int, time: int) -> bool:
    return any(
        event.kind == "channel" and event.channel == channel
        and event.event_type == 0xC0 and event.time <= time
        for event in events
    )


def thin_same_tick_chords(events: list[Event], chord_limit: int) -> list[Event]:
    """Keep bottom, top and inner harmony tones when a chord is too large."""
    notes_at_time: dict[tuple[int, int], list[Event]] = defaultdict(list)
    for event in events:
        if (event.kind == "channel" and event.channel != 9
                and event.event_type == 0x90 and event.data[1] != 0):
            notes_at_time[event.time, event.channel].append(event)

    dropped_orders: set[int] = set()
    for group in notes_at_time.values():
        if len(group) <= chord_limit:
            continue
        ordered = sorted(group, key=lambda event: event.data[0])
        chosen_indexes = {0, len(ordered) - 1}
        while len(chosen_indexes) < chord_limit:
            chosen_indexes.add(len(ordered) // 2)
        for index, event in enumerate(ordered):
            if index not in chosen_indexes:
                dropped_orders.add(event.order)
    return [event for event in events if event.order not in dropped_orders]


def transform_melodic_track(
    events: list[Event],
    chord_limit: int,
    order_base: int,
    allowed_channels: set[int] | None,
    program_overrides: dict[tuple[int, int], int],
    track_index: int,
) -> list[Event]:
    """Remove ch.10 events and make melodic programs safe for this voicegroup."""
    transformed: list[Event] = []
    note_channels = {
        channel: count
        for channel, count in channels_with_notes(events).items()
        if allowed_channels is None or channel in allowed_channels
    }
    for event in events:
        if event.kind == "channel" and event.channel == 9:
            continue
        if (event.kind == "channel" and allowed_channels is not None
                and event.channel not in allowed_channels):
            continue
        if event.kind == "channel" and event.event_type == 0xC0:
            program = program_overrides.get((track_index, event.channel), event.data[0])
            if program == 0:
                program = 1
            event = Event(event.time, event.order + order_base, event.kind, event.status, bytes([program]))
        else:
            event = Event(event.time, event.order + order_base, event.kind, event.status, event.data, event.meta_type)
        transformed.append(event)

    for channel in note_channels:
        if channel == 9:
            continue
        start = first_note_time(events, channel)
        if start is not None and not has_program_before(events, channel, start):
            program = program_overrides.get((track_index, channel), 1)
            transformed.append(Event(0, order_base - channel - 1, "channel", 0xC0 | channel, bytes([program])))

    return thin_same_tick_chords(transformed, chord_limit)


def merged_percussion_track(tracks: list[list[Event]], order_base: int) -> list[Event]:
    merged: list[Event] = [Event(0, order_base, "channel", 0xC9, b"\x00")]
    order = order_base + 1
    for track in tracks:
        for event in track:
            if event.kind != "channel" or event.channel != 9:
                continue
            data = b"\x00" if event.event_type == 0xC0 else event.data
            merged.append(Event(event.time, order, "channel", event.status, data))
            order += 1
    return merged


def trim_leading_silence(tracks: list[list[Event]]) -> tuple[list[list[Event]], int]:
    """Move the first audible note to tick zero without discarding setup.

    MIDI files commonly put tempo, controller, SysEx and program events at
    tick zero, then leave one or more empty bars before their first note.  On
    the radio that reads as an awkward pause after selecting a song.  We keep
    those setup events, but collapse the empty interval: events before the
    first note remain at tick zero and every later event moves left by exactly
    the same amount.
    """
    audible_times = [
        event.time
        for track in tracks
        for event in track
        if (event.kind == "channel" and event.event_type == 0x90
                and event.data[1] != 0)
    ]
    if not audible_times:
        return tracks, 0

    offset = min(audible_times)
    if offset == 0:
        return tracks, 0

    trimmed: list[list[Event]] = []
    for track in tracks:
        trimmed.append([
            Event(
                max(0, event.time - offset),
                event.order,
                event.kind,
                event.status,
                event.data,
                event.meta_type,
            )
            for event in track
        ])
    return trimmed, offset


def prepare_song(slug: str, config: dict[str, object]) -> tuple[bytes, list[bytes]]:
    source_path = SOURCE_DIR / str(config["source"])
    header, source_tracks = read_midi(source_path)
    keep = config["keep"]
    keep_indexes = set(range(1, len(source_tracks) + 1)) if keep is None else {1, *keep}
    chord_limit = int(config["chord_limit"])
    selected_channels = config["keep_channels"]
    allowed_channels = None if selected_channels is None else {channel - 1 for channel in selected_channels}
    program_overrides = dict(config.get("program_overrides", {}))

    result_events: list[list[Event]] = []
    for index, track in enumerate(source_tracks, 1):
        if index not in keep_indexes:
            continue
        # Track 1 commonly only holds tempo/name metadata.  Keep it intact;
        # still strip percussion from it if this particular MIDI combines them.
        transformed = transform_melodic_track(
            track,
            chord_limit,
            index * 10000,
            allowed_channels,
            program_overrides,
            index,
        )
        has_melodic_notes = any(
            event.kind == "channel" and event.channel != 9
            and event.event_type == 0x90 and event.data[1] != 0
            for event in transformed
        )
        if index == 1 or has_melodic_notes:
            result_events.append(transformed)

    drums = merged_percussion_track(source_tracks, 900000)
    if len(drums) > 1:
        result_events.append(drums)

    result_events, _ = trim_leading_silence(result_events)
    output_tracks = [build_track(events) for events in result_events]
    # The standard header stores the MTrk count at byte 10 for format-1 files.
    header = bytearray(header)
    if len(header) < 14:
        raise ValueError(f"{source_path}: incomplete MIDI header")
    header[10:12] = len(output_tracks).to_bytes(2, "big")
    return bytes(header), output_tracks


def write_song(slug: str, config: dict[str, object]) -> None:
    header, tracks = prepare_song(slug, config)
    target = TARGET_DIR / f"{slug}.mid"
    output = bytearray(header)
    for track in tracks:
        output.extend(b"MTrk")
        output.extend(len(track).to_bytes(4, "big"))
        output.extend(track)
    target.write_bytes(output)
    print(f"[OK] {target.relative_to(ROOT)} ({len(tracks)} logical track(s))")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    mode = parser.add_mutually_exclusive_group(required=True)
    mode.add_argument("--inspect", action="store_true", help="print source MTrk inventory")
    mode.add_argument("--write", action="store_true", help="write arranged target MIDIs")
    args = parser.parse_args()

    if args.inspect:
        for config in ARRANGEMENTS.values():
            inspect(SOURCE_DIR / str(config["source"]))
        return

    TARGET_DIR.mkdir(parents=True, exist_ok=True)
    for slug, config in ARRANGEMENTS.items():
        write_song(slug, config)


if __name__ == "__main__":
    main()
