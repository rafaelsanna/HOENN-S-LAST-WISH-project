#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import datetime
import zipfile
import hashlib
import os

TRACKS = [{'stem': 'mus_touhou6_stage2_boss', 'const': 'MUS_TOUHOU6_STAGE2_BOSS', 'var': 'Touhou6Stage2Boss', 'label': 'STAGE 2 BOSS (TOUHOU 6)'}, {'stem': 'mus_touhou7_stage6_boss', 'const': 'MUS_TOUHOU7_STAGE6_BOSS', 'var': 'Touhou7Stage6Boss', 'label': 'STAGE 6 BOSS (TOUHOU 7)'}, {'stem': 'mus_touhou8_stage1_boss', 'const': 'MUS_TOUHOU8_STAGE1_BOSS', 'var': 'Touhou8Stage1Boss', 'label': 'STAGE 1 BOSS (TOUHOU 8)'}, {'stem': 'mus_touhou10_stage2', 'const': 'MUS_TOUHOU10_STAGE2', 'var': 'Touhou10Stage2', 'label': 'STAGE 2 (TOUHOU 10)'}, {'stem': 'mus_touhou10_stage5_boss', 'const': 'MUS_TOUHOU10_STAGE5_BOSS', 'var': 'Touhou10Stage5Boss', 'label': 'STAGE 5 BOSS (TOUHOU 10)'}]
ASSET_HASHES = {'mus_touhou10_stage2.mid': '34953f2bef3c7063b41fc523643beb19b7685592ea84bc0cbfe2cdeb3297d46d', 'mus_touhou10_stage5_boss.mid': '70ef232c0d9d0f1c14c1499a3e56253208e8150b7e4f1f187857b8f519edd147', 'mus_touhou6_stage2_boss.mid': '47b51d26ebeefff55e25a0df2c8e71529aa186e0fe310a000878469b3020a206', 'mus_touhou7_stage6_boss.mid': 'c17454d1fe65382ea6a30e7fe98b252011f54fe7380375ca550539286d944f0e', 'mus_touhou8_stage1_boss.mid': '4002c12ed24309f3d2d7b0b84b1d3c813237522e1e903e79191d1d2644c62698'}
PACK_ZIP_NAME = "RADIO_GAMES_TOUHOU_SECOND5.zip"

# Prefer the first Touhou 5 batch because it is confirmed working in this project.
TEMPLATE_STEMS = [
    "mus_touhou5_stage1_boss",
    "mus_touhou5_stage2",
    "mus_touhou5_stage3_boss",
    "mus_scars_of_time",
    "mus_midnas_lament",
    "mus_tetris_main_theme",
    "mus_ancient_groover",
]

REFERENCE_SONG_TABLE_STEMS = [
    "mus_touhou5_stage1_boss",
    "mus_scars_of_time",
]

CATEGORY_KEYWORDS = {
    "drums":      ("keysplit_all", "drumset", "drum", "percussion"),
    "piano":      ("piano", "epiano", "e_piano", "harpsichord"),
    "chromatic":  ("celesta", "glock", "vibraphone", "marimba", "xylophone", "bell"),
    "organ":      ("organ",),
    "guitar":     ("guitar", "nylon", "steel", "distortion", "overdrive"),
    "bass":       ("bass", "contrabass"),
    "strings":    ("string", "violin", "cello", "pizzicato", "pizz"),
    "ensemble":   ("string", "choir", "voice", "ensemble"),
    "brass":      ("trumpet", "brass", "horn", "trombone", "tuba"),
    "reed":       ("sax", "oboe", "clarinet", "bassoon"),
    "pipe":       ("flute", "recorder", "ocarina", "whistle"),
    "lead":       ("lead", "square", "saw", "synth", "wave"),
    "pad":        ("pad", "choir", "string", "synth"),
    "fx":         ("fx", "synth", "wave", "noise"),
    "ethnic":     ("sitar", "banjo", "shamisen", "koto", "kalimba", "bagpipe"),
    "percussive": ("tinkle", "agogo", "steel", "woodblock", "taiko", "tom"),
    "sfx":        ("noise", "wave", "synth"),
}

