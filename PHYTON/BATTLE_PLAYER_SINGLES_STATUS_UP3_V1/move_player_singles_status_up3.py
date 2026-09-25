#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from pathlib import Path
from datetime import datetime
import argparse, shutil, subprocess

SCRIPT_DIR = Path(__file__).resolve().parent
MARKER = "HLW PLAYER SINGLES STATUS UP 3PX V1"

def find_repo(explicit=None):
    if explicit:
        root = Path(explicit).expanduser().resolve()
        if not (root / "src/battle_interface.c").is_file():
            raise SystemExit(f"Repo inválido: {root}")
        return root
    cur = Path.cwd().resolve()
    for root in [cur, *cur.parents]:
        if (root / "src/battle_interface.c").is_file():
            return root
    raise SystemExit("Não encontrei src/battle_interface.c")

def patch_source(text):
    if MARKER in text:
        return text, False

    anchor = "static void CopyStatusIconGfx(const u8 *src, void *dest, u8 paletteIndex)\n{"
    if anchor not in text:
        raise SystemExit("Não encontrei CopyStatusIconGfx.")

    helper = r'''// HLW PLAYER SINGLES STATUS UP 3PX V1
#define PLAYER_SINGLES_STATUS_SHIFT       3
#define PLAYER_SINGLES_STATUS_TILE_COUNT  3
#define PLAYER_SINGLES_STATUS_UPPER_TILE  0x12
#define PLAYER_SINGLES_STATUS_LOWER_TILE  0x1A
#define TILE_ROW_4BPP_BYTES               4

static u8 sPlayerSinglesStatusUpperBackup[MAX_BATTLERS_COUNT]
                                              [PLAYER_SINGLES_STATUS_TILE_COUNT
                                             * PLAYER_SINGLES_STATUS_SHIFT
                                             * TILE_ROW_4BPP_BYTES];
static bool8 sPlayerSinglesStatusUpperBackupValid[MAX_BATTLERS_COUNT];

static u8 Get4bppPixel(const u8 *tile, u32 x, u32 y)
{
    u8 value = tile[y * TILE_ROW_4BPP_BYTES + x / 2];
    return (x & 1) ? value >> 4 : value & 0xF;
}

static void Set4bppPixel(u8 *tile, u32 x, u32 y, u8 value)
{
    u8 *dst = &tile[y * TILE_ROW_4BPP_BYTES + x / 2];
    if (x & 1)
        *dst = (*dst & 0x0F) | (value << 4);
    else
        *dst = (*dst & 0xF0) | value;
}

static void RestorePlayerSinglesStatusUpperRows(u8 healthboxSpriteId)
{
    u32 battler = gSprites[healthboxSpriteId].hMain_Battler;
    u32 baseTile = gSprites[healthboxSpriteId].oam.tileNum;
    u32 tile;

    if (!sPlayerSinglesStatusUpperBackupValid[battler])
        return;

    for (tile = 0; tile < PLAYER_SINGLES_STATUS_TILE_COUNT; tile++)
    {
        void *dst = (void *)(OBJ_VRAM0
                           + (baseTile + PLAYER_SINGLES_STATUS_UPPER_TILE + tile) * TILE_SIZE_4BPP
                           + (8 - PLAYER_SINGLES_STATUS_SHIFT) * TILE_ROW_4BPP_BYTES);
        CpuCopy32(&sPlayerSinglesStatusUpperBackup[battler]
                    [tile * PLAYER_SINGLES_STATUS_SHIFT * TILE_ROW_4BPP_BYTES],
                  dst,
                  PLAYER_SINGLES_STATUS_SHIFT * TILE_ROW_4BPP_BYTES);
    }
    sPlayerSinglesStatusUpperBackupValid[battler] = FALSE;
}

static void CopyPlayerSinglesStatusIconGfxShiftedUp3(u8 healthboxSpriteId,
                                                      const u8 *src,
                                                      u8 paletteIndex)
{
    u32 battler = gSprites[healthboxSpriteId].hMain_Battler;
    u32 baseTile = gSprites[healthboxSpriteId].oam.tileNum;
    const u8 *blankTile = GetHealthboxElementGfxPtr(HEALTHBOX_GFX_39);
    u32 upperTiles[PLAYER_SINGLES_STATUS_TILE_COUNT * TILE_SIZE_4BPP / sizeof(u32)];
    u32 lowerTiles[PLAYER_SINGLES_STATUS_TILE_COUNT * TILE_SIZE_4BPP / sizeof(u32)];
    u8 *upper = (u8 *)upperTiles;
    u8 *lower = (u8 *)lowerTiles;
    u32 tile, x, y;

    RestorePlayerSinglesStatusUpperRows(healthboxSpriteId);

    CpuCopy32((void *)(OBJ_VRAM0 + (baseTile + PLAYER_SINGLES_STATUS_UPPER_TILE) * TILE_SIZE_4BPP),
              upperTiles, sizeof(upperTiles));

    for (tile = 0; tile < PLAYER_SINGLES_STATUS_TILE_COUNT; tile++)
    {
        CpuCopy32(&upper[tile * TILE_SIZE_4BPP + (8 - PLAYER_SINGLES_STATUS_SHIFT) * TILE_ROW_4BPP_BYTES],
                  &sPlayerSinglesStatusUpperBackup[battler]
                    [tile * PLAYER_SINGLES_STATUS_SHIFT * TILE_ROW_4BPP_BYTES],
                  PLAYER_SINGLES_STATUS_SHIFT * TILE_ROW_4BPP_BYTES);
        CpuCopy32(blankTile, &lower[tile * TILE_SIZE_4BPP], TILE_SIZE_4BPP);
    }
    sPlayerSinglesStatusUpperBackupValid[battler] = TRUE;

    for (tile = 0; tile < PLAYER_SINGLES_STATUS_TILE_COUNT; tile++)
    {
        const u8 *srcTile = src + tile * TILE_SIZE_4BPP;
        u8 *upperTile = upper + tile * TILE_SIZE_4BPP;
        u8 *lowerTile = lower + tile * TILE_SIZE_4BPP;

        for (y = 0; y < 8; y++)
        {
            for (x = 0; x < 8; x++)
            {
                u8 pixel = Get4bppPixel(srcTile, x, y);
                u8 blankPixel = Get4bppPixel(blankTile, x, y);
                s32 shiftedY;
                if (pixel == blankPixel)
                    continue;
                if (pixel == 0xF)
                    pixel = paletteIndex;
                shiftedY = (s32)y - PLAYER_SINGLES_STATUS_SHIFT;
                if (shiftedY < 0)
                    Set4bppPixel(upperTile, x, shiftedY + 8, pixel);
                else
                    Set4bppPixel(lowerTile, x, shiftedY, pixel);
            }
        }
    }

    CpuCopy32(upperTiles,
              (void *)(OBJ_VRAM0 + (baseTile + PLAYER_SINGLES_STATUS_UPPER_TILE) * TILE_SIZE_4BPP),
              sizeof(upperTiles));
    CpuCopy32(lowerTiles,
              (void *)(OBJ_VRAM0 + (baseTile + PLAYER_SINGLES_STATUS_LOWER_TILE) * TILE_SIZE_4BPP),
              sizeof(lowerTiles));
}

'''
    text = text.replace(anchor, helper + anchor, 1)

    create_anchor = "u8 CreateBattlerHealthboxSprites(u8 battler)\n{\n    s16 data6 = 0;"
    create_repl = "u8 CreateBattlerHealthboxSprites(u8 battler)\n{\n    s16 data6 = 0;\n\n    sPlayerSinglesStatusUpperBackupValid[battler] = FALSE;"
    if create_anchor not in text:
        raise SystemExit("Não encontrei CreateBattlerHealthboxSprites.")
    text = text.replace(create_anchor, create_repl, 1)

    no_anchor = "    else\n    {\n        statusGfxPtr = GetHealthboxElementGfxPtr(HEALTHBOX_GFX_39);\n\n        for (i = 0; i < 3; i++)"
    no_repl = "    else\n    {\n        statusGfxPtr = GetHealthboxElementGfxPtr(HEALTHBOX_GFX_39);\n\n        if (IsOnPlayerSide(battler)\n         && GetBattlerCoordsIndex(battler) == BATTLE_COORDS_SINGLES)\n            RestorePlayerSinglesStatusUpperRows(healthboxSpriteId);\n\n        for (i = 0; i < 3; i++)"
    if no_anchor not in text:
        raise SystemExit("Não encontrei branch sem status.")
    text = text.replace(no_anchor, no_repl, 1)

    final_anchor = "    CopyStatusIconGfx(statusGfxPtr,\n                      (void *)(OBJ_VRAM0 + (gSprites[healthboxSpriteId].oam.tileNum + tileNumAdder) * TILE_SIZE_4BPP),\n                      battler + 12);"
    final_repl = "    if (IsOnPlayerSide(battler)\n     && GetBattlerCoordsIndex(battler) == BATTLE_COORDS_SINGLES)\n    {\n        CopyPlayerSinglesStatusIconGfxShiftedUp3(healthboxSpriteId, statusGfxPtr, battler + 12);\n    }\n    else\n    {\n        CopyStatusIconGfx(statusGfxPtr,\n                          (void *)(OBJ_VRAM0 + (gSprites[healthboxSpriteId].oam.tileNum + tileNumAdder) * TILE_SIZE_4BPP),\n                          battler + 12);\n    }"
    if final_anchor not in text:
        raise SystemExit("Não encontrei CopyStatusIconGfx final.")
    text = text.replace(final_anchor, final_repl, 1)
    return text, True

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo")
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--compile", action="store_true")
    ap.add_argument("--jobs", type=int, default=8)
    args = ap.parse_args()

    repo = find_repo(args.repo)
    path = repo / "src/battle_interface.c"
    original = path.read_text(encoding="utf-8")
    patched, changed = patch_source(original)

    print("=== PLAYER SINGLES STATUS UP 3PX ===")
    print("Somente PLAYER + SINGLES. BRN/PSN/PAR/SLP/FRZ/FRB sobem exatamente 3 px.")
    print("Opponent e doubles não mudam.")

    if args.dry_run:
        print("DRY-RUN OK:", "mudaria" if changed else "já aplicado")
        return 0

    if changed:
        backup_dir = SCRIPT_DIR / "backups"
        backup_dir.mkdir(exist_ok=True)
        stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        backup = backup_dir / f"battle_interface_{stamp}.c"
        shutil.copy2(path, backup)
        path.write_text(patched, encoding="utf-8", newline="\n")
        print("Patch aplicado. Backup:", backup)

    if args.compile:
        return subprocess.call(["make", f"-j{max(1, args.jobs)}"], cwd=repo)
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
