#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import datetime
import zipfile
import hashlib
import os
from collections import Counter, defaultdict

PACK_ZIP_NAME = "RADIO_POP_13_GBA_OPTIMIZED.zip"

TRACKS = [{'stem': 'mus_bad_guy_billie_eilish', 'const': 'MUS_BAD_GUY_BILLIE_EILISH', 'var': 'BadGuyBillieEilish', 'label': 'BAD GUY (BILLIE EILISH)', 'profile': 'piano_solo', 'volume': 82, 'reverb': 12, 'sha256': 'ecff4fa34e4b00546adb01978e414da06578199d3d4637fa0464e69f458254ed'}, {'stem': 'mus_paparazzi_lady_gaga', 'const': 'MUS_PAPARAZZI_LADY_GAGA', 'var': 'PaparazziLadyGaga', 'label': 'PAPARAZZI (LADY GAGA)', 'profile': 'pop', 'volume': 90, 'reverb': 12, 'sha256': '9830639e2151244dc973f266060c921427050d79bc682f509708605727ae0853'}, {'stem': 'mus_bad_romance_lady_gaga', 'const': 'MUS_BAD_ROMANCE_LADY_GAGA', 'var': 'BadRomanceLadyGaga', 'label': 'BAD ROMANCE (LADY GAGA)', 'profile': 'pop', 'volume': 88, 'reverb': 12, 'sha256': '74c2193e79f24a89833bdb49c43ecc824c396a0eda78ef640caf3034d44835a0'}, {'stem': 'mus_alejandro_lady_gaga', 'const': 'MUS_ALEJANDRO_LADY_GAGA', 'var': 'AlejandroLadyGaga', 'label': 'ALEJANDRO (LADY GAGA)', 'profile': 'pop', 'volume': 86, 'reverb': 12, 'sha256': '3965253ede88b79ecbeee8c54584c38352f56ae4af49d47d207dad172ee78d04'}, {'stem': 'mus_toxic_britney_spears', 'const': 'MUS_TOXIC_BRITNEY_SPEARS', 'var': 'ToxicBritneySpears', 'label': 'TOXIC (BRITNEY SPEARS)', 'profile': 'electro', 'volume': 80, 'reverb': 8, 'sha256': '41c52ea60deb527c76e2ed8a3c06c2efb623d38fb7647a57c21ee93eca3f13b3'}, {'stem': 'mus_gurenge_lisa', 'const': 'MUS_GURENGE_LISA', 'var': 'GurengeLisa', 'label': 'GURENGE (LISA)', 'profile': 'rock', 'volume': 92, 'reverb': 15, 'sha256': '1461eb1df764d74200c7f5fef17a20619a3df1c7e52f884bde2ada889f4d20a6'}, {'stem': 'mus_umbrella_rihanna', 'const': 'MUS_UMBRELLA_RIHANNA', 'var': 'UmbrellaRihanna', 'label': 'UMBRELLA (RIHANNA)', 'profile': 'piano_band', 'volume': 84, 'reverb': 12, 'sha256': 'd115e67ccc5a85524a5e4fb657cb688622c2c04ae021e45af9d319ff8b00d4ba'}, {'stem': 'mus_disturbia_rihanna', 'const': 'MUS_DISTURBIA_RIHANNA', 'var': 'DisturbiaRihanna', 'label': 'DISTURBIA (RIHANNA)', 'profile': 'electro', 'volume': 84, 'reverb': 8, 'sha256': 'ad779a9ce4dd7a852bc22553c6a53a9f6d43038f83d5baa5bdedb22706e7d386'}, {'stem': 'mus_diamonds_rihanna', 'const': 'MUS_DIAMONDS_RIHANNA', 'var': 'DiamondsRihanna', 'label': 'DIAMONDS (RIHANNA)', 'profile': 'piano_solo', 'volume': 84, 'reverb': 12, 'sha256': '4b4831cad1994b4392088e2ad046259c24712e8eb543fd8e78f27172b2ca5bf3'}, {'stem': 'mus_irreplaceable_beyonce', 'const': 'MUS_IRREPLACEABLE_BEYONCE', 'var': 'IrreplaceableBeyonce', 'label': 'IRREPLACEABLE (BEYONCE)', 'profile': 'pop', 'volume': 82, 'reverb': 12, 'sha256': 'fcb842251bd886a835d2e341207ed6981f8fbc4fb14528d0a518bdd26e4c3aaa'}, {'stem': 'mus_broken_hearted_girl_beyonce', 'const': 'MUS_BROKEN_HEARTED_GIRL_BEYONCE', 'var': 'BrokenHeartedGirlBeyonce', 'label': 'BROKEN HEARTED GIRL (BEYONCE)', 'profile': 'piano_band', 'volume': 84, 'reverb': 12, 'sha256': '8fbbc966f727123a8d7130a863ccf605931e6a052f8ae34a1fef99d28df9e168'}, {'stem': 'mus_crazy_in_love_beyonce', 'const': 'MUS_CRAZY_IN_LOVE_BEYONCE', 'var': 'CrazyInLoveBeyonce', 'label': 'CRAZY IN LOVE (BEYONCE)', 'profile': 'pop', 'volume': 78, 'reverb': 8, 'sha256': '7adb2413376999999dc2f8f6f5fa7122ef3f945ca5ca18700f04523279977c2a'}, {'stem': 'mus_halo_beyonce', 'const': 'MUS_HALO_BEYONCE', 'var': 'HaloBeyonce', 'label': 'HALO (BEYONCE)', 'profile': 'piano_band', 'volume': 84, 'reverb': 12, 'sha256': '134a9ed42c976dad4902a428001f3a5437dbe9c9e13a92eb76c34e333f972bcf'}]

