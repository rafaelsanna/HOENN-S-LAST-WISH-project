#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os

PACK_ZIP = "RADIO_ANIME_SOUL_EATER_POPROCK_V5_RICH_BANK.zip"
EXPECTED_HASHES = {'assets/mus_resonance.mid': '93fc38eb89d9dea168c94982a96fea82faf7b072cc95806cec7412c5d348a549', 'assets/mus_paper_moon.mid': '18d2d9217c08fef26c1762a9ee205b4ff887bfe3567d21451ad5f62f7e2ddf5d'}

WIND_WORDS = (
    "flute","sax","saxophone","trumpet","trombone","brass","horn",
    "oboe","clarinet","bassoon","recorder","whistle","pan_flute",
    "piccolo","ocarina","shakuhachi","harmonica"
)

# We explicitly do NOT use the tiny original Soul Eater banks anymore.
BLOCKED_GROUPS = {
    "resonance","paper_moon","diva_pop","pop","abracadabra"
}

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def backup(path, root, bdir):
    if not path.exists():
        return
    dst = bdir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def scan_groups(root):
    groups = []
    for p in (root/"sound").rglob("*.inc"):
        try:
            text = p.read_text(errors="ignore")
        except Exception:
            continue
        matches = list(re.finditer(r'^\s*voice_group\s+([A-Za-z0-9_]+)\s*$', text, re.M))
        if not matches:
            continue
        voices = [
            x.strip() for x in text.splitlines()
            if x.strip().startswith("voice_")
            and not x.strip().startswith("voice_group")
        ]
        for m in matches:
            groups.append((m.group(1), p, voices))
    return groups

def is_wind(line):
    s = line.lower()
    return any(w in s for w in WIND_WORDS)

def role_score(line, role):
    s = line.lower()

    if is_wind(line):
        return -10000
    if "drum" in s or "percussion" in s or "kit" in s:
        return 1000 if role == "drums" else -1000

    score = 0

    if role == "bass":
        for token, pts in (
            ("bass",160),("finger",70),("pick",60),("electric",35),
            ("synth_bass",120),("contrabass",20),
        ):
            if token in s: score += pts
        if "guitar" in s and "bass" not in s: score -= 20

    elif role == "rhythm":
        for token, pts in (
            ("clean_guitar",180),("clean",120),("guitar",120),
            ("nylon",100),("acoustic",95),("electric",70),
            ("overdrive",55),("distort",35),("piano",45),
            ("organ",35),("strings",25),("square",20),
        ):
            if token in s: score += pts
        if "bass" in s: score -= 100

    elif role == "lead":
        for token, pts in (
            ("lead_guitar",170),("lead",125),("clean_guitar",130),
            ("guitar",105),("piano",100),("organ",80),
            ("synth",65),("square",50),("strings",40),
            ("overdrive",35),("distort",25),
        ):
            if token in s: score += pts
        if "bass" in s: score -= 100

    elif role == "drums":
        for token, pts in (
            ("drumset",180),("drum",150),("kit",120),("percussion",60)
        ):
            if token in s: score += pts

    return score

def best_slot(voices, role, used=None):
    used = used or set()
    ranked = sorted(
        ((role_score(line, role), i, line) for i, line in enumerate(voices)),
        reverse=True
    )
    # Prefer unused slots, but allow reuse if necessary.
    for score, i, line in ranked:
        if score > 0 and i not in used:
            return i, line, score
    for score, i, line in ranked:
        if score > 0:
            return i, line, score
    return None

def group_score(name, voices):
    if name in BLOCKED_GROUPS:
        return None
    if len(voices) < 5:
        return None

    used = set()
    picks = {}
    total = 0

    for role in ("bass","rhythm","lead","drums"):
        pick = best_slot(voices, role, used)
        if pick is None:
            return None
        slot,line,score = pick
        picks[role] = (slot,line)
        used.add(slot)
        total += score

    lname = name.lower()

    # Prefer a rich rock/metal bank, but not because we want heavy metal;
    # we want access to its clean guitar/bass/kit palette.
    if "rock" in lname: total += 220
    if "metal" in lname: total += 180
    if "guitar" in lname: total += 100

    # Reward richer banks.
    total += min(len(voices), 32) * 8

    # Penalize banks dominated by wind instruments.
    wind_count = sum(1 for x in voices if is_wind(x))
    total -= wind_count * 25

    return total, picks

