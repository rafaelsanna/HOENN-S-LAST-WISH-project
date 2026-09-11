#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os

PACK_ZIP = "RADIO_ANIME_SOUL_EATER_POPROCK_V3_LESS_WIND.zip"
EXPECTED_HASHES = {'assets/mus_resonance.mid': '93fc38eb89d9dea168c94982a96fea82faf7b072cc95806cec7412c5d348a549', 'assets/mus_paper_moon.mid': '18d2d9217c08fef26c1762a9ee205b4ff887bfe3567d21451ad5f62f7e2ddf5d'}

WIND_WORDS = (
    "flute","sax","saxophone","trumpet","trombone","brass","horn",
    "oboe","clarinet","bassoon","recorder","whistle","pan_flute",
    "piccolo","ocarina","shakuhachi","harmonica"
)

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def backup(path, root, bdir):
    if not path.exists():
        return
    dst = bdir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def find_group(root, name):
    for p in (root/"sound").rglob("*.inc"):
        try:
            text = p.read_text(errors="ignore")
        except Exception:
            continue
        if re.search(rf'^\s*voice_group\s+{re.escape(name)}\s*$', text, re.M):
            return p, text
    return None, None

def voice_lines(text):
    return [
        x.strip() for x in text.splitlines()
        if x.strip().startswith("voice_")
        and not x.strip().startswith("voice_group")
    ]

def score_voice(line, role):
    s = line.lower()
    if any(w in s for w in WIND_WORDS):
        return -10000

    score = 0
    if role == "bass":
        for token, pts in (
            ("bass",120),("finger",55),("pick",45),("electric",30),
            ("synth_bass",90),("contrabass",20),
        ):
            if token in s: score += pts
        for token in ("guitar","piano","organ","strings","synth"):
            if token in s: score += 8

    elif role == "harmony":
        for token, pts in (
            ("guitar",120),("nylon",105),("clean",85),("acoustic",85),
            ("piano",80),("strings",65),("string",65),("organ",55),
            ("synth",35),("pad",35),("pluck",30),("pizz",25),
        ):
            if token in s: score += pts
        if "distort" in s or "overdrive" in s:
            score += 30
        if "bass" in s:
            score -= 80

    elif role == "lead":
        for token, pts in (
            ("guitar",110),("piano",100),("organ",75),("lead",70),
            ("clean",65),("synth",50),("strings",40),("pluck",25),
        ):
            if token in s: score += pts
        if "distort" in s or "overdrive" in s:
            score += 35
        if "bass" in s:
            score -= 90

    if "drum" in s or "percussion" in s or "kit" in s:
        score -= 1000
    return score

def pick_nonwind_slots(vv):
    chosen = {}
    used = set()

    # Pick bass first, then harmony, then lead.
    for role in ("bass","harmony","lead"):
        ranked = sorted(
            ((score_voice(line,role), i, line) for i,line in enumerate(vv) if i not in used),
            reverse=True
        )
        if not ranked or ranked[0][0] <= 0:
            print("\nNao achei um slot nao-sopro confiavel para:", role)
            print("Voicegroup disponivel:")
            for i,line in enumerate(vv):
                wind = "  <SOPRO>" if any(w in line.lower() for w in WIND_WORDS) else ""
                print(f"  {i:03d}: {line}{wind}")
            die("Parei para nao escolher instrumento errado.")
        score, slot, line = ranked[0]
        chosen[role] = (slot,line)
        used.add(slot)

    return chosen

def read_vlq(buf, pos):
    value = 0
    while True:
        b = buf[pos]
        pos += 1
        value = (value << 7) | (b & 0x7F)
        if not (b & 0x80):
            return value, pos

def track_name_program_offsets(track_data, file_track_start):
    pos = 0
    running = None
    name = ""
    offsets = []

    while pos < len(track_data):
        _delta, pos = read_vlq(track_data, pos)
        if pos >= len(track_data):
            break

        status = track_data[pos]

        if status == 0xFF:
            pos += 1
            meta_type = track_data[pos]
            pos += 1
            ln, pos = read_vlq(track_data, pos)
            start = pos
            end = pos + ln
            if meta_type == 0x03:
                name = bytes(track_data[start:end]).decode("latin1", errors="ignore")
            pos = end
            running = None
            continue

        if status in (0xF0,0xF7):
            pos += 1
            ln, pos = read_vlq(track_data,pos)
            pos += ln
            running = None
            continue

        if status & 0x80:
            running = status
            pos += 1
        elif running is None:
            die("MIDI invalido: running status.")
        else:
            status = running

        typ = status & 0xF0
        if typ in (0xC0,0xD0):
            if typ == 0xC0:
                offsets.append(file_track_start + pos)
            pos += 1
        else:
            pos += 2

    return name, offsets

