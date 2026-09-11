#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os

PACK_ZIP="RADIO_ANIME_PEGASUS_OMOKAGE_KOKUTEN_HARUKA_V2.zip"
EXPECTED_HASHES={'assets/mus_pegasus_fantasy.mid': 'dab25e7729f61773b210cf5bbe0c7edbb325eb62c1f64db7a2ccb77aad91946f', 'assets/mus_omokage.mid': '93524047bbf2f34eee488205ed36fbf3cbbb09dd7c3d8f9fc254eb7f4e8148c8', 'assets/mus_kokuten.mid': '0dfa5dad2e3c46226b1a066eea11a7895ac7774ff68923d77b46a5ea2448e0bb', 'assets/haruka_kanata_rock_metal_gba.mid': 'f41b5879e07ad1c72ed65b71ec60f625c5bf5fa4c1b464c84052aee26c6f405f'}

WIND_WORDS=("flute","sax","saxophone","trumpet","trombone","brass","horn",
            "oboe","clarinet","bassoon","recorder","whistle","pan_flute",
            "piccolo","ocarina","shakuhachi","harmonica")

def die(msg):
    print("\n[ERRO]",msg)
    raise SystemExit(1)

def backup(path,root,bdir):
    if not path.exists(): return
    dst=bdir/path.relative_to(root)
    dst.parent.mkdir(parents=True,exist_ok=True)
    shutil.copy2(path,dst)

def cfg_group(cfgtext,song):
    m=re.search(rf'^{re.escape(song)}\.mid:\s*(.*)$',cfgtext,re.M)
    if not m: return None
    g=re.search(r'(?<!\S)-G_([^\s]+)',m.group(1))
    return g.group(1) if g else None

def find_group(root,name):
    for p in (root/"sound").rglob("*.inc"):
        try: text=p.read_text(errors="ignore")
        except Exception: continue
        if re.search(rf'^\s*voice_group\s+{re.escape(name)}\s*$',text,re.M):
            vv=[x.strip() for x in text.splitlines()
                if x.strip().startswith("voice_") and not x.strip().startswith("voice_group")]
            return p,vv
    return None,None

def scan_groups(root):
    seen=set()
    for p in (root/"sound").rglob("*.inc"):
        try: text=p.read_text(errors="ignore")
        except Exception: continue
        names=re.findall(r'^\s*voice_group\s+([A-Za-z0-9_]+)\s*$',text,re.M)
        if not names: continue
        vv=[x.strip() for x in text.splitlines()
            if x.strip().startswith("voice_") and not x.strip().startswith("voice_group")]
        for name in names:
            if name not in seen:
                seen.add(name)
                yield name,p,vv

def wind(line):
    s=line.lower()
    return any(x in s for x in WIND_WORDS)

def score(line,role):
    s=line.lower()
    if wind(line): return -10000
    if role=="drums":
        return (220 if "drumset" in s else 180 if "drum" in s else 120 if "kit" in s else 0)
    if "drum" in s or "percussion" in s or "kit" in s: return -1000

    val=0
    if role=="bass":
        for tok,pts in (("synth_bass",180),("bass",150),("finger",80),("pick",65),("electric",30)):
            if tok in s: val+=pts
    elif role=="guitar":
        for tok,pts in (("clean_guitar",220),("guitar",150),("clean",130),("nylon",105),
                        ("acoustic",95),("electric",80),("overdrive",70),("distort",55)):
            if tok in s: val+=pts
        if "bass" in s: val-=100
    elif role=="lead_guitar":
        for tok,pts in (("lead_guitar",240),("lead",160),("clean_guitar",180),("guitar",145),
                        ("clean",100),("overdrive",75),("distort",60),("electric",55)):
            if tok in s: val+=pts
        if "bass" in s: val-=100
    elif role=="piano":
        for tok,pts in (("grand_piano",260),("piano",230),("electric_piano",120),("epiano",100)):
            if tok in s: val+=pts
        if "bass" in s: val-=100
    return val

def best(vv,role,used=None,allow_reuse=True):
    used=used or set()
    ranked=sorted(((score(line,role),i,line) for i,line in enumerate(vv)),reverse=True)
    for sc,i,line in ranked:
        if sc>0 and i not in used: return i,line,sc
    if allow_reuse:
        for sc,i,line in ranked:
            if sc>0: return i,line,sc
    return None

def picks_for(vv,need_piano):
    used=set(); out={}
    roles=["bass","guitar","lead_guitar"] + (["piano"] if need_piano else []) + ["drums"]
    for role in roles:
        p=best(vv,role,used)
        if p is None: return None
        slot,line,sc=p
        out[role]=(slot,line)
        used.add(slot)
    return out

