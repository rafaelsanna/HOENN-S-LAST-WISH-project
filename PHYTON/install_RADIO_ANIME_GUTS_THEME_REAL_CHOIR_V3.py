#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os

PACK_ZIP="RADIO_ANIME_GUTS_THEME_REAL_CHOIR_V3.zip"
MIDI_SHA256="f4c0caf2f9dc68aefe8370e8d3213914c1c439339c7452152f267dedab8460d6"

CHOIR_SYMBOL="DirectSoundWaveData_classical_choir_voice_ahhs"
FEMALE_SYMBOL="DirectSoundWaveData_unknown_female_voice"

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
    # direct_sound_data.inc is the authoritative table, but scan sound/ safely.
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
        die("voicegroup_guts_theme nao tem piano+violin atuais para preservar.")

    # Preserve the two instruments that already sounded good in V2/V3:
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
        + ", 210, 0, 245, 210 @ 2 - HLW REAL CHOIR AAH",
        "    voice_directsound 60, 0, "
        + FEMALE_SYMBOL
        + ", 220, 0, 240, 210 @ 3 - HLW FEMALE OOH SUPPORT",
    ]

    new_lines=lines[:start+1]+newvoices+cleaned+lines[end:]
    path.write_text("\n".join(new_lines)+"\n")

    print("\nvoice_group guts_theme:")
    print("  000 ->",piano)
    print("  001 ->",violin)
    print("  002 -> REAL CHOIR:",CHOIR_SYMBOL)
    print("  003 -> FEMALE VOICE:",FEMALE_SYMBOL)

def main():
    root=Path.cwd()
    script_dir=Path(__file__).resolve().parent

    midi=root/"sound/songs/midi/mus_guts_theme.mid"
    cfg=root/"sound/songs/midi/midi.cfg"
    groupfile=find_group(root,"guts_theme")

    if not midi.exists() or not cfg.exists() or groupfile is None:
        die("Nao achei Guts Theme / midi.cfg / voice_group guts_theme. Rode da raiz.")

    ok1,p1=symbol_exists(root,CHOIR_SYMBOL)
    ok2,p2=symbol_exists(root,FEMALE_SYMBOL)

    print("== GUTS THEME V3 / REAL VOCAL ==")
    if not ok1:
        die("Seu projeto nao possui o sample stock classical_choir_voice_ahhs.")
    if not ok2:
        die("Seu projeto nao possui o sample stock unknown_female_voice.")

    print("Choir sample encontrado em:",p1)
    print("Female voice encontrado em:",p2)

    zpath=script_dir/PACK_ZIP
    if not zpath.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python.")

    with zipfile.ZipFile(zpath,"r") as z:
        data=z.read("assets/mus_guts_theme.mid")
    if hashlib.sha256(data).hexdigest()!=MIDI_SHA256:
        die("SHA256 do MIDI nao confere.")

    stamp=datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir=root/"PHYTON/backups"/f"guts_real_choir_v3_{stamp}"
    backup(midi,root,bdir)
    backup(cfg,root,bdir)
    backup(groupfile,root,bdir)

    rewrite_guts_group(groupfile)

    midi.write_bytes(data)
    os.utime(midi,None)

    text=cfg.read_text()
    line="mus_guts_theme.mid: -G_guts_theme -R18 -V090"
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

    print("\nV3 instalada:")
    print("  INTRO -> piano forte")
    print("  depois de 4 compassos -> REAL classical choir AAH")
    print("  notas longas -> female voice reforcando o OOOOH")
    print("  violin mantido baixo como resposta")
    print("  zero sopro")
    print("\nAgora: make -j8")

if __name__=="__main__":
    main()
