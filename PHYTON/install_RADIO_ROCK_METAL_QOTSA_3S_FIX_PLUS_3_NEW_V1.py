#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os, subprocess

PACK_ZIP="RADIO_ROCK_METAL_QOTSA_3S_FIX_PLUS_3_NEW_V1.zip"

SONGS=[
    {
        "const":"MUS_3S_AND_7S",
        "stem":"mus_3s_and_7s",
        "asset":"assets/mus_3s_and_7s.mid",
        "sha":"a4a37543f5cd6907328e24490f4d113c2d002061c6ce43f258835532542aae86",
        "cfg":"-G_hlw_rock_metal -R12 -V090",
        "existing":True,
        "roles":{
            "ROLE_GUITAR_RHYTHM":"guitar",
            "ROLE_GUITAR_LEAD":"guitar",
            "ROLE_BASS":"bass",
            "ROLE_DRUMS":"drums",
        },
    },
    {
        "const":"MUS_NO_ONE_KNOWS",
        "stem":"mus_no_one_knows",
        "asset":"assets/mus_no_one_knows.mid",
        "sha":"29fafd93db5ebd9e6af8253c77f50830a51ef695af81be05a5f317e44b771d92",
        "cfg":"-G_hlw_rock_metal -R12 -V090",
        "existing":False,
        "label":"sRockMetalName_NoOneKnows",
        "display":"NO ONE KNOWS (QUEENS OF THE STONE AGE)",
        "roles":{
            "ROLE_GUITAR_MAIN":"guitar",
            "ROLE_GUITAR_SECOND":"guitar",
            "ROLE_BASS":"bass",
            "ROLE_DRUMS":"drums",
        },
    },
    {
        "const":"MUS_LITTLE_SISTER",
        "stem":"mus_little_sister",
        "asset":"assets/mus_little_sister.mid",
        "sha":"efce45a6dfb6fceaef29083e6c295fa9319b11a7ef3da443d0912538f89cb68c",
        "cfg":"-G_hlw_rock_metal -R12 -V090",
        "existing":False,
        "label":"sRockMetalName_LittleSister",
        "display":"LITTLE SISTER (QUEENS OF THE STONE AGE)",
        "roles":{
            "ROLE_GUITAR_MAIN":"guitar",
            "ROLE_GUITAR_LEAD":"guitar",
            "ROLE_BASS":"bass",
            "ROLE_DRUMS":"drums",
        },
    },
    {
        "const":"MUS_I_APPEAR_MISSING",
        "stem":"mus_i_appear_missing",
        "asset":"assets/mus_i_appear_missing.mid",
        "sha":"4f7a06e1440e6819001c7e18f5a81a042fb402590da7747f056f93d2ec484a57",
        "cfg":"-G_hlw_rock_metal -R18 -V090",
        "existing":False,
        "label":"sRockMetalName_IAppearMissing",
        "display":"I APPEAR MISSING (QUEENS OF THE STONE AGE)",
        "roles":{
            "ROLE_PIANO":"piano",
            "ROLE_GUITAR":"guitar",
            "ROLE_BASS":"bass",
            "ROLE_DRUMS":"drums",
        },
    },
]

NEW=[SONGS[1],SONGS[2],SONGS[3]]
NEW_ORDER=["MUS_NO_ONE_KNOWS","MUS_LITTLE_SISTER","MUS_I_APPEAR_MISSING"]

def die(msg):
    print("\n[ERRO]",msg)
    raise RuntimeError(msg)

def backup(path,root,bdir):
    if not path.exists(): return
    dst=bdir/path.relative_to(root)
    dst.parent.mkdir(parents=True,exist_ok=True)
    shutil.copy2(path,dst)