# The installer chooses a WORKING reference MIDI already present in the user's
# project for each sonic profile. It clones that exact midi.cfg voicegroup/options
# and remaps the new MIDI programs to program numbers that are already proven valid
# in that reference song.
PROFILE_REFERENCES = {
    "piano_solo": [
        "mus_fly_me_to_the_moon",
        "mus_pink_and_white",
        "mus_i_will",
        "mus_motion_picture_soundtrack",
    ],
    "piano_band": [
        "mus_pink_and_white",
        "mus_where_is_the_love",
        "mus_meet_me_halfway",
        "mus_applause",
    ],
    "pop": [
        "mus_where_is_the_love",
        "mus_meet_me_halfway",
        "mus_get_lucky",
        "mus_applause",
    ],
    "electro": [
        "mus_applause",
        "mus_abracadabra",
        "mus_360",
        "mus_one_more_time",
        "mus_meet_me_halfway",
    ],
    "rock": [
        "mus_3s_and_7s",
        "mus_go_with_the_flow",
        "mus_animal_i_have_become",
    ],
}

SONG_TABLE_REFERENCES = [
    "mus_applause",
    "mus_360",
    "mus_3s_and_7s",
    "mus_touhou5_stage1_boss",
]

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def sha256_bytes(data):
    return hashlib.sha256(data).hexdigest()

def backup_file(path, root, backup_dir):
    if not path.exists():
        return
    dst = backup_dir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def parse_defines(text):
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
    return resolve_token(raw, defs, seen)

def get_end_mus(text):
    defs = parse_defines(text)
    m = re.search(r'^#define\s+END_MUS\s+(\S+)', text, re.M)
    if not m:
        die("Nao achei END_MUS em include/constants/songs.h.")
    token = m.group(1)
    value = resolve_token(token, defs)
    if value is None or value >= 0xFFFF:
        die(f"END_MUS invalido: {token}")
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

