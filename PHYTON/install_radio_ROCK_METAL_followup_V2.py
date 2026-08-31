#!/usr/bin/env python3
"""Pokemon HLW - ROCK/METAL follow-up V2.

Corrige:
- 3s and 7s
- Crawling

Adiciona:
- Kryptonite (3 Doors Down)
- Animal I Have Become (Three Days Grace)

Uso:
    cd ~/pokeemerald-expansion
    python3 PHYTON/install_radio_ROCK_METAL_followup_V2.py
    make -j9
"""
from pathlib import Path
import base64
import hashlib
import re
import shutil
import zlib

EMBEDDED = {
    'mus_3s_and_7s.mid': (
        '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'
    ),
    'mus_crawling.mid': (
        'eNrtWE1LG1EUPWpsKvQH1JJKgpMQxBhSh+A0HzxCaJuF4DAuughBG4WKtkpUsDuTSIasIhICrrvpogsppdBdKaW/oz+gi/6D9L4Z'
        'fbHficbUTB7M4uS8c+99d+68O3cyv/h0BcANDGF06Mv8YmEdGD1Bc2Ts4e7aznJh1RtBUx8Ze3kHzccu1/Dtm/hwFyebgPsJDjMG'
        '0gYSRnw/w5BmSLB2ufglbHEYMTBtwG/UsB9hmGbwE6kZUA2EOKkxqAwhIokJGwhykpgwQ5DImIEo5022H2OIWvzhnIFZ7pbIOYZZ'
        'y22vApVeZeW97FKg4ld5L2WgAQrUDMPu2y6V+vZoanl7exUffXjDm/Qejnz5slLyMRyN52sojTPOEOCMhwMPgcm8yUqT1hKBLogF'
        'E+QayufImy8vlbyWhkCvrcRWhUZkIRg/B/7zSx4OPL1x6IzqyPvcV+JW77h/fua7h08TeMv7x1JZqUd0TOvw6zUciEZW13SoOkKc'
        'FI2sTkxYR5CTopHVYzqinDfZgWhkwpzIlnmPApVew3E5Fb85LycZqA8CiQ4yvEEd5NbC2vLzTe/86sbmygt8HsI79xaojzQy6bh1'
        'oZJBnK7GKWy02EbibNV0JWCyhpY2WUXjSOVI5SiWNJmWRCXGfyQI8HVbnRTq5O/UGugrq5FJxq2rtY/k6T4Ea7n9YR//8NzpPugL'
        '5Rrso1/VGlrP3MQDeubc6cLus/W1Hby3B97jqVRRrU4xHM+kilvVGQJKDpFHhBUGOgxcsGUJplIIZG0c+IlXcjZW/iIT/n/Vt2N+'
        '6SjdzyKQ3TtbV3J7VaW93Dq0CWSpGuWlauCsGleelixOZzZUHGGE0IJ9ckKyONeiOO3stzv5Sf/S/yD7d16XklkMVBZy7pVzryzO'
        'ReZea9U+PLYgMujvRZPJcUOOM3IQkFlcnyzaMKe2JacgOQXJ4lykOM44OT3Iwon//jnxCJ0XdJTUxcXyDMks+rCfXclJsV4v9PNP'
        '7/7/ckKbYXwHfu2LEA=='
    ),
    'mus_kryptonite.mid': (
        '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'
        '06jso6L3FKpwGkCUbiGZ/bauMqyG8D8CUdjL'
    ),
    'mus_animal_i_have_become.mid': (
        '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'
        'SijfZzcN/wM43QcB'
    ),
}

HASHES = {
    'mus_3s_and_7s.mid': 'f34dcca65c457a625e6be39309e0645d378882547ce0599b085e54e490720df5',
    'mus_crawling.mid': 'c16c8f02bdd38871f503bdc78eb1de226ecc5a00b2b17d0ec9eaff6a2a81e9e0',
    'mus_kryptonite.mid': '285a57d7ced087bde21722347cd10fdb70d1913d6e34e55321603d7d68b7daa0',
    'mus_animal_i_have_become.mid': '56e2592869d910582988c074643e6f9420117579df75837215d1630d7ccf8e23',
}

