#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import sys
from datetime import datetime

ROOT = Path.cwd()

CONST = "MUS_INTRO_EPICA"
BASENAME = "intro_epica_pokeemerald_gba"

SONGS_H = ROOT / "include/constants/songs.h"
SONG_TABLE = ROOT / "sound/song_table.inc"
SONG_S = ROOT / f"sound/songs/midi/{BASENAME}.s"
MIDI_CFG = ROOT / "sound/songs/midi/midi.cfg"
RADIO_C = ROOT / "src/radio.c"
DEBUG_C = ROOT / "src/debug.c"


def die(msg):
    print(f"\n[ERRO] {msg}")
    sys.exit(1)


def read(p):
    return p.read_text(encoding="utf-8", errors="replace")


def backup(p, stamp):
    q = p.with_name(p.name + f".before_intro_epica_silence_fix_{stamp}.bak")
    shutil.copy2(p, q)
    print(f"[BACKUP] {q.relative_to(ROOT)}")


def get_numeric_define(text, name):
    m = re.search(
        rf"(?m)^\s*#define\s+{re.escape(name)}\s+((?:0x[0-9A-Fa-f]+)|(?:\d+))\b",
        text,
    )
    return int(m.group(1), 0) if m else None


def get_all_music_ids(text):
    out = {}
    for m in re.finditer(
        r"(?m)^\s*#define\s+(MUS_[A-Z0-9_]+)\s+((?:0x[0-9A-Fa-f]+)|(?:\d+))\b",
        text,
    ):
        name = m.group(1)
        try:
            value = int(m.group(2), 0)
        except ValueError:
            continue
        if value == 0xFFFF:
            continue
        out.setdefault(value, []).append(name)
    return out


def song_entries(text):
    # gSongTable is positional: every `song ...` line contributes one entry.
    entries = []
    for m in re.finditer(
        r"(?m)^(?P<indent>\s*)song\s+(?P<symbol>[A-Za-z0-9_]+)\s*,(?P<rest>[^\n]*)$",
        text,
    ):
        entries.append(
            {
                "symbol": m.group("symbol"),
                "start": m.start(),
                "end": m.end(),
                "line": m.group(0),
            }
        )
    return entries


def extract_header_symbols(s_text):
    syms = set()
    # Labels.
    for m in re.finditer(r"(?m)^([A-Za-z_][A-Za-z0-9_]*):\s*$", s_text):
        syms.add(m.group(1))
    # .global declarations.
    for m in re.finditer(r"(?m)^\s*\.global\s+([A-Za-z_][A-Za-z0-9_]*)", s_text):
        syms.add(m.group(1))
    return syms


def ensure_cfg_single(text):
    hits = []
    for i, line in enumerate(text.splitlines()):
        s = line.strip()
        if not s or s.startswith("#") or ":" not in s:
            continue
        lhs = s.split(":", 1)[0].strip()
        if lhs in (BASENAME, BASENAME + ".mid"):
            hits.append((i, line, lhs))
    return hits


