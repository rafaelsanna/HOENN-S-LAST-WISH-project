#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os, subprocess

PACK_ZIP="RADIO_REMASTER_HOPE_MIDNA_EVERLASTING_V2.zip"

SONGS=[
    {
        "stem":"mus_hope_grand_chase",
        "asset":"assets/mus_hope_grand_chase.mid",
        "sha":"f69c4376e3d35b099342229a610c36b19478f544b0984c723844159c50579971",
        "group":"hlw_rock_metal",
        "cfg":"-G_hlw_rock_metal -R16 -V090",
        "roles":{
            "ROLE_BASS":"bass",
            "ROLE_PIANO":"piano",
            "ROLE_VIOLIN":"violin",
            "ROLE_DRUMS":"drums",
        },
    },
    {
        "stem":"mus_midnas_lament",
        "asset":"assets/mus_midnas_lament.mid",
        "sha":"ff75c220cb9379c7f6b054edc36d1f2c54322a2583bd39de536538c59f30e2b9",
        "group":"brothers",
        "cfg":"-G_brothers -R20 -V090",
        "roles":{
            "ROLE_PIANO":"piano",
            "ROLE_VIOLIN":"violin",
        },
    },
    {
        "stem":"mus_everlasting_wanderers",
        "asset":"assets/mus_everlasting_wanderers.mid",
        "sha":"eed7b3500638e291fff62b654dfa4645dd60dcf7c50d1be726ec83237128b848",
        "group":"brothers",
        "cfg":"-G_brothers -R17 -V090",
        "roles":{
            "ROLE_PIANO":"piano",
            "ROLE_VIOLIN":"violin",
        },
    },
]

def die(msg):
    print("\n[ERRO]",msg)
    raise RuntimeError(msg)

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

def brothers_slots(root):
    p,lines,start,end,voices=find_group(root,"brothers")
    if p is None or len(voices)<2:
        die("Nao achei voice_group brothers.")

    piano=None
    violin=None

    for i,(clean,original) in enumerate(voices):
        s=original.lower()
        if piano is None and "piano" in s and "bass" not in s and "drum" not in s:
            piano=i
        if violin is None and any(x in s for x in ("violin","fiddle","solo_string")):
            violin=i

    # Proven Brothers layout from the Fullmetal remaster.
    if piano is None:
        piano=0
    if violin is None:
        violin=1

    if piano>=len(voices) or violin>=len(voices):
        die("brothers nao possui os slots esperados de piano/violin.")

    print("\nBROTHERS:")
    print(f"  PIANO  -> {piano:03d}: {voices[piano][1]}")
    print(f"  VIOLIN -> {violin:03d}: {voices[violin][1]}")

    return p,voices,piano,violin,voices[violin][0]

def hope_slots(root,brothers_violin_clean):
    p,lines,start,end,voices=find_group(root,"hlw_rock_metal")
    if p is None:
        die("Nao achei hlw_rock_metal.")

    def choose(kind):
        ranked=[]
        for i,(clean,original) in enumerate(voices):
            s=original.lower()
            score=0
            if kind=="piano":
                if "piano" in s and "bass" not in s and "drum" not in s: score=1000
            elif kind=="bass":
                if "fingered_bass" in s: score=1200
                elif "bass" in s and "drum" not in s: score=600
            elif kind=="drums":
                if "hlw_rock_metal_drumset" in s: score=1500
                elif "drumset" in s: score=900
                elif "drum" in s: score=400
            if score:
                ranked.append((score,i,original))
        if not ranked:
            die(f"Nao achei {kind} em hlw_rock_metal.")
        return max(ranked)

    piano=choose("piano")
    bass=choose("bass")
    drums=choose("drums")

    violin_slot=None
    for i,(clean,original) in enumerate(voices):
        if clean==brothers_violin_clean:
            violin_slot=i
            break

    changed=False
    if violin_slot is None:
        violin_slot=len(voices)
        if violin_slot>127:
            die("hlw_rock_metal ja passou de 128 voices.")
        insertion=f"    {brothers_violin_clean} @ HOPE GRAND CHASE VIOLIN V2"
        new_lines=lines[:end]+[insertion]+lines[end:]
        p.write_text("\n".join(new_lines)+"\n")
        changed=True
        print(f"\nViolin de Brothers adicionado ao hlw_rock_metal slot {violin_slot:03d}")

    print("\nHOPE / HLW_ROCK_METAL:")
    print(f"  BASS   -> {bass[1]:03d}: {bass[2]}")
    print(f"  PIANO  -> {piano[1]:03d}: {piano[2]}")
    print(f"  VIOLIN -> {violin_slot:03d}: Brothers violin")
    print(f"  DRUMS  -> {drums[1]:03d}: {drums[2]}")

    return p,{
        "bass":bass[1],
        "piano":piano[1],
        "violin":violin_slot,
        "drums":drums[1],
    },changed

