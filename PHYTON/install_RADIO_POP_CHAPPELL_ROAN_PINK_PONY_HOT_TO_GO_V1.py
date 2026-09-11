#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os

PACK_ZIP = "RADIO_POP_CHAPPELL_ROAN_PINK_PONY_HOT_TO_GO_V1.zip"
EXPECTED_HASHES = {'assets/mus_pink_pony_club_chappell_roan.mid': 'f8942ff0cc49d6b9b5486ded130ff554dc493277bc04843717a7b75bc8328381', 'assets/mus_hot_to_go_chappell_roan.mid': 'de5e98b6999b6c5d30c83ea8b508c6695514f691483144a15cfd9aa1cf66fa09'}

SONGS = (
    ("MUS_PINK_PONY_CLUB_CHAPPELL_ROAN", "mus_pink_pony_club_chappell_roan"),
    ("MUS_HOT_TO_GO_CHAPPELL_ROAN", "mus_hot_to_go_chappell_roan"),
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
        2: "nylon",
        5: "pizzicato",
        7: "piano",
        8: "pink_and_white_drumset",
    }
    for name in ("diva_pop", "pop", "abracadabra"):
        p, voices = find_voicegroup(root, name)
        if p is None:
            continue
        if all(slot < len(voices) and token in voices[slot].lower()
               for slot, token in expected.items()):
            print("Voicegroup POP:", name)
            print("Arquivo:", p)
            for slot in sorted(expected):
                print(f"  {slot:03d}: {voices[slot]}")
            return name
    die(
        "Nao achei banco POP seguro. Esperado: "
        "001 synth_bass / 002 nylon / 005 pizzicato / "
        "007 piano / 008 pink_and_white_drumset"
    )

def add_song_constants(text):
    numeric = [
        int(x) for x in re.findall(
            r'^#define\s+MUS_[A-Z0-9_]+\s+(\d+)\s*(?://.*)?$',
            text, re.M
        )
    ]
    if not numeric:
        die("Nao consegui ler os IDs MUS_*.")

    next_id = max(numeric) + 1
    defs = []
    for const, stem in SONGS:
        m = re.search(rf'^#define\s+{re.escape(const)}\s+(\d+)\b', text, re.M)
        if m:
            print(f"Constante ja existe: {const} = {m.group(1)}")
        else:
            defs.append(f"#define {const:<50} {next_id}")
            print(f"Novo ID: {const} = {next_id}")
            next_id += 1

    if defs:
        marker = re.search(r'^#define\s+END_MUS\s+\S+.*$', text, re.M)
        if not marker:
            die("Nao achei #define END_MUS.")
        text = text[:marker.start()] + "\n".join(defs) + "\n" + text[marker.start():]

    text = re.sub(
        r'^#define\s+END_MUS\s+\S+.*$',
        "#define END_MUS MUS_HOT_TO_GO_CHAPPELL_ROAN",
        text, count=1, flags=re.M
    )
    return text

def add_song_table(text):
    missing = []
    for const, stem in SONGS:
        if not re.search(r'^\s*song\s+' + re.escape(stem) + r',', text, re.M):
            missing.append(f"\tsong {stem}, 0, 0")
    if not missing:
        return text

    marker = re.search(r'\n\s*\.align\s+2\s*\n\s*dummy_song_header:', text)
    if not marker:
        die("Nao achei dummy_song_header no final de song_table.inc.")
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
    for const, stem in SONGS:
        if const not in body:
            additions.append(f"    {const},")
    if not additions:
        return text
    if "STATION_END" not in body:
        die(f"{array_name} sem STATION_END.")

    body = body.replace(
        "    STATION_END",
        "\n".join(additions) + "\n    STATION_END",
        1
    )
    return text[:m.start(2)] + body + text[m.end(2):]

def add_radio_bgm_macro(text):
    start = text.find("#define RADIO_SOUND_LIST_BGM")
    end = text.find("#define X(songId)", start)
    if start < 0 or end < 0:
        die("Nao achei RADIO_SOUND_LIST_BGM.")

    block = text[start:end]
    missing = [const for const, stem in SONGS if f"X({const})" not in block]
    if not missing:
        return text

    lines = block.rstrip().splitlines()
    last_x = None
    for i in range(len(lines) - 1, -1, -1):
        if re.search(r'\bX\(MUS_[A-Z0-9_]+\)', lines[i]):
            last_x = i
            break
    if last_x is None:
        die("RADIO_SOUND_LIST_BGM sem ultima musica.")

    if not lines[last_x].rstrip().endswith("\\"):
        lines[last_x] = lines[last_x].rstrip() + " \\"

    for i, const in enumerate(missing):
        suffix = " \\" if i < len(missing) - 1 else ""
        lines.append(f"    X({const}){suffix}")

    new_block = "\n".join(lines) + "\n"
    return text[:start] + new_block + text[end:]

