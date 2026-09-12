#!/usr/bin/env python3
from pathlib import Path
import zipfile, hashlib, shutil, datetime, os, re

PACK_ZIP="RADIO_ANIME_YOU_SAY_RUN_MHA_EPIC_ROCK_V7_LEAD_GUITAR_ONLY.zip"
MIDI_SHA256="545801670cc6ca68366b0d862bec3e516104320e46439e8bceb52862ca030961"

def die(msg):
    print("\n[ERRO]",msg)
    raise SystemExit(1)

def backup(path,root,bdir):
    if not path.exists():
        return
    dst=bdir/path.relative_to(root)
    dst.parent.mkdir(parents=True,exist_ok=True)
    shutil.copy2(path,dst)

def main():
    root=Path.cwd()
    script_dir=Path(__file__).resolve().parent
    midi=root/"sound/songs/midi/mus_you_say_run.mid"
    cfg=root/"sound/songs/midi/midi.cfg"

    if not midi.exists() or not cfg.exists():
        die("You Say Run nao esta instalada ou voce nao esta na raiz do projeto.")

    zpath=script_dir/PACK_ZIP
    if not zpath.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python.")

    with zipfile.ZipFile(zpath,"r") as z:
        data=z.read("assets/mus_you_say_run.mid")

    if hashlib.sha256(data).hexdigest()!=MIDI_SHA256:
        die("SHA256 do MIDI nao confere.")

    stamp=datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir=root/"PHYTON/backups"/f"you_say_run_v7_lead_only_{stamp}"
    backup(midi,root,bdir)
    backup(cfg,root,bdir)

    midi.write_bytes(data)
    os.utime(midi,None)

    # Keep the same proven rock voicegroup.
    text=cfg.read_text()
    line="mus_you_say_run.mid: -G_hlw_rock_metal -R10 -V090"
    m=re.search(r'^mus_you_say_run\.mid:.*$',text,re.M)
    if m:
        text=text[:m.start()]+line+text[m.end():]
    else:
        text += ("\n" if not text.endswith("\n") else "") + line + "\n"
    cfg.write_text(text)

    print("\nFORCANDO REBUILD:")
    for stale in (
        root/"sound/songs/midi/mus_you_say_run.s",
        root/"build/modern/sound/songs/midi/mus_you_say_run.o",
        root/"build/modern/sound/songs/midi/mus_you_say_run.d",
    ):
        if stale.exists():
            print(" rm -f",stale.relative_to(root))
            stale.unlink()

    os.utime(midi,None)

    print("\nV7 LEAD GUITAR ONLY instalada:")
    print("  - guitarra verde grave/repetitiva REMOVIDA por completo")
    print("  - Distortion Guitar/Electric Guitar de suporte NAO sao mais usados")
    print("  - guitarra agora usa somente Acoustic Gtr (Classic) como linha lead/solo")
    print("  - uma nota principal por ataque; sem power-chord de suporte")
    print("  - piano V6 preservado EXATAMENTE")
    print("  - violin V6 preservado EXATAMENTE")
    print("  - bateria V6 PERFEITA preservada EXATAMENTE")
    print("\nBackup:",bdir)
    print("\nAgora: make -j8")

if __name__=="__main__":
    main()