def choose_rich_poprock_group(root):
    candidates = []
    for name,p,voices in scan_groups(root):
        scored = group_score(name, voices)
        if scored is None:
            continue
        total,picks = scored
        candidates.append((total,name,p,voices,picks))

    if not candidates:
        die("Nao achei nenhum voicegroup rico com bass + guitar + lead + drums sem depender de sopro.")

    candidates.sort(reverse=True, key=lambda x:x[0])
    return candidates[0], candidates[:8]

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
            if pos >= len(track_data):
                break
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

def patch_programs(midi_path, picks):
    data = bytearray(midi_path.read_bytes())
    if data[:4] != b"MThd":
        die("MIDI invalido: MThd ausente.")

    hlen = int.from_bytes(data[4:8],"big")
    pos = 8 + hlen

    # Both cleaned MIDIs use BASS / HARMONY / LEAD role tags.
    role_map = {
        "BASS":"bass",
        "HARMONY":"rhythm",
        "LEAD":"lead",
    }

    while pos + 8 <= len(data):
        if data[pos:pos+4] != b"MTrk":
            die("MIDI invalido: MTrk esperado.")

        ln = int.from_bytes(data[pos+4:pos+8],"big")
        start = pos + 8
        end = start + ln
        name, offsets = track_name_program_offsets(data[start:end], start)
        upper = name.upper()

        role = None
        for tag,target_role in role_map.items():
            if f"ROLE_{tag}" in upper:
                role = target_role
                break

        if role:
            slot = picks[role][0]
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

    if re.search(r'(?<!\S)-G_\S+', opts):
        opts = re.sub(r'(?<!\S)-G_\S+', f'-G_{group}', opts)
    else:
        opts += f' -G_{group}'

    # Pop-rock: drier than the old Soul Eater bank, but not bone-dry.
    if re.search(r'(?<!\S)-R\d+', opts):
        opts = re.sub(r'(?<!\S)-R\d+', '-R14', opts)
    else:
        opts += ' -R14'

    if re.search(r'(?<!\S)-V\d+', opts):
        opts = re.sub(r'(?<!\S)-V\d+', '-V090', opts)
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

    (score,group,p,voices,picks), top = choose_rich_poprock_group(root)

    print("== SOUL EATER POP-ROCK V5 / RICH BANK ==")
    print("\nVoicegroup escolhido automaticamente:", group)
    print("Arquivo:", p)
    print("Score:", score)

    print("\nInstrumentos usados:")
    for role in ("bass","rhythm","lead","drums"):
        slot,line = picks[role]
        print(f"  {role.upper():6s} -> slot {slot:03d}: {line}")

    print("\nTop voicegroups considerados:")
    for total,name,pp,vv,pk in top:
        print(f"  {total:4d}  {name}  ({len(vv)} voices)")

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
    bdir = root/"PHYTON/backups"/f"soul_eater_rich_bank_v5_{stamp}"

    for target in targets.values():
        backup(target,root,bdir)
    backup(cfg,root,bdir)

    for arc,target in targets.items():
        target.write_bytes(payload[arc])
        patch_programs(target,picks)
        os.utime(target,None)

    cfgtext = cfg.read_text()
    lines = []
    for song in ("mus_resonance","mus_paper_moon"):
        cfgtext,line = set_cfg(cfgtext,song,group)
        lines.append(line)
    cfg.write_text(cfgtext)

    print("\nFORCANDO REBUILD TOTAL:")
    for song in ("mus_resonance","mus_paper_moon"):
        for stale in (
            root/f"sound/songs/midi/{song}.s",
            root/f"build/modern/sound/songs/midi/{song}.o",
            root/f"build/modern/sound/songs/midi/{song}.d",
        ):
            if stale.exists():
                print("  rm -f",stale.relative_to(root))
                stale.unlink()
        os.utime(root/f"sound/songs/midi/{song}.mid",None)

    print("\nBackup:",bdir)
    print("\nCFG:")
    for line in lines:
        print(" ",line)

    print("\nIMPORTANTE:")
    print("  - resonance/paper_moon antigos NAO sao mais usados")
    print("  - diva_pop/abracadabra tambem NAO sao usados")
    print("  - escolhe automaticamente um banco RICO de rock/pop-rock")
    print("  - usa clean/normal guitar antes de distortion quando disponivel")
    print("  - instrumentos de sopro sao proibidos nos papeis melodicos")
    print("  - reverb 14 / master 90")
    print("\nAgora: make -j8")

if __name__=="__main__":
    main()
