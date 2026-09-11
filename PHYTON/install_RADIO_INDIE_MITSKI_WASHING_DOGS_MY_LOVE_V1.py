#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os

PACK_ZIP = "RADIO_INDIE_MITSKI_WASHING_DOGS_MY_LOVE_V1.zip"
EXPECTED_HASHES = {'assets/mus_washing_machine_heart_mitski.mid': 'e796c1a115223463de2e7bb0a51850a5f97fab3fd9df30c4310386a9d566806f', 'assets/mus_i_bet_on_losing_dogs_mitski.mid': '1cc39d0b52ba598adc21cb7daa5177f00419681a8c4dea9cf08d0d287ed8729a', 'assets/mus_my_love_mine_all_mine_mitski.mid': '986eebeb6d5dd868e9d043a5201b7705e96f697b1d96cbe09e204716431c0f9d'}

SONGS = (
    ("MUS_WASHING_MACHINE_HEART_MITSKI", "mus_washing_machine_heart_mitski",
     "sIndieName_WashingMachineHeartMitski", "WASHING MACHINE HEART (MITSKI)"),
    ("MUS_I_BET_ON_LOSING_DOGS_MITSKI", "mus_i_bet_on_losing_dogs_mitski",
     "sIndieName_IBetOnLosingDogsMitski", "I BET ON LOSING DOGS (MITSKI)"),
    ("MUS_MY_LOVE_MINE_ALL_MINE_MITSKI", "mus_my_love_mine_all_mine_mitski",
     "sIndieName_MyLoveMineAllMineMitski", "MY LOVE MINE ALL MINE (MITSKI)"),
)

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

def find_project_file(root, preferred, basename):
    p = root / preferred
    if p.exists():
        return p
    hits = [x for x in root.rglob(basename) if "build" not in x.parts]
    if len(hits) == 1:
        return hits[0]
    die(f"Nao achei de forma unica: {preferred}")

def find_voicegroup(root, name):
    for p in (root / "sound").rglob("*.inc"):
        try:
            text = p.read_text(errors="ignore")
        except Exception:
            continue
        if re.search(rf'^\s*voice_group\s+{re.escape(name)}\s*$', text, re.M):
            voices = [
                x.strip() for x in text.splitlines()
                if x.strip().startswith("voice_")
                and not x.strip().startswith("voice_group")
            ]
            return p, voices
    return None, None

def detect_pop_group(root):
    expected = {
        1: "synth_bass",
        7: "piano",
        8: "pink_and_white_drumset",
    }
    for name in ("diva_pop", "pop", "abracadabra"):
        p, voices = find_voicegroup(root, name)
        if p and all(i < len(voices) and token in voices[i].lower()
                     for i, token in expected.items()):
            print("Banco piano/POP:", name)
            print("Arquivo:", p)
            return name
    die("Nao achei o banco piano/POP seguro (synth_bass + piano + drumset).")

def scan_groups(root):
    seen = set()
    for p in (root / "sound").rglob("*.inc"):
        try:
            text = p.read_text(errors="ignore")
        except Exception:
            continue
        names = re.findall(r'^\s*voice_group\s+([A-Za-z0-9_]+)\s*$', text, re.M)
        if not names:
            continue
        voices = [
            x.strip() for x in text.splitlines()
            if x.strip().startswith("voice_")
            and not x.strip().startswith("voice_group")
        ]
        for name in names:
            if name in seen:
                continue
            seen.add(name)
            yield name, p, voices

def is_wind(line):
    s = line.lower()
    return any(w in s for w in WIND_WORDS)

