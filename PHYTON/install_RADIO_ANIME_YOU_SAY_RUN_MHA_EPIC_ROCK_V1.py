#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os

PACK_ZIP = "RADIO_ANIME_YOU_SAY_RUN_MHA_EPIC_ROCK_V1.zip"
MIDI_SHA256 = "4fcc14c06b4244e1215e171a90c7a7ee3ab0f65bf1a90c2ed553f0b7eb4d6d2f"

CONST = "MUS_YOU_SAY_RUN"
STEM = "mus_you_say_run"
DISPLAY_LABEL = "sAnimeName_YouSayRun"
DISPLAY_TEXT = "YOU SAY RUN - (MY HERO ACADEMIA)"
ROCK_GROUP = "hlw_rock_metal"

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

def find_group(root, name):
    for p in (root / "sound").rglob("*.inc"):
        try:
            text = p.read_text(errors="ignore")
        except Exception:
            continue

        if not re.search(rf'^\s*voice_group\s+{re.escape(name)}\s*$', text, re.M):
            continue

        lines = text.splitlines()
        start = None
        end = len(lines)

        for i,line in enumerate(lines):
            if re.match(r'^\s*voice_group\s+' + re.escape(name) + r'\s*$', line):
                start = i
                break

        if start is None:
            continue

        for i in range(start+1, len(lines)):
            if re.match(r'^\s*voice_group\s+[A-Za-z0-9_]+\s*$', lines[i]):
                end = i
                break

        voices = []
        for line in lines[start+1:end]:
            s = line.strip()
            if s.startswith("voice_") and not s.startswith("voice_group"):
                voices.append((s.split("@",1)[0].rstrip(), s))

        return p, lines, start, end, voices

    return None, None, None, None, None

def is_wind(line):
    s = line.lower()
    return any(w in s for w in WIND_WORDS)

def score_rock(line, role):
    s = line.lower()
    if is_wind(line):
        return -10000

    if role == "drums":
        return 300 if "drumset" in s else 220 if "drum" in s else 120 if "kit" in s else 0

    if "drum" in s or "percussion" in s or "kit" in s:
        return -1000

    score = 0

    if role == "guitar":
        for tok,pts in (
            ("distort",300),("overdrive",240),("guitar",180),
            ("electric",100),("clean",60)
        ):
            if tok in s:
                score += pts
        if "bass" in s:
            score -= 180

    elif role == "piano":
        for tok,pts in (
            ("grand_piano",350),("piano",300),
            ("electric_piano",140),("epiano",120)
        ):
            if tok in s:
                score += pts
        if "bass" in s:
            score -= 160

    return score

def best_existing(voices, role):
    ranked = sorted(
        ((score_rock(original, role), i, clean, original)
         for i,(clean,original) in enumerate(voices)),
        reverse=True,
        key=lambda x:x[0]
    )
    for sc,i,clean,original in ranked:
        if sc > 0:
            return i,clean,original
    return None

def all_voice_defs(root):
    pool = []
    for p in (root / "sound").rglob("*.inc"):
        try:
            text = p.read_text(errors="ignore")
        except Exception:
            continue

        for line in text.splitlines():
            s = line.strip()
            if not s.startswith("voice_") or s.startswith("voice_group"):
                continue
            pool.append((s.split("@",1)[0].rstrip(), s, p))
    return pool

def violin_score(line):
    s = line.lower()
    score = 0
    for tok,pts in (
        ("solo_violin",1000),("violin",900),("fiddle",780),
        ("solo_string",650)
    ):
        if tok in s:
            score += pts

    for tok in ("cello","contrabass","bass","ensemble"):
        if tok in s:
            score -= 350

    return score

def strings_score(line):
    s = line.lower()
    score = 0
    for tok,pts in (
        ("string_ensemble",800),("strings_ensemble",800),
        ("slow_strings",700),("warm_strings",680),
        ("strings",560),("string",420),("violin",180)
    ):
        if tok in s:
            score += pts

    if "bass" in s or "cello" in s:
        score -= 200

    return score

