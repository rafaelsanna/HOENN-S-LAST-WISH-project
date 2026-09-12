#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os

PACK_ZIP = "RADIO_FIX_DOGS_RAISING_GIREI_GUTS_BROTHERS_V2.zip"
EXPECTED_HASHES = {'assets/mus_i_bet_on_losing_dogs_mitski.mid': '8d164989412654c392402d4396477dda2e171b74bba25a494a844323334b7904', 'assets/the_raising_fighting_spirit.mid': '996bb24c1a60199d2136dab0e065b8318c8db9ead2b10cf4e6e2ffa85fb95614', 'assets/mus_pains_theme.mid': '165c1c29f71bc385b85902f3924e7c98e1709c3dfcbb77d7da9c1e6f0e0dcf9c', 'assets/mus_guts_theme.mid': 'f949c8993a1a17a843bc0beceb6cc64eaded1ca0ede987e776b71bf65e86c63f', 'assets/mus_brothers.mid': 'c56d0b8c3f1f1496afdc14ffefaabc2843aad3aecd994bb9f11a6ffb05d0e7c7'}

WIND_WORDS = (
    "flute","sax","saxophone","trumpet","trombone","brass","horn",
    "oboe","clarinet","bassoon","recorder","whistle","pan_flute",
    "piccolo","ocarina","shakuhachi","harmonica"
)

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
            voices=[
                x.strip() for x in text.splitlines()
                if x.strip().startswith("voice_")
                and not x.strip().startswith("voice_group")
            ]
            return p,voices
    return None,None

def detect_pop(root):
    expected={1:"synth_bass",7:"piano",8:"pink_and_white_drumset"}
    for name in ("diva_pop","pop","abracadabra"):
        p,v=find_group(root,name)
        if p and all(i<len(v) and tok in v[i].lower() for i,tok in expected.items()):
            print("Banco piano seguro:",name)
            return name
    die("Nao achei o banco piano seguro para I Bet on Losing Dogs.")

def scan_groups(root):
    seen=set()
    for p in (root/"sound").rglob("*.inc"):
        try:
            text=p.read_text(errors="ignore")
        except Exception:
            continue
        names=re.findall(r'^\s*voice_group\s+([A-Za-z0-9_]+)\s*$',text,re.M)
        if not names:
            continue
        voices=[
            x.strip() for x in text.splitlines()
            if x.strip().startswith("voice_")
            and not x.strip().startswith("voice_group")
        ]
        for name in names:
            if name in seen:
                continue
            seen.add(name)
            yield name,p,voices

def is_wind(line):
    s=line.lower()
    return any(w in s for w in WIND_WORDS)

def rock_score(line,role):
    s=line.lower()
    if is_wind(line):
        return -10000
    if role=="drums":
        return 250 if "drumset" in s else 200 if "drum" in s else 120 if "kit" in s else 0
    if "drum" in s or "percussion" in s or "kit" in s:
        return -1000

    score=0
    if role=="bass":
        for tok,pts in (("synth_bass",190),("bass",165),("finger",80),("pick",70),("electric",30)):
            if tok in s: score+=pts
    elif role=="guitar":
        for tok,pts in (("distort",220),("overdrive",190),("guitar",160),("electric",90),("clean",65)):
            if tok in s: score+=pts
        if "bass" in s: score-=150
    elif role=="piano":
        for tok,pts in (("grand_piano",300),("piano",260),("electric_piano",120),("epiano",100)):
            if tok in s: score+=pts
        if "bass" in s: score-=120
    return score

