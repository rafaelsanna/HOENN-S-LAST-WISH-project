#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import datetime
import os
from collections import Counter

TARGET_GROUP = "abracadabra"
REFERENCE_GROUP = "pink_and_white"
REFERENCE_MIDI = "mus_broken_hearted_girl_beyonce.mid"
TARGET_MIDI = "mus_abracadabra.mid"

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def backup_file(path, root, backup_dir):
    if not path.exists():
        return
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
    if len(hits) > 1:
        print(f"[AVISO] Mais de um arquivo para {group_name}; usando {hits[0]}")
    return hits[0]

def get_voice_lines(text):
    return [
        line for line in text.splitlines()
        if line.strip().startswith("voice_")
        and not line.strip().startswith("voice_group")
    ]

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

def dominant_program_on_channel(blob, wanted_channel=9):
    if blob[:4] != b"MThd":
        raise ValueError("MIDI invalido")
    hlen = int.from_bytes(blob[4:8], "big")
    pos = 8 + hlen
    current = [0] * 16
    usage = Counter()

    while pos < len(blob):
        if blob[pos:pos+4] != b"MTrk":
            raise ValueError("MTrk esperado")
        ln = int.from_bytes(blob[pos+4:pos+8], "big")
        trk = blob[pos+8:pos+8+ln]
        i = 0
        running = None

        while i < len(trk):
            _, i = read_vlq(trk, i)
            if i >= len(trk):
                break

            b = trk[i]
            if b & 0x80:
                status = b
                i += 1
                if status < 0xF0:
                    running = status
                elif status in (0xF0, 0xF7, 0xFF):
                    running = None
            else:
                if running is None:
                    raise ValueError("running status invalido")
                status = running

            if status == 0xFF:
                i += 1
                ln2, i = read_vlq(trk, i)
                i += ln2
                continue
            if status in (0xF0, 0xF7):
                ln2, i = read_vlq(trk, i)
                i += ln2
                continue
            if status >= 0xF0:
                i += {0xF1:1, 0xF2:2, 0xF3:1, 0xF6:0}.get(status, 0)
                continue

            kind = status & 0xF0
            ch = status & 0x0F
            n = 1 if kind in (0xC0, 0xD0) else 2

            if kind == 0xC0:
                current[ch] = trk[i]
            elif kind == 0x90:
                vel = trk[i+1]
                if vel > 0 and ch == wanted_channel:
                    usage[current[ch]] += 1

            i += n

        pos += 8 + ln

    return usage.most_common(1)[0][0] if usage else None

def find_reference_drum_voice(root):
    vg_file = find_voicegroup_file(root, REFERENCE_GROUP)
    vg_text = vg_file.read_text(errors="ignore")
    voices = get_voice_lines(vg_text)

    ref_midi = root / "sound/songs/midi" / REFERENCE_MIDI
    if not ref_midi.exists():
        die(f"Nao achei referencia 10/10: {ref_midi}")

    program = dominant_program_on_channel(ref_midi.read_bytes(), 9)

    if program is not None and 0 <= program < len(voices):
        line = voices[program]
        print(f"  Broken Hearted Girl usa program {program:03d} no canal de bateria.")
        print(f"  Voice correspondente: {line.strip()}")
        return vg_file, program, line

    # Fallback by voice text.
    for i, line in enumerate(voices):
        low = line.lower()
        if "drum" in low or "perc" in low or "kit" in low:
            print(f"  Fallback: achei drumkit no slot {i:03d}: {line.strip()}")
            return vg_file, i, line

    die("Nao consegui identificar o drumkit de voicegroup_pink_and_white.")

def find_target_old_drum_slot(target_text):
    voices = get_voice_lines(target_text)
    for i, line in enumerate(voices):
        low = line.lower()
        if "drum" in low or "perc" in low or "kit" in low:
            return i, line
    # Abracadabra original is known to use slot 006 for rs_drumset.
    if len(voices) > 6:
        return 6, voices[6]
    die("Nao achei o drumkit atual da Abracadabra.")