def choose_violin_voice(root):
    pool = all_voice_defs(root)

    # First: reuse a real/custom violin already present anywhere in the project.
    ranked = sorted(
        ((violin_score(original), clean, original, p)
         for clean,original,p in pool),
        reverse=True,
        key=lambda x:x[0]
    )

    for sc,clean,original,p in ranked:
        if sc > 0:
            print("\nVIOLIN encontrado no projeto:")
            print(" ", original)
            print("  fonte:", p)
            return clean

    # Fallback: create a violin voice from the best DirectSound strings sample.
    ranked = []
    for clean,original,p in pool:
        if not clean.startswith("voice_directsound"):
            continue
        sc = strings_score(original)
        if sc > 0:
            ranked.append((sc,clean,original,p))

    if not ranked:
        die("Nao achei violin nem sample DirectSound de strings para criar um violin.")

    ranked.sort(reverse=True, key=lambda x:x[0])
    sc,clean,original,p = ranked[0]

    m = re.match(
        r'^voice_directsound\s+([^,]+),\s*([^,]+),\s*([^,]+),\s*'
        r'([^,]+),\s*([^,]+),\s*([^,]+),\s*([^,\s]+)',
        clean
    )
    if not m:
        die("Nao consegui interpretar o sample de strings escolhido.")

    wave = m.group(3).strip()
    custom = f"voice_directsound 60, 0, {wave}, 255, 0, 240, 180"

    print("\nVIOLIN NOVO criado a partir de:")
    print(" ", original)
    print("  fonte:", p)
    print("  novo:", custom)

    return custom

def prepare_rock_group(root):
    p, lines, start, end, voices = find_group(root, ROCK_GROUP)
    if p is None:
        die("Nao achei voice_group hlw_rock_metal.")

    piano = best_existing(voices, "piano")
    guitar = best_existing(voices, "guitar")
    drums = best_existing(voices, "drums")

    if piano is None or guitar is None or drums is None:
        die("hlw_rock_metal nao possui piano + guitarra + bateria confiaveis.")

    # Reuse a violin already appended to this group on a prior run.
    violin = None
    for i,(clean,original) in enumerate(voices):
        if violin_score(original) > 0 or "YOU SAY RUN VIOLIN" in original.upper():
            violin = (i, clean, original)
            break

    append_voice = None
    if violin is None:
        clean = choose_violin_voice(root)
        slot = len(voices)
        if slot > 127:
            die("hlw_rock_metal ja passou de 128 slots; nao posso adicionar violin.")
        violin = (slot, clean, clean + " @ YOU SAY RUN VIOLIN")
        append_voice = clean

    picks = {
        "piano": piano[0],
        "guitar": guitar[0],
        "violin": violin[0],
        "drums": drums[0],
    }

    print("\nYOU SAY RUN ->", ROCK_GROUP)
    print("Arquivo:", p)
    print(f"  PIANO  -> {picks['piano']:03d}: {piano[2]}")
    print(f"  GUITAR -> {picks['guitar']:03d}: {guitar[2]}")
    print(f"  VIOLIN -> {picks['violin']:03d}: {violin[1]}")
    print(f"  DRUMS  -> {picks['drums']:03d}: {drums[2]}")

    return p, lines, end, picks, append_voice

