#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import datetime
import zipfile
import hashlib
import os

PACK_ZIP = "RADIO_ABRACADABRA_PIANO_INSTANT_V1.zip"
MIDI_SHA256 = "74d9e102ba52537bd87d699425d68e1e735408aad3338ab86297dbdc91550ddb"

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
    candidates = []
    for p in (root / "sound").rglob("*.inc"):
        try:
            text = p.read_text(errors="ignore")
        except Exception:
            continue
        if re.search(
            rf'^\s*voice_group\s+{re.escape(group_name)}\s*$',
            text,
            re.M
        ):
            candidates.append(p)

    if not candidates:
        die(f"Nao achei 'voice_group {group_name}' dentro de sound/**/*.inc")
    if len(candidates) > 1:
        print(f"[AVISO] {group_name}: mais de um arquivo; usando {candidates[0]}")
    return candidates[0]

def voice_lines(text):
    return [
        line for line in text.splitlines()
        if line.strip().startswith("voice_")
        and not line.strip().startswith("voice_group")
    ]

def find_piano_voice_line(root):
    # Primeiro o piano do banco que voce ja testou e gostou.
    for group in ("hlw_rock_metal", "pink_and_white", "fly_me_to_the_moon"):
        try:
            p = find_voicegroup_file(root, group)
        except SystemExit:
            continue

        text = p.read_text(errors="ignore")
        for line in voice_lines(text):
            low = line.lower()
            if "piano" in low:
                return group, p, line

    die(
        "Nao achei uma voice de piano nos bancos "
        "hlw_rock_metal / pink_and_white / fly_me_to_the_moon."
    )

def add_piano_to_abracadabra(root, target):
    text = target.read_text(errors="ignore")
    lines = text.splitlines()

    existing = voice_lines(text)
    for i, line in enumerate(existing):
        if "piano" in line.lower():
            print(f"  Abracadabra ja tem piano no slot {i:03d}:")
            print("   ", line.strip())
            return text, i, False, "existing"

    source_group, source_file, piano_line = find_piano_voice_line(root)

    # Voice IDs are sequential in voice_group. Current Abracadabra has 7,
    # therefore the new one is normally slot 007.
    new_slot = len(existing)

    # Append the exact proven piano definition, preserving its macro/reference.
    # We do NOT replace any current square/bass/sax/pizzicato/drum voice.
    if text and not text.endswith("\n"):
        text += "\n"
    text += piano_line.rstrip() + "\n"

    print(f"  Piano copiado de: voicegroup_{source_group}")
    print(f"  Arquivo fonte: {source_file.relative_to(root)}")
    print(f"  Novo slot Abracadabra: {new_slot:03d}")
    print("  Definicao:")
    print("   ", piano_line.strip())

    return text, new_slot, True, source_group

def load_trimmed_midi(script_dir):
    zpath = script_dir / PACK_ZIP
    if not zpath.exists():
        die(
            f"Nao achei {PACK_ZIP} ao lado deste Python.\n"
            "Coloque ZIP + Python em ~/pokeemerald-expansion/PHYTON/"
        )

    with zipfile.ZipFile(zpath, "r") as z:
        data = z.read("assets/mus_abracadabra.mid")

    got = hashlib.sha256(data).hexdigest()
    if got != MIDI_SHA256:
        die("SHA256 do MIDI no ZIP nao confere.")
    return data

def main():
    root = Path.cwd()
    script_dir = Path(__file__).resolve().parent

    midi = root / "sound/songs/midi/mus_abracadabra.mid"
    cfg = root / "sound/songs/midi/midi.cfg"

    if not midi.exists() or not cfg.exists():
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    cfg_text = cfg.read_text()
    m = re.search(r'^mus_abracadabra\.mid:\s*(.+)$', cfg_text, re.M)
    if not m:
        die("Nao achei mus_abracadabra.mid em midi.cfg.")

    opts = m.group(1).strip()
    if "-G_abracadabra" not in opts:
        die(
            "Abracadabra nao esta usando -G_abracadabra no midi.cfg.\n"
            f"Linha atual: mus_abracadabra.mid: {opts}"
        )

    vg = find_voicegroup_file(root, "abracadabra")
    trimmed_data = load_trimmed_midi(script_dir)

    print("== ABRACADABRA / PIANO + INSTANT START ==")
    print("Mantem voicegroup_abracadabra.")
    print("Adiciona piano sem remover seus instrumentos atuais.")
    print("Remove exatamente o silencio inicial do MIDI.\n")
    print("Voicegroup alvo:", vg.relative_to(root))
    print("midi.cfg:", opts)

    new_vg_text, piano_slot, vg_changed, source_group = add_piano_to_abracadabra(
        root, vg
    )

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_dir = root / "PHYTON/backups" / f"abracadabra_piano_instant_{stamp}"
    backup_file(midi, root, backup_dir)
    backup_file(vg, root, backup_dir)

    if vg_changed:
        vg.write_text(new_vg_text)

    midi.write_bytes(trimmed_data)
    os.utime(midi, None)

    # Force regeneration of the song assembly/object.
    for p in (
        root / "sound/songs/midi/mus_abracadabra.s",
        root / "build/modern/sound/songs/midi/mus_abracadabra.o",
    ):
        if p.exists():
            p.unlink()

    # Voicegroup assembler dependency paths vary; remove only known build
    # objects if they exist. Source files remain untouched.
    for p in (
        root / "build/modern/sound/voicegroups.o",
        root / "build/modern/sound/voicegroups/abracadabra.o",
    ):
        if p.exists():
            p.unlink()

    vg.touch()
    midi.touch()

    print("\nBackup:", backup_dir)
    print("MIDI: inicio movido para tick 0")
    print(f"Piano disponivel no slot: {piano_slot:03d}")
    if vg_changed:
        print(f"Fonte do piano: voicegroup_{source_group}")
    print("\nIMPORTANTE:")
    print("  Eu so ADICIONEI o piano ao banco.")
    print("  Nao troquei automaticamente nenhuma Track para piano.")
    print("  No Porydaw, reabra/recarregue o projeto e escolha o novo slot")
    print(f"  {piano_slot:03d} nas Tracks que voce quiser.")
    print("\nAgora rode:")
    print("  make -j8")

if __name__ == "__main__":
    main()
