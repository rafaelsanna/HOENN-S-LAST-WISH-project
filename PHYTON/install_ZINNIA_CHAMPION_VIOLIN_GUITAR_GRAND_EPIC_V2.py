#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os, subprocess

PACK_ZIP="ZINNIA_CHAMPION_VIOLIN_GUITAR_GRAND_EPIC_V2.zip"
ASSET="assets/mus_zinnia_champion_grand_epic.mid"
SHA="6dcde02e9ba4835ae68828ad322c4062687bdca9ebc778a781a4cf000fa14389"
STEM="mus_zinnia_champion_grand_epic"
CONST="MUS_ZINNIA_CHAMPION_GRAND_EPIC"
CFG="-G_brothers -R18 -V090"
BATTLE_MARKER="HLW_ZINNIA_CHAMPION_LAST_MON_V2"
RADIO_MARKER="HLW_ZINNIA_CHAMPION_RADIO_V2"

ROLES={
    "ROLE_PIANO":"piano",
    "ROLE_VIOLIN_I":"violin",
    "ROLE_VIOLIN_II":"violin",
    "ROLE_VIOLIN_III":"violin",
    "ROLE_GUITAR":"guitar",
    "ROLE_DRUMS":"drums",
}

def die(msg):
    print("\n[ERRO]",msg)
    raise RuntimeError(msg)

def backup(path,root,bdir):
    if not path.exists():
        return
    dst=bdir/path.relative_to(root)
    dst.parent.mkdir(parents=True,exist_ok=True)
    shutil.copy2(path,dst)

def groups(root):
    out={}
    for p in (root/"sound").rglob("*.inc"):
        try:
            txt=p.read_text(errors="ignore")
        except Exception:
            continue
        lines=txt.splitlines()
        starts=[]
        for i,line in enumerate(lines):
            m=re.match(r'^\s*voice_group\s+([A-Za-z0-9_]+)\s*$',line)
            if m:
                starts.append((i,m.group(1)))
        for idx,(start,name) in enumerate(starts):
            end=starts[idx+1][0] if idx+1<len(starts) else len(lines)
            voices=[]
            for li in range(start+1,end):
                s=lines[li].strip()
                if s.startswith("voice_") and not s.startswith("voice_group"):
                    voices.append((li,s.split("@",1)[0].rstrip(),s))
            out[name]={"path":p,"lines":lines,"end":end,"voices":voices}
    return out

def best(voices,kind):
    cand=[]
    for i,(_,clean,orig) in enumerate(voices):
        s=orig.lower()
        score=0
        if kind=="piano":
            if "piano" in s and "bass" not in s and "drum" not in s:
                score=3000
        elif kind=="violin":
            if "violin" in s:
                score=3500
            elif "fiddle" in s:
                score=2500
            elif "solo_string" in s:
                score=2300
        elif kind=="guitar":
            if "bass" in s or "drum" in s:
                continue
            if "overdrive" in s and "guitar" in s:
                score=3200
            elif "distort" in s and "guitar" in s:
                score=2400
            elif "guitar" in s:
                score=800
            if "_high" in s or " high" in s:
                score-=700
        elif kind=="drums":
            if "hlw_rock_metal_drumset" in s:
                score=4000
            elif "drumset" in s:
                score=2000
        if score>0:
            cand.append((score,i,clean,orig))
    return max(cand) if cand else None

def prepare_brothers(root):
    gs=groups(root)
    if "brothers" not in gs:
        die("Nao achei brothers.")
    if "hlw_rock_metal" not in gs:
        die("Nao achei hlw_rock_metal.")

    bg=gs["brothers"]
    bv=bg["voices"]
    p=best(bv,"piano")
    v=best(bv,"violin")
    d=best(bv,"drums")
    pslot=p[1] if p else 0
    vslot=v[1] if v else 1

    additions=[]
    exact_to_slot={clean:i for i,(_,clean,orig) in enumerate(bv)}
    next_slot=len(bv)

    if d:
        dslot=d[1]
    else:
        rd=best(gs["hlw_rock_metal"]["voices"],"drums")
        if rd is None:
            die("Nao achei drumset seguro.")
        clean=rd[2]
        if clean in exact_to_slot:
            dslot=exact_to_slot[clean]
        else:
            dslot=next_slot
            next_slot+=1
            additions.append((clean,"DRUMS"))

    g=best(bv,"guitar")
    if g:
        gslot=g[1]
    else:
        rg=best(gs["hlw_rock_metal"]["voices"],"guitar")
        if rg is None:
            die("Nao achei guitarra segura.")
        clean=rg[2]
        if clean in exact_to_slot:
            gslot=exact_to_slot[clean]
        else:
            gslot=next_slot
            next_slot+=1
            additions.append((clean,"GUITAR"))

    if next_slot>128:
        die("brothers excederia 128 voices.")

    print("\nBROTHERS / CHAMPION V2")
    print(f"  PIANO  -> {pslot:03d}")
    print(f"  VIOLIN -> {vslot:03d}")
    print(f"  GUITAR -> {gslot:03d}")
    print(f"  DRUMS  -> {dslot:03d}")

    return {"piano":pslot,"violin":vslot,"guitar":gslot,"drums":dslot},bg["path"],additions