def parse_midi_channel_stats(blob):
    if blob[:4] != b"MThd":
        raise ValueError("MIDI sem MThd")

    header_len = int.from_bytes(blob[4:8], "big")
    pos = 8 + header_len

    current_program = [0] * 16
    program_counts = [Counter() for _ in range(16)]
    pitch_sum = [0] * 16
    note_count = [0] * 16
    has_notes = [False] * 16

    while pos < len(blob):
        if blob[pos:pos+4] != b"MTrk":
            raise ValueError("chunk MIDI inesperado")
        trk_len = int.from_bytes(blob[pos+4:pos+8], "big")
        trk = blob[pos+8:pos+8+trk_len]
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
                current_program[ch] = trk[i]
            elif kind == 0x90:
                note = trk[i]
                vel = trk[i+1]
                if vel > 0:
                    has_notes[ch] = True
                    note_count[ch] += 1
                    pitch_sum[ch] += note
                    program_counts[ch][current_program[ch]] += 1

            i += data_len

        pos += 8 + trk_len

    channels = []
    for ch in range(16):
        if not has_notes[ch]:
            continue
        dominant = program_counts[ch].most_common(1)[0][0] if program_counts[ch] else 0
        avg_pitch = pitch_sum[ch] / max(1, note_count[ch])
        channels.append({
            "channel": ch,
            "program": dominant,
            "notes": note_count[ch],
            "avg_pitch": avg_pitch,
        })
    return channels

def target_uses_drums(blob):
    return any(x["channel"] == 9 for x in parse_midi_channel_stats(blob))

def build_reference_roles(ref_blob, require_drums):
    chans = parse_midi_channel_stats(ref_blob)
    melodic = [x for x in chans if x["channel"] != 9]
    drums = [x for x in chans if x["channel"] == 9]

    if not melodic:
        raise ValueError("referencia sem canais melodicos")
    if require_drums and not drums:
        raise ValueError("referencia sem canal de bateria")

    by_pitch = sorted(melodic, key=lambda x: x["avg_pitch"])
    by_notes = sorted(melodic, key=lambda x: x["notes"], reverse=True)

    bass = by_pitch[0]
    lead = by_pitch[-1]
    piano = next((x for x in by_notes if x["avg_pitch"] >= 45), by_notes[0])
    guitar = next((x for x in by_notes if x is not bass), piano)

    # With custom HLW voicegroups, the reference's program numbers are the
    # valid program indices. We stay entirely inside that proven set.
    roles = {
        "piano": piano["program"],
        "guitar": guitar["program"],
        "bass": bass["program"],
        "strings": lead["program"],
        "brass": lead["program"],
        "lead": lead["program"],
        "synth": guitar["program"],
        "drums": drums[0]["program"] if drums else piano["program"],
    }

    return roles, chans

def gm_role(program):
    if 0 <= program <= 7:
        return "piano"
    if 8 <= program <= 15:
        return "piano"
    if 16 <= program <= 23:
        return "synth"
    if 24 <= program <= 31:
        return "guitar"
    if 32 <= program <= 39:
        return "bass"
    if 40 <= program <= 55:
        return "strings"
    if 56 <= program <= 63:
        return "brass"
    if 64 <= program <= 79:
        return "lead"
    if 80 <= program <= 111:
        return "synth"
    return "synth"

def remap_midi_programs(blob, roles):
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
                old = trk[i]
                if ch == 9:
                    trk[i] = roles["drums"] & 0x7F
                else:
                    trk[i] = roles[gm_role(old)] & 0x7F

            i += data_len

        out += b"MTrk" + len(trk).to_bytes(4, "big") + trk
        pos += 8 + trk_len

    return bytes(out)

def find_reference(root, cfg_text, profile, target_blob):
    require_drums = target_uses_drums(target_blob)

    for stem in PROFILE_REFERENCES[profile]:
        m = re.search(rf'^{re.escape(stem)}\.mid:\s*(.+)$', cfg_text, re.M)
        midi = root / "sound/songs/midi" / f"{stem}.mid"
        if not m or not midi.exists():
            continue

        opts = m.group(1).strip()
        if not re.search(r'(?<!\S)-G\S+', opts):
            continue

        try:
            roles, chans = build_reference_roles(midi.read_bytes(), require_drums)
        except Exception:
            continue

        return stem, opts, roles, chans

    die(
        f"Nao achei referencia funcional para profile={profile}. "
        f"Procurei: {', '.join(PROFILE_REFERENCES[profile])}"
    )

def tune_options(opts, volume, reverb):
    if re.search(r'(?<!\S)-V\d+', opts):
        opts = re.sub(r'(?<!\S)-V\d+', f'-V{volume:03d}', opts)
    else:
        opts += f' -V{volume:03d}'

    if re.search(r'(?<!\S)-R\d+', opts):
        opts = re.sub(r'(?<!\S)-R\d+', f'-R{reverb}', opts)
    else:
        opts += f' -R{reverb}'

    return opts.strip()

