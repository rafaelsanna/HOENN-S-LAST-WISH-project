#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os, struct, statistics, collections

PACK_ZIP = "RADIO_GAMES_ORGANIZE_DIVINE_GRACE_EVERLASTING_V4.zip"
EVER_SHA = "5f8d149d00f74cef262e0adf9e45ab14da39d58bcc2850ceaf179d21daa251ec"

def die(msg):
    print("\n[ERRO]", msg)
    raise RuntimeError(msg)

def backup(path, root, bdir):
    if not path.exists():
        return
    dst = bdir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

# ------------------------------------------------------------------
# VOICEGROUP: reuse the proven Brothers piano + violin.
# ------------------------------------------------------------------
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
        die("Nao achei voice_group brothers.")

    piano = None
    violin = None
    for i, line in enumerate(voices):
        s = line.lower()
        if piano is None and "piano" in s and "bass" not in s and "drum" not in s:
            piano = i
        if violin is None and any(k in s for k in ("violin", "fiddle", "solo_string")):
            violin = i

    # Proven layout from Brothers/FMA.
    if piano is None:
        piano = 0
    if violin is None:
        violin = 1

    if max(piano, violin) >= len(voices):
        die("brothers nao possui piano/violin nos slots esperados.")

    print("\nBROTHERS:")
    print(f"  PIANO  -> {piano:03d}: {voices[piano]}")
    print(f"  VIOLIN -> {violin:03d}: {voices[violin]}")
    return piano, violin

# ------------------------------------------------------------------
# MIDI binary helpers.
# ------------------------------------------------------------------
def read_vlq(data, pos):
    value = 0
    while True:
        if pos >= len(data):
            raise ValueError("VLQ truncado")
        b = data[pos]
        pos += 1
        value = (value << 7) | (b & 0x7F)
        if not (b & 0x80):
            return value, pos

def write_vlq(value):
    value = max(0, int(value))
    out = [value & 0x7F]
    value >>= 7
    while value:
        out.append((value & 0x7F) | 0x80)
        value >>= 7
    return bytes(reversed(out))

def parse_midi(path):
    data = path.read_bytes()
    if data[:4] != b"MThd":
        die(f"MIDI invalido: {path}")

    hlen = int.from_bytes(data[4:8], "big")
    hdr = data[8:8+hlen]
    fmt, ntrks, division = struct.unpack(">HHH", hdr[:6])
    if division & 0x8000:
        die("MIDI SMPTE nao suportado por este remaster.")

    pos = 8 + hlen
    tracks = []

    for ti in range(ntrks):
        if data[pos:pos+4] != b"MTrk":
            die("Chunk MTrk ausente.")
        ln = int.from_bytes(data[pos+4:pos+8], "big")
        chunk = data[pos+8:pos+8+ln]
        pos += 8 + ln

        p = 0
        tick = 0
        running = None
        name = ""
        events = []
        active = collections.defaultdict(list)
        notes = []

        while p < len(chunk):
            delta, p = read_vlq(chunk, p)
            tick += delta
            if p >= len(chunk):
                break

            status = chunk[p]
            if status < 0x80:
                if running is None:
                    die("Running status invalido.")
                status = running
            else:
                p += 1
                if status < 0xF0:
                    running = status
                else:
                    running = None

            if status == 0xFF:
                typ = chunk[p]
                p += 1
                length, p = read_vlq(chunk, p)
                payload = bytes(chunk[p:p+length])
                p += length
                if typ == 0x03:
                    name = payload.decode("latin1", errors="ignore")
                if typ in (0x51, 0x58, 0x59):
                    events.append((tick, "meta", typ, payload))
                continue

            if status in (0xF0, 0xF7):
                length, p = read_vlq(chunk, p)
                p += length
                continue

            typ = status & 0xF0
            ch = status & 0x0F

            if typ in (0xC0, 0xD0):
                d1 = chunk[p]
                p += 1
                continue

            d1 = chunk[p]
            d2 = chunk[p+1]
            p += 2

            if typ == 0x90 and d2 > 0:
                active[(ch, d1)].append((tick, d2))
            elif typ == 0x80 or (typ == 0x90 and d2 == 0):
                key = (ch, d1)
                if active[key]:
                    st, vel = active[key].pop(0)
                    notes.append((st, max(st+1, tick), ch, d1, vel))

        tracks.append({"index": ti, "name": name, "notes": notes, "meta": events})

    return {"format": fmt, "tpb": division, "tracks": tracks}

