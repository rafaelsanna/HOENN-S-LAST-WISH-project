#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os, subprocess

PACK_ZIP = "RADIO_GAMES_FF8_ZELDA_ORCHESTRAL_PACK_V1.zip"

SONGS = [
    {
        "const": "MUS_THE_OATH",
        "stem": "mus_the_oath",
        "asset": "assets/mus_the_oath.mid",
        "sha": "4a5c731cfd790607dc0550a57d590e0e362028e1c6b41ca537be6190cfc92cb7",
        "cfg": "-G_brothers -R18 -V090",
        "label": "sGamesName_TheOath",
        "display": "THE OATH (FINAL FANTASY VIII)",
        "roles": {
            "ROLE_PIANO": "piano",
            "ROLE_VIOLIN": "violin",
            "ROLE_STRINGS": "strings",
        },
    },
    {
        "const": "MUS_REQUIEM_OF_SPIRIT",
        "stem": "mus_requiem_of_spirit",
        "asset": "assets/mus_requiem_of_spirit.mid",
        "sha": "dc05153abeed26362019d04d31696c643b32deda92fe83668350eb908063ca1e",
        "cfg": "-G_brothers -R18 -V090",
        "label": "sGamesName_RequiemOfSpirit",
        "display": "REQUIEM OF SPIRIT (ZELDA: OCARINA OF TIME)",
        "roles": {
            "ROLE_PIANO": "piano",
            "ROLE_VIOLIN": "violin",
            "ROLE_STRINGS": "strings",
        },
    },
    {
        "const": "MUS_THE_GREAT_SEA",
        "stem": "mus_the_great_sea",
        "asset": "assets/mus_the_great_sea.mid",
        "sha": "5ce8719d8534912ea76bf878695dc9b0c89dd8fb74735c018ff6f1ccc25c2549",
        "cfg": "-G_brothers -R18 -V090",
        "label": "sGamesName_TheGreatSea",
        "display": "THE GREAT SEA (ZELDA: THE WIND WAKER)",
        "roles": {
            "ROLE_PIANO": "piano",
            "ROLE_VIOLIN": "violin",
            "ROLE_STRINGS": "strings",
            "ROLE_DRUMS": "drums",
        },
    },
    {
        "const": "MUS_TWILIGHT_PRINCESS_TITLE",
        "stem": "mus_twilight_princess_title",
        "asset": "assets/mus_twilight_princess_title.mid",
        "sha": "398586d320ffa36b5bc4f913232198b3c78e33e3f04ffe8e589b0e0f64a17abd",
        "cfg": "-G_brothers -R20 -V090",
        "label": "sGamesName_TwilightPrincessTitle",
        "display": "TITLE THEME (ZELDA: TWILIGHT PRINCESS)",
        "roles": {
            "ROLE_PIANO": "piano",
            "ROLE_VIOLIN": "violin",
            "ROLE_STRINGS": "strings",
        },
    },
    {
        "const": "MUS_SACRED_GROVE",
        "stem": "mus_sacred_grove",
        "asset": "assets/mus_sacred_grove.mid",
        "sha": "559a647682b6ed8e0c212be8ab6c492de2e6fe6fe0c726fe7bd41dd3e65c88bf",
        "cfg": "-G_brothers -R18 -V090",
        "label": "sGamesName_SacredGrove",
        "display": "SACRED GROVE (ZELDA: TWILIGHT PRINCESS)",
        "roles": {
            "ROLE_PIANO": "piano",
            "ROLE_VIOLIN": "violin",
            "ROLE_STRINGS": "strings",
        },
    },
]

NEW_CONSTS = [s["const"] for s in SONGS]

def die(msg):
    print("\n[ERRO]", msg)
    raise RuntimeError(msg)

