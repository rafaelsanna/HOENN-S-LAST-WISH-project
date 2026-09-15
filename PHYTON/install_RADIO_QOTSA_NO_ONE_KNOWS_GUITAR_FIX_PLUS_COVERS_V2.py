#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os, subprocess

PACK_ZIP = "RADIO_QOTSA_NO_ONE_KNOWS_GUITAR_FIX_PLUS_COVERS_V2.zip"
MIDI_SHA = "88edddca0cd9e71e4fa05a8e29c457db95de8bf22bd2c70863636d7cc4134ed4"
CFG = "-G_hlw_rock_metal -R12 -V090"

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
        for i in range(start + 1, len(lines)):
            if re.match(r'^\s*voice_group\s+[A-Za-z0-9_]+\s*$', lines[i]):
                end = i
                break
        voices = []
        for line in lines[start+1:end]:
            s = line.strip()
            if s.startswith("voice_") and not s.startswith("voice_group"):
                voices.append(s)
        return p, voices
    return None, None

def rock_slots(root):
    p, voices = find_group(root, "hlw_rock_metal")
    if p is None:
        die("Nao achei hlw_rock_metal.")

    def choose(kind):
        ranked = []
        for i, line in enumerate(voices):
            s = line.lower()
            score = 0
            if kind == "guitar":
                if "bass" in s or "drum" in s:
                    continue
                if "overdrive" in s and "guitar" in s: score += 1800
                if "distort" in s and "guitar" in s: score += 1300
                if "guitar" in s: score += 450
                if "sd90" in s: score += 200
                if "_high" in s or " high" in s: score -= 500
            elif kind == "bass":
                if "drum" in s:
                    continue
                if "fingered_bass" in s: score += 2000
                elif "bass" in s: score += 900
            elif kind == "drums":
                if "hlw_rock_metal_drumset" in s: score += 2500
                elif "drumset" in s: score += 1400
                elif "drum" in s: score += 600
            if score > 0:
                ranked.append((score, i, line))
        if not ranked:
            die(f"Nao achei {kind} em hlw_rock_metal.")
        return max(ranked)

    g = choose("guitar")
    b = choose("bass")
    d = choose("drums")
    print("\nNO ONE KNOWS / hlw_rock_metal:")
    print(f"  GUITAR -> {g[1]:03d}: {g[2]}")
    print(f"  BASS   -> {b[1]:03d}: {b[2]}")
    print(f"  DRUMS  -> {d[1]:03d}: {d[2]}")
    return {"guitar": g[1], "bass": b[1], "drums": d[1]}

def read_vlq(buf, pos):
    value = 0
    while True:
        b = buf[pos]; pos += 1
        value = (value << 7) | (b & 0x7F)
        if not (b & 0x80):
            return value, pos

def program_offsets(track_data, file_start):
    pos = 0
    running = None
    name = ""
    offs = []
    while pos < len(track_data):
        _, pos = read_vlq(track_data, pos)
        if pos >= len(track_data):
            break
        status = track_data[pos]
        if status == 0xFF:
            pos += 1
            typ = track_data[pos]; pos += 1
            ln, pos = read_vlq(track_data, pos)
            a = pos; b = pos + ln
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
                offs.append(file_start + pos)
            pos += 1
        else:
            pos += 2
    return name, offs

def patch_programs(data, slots):
    roles = {
        "ROLE_GUITAR_MAIN": "guitar",
        "ROLE_GUITAR_SECOND": "guitar",
        "ROLE_BASS": "bass",
        "ROLE_DRUMS": "drums",
    }
    data = bytearray(data)
    pos = 8 + int.from_bytes(data[4:8], "big")
    seen = set()
    while pos + 8 <= len(data):
        if data[pos:pos+4] != b"MTrk":
            die("MTrk esperado.")
        ln = int.from_bytes(data[pos+4:pos+8], "big")
        start = pos + 8
        end = start + ln
        name, offs = program_offsets(data[start:end], start)
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

def set_cfg(text):
    line = f"mus_no_one_knows.mid: {CFG}"
    m = re.search(r'^mus_no_one_knows\.mid:.*$', text, re.M)
    if m:
        return text[:m.start()] + line + text[m.end():]
    if text and not text.endswith("\n"):
        text += "\n"
    return text + line + "\n"

def verify_symbol(path):
    txt = path.read_text(errors="ignore") if path.exists() else ""
    if not re.search(r'^\s*\.global\s+mus_no_one_knows\s*$', txt, re.M):
        die("mus_no_one_knows.s nao exporta mus_no_one_knows.")
    if not re.search(r'^mus_no_one_knows:\s*$', txt, re.M):
        die("mus_no_one_knows.s nao possui label mus_no_one_knows:.")

def norm(s):
    return re.sub(r'[^a-z0-9]', '', s.lower())

