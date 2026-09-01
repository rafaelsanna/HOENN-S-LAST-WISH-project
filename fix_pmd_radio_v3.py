#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Repair PMD Radio installer V2 newline bug.

Run from the ROOT of the pokeemerald-expansion repo:
    python3 fix_pmd_radio_v3.py
Then:
    make -j8

This repair is idempotent.
"""

from pathlib import Path
import sys
import re
import shutil

ROOT = Path.cwd()
RADIO = ROOT / "src/radio.c"

if not RADIO.exists():
    print(f"ERRO: rode este script na raiz do repo. Não achei: {RADIO}")
    sys.exit(1)

text = RADIO.read_text(encoding="utf-8", errors="replace")
original = text

# Backup before repair.
bak = RADIO.with_suffix(".c.before_pmd_v3_fix.bak")
if not bak.exists():
    shutil.copy2(RADIO, bak)

# V2 bug: the regex that found the old last X(...) line consumed its trailing
# newline, so the newly inserted final PMD X(...) was glued directly to the
# following #define X(songId).
text = re.sub(
    r'(X\(MUS_THROUGH_THE_SEA_OF_TIME\))\s*#define\s+X\(songId\)',
    r'\1\n#define X(songId)',
    text,
    count=1,
)

# Defensive repair for any other "X(MUS_...)#define X(songId)" occurrence.
text = re.sub(
    r'(X\(MUS_[A-Za-z0-9_]+\))\s*#define\s+X\(songId\)',
    r'\1\n#define X(songId)',
    text,
)

# Validate the RADIO_SOUND_LIST_BGM block.
start = text.find("#define RADIO_SOUND_LIST_BGM")
end = text.find("#define X(songId)", start)
if start < 0 or end < 0:
    print("ERRO: não consegui localizar RADIO_SOUND_LIST_BGM / #define X(songId).")
    sys.exit(1)

block = text[start:end]

required = [
    "MUS_TIME_GEAR",
    "MUS_DONT_EVER_FORGET",
    "MUS_TEMPORAL_TOWER",
    "MUS_TEMPORAL_SPIRE",
    "MUS_THROUGH_THE_SEA_OF_TIME",
]

missing = [x for x in required if f"X({x})" not in block]
if missing:
    print("ERRO: faltam músicas no RADIO_SOUND_LIST_BGM:", ", ".join(missing))
    sys.exit(1)

# Ensure the final PMD line ends the macro (NO backslash).
lines = block.splitlines()
for i, line in enumerate(lines):
    if "X(MUS_THROUGH_THE_SEA_OF_TIME)" in line:
        lines[i] = re.sub(r'\s*\\\s*$', '', line).rstrip()

# Ensure every preceding X line after the macro declaration has a continuation.
# This only touches the contiguous X-list portion.
first_x = next((i for i,l in enumerate(lines) if re.search(r'\bX\(MUS_', l)), None)
last_x = next((i for i,l in reversed(list(enumerate(lines))) if re.search(r'\bX\(MUS_', l)), None)
if first_x is not None and last_x is not None:
    for i in range(first_x, last_x):
        if re.search(r'\bX\(MUS_', lines[i]) and not lines[i].rstrip().endswith("\\"):
            lines[i] = lines[i].rstrip() + " \\"
    if re.search(r'\bX\(MUS_', lines[last_x]):
        lines[last_x] = re.sub(r'\s*\\\s*$', '', lines[last_x]).rstrip()

fixed_block = "\n".join(lines)
# Preserve exactly one newline before the following #define.
text = text[:start] + fixed_block + "\n" + text[end:]

# Also remove the old midi.cfg comment if it somehow still exists.
cfg = ROOT / "sound/songs/midi/midi.cfg"
if cfg.exists():
    cfg_text = cfg.read_text(encoding="utf-8", errors="replace")
    cfg_fixed = cfg_text.replace("# Pokemon Mystery Dungeon - Radio GAMES\n", "")
    if cfg_fixed != cfg_text:
        cfg_bak = cfg.with_suffix(".cfg.before_pmd_v3_fix.bak")
        if not cfg_bak.exists():
            shutil.copy2(cfg, cfg_bak)
        cfg.write_text(cfg_fixed, encoding="utf-8")
        print("OK: removido comentário incompatível de midi.cfg")

if text != original:
    RADIO.write_text(text, encoding="utf-8")
    print("OK: src/radio.c reparado")
else:
    print("OK: src/radio.c já estava sem o bug de newline")

# Final sanity checks.
final = RADIO.read_text(encoding="utf-8", errors="replace")
bad = re.search(r'X\(MUS_[A-Za-z0-9_]+\).*#define\s+X\(songId\)', final)
if bad:
    print("ERRO: ainda existe #define X colado em uma entrada do macro.")
    sys.exit(1)

start = final.find("#define RADIO_SOUND_LIST_BGM")
end = final.find("#define X(songId)", start)
tail = final[start:end].splitlines()[-7:]

print("\nFinal do RADIO_SOUND_LIST_BGM:")
for line in tail:
    print(line)

print("\nREPARO CONCLUÍDO.")
print("Agora rode:")
print("    make -j8")