def encode_track(events):
    # events: (tick, priority, bytes)
    events = sorted(events, key=lambda x: (x[0], x[1]))
    out = bytearray()
    last = 0
    for tick, pri, raw in events:
        out += write_vlq(tick - last)
        out += raw
        last = tick
    out += b"\x00\xff\x2f\x00"
    return b"MTrk" + len(out).to_bytes(4, "big") + bytes(out)

def meta_name(name):
    b = name.encode("latin1", errors="replace")
    return b"\xff\x03" + write_vlq(len(b)) + b

def pc(ch, program):
    return bytes([0xC0 | ch, program & 0x7F])

def cc(ch, control, value):
    return bytes([0xB0 | ch, control & 0x7F, value & 0x7F])

def note_on(ch, note, vel):
    return bytes([0x90 | ch, note & 0x7F, vel & 0x7F])

def note_off(ch, note):
    return bytes([0x80 | ch, note & 0x7F, 0])

def fit(note, lo, hi):
    note = int(note)
    while note < lo:
        note += 12
    while note > hi:
        note -= 12
    return note

def clamp(v, lo, hi):
    return max(lo, min(hi, int(round(v))))

def overlap_ratio(rows):
    if len(rows) < 2:
        return 0.0
    rows = sorted(rows)
    overlaps = 0
    prev_end = rows[0][1]
    for st, en, *_ in rows[1:]:
        if st < prev_end:
            overlaps += 1
        prev_end = max(prev_end, en)
    return overlaps / max(1, len(rows)-1)

def choose_melody_stream(parsed):
    candidates = []
    keywords = ("flute", "oboe", "clarinet", "lead", "melody", "soprano", "recorder", "whistle", "horn")

    for tr in parsed["tracks"]:
        by_ch = collections.defaultdict(list)
        for row in tr["notes"]:
            st, en, ch, note, vel = row
            if ch != 9:
                by_ch[ch].append(row)

        for ch, rows in by_ch.items():
            if len(rows) < 8:
                continue

            pitches = [r[3] for r in rows]
            median_pitch = statistics.median(pitches)
            mono = 1.0 - overlap_ratio(rows)
            name = tr["name"].lower()
            bonus = 22 if any(k in name for k in keywords) else 0
            if "bass" in name:
                bonus -= 50
            if median_pitch < 52:
                bonus -= 25

            count_bonus = min(12, len(rows) / 25)
            score = median_pitch + mono * 35 + bonus + count_bonus
            candidates.append((score, tr["index"], ch, rows, tr["name"], mono, median_pitch))

    if not candidates:
        die("Nao consegui identificar a melodia de Divine Grace.")

    best = max(candidates, key=lambda x: x[0])
    print("\nDIVINE GRACE melody source:")
    print(f"  track {best[1]} / channel {best[2]} / name='{best[4]}'")
    print(f"  median pitch={best[6]:.1f} / monophony={best[5]:.2f}")
    return best[1], best[2]

