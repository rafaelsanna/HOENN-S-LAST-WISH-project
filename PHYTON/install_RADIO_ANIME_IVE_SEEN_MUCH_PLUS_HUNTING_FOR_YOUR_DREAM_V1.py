#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import datetime
import zipfile
import hashlib
import os
import subprocess

PACK_ZIP = "RADIO_ANIME_IVE_SEEN_MUCH_PLUS_HUNTING_FOR_YOUR_DREAM_COMBINED_V1.zip"

SONGS = [
    {
        "const": "MUS_HUNTING_FOR_YOUR_DREAM",
        "stem": "mus_hunting_for_your_dream",
        "asset": "assets/mus_hunting_for_your_dream.mid",
        "sha": "04c5fa157a03e57cdd61e30d78f7d14dd8eefe2095efdcbf647b09be8569bf35",
        "label": "sAnimeName_HuntingForYourDream",
        "display": "HUNTING FOR YOUR DREAM - (HUNTER X HUNTER)",
        "group": "hlw_rock_metal",
        "cfg": "-G_hlw_rock_metal -R12 -V090",
        "roles": {
            "ROLE_GUITAR": "guitar",
            "ROLE_PIANO": "piano",
            "ROLE_BASS": "bass",
            "ROLE_DRUMS": "drums",
        },
    },
    {
        "const": "MUS_IVE_SEEN_MUCH",
        "stem": "mus_ive_seen_much",
        "asset": "assets/mus_ive_seen_much.mid",
        "sha": "faff836e3aa824ce25551f2e881cc27374072f452053c9c39fd1c46fc11fd614",
        "label": "sAnimeName_IveSeenMuch",
        "display": "I'VE SEEN MUCH - (NARUTO)",
        "group": "brothers",
        "cfg": "-G_brothers -R18 -V090",
        "roles": {
            "ROLE_PIANO": "piano",
            "ROLE_VIOLIN": "violin",
        },
    },
]

def die(msg):
    print("\n[ERRO]", msg)
    raise RuntimeError(msg)

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

def choose_hxh_slots(root):
    p, voices = find_group(root, "hlw_rock_metal")
    if p is None:
        die("Nao achei voice_group hlw_rock_metal.")

    def pick(score_fn, role):
        ranked = []
        for i, line in enumerate(voices):
            score = score_fn(line.lower())
            if score > 0:
                ranked.append((score, i, line))
        if not ranked:
            die(f"Nao achei voice para {role} em hlw_rock_metal.")
        score, slot, line = max(ranked)
        return slot, line

    def guitar_score(s):
        if "bass" in s or "drum" in s:
            return -9999
        score = 0
        if "overdrive" in s and "guitar" in s:
            score += 850
        if "distort" in s and "guitar" in s:
            score += 760
        if "guitar" in s:
            score += 250
        if "_high" in s or " high" in s:
            score -= 120
        return score

    def piano_score(s):
        if "bass" in s or "drum" in s:
            return -9999
        return 900 if "piano" in s else 0

    def bass_score(s):
        if "drum" in s:
            return -9999
        score = 0
        if "fingered_bass" in s:
            score += 950
        if "bass" in s:
            score += 450
        return score

    def drum_score(s):
        if "hlw_rock_metal_drumset" in s:
            return 1200
        if "drumset" in s:
            return 800
        if "drum" in s:
            return 400
        return 0

    g = pick(guitar_score, "guitar")
    pno = pick(piano_score, "piano")
    b = pick(bass_score, "bass")
    d = pick(drum_score, "drums")

    print("\nHUNTING FOR YOUR DREAM voice slots:")
    print(f"  GUITAR -> {g[0]:03d}: {g[1]}")
    print(f"  PIANO  -> {pno[0]:03d}: {pno[1]}")
    print(f"  BASS   -> {b[0]:03d}: {b[1]}")
    print(f"  DRUMS  -> {d[0]:03d}: {d[1]}")

    return {
        "guitar": g[0],
        "piano": pno[0],
        "bass": b[0],
        "drums": d[0],
    }

