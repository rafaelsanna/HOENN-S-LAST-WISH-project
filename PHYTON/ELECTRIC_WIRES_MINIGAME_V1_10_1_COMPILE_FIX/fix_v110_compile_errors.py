#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from pathlib import Path
from datetime import datetime
import argparse
import re
import shutil
import subprocess

SCRIPT_DIR = Path(__file__).resolve().parent

def find_repo(explicit=None):
    if explicit:
        root = Path(explicit).expanduser().resolve()
        if not (root / "src/electric_wires.c").is_file():
            raise SystemExit(f"Repo inválido: {root}")
        return root

    cur = Path.cwd().resolve()
    candidates = [cur, *cur.parents, SCRIPT_DIR.parent.resolve(), SCRIPT_DIR.parent.parent.resolve()]
    seen = set()
    for root in candidates:
        root = root.resolve()
        if root in seen:
            continue
        seen.add(root)
        if (root / "src/electric_wires.c").is_file():
            return root
    raise SystemExit("Não encontrei a raiz do repo com src/electric_wires.c")

def patch(text):
    original = text

    # Correct type: the project's own intro.c declares this as SpritePalette
    # and loads it with LoadSpritePalette.
    text = text.replace(
        "extern const struct CompressedSpritePalette gBattleAnimPaletteTable[];",
        "extern const struct SpritePalette gBattleAnimPaletteTable[];"
    )

    # The branch does not export gOamData_AffineOff_ObjNormal_16x16.
    # Define a local 16x16 non-affine OAM descriptor, exactly like the
    # already-working local 64x64 descriptor in this minigame.
    if "static const struct OamData sWiresSparkOam" not in text:
        anchor = "static void SpriteCB_WiresSpark(struct Sprite *sprite);\n\n"
        if anchor not in text:
            raise SystemExit("Não encontrei SpriteCB_WiresSpark no V1.10.")
        local_oam = (
            "static const struct OamData sWiresSparkOam =\n"
            "{\n"
            "    .affineMode = ST_OAM_AFFINE_OFF,\n"
            "    .objMode = ST_OAM_OBJ_NORMAL,\n"
            "    .mosaic = FALSE,\n"
            "    .bpp = ST_OAM_4BPP,\n"
            "    .shape = SPRITE_SHAPE(16x16),\n"
            "    .size = SPRITE_SIZE(16x16),\n"
            "    .priority = 0,\n"
            "};\n\n"
        )
        text = text.replace(anchor, anchor + local_oam, 1)

    text = text.replace(
        ".oam = &gOamData_AffineOff_ObjNormal_16x16,",
        ".oam = &sWiresSparkOam,"
    )

    # This branch's OamData has no direct hFlip/vFlip fields. Random tile
    # variant is enough; remove these two optional visual randomizers.
    text = re.sub(
        r'^\s*gSprites\[spriteId\]\.oam\.hFlip\s*=\s*Random\(\)\s*&\s*1;\s*\n',
        '',
        text,
        flags=re.M
    )
    text = re.sub(
        r'^\s*gSprites\[spriteId\]\.oam\.vFlip\s*=\s*Random\(\)\s*&\s*1;\s*\n',
        '',
        text,
        flags=re.M
    )

    # Use the exact battle-animation table access pattern already used by
    # this branch's intro.c.
    text = text.replace(
        "&gBattleAnimPicTable[ANIM_TAG_SPARK_2 - ANIM_SPRITES_START]",
        "&gBattleAnimPicTable[GET_TRUE_SPRITE_INDEX(ANIM_TAG_SPARK_2)]"
    )

    # Palette table is not compressed in this branch.
    old_palette_load = (
        "    LoadCompressedSpritePaletteUsingHeap(\n"
        "        &gBattleAnimPaletteTable[ANIM_TAG_SPARK_2 - ANIM_SPRITES_START]);"
    )
    new_palette_load = (
        "    LoadSpritePalette(\n"
        "        &gBattleAnimPaletteTable[GET_TRUE_SPRITE_INDEX(ANIM_TAG_SPARK_2)]);"
    )
    text = text.replace(old_palette_load, new_palette_load)

    # Be tolerant if the index was already changed but loader was not.
    text = text.replace(
        "LoadCompressedSpritePaletteUsingHeap(\n"
        "        &gBattleAnimPaletteTable[GET_TRUE_SPRITE_INDEX(ANIM_TAG_SPARK_2)]);",
        "LoadSpritePalette(\n"
        "        &gBattleAnimPaletteTable[GET_TRUE_SPRITE_INDEX(ANIM_TAG_SPARK_2)]);"
    )

    if original == text:
        if "sWiresSparkOam" in text and ".hFlip" not in text and ".vFlip" not in text:
            return text, False
        raise SystemExit("Não encontrei os trechos esperados da V1.10 para corrigir.")

    return text, True

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo")
    ap.add_argument("--compile", action="store_true")
    ap.add_argument("--jobs", type=int, default=8)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    repo = find_repo(args.repo)
    src = repo / "src/electric_wires.c"
    original = src.read_text(encoding="utf-8")
    patched, changed = patch(original)

    print("=== ELECTRIC WIRES V1.10.1 COMPILE FIX ===")
    print("")
    print("Corrige exatamente os erros atuais:")
    print(" - OAM 16x16 não exportado -> OAM local sWiresSparkOam")
    print(" - OamData sem hFlip/vFlip -> remove esses 2 campos")
    print(" - battle palette -> usa SpritePalette + LoadSpritePalette")
    print(" - SPARK_2 index -> usa GET_TRUE_SPRITE_INDEX, padrão da sua branch")

    if args.dry_run:
        print("")
        print("DRY-RUN OK.")
        print(" src/electric_wires.c:", "mudaria" if changed else "já corrigido")
        return 0

    if changed:
        backup_dir = SCRIPT_DIR / "backups"
        backup_dir.mkdir(parents=True, exist_ok=True)
        stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        backup = backup_dir / f"electric_wires_{stamp}.c"
        shutil.copy2(src, backup)
        src.write_text(patched, encoding="utf-8", newline="\n")
        src.touch()
        print("")
        print("Compile fix aplicado.")
        print("Backup:", backup)
    else:
        print("")
        print("Compile fix já parece aplicado.")

    if args.compile:
        cmd = ["make", f"-j{max(1, args.jobs)}"]
        print("\nExecutando:", " ".join(cmd))
        return subprocess.call(cmd, cwd=repo)

    print("\nCompile com:")
    print("  make -j8")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