def gm_category(program):
    if 0 <= program <= 7: return "piano"
    if 8 <= program <= 15: return "chromatic"
    if 16 <= program <= 23: return "organ"
    if 24 <= program <= 31: return "guitar"
    if 32 <= program <= 39: return "bass"
    if 40 <= program <= 47: return "strings"
    if 48 <= program <= 55: return "ensemble"
    if 56 <= program <= 63: return "brass"
    if 64 <= program <= 71: return "reed"
    if 72 <= program <= 79: return "pipe"
    if 80 <= program <= 87: return "lead"
    if 88 <= program <= 95: return "pad"
    if 96 <= program <= 103: return "fx"
    if 104 <= program <= 111: return "ethnic"
    if 112 <= program <= 119: return "percussive"
    return "sfx"

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def backup_file(path, root, backup_dir):
    rel = path.relative_to(root)
    dst = backup_dir / rel
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def parse_song_defines(text):
    return dict(re.findall(r'^#define\s+(MUS_[A-Z0-9_]+|END_MUS|START_MUS)\s+([^\s/]+)', text, re.M))

def resolve_token(token, defs, seen=None):
    if seen is None:
        seen = set()
    if token in seen:
        return None
    seen.add(token)
    try:
        return int(token, 0)
    except Exception:
        pass
    raw = defs.get(token)
    if raw is None:
        return None
    try:
        return int(raw, 0)
    except Exception:
        return resolve_token(raw, defs, seen)

def get_end_mus_info(songs_text):
    defs = parse_song_defines(songs_text)
    m = re.search(r'^#define\s+END_MUS\s+(\S+)', songs_text, re.M)
    if not m:
        die("Nao achei #define END_MUS em include/constants/songs.h")
    token = m.group(1)
    value = resolve_token(token, defs)
    if value is None:
        die("Nao consegui resolver END_MUS")
    return defs, m, token, value

def read_varlen(data, pos):
    value = 0
    for _ in range(4):
        if pos >= len(data):
            raise ValueError("VLQ truncado")
        b = data[pos]
        pos += 1
        value = (value << 7) | (b & 0x7F)
        if not (b & 0x80):
            return value, pos
    return value, pos

def remap_midi_programs(blob, program_map, drum_program):
    if blob[:4] != b"MThd":
        raise ValueError("MIDI sem MThd")
    header_len = int.from_bytes(blob[4:8], "big")
    pos = 8 + header_len
    out = bytearray(blob[:pos])

    while pos < len(blob):
        if blob[pos:pos+4] != b"MTrk":
            raise ValueError("chunk MIDI inesperado")
        trk_len = int.from_bytes(blob[pos+4:pos+8], "big")
        trk = bytearray(blob[pos+8:pos+8+trk_len])
        if len(trk) != trk_len:
            raise ValueError("MTrk truncado")

        i = 0
        running = None
        while i < len(trk):
            _, i = read_varlen(trk, i)
            if i >= len(trk):
                break

            b = trk[i]
            if b & 0x80:
                status = b
                i += 1
                if status < 0xF0:
                    running = status
                elif status in (0xF0, 0xF7, 0xFF):
                    running = None
            else:
                if running is None:
                    raise ValueError("running status invalido")
                status = running

            if status == 0xFF:
                if i >= len(trk):
                    raise ValueError("meta truncado")
                i += 1
                ln, i = read_varlen(trk, i)
                i += ln
                continue

            if status in (0xF0, 0xF7):
                ln, i = read_varlen(trk, i)
                i += ln
                continue

            if status >= 0xF0:
                i += {0xF1:1, 0xF2:2, 0xF3:1, 0xF6:0}.get(status, 0)
                continue

            kind = status & 0xF0
            ch = status & 0x0F
            data_len = 1 if kind in (0xC0, 0xD0) else 2

            if kind == 0xC0:
                old_program = trk[i]
                trk[i] = (drum_program if ch == 9 else program_map.get(old_program, program_map["fallback"])) & 0x7F

            i += data_len

        out += b"MTrk" + len(trk).to_bytes(4, "big") + trk
        pos += 8 + trk_len

    return bytes(out)