def append_violin_to_group(path, lines, end, append_voice):
    if append_voice is None:
        return

    insertion = f"    {append_voice} @ YOU SAY RUN VIOLIN"
    new_lines = lines[:end] + [insertion] + lines[end:]
    path.write_text("\n".join(new_lines) + "\n")

    print("\nAdicionado ao hlw_rock_metal:")
    print(" ", insertion)

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
        _,pos = read_vlq(track_data,pos)
        if pos >= len(track_data):
            break

        status = track_data[pos]

        if status == 0xFF:
            pos += 1
            typ = track_data[pos]
            pos += 1
            ln,pos = read_vlq(track_data,pos)
            a = pos
            b = pos + ln

            if typ == 0x03:
                name = bytes(track_data[a:b]).decode("latin1",errors="ignore")

            pos = b
            running = None
            continue

        if status in (0xF0,0xF7):
            pos += 1
            ln,pos = read_vlq(track_data,pos)
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
                offsets.append(file_start + pos)
            pos += 1
        else:
            pos += 2

    return name, offsets

def patch_programs(path, picks):
    data = bytearray(path.read_bytes())
    if data[:4] != b"MThd":
        die("MIDI You Say Run invalido.")

    tags = {
        "ROLE_PIANO": "piano",
        "ROLE_GUITAR": "guitar",
        "ROLE_VIOLIN": "violin",
        "ROLE_DRUMS": "drums",
    }

    pos = 8 + int.from_bytes(data[4:8], "big")

    while pos + 8 <= len(data):
        if data[pos:pos+4] != b"MTrk":
            die("MTrk esperado.")

        ln = int.from_bytes(data[pos+4:pos+8], "big")
        start = pos + 8
        end = start + ln
        name, offsets = track_name_program_offsets(data[start:end], start)
        upper = name.upper()

        role = None
        for tag,candidate in tags.items():
            if tag in upper:
                role = candidate
                break

        if role:
            slot = picks[role]
            for off in offsets:
                data[off] = slot

        pos = end

    path.write_bytes(data)

def add_song_constant(text):
    m = re.search(r'^#define\s+' + re.escape(CONST) + r'\s+(\d+)\b', text, re.M)

    if m:
        print("ID existente:", CONST, "=", m.group(1))
    else:
        values = [
            int(x) for x in re.findall(
                r'^#define\s+MUS_[A-Z0-9_]+\s+(\d+)\b',
                text, re.M
            )
        ]

        if not values:
            die("Nao consegui ler os IDs MUS_* em songs.h.")

        new_id = max(values) + 1
        marker = re.search(r'^#define\s+END_MUS\s+\S+.*$', text, re.M)

        if not marker:
            die("Nao achei END_MUS.")

        line = f"#define {CONST:<52} {new_id}\n"
        text = text[:marker.start()] + line + text[marker.start():]
        print("Novo ID:", CONST, "=", new_id)

    # Always point END_MUS to the real highest numeric MUS_*.
    pairs = [
        (name,int(num)) for name,num in re.findall(
            r'^#define\s+(MUS_[A-Z0-9_]+)\s+(\d+)\b',
            text,re.M
        )
    ]
    highest = max(pairs,key=lambda x:x[1])

    text = re.sub(
        r'^#define\s+END_MUS\s+\S+.*$',
        f"#define END_MUS {highest[0]}",
        text,count=1,flags=re.M
    )

    print("END_MUS ->", highest[0], highest[1])
    return text

def add_song_table(text):
    if re.search(r'^\s*song\s+' + re.escape(STEM) + r',', text, re.M):
        return text

    marker = re.search(r'\n\s*\.align\s+2\s*\n\s*dummy_song_header:', text)
    if not marker:
        die("Nao achei dummy_song_header em song_table.inc.")

    return (
        text[:marker.start()]
        + f"\n\tsong {STEM}, 0, 0\n"
        + text[marker.start():]
    )

def add_to_station(text, array_name):
    pattern = (
        r'(static const u16\s+' + re.escape(array_name)
        + r'\[\]\s*=\s*\{)(.*?)(\n\};)'
    )
    m = re.search(pattern,text,re.S)

    if not m:
        die(f"Nao achei {array_name} em radio.c.")

    body = m.group(2)

    if CONST in body:
        return text

    if "STATION_END" not in body:
        die(f"{array_name} sem STATION_END.")

    # Append before STATION_END: same ordering behavior used for the latest new songs.
    body = body.replace(
        "    STATION_END",
        f"    {CONST},\n    STATION_END",
        1
    )

    return text[:m.start(2)] + body + text[m.end(2):]

