#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import datetime
import argparse

TRACKS = [
    ("MUS_DEAD_LEAVES_AND_THE_DIRTY_GROUND", "mus_dead_leaves_and_the_dirty_ground", "DeadLeavesDirtyGround", "DEAD LEAVES AND THE DIRTY GROUND (THE WHITE STRIPES)"),
    ("MUS_I_CANT_WAIT_WHITE_STRIPES", "mus_i_cant_wait_white_stripes", "ICantWaitWhiteStripes", "I CAN'T WAIT (THE WHITE STRIPES)"),
    ("MUS_JOLENE_WHITE_STRIPES", "mus_jolene_white_stripes", "JoleneWhiteStripes", "JOLENE (THE WHITE STRIPES)"),
    ("MUS_SEVEN_NATION_ARMY", "mus_seven_nation_army", "SevenNationArmy", "SEVEN NATION ARMY (THE WHITE STRIPES)"),
]

EXPECTED_IDS = [735, 736, 737, 738]
SHADOW_CONST = "MUS_SHADOW_LUGIA_THEME"
SHADOW_ID = 734
SHADOW_STEM = "mus_shadow_lugia_theme"

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def backup(path, root, backup_dir):
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

def resolve(token, defs, seen=None):
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
    return resolve(raw, defs, seen)

def song_rows(text):
    return list(re.finditer(
        r'^(?P<indent>\s*)song\s+(?P<stem>[A-Za-z0-9_]+)(?P<rest>\s*,[^\n]*)$',
        text, re.M
    ))

def validate_ids(songs_text):
    defs = parse_defines(songs_text)

    if resolve(SHADOW_CONST, defs) != SHADOW_ID:
        die(f"{SHADOW_CONST} deveria ser {SHADOW_ID}, mas achei {resolve(SHADOW_CONST, defs)}.")

    ids = [resolve(c, defs) for c, *_ in TRACKS]
    if ids != EXPECTED_IDS:
        die(f"White Stripes deveriam ser {EXPECTED_IDS}, mas achei {ids}.")

    if resolve("END_MUS", defs) != EXPECTED_IDS[-1]:
        die(f"END_MUS deveria resolver para {EXPECTED_IDS[-1]}.")

    return defs

def patch_song_table(path, songs_text, dry_run=False):
    s = path.read_text()
    validate_ids(songs_text)

    rows = song_rows(s)
    print("  song_table rows atuais:", len(rows))
    if rows:
        print("  ultima row atual:", rows[-1].group(0).strip())

    # Detect already-correct state.
    shadow_count = len(re.findall(
        rf'^\s*song\s+{re.escape(SHADOW_STEM)}\s*,[^\n]*$',
        s, re.M
    ))
    white_counts = {
        stem: len(re.findall(rf'^\s*song\s+{re.escape(stem)}\s*,[^\n]*$', s, re.M))
        for _, stem, _, _ in TRACKS
    }

    if shadow_count == 1 and all(v == 1 for v in white_counts.values()) and len(rows) == 739:
        print("  song_table: ja esta correto (739 rows).")
        return s, False

    if shadow_count > 1 or any(v > 1 for v in white_counts.values()):
        die(f"Duplicatas detectadas. Shadow={shadow_count}; White={white_counts}")

    if any(v == 1 for v in white_counts.values()):
        die(f"White Stripes parcialmente registradas: {white_counts}")

    # Current broken state observed in project:
    # 734 rows = indices 0..733.
    # The final row is the Intro Supernova asset at ID 733.
    # Missing ID 734 is Shadow Lugia.
    if len(rows) != 734:
        die(
            f"Esperava 734 rows no estado quebrado atual, mas achei {len(rows)}. "
            "Nao vou adivinhar."
        )

    last = rows[-1]
    last_stem = last.group("stem")
    print("  slot final existente (ID 733):", last_stem)

    # Accept the project's actual asset name for MUS_INTRO_SUPERNOVA.
    if last_stem not in ("intro_epica_pokeemerald_gba", "mus_intro_supernova"):
        die(
            "A row 733 nao parece ser Intro Supernova. "
            f"Ultimo stem encontrado: {last_stem}"
        )

    # Use 0,0 like the user's current custom music rows.
    # This is also what the shown Intro/Touhou/Rock custom rows use.
    indent = last.group("indent")
    shadow_row = f"{indent}song {SHADOW_STEM}, 0, 0\n"
    white_block = "".join(
        f"{indent}song {stem}, 0, 0\n"
        for _, stem, _, _ in TRACKS
    )

    # Append AFTER ID 733:
    # row 734 = Shadow Lugia
    # rows 735..738 = White Stripes
    insert_at = last.end()
    new_s = s[:insert_at] + "\n" + (shadow_row + white_block).rstrip("\n") + s[insert_at:]

    new_rows = song_rows(new_s)
    if len(new_rows) != 739:
        die(f"Depois do patch deveriam existir 739 rows, mas haveria {len(new_rows)}.")

    # Verify exact final five rows and therefore exact indices.
    tail = [m.group("stem") for m in new_rows[-5:]]
    expected_tail = [SHADOW_STEM] + [stem for _, stem, _, _ in TRACKS]
    if tail != expected_tail:
        die(f"Tail invalido: {tail}")

    print("  ID 734 ->", SHADOW_STEM)
    for sid, (_, stem, _, _) in zip(EXPECTED_IDS, TRACKS):
        print(f"  ID {sid} -> {stem}")

    if dry_run:
        print("  [dry-run] song_table ficaria com 739 rows.")
    return new_s, True

