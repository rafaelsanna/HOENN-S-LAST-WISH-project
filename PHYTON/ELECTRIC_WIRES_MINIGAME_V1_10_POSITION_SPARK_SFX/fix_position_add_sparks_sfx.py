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

def add_include(text, anchor, include_line):
    if include_line in text:
        return text
    if anchor not in text:
        raise SystemExit(f"Não encontrei include anchor: {anchor.strip()}")
    return text.replace(anchor, anchor + include_line, 1)

def patch_struct(text):
    if "sparkSpawnTimer" in text:
        return text
    anchor = (
        "    u8 cableUpSpriteId;\n"
        "    u8 cableLeftSpriteId;\n"
        "    u8 cableRightSpriteId;\n"
    )
    if anchor not in text:
        raise SystemExit("Não encontrei o final de struct ElectricWiresState")
    return text.replace(
        anchor,
        anchor
        + "    u8 sparkSpawnTimer;\n"
          "    u8 sparkSoundTimer;\n"
          "    u8 stormStopTimer;\n",
        1
    )

def patch_externs_and_template(text):
    if "sWiresSparkTemplate" in text:
        return text
    anchor = (
        "static EWRAM_DATA struct ElectricWiresState sWires;\n\n"
        "// ============================================================\n"
        "// Graphics\n"
        "// ============================================================\n"
    )
    if anchor not in text:
        raise SystemExit("Não encontrei o bloco após sWires")
    block = (
        "static EWRAM_DATA struct ElectricWiresState sWires;\n\n"
        "// Reuse the game's existing SPARK_2 battle-animation graphics, but with a\n"
        "// minigame-local callback so this screen does not depend on battle globals.\n"
        "extern const struct CompressedSpriteSheet gBattleAnimPicTable[];\n"
        "extern const struct CompressedSpritePalette gBattleAnimPaletteTable[];\n\n"
        "static void SpriteCB_WiresSpark(struct Sprite *sprite);\n\n"
        "static const struct SpriteTemplate sWiresSparkTemplate =\n"
        "{\n"
        "    .tileTag = ANIM_TAG_SPARK_2,\n"
        "    .paletteTag = ANIM_TAG_SPARK_2,\n"
        "    .oam = &gOamData_AffineOff_ObjNormal_16x16,\n"
        "    .anims = gDummySpriteAnimTable,\n"
        "    .images = NULL,\n"
        "    .affineAnims = gDummySpriteAffineAnimTable,\n"
        "    .callback = SpriteCB_WiresSpark,\n"
        "};\n\n"
        "// ============================================================\n"
        "// Graphics\n"
        "// ============================================================\n"
    )
    return text.replace(anchor, block, 1)

def patch_forward_decls(text):
    if "static void SpawnRandomWireSpark(void);" in text:
        return text
    anchor = "static void HideCableSprites(void);\n"
    if anchor not in text:
        raise SystemExit("Não encontrei forward declaration HideCableSprites")
    extra = (
        "static void SpawnRandomWireSpark(void);\n"
        "static void StartConnectedElectricFx(void);\n"
        "static void UpdateConnectedElectricFx(void);\n"
    )
    return text.replace(anchor, anchor + extra, 1)

def replace_function(text, name, replacement, next_name):
    pattern = re.compile(
        "static void " + re.escape(name) + r"\([^)]*\)\s*\{.*?\n\}\n\nstatic void " + re.escape(next_name),
        re.S,
    )
    match = pattern.search(text)
    if not match:
        raise SystemExit(f"Não encontrei função {name} seguida de {next_name}")
    return text[:match.start()] + replacement + "\n\nstatic void " + next_name + text[match.end():]

def patch_clear_overlay(text):
    replacement = (
        "static void ClearConnectedOverlay(void)\n"
        "{\n"
        "    volatile u16 *dst = (volatile u16 *)BG_SCREEN_ADDR(WIRES_OVERLAY_MAPBASE);\n"
        "    u16 i;\n\n"
        "    for (i = 0; i < 32 * 32; i++)\n"
        "        dst[i] = 0;\n\n"
        "    // Pixel-precise connected-art positioning uses BG0 vertical scroll.\n"
        "    SetGpuReg(REG_OFFSET_BG0VOFS, 0);\n"
        "}"
    )
    return replace_function(text, "ClearConnectedOverlay", replacement, "DrawConnectedOverlay")

