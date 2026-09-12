#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os

PACK_ZIP = "RADIO_GAMES_EVERLASTING_PIANO_ONLY_PLUS_RAGNAROK_THEME_V1.zip"

EVER = {
    "stem": "mus_everlasting_wanderers",
    "asset": "assets/mus_everlasting_wanderers.mid",
    "sha": "eed0a426426586a1c40d3a68fd1f8bab12c8f3fbcb276446af2632f708a493fc",
    "cfg": "-G_brothers -R17 -V090",
    "roles": {
        "ROLE_PIANO_FOUNDATION": "piano",
        "ROLE_PIANO_MELODY": "piano",
    },
}

THEME = {
    "const": "MUS_THEME_RAGNAROK",
    "stem": "mus_theme_ragnarok",
    "asset": "assets/mus_theme_ragnarok.mid",
    "sha": "ccd254667a55f481231311988f2b096cdad05bfe4086ad910fb01476262e6d4b",
    "cfg": "-G_brothers -R19 -V090",
    "label": "sGamesName_RagnarokTheme",
    "display": "THEME (RAGNAROK)",
    "roles": {
        "ROLE_PIANO_MAIN": "piano",
        "ROLE_PIANO_LOW": "piano",
        "ROLE_VIOLIN": "violin",
        "ROLE_STRINGS": "strings",
    },
}

def die(msg):
    print("\n[ERRO]", msg)
    raise RuntimeError(msg)

def backup(path, root, bdir):
    if not path.exists():
        return
    dst = bdir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

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

        for i, line in enumerate(lines):
            if re.match(r'^\s*voice_group\s+' + re.escape(name) + r'\s*$', line):
                start = i
                break
        if start is None:
            continue

        for i in range(start + 1, len(lines)):
            if re.match(r'^\s*voice_group\s+[A-Za-z0-9_]+\s*$', lines[i]):
                end = i
                break

        voices = []
        for line in lines[start + 1:end]:
            s = line.strip()
            if s.startswith("voice_") and not s.startswith("voice_group"):
                voices.append(s)
        return p, voices

    return None, None

def brothers_slots(root):
    p, voices = find_group(root, "brothers")
    if p is None or len(voices) < 2:
        die("Nao achei voice_group brothers com piano/violin.")

    piano = None
    violin = None
    strings = None

    for i, line in enumerate(voices):
        s = line.lower()
        if piano is None and "piano" in s and "bass" not in s and "drum" not in s:
            piano = i
        if violin is None and any(k in s for k in ("violin", "fiddle", "solo_string")):
            violin = i
        if strings is None and "string" in s and not any(k in s for k in ("violin", "fiddle", "solo_string")):
            strings = i

    # Proven layout used by the successful Brothers remaster.
    if piano is None:
        piano = 0
    if violin is None:
        violin = 1
    if strings is None:
        strings = 2

    if max(piano, violin, strings) >= len(voices):
        die("voice_group brothers nao possui os slots esperados.")

    print("\nBROTHERS slots:")
    print(f"  PIANO   -> {piano:03d}: {voices[piano]}")
    print(f"  VIOLIN  -> {violin:03d}: {voices[violin]}")
    print(f"  STRINGS -> {strings:03d}: {voices[strings]}")

    return {"piano": piano, "violin": violin, "strings": strings}

def read_vlq(buf, pos):
    value = 0
    while True:
        b = buf[pos]
        pos += 1
        value = (value << 7) | (b & 0x7F)
        if not (b & 0x80):
            return value, pos

def track_program_offsets(track_data, file_start):
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
            typ = track_data[pos]
            pos += 1
            ln, pos = read_vlq(track_data, pos)
            a = pos
            b = pos + ln
            if typ == 0x03:
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

def patch_programs(data, role_tags, slots):
    data = bytearray(data)
    if data[:4] != b"MThd":
        die("MIDI invalido.")

    pos = 8 + int.from_bytes(data[4:8], "big")
    seen_tags = set()

    while pos + 8 <= len(data):
        if data[pos:pos+4] != b"MTrk":
            die("MTrk esperado.")
        ln = int.from_bytes(data[pos+4:pos+8], "big")
        start = pos + 8
        end = start + ln
        name, offsets = track_program_offsets(data[start:end], start)
        upper = name.upper()

        for tag, role in role_tags.items():
            if tag in upper:
                for off in offsets:
                    data[off] = slots[role]
                seen_tags.add(tag)
                break

        pos = end

    missing = set(role_tags) - seen_tags
    if missing:
        die("Nao consegui patchar tracks: " + ", ".join(sorted(missing)))

    return bytes(data)

def set_cfg(text, stem, options):
    line = f"{stem}.mid: {options}"
    m = re.search(r'^' + re.escape(stem) + r'\.mid:.*$', text, re.M)
    if m:
        return text[:m.start()] + line + text[m.end():]
    if text and not text.endswith("\n"):
        text += "\n"
    return text + line + "\n"

