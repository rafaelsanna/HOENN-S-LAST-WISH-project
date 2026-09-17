#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, zipfile, hashlib, os, subprocess

PACK_ZIP = "RADIO_GAMES_REQUIEM_LOOP_AND_ORDER_FIX_V2.zip"
REQ_SHA = "ce48d69651963f3990897748e6d155045011aba387f37122ca75b0ac6921c56a"
CFG = "-G_brothers -R18 -V090"

REQ_CONST = "MUS_REQUIEM_OF_SPIRIT"
REQ_STEM = "mus_requiem_of_spirit"

def die(msg):
    print("\n[ERRO]", msg)
    raise RuntimeError(msg)

def backup(path, root, bdir):
    if not path.exists():
        return
    dst = bdir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def read_vlq(data, pos):
    value = 0
    while True:
        b = data[pos]
        pos += 1
        value = (value << 7) | (b & 0x7F)
        if not (b & 0x80):
            return value, pos

def verify_loop_markers(mid_path):
    data = mid_path.read_bytes()
    if data[:4] != b"MThd":
        die("Requiem V2 nao e MIDI valido.")

    hlen = int.from_bytes(data[4:8], "big")
    ntrks = int.from_bytes(data[10:12], "big")
    pos = 8 + hlen
    expected = None

    for ti in range(ntrks):
        if data[pos:pos+4] != b"MTrk":
            die("MTrk ausente no Requiem V2.")
        ln = int.from_bytes(data[pos+4:pos+8], "big")
        chunk = data[pos+8:pos+8+ln]
        pos += 8 + ln

        p = 0
        tick = 0
        running = None
        marks = []

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
                typ = chunk[p]; p += 1
                length, p = read_vlq(chunk, p)
                payload = bytes(chunk[p:p+length]); p += length
                if typ == 0x06:  # Marker meta event
                    text = payload.decode("latin1", errors="ignore")
                    if text in ("[", "]"):
                        marks.append((tick, text))
                if typ == 0x2F:
                    break
                continue

            if status in (0xF0, 0xF7):
                length, p = read_vlq(chunk, p)
                p += length
                continue

            typ = status & 0xF0
            p += 1 if typ in (0xC0, 0xD0) else 2

        if len(marks) != 2 or marks[0] != (0, "[") or marks[1][1] != "]":
            die(f"Track {ti} sem markers de loop corretos: {marks}")

        if expected is None:
            expected = marks[1][0]
        elif marks[1][0] != expected:
            die("Tracks do Requiem possuem loop-end dessincronizado.")

    print(f"Loop MIDI verificado em {ntrks} tracks: [ tick 0 -> ] tick {expected}")

def set_cfg(text):
    line = f"{REQ_STEM}.mid: {CFG}"
    m = re.search(r'^' + re.escape(REQ_STEM) + r'\.mid:.*$', text, re.M)
    if m:
        return text[:m.start()] + line + text[m.end():]
    if text and not text.endswith("\n"):
        text += "\n"
    return text + line + "\n"

def verify_symbol(s_path):
    if not s_path.exists():
        die("mid2agb nao criou mus_requiem_of_spirit.s.")
    text = s_path.read_text(errors="ignore")
    if not re.search(r'^\s*\.global\s+mus_requiem_of_spirit\s*$', text, re.M):
        die("mus_requiem_of_spirit.s nao exporta o simbolo esperado.")
    if not re.search(r'^mus_requiem_of_spirit:\s*$', text, re.M):
        die("mus_requiem_of_spirit.s nao possui label principal.")

    # Classic expansion mid2agb writes loop markers as GOTO commands.
    # Keep this as a hard check: the user specifically reported silence at EOF.
    if "GOTO" not in text:
        die(
            "O MIDI possui [ / ], mas o .s gerado nao contem GOTO. "
            "Nao vou concluir um fix de loop sem confirmar o loop compilado."
        )
    print("Loop compilado verificado: GOTO encontrado em mus_requiem_of_spirit.s")