def choose_rock_group(root):
    candidates=[]
    for name,p,v in scan_groups(root):
        if name in ("diva_pop","pop","abracadabra","pains_theme","guts_theme","brothers"):
            continue
        if len(v)<4:
            continue
        picks={}
        used=set()
        total=0
        ok=True
        for role in ("guitar","bass","piano","drums"):
            ranked=sorted(((rock_score(line,role),i,line) for i,line in enumerate(v)),reverse=True)
            pick=None
            for sc,i,line in ranked:
                if sc>0 and i not in used:
                    pick=(i,line,sc)
                    break
            if pick is None:
                ok=False
                break
            i,line,sc=pick
            used.add(i)
            picks[role]=(i,line)
            total+=sc
        if not ok:
            continue
        lname=name.lower()
        if "rock" in lname: total+=260
        if "metal" in lname: total+=170
        if "guitar" in lname: total+=100
        total+=min(len(v),32)*5
        candidates.append((total,name,p,picks))

    if not candidates:
        die("Nao achei banco rico com guitar+bass+piano+drums para Raising Fighting Spirit.")

    candidates.sort(reverse=True,key=lambda x:x[0])
    total,name,p,picks=candidates[0]
    print("\nRaising Fighting Spirit ->",name)
    print("Arquivo:",p)
    for role,(slot,line) in picks.items():
        print(f"  {role.upper():8s} -> {slot:03d}: {line}")
    return name,picks

def all_simple_directsound(root):
    pool=[]
    for p in (root/"sound").rglob("*.inc"):
        try:
            text=p.read_text(errors="ignore")
        except Exception:
            continue
        for line in text.splitlines():
            s=line.strip()
            if not s.startswith("voice_directsound"):
                continue
            # DirectSound single-line voices are portable between voicegroups.
            clean=s.split("@",1)[0].rstrip()
            pool.append((clean,s,p))
    return pool

def voice_score(line,role):
    s=line.lower()
    if role=="piano":
        score=0
        for tok,pts in (
            ("grand_piano",500),("acoustic_grand",470),("piano",380),
            ("bright_piano",300),("electric_piano",160),("epiano",140)
        ):
            if tok in s: score+=pts
        if "bass" in s: score-=200
        return score

    if role=="violin":
        # Violin is important for Girei/Brothers: do NOT silently substitute
        # a generic string ensemble. We want a real solo-string/violin sample.
        score=0
        for tok,pts in (
            ("violin",700),("fiddle",600),("solo_violin",750),
            ("solo_string",420)
        ):
            if tok in s: score+=pts
        for tok in ("cello","contrabass","bass","ensemble"):
            if tok in s: score-=350
        return score

    if role=="strings":
        score=0
        for tok,pts in (
            ("string_ensemble",600),("strings_ensemble",600),
            ("strings",430),("string",300),("slow_strings",480),
            ("warm_strings",450),("violin",120)
        ):
            if tok in s: score+=pts
        if "bass" in s or "cello" in s:
            score-=200
        return score

    if role=="choir":
        score=0
        for tok,pts in (
            ("choir",700),("voice_ooh",650),("voice_oohs",650),
            ("aahs",650),("aah",500),("vocal",500),("chorus",420),
            ("voice",240)
        ):
            if tok in s: score+=pts
        for tok in ("speech","noise","guitar","bass"):
            if tok in s: score-=300
        return score

    return 0

def choose_orchestra_voices(root):
    pool=all_simple_directsound(root)
    chosen={}
    used=set()

    for role in ("piano","violin","strings","choir"):
        ranked=sorted(
            ((voice_score(original,role),clean,original,p)
             for clean,original,p in pool),
            reverse=True,
            key=lambda x:x[0]
        )
        pick=None
        for sc,clean,original,p in ranked:
            if sc<=0:
                break
            # Avoid reusing exact same definition for distinct roles.
            if clean in used:
                continue
            pick=(clean,original,p,sc)
            break

        if pick is None:
            if role=="choir":
                print("\n[AVISO] Nenhum choir DirectSound reconhecido; usando strings como backing vocal.")
                chosen["choir"]=chosen["strings"]
                continue
            die(f"Nao achei uma voz DirectSound confiavel para {role}. Para VIOLIN eu parei de proposito em vez de substituir por sopro/strings genericas.")

        clean,original,p,sc=pick
        chosen[role]=(clean,original,p)
        used.add(clean)

    print("\nPALETA ORQUESTRAL encontrada no projeto:")
    for role,(clean,original,p) in chosen.items():
        print(f"  {role.upper():7s} -> {original}")
        print("           fonte:",p)
    return chosen

