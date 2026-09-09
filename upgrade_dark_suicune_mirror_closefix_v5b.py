#!/usr/bin/env python3
"""
Dark Suicune mirror + close artifact fix V5b.

IMPORTANT:
This corrected installer does NOT require graphics/dark_suicune/close.bin.

The runtime scene already consumes:
    graphics/dark_suicune/close_affine.8bpp
    graphics/dark_suicune/close_affine.bin

So V5b:
  1. mirrors ONLY the running Suicune movement:
       left -> center -> right
  2. leaves bg01/bg02/mountain exactly unchanged
  3. installs a known-good close_affine.8bpp/.bin pair that removes the
     small black square visible on the forehead during the close
  4. creates backups and runs make -j8

Use from the pokeemerald-expansion root:

    python3 upgrade_dark_suicune_mirror_closefix_v5b.py --dry-run
    python3 upgrade_dark_suicune_mirror_closefix_v5b.py

Options:
    --no-build
    --jobs N
    --restore-latest
"""

from __future__ import annotations

import argparse
import base64
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
import zlib

SCENE_C = Path("src/dark_suicune_scene.c")
CLOSE_AFFINE_GFX = Path("graphics/dark_suicune/close_affine.8bpp")
CLOSE_AFFINE_MAP = Path("graphics/dark_suicune/close_affine.bin")
BACKUP_ROOT = Path(".dark_suicune_mirror_closefix_v5b_backups")

GOOD_GFX_SHA = "69ef6bbe907f1c5fa4af2ea65dfff9a97bd2a5a03cdb43e924c85beebb546d34"
GOOD_MAP_SHA = "48ca53fafbaba4e10bf6094846d1b8ab36f1aa55cb3f92fb69bc12a4dd58528e"

GOOD_GFX_B64 = (
    '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'
)

GOOD_MAP_B64 = (
    'eNpjYBgBgJGJmYWVjZ2Dk4ubh4OXj19AUEgYWV5ElEFMXEJSSlpGVk5eQVFJmUFFFVleTZ1BQ1NLW0dXT3+BgaGRsQmDqRmS'
    'tLmFpRUDg7WNrZ29g6OTswsDg6ubuwdc2tPL28fXj8E/IDAoOCQ0LDwiMio6JjYuHiafsJAhMSk5JTUtPSMzKzsnlyEvv4CB'
    'YVEhTH5xEQNDYnEJQ2lZeUVlVXUNQ20dA0N9wxKY/NLGJjDd3NLa1t7R2QXmdPcsgzugtw9MLe+fMHHS5CkQsanTGEbBKGAA'
    'AB5ZMcM='
)


class PatchError(RuntimeError):
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


def decode_asset(payload: str, expected_sha: str) -> bytes:
    data = zlib.decompress(base64.b64decode(payload.encode("ascii")))
    got = sha256_bytes(data)
    if got != expected_sha:
        raise PatchError(f"Payload interno corrompido: {got} != {expected_sha}")
    return data


def atomic_write(path: Path, data: bytes):
    mode = path.stat().st_mode if path.exists() else 0o644
    path.parent.mkdir(parents=True, exist_ok=True)
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
        raise PatchError("Rode este script na raiz do pokeemerald-expansion.")
    if not (root / SCENE_C).is_file():
        raise PatchError(f"Nao encontrei {SCENE_C}.")

    text = (root / SCENE_C).read_text(encoding="utf-8")
    required = [
        "DARK_SUICUNE_RUN_START_X",
        "DARK_SUICUNE_RUN_CENTER_X",
        "DARK_SUICUNE_RUN_END_X",
        "DARK_SUICUNE_SCENE_RUN_IN",
        "DARK_SUICUNE_SCENE_RUN_OUT",
        "sDarkSuicuneCloseAffine_Gfx",
        "sDarkSuicuneCloseAffine_Map",
    ]
    missing = [x for x in required if x not in text]
    if missing:
        raise PatchError(
            "src/dark_suicune_scene.c nao parece ser a cena esperada. Faltando: "
            + ", ".join(missing)
        )