def backup(path, root, bdir):
    if not path.exists():
        return
    dst = bdir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def find_group_info(root, name):
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
        for li in range(start + 1, end):
            s = lines[li].strip()
            if s.startswith("voice_") and not s.startswith("voice_group"):
                voices.append((li, s.split("@", 1)[0].rstrip(), s))
        return p, lines, start, end, voices
    return None, None, None, None, None

def prepare_brothers(root):
    bp, blines, bstart, bend, bvoices = find_group_info(root, "brothers")
    rp, rlines, rstart, rend, rvoices = find_group_info(root, "hlw_rock_metal")
    if bp is None:
        die("Nao achei voice_group brothers.")
    if rp is None:
        die("Nao achei voice_group hlw_rock_metal para obter o drumset seguro.")

    def find_slot(kind, voices):
        for i, (_, clean, original) in enumerate(voices):
            s = original.lower()
            if kind == "piano" and "piano" in s and "bass" not in s and "drum" not in s:
                return i
            if kind == "violin" and any(k in s for k in ("violin", "fiddle", "solo_string")):
                return i
            if kind == "strings" and "string" in s and not any(k in s for k in ("violin", "fiddle", "solo_string")):
                return i
            if kind == "drums" and "drumset" in s:
                return i
        return None

    piano = find_slot("piano", bvoices)
    violin = find_slot("violin", bvoices)
    strings = find_slot("strings", bvoices)
    drums = find_slot("drums", bvoices)

    # Proven Brothers layout fallbacks used by earlier successful remasters.
    if piano is None:
        piano = 0
    if violin is None:
        violin = 1
    if strings is None:
        strings = 2

    if max(piano, violin, strings) >= len(bvoices):
        die("brothers nao possui os slots piano/violin/strings esperados.")

    drum_line = None
    if drums is None:
        for _, clean, original in rvoices:
            if "hlw_rock_metal_drumset" in original.lower() or "drumset" in original.lower():
                drum_line = clean
                break
        if drum_line is None:
            die("Nao achei drumset seguro em hlw_rock_metal.")
        drums = len(bvoices)
    else:
        drum_line = None

    print("\nBROTHERS:")
    print(f"  PIANO   -> {piano:03d}: {bvoices[piano][2]}")
    print(f"  VIOLIN  -> {violin:03d}: {bvoices[violin][2]}")
    print(f"  STRINGS -> {strings:03d}: {bvoices[strings][2]}")
    if drum_line is None:
        print(f"  DRUMS   -> {drums:03d}: {bvoices[drums][2]}")
    else:
        print(f"  DRUMS   -> {drums:03d}: sera adicionado: {drum_line}")

    return {
        "brothers_path": bp,
        "rock_path": rp,
        "piano": piano,
        "violin": violin,
        "strings": strings,
        "drums": drums,
        "drum_line_to_append": drum_line,
    }

def append_brothers_drums_if_needed(root, info):
    line = info["drum_line_to_append"]
    if line is None:
        return
    p, lines, start, end, voices = find_group_info(root, "brothers")
    if p != info["brothers_path"]:
        die("brothers mudou durante instalacao.")
    lines.insert(end, "    " + line + " @ HLW GAMES ORCHESTRAL DRUMSET")
    p.write_text("\n".join(lines) + "\n")

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

def patch_programs(data, roles, slots):
    data = bytearray(data)
    if data[:4] != b"MThd":
        die("MIDI invalido.")
    pos = 8 + int.from_bytes(data[4:8], "big")
    seen = set()
    while pos + 8 <= len(data):
        if data[pos:pos+4] != b"MTrk":
            die("MTrk esperado.")
        ln = int.from_bytes(data[pos+4:pos+8], "big")
        start = pos + 8
        end = start + ln
        name, offs = track_program_offsets(data[start:end], start)
        upper = name.upper()
        for tag, role in roles.items():
            if tag in upper:
                for off in offs:
                    data[off] = slots[role]
                seen.add(tag)
                break
        pos = end
    missing = set(roles) - seen
    if missing:
        die("Tracks nao patchadas: " + ", ".join(sorted(missing)))
    return bytes(data)

