#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os, subprocess

PACK_ZIP="RADIO_GAMES_FIRE_EMBLEM_SMASH_ORCHESTRAL_PACK_V1.zip"
GROUP="brothers"

SONGS=[
    {
        "const":"MUS_FIRE_EMBLEM_MYSTERY_OF_THE_EMBLEM",
        "stem":"mus_fire_emblem_mystery_of_the_emblem",
        "asset":"assets/mus_fire_emblem_mystery_of_the_emblem.mid",
        "sha":"d65147f90a16b53e385378057ca0b4925ba6ca6528c1e35aa9c0c4174dc28f87",
        "cfg":"-G_brothers -R18 -V090",
        "label":"sGamesName_FireEmblemMystery",
        "display":"FIRE EMBLEM (MYSTERY OF THE EMBLEM)",
        "roles":{
            "ROLE_PIANO":"piano",
            "ROLE_VIOLIN":"violin",
            "ROLE_STRINGS":"strings",
            "ROLE_DRUMS":"drums",
        },
    },
    {
        "const":"MUS_REQUIEM_FIRE_EMBLEM",
        "stem":"mus_requiem_fire_emblem",
        "asset":"assets/mus_requiem_fire_emblem.mid",
        "sha":"b5ac4ab4be2cf8944b107834f2ccd4df36d89c5c0316c9ec4ee66d123e13be2e",
        "cfg":"-G_brothers -R20 -V090",
        "label":"sGamesName_RequiemFireEmblem",
        "display":"REQUIEM (FIRE EMBLEM: THE BLAZING BLADE)",
        "roles":{
            "ROLE_PIANO":"piano",
            "ROLE_VIOLIN":"violin",
        },
    },
    {
        "const":"MUS_FIRE_EMBLEM_MELEE",
        "stem":"mus_fire_emblem_melee",
        "asset":"assets/mus_fire_emblem_melee.mid",
        "sha":"97ddc3194dc7504c3cd1696602983756b056604e005c54e97a8eaf798f1b0b9e",
        "cfg":"-G_brothers -R16 -V090",
        "label":"sGamesName_FireEmblemMelee",
        "display":"FIRE EMBLEM (SUPER SMASH BROS. MELEE)",
        "roles":{
            "ROLE_PIANO":"piano",
            "ROLE_VIOLIN":"violin",
            "ROLE_STRINGS":"strings",
            "ROLE_GUITAR":"guitar",
            "ROLE_BASS":"bass",
            "ROLE_DRUMS":"drums",
        },
    },
    {
        "const":"MUS_SMASH_BROS_BRAWL_MAIN_THEME",
        "stem":"mus_smash_bros_brawl_main_theme",
        "asset":"assets/mus_smash_bros_brawl_main_theme.mid",
        "sha":"1cc772b1593fed16a24adcc9c0bae58acaa2e1da03ce6bf1f70506e2b0ee1df2",
        "cfg":"-G_brothers -R18 -V090",
        "label":"sGamesName_SmashBrawlMainTheme",
        "display":"MAIN THEME (SUPER SMASH BROS. BRAWL)",
        "roles":{
            "ROLE_PIANO":"piano",
            "ROLE_VIOLIN":"violin",
            "ROLE_STRINGS":"strings",
            "ROLE_BASS":"bass",
            "ROLE_DRUMS":"drums",
        },
    },
]

NEW_CONSTS=[s["const"] for s in SONGS]

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
        lines=text.splitlines(); start=None; end=len(lines)
        for i,line in enumerate(lines):
            if re.match(r'^\s*voice_group\s+'+re.escape(name)+r'\s*$',line):
                start=i; break
        if start is None: continue
        for i in range(start+1,len(lines)):
            if re.match(r'^\s*voice_group\s+[A-Za-z0-9_]+\s*$',lines[i]):
                end=i; break
        voices=[]
        for li in range(start+1,end):
            s=lines[li].strip()
            if s.startswith("voice_") and not s.startswith("voice_group"):
                voices.append((li,s.split("@",1)[0].rstrip(),s))
        return p,lines,start,end,voices
    return None,None,None,None,None