def main():
    print("================================================")
    print(" INTRO EPICA - DIAGNOSTICO / CORRECAO DE SILENCIO")
    print("================================================\n")

    for p in (SONGS_H, SONG_TABLE, MIDI_CFG, RADIO_C, DEBUG_C):
        if not p.exists():
            die(f"Arquivo ausente: {p}")

    songs_h = read(SONGS_H)
    table_text = read(SONG_TABLE)
    entries = song_entries(table_text)

    if not entries:
        die("Nao consegui interpretar nenhuma entrada de sound/song_table.inc.")

    const_id = get_numeric_define(songs_h, CONST)
    if const_id is None:
        die(f"{CONST} nao possui um ID numerico em include/constants/songs.h.")

    intro_indices = [i for i, e in enumerate(entries) if e["symbol"] == BASENAME]

    print(f"[INFO] {CONST} = {const_id}")
    print(f"[INFO] gSongTable possui {len(entries)} entradas (IDs 0..{len(entries)-1})")

    if intro_indices:
        table_id = intro_indices[0]
        print(f"[INFO] song {BASENAME} esta fisicamente no ID {table_id}")
    else:
        table_id = None
        print(f"[INFO] song {BASENAME} NAO esta em sound/song_table.inc")

    if 0 <= const_id < len(entries):
        print(f"[INFO] No ID {const_id}, a tabela aponta para: {entries[const_id]['symbol']}")
    else:
        print(f"[PROBLEMA] ID {const_id} esta FORA do tamanho atual de gSongTable.")

    # Generated .s check.
    if SONG_S.exists():
        s_text = read(SONG_S)
        syms = extract_header_symbols(s_text)
        print(f"[OK] Gerado: {SONG_S.relative_to(ROOT)}")
        if BASENAME in syms:
            print(f"[OK] Header symbol encontrado: {BASENAME}")
        else:
            likely = sorted(s for s in syms if BASENAME in s or "intro_epica" in s)
            print(f"[AVISO] Nao encontrei label/global exato '{BASENAME}' no .s.")
            if likely:
                print("[INFO] Simbolos parecidos:", ", ".join(likely[:10]))
    else:
        print(f"[AVISO] {SONG_S.relative_to(ROOT)} ainda nao existe.")

    cfg_hits = ensure_cfg_single(read(MIDI_CFG))
    print(f"[INFO] midi.cfg: {len(cfg_hits)} entrada(s) relacionada(s)")
    for _, line, _ in cfg_hits:
        print("       " + line.strip())

    if CONST in read(RADIO_C):
        print("[OK] Radio conhece MUS_INTRO_EPICA")
    else:
        print("[PROBLEMA] Radio nao contem MUS_INTRO_EPICA")

    if CONST in read(DEBUG_C):
        print("[OK] Debug Sound conhece MUS_INTRO_EPICA")
    else:
        print("[PROBLEMA] Debug Sound nao contem MUS_INTRO_EPICA")

    needs_fix = False
    stamp = datetime.now().strftime("%Y%m%d_%H%M%S")

    # ------------------------------------------------------------
    # Core fix: the numeric MUS id MUST index the exact gSongTable
    # entry containing the song header.
    # ------------------------------------------------------------
    if table_id is None:
        if const_id == len(entries):
            backup(SONG_TABLE, stamp)
            if not table_text.endswith("\n"):
                table_text += "\n"
            table_text += f"    song {BASENAME}, 0, 0\n"
            SONG_TABLE.write_text(table_text, encoding="utf-8")
            table_id = const_id
            needs_fix = True
            print(f"\n[FIX] Adicionei a musica no slot correto {const_id} de song_table.inc.")
        else:
            die(
                f"A musica nao esta na song_table e o ID {const_id} nao e o proximo slot "
                f"({len(entries)}). Nao vou deslocar outras musicas automaticamente."
            )

    elif table_id != const_id:
        print("\n[PROBLEMA CONFIRMADO]")
        print(f"  {CONST} pede gSongTable[{const_id}]")
        print(f"  mas {BASENAME} esta em gSongTable[{table_id}]")

        # Safest repair for an appended custom song: make its constant match its
        # actual table slot. Never move existing table rows because that would
        # change IDs of every song after the insertion point.
        ids = get_all_music_ids(songs_h)
        conflicts = [n for n in ids.get(table_id, []) if n != CONST]

        if conflicts:
            die(
                f"O slot real {table_id} ja e usado pelo(s) constant(s): "
                + ", ".join(conflicts)
                + ". Preciso ver songs.h/song_table antes de alterar isso."
            )

        backup(SONGS_H, stamp)

        songs_h = re.sub(
            rf"(?m)^(\s*#define\s+{re.escape(CONST)}\s+)(?:0x[0-9A-Fa-f]+|\d+)\b.*$",
            rf"\g<1>{table_id}",
            songs_h,
            count=1,
        )

        # Keep debug/radio range covering the repaired song.
        end_pat = re.compile(r"(?m)^(\s*#define\s+END_MUS\s+).*$")
        if end_pat.search(songs_h):
            songs_h = end_pat.sub(rf"\g<1>{CONST}", songs_h, count=1)

        SONGS_H.write_text(songs_h, encoding="utf-8")
        const_id = table_id
        needs_fix = True
        print(f"[FIX] {CONST} corrigido para o ID real {table_id}.")
        print(f"[FIX] END_MUS = {CONST}")

    else:
        print("\n[OK] ID e song_table ja estao alinhados.")

    # Remove the old no-extension duplicate recipe if one exists.
    if len(cfg_hits) > 1 or any(lhs == BASENAME for _, _, lhs in cfg_hits):
        lines = read(MIDI_CFG).splitlines()
        keep = None
        for line in lines:
            s = line.strip()
            if ":" in s and s.split(":", 1)[0].strip() == BASENAME + ".mid":
                keep = line
        if keep is None:
            die("midi.cfg tem entrada estranha, mas nenhuma versao .mid para preservar.")

        backup(MIDI_CFG, stamp)
        out = []
        emitted = False
        for line in lines:
            s = line.strip()
            lhs = s.split(":", 1)[0].strip() if ":" in s else ""
            if lhs in (BASENAME, BASENAME + ".mid"):
                if not emitted:
                    out.append(keep)
                    emitted = True
                continue
            out.append(line)
        MIDI_CFG.write_text("\n".join(out) + "\n", encoding="utf-8")
        needs_fix = True
        print("[FIX] midi.cfg normalizado para uma unica entrada .mid.")

    # Final verification from disk.
    final_songs = read(SONGS_H)
    final_table = song_entries(read(SONG_TABLE))
    final_id = get_numeric_define(final_songs, CONST)
    final_intro = [i for i, e in enumerate(final_table) if e["symbol"] == BASENAME]

    print("\n================ FINAL ================")
    print(f"{CONST} = {final_id}")
    if final_intro:
        print(f"song_table real ID = {final_intro[0]}")
    print(f"gSongTable entries = {len(final_table)}")

    if not final_intro or final_intro[0] != final_id:
        die("Ainda existe mismatch entre constant e song_table.")

    print("\n[OK] REGISTRO DE EXECUCAO ESTA COERENTE.")
    if needs_fix:
        print("\nAgora recompile:")
    else:
        print("\nNao encontrei mismatch estrutural. Mesmo assim force a reconversao/relink:")
    print(f"  rm -f sound/songs/midi/{BASENAME}.s")
    print(f"  rm -f build/modern/sound/songs/midi/{BASENAME}.o")
    print("  make -j8")
    print()
    print("Depois teste primeiro em:")
    print("  Debug Menu -> Sound -> Music")
    print("Se tocar no Debug, tambem deve tocar no Radio.")


if __name__ == "__main__":
    main()