def set_cfg(text, stem, cfg):
    line = f"{stem}.mid: {cfg}"
    m = re.search(r'^' + re.escape(stem) + r'\.mid:.*$', text, re.M)
    if m:
        return text[:m.start()] + line + text[m.end():]
    if text and not text.endswith("\n"):
        text += "\n"
    return text + line + "\n"

def add_constant(text, const):
    m = re.search(r'^#define\s+' + re.escape(const) + r'\s+(\d+)\b', text, re.M)
    if m:
        print("ID existente:", const, m.group(1))
        return text
    values = [int(x) for x in re.findall(r'^#define\s+MUS_[A-Z0-9_]+\s+(\d+)\b', text, re.M)]
    if not values:
        die("Nao consegui ler IDs MUS_*.")
    new_id = max(values) + 1
    marker = re.search(r'^#define\s+END_MUS\s+\S+.*$', text, re.M)
    if not marker:
        die("Nao achei END_MUS.")
    text = text[:marker.start()] + f"#define {const:<52} {new_id}\n" + text[marker.start():]
    print("Novo ID:", const, new_id)
    return text

def fix_end_mus(text):
    pairs = [(n, int(v)) for n, v in re.findall(r'^#define\s+(MUS_[A-Z0-9_]+)\s+(\d+)\b', text, re.M)]
    if not pairs:
        die("Nao consegui recalcular END_MUS.")
    name, value = max(pairs, key=lambda x: x[1])
    return re.sub(r'^#define\s+END_MUS\s+\S+.*$', f"#define END_MUS {name}", text, count=1, flags=re.M)

def add_song_table(text, stem):
    if re.search(r'^\s*song\s+' + re.escape(stem) + r'\s*,', text, re.M):
        return text
    marker = re.search(r'\n\s*\.align\s+2\s*\n\s*dummy_song_header:', text)
    if not marker:
        die("Nao achei dummy_song_header.")
    return text[:marker.start()] + f"\n\tsong {stem}, 0, 0\n" + text[marker.start():]

def add_bgm_list(text, consts):
    start = text.find("#define RADIO_SOUND_LIST_BGM")
    end = text.find("#define X(songId)", start)
    if start < 0 or end < 0:
        die("Nao achei RADIO_SOUND_LIST_BGM.")
    block = text[start:end]
    for const in consts:
        if f"X({const})" in block:
            continue
        anchor = "    X(MUS_MIDNAS_LAMENT)"
        pos = block.find(anchor)
        if pos < 0:
            die("Nao achei MUS_MIDNAS_LAMENT no RADIO_SOUND_LIST_BGM.")
        block = block[:pos] + f"    X({const}) \\\n" + block[pos:]
    return text[:start] + block + text[end:]

def add_all_tracks(text, consts):
    pat = r'(static const u16\s+sStation_All\[\]\s*=\s*\{)(.*?)(\n\};)'
    m = re.search(pat, text, re.S)
    if not m:
        die("Nao achei sStation_All.")
    body = m.group(2)
    for const in consts:
        if const in body:
            continue
        anchor = "    MUS_MIDNAS_LAMENT,"
        pos = body.find(anchor)
        if pos < 0:
            die("Nao achei MUS_MIDNAS_LAMENT em ALL.")
        body = body[:pos] + f"    {const},\n" + body[pos:]
    return text[:m.start(2)] + body + text[m.end(2):]

