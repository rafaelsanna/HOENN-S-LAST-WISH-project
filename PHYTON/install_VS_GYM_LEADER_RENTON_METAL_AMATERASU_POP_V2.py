#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os, subprocess

PACK_ZIP = "VS_GYM_LEADER_RENTON_METAL_AMATERASU_POP_V2.zip"

METAL_STEM = "mus_vs_gym_leader_metal"
POP_STEM = "mus_vs_gym_leader_pop"

METAL_CONST = "MUS_VS_GYM_LEADER_METAL"
POP_CONST = "MUS_VS_GYM_LEADER_POP"

METAL_SHA = "ff6ac3a8075bdaff5da1c3fb5ee23b4204301d470402f9b42bf0524a78ed4dca"
POP_SHA = "0aa2db7fa6898535434b99e78aecc029e087a43ce2f74c74ce3b10e07b9ddc7c"

PATCH_MARKER = "HLW_SPECIAL_GYM_BGM_RENTON_AMATERASU_V1"

RENTON_IDS = (
    "TRAINER_BRAWLY_1",
    "TRAINER_BRAWLY",
    "TRAINER_BRAWLY_2",
    "TRAINER_BRAWLY_3",
    "TRAINER_BRAWLY_4",
    "TRAINER_BRAWLY_5",
    "TRAINER_BRAWLY_CASUAL",
)

AMATERASU_IDS = (
    "TRAINER_FLANNERY_CASUAL",
    "TRAINER_FLANNERY_1",
    "TRAINER_FLANNERY_2",
    "TRAINER_FLANNERY_3",
    "TRAINER_FLANNERY_4",
    "TRAINER_FLANNERY_5",
)

METAL_ROLES = {
    "ROLE_METAL_RHYTHM": "rhythm",
    "ROLE_METAL_LEAD": "lead",
    "ROLE_METAL_BASS": "bass",
    "ROLE_METAL_PIANO": "piano",
    "ROLE_METAL_DRUMS": "drums",
}