def remaster_divine_grace(source, target, piano_slot, violin_slot):
    parsed = parse_midi(source)
    tpb = parsed["tpb"]

    # Find first audible tick, then shift so radio playback begins immediately.
    all_notes = [r for tr in parsed["tracks"] for r in tr["notes"] if r[2] != 9]
    if not all_notes:
        die("Divine Grace nao possui notas melodicas.")
    first_tick = min(r[0] for r in all_notes)

    mel_ti, mel_ch = choose_melody_stream(parsed)

    melody_raw = []
    accompaniment = []
    meta = []

    for tr in parsed["tracks"]:
        for tick, kind, typ, payload in tr["meta"]:
            meta.append((max(0, tick-first_tick), typ, payload))

        for st, en, ch, note, vel in tr["notes"]:
            if ch == 9:
                continue

            st2 = max(0, st-first_tick)
            en2 = max(st2+1, en-first_tick)

            if tr["index"] == mel_ti and ch == mel_ch:
                melody_raw.append((st2, en2, note, vel))
            else:
                accompaniment.append((st2, en2, note, vel))

    # Violin: one clear top voice. For simultaneous notes, retain the highest.
    by_onset = collections.defaultdict(list)
    for row in melody_raw:
        by_onset[row[0]].append(row)

    violin = []
    for st in sorted(by_onset):
        row = max(by_onset[st], key=lambda r: r[2])
        _, en, note, vel = row
        nn = fit(note, 57, 84)
        violin.append((st, en, nn, clamp(37 + vel * 0.32, 52, 74)))

    # Piano: every non-wind/non-drum source voice becomes actual piano.
    # Limit onset clusters to four notes so GBA stays clean.
    p_onsets = collections.defaultdict(list)
    for st, en, note, vel in accompaniment:
        nn = fit(note, 36, 84)
        p_onsets[st].append((st, en, nn, vel))

    piano = []
    for st in sorted(p_onsets):
        rows = sorted(p_onsets[st], key=lambda r: r[2])
        if len(rows) > 4:
            # preserve bass + highest voices rather than a muddy cluster
            keep = [rows[0]] + rows[-3:]
        else:
            keep = rows
        used = set()
        for _, en, nn, vel in keep:
            if nn in used:
                continue
            used.add(nn)
            piano.append((st, en, nn, clamp(34 + vel * 0.34, 48, 72)))

    # Add a very soft lower-octave piano shadow of longer violin notes.
    # This makes it feel like piano+violin rather than "violin over empty air".
    for st, en, nn, vel in violin:
        if en - st >= int(0.75 * tpb):
            shadow = fit(nn - 12, 45, 72)
            piano.append((st, en, shadow, 44))

    # Conductor: de-duplicate same meta at same tick.
    conductor_events = [(0, 0, meta_name("DIVINE GRACE | PIANO + VIOLIN V2"))]
    seen_meta = set()
    for tick, typ, payload in sorted(meta):
        key = (tick, typ, payload)
        if key in seen_meta:
            continue
        seen_meta.add(key)
        conductor_events.append((tick, 1, b"\xff" + bytes([typ]) + write_vlq(len(payload)) + payload))

    # If source somehow has no tempo meta, use 120 BPM.
    if not any(typ == 0x51 for _, typ, _ in meta):
        conductor_events.append((0, 1, b"\xff\x51\x03\x07\xa1\x20"))

    piano_events = [
        (0, 0, meta_name("ROLE_PIANO | all accompaniment, no winds")),
        (0, 1, pc(0, piano_slot)),
        (0, 2, cc(0, 7, 94)),
        (0, 2, cc(0, 10, 54)),
    ]
    for st, en, note, vel in piano:
        piano_events.append((st, 4, note_on(0, note, vel)))
        piano_events.append((en, 3, note_off(0, note)))

    violin_events = [
        (0, 0, meta_name("ROLE_VIOLIN | former lead/wind melody")),
        (0, 1, pc(1, violin_slot)),
        (0, 2, cc(1, 7, 78)),
        (0, 2, cc(1, 10, 82)),
    ]
    for st, en, note, vel in violin:
        violin_events.append((st, 4, note_on(1, note, vel)))
        violin_events.append((en, 3, note_off(1, note)))

    tracks = [
        encode_track(conductor_events),
        encode_track(piano_events),
        encode_track(violin_events),
    ]
    header = b"MThd" + (6).to_bytes(4, "big") + struct.pack(">HHH", 1, len(tracks), tpb)
    target.write_bytes(header + b"".join(tracks))
    os.utime(target, None)

    print(f"  piano notes : {len(piano)}")
    print(f"  violin notes: {len(violin)}")
    print(f"  initial silence removed: {first_tick} ticks")

# ------------------------------------------------------------------
# Patch program bytes in Everlasting asset to Brothers piano slot.
# ------------------------------------------------------------------
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

def patch_everlasting_programs(data, piano_slot):
    data = bytearray(data)
    pos = 8 + int.from_bytes(data[4:8], "big")
    patched = 0
    while pos + 8 <= len(data):
        if data[pos:pos+4] != b"MTrk":
            die("Everlasting MIDI invalido.")
        ln = int.from_bytes(data[pos+4:pos+8], "big")
        start = pos + 8
        end = start + ln
        name, offsets = track_program_offsets(data[start:end], start)
        if "ROLE_PIANO" in name.upper():
            for off in offsets:
                data[off] = piano_slot
                patched += 1
        pos = end
    if patched < 3:
        die("Nao consegui mapear os 3 pianos de Everlasting.")
    return bytes(data)

def set_cfg(text, stem, options):
    line = f"{stem}.mid: {options}"
    m = re.search(r'^' + re.escape(stem) + r'\.mid:.*$', text, re.M)
    if m:
        return text[:m.start()] + line + text[m.end():]
    if text and not text.endswith("\n"):
        text += "\n"
    return text + line + "\n"