def add_song_constant(text, const):
    existing = re.search(r'^#define\s+' + re.escape(const) + r'\s+(\d+)\b', text, re.M)
    if existing:
        print("ID existente:", const, "=", existing.group(1))
        return text

    values = [
        int(x)
        for x in re.findall(r'^#define\s+MUS_[A-Z0-9_]+\s+(\d+)\b', text, re.M)
    ]
    if not values:
        die("Nao consegui ler IDs MUS_* em songs.h.")

    new_id = max(values) + 1
    marker = re.search(r'^#define\s+END_MUS\s+\S+.*$', text, re.M)
    if not marker:
        die("Nao achei END_MUS em songs.h.")

    text = text[:marker.start()] + f"#define {const:<52} {new_id}\n" + text[marker.start():]
    print("Novo ID:", const, "=", new_id)
    return text

def fix_end_mus(text):
    pairs = [
        (name, int(num))
        for name, num in re.findall(r'^#define\s+(MUS_[A-Z0-9_]+)\s+(\d+)\b', text, re.M)
    ]
    if not pairs:
        die("Nao consegui recalcular END_MUS.")
    highest = max(pairs, key=lambda x: x[1])
    text = re.sub(
        r'^#define\s+END_MUS\s+\S+.*$',
        f"#define END_MUS {highest[0]}",
        text,
        count=1,
        flags=re.M
    )
    print("END_MUS ->", highest[0], highest[1])
    return text

def add_song_table(text, stem):
    if re.search(r'^\s*song\s+' + re.escape(stem) + r'\s*,', text, re.M):
        return text

    marker = re.search(r'\n\s*\.align\s+2\s*\n\s*dummy_song_header:', text)
    if not marker:
        die("Nao achei dummy_song_header em song_table.inc.")

    return text[:marker.start()] + f"\n\tsong {stem}, 0, 0\n" + text[marker.start():]

def add_radio_bgm(text, const):
    start = text.find("#define RADIO_SOUND_LIST_BGM")
    end = text.find("#define X(songId)", start)
    if start < 0 or end < 0:
        die("Nao achei RADIO_SOUND_LIST_BGM.")

    block = text[start:end]
    if f"X({const})" in block:
        return text

    lines = block.rstrip().splitlines()
    last = None
    for i in range(len(lines) - 1, -1, -1):
        if re.search(r'\bX\(MUS_[A-Z0-9_]+\)', lines[i]):
            last = i
            break
    if last is None:
        die("RADIO_SOUND_LIST_BGM sem itens.")

    if not lines[last].rstrip().endswith("\\"):
        lines[last] = lines[last].rstrip() + " \\"
    lines.append(f"    X({const})")
    return text[:start] + "\n".join(lines) + "\n" + text[end:]

def add_to_station(text, array_name, const):
    pattern = r'(static const u16\s+' + re.escape(array_name) + r'\[\]\s*=\s*\{)(.*?)(\n\};)'
    m = re.search(pattern, text, re.S)
    if not m:
        die(f"Nao achei {array_name}.")
    body = m.group(2)
    if const in body:
        return text
    if "STATION_END" not in body:
        die(f"{array_name} sem STATION_END.")
    body = body.replace(
        "    STATION_END",
        f"    {const},\n    STATION_END",
        1
    )
    return text[:m.start(2)] + body + text[m.end(2):]

def add_games_display(text, const, label, display):
    marker = "static const u8 *Radio_GetGamesDisplayName(u16 songId)"
    fstart = text.find(marker)
    if fstart < 0:
        die("Nao achei Radio_GetGamesDisplayName.")

    if label not in text:
        text = text[:fstart] + f'static const u8 {label}[] = _("{display}");\n' + text[fstart:]

    fstart = text.find(marker)
    default_pos = text.find("default:", fstart)
    if default_pos < 0:
        die("Nao achei default do switch Games.")

    if f"case {const}:" not in text[fstart:default_pos]:
        text = (
            text[:default_pos]
            + f"    case {const}:\n"
              f"        return {label};\n"
            + text[default_pos:]
        )

    return text