def load_assets(script_dir):
    pack = script_dir / PACK_ZIP_NAME
    if not pack.exists():
        die(
            f"Nao achei {PACK_ZIP_NAME} ao lado deste Python.\n"
            "Coloque ZIP + Python em ~/pokeemerald-expansion/PHYTON/"
        )

    result = {}
    with zipfile.ZipFile(pack, "r") as z:
        for t in TRACKS:
            name = f'assets/{t["stem"]}.mid'
            try:
                data = z.read(name)
            except KeyError:
                die("Asset faltando no ZIP: " + name)
            if sha256_bytes(data) != t["sha256"]:
                die("SHA256 incorreto no ZIP: " + name)
            result[t["stem"]] = data
    return result

def patch_midi_cfg(path, per_track_options):
    s = path.read_text()

    # Never create comment-only lines: this project's audio_rules.mk expands
    # midi.cfg line by line.
    for t in TRACKS:
        opts = per_track_options[t["stem"]]
        line = f'{t["stem"]}.mid: {opts}'
        pat = rf'^{re.escape(t["stem"])}\.mid:.*$'
        if re.search(pat, s, re.M):
            s = re.sub(pat, line, s, flags=re.M)
        else:
            if s and not s.endswith("\n"):
                s += "\n"
            s += line + "\n"
        print("  midi.cfg:", line)

    path.write_text(s)

def song_rows(text):
    return list(re.finditer(
        r'^(?P<indent>\s*)song\s+(?P<stem>[A-Za-z0-9_]+)(?P<rest>\s*,[^\n]*)$',
        text, re.M
    ))

def repair_known_hlw_gap_if_needed(song_table_text, songs_text):
    defs = parse_defines(songs_text)
    end_value = resolve_token("END_MUS", defs)
    rows = song_rows(song_table_text)

    if len(rows) == end_value + 1:
        return song_table_text, False

    # Known state from the September White Stripes installation:
    # END_MUS=738 but table stopped at ID 733 (Intro Supernova).
    if end_value == 738 and len(rows) == 734:
        expected = [
            ("MUS_SHADOW_LUGIA_THEME", "mus_shadow_lugia_theme", 734),
            ("MUS_DEAD_LEAVES_AND_THE_DIRTY_GROUND", "mus_dead_leaves_and_the_dirty_ground", 735),
            ("MUS_I_CANT_WAIT_WHITE_STRIPES", "mus_i_cant_wait_white_stripes", 736),
            ("MUS_JOLENE_WHITE_STRIPES", "mus_jolene_white_stripes", 737),
            ("MUS_SEVEN_NATION_ARMY", "mus_seven_nation_army", 738),
        ]
        for const, stem, value in expected:
            if resolve_token(const, defs) != value:
                die("Estado de song_table desalinhado e nao corresponde ao gap conhecido.")

        last = rows[-1]
        if last.group("stem") not in ("intro_epica_pokeemerald_gba", "mus_intro_supernova"):
            die("Gap conhecido esperado, mas a row 733 nao e Intro Supernova.")

        indent = last.group("indent")
        block = "".join(f"{indent}song {stem}, 0, 0\n" for _, stem, _ in expected)
        insert_at = last.end()
        song_table_text = (
            song_table_text[:insert_at]
            + "\n"
            + block.rstrip("\n")
            + song_table_text[insert_at:]
        )
        rows2 = song_rows(song_table_text)
        if len(rows2) != 739:
            die("Falha reparando gap conhecido de Shadow Lugia/White Stripes.")
        print("  song_table: gap conhecido 734..738 reparado automaticamente.")
        return song_table_text, True

    die(
        f"song_table desalinhado: END_MUS={end_value}, rows={len(rows)}. "
        "Nao vou inserir musicas em indices errados."
    )