def rewrite_dedicated_group(root,group,new_roles,orchestra,bdir):
    p,old=find_group(root,group)
    if p is None:
        die(f"Nao achei voice_group {group}.")

    backup(p,root,bdir)
    text=p.read_text(errors="ignore")
    lines=text.splitlines()

    group_idx=None
    next_group=len(lines)
    pat=re.compile(r'^\s*voice_group\s+'+re.escape(group)+r'\s*$')

    for i,line in enumerate(lines):
        if pat.match(line):
            group_idx=i
            break
    if group_idx is None:
        die(f"Declaracao voice_group {group} nao encontrada.")

    for i in range(group_idx+1,len(lines)):
        if re.match(r'^\s*voice_group\s+[A-Za-z0-9_]+\s*$',lines[i]):
            next_group=i
            break

    # Remove only voice definitions inside THIS voicegroup block.
    before=lines[:group_idx+1]
    block=lines[group_idx+1:next_group]
    after=lines[next_group:]
    block=[line for line in block
           if not (line.strip().startswith("voice_")
                   and not line.strip().startswith("voice_group"))]

    new_voice_lines=[]
    for slot,role in enumerate(new_roles):
        clean=orchestra[role][0]
        new_voice_lines.append(f"    {clean} @ {slot} - HLW {role}")

    new_lines=before+new_voice_lines+block+after
    p.write_text("\n".join(new_lines)+"\n")

    print(f"\nvoice_group {group} atualizado:")
    for i,role in enumerate(new_roles):
        print(f"  {i:03d} = {role}")
    return p

def read_vlq(buf,pos):
    value=0
    while True:
        b=buf[pos]; pos+=1
        value=(value<<7)|(b&0x7F)
        if not (b&0x80):
            return value,pos

def track_name_program_offsets(track_data,file_start):
    pos=0
    running=None
    name=""
    offsets=[]
    while pos<len(track_data):
        _,pos=read_vlq(track_data,pos)
        if pos>=len(track_data):
            break
        status=track_data[pos]
        if status==0xFF:
            pos+=1
            if pos>=len(track_data): break
            typ=track_data[pos]; pos+=1
            ln,pos=read_vlq(track_data,pos)
            a=pos; b=pos+ln
            if typ==0x03:
                name=bytes(track_data[a:b]).decode("latin1",errors="ignore")
            pos=b; running=None
            continue
        if status in (0xF0,0xF7):
            pos+=1
            ln,pos=read_vlq(track_data,pos)
            pos+=ln; running=None
            continue
        if status&0x80:
            running=status; pos+=1
        elif running is None:
            die("MIDI invalido: running status")
        else:
            status=running
        typ=status&0xF0
        if typ in (0xC0,0xD0):
            if typ==0xC0:
                offsets.append(file_start+pos)
            pos+=1
        else:
            pos+=2
    return name,offsets

def patch_raising_programs(path,picks):
    data=bytearray(path.read_bytes())
    if data[:4]!=b"MThd":
        die("Raising MIDI invalido.")
    tags={
        "ROLE_GUITAR":"guitar",
        "ROLE_BASS":"bass",
        "ROLE_PIANO":"piano",
        "ROLE_DRUMS":"drums",
    }
    pos=8+int.from_bytes(data[4:8],"big")
    while pos+8<=len(data):
        if data[pos:pos+4]!=b"MTrk":
            die("MTrk esperado.")
        ln=int.from_bytes(data[pos+4:pos+8],"big")
        start=pos+8; end=start+ln
        name,offs=track_name_program_offsets(data[start:end],start)
        role=None
        for tag,r in tags.items():
            if tag in name.upper():
                role=r; break
        if role:
            slot=picks[role][0]
            for off in offs:
                data[off]=slot
        pos=end
    path.write_bytes(data)

def resolve_song(root,candidates):
    for stem in candidates:
        p=root/f"sound/songs/midi/{stem}.mid"
        if p.exists():
            return stem,p
    die("Nao achei nenhum destes MIDIs no repo: "+", ".join(candidates))

def set_cfg(text,stem,group,reverb,volume=90):
    line=f"{stem}.mid: -G_{group} -R{reverb} -V{volume:03d}"
    m=re.search(r'^'+re.escape(stem)+r'\.mid:.*$',text,re.M)
    if m:
        return text[:m.start()]+line+text[m.end():]
    if text and not text.endswith("\n"):
        text+="\n"
    return text+line+"\n"