def prepare_brothers(root):
    bp,blines,bstart,bend,bvoices=find_group(root,"brothers")
    rp,rlines,rstart,rend,rvoices=find_group(root,"hlw_rock_metal")
    if bp is None: die("Nao achei voice_group brothers.")
    if rp is None: die("Nao achei hlw_rock_metal para copiar guitar/bass/drums.")

    def slot(voices,kind):
        for i,(_,clean,orig) in enumerate(voices):
            s=orig.lower()
            if kind=="piano" and "piano" in s and "bass" not in s and "drum" not in s: return i
            if kind=="violin" and any(k in s for k in ("violin","fiddle","solo_string")): return i
            if kind=="strings" and "string" in s and not any(k in s for k in ("violin","fiddle","solo_string")): return i
            if kind=="guitar" and "overdrive" in s and "guitar" in s and "bass" not in s: return i
            if kind=="bass" and "fingered_bass" in s: return i
            if kind=="drums" and "drumset" in s: return i
        return None

    piano=slot(bvoices,"piano")
    violin=slot(bvoices,"violin")
    strings=slot(bvoices,"strings")
    if piano is None: piano=0
    if violin is None: violin=1
    if strings is None: strings=2
    if max(piano,violin,strings)>=len(bvoices):
        die("brothers nao tem piano/violin/strings esperados.")

    additions=[]
    result={"piano":piano,"violin":violin,"strings":strings}

    # Find source voices in rock bank.
    source={}
    for kind in ("guitar","bass","drums"):
        best=None
        for i,(_,clean,orig) in enumerate(rvoices):
            s=orig.lower(); score=0
            if kind=="guitar":
                if "bass" in s or "drum" in s: continue
                if "overdrive" in s and "guitar" in s: score+=2000
                if "distort" in s and "guitar" in s: score+=1400
                if "guitar" in s: score+=400
                if "_high" in s or " high" in s: score-=500
            elif kind=="bass":
                if "fingered_bass" in s: score+=2200
                elif "bass" in s and "drum" not in s: score+=800
            else:
                if "hlw_rock_metal_drumset" in s: score+=2500
                elif "drumset" in s: score+=1400
            if score>0 and (best is None or score>best[0]):
                best=(score,clean,orig)
        if best is None: die(f"Nao achei {kind} seguro em hlw_rock_metal.")
        source[kind]=best

    # Reuse if same exact voice already exists in Brothers, else append.
    clean_to_slot={clean:i for i,(_,clean,orig) in enumerate(bvoices)}
    next_slot=len(bvoices)
    for kind in ("guitar","bass","drums"):
        clean=source[kind][1]
        if clean in clean_to_slot:
            result[kind]=clean_to_slot[clean]
        else:
            if next_slot>127: die("brothers excederia 128 voices.")
            result[kind]=next_slot
            additions.append((clean,kind))
            next_slot+=1

    print("\nBROTHERS / FIRE EMBLEM + SMASH:")
    for kind in ("piano","violin","strings","guitar","bass","drums"):
        print(f"  {kind.upper():7s} -> {result[kind]:03d}")
    if additions:
        print("  append:",", ".join(kind for _,kind in additions))

    return bp,additions,result

def append_additions(root,bp,additions):
    if not additions: return
    p,lines,start,end,voices=find_group(root,"brothers")
    if p!=bp: die("brothers mudou durante instalacao.")
    ins=[f"    {clean} @ HLW FIRE EMBLEM SMASH {kind.upper()}" for clean,kind in additions]
    lines[end:end]=ins
    p.write_text("\n".join(lines)+"\n")

def read_vlq(buf,pos):
    value=0
    while True:
        b=buf[pos]; pos+=1
        value=(value<<7)|(b&0x7F)
        if not (b&0x80): return value,pos

def track_program_offsets(data,file_start):
    pos=0; running=None; name=""; offs=[]
    while pos<len(data):
        _,pos=read_vlq(data,pos)
        if pos>=len(data): break
        status=data[pos]
        if status==0xFF:
            pos+=1; typ=data[pos]; pos+=1
            ln,pos=read_vlq(data,pos)
            a=pos; b=pos+ln
            if typ==0x03: name=bytes(data[a:b]).decode("latin1",errors="ignore")
            pos=b; running=None; continue
        if status in (0xF0,0xF7):
            pos+=1; ln,pos=read_vlq(data,pos); pos+=ln; running=None; continue
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
        name,offs=track_program_offsets(data[start:end],start)
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
    if m: return text
    vals=[int(x) for x in re.findall(r'^#define\s+MUS_[A-Z0-9_]+\s+(\d+)\b',text,re.M)]
    if not vals: die("Nao consegui ler IDs MUS_*.")
    new=max(vals)+1
    mark=re.search(r'^#define\s+END_MUS\s+\S+.*$',text,re.M)
    if not mark: die("Nao achei END_MUS.")
    print("Novo ID:",const,new)
    return text[:mark.start()]+f"#define {const:<52} {new}\n"+text[mark.start():]