SCRIPT = Path(__file__).resolve()

def die(msg):
    raise SystemExit("ERRO: " + msg)

def find_root():
    for p in (Path.cwd().resolve(), SCRIPT.parent.resolve(), SCRIPT.parent.parent.resolve()):
        if (p / "src/radio.c").exists() and (p / "include/constants/songs.h").exists():
            return p
    die("nao achei a raiz do pokeemerald-expansion")

ROOT = find_root()
SONGS_H = ROOT / "include/constants/songs.h"
SONG_TABLE = ROOT / "sound/song_table.inc"
MIDI_DIR = ROOT / "sound/songs/midi"
MIDI_CFG = MIDI_DIR / "midi.cfg"
RADIO_C = ROOT / "src/radio.c"
VG_FILE = ROOT / "sound/voicegroups/hlw_rock_metal.inc"
BACKUP_DIR = ROOT / "PHYTON/_backups/rock_metal_followup_v2"

NEW_SONGS = [
    ("MUS_KRYPTONITE", "kryptonite", "KRYPTONITE (3 DOORS DOWN)"),
    ("MUS_ANIMAL_I_HAVE_BECOME", "animal_i_have_become", "ANIMAL I HAVE BECOME (THREE DAYS GRACE)"),
]

CFG = {
    "mus_3s_and_7s.mid": "-E -R15 -G_hlw_rock_metal -V096",
    "mus_crawling.mid": "-E -R32 -G_hlw_rock_metal -V098",
    "mus_kryptonite.mid": "-E -R26 -G_hlw_rock_metal -V100",
    "mus_animal_i_have_become.mid": "-E -R25 -G_hlw_rock_metal -V100",
}

def backup(path):
    if not path.exists():
        return
    BACKUP_DIR.mkdir(parents=True, exist_ok=True)
    dest = BACKUP_DIR / path.name
    if not dest.exists():
        shutil.copyfile(path, dest)
        dest.touch()
        print("[BACKUP]", dest.relative_to(ROOT))

def write_if_changed(path, text):
    old = path.read_text(encoding="utf-8") if path.exists() else None
    if old == text:
        print("[OK] sem mudanca:", path.relative_to(ROOT))
        return
    if path.exists():
        backup(path)
    path.write_text(text, encoding="utf-8")
    path.touch()
    print("[PATCH]", path.relative_to(ROOT))

def parse_defines(text):
    return {m.group(1): m.group(2) for m in re.finditer(
        r"^\s*#define\s+([A-Za-z0-9_]+)\s+([^\s/]+)", text, re.M
    )}

def resolve_value(token, defs, seen=None):
    seen = set() if seen is None else seen
    token = token.strip()
    try:
        return int(token, 0)
    except ValueError:
        pass
    if token not in defs or token in seen:
        return None
    seen.add(token)
    return resolve_value(defs[token], defs, seen)

def patch_songs_h(text):
    end = re.search(r"^\s*#define\s+END_MUS\s+([^\s/]+).*$", text, re.M)
    if not end:
        die("END_MUS nao encontrado")
    defs = parse_defines(text)
    end_value = resolve_value(end.group(1), defs)
    vals = []
    for name, raw in defs.items():
        if name.startswith("MUS_"):
            v = resolve_value(raw, defs)
            if v is not None:
                vals.append(v)
    if end_value is None:
        if not vals:
            die("nao consegui resolver IDs de musica")
        end_value = max(vals)
    next_id = max([end_value] + vals) + 1

    additions = []
    last_new = None
    for macro, slug, title in NEW_SONGS:
        if macro not in defs:
            additions.append(f"#define {macro:<40} {next_id}\n")
            defs[macro] = str(next_id)
            last_new = macro
            next_id += 1

    if additions:
        text = text[:end.start()] + "".join(additions) + text[end.start():]
        if last_new:
            text = re.sub(
                r"^\s*#define\s+END_MUS\s+[^\n]+$",
                f"#define END_MUS {last_new}",
                text, count=1, flags=re.M
            )
    return text