def choose_ive_slots(root):
    p, voices = find_group(root, "brothers")
    if p is None or len(voices) < 2:
        die("Nao achei voice_group brothers com piano + violin.")

    piano = None
    violin = None

    for i, line in enumerate(voices):
        s = line.lower()
        if piano is None and "piano" in s and "bass" not in s and "drum" not in s:
            piano = i
        if violin is None and any(k in s for k in ("violin", "fiddle", "solo_string")):
            violin = i

    # Proven layout from the Brothers remaster.
    if piano is None:
        piano = 0
    if violin is None:
        violin = 1

    if piano >= len(voices) or violin >= len(voices):
        die("Slots de piano/violin de brothers invalidos.")

    print("\nI'VE SEEN MUCH voice slots:")
    print(f"  PIANO  -> {piano:03d}: {voices[piano]}")
    print(f"  VIOLIN -> {violin:03d}: {voices[violin]}")

    return {"piano": piano, "violin": violin}

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

def patch_midi_programs(data, role_tags, slots):
    data = bytearray(data)

    if data[:4] != b"MThd":
        die("MIDI invalido.")

    pos = 8 + int.from_bytes(data[4:8], "big")
    seen_roles = set()

    while pos + 8 <= len(data):
        if data[pos:pos + 4] != b"MTrk":
            die("MTrk esperado.")

        ln = int.from_bytes(data[pos + 4:pos + 8], "big")
        start = pos + 8
        end = start + ln
        name, offsets = track_program_offsets(data[start:end], start)

        role = None
        upper = name.upper()

        for tag, mapped_role in role_tags.items():
            if tag in upper:
                role = mapped_role
                break

        if role is not None:
            if role not in slots:
                die(f"Role {role} sem slot.")
            for off in offsets:
                data[off] = slots[role]
            seen_roles.add(role)

        pos = end

    expected = set(role_tags.values())
    if seen_roles != expected:
        die(f"Nao consegui patchar todos os roles. Esperado={expected} visto={seen_roles}")

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
        for x in re.findall(
            r'^#define\s+MUS_[A-Z0-9_]+\s+(\d+)\b',
            text,
            re.M
        )
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
        for name, num in re.findall(
            r'^#define\s+(MUS_[A-Z0-9_]+)\s+(\d+)\b',
            text,
            re.M
        )
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
        die("Nao achei dummy_song_header em sound/song_table.inc.")

    return text[:marker.start()] + f"\n\tsong {stem}, 0, 0\n" + text[marker.start():]

def add_radio_bgm(text, const):
    start = text.find("#define RADIO_SOUND_LIST_BGM")
    end = text.find("#define X(songId)", start)

    if start < 0 or end < 0:
        die("Nao achei RADIO_SOUND_LIST_BGM em src/radio.c.")

    block = text[start:end]

    if f"X({const})" in block:
        return text

    lines = block.rstrip().splitlines()
    last_x = None

    for i in range(len(lines) - 1, -1, -1):
        if re.search(r'\bX\(MUS_[A-Z0-9_]+\)', lines[i]):
            last_x = i
            break

    if last_x is None:
        die("RADIO_SOUND_LIST_BGM nao possui entradas.")

    if not lines[last_x].rstrip().endswith("\\"):
        lines[last_x] = lines[last_x].rstrip() + " \\"

    lines.append(f"    X({const})")

    return text[:start] + "\n".join(lines) + "\n" + text[end:]

def add_to_station(text, array_name, const):
    pattern = (
        r'(static const u16\s+' + re.escape(array_name)
        + r'\[\]\s*=\s*\{)(.*?)(\n\};)'
    )
    m = re.search(pattern, text, re.S)

    if not m:
        die(f"Nao achei {array_name} em radio.c.")

    body = m.group(2)

    if const in body:
        return text

    if "STATION_END" not in body:
        die(f"{array_name} nao possui STATION_END.")

    body = body.replace(
        "    STATION_END",
        f"    {const},\n    STATION_END",
        1
    )

    return text[:m.start(2)] + body + text[m.end(2):]

def add_anime_display(text, const, label, display):
    marker = "static const u8 *Radio_GetAnimeDisplayName(u16 songId)"
    fstart = text.find(marker)

    if fstart < 0:
        die("Nao achei Radio_GetAnimeDisplayName.")

    if label not in text:
        text = text[:fstart] + f'static const u8 {label}[] = _("{display}");\n' + text[fstart:]

    fstart = text.find(marker)
    default_pos = text.find("    default:", fstart)

    if default_pos < 0:
        die("Nao achei default do switch Anime.")

    if f"case {const}:" not in text[fstart:default_pos]:
        text = (
            text[:default_pos]
            + f"    case {const}:\n"
              f"        return {label};\n"
            + text[default_pos:]
        )

    return text

