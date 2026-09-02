#!/usr/bin/env python3
# Port installer / voice mapper for intro_epica_pokeemerald_gba_arranged.mid
# No third-party Python packages required.
from pathlib import Path
import base64, re, shutil, struct, sys

BASE_MIDI_B64 = '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'
TARGET_NAME = "intro_epica_pokeemerald_gba.mid"

ROLES = [
    "piano", "violin", "strings", "choir", "brass",
    "timpani", "bass", "square", "celesta",
]

ROLE_WORDS = {
    "piano": [("piano", 60), ("grand", 30), ("epiano", 20), ("electric_piano", 18)],
    "violin": [("violin", 65), ("fiddle", 55), ("solo_string", 30), ("string", 14)],
    "strings": [("string_ensemble", 70), ("strings", 65), ("string", 45), ("ensemble", 28), ("orchestra", 20), ("violin", 12)],
    "choir": [("choir", 75), ("aahs", 70), ("aah", 65), ("ooh", 60), ("vocal", 40), ("voice", 22), ("chorus", 22)],
    "brass": [("brass", 75), ("trumpet", 55), ("french_horn", 55), ("horn", 42), ("trombone", 45), ("tuba", 30)],
    "timpani": [("timpani", 90), ("timp", 85), ("taiko", 45), ("low_tom", 35), ("tom", 22), ("orchestral", 15)],
    "bass": [("contrabass", 90), ("double_bass", 85), ("acoustic_bass", 70), ("upright", 65), ("bass", 42)],
    "square": [("square", 90), ("pulse", 70), ("chiptune", 50), ("lead", 18)],
    "celesta": [("celesta", 90), ("glock", 65), ("music_box", 60), ("musicbox", 60), ("bell", 38), ("harp", 28), ("piano", 12)],
}

REFERENCE_STEMS = [
    "mus_time_gear", "mus_through_the_sea_of_time", "mus_dont_ever_forget",
    "mus_temporal_tower", "mus_temporal_spire", "mus_title", "mus_intro",
    "mus_hall_of_fame", "mus_awaken_legend", "mus_cave_of_origin",
]


def find_root():
    starts = [Path.cwd(), Path(__file__).resolve().parent]
    for start in starts:
        for p in [start, *start.parents]:
            if (p / "sound/songs/midi/midi.cfg").exists():
                return p
    raise SystemExit("[intro-epica] ERRO: rode este script dentro de ~/pokeemerald-expansion ou PHYTON/.")


def cfg_entries(cfg_text):
    out = {}
    for raw in cfg_text.splitlines():
        s = raw.strip()
        if not s or s.startswith("#") or ":" not in s:
            continue
        name, args = s.split(":", 1)
        m = re.search(r"(?:^|\s)-G_([^\s]+)", args)
        if m:
            out[name.strip()] = (m.group(1), args.strip())
    return out


def locate_reference_midis(root, entries):
    midi_dir = root / "sound/songs/midi"
    refs = []
    for stem in REFERENCE_STEMS:
        for key, (group, args) in entries.items():
            kstem = key[:-4] if key.lower().endswith(".mid") else key
            if kstem == stem:
                p = midi_dir / (kstem + ".mid")
                if p.exists():
                    refs.append((p, group))
    return refs


def read_vlq(buf, pos, end):
    value = 0
    while pos < end:
        b = buf[pos]; pos += 1
        value = (value << 7) | (b & 0x7F)
        if not (b & 0x80):
            return value, pos
    raise ValueError("truncated VLQ")


def midi_tracks_info(path):
    data = path.read_bytes()
    if data[:4] != b"MThd":
        return []
    hlen = struct.unpack(">I", data[4:8])[0]
    pos = 8 + hlen
    tracks = []
    while pos + 8 <= len(data):
        if data[pos:pos+4] != b"MTrk":
            break
        ln = struct.unpack(">I", data[pos+4:pos+8])[0]
        start = pos + 8; end = start + ln; q = start
        running = None; name = ""; program = None
        note_sum = note_count = 0
        while q < end:
            _, q = read_vlq(data, q, end)
            if q >= end: break
            status = data[q]
            if status < 0x80:
                if running is None: break
                status = running
            else:
                q += 1
                if status < 0xF0:
                    running = status
            if status == 0xFF:
                if q >= end: break
                typ = data[q]; q += 1
                n, q = read_vlq(data, q, end)
                payload = data[q:q+n]; q += n
                if typ == 0x03:
                    name = payload.decode("latin1", "ignore")
                continue
            if status in (0xF0, 0xF7):
                n, q = read_vlq(data, q, end); q += n; running = None; continue
            hi = status & 0xF0
            if hi in (0xC0, 0xD0):
                if q >= end: break
                v = data[q]; q += 1
                if hi == 0xC0 and program is None: program = v
            else:
                if q + 2 > end: break
                a, b = data[q], data[q+1]; q += 2
                if hi == 0x90 and b > 0:
                    note_sum += a; note_count += 1
        tracks.append({"name": name.lower(), "program": program, "avg_note": (note_sum / note_count if note_count else None)})
        pos = end
    return tracks


