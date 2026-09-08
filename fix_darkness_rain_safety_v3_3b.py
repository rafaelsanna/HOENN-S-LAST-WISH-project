#!/usr/bin/env python3
# Darkess Rain Safety Hotfix V3.3b
# Fixes validator bug from V3.3, removes thunder flashes from DARKNESS_RAIN,
# and preserves menu/window palettes from the Darkness filter.

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

TARGET_WEATHER = Path("src/field_weather.c")
TARGET_EFFECT = Path("src/field_weather_effect.c")
BACKUP_ROOT = Path(".darkness_rain_safety_v3_3b_backups")

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
    if "WEATHER_DARKNESS" not in weather or "WEATHER_DARKNESS_RAIN" not in weather:
        raise PatchError("DARKNESS/DARKNESS_RAIN nao parecem estar instalados.")

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
    in_string = in_char = escape = line_comment = block_comment = False
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

def replace_function(text: str, name: str, new_block: str):
    start, end, old_block = find_function(text, name)
    new_block = new_block.rstrip() + "\n"
    if old_block == new_block:
        return text, False
    return text[:start] + new_block + text[end:], True

MENU_SAFE_FUNCTION = '''static void Darkness_ApplyLightingToCurrentPalettes(u8 blendCoeff)
{
    u8 i;

    for (i = 0; i < 32; i++)
    {
        // Keep reserved/window/menu palettes untouched.
        if (sPaletteColorMapTypes[i] == COLOR_MAP_NONE)
            continue;

        // Keep explicitly blend-immune OBJ palettes untouched.
        if (i >= 16
         && IS_BLEND_IMMUNE_TAG(GetSpritePaletteTagByPaletteNum(i - 16)))
            continue;

        BlendPalettesFine(1,
                          gPlttBufferFaded + PLTT_ID(i),
                          gPlttBufferFaded + PLTT_ID(i),
                          blendCoeff,
                          DARKNESS_BLEND_COLOR);
    }
}'''

DARKNESS_RAIN_FUNCTION = '''static void DarknessRain_InitVars(void)
{
    // Normal rain only: no thunderstorm logic.
    Rain_InitVars();

    // Kill any thunder state carried from a previous weather.
    gWeatherPtr->thunderEnqueued = FALSE;
    gWeatherPtr->thunderAllowEnd = TRUE;
    gWeatherPtr->thunderTimer = 0;
    gWeatherPtr->thunderSETimer = 0;
    gWeatherPtr->thunderShortBolts = 0;
    gWeatherPtr->thunderLongBolt = FALSE;

    // Darkness applies its own palette grading.
    gWeatherPtr->targetColorMapIndex = 0;
    gWeatherPtr->colorMapStepDelay = 0;
}'''

THUNDER_FINISH_FUNCTION = '''bool8 Thunderstorm_Finish(void)
{
    switch (gWeatherPtr->finishStep)
    {
    case 0:
        gWeatherPtr->thunderAllowEnd = FALSE;
        gWeatherPtr->finishStep++;
        // fall through
    case 1:
        // If the next weather is Darkness Rain, do not run Thunderstorm_Main
        // even one more time: that could create a final flash.
        if (gWeatherPtr->nextWeather == WEATHER_DARKNESS_RAIN)
        {
            gWeatherPtr->thunderEnqueued = FALSE;
            gWeatherPtr->thunderTimer = 0;
            gWeatherPtr->thunderSETimer = 0;
            gWeatherPtr->targetRainSpriteCount = 0;
            gWeatherPtr->finishStep++;
            break;
        }

        Thunderstorm_Main();
        if (gWeatherPtr->thunderAllowEnd)
        {
            if (gWeatherPtr->nextWeather == WEATHER_RAIN
             || gWeatherPtr->nextWeather == WEATHER_RAIN_THUNDERSTORM
             || gWeatherPtr->nextWeather == WEATHER_DOWNPOUR)
                return FALSE;

            gWeatherPtr->targetRainSpriteCount = 0;
            gWeatherPtr->finishStep++;
        }
        break;
    case 2:
        if (!UpdateVisibleRainSprites())
        {
            DestroyRainSprites();
            gWeatherPtr->thunderEnqueued = FALSE;
            gWeatherPtr->finishStep++;
            return FALSE;
        }
        break;
    default:
        return FALSE;
    }
    return TRUE;
}'''

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
    (dest / "manifest.json").write_text(
        json.dumps({
            "created_at": dt.datetime.now().isoformat(timespec="seconds"),
            "files": {
                str(TARGET_WEATHER): sha256(root / TARGET_WEATHER),
                str(TARGET_EFFECT): sha256(root / TARGET_EFFECT),
            },
        }, indent=2) + "\n",
        encoding="utf-8",
    )
    return dest