def find_group(root,name):
    for p in (root/"sound").rglob("*.inc"):
        try: text=p.read_text(errors="ignore")
        except Exception: continue
        if not re.search(rf'^\s*voice_group\s+{re.escape(name)}\s*$',text,re.M):
            continue
        lines=text.splitlines()
        start=None; end=len(lines)
        for i,line in enumerate(lines):
            if re.match(r'^\s*voice_group\s+'+re.escape(name)+r'\s*$',line):
                start=i; break
        if start is None: continue
        for i in range(start+1,len(lines)):
            if re.match(r'^\s*voice_group\s+[A-Za-z0-9_]+\s*$',lines[i]):
                end=i; break
        voices=[]
        for line in lines[start+1:end]:
            s=line.strip()
            if s.startswith("voice_") and not s.startswith("voice_group"):
                voices.append(s)
        return p,voices
    return None,None

def rock_slots(root):
    p,voices=find_group(root,"hlw_rock_metal")
    if p is None: die("Nao achei hlw_rock_metal.")

    def choose(kind):
        ranked=[]
        for i,line in enumerate(voices):
            s=line.lower(); score=0
            if kind=="guitar":
                if "bass" in s or "drum" in s: continue
                if "overdrive" in s and "guitar" in s: score+=1800
                if "distort" in s and "guitar" in s: score+=1300
                if "guitar" in s: score+=450
                if "sd90" in s: score+=200
                if "_high" in s or " high" in s: score-=500
            elif kind=="bass":
                if "drum" in s: continue
                if "fingered_bass" in s: score+=2000
                elif "bass" in s: score+=900
            elif kind=="drums":
                if "hlw_rock_metal_drumset" in s: score+=2500
                elif "drumset" in s: score+=1400
                elif "drum" in s: score+=600
            elif kind=="piano":
                if "bass" in s or "drum" in s: continue
                if "piano" in s: score+=1800
            if score>0: ranked.append((score,i,line))
        if not ranked: die(f"Nao achei {kind} em hlw_rock_metal.")
        return max(ranked)

    g=choose("guitar"); b=choose("bass"); d=choose("drums"); pno=choose("piano")
    print("\nQOTSA / hlw_rock_metal:")
    print(f"  GUITAR -> {g[1]:03d}: {g[2]}")
    print(f"  BASS   -> {b[1]:03d}: {b[2]}")
    print(f"  DRUMS  -> {d[1]:03d}: {d[2]}")
    print(f"  PIANO  -> {pno[1]:03d}: {pno[2]}")
    return {"guitar":g[1],"bass":b[1],"drums":d[1],"piano":pno[1]}

def read_vlq(buf,pos):
    value=0
    while True:
        b=buf[pos]; pos+=1
        value=(value<<7)|(b&0x7F)
        if not (b&0x80): return value,pos

def program_offsets(track_data,file_start):
    pos=0; running=None; name=""; offs=[]
    while pos<len(track_data):
        _,pos=read_vlq(track_data,pos)
        if pos>=len(track_data): break
        status=track_data[pos]
        if status==0xFF:
            pos+=1; typ=track_data[pos]; pos+=1
            ln,pos=read_vlq(track_data,pos)
            a=pos; b=pos+ln
            if typ==0x03: name=bytes(track_data[a:b]).decode("latin1",errors="ignore")
            pos=b; running=None; continue
        if status in (0xF0,0xF7):
            pos+=1; ln,pos=read_vlq(track_data,pos); pos+=ln; running=None; continue
        if status&0x80:
            running=status; pos+=1
        elif running is None:
            die("MIDI invalido: running status.")
        else:
            status=running
        typ=status&0xF0
        if typ in (0xC0,0xD0):
            if typ==0xC0: offs.append(file_start+pos)
            pos+=1
        else:
            pos+=2
    return name,offs