def role_score(line, role):
    s = line.lower()
    if is_wind(line):
        return -10000

    if role == "drums":
        return (
            260 if "drumset" in s else
            210 if "drum" in s else
            150 if "kit" in s else
            0
        )

    if "drum" in s or "percussion" in s or "kit" in s:
        return -1000

    score = 0
    if role == "bass":
        for token, pts in (
            ("synth_bass", 190), ("bass", 160), ("finger", 80),
            ("pick", 70), ("electric", 30),
        ):
            if token in s: score += pts

    elif role == "guitar":
        for token, pts in (
            ("clean_guitar", 260), ("clean", 170), ("guitar", 155),
            ("acoustic", 120), ("electric", 90), ("nylon", 75),
            ("overdrive", 50), ("distort", 30),
        ):
            if token in s: score += pts
        if "bass" in s: score -= 120

    elif role == "lead_guitar":
        for token, pts in (
            ("lead_guitar", 260), ("lead", 180), ("clean_guitar", 210),
            ("guitar", 150), ("clean", 130), ("electric", 90),
            ("overdrive", 55), ("distort", 35),
        ):
            if token in s: score += pts
        if "bass" in s: score -= 120

    elif role == "piano":
        for token, pts in (
            ("grand_piano", 300), ("piano", 260),
            ("electric_piano", 150), ("epiano", 130),
        ):
            if token in s: score += pts
        if "bass" in s: score -= 120

    return score

def best_slot(voices, role, used):
    ranked = sorted(
        ((role_score(line, role), i, line) for i, line in enumerate(voices)),
        reverse=True
    )
    for score, slot, line in ranked:
        if score > 0 and slot not in used:
            return slot, line, score
    return None

def current_resonance_group(cfg_text):
    m = re.search(r'^mus_resonance\.mid:\s*(.*)$', cfg_text, re.M)
    if not m:
        return None
    g = re.search(r'(?<!\S)-G_([^\s]+)', m.group(1))
    return g.group(1) if g else None

def choose_indie_rock_group(root, cfg_text):
    preferred = current_resonance_group(cfg_text)
    candidates = []

    for name, p, voices in scan_groups(root):
        if name in ("diva_pop", "pop", "abracadabra", "resonance", "paper_moon"):
            continue
        if len(voices) < 5:
            continue

        used = set()
        picks = {}
        total = 0
        ok = True
        for role in ("bass", "guitar", "lead_guitar", "piano", "drums"):
            pick = best_slot(voices, role, used)
            if pick is None:
                ok = False
                break
            slot, line, score = pick
            picks[role] = (slot, line)
            used.add(slot)
            total += score

        if not ok:
            continue

        lname = name.lower()
        if "rock" in lname: total += 260
        if "guitar" in lname: total += 140
        if "metal" in lname: total += 100
        if preferred and name == preferred: total += 450
        total += min(len(voices), 32) * 6
        total -= sum(1 for line in voices if is_wind(line)) * 20

        candidates.append((total, name, p, voices, picks))

    if not candidates:
        die("Nao achei voicegroup rico com bass + guitar + lead guitar + piano + drums.")

    candidates.sort(reverse=True, key=lambda x: x[0])
    chosen = candidates[0]

    print("\nBanco INDIE ROCK:", chosen[1])
    print("Arquivo:", chosen[2])
    for role, (slot, line) in chosen[4].items():
        print(f"  {role.upper():12s} -> {slot:03d}: {line}")
    return chosen[1], chosen[4]

def read_vlq(buf, pos):
    value = 0
    while True:
        b = buf[pos]
        pos += 1
        value = (value << 7) | (b & 0x7F)
        if not (b & 0x80):
            return value, pos

def track_name_program_offsets(track_data, file_start):
    pos = 0
    running = None
    name = ""
    offsets = []

    while pos < len(track_data):
        _, pos = read_vlq(track_data, pos)
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
            a = pos
            b = pos + ln
            if meta_type == 0x03:
                name = bytes(track_data[a:b]).decode("latin1", errors="ignore")
            pos = b
            running = None
            continue

        if status in (0xF0, 0xF7):
            pos += 1
            ln, pos = read_vlq(track_data, pos)
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
        if typ in (0xC0, 0xD0):
            if typ == 0xC0:
                offsets.append(file_start + pos)
            pos += 1
        else:
            pos += 2

    return name, offsets

