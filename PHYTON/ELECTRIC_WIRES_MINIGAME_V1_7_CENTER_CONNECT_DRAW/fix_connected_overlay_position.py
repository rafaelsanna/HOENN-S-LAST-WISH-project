#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from pathlib import Path
from datetime import datetime
import argparse
import re
import shutil
import subprocess

SCRIPT_DIR = Path(__file__).resolve().parent

TARGET_Y = 8  # was 5; move connected overlay down 24 px so the wires join in the middle

def find_repo(explicit=None):
    if explicit:
        root = Path(explicit).expanduser().resolve()
        if not (root / "src/electric_wires.c").is_file():
            raise SystemExit(f"Repo inválido: {root}")
        return root

    cur = Path.cwd().resolve()
    candidates = [cur, *cur.parents, SCRIPT_DIR.parent.resolve(), SCRIPT_DIR.parent.parent.resolve()]
    seen = set()
    for root in candidates:
        root = root.resolve()
        if root in seen:
            continue
        seen.add(root)
        if (root / "src/electric_wires.c").is_file():
            return root

    raise SystemExit("Não encontrei a raiz do repo com src/electric_wires.c")

def patch_source(text):
    m = re.search(r'(^\s*#define\s+CONNECT_MAP_Y\s+)(\d+)(\s*(?://.*)?$)', text, flags=re.M)
    if not m:
        raise SystemExit("Não encontrei o #define CONNECT_MAP_Y em src/electric_wires.c")
    current = int(m.group(2))
    new_text = re.sub(r'(^\s*#define\s+CONNECT_MAP_Y\s+)\d+(\s*(?://.*)?$)',
                      rf'\g<1>{TARGET_Y}\g<2>', text, count=1, flags=re.M)
    return new_text, current

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo")
    ap.add_argument("--compile", action="store_true")
    ap.add_argument("--jobs", type=int, default=8)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    repo = find_repo(args.repo)
    src = repo / "src/electric_wires.c"
    text = src.read_text(encoding="utf-8")
    new_text, current = patch_source(text)

    print("=== ELECTRIC WIRES CONNECT DRAW FIX ===")
    print(f"Repo: {repo}")
    print("")
    print("Mudança:")
    print(f"  CONNECT_MAP_Y: {current} -> {TARGET_Y}")
    print("  Efeito: move o overlay connectedtoblue/connectedtogreen 24 px para baixo")
    print("          para as pontas se juntarem no meio, como no mockup.")

    if args.dry_run:
        print("")
        print("DRY-RUN OK.")
        print(" electric_wires.c:", "mudaria" if text != new_text else "já estava correto")
        return 0

    if text != new_text:
        backup_dir = SCRIPT_DIR / "backups"
        backup_dir.mkdir(parents=True, exist_ok=True)
        stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        backup = backup_dir / f"electric_wires_{stamp}.c"
        shutil.copy2(src, backup)
        src.write_text(new_text, encoding="utf-8", newline="\n")
        src.touch()

        print("")
        print("Fix aplicado.")
        print("Backup:", backup)
    else:
        print("")
        print("O arquivo já estava com esse ajuste.")

    if args.compile:
        cmd = ["make", f"-j{max(1, args.jobs)}"]
        print("\nExecutando:", " ".join(cmd))
        return subprocess.call(cmd, cwd=repo)

    print("\nCompile com:")
    print("  make -j8")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