POP_ROLES = {
    "ROLE_POP_BASS": "bass",
    "ROLE_POP_NYLON": "nylon",
    "ROLE_POP_PIANO": "piano",
    "ROLE_POP_PIZZ": "pizz",
    "ROLE_POP_DRUMS": "drums",
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

def all_voice_groups(root):
    groups = {}
    for p in (root / "sound").rglob("*.inc"):
        try:
            text = p.read_text(errors="ignore")
        except Exception:
            continue
        lines = text.splitlines()
        starts = []
        for i, line in enumerate(lines):
            m = re.match(r'^\s*voice_group\s+([A-Za-z0-9_]+)\s*$', line)
            if m:
                starts.append((i, m.group(1)))

        for idx, (start, name) in enumerate(starts):
            end = starts[idx+1][0] if idx+1 < len(starts) else len(lines)
            voices = []
            for li in range(start+1, end):
                s = lines[li].strip()
                if s.startswith("voice_") and not s.startswith("voice_group"):
                    voices.append((li, s.split("@", 1)[0].rstrip(), s))
            groups[name] = {"path": p, "voices": voices}
    return groups

def score_voice(original, kind):
    s = original.lower()

    if kind == "bass":
        if "fingered_bass" in s: return 3500
        if "bass" in s and "drum" not in s: return 1000
    elif kind == "rhythm":
        if "overdrive" in s and "guitar" in s and "_high" not in s: return 4000
        if "distort" in s and "guitar" in s and "_high" not in s: return 2500
        if "guitar" in s and "bass" not in s: return 800
    elif kind == "lead":
        if "distortion_guitar_high" in s: return 4500
        if "distort" in s and "guitar" in s: return 3200
        if "overdrive" in s and "guitar" in s: return 2200
    elif kind == "drums":
        if "hlw_rock_metal_drumset" in s: return 5000
        if "drumset" in s: return 1600
    elif kind == "synth_bass":
        if "synth_bass" in s: return 4500
        if "synth" in s and "bass" in s: return 3000
        if "bass" in s and "drum" not in s: return 600
    elif kind == "piano":
        if "piano" in s and "bass" not in s and "drum" not in s: return 3500
    elif kind == "pizzicato":
        if "pizz" in s: return 4500
        if "pluck" in s: return 2500
    elif kind == "nylon":
        if "nylon" in s and "guitar" in s: return 4500
        if "nylon" in s: return 3000
        if "clean" in s and "guitar" in s: return 700
    elif kind == "pop_drums":
        if "pink_and_white_drumset" in s: return 6000
        if "drumset" in s: return 1600

    return 0

def best_slot(voices, kind):
    found = []
    for i, (_, clean, original) in enumerate(voices):
        score = score_voice(original, kind)
        if score > 0:
            found.append((score, i, clean, original))
    return max(found) if found else None

def prepare_metal(groups):
    if "hlw_rock_metal" not in groups:
        die("Nao achei voicegroup hlw_rock_metal.")

    voices = groups["hlw_rock_metal"]["voices"]
    picks = {}
    for kind in ("bass", "rhythm", "lead", "piano", "drums"):
        p = best_slot(voices, kind)
        if p is None:
            die(f"Nao achei {kind} seguro em hlw_rock_metal.")
        picks[kind] = p
        print(f"  {kind.upper():8s} -> {p[1]:03d}: {p[3]}")

    return "hlw_rock_metal", {k: v[1] for k, v in picks.items()}

def prepare_pop(groups):
    # Exact palette already used by the successful HLW DIVA POP radio remasters:
    # slot 1 synth bass / 2 nylon / 5 pizzicato / 7 piano / 8 pink_and_white drumset.
    for name in ("diva_pop", "pop", "abracadabra"):
        if name not in groups:
            continue

        voices = groups[name]["voices"]
        expected = {
            1: "synth_bass",
            2: "nylon",
            5: "pizzicato",
            7: "piano",
            8: "pink_and_white_drumset",
        }

        good = True
        for slot, token in expected.items():
            if slot >= len(voices) or token not in voices[slot][2].lower():
                good = False
                break

        if not good:
            continue

        slots = {
            "bass": 1,
            "nylon": 2,
            "pizz": 5,
            "piano": 7,
            "drums": 8,
        }

        print("  GROUP    ->", name)
        print(f"  BASS     -> 001: {voices[1][2]}")
        print(f"  NYLON    -> 002: {voices[2][2]}")
        print(f"  PIZZ     -> 005: {voices[5][2]}")
        print(f"  PIANO    -> 007: {voices[7][2]}")
        print(f"  DRUMS    -> 008: {voices[8][2]}")
        return name, slots

    die(
        "Nao achei o voicegroup DIVA POP conhecido "
        "(synth bass / nylon / pizzicato / piano / pink_and_white_drumset)."
    )

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
            a, b = pos, pos + ln
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

        name, offsets = track_program_offsets(data[start:end], start)
        role_name = name.upper().split("|", 1)[0].strip()

        for tag, role in roles.items():
            if role_name == tag:
                for off in offsets:
                    data[off] = slots[role]
                seen.add(tag)
                break

        pos = end

    missing = set(roles) - seen
    if missing:
        die("Tracks nao patchadas: " + ", ".join(sorted(missing)))

    return bytes(data)

def set_cfg(text, stem, cfg_line):
    line = f"{stem}.mid: {cfg_line}"
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

    vals = [int(v) for v in re.findall(r'^#define\s+MUS_[A-Z0-9_]+\s+(\d+)\b', text, re.M)]

    if not vals:
        die("Nao consegui ler IDs MUS_*.")

    marker = re.search(r'^#define\s+END_MUS\s+\S+.*$', text, re.M)

    if not marker:
        die("Nao achei END_MUS.")

    new = max(vals) + 1
    print("Novo ID:", const, new)

    return text[:marker.start()] + f"#define {const:<52} {new}\n" + text[marker.start():]

def fix_end(text):
    pairs = [(n, int(v)) for n, v in re.findall(r'^#define\s+(MUS_[A-Z0-9_]+)\s+(\d+)\b', text, re.M)]

    if not pairs:
        die("Nao consegui recalcular END_MUS.")

    name, _ = max(pairs, key=lambda x: x[1])

    return re.sub(
        r'^#define\s+END_MUS\s+\S+.*$',
        f"#define END_MUS {name}",
        text,
        count=1,
        flags=re.M,
    )

def add_song_table(text, stem):
    if re.search(r'^\s*song\s+' + re.escape(stem) + r'\s*,', text, re.M):
        return text

    marker = re.search(r'\n\s*\.align\s+2\s*\n\s*dummy_song_header:', text)

    if not marker:
        die("Nao achei dummy_song_header em sound/song_table.inc.")

    return text[:marker.start()] + f"\n\tsong {stem}, 0, 0\n" + text[marker.start():]

def verify_s(path, stem):
    if not path.exists():
        die(f"mid2agb nao criou {path.name}.")

    txt = path.read_text(errors="ignore")

    if not re.search(r'^\s*\.global\s+' + re.escape(stem) + r'\s*$', txt, re.M):
        die(f"{path.name} sem .global {stem}.")

    if not re.search(r'^' + re.escape(stem) + r':\s*$', txt, re.M):
        die(f"{path.name} sem label {stem}:")

    if "GOTO" not in txt:
        die(f"{path.name} sem GOTO de loop.")

def trainer_cases(ids, song):
    lines = []
    for trainer in ids:
        lines.append(f"        case {trainer}:")
    lines.append(f"            return {song};")
    return "\n".join(lines)

def patch_pokemon_c(text):
    if PATCH_MARKER in text:
        print("pokemon.c: routing especial ja instalado; mantendo.")
        return text

    m = re.search(r'(?:static\s+)?u16\s+GetBattleBGM\s*\(\s*void\s*\)\s*\{', text)

    if not m:
        die("Nao achei GetBattleBGM(void) em src/pokemon.c.")

    tail = text[m.start():]
    next_fn = tail.find("\nvoid PlayBattleBGM(")
    block = tail[:next_fn] if next_fn >= 0 else tail[:6000]

    if "TRAINER_BATTLE_PARAM.opponentA" in block:
        opponent = "TRAINER_BATTLE_PARAM.opponentA"
    elif "gTrainerBattleOpponent_A" in block:
        opponent = "gTrainerBattleOpponent_A"
    else:
        die("Nao identifiquei opponentA dentro de GetBattleBGM.")

    renton = trainer_cases(RENTON_IDS, METAL_CONST)
    amaterasu = trainer_cases(AMATERASU_IDS, POP_CONST)

    insert = (
        "\n"
        f"    // {PATCH_MARKER}\n"
        "    // Exclusive normal battle themes. Existing last-mon music can\n"
        "    // replace them later when the ace/last Pokemon enters.\n"
        "    if (gBattleTypeFlags & BATTLE_TYPE_TRAINER)\n"
        "    {\n"
        f"        switch ({opponent})\n"
        "        {\n"
        f"{renton}\n\n"
        f"{amaterasu}\n\n"
        "        default:\n"
        "            break;\n"
        "        }\n"
        "    }\n\n"
    )

    return text[:m.end()] + insert + text[m.end():]

def require_trainer_ids(opponents_text):
    for name in RENTON_IDS + AMATERASU_IDS:
        if not re.search(r'^#define\s+' + re.escape(name) + r'\s+\d+\b', opponents_text, re.M):
            die("Trainer ausente: " + name)

def main():
    root = Path.cwd()
    here = Path(__file__).resolve().parent

    songs_h = root / "include/constants/songs.h"
    opponents_h = root / "include/constants/opponents.h"
    table = root / "sound/song_table.inc"
    cfg = root / "sound/songs/midi/midi.cfg"
    pokemon_c = root / "src/pokemon.c"

    for p in (songs_h, opponents_h, table, cfg, pokemon_c):
        if not p.exists():
            die(f"Nao achei {p}. Rode da raiz do pokeemerald-expansion.")

    require_trainer_ids(opponents_h.read_text(errors="ignore"))

    pack = here / PACK_ZIP

    if not pack.exists():
        die(f"Nao achei {PACK_ZIP} ao lado do Python.")

    groups = all_voice_groups(root)

    print("\n=== RENTON METAL ===")
    metal_group, metal_slots = prepare_metal(groups)

    print("\n=== AMATERASU POP ===")
    pop_group, pop_slots = prepare_pop(groups)

    metal_cfg = f"-G_{metal_group} -R12 -V090"
    pop_cfg = f"-G_{pop_group} -R12 -V090"

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"vs_gym_renton_metal_amaterasu_pop_v2_{stamp}"

    metal_mid = root / f"sound/songs/midi/{METAL_STEM}.mid"
    metal_s = root / f"sound/songs/midi/{METAL_STEM}.s"
    pop_mid = root / f"sound/songs/midi/{POP_STEM}.mid"
    pop_s = root / f"sound/songs/midi/{POP_STEM}.s"

    touched = [songs_h, table, cfg, pokemon_c, metal_mid, metal_s, pop_mid, pop_s]

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
        with zipfile.ZipFile(pack, "r") as z:
            metal_data = z.read("assets/mus_vs_gym_leader_metal.mid")
            pop_data = z.read("assets/mus_vs_gym_leader_pop.mid")

        if hashlib.sha256(metal_data).hexdigest() != METAL_SHA:
            die("SHA invalido no MIDI METAL.")

        if hashlib.sha256(pop_data).hexdigest() != POP_SHA:
            die("SHA invalido no MIDI POP.")

        metal_mid.write_bytes(patch_programs(metal_data, METAL_ROLES, metal_slots))
        pop_mid.write_bytes(patch_programs(pop_data, POP_ROLES, pop_slots))
        os.utime(metal_mid, None)
        os.utime(pop_mid, None)

        cfg_text = cfg.read_text()
        cfg_text = set_cfg(cfg_text, METAL_STEM, metal_cfg)
        cfg_text = set_cfg(cfg_text, POP_STEM, pop_cfg)
        cfg.write_text(cfg_text)
        os.utime(cfg, None)

        mid2agb = root / "tools/mid2agb/mid2agb"

        if not mid2agb.exists():
            die("Nao achei tools/mid2agb/mid2agb.")

        print("\nGerando/verificando .s...")

        subprocess.run(
            [str(mid2agb), str(metal_mid), str(metal_s)] + metal_cfg.split(),
            cwd=root,
            check=True,
        )
        verify_s(metal_s, METAL_STEM)
        print("  METAL: simbolo + GOTO OK")

        subprocess.run(
            [str(mid2agb), str(pop_mid), str(pop_s)] + pop_cfg.split(),
            cwd=root,
            check=True,
        )
        verify_s(pop_s, POP_STEM)
        print("  POP: simbolo + GOTO OK")

        sh = songs_h.read_text()
        sh = add_constant(sh, METAL_CONST)
        sh = add_constant(sh, POP_CONST)
        sh = fix_end(sh)
        songs_h.write_text(sh)

        tb = table.read_text()
        tb = add_song_table(tb, METAL_STEM)
        tb = add_song_table(tb, POP_STEM)
        table.write_text(tb)

        pc = patch_pokemon_c(pokemon_c.read_text())
        pokemon_c.write_text(pc)

        final = pokemon_c.read_text()

        for wanted in (
            PATCH_MARKER,
            "return MUS_VS_GYM_LEADER_METAL;",
            "return MUS_VS_GYM_LEADER_POP;",
            "TRAINER_BRAWLY_1",
            "TRAINER_FLANNERY_CASUAL",
        ):
            if wanted not in final:
                die("Verificacao final falhou: " + wanted)

        stale = [
            root / "build/modern/data/sound_data.o",
            root / "build/modern/data/sound_data.d",
            root / "build/modern/src/pokemon.o",
            root / "build/modern/src/pokemon.d",
            root / f"build/modern/sound/songs/midi/{METAL_STEM}.o",
            root / f"build/modern/sound/songs/midi/{METAL_STEM}.d",
            root / f"build/modern/sound/songs/midi/{POP_STEM}.o",
            root / f"build/modern/sound/songs/midi/{POP_STEM}.d",
        ]

        for p in stale:
            if p.exists():
                print("rm", p.relative_to(root))
                p.unlink()

        print("\n============================================================")
        print("VS GYM LEADER - TEMAS EXCLUSIVOS V2")
        print("============================================================")
        print("RENTON / BRAWLY    -> PURE METAL: GUITARRA / BAIXO / PIANO / BATERIA")
        print("AMATERASU/FLANNERY -> BRIGHT DIVA POP: PALETA DAS MUSICAS POP DA RADIO")
        print("DEMAIS BATALHAS    -> logica original intacta")
        print("")
        print("O sistema de musica do ace/ultimo Pokemon NAO foi alterado.")
        print("Essas duas faixas NAO entram na Radio.")
        print("Nao chama make, make clean ou make -B.")
        print("Backup:", bdir)
        print("\nAgora rode:")
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