def patch_draw_overlay(text):
    replacement = (
        "static void DrawConnectedOverlay(u8 wire)\n"
        "{\n"
        "    const u16 *src;\n"
        "    u16 tileBase;\n"
        "    volatile u16 *dst = (volatile u16 *)BG_SCREEN_ADDR(WIRES_OVERLAY_MAPBASE);\n"
        "    u16 x;\n"
        "    u16 y;\n\n"
        "    ClearConnectedOverlay();\n\n"
        "    if (wire == WIRE_BLUE)\n"
        "    {\n"
        "        src = sConnectedBlueMap;\n"
        "        tileBase = CONNECT_BLUE_TILE_BASE;\n"
        "    }\n"
        "    else\n"
        "    {\n"
        "        src = sConnectedGreenMap;\n"
        "        tileBase = CONNECT_GREEN_TILE_BASE;\n"
        "    }\n\n"
        "    for (y = 0; y < CONNECT_MAP_H; y++)\n"
        "    {\n"
        "        for (x = 0; x < CONNECT_MAP_W; x++)\n"
        "        {\n"
        "            u16 entry = src[y * CONNECT_MAP_W + x];\n"
        "            u16 tile = entry & 0x03FF;\n\n"
        "            if (tile != 0)\n"
        "            {\n"
        "                dst[(CONNECT_MAP_Y + y) * 32 + CONNECT_MAP_X + x] =\n"
        "                    (entry & 0x0C00)\n"
        "                  | ((tile + tileBase) & 0x03FF)\n"
        "                  | (CONNECT_PALETTE_BANK << 12);\n"
        "            }\n"
        "        }\n"
        "    }\n\n"
        "    // Exact offsets requested from the V1.9 result.\n"
        "    // Positive BG0 VOFS moves this overlay upward on screen.\n"
        "    SetGpuReg(REG_OFFSET_BG0VOFS, (wire == WIRE_BLUE) ? 39 : 16);\n"
        "}"
    )
    return replace_function(text, "DrawConnectedOverlay", replacement, "LoadCableSprites")

def patch_hide_and_fx(text):
    replacement = (
        "static void HideCableSprites(void)\n"
        "{\n"
        "    // Connected state replaces ALL three loose cables.\n"
        "    gSprites[sWires.cableUpSpriteId].invisible = TRUE;\n"
        "    gSprites[sWires.cableLeftSpriteId].invisible = TRUE;\n"
        "    gSprites[sWires.cableRightSpriteId].invisible = TRUE;\n"
        "}\n\n"
        "static void SpriteCB_WiresSpark(struct Sprite *sprite)\n"
        "{\n"
        "    if (++sprite->data[0] >= 12)\n"
        "    {\n"
        "        DestroySprite(sprite);\n"
        "        return;\n"
        "    }\n\n"
        "    if ((sprite->data[0] & 1) == 0)\n"
        "        sprite->invisible ^= TRUE;\n"
        "}\n\n"
        "static void SpawnRandomWireSpark(void)\n"
        "{\n"
        "    u8 spriteId;\n"
        "    s16 x = 96 + (Random() % 49);\n"
        "    s16 y;\n\n"
        "    if (sWires.focus == WIRE_BLUE)\n"
        "        y = 18 + (Random() % 82);\n"
        "    else\n"
        "        y = 24 + (Random() % 98);\n\n"
        "    spriteId = CreateSprite(&sWiresSparkTemplate, x, y, 0);\n"
        "    if (spriteId != MAX_SPRITES)\n"
        "    {\n"
        "        gSprites[spriteId].oam.tileNum += (Random() % 3) * 4;\n"
        "        gSprites[spriteId].oam.hFlip = Random() & 1;\n"
        "        gSprites[spriteId].oam.vFlip = Random() & 1;\n"
        "        gSprites[spriteId].data[0] = 0;\n"
        "    }\n"
        "}\n\n"
        "static void StartConnectedElectricFx(void)\n"
        "{\n"
        "    PlaySE(SE_THUNDER);\n"
        "    sWires.sparkSpawnTimer = 1;\n"
        "    sWires.sparkSoundTimer = 28;\n"
        "    sWires.stormStopTimer = 0;\n\n"
        "    SpawnRandomWireSpark();\n"
        "    SpawnRandomWireSpark();\n"
        "    SpawnRandomWireSpark();\n"
        "}\n\n"
        "static void UpdateConnectedElectricFx(void)\n"
        "{\n"
        "    if (sWires.sparkSpawnTimer != 0)\n"
        "        sWires.sparkSpawnTimer--;\n"
        "    else\n"
        "    {\n"
        "        SpawnRandomWireSpark();\n"
        "        sWires.sparkSpawnTimer = 5 + (Random() % 12);\n"
        "    }\n\n"
        "    if (sWires.stormStopTimer != 0)\n"
        "    {\n"
        "        sWires.stormStopTimer--;\n"
        "        if (sWires.stormStopTimer == 0)\n"
        "            PlaySE(SE_THUNDERSTORM_STOP);\n"
        "    }\n\n"
        "    if (sWires.sparkSoundTimer != 0)\n"
        "        sWires.sparkSoundTimer--;\n"
        "    else\n"
        "    {\n"
        "        if ((Random() & 3) == 0)\n"
        "        {\n"
        "            PlaySE(SE_THUNDERSTORM);\n"
        "            sWires.stormStopTimer = 18;\n"
        "        }\n"
        "        else\n"
        "        {\n"
        "            PlaySE(SE_THUNDER);\n"
        "        }\n\n"
        "        sWires.sparkSoundTimer = 36 + (Random() % 48);\n"
        "    }\n"
        "}"
    )
    return replace_function(text, "HideCableSprites", replacement, "InitElectricWiresScreen")