def patch_washing_roles(path, picks):
    data = bytearray(path.read_bytes())
    if data[:4] != b"MThd":
        die("MIDI Washing Machine Heart invalido.")

    tags = {
        "ROLE_BASS": "bass",
        "ROLE_GUITAR": "guitar",
        "ROLE_LEAD_GUITAR": "lead_guitar",
        "ROLE_PIANO": "piano",
        "ROLE_DRUMS": "drums",
    }

    pos = 8 + int.from_bytes(data[4:8], "big")
    while pos + 8 <= len(data):
        if data[pos:pos+4] != b"MTrk":
            die("MIDI invalido: esperado MTrk.")
        ln = int.from_bytes(data[pos+4:pos+8], "big")
        start = pos + 8
        end = start + ln
        name, offsets = track_name_program_offsets(data[start:end], start)
        upper = name.upper()

        role = None
        for tag, candidate in tags.items():
            if tag in upper:
                role = candidate
                break

        if role:
            slot = picks[role][0]
            for off in offsets:
                data[off] = slot

        pos = end

    path.write_bytes(data)

def add_song_constants(text):
    existing = {
        name: int(num) for name, num in re.findall(
            r'^#define\s+(MUS_[A-Z0-9_]+)\s+(\d+)\b',
            text, re.M
        )
    }
    if not existing:
        die("Nao consegui ler MUS_* em songs.h.")

    next_id = max(existing.values()) + 1
    additions = []
    for const, stem, label, display in SONGS:
        if const not in existing:
            additions.append((const, next_id))
            existing[const] = next_id
            print(f"Novo ID: {const} = {next_id}")
            next_id += 1
        else:
            print(f"ID existente: {const} = {existing[const]}")

    if additions:
        marker = re.search(r'^#define\s+END_MUS\s+\S+.*$', text, re.M)
        if not marker:
            die("Nao achei END_MUS.")
        defs = "".join(f"#define {const:<52} {num}\n" for const, num in additions)
        text = text[:marker.start()] + defs + text[marker.start():]

    # Reparse and always point END_MUS to the actual highest numeric MUS_*.
    pairs = [
        (name, int(num)) for name, num in re.findall(
            r'^#define\s+(MUS_[A-Z0-9_]+)\s+(\d+)\b',
            text, re.M
        )
    ]
    highest_name, highest_id = max(pairs, key=lambda x: x[1])
    text = re.sub(
        r'^#define\s+END_MUS\s+\S+.*$',
        f"#define END_MUS {highest_name}",
        text, count=1, flags=re.M
    )
    print("END_MUS ->", highest_name, highest_id)
    return text

def add_song_table(text):
    missing = []
    for const, stem, label, display in SONGS:
        if not re.search(r'^\s*song\s+' + re.escape(stem) + r',', text, re.M):
            missing.append(f"\tsong {stem}, 0, 0")

    if not missing:
        return text

    marker = re.search(r'\n\s*\.align\s+2\s*\n\s*dummy_song_header:', text)
    if not marker:
        die("Nao achei dummy_song_header em song_table.inc.")

    return text[:marker.start()] + "\n" + "\n".join(missing) + "\n" + text[marker.start():]

def add_to_station(text, array_name):
    pattern = (
        r'(static const u16\s+' + re.escape(array_name)
        + r'\[\]\s*=\s*\{)(.*?)(\n\};)'
    )
    m = re.search(pattern, text, re.S)
    if not m:
        die(f"Nao achei {array_name} em radio.c.")

    body = m.group(2)
    additions = []
    for const, stem, label, display in SONGS:
        if const not in body:
            additions.append(f"    {const},")

    if additions:
        if "STATION_END" not in body:
            die(f"{array_name} sem STATION_END.")
        body = body.replace(
            "    STATION_END",
            "\n".join(additions) + "\n    STATION_END",
            1
        )
        text = text[:m.start(2)] + body + text[m.end(2):]

    return text

def add_radio_bgm_macro(text):
    start = text.find("#define RADIO_SOUND_LIST_BGM")
    end = text.find("#define X(songId)", start)
    if start < 0 or end < 0:
        die("Nao achei RADIO_SOUND_LIST_BGM.")

    block = text[start:end]
    missing = [const for const, stem, label, display in SONGS if f"X({const})" not in block]
    if not missing:
        return text

    lines = block.rstrip().splitlines()
    last_x = None
    for i in range(len(lines)-1, -1, -1):
        if re.search(r'\bX\(MUS_[A-Z0-9_]+\)', lines[i]):
            last_x = i
            break

    if last_x is None:
        die("RADIO_SOUND_LIST_BGM nao tem musicas.")

    if not lines[last_x].rstrip().endswith("\\"):
        lines[last_x] = lines[last_x].rstrip() + " \\"

    for i, const in enumerate(missing):
        suffix = " \\" if i < len(missing)-1 else ""
        lines.append(f"    X({const}){suffix}")

    new_block = "\n".join(lines) + "\n"
    return text[:start] + new_block + text[end:]