def patch_programs(data,roles,slots):
    data=bytearray(data)
    if data[:4]!=b"MThd": die("MIDI invalido.")
    pos=8+int.from_bytes(data[4:8],"big"); seen=set()
    while pos+8<=len(data):
        if data[pos:pos+4]!=b"MTrk": die("MTrk esperado.")
        ln=int.from_bytes(data[pos+4:pos+8],"big")
        start=pos+8; end=start+ln
        name,offs=program_offsets(data[start:end],start)
        upper=name.upper()
        for tag,role in roles.items():
            if tag in upper:
                for off in offs: data[off]=slots[role]
                seen.add(tag); break
        pos=end
    missing=set(roles)-seen
    if missing: die("Tracks nao patchadas: "+", ".join(sorted(missing)))
    return bytes(data)

def set_cfg(text,stem,cfg):
    line=f"{stem}.mid: {cfg}"
    m=re.search(r'^'+re.escape(stem)+r'\.mid:.*$',text,re.M)
    if m: return text[:m.start()]+line+text[m.end():]
    if text and not text.endswith("\n"): text+="\n"
    return text+line+"\n"

def add_constant(text,const):
    m=re.search(r'^#define\s+'+re.escape(const)+r'\s+(\d+)\b',text,re.M)
    if m:
        print("ID existente:",const,m.group(1)); return text
    vals=[int(x) for x in re.findall(r'^#define\s+MUS_[A-Z0-9_]+\s+(\d+)\b',text,re.M)]
    if not vals: die("Nao consegui ler MUS_* em songs.h.")
    new=max(vals)+1
    mark=re.search(r'^#define\s+END_MUS\s+\S+.*$',text,re.M)
    if not mark: die("Nao achei END_MUS.")
    text=text[:mark.start()]+f"#define {const:<52} {new}\n"+text[mark.start():]
    print("Novo ID:",const,new)
    return text

def fix_end(text):
    pairs=[(n,int(v)) for n,v in re.findall(r'^#define\s+(MUS_[A-Z0-9_]+)\s+(\d+)\b',text,re.M)]
    if not pairs: die("Nao consegui recalcular END_MUS.")
    n,v=max(pairs,key=lambda x:x[1])
    return re.sub(r'^#define\s+END_MUS\s+\S+.*$',f"#define END_MUS {n}",text,count=1,flags=re.M)

def add_song_table(text,stem):
    if re.search(r'^\s*song\s+'+re.escape(stem)+r'\s*,',text,re.M): return text
    mark=re.search(r'\n\s*\.align\s+2\s*\n\s*dummy_song_header:',text)
    if not mark: die("Nao achei dummy_song_header.")
    return text[:mark.start()]+f"\n\tsong {stem}, 0, 0\n"+text[mark.start():]

def add_bgm_before_qotsa(text,consts):
    start=text.find("#define RADIO_SOUND_LIST_BGM")
    end=text.find("#define X(songId)",start)
    if start<0 or end<0: die("Nao achei RADIO_SOUND_LIST_BGM.")
    block=text[start:end]
    anchor="    X(MUS_3S_AND_7S)"
    if anchor not in block: die("Nao achei MUS_3S_AND_7S no RADIO_SOUND_LIST_BGM.")

    # Remove any pre-existing versions of the new lines first.
    lines=block.splitlines()
    lines=[ln for ln in lines if not any(f"X({c})" in ln for c in consts)]
    block="\n".join(lines)
    if block and not block.endswith("\n"): block+="\n"

    idx=block.find(anchor)
    insert="".join(f"    X({c}) \\\n" for c in consts)
    block=block[:idx]+insert+block[idx:]
    return text[:start]+block+text[end:]

def reorder_array(text,array_name,new_first,anchor_const):
    pat=r'(static const u16\s+'+re.escape(array_name)+r'\[\]\s*=\s*\{)(.*?)(\n\};)'
    m=re.search(pat,text,re.S)
    if not m: die(f"Nao achei {array_name}.")
    body=m.group(2)
    items=re.findall(r'\bMUS_[A-Z0-9_]+\b',body)
    # remove new songs if already present
    items=[x for x in items if x not in new_first]

    if anchor_const not in items:
        die(f"Nao achei {anchor_const} em {array_name}.")

    idx=items.index(anchor_const)
    items[idx:idx]=new_first
    newbody="\n"+"\n".join(f"    {x}," for x in items)+"\n    STATION_END"
    return text[:m.start(2)]+newbody+text[m.end(2):]