# ------------------------------------------------------------------
# GAMES station organization.
# Reorders ONLY sStation_Games. No music IDs are added/removed except
# MUS_THEME_RAGNAROK is placed in the Ragnarok block if already registered.
# ------------------------------------------------------------------
GROUPS = [
    ("RAGNAROK", [
        "MUS_THEME_RAGNAROK",
        "MUS_ANCIENT_GROOVER",
        "MUS_DIVINE_GRACE",
        "MUS_THEME_OF_MORROC",
        "MUS_EVERLASTING_WANDERERS",
        "MUS_THEME_OF_GEFFEN",
        "MUS_THEME_OF_ALBERTA",
        "MUS_THEME_OF_PRONTERA",
    ]),
    ("CHRONO CROSS", [
        "MUS_SCARS_OF_TIME",
    ]),
    ("ZELDA", [
        "MUS_MIDNAS_LAMENT",
    ]),
    ("POKEMON SNAP", [
        "MUS_THE_YOUNG_PHOTOGRAPHER",
    ]),
    ("GRAND CHASE", [
        "MUS_HOPE_GRAND_CHASE",
    ]),
    ("UMINEKO", [
        "MUS_UMINEKO_HOPE",
        "MUS_UMINEKO_600_MILLION",
        "MUS_UMINEKO_WINGLESS",
        "MUS_UMINEKO_WORLDEND",
        "MUS_UMINEKO_FAR",
        "MUS_UMINEKO_WORLDEND_DOMINATOR",
    ]),
    ("TOUHOU 5", [
        "MUS_TOUHOU5_TITLE",
        "MUS_TOUHOU5_STAGE1_BOSS",
        "MUS_TOUHOU5_STAGE2",
        "MUS_TOUHOU5_STAGE3_BOSS",
        "MUS_TOUHOU5_STAGE5_BOSS",
    ]),
    ("TOUHOU 6", ["MUS_TOUHOU6_STAGE2_BOSS"]),
    ("TOUHOU 7", ["MUS_TOUHOU7_STAGE6_BOSS"]),
    ("TOUHOU 8", ["MUS_TOUHOU8_STAGE1_BOSS"]),
    ("TOUHOU 10", [
        "MUS_TOUHOU10_STAGE2",
        "MUS_TOUHOU10_STAGE5_BOSS",
    ]),
    ("POKEMON MYSTERY DUNGEON", [
        "MUS_TIME_GEAR",
        "MUS_DONT_EVER_FORGET",
        "MUS_TEMPORAL_TOWER",
        "MUS_TEMPORAL_SPIRE",
        "MUS_THROUGH_THE_SEA_OF_TIME",
    ]),
    ("SUPERNOVA", [
        "MUS_INTRO_SUPERNOVA",
    ]),
]

def organize_games_station(text):
    pat = r'static const u16\s+sStation_Games\[\]\s*=\s*\{(.*?)\n\};'
    m = re.search(pat, text, re.S)
    if not m:
        die("Nao achei sStation_Games em src/radio.c.")

    old_body = m.group(1)
    existing = re.findall(r'\bMUS_[A-Z0-9_]+\b', old_body)
    existing_set = set(existing)

    # Theme was added by the previous installer. If it exists as a constant
    # but for some reason was not yet in the station, include it.
    if "MUS_THEME_RAGNAROK" in text:
        existing_set.add("MUS_THEME_RAGNAROK")

    ordered = []
    used = set()
    lines = []

    for label, members in GROUPS:
        present = [x for x in members if x in existing_set]
        if not present:
            continue
        lines.append(f"    // {label}")
        for x in present:
            lines.append(f"    {x},")
            ordered.append(x)
            used.add(x)
        lines.append("")

    # Preserve any future/unknown GAMES songs, in their previous order.
    unknown = [x for x in existing if x not in used and x != "MUS_TETRIS_MAIN_THEME"]
    if unknown:
        lines.append("    // OTHER GAMES")
        for x in unknown:
            lines.append(f"    {x},")
            ordered.append(x)
            used.add(x)
        lines.append("")

    # User explicitly wants Tetris to be the LAST song.
    if "MUS_TETRIS_MAIN_THEME" in existing_set:
        lines.append("    // TETRIS - LAST")
        lines.append("    MUS_TETRIS_MAIN_THEME,")
        ordered.append("MUS_TETRIS_MAIN_THEME")
        lines.append("")

    lines.append("    STATION_END")
    new_body = "\n" + "\n".join(lines)
    text = text[:m.start(1)] + new_body + text[m.end(1):]

    print("\nGAMES reorganizada:")
    for i, x in enumerate(ordered, 1):
        print(f"  {i:02d}. {x}")

    return text

