#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os

PACK_ZIP="RADIO_ANIME_GUTS_THEME_LOW_CHOIR_V4.zip"
MIDI_SHA256="1832faeee73c905d464d2e53d54e54ba2ea2153bd1b99db26c89d9562fb1fcfe"
CHOIR_SYMBOL="DirectSoundWaveData_classical_choir_voice_ahhs"

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
            return p
    return None

def symbol_exists(root,symbol):
    for p in (root/"sound").rglob("*.inc"):
        try:
            if symbol in p.read_text(errors="ignore"):
                return True,p
        except Exception:
            pass
    return False,None

def rewrite_guts_group(path):
    text=path.read_text(errors="ignore")
    lines=text.splitlines()
    group="guts_theme"

    start=None
    end=len(lines)
    for i,line in enumerate(lines):
        if re.match(r'^\s*voice_group\s+'+re.escape(group)+r'\s*$',line):
            start=i
            break
    if start is None:
        die("Nao achei voice_group guts_theme.")

    for i in range(start+1,len(lines)):
        if re.match(r'^\s*voice_group\s+[A-Za-z0-9_]+\s*$',lines[i]):
            end=i
            break

    block=lines[start+1:end]
    voices=[
        line.strip().split("@",1)[0].rstrip()
        for line in block
        if line.strip().startswith("voice_")
        and not line.strip().startswith("voice_group")
    ]
    if len(voices)<2:
        die("voicegroup_guts_theme nao tem piano+violin atuais.")

    piano=voices[0]
    violin=voices[1]

    cleaned=[
        line for line in block
        if not (line.strip().startswith("voice_")
                and not line.strip().startswith("voice_group"))
    ]

    newvoices=[
        f"    {piano} @ 0 - HLW piano",
        f"    {violin} @ 1 - HLW violin",
        "    voice_directsound 60, 0, "
        + CHOIR_SYMBOL
        + ", 205, 0, 245, 220 @ 2 - HLW LOW CHOIR AAH MAIN",
        "    voice_directsound 60, 0, "
        + CHOIR_SYMBOL
        + ", 220, 0, 250, 235 @ 3 - HLW LOW CHOIR AAH DEEP SUPPORT",
    ]

    new_lines=lines[:start+1]+newvoices+cleaned+lines[end:]
    path.write_text("\n".join(new_lines)+"\n")

    print("\nvoice_group guts_theme:")
    print("  000 -> piano preservado")
    print("  001 -> violin preservado")
    print("  002 -> LOW CHOIR AAH main")
    print("  003 -> LOW CHOIR AAH deep support")
    print("  female_voice aguda REMOVIDA")

def main():
    root=Path.cwd()
    script_dir=Path(__file__).resolve().parent

    midi=root/"sound/songs/midi/mus_guts_theme.mid"
    cfg=root/"sound/songs/midi/midi.cfg"
    groupfile=find_group(root,"guts_theme")
    if not midi.exists() or not cfg.exists() or groupfile is None:
        die("Nao achei Guts Theme / midi.cfg / voice_group guts_theme.")

    ok,p=symbol_exists(root,CHOIR_SYMBOL)
    if not ok:
        die("Seu projeto nao possui classical_choir_voice_ahhs.")
    print("Choir sample encontrado em:",p)

    zpath=script_dir/PACK_ZIP
    if not zpath.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python.")

    with zipfile.ZipFile(zpath,"r") as z:
        data=z.read("assets/mus_guts_theme.mid")
    if hashlib.sha256(data).hexdigest()!=MIDI_SHA256:
        die("SHA256 do MIDI nao confere.")

    stamp=datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir=root/"PHYTON/backups"/f"guts_low_choir_v4_{stamp}"
    backup(midi,root,bdir)
    backup(cfg,root,bdir)
    backup(groupfile,root,bdir)

    rewrite_guts_group(groupfile)

    midi.write_bytes(data)
    os.utime(midi,None)

    text=cfg.read_text()
    line="mus_guts_theme.mid: -G_guts_theme -R20 -V090"
    m=re.search(r'^mus_guts_theme\.mid:.*$',text,re.M)
    if m:
        text=text[:m.start()]+line+text[m.end():]
    else:
        text += ("\n" if not text.endswith("\n") else "") + line + "\n"
    cfg.write_text(text)

    print("\nFORCANDO REBUILD:")
    for stale in (
        root/"sound/songs/midi/mus_guts_theme.s",
        root/"build/modern/sound/songs/midi/mus_guts_theme.o",
        root/"build/modern/sound/songs/midi/mus_guts_theme.d",
    ):
        if stale.exists():
            print(" rm -f",stale.relative_to(root))
            stale.unlink()
    os.utime(midi,None)
    os.utime(groupfile,None)

    print("\nV4 LOW CHOIR instalada:")
    print("  intro = piano forte preservado")
    print("  vocal principal = choir AAH grave (-1 oitava)")
    print("  OOOH longo = mesmo choir AAH ainda mais grave")
    print("  female_voice aguda removida")
    print("  violin mais baixo no mix")
    print("\nAgora: make -j8")

if __name__=="__main__":
    main()