def add_rock_names_and_cases(text):
    fn="static const u8 *Radio_GetRockMetalDisplayName(u16 songId)"
    fpos=text.find(fn)
    if fpos<0: die("Nao achei Radio_GetRockMetalDisplayName.")

    defs=[]
    for s in NEW:
        if s["label"] not in text:
            defs.append(f'static const u8 {s["label"]}[] = _("{s["display"]}");\n')
    if defs:
        # place directly before existing 3S label if possible
        anchor='static const u8 sRockMetalName_3SAnd7S[]'
        apos=text.find(anchor)
        if apos<0: apos=fpos
        text=text[:apos]+"".join(defs)+text[apos:]

    fpos=text.find(fn)
    default=text.find("    default:",fpos)
    if default<0: die("Nao achei default do RockMetal switch.")
    chunk=text[fpos:default]
    insert=""
    for s in NEW:
        if f"case {s['const']}:" not in chunk:
            insert += f"    case {s['const']}:\n        return {s['label']};\n"

    # New QOTSA cases before the existing 3S case.
    if insert:
        anchor=text.find("    case MUS_3S_AND_7S:",fpos,default)
        if anchor<0: die("Nao achei case MUS_3S_AND_7S.")
        text=text[:anchor]+insert+text[anchor:]
    return text

def verify_symbol(path,stem):
    if not path.exists(): die(f"Nao foi criado: {path}")
    txt=path.read_text(errors="ignore")
    if not re.search(r'^\s*\.global\s+'+re.escape(stem)+r'\s*$',txt,re.M):
        die(f"{path.name} nao exporta {stem}.")
    if not re.search(r'^'+re.escape(stem)+r':\s*$',txt,re.M):
        die(f"{path.name} nao possui label {stem}:.")

