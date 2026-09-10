#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os

PACK_ZIP = "RADIO_POP_360_ABRACADABRA_REMASTER_V1.zip"
MIDI_SHA256 = "a7f2bfcc6ff8a51683014c0de947de8bb36bff4c913723b36f46600974330479"

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def backup(path, root, bdir):
    if not path.exists():
        return
    dst = bdir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def find_vg(root, name):
    hits = []
    for p in (root / "sound").rglob("*.inc"):
        try:
            s = p.read_text(errors="ignore")
        except Exception:
            continue
        if re.search(rf'^\s*voice_group\s+{re.escape(name)}\s*$', s, re.M):
            hits.append(p)
    if not hits:
        die(f"Nao achei voice_group {name}.")
    return hits[0]

def voices(text):
    return [
        x.strip() for x in text.splitlines()
        if x.strip().startswith("voice_")
        and not x.strip().startswith("voice_group")
    ]

def main():
    root = Path.cwd()
    script_dir = Path(__file__).resolve().parent

    midi = root / "sound/songs/midi/mus_360.mid"
    cfg = root / "sound/songs/midi/midi.cfg"

    if not midi.exists() or not cfg.exists():
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    vg = find_vg(root, "abracadabra")
    vv = voices(vg.read_text(errors="ignore"))

    expected = {
        1: "synth_bass",
        2: "nylon",
        5: "pizzicato",
        7: "piano",
        8: "pink_and_white_drumset",
    }

    print("== 360 / CHARLI XCX - ABRACADABRA REMASTER V1 ==")
    print("Baseado no mesmo banco/tecnica que deixou APPLAUSE 10/10.\n")

    for slot, token in expected.items():
        if slot >= len(vv) or token not in vv[slot].lower():
            got = vv[slot] if slot < len(vv) else "<slot inexistente>"
            die(f"Slot {slot:03d}: esperado '{token}', atual: {got}")
        print(f"  {slot:03d}: {vv[slot]}")

    zpath = script_dir / PACK_ZIP
    if not zpath.exists():
        die(
            f"Nao achei {PACK_ZIP} ao lado do Python.\n"
            "Coloque ZIP + Python dentro de PHYTON/."
        )

    with zipfile.ZipFile(zpath, "r") as z:
        data = z.read("assets/mus_360.mid")

    if hashlib.sha256(data).hexdigest() != MIDI_SHA256:
        die("SHA256 do MIDI no ZIP nao confere.")

    cfgtext = cfg.read_text()
    m = re.search(r'^mus_360\.mid:\s*(.*)$', cfgtext, re.M)
    if not m:
        die("Nao achei mus_360.mid em midi.cfg.")

    oldline = m.group(0)
    opts = m.group(1)

    if re.search(r'(?<!\S)-G_\S+', opts):
        opts = re.sub(r'(?<!\S)-G_\S+', '-G_abracadabra', opts)
    else:
        opts += ' -G_abracadabra'

    if re.search(r'(?<!\S)-R\d+', opts):
        opts = re.sub(r'(?<!\S)-R\d+', '-R12', opts)
    else:
        opts += ' -R12'

    if re.search(r'(?<!\S)-V\d+', opts):
        opts = re.sub(r'(?<!\S)-V\d+', '-V090', opts)
    else:
        opts += ' -V090'

    newline = 'mus_360.mid: ' + opts.strip()

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"mus_360_abracadabra_v1_{stamp}"
    backup(midi, root, bdir)
    backup(cfg, root, bdir)

    midi.write_bytes(data)
    os.utime(midi, None)

    cfgtext = cfgtext.replace(oldline, newline, 1)
    cfg.write_text(cfgtext)

    # Force fresh conversion.
    for p in (
        root / "sound/songs/midi/mus_360.s",
        root / "build/modern/sound/songs/midi/mus_360.o",
    ):
        if p.exists():
            p.unlink()

    print("\nBackup:", bdir)
    print("CFG:", newline)
    print("\nMapeamento:")
    print("  Track 1 Lead        -> 007 piano")
    print("  Track 2 Bass        -> 001 synth bass")
    print("  Track 3 Synth Pluck -> 005 pizzicato")
    print("  Track 4 Low Synth   -> 002 nylon guitar")
    print("  Track 5 Drums       -> 008 pink_and_white drumkit")
    print("\nANTI-BEP:")
    print("  Drum note 39 antiga foi eliminada.")
    print("  Bateria nova usa SOMENTE 36 kick / 40 snare / 42 hat.")
    print("  Sem pitch bend.")
    print("  Intro continua imediata; beat entra aos ~8 s como no arranjo original.")
    print("\nAgora:")
    print("  make -j8")

if __name__ == "__main__":
    main()