def append_voices(root,path,additions):
    if not additions:
        return
    gs=groups(root)
    g=gs.get("brothers")
    if g is None or g["path"]!=path:
        die("brothers mudou.")
    lines=g["lines"]
    lines[g["end"]:g["end"]] = [
        f"    {clean} @ HLW ZINNIA CHAMPION {kind}"
        for clean,kind in additions
    ]
    path.write_text("\n".join(lines)+"\n")

def read_vlq(buf,pos):
    val=0
    while True:
        b=buf[pos]
        pos+=1
        val=(val<<7)|(b&0x7F)
        if not (b&0x80):
            return val,pos

def track_program_offsets(data,file_start):
    pos=0
    running=None
    name=""
    offs=[]
    while pos<len(data):
        _,pos=read_vlq(data,pos)
        if pos>=len(data):
            break
        status=data[pos]
        if status==0xFF:
            pos+=1
            typ=data[pos]
            pos+=1
            ln,pos=read_vlq(data,pos)
            a=pos
            b=pos+ln
            if typ==0x03:
                name=bytes(data[a:b]).decode("latin1",errors="ignore")
            pos=b
            running=None
            continue
        if status in (0xF0,0xF7):
            pos+=1
            ln,pos=read_vlq(data,pos)
            pos+=ln
            running=None
            continue
        if status&0x80:
            running=status
            pos+=1
        elif running is None:
            die("MIDI invalido.")
        else:
            status=running
        typ=status&0xF0
        if typ in (0xC0,0xD0):
            if typ==0xC0:
                offs.append(file_start+pos)
            pos+=1
        else:
            pos+=2
    return name,offs

def patch_programs(data,slots):
    data=bytearray(data)
    if data[:4]!=b"MThd":
        die("MIDI invalido.")
    pos=8+int.from_bytes(data[4:8],"big")
    seen=set()
    while pos+8<=len(data):
        if data[pos:pos+4]!=b"MTrk":
            die("MTrk esperado.")
        ln=int.from_bytes(data[pos+4:pos+8],"big")
        start=pos+8
        end=start+ln
        name,offs=track_program_offsets(data[start:end],start)
        upper=name.upper()
        for tag,role in ROLES.items():
            if tag in upper:
                for off in offs:
                    data[off]=slots[role]
                seen.add(tag)
                break
        pos=end
    miss=set(ROLES)-seen
    if miss:
        die("Tracks nao patchadas: "+", ".join(sorted(miss)))
    return bytes(data)

def set_cfg(text):
    line=f"{STEM}.mid: {CFG}"
    m=re.search(r'^'+re.escape(STEM)+r'\.mid:.*$',text,re.M)
    if m:
        return text[:m.start()]+line+text[m.end():]
    if text and not text.endswith("\n"):
        text+="\n"
    return text+line+"\n"

def add_constant(text):
    if re.search(r'^#define\s+'+CONST+r'\s+\d+\b',text,re.M):
        return text
    vals=[int(x) for x in re.findall(r'^#define\s+MUS_[A-Z0-9_]+\s+(\d+)\b',text,re.M)]
    if not vals:
        die("Nao consegui ler IDs MUS.")
    mark=re.search(r'^#define\s+END_MUS\s+\S+.*$',text,re.M)
    if not mark:
        die("Nao achei END_MUS.")
    new=max(vals)+1
    print("Novo ID:",CONST,new)
    return text[:mark.start()]+f"#define {CONST:<52} {new}\n"+text[mark.start():]

def fix_end(text):
    pairs=[(n,int(v)) for n,v in re.findall(r'^#define\s+(MUS_[A-Z0-9_]+)\s+(\d+)\b',text,re.M)]
    n,v=max(pairs,key=lambda x:x[1])
    return re.sub(r'^#define\s+END_MUS\s+\S+.*$',f"#define END_MUS {n}",text,count=1,flags=re.M)