def add_indie_labels_and_switch(text):
    function_marker = "static const u8 *Radio_GetIndieDisplayName(u16 songId)"
    fstart = text.find(function_marker)
    if fstart < 0:
        die("Nao achei Radio_GetIndieDisplayName.")

    labels = []
    for const, stem, label, display in SONGS:
        if label not in text[:fstart]:
            labels.append(f'static const u8 {label}[] = _("{display}");')

    if labels:
        text = text[:fstart] + "\n".join(labels) + "\n\n" + text[fstart:]

    fstart = text.find(function_marker)
    fend = text.find("// ---------------------------------------------------------------------------", fstart)
    if fend < 0:
        die("Nao achei fim de Radio_GetIndieDisplayName.")

    func = text[fstart:fend]
    cases = []
    for const, stem, label, display in SONGS:
        if f"case {const}:" not in func:
            cases.append(
                f"    case {const}:\n"
                f"        return {label};"
            )

    if cases:
        pos = func.find("    default:")
        if pos < 0:
            die("Switch Indie sem default.")
        func = func[:pos] + "\n".join(cases) + "\n\n" + func[pos:]
        text = text[:fstart] + func + text[fend:]

    return text

def patch_radio(text):
    text = add_radio_bgm_macro(text)
    text = add_to_station(text, "sStation_All")
    text = add_to_station(text, "sStation_IndieRock")
    text = add_indie_labels_and_switch(text)
    return text

def set_cfg(text, stem, group, reverb=12, volume=90):
    line = f"{stem}.mid: -G_{group} -R{reverb} -V{volume:03d}"
    m = re.search(r'^' + re.escape(stem) + r'\.mid:.*$', text, re.M)
    if m:
        return text[:m.start()] + line + text[m.end():]
    if text and not text.endswith("\n"):
        text += "\n"
    return text + line + "\n"

def verify_registration(songs_text, table_text, radio_text):
    errors = []

    for const, stem, label, display in SONGS:
        if not re.search(r'^#define\s+' + re.escape(const) + r'\s+\d+\b', songs_text, re.M):
            errors.append(f"songs.h sem {const}")
        if not re.search(r'^\s*song\s+' + re.escape(stem) + r',', table_text, re.M):
            errors.append(f"song_table sem {stem}")

    macro_start = radio_text.find("#define RADIO_SOUND_LIST_BGM")
    macro_end = radio_text.find("#define X(songId)", macro_start)
    macro = radio_text[macro_start:macro_end]

    for array_name in ("sStation_All", "sStation_IndieRock"):
        m = re.search(
            r'static const u16\s+' + re.escape(array_name)
            + r'\[\]\s*=\s*\{(.*?)\n\};',
            radio_text, re.S
        )
        if not m:
            errors.append(f"radio.c sem {array_name}")
            continue
        body = m.group(1)
        for const, stem, label, display in SONGS:
            if const not in body:
                errors.append(f"{array_name} sem {const}")

    for const, stem, label, display in SONGS:
        if f"X({const})" not in macro:
            errors.append(f"RADIO_SOUND_LIST_BGM sem {const}")
        if label not in radio_text:
            errors.append(f"radio.c sem label {label}")
        if f"case {const}:" not in radio_text:
            errors.append(f"Radio_GetIndieDisplayName sem case {const}")

    if errors:
        die("Falha de verificacao:\n  - " + "\n  - ".join(errors))