def patch_songs_h(path):
    s = path.read_text()
    defs, end_match, end_token, old_end = get_end_mus(s)

    present = [t["const"] in defs for t in TRACKS]
    if any(present) and not all(present):
        die("Instalacao parcial detectada em songs.h.")

    if all(present):
        ids = [resolve_token(defs[t["const"]], defs) for t in TRACKS]
        print("  songs.h: IDs ja existem:", ids)
        return ids, old_end, False

    cursor = old_end
    insertion = ""
    ids = []
    for t in TRACKS:
        cursor += 1
        if cursor >= 0xFFFF:
            die("Sem IDs MUS_* livres.")
        insertion += f'#define {t["const"]:<48} {cursor}\n'
        ids.append(cursor)

    s = s[:end_match.start()] + insertion + s[end_match.start():]
    s = re.sub(
        r'^#define\s+END_MUS\s+\S+.*$',
        f'#define END_MUS {TRACKS[-1]["const"]}',
        s,
        count=1,
        flags=re.M
    )
    path.write_text(s)

    print("  songs.h IDs:")
    for sid, t in zip(ids, TRACKS):
        print(f"    {sid}: {t['const']}")
    return ids, old_end, True

def find_song_table_reference(s):
    for stem in SONG_TABLE_REFERENCES:
        m = re.search(
            rf'^(?P<indent>\s*)song\s+{re.escape(stem)}(?P<rest>\s*,[^\n]*)$',
            s, re.M
        )
        if m and "MUSIC_PLAYER_BGM" not in m.group("rest"):
            return stem, m.group("indent"), m.group("rest")

    rows = song_rows(s)
    if rows:
        m = rows[-1]
        if "MUSIC_PLAYER_BGM" not in m.group("rest"):
            return m.group("stem"), m.group("indent"), m.group("rest")
    return None

def patch_song_table(path, songs_text_before, old_end, ids_added):
    s = path.read_text()

    # Repair only the exact known historical gap, otherwise require alignment.
    s, repaired = repair_known_hlw_gap_if_needed(s, songs_text_before)

    rows = song_rows(s)
    if len(rows) != old_end + 1:
        die(
            f"Antes do batch, gSongTable tem {len(rows)} rows; "
            f"esperado {old_end + 1} para END_MUS={old_end}."
        )

    present = [
        bool(re.search(rf'^\s*song\s+{re.escape(t["stem"])}\s*,', s, re.M))
        for t in TRACKS
    ]
    if all(present):
        if repaired:
            path.write_text(s)
        print("  song_table: 13 entradas ja existem")
        return
    if any(present):
        die("Instalacao parcial detectada em song_table.inc.")
    if not ids_added:
        die("IDs ja existem, mas song_table nao tem o batch.")

    ref = find_song_table_reference(s)
    if ref is None:
        die("Nao achei uma row song funcional para clonar player/priority.")

    ref_stem, indent, rest = ref
    print(f"  song_table ref: song {ref_stem}{rest}")

    rows = song_rows(s)
    last = rows[-1]
    insert_at = last.end()
    block = "".join(f'{indent}song {t["stem"]}{rest}\n' for t in TRACKS)

    if "MUSIC_PLAYER_BGM" in block:
        die("Validacao: MUSIC_PLAYER_BGM invalido.")

    s = s[:insert_at] + "\n" + block.rstrip("\n") + s[insert_at:]

    rows2 = song_rows(s)
    expected = old_end + 1 + len(TRACKS)
    if len(rows2) != expected:
        die(
            f"Depois do append song_table teria {len(rows2)} rows; "
            f"esperado {expected}."
        )

    path.write_text(s)
    print("  song_table: 13 rows adicionadas ao final da tabela.")

