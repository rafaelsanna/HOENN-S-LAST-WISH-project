#!/usr/bin/env python3
from pathlib import Path
import shutil
import datetime
import os

TARGET = Path("sound/songs/midi/mus_abracadabra.mid")

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

def neutralize_pitch_bends(blob):
    if blob[:4] != b"MThd":
        raise ValueError("Arquivo nao parece um MIDI valido.")

    out = bytearray(blob)
    header_len = int.from_bytes(out[4:8], "big")
    pos = 8 + header_len

    bends = 0
    tracks = 0
    channels = set()

    while pos < len(out):
        if out[pos:pos+4] != b"MTrk":
            raise ValueError(f"Esperava MTrk em offset 0x{pos:X}")

        trk_len = int.from_bytes(out[pos+4:pos+8], "big")
        start = pos + 8
        end = start + trk_len
        if end > len(out):
            raise ValueError("Track MIDI truncada.")

        i = start
        running = None
        tracks += 1

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
                        f"Running status invalido na track {tracks}."
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
                    0xF1:1, 0xF2:2, 0xF3:1, 0xF6:0,
                    0xF8:0, 0xFA:0, 0xFB:0, 0xFC:0, 0xFE:0,
                }.get(status, 0)
                continue

            kind = status & 0xF0
            ch = status & 0x0F
            data_len = 1 if kind in (0xC0, 0xD0) else 2

            if i + data_len > end:
                raise ValueError("Evento MIDI truncado.")

            if kind == 0xE0:
                # MIDI pitchwheel center = 8192 => LSB 0, MSB 64.
                # We keep the event length/timing exactly the same, only
                # neutralize the pitch movement.
                out[i] = 0
                out[i + 1] = 64
                bends += 1
                channels.add(ch)

            i += data_len

        pos = end

    return bytes(out), bends, tracks, channels

def main():
    root = Path.cwd()
    midi = root / TARGET

    if not midi.exists():
        die("Rode da raiz do projeto: cd ~/pokeemerald-expansion")

    print("== ABRACADABRA / REMOVE PITCH-BEND WHINE ==")
    print("Objetivo: matar o efeito de desafinacao/xiado.")
    print("Nao mexe em notas, programas, piano, drumkit ou tempo.")
    print("So centraliza todos os eventos Pitch Bend em 0.\n")

    original = midi.read_bytes()

    try:
        patched, bends, tracks, channels = neutralize_pitch_bends(original)
    except Exception as e:
        die(str(e))

    if bends == 0:
        print("[AVISO] Nao achei nenhum Pitch Bend no MIDI atual.")
        print("Nenhum arquivo foi alterado.")
        return

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_dir = root / "PHYTON/backups" / f"abracadabra_no_pitchbend_{stamp}"
    backup_file(midi, root, backup_dir)

    midi.write_bytes(patched)
    os.utime(midi, None)

    for p in (
        root / "sound/songs/midi/mus_abracadabra.s",
        root / "build/modern/sound/songs/midi/mus_abracadabra.o",
    ):
        if p.exists():
            p.unlink()

    print("Backup:", backup_dir)
    print(f"Tracks verificadas: {tracks}")
    print(f"Pitch Bends neutralizados: {bends}")
    print("Canais MIDI afetados (1-based):",
          ", ".join(str(ch + 1) for ch in sorted(channels)))
    print("\nOK: pitchwheel agora fica sempre no centro.")
    print("Suas alteracoes manuais de instrumentos continuam intactas.")
    print("\nAgora rode:")
    print("  make -j8")
    print("\nDepois reabra/recarregue a Abracadabra no Porydaw e teste no ROM.")

if __name__ == "__main__":
    main()
