#!/usr/bin/env python3
# Darkness Flash Kill V3.5
#
# Corrige o "raio"/flash claro de 1 frame que aparece periodicamente
# em WEATHER_DARKNESS / WEATHER_DARKNESS_RAIN.
#
# Uso:
#   python3 fix_darkness_flash_v3_5.py --dry-run
#   python3 fix_darkness_flash_v3_5.py
#
# Altera somente src/field_weather.c.

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
BACKUP_ROOT = Path(".darkness_flash_v3_5_backups")


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

    text = path.read_text(encoding="utf-8")
    required = [
        "WEATHER_DARKNESS",
        "WEATHER_DARKNESS_RAIN",
        "DARKNESS_BLEND_COEFF",
        "DARKNESS_RAIN_BLEND_COEFF",
        "Darkness_ApplyLightingToCurrentPalettes",
        "ApplyWeatherColorMapIfIdle",
    ]
    missing = [x for x in required if x not in text]
    if missing:
        raise PatchError(
            "field_weather.c nao parece conter o Darkness atual. Faltando: "
            + ", ".join(missing)
        )


def find_function(text: str, name: str):
    pattern = re.compile(
        rf"(?m)^[ \t]*(?:static[ \t]+)?"
        rf"(?:void|bool8|u8|u16|s8|s16|s32|u32)[ \t]+"
        rf"{re.escape(name)}[ \t]*\([^;]*?\)[ \t]*\n?[ \t]*\{{"
    )
    m = pattern.search(text)
    if not m:
        raise PatchError(f"Definicao real de {name}() nao encontrada.")

    brace = text.find("{", m.start(), m.end() + 1)
    depth = 0
    i = brace
    in_string = False
    in_char = False
    escape = False
    line_comment = False
    block_comment = False

    while i < len(text):
        c = text[i]
        n = text[i + 1] if i + 1 < len(text) else ""

        if line_comment:
            if c == "\n":
                line_comment = False
            i += 1
            continue
        if block_comment:
            if c == "*" and n == "/":
                block_comment = False
                i += 2
                continue
            i += 1
            continue
        if in_string:
            if escape:
                escape = False
            elif c == "\\":
                escape = True
            elif c == '"':
                in_string = False
            i += 1
            continue
        if in_char:
            if escape:
                escape = False
            elif c == "\\":
                escape = True
            elif c == "'":
                in_char = False
            i += 1
            continue

        if c == "/" and n == "/":
            line_comment = True
            i += 2
            continue
        if c == "/" and n == "*":
            block_comment = True
            i += 2
            continue
        if c == '"':
            in_string = True
            i += 1
            continue
        if c == "'":
            in_char = True
            i += 1
            continue

        if c == "{":
            depth += 1
        elif c == "}":
            depth -= 1
            if depth == 0:
                end = i + 1
                if end < len(text) and text[end] == "\n":
                    end += 1
                return m.start(), end, text[m.start():end]
        i += 1

    raise PatchError(f"Fim de {name}() nao encontrado.")


NEW_FUNCTION = '''void ApplyWeatherColorMapIfIdle(s8 colorMapIndex)
{
    if (gWeatherPtr->palProcessingState == WEATHER_PAL_STATE_IDLE)
    {
        // The overworld periodically refreshes Time-of-Day palettes and calls
        // this function. Darkness keeps colorMapIndex at 0, so the stock path
        // would restore the normal bright map palette for exactly one frame.
        //
        // Reapply the custom Darkness grade immediately in the SAME frame.
        if (gWeatherPtr->currWeather == WEATHER_DARKNESS)
        {
            Darkness_ApplyLightingToCurrentPalettes(DARKNESS_BLEND_COEFF);
            gWeatherPtr->colorMapIndex = 0;
            return;
        }

        if (gWeatherPtr->currWeather == WEATHER_DARKNESS_RAIN)
        {
            Darkness_ApplyLightingToCurrentPalettes(DARKNESS_RAIN_BLEND_COEFF);
            gWeatherPtr->colorMapIndex = 0;
            return;
        }

        ApplyColorMap(0, 32, colorMapIndex);
        gWeatherPtr->colorMapIndex = colorMapIndex;
    }
}'''


def patch(root: Path, dry_run: bool):
    path = root / TARGET
    original = path.read_text(encoding="utf-8")
    start, end, old = find_function(original, "ApplyWeatherColorMapIfIdle")

    if (
        "gWeatherPtr->currWeather == WEATHER_DARKNESS" in old
        and "gWeatherPtr->currWeather == WEATHER_DARKNESS_RAIN" in old
        and "Darkness_ApplyLightingToCurrentPalettes" in old
    ):
        log("Darkness Flash Kill V3.5 ja esta aplicado.")
        return None

    patched = original[:start] + NEW_FUNCTION.rstrip() + "\n" + original[end:]

    _, _, verify = find_function(patched, "ApplyWeatherColorMapIfIdle")
    required = [
        "gWeatherPtr->currWeather == WEATHER_DARKNESS",
        "gWeatherPtr->currWeather == WEATHER_DARKNESS_RAIN",
        "Darkness_ApplyLightingToCurrentPalettes(DARKNESS_BLEND_COEFF);",
        "Darkness_ApplyLightingToCurrentPalettes(DARKNESS_RAIN_BLEND_COEFF);",
        "ApplyColorMap(0, 32, colorMapIndex);",
    ]
    missing = [x for x in required if x not in verify]
    if missing:
        raise PatchError("Verificacao interna falhou: " + ", ".join(missing))

    log("Darkness Flash Kill V3.5")
    log(f"Repo: {root}")
    log()
    log("Causa:")
    log("  refresh periodico de Time-of-Day")
    log("      -> ApplyWeatherColorMapIfIdle(colorMapIndex=0)")
    log("      -> palette normal por 1 frame")
    log("      -> no frame seguinte Darkness_Main escurecia de novo")
    log()
    log("Fix:")
    log("  DARKNESS/DARKNESS_RAIN reaplicam o filtro no mesmo frame.")
    log("  Outros weathers continuam usando o comportamento original.")

    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    backup = root / BACKUP_ROOT / stamp / TARGET

    if dry_run:
        log(f"\n[dry-run] backup seria: {backup.relative_to(root)}")
        log("[dry-run] nenhum arquivo foi alterado.")
        return backup

    backup.parent.mkdir(parents=True, exist_ok=False)
    shutil.copy2(path, backup)

    manifest = {
        "created_at": dt.datetime.now().isoformat(timespec="seconds"),
        "file": TARGET.as_posix(),
        "sha256_before": sha256(path),
    }
    (backup.parent.parent / "manifest.json").write_text(
        json.dumps(manifest, indent=2) + "\n",
        encoding="utf-8",
    )

    atomic_write(path, patched.encode("utf-8"))

    _, _, verify_disk = find_function(
        path.read_text(encoding="utf-8"),
        "ApplyWeatherColorMapIfIdle",
    )
    if "WEATHER_DARKNESS_RAIN" not in verify_disk:
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
        description="Elimina o flash periodico de DARKNESS/DARKNESS_RAIN."
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
    backup = patch(root, args.dry_run)

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

    log("\nTeste recomendado:")
    log("  - deixe DARKNESS_RAIN ativo por pelo menos 30 segundos;")
    log("  - esperado: nenhum frame claro/efeito de raio;")
    log("  - menus continuam normais, preservando o fix V3.4.")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except PatchError as e:
        print(f"\nERRO: {e}", file=sys.stderr)
        raise SystemExit(1)