def patch_scene(text: str):
    # Already mirrored?
    already = (
        "#define DARK_SUICUNE_RUN_START_X      (-32)" in text
        and "#define DARK_SUICUNE_RUN_END_X        (DISPLAY_WIDTH + 32)" in text
        and text.count("tRunX += DARK_SUICUNE_RUN_SPEED;") >= 2
    )
    if already:
        return text, False

    if "runs in from the right, pauses in the centre, then exits left." in text:
        text = text.replace(
            "runs in from the right, pauses in the centre, then exits left.",
            "runs in from the left, pauses in the centre, then exits right.",
            1,
        )

    replacements = [
        (
            "#define DARK_SUICUNE_RUN_START_X      (DISPLAY_WIDTH + 32)",
            "#define DARK_SUICUNE_RUN_START_X      (-32)",
        ),
        (
            "#define DARK_SUICUNE_RUN_END_X        (-32)",
            "#define DARK_SUICUNE_RUN_END_X        (DISPLAY_WIDTH + 32)",
        ),
    ]

    for old, new in replacements:
        if old not in text:
            raise PatchError(f"Nao encontrei a linha esperada: {old}")
        text = text.replace(old, new, 1)

    old_in = """    case DARK_SUICUNE_SCENE_RUN_IN:
        UpdateDarkSuicuneRunningBg(data);
        tRunX -= DARK_SUICUNE_RUN_SPEED;
        if (tRunSprite != MAX_SPRITES)
            gSprites[tRunSprite].x = tRunX;
        if (tRunX <= DARK_SUICUNE_RUN_CENTER_X)
        {
            tRunX = DARK_SUICUNE_RUN_CENTER_X;
            if (tRunSprite != MAX_SPRITES)
                gSprites[tRunSprite].x = tRunX;
            tTimer = 0;
            tState = DARK_SUICUNE_SCENE_RUN_PAUSE;
        }
        break;"""

    new_in = """    case DARK_SUICUNE_SCENE_RUN_IN:
        UpdateDarkSuicuneRunningBg(data);
        tRunX += DARK_SUICUNE_RUN_SPEED;
        if (tRunSprite != MAX_SPRITES)
            gSprites[tRunSprite].x = tRunX;
        if (tRunX >= DARK_SUICUNE_RUN_CENTER_X)
        {
            tRunX = DARK_SUICUNE_RUN_CENTER_X;
            if (tRunSprite != MAX_SPRITES)
                gSprites[tRunSprite].x = tRunX;
            tTimer = 0;
            tState = DARK_SUICUNE_SCENE_RUN_PAUSE;
        }
        break;"""

    old_out = """    case DARK_SUICUNE_SCENE_RUN_OUT:
        UpdateDarkSuicuneRunningBg(data);
        tRunX -= DARK_SUICUNE_RUN_SPEED;
        if (tRunSprite != MAX_SPRITES)
            gSprites[tRunSprite].x = tRunX;
        if (tRunX <= DARK_SUICUNE_RUN_END_X)
        {
            if (tRunSprite != MAX_SPRITES)
                gSprites[tRunSprite].invisible = TRUE;
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
            tState = DARK_SUICUNE_SCENE_FLASH_TO_BLACK;
        }
        break;"""

    new_out = """    case DARK_SUICUNE_SCENE_RUN_OUT:
        UpdateDarkSuicuneRunningBg(data);
        tRunX += DARK_SUICUNE_RUN_SPEED;
        if (tRunSprite != MAX_SPRITES)
            gSprites[tRunSprite].x = tRunX;
        if (tRunX >= DARK_SUICUNE_RUN_END_X)
        {
            if (tRunSprite != MAX_SPRITES)
                gSprites[tRunSprite].invisible = TRUE;
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
            tState = DARK_SUICUNE_SCENE_FLASH_TO_BLACK;
        }
        break;"""

    if old_in not in text:
        raise PatchError("Nao encontrei o bloco RUN_IN antigo.")
    if old_out not in text:
        raise PatchError("Nao encontrei o bloco RUN_OUT antigo.")

    text = text.replace(old_in, new_in, 1)
    text = text.replace(old_out, new_out, 1)
    return text, True


def verify_scene(text: str):
    required = [
        "#define DARK_SUICUNE_RUN_START_X      (-32)",
        "#define DARK_SUICUNE_RUN_END_X        (DISPLAY_WIDTH + 32)",
        "if (tRunX >= DARK_SUICUNE_RUN_CENTER_X)",
        "if (tRunX >= DARK_SUICUNE_RUN_END_X)",
    ]
    missing = [x for x in required if x not in text]
    if missing:
        raise PatchError("Verificacao da corrida falhou: " + ", ".join(missing))

    if text.count("tRunX += DARK_SUICUNE_RUN_SPEED;") < 2:
        raise PatchError("A corrida nao ficou espelhada nos dois estados.")


def make_backup(root: Path, dry_run: bool):
    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    dest = root / BACKUP_ROOT / stamp

    files = [SCENE_C, CLOSE_AFFINE_GFX, CLOSE_AFFINE_MAP]

    if dry_run:
        log(f"[dry-run] backup seria: {dest.relative_to(root)}")
        return dest

    copied = {}
    for rel in files:
        src = root / rel
        if not src.is_file():
            continue
        out = dest / rel
        out.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, out)
        copied[str(rel)] = sha256_file(src)

    dest.mkdir(parents=True, exist_ok=True)
    (dest / "manifest.json").write_text(
        json.dumps(
            {
                "created_at": dt.datetime.now().isoformat(timespec="seconds"),
                "files": copied,
            },
            indent=2,
        ) + "\n",
        encoding="utf-8",
    )
    return dest


def latest_backup(root: Path):
    parent = root / BACKUP_ROOT
    if not parent.is_dir():
        raise PatchError("Nenhum backup V5b encontrado.")
    dirs = sorted(
        [p for p in parent.iterdir() if p.is_dir() and (p / "manifest.json").is_file()],
        reverse=True,
    )
    if not dirs:
        raise PatchError("Nenhum backup V5b valido encontrado.")
    return dirs[0]