def detect_lullabies_assets(root):
    cover_dir = root / "graphics/radio/covers"
    if not cover_dir.exists():
        die("Nao achei graphics/radio/covers.")

    files = list(cover_dir.iterdir())
    def is_lullabies(p):
        n = norm(p.name)
        return "lullabies" in n and "paraly" in n

    pals = [p for p in files if is_lullabies(p) and p.name.lower().endswith(".gbapal")]
    gfxs = [p for p in files if is_lullabies(p) and p.name.lower().endswith(".4bpp.smol")]
    if not gfxs:
        gfxs = [p for p in files if is_lullabies(p) and p.name.lower().endswith(".4bpp")]

    if len(pals) != 1 or len(gfxs) != 1:
        print("\nArquivos candidatos Lullabies:")
        for p in files:
            if is_lullabies(p):
                print(" ", p.name)
        die(
            f"Esperava 1 .gbapal e 1 .4bpp.smol/.4bpp de Lullabies; "
            f"achei pal={len(pals)} gfx={len(gfxs)}."
        )

    pal_rel = pals[0].relative_to(root).as_posix()
    gfx_rel = gfxs[0].relative_to(root).as_posix()
    print("\nLULLABIES TO PARALYZE assets:")
    print("  PAL ->", pal_rel)
    print("  GFX ->", gfx_rel)
    return pal_rel, gfx_rel

def function_span(text, name):
    m = re.search(r'static\s+u8\s+' + re.escape(name) + r'\s*\([^\)]*\)\s*\{', text)
    if not m:
        return None
    brace = text.find("{", m.start())
    depth = 0
    for i in range(brace, len(text)):
        if text[i] == "{":
            depth += 1
        elif text[i] == "}":
            depth -= 1
            if depth == 0:
                return m.start(), i + 1
    return None

def patch_covers(text, pal_rel, gfx_rel):
    enum_id = "RADIO_COVER_LULLABIES_TO_PARALYZE"

    # 1) Enum.
    if enum_id not in text:
        m = re.search(r'(\s*)RADIO_COVER_COUNT\s*,?', text)
        if not m:
            die("Nao achei RADIO_COVER_COUNT.")
        indent = m.group(1)
        text = text[:m.start()] + indent + enum_id + ",\n" + text[m.start():]

    # 2) Asset declarations.
    if "sRadioCoverLullabiesToParalyze_Pal" not in text:
        anchor = 'static const u16 sRadioCoverSongsForTheDeaf_Pal[]'
        pos = text.find(anchor)
        if pos < 0:
            die("Nao achei declarations de Songs for the Deaf.")
        decl = (
            f'static const u16 sRadioCoverLullabiesToParalyze_Pal[] = INCBIN_U16("{pal_rel}");\n'
            f'static const u32 sRadioCoverLullabiesToParalyze_Gfx[] = INCBIN_U32("{gfx_rel}");\n'
        )
        text = text[:pos] + decl + text[pos:]

    # 3) Sheet table.
    sheet_line = (
        "    [RADIO_COVER_LULLABIES_TO_PARALYZE] = "
        "{sRadioCoverLullabiesToParalyze_Gfx, 0x800, TAG_RADIO_COVER},"
    )
    if sheet_line not in text:
        anchor = "    [RADIO_COVER_SONGS_FOR_THE_DEAF] = {sRadioCoverSongsForTheDeaf_Gfx, 0x800, TAG_RADIO_COVER},"
        pos = text.find(anchor)
        if pos < 0:
            die("Nao achei sRadioCoverSheets / Songs for the Deaf.")
        text = text[:pos] + sheet_line + "\n" + text[pos:]

    # 4) Palette table.
    pal_line = (
        "    [RADIO_COVER_LULLABIES_TO_PARALYZE] = "
        "{sRadioCoverLullabiesToParalyze_Pal, TAG_RADIO_COVER},"
    )
    if pal_line not in text:
        anchor = "    [RADIO_COVER_SONGS_FOR_THE_DEAF] = {sRadioCoverSongsForTheDeaf_Pal, TAG_RADIO_COVER},"
        pos = text.find(anchor)
        if pos < 0:
            die("Nao achei sRadioCoverPalettes / Songs for the Deaf.")
        text = text[:pos] + pal_line + "\n" + text[pos:]

    # 5) Song -> cover mapping, only inside Radio_GetAlbumCoverForSong.
    span = function_span(text, "Radio_GetAlbumCoverForSong")
    if span is None:
        die("Nao achei Radio_GetAlbumCoverForSong.")
    a, b = span
    fn = text[a:b]

    if "case MUS_NO_ONE_KNOWS:" not in fn:
        anchor = "    case MUS_GO_WITH_THE_FLOW:"
        if anchor not in fn:
            die("Nao achei cover mapping de GO WITH THE FLOW.")
        fn = fn.replace(anchor, "    case MUS_NO_ONE_KNOWS:\n" + anchor, 1)

    if "case MUS_I_APPEAR_MISSING:" not in fn:
        anchor = "    case MUS_MY_GOD_IS_THE_SUN:"
        if anchor not in fn:
            die("Nao achei cover mapping de MY GOD IS THE SUN.")
        fn = fn.replace(anchor, "    case MUS_I_APPEAR_MISSING:\n" + anchor, 1)

    if "case MUS_LITTLE_SISTER:" not in fn:
        anchor = "    case MUS_3S_AND_7S:"
        if anchor not in fn:
            die("Nao achei cover mapping de 3S AND 7S.")
        block = (
            "    case MUS_LITTLE_SISTER:\n"
            "        return RADIO_COVER_LULLABIES_TO_PARALYZE;\n"
        )
        fn = fn.replace(anchor, block + anchor, 1)

    text = text[:a] + fn + text[b:]

    # Final checks.
    checks = [
        "RADIO_COVER_LULLABIES_TO_PARALYZE",
        "sRadioCoverLullabiesToParalyze_Pal",
        "sRadioCoverLullabiesToParalyze_Gfx",
        "case MUS_NO_ONE_KNOWS:",
        "case MUS_LITTLE_SISTER:",
        "case MUS_I_APPEAR_MISSING:",
    ]
    for c in checks:
        if c not in text:
            die("Cover patch incompleto: " + c)

    return text

