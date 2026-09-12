#!/usr/bin/env python3
from pathlib import Path
import zipfile, hashlib, datetime, shutil, re, os

PACK_ZIP = "REPAIR_IVE_SEEN_MUCH_MISSING_MIDI.zip"
MIDI_SHA256 = "faff836e3aa824ce25551f2e881cc27374072f452053c9c39fd1c46fc11fd614"

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def backup(path, root, bdir):
    if not path.exists():
        return
    dst = bdir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def main():
    root = Path.cwd()
    script_dir = Path(__file__).resolve().parent

    cfg = root / "sound/songs/midi/midi.cfg"
    target = root / "sound/songs/midi/mus_ive_seen_much.mid"
    songs_h = root / "include/constants/songs.h"
    song_table = root / "sound/song_table.inc"

    for p in (cfg, songs_h, song_table):
        if not p.exists():
            die(f"Nao achei {p}. Rode da raiz do pokeemerald-expansion.")

    # This is intentionally a repair-only installer:
    # no radio edits, no song IDs, no song_table changes.
    if "MUS_IVE_SEEN_MUCH" not in songs_h.read_text():
        print("[AVISO] MUS_IVE_SEEN_MUCH nao apareceu em songs.h.")
    if not re.search(r'^\s*song\s+mus_ive_seen_much\s*,', song_table.read_text(), re.M):
        print("[AVISO] mus_ive_seen_much nao apareceu no song_table.inc.")

    zpath = script_dir / PACK_ZIP
    if not zpath.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python em PHYTON/.")

    with zipfile.ZipFile(zpath, "r") as z:
        data = z.read("assets/mus_ive_seen_much.mid")

    if hashlib.sha256(data).hexdigest() != MIDI_SHA256:
        die("SHA256 do MIDI nao confere.")

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"ive_seen_much_missing_midi_repair_{stamp}"

    for p in (cfg, target):
        backup(p, root, bdir)

    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_bytes(data)
    os.utime(target, None)

    cfg_text = cfg.read_text()
    line = "mus_ive_seen_much.mid: -G_brothers -R18 -V090"
    m = re.search(r'^mus_ive_seen_much\.mid:.*$', cfg_text, re.M)
    if m:
        cfg_text = cfg_text[:m.start()] + line + cfg_text[m.end():]
    else:
        if cfg_text and not cfg_text.endswith("\n"):
            cfg_text += "\n"
        cfg_text += line + "\n"
    cfg.write_text(cfg_text)

    # Do NOT delete .s here. It is missing and the next explicit make command
    # will generate it from this freshly restored MIDI.
    for stale in (
        root / "build/modern/sound/songs/midi/mus_ive_seen_much.o",
        root / "build/modern/sound/songs/midi/mus_ive_seen_much.d",
    ):
        if stale.exists():
            stale.unlink()

    print("\nREPAIR OK:")
    print("  MIDI restaurado:", target)
    print("  cfg garantido:", line)
    print("  radio/song IDs NAO foram alterados")
    print("  backup:", bdir)
    print("\nAgora rode:")
    print("  make -B sound/songs/midi/mus_ive_seen_much.s")
    print("  make -j8")

if __name__ == "__main__":
    main()
