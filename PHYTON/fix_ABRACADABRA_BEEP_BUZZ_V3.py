#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import datetime
import os

TARGET_MIDI = Path("sound/songs/midi/mus_abracadabra.mid")
TARGET_GROUP = "abracadabra"

# Clean POP kit policy for Abracadabra:
# 36 = kick
# 40 = snare (we also remap old 39 -> 40)
# 42 = closed hat
# Everything below is muted because those hits are the audible BEEP/BUZZ culprits
# in the current arrangement.
MUTE_NOTES = {38, 43, 45, 47, 48, 49}
REMAP = {39: 40}

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def backup_file(path, root, backup_dir):
    dst = backup_dir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def find_voicegroup_file(root, group_name):
    hits = []
    for p in (root / "sound").rglob("*.inc"):
        try:
            s = p.read_text(errors="ignore")
        except Exception:
            continue
        if re.search(rf'^\s*voice_group\s+{re.escape(group_name)}\s*$', s, re.M):
            hits.append(p)
    if not hits:
        die(f"Nao achei 'voice_group {group_name}' em sound/**/*.inc")
    return hits[0]

def get_voice_lines(text):
    return [
        line for line in text.splitlines()
        if line.strip().startswith("voice_")
        and not line.strip().startswith("voice_group")
    ]

def find_drumkit_slots(vg_text):
    slots = []
    for i, line in enumerate(get_voice_lines(vg_text)):
        low = line.lower()
        if ("drum" in low or "perc" in low or "kit" in low):
            slots.append((i, line.strip()))
    return slots

def read_vlq(data, pos):
    value = 0
    for _ in range(4):
        if pos >= len(data):
            raise ValueError("VLQ truncado")
        b = data[pos]
        pos += 1
        value = (value << 7) | (b & 0x7F)
        if not (b & 0x80):
            return value, pos
    return value, pos

def patch(blob, drum_slots):
    if blob[:4] != b"MThd":
        raise ValueError("Arquivo nao parece MIDI valido.")

    out = bytearray(blob)
    drum_slot_set = {slot for slot, _ in drum_slots}

    hlen = int.from_bytes(out[4:8], "big")
    pos = 8 + hlen

    total_tracks = 0
    channels_touched = set()
    muted_counts = {n: 0 for n in sorted(MUTE_NOTES)}
    remap_counts = {(a, b): 0 for a, b in REMAP.items()}

    # Program state is MIDI-channel state. Initialize to GM program 0.
    current_program = [0] * 16

    while pos < len(out):
        if out[pos:pos+4] != b"MTrk":
            raise ValueError(f"Esperava MTrk em 0x{pos:X}")

        ln = int.from_bytes(out[pos+4:pos+8], "big")
        start = pos + 8
        end = start + ln
        if end > len(out):
            raise ValueError("Track MIDI truncada.")

        total_tracks += 1
        i = start
        running = None

        while i < end:
            _, i = read_vlq(out, i)
            if i >= end:
                break

            b = out[i]
            if b & 0x80:
                status = b
                i += 1
                if status < 0xF0:
                    running = status
                elif status in (0xF0, 0xF7, 0xFF):
                    running = None
            else:
                if running is None:
                    raise ValueError(
                        f"Running status invalido na track {total_tracks}."
                    )
                status = running

            if status == 0xFF:
                if i >= end:
                    raise ValueError("Meta event truncado.")
                i += 1
                ln2, i = read_vlq(out, i)
                i += ln2
                continue

            if status in (0xF0, 0xF7):
                ln2, i = read_vlq(out, i)
                i += ln2
                continue

            if status >= 0xF0:
                i += {
                    0xF1:1, 0xF2:2, 0xF3:1, 0xF6:0,
                    0xF8:0, 0xFA:0, 0xFB:0, 0xFC:0, 0xFE:0,
                }.get(status, 0)
                continue

            kind = status & 0xF0
            ch = status & 0x0F
            data_len = 1 if kind in (0xC0, 0xD0) else 2

            if i + data_len > end:
                raise ValueError("Evento MIDI truncado.")

            if kind == 0xC0:
                current_program[ch] = out[i]

            elif kind in (0x80, 0x90) and current_program[ch] in drum_slot_set:
                note = out[i]

                # Remap both NOTE ON and NOTE OFF for 39 -> 40.
                if note in REMAP:
                    new_note = REMAP[note]
                    out[i] = new_note
                    if kind == 0x90 and out[i + 1] > 0:
                        remap_counts[(note, new_note)] += 1
                        channels_touched.add(ch)

                # Mute only NOTE ON. Preserve byte count and timing by setting
                # velocity to zero (MIDI semantic = note off / silent event).
                elif note in MUTE_NOTES and kind == 0x90 and out[i + 1] > 0:
                    out[i + 1] = 0
                    muted_counts[note] += 1
                    channels_touched.add(ch)

            i += data_len

        pos = end

    return bytes(out), total_tracks, channels_touched, muted_counts, remap_counts

def main():
    root = Path.cwd()
    midi = root / TARGET_MIDI

    if not midi.exists():
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    vg_file = find_voicegroup_file(root, TARGET_GROUP)
    vg_text = vg_file.read_text(errors="ignore")
    drum_slots = find_drumkit_slots(vg_text)

    if not drum_slots:
        die("Nao achei Drumkit no voicegroup_abracadabra.")

    print("== ABRACADABRA / BEEP + BUZZ FIX V3 ==")
    print("Diagnostico baseado no timing real do MIDI:")
    print("  ~2.98s: note 45")
    print("  ~3.10s: note 43")
    print("  ~11.43s ate ~18.93s: note 38 repetida em crescendo")
    print("Esses eventos batem com o BEEP ~3s e o zumbido que vai aumentando.\n")

    print("Drumkits detectados:")
    for slot, line in drum_slots:
        print(f"  {slot:03d}: {line}")

    original = midi.read_bytes()
    try:
        patched, tracks, channels, muted, remapped = patch(original, drum_slots)
    except Exception as e:
        die(str(e))

    total_muted = sum(muted.values())
    total_remapped = sum(remapped.values())

    if total_muted == 0 and total_remapped == 0:
        print("\n[AVISO] Nao achei nenhum dos eventos esperados no Drumkit atual.")
        print("Nenhum arquivo foi alterado.")
        return

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_dir = root / "PHYTON/backups" / f"abracadabra_beep_buzz_v3_{stamp}"
    backup_file(midi, root, backup_dir)

    midi.write_bytes(patched)
    os.utime(midi, None)

    for p in (
        root / "sound/songs/midi/mus_abracadabra.s",
        root / "build/modern/sound/songs/midi/mus_abracadabra.o",
    ):
        if p.exists():
            p.unlink()

    print("\nBackup:", backup_dir)
    print(f"Tracks verificadas: {tracks}")
    print("Canais MIDI alterados (1-based):",
          ", ".join(str(ch + 1) for ch in sorted(channels)) or "nenhum")

    print("\nEventos silenciados:")
    for note in sorted(muted):
        if muted[note]:
            print(f"  note {note}: {muted[note]} NOTE ON")

    print("\nRemapeamentos:")
    for (a, b), count in remapped.items():
        if count:
            print(f"  {a} -> {b}: {count} NOTE ON")

    print("\nO groove principal fica:")
    print("  36 = kick")
    print("  40 = snare")
    print("  42 = closed hat")
    print("Os fills/rolls problematicos ficam mudos.")
    print("\nAgora:")
    print("  make -j8")
    print("\nDepois teste no ROM.")

if __name__ == "__main__":
    main()
