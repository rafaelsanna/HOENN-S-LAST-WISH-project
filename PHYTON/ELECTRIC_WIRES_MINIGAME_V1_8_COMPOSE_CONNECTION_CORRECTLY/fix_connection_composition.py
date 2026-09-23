#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from pathlib import Path
from datetime import datetime
import argparse
import re
import shutil
import subprocess

SCRIPT_DIR = Path(__file__).resolve().parent

TARGET_CONNECT_Y = 5  # draw the connection strip where it joins the hanging middle cable

def find_repo(explicit=None):
    if explicit:
        root = Path(explicit).expanduser().resolve()
        if not (root / "src/electric_wires.c").is_file():
            raise SystemExit(f"Repo inválido: {root}")
        return root

    cur = Path.cwd().resolve()
    for root in [cur, *cur.parents, SCRIPT_DIR.parent.resolve(), SCRIPT_DIR.parent.parent.resolve()]:
        if (root / "src/electric_wires.c").is_file():
            return root
    raise SystemExit("Não encontrei a raiz do repo com src/electric_wires.c")

def patch_source(text: str):
    changes = []

    new_text, n = re.subn(
        r'(^\s*#define\s+CONNECT_MAP_Y\s+)\d+(\s*(?://.*)?$)',
        rf'\g<1>{TARGET_CONNECT_Y}\g<2>',
        text,
        count=1,
        flags=re.M
    )
    if n == 0:
        raise SystemExit("Não encontrei #define CONNECT_MAP_Y")
    if new_text != text:
        changes.append(f"CONNECT_MAP_Y -> {TARGET_CONNECT_Y}")
    text = new_text

    old_fn = re.search(
        r'static void HideCableSprites\(void\)\s*\{\s*'
        r'gSprites\[sWires\.cableUpSpriteId\]\.invisible\s*=\s*TRUE;\s*'
        r'gSprites\[sWires\.cableLeftSpriteId\]\.invisible\s*=\s*TRUE;\s*'
        r'gSprites\[sWires\.cableRightSpriteId\]\.invisible\s*=\s*TRUE;\s*'
        r'\}',
        text,
        flags=re.S
    )
    if not old_fn:
        raise SystemExit("Não encontrei a função HideCableSprites esperada")

    replacement = """static void HideCableSprites(void)
{
    // The connected overlay is only the lower connection strip.
    // The hanging middle cable must remain visible so both parts join in the center.
    gSprites[sWires.cableUpSpriteId].invisible = FALSE;
    gSprites[sWires.cableLeftSpriteId].invisible = TRUE;
    gSprites[sWires.cableRightSpriteId].invisible = TRUE;
}"""
    text2 = text[:old_fn.start()] + replacement + text[old_fn.end():]
    if text2 != text:
        changes.append("HideCableSprites -> mantém cableUp visível")
    text = text2

    return text, changes

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
    patched, changes = patch_source(original)

    print("=== ELECTRIC WIRES COMPOSITION FIX ===")
    print(f"Repo: {repo}")
    print("")
    print("Ideia correta:")
    print("  - connectedtoblue / connectedtogreen NÃO são um desenho completo sozinho;")
    print("  - eles são a faixa inferior da conexão;")
    print("  - o cabo do meio (cableup) precisa continuar visível;")
    print("  - a faixa connected precisa ficar na altura em que ela encaixa no cabo do meio.")
    print("")
    print("Mudanças detectadas:")
    if changes:
        for c in changes:
            print(" -", c)
    else:
        print(" - nada a mudar (já parece correto)")

    if args.dry_run:
        print("")
        print("DRY-RUN OK.")
        print(" electric_wires.c:", "mudaria" if patched != original else "já estava correto")
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
        print("O arquivo já estava nesse estado.")

    if args.compile:
        cmd = ["make", f"-j{max(1, args.jobs)}"]
        print("\nExecutando:", " ".join(cmd))
        return subprocess.call(cmd, cwd=repo)

    print("\nCompile com:")
    print("  make -j8")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
