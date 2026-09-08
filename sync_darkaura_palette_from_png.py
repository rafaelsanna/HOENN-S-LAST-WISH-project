#!/usr/bin/env python3
"""
DarkAura palette sync from indexed PNG.

Goal:
    Make the game use the palette embedded in:
        graphics/object_events/pics/misc/darkaura.png

The runtime does not read PNG files directly. The object-event code already
loads:
    graphics/object_events/pics/misc/darkaura.gbapal

So this script regenerates BOTH darkaura.4bpp and darkaura.gbapal from the
same indexed PNG, verifies the 16-color GBA palette byte-for-byte, and rebuilds
the ROM.

Expected source:
    darkaura.png = indexed PNG, 64x256, 4 frames of 64x64.

Use from pokeemerald-expansion root:
    python3 sync_darkaura_palette_from_png.py --dry-run
    python3 sync_darkaura_palette_from_png.py

Options:
    --no-build   Sync assets only; do not run make -j8.
    --jobs N     Build jobs (default 8).
"""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import os
from pathlib import Path
import shutil
import struct
import subprocess
import sys
import tempfile
import zlib

PNG = Path("graphics/object_events/pics/misc/darkaura.png")
PAL = Path("graphics/object_events/pics/misc/darkaura.gbapal")
GFX = Path("graphics/object_events/pics/misc/darkaura.4bpp")
GRAPHICS_H = Path("src/data/object_events/object_event_graphics.h")
MOVEMENT_C = Path("src/event_object_movement.c")
BACKUP_ROOT = Path(".darkaura_palette_sync_backups")

EXPECTED_W = 64
EXPECTED_H = 256
EXPECTED_GFX_BYTES = 8192
EXPECTED_PAL_BYTES = 32


class SyncError(RuntimeError):
    pass


def log(msg=""):
    print(msg, flush=True)


def sha256(path: Path):
    if not path.is_file():
        return None
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def atomic_write(path: Path, data: bytes):
    path.parent.mkdir(parents=True, exist_ok=True)
    old_mode = path.stat().st_mode if path.exists() else 0o644
    fd, tmp_name = tempfile.mkstemp(prefix=path.name + ".tmp.", dir=str(path.parent))
    tmp = Path(tmp_name)
    try:
        with os.fdopen(fd, "wb") as f:
            f.write(data)
            f.flush()
            os.fsync(f.fileno())
        os.chmod(tmp, old_mode)
        os.replace(tmp, path)
    finally:
        if tmp.exists():
            tmp.unlink()


def parse_indexed_png(path: Path):
    data = path.read_bytes()
    if data[:8] != b"\x89PNG\r\n\x1a\n":
        raise SyncError(f"{path} nao e PNG valido.")

    pos = 8
    width = height = bit_depth = color_type = None
    plte = None
    trns = None

    while pos + 12 <= len(data):
        length = struct.unpack(">I", data[pos:pos+4])[0]
        ctype = data[pos+4:pos+8]
        chunk = data[pos+8:pos+8+length]
        pos += 12 + length

        if ctype == b"IHDR":
            if len(chunk) != 13:
                raise SyncError("IHDR invalido.")
            width, height, bit_depth, color_type, comp, filt, interlace = struct.unpack(
                ">IIBBBBB", chunk
            )
        elif ctype == b"PLTE":
            plte = chunk
        elif ctype == b"tRNS":
            trns = chunk
        elif ctype == b"IEND":
            break

    if width is None:
        raise SyncError("IHDR nao encontrado.")
    if (width, height) != (EXPECTED_W, EXPECTED_H):
        raise SyncError(
            f"darkaura.png esta em {width}x{height}; esperado {EXPECTED_W}x{EXPECTED_H}."
        )
    if color_type != 3:
        raise SyncError(
            f"darkaura.png nao esta indexado (PNG color type={color_type}); "
            "salve como Indexed/Paletted PNG."
        )
    if plte is None or len(plte) % 3:
        raise SyncError("PLTE do PNG nao encontrado ou invalido.")

    palette = [tuple(plte[i:i+3]) for i in range(0, len(plte), 3)]
    if len(palette) < 16:
        palette += [(0, 0, 0)] * (16 - len(palette))

    # 4bpp can reference only indices 0..15. We intentionally use the first
    # sixteen entries in the indexed PNG, preserving exact index->color mapping.
    palette16 = palette[:16]

    return {
        "width": width,
        "height": height,
        "bit_depth": bit_depth,
        "color_type": color_type,
        "palette": palette16,
        "palette_entries_total": len(palette),
        "trns": trns,
    }


