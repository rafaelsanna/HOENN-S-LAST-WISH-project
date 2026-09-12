#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os, subprocess

PACK_ZIP = "RADIO_REMASTER_LUGIA_SHOUSHIN_FAINT_V2.zip"

SONGS = [
    {
        "stem": "mus_lugias_song",
        "asset": "assets/mus_lugias_song.mid",
        "sha": "533417bd89f65ff8a399e97aefd7619d9dab7c5269031ed6ddfbf972598d0788",
        "group": "brothers",
        "cfg": "-G_brothers -R20 -V090",
        "roles": {
            "ROLE_PIANO": "piano",
            "ROLE_VIOLIN": "violin",
        },
    },
    {
        "stem": "mus_shoushin_no_kiki",
        "asset": "assets/mus_shoushin_no_kiki.mid",
        "sha": "924532678536b359f57dc143f77cf645d8dfabb8688957f22ba52f4ee5bbbcc6",
        "group": "brothers",
        "cfg": "-G_brothers -R20 -V090",
        "roles": {
            "ROLE_PIANO": "piano",
            "ROLE_VIOLIN": "violin",
        },
    },
    {
        "stem": "mus_faint",
        "asset": "assets/mus_faint.mid",
        "sha": "a8ccd285a551a27a63a70d46706a825185bfb461e3bdc7fbbc09fc22ed35e4e9",
        "group": "hlw_rock_metal",
        "cfg": "-G_hlw_rock_metal -R16 -V090",
        "roles": {
            "ROLE_VIOLIN": "violin",
            "ROLE_GUITAR": "guitar",
            "ROLE_BASS": "bass",
            "ROLE_DRUMS": "drums",
        },
    },
]

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
        for line in lines[start+1:end]:
            s = line.strip()
            if s.startswith("voice_") and not s.startswith("voice_group"):
                voices.append((s.split("@", 1)[0].rstrip(), s))
        return p, lines, start, end, voices

    return None, None, None, None, None

def brothers_slots(root):
    p, lines, start, end, voices = find_group(root, "brothers")
    if p is None or len(voices) < 2:
        die("Nao achei voice_group brothers.")

    piano = None
    violin = None
    for i, (clean, original) in enumerate(voices):
        s = original.lower()
        if piano is None and "piano" in s and "bass" not in s and "drum" not in s:
            piano = i
        if violin is None and any(k in s for k in ("violin", "fiddle", "solo_string")):
            violin = i

    # Proven Brothers layout from the successful FMA/Brothers remaster.
    if piano is None:
        piano = 0
    if violin is None:
        violin = 1

    if max(piano, violin) >= len(voices):
        die("brothers nao possui piano/violin nos slots esperados.")

    print("\nBROTHERS:")
    print(f"  PIANO  -> {piano:03d}: {voices[piano][1]}")
    print(f"  VIOLIN -> {violin:03d}: {voices[violin][1]}")

    return p, piano, violin, voices[violin][0]

def rock_slots_and_violin(root, brothers_violin_clean):
    p, lines, start, end, voices = find_group(root, "hlw_rock_metal")
    if p is None:
        die("Nao achei voice_group hlw_rock_metal.")

    def choose(kind):
        ranked = []
        for i, (clean, original) in enumerate(voices):
            s = original.lower()
            score = 0

            if kind == "guitar":
                if "bass" in s or "drum" in s:
                    continue
                if "overdrive" in s and "guitar" in s:
                    score += 1400
                if "distort" in s and "guitar" in s:
                    score += 1150
                if "guitar" in s:
                    score += 350
                if "_high" in s or " high" in s:
                    score -= 250

            elif kind == "bass":
                if "drum" in s:
                    continue
                if "fingered_bass" in s:
                    score += 1500
                elif "bass" in s:
                    score += 700

            elif kind == "drums":
                if "hlw_rock_metal_drumset" in s:
                    score += 1800
                elif "drumset" in s:
                    score += 1000
                elif "drum" in s:
                    score += 500

            if score > 0:
                ranked.append((score, i, original))

        if not ranked:
            die(f"Nao achei {kind} em hlw_rock_metal.")
        return max(ranked)

    guitar = choose("guitar")
    bass = choose("bass")
    drums = choose("drums")

    violin_slot = None
    for i, (clean, original) in enumerate(voices):
        if clean == brothers_violin_clean:
            violin_slot = i
            break

    if violin_slot is None:
        violin_slot = len(voices)
        if violin_slot > 127:
            die("hlw_rock_metal ja possui 128 voices.")
        insertion = f"    {brothers_violin_clean} @ FAINT V2 BROTHERS VIOLIN"
        new_lines = lines[:end] + [insertion] + lines[end:]
        p.write_text("\n".join(new_lines) + "\n")
        print(f"\nBrothers violin adicionado ao hlw_rock_metal slot {violin_slot:03d}")

    print("\nFAINT / HLW_ROCK_METAL:")
    print(f"  VIOLIN -> {violin_slot:03d}: Brothers violin")
    print(f"  GUITAR -> {guitar[1]:03d}: {guitar[2]}")
    print(f"  BASS   -> {bass[1]:03d}: {bass[2]}")
    print(f"  DRUMS  -> {drums[1]:03d}: {drums[2]}")

    return p, {
        "violin": violin_slot,
        "guitar": guitar[1],
        "bass": bass[1],
        "drums": drums[1],
    }

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
    seen = set()

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
                if role not in slots:
                    die(f"Role {role} sem slot.")
                for off in offsets:
                    data[off] = slots[role]
                seen.add(tag)
                break

        pos = end

    missing = set(role_tags) - seen
    if missing:
        die("Tracks nao patchadas: " + ", ".join(sorted(missing)))

    return bytes(data)