def find_cfg_template(cfg_text):
    found = []
    for stem in TEMPLATE_STEMS:
        m = re.search(rf'^{re.escape(stem)}\.mid:\s*(.+)$', cfg_text, re.M)
        if not m:
            continue
        opts = m.group(1).strip()
        gm = re.search(r'(?:^|\s)-G(\S+)', opts)
        if gm:
            found.append((stem, opts, gm.group(1)))
    if not found:
        die("Nao achei faixa GAMES/Touhou funcional com -G no midi.cfg")
    return found

def find_voicegroup_file(root, group_arg):
    group_name = group_arg.lstrip("_")
    voice_root = root / "sound" / "voicegroups"
    if not voice_root.exists():
        die("Nao achei sound/voicegroups")

    preferred = [
        voice_root / f"{group_name}.inc",
        voice_root / f"voicegroup_{group_name}.inc",
    ]
    for p in preferred:
        if p.exists():
            return p

    pat = re.compile(rf'\bvoice_group\s+{re.escape(group_name)}\b')
    for p in voice_root.rglob("*.inc"):
        try:
            txt = p.read_text(errors="ignore")
        except Exception:
            continue
        if pat.search(txt):
            return p
    return None

def parse_voice_entries(path, group_arg):
    txt = path.read_text(errors="ignore")
    group_name = group_arg.lstrip("_")
    m = re.search(rf'\bvoice_group\s+{re.escape(group_name)}\b', txt)
    if not m:
        m = re.search(r'\bvoice_group\s+[A-Za-z0-9_]+\b', txt)
    if not m:
        return []

    body = txt[m.end():]
    starts = list(re.finditer(r'\bvoice_(?!group\b)[A-Za-z0-9_]+', body))
    entries = []
    for i, sm in enumerate(starts):
        end = starts[i+1].start() if i + 1 < len(starts) else len(body)
        entry = " ".join(body[sm.start():end].strip().split())
        if entry:
            entries.append(entry)
    return entries

def entry_score(entry, category):
    e = entry.lower()
    score = 0
    for rank, kw in enumerate(CATEGORY_KEYWORDS[category]):
        if kw in e:
            score += 110 - rank * 8
    if "voice_directsound" in e:
        score += 12
    if "voice_keysplit " in e:
        score += 15
    if "voice_keysplit_all" in e:
        score += 35 if category == "drums" else -100
    if category != "drums" and ("drum" in e or "keysplit_all" in e):
        score -= 150
    return score

def choose_index(entries, category, fallback_index=None):
    if not entries:
        return None
    ranked = sorted(
        ((entry_score(entry, category), idx) for idx, entry in enumerate(entries)),
        reverse=True
    )
    if ranked and ranked[0][0] > 0:
        return ranked[0][1]
    if fallback_index is not None:
        return fallback_index
    for idx, entry in enumerate(entries):
        low = entry.lower()
        if "keysplit_all" not in low and "drum" not in low:
            return idx
    return 0

def choose_voicegroup(root, cfg_text):
    candidates = []
    for stem, opts, group_arg in find_cfg_template(cfg_text):
        vg = find_voicegroup_file(root, group_arg)
        if vg is None:
            continue
        entries = parse_voice_entries(vg, group_arg)
        if not entries:
            continue

        drum = choose_index(entries, "drums")
        if drum is None:
            continue
        drum_entry = entries[drum].lower()
        if "keysplit_all" not in drum_entry and "drum" not in drum_entry:
            continue

        fallback = choose_index(entries, "piano")
        categories = {}
        coverage = 0
        for cat in CATEGORY_KEYWORDS:
            idx = choose_index(entries, cat, fallback)
            categories[cat] = idx
            coverage += max(0, entry_score(entries[idx], cat))
        candidates.append((coverage, stem, opts, group_arg, vg, entries, categories))

    if not candidates:
        die("Nao achei voicegroup funcional com drumset real.")

    # Keep list order as a preference: the first Touhou5 working cfg wins if valid.
    rank_by_stem = {stem:i for i,stem in enumerate(TEMPLATE_STEMS)}
    candidates.sort(key=lambda x: (rank_by_stem.get(x[1], 999), -x[0]))
    _, stem, opts, group_arg, vg, entries, categories = candidates[0]

    program_map = {"fallback": categories["piano"]}
    for p in range(128):
        program_map[p] = categories[gm_category(p)]

    return stem, opts, group_arg, vg, entries, categories, program_map