def main():
    root = Path.cwd()
    script_dir = Path(__file__).resolve().parent

    songs_h = root / "include/constants/songs.h"
    song_table = root / "sound/song_table.inc"
    radio_c = root / "src/radio.c"
    cfg = root / "sound/songs/midi/midi.cfg"

    for p in (songs_h, song_table, radio_c, cfg):
        if not p.exists():
            die(f"Nao achei {p}. Rode da raiz do pokeemerald-expansion.")

    existing_ever = root / "sound/songs/midi/mus_everlasting_wanderers.mid"
    if not existing_ever.exists():
        die("Nao achei a Everlasting Wanderers existente.")

    pack = script_dir / PACK_ZIP
    if not pack.exists():
        die(f"Nao achei {PACK_ZIP} ao lado do Python em PHYTON/.")

    slots = brothers_slots(root)

    with zipfile.ZipFile(pack, "r") as z:
        ever_data = z.read(EVER["asset"])
        theme_data = z.read(THEME["asset"])

    if hashlib.sha256(ever_data).hexdigest() != EVER["sha"]:
        die("SHA invalido para Everlasting Wanderers.")
    if hashlib.sha256(theme_data).hexdigest() != THEME["sha"]:
        die("SHA invalido para Ragnarok Theme.")

    ever_data = patch_programs(ever_data, EVER["roles"], slots)
    theme_data = patch_programs(theme_data, THEME["roles"], slots)

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"everlasting_piano_theme_ragnarok_{stamp}"

    targets = [
        songs_h, song_table, radio_c, cfg,
        root / "sound/songs/midi/mus_everlasting_wanderers.mid",
        root / "sound/songs/midi/mus_everlasting_wanderers.s",
        root / "sound/songs/midi/mus_theme_ragnarok.mid",
        root / "sound/songs/midi/mus_theme_ragnarok.s",
    ]
    for p in targets:
        backup(p, root, bdir)

    originals = {p: (p.read_bytes() if p.exists() else None) for p in targets}

    def rollback():
        print("\n[ROLLBACK] Restaurando estado anterior...")
        for p, data in originals.items():
            if data is None:
                if p.exists():
                    p.unlink()
            else:
                p.parent.mkdir(parents=True, exist_ok=True)
                p.write_bytes(data)

    try:
        # Write MIDI assets first.
        ever_target = root / "sound/songs/midi/mus_everlasting_wanderers.mid"
        theme_target = root / "sound/songs/midi/mus_theme_ragnarok.mid"

        ever_target.write_bytes(ever_data)
        theme_target.write_bytes(theme_data)
        os.utime(ever_target, None)
        os.utime(theme_target, None)

        # MIDI config.
        cfg_text = cfg.read_text()
        cfg_text = set_cfg(cfg_text, EVER["stem"], EVER["cfg"])
        cfg_text = set_cfg(cfg_text, THEME["stem"], THEME["cfg"])
        cfg.write_text(cfg_text)

        # Register ONLY the new Theme song.
        songs_text = add_song_constant(songs_h.read_text(), THEME["const"])
        songs_text = fix_end_mus(songs_text)
        table_text = add_song_table(song_table.read_text(), THEME["stem"])

        radio_text = radio_c.read_text()
        radio_text = add_radio_bgm(radio_text, THEME["const"])
        radio_text = add_to_station(radio_text, "sStation_All", THEME["const"])
        radio_text = add_to_station(radio_text, "sStation_Games", THEME["const"])
        radio_text = add_games_display(
            radio_text,
            THEME["const"],
            THEME["label"],
            THEME["display"]
        )

        songs_h.write_text(songs_text)
        song_table.write_text(table_text)
        radio_c.write_text(radio_text)

        # Clear only stale objects/deps. NO make -B, NO make call.
        stale = [
            root / "build/modern/sound/songs/midi/mus_everlasting_wanderers.o",
            root / "build/modern/sound/songs/midi/mus_everlasting_wanderers.d",
            root / "build/modern/sound/songs/midi/mus_theme_ragnarok.o",
            root / "build/modern/sound/songs/midi/mus_theme_ragnarok.d",
            root / "build/modern/data/sound_data.o",
            root / "build/modern/data/sound_data.d",
            root / "build/modern/src/radio.o",
            root / "build/modern/src/radio.d",
        ]
        for p in stale:
            if p.exists():
                print("rm", p.relative_to(root))
                p.unlink()

        # Touch MIDIs last so normal make sees them newer than any existing .s.
        os.utime(ever_target, None)
        os.utime(theme_target, None)

        print("\n============================================================")
        print("INSTALADO COM SUCESSO")
        print("============================================================")
        print("EVERLASTING WANDERERS V3:")
        print("  - SOMENTE piano")
        print("  - a antiga linha de violin agora toca em piano")
        print("  - nenhuma nota principal foi cortada")
        print("")
        print("RAGNAROK THEME V1:")
        print("  - fonte escolhida: title.mid")
        print("  - piano + violin + strings")
        print("  - sem bateria")
        print("  - tempo expressivo original preservado")
        print("  - ALL TRACKS + GAMES")
        print("")
        print("IMPORTANTE:")
        print("  - este installer NAO roda make")
        print("  - este installer NAO usa make -B")
        print("  - os .s existentes NAO sao apagados")
        print("")
        print("Backup:", bdir)
        print("\nAgora rode SOMENTE:")
        print("  make -j8")

    except Exception:
        rollback()
        raise

if __name__ == "__main__":
    try:
        main()
    except RuntimeError:
        raise SystemExit(1)
