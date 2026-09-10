#!/usr/bin/env python3
from pathlib import Path
import re
import zipfile
import hashlib
import shutil
import datetime
import os
from collections import Counter

PACK_ZIP = "RADIO_POP_ABRACADABRA_COMPLETE_CUT_V3.zip"
REFERENCE = "mus_broken_hearted_girl_beyonce"
TRACK = {'stem': 'mus_abracadabra', 'const': 'MUS_ABRACADABRA', 'label': 'ABRACADABRA (LADY GAGA)', 'sha256': '15cc04b6cbb661718075ea31d1543052c961afe39869da1073f83e2f7b73bb77', 'volume': 84, 'reverb': 10}

PLACEHOLDER_ROLE = {
    0: "piano",
    33: "bass",
    40: "strings",
    44: "pad",
}

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def backup_file(path, root, backup_dir):
    if not path.exists():
        return
    dst = backup_dir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def sha256(data):
    return hashlib.sha256(data).hexdigest()

def read_varlen(data, pos):
    value=0
    for _ in range(4):
        if pos >= len(data):
            raise ValueError("VLQ truncado")
        b=data[pos]; pos+=1
        value=(value<<7)|(b&0x7F)
        if not (b&0x80):
            return value,pos
    return value,pos

def program_usage(blob):
    if blob[:4] != b"MThd":
        raise ValueError("MIDI invalido")
    hlen=int.from_bytes(blob[4:8],"big")
    pos=8+hlen
    current=[0]*16
    usage=[Counter() for _ in range(16)]

    while pos < len(blob):
        if blob[pos:pos+4] != b"MTrk":
            raise ValueError("MTrk esperado")
        ln=int.from_bytes(blob[pos+4:pos+8],"big")
        trk=blob[pos+8:pos+8+ln]
        i=0; running=None

        while i < len(trk):
            _,i=read_varlen(trk,i)
            if i>=len(trk): break
            b=trk[i]
            if b&0x80:
                status=b; i+=1
                if status<0xF0: running=status
                elif status in (0xF0,0xF7,0xFF): running=None
            else:
                if running is None:
                    raise ValueError("running status invalido")
                status=running

            if status==0xFF:
                i+=1
                ln2,i=read_varlen(trk,i)
                i+=ln2
                continue
            if status in (0xF0,0xF7):
                ln2,i=read_varlen(trk,i)
                i+=ln2
                continue
            if status>=0xF0:
                i += {0xF1:1,0xF2:2,0xF3:1,0xF6:0}.get(status,0)
                continue

            kind=status&0xF0
            ch=status&0x0F
            n=1 if kind in (0xC0,0xD0) else 2

            if kind==0xC0:
                current[ch]=trk[i]
            elif kind==0x90:
                vel=trk[i+1]
                if vel>0:
                    usage[ch][current[ch]]+=1
            i+=n

        pos += 8+ln
    return usage

def dominant(usage,ch,fallback=None):
    if usage[ch]:
        return usage[ch].most_common(1)[0][0]
    if fallback is not None:
        return fallback
    die(f"Broken Hearted Girl sem programa utilizavel no canal {ch}")

def derive_roles(blob):
    u=program_usage(blob)
    roles={
        "piano": dominant(u,2),
        "bass": dominant(u,1),
        "strings": dominant(u,4),
        "pad": dominant(u,5,dominant(u,4)),
        "drums": dominant(u,9),
    }
    return roles

def remap(blob,roles):
    hlen=int.from_bytes(blob[4:8],"big")
    pos=8+hlen
    out=bytearray(blob[:pos])

    while pos<len(blob):
        if blob[pos:pos+4] != b"MTrk":
            raise ValueError("MTrk esperado")
        ln=int.from_bytes(blob[pos+4:pos+8],"big")
        trk=bytearray(blob[pos+8:pos+8+ln])
        i=0; running=None

        while i<len(trk):
            _,i=read_varlen(trk,i)
            if i>=len(trk): break
            b=trk[i]
            if b&0x80:
                status=b; i+=1
                if status<0xF0: running=status
                elif status in (0xF0,0xF7,0xFF): running=None
            else:
                if running is None:
                    raise ValueError("running status invalido")
                status=running

            if status==0xFF:
                i+=1
                ln2,i=read_varlen(trk,i)
                i+=ln2
                continue
            if status in (0xF0,0xF7):
                ln2,i=read_varlen(trk,i)
                i+=ln2
                continue
            if status>=0xF0:
                i += {0xF1:1,0xF2:2,0xF3:1,0xF6:0}.get(status,0)
                continue

            kind=status&0xF0
            ch=status&0x0F
            n=1 if kind in (0xC0,0xD0) else 2

            if kind==0xC0:
                if ch==9:
                    trk[i]=roles["drums"]&0x7F
                else:
                    role=PLACEHOLDER_ROLE.get(trk[i],"piano")
                    trk[i]=roles[role]&0x7F
            i+=n

        out += b"MTrk"+len(trk).to_bytes(4,"big")+trk
        pos += 8+ln
    return bytes(out)