def main():
    root=Path.cwd()
    script_dir=Path(__file__).resolve().parent
    cfg_path=root/"sound/songs/midi/midi.cfg"
    if not cfg_path.exists():
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    pop_group=detect_pop(root)
    rock_group,rock_picks=choose_rock_group(root)
    orchestra=choose_orchestra_voices(root)

    targets={}
    stems={}

    stems["dogs"],targets["assets/mus_i_bet_on_losing_dogs_mitski.mid"]=resolve_song(
        root,("mus_i_bet_on_losing_dogs_mitski",)
    )
    stems["raising"],targets["assets/the_raising_fighting_spirit.mid"]=resolve_song(
        root,("the_raising_fighting_spirit","mus_the_raising_fighting_spirit")
    )
    stems["pain"],targets["assets/mus_pains_theme.mid"]=resolve_song(root,("mus_pains_theme",))
    stems["guts"],targets["assets/mus_guts_theme.mid"]=resolve_song(root,("mus_guts_theme",))
    stems["brothers"],targets["assets/mus_brothers.mid"]=resolve_song(root,("mus_brothers",))

    zpath=script_dir/PACK_ZIP
    if not zpath.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python.")

    payload={}
    with zipfile.ZipFile(zpath,"r") as z:
        for arc,sha in EXPECTED_HASHES.items():
            data=z.read(arc)
            if hashlib.sha256(data).hexdigest()!=sha:
                die(f"SHA256 nao confere: {arc}")
            payload[arc]=data

    stamp=datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir=root/"PHYTON/backups"/f"anime_orchestra_rock_fix_v2_{stamp}"
    backup(cfg_path,root,bdir)
    for p in targets.values():
        backup(p,root,bdir)

    # Upgrade the three song-specific orchestral banks.
    # Slot order is intentionally the same as the MIDI program numbers.
    rewrite_dedicated_group(root,"pains_theme",("piano","violin","strings"),orchestra,bdir)
    rewrite_dedicated_group(root,"guts_theme",("piano","violin","choir"),orchestra,bdir)
    rewrite_dedicated_group(root,"brothers",("piano","violin","strings"),orchestra,bdir)

    # Install MIDI payload.
    for arc,p in targets.items():
        p.write_bytes(payload[arc])
        os.utime(p,None)

    # Raising uses a rich existing rock bank, so patch its role programs dynamically.
    patch_raising_programs(targets["assets/the_raising_fighting_spirit.mid"],rock_picks)

    cfg=cfg_path.read_text()
    cfg=set_cfg(cfg,stems["dogs"],pop_group,10,90)
    cfg=set_cfg(cfg,stems["raising"],rock_group,12,90)
    cfg=set_cfg(cfg,stems["pain"],"pains_theme",18,90)
    cfg=set_cfg(cfg,stems["guts"],"guts_theme",18,90)
    cfg=set_cfg(cfg,stems["brothers"],"brothers",18,90)
    cfg_path.write_text(cfg)

    print("\nFORCANDO REBUILD DAS 5 MUSICAS:")
    for stem in stems.values():
        for stale in (
            root/f"sound/songs/midi/{stem}.s",
            root/f"build/modern/sound/songs/midi/{stem}.o",
            root/f"build/modern/sound/songs/midi/{stem}.d",
        ):
            if stale.exists():
                print(" rm -f",stale.relative_to(root))
                stale.unlink()
        os.utime(root/f"sound/songs/midi/{stem}.mid",None)

    print("\nBACKUP:",bdir)
    print("\nRESULTADO:")
    print(" I BET ON LOSING DOGS: mesma V2 perfeita, primeiro som movido para tick 0")
    print(" RAISING FIGHTING SPIRIT: ONE heavy guitar + bass + piano + drums")
    print(" GIREI: piano + VIOLIN + strings, tempo original lento, sem sopro")
    print(" GUTS THEME: piano + violin + CHOIR/backing vocal")
    print(" BROTHERS: piano + VIOLIN + strings")
    print("\nCFG:")
    for key in ("dogs","raising","pain","guts","brothers"):
        stem=stems[key]
        m=re.search(r'^'+re.escape(stem)+r'\.mid:.*$',cfg,re.M)
        if m:
            print(" ",m.group(0))
    print("\nAgora: make -j8")

if __name__=="__main__":
    main()