def patch_songs_h(path):
    s = path.read_text()
    defs, end_match, end_token, end_value = get_end_mus_info(s)
    present = [t["const"] in defs for t in TRACKS]

    if any(present) and not all(present):
        die("Instalacao parcial detectada em songs.h.")
    if all(present):
        ids = [resolve_token(defs[t["const"]], defs) for t in TRACKS]
        print("  songs.h: IDs ja existem:", ids)
        return ids, end_value

    next_id = end_value + 1
    lines = []
    ids = []
    for t in TRACKS:
        if next_id >= 0xFFFF:
            die("Sem IDs MUS_* livres")
        lines.append(f'#define {t["const"]:<40} {next_id}')
        ids.append(next_id)
        print(f'  ID {next_id} -> {t["const"]}')
        next_id += 1

    s = s[:end_match.start()] + "\n".join(lines) + "\n" + s[end_match.start():]
    s = re.sub(
        r'^#define\s+END_MUS\s+\S+.*$',
        f'#define END_MUS {TRACKS[-1]["const"]}',
        s,
        count=1,
        flags=re.M
    )
    path.write_text(s)
    return ids, end_value

def find_song_table_reference(s):
    for stem in REFERENCE_SONG_TABLE_STEMS:
        m = re.search(rf'^(?P<indent>\s*)song\s+{re.escape(stem)}(?P<rest>\s*,[^\n]*)$', s, re.M)
        if m:
            return stem, m.group("indent"), m.group("rest")
    return None

def patch_song_table(path, old_end_value):
    s = path.read_text()
    stems = [t["stem"] for t in TRACKS]
    present = [re.search(rf'^\s*song\s+{re.escape(stem)}\s*,', s, re.M) is not None for stem in stems]

    if any(present) and not all(present):
        die("Instalacao parcial em sound/song_table.inc")
    if all(present):
        print("  song_table.inc: 5 entradas ja existem")
        return

    ref = find_song_table_reference(s)
    if ref is None:
        die("Nao achei mus_touhou5_stage1_boss nem mus_scars_of_time como referencia no song_table.inc")
    ref_stem, indent, rest = ref
    print(f"  song_table ref: {indent}song {ref_stem}{rest}")

    ph = re.search(r'^\s*song\s+ph_[A-Za-z0-9_]+\s*,', s, re.M)
    if ph:
        boundary = ph.start()
    else:
        aligns = list(re.finditer(r'^\s*\.align\s+2\s*$', s, re.M))
        if not aligns:
            die("Nao achei limite do gSongTable")
        boundary = aligns[-1].start()

    before = s[:boundary]
    count = len(re.findall(r'^\s*song\s+', before, re.M))
    if count != old_end_value + 1:
        die(
            f"gSongTable nao bate com END_MUS antes da instalacao "
            f"(entries={count}, esperado={old_end_value + 1})."
        )

    block = "".join(f'{indent}song {stem}{rest}\n' for stem in stems)
    s = s[:boundary] + block + s[boundary:]
    path.write_text(s)
    print("  song_table.inc: 5 entradas adicionadas clonando player/priority funcional")

def patch_midi_cfg(path, template_opts):
    s = path.read_text()
    # audio_rules.mk expande cada linha; comentario puro pode quebrar o Make.
    s = "\n".join(line for line in s.splitlines() if not line.strip().startswith("#")) + "\n"

    for t in TRACKS:
        line = f'{t["stem"]}.mid: {template_opts}'
        pat = rf'^{re.escape(t["stem"])}\.mid:.*$'
        if re.search(pat, s, re.M):
            s = re.sub(pat, line, s, flags=re.M)
        else:
            s += line + "\n"

    path.write_text(s)
    print("  midi.cfg: 5 entradas adicionadas/atualizadas")

