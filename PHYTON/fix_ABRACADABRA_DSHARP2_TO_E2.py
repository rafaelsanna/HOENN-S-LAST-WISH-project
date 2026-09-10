#!/usr/bin/env python3
from pathlib import Path
import shutil
import datetime
import os

TARGET = Path("sound/songs/midi/mus_abracadabra.mid")
OLD_NOTE = 39  # D#2 / GM Hand Clap
NEW_NOTE = 40  # E2  / GM Electric Snare / snare-like slot

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def backup_file(path, root, backup_dir):
    dst = backup_dir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

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

def patch_drum_note(blob):
    if blob[:4] != b"MThd":
        raise ValueError("Arquivo nao parece ser um MIDI valido.")

    header_len = int.from_bytes(blob[4:8], "big")
    pos = 8 + header_len
    out = bytearray(blob)

    changed_note_on = 0
    changed_note_off = 0
    tracks_scanned = 0

    while pos < len(out):
        if out[pos:pos+4] != b"MTrk":
            raise ValueError(f"Esperava MTrk em offset 0x{pos:X}.")

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
                        f"Running status invalido na track {tracks_scanned}."
                    )
                status = running

            if status == 0xFF:
                if i >= end:
                    raise ValueError("Meta event truncado.")
                i += 1  # meta type
                ln, i = read_vlq(out, i)
                i += ln
                continue

            if status in (0xF0, 0xF7):
                ln, i = read_vlq(out, i)
                i += ln
                continue

            if status >= 0xF0:
                i += {
                    0xF1: 1,
                    0xF2: 2,
                    0xF3: 1,
                    0xF6: 0,
                    0xF8: 0,
                    0xFA: 0,
                    0xFB: 0,
                    0xFC: 0,
                    0xFE: 0,
                }.get(status, 0)
                continue

            kind = status & 0xF0
            ch = status & 0x0F
            data_len = 1 if kind in (0xC0, 0xD0) else 2

            if i + data_len > end:
                raise ValueError("Evento MIDI truncado.")

            # Channel 10 in MIDI UI == channel index 9.
            if ch == 9 and kind in (0x80, 0x90):
                note_pos = i
                note = out[note_pos]
                vel = out[i + 1]

                if note == OLD_NOTE:
                    out[note_pos] = NEW_NOTE
                    if kind == 0x90 and vel > 0:
                        changed_note_on += 1
                    else:
                        changed_note_off += 1

            i += data_len

        pos = end

    return bytes(out), tracks_scanned, changed_note_on, changed_note_off

def main():
    root = Path.cwd()
    midi = root / TARGET

    if not midi.exists():
        die("Rode da raiz do projeto: cd ~/pokeemerald-expansion")

    print("== ABRACADABRA / REMOVE BEEP D#2 ==")
    print("Mudanca unica:")
    print("  bateria canal 10: D#2 / MIDI 39 -> E2 / MIDI 40")
    print("Todo o resto do MIDI fica byte-a-byte igual.\n")

    original = midi.read_bytes()

    try:
        patched, tracks, note_ons, note_offs = patch_drum_note(original)
    except Exception as e:
        die(str(e))

    if note_ons == 0:
        print("[AVISO] Nao achei nenhum NOTE ON D#2/39 no canal de bateria.")
        print("Nenhum arquivo foi alterado.")
        return

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_dir = root / "PHYTON/backups" / f"abracadabra_dsharp2_to_e2_{stamp}"
    backup_file(midi, root, backup_dir)

    midi.write_bytes(patched)
    os.utime(midi, None)

    # Force mid2agb + assembler regeneration.
    for p in (
        root / "sound/songs/midi/mus_abracadabra.s",
        root / "build/modern/sound/songs/midi/mus_abracadabra.o",
    ):
        if p.exists():
            p.unlink()

    print("Backup:", backup_dir)
    print(f"Tracks verificadas: {tracks}")
    print(f"D#2 NOTE ON  alterados: {note_ons}")
    print(f"D#2 NOTE OFF alterados: {note_offs}")
    print("\nOK: D#2 agora toca como E2.")
    print("Nenhuma outra nota/instrumento/track foi remapeada.")
    print("\nAgora rode:")
    print("  make -j8")
    print("\nDepois reabra/recarregue a musica no Porydaw para conferir.")

if __name__ == "__main__":
    main()
