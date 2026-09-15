#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os, subprocess

PACK_ZIP="RADIO_ROCK_METAL_QOTSA_TRIPLE_REMASTER_V2.zip"

SONGS=[
    {
        "stem":"mus_go_with_the_flow",
        "asset":"assets/mus_go_with_the_flow.mid",
        "sha":"7ccc141f566cf33b1da2496b0c2b070b878f8e9ae782e1995987f7d81ac4a604",
        "roles":{
            "ROLE_GUITAR_RHYTHM":"guitar",
            "ROLE_GUITAR_LEAD":"guitar",
            "ROLE_BASS":"bass",
            "ROLE_PIANO":"piano",
            "ROLE_DRUMS":"drums",
        },
    },
    {
        "stem":"mus_3s_and_7s",
        "asset":"assets/mus_3s_and_7s.mid",
        "sha":"bd39a2c365579486f1b09861f22299b087499340d3fa2ed3db66ce239d6dc7b2",
        "roles":{
            "ROLE_GUITAR_RHYTHM":"guitar",
            "ROLE_GUITAR_LEAD":"guitar",
            "ROLE_BASS":"bass",
            "ROLE_DRUMS":"drums",
        },
    },
    {
        "stem":"mus_my_god_is_the_sun",
        "asset":"assets/mus_my_god_is_the_sun.mid",
        "sha":"6100c8b61bea9d581a9dfcf91b62cb90ce3fd39ca4abd56069c17362a69f2dea",
        "roles":{
            "ROLE_GUITAR_MAIN":"guitar",
            "ROLE_GUITAR_SECOND":"guitar",
            "ROLE_BASS":"bass",
            "ROLE_DRUMS":"drums",
        },
    },
]

CFG="-G_hlw_rock_metal -R12 -V090"

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
                voices.append(s)
        return p,voices
    return None,None

def rock_slots(root):
    p,voices=find_group(root,"hlw_rock_metal")
    if p is None:
        die("Nao achei voice_group hlw_rock_metal.")

    def choose(kind):
        ranked=[]
        for i,line in enumerate(voices):
            s=line.lower()
            score=0

            if kind=="guitar":
                if "bass" in s or "drum" in s:
                    continue
                # Prefer the proven SD90/classical overdrive guitar and avoid
                # high-only sample variants when a full-range guitar exists.
                if "overdrive" in s and "guitar" in s:
                    score += 1800
                if "distort" in s and "guitar" in s:
                    score += 1300
                if "guitar" in s:
                    score += 450
                if "sd90" in s:
                    score += 200
                if "classical" in s:
                    score += 100
                if "_high" in s or " high" in s:
                    score -= 500

            elif kind=="bass":
                if "drum" in s:
                    continue
                if "fingered_bass" in s:
                    score += 2000
                elif "bass" in s:
                    score += 900

            elif kind=="drums":
                if "hlw_rock_metal_drumset" in s:
                    score += 2500
                elif "drumset" in s:
                    score += 1400
                elif "drum" in s:
                    score += 600

            elif kind=="piano":
                if "bass" in s or "drum" in s:
                    continue
                if "piano" in s:
                    score += 1800

            if score>0:
                ranked.append((score,i,line))

        if not ranked:
            die(f"Nao achei voice de {kind} em hlw_rock_metal.")
        return max(ranked)

    guitar=choose("guitar")
    bass=choose("bass")
    drums=choose("drums")
    piano=choose("piano")

    print("\nQOTSA - UM UNICO VOICEGROUP PARA AS 3:")
    print("  GROUP  -> hlw_rock_metal")
    print(f"  GUITAR -> {guitar[1]:03d}: {guitar[2]}")
    print(f"  BASS   -> {bass[1]:03d}: {bass[2]}")
    print(f"  DRUMS  -> {drums[1]:03d}: {drums[2]}")
    print(f"  PIANO  -> {piano[1]:03d}: {piano[2]}")

    return {
        "guitar":guitar[1],
        "bass":bass[1],
        "drums":drums[1],
        "piano":piano[1],
    }

def read_vlq(buf,pos):
    value=0
    while True:
        b=buf[pos]; pos+=1
        value=(value<<7)|(b&0x7F)
        if not (b&0x80):
            return value,pos

def track_program_offsets(track_data,file_start):
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
            typ=track_data[pos]; pos+=1
            ln,pos=read_vlq(track_data,pos)
            a=pos; b=pos+ln
            if typ==0x03:
                name=bytes(track_data[a:b]).decode("latin1",errors="ignore")
            pos=b
            running=None
            continue

        if status in (0xF0,0xF7):
            pos+=1
            ln,pos=read_vlq(track_data,pos)
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
        name,offs=track_program_offsets(data[start:end],start)
        upper=name.upper()

        for tag,role in role_tags.items():
            if tag in upper:
                for off in offs:
                    data[off]=slots[role]
                seen.add(tag)
                break

        pos=end

    missing=set(role_tags)-seen
    if missing:
        die("Tracks nao patchadas: "+", ".join(sorted(missing)))

    return bytes(data)