def patch_radio(text, song):
    text = add_radio_bgm(text, song["const"])
    text = add_to_station(text, "sStation_All", song["const"])
    text = add_to_station(text, "sStation_Anime", song["const"])
    text = add_anime_display(
        text,
        song["const"],
        song["label"],
        song["display"]
    )
    return text

def verify_symbol(s_path, stem):
    if not s_path.exists():
        die(f"mid2agb nao criou {s_path}.")

    text = s_path.read_text(errors="ignore")

    global_ok = re.search(
        r'^\s*\.global\s+' + re.escape(stem) + r'\s*$',
        text,
        re.M
    )
    label_ok = re.search(
        r'^' + re.escape(stem) + r':\s*$',
        text,
        re.M
    )

    if not global_ok or not label_ok:
        die(f"{s_path.name} foi gerado, mas nao exporta o simbolo {stem}.")

def backup(path, root, bdir):
    if not path.exists():
        return

    dst = bdir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def main():
    root = Path.cwd()
    script_dir = Path(__file__).resolve().parent

    songs_h = root / "include/constants/songs.h"
    song_table = root / "sound/song_table.inc"
    radio_c = root / "src/radio.c"
    cfg = root / "sound/songs/midi/midi.cfg"

    for p in (songs_h, song_table, radio_c, cfg):
        if not p.exists():
            die(f"Nao achei {p}. Rode da raiz: cd ~/pokeemerald-expansion")

    zpath = script_dir / PACK_ZIP

    if not zpath.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python em PHYTON/.")

    # ------------------------------------------------------------
    # 1) VALIDATE EVERYTHING FIRST. No project modifications yet.
    # ------------------------------------------------------------
    slots = {
        "mus_hunting_for_your_dream": choose_hxh_slots(root),
        "mus_ive_seen_much": choose_ive_slots(root),
    }

    raw_assets = {}

    with zipfile.ZipFile(zpath, "r") as z:
        for song in SONGS:
            data = z.read(song["asset"])

            if hashlib.sha256(data).hexdigest() != song["sha"]:
                die(f"SHA256 invalido para {song['stem']}.")

            data = patch_midi_programs(
                data,
                song["roles"],
                slots[song["stem"]]
            )

            raw_assets[song["stem"]] = data

    mid_tool = root / "tools/mid2agb/mid2agb"

    if not mid_tool.exists():
        print("\nmid2agb ainda nao existe; compilando a ferramenta...")
        subprocess.run(
            ["make", "-C", "tools/mid2agb"],
            cwd=root,
            check=True
        )

    if not mid_tool.exists():
        die("Nao consegui criar tools/mid2agb/mid2agb.")

    # ------------------------------------------------------------
    # 2) BACKUP.
    # ------------------------------------------------------------
    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"anime_two_song_safe_install_{stamp}"

    touched = [songs_h, song_table, radio_c, cfg]

    for song in SONGS:
        touched.append(root / f"sound/songs/midi/{song['stem']}.mid")
        touched.append(root / f"sound/songs/midi/{song['stem']}.s")

    for p in touched:
        backup(p, root, bdir)

    # Keep an in-memory transaction snapshot too.
    originals = {}
    for p in touched:
        originals[p] = p.read_bytes() if p.exists() else None

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
        # --------------------------------------------------------
        # 3) INSTALL MIDI + CFG FIRST.
        #    This prevents song_table from ever pointing to a song
        #    whose source file does not exist.
        # --------------------------------------------------------
        cfg_text = cfg.read_text()

        for song in SONGS:
            target = root / f"sound/songs/midi/{song['stem']}.mid"
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(raw_assets[song["stem"]])
            os.utime(target, None)

            cfg_text = set_cfg(cfg_text, song["stem"], song["cfg"])

        cfg.write_text(cfg_text)
        os.utime(cfg, None)

        # --------------------------------------------------------
        # 4) GENERATE BOTH .S FILES DIRECTLY WITH MID2AGB.
        #    This is the safety fix for the previous linker problem.
        # --------------------------------------------------------
        print("\nGerando assemblies MIDI ANTES de registrar as musicas...")

        for song in SONGS:
            mid_path = root / f"sound/songs/midi/{song['stem']}.mid"
            s_path = root / f"sound/songs/midi/{song['stem']}.s"

            cmd = [
                str(mid_tool),
                str(mid_path),
                str(s_path),
            ] + song["cfg"].split()

            print(" ", song["stem"])
            subprocess.run(cmd, cwd=root, check=True)
            verify_symbol(s_path, song["stem"])

            print(f"    OK: {song['stem']}.s exporta {song['stem']}")

        # --------------------------------------------------------
        # 5) ONLY NOW register constants/song table/radio.
        # --------------------------------------------------------
        songs_text = songs_h.read_text()
        table_text = song_table.read_text()
        radio_text = radio_c.read_text()

        for song in SONGS:
            songs_text = add_song_constant(songs_text, song["const"])
            table_text = add_song_table(table_text, song["stem"])
            radio_text = patch_radio(radio_text, song)

        songs_text = fix_end_mus(songs_text)

        songs_h.write_text(songs_text)
        song_table.write_text(table_text)
        radio_c.write_text(radio_text)

        # --------------------------------------------------------
        # 6) VERIFY COMPLETE REGISTRATION.
        # --------------------------------------------------------
        for song in SONGS:
            if not re.search(
                r'^#define\s+' + re.escape(song["const"]) + r'\s+\d+\b',
                songs_text,
                re.M
            ):
                die(f"songs.h sem {song['const']}.")

            if not re.search(
                r'^\s*song\s+' + re.escape(song["stem"]) + r'\s*,',
                table_text,
                re.M
            ):
                die(f"song_table sem {song['stem']}.")

            for arr in ("sStation_All", "sStation_Anime"):
                m = re.search(
                    r'static const u16\s+' + re.escape(arr)
                    + r'\[\]\s*=\s*\{(.*?)\n\};',
                    radio_text,
                    re.S
                )

                if not m or song["const"] not in m.group(1):
                    die(f"{arr} sem {song['const']}.")

            if f"case {song['const']}:" not in radio_text:
                die(f"Anime display sem {song['const']}.")

            if song["display"] not in radio_text:
                die(f"Anime display label ausente: {song['display']}.")

            verify_symbol(
                root / f"sound/songs/midi/{song['stem']}.s",
                song["stem"]
            )

        # --------------------------------------------------------
        # 7) CLEAR ONLY STALE OBJECTS. NEVER DELETE THE .S FILES.
        # --------------------------------------------------------
        stale = [
            root / "build/modern/data/sound_data.o",
            root / "build/modern/data/sound_data.d",
            root / "build/modern/src/radio.o",
            root / "build/modern/src/radio.d",
        ]

        for song in SONGS:
            stale += [
                root / f"build/modern/sound/songs/midi/{song['stem']}.o",
                root / f"build/modern/sound/songs/midi/{song['stem']}.d",
            ]

        for p in stale:
            if p.exists():
                print("rm", p.relative_to(root))
                p.unlink()

        for p in (songs_h, song_table, radio_c, cfg):
            os.utime(p, None)

        print("\n============================================================")
        print("INSTALACAO SEGURA CONCLUIDA")
        print("============================================================")
        print("HUNTING FOR YOUR DREAM:")
        print("  - guitarra + piano + baixo + bateria")
        print("  - BPM 178 preservado")
        print("  - primeira nota tick 0")
        print("  - ALL TRACKS + ANIME")
        print("")
        print("I'VE SEEN MUCH:")
        print("  - SOMENTE piano + violin")
        print("  - primeira nota tick 0")
        print("  - ALL TRACKS + ANIME")
        print("")
        print("CRITICAL CHECK:")
        print("  - os 2 MIDIs existem")
        print("  - os 2 .s existem")
        print("  - os 2 .s exportam seus simbolos")
        print("  - so depois disso o song_table foi alterado")
        print("  - nenhum .s foi apagado")
        print("")
        print("Backup:", bdir)
        print("\nAgora rode apenas:")
        print("  make -j8")

    except Exception:
        rollback()
        raise

if __name__ == "__main__":
    try:
        main()
    except subprocess.CalledProcessError as e:
        print("\n[ERRO] comando externo falhou:", e)
        raise SystemExit(1)
    except RuntimeError:
        raise SystemExit(1)