def add_pop_labels_and_switch(text):
    anchor = 'static const u8 sPopName_HaloBeyonce[] = _("HALO (BEYONCE)");'
    if anchor not in text:
        die("Nao achei a ancora sPopName_HaloBeyonce.")

    labels = []
    if "sPopName_PinkPonyClubChappellRoan" not in text:
        labels.append(
            'static const u8 sPopName_PinkPonyClubChappellRoan[] = '
            '_("PINK PONY CLUB (CHAPPELL ROAN)");'
        )
    if "sPopName_HotToGoChappellRoan" not in text:
        labels.append(
            'static const u8 sPopName_HotToGoChappellRoan[] = '
            '_("HOT TO GO! (CHAPPELL ROAN)");'
        )
    if labels:
        text = text.replace(anchor, anchor + "\n" + "\n".join(labels), 1)

    fstart = text.find("Radio_GetPopDisplayName(u16 songId)")
    fend = text.find("// ---------------------------------------------------------------------------", fstart)
    if fstart < 0 or fend < 0:
        die("Nao achei Radio_GetPopDisplayName.")
    func = text[fstart:fend]

    cases = []
    if "case MUS_PINK_PONY_CLUB_CHAPPELL_ROAN:" not in func:
        cases.append(
            "    case MUS_PINK_PONY_CLUB_CHAPPELL_ROAN:\n"
            "        return sPopName_PinkPonyClubChappellRoan;"
        )
    if "case MUS_HOT_TO_GO_CHAPPELL_ROAN:" not in func:
        cases.append(
            "    case MUS_HOT_TO_GO_CHAPPELL_ROAN:\n"
            "        return sPopName_HotToGoChappellRoan;"
        )
    if cases:
        pos = func.find("    default:")
        if pos < 0:
            die("Switch POP sem default.")
        func = func[:pos] + "\n".join(cases) + "\n\n" + func[pos:]
        text = text[:fstart] + func + text[fend:]

    return text

def patch_radio(text):
    text = add_radio_bgm_macro(text)
    text = add_to_station(text, "sStation_All")
    text = add_to_station(text, "sStation_Pop")
    text = add_pop_labels_and_switch(text)
    return text

def set_cfg(text, stem, group):
    line = f"{stem}.mid: -G_{group} -R12 -V090"
    m = re.search(r'^' + re.escape(stem) + r'\.mid:.*$', text, re.M)
    if m:
        return text[:m.start()] + line + text[m.end():]
    if text and not text.endswith("\n"):
        text += "\n"
    return text + line + "\n"

def main():
    root = Path.cwd()
    script_dir = Path(__file__).resolve().parent

    songs_h = find_project_file(root, "include/constants/songs.h", "songs.h")
    song_table = find_project_file(root, "sound/song_table.inc", "song_table.inc")
    radio_c = find_project_file(root, "src/radio.c", "radio.c")
    midi_cfg = root / "sound/songs/midi/midi.cfg"

    if not midi_cfg.exists():
        die("Rode da raiz do pokeemerald-expansion.")

    group = detect_pop_group(root)

    zpath = script_dir / PACK_ZIP
    if not zpath.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python.")

    payload = {}
    with zipfile.ZipFile(zpath, "r") as z:
        for arc, sha in EXPECTED_HASHES.items():
            data = z.read(arc)
            if hashlib.sha256(data).hexdigest() != sha:
                die(f"SHA256 nao confere: {arc}")
            payload[arc] = data

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"chappell_roan_pop_v1_{stamp}"

    for p in (songs_h, song_table, radio_c, midi_cfg):
        backup(p, root, bdir)

    targets = {
        "assets/mus_pink_pony_club_chappell_roan.mid":
            root / "sound/songs/midi/mus_pink_pony_club_chappell_roan.mid",
        "assets/mus_hot_to_go_chappell_roan.mid":
            root / "sound/songs/midi/mus_hot_to_go_chappell_roan.mid",
    }
    for p in targets.values():
        backup(p, root, bdir)

    songs_h.write_text(add_song_constants(songs_h.read_text()))
    song_table.write_text(add_song_table(song_table.read_text()))
    radio_c.write_text(patch_radio(radio_c.read_text()))

    for arc, target in targets.items():
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(payload[arc])
        os.utime(target, None)

    cfg = midi_cfg.read_text()
    cfg = set_cfg(cfg, "mus_pink_pony_club_chappell_roan", group)
    cfg = set_cfg(cfg, "mus_hot_to_go_chappell_roan", group)
    midi_cfg.write_text(cfg)

    print("\nFORCANDO REBUILD:")
    for stem in ("mus_pink_pony_club_chappell_roan", "mus_hot_to_go_chappell_roan"):
        for stale in (
            root / f"sound/songs/midi/{stem}.s",
            root / f"build/modern/sound/songs/midi/{stem}.o",
            root / f"build/modern/sound/songs/midi/{stem}.d",
        ):
            if stale.exists():
                print("  rm -f", stale.relative_to(root))
                stale.unlink()
        os.utime(root / f"sound/songs/midi/{stem}.mid", None)

    print("\nINSTALADO COM SUCESSO")
    print("Backup:", bdir)
    print("\nO installer registrou as duas musicas em:")
    print("  constants/songs.h -> novos IDs + END_MUS")
    print("  sound/song_table.inc")
    print("  radio.c -> RADIO_SOUND_LIST_BGM")
    print("  radio.c -> ALL TRACKS")
    print("  radio.c -> POP")
    print("  radio.c -> nomes amigaveis")
    print("  midi.cfg -> banco POP / R12 / V090")
    print("\nAgora: make -j8")

if __name__ == "__main__":
    main()