def gba555(rgb):
    r, g, b = rgb
    # Standard GBA BGR555 little-endian palette encoding.
    return ((r >> 3) & 31) | (((g >> 3) & 31) << 5) | (((b >> 3) & 31) << 10)


def expected_gbapal(png_info):
    words = [gba555(c) for c in png_info["palette"]]
    return b"".join(struct.pack("<H", w) for w in words)


def validate_code_wiring(root: Path):
    graphics_h = (root / GRAPHICS_H).read_text(encoding="utf-8")
    movement_c = (root / MOVEMENT_C).read_text(encoding="utf-8")

    expected_incbin = (
        'gObjectEventPal_DarkAura[] = '
        'INCBIN_U16("graphics/object_events/pics/misc/darkaura.gbapal")'
    )
    if expected_incbin not in graphics_h.replace("\n", " "):
        # Less brittle check.
        if (
            "gObjectEventPal_DarkAura" not in graphics_h
            or "darkaura.gbapal" not in graphics_h
        ):
            raise SyncError(
                "gObjectEventPal_DarkAura nao esta ligado a darkaura.gbapal."
            )

    if (
        "gObjectEventPal_DarkAura" not in movement_c
        or "OBJ_EVENT_PAL_TAG_DARK_AURA" not in movement_c
    ):
        raise SyncError(
            "A palette DarkAura nao parece registrada em event_object_movement.c."
        )


def make_backup(root: Path, dry_run: bool):
    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    dest = root / BACKUP_ROOT / stamp

    targets = [p for p in (PAL, GFX) if (root / p).is_file()]

    if dry_run:
        log(f"[dry-run] backup seria: {dest.relative_to(root)}")
        return dest

    for rel in targets:
        src = root / rel
        out = dest / rel
        out.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, out)

    (dest / "manifest.json").write_text(
        json.dumps(
            {
                "created_at": dt.datetime.now().isoformat(timespec="seconds"),
                "files": {str(rel): sha256(root / rel) for rel in targets},
            },
            indent=2,
        ) + "\n",
        encoding="utf-8",
    )
    return dest


def print_palette(png_info):
    log("Palette PNG (indices 0..15):")
    for i, rgb in enumerate(png_info["palette"]):
        word = gba555(rgb)
        log(
            f"  {i:2d}: RGB({rgb[0]:3d},{rgb[1]:3d},{rgb[2]:3d}) "
            f"-> GBA 0x{word:04X}"
        )


def force_project_conversion(root: Path):
    make = shutil.which("make")
    if not make:
        raise SyncError("make nao encontrado no PATH.")

    # Force both outputs from the same indexed PNG. This uses the project's own
    # graphics compiler/rules whenever available.
    cmd = [
        make,
        "-B",
        str(GFX),
        str(PAL),
    ]
    log("\nForcando conversao pelo compilador grafico do projeto:")
    log("  " + " ".join(cmd))

    proc = subprocess.run(cmd, cwd=root)
    return proc.returncode == 0