def patch_song_table(text):
    missing = [slug for macro, slug, title in NEW_SONGS
               if not re.search(rf"^\s*song\s+mus_{re.escape(slug)}\s*,", text, re.M)]
    if not missing:
        return text
    anchor = re.search(r"^\s*song\s+mus_breaking_the_habit(\s*,[^\n]+)$", text, re.M)
    if not anchor:
        all_songs = list(re.finditer(r"^\s*song\s+mus_[a-z0-9_]+\s*,[^\n]+$", text, re.M))
        if not all_songs:
            die("song_table.inc sem entradas song")
        anchor = all_songs[-1]
        sm = re.search(r"(\s*,[^\n]+)$", anchor.group(0))
        suffix = sm.group(1) if sm else ", 0, 0"
    else:
        suffix = anchor.group(1)
    pos = anchor.end()
    add = "".join(f"\n\tsong mus_{slug}{suffix}" for slug in missing)
    return text[:pos] + add + text[pos:]

def patch_midi_cfg(text):
    if text and not text.endswith("\n"):
        text += "\n"
    for name, flags in CFG.items():
        desired = f"{name + ':':<48} {flags}"
        pat = re.compile(r"^\s*" + re.escape(name) + r"\s*:.*$", re.M)
        if pat.search(text):
            text = pat.sub(desired, text, count=1)
        else:
            text += desired + "\n"
    return text

def patch_macro_list(text):
    start = text.find("#define RADIO_SOUND_LIST_BGM")
    end = text.find("#define X(songId)", start)
    if start < 0 or end < 0:
        die("RADIO_SOUND_LIST_BGM nao encontrado")
    block = text[start:end]
    lines = block.splitlines()

    missing = [macro for macro, _, _ in NEW_SONGS if not any(f"X({macro})" in line for line in lines)]
    if not missing:
        return text

    xidx = [i for i,l in enumerate(lines) if re.search(r"\bX\(MUS_[A-Z0-9_]+\)", l)]
    if not xidx:
        die("lista X(MUS_...) vazia")

    insert_at = xidx[-1] + 1
    for offset, macro in enumerate(missing):
        lines.insert(insert_at + offset, f"    X({macro})")

    # Normalize trailing backslashes for every X line.
    xidx = [i for i,l in enumerate(lines) if re.search(r"\bX\(MUS_[A-Z0-9_]+\)", l)]
    for n, i in enumerate(xidx):
        base = re.sub(r"\s*\\\s*$", "", lines[i]).rstrip()
        lines[i] = base + (" \\" if n < len(xidx)-1 else "")

    new = "\n".join(lines)
    if block.endswith("\n"):
        new += "\n"
    return text[:start] + new + text[end:]

def patch_station(text):
    start = text.find("static const u16 sStation_RockMetal[]")
    if start < 0:
        die("sStation_RockMetal nao encontrada; instale a ROCK/METAL V1 primeiro")
    close = text.find("};", start)
    if close < 0:
        die("fim da sStation_RockMetal nao encontrado")
    block = text[start:close]

    add = ""
    for macro, slug, title in NEW_SONGS:
        if macro not in block:
            add += f"    {macro},\n"

    if add:
        pos = text.rfind("STATION_END", start, close)
        if pos < 0:
            die("STATION_END da ROCK/METAL nao encontrado")
        text = text[:pos] + add + text[pos:]
    return text

def find_function(text, signature):
    start = text.find(signature)
    if start < 0:
        return None
    brace = text.find("{", start)
    if brace < 0:
        return None
    depth = 0
    for i in range(brace, len(text)):
        if text[i] == "{":
            depth += 1
        elif text[i] == "}":
            depth -= 1
            if depth == 0:
                return start, brace, i + 1
    return None