def read_vlq(buf,pos):
    value=0
    while True:
        b=buf[pos]; pos+=1
        value=(value<<7)|(b&0x7F)
        if not (b&0x80):
            return value,pos

def track_offsets(data,file_start):
    pos=0
    running=None
    name=""
    offsets=[]
    while pos<len(data):
        _,pos=read_vlq(data,pos)
        if pos>=len(data): break
        status=data[pos]

        if status==0xFF:
            pos+=1
            typ=data[pos]; pos+=1
            ln,pos=read_vlq(data,pos)
            a=pos; b=pos+ln
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

def patch_programs(data,role_tags,slots):
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
        name,offs=track_offsets(data[start:end],start)
        upper=name.upper()

        role=None
        for tag,r in role_tags.items():
            if tag in upper:
                role=r
                break

        if role:
            if role not in slots:
                die(f"Role {role} sem slot.")
            for off in offs:
                data[off]=slots[role]
            seen.add(role)

        pos=end

    expected=set(role_tags.values())
    if seen!=expected:
        die(f"Roles faltando no MIDI. esperado={expected} visto={seen}")

    return bytes(data)

def set_cfg(text,stem,options):
    line=f"{stem}.mid: {options}"
    m=re.search(r'^'+re.escape(stem)+r'\.mid:.*$',text,re.M)
    if m:
        return text[:m.start()]+line+text[m.end():]
    if text and not text.endswith("\n"):
        text+="\n"
    return text+line+"\n"

def verify_symbol(s_path,stem):
    if not s_path.exists():
        die(f"{s_path} nao foi gerado.")
    text=s_path.read_text(errors="ignore")
    if not re.search(r'^\s*\.global\s+'+re.escape(stem)+r'\s*$',text,re.M):
        die(f"{s_path.name} nao exporta .global {stem}.")
    if not re.search(r'^'+re.escape(stem)+r':\s*$',text,re.M):
        die(f"{s_path.name} nao possui label {stem}:.")