def patch_programs(midi_path, chosen):
    data = bytearray(midi_path.read_bytes())
    if data[:4] != b"MThd":
        die("MIDI invalido: MThd ausente.")

    hlen = int.from_bytes(data[4:8],"big")
    pos = 8 + hlen

    while pos + 8 <= len(data):
        if data[pos:pos+4] != b"MTrk":
            die("MIDI invalido: MTrk esperado.")
        ln = int.from_bytes(data[pos+4:pos+8],"big")
        start = pos + 8
        end = start + ln
        name, offsets = track_name_program_offsets(data[start:end], start)
        upper = name.upper()

        role = None
        for r in ("bass","harmony","lead"):
            if f"ROLE_{r.upper()}" in upper:
                role = r
                break

        if role:
            slot = chosen[role][0]
            for off in offsets:
                data[off] = slot

        pos = end

    midi_path.write_bytes(data)

def set_cfg(cfgtext, song, group):
    m = re.search(rf'^{re.escape(song)}\.mid:\s*(.*)$', cfgtext, re.M)
    if not m:
        die(f"Nao achei {song}.mid em midi.cfg.")
    old = m.group(0)
    opts = m.group(1)

    if re.search(r'(?<!\S)-G_\S+',opts):
        opts = re.sub(r'(?<!\S)-G_\S+',f'-G_{group}',opts)
    else:
        opts += f' -G_{group}'

    # Drier mix to stop winds/pads from washing over the whole song.
    if re.search(r'(?<!\S)-R\d+',opts):
        opts = re.sub(r'(?<!\S)-R\d+','-R12',opts)
    else:
        opts += ' -R12'

    if re.search(r'(?<!\S)-V\d+',opts):
        opts = re.sub(r'(?<!\S)-V\d+','-V090',opts)
    else:
        opts += ' -V090'

    new = f'{song}.mid: ' + opts.strip()
    return cfgtext.replace(old,new,1), new

def main():
    root = Path.cwd()
    script_dir = Path(__file__).resolve().parent
    cfg = root/"sound/songs/midi/midi.cfg"
    if not cfg.exists():
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    song_groups = {
        "mus_resonance":"resonance",
        "mus_paper_moon":"paper_moon",
    }

    chosen_by_song = {}

    print("== SOUL EATER POP-ROCK V3 / LESS WIND ==")
    for song,group in song_groups.items():
        p,text = find_group(root,group)
        if p is None:
            die(f"Nao achei voice_group {group}.")
        vv = voice_lines(text)
        chosen = pick_nonwind_slots(vv)
        chosen_by_song[song] = chosen

        print(f"\n{song} / voicegroup {group}")
        print("  Banco:",p)
        for role,(slot,line) in chosen.items():
            print(f"  {role.upper():7s} -> {slot:03d}: {line}")

    zpath = script_dir/PACK_ZIP
    if not zpath.exists():
        die(f"Nao achei {PACK_ZIP} ao lado do Python.")

    payload = {}
    with zipfile.ZipFile(zpath,"r") as z:
        for arc,sha in EXPECTED_HASHES.items():
            data = z.read(arc)
            if hashlib.sha256(data).hexdigest() != sha:
                die(f"SHA256 nao confere: {arc}")
            payload[arc] = data

    targets = {
        "assets/mus_resonance.mid":root/"sound/songs/midi/mus_resonance.mid",
        "assets/mus_paper_moon.mid":root/"sound/songs/midi/mus_paper_moon.mid",
    }

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root/"PHYTON/backups"/f"soul_eater_less_wind_v3_{stamp}"
    for p in targets.values():
        backup(p,root,bdir)
    backup(cfg,root,bdir)

    for arc,p in targets.items():
        p.write_bytes(payload[arc])
        song = p.stem
        patch_programs(p, chosen_by_song[song])
        os.utime(p,None)

    cfgtext = cfg.read_text()
    lines = []
    for song,group in song_groups.items():
        cfgtext,line = set_cfg(cfgtext,song,group)
        lines.append(line)
    cfg.write_text(cfgtext)

    print("\nFORCANDO REBUILD TOTAL:")
    for song in song_groups:
        for p in (
            root/f"sound/songs/midi/{song}.s",
            root/f"build/modern/sound/songs/midi/{song}.o",
            root/f"build/modern/sound/songs/midi/{song}.d",
        ):
            if p.exists():
                print("  rm -f",p.relative_to(root))
                p.unlink()
        midi = root/f"sound/songs/midi/{song}.mid"
        os.utime(midi,None)

    print("\nBackup:",bdir)
    print("\nCFG:")
    for line in lines:
        print(" ",line)

    print("\nV3 LESS WIND:")
    print("  - nenhum slot contendo flute/sax/trumpet/brass/horn/oboe/clarinet/etc")
    print("  - harmony prioriza guitarra/piano/strings/organ")
    print("  - lead prioriza guitarra/piano/organ/lead")
    print("  - bass prioriza bass real/synth bass")
    print("  - reverb reduzido para 12")
    print("  - BPM/notas/estrutura do V1 limpo preservados")
    print("\nAgora: make -j8")

if __name__=="__main__":
    main()
