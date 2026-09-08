#!/usr/bin/env python3
"""
Darkness Rain Safety Hotfix V3.3

Objetivos:
  1. WEATHER_DARKNESS_RAIN nunca usa/continua o flash de relampago da tempestade.
  2. WEATHER_DARKNESS e WEATHER_DARKNESS_RAIN deixam as paletas imunes do engine
     intactas, para nao escurecer/jogar filtro sobre menus e windows.

Coloque este arquivo na raiz do pokeemerald-expansion e rode:

    python3 fix_darkness_rain_safety_v3_3.py --dry-run
    python3 fix_darkness_rain_safety_v3_3.py

O patch altera somente:
    src/field_weather.c
    src/field_weather_effect.c

Ele NAO mexe na cutscene Dark Suicune.
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


TARGET_WEATHER = Path("src/field_weather.c")
TARGET_EFFECT = Path("src/field_weather_effect.c")
BACKUP_ROOT = Path(".darkness_rain_safety_v3_3_backups")


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

    for rel in (TARGET_WEATHER, TARGET_EFFECT):
        if not (root / rel).is_file():
            raise PatchError(f"Nao encontrei {rel}.")

    weather = (root / TARGET_WEATHER).read_text(encoding="utf-8")
    effect = (root / TARGET_EFFECT).read_text(encoding="utf-8")

    required_weather = [
        "Darkness_ApplyLightingToCurrentPalettes",
        "DarknessRain_InitVars",
        "WEATHER_DARKNESS_RAIN",
    ]
    missing = [x for x in required_weather if x not in weather]
    if missing:
        raise PatchError(
            "field_weather.c nao parece conter o weather Darkness instalado. "
            "Faltando: " + ", ".join(missing)
        )

    if "Thunderstorm_Finish" not in effect:
        raise PatchError("Thunderstorm_Finish nao encontrado em field_weather_effect.c.")


def make_backup(root: Path, dry_run: bool) -> Path:
    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    dest = root / BACKUP_ROOT / stamp

    if dry_run:
        log(f"[dry-run] backup seria: {dest.relative_to(root)}")
        return dest

    for rel in (TARGET_WEATHER, TARGET_EFFECT):
        src = root / rel
        out = dest / rel
        out.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, out)

    manifest = {
        "created_at": dt.datetime.now().isoformat(timespec="seconds"),
        "files": {
            str(TARGET_WEATHER): sha256(root / TARGET_WEATHER),
            str(TARGET_EFFECT): sha256(root / TARGET_EFFECT),
        },
    }
    (dest / "manifest.json").write_text(
        json.dumps(manifest, indent=2) + "\n",
        encoding="utf-8",
    )
    return dest


def patch_menu_immunity(text: str):
    old = """static void Darkness_ApplyLightingToCurrentPalettes(u8 blendCoeff)
{
    u8 i;

    for (i = 0; i < 32; i++)
    {
        BlendPalettesFine(1,
                          gPlttBufferFaded + PLTT_ID(i),
                          gPlttBufferFaded + PLTT_ID(i),
                          blendCoeff,
                          DARKNESS_BLEND_COLOR);
    }
}"""

    new = """static void Darkness_ApplyLightingToCurrentPalettes(u8 blendCoeff)
{
    u8 i;

    for (i = 0; i < 32; i++)
    {
        // Respect the same palette immunity rules used by the stock weather
        // color-map code. In particular, the reserved window/menu BG palettes
        // are COLOR_MAP_NONE and must remain untouched.
        if (sPaletteColorMapTypes[i] == COLOR_MAP_NONE)
            continue;

        // Also preserve OBJ palettes explicitly tagged as blend-immune.
        if (i >= 16
         && IS_BLEND_IMMUNE_TAG(GetSpritePaletteTagByPaletteNum(i - 16)))
            continue;

        BlendPalettesFine(1,
                          gPlttBufferFaded + PLTT_ID(i),
                          gPlttBufferFaded + PLTT_ID(i),
                          blendCoeff,
                          DARKNESS_BLEND_COLOR);
    }
}"""

    if new in text:
        return text, False

    if old not in text:
        raise PatchError(
            "Nao encontrei o bloco Darkness_ApplyLightingToCurrentPalettes esperado. "
            "Parei para nao alterar uma versao diferente."
        )

    return text.replace(old, new, 1), True


def patch_darkness_rain_thunder_reset(text: str):
    old = """static void DarknessRain_InitVars(void)
{
    // Reuse the engine's proven rain sprite/sound system, but neutralize the
    // normal rain gamma target. Our palette filter supplies the darkness.
    Rain_InitVars();
    gWeatherPtr->targetColorMapIndex = 0;
    gWeatherPtr->colorMapStepDelay = 0;
}"""

    new = """static void DarknessRain_InitVars(void)
{
    // Reuse ONLY the normal rain sprite/sound system. Darkness Rain is
    // intentionally lightning-free: no thunder flash, no thunder queue.
    Rain_InitVars();

    // Hard-reset any thunderstorm state that may have existed before this
    // weather was selected. This prevents a pending bolt/flash from carrying
    // into WEATHER_DARKNESS_RAIN.
    gWeatherPtr->thunderEnqueued = FALSE;
    gWeatherPtr->thunderAllowEnd = TRUE;
    gWeatherPtr->thunderTimer = 0;
    gWeatherPtr->thunderShortBolts = 0;
    gWeatherPtr->thunderLongBolt = FALSE;

    gWeatherPtr->targetColorMapIndex = 0;
    gWeatherPtr->colorMapStepDelay = 0;
}"""

    if new in text:
        return text, False

    if old not in text:
        raise PatchError(
            "Nao encontrei DarknessRain_InitVars no formato esperado."
        )

    return text.replace(old, new, 1), True


def patch_thunderstorm_finish(text: str):
    """
    Keep DARKNESS_RAIN in Rain_Finish (so normal rain can transition smoothly),
    but remove it from Thunderstorm_Finish. A thunderstorm must fully finish
    before the lightning-free Darkness Rain starts.
    """
    marker = "bool8 Thunderstorm_Finish(void)"
    start = text.find(marker)
    if start < 0:
        raise PatchError("Thunderstorm_Finish nao encontrado.")

    end = text.find("\n}\n", start)
    if end < 0:
        raise PatchError("Fim de Thunderstorm_Finish nao encontrado.")

    block = text[start:end + 3]

    line = "\n             || gWeatherPtr->nextWeather == WEATHER_DARKNESS_RAIN"
    if line not in block:
        # Already safe or the current source predates that V3 addition.
        return text, False

    block_new = block.replace(line, "", 1)
    return text[:start] + block_new + text[end + 3:], True


def sanity_check(weather: str, effect: str):
    # Menu immunity.
    fn = weather.find("static void Darkness_ApplyLightingToCurrentPalettes")
    fn_end = weather.find("\n}\n", fn)
    block = weather[fn:fn_end]
    required = [
        "sPaletteColorMapTypes[i] == COLOR_MAP_NONE",
        "IS_BLEND_IMMUNE_TAG",
    ]
    missing = [x for x in required if x not in block]
    if missing:
        raise PatchError("Verificacao de menu immunity falhou: " + ", ".join(missing))

    # Darkness Rain must explicitly kill thunder state.
    fn = weather.find("static void DarknessRain_InitVars")
    fn_end = weather.find("\n}\n", fn)
    block = weather[fn:fn_end]
    required = [
        "Rain_InitVars();",
        "gWeatherPtr->thunderEnqueued = FALSE;",
        "gWeatherPtr->thunderTimer = 0;",
    ]
    missing = [x for x in required if x not in block]
    if missing:
        raise PatchError("Verificacao lightning-free falhou: " + ", ".join(missing))

    # It must not call Thunderstorm_Main.
    if "Thunderstorm_Main" in block:
        raise PatchError("DarknessRain_InitVars chamou Thunderstorm_Main inesperadamente.")

    # Thunderstorm_Finish must no longer whitelist Darkness Rain.
    fn = effect.find("bool8 Thunderstorm_Finish(void)")
    fn_end = effect.find("\n}\n", fn)
    block = effect[fn:fn_end]
    if "WEATHER_DARKNESS_RAIN" in block:
        raise PatchError(
            "Thunderstorm_Finish ainda trata DARKNESS_RAIN como tempestade continua."
        )


def apply(root: Path, dry_run: bool):
    weather_path = root / TARGET_WEATHER
    effect_path = root / TARGET_EFFECT

    weather = weather_path.read_text(encoding="utf-8")
    effect = effect_path.read_text(encoding="utf-8")

    log("Darkness Rain Safety V3.3")
    log(f"Repo: {root}")
    log()
    log("Mudancas:")
    log("  - DARKNESS_RAIN = chuva normal, sem flash/relampago")
    log("  - limpa qualquer thunder pendente ao iniciar")
    log("  - tempestade precisa terminar por completo antes de DARKNESS_RAIN")
    log("  - filtro Darkness respeita COLOR_MAP_NONE")
    log("  - filtro Darkness respeita OBJ palettes blend-immune")
    log("  - menus/windows reservados deixam de receber o filtro")

    weather2, ch_menu = patch_menu_immunity(weather)
    weather3, ch_thunder = patch_darkness_rain_thunder_reset(weather2)
    effect2, ch_finish = patch_thunderstorm_finish(effect)

    sanity_check(weather3, effect2)

    if not (ch_menu or ch_thunder or ch_finish):
        log("\nHotfix V3.3 ja esta aplicado.")
        return None

    backup = make_backup(root, dry_run)

    if dry_run:
        log(f"\n[dry-run] field_weather.c: {'alteraria' if (ch_menu or ch_thunder) else 'ja OK'}")
        log(f"[dry-run] field_weather_effect.c: {'alteraria' if ch_finish else 'ja OK'}")
        log("[dry-run] nenhum arquivo foi escrito.")
        return backup

    if weather3 != weather:
        atomic_write(weather_path, weather3.encode("utf-8"))
    if effect2 != effect:
        atomic_write(effect_path, effect2.encode("utf-8"))

    sanity_check(
        weather_path.read_text(encoding="utf-8"),
        effect_path.read_text(encoding="utf-8"),
    )

    log(f"\nBackup: {backup.relative_to(root)}")
    log(f"field_weather.c SHA:        {sha256(weather_path)}")
    log(f"field_weather_effect.c SHA: {sha256(effect_path)}")
    return backup


def git_check(root: Path):
    git = shutil.which("git")
    if not git or not (root / ".git").exists():
        log("Git nao detectado; pulando git diff --check.")
        return

    log("\nVerificando whitespace...")
    rc = subprocess.run(
        [
            git, "diff", "--check", "--",
            str(TARGET_WEATHER), str(TARGET_EFFECT),
        ],
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
        description="Remove lightning flash de DARKNESS_RAIN e protege menus do filtro."
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

    log("\nTeste:")
    log("  1. WEATHER_DARKNESS_RAIN: chuva + mapa escuro, sem flashes.")
    log("  2. Abra Start Menu / Bag / Pokemon: UI deve manter suas cores normais.")
    log("  3. Ao fechar o menu, o mapa continua escuro normalmente.")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except PatchError as e:
        print(f"\nERRO: {e}", file=sys.stderr)
        raise SystemExit(1)