def patch_midi_program(blob, old_program, new_program):
    if blob[:4] != b"MThd":
        raise ValueError("MIDI invalido")

    hlen = int.from_bytes(blob[4:8], "big")
    pos = 8 + hlen
    out = bytearray(blob[:pos])
    changed = 0

    while pos < len(blob):
        if blob[pos:pos+4] != b"MTrk":
            raise ValueError("MTrk esperado")

        ln = int.from_bytes(blob[pos+4:pos+8], "big")
        trk = bytearray(blob[pos+8:pos+8+ln])
        i = 0
        running = None

        while i < len(trk):
            _, i = read_vlq(trk, i)
            if i >= len(trk):
                break

            b = trk[i]
            if b & 0x80:
                status = b
                i += 1
                if status < 0xF0:
                    running = status
                elif status in (0xF0, 0xF7, 0xFF):
                    running = None
            else:
                if running is None:
                    raise ValueError("running status invalido")
                status = running

            if status == 0xFF:
                i += 1
                ln2, i = read_vlq(trk, i)
                i += ln2
                continue
            if status in (0xF0, 0xF7):
                ln2, i = read_vlq(trk, i)
                i += ln2
                continue
            if status >= 0xF0:
                i += {0xF1:1, 0xF2:2, 0xF3:1, 0xF6:0}.get(status, 0)
                continue

            kind = status & 0xF0
            n = 1 if kind in (0xC0, 0xD0) else 2

            if kind == 0xC0 and trk[i] == old_program:
                trk[i] = new_program & 0x7F
                changed += 1

            i += n

        out += b"MTrk" + len(trk).to_bytes(4, "big") + trk
        pos += 8 + ln

    return bytes(out), changed

def main():
    root = Path.cwd()
    midi = root / "sound/songs/midi" / TARGET_MIDI

    if not midi.exists():
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    target_vg = find_voicegroup_file(root, TARGET_GROUP)
    target_text = target_vg.read_text(errors="ignore")
    target_voices = get_voice_lines(target_text)

    print("== ABRACADABRA / POP DRUMKIT ==")
    print("Referencia: Broken Hearted Girl (voicegroup_pink_and_white)")
    print("Objetivo: trocar rs_drumset por um kit sampleado mais POP.\n")

    ref_file, ref_slot, drum_line = find_reference_drum_voice(root)

    # Reuse if this exact drum voice is already present.
    existing_slot = None
    for i, line in enumerate(target_voices):
        if line.strip() == drum_line.strip():
            existing_slot = i
            break

    old_slot, old_line = find_target_old_drum_slot(target_text)

    if existing_slot is None:
        new_slot = len(target_voices)
        if new_slot > 127:
            die("Sem slots MIDI validos livres no voicegroup.")

        if target_text and not target_text.endswith("\n"):
            target_text += "\n"
        target_text += drum_line.rstrip() + "\n"
        vg_changed = True
        print(f"\nDrumkit POP adicionado ao slot {new_slot:03d}.")
    else:
        new_slot = existing_slot
        vg_changed = False
        print(f"\nDrumkit POP ja existe no slot {new_slot:03d}.")

    print(f"Drumkit antigo: slot {old_slot:03d} -> {old_line.strip()}")
    print(f"Drumkit novo:   slot {new_slot:03d} -> {drum_line.strip()}")

    if old_slot == new_slot:
        print("\nA Track de bateria ja aponta para o novo kit.")
        midi_changed = False
        new_midi = midi.read_bytes()
        pc_changed = 0
    else:
        new_midi, pc_changed = patch_midi_program(
            midi.read_bytes(), old_slot, new_slot
        )
        if pc_changed == 0:
            die(
                f"Nao achei program change {old_slot} no MIDI atual. "
                "Nao vou adivinhar qual Track e a bateria."
            )
        midi_changed = True

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_dir = root / "PHYTON/backups" / f"abracadabra_pop_drumkit_{stamp}"

    backup_file(target_vg, root, backup_dir)
    backup_file(midi, root, backup_dir)

    if vg_changed:
        target_vg.write_text(target_text)
        target_vg.touch()

    if midi_changed:
        midi.write_bytes(new_midi)
        os.utime(midi, None)

    # Force regeneration.
    for p in (
        root / "sound/songs/midi/mus_abracadabra.s",
        root / "build/modern/sound/songs/midi/mus_abracadabra.o",
        root / "build/modern/sound/voicegroups.o",
        root / "build/modern/sound/voicegroups/abracadabra.o",
    ):
        if p.exists():
            p.unlink()

    print("\nBackup:", backup_dir)
    print(f"Program changes alterados no MIDI: {pc_changed}")
    print(f"Track de bateria agora usa slot: {new_slot:03d}")
    print("\nIMPORTANTE:")
    print("  O rs_drumset antigo NAO foi apagado.")
    print("  Ele continua no voicegroup para rollback/comparacao.")
    print("  Apenas adicionamos o kit POP e redirecionamos a Track.")
    print("\nAgora:")
    print("  make -j8")
    print("\nDepois reabra/recarregue o Porydaw.")

if __name__ == "__main__":
    main()