def normalize(s):
    return re.sub(r"[^a-z0-9]+", "_", s.lower()).strip("_")


def name_role_score(role, text):
    n = normalize(text)
    score = 0
    for word, pts in ROLE_WORDS[role]:
        if normalize(word) in n:
            score += pts
    return score


def reference_hints(refs):
    hints = {}
    for path, group in refs:
        per_group = hints.setdefault(group, {r: [] for r in ROLES})
        for tr in midi_tracks_info(path):
            if tr["program"] is None:
                continue
            for role in ROLES:
                sc = name_role_score(role, tr["name"])
                # Pitch-aware little boosts where names are vague.
                avg = tr["avg_note"]
                if avg is not None:
                    if role == "bass" and avg < 48: sc += 8
                    if role in ("violin", "celesta", "square") and avg > 68: sc += 3
                    if role == "timpani" and avg < 52: sc += 3
                if sc > 0:
                    per_group[role].append((sc, tr["program"], path.name, tr["name"]))
    return hints


def find_voicegroup_block(root, group):
    labels = [f"voicegroup_{group}", group]
    exts = {".inc", ".s", ".asm", ".txt"}
    sound = root / "sound"
    for path in sound.rglob("*"):
        if not path.is_file() or path.suffix.lower() not in exts:
            continue
        try:
            txt = path.read_text(encoding="utf-8", errors="ignore")
        except Exception:
            continue
        hit = -1
        for label in labels:
            m = re.search(rf"(?m)^\s*{re.escape(label)}(?::{1,2})?\s*$", txt)
            if m:
                hit = m.end(); break
        if hit < 0:
            continue
        voices = []
        for line in txt[hit:].splitlines():
            s = line.strip()
            if re.match(r"^[A-Za-z_][A-Za-z0-9_]*::?\s*$", s) and voices:
                break
            if re.search(r"\bvoice_[A-Za-z0-9_]+", s):
                voices.append(s)
                if len(voices) >= 128:
                    break
        if voices:
            return path, voices
    return None, []


def voice_score(role, line):
    n = normalize(line)
    sc = name_role_score(role, n)
    is_direct = "voice_directsound" in n
    is_square = "voice_square" in n or "square" in n
    is_wave = "voice_wave" in n
    is_noise = "voice_noise" in n
    is_drum = "drum" in n or "percussion" in n
    if role == "square":
        if is_square: sc += 55
        if is_direct and "square" in n: sc += 25
        if is_noise: sc -= 30
    else:
        if is_direct: sc += 14
        if is_square: sc -= 70
        if is_wave: sc -= 45
        if is_noise: sc -= 90
        if is_drum and role != "timpani": sc -= 50
        if role == "timpani" and is_direct: sc += 8
    return sc


def choose_group_and_programs(root, entries, refs):
    hints = reference_hints(refs)
    candidate_groups = []
    for _, g in refs:
        if g not in candidate_groups: candidate_groups.append(g)
    if "fly_me_to_the_moon" not in candidate_groups:
        candidate_groups.append("fly_me_to_the_moon")

    best = None
    for group in candidate_groups:
        src, voices = find_voicegroup_block(root, group)
        programs = {}
        details = {}
        total = 0
        for role in ROLES:
            candidates = []
            for i, line in enumerate(voices):
                sc = voice_score(role, line)
                if sc > 0:
                    candidates.append((sc, i, "voice", line))
            for sc, prog, fname, tname in hints.get(group, {}).get(role, []):
                # A working reference MIDI using this bank is excellent evidence.
                line = voices[prog] if prog < len(voices) else f"reference track {fname}: {tname}"
                candidates.append((sc + 55, prog, "reference", line))
            if candidates:
                pick = max(candidates, key=lambda x: x[0])
                programs[role] = pick[1]
                details[role] = pick
                total += pick[0]
        coverage = len(programs)
        rank = (coverage, total)
        if best is None or rank > best[0]:
            best = (rank, group, src, voices, programs, details)

    if best is None:
        raise SystemExit("[intro-epica] ERRO: nao encontrei voicegroups candidatos no projeto.")

    _, group, src, voices, programs, details = best

    # Musical fallbacks, always preferring already-selected natural sample voices.
    def fallback(role, alternatives):
        if role in programs: return
        for alt in alternatives:
            if alt in programs:
                programs[role] = programs[alt]
                details[role] = (0, programs[alt], "fallback", f"fallback -> {alt}")
                return
        # Last-resort: first DirectSound sample, avoiding PSG/noise.
        for i, line in enumerate(voices):
            n = normalize(line)
            if "voice_directsound" in n and "drum" not in n:
                programs[role] = i
                details[role] = (0, i, "safe-sample", line)
                return

    fallback("strings", ["violin", "choir"])
    fallback("violin", ["strings", "choir"])
    fallback("choir", ["strings", "violin"])
    fallback("piano", ["celesta", "strings"])
    fallback("celesta", ["piano", "strings"])
    fallback("brass", ["strings", "violin"])
    fallback("bass", ["strings", "piano"])
    fallback("timpani", ["bass", "piano"])
    if "square" not in programs:
        # Only the chiptune lead is allowed to use PSG square.
        for i, line in enumerate(voices):
            if "voice_square" in normalize(line) or "square" in normalize(line):
                programs["square"] = i
                details["square"] = (0, i, "psg-square", line)
                break
        fallback("square", ["celesta", "piano"])

    missing = [r for r in ROLES if r not in programs]
    if missing:
        raise SystemExit("[intro-epica] ERRO: nao consegui mapear com seguranca: " + ", ".join(missing))
    return group, src, programs, details