def main():
    root = Path.cwd()
    script_dir = Path(__file__).resolve().parent

    songs_h = find_project_file(root, "include/constants/songs.h", "songs.h")
    song_table = find_project_file(root, "sound/song_table.inc", "song_table.inc")
    radio_c = find_project_file(root, "src/radio.c", "radio.c")
    cfg_path = root / "sound/songs/midi/midi.cfg"

    if not cfg_path.exists():
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    cfg_text = cfg_path.read_text()
    pop_group = detect_pop_group(root)
    rock_group, rock_picks = choose_indie_rock_group(root, cfg_text)

    zpath = script_dir / PACK_ZIP
    if not zpath.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python em PHYTON/.")

    payload = {}
    with zipfile.ZipFile(zpath, "r") as z:
        for arc, sha in EXPECTED_HASHES.items():
            data = z.read(arc)
            if hashlib.sha256(data).hexdigest() != sha:
                die(f"SHA256 nao confere: {arc}")
            payload[arc] = data

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"mitski_indie_v1_{stamp}"

    for p in (songs_h, song_table, radio_c, cfg_path):
        backup(p, root, bdir)

    targets = {
        "assets/mus_washing_machine_heart_mitski.mid":
            root / "sound/songs/midi/mus_washing_machine_heart_mitski.mid",
        "assets/mus_i_bet_on_losing_dogs_mitski.mid":
            root / "sound/songs/midi/mus_i_bet_on_losing_dogs_mitski.mid",
        "assets/mus_my_love_mine_all_mine_mitski.mid":
            root / "sound/songs/midi/mus_my_love_mine_all_mine_mitski.mid",
    }
    for p in targets.values():
        backup(p, root, bdir)

    # Register new songs.
    songs_text = add_song_constants(songs_h.read_text())
    table_text = add_song_table(song_table.read_text())
    radio_text = patch_radio(radio_c.read_text())

    songs_h.write_text(songs_text)
    song_table.write_text(table_text)
    radio_c.write_text(radio_text)

    # Install MIDIs.
    for arc, target in targets.items():
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(payload[arc])
        os.utime(target, None)

    # Washing Machine Heart uses the rich indie-rock bank.
    patch_washing_roles(
        targets["assets/mus_washing_machine_heart_mitski.mid"],
        rock_picks
    )

    # Piano songs use the proven safe POP/piano bank, but RADIO station remains INDIE.
    cfg_text = set_cfg(cfg_text, "mus_washing_machine_heart_mitski", rock_group, 12, 90)
    cfg_text = set_cfg(cfg_text, "mus_i_bet_on_losing_dogs_mitski", pop_group, 12, 90)
    cfg_text = set_cfg(cfg_text, "mus_my_love_mine_all_mine_mitski", pop_group, 12, 90)
    cfg_path.write_text(cfg_text)

    # Re-read and verify every registration point before telling the user it worked.
    verify_registration(songs_h.read_text(), song_table.read_text(), radio_c.read_text())

    # Force rebuild of all three songs and the Radio object.
    print("\nFORCANDO REBUILD:")
    for stem in (
        "mus_washing_machine_heart_mitski",
        "mus_i_bet_on_losing_dogs_mitski",
        "mus_my_love_mine_all_mine_mitski",
    ):
        for stale in (
            root / f"sound/songs/midi/{stem}.s",
            root / f"build/modern/sound/songs/midi/{stem}.o",
            root / f"build/modern/sound/songs/midi/{stem}.d",
        ):
            if stale.exists():
                print("  rm -f", stale.relative_to(root))
                stale.unlink()
        os.utime(root / f"sound/songs/midi/{stem}.mid", None)

    for stale in (
        root / "build/modern/src/radio.o",
        root / "build/modern/src/radio.d",
        root / "build/modern/sound/song_table.o",
        root / "build/modern/sound/song_table.d",
    ):
        if stale.exists():
            print("  rm -f", stale.relative_to(root))
            stale.unlink()

    for p in (songs_h, song_table, radio_c, cfg_path):
        os.utime(p, None)

    print("\nREGISTRO VERIFICADO:")
    print("  - constants/songs.h")
    print("  - sound/song_table.inc")
    print("  - radio.c / RADIO_SOUND_LIST_BGM")
    print("  - radio.c / ALL TRACKS")
    print("  - radio.c / INDIE ROCK")
    print("  - radio.c / nomes MITSKI")
    print("\nAUDIO:")
    print(f"  WASHING MACHINE HEART -> {rock_group} / rock / R12 V090")
    print(f"  I BET ON LOSING DOGS  -> {pop_group} / piano / R12 V090")
    print(f"  MY LOVE MINE ALL MINE -> {pop_group} / piano / R12 V090")
    print("\nAgora: make -j8")

if __name__ == "__main__":
    main()