def main():
    root=Path.cwd()
    script_dir=Path(__file__).resolve().parent

    cfg=root/"sound/songs/midi/midi.cfg"
    if not cfg.exists():
        die("Nao achei midi.cfg. Rode da raiz do pokeemerald-expansion.")

    # These 3 songs already exist in the game. This installer ONLY remasters them.
    for song in SONGS:
        target=root/f"sound/songs/midi/{song['stem']}.mid"
        if not target.exists():
            die(f"A musica existente nao foi encontrada: {target}")

    pack=script_dir/PACK_ZIP
    if not pack.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python em PHYTON/.")

    brothers_file,brothers_voices,b_piano,b_violin,b_violin_clean=brothers_slots(root)

    # Backup BEFORE any possible voicegroup edit.
    stamp=datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir=root/"PHYTON/backups"/f"hope_midna_everlasting_v2_{stamp}"

    prelim=[
        cfg,
        brothers_file,
    ]
    # hlw file known only after lookup:
    hlw_file,_,_,_,_=find_group(root,"hlw_rock_metal")
    if hlw_file is None:
        die("Nao achei hlw_rock_metal.")
    prelim.append(hlw_file)

    for song in SONGS:
        prelim += [
            root/f"sound/songs/midi/{song['stem']}.mid",
            root/f"sound/songs/midi/{song['stem']}.s",
        ]

    for p in prelim:
        backup(p,root,bdir)

    originals={p:(p.read_bytes() if p.exists() else None) for p in prelim}

    def rollback():
        print("\n[ROLLBACK] Restaurando os 3 ports antigos...")
        for p,data in originals.items():
            if data is None:
                if p.exists(): p.unlink()
            else:
                p.parent.mkdir(parents=True,exist_ok=True)
                p.write_bytes(data)

    try:
        hope_group_file,hope_slots_map,_=hope_slots(root,b_violin_clean)
        brothers_map={"piano":b_piano,"violin":b_violin}

        slot_maps={
            "mus_hope_grand_chase":hope_slots_map,
            "mus_midnas_lament":brothers_map,
            "mus_everlasting_wanderers":brothers_map,
        }

        assets={}
        with zipfile.ZipFile(pack,"r") as z:
            for song in SONGS:
                data=z.read(song["asset"])
                if hashlib.sha256(data).hexdigest()!=song["sha"]:
                    die(f"SHA invalido: {song['stem']}")
                data=patch_programs(data,song["roles"],slot_maps[song["stem"]])
                assets[song["stem"]]=data

        # Write all MIDIs first.
        cfg_text=cfg.read_text()
        for song in SONGS:
            target=root/f"sound/songs/midi/{song['stem']}.mid"
            target.write_bytes(assets[song["stem"]])
            os.utime(target,None)
            cfg_text=set_cfg(cfg_text,song["stem"],song["cfg"])
        cfg.write_text(cfg_text)
        os.utime(cfg,None)

        # SAFETY: generate each .s now and verify the symbol before success.
        print("\nGerando e verificando os 3 .s...")
        for song in SONGS:
            srel=f"sound/songs/midi/{song['stem']}.s"
            subprocess.run(
                ["make","-B",srel],
                cwd=root,
                check=True
            )
            verify_symbol(root/srel,song["stem"])
            print(f"  OK: {song['stem']}.s -> {song['stem']}")

        # Remove only stale objects/deps, NEVER the verified .s files.
        for song in SONGS:
            for p in (
                root/f"build/modern/sound/songs/midi/{song['stem']}.o",
                root/f"build/modern/sound/songs/midi/{song['stem']}.d",
            ):
                if p.exists():
                    print("rm",p.relative_to(root))
                    p.unlink()

        # Voicegroup may have gained one violin definition.
        for p in (
            root/"build/modern/data/sound_data.o",
            root/"build/modern/data/sound_data.d",
        ):
            if p.exists():
                print("rm",p.relative_to(root))
                p.unlink()

        print("\n======================================================")
        print("REMASTER V2 INSTALADO COM SEGURANCA")
        print("======================================================")
        print("HOPE - GRAND CHASE:")
        print("  bass original + piano real + VIOLIN na melodia + bateria real")
        print("  timing/BPM original preservado")
        print("")
        print("MIDNA'S LAMENT:")
        print("  piano real toca a musica inteira")
        print("  violin baixo no mix apenas como suporte emocional")
        print("  nenhum synth")
        print("")
        print("EVERLASTING WANDERERS:")
        print("  low/mid original -> piano real")
        print("  lead superior -> violin")
        print("")
        print("Os 3 .s foram gerados e os 3 simbolos foram verificados.")
        print("O cadastro da Radio NAO foi alterado.")
        print("Backup:",bdir)
        print("\nAgora rode apenas:")
        print("  make -j8")

    except Exception:
        rollback()
        raise

if __name__=="__main__":
    try:
        main()
    except subprocess.CalledProcessError as e:
        print("\n[ERRO] make/mid2agb falhou:",e)
        raise SystemExit(1)
    except RuntimeError:
        raise SystemExit(1)