def tune_opts(opts,volume,reverb):
    if re.search(r'(?<!\S)-V\d+',opts):
        opts=re.sub(r'(?<!\S)-V\d+',f'-V{volume:03d}',opts)
    else:
        opts += f' -V{volume:03d}'
    if re.search(r'(?<!\S)-R\d+',opts):
        opts=re.sub(r'(?<!\S)-R\d+',f'-R{reverb}',opts)
    else:
        opts += f' -R{reverb}'
    return opts.strip()

def main():
    root=Path.cwd()
    script_dir=Path(__file__).resolve().parent
    midi_dir=root/"sound/songs/midi"
    cfg=midi_dir/"midi.cfg"
    songs_h=root/"include/constants/songs.h"

    if not cfg.exists() or not songs_h.exists():
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    songs_text=songs_h.read_text()
    if not re.search(r'^#define\s+MUS_ABRACADABRA\b',songs_text,re.M):
        die("MUS_ABRACADABRA nao existe em songs.h.")

    current=midi_dir/"mus_abracadabra.mid"
    if not current.exists():
        die("Nao achei sound/songs/midi/mus_abracadabra.mid")

    ref=midi_dir/f"{REFERENCE}.mid"
    if not ref.exists():
        die("Nao achei Broken Hearted Girl, referencia 10/10.")

    cfg_text=cfg.read_text()
    rm=re.search(rf'^{re.escape(REFERENCE)}\.mid:\s*(.+)$',cfg_text,re.M)
    if not rm:
        die("Broken Hearted Girl nao esta em midi.cfg.")
    ref_opts=rm.group(1).strip()
    if not re.search(r'(?<!\S)-G\S+',ref_opts):
        die("Linha de Broken Hearted Girl sem -G voicegroup.")

    zpath=script_dir/PACK_ZIP
    if not zpath.exists():
        die(f"Nao achei {PACK_ZIP} ao lado do Python.")

    with zipfile.ZipFile(zpath,"r") as z:
        data=z.read("assets/mus_abracadabra.mid")

    if sha256(data) != TRACK["sha256"]:
        die("SHA256 do MIDI do pacote nao confere.")

    roles=derive_roles(ref.read_bytes())
    remapped=remap(data,roles)
    opts=tune_opts(ref_opts,TRACK["volume"],TRACK["reverb"])

    print("== ABRACADABRA COMPLETE CUT / GBA V3 ==")
    print("Referencia sonora: BROKEN HEARTED GIRL (10/10)")
    print("Nao cria ID novo; substitui MUS_ABRACADABRA existente.")
    print("Radio/capa/song_table permanecem iguais.\n")
    print("Programas derivados:")
    for k,v in roles.items():
        print(f"  {k:8s} -> {v}")
    print("CFG final:",opts)

    stamp=datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_dir=root/"PHYTON/backups"/f"abracadabra_complete_cut_v3_{stamp}"
    backup_file(current,root,backup_dir)
    backup_file(cfg,root,backup_dir)

    dst=current
    dst.write_bytes(remapped)
    os.utime(dst,None)

    line=f'mus_abracadabra.mid: {opts}'
    pat=r'^mus_abracadabra\.mid:.*$'
    if re.search(pat,cfg_text,re.M):
        cfg_text=re.sub(pat,line,cfg_text,flags=re.M)
    else:
        if cfg_text and not cfg_text.endswith("\n"):
            cfg_text+="\n"
        cfg_text+=line+"\n"
    cfg.write_text(cfg_text)

    for p in (
        midi_dir/"mus_abracadabra.s",
        root/"build/modern/sound/songs/midi/mus_abracadabra.o",
    ):
        if p.exists():
            p.unlink()

    print("\nBackup:",backup_dir)
    print("mus_abracadabra.mid: substituido")
    print("midi.cfg:",line)
    print("\nAgora:")
    print("  make -j8")

if __name__=="__main__":
    main()