GAMES_GROUPS = [
    ("RAGNAROK", [
        "MUS_THEME_RAGNAROK","MUS_ANCIENT_GROOVER","MUS_DIVINE_GRACE",
        "MUS_THEME_OF_MORROC","MUS_EVERLASTING_WANDERERS",
        "MUS_THEME_OF_GEFFEN","MUS_THEME_OF_ALBERTA","MUS_THEME_OF_PRONTERA",
    ]),
    ("CHRONO CROSS", ["MUS_SCARS_OF_TIME"]),
    ("FINAL FANTASY VIII", ["MUS_THE_OATH"]),
    ("THE LEGEND OF ZELDA: OCARINA OF TIME", ["MUS_REQUIEM_OF_SPIRIT"]),
    ("THE LEGEND OF ZELDA: THE WIND WAKER", ["MUS_THE_GREAT_SEA"]),
    ("THE LEGEND OF ZELDA: TWILIGHT PRINCESS", [
        "MUS_TWILIGHT_PRINCESS_TITLE","MUS_MIDNAS_LAMENT","MUS_SACRED_GROVE"
    ]),
    ("POKEMON SNAP", ["MUS_THE_YOUNG_PHOTOGRAPHER"]),
    ("GRAND CHASE", ["MUS_HOPE_GRAND_CHASE"]),
    ("UMINEKO", [
        "MUS_UMINEKO_HOPE","MUS_UMINEKO_600_MILLION","MUS_UMINEKO_WINGLESS",
        "MUS_UMINEKO_WORLDEND","MUS_UMINEKO_FAR","MUS_UMINEKO_WORLDEND_DOMINATOR",
    ]),
    ("TOUHOU 5", [
        "MUS_TOUHOU5_TITLE","MUS_TOUHOU5_STAGE1_BOSS","MUS_TOUHOU5_STAGE2",
        "MUS_TOUHOU5_STAGE3_BOSS","MUS_TOUHOU5_STAGE5_BOSS",
    ]),
    ("TOUHOU 6", ["MUS_TOUHOU6_STAGE2_BOSS"]),
    ("TOUHOU 7", ["MUS_TOUHOU7_STAGE6_BOSS"]),
    ("TOUHOU 8", ["MUS_TOUHOU8_STAGE1_BOSS"]),
    ("TOUHOU 10", ["MUS_TOUHOU10_STAGE2","MUS_TOUHOU10_STAGE5_BOSS"]),
    ("POKEMON MYSTERY DUNGEON", [
        "MUS_TIME_GEAR","MUS_DONT_EVER_FORGET","MUS_TEMPORAL_TOWER",
        "MUS_TEMPORAL_SPIRE","MUS_THROUGH_THE_SEA_OF_TIME",
    ]),
    ("SUPERNOVA", ["MUS_INTRO_SUPERNOVA"]),
]

def organize_games(text):
    pat = r'(static const u16\s+sStation_Games\[\]\s*=\s*\{)(.*?)(\n\};)'
    m = re.search(pat, text, re.S)
    if not m:
        die("Nao achei sStation_Games.")
    old = m.group(2)
    existing = re.findall(r'\bMUS_[A-Z0-9_]+\b', old)
    existing_set = set(existing) | set(NEW_CONSTS)
    used = set()
    lines = []
    for label, members in GAMES_GROUPS:
        present = [x for x in members if x in existing_set]
        if not present:
            continue
        lines.append(f"    // {label}")
        for x in present:
            lines.append(f"    {x},")
            used.add(x)
        lines.append("")
    unknown = [x for x in existing if x not in used and x != "MUS_TETRIS_MAIN_THEME"]
    if unknown:
        lines.append("    // OTHER GAMES")
        for x in unknown:
            lines.append(f"    {x},")
        lines.append("")
    if "MUS_TETRIS_MAIN_THEME" in existing_set:
        lines.append("    // TETRIS - LAST")
        lines.append("    MUS_TETRIS_MAIN_THEME,")
        lines.append("")
    lines.append("    STATION_END")
    body = "\n" + "\n".join(lines)
    return text[:m.start(2)] + body + text[m.end(2):]

