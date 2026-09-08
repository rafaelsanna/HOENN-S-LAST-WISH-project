#!/usr/bin/env python3
"""
DarkAura OW 64x64 V2 - fixes the missing/cropped sprite.

This V2 corrects the field the previous upgrader missed:
    .subspriteTables

For a real 64x64 object event, these fields must agree:
    .size = 2048
    .width = 64
    .height = 64
    .oam = &gObjectEventBaseOam_64x64
    .subspriteTables = <the repo's 64x64 OAM table>
    sPicTable_DarkAura uses overworld_frame(..., 8, 8, frame)

The animation still uses frame indices 0,1,2,3.

Run from the pokeemerald-expansion root:
    python3 fix_darkaura_64x64_v2.py --dry-run
    python3 fix_darkaura_64x64_v2.py

This script:
  * verifies darkaura.png is 64x256;
  * verifies darkaura.4bpp is 8192 bytes when present;
  * patches the picture table;
  * patches graphics info including .subspriteTables;
  * creates backups;
  * runs git diff --check;
  * runs make -j8 by default.
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
BACKUP_ROOT = Path(".darkaura_64x64_v2_backups")

FRAME_BYTES = 2048
TOTAL_BYTES = 8192


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
        raise PatchError(f"{path} nao parece ser PNG valido.")
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
        raise PatchError("Rode na raiz do pokeemerald-expansion.")

    for rel in (PIC_TABLES, GFX_INFO, ANIMS, PNG):
        if not (root / rel).is_file():
            raise PatchError(f"Nao encontrei {rel}.")

    w, h = png_size(root / PNG)
    if (w, h) != (64, 256):
        raise PatchError(f"darkaura.png esta em {w}x{h}; esperado 64x256.")

    if (root / FOUR_BPP).is_file():
        size = (root / FOUR_BPP).stat().st_size
        if size != TOTAL_BYTES:
            raise PatchError(
                f"darkaura.4bpp tem {size} bytes; esperado {TOTAL_BYTES} (0x2000)."
            )


def find_initializer_block(text: str, symbol: str):
    m = re.search(
        rf"(?m)^[^\n]*\b{re.escape(symbol)}\b[^\n]*=\s*\{{",
        text
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
                if semi < 0:
                    raise PatchError(f"';' apos {symbol} nao encontrado.")
                return m.start(), semi + 1, text[m.start():semi + 1]
        i += 1

    raise PatchError(f"Fim de {symbol} nao encontrado.")


def patch_pic_table(text: str):
    start, end, block = find_initializer_block(text, "sPicTable_DarkAura")

    found = re.findall(
        r"overworld_frame\s*\(\s*gObjectEventPic_DarkAura\s*,\s*(\d+)\s*,\s*(\d+)\s*,\s*([0-3])\s*\)",
        block
    )
    if len(found) != 4:
        raise PatchError(
            f"Esperava 4 overworld_frame do DarkAura; encontrei {len(found)}."
        )

    new_block = re.sub(
        r"overworld_frame\s*\(\s*gObjectEventPic_DarkAura\s*,\s*\d+\s*,\s*\d+\s*,\s*([0-3])\s*\)",
        r"overworld_frame(gObjectEventPic_DarkAura, 8, 8, \1)",
        block
    )
    return text[:start] + new_block + text[end:]


def symbol_exists(root: Path, symbol: str):
    for base in (root / "src", root / "include"):
        for p in base.rglob("*"):
            if not p.is_file():
                continue
            if p.suffix not in (".c", ".h", ".inc"):
                continue
            try:
                if symbol in p.read_text(encoding="utf-8"):
                    return True
            except (UnicodeDecodeError, OSError):
                pass
    return False


def choose_64x64_subsprite_symbol(root: Path, current_value: str):
    clean = current_value.strip()

    # Best case: the current symbol is a 32x32 symbol with a direct 64x64 twin.
    if "32x32" in clean:
        candidate = clean.replace("32x32", "64x64")
        if symbol_exists(root, candidate):
            return candidate

    # Known expansion naming.
    for candidate in (
        "sOamTables_64x64",
        "gObjectEventSpriteOamTables_64x64",
        "gObjectEventOamTables_64x64",
    ):
        if symbol_exists(root, candidate):
            return candidate

    raise PatchError(
        "Nao consegui descobrir automaticamente a tabela subsprite 64x64. "
        "Rode: grep -Rni \"64x64\" src include | grep -i \"OamTables\\|subsprite\" | head -100"
    )


def replace_numeric_field(block: str, field: str, value: int):
    pat = rf"(?m)^(\s*\.{re.escape(field)}\s*=\s*)[^,\n]+(,)"
    if not re.search(pat, block):
        raise PatchError(f"Campo .{field} nao encontrado no graphics info DarkAura.")
    return re.sub(pat, rf"\g<1>{value}\2", block, count=1)


def replace_pointer_field(block: str, field: str, value: str):
    pat = rf"(?m)^(\s*\.{re.escape(field)}\s*=\s*)[^,\n]+(,)"
    if not re.search(pat, block):
        raise PatchError(f"Campo .{field} nao encontrado no graphics info DarkAura.")
    return re.sub(pat, rf"\g<1>{value}\2", block, count=1)


def patch_graphics_info(root: Path, text: str):
    start, end, block = find_initializer_block(
        text, "gObjectEventGraphicsInfo_DarkAura"
    )

    new = block
    new = replace_numeric_field(new, "size", 2048)
    new = replace_numeric_field(new, "width", 64)
    new = replace_numeric_field(new, "height", 64)

    if not symbol_exists(root, "gObjectEventBaseOam_64x64"):
        raise PatchError("gObjectEventBaseOam_64x64 nao existe na repo.")
    new = replace_pointer_field(new, "oam", "&gObjectEventBaseOam_64x64")

    subs_m = re.search(
        r"(?m)^\s*\.subspriteTables\s*=\s*([^,\n]+),",
        new
    )
    if not subs_m:
        raise PatchError(
            ".subspriteTables nao existe em gObjectEventGraphicsInfo_DarkAura."
        )

    subs64 = choose_64x64_subsprite_symbol(root, subs_m.group(1))
    new = replace_pointer_field(new, "subspriteTables", subs64)

    return text[:start] + new + text[end:], new, subs64


def verify_anim(text: str):
    _, _, block = find_initializer_block(text, "sAnim_DarkAura")
    frames = [int(x) for x in re.findall(r"ANIMCMD_FRAME\s*\(\s*(\d+)\s*,", block)]
    if not frames:
        raise PatchError("sAnim_DarkAura nao possui ANIMCMD_FRAME.")
    if any(x not in (0, 1, 2, 3) for x in frames):
        raise PatchError(
            f"sAnim_DarkAura tem indices inesperados {frames}; esperado somente 0..3."
        )
    return frames


def make_backup(root: Path, dry_run: bool):
    stamp = dt.datetime.now().strftime("%Y%m%d_%H%M%S")
    dest = root / BACKUP_ROOT / stamp

    if dry_run:
        log(f"[dry-run] backup seria: {dest.relative_to(root)}")
        return dest

    for rel in (PIC_TABLES, GFX_INFO):
        src = root / rel
        out = dest / rel
        out.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, out)

    (dest / "manifest.json").write_text(
        json.dumps(
            {
                "created_at": dt.datetime.now().isoformat(timespec="seconds"),
                "files": {
                    str(PIC_TABLES): sha256(root / PIC_TABLES),
                    str(GFX_INFO): sha256(root / GFX_INFO),
                },
            },
            indent=2,
        ) + "\n",
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

    frames = verify_anim(anim)
    pic2 = patch_pic_table(pic)
    info2, info_block, subs64 = patch_graphics_info(root, info)

    log("DarkAura 64x64 V2")
    log(f"Repo: {root}")
    log()
    log("Diagnostico:")
    log("  o sprite 64x64 estava sendo cortado porque todos os metadados")
    log("  precisam concordar, inclusive .subspriteTables.")
    log()
    log(f"Anim indices preservados: {frames}")
    log(f"Subsprite 64x64 detectado: {subs64}")
    log()
    log("GraphicsInfo final esperado:")
    log("  .size = 2048")
    log("  .width = 64")
    log("  .height = 64")
    log("  .oam = &gObjectEventBaseOam_64x64")
    log(f"  .subspriteTables = {subs64}")
    log("Pic table: 4x overworld_frame(..., 8, 8, 0..3)")

    changed = pic2 != pic or info2 != info
    if not changed:
        log("\nTudo ja esta configurado como 64x64.")
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

    # Disk verification.
    final_pic = pic_path.read_text(encoding="utf-8")
    final_info = info_path.read_text(encoding="utf-8")
    _, _, pic_block = find_initializer_block(final_pic, "sPicTable_DarkAura")
    _, _, gfx_block = find_initializer_block(
        final_info, "gObjectEventGraphicsInfo_DarkAura"
    )

    if pic_block.count("gObjectEventPic_DarkAura, 8, 8") != 4:
        raise PatchError("Pic table 64x64 nao ficou correta no disco.")

    for expected in (
        ".size = 2048",
        ".width = 64",
        ".height = 64",
        ".oam = &gObjectEventBaseOam_64x64",
        f".subspriteTables = {subs64}",
    ):
        if expected not in gfx_block:
            raise PatchError(f"Verificacao final falhou: faltando {expected}")

    log(f"\nBackup: {backup.relative_to(root)}")
    return backup


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
    p = argparse.ArgumentParser(
        description="Corrige definitivamente DarkAura OW 64x64 cortado."
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

    log("\nDepois do build:")
    log("  - feche/reabra o Porymap ou recarregue o projeto;")
    log("  - teste NightmarePetalburg em uma ROM NOVA gerada por este build.")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except PatchError as e:
        print(f"\nERRO: {e}", file=sys.stderr)
        raise SystemExit(1)
