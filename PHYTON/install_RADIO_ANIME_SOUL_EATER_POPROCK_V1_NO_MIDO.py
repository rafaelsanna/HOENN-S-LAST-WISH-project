#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os

PACK_ZIP = "RADIO_ANIME_SOUL_EATER_RESONANCE_PAPER_MOON_POPROCK_V1.zip"
EXPECTED_HASHES = {'assets/mus_resonance.mid': 'b4c18d927b252ec40508077a5e2c0c2716a126d26fe91e12892bcfc3f2819d29', 'assets/mus_paper_moon.mid': '9dad53586e43512d804c552b2100ec9d4551eaefa39b1e4bc21851538f9185c5'}

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def backup(path, root, bdir):
    if not path.exists():
        return
    dst = bdir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def find_group(root, name):
    for p in (root/"sound").rglob("*.inc"):
        try:
            text=p.read_text(errors="ignore")
        except Exception:
            continue
        if re.search(rf'^\s*voice_group\s+{re.escape(name)}\s*$',text,re.M):
            return p
    return None

def set_cfg(cfgtext, song, group):
    m=re.search(rf'^{re.escape(song)}\.mid:\s*(.*)$',cfgtext,re.M)
    if not m:
        die(f"Nao achei {song}.mid em midi.cfg.")
    old=m.group(0)
    opts=m.group(1)

    # Explicitly preserve each song's dedicated pop-rock bank.
    if re.search(r'(?<!\S)-G_\S+',opts):
        opts=re.sub(r'(?<!\S)-G_\S+',f'-G_{group}',opts)
    else:
        opts += f' -G_{group}'

    # Current generated .s had reverb +50 and mvl 100: too washed-out/hot.
    if re.search(r'(?<!\S)-R\d+',opts):
        opts=re.sub(r'(?<!\S)-R\d+','-R20',opts)
    else:
        opts += ' -R20'

    if re.search(r'(?<!\S)-V\d+',opts):
        opts=re.sub(r'(?<!\S)-V\d+','-V090',opts)
    else:
        opts += ' -V090'

    new=f'{song}.mid: '+opts.strip()
    return cfgtext.replace(old,new,1),new

def main():
    root=Path.cwd()
    script_dir=Path(__file__).resolve().parent
    cfg=root/"sound/songs/midi/midi.cfg"
    if not cfg.exists():
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    # These are already purpose-built banks in the project and sit between diva_pop and metal.
    groups={"mus_resonance":"resonance","mus_paper_moon":"paper_moon"}
    for song,group in groups.items():
        p=find_group(root,group)
        if p is None:
            die(f"Nao achei voice_group {group}.")
        print(f"{song} -> voice_group {group} ({p})")

    zpath=script_dir/PACK_ZIP
    if not zpath.exists():
        die(f"Nao achei {PACK_ZIP} ao lado do Python.")

    payload={}
    with zipfile.ZipFile(zpath,"r") as z:
        for arc,sha in EXPECTED_HASHES.items():
            data=z.read(arc)
            if hashlib.sha256(data).hexdigest()!=sha:
                die(f"SHA256 nao confere: {arc}")
            payload[arc]=data

    targets={
        "assets/mus_resonance.mid":root/"sound/songs/midi/mus_resonance.mid",
        "assets/mus_paper_moon.mid":root/"sound/songs/midi/mus_paper_moon.mid",
    }

    stamp=datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir=root/"PHYTON/backups"/f"soul_eater_poprock_v1_{stamp}"
    for p in targets.values():
        backup(p,root,bdir)
    backup(cfg,root,bdir)

    for arc,p in targets.items():
        p.write_bytes(payload[arc])
        os.utime(p,None)

    cfgtext=cfg.read_text()
    lines=[]
    for song,group in groups.items():
        cfgtext,line=set_cfg(cfgtext,song,group)
        lines.append(line)
    cfg.write_text(cfgtext)

    for song in groups:
        for p in (
            root/f"sound/songs/midi/{song}.s",
            root/f"build/modern/sound/songs/midi/{song}.o",
        ):
            if p.exists():
                p.unlink()

    print("\nBackup:",bdir)
    print("\nCFG:")
    for line in lines:
        print(" ",line)

    print("\nRESONANCE:")
    print("  voicegroup dedicado resonance preservado")
    print("  132 notas duplicadas harmony/lead removidas")
    print("  bass/lead reequilibrados; panorama mais aberto")
    print("  BPM e mudancas de tonalidade originais preservados")

    print("\nPAPER MOON:")
    print("  voicegroup dedicado paper_moon preservado")
    print("  bass reduzido, harmony trazida para frente, lead domada")
    print("  dinamica original preservada sem clipar 127")

    print("\nAMBAS:")
    print("  reverb 50 -> 20")
    print("  master 100 -> 90")
    print("  sem troca para diva_pop e sem forcar metal")
    print("\nAgora: make -j8")

if __name__=="__main__":
    main()
