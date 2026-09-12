#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os

PACK_ZIP="RADIO_ANIME_YOU_SAY_RUN_MHA_EPIC_ROCK_V6_EPIANO_DRUM_FIX.zip"
MIDI_SHA256="534c6aa7f5e4eab886d167b7a874c376935ff17e8de5267aeb611b6ec14deff2"
ROCK_GROUP="hlw_rock_metal"

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
        if not re.search(rf'^\s*voice_group\s+{re.escape(name)}\s*$',text,re.M):
            continue
        lines=text.splitlines()
        start=None
        end=len(lines)
        for i,line in enumerate(lines):
            if re.match(r'^\s*voice_group\s+'+re.escape(name)+r'\s*$',line):
                start=i
                break
        if start is None:
            continue
        for i in range(start+1,len(lines)):
            if re.match(r'^\s*voice_group\s+[A-Za-z0-9_]+\s*$',lines[i]):
                end=i
                break
        voices=[]
        for line in lines[start+1:end]:
            s=line.strip()
            if s.startswith("voice_") and not s.startswith("voice_group"):
                voices.append((s.split("@",1)[0].rstrip(),s))
        return p,lines,start,end,voices
    return None,None,None,None,None

def guitar_score(line):
    s=line.lower()
    if "drum" in s or "bass" in s:
        return -10000
    score=0
    if "distort" in s: score+=500
    if "guitar" in s: score+=250
    if "overdrive" in s: score+=220
    if "electric" in s: score+=100
    # This is the important fix: the V1 chose the HIGH guitar sample.
    if "low" in s: score+=700
    if "_high" in s or " high" in s: score-=900
    return score

def piano_score(line):
    s=line.lower()
    if "bass" in s or "drum" in s:
        return -10000
    return (500 if "piano_keysplit" in s else
            420 if "grand_piano" in s else
            350 if "piano" in s else 0)

def drum_score(line):
    s=line.lower()
    return 500 if "hlw_rock_metal_drumset" in s else 350 if "drumset" in s else 200 if "drum" in s else 0

def best_slot(voices,score_func):
    ranked=sorted(
        ((score_func(original),i,clean,original)
         for i,(clean,original) in enumerate(voices)),
        reverse=True,key=lambda x:x[0]
    )
    for sc,i,clean,original in ranked:
        if sc>0:
            return i,clean,original,sc
    return None

def brothers_violin(root):
    p,lines,start,end,voices=find_group(root,"brothers")
    if p is None or len(voices)<2:
        die("Nao achei o violin do voice_group brothers que ficou perfeito.")
    # Brothers V2 was built as slot 0 piano / slot 1 violin / slot 2 strings.
    clean,original=voices[1]
    print("\nVIOLIN: reutilizando EXATAMENTE o voice de Brothers:")
    print(" ",original)
    print("  fonte:",p)
    return clean,original

def ensure_brothers_violin_in_rock(root,rock_path,lines,end,voices):
    clean,original=brothers_violin(root)

    # Reuse exact definition if already present in hlw_rock_metal.
    for i,(vclean,voriginal) in enumerate(voices):
        if vclean==clean:
            print(f"  ja existe em hlw_rock_metal slot {i:03d}")
            return i, lines, False

    slot=len(voices)
    if slot>127:
        die("hlw_rock_metal passou de 128 slots.")

    insertion=f"    {clean} @ YOU SAY RUN V2 BROTHERS VIOLIN"
    new_lines=lines[:end]+[insertion]+lines[end:]
    rock_path.write_text("\n".join(new_lines)+"\n")
    print(f"  adicionado em hlw_rock_metal slot {slot:03d}")
    return slot,new_lines,True

def read_vlq(buf,pos):
    value=0
    while True:
        b=buf[pos]; pos+=1
        value=(value<<7)|(b&0x7F)
        if not (b&0x80):
            return value,pos

def track_offsets(track_data,file_start):
    pos=0
    running=None
    name=""
    offsets=[]
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
            die("MIDI invalido: running status.")
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

