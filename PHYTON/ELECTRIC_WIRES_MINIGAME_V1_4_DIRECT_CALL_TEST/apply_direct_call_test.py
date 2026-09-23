#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from pathlib import Path
from datetime import datetime
import argparse
import shutil
import subprocess

SCRIPT_DIR = Path(__file__).resolve().parent

BROKEN_SPECIAL = "def_special StartElectricWiresGame, waitstate=1"
PLAIN_SPECIAL = "def_special StartElectricWiresGame"

OLD_NPC = """LittlerootTown_EventScript_Poochyena::
\tlock
\tfaceplayer
\tspecial StartElectricWiresGame
\tplaymoncry SPECIES_EEVEE, CRY_MODE_NORMAL
\twaitmoncry
\trelease
\tend"""

NEW_NPC = """LittlerootTown_EventScript_Poochyena::
\tlock
\tfaceplayer
\tcallnative StartElectricWiresGame
\twaitstate
\trelease
\tend"""

def find_repo(explicit=None):
    if explicit:
        root = Path(explicit).expanduser().resolve()
        if not (root / "data/specials.inc").is_file():
            raise SystemExit(f"Repo inválido: {root}")
        return root

    candidates = [Path.cwd().resolve(), SCRIPT_DIR.parent.resolve(), SCRIPT_DIR.parent.parent.resolve()]
    cur = Path.cwd().resolve()
    for _ in range(8):
        candidates.append(cur)
        if cur.parent == cur:
            break
        cur = cur.parent

    seen = set()
    for root in candidates:
        if root in seen:
            continue
        seen.add(root)
        if (root / "data/specials.inc").is_file():
            return root

    raise SystemExit("Não encontrei a raiz do repo.")

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo")
    ap.add_argument("--compile", action="store_true")
    ap.add_argument("--jobs", type=int, default=8)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    repo = find_repo(args.repo)
    specials = repo / "data/specials.inc"
    script = repo / "data/maps/LittlerootTown/scripts.pory"

    if not script.is_file():
        raise SystemExit(f"Não encontrei: {script}")

    specials_text = specials.read_text(encoding="utf-8")
    script_text = script.read_text(encoding="utf-8")

    specials_changed = False
    if BROKEN_SPECIAL in specials_text:
        specials_text = specials_text.replace(BROKEN_SPECIAL, PLAIN_SPECIAL, 1)
        specials_changed = True
    elif PLAIN_SPECIAL not in specials_text:
        raise SystemExit(
            "Não encontrei StartElectricWiresGame em data/specials.inc.\n"
            "Rode: grep -n 'StartElectricWiresGame' data/specials.inc"
        )

    script_changed = False
    if NEW_NPC in script_text:
        pass
    elif OLD_NPC in script_text:
        script_text = script_text.replace(OLD_NPC, NEW_NPC, 1)
        script_changed = True
    else:
        raise SystemExit(
            "Não encontrei o NPC de teste no formato esperado.\n"
            "Envie:\n"
            "  grep -n -A12 -B2 'LittlerootTown_EventScript_Poochyena' data/maps/LittlerootTown/scripts.pory"
        )

    if args.dry_run:
        print("DRY-RUN OK.")
        print(" data/specials.inc:", "mudaria" if specials_changed else "já correto")
        print(" LittlerootTown/scripts.pory:", "mudaria" if script_changed else "já correto")
        print("")
        print("NPC ficará:")
        print(NEW_NPC)
        return 0

    backup_dir = SCRIPT_DIR / "backups"
    backup_dir.mkdir(parents=True, exist_ok=True)
    stamp = datetime.now().strftime("%Y%m%d_%H%M%S")

    if specials_changed:
        backup = backup_dir / f"specials_{stamp}.inc"
        shutil.copy2(specials, backup)
        specials.write_text(specials_text, encoding="utf-8", newline="\n")
        specials.touch()
        print("specials.inc corrigido.")
        print("Backup:", backup)

    if script_changed:
        backup = backup_dir / f"LittlerootTown_scripts_{stamp}.pory"
        shutil.copy2(script, backup)
        script.write_text(script_text, encoding="utf-8", newline="\n")
        script.touch()
        print("NPC de teste alterado para callnative + waitstate.")
        print("Backup:", backup)

    print("")
    print("Teste agora chama diretamente a função C:")
    print("  callnative StartElectricWiresGame")
    print("  waitstate")
    print("")
    print("Isso ignora a tabela de specials durante o teste.")

    if args.compile:
        cmd = ["make", f"-j{max(1, args.jobs)}"]
        print("\nExecutando:", " ".join(cmd))
        return subprocess.call(cmd, cwd=repo)

    print("\nCompile com:")
    print("  make -j8")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
