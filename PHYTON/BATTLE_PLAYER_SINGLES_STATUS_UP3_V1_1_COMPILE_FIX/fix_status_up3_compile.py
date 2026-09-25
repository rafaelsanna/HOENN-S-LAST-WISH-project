#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from pathlib import Path
from datetime import datetime
import argparse
import shutil
import subprocess

SCRIPT_DIR = Path(__file__).resolve().parent

DECL = "static bool8 sPlayerSinglesStatusUpperBackupValid[MAX_BATTLERS_COUNT];"
MARKER = "HLW PLAYER SINGLES STATUS UP 3PX V1"

def find_repo(explicit=None):
    if explicit:
        root = Path(explicit).expanduser().resolve()
        if not (root / "src/battle_interface.c").is_file():
            raise SystemExit(f"Repo inválido: {root}")
        return root

    cur = Path.cwd().resolve()
    for root in [cur, *cur.parents]:
        if (root / "src/battle_interface.c").is_file():
            return root
    raise SystemExit("Não encontrei a raiz do repo com src/battle_interface.c")

def patch_source(text):
    if MARKER not in text:
        raise SystemExit("A V1 do STATUS UP 3PX não parece estar aplicada.")

    # Remove the late declaration added by V1.
    text = text.replace(DECL + "\n", "")
    text = text.replace(DECL, "")

    # Reinsert it before CreateBattlerHealthboxSprites and all function bodies.
    anchor = "static struct ComfyAnim sLastUsedBallAnim;\n"
    if anchor not in text:
        raise SystemExit("Não encontrei 'sLastUsedBallAnim' para posicionar a declaração.")

    text = text.replace(
        anchor,
        anchor
        + "\n"
        + "// V1.1: used by CreateBattlerHealthboxSprites, so declare it first.\n"
        + DECL + "\n",
        1
    )
    return text

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo")
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--compile", action="store_true")
    ap.add_argument("--jobs", type=int, default=8)
    args = ap.parse_args()

    repo = find_repo(args.repo)
    path = repo / "src/battle_interface.c"
    original = path.read_text(encoding="utf-8")
    patched = patch_source(original)

    first_use = patched.find("sPlayerSinglesStatusUpperBackupValid[battler] = FALSE;")
    decl_pos = patched.find(DECL)

    if decl_pos < 0 or first_use < 0 or decl_pos > first_use:
        raise SystemExit("Validação falhou: declaração ainda ficou depois do primeiro uso.")

    print("=== STATUS UP 3PX V1.1 COMPILE FIX ===")
    print("Corrigindo somente a ordem da declaração:")
    print(" sPlayerSinglesStatusUpperBackupValid -> antes de CreateBattlerHealthboxSprites")

    if args.dry_run:
        print("\nDRY-RUN OK.")
        return 0

    if patched != original:
        backup_dir = SCRIPT_DIR / "backups"
        backup_dir.mkdir(parents=True, exist_ok=True)
        stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        backup = backup_dir / f"battle_interface_{stamp}.c"
        shutil.copy2(path, backup)
        path.write_text(patched, encoding="utf-8", newline="\n")
        print("\nCompile fix aplicado.")
        print("Backup:", backup)
    else:
        print("\nArquivo já parece corrigido.")

    if args.compile:
        cmd = ["make", f"-j{max(1, args.jobs)}"]
        print("\nExecutando:", " ".join(cmd))
        return subprocess.call(cmd, cwd=repo)

    return 0

if __name__ == "__main__":
    raise SystemExit(main())