def patch_programs(path,picks):
    data=bytearray(path.read_bytes())
    if data[:4]!=b"MThd":
        die("MIDI invalido.")
    tags={
        "ROLE_PIANO":"piano",
        "ROLE_GUITAR":"guitar",
        "ROLE_VIOLIN":"violin",
        "ROLE_DRUMS":"drums",
    }
    pos=8+int.from_bytes(data[4:8],"big")
    while pos+8<=len(data):
        if data[pos:pos+4]!=b"MTrk":
            die("MTrk esperado.")
        ln=int.from_bytes(data[pos+4:pos+8],"big")
        start=pos+8; end=start+ln
        name,offs=track_offsets(data[start:end],start)
        role=None
        for tag,r in tags.items():
            if tag in name.upper():
                role=r; break
        if role:
            for off in offs:
                data[off]=picks[role]
        pos=end
    path.write_bytes(data)

def main():
    root=Path.cwd()
    script_dir=Path(__file__).resolve().parent

    midi=root/"sound/songs/midi/mus_you_say_run.mid"
    cfg=root/"sound/songs/midi/midi.cfg"
    if not midi.exists() or not cfg.exists():
        die("You Say Run ainda nao esta instalada ou voce nao esta na raiz.")

    rock_path,lines,start,end,voices=find_group(root,ROCK_GROUP)
    if rock_path is None:
        die("Nao achei hlw_rock_metal.")

    piano=best_slot(voices,piano_score)
    guitar=best_slot(voices,guitar_score)
    drums=best_slot(voices,drum_score)

    if piano is None or guitar is None or drums is None:
        die("Nao achei piano + LOW distortion guitar + drums no hlw_rock_metal.")

    # Validate Brothers violin before touching anything.
    vclean,voriginal=brothers_violin(root)

    zpath=script_dir/PACK_ZIP
    if not zpath.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python.")

    with zipfile.ZipFile(zpath,"r") as z:
        data=z.read("assets/mus_you_say_run.mid")
    if hashlib.sha256(data).hexdigest()!=MIDI_SHA256:
        die("SHA256 do MIDI nao confere.")

    stamp=datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir=root/"PHYTON/backups"/f"you_say_run_v6_epiano_drum_fix_{stamp}"
    for p in (midi,cfg,rock_path):
        backup(p,root,bdir)

    violin_slot,_,changed=ensure_brothers_violin_in_rock(
        root,rock_path,lines,end,voices
    )

    picks={
        "piano":piano[0],
        "guitar":guitar[0],
        "violin":violin_slot,
        "drums":drums[0],
    }

    print("\nYOU SAY RUN V2 slots:")
    print(f"  PIANO  -> {picks['piano']:03d}: {piano[3]}")
    print(f"  GUITAR -> {picks['guitar']:03d}: {guitar[3]}")
    print(f"  VIOLIN -> {picks['violin']:03d}: Brothers violin")
    print(f"  DRUMS  -> {picks['drums']:03d}: {drums[3]}")

    midi.write_bytes(data)
    patch_programs(midi,picks)
    os.utime(midi,None)

    text=cfg.read_text()
    line="mus_you_say_run.mid: -G_hlw_rock_metal -R10 -V090"
    m=re.search(r'^mus_you_say_run\.mid:.*$',text,re.M)
    if m:
        text=text[:m.start()]+line+text[m.end():]
    else:
        text += ("\n" if not text.endswith("\n") else "") + line + "\n"
    cfg.write_text(text)

    print("\nFORCANDO REBUILD:")
    for stale in (
        root/"sound/songs/midi/mus_you_say_run.s",
        root/"build/modern/sound/songs/midi/mus_you_say_run.o",
        root/"build/modern/sound/songs/midi/mus_you_say_run.d",
        root/"build/modern/sound/voicegroups.o",
        root/"build/modern/sound/voicegroups.d",
    ):
        if stale.exists():
            print(" rm -f",stale.relative_to(root))
            stale.unlink()

    os.utime(midi,None)
    os.utime(cfg,None)
    os.utime(rock_path,None)

    print("\nV6 E-PIANO + ORIGINAL DRUM TIMING instalada:")
    print("  - GUITARRA V5 preservada exatamente")
    print("  - VIOLIN V5 preservado exatamente")
    print("  - o som surdo foi identificado: Electric Piano grave dentro do track de piano")
    print("  - notas graves desse E-Piano foram dobradas para o registro medio do piano")
    print("  - bateria usa o TIMING do MIDI original")
    print("  - timbre continua o rock drumset 36/40/42")
    print("  - apenas sequencias rapidas demais foram afinadas para nao virar som digital")

    
    
    print("  - violin = exatamente o voice de Brothers")
    
    
    
    
    print("  - bateria preservada, mas mais controlada")
    print("\nAgora: make -j8")

if __name__=="__main__":
    main()
