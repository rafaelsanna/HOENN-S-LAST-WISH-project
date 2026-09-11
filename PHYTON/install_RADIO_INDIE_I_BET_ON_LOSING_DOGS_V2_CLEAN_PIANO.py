#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os

PACK_ZIP="RADIO_INDIE_I_BET_ON_LOSING_DOGS_V2_CLEAN_PIANO.zip"
MIDI_SHA256="cedeab5c9b1a48c5618f4aab7123d1aa8c7b8be1586762070fc94728c4cd8cef"

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
    expected={1:"synth_bass",7:"piano",8:"pink_and_white_drumset"}
    for name in ("diva_pop","pop","abracadabra"):
        p,v=find_group(root,name)
        if p and all(i<len(v) and tok in v[i].lower() for i,tok in expected.items()):
            print("Banco piano seguro:",name)
            return name
    die("Nao achei banco piano seguro.")

def main():
    root=Path.cwd()
    script_dir=Path(__file__).resolve().parent
    target=root/"sound/songs/midi/mus_i_bet_on_losing_dogs_mitski.mid"
    cfg=root/"sound/songs/midi/midi.cfg"

    if not target.exists() or not cfg.exists():
        die("I Bet on Losing Dogs ainda nao esta instalada ou voce nao esta na raiz.")

    group=detect_pop(root)

    zpath=script_dir/PACK_ZIP
    if not zpath.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python.")

    with zipfile.ZipFile(zpath,"r") as z:
        data=z.read("assets/mus_i_bet_on_losing_dogs_mitski.mid")
    if hashlib.sha256(data).hexdigest()!=MIDI_SHA256:
        die("SHA256 do MIDI nao confere.")

    stamp=datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir=root/"PHYTON/backups"/f"losing_dogs_clean_piano_v2_{stamp}"
    backup(target,root,bdir)
    backup(cfg,root,bdir)

    target.write_bytes(data)
    os.utime(target,None)

    text=cfg.read_text()
    line=f"mus_i_bet_on_losing_dogs_mitski.mid: -G_{group} -R10 -V090"
    m=re.search(r'^mus_i_bet_on_losing_dogs_mitski\.mid:.*$',text,re.M)
    if m:
        text=text[:m.start()]+line+text[m.end():]
    else:
        text += ("\n" if not text.endswith("\n") else "") + line + "\n"
    cfg.write_text(text)

    print("\nFORCANDO REBUILD:")
    for stale in (
        root/"sound/songs/midi/mus_i_bet_on_losing_dogs_mitski.s",
        root/"build/modern/sound/songs/midi/mus_i_bet_on_losing_dogs_mitski.o",
        root/"build/modern/sound/songs/midi/mus_i_bet_on_losing_dogs_mitski.d",
    ):
        if stale.exists():
            print(" rm -f",stale.relative_to(root))
            stale.unlink()
    os.utime(target,None)

    print("\nV2 CLEAN PIANO instalada.")
    print("  - melodia real restaurada do MIDI original")
    print("  - duplicacao Music Box/Violin removida")
    print("  - glissandos/corridas cromaticas removidos")
    print("  - acordes limitados a 2 notas por ataque")
    print("  - baixo e bateria bem discretos")
    print("Agora: make -j8")

if __name__=="__main__":
    main()