def patch_radio(path):
    s = path.read_text()
    consts = [t["const"] for t in TRACKS]

    present_any = any(c in s for c in consts)
    present_all = all(c in s for c in consts)
    if present_any and not present_all:
        die("radio.c tem instalacao parcial deste lote.")

    if not present_all:
        marker = '\n#define X(songId) static const u8 sRadioBGMName_##songId[] = _(#songId);'
        pos = s.find(marker)
        if pos < 0:
            die("Nao achei fim de RADIO_SOUND_LIST_BGM")
        start = s.rfind('#define RADIO_SOUND_LIST_BGM', 0, pos)
        if start < 0:
            die("Nao achei RADIO_SOUND_LIST_BGM")

        block = s[start:pos]
        lines = block.splitlines()
        if not lines[-1].rstrip().endswith('\\'):
            lines[-1] = lines[-1].rstrip() + ' \\'
        for i, c in enumerate(consts):
            suffix = ' \\' if i < len(consts)-1 else ''
            lines.append(f'    X({c}){suffix}')
        s = s[:start] + '\n'.join(lines) + s[pos:]

    def add_station(decl):
        nonlocal s
        a = s.find(decl)
        if a < 0:
            die("Nao achei " + decl)
        e = s.find('    STATION_END', a)
        if e < 0:
            die("Nao achei STATION_END em " + decl)
        section = s[a:e]
        if consts[0] not in section:
            s = s[:e] + ''.join(f'    {c},\n' for c in consts) + s[e:]

    add_station('static const u16 sStation_All[] = {')
    add_station('static const u16 sStation_Games[] = {')

    getter = 'static const u8 *Radio_GetGamesDisplayName(u16 songId)'
    gp = s.find(getter)
    if gp < 0:
        die("Nao achei Radio_GetGamesDisplayName")

    if 'sGamesName_Touhou6Stage2Boss' not in s:
        defs = ''.join(
            f'static const u8 sGamesName_{t["var"]}[] = _("{t["label"]}");\n'
            for t in TRACKS
        ) + '\n'
        s = s[:gp] + defs + s[gp:]

    gp = s.find(getter)
    d = s.find('\n    default:', gp)
    if d < 0:
        die("Nao achei default em Radio_GetGamesDisplayName")

    if f'case {consts[0]}:' not in s[gp:d]:
        cases = ''.join(
            f'    case {t["const"]}:\n        return sGamesName_{t["var"]};\n'
            for t in TRACKS
        )
        s = s[:d] + '\n' + cases + s[d:]

    if s.count('{') != s.count('}'):
        die("radio.c ficou com chaves desbalanceadas")
    if s.count('(') != s.count(')'):
        die("radio.c ficou com parenteses desbalanceados")

    path.write_text(s)
    print("  radio.c: ALL TRACKS + GAMES + nomes adicionados")

def load_pack_assets(script_dir):
    zip_path = script_dir / PACK_ZIP_NAME
    if not zip_path.exists():
        die(
            f"Nao achei {PACK_ZIP_NAME} ao lado do Python.\n"
            f"Coloque ZIP + Python em ~/pokeemerald-expansion/PHYTON/"
        )

    result = {}
    with zipfile.ZipFile(zip_path, "r") as z:
        for t in TRACKS:
            name = f'assets/{t["stem"]}.mid'
            try:
                data = z.read(name)
            except KeyError:
                die("Arquivo faltando no ZIP: " + name)
            expected = ASSET_HASHES[t["stem"] + ".mid"]
            got = hashlib.sha256(data).hexdigest()
            if got != expected:
                die(f"SHA256 invalido para {name}")
            result[t["stem"]] = data
    return result