def main():
    root=Path.cwd()
    here=Path(__file__).resolve().parent
    songs_h=root/"include/constants/songs.h"
    table=root/"sound/song_table.inc"
    radio=root/"src/radio.c"
    cfg=root/"sound/songs/midi/midi.cfg"

    for p in (songs_h,table,radio,cfg):
        if not p.exists(): die(f"Nao achei {p}. Rode da raiz.")

    if not (root/"sound/songs/midi/mus_3s_and_7s.mid").exists():
        die("Nao achei a 3S AND 7S existente.")

    pack=here/PACK_ZIP
    if not pack.exists(): die(f"Nao achei {PACK_ZIP} ao lado do Python.")

    slots=rock_slots(root)

    stamp=datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir=root/"PHYTON/backups"/f"qotsa_3s_fix_plus_3_new_{stamp}"

    touched=[songs_h,table,radio,cfg]
    for s in SONGS:
        touched += [
            root/f"sound/songs/midi/{s['stem']}.mid",
            root/f"sound/songs/midi/{s['stem']}.s",
        ]
    touched=list(dict.fromkeys(touched))
    for p in touched: backup(p,root,bdir)
    originals={p:(p.read_bytes() if p.exists() else None) for p in touched}

    def rollback():
        print("\n[ROLLBACK] Restaurando estado anterior...")
        for p,data in originals.items():
            if data is None:
                if p.exists(): p.unlink()
            else:
                p.parent.mkdir(parents=True,exist_ok=True); p.write_bytes(data)

    try:
        assets={}
        with zipfile.ZipFile(pack,"r") as z:
            for s in SONGS:
                data=z.read(s["asset"])
                if hashlib.sha256(data).hexdigest()!=s["sha"]:
                    die(f"SHA invalido: {s['stem']}")
                assets[s["stem"]]=patch_programs(data,s["roles"],slots)

        # MIDI + CFG FIRST.
        cfgtext=cfg.read_text()
        for s in SONGS:
            target=root/f"sound/songs/midi/{s['stem']}.mid"
            target.write_bytes(assets[s["stem"]]); os.utime(target,None)
            cfgtext=set_cfg(cfgtext,s["stem"],s["cfg"])
        cfg.write_text(cfgtext); os.utime(cfg,None)

        # Direct conversion BEFORE registration. Never make -B.
        mid2agb=root/"tools/mid2agb/mid2agb"
        if not mid2agb.exists(): die("Nao achei tools/mid2agb/mid2agb.")

        print("\nGerando/verificando os 4 .s diretamente...")
        for s in SONGS:
            midp=root/f"sound/songs/midi/{s['stem']}.mid"
            sp=root/f"sound/songs/midi/{s['stem']}.s"
            subprocess.run([str(mid2agb),str(midp),str(sp)]+s["cfg"].split(),cwd=root,check=True)
            verify_symbol(sp,s["stem"])
            print(f"  OK: {s['stem']}.s")

        # ONLY AFTER .s verification, register the 3 new songs.
        sh=songs_h.read_text()
        tb=table.read_text()
        rt=radio.read_text()

        for s in NEW:
            sh=add_constant(sh,s["const"])
            tb=add_song_table(tb,s["stem"])

        sh=fix_end(sh)
        rt=add_bgm_before_qotsa(rt,NEW_ORDER)
        rt=reorder_array(rt,"sStation_All",NEW_ORDER,"MUS_3S_AND_7S")
        rt=reorder_array(rt,"sStation_RockMetal",NEW_ORDER,"MUS_3S_AND_7S")
        rt=add_rock_names_and_cases(rt)

        songs_h.write_text(sh)
        table.write_text(tb)
        radio.write_text(rt)

        # Verify station order.
        m=re.search(r'static const u16\s+sStation_RockMetal\[\]\s*=\s*\{(.*?)\n\};',rt,re.S)
        if not m: die("Verificacao station falhou.")
        order=re.findall(r'\bMUS_[A-Z0-9_]+\b',m.group(1))
        expected=NEW_ORDER+["MUS_3S_AND_7S"]
        if order[:4]!=expected:
            die("Ordem ROCK METAL inesperada: "+repr(order[:4]))

        # Stale build products only.
        stale=[
            root/"build/modern/data/sound_data.o",
            root/"build/modern/data/sound_data.d",
            root/"build/modern/src/radio.o",
            root/"build/modern/src/radio.d",
        ]
        for s in SONGS:
            stale += [
                root/f"build/modern/sound/songs/midi/{s['stem']}.o",
                root/f"build/modern/sound/songs/midi/{s['stem']}.d",
            ]
        for p in stale:
            if p.exists():
                print("rm",p.relative_to(root)); p.unlink()

        print("\n============================================================")
        print("QOTSA PACK INSTALADO")
        print("============================================================")
        print("ROCK METAL agora comeca:")
        print("  1. NO ONE KNOWS")
        print("  2. LITTLE SISTER")
        print("  3. I APPEAR MISSING")
        print("  4. 3S AND 7S (V3 corrigida)")
        print("")
        print("Todas usam hlw_rock_metal.")
        print("No One Knows / Little Sister / 3S: guitarra + baixo + bateria.")
        print("I Appear Missing: piano + guitarra + baixo + bateria.")
        print("Drums finais usam somente 36/40/42.")
        print("Nao chama make e nao usa make -B.")
        print("Backup:",bdir)
        print("\nAgora rode SOMENTE:")
        print("  make -j8")

    except subprocess.CalledProcessError as e:
        rollback()
        print("\n[ERRO] mid2agb falhou:",e)
        raise SystemExit(1)
    except Exception:
        rollback()
        raise

if __name__=="__main__":
    try: main()
    except RuntimeError: raise SystemExit(1)
