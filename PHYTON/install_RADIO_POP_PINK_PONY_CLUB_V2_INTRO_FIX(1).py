#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os

PACK_ZIP="RADIO_POP_PINK_PONY_CLUB_V2_INTRO_FIX.zip"
MIDI_SHA256="e6653821ce067212a7094db998ba04b488fc0b35077e423127fb83db66194046"

def die(msg):
    print("\n[ERRO]",msg)
    raise SystemExit(1)

def backup(path,root,bdir):
    if not path.exists():
        return
    dst=bdir/path.relative_to(root)
    dst.parent.mkdir(parents=True,exist_ok=True)
    shutil.copy2(path,dst)

def find_group(root,name):
    for p in (root/"sound").rglob("*.inc"):
        try:
            text=p.read_text(errors="ignore")
        except Exception:
            continue
        if re.search(rf'^\s*voice_group\s+{re.escape(name)}\s*$',text,re.M):
            voices=[x.strip() for x in text.splitlines()
                    if x.strip().startswith("voice_")
                    and not x.strip().startswith("voice_group")]
            return p,voices
    return None,None

def detect_pop(root):
    expected={1:"synth_bass",2:"nylon",5:"pizzicato",7:"piano",8:"pink_and_white_drumset"}
    for name in ("diva_pop","pop","abracadabra"):
        p,v=find_group(root,name)
        if p and all(i < len(v) and token in v[i].lower() for i,token in expected.items()):
            print("Voicegroup POP:",name)
            return name
    die("Nao achei o voicegroup POP seguro.")

def main():
    root=Path.cwd()
    script_dir=Path(__file__).resolve().parent
    target=root/"sound/songs/midi/mus_pink_pony_club_chappell_roan.mid"
    cfg=root/"sound/songs/midi/midi.cfg"

    if not target.exists() or not cfg.exists():
        die("Pink Pony Club ainda nao esta instalada ou voce nao esta na raiz do projeto.")

    group=detect_pop(root)

    zpath=script_dir/PACK_ZIP
    if not zpath.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python.")

    with zipfile.ZipFile(zpath,"r") as z:
        data=z.read("assets/mus_pink_pony_club_chappell_roan.mid")
    if hashlib.sha256(data).hexdigest()!=MIDI_SHA256:
        die("SHA256 do MIDI nao confere.")

    stamp=datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir=root/"PHYTON/backups"/f"pink_pony_intro_fix_v2_{stamp}"
    backup(target,root,bdir)
    backup(cfg,root,bdir)

    target.write_bytes(data)
    os.utime(target,None)

    text=cfg.read_text()
    line=f"mus_pink_pony_club_chappell_roan.mid: -G_{group} -R12 -V090"
    m=re.search(r'^mus_pink_pony_club_chappell_roan\.mid:.*$',text,re.M)
    if m:
        text=text[:m.start()]+line+text[m.end():]
    else:
        text += ("\n" if not text.endswith("\n") else "") + line + "\n"
    cfg.write_text(text)

    print("\nFORCANDO REBUILD DA PINK PONY CLUB:")
    for stale in (
        root/"sound/songs/midi/mus_pink_pony_club_chappell_roan.s",
        root/"build/modern/sound/songs/midi/mus_pink_pony_club_chappell_roan.o",
        root/"build/modern/sound/songs/midi/mus_pink_pony_club_chappell_roan.d",
    ):
        if stale.exists():
            print(" rm -f",stale.relative_to(root))
            stale.unlink()
    os.utime(target,None)

    print("\nV2 INTRO FIX instalada.")
    print("Depois do inicio do baixo, o arranjo V1 foi preservado.")
    print("Agora: make -j8")

if __name__=="__main__":
    main()