def fix_end(text):
    pairs=[(n,int(v)) for n,v in re.findall(r'^#define\s+(MUS_[A-Z0-9_]+)\s+(\d+)\b',text,re.M)]
    n,v=max(pairs,key=lambda x:x[1])
    return re.sub(r'^#define\s+END_MUS\s+\S+.*$',f"#define END_MUS {n}",text,count=1,flags=re.M)

def add_song_table(text,stem):
    if re.search(r'^\s*song\s+'+re.escape(stem)+r'\s*,',text,re.M): return text
    mark=re.search(r'\n\s*\.align\s+2\s*\n\s*dummy_song_header:',text)
    if not mark: die("Nao achei dummy_song_header.")
    return text[:mark.start()]+f"\n\tsong {stem}, 0, 0\n"+text[mark.start():]

def add_bgm(text,consts):
    start=text.find("#define RADIO_SOUND_LIST_BGM")
    end=text.find("#define X(songId)",start)
    if start<0 or end<0: die("Nao achei RADIO_SOUND_LIST_BGM.")
    block=text[start:end]
    anchor="    X(MUS_MIDNAS_LAMENT)"
    for c in reversed(consts):
        if f"X({c})" not in block:
            pos=block.find(anchor)
            if pos<0: die("Nao achei anchor BGM.")
            block=block[:pos]+f"    X({c}) \\\n"+block[pos:]
    return text[:start]+block+text[end:]

def add_all(text,consts):
    pat=r'(static const u16\s+sStation_All\[\]\s*=\s*\{)(.*?)(\n\};)'
    m=re.search(pat,text,re.S)
    if not m: die("Nao achei sStation_All.")
    body=m.group(2); anchor="    MUS_MIDNAS_LAMENT,"
    for c in reversed(consts):
        if c not in body:
            pos=body.find(anchor)
            if pos<0: die("Nao achei anchor ALL.")
            body=body[:pos]+f"    {c},\n"+body[pos:]
    return text[:m.start(2)]+body+text[m.end(2):]

GROUPS=[
    ("POKEMON MYSTERY DUNGEON",[
        "MUS_TIME_GEAR","MUS_DONT_EVER_FORGET","MUS_TEMPORAL_TOWER",
        "MUS_TEMPORAL_SPIRE","MUS_THROUGH_THE_SEA_OF_TIME",
    ]),
    ("THE LEGEND OF ZELDA: THE WIND WAKER",["MUS_THE_GREAT_SEA"]),
    ("THE LEGEND OF ZELDA: TWILIGHT PRINCESS",[
        "MUS_TWILIGHT_PRINCESS_TITLE","MUS_MIDNAS_LAMENT","MUS_SACRED_GROVE","MUS_REQUIEM_OF_SPIRIT",
    ]),
    ("FIRE EMBLEM: MYSTERY OF THE EMBLEM",["MUS_FIRE_EMBLEM_MYSTERY_OF_THE_EMBLEM"]),
    ("FIRE EMBLEM: THE BLAZING BLADE",["MUS_REQUIEM_FIRE_EMBLEM"]),
    ("SUPER SMASH BROS. MELEE",["MUS_FIRE_EMBLEM_MELEE"]),
    ("SUPER SMASH BROS. BRAWL",["MUS_SMASH_BROS_BRAWL_MAIN_THEME"]),
    ("RAGNAROK",[
        "MUS_THEME_RAGNAROK","MUS_ANCIENT_GROOVER","MUS_DIVINE_GRACE","MUS_THEME_OF_MORROC",
        "MUS_EVERLASTING_WANDERERS","MUS_THEME_OF_GEFFEN","MUS_THEME_OF_ALBERTA","MUS_THEME_OF_PRONTERA",
    ]),
    ("CHRONO CROSS",["MUS_SCARS_OF_TIME"]),
    ("FINAL FANTASY VIII",["MUS_THE_OATH"]),
    ("POKEMON SNAP",["MUS_THE_YOUNG_PHOTOGRAPHER"]),
    ("GRAND CHASE",["MUS_HOPE_GRAND_CHASE"]),
    ("UMINEKO",[
        "MUS_UMINEKO_HOPE","MUS_UMINEKO_600_MILLION","MUS_UMINEKO_WINGLESS",
        "MUS_UMINEKO_WORLDEND","MUS_UMINEKO_FAR","MUS_UMINEKO_WORLDEND_DOMINATOR",
    ]),
    ("TOUHOU 5",["MUS_TOUHOU5_TITLE","MUS_TOUHOU5_STAGE1_BOSS","MUS_TOUHOU5_STAGE2","MUS_TOUHOU5_STAGE3_BOSS","MUS_TOUHOU5_STAGE5_BOSS"]),
    ("TOUHOU 6",["MUS_TOUHOU6_STAGE2_BOSS"]),
    ("TOUHOU 7",["MUS_TOUHOU7_STAGE6_BOSS"]),
    ("TOUHOU 8",["MUS_TOUHOU8_STAGE1_BOSS"]),
    ("TOUHOU 10",["MUS_TOUHOU10_STAGE2","MUS_TOUHOU10_STAGE5_BOSS"]),
]