def add_radio_bgm(text):
    start = text.find("#define RADIO_SOUND_LIST_BGM")
    end = text.find("#define X(songId)",start)

    if start < 0 or end < 0:
        die("Nao achei RADIO_SOUND_LIST_BGM.")

    block = text[start:end]

    if f"X({CONST})" in block:
        return text

    lines = block.rstrip().splitlines()
    last_x = None

    for i in range(len(lines)-1,-1,-1):
        if re.search(r'\bX\(MUS_[A-Z0-9_]+\)',lines[i]):
            last_x = i
            break

    if last_x is None:
        die("RADIO_SOUND_LIST_BGM sem musicas.")

    if not lines[last_x].rstrip().endswith("\\"):
        lines[last_x] = lines[last_x].rstrip() + " \\"

    lines.append(f"    X({CONST})")
    new_block = "\n".join(lines) + "\n"

    return text[:start] + new_block + text[end:]

def add_anime_display(text):
    marker = "static const u8 *Radio_GetAnimeDisplayName(u16 songId)"
    fstart = text.find(marker)

    if fstart < 0:
        die("Nao achei Radio_GetAnimeDisplayName.")

    if DISPLAY_LABEL not in text[:fstart]:
        line = f'static const u8 {DISPLAY_LABEL}[] = _("{DISPLAY_TEXT}");\n'
        text = text[:fstart] + line + text[fstart:]

    fstart = text.find(marker)
    default_pos = text.find("    default:", fstart)

    if default_pos < 0:
        die("Switch Anime sem default.")

    # Make sure this default belongs to the Anime helper.
    func_prefix = text[fstart:default_pos]
    if f"case {CONST}:" not in func_prefix:
        case = f"    case {CONST}:\n        return {DISPLAY_LABEL};\n"
        text = text[:default_pos] + case + text[default_pos:]

    return text

def patch_radio(text):
    text = add_radio_bgm(text)
    text = add_to_station(text,"sStation_All")
    text = add_to_station(text,"sStation_Anime")
    text = add_anime_display(text)
    return text

def set_cfg(text):
    line = f"{STEM}.mid: -G_{ROCK_GROUP} -R12 -V090"
    m = re.search(r'^' + re.escape(STEM) + r'\.mid:.*$',text,re.M)

    if m:
        return text[:m.start()] + line + text[m.end():]

    if text and not text.endswith("\n"):
        text += "\n"

    return text + line + "\n"

def verify(songs_text,table_text,radio_text):
    errors = []

    if not re.search(r'^#define\s+' + re.escape(CONST) + r'\s+\d+\b',songs_text,re.M):
        errors.append("songs.h sem MUS_YOU_SAY_RUN")

    if not re.search(r'^\s*song\s+' + re.escape(STEM) + r',',table_text,re.M):
        errors.append("song_table sem mus_you_say_run")

    macro_start = radio_text.find("#define RADIO_SOUND_LIST_BGM")
    macro_end = radio_text.find("#define X(songId)",macro_start)
    macro = radio_text[macro_start:macro_end]

    if f"X({CONST})" not in macro:
        errors.append("RADIO_SOUND_LIST_BGM sem MUS_YOU_SAY_RUN")

    for arr in ("sStation_All","sStation_Anime"):
        m = re.search(
            r'static const u16\s+' + re.escape(arr)
            + r'\[\]\s*=\s*\{(.*?)\n\};',
            radio_text,re.S
        )

        if not m or CONST not in m.group(1):
            errors.append(f"{arr} sem MUS_YOU_SAY_RUN")

    if DISPLAY_LABEL not in radio_text:
        errors.append("radio.c sem nome amigavel You Say Run")

    if f"case {CONST}:" not in radio_text:
        errors.append("Radio_GetAnimeDisplayName sem case You Say Run")

    if errors:
        die("Falha de verificacao:\n  - " + "\n  - ".join(errors))

