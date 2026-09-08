#!/usr/bin/env python3
"""
Dark Suicune - RESTORE FUNCTIONAL V2.1

Objetivo: voltar para a versao funcional da cutscene e fazer UMA unica mudanca:
o Suicune fica correndo no centro por 3x mais tempo.

Base funcional:
    DARK_SUICUNE_RUN_PAUSE_FRAMES = 48

V2.1:
    DARK_SUICUNE_RUN_PAUSE_FRAMES = 144

NAO adiciona:
  - zoom intermediario;
  - affine na montanha;
  - aceleracao;
  - vermelho no primeiro Suicune;
  - novas logicas de movimento.

Mantem:
  - bg01 loopando;
  - bg02/montanha estatica;
  - entrada/corrida/saida da versao funcional;
  - close final reconstruido e affine;
  - weather DARKNESS/DARKNESS_RAIN intactos (este script nao toca weather).

Use na raiz da repo:

    python3 restore_dark_suicune_functional_v2_1.py --dry-run
    python3 restore_dark_suicune_functional_v2_1.py
"""

from __future__ import annotations

import argparse
import base64
import datetime as dt
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import zlib

TARGET = Path("src/dark_suicune_scene.c")
BACKUP_ROOT = Path(".dark_suicune_restore_functional_backups")
EXPECTED_SHA = "850163211dc2be67fd976d43daa4ed56296b8ed78da353e1a280ae2600c36b3e"

PAYLOAD = (
    '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'
)


class RestoreError(RuntimeError):
    pass