def patch_display_names(text):
    signature = "static const u8 *Radio_GetRockMetalDisplayName(u16 songId)"
    fn = find_function(text, signature)
    if fn is None:
        die("Radio_GetRockMetalDisplayName nao encontrada; instale a ROCK/METAL V1 primeiro")

    constants = [
        ('sRockMetalName_Kryptonite', 'KRYPTONITE (3 DOORS DOWN)'),
        ('sRockMetalName_AnimalIHaveBecome', 'ANIMAL I HAVE BECOME (THREE DAYS GRACE)'),
    ]
    insert_pos = fn[0]
    const_text = ""
    for var, title in constants:
        if var not in text:
            const_text += f'static const u8 {var}[] = _("{title}");\n'
    if const_text:
        text = text[:insert_pos] + const_text + "\n" + text[insert_pos:]
        fn = find_function(text, signature)

    start, brace, end = fn
    func = text[start:end]
    cases = [
        ("MUS_KRYPTONITE", "sRockMetalName_Kryptonite"),
        ("MUS_ANIMAL_I_HAVE_BECOME", "sRockMetalName_AnimalIHaveBecome"),
    ]
    additions = ""
    for macro, var in cases:
        if f"case {macro}:" not in func:
            additions += f"    case {macro}:\n        return {var};\n"
    if additions:
        default_pos = func.find("    default:")
        if default_pos < 0:
            die("default do Radio_GetRockMetalDisplayName nao encontrado")
        func = func[:default_pos] + additions + func[default_pos:]
        text = text[:start] + func + text[end:]
    return text

def patch_radio(text):
    text = patch_macro_list(text)
    text = patch_station(text)
    text = patch_display_names(text)
    return text

for p in (SONGS_H, SONG_TABLE, MIDI_CFG, RADIO_C):
    if not p.exists():
        die(f"nao achei {p}")

if not VG_FILE.exists():
    die("hlw_rock_metal.inc nao existe; instale primeiro o batch ROCK/METAL V1")

vg = VG_FILE.read_text(encoding="utf-8")
if "voicegroup_piano_keysplit" not in vg:
    die("o voicegroup ROCK/METAL atual nao possui piano no program 1")

# Install/replace four MIDIs.
for name, payload in EMBEDDED.items():
    raw = zlib.decompress(base64.b64decode(payload))
    if hashlib.sha256(raw).hexdigest() != HASHES[name]:
        die("hash invalido para " + name)
    dst = MIDI_DIR / name
    if dst.exists() and dst.read_bytes() == raw:
        print("[OK] MIDI ja instalado:", dst.relative_to(ROOT))
    else:
        if dst.exists():
            backup(dst)
        dst.write_bytes(raw)
        dst.touch()
        print("[WRITE]", dst.relative_to(ROOT))

    asm = dst.with_suffix(".s")
    if asm.exists():
        asm.unlink()
        print("[DELETE]", asm.relative_to(ROOT))
    for obj in ROOT.glob("build/*/sound/songs/midi/" + dst.stem + ".o"):
        obj.unlink()
        print("[DELETE]", obj.relative_to(ROOT))

write_if_changed(SONGS_H, patch_songs_h(SONGS_H.read_text(encoding="utf-8")))
write_if_changed(SONG_TABLE, patch_song_table(SONG_TABLE.read_text(encoding="utf-8")))
write_if_changed(MIDI_CFG, patch_midi_cfg(MIDI_CFG.read_text(encoding="utf-8")))
write_if_changed(RADIO_C, patch_radio(RADIO_C.read_text(encoding="utf-8")))

print()
print("[OK] ROCK/METAL FOLLOW-UP V2 instalado")
print()
print("3S AND 7S:")
print("  Lead agressivo corrigido; rhythm/bass/drums preservados")
print()
print("CRAWLING:")
print("  piano melodico novo + guitarras recuadas + baixo reforcado")
print()
print("KRYPTONITE:")
print("  intro drums-only removida + power-chord guitar sintetizada")
print()
print("ANIMAL I HAVE BECOME:")
print("  adicionada a ROCK/METAL com guitarra pesada + baixo + bateria")
print()
print("Agora rode:")
print("  make -j9")
