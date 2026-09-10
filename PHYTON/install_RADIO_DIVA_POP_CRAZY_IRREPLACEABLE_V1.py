#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os

PACK_ZIP = "RADIO_DIVA_POP_CRAZY_IRREPLACEABLE_V1.zip"
ASSETS = {
    "mus_crazy_in_love_beyonce": "2eb2c6793a7a6622badc4836e94dc192e123f21654d238a944409940aed72921",
    "mus_irreplaceable_beyonce": "77d8d834631a232f8af8073358e55769e47a2edc3f91e8bc11a277f0cdd37e7d",
}

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def backup(path, root, bdir):
    if not path.exists():
        return
    dst=bdir/path.relative_to(root)
    dst.parent.mkdir(parents=True,exist_ok=True)
    shutil.copy2(path,dst)

def find_group_file(root, group):
    hits=[]
    for p in (root/"sound").rglob("*.inc"):
        try: s=p.read_text(errors="ignore")
        except Exception: continue
        if re.search(rf'^\s*voice_group\s+{re.escape(group)}\s*$',s,re.M):
            hits.append(p)
    if not hits:
        return None
    return hits[0]

def voice_lines(text):
    return [x.strip() for x in text.splitlines()
            if x.strip().startswith("voice_")
            and not x.strip().startswith("voice_group")]

def validate_diva_bank(text):
    vv=voice_lines(text)
    expected={1:"synth_bass",2:"nylon",5:"pizzicato",7:"piano",8:"pink_and_white_drumset"}
    for slot,token in expected.items():
        if slot>=len(vv) or token not in vv[slot].lower():
            got=vv[slot] if slot<len(vv) else "<inexistente>"
            die(f"Voice slot {slot:03d}: esperado '{token}', atual: {got}")
    return vv