def main():
    root = Path.cwd()
    script_dir = Path(__file__).resolve().parent

    radio = root / "src/radio.c"
    cfg = root / "sound/songs/midi/midi.cfg"
    divine = root / "sound/songs/midi/mus_divine_grace.mid"
    everlasting = root / "sound/songs/midi/mus_everlasting_wanderers.mid"

    for p in (radio, cfg, divine, everlasting):
        if not p.exists():
            die(f"Nao achei {p}. Rode da raiz do pokeemerald-expansion.")

    pack = script_dir / PACK_ZIP
    if not pack.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python em PHYTON/.")

    piano_slot, violin_slot = brothers_slots(root)

    with zipfile.ZipFile(pack, "r") as z:
        ever_data = z.read("assets/mus_everlasting_wanderers.mid")
    if hashlib.sha256(ever_data).hexdigest() != EVER_SHA:
        die("SHA invalido para Everlasting V4.")
    ever_data = patch_everlasting_programs(ever_data, piano_slot)

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"games_organize_divine_everlasting_v4_{stamp}"

    touched = [
        radio, cfg,
        divine,
        root / "sound/songs/midi/mus_divine_grace.s",
        everlasting,
        root / "sound/songs/midi/mus_everlasting_wanderers.s",
    ]
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
        # 1) Remaster Divine Grace from the exact MIDI currently in user's project.
        remaster_divine_grace(divine, divine, piano_slot, violin_slot)

        # 2) Install Everlasting V4.
        everlasting.write_bytes(ever_data)
        os.utime(everlasting, None)

        # 3) Both now use Brothers. No wind voicegroup for Divine.
        cfg_text = cfg.read_text()
        cfg_text = set_cfg(cfg_text, "mus_divine_grace", "-G_brothers -R20 -V090")
        cfg_text = set_cfg(cfg_text, "mus_everlasting_wanderers", "-G_brothers -R15 -V090")
        cfg.write_text(cfg_text)
        os.utime(cfg, None)

        # 4) Organize only the GAMES station.
        radio_text = organize_games_station(radio.read_text())
        radio.write_text(radio_text)
        os.utime(radio, None)

        # 5) Remove ONLY stale object/dependency files.
        #    Never delete .s and never call make / make -B here.
        stale = [
            root / "build/modern/sound/songs/midi/mus_divine_grace.o",
            root / "build/modern/sound/songs/midi/mus_divine_grace.d",
            root / "build/modern/sound/songs/midi/mus_everlasting_wanderers.o",
            root / "build/modern/sound/songs/midi/mus_everlasting_wanderers.d",
            root / "build/modern/src/radio.o",
            root / "build/modern/src/radio.d",
            root / "build/modern/data/sound_data.o",
            root / "build/modern/data/sound_data.d",
        ]
        for p in stale:
            if p.exists():
                print("rm", p.relative_to(root))
                p.unlink()

        # Touch MIDI after everything else, ensuring normal make sees them newer than .s.
        os.utime(divine, None)
        os.utime(everlasting, None)

        print("\n============================================================")
        print("GAMES OPTIMIZATION PACK V4 INSTALADO")
        print("============================================================")
        print("DIVINE GRACE:")
        print("  - piano + violin SOMENTE")
        print("  - sopros removidos como timbre")
        print("  - melodia principal convertida para Brothers violin")
        print("  - restante convertido para Brothers piano")
        print("")
        print("EVERLASTING WANDERERS:")
        print("  - piano only")
        print("  - bass subiu 1 oitava")
        print("  - pad longo virou apoio de piano rearticulado")
        print("  - melodia desceu 1 oitava para parar de soar estridente")
        print("")
        print("RADIO GAMES:")
        print("  - Ragnarok primeiro")
        print("  - THEME (RAGNAROK) abre o bloco")
        print("  - musicas do mesmo jogo ficam juntas")
        print("  - Tetris ficou por ultimo")
        print("")
        print("IMPORTANTE: este installer NAO roda make e NAO usa make -B.")
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
