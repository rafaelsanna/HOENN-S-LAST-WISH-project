#!/usr/bin/env python3
'''
Darkness Palette Safety V3.4

Corrige a causa real dos flashes brancos e do menu afetado.

Use na raiz do pokeemerald-expansion:
    python3 fix_darkness_palette_safety_v3_4.py --dry-run
    python3 fix_darkness_palette_safety_v3_4.py

Altera somente src/field_weather.c.
'''

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
BACKUP_ROOT = Path(".darkness_palette_safety_v3_4_backups")

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
        "Darkness_ApplyLightingToCurrentPalettes",
        "Darkness_RestoreBasePalettes",
        "DarknessRain_Main",
        "FadeInScreen_Darkness",
    ]
    missing = [x for x in required if x not in text]
    if missing:
        raise PatchError(
            "field_weather.c nao parece conter o Darkness V3. Faltando: "
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
    if brace < 0:
        raise PatchError(f"Chave inicial de {name}() nao encontrada.")

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

def replace_function(text: str, name: str, new_block: str):
    start, end, old = find_function(text, name)
    new = new_block.rstrip() + "\n"
    if old == new:
        return text, False
    return text[:start] + new + text[end:], True

APPLY_TO_CURRENT = '''static void Darkness_ApplyLightingToCurrentPalettes(u8 blendCoeff)
{
    u8 i;

    for (i = 0; i < 32; i++)
    {
        // Reserved BG palettes (notably overworld window/menu palettes)
        // must not receive the Darkness grade.
        if (sPaletteColorMapTypes[i] == COLOR_MAP_NONE)
            continue;

        // Custom OBJ palettes can also opt out of weather blending.
        if (i >= 16
         && IS_BLEND_IMMUNE_TAG(GetSpritePaletteTagByPaletteNum(i - 16)))
            continue;

        // Build the dark palette DIRECTLY from the stable unfaded source.
        // The old restore-then-darken path could expose a bright frame during
        // VBlank and could overwrite menu/window palettes.
        BlendPalettesFine(1,
                          gPlttBufferUnfaded + PLTT_ID(i),
                          gPlttBufferFaded + PLTT_ID(i),
                          blendCoeff,
                          DARKNESS_BLEND_COLOR);
    }
}'''

APPLY_LIGHTING = '''static void Darkness_ApplyLighting(u8 blendCoeff)
{
    Darkness_ApplyLightingToCurrentPalettes(blendCoeff);
}'''

DARKNESS_MAIN = '''static void Darkness_Main(void)
{
    if (gWeatherPtr->palProcessingState != WEATHER_PAL_STATE_IDLE
     || gPaletteFade.active)
        return;

    Darkness_ApplyLighting(DARKNESS_BLEND_COEFF);
}'''

DARKNESS_RAIN_MAIN = '''static void DarknessRain_Main(void)
{
    // Normal rain only. No thunderstorm state machine is called here.
    Rain_Main();

    // Extra safety: kill any stale thunder sound request.
    gWeatherPtr->thunderEnqueued = FALSE;

    if (gWeatherPtr->weatherGfxLoaded
     && gWeatherPtr->palProcessingState == WEATHER_PAL_STATE_IDLE
     && !gPaletteFade.active)
        Darkness_ApplyLighting(DARKNESS_RAIN_BLEND_COEFF);
}'''

FADE_DARKNESS = '''static bool8 FadeInScreen_Darkness(u8 darknessCoeff)
{
    if (gWeatherPtr->fadeScreenCounter == 16)
        return FALSE;

    gWeatherPtr->fadeScreenCounter++;

    // Build the Darkness target directly from gPlttBufferUnfaded.
    // There is no full-bright intermediate palette anymore.
    Darkness_ApplyLightingToCurrentPalettes(darknessCoeff);

    if (gWeatherPtr->fadeScreenCounter < 16)
    {
        BlendPalettesFine(PALETTES_ALL,
                          gPlttBufferFaded,
                          gPlttBufferFaded,
                          16 - gWeatherPtr->fadeScreenCounter,
                          gWeatherPtr->fadeDestColor);
        return TRUE;
    }

    gWeatherPtr->fadeScreenCounter = 16;
    return FALSE;
}'''

def sanity_check(text: str):
    _, _, apply = find_function(text, "Darkness_ApplyLightingToCurrentPalettes")
    required = [
        "gPlttBufferUnfaded + PLTT_ID(i)",
        "gPlttBufferFaded + PLTT_ID(i)",
        "sPaletteColorMapTypes[i] == COLOR_MAP_NONE",
        "IS_BLEND_IMMUNE_TAG",
    ]
    missing = [x for x in required if x not in apply]
    if missing:
        raise PatchError("Verificacao do novo filtro falhou: " + ", ".join(missing))

    _, _, lighting = find_function(text, "Darkness_ApplyLighting")
    if "Darkness_RestoreBasePalettes" in lighting:
        raise PatchError("Darkness_ApplyLighting ainda faz restore de palettes.")

    _, _, main = find_function(text, "Darkness_Main")
    if "Darkness_RestoreBasePalettes" in main:
        raise PatchError("Darkness_Main ainda faz restore de palettes.")

    _, _, rainmain = find_function(text, "DarknessRain_Main")
    if "Thunderstorm_Main" in rainmain:
        raise PatchError("DarknessRain_Main nao pode chamar Thunderstorm_Main.")

    _, _, fade = find_function(text, "FadeInScreen_Darkness")
    if "Darkness_RestoreBasePalettes" in fade:
        raise PatchError("FadeInScreen_Darkness ainda cria estado bright intermediario.")

def make_backup(root: Path, dry_run: bool):
    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    dest = root / BACKUP_ROOT / stamp / TARGET
    if dry_run:
        log(f"[dry-run] backup seria: {dest.relative_to(root)}")
        return dest

    dest.parent.mkdir(parents=True, exist_ok=False)
    shutil.copy2(root / TARGET, dest)

    (dest.parent.parent / "manifest.json").write_text(
        json.dumps(
            {
                "created_at": dt.datetime.now().isoformat(timespec="seconds"),
                "file": TARGET.as_posix(),
                "sha256_before": sha256(root / TARGET),
            },
            indent=2,
        ) + "\n",
        encoding="utf-8",
    )
    return dest

def apply(root: Path, dry_run: bool):
    path = root / TARGET
    original = path.read_text(encoding="utf-8")
    text = original
    changes = []

    for name, block in (
        ("Darkness_ApplyLightingToCurrentPalettes", APPLY_TO_CURRENT),
        ("Darkness_ApplyLighting", APPLY_LIGHTING),
        ("Darkness_Main", DARKNESS_MAIN),
        ("DarknessRain_Main", DARKNESS_RAIN_MAIN),
        ("FadeInScreen_Darkness", FADE_DARKNESS),
    ):
        text, changed = replace_function(text, name, block)
        if changed:
            changes.append(name)

    sanity_check(text)

    log("Darkness Palette Safety V3.4")
    log(f"Repo: {root}")
    log()
    log("Causa corrigida:")
    log("  antigo: RESTORE COMPLETO -> DARKEN, todo frame")
    log("  novo:   UNFADED -> DARKENED, direto por palette")
    log()
    log("Isso elimina o frame claro intermediario e evita sobrescrever")
    log("as palettes de menus/windows antes de aplicar o filtro.")

    if not changes:
        log("\nV3.4 ja esta aplicado.")
        return None

    log("\nFuncoes atualizadas:")
    for name in changes:
        log(f"  - {name}")

    backup = make_backup(root, dry_run)

    if dry_run:
        log("\n[dry-run] Nenhum arquivo foi alterado.")
        return backup

    atomic_write(path, text.encode("utf-8"))
    sanity_check(path.read_text(encoding="utf-8"))

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
        description="Corrige flash branco e menu afetado pelo Darkness."
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

    log("\nTeste esperado:")
    log("  1. DARKNESS_RAIN por 20-30 segundos: zero frames claros.")
    log("  2. Abra/feche Start Menu repetidamente: menu mantem as cores.")
    log("  3. Mapa + player + chuva continuam escuros.")
    return 0

if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except PatchError as e:
        print(f"\nERRO: {e}", file=sys.stderr)
        raise SystemExit(1)
