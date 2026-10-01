#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from pathlib import Path
from datetime import datetime
import argparse
import re
import shutil
import struct
import subprocess

SCRIPT_DIR = Path(__file__).resolve().parent

PNG_REL = Path("graphics/object_events/pics/people/battle_girl.png")
RAW_REL = Path("graphics/object_events/pics/people/battle_girl.4bpp")
REPACK_REL = Path("graphics/object_events/pics/people/battle_girl_repacked.4bpp")
GFX_HEADER_REL = Path("src/data/object_events/object_event_graphics.h")

OLD_INCBIN = 'INCBIN_U32("graphics/object_events/pics/people/battle_girl.4bpp")'
NEW_INCBIN = 'INCBIN_U32("graphics/object_events/pics/people/battle_girl_repacked.4bpp")'

FRAME_W = 16
FRAME_H = 32
TILE_W = 8
TILE_H = 8
TILE_BYTES_4BPP = 32

def find_repo(explicit=None):
    if explicit:
        root = Path(explicit).expanduser().resolve()
        if not (root / GFX_HEADER_REL).is_file():
            raise SystemExit(f"Repo inválido: {root}")
        return root

    cur = Path.cwd().resolve()
    for root in [cur, *cur.parents]:
        if (root / GFX_HEADER_REL).is_file():
            return root

    raise SystemExit("Não encontrei a raiz do pokeemerald-expansion.")

def backup(path):
    d = SCRIPT_DIR / "backups"
    d.mkdir(parents=True, exist_ok=True)
    stamp = datetime.now().strftime("%Y%m%d_%H%M%S_%f")
    out = d / f"{path.name}.{stamp}.bak"
    shutil.copy2(path, out)
    return out

def png_dimensions(path):
    data = path.read_bytes()
    if len(data) < 24 or data[:8] != b"\x89PNG\r\n\x1a\n":
        raise SystemExit(f"PNG inválido: {path}")
    if data[12:16] != b"IHDR":
        raise SystemExit(f"PNG sem IHDR esperado: {path}")
    width, height = struct.unpack(">II", data[16:24])
    return width, height

def ensure_raw_4bpp(repo):
    raw = repo / RAW_REL
    if raw.is_file():
        return raw

    # Try the repo's normal graphics rule.
    cmd = ["make", str(RAW_REL)]
    print("battle_girl.4bpp não existe ainda; tentando gerar:")
    print(" ", " ".join(cmd))
    rc = subprocess.call(cmd, cwd=repo)
    if rc != 0 or not raw.is_file():
        raise SystemExit(
            "Não consegui gerar battle_girl.4bpp. "
            "Rode um make normal uma vez e tente novamente."
        )
    return raw

def repack_horizontal_frames(raw_bytes, width, height):
    if height != FRAME_H:
        raise SystemExit(
            f"Layout inesperado: battle_girl.png tem {width}x{height}. "
            f"Este fix espera uma faixa horizontal com altura {FRAME_H}px."
        )

    if width % FRAME_W != 0 or width <= FRAME_W:
        raise SystemExit(
            f"Layout inesperado: largura {width}px. "
            "Este fix espera vários frames 16x32 lado a lado."
        )

    frame_count = width // FRAME_W
    width_tiles = width // TILE_W
    height_tiles = height // TILE_H

    expected_size = width_tiles * height_tiles * TILE_BYTES_4BPP
    if len(raw_bytes) != expected_size:
        raise SystemExit(
            f"Tamanho de battle_girl.4bpp inesperado: {len(raw_bytes)} bytes; "
            f"esperado {expected_size} para {width}x{height} em 4bpp."
        )

    tiles = [
        raw_bytes[i:i + TILE_BYTES_4BPP]
        for i in range(0, len(raw_bytes), TILE_BYTES_4BPP)
    ]

    frame_tiles_x = FRAME_W // TILE_W   # 2
    frame_tiles_y = FRAME_H // TILE_H   # 4

    out = bytearray()

    # Input PNG is horizontal:
    # [frame0][frame1][frame2]...
    # gfx conversion stores tiles row-major across the WHOLE image.
    #
    # SpriteFrameImage expects each 16x32 frame as one contiguous 256-byte block.
    # So gather 2x4 tiles for each frame and write them contiguously.
    for frame in range(frame_count):
        x0 = frame * frame_tiles_x
        for ty in range(frame_tiles_y):
            row = ty * width_tiles
            for tx in range(frame_tiles_x):
                out += tiles[row + x0 + tx]

    if len(out) != len(raw_bytes):
        raise SystemExit("Erro interno: repack mudou o tamanho do gfx.")

    return bytes(out), frame_count