def add_game_names_and_cases(text):
    fn = "static const u8 *Radio_GetGamesDisplayName(u16 songId)"
    fpos = text.find(fn)
    if fpos < 0:
        die("Nao achei Radio_GetGamesDisplayName.")

    defs = []
    for s in SONGS:
        if s["label"] not in text:
            defs.append(f'static const u8 {s["label"]}[] = _("{s["display"]}");\n')

    if defs:
        anchor = 'static const u8 sGamesName_MidnasLament[]'
        apos = text.find(anchor)
        if apos < 0:
            apos = fpos
        text = text[:apos] + "".join(defs) + text[apos:]

    # Correct the existing Midna label while we are grouping Twilight Princess.
    text = text.replace(
        'static const u8 sGamesName_MidnasLament[] = _("MIDNAS LAMENT (ZELDA)");',
        'static const u8 sGamesName_MidnasLament[] = _("MIDNA\'S LAMENT (ZELDA: TWILIGHT PRINCESS)");'
    )

    fpos = text.find(fn)
    default = text.find("default:", fpos)
    if default < 0:
        die("Nao achei default do Games switch.")
    chunk = text[fpos:default]
    insert = ""
    for s in SONGS:
        if f"case {s['const']}:" not in chunk:
            insert += f"    case {s['const']}:\n        return {s['label']};\n"
    if insert:
        anchor = text.find("    case MUS_MIDNAS_LAMENT:", fpos, default)
        if anchor < 0:
            die("Nao achei case MUS_MIDNAS_LAMENT.")
        text = text[:anchor] + insert + text[anchor:]
    return text

def verify_symbol(path, stem):
    if not path.exists():
        die(f"Nao foi criado: {path}")
    txt = path.read_text(errors="ignore")
    if not re.search(r'^\s*\.global\s+' + re.escape(stem) + r'\s*$', txt, re.M):
        die(f"{path.name} nao exporta .global {stem}.")
    if not re.search(r'^' + re.escape(stem) + r':\s*$', txt, re.M):
        die(f"{path.name} nao possui label {stem}:.")