def reorder_games(text):
    pat=r'(static const u16\s+sStation_Games\[\]\s*=\s*\{)(.*?)(\n\};)'
    m=re.search(pat,text,re.S)
    if not m: die("Nao achei sStation_Games.")
    existing=re.findall(r'\bMUS_[A-Z0-9_]+\b',m.group(2))
    es=set(existing)|set(NEW_CONSTS)
    used=set(); lines=[]
    for label,members in GROUPS:
        present=[x for x in members if x in es]
        if not present: continue
        lines.append(f"    // {label}")
        for x in present:
            lines.append(f"    {x},"); used.add(x)
        lines.append("")
    unknown=[x for x in existing if x not in used and x not in ("MUS_INTRO_SUPERNOVA","MUS_TETRIS_MAIN_THEME")]
    if unknown:
        lines.append("    // OTHER GAMES")
        for x in unknown: lines.append(f"    {x},")
        lines.append("")
    if "MUS_INTRO_SUPERNOVA" in es:
        lines += ["    // SUPERNOVA - SECOND LAST","    MUS_INTRO_SUPERNOVA,",""]
    if "MUS_TETRIS_MAIN_THEME" in es:
        lines += ["    // TETRIS - LAST","    MUS_TETRIS_MAIN_THEME,",""]
    lines.append("    STATION_END")
    body="\n"+"\n".join(lines)
    text=text[:m.start(2)]+body+text[m.end(2):]
    return text

def add_names(text):
    fn="static const u8 *Radio_GetGamesDisplayName(u16 songId)"
    fpos=text.find(fn)
    if fpos<0: die("Nao achei Radio_GetGamesDisplayName.")
    defs=[]
    for s in SONGS:
        if s["label"] not in text:
            defs.append(f'static const u8 {s["label"]}[] = _("{s["display"]}");\n')
    if defs:
        anchor='static const u8 sGamesName_MidnasLament[]'
        apos=text.find(anchor)
        if apos<0: apos=fpos
        text=text[:apos]+"".join(defs)+text[apos:]
    fpos=text.find(fn); default=text.find("default:",fpos)
    if default<0: die("Nao achei default Games.")
    chunk=text[fpos:default]
    insert=""
    for s in SONGS:
        if f"case {s['const']}:" not in chunk:
            insert+=f"    case {s['const']}:\n        return {s['label']};\n"
    if insert:
        anchor=text.find("    case MUS_MIDNAS_LAMENT:",fpos,default)
        if anchor<0: die("Nao achei case MIDNAS.")
        text=text[:anchor]+insert+text[anchor:]
    return text

def verify_symbol_and_loop(path,stem):
    if not path.exists(): die(f"Nao foi criado {path}.")
    txt=path.read_text(errors="ignore")
    if not re.search(r'^\s*\.global\s+'+re.escape(stem)+r'\s*$',txt,re.M):
        die(f"{path.name} nao exporta {stem}.")
    if not re.search(r'^'+re.escape(stem)+r':\s*$',txt,re.M):
        die(f"{path.name} sem label {stem}:")
    if "GOTO" not in txt:
        die(f"{path.name} nao possui GOTO de loop.")