def patch_programs(midi_bytes, programs):
    data = bytearray(midi_bytes)
    hlen = struct.unpack(">I", data[4:8])[0]
    pos = 8 + hlen
    track_no = 0
    role_index = -1
    while pos + 8 <= len(data):
        if data[pos:pos+4] != b"MTrk": break
        ln = struct.unpack(">I", data[pos+4:pos+8])[0]
        start = pos + 8; end = start + ln; q = start; running = None
        if track_no > 0:
            role_index += 1
        patched = False
        while q < end:
            _, q = read_vlq(data, q, end)
            if q >= end: break
            status_pos = q
            status = data[q]
            explicit = status >= 0x80
            if explicit:
                q += 1
                if status < 0xF0: running = status
            else:
                if running is None: break
                status = running
            if status == 0xFF:
                typ=data[q]; q+=1; n,q=read_vlq(data,q,end); q+=n; continue
            if status in (0xF0,0xF7):
                n,q=read_vlq(data,q,end); q+=n; running=None; continue
            hi=status & 0xF0
            if hi in (0xC0,0xD0):
                if hi == 0xC0 and track_no > 0 and role_index < len(ROLES) and not patched:
                    data[q] = programs[ROLES[role_index]] & 0x7F
                    patched = True
                q += 1
            else:
                q += 2
        pos = end; track_no += 1
    return bytes(data)


def main():
    root = find_root()
    cfg = root / "sound/songs/midi/midi.cfg"
    text = cfg.read_text(encoding="utf-8", errors="ignore")
    entries = cfg_entries(text)
    refs = locate_reference_midis(root, entries)
    if not refs:
        raise SystemExit("[intro-epica] ERRO: nao achei os MIDIs de referencia (Time Gear / Sea of Time / Emerald) no sound/songs/midi.")

    group, src, programs, details = choose_group_and_programs(root, entries, refs)
    base = base64.b64decode(BASE_MIDI_B64)
    final = patch_programs(base, programs)

    midi_dir = root / "sound/songs/midi"
    out = midi_dir / TARGET_NAME
    out.write_bytes(final)

    backup = cfg.with_name("midi.cfg.before_intro_epica")
    if not backup.exists():
        shutil.copy2(cfg, backup)

    # Remove any old target definition (with or without .mid), then add one clean entry.
    cleaned = []
    for raw in text.splitlines():
        s = raw.strip()
        if ":" in s and not s.startswith("#"):
            name = s.split(":",1)[0].strip()
            if name in (TARGET_NAME, TARGET_NAME[:-4]):
                continue
        cleaned.append(raw)
    cleaned.append(f"{TARGET_NAME}: -E -R50 -G_{group} -V090")
    cfg.write_text("\n".join(cleaned) + "\n", encoding="utf-8")

    print("\n[intro-epica] PORT CONCLUIDO")
    print("  MIDI :", out)
    print("  BANK :", group)
    if src:
        print("  VOICEGROUP SOURCE:", src.relative_to(root))
    print("\n  Mapeamento escolhido:")
    labels = ["Piano", "Violin", "Strings", "Choir", "Brass", "Timpani", "Contrabass", "Square Lead", "Celesta"]
    for role, label in zip(ROLES, labels):
        prog = programs[role]
        detail = details.get(role, (0,prog,"?",""))
        print(f"    {label:12s} -> VOICE {prog:03d}  [{detail[2]}]  {detail[3]}")
    print("\n  midi.cfg:")
    print(f"    {TARGET_NAME}: -E -R50 -G_{group} -V090")
    print("\n[intro-epica] Agora rode: make -j8")

if __name__ == "__main__":
    main()