def patch_radio(path):
    s = path.read_text()
    consts = [t["const"] for t in TRACKS]

    # 1) X-macro name registry.
    marker = '\n#define X(songId) static const u8 sRadioBGMName_##songId[] = _(#songId);'
    pos = s.find(marker)
    start = s.rfind('#define RADIO_SOUND_LIST_BGM', 0, pos)
    if pos < 0 or start < 0:
        die("Nao achei RADIO_SOUND_LIST_BGM em src/radio.c.")

    block = s[start:pos]
    existing = set(re.findall(r'X\((MUS_[A-Z0-9_]+)\)', block))
    missing = [c for c in consts if c not in existing]

    if missing:
        lines = block.splitlines()
        xs = [i for i, line in enumerate(lines) if 'X(MUS_' in line]
        if not xs:
            die("RADIO_SOUND_LIST_BGM sem X(MUS_...).")
        last_x = xs[-1]
        if not lines[last_x].rstrip().endswith('\\'):
            lines[last_x] = lines[last_x].rstrip() + ' \\'

        add = []
        for i, c in enumerate(missing):
            suffix = ' \\' if i < len(missing) - 1 else ''
            add.append(f'    X({c}){suffix}')
        lines[last_x+1:last_x+1] = add
        s = s[:start] + '\n'.join(lines) + s[pos:]

    # 2) Keep EXACT upload order in ALL TRACKS and POP.
    def add_station(text, decl):
        a = text.find(decl)
        if a < 0:
            die("Nao achei " + decl)
        e = text.find('    STATION_END', a)
        if e < 0:
            die("Nao achei STATION_END em " + decl)
        section = text[a:e]
        add = ''.join(f'    {c},\n' for c in consts if c not in section)
        return text[:e] + add + text[e:]

    s = add_station(s, 'static const u16 sStation_All[] = {')
    s = add_station(s, 'static const u16 sStation_Pop[] = {')

    # 3) Friendly POP names.
    getter = 'static const u8 *Radio_GetPopDisplayName(u16 songId)'
    gp = s.find(getter)
    if gp < 0:
        die("Nao achei Radio_GetPopDisplayName.")

    defs_to_add = ''
    for t in TRACKS:
        name = f'sPopName_{t["var"]}'
        if name not in s[:gp]:
            defs_to_add += f'static const u8 {name}[] = _("{t["label"]}");\n'
    if defs_to_add:
        s = s[:gp] + defs_to_add + '\n' + s[gp:]

    gp = s.find(getter)
    d = s.find('\n    default:', gp)
    if d < 0:
        die("Nao achei default de Radio_GetPopDisplayName.")

    sw = s[gp:d]
    cases = ''
    for t in TRACKS:
        if f'case {t["const"]}:' not in sw:
            cases += (
                f'    case {t["const"]}:\n'
                f'        return sPopName_{t["var"]};\n'
            )
    if cases:
        s = s[:d] + cases + s[d:]

    if s.count('{') != s.count('}'):
        die("radio.c ficou com chaves desbalanceadas.")
    if s.count('(') != s.count(')'):
        die("radio.c ficou com parenteses desbalanceados.")

    # No cover mappings are added: Radio_GetAlbumCoverForSong will return NONE.
    pop_start = s.find('static const u16 sStation_Pop[] = {')
    pop_end = s.find('STATION_END', pop_start)
    pop_block = s[pop_start:pop_end]
    for c in consts:
        if c not in pop_block:
            die(f"Validacao POP falhou: {c}")
        if f'case {c}:' not in s:
            die(f"Validacao display falhou: {c}")

    path.write_text(s)
    print("  radio.c: ALL TRACKS + POP + nomes, sem capas.")

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

    print("== HLW RADIO POP / 13 TRACKS - GBA OPTIMIZED ==")
    print("Ordem preservada exatamente como os arquivos enviados.")
    print("Sem capas por enquanto.\n")

    assets = load_assets(script_dir)
    cfg_text = cfg.read_text()

    # Pick a proven local reference per target and remap semantic GM roles into
    # program numbers already used successfully by that exact voicegroup.
    per_track_options = {}
    remapped_assets = {}
    install_report = []

    for t in TRACKS:
        raw = assets[t["stem"]]
        ref_stem, ref_opts, roles, chans = find_reference(
            root, cfg_text, t["profile"], raw
        )
        opts = tune_options(ref_opts, t["volume"], t["reverb"])
        remapped = remap_midi_programs(raw, roles)

        per_track_options[t["stem"]] = opts
        remapped_assets[t["stem"]] = remapped
        install_report.append((
            t["stem"], t["profile"], ref_stem, opts, roles
        ))

        print(f'{t["label"]}')
        print(f'  profile: {t["profile"]}')
        print(f'  reference: {ref_stem}')
        print(f'  cfg: {opts}')
        print(f'  roles: {roles}')

    # Validate current song-table alignment BEFORE changing END_MUS.
    songs_before = songs_h.read_text()
    _, _, old_end_token, old_end = get_end_mus(songs_before)
    st_preview, repaired = repair_known_hlw_gap_if_needed(
        song_table.read_text(), songs_before
    )
    if len(song_rows(st_preview)) != old_end + 1:
        die("song_table ainda nao ficou alinhado com END_MUS.")

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_dir = root / "PHYTON/backups" / f"radio_pop_13_{stamp}"

    for p in required:
        backup_file(p, root, backup_dir)
    for t in TRACKS:
        p = midi_dir / f'{t["stem"]}.mid'
        if p.exists():
            backup_file(p, root, backup_dir)

    print("\nBackup:", backup_dir)

    # If we repaired the known historical gap in preview, commit it before append.
    if repaired:
        song_table.write_text(st_preview)

    for t in TRACKS:
        dst = midi_dir / f'{t["stem"]}.mid'
        dst.write_bytes(remapped_assets[t["stem"]])
        os.utime(dst, None)
        print("  MIDI:", dst)

    patch_midi_cfg(cfg, per_track_options)
    ids, previous_end, ids_added = patch_songs_h(songs_h)
    patch_song_table(song_table, songs_before, previous_end, ids_added)
    patch_radio(radio)

    # Force converter/assembler regeneration.
    for t in TRACKS:
        for p in [
            midi_dir / f'{t["stem"]}.s',
            root / "build/modern/sound/songs/midi" / f'{t["stem"]}.o',
        ]:
            if p.exists():
                p.unlink()

    # Final validation.
    sh = songs_h.read_text()
    st = song_table.read_text()
    mc = cfg.read_text()
    rc = radio.read_text()
    defs = parse_defines(sh)
    new_end = resolve_token("END_MUS", defs)

    if len(song_rows(st)) != new_end + 1:
        die(
            f"Validacao final song_table: rows={len(song_rows(st))}, "
            f"END_MUS={new_end}."
        )

    for t in TRACKS:
        if not re.search(rf'^#define\s+{re.escape(t["const"])}\b', sh, re.M):
            die("Validacao songs.h falhou: " + t["const"])
        if not re.search(rf'^\s*song\s+{re.escape(t["stem"])}\s*,', st, re.M):
            die("Validacao song_table falhou: " + t["stem"])
        if not re.search(rf'^{re.escape(t["stem"])}\.mid:', mc, re.M):
            die("Validacao midi.cfg falhou: " + t["stem"])
        if t["const"] not in rc:
            die("Validacao radio.c falhou: " + t["const"])

    report = script_dir / "RADIO_POP_13_LAST_INSTALL_REPORT.txt"
    with report.open("w") as f:
        f.write("HLW RADIO POP - 13 TRACKS\n")
        f.write(f"Backup: {backup_dir}\n")
        f.write(f"Old END_MUS: {old_end}\n")
        f.write(f"New END_MUS: {new_end}\n")
        f.write("Station: POP + ALL TRACKS\n")
        f.write("Covers: NONE\n\n")
        for sid, t, item in zip(ids, TRACKS, install_report):
            stem, profile, ref_stem, opts, roles = item
            f.write(f"{sid}: {t['label']}\n")
            f.write(f"  profile={profile}\n")
            f.write(f"  reference={ref_stem}\n")
            f.write(f"  cfg={opts}\n")
            f.write(f"  roles={roles}\n")

    print("\nOK - 13 faixas instaladas.")
    print("Station: POP + ALL TRACKS")
    print("Covers: NONE")
    print("\nIDs:")
    for sid, t in zip(ids, TRACKS):
        print(f"  {sid}: {t['label']}")

    print("\nAgora rode:")
    print("  make -j8")
    print("\nDepois confira:")
    print(
        '  grep -nE "mus_(bad_guy_billie|paparazzi_lady|bad_romance_lady|'
        'alejandro_lady|toxic_britney|gurenge_lisa|umbrella_rihanna|'
        'disturbia_rihanna|diamonds_rihanna|irreplaceable_beyonce|'
        'broken_hearted_girl_beyonce|crazy_in_love_beyonce|halo_beyonce)" '
        'Pokemon_HLW.map | head -80'
    )

if __name__ == "__main__":
    main()