def set_cfg(text, stem, options):
    line = f"{stem}.mid: {options}"
    m = re.search(r'^' + re.escape(stem) + r'\.mid:.*$', text, re.M)
    if m:
        return text[:m.start()] + line + text[m.end():]
    if text and not text.endswith("\n"):
        text += "\n"
    return text + line + "\n"

def verify_symbol(s_path, stem):
    if not s_path.exists():
        die(f"mid2agb nao criou {s_path}.")
    text = s_path.read_text(errors="ignore")
    if not re.search(r'^\s*\.global\s+' + re.escape(stem) + r'\s*$', text, re.M):
        die(f"{s_path.name} nao exporta .global {stem}.")
    if not re.search(r'^' + re.escape(stem) + r':\s*$', text, re.M):
        die(f"{s_path.name} nao possui label {stem}:.")

def main():
    root = Path.cwd()
    script_dir = Path(__file__).resolve().parent

    cfg = root / "sound/songs/midi/midi.cfg"
    if not cfg.exists():
        die("Nao achei midi.cfg. Rode da raiz do pokeemerald-expansion.")

    for song in SONGS:
        target = root / f"sound/songs/midi/{song['stem']}.mid"
        if not target.exists():
            die(f"Musica existente nao encontrada: {target}")

    pack = script_dir / PACK_ZIP
    if not pack.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python em PHYTON/.")

    brothers_file, piano_slot, violin_slot, violin_clean = brothers_slots(root)

    # Find rock group now so it can be backed up BEFORE any append.
    rock_file, _, _, _, _ = find_group(root, "hlw_rock_metal")
    if rock_file is None:
        die("Nao achei hlw_rock_metal.")

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"lugia_shoushin_faint_v2_{stamp}"

    touched = [cfg, brothers_file, rock_file]
    for song in SONGS:
        touched += [
            root / f"sound/songs/midi/{song['stem']}.mid",
            root / f"sound/songs/midi/{song['stem']}.s",
        ]

    # unique paths
    touched = list(dict.fromkeys(touched))
    for p in touched:
        backup(p, root, bdir)

    originals = {p: (p.read_bytes() if p.exists() else None) for p in touched}

    def rollback():
        print("\n[ROLLBACK] Restaurando os ports anteriores...")
        for p, data in originals.items():
            if data is None:
                if p.exists():
                    p.unlink()
            else:
                p.parent.mkdir(parents=True, exist_ok=True)
                p.write_bytes(data)

    try:
        # This may append exactly one violin line to hlw_rock_metal.
        _, rock_slots = rock_slots_and_violin(root, violin_clean)

        slot_maps = {
            "mus_lugias_song": {"piano": piano_slot, "violin": violin_slot},
            "mus_shoushin_no_kiki": {"piano": piano_slot, "violin": violin_slot},
            "mus_faint": rock_slots,
        }

        with zipfile.ZipFile(pack, "r") as z:
            raw_assets = {}
            for song in SONGS:
                data = z.read(song["asset"])
                if hashlib.sha256(data).hexdigest() != song["sha"]:
                    die(f"SHA invalido: {song['stem']}")
                data = patch_programs(data, song["roles"], slot_maps[song["stem"]])
                raw_assets[song["stem"]] = data

        # Install all MIDIs and cfg.
        cfg_text = cfg.read_text()
        for song in SONGS:
            target = root / f"sound/songs/midi/{song['stem']}.mid"
            target.write_bytes(raw_assets[song["stem"]])
            os.utime(target, None)
            cfg_text = set_cfg(cfg_text, song["stem"], song["cfg"])

        cfg.write_text(cfg_text)
        os.utime(cfg, None)

        # Generate .s DIRECTLY. No make and definitely no make -B.
        mid2agb = root / "tools/mid2agb/mid2agb"
        if not mid2agb.exists():
            die(
                "Nao achei tools/mid2agb/mid2agb. "
                "Nao vou chamar make automaticamente. Compile a ferramenta separadamente e rode o installer de novo."
            )

        print("\nGerando os 3 .s diretamente com mid2agb...")
        for song in SONGS:
            mid_path = root / f"sound/songs/midi/{song['stem']}.mid"
            s_path = root / f"sound/songs/midi/{song['stem']}.s"

            cmd = [str(mid2agb), str(mid_path), str(s_path)] + song["cfg"].split()
            subprocess.run(cmd, cwd=root, check=True)
            verify_symbol(s_path, song["stem"])
            print(f"  OK: {song['stem']}.s exporta {song['stem']}")

        # Remove only stale objects/deps. Never delete verified .s.
        stale = [
            root / "build/modern/data/sound_data.o",
            root / "build/modern/data/sound_data.d",
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

        print("\n============================================================")
        print("LUGIA + SHOUSHIN + FAINT V2 INSTALADOS")
        print("============================================================")
        print("LUGIA'S SONG:")
        print("  - piano forte na base + melodia inferior")
        print("  - Brothers violin na melodia superior")
        print("  - 80 BPM / tick 0")
        print("")
        print("SHOUSHIN NO KIKI:")
        print("  - piano bem mais presente")
        print("  - Brothers violin no lead superior")
        print("  - 96 BPM / tick 0")
        print("")
        print("FAINT - LINKIN PARK:")
        print("  - violin no riff de strings/synth")
        print("  - guitarra Brad+Mike em power shape")
        print("  - baixo Phoenix")
        print("  - bateria original traduzida para 36/40/42")
        print("  - 139 BPM / tick 0")
        print("")
        print("NAO alterei cadastro/ordem da Radio.")
        print("NAO usei make e NAO usei make -B.")
        print("Os 3 .s foram gerados e verificados antes de concluir.")
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
