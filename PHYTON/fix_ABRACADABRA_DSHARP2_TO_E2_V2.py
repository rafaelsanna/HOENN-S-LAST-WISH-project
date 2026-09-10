#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import datetime
import os

TARGET_MIDI = Path("sound/songs/midi/mus_abracadabra.mid")
TARGET_GROUP = "abracadabra"
OLD_NOTE = 39  # Porydaw: D#2 in this project
NEW_NOTE = 40  # Porydaw: E2

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

def voice_lines(text):
    return [
        line for line in text.splitlines()
        if line.strip().startswith("voice_")
        and not line.strip().startswith("voice_group")
    ]

def find_drumkit_slots(vg_text):
    slots = []
    for i, line in enumerate(voice_lines(vg_text)):
        low = line.lower()
        # Covers rs_drumset, pink_and_white_drumset, and similar keysplit kits.
        if ("drum" in low or "perc" in low or "kit" in low) and (
            "voice_keysplit" in low or "voice_directsound" in low
            or "voice_square" in low or "voice_noise" in low
        ):
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

def patch_note_in_drumkit_programs(blob, drum_slots):
    if blob[:4] != b"MThd":
        raise ValueError("Arquivo nao parece ser MIDI valido.")

    drum_slot_set = {slot for slot, _ in drum_slots}

    header_len = int.from_bytes(blob[4:8], "big")
    pos = 8 + header_len
    out = bytearray(blob)

    # MIDI program is stateful per channel. Default program is 0.
    current_program = [0] * 16

    changed_on = 0
    changed_off = 0
    channels_changed = set()
    tracks_scanned = 0

    while pos < len(out):
        if out[pos:pos+4] != b"MTrk":
            raise ValueError(f"Esperava MTrk em 0x{pos:X}")

        trk_len = int.from_bytes(out[pos+4:pos+8], "big")
        start = pos + 8
        end = start + trk_len
        if end > len(out):
            raise ValueError("Track MIDI truncada.")

        i = start
        running = None
        tracks_scanned += 1

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
                        f"Running status invalido na track {tracks_scanned}"
                    )
                status = running

            if status == 0xFF:
                if i >= end:
                    raise ValueError("Meta event truncado.")
                i += 1
                ln, i = read_vlq(out, i)
                i += ln
                continue

            if status in (0xF0, 0xF7):
                ln, i = read_vlq(out, i)
                i += ln
                continue

            if status >= 0xF0:
                i += {
                    0xF1: 1, 0xF2: 2, 0xF3: 1, 0xF6: 0,
                    0xF8: 0, 0xFA: 0, 0xFB: 0, 0xFC: 0, 0xFE: 0,
                }.get(status, 0)
                continue

            kind = status & 0xF0
            ch = status & 0x0F
            data_len = 1 if kind in (0xC0, 0xD0) else 2

            if i + data_len > end:
                raise ValueError("Evento MIDI truncado.")

            if kind == 0xC0:
                current_program[ch] = out[i]

            elif kind in (0x80, 0x90):
                note_pos = i
                note = out[note_pos]
                vel = out[i + 1]

                # Crucial fix: do NOT assume GM channel 10.
                # Porydaw/m4a can put a Drumkit voice on any MIDI channel.
                if current_program[ch] in drum_slot_set and note == OLD_NOTE:
                    out[note_pos] = NEW_NOTE
                    channels_changed.add(ch)
                    if kind == 0x90 and vel > 0:
                        changed_on += 1
                    else:
                        changed_off += 1

            i += data_len

        pos = end

    return bytes(out), tracks_scanned, changed_on, changed_off, channels_changed

def main():
    root = Path.cwd()
    midi = root / TARGET_MIDI

    if not midi.exists():
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    vg = find_voicegroup_file(root, TARGET_GROUP)
    vg_text = vg.read_text(errors="ignore")
    drum_slots = find_drumkit_slots(vg_text)

    if not drum_slots:
        die("Nao achei nenhum slot Drumkit no voicegroup_abracadabra.")

    print("== ABRACADABRA / D#2 BEEP FIX V2 ==")
    print("Correcao: detecta Drumkit PELO PROGRAM/VOICE, nao pelo canal MIDI.")
    print("Isso preserva tracks melodicas que por acaso usem D#2.\n")

    print("Slots de bateria encontrados em voicegroup_abracadabra:")
    for slot, line in drum_slots:
        print(f"  {slot:03d}: {line}")

    original = midi.read_bytes()

    try:
        patched, tracks, note_ons, note_offs, channels = \
            patch_note_in_drumkit_programs(original, drum_slots)
    except Exception as e:
        die(str(e))

    if note_ons == 0:
        print("\n[AVISO] Ainda nao achei D#2/39 tocado por nenhum slot Drumkit.")
        print("Nenhum arquivo foi alterado.")
        print("Se isso acontecer, mande o output deste script + screenshot da Track 7.")
        return

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_dir = root / "PHYTON/backups" / f"abracadabra_dsharp2_to_e2_v2_{stamp}"
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
    print(f"Tracks MIDI verificadas: {tracks}")
    print("Canais MIDI alterados (1-based):",
          ", ".join(str(ch + 1) for ch in sorted(channels)))
    print(f"D#2 NOTE ON  -> E2: {note_ons}")
    print(f"D#2 NOTE OFF -> E2: {note_offs}")
    print("\nOK. O D#2 da bateria agora e E2.")
    print("Nenhuma outra nota/track/voicegroup foi alterada.")
    print("\nAgora:")
    print("  make -j8")
    print("\nDepois reabra/recarregue mus_abracadabra no Porydaw.")

if __name__ == "__main__":
    main()