def patch_header(text):
    if NEW_INCBIN in text:
        return text, False

    if OLD_INCBIN not in text:
        # More tolerant exact declaration check.
        m = re.search(
            r'const u32 gObjectEventPic_BattleGirl\[\]\s*=\s*'
            r'INCBIN_U32\("graphics/object_events/pics/people/'
            r'battle_girl(?:_repacked)?\.4bpp"\);',
            text
        )
        if m and "battle_girl_repacked.4bpp" in m.group(0):
            return text, False
        raise SystemExit(
            "Não encontrei o INCBIN atual de gObjectEventPic_BattleGirl."
        )

    return text.replace(OLD_INCBIN, NEW_INCBIN, 1), True

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo")
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--compile", action="store_true")
    ap.add_argument("--jobs", type=int, default=8)
    args = ap.parse_args()

    repo = find_repo(args.repo)

    png = repo / PNG_REL
    header = repo / GFX_HEADER_REL
    repack = repo / REPACK_REL

    if not png.is_file():
        raise SystemExit(f"Não encontrei: {PNG_REL}")

    width, height = png_dimensions(png)
    raw = ensure_raw_4bpp(repo)
    raw_bytes = raw.read_bytes()

    repacked, frame_count = repack_horizontal_frames(raw_bytes, width, height)

    old_header = header.read_text(encoding="utf-8")
    new_header, header_changed = patch_header(old_header)

    repack_changed = (not repack.is_file()) or repack.read_bytes() != repacked

    print("=== BATTLE GIRL V1.3 - FRAME LAYOUT FIX ===")
    print("")
    print(f"battle_girl.png: {width}x{height}")
    print(f"Frames detectados: {frame_count} x 16x32")
    print("")
    print("Diagnóstico:")
    print(" - a palette está correta")
    print(" - sAnimTable_Standard pode continuar")
    print(" - o problema é a ORDEM DOS TILES no .4bpp")
    print(" - frames horizontais viraram tiles intercalados no ROM")
    print("")
    print("Correção:")
    print(" - reorganiza cada frame 16x32 em bloco contínuo")
    print(" - gera battle_girl_repacked.4bpp")
    print(" - gObjectEventPic_BattleGirl passa a usar o gfx repackado")
    print("")
    print("repacked gfx:", "mudaria" if repack_changed else "já correto")
    print("object_event_graphics.h:", "mudaria" if header_changed else "já correto")

    if args.dry_run:
        print("\nDRY-RUN OK.")
        return 0

    if repack_changed:
        if repack.is_file():
            print("Backup:", backup(repack))
        repack.write_bytes(repacked)
        print("Gerado:", repack)

    if header_changed:
        print("Backup:", backup(header))
        header.write_text(new_header, encoding="utf-8", newline="\n")

    # Force rebuild of the object that includes object event gfx data.
    obj = repo / "build/modern/src/event_object_movement.o"
    if obj.exists():
        obj.unlink()
        print("Removido objeto antigo: build/modern/src/event_object_movement.o")

    if args.compile:
        cmd = ["make", f"-j{max(1, args.jobs)}"]
        print("\nExecutando:", " ".join(cmd))
        return subprocess.call(cmd, cwd=repo)

    print("\nFrame-layout fix aplicado.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