def patch_init(text):
    marker = (
        "    ResetPaletteFade();\n"
        "    ResetSpriteData();\n"
        "    FreeAllSpritePalettes();\n"
    )
    if marker not in text:
        raise SystemExit("Não encontrei bloco ResetPaletteFade/ResetSpriteData")
    load_block = (
        marker
        + "\n"
          "    // Reuse the game's native SPARK_2 electric particle graphics.\n"
          "    LoadCompressedSpriteSheetUsingHeap(\n"
          "        &gBattleAnimPicTable[ANIM_TAG_SPARK_2 - ANIM_SPRITES_START]);\n"
          "    LoadCompressedSpritePaletteUsingHeap(\n"
          "        &gBattleAnimPaletteTable[ANIM_TAG_SPARK_2 - ANIM_SPRITES_START]);\n"
    )
    if "gBattleAnimPicTable[ANIM_TAG_SPARK_2 - ANIM_SPRITES_START]" not in text:
        text = text.replace(marker, load_block, 1)

    anchor = (
        "    sWires.blinkOn = TRUE;\n"
        "    sWires.blinkTimer = 0;\n"
    )
    if anchor not in text:
        raise SystemExit("Não encontrei init do blink timer")
    if "sWires.sparkSpawnTimer = 0;" not in text:
        text = text.replace(
            anchor,
            anchor
            + "    sWires.sparkSpawnTimer = 0;\n"
              "    sWires.sparkSoundTimer = 0;\n"
              "    sWires.stormStopTimer = 0;\n",
            1
        )
    return text

def patch_exit(text):
    replacement = (
        "static void StartExitElectricWires(void)\n"
        "{\n"
        "    if (sWires.stormStopTimer != 0)\n"
        "    {\n"
        "        PlaySE(SE_THUNDERSTORM_STOP);\n"
        "        sWires.stormStopTimer = 0;\n"
        "    }\n\n"
        "    BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);\n"
        "    sWires.state = WIRES_STATE_EXIT;\n"
        "}"
    )
    return replace_function(text, "StartExitElectricWires", replacement, "ExitElectricWires")

def patch_task(text):
    old = (
        "        if (sWires.connected)\n"
        "            break;\n"
    )
    new = (
        "        if (sWires.connected)\n"
        "        {\n"
        "            UpdateConnectedElectricFx();\n"
        "            break;\n"
        "        }\n"
    )
    if new not in text:
        if old not in text:
            raise SystemExit("Não encontrei if (sWires.connected)")
        text = text.replace(old, new, 1)

    # Replace the old connect sound with the new FX starter.
    pattern = re.compile(
        r'(\s*HideCableSprites\(\);\s*\n\s*DrawConnectedOverlay\(sWires\.focus\);\s*\n)\s*PlaySE\([^)]+\);'
    )
    if "StartConnectedElectricFx();" not in text[text.find("static void Task_ElectricWires"):]:
        text, n = pattern.subn(r'\1                StartConnectedElectricFx();', text, count=1)
        if n == 0:
            raise SystemExit("Não encontrei bloco final da conexão")
    return text

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
    text = original

    text = add_include(text, '#include "bg.h"\n', '#include "decompress.h"\n')
    text = add_include(text, '#include "palette.h"\n', '#include "random.h"\n')
    text = add_include(text, '#include "constants/rgb.h"\n', '#include "constants/battle_anim.h"\n')

    text = patch_struct(text)
    text = patch_externs_and_template(text)
    text = patch_forward_decls(text)
    text = patch_clear_overlay(text)
    text = patch_draw_overlay(text)
    text = patch_hide_and_fx(text)
    text = patch_init(text)
    text = patch_exit(text)
    text = patch_task(text)

    print("=== ELECTRIC WIRES V1.10 ===")
    print("")
    print("Posição:")
    print(" - conexão BLUE:  39 px para cima")
    print(" - conexão GREEN: 16 px para cima")
    print("")
    print("Choques:")
    print(" - esconde rosa + azul + verde ao conectar")
    print(" - reaproveita ANIM_TAG_SPARK_2 do jogo")
    print(" - sparks aleatórios enquanto conectado")
    print(" - SE_THUNDER no clique de conexão")
    print(" - SE_THUNDER / SE_THUNDERSTORM aleatórios depois")
    print(" - SE_THUNDERSTORM_STOP para fechar o burst")

    if args.dry_run:
        print("")
        print("DRY-RUN OK.")
        print(" src/electric_wires.c:", "mudaria" if text != original else "já aplicado")
        return 0

    if text != original:
        backup_dir = SCRIPT_DIR / "backups"
        backup_dir.mkdir(parents=True, exist_ok=True)
        stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        backup = backup_dir / f"electric_wires_{stamp}.c"
        shutil.copy2(src, backup)
        src.write_text(text, encoding="utf-8", newline="\n")
        src.touch()
        print("")
        print("V1.10 aplicada.")
        print("Backup:", backup)
    else:
        print("")
        print("V1.10 já parece aplicada.")

    if args.compile:
        cmd = ["make", f"-j{max(1, args.jobs)}"]
        print("\nExecutando:", " ".join(cmd))
        return subprocess.call(cmd, cwd=repo)

    print("\nCompile com:")
    print("  make -j8")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