def patch_radio_text(s):
    consts = [x[0] for x in TRACKS]

    marker = '\n#define X(songId) static const u8 sRadioBGMName_##songId[] = _(#songId);'
    pos = s.find(marker)
    start = s.rfind("#define RADIO_SOUND_LIST_BGM", 0, pos)
    if pos < 0 or start < 0:
        die("Nao achei RADIO_SOUND_LIST_BGM.")

    block = s[start:pos]
    existing = set(re.findall(r'X\((MUS_[A-Z0-9_]+)\)', block))
    missing = [c for c in consts if c not in existing]
    if missing:
        lines = block.splitlines()
        xs = [i for i,l in enumerate(lines) if "X(MUS_" in l]
        if not xs:
            die("RADIO_SOUND_LIST_BGM sem X(MUS_...).")
        last_x = xs[-1]
        if not lines[last_x].rstrip().endswith("\\"):
            lines[last_x] = lines[last_x].rstrip() + " \\"
        add = [
            f"    X({c})" + (" \\" if i < len(missing)-1 else "")
            for i,c in enumerate(missing)
        ]
        lines[last_x+1:last_x+1] = add
        s = s[:start] + "\n".join(lines) + s[pos:]

    def add_station(text, decl):
        a = text.find(decl)
        if a < 0:
            die("Nao achei " + decl)
        e = text.find("    STATION_END", a)
        if e < 0:
            die("Nao achei STATION_END em " + decl)
        section = text[a:e]
        add = "".join(f"    {c},\n" for c in consts if c not in section)
        return text[:e] + add + text[e:]

    s = add_station(s, "static const u16 sStation_All[] = {")
    s = add_station(s, "static const u16 sStation_IndieRock[] = {")

    getter = "static const u8 *Radio_GetIndieDisplayName(u16 songId)"
    gp = s.find(getter)
    if gp < 0:
        die("Nao achei Radio_GetIndieDisplayName.")

    defs_to_add = ""
    for const, stem, var, label in TRACKS:
        name = f"sIndieName_{var}"
        if name not in s[:gp]:
            defs_to_add += f'static const u8 {name}[] = _("{label}");\n'
    if defs_to_add:
        s = s[:gp] + defs_to_add + "\n" + s[gp:]

    gp = s.find(getter)
    d = s.find("\n    default:", gp)
    if d < 0:
        die("Nao achei default de Radio_GetIndieDisplayName.")

    sw = s[gp:d]
    cases = ""
    for const, stem, var, label in TRACKS:
        if f"case {const}:" not in sw:
            cases += f"    case {const}:\n        return sIndieName_{var};\n"
    if cases:
        s = s[:d] + cases + s[d:]

    if s.count("{") != s.count("}"):
        die("radio.c com chaves desbalanceadas.")
    if s.count("(") != s.count(")"):
        die("radio.c com parenteses desbalanceados.")

    a = s.find("static const u16 sStation_IndieRock[] = {")
    e = s.find("STATION_END", a)
    indie = s[a:e]
    for const in consts:
        if const not in indie:
            die(f"{const} nao entrou em INDIE ROCK.")
        if f"case {const}:" not in s:
            die(f"{const} sem display case.")
    return s

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    root = Path.cwd()
    songs_h = root / "include/constants/songs.h"
    song_table = root / "sound/song_table.inc"
    radio = root / "src/radio.c"
    cfg = root / "sound/songs/midi/midi.cfg"

    if not all(p.exists() for p in (songs_h, song_table, radio, cfg)):
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    print("== WHITE STRIPES RADIO REGISTRATION FIX V3 ==")
    print("Diagnostico real: faltava a row ID 734 (Shadow Lugia).")
    print("Nao altera MIDIs, voicegroup nem IDs.\n")

    songs_text = songs_h.read_text()
    validate_ids(songs_text)

    # Confirm the four audio assets are still registered.
    cfg_text = cfg.read_text()
    for _, stem, _, _ in TRACKS:
        m = re.search(rf'^{re.escape(stem)}\.mid:\s*(.+)$', cfg_text, re.M)
        if not m:
            die(f"Falta {stem}.mid em midi.cfg.")
        print(f"{stem}: {m.group(1)}")

    new_st, changed = patch_song_table(song_table, songs_text, dry_run=args.dry_run)
    new_rc = patch_radio_text(radio.read_text())

    if args.dry_run:
        print("\n[dry-run] radio.c tambem passou.")
        print("[dry-run] nenhum arquivo alterado.")
        return

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_dir = root / "PHYTON/backups" / f"white_stripes_registration_v3_{stamp}"
    for p in (song_table, radio):
        backup(p, root, backup_dir)
    print("\nBackup:", backup_dir)

    if changed:
        song_table.write_text(new_st)
    radio.write_text(new_rc)
    song_table.touch()
    radio.touch()

    # Final validation.
    final_rows = song_rows(song_table.read_text())
    print("\n===== FINAL =====")
    print("song_table rows:", len(final_rows))
    print("ultimas 6:")
    for m in final_rows[-6:]:
        print(" ", m.group(0).strip())

    rc = radio.read_text()
    a = rc.find("static const u16 sStation_IndieRock[] = {")
    e = rc.find("STATION_END", a)
    indie = rc[a:e]
    for const, stem, var, label in TRACKS:
        print(f"{const}:",
              "INDIE OK" if const in indie else "INDIE FALTA",
              "| DISPLAY OK" if f"case {const}:" in rc else "| DISPLAY FALTA")

    print("\nFIX V3 OK.")
    print("Agora rode:")
    print("  make -j8")

if __name__ == "__main__":
    main()