def main():
    root = Path.cwd()
    here = Path(__file__).resolve().parent

    radio = root / "src/radio.c"
    cfg = root / "sound/songs/midi/midi.cfg"
    songs_h = root / "include/constants/songs.h"
    mid_target = root / "sound/songs/midi/mus_no_one_knows.mid"
    s_target = root / "sound/songs/midi/mus_no_one_knows.s"

    for p in (radio, cfg, songs_h, mid_target):
        if not p.exists():
            die(f"Nao achei {p}. Rode da raiz e instale primeiro o pack QOTSA anterior.")

    songs_text = songs_h.read_text()
    for const in ("MUS_NO_ONE_KNOWS", "MUS_LITTLE_SISTER", "MUS_I_APPEAR_MISSING"):
        if not re.search(r'^#define\s+' + const + r'\s+\d+\b', songs_text, re.M):
            die(f"{const} ainda nao esta registrado. Rode primeiro o pack QOTSA anterior.")

    pack = here / PACK_ZIP
    if not pack.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python em PHYTON/.")

    slots = rock_slots(root)
    pal_rel, gfx_rel = detect_lullabies_assets(root)

    with zipfile.ZipFile(pack, "r") as z:
        data = z.read("assets/mus_no_one_knows.mid")
    if hashlib.sha256(data).hexdigest() != MIDI_SHA:
        die("SHA invalido para No One Knows V2.")
    data = patch_programs(data, slots)

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"no_one_knows_guitar_covers_v2_{stamp}"
    touched = [radio, cfg, mid_target, s_target]
    for p in touched:
        backup(p, root, bdir)
    originals = {p: (p.read_bytes() if p.exists() else None) for p in touched}

    def rollback():
        print("\n[ROLLBACK] Restaurando V1...")
        for p, raw in originals.items():
            if raw is None:
                if p.exists():
                    p.unlink()
            else:
                p.parent.mkdir(parents=True, exist_ok=True)
                p.write_bytes(raw)

    try:
        # No One Knows MIDI first.
        mid_target.write_bytes(data)
        os.utime(mid_target, None)
        cfg.write_text(set_cfg(cfg.read_text()))
        os.utime(cfg, None)

        # Generate .s directly, no make.
        mid2agb = root / "tools/mid2agb/mid2agb"
        if not mid2agb.exists():
            die("Nao achei tools/mid2agb/mid2agb.")
        subprocess.run(
            [str(mid2agb), str(mid_target), str(s_target)] + CFG.split(),
            cwd=root,
            check=True
        )
        verify_symbol(s_target)

        # Album covers.
        radio.write_text(patch_covers(radio.read_text(), pal_rel, gfx_rel))
        os.utime(radio, None)

        # Only stale products.
        stale = [
            root / "build/modern/sound/songs/midi/mus_no_one_knows.o",
            root / "build/modern/sound/songs/midi/mus_no_one_knows.d",
            root / "build/modern/src/radio.o",
            root / "build/modern/src/radio.d",
        ]
        for p in stale:
            if p.exists():
                print("rm", p.relative_to(root))
                p.unlink()

        print("\n============================================================")
        print("NO ONE KNOWS V2 + QOTSA COVERS INSTALADO")
        print("============================================================")
        print("NO ONE KNOWS:")
        print("  - guitarra principal agora usa registro alto")
        print("  - notas graves sobem SOMENTE por oitava")
        print("  - pitch class / tom harmonico nao muda")
        print("  - partes agudas que ja estavam certas ficam intactas")
        print("  - baixo, segunda guitarra, tempo e bateria continuam V1")
        print("")
        print("CAPAS:")
        print("  NO ONE KNOWS      -> SONGS FOR THE DEAF (ja existente)")
        print("  LITTLE SISTER     -> LULLABIES TO PARALYZE (nova definicao)")
        print("  I APPEAR MISSING  -> LIKE CLOCKWORK (ja existente)")
        print("")
        print("Nao altera ordem da ROCK METAL.")
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