def main():
    root = Path.cwd()
    script_dir = Path(__file__).resolve().parent

    songs_h = find_project_file(root,"include/constants/songs.h","songs.h")
    song_table = find_project_file(root,"sound/song_table.inc","song_table.inc")
    radio_c = find_project_file(root,"src/radio.c","radio.c")
    cfg = root / "sound/songs/midi/midi.cfg"
    target = root / "sound/songs/midi/mus_you_say_run.mid"

    if not cfg.exists():
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    # Validate all sound prerequisites before changing the project.
    groupfile,group_lines,group_end,picks,append_voice = prepare_rock_group(root)

    zpath = script_dir / PACK_ZIP
    if not zpath.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python em PHYTON/.")

    with zipfile.ZipFile(zpath,"r") as z:
        data = z.read("assets/mus_you_say_run.mid")

    if hashlib.sha256(data).hexdigest() != MIDI_SHA256:
        die("SHA256 do MIDI nao confere.")

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"you_say_run_v1_{stamp}"

    for p in (songs_h,song_table,radio_c,cfg,groupfile,target):
        backup(p,root,bdir)

    # Append violin without moving/changing old rock-metal slots.
    append_violin_to_group(groupfile,group_lines,group_end,append_voice)

    # Register brand-new song.
    songs_h.write_text(add_song_constant(songs_h.read_text()))
    song_table.write_text(add_song_table(song_table.read_text()))
    radio_c.write_text(patch_radio(radio_c.read_text()))

    # Install MIDI and patch role programs to the actual voicegroup slots.
    target.parent.mkdir(parents=True,exist_ok=True)
    target.write_bytes(data)
    patch_programs(target,picks)
    os.utime(target,None)

    cfg.write_text(set_cfg(cfg.read_text()))

    # Critical: verify the Radio registration before reporting success.
    verify(songs_h.read_text(),song_table.read_text(),radio_c.read_text())

    print("\nFORCANDO REBUILD:")
    for stale in (
        root/"sound/songs/midi/mus_you_say_run.s",
        root/"build/modern/sound/songs/midi/mus_you_say_run.o",
        root/"build/modern/sound/songs/midi/mus_you_say_run.d",
        root/"build/modern/src/radio.o",
        root/"build/modern/src/radio.d",
        root/"build/modern/sound/song_table.o",
        root/"build/modern/sound/song_table.d",
        root/"build/modern/sound/voicegroups.o",
        root/"build/modern/sound/voicegroups.d",
    ):
        if stale.exists():
            print(" rm -f",stale.relative_to(root))
            stale.unlink()

    for p in (songs_h,song_table,radio_c,cfg,groupfile,target):
        os.utime(p,None)

    print("\nYOU SAY RUN registrada e VERIFICADA:")
    print("  - constants/songs.h -> MUS_YOU_SAY_RUN")
    print("  - sound/song_table.inc")
    print("  - RADIO_SOUND_LIST_BGM")
    print("  - ALL TRACKS")
    print("  - ANIME -> adicionada no final, antes de STATION_END")
    print("  - nome: YOU SAY RUN - (MY HERO ACADEMIA)")
    print("  - midi.cfg -> hlw_rock_metal / R12 / V090")

    print("\nARRANJO:")
    print("  PIANO  = piano + e.piano + strings/scifi/harp/choir convertidos")
    print("  GUITAR = riff principal distortion, duplicacao Electric Guitar removida")
    print("  VIOLIN = violinos + saw/vibraphone/digital leads convertidos")
    print("  DRUMS  = rock 36/40/42; 909 digital virou snare build")

    print("\nBackup:",bdir)
    print("\nAgora: make -j8")

if __name__ == "__main__":
    main()