def main():
    root = Path.cwd()
    here = Path(__file__).resolve().parent

    songs_h = root / "include/constants/songs.h"
    table = root / "sound/song_table.inc"
    radio = root / "src/radio.c"
    cfg = root / "sound/songs/midi/midi.cfg"

    for p in (songs_h, table, radio, cfg):
        if not p.exists():
            die(f"Nao achei {p}. Rode da raiz do pokeemerald-expansion.")

    pack = here / PACK_ZIP
    if not pack.exists():
        die(f"Nao achei {PACK_ZIP} ao lado do Python em PHYTON/.")

    info = prepare_brothers(root)

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"games_ff8_zelda_orchestral_v1_{stamp}"

    touched = [songs_h, table, radio, cfg, info["brothers_path"], info["rock_path"]]
    for s in SONGS:
        touched += [
            root / f"sound/songs/midi/{s['stem']}.mid",
            root / f"sound/songs/midi/{s['stem']}.s",
        ]
    touched = list(dict.fromkeys(touched))
    for p in touched:
        backup(p, root, bdir)
    originals = {p: (p.read_bytes() if p.exists() else None) for p in touched}

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
        append_brothers_drums_if_needed(root, info)

        slots = {
            "piano": info["piano"],
            "violin": info["violin"],
            "strings": info["strings"],
            "drums": info["drums"],
        }

        assets = {}
        with zipfile.ZipFile(pack, "r") as z:
            for s in SONGS:
                data = z.read(s["asset"])
                if hashlib.sha256(data).hexdigest() != s["sha"]:
                    die(f"SHA invalido: {s['stem']}")
                assets[s["stem"]] = patch_programs(data, s["roles"], slots)

        # MIDI + cfg first.
        cfg_text = cfg.read_text()
        for s in SONGS:
            target = root / f"sound/songs/midi/{s['stem']}.mid"
            target.write_bytes(assets[s["stem"]])
            os.utime(target, None)
            cfg_text = set_cfg(cfg_text, s["stem"], s["cfg"])
        cfg.write_text(cfg_text)

        # Convert and verify BEFORE touching registration.
        mid2agb = root / "tools/mid2agb/mid2agb"
        if not mid2agb.exists():
            die("Nao achei tools/mid2agb/mid2agb.")

        print("\nGerando/verificando os 5 .s diretamente...")
        for s in SONGS:
            midp = root / f"sound/songs/midi/{s['stem']}.mid"
            sp = root / f"sound/songs/midi/{s['stem']}.s"
            subprocess.run([str(mid2agb), str(midp), str(sp)] + s["cfg"].split(), cwd=root, check=True)
            verify_symbol(sp, s["stem"])
            print(f"  OK: {s['stem']}.s")

        # Register only after all five assets are valid.
        sh = songs_h.read_text()
        tb = table.read_text()
        rt = radio.read_text()

        for s in SONGS:
            sh = add_constant(sh, s["const"])
            tb = add_song_table(tb, s["stem"])
        sh = fix_end_mus(sh)

        rt = add_bgm_list(rt, NEW_CONSTS)
        rt = add_all_tracks(rt, NEW_CONSTS)
        rt = organize_games(rt)
        rt = add_game_names_and_cases(rt)

        songs_h.write_text(sh)
        table.write_text(tb)
        radio.write_text(rt)

        # Verify requested grouping.
        gm = re.search(r'static const u16\s+sStation_Games\[\]\s*=\s*\{(.*?)\n\};', rt, re.S)
        if not gm:
            die("Nao consegui verificar GAMES.")
        body = gm.group(1)
        expected = [
            "MUS_THE_OATH",
            "MUS_REQUIEM_OF_SPIRIT",
            "MUS_THE_GREAT_SEA",
            "MUS_TWILIGHT_PRINCESS_TITLE",
            "MUS_MIDNAS_LAMENT",
            "MUS_SACRED_GROVE",
        ]
        positions = [body.find(x) for x in expected]
        if any(x < 0 for x in positions) or positions != sorted(positions):
            die("Ordem FF8/Zelda em GAMES ficou inesperada.")

        stale = [
            root / "build/modern/data/sound_data.o",
            root / "build/modern/data/sound_data.d",
            root / "build/modern/src/radio.o",
            root / "build/modern/src/radio.d",
        ]
        for s in SONGS:
            stale += [
                root / f"build/modern/sound/songs/midi/{s['stem']}.o",
                root / f"build/modern/sound/songs/midi/{s['stem']}.d",
            ]
        for p in stale:
            if p.exists():
                print("rm", p.relative_to(root))
                p.unlink()

        print("\n============================================================")
        print("FFVIII + ZELDA GAMES PACK V1 INSTALADO")
        print("============================================================")
        print("GAMES:")
        print("  FINAL FANTASY VIII -> THE OATH")
        print("  ZELDA: OCARINA OF TIME -> REQUIEM OF SPIRIT")
        print("  ZELDA: THE WIND WAKER -> THE GREAT SEA")
        print("  ZELDA: TWILIGHT PRINCESS -> TITLE THEME / MIDNA'S LAMENT / SACRED GROVE")
        print("")
        print("Todos os novos ports usam brothers (piano/violin/strings).")
        print("The Great Sea usa tambem o drumset seguro 36/40/42.")
        print("Os 5 .s foram gerados e verificados antes do cadastro.")
        print("Nao chama make e nao usa make -B.")
        print("Backup:", bdir)
        print("\nAgora rode SOMENTE:")
        print("  make -j8")

    except subprocess.CalledProcessError as e:
        rollback()
        print("\n[ERRO] mid2agb falhou:", e)
        raise SystemExit(1)
    except Exception:
        rollback()
        raise

if __name__ == "__main__":
    try:
        main()
    except RuntimeError:
        raise SystemExit(1)
