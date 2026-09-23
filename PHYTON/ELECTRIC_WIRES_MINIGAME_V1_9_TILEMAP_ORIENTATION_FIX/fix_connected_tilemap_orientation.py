#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from pathlib import Path
from datetime import datetime
import argparse
import re
import shutil
import subprocess

SCRIPT_DIR = Path(__file__).resolve().parent

# The connected *.bin files are 128 entries = 8 columns x 16 rows.
# They reconstruct a 64x128 image, NOT a 128x64 image.
TARGETS = {
    "CONNECT_MAP_W": 8,
    "CONNECT_MAP_H": 16,
    "CONNECT_MAP_X": 11,  # 88 px: centered on 240 px screen
    "CONNECT_MAP_Y": 2,   # 16 px: centered vertically for 128 px artwork
}

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

def replace_define(text, name, value):
    pat = rf'(^\s*#define\s+{re.escape(name)}\s+)\d+(\s*(?://.*)?$)'
    new_text, n = re.subn(pat, rf'\g<1>{value}\g<2>', text, count=1, flags=re.M)
    if n == 0:
        raise SystemExit(f"Não encontrei #define {name}")
    return new_text

def patch_hide_function(text):
    pat = re.compile(
        r'static void HideCableSprites\(void\)\s*\{.*?\n\}',
        re.S
    )
    m = pat.search(text)
    if not m:
        raise SystemExit("Não encontrei HideCableSprites(void)")

    replacement = """static void HideCableSprites(void)
{
    // Connected state replaces ALL three loose cable sprites.
    gSprites[sWires.cableUpSpriteId].invisible = TRUE;
    gSprites[sWires.cableLeftSpriteId].invisible = TRUE;
    gSprites[sWires.cableRightSpriteId].invisible = TRUE;
}"""
    return text[:m.start()] + replacement + text[m.end():]

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo")
    ap.add_argument("--compile", action="store_true")
    ap.add_argument("--jobs", type=int, default=8)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    repo = find_repo(args.repo)
    src = repo / "src/electric_wires.c"
    original = src.read_text(encoding="utf-8")
    patched = original

    for name, value in TARGETS.items():
        patched = replace_define(patched, name, value)

    patched = patch_hide_function(patched)

    print("=== ELECTRIC WIRES V1.9 ===")
    print("Correção real do tilemap:")
    print("  connected*.bin = 128 entries")
    print("  dimensão correta = 8 x 16 tiles = 64 x 128 px")
    print("  a versão anterior interpretava 16 x 8 = 128 x 64 px")
    print("")
    print("Novos valores:")
    for name, value in TARGETS.items():
        print(f"  {name} = {value}")
    print("")
    print("Ao conectar:")
    print("  - esconde ROSA")
    print("  - esconde AZUL")
    print("  - esconde VERDE")
    print("  - desenha somente connectedtoblue OU connectedtogreen")

    if args.dry_run:
        print("")
        print("DRY-RUN OK.")
        print(" src/electric_wires.c:", "mudaria" if patched != original else "já corrigido")
        return 0

    if patched != original:
        backup_dir = SCRIPT_DIR / "backups"
        backup_dir.mkdir(parents=True, exist_ok=True)
        stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        backup = backup_dir / f"electric_wires_{stamp}.c"
        shutil.copy2(src, backup)
        src.write_text(patched, encoding="utf-8", newline="\n")
        src.touch()
        print("")
        print("Fix aplicado.")
        print("Backup:", backup)
    else:
        print("")
        print("O arquivo já parece corrigido.")

    if args.compile:
        cmd = ["make", f"-j{max(1, args.jobs)}"]
        print("\nExecutando:", " ".join(cmd))
        return subprocess.call(cmd, cwd=repo)

    print("\nCompile com:")
    print("  make -j8")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
