#!/usr/bin/env python3
"""
Hotfix V3.1 - Dark Suicune linker fix.

Coloque este arquivo na raiz do pokeemerald-expansion e rode:

    python3 fix_dark_suicune_v3_linker.py

O erro corrigido e:
    `.data' referenced in section `.text' of src/dark_suicune_scene.o:
    defined in discarded section `.data'

Causa:
    dois estados mutaveis da cutscene foram declarados como `static u8`,
    caindo em .data. O linker moderno da repo descarta essa secao para esse
    objeto. Eles devem ficar em EWRAM_DATA, como o restante do estado mutavel
    persistente do engine.

O script:
  * valida o arquivo;
  * cria backup;
  * troca somente as 2 declaracoes problematicas;
  * roda git diff --check;
  * compila com make -j8 por padrao.
"""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile


TARGET = Path("src/dark_suicune_scene.c")
BACKUP_DIR = Path(".dark_suicune_v3_linker_backups")

OLD_BLOCK = """static u8 sDarkSuicuneMountainSpriteIds[DARK_SUICUNE_MOUNTAIN_SPRITES];
static u8 sDarkSuicuneSharedMatrix = 0xFF;"""

NEW_BLOCK = """EWRAM_DATA static u8 sDarkSuicuneMountainSpriteIds[DARK_SUICUNE_MOUNTAIN_SPRITES] = {0};
EWRAM_DATA static u8 sDarkSuicuneSharedMatrix = 0;"""


class FixError(RuntimeError):
    pass


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def atomic_write(path: Path, data: bytes):
    mode = path.stat().st_mode
    fd, tmp_name = tempfile.mkstemp(prefix=path.name + ".tmp.", dir=str(path.parent))
    tmp = Path(tmp_name)
    try:
        with os.fdopen(fd, "wb") as f:
            f.write(data)
            f.flush()
            os.fsync(f.fileno())
        os.chmod(tmp, mode)
        os.replace(tmp, path)
    finally:
        if tmp.exists():
            tmp.unlink()


def validate_root(root: Path):
    if not (root / "Makefile").is_file():
        raise FixError("Rode este script na raiz do pokeemerald-expansion.")
    if not (root / TARGET).is_file():
        raise FixError(f"Nao encontrei {TARGET}.")


def create_backup(root: Path, src: Path) -> Path:
    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    dest = root / BACKUP_DIR / stamp / TARGET
    dest.parent.mkdir(parents=True, exist_ok=False)
    shutil.copy2(src, dest)
    return dest


def apply(root: Path, dry_run: bool):
    path = root / TARGET
    text = path.read_text(encoding="utf-8")

    if NEW_BLOCK in text:
        print("Hotfix V3.1 ja esta aplicado.")
        return None

    if OLD_BLOCK not in text:
        # Diagnose partially changed or unexpected versions explicitly.
        mountain_old = "static u8 sDarkSuicuneMountainSpriteIds[DARK_SUICUNE_MOUNTAIN_SPRITES];"
        matrix_old = "static u8 sDarkSuicuneSharedMatrix = 0xFF;"
        found = []
        if mountain_old in text:
            found.append("mountain array antigo")
        if matrix_old in text:
            found.append("shared matrix antigo")

        raise FixError(
            "Nao encontrei o bloco V3 esperado exatamente.\n"
            f"Estado parcial detectado: {', '.join(found) if found else 'nenhuma declaracao antiga'}.\n"
            "Parei para nao alterar uma versao diferente do arquivo."
        )

    print("Dark Suicune V3.1 linker hotfix")
    print(f"Antes: {sha256(path)}")
    print()
    print("Mudanca:")
    print("  static u8 ...                 -> EWRAM_DATA static u8 ... = {0}")
    print("  static u8 matrix = 0xFF       -> EWRAM_DATA static u8 matrix = 0")
    print()
    print("Observacao: a propria inicializacao da cutscene redefine a matrix para 0xFF")
    print("antes de CreateDarkSuicuneMountainSprites(), entao o valor inicial zero")
    print("em EWRAM nao altera o comportamento da cena.")

    if dry_run:
        print("\n[dry-run] Nenhum arquivo foi alterado.")
        return None

    backup = create_backup(root, path)
    new_text = text.replace(OLD_BLOCK, NEW_BLOCK, 1)
    atomic_write(path, new_text.encode("utf-8"))

    if NEW_BLOCK not in path.read_text(encoding="utf-8"):
        raise FixError("Falha ao verificar a alteracao apos escrita.")

    print(f"\nBackup: {backup.relative_to(root)}")
    print(f"Depois: {sha256(path)}")
    return backup


def git_check(root: Path):
    git = shutil.which("git")
    if git and (root / ".git").exists():
        print("\nVerificando whitespace...")
        rc = subprocess.run(
            [git, "diff", "--check", "--", str(TARGET)],
            cwd=root
        ).returncode
        if rc != 0:
            raise FixError("git diff --check encontrou um problema.")


def build(root: Path, jobs: int):
    make = shutil.which("make")
    if not make:
        raise FixError("make nao encontrado no PATH.")
    print(f"\nCompilando: {make} -j{jobs}")
    rc = subprocess.run([make, f"-j{jobs}"], cwd=root).returncode
    if rc != 0:
        raise FixError(f"Build ainda falhou (codigo {rc}).")
    print("\nBUILD OK. Pokemon_HLW.gba foi regenerado.")


def main():
    p = argparse.ArgumentParser(description="Hotfix Dark Suicune V3 .data linker error")
    p.add_argument("--root", type=Path, default=Path.cwd())
    p.add_argument("--dry-run", action="store_true")
    p.add_argument("--no-build", action="store_true")
    p.add_argument("--jobs", type=int, default=8)
    args = p.parse_args()

    if args.jobs < 1:
        raise FixError("--jobs precisa ser >= 1")

    root = args.root.expanduser().resolve()
    validate_root(root)
    backup = apply(root, args.dry_run)

    if args.dry_run:
        return 0

    git_check(root)

    if not args.no_build:
        try:
            build(root, args.jobs)
        except FixError:
            if backup is not None:
                print("\nO backup ficou preservado em:")
                print(f"  {backup.relative_to(root)}")
            raise

    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except FixError as e:
        print(f"\nERRO: {e}", file=sys.stderr)
        raise SystemExit(1)