def sync_assets(root: Path, dry_run: bool):
    png_info = parse_indexed_png(root / PNG)
    expected_pal = expected_gbapal(png_info)

    log("DarkAura palette sync")
    log(f"Repo: {root}")
    log(
        f"PNG: {png_info['width']}x{png_info['height']}, "
        f"indexed, bit depth {png_info['bit_depth']}"
    )
    print_palette(png_info)

    old_pal = (root / PAL).read_bytes() if (root / PAL).is_file() else None
    old_gfx_size = (root / GFX).stat().st_size if (root / GFX).is_file() else None

    if old_pal is not None:
        log(f"\ngbapal atual: {len(old_pal)} bytes, SHA {sha256(root / PAL)}")
        if old_pal == expected_pal:
            log("gbapal atual JA corresponde exatamente a palette indexada do PNG.")
        else:
            diffs = sum(a != b for a, b in zip(old_pal[:32], expected_pal))
            log(f"gbapal atual NAO corresponde ao PNG ({diffs} bytes diferentes nos primeiros 32).")

    if old_gfx_size is not None:
        log(f"darkaura.4bpp atual: {old_gfx_size} bytes")

    backup = make_backup(root, dry_run)

    if dry_run:
        log("\n[dry-run] faria:")
        log("  - regenerar darkaura.4bpp do PNG")
        log("  - regenerar darkaura.gbapal do MESMO PNG")
        log("  - verificar palette byte-for-byte")
        log("  - build completo")
        log("[dry-run] nenhum arquivo foi alterado.")
        return backup

    project_ok = force_project_conversion(root)

    # Even if the local Makefile does not expose a direct .gbapal target,
    # explicitly write the palette derived from PLTE. This guarantees the
    # object event and the 4bpp indices share the same 0..15 mapping.
    if not project_ok:
        log("\nAviso: regra direta do make falhou; gravando a palette indexada internamente.")

    atomic_write(root / PAL, expected_pal)

    # GFX should already be correct from the previous 64x64 conversion. If the
    # direct make succeeded, validate it strictly.
    if not (root / GFX).is_file():
        raise SyncError("darkaura.4bpp nao existe apos a conversao.")
    gfx_size = (root / GFX).stat().st_size
    if gfx_size != EXPECTED_GFX_BYTES:
        raise SyncError(
            f"darkaura.4bpp tem {gfx_size} bytes; esperado {EXPECTED_GFX_BYTES}."
        )

    pal_bytes = (root / PAL).read_bytes()
    if len(pal_bytes) != EXPECTED_PAL_BYTES:
        raise SyncError(
            f"darkaura.gbapal tem {len(pal_bytes)} bytes; esperado 32."
        )
    if pal_bytes != expected_pal:
        raise SyncError("darkaura.gbapal nao bate com a PLTE do PNG apos escrita.")

    if all(b == 0 for b in pal_bytes):
        raise SyncError("Palette gerada ficou toda preta; PLTE do PNG parece invalida.")

    log("\nSYNC OK:")
    log(f"  darkaura.4bpp  = {gfx_size} bytes (0x{gfx_size:X})")
    log(f"  darkaura.gbapal = {len(pal_bytes)} bytes")
    log(f"  palette SHA     = {sha256(root / PAL)}")
    log(f"  backup          = {backup.relative_to(root)}")
    return backup


def git_check(root: Path):
    git = shutil.which("git")
    if git and (root / ".git").exists():
        log("\nVerificando whitespace...")
        subprocess.run(
            [git, "diff", "--check", "--", str(GRAPHICS_H), str(MOVEMENT_C)],
            cwd=root,
            check=False,
        )


def build(root: Path, jobs: int):
    make = shutil.which("make")
    if not make:
        raise SyncError("make nao encontrado no PATH.")

    log(f"\nCompilando ROM: make -j{jobs}")
    rc = subprocess.run([make, f"-j{jobs}"], cwd=root).returncode
    if rc != 0:
        raise SyncError(f"Build falhou com codigo {rc}.")
    log("\nBUILD OK.")


def main():
    p = argparse.ArgumentParser(
        description="Sincroniza a palette do DarkAura diretamente do PNG indexado."
    )
    p.add_argument("--root", type=Path, default=Path.cwd())
    p.add_argument("--dry-run", action="store_true")
    p.add_argument("--no-build", action="store_true")
    p.add_argument("--jobs", type=int, default=8)
    args = p.parse_args()

    if args.jobs < 1:
        raise SyncError("--jobs precisa ser >= 1")

    root = args.root.expanduser().resolve()
    validate_root(root)
    validate_code_wiring(root)

    backup = sync_assets(root, args.dry_run)
    if args.dry_run:
        return 0

    git_check(root)

    if not args.no_build:
        try:
            build(root, args.jobs)
        except SyncError:
            if backup is not None:
                log("\nBackup dos assets preservado em:")
                log(f"  {backup.relative_to(root)}")
            raise

    log("\nTeste esperado:")
    log("  - DarkAura usa as cores dos indices 0..15 do darkaura.png.")
    log("  - os quatro frames 64x64 continuam intactos.")
    log("")
    log("Obs.: WEATHER_DARKNESS ainda pode escurecer essas cores no mapa;")
    log("isso e separado da palette fonte.")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except SyncError as e:
        print(f"\nERRO: {e}", file=sys.stderr)
        raise SystemExit(1)
