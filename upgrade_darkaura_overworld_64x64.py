#!/usr/bin/env python3
"""
DarkAura overworld 64x64 upgrader for pokeemerald-expansion.

Expected artwork:
    graphics/object_events/pics/misc/darkaura.png
    64 x 256 px = 4 frames stacked vertically, each frame 64x64.

This updates the object-event metadata that was still describing the old
4-frame 32x32 sprite.

Changes:
  * sPicTable_DarkAura: overworld_frame(..., 4, 4, N) -> (8, 8, N)
  * gObjectEventGraphicsInfo_DarkAura:
      width  32 -> 64
      height 32 -> 64
      size   -> 2048 bytes per frame
      32x32 base OAM -> matching 64x64 base OAM, when present
  * sAnim_DarkAura is NOT rewritten. Object-event ANIMCMD_FRAME values index
    sPicTable_DarkAura frames; they are not raw tile offsets.

It creates backups, checks the PNG dimensions, runs git diff --check and
make -j8 by default.

Use from repository root:
    python3 upgrade_darkaura_overworld_64x64.py --dry-run
    python3 upgrade_darkaura_overworld_64x64.py
"""

from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import struct
import subprocess
import sys
import tempfile

PIC_TABLES = Path("src/data/object_events/object_event_pic_tables.h")
GFX_INFO = Path("src/data/object_events/object_event_graphics_info.h")
ANIMS = Path("src/data/object_events/object_event_anims.h")
PNG = Path("graphics/object_events/pics/misc/darkaura.png")
FOUR_BPP = Path("graphics/object_events/pics/misc/darkaura.4bpp")
BACKUP_ROOT = Path(".darkaura_64x64_backups")

FRAME_W = 64
FRAME_H = 64
FRAME_COUNT = 4
FRAME_BYTES_4BPP = FRAME_W * FRAME_H // 2       # 2048
TOTAL_BYTES_4BPP = FRAME_BYTES_4BPP * FRAME_COUNT # 8192


class PatchError(RuntimeError):
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


def png_size(path: Path):
    data = path.read_bytes()[:24]
    if len(data) < 24 or data[:8] != b"\x89PNG\r\n\x1a\n" or data[12:16] != b"IHDR":
        raise PatchError(f"{path} nao parece ser um PNG valido.")
    return struct.unpack(">II", data[16:24])


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
        raise PatchError("Rode este script na raiz do pokeemerald-expansion.")

    for rel in (PIC_TABLES, GFX_INFO, ANIMS, PNG):
        if not (root / rel).is_file():
            raise PatchError(f"Nao encontrei {rel}.")

    w, h = png_size(root / PNG)
    if (w, h) != (64, 256):
        raise PatchError(
            f"darkaura.png esta em {w}x{h}. "
            "Para 4 frames 64x64 empilhados, espero exatamente 64x256."
        )


def find_initializer_block(text: str, symbol: str):
    # Find "... symbol ... = {" then balance braces.
    m = re.search(
        rf"(?m)^[^\n]*\b{re.escape(symbol)}\b[^\n]*=\s*\{{",
        text,
    )
    if not m:
        raise PatchError(f"Bloco {symbol} nao encontrado.")

    brace = text.find("{", m.start(), m.end())
    depth = 0
    i = brace
    while i < len(text):
        if text[i] == "{":
            depth += 1
        elif text[i] == "}":
            depth -= 1
            if depth == 0:
                semi = text.find(";", i)
                end = semi + 1 if semi >= 0 else i + 1
                return m.start(), end, text[m.start():end]
        i += 1
    raise PatchError(f"Fim do bloco {symbol} nao encontrado.")


def replace_initializer_block(text: str, symbol: str, new_block: str):
    start, end, old = find_initializer_block(text, symbol)
    return text[:start] + new_block + text[end:]


