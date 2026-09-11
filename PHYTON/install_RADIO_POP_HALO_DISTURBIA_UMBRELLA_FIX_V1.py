#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os

PACK_ZIP = "RADIO_POP_HALO_DISTURBIA_UMBRELLA_FIX_V1.zip"
EXPECTED_HASHES = {'assets/mus_halo_beyonce.mid': 'b3c21ec463566e749f50ecba3c969a8f18b63644ffd9a31e9a1c19bcb983eac9', 'assets/mus_disturbia_rihanna.mid': 'f388b29dec12184ab5a03509b55e1dfea638de9e8ae646a110c6165eb6d4ea13', 'assets/mus_umbrella_rihanna.mid': 'b7ba55070cedcb2f44fba511c93119f8ac8fb8512eddffa7ac7c50d28363188e'}

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
    return [x.strip() for x in text.splitlines()
            if x.strip().startswith("voice_")
            and not x.strip().startswith("voice_group")]

def set_cfg_group(cfgtext, song, group, rev="12", vol="090"):
    m = re.search(rf'^{re.escape(song)}\.mid:\s*(.*)$', cfgtext, re.M)
    if not m:
        die(f"Nao achei {song}.mid em midi.cfg.")
    oldline = m.group(0)
    opts = m.group(1)
    if re.search(r'(?<!\S)-G_\S+', opts):
        opts = re.sub(r'(?<!\S)-G_\S+', f'-G_{group}', opts)
    else:
        opts += f' -G_{group}'
    if re.search(r'(?<!\S)-R\d+', opts):
        opts = re.sub(r'(?<!\S)-R\d+', f'-R{rev}', opts)
    else:
        opts += f' -R{rev}'
    if re.search(r'(?<!\S)-V\d+', opts):
        opts = re.sub(r'(?<!\S)-V\d+', f'-V{vol}', opts)
    else:
        opts += f' -V{vol}'
    newline = f'{song}.mid: ' + opts.strip()
    return cfgtext.replace(oldline, newline, 1), newline

def main():
    root=Path.cwd()
    script_dir=Path(__file__).resolve().parent
    cfg=root/"sound/songs/midi/midi.cfg"
    if not cfg.exists():
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    vg=find_vg(root,"abracadabra")
    vv=voices(vg.read_text(errors="ignore"))
    expected={1:"synth_bass",2:"nylon",5:"pizzicato",7:"piano",8:"pink_and_white_drumset"}
    print("== HALO + DISTURBIA + UMBRELLA FIX V1 ==")
    for slot,token in expected.items():
        if slot>=len(vv) or token not in vv[slot].lower():
            got=vv[slot] if slot<len(vv) else "<slot inexistente>"
            die(f"Slot {slot:03d}: esperado '{token}', atual: {got}")
        print(f"  {slot:03d}: {vv[slot]}")

    zpath=script_dir/PACK_ZIP
    if not zpath.exists():
        die(f"Nao achei {PACK_ZIP} ao lado do Python.")

    with zipfile.ZipFile(zpath,"r") as z:
        payload={}
        for arc,sha in EXPECTED_HASHES.items():
            data=z.read(arc)
            if hashlib.sha256(data).hexdigest()!=sha:
                die(f"SHA256 nao confere: {arc}")
            payload[arc]=data

    targets={
        "assets/mus_halo_beyonce.mid": root/"sound/songs/midi/mus_halo_beyonce.mid",
        "assets/mus_disturbia_rihanna.mid": root/"sound/songs/midi/mus_disturbia_rihanna.mid",
        "assets/mus_umbrella_rihanna.mid": root/"sound/songs/midi/mus_umbrella_rihanna.mid",
    }

    stamp=datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir=root/"PHYTON/backups"/f"radio_pop_halo_disturbia_umbrella_v1_{stamp}"
    for p in targets.values(): backup(p,root,bdir)
    backup(cfg,root,bdir)

    for arc,p in targets.items():
        p.write_bytes(payload[arc])
        os.utime(p,None)

    cfgtext=cfg.read_text()
    # HALO: intentionally DO NOT touch its midi.cfg line.
    cfgtext,dline=set_cfg_group(cfgtext,"mus_disturbia_rihanna","abracadabra","12","090")
    cfgtext,uline=set_cfg_group(cfgtext,"mus_umbrella_rihanna","abracadabra","12","090")
    cfg.write_text(cfgtext)

    # Force fresh conversion.
    for song in ("mus_halo_beyonce","mus_disturbia_rihanna","mus_umbrella_rihanna"):
        for p in (
            root/f"sound/songs/midi/{song}.s",
            root/f"build/modern/sound/songs/midi/{song}.o",
        ):
            if p.exists(): p.unlink()

    print("\nBackup:",bdir)
    print("\nHALO:")
    print("  - removidos somente os 7680 ticks / 4 compassos de silencio inicial")
    print("  - instrumentos, notas, velocidades, tempo e midi.cfg preservados")
    print("\nDISTURBIA:")
    print("  - voicegroup abracadabra")
    print("  - 001 synth bass / 002 nylon / 005 pizzicato / 007 piano / 008 drumkit")
    print("  - bateria SOMENTE 36 kick / 40 snare / 42 hat")
    print("  - sem square/triangle 8-bit como timbre final")
    print("  CFG:",dline)
    print("\nUMBRELLA:")
    print("  - voicegroup abracadabra")
    print("  - arranjo separado em bass/nylon/piano/pizzicato")
    print("  - registro agudo de music-box baixado 1 oitava no ostinato")
    print("  - bateria antiga exotica eliminada; novo beat SOMENTE 36/40/42")
    print("  CFG:",uline)
    print("\nAgora: make -j8")

if __name__=="__main__":
    main()