def main():
    root = Path.cwd()
    script_dir = Path(__file__).resolve().parent

    songs_h = root / "include/constants/songs.h"
    cfg = root / "sound/songs/midi/midi.cfg"
    song_table = root / "sound/song_table.inc"
    radio = root / "src/radio.c"
    midi_dir = root / "sound/songs/midi"

    required = [songs_h, cfg, song_table, radio]
    if any(not p.exists() for p in required):
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    print("== HLW RADIO GAMES / TOUHOU SECOND 5 ==")
    assets = load_pack_assets(script_dir)

    songs_text = songs_h.read_text()
    _, _, end_token, old_end_value = get_end_mus_info(songs_text)
    print("END_MUS atual:", end_token, "=", old_end_value)

    cfg_text = cfg.read_text()
    template_stem, template_opts, group_arg, vg_path, entries, cat_idx, program_map = choose_voicegroup(root, cfg_text)

    print("Audio base confirmada:", template_stem)
    print("Voicegroup:", vg_path.relative_to(root))
    print("midi.cfg options:", template_opts)
    print("Drumset index:", cat_idx["drums"], "->", entries[cat_idx["drums"]][:110])

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_dir = root / "PHYTON/backups" / f"radio_games_touhou_second5_{stamp}"
    for p in required:
        backup_file(p, root, backup_dir)
    for t in TRACKS:
        p = midi_dir / f'{t["stem"]}.mid'
        if p.exists():
            backup_file(p, root, backup_dir)
    print("Backup:", backup_dir)

    for t in TRACKS:
        remapped = remap_midi_programs(
            assets[t["stem"]],
            program_map,
            cat_idx["drums"]
        )
        dst = midi_dir / f'{t["stem"]}.mid'
        dst.write_bytes(remapped)
        os.utime(dst, None)
        print("  MIDI:", dst.name)

    patch_midi_cfg(cfg, template_opts)
    ids, _ = patch_songs_h(songs_h)
    patch_song_table(song_table, old_end_value)
    patch_radio(radio)

    for t in TRACKS:
        for p in (
            midi_dir / f'{t["stem"]}.s',
            root / "build/modern/sound/songs/midi" / f'{t["stem"]}.o',
        ):
            if p.exists():
                p.unlink()

    sh = songs_h.read_text()
    st = song_table.read_text()
    rc = radio.read_text()
    mc = cfg.read_text()
    for t in TRACKS:
        if not re.search(rf'^#define\s+{re.escape(t["const"])}\b', sh, re.M):
            die("Validacao songs.h: " + t["const"])
        mm = re.search(rf'^\s*song\s+{re.escape(t["stem"])}\s*,[^\n]*$', st, re.M)
        if not mm:
            die("Validacao song_table: " + t["stem"])
        if "MUSIC_PLAYER_BGM" in mm.group(0):
            die("Validacao: MUSIC_PLAYER_BGM invalido apareceu em " + t["stem"])
        if not re.search(rf'^{re.escape(t["stem"])}\.mid:', mc, re.M):
            die("Validacao midi.cfg: " + t["stem"])
        if t["const"] not in rc:
            die("Validacao radio.c: " + t["const"])

    report = script_dir / "TOUHOU_SECOND5_LAST_INSTALL_REPORT.txt"
    report.write_text(
        "HLW RADIO GAMES - TOUHOU SECOND 5\n"
        f"Backup: {backup_dir}\n"
        f"Audio base: {template_stem}\n"
        f"Voicegroup: {vg_path.relative_to(root)}\n"
        f"Options: {template_opts}\n"
        f"IDs: {ids}\n"
        "Instant-start assets: SIM\n"
    )

    print("\nOK: 5 musicas instaladas.")
    print("Radio: ALL TRACKS + GAMES")
    print("Song table: player/priority clonados de faixa funcional")
    print("Audio: programas remapeados + bateria em drumset real")
    print("Instant start: assets ja otimizados")
    print("\nAgora rode:")
    print("  make -j8")
    print("\nDepois confira:")
    print('  grep -n "mus_touhou6\\|mus_touhou7\\|mus_touhou8\\|mus_touhou10" Pokemon_HLW.map | head -60')

if __name__ == "__main__":
    main()