def patch_pic_table(text: str):
    start, end, block = find_initializer_block(text, "sPicTable_DarkAura")

    matches = re.findall(
        r"overworld_frame\s*\(\s*gObjectEventPic_DarkAura\s*,\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*\)",
        block,
    )
    if len(matches) != 4:
        raise PatchError(
            f"sPicTable_DarkAura deveria ter 4 frames; encontrei {len(matches)}."
        )

    frame_ids = sorted(int(x[2]) for x in matches)
    if frame_ids != [0, 1, 2, 3]:
        raise PatchError(f"Frames DarkAura inesperados: {frame_ids}")

    new_block, count = re.subn(
        r"overworld_frame\s*\(\s*gObjectEventPic_DarkAura\s*,\s*\d+\s*,\s*\d+\s*,\s*([0-3])\s*\)",
        r"overworld_frame(gObjectEventPic_DarkAura, 8, 8, \1)",
        block,
    )
    if count != 4:
        raise PatchError(f"Falha ao atualizar pic table: {count}/4 linhas.")

    return text[:start] + new_block + text[end:], block, new_block


def replace_field(block: str, field: str, value: str):
    pattern = rf"(?m)^(\s*\.{re.escape(field)}\s*=\s*)[^,\n]+(,)"
    if not re.search(pattern, block):
        raise PatchError(f"Campo .{field} nao encontrado em gObjectEventGraphicsInfo_DarkAura.")
    return re.sub(pattern, rf"\g<1>{value}\2", block, count=1)


def repo_contains_symbol(root: Path, symbol: str):
    # Narrow scan: object-event headers only.
    base = root / "src/data/object_events"
    for p in base.glob("*.h"):
        try:
            if symbol in p.read_text(encoding="utf-8"):
                return True
        except UnicodeDecodeError:
            pass
    return False


def patch_graphics_info(root: Path, text: str):
    start, end, block = find_initializer_block(text, "gObjectEventGraphicsInfo_DarkAura")
    new = block

    new = replace_field(new, "size", str(FRAME_BYTES_4BPP))
    new = replace_field(new, "width", str(FRAME_W))
    new = replace_field(new, "height", str(FRAME_H))

    # Object events commonly point to a base OAM matching their dimensions.
    oam_match = re.search(r"(?m)^(\s*\.oam\s*=\s*&)([A-Za-z0-9_]+)(,)", new)
    if oam_match:
        old_symbol = oam_match.group(2)
        if "32x32" in old_symbol:
            new_symbol = old_symbol.replace("32x32", "64x64")
            if not repo_contains_symbol(root, new_symbol):
                raise PatchError(
                    f"O OAM atual e {old_symbol}, mas nao encontrei {new_symbol} na repo. "
                    "Rode o grep sugerido e me mande a saida."
                )
            new = (
                new[:oam_match.start(2)]
                + new_symbol
                + new[oam_match.end(2):]
            )

    return text[:start] + new + text[end:], block, new


def verify_anim_table(text: str):
    _, _, block = find_initializer_block(text, "sAnim_DarkAura")
    frames = [int(v) for v in re.findall(r"ANIMCMD_FRAME\s*\(\s*(\d+)\s*,", block)]

    if not frames:
        raise PatchError("Nao encontrei ANIMCMD_FRAME em sAnim_DarkAura.")

    bad = [x for x in frames if x not in (0, 1, 2, 3)]
    if bad:
        raise PatchError(
            "sAnim_DarkAura usa indices inesperados "
            f"{bad}. Nao vou alterar automaticamente."
        )

    return frames


def make_backup(root: Path, dry_run: bool):
    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    dest = root / BACKUP_ROOT / stamp

    targets = [PIC_TABLES, GFX_INFO]
    if (root / FOUR_BPP).is_file():
        targets.append(FOUR_BPP)

    if dry_run:
        log(f"[dry-run] backup seria: {dest.relative_to(root)}")
        return dest

    for rel in targets:
        src = root / rel
        out = dest / rel
        out.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, out)

    manifest = {
        "created_at": dt.datetime.now().isoformat(timespec="seconds"),
        "files": {str(rel): sha256(root / rel) for rel in targets},
    }
    (dest / "manifest.json").write_text(
        json.dumps(manifest, indent=2) + "\n",
        encoding="utf-8",
    )
    return dest


