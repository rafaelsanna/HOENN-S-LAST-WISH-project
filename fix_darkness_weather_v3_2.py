#!/usr/bin/env python3
"""
Hotfix V3.2 - WEATHER_DARKNESS / WEATHER_DARKNESS_RAIN activation fix.

Put this file in the root of pokeemerald-expansion and run:

    python3 fix_darkness_weather_v3_2.py --dry-run
    python3 fix_darkness_weather_v3_2.py

Why the weather appeared in the debug menu but did nothing:
    SetWeather() does not pass the selected weather straight through.
    It calls SetSavedWeather(), which calls TranslateWeatherNum().
    The V3 installer registered DARKNESS in the callback/name tables, but
    forgot to add DARKNESS and DARKNESS_RAIN to TranslateWeatherNum().
    Therefore both IDs fell into the default case and became WEATHER_NONE.

This hotfix:
  * adds WEATHER_DARKNESS -> WEATHER_DARKNESS to TranslateWeatherNum();
  * adds WEATHER_DARKNESS_RAIN -> WEATHER_DARKNESS_RAIN;
  * treats DARKNESS_RAIN as rain in UpdateRainCounter();
  * verifies the V3 callback registration is present;
  * creates a timestamped backup;
  * runs git diff --check;
  * runs make -j8 by default.

It is idempotent and safe to re-run.
"""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile


TARGET_EFFECT = Path("src/field_weather_effect.c")
TARGET_WEATHER = Path("src/field_weather.c")
TARGET_CONSTANTS = Path("include/constants/weather.h")
BACKUP_ROOT = Path(".darkness_weather_v3_2_backups")


class FixError(RuntimeError):
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
    path.parent.mkdir(parents=True, exist_ok=True)
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
    for rel in ("Makefile", TARGET_EFFECT, TARGET_WEATHER, TARGET_CONSTANTS):
        p = root / rel
        if not p.exists():
            raise FixError(f"Arquivo/pasta obrigatorio nao encontrado: {rel}")

    constants = (root / TARGET_CONSTANTS).read_text(encoding="utf-8")
    if "WEATHER_DARKNESS" not in constants or "WEATHER_DARKNESS_RAIN" not in constants:
        raise FixError(
            "Os defines WEATHER_DARKNESS / WEATHER_DARKNESS_RAIN nao existem. "
            "Aplique primeiro o upgrade V3."
        )

    weather = (root / TARGET_WEATHER).read_text(encoding="utf-8")
    required = [
        "[WEATHER_DARKNESS]",
        "[WEATHER_DARKNESS_RAIN]",
        "Darkness_InitVars",
        "DarknessRain_InitVars",
    ]
    missing = [x for x in required if x not in weather]
    if missing:
        raise FixError(
            "field_weather.c nao parece conter a implementacao V3 completa. "
            "Faltando: " + ", ".join(missing)
        )


def make_backup(root: Path, target: Path, dry_run: bool) -> Path:
    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    dest_dir = root / BACKUP_ROOT / stamp
    dest = dest_dir / target

    if dry_run:
        log(f"[dry-run] backup seria: {dest.relative_to(root)}")
        return dest

    dest.parent.mkdir(parents=True, exist_ok=False)
    shutil.copy2(root / target, dest)

    manifest = {
        "created_at": dt.datetime.now().isoformat(timespec="seconds"),
        "file": target.as_posix(),
        "sha256_before": sha256(root / target),
    }
    (dest_dir / "manifest.json").write_text(
        json.dumps(manifest, indent=2) + "\n",
        encoding="utf-8",
    )
    return dest


def patch_translate_weather(text: str):
    if (
        "case WEATHER_DARKNESS:           return WEATHER_DARKNESS;" in text
        and "case WEATHER_DARKNESS_RAIN:      return WEATHER_DARKNESS_RAIN;" in text
    ):
        return text, False

    anchor = "    case WEATHER_CONCERT_LIGHTS:     return WEATHER_CONCERT_LIGHTS;\n"
    if anchor not in text:
        raise FixError(
            "Nao encontrei o ponto esperado dentro de TranslateWeatherNum(). "
            "Parei para nao modificar o lugar errado."
        )

    addition = (
        anchor
        + "    case WEATHER_DARKNESS:           return WEATHER_DARKNESS;\n"
        + "    case WEATHER_DARKNESS_RAIN:      return WEATHER_DARKNESS_RAIN;\n"
    )
    text = text.replace(anchor, addition, 1)
    return text, True