def log(msg=""):
    print(msg, flush=True)


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha256_file(path: Path):
    if not path.is_file():
        return None
    h = hashlib.sha256()
    with path.open("rb") as f:
        for block in iter(lambda: f.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def decode_payload() -> bytes:
    data = zlib.decompress(base64.b64decode(PAYLOAD.encode("ascii")))
    got = sha256_bytes(data)
    if got != EXPECTED_SHA:
        raise RestoreError(f"Payload corrompido: {got} != {EXPECTED_SHA}")
    return data


def atomic_write(path: Path, data: bytes):
    mode = path.stat().st_mode if path.exists() else None
    fd, tmp_name = tempfile.mkstemp(prefix=path.name + ".tmp.", dir=str(path.parent))
    tmp = Path(tmp_name)
    try:
        with os.fdopen(fd, "wb") as f:
            f.write(data)
            f.flush()
            os.fsync(f.fileno())
        if mode is not None:
            os.chmod(tmp, mode)
        os.replace(tmp, path)
    finally:
        if tmp.exists():
            tmp.unlink()


def validate_root(root: Path):
    if not (root / "Makefile").is_file():
        raise RestoreError("Rode este script na raiz do pokeemerald-expansion.")
    if not (root / TARGET).is_file():
        raise RestoreError(f"Nao encontrei {TARGET}.")

    # Assets do close funcional precisam continuar instalados.
    required = [
        Path("graphics/dark_suicune/close_affine.8bpp"),
        Path("graphics/dark_suicune/close_affine.bin"),
    ]
    missing = [str(p) for p in required if not (root / p).is_file()]
    if missing:
        raise RestoreError(
            "Assets da versao funcional estao faltando: " + ", ".join(missing)
        )


def make_backup(root: Path, dry_run: bool) -> Path:
    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    dest_dir = root / BACKUP_ROOT / stamp
    dest = dest_dir / TARGET

    if dry_run:
        log(f"[dry-run] backup seria: {dest.relative_to(root)}")
        return dest

    dest.parent.mkdir(parents=True, exist_ok=False)
    shutil.copy2(root / TARGET, dest)

    (dest_dir / "manifest.json").write_text(
        json.dumps(
            {
                "created_at": dt.datetime.now().isoformat(timespec="seconds"),
                "file": TARGET.as_posix(),
                "sha256_before": sha256_file(root / TARGET),
            },
            indent=2,
        ) + "\n",
        encoding="utf-8",
    )
    return dest


def latest_backup(root: Path) -> Path:
    parent = root / BACKUP_ROOT
    if not parent.is_dir():
        raise RestoreError("Nenhum backup deste restore foi encontrado.")

    dirs = sorted(
        [p for p in parent.iterdir()
         if p.is_dir() and (p / "manifest.json").is_file()],
        reverse=True,
    )
    if not dirs:
        raise RestoreError("Nenhum backup valido encontrado.")
    return dirs[0]


def restore_latest(root: Path, dry_run: bool):
    b = latest_backup(root)
    src = b / TARGET
    if not src.is_file():
        raise RestoreError(f"Backup incompleto: {src}")

    if dry_run:
        log(f"[dry-run] restauraria {src.relative_to(root)} -> {TARGET}")
        return

    atomic_write(root / TARGET, src.read_bytes())
    log(f"Backup restaurado: {b.relative_to(root)}")


def install(root: Path, dry_run: bool):
    target = root / TARGET
    data = decode_payload()
    current_hash = sha256_file(target)

    log("Dark Suicune - Restore Functional V2.1")
    log(f"Repo: {root}")
    log(f"SHA atual: {current_hash}")
    log(f"SHA alvo:  {EXPECTED_SHA}")
    log()
    log("Esta versao faz SOMENTE:")
    log("  RUN_PAUSE_FRAMES 48 -> 144")
    log()
    log("Nao mexe em weather, scripts de mapa, assets ou outras cenas.")

    if current_hash == EXPECTED_SHA:
        log("\nA versao funcional V2.1 ja esta instalada.")
        return None

    backup = make_backup(root, dry_run)

    if dry_run:
        log("\n[dry-run] substituiria apenas src/dark_suicune_scene.c")
        log("[dry-run] nenhum arquivo foi alterado.")
        return backup

    atomic_write(target, data)
    got = sha256_file(target)
    if got != EXPECTED_SHA:
        raise RestoreError(f"Falha na verificacao SHA: {got}")

    log(f"\nBackup: {backup.relative_to(root)}")
    log("Cena funcional restaurada com pausa central 3x maior.")
    return backup


def git_check(root: Path):
    git = shutil.which("git")
    if git and (root / ".git").exists():
        log("\nVerificando whitespace...")
        rc = subprocess.run(
            [git, "diff", "--check", "--", str(TARGET)],
            cwd=root,
        ).returncode
        if rc != 0:
            raise RestoreError("git diff --check encontrou um problema.")


def build(root: Path, jobs: int):
    make = shutil.which("make")
    if not make:
        raise RestoreError("make nao encontrado no PATH.")

    log(f"\nCompilando: {make} -j{jobs}")
    rc = subprocess.run([make, f"-j{jobs}"], cwd=root).returncode
    if rc != 0:
        raise RestoreError(f"Build falhou com codigo {rc}.")
    log("\nBUILD OK.")


def main():
    p = argparse.ArgumentParser(
        description="Volta a Dark Suicune para a versao funcional, com 3x mais tempo no centro."
    )
    p.add_argument("--root", type=Path, default=Path.cwd())
    p.add_argument("--dry-run", action="store_true")
    p.add_argument("--no-build", action="store_true")
    p.add_argument("--jobs", type=int, default=8)
    p.add_argument("--restore-latest", action="store_true")
    args = p.parse_args()

    if args.jobs < 1:
        raise RestoreError("--jobs precisa ser >= 1")

    root = args.root.expanduser().resolve()
    validate_root(root)

    if args.restore_latest:
        restore_latest(root, args.dry_run)
        return 0

    backup = install(root, args.dry_run)

    if args.dry_run:
        return 0

    git_check(root)

    if not args.no_build:
        try:
            build(root, args.jobs)
        except RestoreError:
            if backup is not None:
                log("\nPara desfazer este restore:")
                log("  python3 restore_dark_suicune_functional_v2_1.py --restore-latest")
            raise

    log("\nTeste esperado:")
    log("  - mesma cutscene funcional do video de referencia;")
    log("  - Suicune chega ao centro;")
    log("  - continua animando a corrida no mesmo ponto por 144 frames;")
    log("  - depois segue exatamente o fluxo funcional anterior;")
    log("  - nenhuma affine/zoom intermediario novo.")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except RestoreError as e:
        print(f"\nERRO: {e}", file=sys.stderr)
        raise SystemExit(1)