def apply(root: Path, dry_run: bool):
    pic_path = root / PIC_TABLES
    info_path = root / GFX_INFO
    anim_path = root / ANIMS

    pic = pic_path.read_text(encoding="utf-8")
    info = info_path.read_text(encoding="utf-8")
    anim = anim_path.read_text(encoding="utf-8")

    anim_frames = verify_anim_table(anim)
    pic2, old_pic_block, new_pic_block = patch_pic_table(pic)
    info2, old_info_block, new_info_block = patch_graphics_info(root, info)

    log("DarkAura Overworld 64x64")
    log(f"Repo: {root}")
    log()
    log("PNG: 64x256 = 4 frames de 64x64")
    log(f"1 frame 4bpp: {FRAME_BYTES_4BPP} bytes (0x{FRAME_BYTES_4BPP:X})")
    log(f"4 frames 4bpp: {TOTAL_BYTES_4BPP} bytes (0x{TOTAL_BYTES_4BPP:X})")
    log(f"Anim frame indexes encontrados: {anim_frames}")
    log()
    log("Importante: ANIMCMD_FRAME permanece usando indices 0..3.")
    log("Ele indexa sPicTable_DarkAura; nao usa offsets 0/64/128/192 aqui.")

    if (root / FOUR_BPP).is_file():
        size = (root / FOUR_BPP).stat().st_size
        log(f"darkaura.4bpp atual: {size} bytes (esperado apos converter: {TOTAL_BYTES_4BPP})")

    changed = pic2 != pic or info2 != info
    if not changed:
        log("\nMetadados DarkAura ja parecem estar em 64x64.")
        return None

    backup = make_backup(root, dry_run)

    if dry_run:
        log("\n[dry-run] alteraria:")
        if pic2 != pic:
            log(f"  - {PIC_TABLES}")
        if info2 != info:
            log(f"  - {GFX_INFO}")
        log("[dry-run] nenhum arquivo foi alterado.")
        return backup

    if pic2 != pic:
        atomic_write(pic_path, pic2.encode("utf-8"))
    if info2 != info:
        atomic_write(info_path, info2.encode("utf-8"))

    log(f"\nBackup: {backup.relative_to(root)}")
    return backup


def run_asset_conversion(root: Path):
    make = shutil.which("make")
    if not make:
        raise PatchError("make nao encontrado.")

    # Ask the project's own graphics rule to update this asset first.
    target = str(FOUR_BPP)
    log(f"\nAtualizando asset: make {target}")
    rc = subprocess.run([make, target], cwd=root).returncode
    if rc != 0:
        raise PatchError(f"Falhou ao gerar {target}.")

    path = root / FOUR_BPP
    if not path.is_file():
        raise PatchError(f"{FOUR_BPP} nao foi gerado.")

    size = path.stat().st_size
    if size != TOTAL_BYTES_4BPP:
        raise PatchError(
            f"{FOUR_BPP} ficou com {size} bytes, mas 4x64x64 4bpp "
            f"deveria ter {TOTAL_BYTES_4BPP} bytes."
        )
    log(f"Asset OK: {size} bytes (0x{size:X}).")


def git_check(root: Path):
    git = shutil.which("git")
    if git and (root / ".git").exists():
        log("\nVerificando whitespace...")
        rc = subprocess.run(
            [git, "diff", "--check", "--", str(PIC_TABLES), str(GFX_INFO)],
            cwd=root,
        ).returncode
        if rc != 0:
            raise PatchError("git diff --check encontrou problema.")


def build(root: Path, jobs: int):
    make = shutil.which("make")
    if not make:
        raise PatchError("make nao encontrado.")

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
    args = p.parse_args()

    if args.jobs < 1:
        raise PatchError("--jobs precisa ser >= 1")

    root = args.root.expanduser().resolve()
    validate_root(root)
    backup = apply(root, args.dry_run)

    if args.dry_run:
        return 0

    git_check(root)
    run_asset_conversion(root)

    if not args.no_build:
        try:
            build(root, args.jobs)
        except PatchError:
            if backup is not None:
                log("\nBackup preservado em:")
                log(f"  {backup.relative_to(root)}")
            raise

    log("\nResultado esperado:")
    log("  - DarkAura usa os 4 frames 64x64")
    log("  - bounding box visual passa a 64x64")
    log("  - animacao continua com os mesmos tempos/indices")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except PatchError as e:
        print(f"\nERRO: {e}", file=sys.stderr)
        raise SystemExit(1)
