#!/usr/bin/env python3
from pathlib import Path
import shutil
import sys

repo = Path.cwd()
if not (repo / ".git").exists():
    candidate = Path.home() / "pokeemerald-expansion"
    if (candidate / ".git").exists():
        repo = candidate
    else:
        sys.exit("ERRO: rode dentro de ~/pokeemerald-expansion")

p = repo / "data/maps/LavaridgeTown/scripts.pory"
if not p.exists():
    sys.exit("ERRO: nao achei data/maps/LavaridgeTown/scripts.pory")

bak = p.with_name(p.name + ".bak_fix_no_rainmaker_text")
if not bak.exists():
    shutil.copy2(p, bak)
    print("Backup:", bak.relative_to(repo))

s = p.read_text(errors="replace")

old = """LavaridgeTown_EventScript_MakeItRainNoRainmaker::
\tmsgbox LavaridgeTown_Text_MakeItRainNoRainmaker, MSGBOX_DEFAULT
\treleaseall
\tend
"""

new = """LavaridgeTown_EventScript_MakeItRainNoRainmaker::
\treleaseall
\tend
"""

if old in s:
    s = s.replace(old, new, 1)
    p.write_text(s)
    print("OK: referencia LavaridgeTown_Text_MakeItRainNoRainmaker removida.")
elif new in s:
    print("OK: bloco ja estava corrigido.")
else:
    sys.exit(
        "ERRO: nao achei o bloco esperado.\n"
        "Rode:\n"
        "grep -n -A5 -B2 'MakeItRainNoRainmaker' data/maps/LavaridgeTown/scripts.pory"
    )

for rel in (
    "build/modern/data/event_scripts.o",
    "build/modern/data/event_scripts.d",
):
    q = repo / rel
    if q.exists():
        q.unlink()

print("Agora rode: make -j8")
