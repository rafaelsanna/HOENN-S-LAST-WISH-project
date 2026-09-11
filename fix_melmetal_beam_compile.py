#!/usr/bin/env python3
from pathlib import Path
import re
import sys

repo = Path.cwd()
src = repo / "src" / "field_weather_effect.c"

if not src.exists():
    candidate = Path.home() / "pokeemerald-expansion"
    if (candidate / "src" / "field_weather_effect.c").exists():
        repo = candidate
        src = repo / "src" / "field_weather_effect.c"
    else:
        sys.exit("ERRO: rode dentro de ~/pokeemerald-expansion")

include_root = repo / "include"

def find_header(pattern):
    rx = re.compile(pattern)
    for p in include_root.rglob("*.h"):
        try:
            text = p.read_text(errors="ignore")
        except Exception:
            continue
        if rx.search(text):
            return p.relative_to(include_root).as_posix()
    return None

macro_header = find_header(r"#\s*define\s+OBJ_EVENT_GFX_SPECIES\b")
species_header = find_header(r"\bSPECIES_MELMETAL\b")

print("Header do OBJ_EVENT_GFX_SPECIES:", macro_header)
print("Header do SPECIES_MELMETAL:", species_header)

if macro_header is None:
    sys.exit("ERRO: nao achei a definicao de OBJ_EVENT_GFX_SPECIES em include/")
if species_header is None:
    sys.exit("ERRO: nao achei SPECIES_MELMETAL em include/")

text = src.read_text()

needed = []
for header in (macro_header, species_header):
    line = f'#include "{header}"'
    if line not in text:
        needed.append(line)

if needed:
    # Put the discovered constant headers immediately after the existing include block.
    lines = text.splitlines()
    last_include = -1
    for i, line in enumerate(lines):
        if line.startswith("#include "):
            last_include = i
        elif last_include >= 0 and line.strip() != "":
            break

    insert_at = last_include + 1
    lines[insert_at:insert_at] = needed
    src.write_text("\n".join(lines) + ("\n" if text.endswith("\n") else ""))
    print("\nIncludes adicionados em src/field_weather_effect.c:")
    for line in needed:
        print(" ", line)
else:
    print("\nOs includes necessarios ja estavam presentes.")

print("\nAgora rode:")
print("rm -f build/modern/src/field_weather_effect.o build/modern/src/field_weather_effect.d")
print("make -j8")