def restore_latest(root: Path, dry_run: bool):
    b = latest_backup(root)
    manifest = json.loads((b / "manifest.json").read_text(encoding="utf-8"))
    log(f"Restaurando {b.relative_to(root)}")

    for rel_s in manifest["files"]:
        rel = Path(rel_s)
        src = b / rel
        if not src.is_file():
            raise PatchError(f"Backup incompleto: {src}")
        if dry_run:
            log(f"[dry-run] restauraria {rel}")
        else:
            atomic_write(root / rel, src.read_bytes())
            log(f"  restaurado: {rel}")


def apply(root: Path, dry_run: bool):
    good_gfx = decode_asset(GOOD_GFX_B64, GOOD_GFX_SHA)
    good_map = decode_asset(GOOD_MAP_B64, GOOD_MAP_SHA)

    scene_path = root / SCENE_C
    original_scene = scene_path.read_text(encoding="utf-8")
    new_scene, scene_changed = patch_scene(original_scene)
    verify_scene(new_scene)

    current_gfx_sha = sha256_file(root / CLOSE_AFFINE_GFX)
    current_map_sha = sha256_file(root / CLOSE_AFFINE_MAP)
    gfx_changed = current_gfx_sha != GOOD_GFX_SHA
    map_changed = current_map_sha != GOOD_MAP_SHA

    log("Dark Suicune mirror + close fix V5b")
    log(f"Repo: {root}")
    log()
    log("V5b NAO precisa de graphics/dark_suicune/close.bin.")
    log("A cena em runtime usa diretamente close_affine.8bpp/.bin.")
    log()
    log("Corrida:")
    log("  esquerda -> centro -> direita")
    log("  bg01/bg02/montanha nao sao alterados")
    log()
    log("Close:")
    log("  instala o par affine conhecido sem o quadrado preto")
    log(f"  close_affine.8bpp SHA alvo: {GOOD_GFX_SHA}")
    log(f"  close_affine.bin  SHA alvo: {GOOD_MAP_SHA}")
    log()
    log(f"scene.c:             {'ALTERAR' if scene_changed else 'ja OK'}")
    log(f"close_affine.8bpp:   {'ALTERAR' if gfx_changed else 'ja OK'}")
    log(f"close_affine.bin:    {'ALTERAR' if map_changed else 'ja OK'}")

    if not (scene_changed or gfx_changed or map_changed):
        log("\nV5b ja esta completamente aplicado.")
        return None

    backup = make_backup(root, dry_run)

    if dry_run:
        log("\n[dry-run] nenhum arquivo foi alterado.")
        return backup

    if scene_changed:
        atomic_write(scene_path, new_scene.encode("utf-8"))
    if gfx_changed:
        atomic_write(root / CLOSE_AFFINE_GFX, good_gfx)
    if map_changed:
        atomic_write(root / CLOSE_AFFINE_MAP, good_map)

    verify_scene(scene_path.read_text(encoding="utf-8"))

    if sha256_file(root / CLOSE_AFFINE_GFX) != GOOD_GFX_SHA:
        raise PatchError("Falha ao verificar close_affine.8bpp.")
    if sha256_file(root / CLOSE_AFFINE_MAP) != GOOD_MAP_SHA:
        raise PatchError("Falha ao verificar close_affine.bin.")

    log(f"\nBackup: {backup.relative_to(root)}")
    return backup


def git_check(root: Path):
    git = shutil.which("git")
    if git and (root / ".git").exists():
        log("\nVerificando whitespace...")
        rc = subprocess.run(
            [git, "diff", "--check", "--", str(SCENE_C)],
            cwd=root,
        ).returncode
        if rc != 0:
            raise PatchError("git diff --check encontrou problema.")


def build(root: Path, jobs: int):
    make = shutil.which("make")
    if not make:
        raise PatchError("make nao encontrado no PATH.")
    log(f"\nCompilando: make -j{jobs}")
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
    p.add_argument("--restore-latest", action="store_true")
    args = p.parse_args()

    if args.jobs < 1:
        raise PatchError("--jobs precisa ser >= 1")

    root = args.root.expanduser().resolve()
    validate_root(root)

    if args.restore_latest:
        restore_latest(root, args.dry_run)
        return 0

    backup = apply(root, args.dry_run)
    if args.dry_run:
        return 0

    git_check(root)

    if not args.no_build:
        try:
            build(root, args.jobs)
        except PatchError:
            if backup is not None:
                log("\nPara desfazer:")
                log("  python3 upgrade_dark_suicune_mirror_closefix_v5b.py --restore-latest")
            raise

    log("\nEsperado:")
    log("  - Suicune entra pela esquerda e sai pela direita")
    log("  - panorama/montanha seguem exatamente iguais")
    log("  - close sem o quadradinho preto")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except PatchError as e:
        print(f"\nERRO: {e}", file=sys.stderr)
        raise SystemExit(1)