GAMES_GROUPS = [
    ("POKEMON MYSTERY DUNGEON", [
        "MUS_TIME_GEAR",
        "MUS_DONT_EVER_FORGET",
        "MUS_TEMPORAL_TOWER",
        "MUS_TEMPORAL_SPIRE",
        "MUS_THROUGH_THE_SEA_OF_TIME",
    ]),
    ("THE LEGEND OF ZELDA: THE WIND WAKER", [
        "MUS_THE_GREAT_SEA",
    ]),
    ("THE LEGEND OF ZELDA: TWILIGHT PRINCESS", [
        "MUS_TWILIGHT_PRINCESS_TITLE",
        "MUS_MIDNAS_LAMENT",
        "MUS_SACRED_GROVE",
        "MUS_REQUIEM_OF_SPIRIT",
    ]),
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
    ("FINAL FANTASY VIII", [
        "MUS_THE_OATH",
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
]

def reorder_games(text):
    pat = r'(static const u16\s+sStation_Games\[\]\s*=\s*\{)(.*?)(\n\};)'
    m = re.search(pat, text, re.S)
    if not m:
        die("Nao achei sStation_Games.")

    body = m.group(2)
    existing = re.findall(r'\bMUS_[A-Z0-9_]+\b', body)
    existing_set = set(existing)

    required = [
        "MUS_TIME_GEAR",
        "MUS_REQUIEM_OF_SPIRIT",
        "MUS_THE_GREAT_SEA",
        "MUS_TWILIGHT_PRINCESS_TITLE",
        "MUS_MIDNAS_LAMENT",
        "MUS_SACRED_GROVE",
        "MUS_INTRO_SUPERNOVA",
        "MUS_TETRIS_MAIN_THEME",
    ]
    missing = [x for x in required if x not in existing_set]
    if missing:
        die("GAMES ainda nao possui o pack anterior. Faltou: " + ", ".join(missing))

    used = set()
    lines = []

    for label, members in GAMES_GROUPS:
        present = [x for x in members if x in existing_set]
        if not present:
            continue
        lines.append(f"    // {label}")
        for x in present:
            lines.append(f"    {x},")
            used.add(x)
        lines.append("")

    # Preserve any songs that are not known by this installer, in their previous order.
    # Intro Supernova and Tetris are intentionally handled at the very end.
    unknown = [
        x for x in existing
        if x not in used and x not in ("MUS_INTRO_SUPERNOVA", "MUS_TETRIS_MAIN_THEME")
    ]
    if unknown:
        lines.append("    // OTHER GAMES")
        for x in unknown:
            lines.append(f"    {x},")
        lines.append("")

    # User explicitly wants these last positions unchanged.
    lines.append("    // SUPERNOVA - SECOND LAST")
    lines.append("    MUS_INTRO_SUPERNOVA,")
    lines.append("")
    lines.append("    // TETRIS - LAST")
    lines.append("    MUS_TETRIS_MAIN_THEME,")
    lines.append("")
    lines.append("    STATION_END")

    new_body = "\n" + "\n".join(lines)
    text = text[:m.start(2)] + new_body + text[m.end(2):]

    # Final order checks.
    mm = re.search(pat, text, re.S)
    order = re.findall(r'\bMUS_[A-Z0-9_]+\b', mm.group(2))

    pmd = [
        "MUS_TIME_GEAR",
        "MUS_DONT_EVER_FORGET",
        "MUS_TEMPORAL_TOWER",
        "MUS_TEMPORAL_SPIRE",
        "MUS_THROUGH_THE_SEA_OF_TIME",
    ]
    if order[:5] != pmd:
        die("PMD nao ficou no inicio como esperado: " + repr(order[:5]))

    if order[-2:] != ["MUS_INTRO_SUPERNOVA", "MUS_TETRIS_MAIN_THEME"]:
        die("Intro Supernova / Tetris nao ficaram nas duas ultimas posicoes.")

    return text

def fix_requiem_name(text):
    # Exact V1 label.
    old = 'static const u8 sGamesName_RequiemOfSpirit[] = _("REQUIEM OF SPIRIT (ZELDA: OCARINA OF TIME)");'
    new = 'static const u8 sGamesName_RequiemOfSpirit[] = _("REQUIEM OF SPIRIT (ZELDA: TWILIGHT PRINCESS)");'

    if old in text:
        return text.replace(old, new, 1)

    # Idempotent / tolerate cosmetic spacing.
    if "REQUIEM OF SPIRIT (ZELDA: TWILIGHT PRINCESS)" in text:
        return text

    m = re.search(
        r'static const u8 sGamesName_RequiemOfSpirit\[\]\s*=\s*_\(".*?"\);',
        text
    )
    if not m:
        die("Nao achei sGamesName_RequiemOfSpirit.")
    return text[:m.start()] + new + text[m.end():]

def main():
    root = Path.cwd()
    here = Path(__file__).resolve().parent

    radio = root / "src/radio.c"
    cfg = root / "sound/songs/midi/midi.cfg"
    songs_h = root / "include/constants/songs.h"
    mid_target = root / f"sound/songs/midi/{REQ_STEM}.mid"
    s_target = root / f"sound/songs/midi/{REQ_STEM}.s"

    for p in (radio, cfg, songs_h, mid_target):
        if not p.exists():
            die(f"Nao achei {p}. Rode da raiz e instale primeiro o pack FFVIII + Zelda V1.")

    if not re.search(r'^#define\s+MUS_REQUIEM_OF_SPIRIT\s+\d+\b', songs_h.read_text(), re.M):
        die("MUS_REQUIEM_OF_SPIRIT ainda nao esta registrado.")

    pack = here / PACK_ZIP
    if not pack.exists():
        die(f"Nao achei {PACK_ZIP} ao lado deste Python em PHYTON/.")

    with zipfile.ZipFile(pack, "r") as z:
        data = z.read("assets/mus_requiem_of_spirit.mid")
    if hashlib.sha256(data).hexdigest() != REQ_SHA:
        die("SHA invalido para Requiem V2.")

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"requiem_loop_games_order_v2_{stamp}"
    touched = [radio, cfg, mid_target, s_target]

    for p in touched:
        backup(p, root, bdir)
    originals = {p: (p.read_bytes() if p.exists() else None) for p in touched}

    def rollback():
        print("\n[ROLLBACK] Restaurando estado anterior...")
        for p, raw in originals.items():
            if raw is None:
                if p.exists():
                    p.unlink()
            else:
                p.parent.mkdir(parents=True, exist_ok=True)
                p.write_bytes(raw)

    try:
        # 1) Install the looped MIDI and verify the actual MIDI markers.
        mid_target.write_bytes(data)
        os.utime(mid_target, None)
        verify_loop_markers(mid_target)

        # 2) Keep cfg explicit.
        cfg.write_text(set_cfg(cfg.read_text()))
        os.utime(cfg, None)

        # 3) Generate .s directly and require a compiled GOTO.
        mid2agb = root / "tools/mid2agb/mid2agb"
        if not mid2agb.exists():
            die("Nao achei tools/mid2agb/mid2agb.")
        subprocess.run(
            [str(mid2agb), str(mid_target), str(s_target)] + CFG.split(),
            cwd=root,
            check=True
        )
        verify_symbol(s_target)

        # 4) Only now touch Radio ordering/naming.
        rt = radio.read_text()
        rt = fix_requiem_name(rt)
        rt = reorder_games(rt)
        radio.write_text(rt)
        os.utime(radio, None)

        # 5) Stale build products only.
        stale = [
            root / "build/modern/sound/songs/midi/mus_requiem_of_spirit.o",
            root / "build/modern/sound/songs/midi/mus_requiem_of_spirit.d",
            root / "build/modern/src/radio.o",
            root / "build/modern/src/radio.d",
        ]
        for p in stale:
            if p.exists():
                print("rm", p.relative_to(root))
                p.unlink()

        print("\n============================================================")
        print("REQUIEM LOOP + GAMES ORDER V2 INSTALADO")
        print("============================================================")
        print("REQUIEM OF SPIRIT:")
        print("  - agora identificado como ZELDA: TWILIGHT PRINCESS")
        print("  - loop real via MIDI markers [ e ]")
        print("  - todos os tracks compartilham o MESMO loop point")
        print("  - .s verificado com comando GOTO")
        print("")
        print("RADIO GAMES:")
        print("  1. TIME GEAR")
        print("  2. demais Pokemon Mystery Dungeon")
        print("  3. musicas de Zelda")
        print("  4. restante das franquias")
        print("  penultima: INTRO (SUPERNOVA)")
        print("  ultima: TETRIS MAIN THEME")
        print("")
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
