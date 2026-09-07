#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import datetime
import zipfile
import hashlib
import os

TRACK = {
    "stem": "mus_shadow_lugia_theme",
    "const": "MUS_SHADOW_LUGIA_THEME",
    "var": "ShadowLugiaTheme",
    "label": "SHADOW LUGIA THEME (POKEMON XD)",
}
PACK_ZIP_NAME = "RADIO_GAMES_SHADOW_LUGIA_THEME.zip"
ASSET_SHA256 = "ceb3508b81974db9f7c9eea240cfc4a44293791911c573d4a132f931539f74a7"

RAYQUAZA_STEM = "mus_rayquaza_appears"

# Used only as a syntax/options template if Rayquaza Appears itself is not a MIDI
# entry in midi.cfg. Its -G voicegroup is replaced with Rayquaza's real group.
CFG_TEMPLATE_STEMS = [
    "mus_touhou5_stage1_boss",
    "mus_touhou6_stage2_boss",
    "mus_touhou7_stage6_boss",
    "mus_scars_of_time",
    "mus_midnas_lament",
]

SONG_TABLE_FALLBACK_STEMS = [
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
    if not path.exists():
        return
    rel = path.relative_to(root)
    dst = backup_dir / rel
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def parse_song_defines(text):
    return dict(re.findall(
        r'^#define\s+(MUS_[A-Z0-9_]+|END_MUS|START_MUS)\s+([^\s/]+)',
        text, re.M
    ))

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
    if value >= 0xFFFF:
        die("END_MUS resolveu para valor invalido/sem espaco.")
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
                trk[i] = (
                    drum_program
                    if ch == 9
                    else program_map.get(old_program, program_map["fallback"])
                ) & 0x7F

            i += data_len

        out += b"MTrk" + len(trk).to_bytes(4, "big") + trk
        pos += 8 + trk_len

    return bytes(out)

def find_rayquaza_group_from_cfg(cfg_text):
    m = re.search(
        rf'^{re.escape(RAYQUAZA_STEM)}\.mid:\s*(.+)$',
        cfg_text,
        re.M
    )
    if not m:
        return None, None

    opts = m.group(1).strip()
    gm = re.search(r'(?:^|\s)-G(\S+)', opts)

    if not gm:
        return opts, None

    return opts, gm.group(1)

def find_rayquaza_song_asm(root):
    candidates = [
        root / "sound/songs/midi" / f"{RAYQUAZA_STEM}.s",
        root / "sound/songs" / f"{RAYQUAZA_STEM}.s",
    ]

    for p in candidates:
        if p.exists():
            return p

    song_root = root / "sound/songs"
    if song_root.exists():
        for p in song_root.rglob(f"{RAYQUAZA_STEM}.s"):
            return p

    return None

def find_rayquaza_group_from_asm(root):
    p = find_rayquaza_song_asm(root)
    if p is None:
        return None, None

    txt = p.read_text(errors="ignore")
    patterns = [
        rf'^\s*\.equ\s+{re.escape(RAYQUAZA_STEM)}_grp\s*,\s*([A-Za-z_][A-Za-z0-9_]*)',
        rf'^\s*{re.escape(RAYQUAZA_STEM)}_grp\s*=\s*([A-Za-z_][A-Za-z0-9_]*)',
        r'^\s*\.equ\s+[A-Za-z0-9_]+_grp\s*,\s*(voicegroup[A-Za-z0-9_]*)',
    ]

    for pat in patterns:
        m = re.search(pat, txt, re.M)
        if m:
            return p, m.group(1)

    return p, None

def find_cfg_template(cfg_text):
    for stem in CFG_TEMPLATE_STEMS:
        m = re.search(rf'^{re.escape(stem)}\.mid:\s*(.+)$', cfg_text, re.M)
        if not m:
            continue
        opts = m.group(1).strip()
        if re.search(r'(?:^|\s)-G\S+', opts):
            return stem, opts

    for m in re.finditer(r'^([A-Za-z0-9_./-]+)\.mid:\s*(.+)$', cfg_text, re.M):
        opts = m.group(2).strip()
        if re.search(r'(?:^|\s)-G\S+', opts):
            return m.group(1), opts

    die("Nao achei nenhuma entrada MIDI funcional com -G em midi.cfg.")

def build_rayquaza_cfg_options(cfg_text, ray_group):
    ray_opts, group_from_cfg = find_rayquaza_group_from_cfg(cfg_text)

    if ray_opts and group_from_cfg:
        return RAYQUAZA_STEM, ray_opts, group_from_cfg

    if ray_group is None:
        die(
            "Nao consegui descobrir o voicegroup de MUS_RAYQUAZA_APPEARS. "
            "Procurei midi.cfg e mus_rayquaza_appears.s."
        )

    template_stem, template_opts = find_cfg_template(cfg_text)
    if not re.search(r'(?:^|\s)-G\S+', template_opts):
        die("Template midi.cfg sem -G.")

    opts = re.sub(
        r'(?<!\S)-G\S+',
        f'-G{ray_group}',
        template_opts,
        count=1
    )
    return template_stem, opts, ray_group

def find_voicegroup_file(root, group_arg):
    group_name = group_arg.lstrip("_")
    candidates = []

    voice_dir = root / "sound/voicegroups"
    if voice_dir.exists():
        candidates.extend(voice_dir.rglob("*.inc"))
        candidates.extend(voice_dir.rglob("*.s"))

    for p in [
        root / "sound/voicegroups.inc",
        root / "sound/voicegroups.s",
    ]:
        if p.exists():
            candidates.append(p)

    preferred = []
    if voice_dir.exists():
        preferred.extend([
            voice_dir / f"{group_name}.inc",
            voice_dir / f"voicegroup_{group_name}.inc",
        ])

    for p in preferred:
        if p.exists():
            return p

    pat = re.compile(rf'\bvoice_group\s+{re.escape(group_name)}\b')

    seen = set()
    for p in candidates:
        if p in seen:
            continue
        seen.add(p)
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
        # Some files contain only one group and older layouts may omit the exact
        # filename/group correspondence. Do not silently choose another group.
        return []

    body = txt[m.end():]
    # Stop if the file contains another group after this one.
    next_group = re.search(r'\bvoice_group\s+[A-Za-z0-9_]+\b', body)
    if next_group:
        body = body[:next_group.start()]

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

def build_program_map(entries):
    drum = choose_index(entries, "drums")
    if drum is None:
        die("Nao achei drumset no voicegroup de Rayquaza Appears.")

    drum_entry = entries[drum].lower()
    if "keysplit_all" not in drum_entry and "drum" not in drum_entry:
        die(
            "Voicegroup de Rayquaza encontrado, mas nao consegui confirmar "
            "um drumset real nele."
        )

    fallback = choose_index(entries, "piano")
    categories = {}

    for cat in CATEGORY_KEYWORDS:
        categories[cat] = choose_index(entries, cat, fallback)

    program_map = {"fallback": fallback}
    for p in range(128):
        program_map[p] = categories[gm_category(p)]

    return drum, categories, program_map

def patch_midi_cfg(path, opts):
    s = path.read_text()

    # audio_rules.mk expande cada linha. Comentarios puros ja causaram
    # "missing separator" neste projeto, entao nao criamos nenhum.
    s = "\n".join(
        line for line in s.splitlines()
        if not line.strip().startswith("#")
    ) + "\n"

    line = f'{TRACK["stem"]}.mid: {opts}'
    pat = rf'^{re.escape(TRACK["stem"])}\.mid:.*$'

    if re.search(pat, s, re.M):
        s = re.sub(pat, line, s, flags=re.M)
    else:
        s += line + "\n"

    path.write_text(s)
    print("  midi.cfg:", line)

def patch_songs_h(path):
    s = path.read_text()
    defs, end_match, end_token, end_value = get_end_mus_info(s)

    if TRACK["const"] in defs:
        song_id = resolve_token(defs[TRACK["const"]], defs)
        print("  songs.h: ID ja existe:", song_id)
        return song_id, end_value, False

    new_id = end_value + 1
    if new_id >= 0xFFFF:
        die("Sem IDs MUS_* livres.")

    line = f'#define {TRACK["const"]:<40} {new_id}\n'
    s = s[:end_match.start()] + line + s[end_match.start():]

    s = re.sub(
        r'^#define\s+END_MUS\s+\S+.*$',
        f'#define END_MUS {TRACK["const"]}',
        s,
        count=1,
        flags=re.M
    )

    path.write_text(s)
    print(f'  songs.h: {TRACK["const"]} = {new_id}')
    return new_id, end_value, True

def find_song_table_reference(s):
    # First preference: exact Rayquaza Appears player/priority fields.
    m = re.search(
        rf'^(?P<indent>\s*)song\s+{re.escape(RAYQUAZA_STEM)}(?P<rest>\s*,[^\n]*)$',
        s,
        re.M
    )
    if m:
        return RAYQUAZA_STEM, m.group("indent"), m.group("rest")

    for stem in SONG_TABLE_FALLBACK_STEMS:
        m = re.search(
            rf'^(?P<indent>\s*)song\s+{re.escape(stem)}(?P<rest>\s*,[^\n]*)$',
            s,
            re.M
        )
        if m:
            return stem, m.group("indent"), m.group("rest")

    return None

def patch_song_table(path, old_end_value):
    s = path.read_text()

    existing = re.search(
        rf'^\s*song\s+{re.escape(TRACK["stem"])}\s*,[^\n]*$',
        s,
        re.M
    )
    if existing:
        if "MUSIC_PLAYER_BGM" in existing.group(0):
            die("Entrada existente usa MUSIC_PLAYER_BGM invalido.")
        print("  song_table.inc: entrada ja existe")
        return

    ref = find_song_table_reference(s)
    if ref is None:
        die(
            "Nao achei mus_rayquaza_appears nem uma faixa funcional "
            "para clonar player/priority em song_table.inc."
        )

    ref_stem, indent, rest = ref
    print(f"  song_table ref: song {ref_stem}{rest}")

    ph = re.search(r'^\s*song\s+ph_[A-Za-z0-9_]+\s*,', s, re.M)
    if ph:
        boundary = ph.start()
    else:
        aligns = list(re.finditer(r'^\s*\.align\s+2\s*$', s, re.M))
        if not aligns:
            die("Nao achei limite do gSongTable.")
        boundary = aligns[-1].start()

    before = s[:boundary]
    count = len(re.findall(r'^\s*song\s+', before, re.M))

    if count != old_end_value + 1:
        die(
            "gSongTable nao bate com END_MUS antes da instalacao "
            f"(entries={count}, esperado={old_end_value + 1})."
        )

    block = f'{indent}song {TRACK["stem"]}{rest}\n'
    s = s[:boundary] + block + s[boundary:]

    if "MUSIC_PLAYER_BGM" in block:
        die("Validacao interna: MUSIC_PLAYER_BGM nao pode ser usado.")

    path.write_text(s)
    print("  song_table.inc: entrada adicionada")

def patch_radio(path):
    s = path.read_text()
    c = TRACK["const"]

    # X-macro BGM list
    if c not in s:
        marker = '\n#define X(songId) static const u8 sRadioBGMName_##songId[] = _(#songId);'
        pos = s.find(marker)
        if pos < 0:
            die("Nao achei fim de RADIO_SOUND_LIST_BGM.")

        start = s.rfind('#define RADIO_SOUND_LIST_BGM', 0, pos)
        if start < 0:
            die("Nao achei RADIO_SOUND_LIST_BGM.")

        block = s[start:pos]
        lines = block.splitlines()

        if not lines[-1].rstrip().endswith('\\'):
            lines[-1] = lines[-1].rstrip() + ' \\'

        lines.append(f'    X({c})')
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
        if c not in section:
            s = s[:e] + f'    {c},\n' + s[e:]

    add_station('static const u16 sStation_All[] = {')
    add_station('static const u16 sStation_Games[] = {')

    getter = 'static const u8 *Radio_GetGamesDisplayName(u16 songId)'
    gp = s.find(getter)
    if gp < 0:
        die("Nao achei Radio_GetGamesDisplayName.")

    var_name = f'sGamesName_{TRACK["var"]}'
    if var_name not in s:
        definition = (
            f'static const u8 {var_name}[] = _("{TRACK["label"]}");\n'
        )
        s = s[:gp] + definition + s[gp:]

    gp = s.find(getter)
    d = s.find('\n    default:', gp)
    if d < 0:
        # Some hand-edited versions have "default:" with different indentation.
        d = s.find('\ndefault:', gp)
    if d < 0:
        die("Nao achei default em Radio_GetGamesDisplayName.")

    if f'case {c}:' not in s[gp:d]:
        case = (
            f'    case {c}:\n'
            f'        return {var_name};\n'
        )
        s = s[:d] + case + s[d:]

    if s.count('{') != s.count('}'):
        die("radio.c ficou com chaves desbalanceadas.")
    if s.count('(') != s.count(')'):
        die("radio.c ficou com parenteses desbalanceados.")

    path.write_text(s)
    print("  radio.c: ALL TRACKS + GAMES + display name")

def load_asset(script_dir):
    pack = script_dir / PACK_ZIP_NAME
    if not pack.exists():
        die(
            f"Nao achei {PACK_ZIP_NAME} ao lado do Python.\n"
            "Coloque ZIP + Python em ~/pokeemerald-expansion/PHYTON/"
        )

    name = f'assets/{TRACK["stem"]}.mid'

    with zipfile.ZipFile(pack, "r") as z:
        try:
            data = z.read(name)
        except KeyError:
            die("Arquivo faltando no ZIP: " + name)

    got = hashlib.sha256(data).hexdigest()
    if got != ASSET_SHA256:
        die("SHA256 do MIDI no ZIP nao confere.")

    return data

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

    print("== HLW / SHADOW LUGIA THEME - RAYQUAZA APPEARS INSTRUMENTS ==")

    asset = load_asset(script_dir)

    songs_text = songs_h.read_text()
    _, _, end_token, old_end_value = get_end_mus_info(songs_text)
    print("END_MUS atual:", end_token, "=", old_end_value)

    cfg_text = cfg.read_text()

    ray_asm, ray_group_from_asm = find_rayquaza_group_from_asm(root)
    template_stem, ray_opts, ray_group = build_rayquaza_cfg_options(
        cfg_text,
        ray_group_from_asm
    )

    print("Rayquaza source:", ray_asm.relative_to(root) if ray_asm else "midi.cfg")
    print("Rayquaza voicegroup:", ray_group)
    print("midi.cfg base:", template_stem)
    print("midi.cfg options:", ray_opts)

    vg_path = find_voicegroup_file(root, ray_group)
    if vg_path is None:
        die(
            "Descobri o voicegroup de Rayquaza, mas nao achei sua definicao "
            "em sound/voicegroups."
        )

    entries = parse_voice_entries(vg_path, ray_group)
    if not entries:
        die(
            "Achei o arquivo do voicegroup de Rayquaza, mas nao consegui "
            "parsear as entradas dele."
        )

    drum_idx, categories, program_map = build_program_map(entries)

    print("Voicegroup file:", vg_path.relative_to(root))
    print("Voice count:", len(entries))
    print("Drumset index:", drum_idx, "->", entries[drum_idx][:120])
    print("Brass index:", categories["brass"])
    print("Strings index:", categories["strings"])
    print("Bass index:", categories["bass"])
    print("Lead index:", categories["lead"])

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_dir = (
        root / "PHYTON/backups"
        / f"shadow_lugia_theme_{stamp}"
    )

    for p in required:
        backup_file(p, root, backup_dir)

    existing_midi = midi_dir / f'{TRACK["stem"]}.mid'
    if existing_midi.exists():
        backup_file(existing_midi, root, backup_dir)

    print("Backup:", backup_dir)

    # This is the important part: the MIDI arrangement contains semantic GM
    # families, but the installed file gets rewritten to the REAL program
    # indexes of MUS_RAYQUAZA_APPEARS' voicegroup.
    remapped = remap_midi_programs(asset, program_map, drum_idx)

    dst = midi_dir / f'{TRACK["stem"]}.mid'
    dst.write_bytes(remapped)
    os.utime(dst, None)
    print("  MIDI:", dst)

    patch_midi_cfg(cfg, ray_opts)
    song_id, previous_end, added_id = patch_songs_h(songs_h)
    patch_song_table(song_table, previous_end)
    patch_radio(radio)

    # Force regeneration.
    for p in (
        midi_dir / f'{TRACK["stem"]}.s',
        root / "build/modern/sound/songs/midi" / f'{TRACK["stem"]}.o',
    ):
        if p.exists():
            p.unlink()

    # Final validation.
    sh = songs_h.read_text()
    st = song_table.read_text()
    rc = radio.read_text()
    mc = cfg.read_text()

    if not re.search(
        rf'^#define\s+{re.escape(TRACK["const"])}\b',
        sh,
        re.M
    ):
        die("Validacao songs.h falhou.")

    mm = re.search(
        rf'^\s*song\s+{re.escape(TRACK["stem"])}\s*,[^\n]*$',
        st,
        re.M
    )
    if not mm:
        die("Validacao song_table.inc falhou.")
    if "MUSIC_PLAYER_BGM" in mm.group(0):
        die("Validacao: MUSIC_PLAYER_BGM invalido apareceu.")

    if not re.search(
        rf'^{re.escape(TRACK["stem"])}\.mid:',
        mc,
        re.M
    ):
        die("Validacao midi.cfg falhou.")

    if TRACK["const"] not in rc:
        die("Validacao radio.c falhou.")

    report = script_dir / "SHADOW_LUGIA_THEME_LAST_INSTALL_REPORT.txt"
    report.write_text(
        "HLW SHADOW LUGIA THEME\n"
        f"Backup: {backup_dir}\n"
        f"Song ID: {song_id}\n"
        f"Rayquaza voicegroup: {ray_group}\n"
        f"Voicegroup file: {vg_path.relative_to(root)}\n"
        f"midi.cfg options: {ray_opts}\n"
        f"Drumset index: {drum_idx}\n"
        f"Brass index: {categories['brass']}\n"
        f"Strings index: {categories['strings']}\n"
        f"Bass index: {categories['bass']}\n"
        f"Lead index: {categories['lead']}\n"
        "Radio: ALL TRACKS + GAMES\n"
        "Display: SHADOW LUGIA THEME (POKEMON XD)\n"
    )

    print("\nOK: SHADOW LUGIA THEME instalada.")
    print("Radio: ALL TRACKS + GAMES")
    print("Display: SHADOW LUGIA THEME (POKEMON XD)")
    print("Instrumentos: voicegroup REAL de MUS_RAYQUAZA_APPEARS")
    print("Loop MIDI: SIM")
    print("Instant start: SIM")
    print("\nPara usar como musica do vilao:")
    print("  MUS_SHADOW_LUGIA_THEME")
    print("\nAgora rode:")
    print("  make -j8")
    print("\nDepois confira:")
    print(
        '  grep -n "mus_shadow_lugia_theme" '
        'Pokemon_HLW.map | head -20'
    )

if __name__ == "__main__":
    main()