def main():
    root=Path.cwd()
    script_dir=Path(__file__).resolve().parent
    cfg=root/"sound/songs/midi/midi.cfg"
    if not cfg.exists():
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    oldvg=find_group_file(root,"abracadabra")
    newvg=find_group_file(root,"diva_pop")

    if newvg is not None:
        vg=newvg
        vgtext=vg.read_text(errors="ignore")
        print("voicegroup ja se chama diva_pop:",vg.relative_to(root))
    elif oldvg is not None:
        vg=oldvg
        vgtext=vg.read_text(errors="ignore")
        print("Renomeando voicegroup_abracadabra -> voicegroup_diva_pop")
        print("Arquivo mantido:",vg.relative_to(root))
    else:
        die("Nao achei voice_group abracadabra nem diva_pop.")

    vv=validate_diva_bank(vgtext)
    print("\nBanco DIVA POP validado:")
    for slot in (1,2,5,7,8):
        print(f"  {slot:03d}: {vv[slot]}")

    zpath=script_dir/PACK_ZIP
    if not zpath.exists():
        die(f"Nao achei {PACK_ZIP} ao lado do Python.")

    payload={}
    with zipfile.ZipFile(zpath,"r") as z:
        for stem,sha in ASSETS.items():
            data=z.read(f"assets/{stem}.mid")
            if hashlib.sha256(data).hexdigest()!=sha:
                die("SHA256 invalido: "+stem)
            payload[stem]=data

    cfgtext=cfg.read_text()

    # Capture every song currently using the old bank so its .s gets regenerated.
    old_users=[]
    for m in re.finditer(r'^([A-Za-z0-9_]+)\.mid:\s*(.*-G_abracadabra(?:\s|$).*)$',cfgtext,re.M):
        old_users.append(m.group(1))

    stamp=datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir=root/"PHYTON/backups"/f"diva_pop_crazy_irreplaceable_v1_{stamp}"
    backup(cfg,root,bdir)
    backup(vg,root,bdir)

    # Rename only the group symbol, not the filename, to avoid breaking any
    # project-side include convention. Porydaw/engine will see DIVA_POP.
    if oldvg is not None and newvg is None:
        vgtext=re.sub(r'^(\s*voice_group\s+)abracadabra(\s*)$',
                      r'\1diva_pop\2',vgtext,count=1,flags=re.M)
        vg.write_text(vgtext)

    # Every old -G_abracadabra becomes -G_diva_pop so Abracadabra, Applause,
    # 360 and any other song already sharing the bank keep working.
    cfgtext=cfgtext.replace("-G_abracadabra","-G_diva_pop")

    settings={
        "mus_crazy_in_love_beyonce":("-R10","-V086"),
        "mus_irreplaceable_beyonce":("-R12","-V086"),
    }

    for stem,(rev,vol) in settings.items():
        midi=root/"sound/songs/midi"/f"{stem}.mid"
        if not midi.exists():
            die("MIDI instalado faltando: "+str(midi))
        backup(midi,root,bdir)
        midi.write_bytes(payload[stem])
        os.utime(midi,None)

        pat=rf'^{re.escape(stem)}\.mid:\s*(.*)$'
        mm=re.search(pat,cfgtext,re.M)
        if not mm:
            die(f"Nao achei {stem}.mid no midi.cfg")
        opts=mm.group(1)
        if re.search(r'(?<!\S)-G_\S+',opts):
            opts=re.sub(r'(?<!\S)-G_\S+','-G_diva_pop',opts)
        else: opts+=' -G_diva_pop'
        if re.search(r'(?<!\S)-R\d+',opts):
            opts=re.sub(r'(?<!\S)-R\d+',rev,opts)
        else: opts+=' '+rev
        if re.search(r'(?<!\S)-V\d+',opts):
            opts=re.sub(r'(?<!\S)-V\d+',vol,opts)
        else: opts+=' '+vol
        cfgtext=re.sub(pat,f"{stem}.mid: {opts.strip()}",cfgtext,flags=re.M)

    cfg.write_text(cfgtext)

    # Remove stale song assembly for every previous abracadabra-bank user plus
    # the two remasters. This prevents old voicegroup_abracadabra references.
    regen=set(old_users)|set(ASSETS)
    for stem in sorted(regen):
        for p in (
            root/"sound/songs/midi"/f"{stem}.s",
            root/"build/modern/sound/songs/midi"/f"{stem}.o",
        ):
            if p.exists(): p.unlink()

    # Search for remaining source references to old symbol. Generated song .s
    # were removed above. Change exact symbol only.
    changed_refs=[]
    for top in ("sound","src","data","include"):
        d=root/top
        if not d.exists(): continue
        for p in d.rglob("*"):
            if not p.is_file() or p==vg: continue
            if p.suffix not in (".s",".inc",".c",".h"): continue
            try: s=p.read_text(errors="ignore")
            except Exception: continue
            if "voicegroup_abracadabra" in s:
                backup(p,root,bdir)
                p.write_text(s.replace("voicegroup_abracadabra","voicegroup_diva_pop"))
                changed_refs.append(str(p.relative_to(root)))

    # Audio object cache is cheap to rebuild and was already proven to matter
    # for this project after voicegroup edits.
    audio_build=root/"build/modern/sound"
    if audio_build.exists():
        shutil.rmtree(audio_build)

    print("\nBackup:",bdir)
    print("\nVOICEGROUP:")
    print("  voicegroup_abracadabra -> voicegroup_diva_pop")
    print("  O arquivo .inc fica com o mesmo nome por seguranca.")
    print("  Todos -G_abracadabra do midi.cfg -> -G_diva_pop")
    print(f"  Songs marcadas para regenerar: {len(regen)}")

    print("\nCRAZY IN LOVE:")
    print("  lead -> piano")
    print("  bass -> synth bass")
    print("  hooks -> pizzicato")
    print("  dense stabs -> nylon guitar")
    print("  drums -> pink_and_white drumkit")
    print("  anti-BEP: somente 36/40/42; percussion 54/70 removida")

    print("\nIRREPLACEABLE:")
    print("  lead -> piano")
    print("  bass -> synth bass")
    print("  rhythm/backing -> nylon guitar")
    print("  accents -> pizzicato")
    print("  track fantasma velocity=1 removida")
    print("  drums -> pink_and_white drumkit, somente 36/40/42")

    print("\nAgora:")
    print("  make -j8")

if __name__=="__main__":
    main()