def patch_rain_counter(text: str):
    # Idempotent form first.
    if (
        "newWeather == WEATHER_DARKNESS_RAIN" in text
        and "static void UpdateRainCounter" in text
    ):
        # It could be present elsewhere, so inspect the function block below.
        marker = "static void UpdateRainCounter(u8 newWeather, u8 oldWeather)"
        pos = text.find(marker)
        if pos >= 0:
            block = text[pos:text.find("\n}\n", pos) + 3]
            if "WEATHER_DARKNESS_RAIN" in block:
                return text, False

    old = (
        "    if (newWeather != oldWeather\n"
        "     && (newWeather == WEATHER_RAIN || newWeather == WEATHER_RAIN_THUNDERSTORM))\n"
        "        IncrementGameStat(GAME_STAT_GOT_RAINED_ON);"
    )
    new = (
        "    if (newWeather != oldWeather\n"
        "     && (newWeather == WEATHER_RAIN\n"
        "      || newWeather == WEATHER_RAIN_THUNDERSTORM\n"
        "      || newWeather == WEATHER_DARKNESS_RAIN))\n"
        "        IncrementGameStat(GAME_STAT_GOT_RAINED_ON);"
    )

    if old not in text:
        raise FixError(
            "Nao encontrei o UpdateRainCounter() esperado. "
            "TranslateWeatherNum pode ser corrigido, mas parei para nao aplicar "
            "um patch parcial sem voce saber."
        )

    return text.replace(old, new, 1), True


def sanity_check_patched(text: str):
    # Check only inside TranslateWeatherNum to avoid false positives from other functions.
    start = text.find("static u8 TranslateWeatherNum(u8 weather)")
    if start < 0:
        raise FixError("TranslateWeatherNum() nao encontrado apos patch.")
    end = text.find("\n}\n", start)
    if end < 0:
        raise FixError("Fim de TranslateWeatherNum() nao encontrado apos patch.")
    block = text[start:end]

    required = [
        "case WEATHER_DARKNESS:",
        "return WEATHER_DARKNESS;",
        "case WEATHER_DARKNESS_RAIN:",
        "return WEATHER_DARKNESS_RAIN;",
    ]
    missing = [x for x in required if x not in block]
    if missing:
        raise FixError(
            "Verificacao interna falhou; TranslateWeatherNum incompleto: "
            + ", ".join(missing)
        )


def apply(root: Path, dry_run: bool):
    path = root / TARGET_EFFECT
    original = path.read_text(encoding="utf-8")
    original_hash = sha256(path)

    patched, changed_translate = patch_translate_weather(original)
    patched, changed_counter = patch_rain_counter(patched)
    sanity_check_patched(patched)

    log("Darkness Weather V3.2 activation hotfix")
    log(f"Repo: {root}")
    log(f"field_weather_effect.c antes: {original_hash}")
    log()
    log("Diagnostico:")
    log("  SetWeather -> SetSavedWeather -> TranslateWeatherNum")
    log("  DARKNESS/DARKNESS_RAIN nao estavam na traducao")
    log("  default de TranslateWeatherNum retornava WEATHER_NONE")
    log()
    log(f"TranslateWeatherNum: {'CORRIGIR' if changed_translate else 'ja OK'}")
    log(f"UpdateRainCounter:   {'CORRIGIR' if changed_counter else 'ja OK'}")

    if patched == original:
        log("\nNada para alterar. O hotfix V3.2 ja esta aplicado.")
        return None

    backup = make_backup(root, TARGET_EFFECT, dry_run)
    if dry_run:
        log("\n[dry-run] Nenhum arquivo foi alterado.")
        return backup

    atomic_write(path, patched.encode("utf-8"))
    sanity_check_patched(path.read_text(encoding="utf-8"))

    log(f"\nBackup: {backup.relative_to(root)}")
    log(f"field_weather_effect.c depois: {sha256(path)}")
    return backup


def git_check(root: Path):
    git = shutil.which("git")
    if not git or not (root / ".git").exists():
        log("Git nao detectado; pulando git diff --check.")
        return

    log("\nVerificando whitespace...")
    rc = subprocess.run(
        [git, "diff", "--check", "--", str(TARGET_EFFECT)],
        cwd=root
    ).returncode
    if rc != 0:
        raise FixError("git diff --check encontrou um problema.")


def build(root: Path, jobs: int):
    make = shutil.which("make")
    if not make:
        raise FixError("make nao encontrado no PATH.")

    log(f"\nCompilando: {make} -j{jobs}")
    rc = subprocess.run([make, f"-j{jobs}"], cwd=root).returncode
    if rc != 0:
        raise FixError(f"Build falhou com codigo {rc}.")
    log("\nBUILD OK.")


def main():
    p = argparse.ArgumentParser(
        description="Corrige ativacao dos weathers DARKNESS/DARKNESS_RAIN V3."
    )
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
                log("\nBackup preservado em:")
                log(f"  {backup.relative_to(root)}")
            raise

    log("\nDepois de compilar, teste no Debug Menu:")
    log("  WEATHER_DARKNESS")
    log("  WEATHER_DARKNESS_RAIN")
    log("Agora SetWeather() deve preservar os IDs em vez de converte-los para WEATHER_NONE.")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except FixError as e:
        print(f"\nERRO: {e}", file=sys.stderr)
        raise SystemExit(1)