def set_cfg(text,stem):
    line=f"{stem}.mid: {CFG}"
    m=re.search(r'^'+re.escape(stem)+r'\.mid:.*$',text,re.M)
    if m:
        return text[:m.start()]+line+text[m.end():]
    if text and not text.endswith("\n"):
        text+="\n"
    return text+line+"\n"

def verify_symbol(s_path,stem):
    if not s_path.exists():
        die(f"mid2agb nao criou {s_path}.")
    txt=s_path.read_text(errors="ignore")
    if not re.search(r'^\s*\.global\s+'+re.escape(stem)+r'\s*$',txt,re.M):
        die(f"{s_path.name} nao exporta .global {stem}.")
    if not re.search(r'^'+re.escape(stem)+r':\s*$',txt,re.M):
        die(f"{s_path.name} nao possui label {stem}:.")

def main():
    root=Path.cwd()
    script_dir=Path(__file__).resolve().parent
    cfg=root/"sound/songs/midi/midi.cfg"

    if not cfg.exists():
        die("Nao achei midi.cfg. Rode da raiz do pokeemerald-expansion.")

    # Existing radio songs only: do NOT touch song IDs / radio ordering.
    for song in SONGS:
        target=root/f"sound/songs/midi/{song['stem']}.mid"
        if not target.exists():
            die(f"Musica existente nao encontrada: {target}")

    pack=script_dir/PACK_ZIP
    if not pack.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python em PHYTON/.")

    slots=rock_slots(root)

    stamp=datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir=root/"PHYTON/backups"/f"qotsa_triple_remaster_v2_{stamp}"

    touched=[cfg]
    for song in SONGS:
        touched += [
            root/f"sound/songs/midi/{song['stem']}.mid",
            root/f"sound/songs/midi/{song['stem']}.s",
        ]

    for p in touched:
        backup(p,root,bdir)

    originals={p:(p.read_bytes() if p.exists() else None) for p in touched}

    def rollback():
        print("\n[ROLLBACK] Restaurando ports QOTSA anteriores...")
        for p,data in originals.items():
            if data is None:
                if p.exists(): p.unlink()
            else:
                p.parent.mkdir(parents=True,exist_ok=True)
                p.write_bytes(data)

    try:
        assets={}
        with zipfile.ZipFile(pack,"r") as z:
            for song in SONGS:
                data=z.read(song["asset"])
                if hashlib.sha256(data).hexdigest()!=song["sha"]:
                    die(f"SHA invalido: {song['stem']}")
                assets[song["stem"]]=patch_programs(data,song["roles"],slots)

        cfg_text=cfg.read_text()
        for song in SONGS:
            target=root/f"sound/songs/midi/{song['stem']}.mid"
            target.write_bytes(assets[song["stem"]])
            os.utime(target,None)
            cfg_text=set_cfg(cfg_text,song["stem"])

        cfg.write_text(cfg_text)
        os.utime(cfg,None)

        # Generate verified .s directly. NO make and NO make -B.
        mid2agb=root/"tools/mid2agb/mid2agb"
        if not mid2agb.exists():
            die("Nao achei tools/mid2agb/mid2agb. Nao vou chamar make automaticamente.")

        print("\nGerando os 3 .s diretamente...")
        for song in SONGS:
            mid_path=root/f"sound/songs/midi/{song['stem']}.mid"
            s_path=root/f"sound/songs/midi/{song['stem']}.s"
            cmd=[str(mid2agb),str(mid_path),str(s_path)]+CFG.split()
            subprocess.run(cmd,cwd=root,check=True)
            verify_symbol(s_path,song["stem"])
            print(f"  OK: {song['stem']}.s exporta {song['stem']}")

        # Only stale audio objects/deps for these songs.
        for song in SONGS:
            for p in (
                root/f"build/modern/sound/songs/midi/{song['stem']}.o",
                root/f"build/modern/sound/songs/midi/{song['stem']}.d",
            ):
                if p.exists():
                    print("rm",p.relative_to(root))
                    p.unlink()

        print("\n============================================================")
        print("QOTSA TRIPLE REAL ROCK V2 INSTALADO")
        print("============================================================")
        print("As 3 usam EXATAMENTE o mesmo voicegroup: hlw_rock_metal")
        print("")
        print("GO WITH THE FLOW:")
        print("  guitarra rhythm + guitarra lead + baixo + bateria + piano original discreto")
        print("")
        print("3S & 7S:")
        print("  guitarra rhythm + guitarra lead + baixo + bateria")
        print("")
        print("MY GOD IS THE SUN:")
        print("  duas guitarras + baixo + bateria")
        print("")
        print("REGRA DE BATERIA:")
        print("  MIDI final usa SOMENTE 36 kick / 40 snare / 42 metal-hat-cymbal")
        print("  sem GM tom/cymbal perdido virando beep")
        print("")
        print("BPM/tempo maps originais preservados.")
        print("Primeira nota das 3 continua no tick 0.")
        print("Cadastro/ordem da Radio nao foi alterado.")
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
    try:
        main()
    except RuntimeError:
        raise SystemExit(1)
