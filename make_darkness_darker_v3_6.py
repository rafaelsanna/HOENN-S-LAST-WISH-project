#!/usr/bin/env python3
# Darkness V3.6 - make WEATHER_DARKNESS darker than WEATHER_DARKNESS_RAIN
#
# Current target:
#   DARKNESS_BLEND_COEFF       = 14
#   DARKNESS_RAIN_BLEND_COEFF  = unchanged (currently 11)
#
# Higher coefficient = stronger blend toward DARKNESS_BLEND_COLOR.
#
# Use from the pokeemerald-expansion root:
#   python3 make_darkness_darker_v3_6.py --dry-run
#   python3 make_darkness_darker_v3_6.py
#
# This changes only src/field_weather.c and preserves the menu/flash fixes.

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile

TARGET = Path("src/field_weather.c")
BACKUP_ROOT = Path(".darkness_v3_6_backups")
TARGET_DARKNESS_COEFF = 14


class PatchError(RuntimeError):
    pass


def log(msg=""):
    print(msg, flush=True)


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


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
        raise PatchError("Rode este script na raiz do pokeemerald-expansion.")
    path = root / TARGET
    if not path.is_file():
        raise PatchError(f"Nao encontrei {TARGET}.")


def get_coeff(text: str, name: str):
    m = re.search(
        rf"(?m)^(\s*#define\s+{re.escape(name)}\s+)(\d+)(\s*(?://.*)?)$",
        text,
    )
    if not m:
        raise PatchError(f"Nao encontrei #define {name}.")
    return m, int(m.group(2))


def apply(root: Path, dry_run: bool):
    path = root / TARGET
    original = path.read_text(encoding="utf-8")

    dark_m, dark_old = get_coeff(original, "DARKNESS_BLEND_COEFF")
    _, rain_value = get_coeff(original, "DARKNESS_RAIN_BLEND_COEFF")

    if not (0 <= dark_old <= 16 and 0 <= rain_value <= 16):
        raise PatchError(
            f"Coeficientes fora do intervalo esperado 0..16: "
            f"DARKNESS={dark_old}, DARKNESS_RAIN={rain_value}"
        )

    log("Darkness V3.6 - darker night")
    log(f"Repo: {root}")
    log()
    log(f"DARKNESS atual:      {dark_old}")
    log(f"DARKNESS_RAIN atual: {rain_value}")
    log(f"DARKNESS novo:       {TARGET_DARKNESS_COEFF}")
    log()
    log("Quanto maior o coeff, mais forte o blend para DARKNESS_BLEND_COLOR.")

    if dark_old == TARGET_DARKNESS_COEFF:
        log("\nV3.6 ja esta aplicado.")
        return None

    if TARGET_DARKNESS_COEFF <= rain_value:
        raise PatchError(
            "Configuracao interna invalida: DARKNESS precisa ficar mais escuro "
            "que DARKNESS_RAIN."
        )

    replacement = dark_m.group(1) + str(TARGET_DARKNESS_COEFF) + dark_m.group(3)
    patched = original[:dark_m.start()] + replacement + original[dark_m.end():]

    _, verify_dark = get_coeff(patched, "DARKNESS_BLEND_COEFF")
    _, verify_rain = get_coeff(patched, "DARKNESS_RAIN_BLEND_COEFF")
    if verify_dark != TARGET_DARKNESS_COEFF or verify_rain != rain_value:
        raise PatchError("Verificacao interna falhou.")

    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    backup = root / BACKUP_ROOT / stamp / TARGET

    if dry_run:
        log(f"\n[dry-run] backup seria: {backup.relative_to(root)}")
        log("[dry-run] alteraria somente DARKNESS_BLEND_COEFF.")
        log("[dry-run] nenhum arquivo foi escrito.")
        return backup

    backup.parent.mkdir(parents=True, exist_ok=False)
    shutil.copy2(path, backup)
    (backup.parent.parent / "manifest.json").write_text(
        json.dumps(
            {
                "created_at": dt.datetime.now().isoformat(timespec="seconds"),
                "file": TARGET.as_posix(),
                "sha256_before": sha256(path),
                "darkness_before": dark_old,
                "darkness_after": TARGET_DARKNESS_COEFF,
                "darkness_rain_unchanged": rain_value,
            },
            indent=2,
        ) + "\n",
        encoding="utf-8",
    )

    atomic_write(path, patched.encode("utf-8"))

    disk = path.read_text(encoding="utf-8")
    _, disk_dark = get_coeff(disk, "DARKNESS_BLEND_COEFF")
    _, disk_rain = get_coeff(disk, "DARKNESS_RAIN_BLEND_COEFF")
    if disk_dark != TARGET_DARKNESS_COEFF or disk_rain != rain_value:
        raise PatchError("Falha ao verificar arquivo depois da escrita.")

    log(f"\nBackup: {backup.relative_to(root)}")
    log(f"SHA depois: {sha256(path)}")
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
            raise PatchError("git diff --check encontrou um problema.")


def build(root: Path, jobs: int):
    make = shutil.which("make")
    if not make:
        raise PatchError("make nao encontrado no PATH.")

    log(f"\nCompilando: {make} -j{jobs}")
    rc = subprocess.run([make, f"-j{jobs}"], cwd=root).returncode
    if rc != 0:
        raise PatchError(f"Build falhou com codigo {rc}.")
    log("\nBUILD OK.")


def main():
    p = argparse.ArgumentParser(
        description="Deixa WEATHER_DARKNESS mais escuro que DARKNESS_RAIN."
    )
    p.add_argument("--root", type=Path, default=Path.cwd())
    p.add_argument("--dry-run", action="store_true")
    p.add_argument("--no-build", action="store_true")
    p.add_argument("--jobs", type=int, default=8)
    args = p.parse_args()

    if args.jobs < 1:
        raise PatchError("--jobs precisa ser >= 1")

    root = args.root.expanduser().resolve()
    validate_root(root)
    backup = apply(root, args.dry_run)

    if args.dry_run:
        return 0

    git_check(root)

    if not args.no_build:
        try:
            build(root, args.jobs)
        except PatchError:
            if backup is not None:
                log("\nBackup preservado em:")
                log(f"  {backup.relative_to(root)}")
            raise

    log("\nResultado:")
    log("  WEATHER_DARKNESS      = bem mais escuro")
    log("  WEATHER_DARKNESS_RAIN = mantem a intensidade atual")
    log("  fixes de menu e flash permanecem intactos")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except PatchError as e:
        print(f"\nERRO: {e}", file=sys.stderr)
        raise SystemExit(1)