def add_song_table(text):
    if re.search(r'^\s*song\s+'+STEM+r'\s*,',text,re.M):
        return text
    mark=re.search(r'\n\s*\.align\s+2\s*\n\s*dummy_song_header:',text)
    if not mark:
        die("Nao achei dummy_song_header.")
    return text[:mark.start()]+f"\n\tsong {STEM}, 0, 0\n"+text[mark.start():]

def verify_s(path):
    txt=path.read_text(errors="ignore")
    if not re.search(r'^\s*\.global\s+'+STEM+r'\s*$',txt,re.M):
        die(".s sem global.")
    if not re.search(r'^'+STEM+r':\s*$',txt,re.M):
        die(".s sem label.")
    if "GOTO" not in txt:
        die(".s sem GOTO de loop.")

def patch_battle(text):
    if BATTLE_MARKER in text:
        return text

    fn=text.find("void UpdateSentPokesToOpponentValue(u32 battler)")
    end=text.find("\nvoid BattleScriptPush(",fn)
    if fn<0 or end<0:
        die("Nao achei UpdateSentPokesToOpponentValue.")

    block=text[fn:end]

    # Remove an older champion hook made by this series, if one exists.
    block=re.sub(
        r'\n\s*// HLW_ZINNIA_CHAMPION_LAST_MON_V\d+.*?(?=\n\s*default:)',
        '\n',
        block,
        flags=re.S,
    )

    if "case TRAINER_CLASS_CHAMPION:" in block:
        die("Ja existe outro case TRAINER_CLASS_CHAMPION; nao vou sobrescrever codigo desconhecido.")

    dpos=block.find("        default:")
    if dpos<0:
        die("Nao achei default do switch.")

    add=f'''        // {BATTLE_MARKER}
        case TRAINER_CLASS_CHAMPION:
        {{
            u8 aliveCount = 0;

            for (int i = 0; i < PARTY_SIZE; i++)
            {{
                if (GetMonData(&gEnemyParty[i], MON_DATA_HP) > 0)
                    aliveCount++;
            }}

            if (aliveCount == 1 && !gBattleStruct->lastMonMusicPlayed)
            {{
                PlayBGM({CONST});
                gBattleStruct->lastMonMusicPlayed = TRUE;
            }}
            break;
        }}
'''

    block=block[:dpos]+add+block[dpos:]
    return text[:fn]+block+text[end:]

def patch_radio(text):
    start=text.find("#define RADIO_SOUND_LIST_BGM")
    end=text.find("#define X(songId)",start)
    if start<0 or end<0:
        die("Nao achei RADIO_SOUND_LIST_BGM.")

    macro=text[start:end]
    if f"X({CONST})" not in macro:
        lines=macro.rstrip().splitlines()
        if not lines[-1].rstrip().endswith("\\"):
            lines[-1]=lines[-1].rstrip()+" \\"
        lines.append(f"    X({CONST})")
        text=text[:start]+"\n".join(lines)+"\n"+text[end:]

    for arr in ("sStation_All","sStation_PokemonGba"):
        pat=r'(static const u16\s+'+arr+r'\[\]\s*=\s*\{)(.*?)(\n\};)'
        m=re.search(pat,text,re.S)
        if not m:
            die("Nao achei "+arr)
        body=m.group(2)
        if CONST not in body:
            mark=re.search(r'^[ \t]*STATION_END[ \t]*$',body,re.M)
            if not mark:
                die("Sem STATION_END em "+arr)
            body=body[:mark.start()]+f"    {CONST},\n"+body[mark.start():]
            text=text[:m.start(2)]+body+text[m.end(2):]

    if RADIO_MARKER not in text:
        fn="static const u8 *Radio_GetSpecialDisplayName(u16 songId)"
        pos=text.find(fn)
        if pos<0:
            die("Nao achei Radio_GetSpecialDisplayName.")

        defs=f'''// {RADIO_MARKER}
static const u8 sPokemonGbaName_ZinniaChampion[] = _("ZINNIA THEME (CHAMPION VIOLIN EPIC)");

static const u8 *Radio_GetZinniaChampionDisplayName(u16 songId)
{{
    if (songId == {CONST})
        return sPokemonGbaName_ZinniaChampion;
    return NULL;
}}

'''
        text=text[:pos]+defs+text[pos:]

        m=re.search(
            r'(static const u8 \*Radio_GetSpecialDisplayName\(u16 songId\)\s*\{\s*const u8 \*name;\s*)',
            text,
            re.S,
        )
        if not m:
            die("Formato SpecialDisplayName mudou.")

        hook='''    name = Radio_GetZinniaChampionDisplayName(songId);
    if (name != NULL)
        return name;

'''
        text=text[:m.end()]+hook+text[m.end():]

    return text