def sanity_check(weather: str, effect: str):
    _, _, menu = find_function(weather, "Darkness_ApplyLightingToCurrentPalettes")
    for item in ("sPaletteColorMapTypes[i] == COLOR_MAP_NONE", "IS_BLEND_IMMUNE_TAG"):
        if item not in menu:
            raise PatchError(f"Menu-safety nao aplicada: {item}")

    _, _, darkrain = find_function(weather, "DarknessRain_InitVars")
    for item in (
        "Rain_InitVars();",
        "gWeatherPtr->thunderEnqueued = FALSE;",
        "gWeatherPtr->thunderTimer = 0;",
        "gWeatherPtr->thunderSETimer = 0;",
    ):
        if item not in darkrain:
            raise PatchError(f"Lightning-safety nao aplicada: {item}")
    if "Thunderstorm_Main" in darkrain:
        raise PatchError("DarknessRain_InitVars nao pode chamar Thunderstorm_Main.")

    _, _, finish = find_function(effect, "Thunderstorm_Finish")
    pos_safe = finish.find("gWeatherPtr->nextWeather == WEATHER_DARKNESS_RAIN")
    pos_main = finish.find("Thunderstorm_Main();")
    if pos_safe < 0:
        raise PatchError("Safety path de DARKNESS_RAIN nao foi aplicado.")
    if pos_main >= 0 and pos_safe > pos_main:
        raise PatchError("Safety path aparece depois de Thunderstorm_Main.")

def apply(root: Path, dry_run: bool):
    weather_path = root / TARGET_WEATHER
    effect_path = root / TARGET_EFFECT
    weather = weather_path.read_text(encoding="utf-8")
    effect = effect_path.read_text(encoding="utf-8")

    weather2, ch_menu = replace_function(
        weather, "Darkness_ApplyLightingToCurrentPalettes", MENU_SAFE_FUNCTION
    )
    weather3, ch_rain = replace_function(
        weather2, "DarknessRain_InitVars", DARKNESS_RAIN_FUNCTION
    )
    effect2, ch_finish = replace_function(
        effect, "Thunderstorm_Finish", THUNDER_FINISH_FUNCTION
    )

    sanity_check(weather3, effect2)

    log("Darkness Rain Safety V3.3b")
    log(f"Repo: {root}")
    log()
    log("O erro do V3.3 anterior era somente no verificador:")
    log("ele leu o prototipo de DarknessRain_InitVars em vez da definicao.")
    log("Como a verificacao falhou antes da escrita, aquele comando nao alterou arquivos.")
    log()
    log(f"field_weather.c:        {'ALTERAR' if (ch_menu or ch_rain) else 'ja OK'}")
    log(f"field_weather_effect.c: {'ALTERAR' if ch_finish else 'ja OK'}")

    if not (ch_menu or ch_rain or ch_finish):
        log("\nV3.3b ja esta aplicado.")
        return None

    backup = make_backup(root, dry_run)
    if dry_run:
        log("\n[dry-run] Nenhum arquivo foi alterado.")
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
    if git and (root / ".git").exists():
        log("\nVerificando whitespace...")
        rc = subprocess.run(
            [git, "diff", "--check", "--", str(TARGET_WEATHER), str(TARGET_EFFECT)],
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
    p = argparse.ArgumentParser()
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
    log("  1. WEATHER_DARKNESS_RAIN: chuva + mapa escuro, sem flash.")
    log("  2. Start Menu / Bag / Pokemon: UI deve manter as cores normais.")
    log("  3. Ao fechar o menu, o mapa continua escuro + chuva.")
    return 0

if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except PatchError as e:
        print(f"\nERRO: {e}", file=sys.stderr)
        raise SystemExit(1)