def main():
    root=Path.cwd(); here=Path(__file__).resolve().parent
    songs_h=root/"include/constants/songs.h"
    table=root/"sound/song_table.inc"
    radio=root/"src/radio.c"
    cfg=root/"sound/songs/midi/midi.cfg"
    for p in (songs_h,table,radio,cfg):
        if not p.exists(): die(f"Nao achei {p}. Rode da raiz.")

    pack=here/PACK_ZIP
    if not pack.exists(): die(f"Nao achei {PACK_ZIP} ao lado do Python.")

    brothers_path,additions,slots=prepare_brothers(root)

    stamp=datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir=root/"PHYTON/backups"/f"fire_emblem_smash_games_v1_{stamp}"
    touched=[songs_h,table,radio,cfg,brothers_path]
    for s in SONGS:
        touched += [root/f"sound/songs/midi/{s['stem']}.mid",root/f"sound/songs/midi/{s['stem']}.s"]
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
        append_additions(root,brothers_path,additions)

        assets={}
        with zipfile.ZipFile(pack,"r") as z:
            for s in SONGS:
                data=z.read(s["asset"])
                if hashlib.sha256(data).hexdigest()!=s["sha"]:
                    die(f"SHA invalido: {s['stem']}")
                assets[s["stem"]]=patch_programs(data,s["roles"],slots)

        cfgtext=cfg.read_text()
        for s in SONGS:
            target=root/f"sound/songs/midi/{s['stem']}.mid"
            target.write_bytes(assets[s["stem"]]); os.utime(target,None)
            cfgtext=set_cfg(cfgtext,s["stem"],s["cfg"])
        cfg.write_text(cfgtext)

        mid2agb=root/"tools/mid2agb/mid2agb"
        if not mid2agb.exists(): die("Nao achei tools/mid2agb/mid2agb.")

        print("\nGerando/verificando 4 .s + loops...")
        for s in SONGS:
            midp=root/f"sound/songs/midi/{s['stem']}.mid"
            sp=root/f"sound/songs/midi/{s['stem']}.s"
            subprocess.run([str(mid2agb),str(midp),str(sp)]+s["cfg"].split(),cwd=root,check=True)
            verify_symbol_and_loop(sp,s["stem"])
            print(f"  OK: {s['stem']} (simbolo + GOTO)")

        sh=songs_h.read_text(); tb=table.read_text(); rt=radio.read_text()
        for s in SONGS:
            sh=add_constant(sh,s["const"])
            tb=add_song_table(tb,s["stem"])
        sh=fix_end(sh)
        rt=add_bgm(rt,NEW_CONSTS)
        rt=add_all(rt,NEW_CONSTS)
        rt=reorder_games(rt)
        rt=add_names(rt)

        songs_h.write_text(sh); table.write_text(tb); radio.write_text(rt)

        stale=[root/"build/modern/data/sound_data.o",root/"build/modern/data/sound_data.d",
               root/"build/modern/src/radio.o",root/"build/modern/src/radio.d"]
        for s in SONGS:
            stale += [root/f"build/modern/sound/songs/midi/{s['stem']}.o",
                      root/f"build/modern/sound/songs/midi/{s['stem']}.d"]
        for p in stale:
            if p.exists():
                print("rm",p.relative_to(root)); p.unlink()

        print("\n============================================================")
        print("FIRE EMBLEM + SMASH GAMES PACK V1 INSTALADO")
        print("============================================================")
        print("FIRE EMBLEM (MYSTERY OF THE EMBLEM)")
        print("REQUIEM (FIRE EMBLEM: THE BLAZING BLADE)")
        print("FIRE EMBLEM (SUPER SMASH BROS. MELEE)")
        print("MAIN THEME (SUPER SMASH BROS. BRAWL)")
        print("")
        print("Todos possuem loop real compilado (GOTO).")
        print("PMD continua primeiro; Zelda vem depois; Fire Emblem/Smash entram apos Zelda.")
        print("Intro Supernova / Tetris continuam nas duas ultimas posicoes.")
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