def choose_rich(root,prefer_name=None,need_piano=False):
    candidates=[]
    blocked={"diva_pop","pop","abracadabra","resonance","paper_moon","pegasus_fantasy","omokage","kokuten"}
    for name,p,vv in scan_groups(root):
        if name in blocked or len(vv)<5: continue
        pk=picks_for(vv,need_piano)
        if pk is None: continue
        total=sum(score(line,role) for role,(slot,line) in pk.items())
        lname=name.lower()
        if "rock" in lname: total+=250
        if "metal" in lname: total+=180
        if "guitar" in lname: total+=120
        if prefer_name and name==prefer_name: total+=600
        total+=min(len(vv),32)*7
        candidates.append((total,name,p,vv,pk))
    if not candidates:
        die("Nao achei voicegroup rico compativel.")
    candidates.sort(reverse=True,key=lambda x:x[0])
    return candidates[0]

def read_vlq(buf,pos):
    value=0
    while True:
        b=buf[pos]; pos+=1
        value=(value<<7)|(b&0x7F)
        if not (b&0x80): return value,pos

def track_info(track_data,file_start):
    pos=0; running=None; name=""; offs=[]
    while pos<len(track_data):
        _,pos=read_vlq(track_data,pos)
        if pos>=len(track_data): break
        status=track_data[pos]
        if status==0xFF:
            pos+=1
            typ=track_data[pos]; pos+=1
            ln,pos=read_vlq(track_data,pos)
            a=pos; b=pos+ln
            if typ==0x03:
                name=bytes(track_data[a:b]).decode("latin1",errors="ignore")
            pos=b; running=None; continue
        if status in (0xF0,0xF7):
            pos+=1; ln,pos=read_vlq(track_data,pos); pos+=ln; running=None; continue
        if status&0x80:
            running=status; pos+=1
        elif running is None:
            die("MIDI invalido: running status")
        else:
            status=running
        typ=status&0xF0
        if typ in (0xC0,0xD0):
            if typ==0xC0: offs.append(file_start+pos)
            pos+=1
        else:
            pos+=2
    return name,offs

def patch_roles(path,picks):
    data=bytearray(path.read_bytes())
    if data[:4]!=b"MThd": die("MIDI invalido")
    pos=8+int.from_bytes(data[4:8],"big")
    tags={
        "ROLE_BASS":"bass",
        "ROLE_GUITAR":"guitar",
        "ROLE_LEAD_GUITAR":"lead_guitar",
        "ROLE_PIANO":"piano",
        "ROLE_DRUMS":"drums",
    }
    while pos+8<=len(data):
        if data[pos:pos+4]!=b"MTrk": die("MTrk esperado")
        ln=int.from_bytes(data[pos+4:pos+8],"big")
        start=pos+8; end=start+ln
        name,offs=track_info(data[start:end],start)
        role=None
        for tag,r in tags.items():
            if tag in name.upper():
                role=r; break
        if role:
            slot=picks[role][0]
            for off in offs: data[off]=slot
        pos=end
    path.write_bytes(data)

def set_cfg(cfgtext,song,group,reverb):
    m=re.search(rf'^{re.escape(song)}\.mid:\s*(.*)$',cfgtext,re.M)
    if not m: die(f"Nao achei {song}.mid em midi.cfg")
    old=m.group(0); opts=m.group(1)
    if re.search(r'(?<!\S)-G_\S+',opts):
        opts=re.sub(r'(?<!\S)-G_\S+',f'-G_{group}',opts)
    else: opts+=f' -G_{group}'
    if re.search(r'(?<!\S)-R\d+',opts):
        opts=re.sub(r'(?<!\S)-R\d+',f'-R{reverb}',opts)
    else: opts+=f' -R{reverb}'
    if re.search(r'(?<!\S)-V\d+',opts):
        opts=re.sub(r'(?<!\S)-V\d+','-V090',opts)
    else: opts+=' -V090'
    new=f'{song}.mid: '+opts.strip()
    return cfgtext.replace(old,new,1),new