def main():
    root=Path.cwd()
    here=Path(__file__).resolve().parent

    songs_h=root/"include/constants/songs.h"
    table=root/"sound/song_table.inc"
    cfg=root/"sound/songs/midi/midi.cfg"
    battle=root/"src/battle_util.c"
    radio=root/"src/radio.c"

    for p in (songs_h,table,cfg,battle,radio):
        if not p.exists():
            die(f"Nao achei {p}. Rode da raiz.")

    found=False
    for p in (root/"include").rglob("*.h"):
        try:
            if "TRAINER_CLASS_CHAMPION" in p.read_text(errors="ignore"):
                found=True
                break
        except Exception:
            pass
    if not found:
        die("Nao achei TRAINER_CLASS_CHAMPION.")

    pack=here/PACK_ZIP
    if not pack.exists():
        die(f"Nao achei {PACK_ZIP} ao lado do Python.")

    slots,bpath,adds=prepare_brothers(root)

    stamp=datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir=root/"PHYTON/backups"/f"zinnia_champion_violin_epic_v2_{stamp}"

    mid=root/f"sound/songs/midi/{STEM}.mid"
    sfile=root/f"sound/songs/midi/{STEM}.s"

    touched=[songs_h,table,cfg,battle,radio,bpath,mid,sfile]
    touched=list(dict.fromkeys(touched))

    for p in touched:
        backup(p,root,bdir)

    originals={p:(p.read_bytes() if p.exists() else None) for p in touched}

    def rollback():
        print("\n[ROLLBACK] Restaurando estado anterior...")
        for p,data in originals.items():
            if data is None:
                if p.exists():
                    p.unlink()
            else:
                p.parent.mkdir(parents=True,exist_ok=True)
                p.write_bytes(data)

    try:
        append_voices(root,bpath,adds)

        with zipfile.ZipFile(pack,"r") as z:
            data=z.read(ASSET)

        if hashlib.sha256(data).hexdigest()!=SHA:
            die("SHA invalido.")

        mid.write_bytes(patch_programs(data,slots))
        os.utime(mid,None)

        cfg.write_text(set_cfg(cfg.read_text()))
        os.utime(cfg,None)

        mid2agb=root/"tools/mid2agb/mid2agb"
        if not mid2agb.exists():
            die("Nao achei tools/mid2agb/mid2agb.")

        subprocess.run(
            [str(mid2agb),str(mid),str(sfile)]+CFG.split(),
            cwd=root,
            check=True,
        )
        verify_s(sfile)

        sh=fix_end(add_constant(songs_h.read_text()))
        tb=add_song_table(table.read_text())
        bu=patch_battle(battle.read_text())
        rt=patch_radio(radio.read_text())

        songs_h.write_text(sh)
        table.write_text(tb)
        battle.write_text(bu)
        radio.write_text(rt)

        final=battle.read_text()
        if BATTLE_MARKER not in final or f"PlayBGM({CONST});" not in final:
            die("Hook champion nao ficou.")
        if "gBattleStruct->lastMonMusicPlayed = TRUE;" not in final:
            die("Guard lastMonMusicPlayed sumiu.")

        stale=[
            root/"build/modern/data/sound_data.o",
            root/"build/modern/data/sound_data.d",
            root/"build/modern/src/battle_util.o",
            root/"build/modern/src/battle_util.d",
            root/"build/modern/src/radio.o",
            root/"build/modern/src/radio.d",
            root/f"build/modern/sound/songs/midi/{STEM}.o",
            root/f"build/modern/sound/songs/midi/{STEM}.d",
        ]
        for p in stale:
            if p.exists():
                print("rm",p.relative_to(root))
                p.unlink()

        print("\n============================================================")
        print("ZINNIA CHAMPION VIOLIN + GUITAR GRAND EPIC V2 INSTALADO")
        print("============================================================")
        print("CHAMPION no ultimo Pokemon -> tema exclusivo:")
        print("  piano dramatico")
        print("  3 camadas de violin")
        print("  1 guitarra principal")
        print("  bateria real kick/snare/hat/crash/ride")
        print("")
        print("Tambem entra em POKEMON GBA + ALL TRACKS.")
        print("Loop real verificado via GOTO.")
        print("Nao chama make e nao usa make -B.")
        print("Backup:",bdir)
        print("\nAgora rode:")
        print("  make -j8")

    except subprocess.CalledProcessError as e:
        rollback()
        print("\n[ERRO] mid2agb falhou:",e)
        raise SystemExit(1)
    except Exception:
        rollback()
        raise

if __name__=="__main__":
    try:
        main()
    except RuntimeError:
        raise SystemExit(1)