def main():
    root=Path.cwd()
    script_dir=Path(__file__).resolve().parent
    cfg=root/"sound/songs/midi/midi.cfg"
    if not cfg.exists(): die("Rode da raiz: cd ~/pokeemerald-expansion")
    cfgtext=cfg.read_text()

    # OMOKAGE: EXACT SAME current group used by Resonance / Soul Eater.
    soul_group=cfg_group(cfgtext,"mus_resonance")
    if not soul_group:
        die("Nao consegui ler o voicegroup atual de mus_resonance.")
    soul_path,soul_vv=find_group(root,soul_group)
    if soul_path is None: die(f"Nao achei voice_group {soul_group}.")
    soul_picks=picks_for(soul_vv,False)
    if soul_picks is None:
        die(f"O voicegroup atual do Soul Eater ({soul_group}) nao tem bass/guitar/lead/drums seguros.")

    # Pegasus + Haruka need a REAL piano too.
    _,classic_group,classic_path,classic_vv,classic_picks=choose_rich(
        root,prefer_name=soul_group,need_piano=True)

    # Kokuten prefers the Soul Eater rich bank; no piano and ZERO wind.
    kok_picks=soul_picks

    print("== ANIME REMASTER V2 ==")
    print("\nOMOKAGE + KOKUTEN -> MESMO voicegroup atual do Soul Eater:",soul_group)
    print("Arquivo:",soul_path)
    for role,(slot,line) in soul_picks.items():
        print(f"  {role.upper():12s} -> {slot:03d}: {line}")

    print("\nPEGASUS + HARUKA -> banco rico com PIANO:",classic_group)
    print("Arquivo:",classic_path)
    for role,(slot,line) in classic_picks.items():
        print(f"  {role.upper():12s} -> {slot:03d}: {line}")

    zpath=script_dir/PACK_ZIP
    if not zpath.exists(): die(f"Nao achei {PACK_ZIP} ao lado do Python")
    payload={}
    with zipfile.ZipFile(zpath,"r") as z:
        for arc,sha in EXPECTED_HASHES.items():
            data=z.read(arc)
            if hashlib.sha256(data).hexdigest()!=sha: die(f"SHA incorreto: {arc}")
            payload[arc]=data

    # Resolve Haruka's real repo name.
    har_name="haruka_kanata_rock_metal_gba"
    har_target=root/f"sound/songs/midi/{har_name}.mid"
    if not har_target.exists():
        if (root/"sound/songs/midi/mus_haruka_kanata.mid").exists():
            har_name="mus_haruka_kanata"
            har_target=root/f"sound/songs/midi/{har_name}.mid"
        else:
            die("Nao achei Haruka Kanata no repo.")

    targets={
      "assets/mus_pegasus_fantasy.mid":root/"sound/songs/midi/mus_pegasus_fantasy.mid",
      "assets/mus_omokage.mid":root/"sound/songs/midi/mus_omokage.mid",
      "assets/mus_kokuten.mid":root/"sound/songs/midi/mus_kokuten.mid",
      "assets/haruka_kanata_rock_metal_gba.mid":har_target,
    }

    stamp=datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir=root/"PHYTON/backups"/f"anime_peg_omo_kok_har_v2_{stamp}"
    for p in targets.values(): backup(p,root,bdir)
    backup(cfg,root,bdir)

    for arc,p in targets.items():
        p.write_bytes(payload[arc])
        os.utime(p,None)

    patch_roles(targets["assets/mus_pegasus_fantasy.mid"],classic_picks)
    patch_roles(targets["assets/mus_omokage.mid"],soul_picks)
    patch_roles(targets["assets/mus_kokuten.mid"],kok_picks)
    patch_roles(targets["assets/haruka_kanata_rock_metal_gba.mid"],classic_picks)

    lines=[]
    cfgtext,line=set_cfg(cfgtext,"mus_pegasus_fantasy",classic_group,14); lines.append(line)
    cfgtext,line=set_cfg(cfgtext,"mus_omokage",soul_group,14); lines.append(line)
    cfgtext,line=set_cfg(cfgtext,"mus_kokuten",soul_group,12); lines.append(line)
    cfgtext,line=set_cfg(cfgtext,har_name,classic_group,12); lines.append(line)
    cfg.write_text(cfgtext)

    print("\nFORCANDO REBUILD TOTAL:")
    for song in ("mus_pegasus_fantasy","mus_omokage","mus_kokuten",har_name):
        for stale in (
            root/f"sound/songs/midi/{song}.s",
            root/f"build/modern/sound/songs/midi/{song}.o",
            root/f"build/modern/sound/songs/midi/{song}.d",
        ):
            if stale.exists():
                print(" rm -f",stale.relative_to(root)); stale.unlink()
        os.utime(root/f"sound/songs/midi/{song}.mid",None)

    print("\nBackup:",bdir)
    print("\nCFG:")
    for x in lines: print(" ",x)
    print("\nRESULTADO:")
    print(" PEGASUS: bass + guitar + PIANO + drums; zero sopro")
    print(" OMOKAGE: EXATO MESMO voicegroup do Resonance/Soul Eater")
    print(" KOKUTEN: bass + guitar + lead guitar + drums; ZERO sopro")
    print(" HARUKA: SOMENTE guitar + bass + piano + drums")
    print("\nAgora: make -j8")

if __name__=="__main__":
    main()
