#include "global.h"
#include "bg.h"
#include "event_data.h"
#include "event_object_movement.h"
#include "field_camera.h"
#include "field_player_avatar.h"
#include "fieldmap.h"
#include "palette.h"
#include "script.h"
#include "sound.h"
#include "sprite.h"
#include "task.h"
#include "constants/songs.h"
#include "constants/vars.h"

#define FORTREE_GYM_SKY_METATILE         0x248
#define FORTREE_GYM_BLUE_BRIDGE          0x259
#define FORTREE_GYM_YELLOW_BRIDGE        0x25A
#define FORTREE_GYM_RED_BRIDGE           0x25B
#define FORTREE_GYM_GREEN_BRIDGE         0x262
#define FORTREE_GYM_FALL_TILE_1           0x260
#define FORTREE_GYM_FALL_TILE_2           0x269
#define FORTREE_GYM_FALL_TILE_3           0x26A
#define FORTREE_GYM_FALL_TILE_4           0x26B
#define FORTREE_GYM_FALL_TILE_5           0x264

#define FORTREE_GYM_BRIDGE_COUNT         79
#define FORTREE_GYM_REVEAL_WORD_COUNT    5
#define FORTREE_GYM_BRIDGE_TILE_TAG      0x2F70
#define FORTREE_GYM_BRIDGE_PAL_TAG       0x2F71

// Tilemap entry fields used by the overworld metatile definitions.
#define METATILE_TILE_MASK               0x03FF
#define METATILE_H_FLIP                  0x0400
#define METATILE_V_FLIP                  0x0800
#define METATILE_PALETTE_SHIFT           12

extern const u8 FortreeCity_Gym_EventScript_FallFromSky[];

static EWRAM_DATA u32 sBridgeSpriteTiles[(4 * TILE_SIZE_4BPP) / sizeof(u32)] = {};
static EWRAM_DATA u16 sBridgeSpritePalette[16] = {};
static EWRAM_DATA u8 sActiveBridgeSpriteId = 0;

static const u16 sBridgeRevealVars[FORTREE_GYM_REVEAL_WORD_COUNT] =
{
    VAR_FORTREE_GYM_BRIDGE_REVEALS_0,
    VAR_FORTREE_GYM_BRIDGE_REVEALS_1,
    VAR_FORTREE_GYM_BRIDGE_REVEALS_2,
    VAR_FORTREE_GYM_BRIDGE_REVEALS_3,
    VAR_FORTREE_GYM_BRIDGE_REVEALS_4,
};

static void Task_MonitorFloatingBridges(u8 taskId);
static void SpriteCB_BounceBridge(struct Sprite *sprite);
static bool8 IsBridgeMetatile(u16 metatileId);
static bool8 IsFallMetatile(u16 metatileId);
static s16 FindBridgeIndexAt(s16 x, s16 y, u16 *metatileId);
static bool8 IsBridgeRevealed(u16 bridgeIndex);
static void SetBridgeRevealed(u16 bridgeIndex);
static void SetBridgeMetatile(s16 x, s16 y, u16 metatileId);
static void StartBridgeBounce(s16 x, s16 y, u16 metatileId);
static void BuildBridgeSpriteGraphics(u16 metatileId);
static u8 GetBridgeNote(u16 metatileId);

static const struct OamData sBridgeOam =
{
    .y = 0,
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .mosaic = FALSE,
    .bpp = ST_OAM_4BPP,
    .shape = SPRITE_SHAPE(16x16),
    .x = 0,
    .matrixNum = 0,
    .size = SPRITE_SIZE(16x16),
    .tileNum = 0,
    .priority = 2,
    .paletteNum = 0,
    .affineParam = 0,
};

static const union AnimCmd sBridgeAnim[] =
{
    ANIMCMD_FRAME(0, 1),
    ANIMCMD_END,
};

static const union AnimCmd *const sBridgeAnims[] =
{
    sBridgeAnim,
};

static const struct SpriteTemplate sBridgeSpriteTemplate =
{
    .tileTag = FORTREE_GYM_BRIDGE_TILE_TAG,
    .paletteTag = FORTREE_GYM_BRIDGE_PAL_TAG,
    .oam = &sBridgeOam,
    .anims = sBridgeAnims,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_BounceBridge,
};

static bool8 IsBridgeMetatile(u16 metatileId)
{
    switch (metatileId)
    {
    case FORTREE_GYM_BLUE_BRIDGE:
    case FORTREE_GYM_YELLOW_BRIDGE:
    case FORTREE_GYM_RED_BRIDGE:
    case FORTREE_GYM_GREEN_BRIDGE:
        return TRUE;
    default:
        return FALSE;
    }
}

static bool8 IsFallMetatile(u16 metatileId)
{
    switch (metatileId)
    {
    case FORTREE_GYM_SKY_METATILE:
    case FORTREE_GYM_FALL_TILE_1:
    case FORTREE_GYM_FALL_TILE_2:
    case FORTREE_GYM_FALL_TILE_3:
    case FORTREE_GYM_FALL_TILE_4:
    case FORTREE_GYM_FALL_TILE_5:
        return TRUE;
    default:
        return FALSE;
    }
}

// Bridge indices are assigned in stable row-major map order. This allows the
// authored map itself to be the source of truth for both position and color.
static s16 FindBridgeIndexAt(s16 x, s16 y, u16 *metatileId)
{
    const struct MapLayout *layout = gMapHeader.mapLayout;
    u16 bridgeIndex = 0;
    s16 scanX;
    s16 scanY;

    if (x < 0 || y < 0 || x >= layout->width || y >= layout->height)
        return -1;

    for (scanY = 0; scanY < layout->height; scanY++)
    {
        for (scanX = 0; scanX < layout->width; scanX++)
        {
            u16 currentMetatile = UNPACK_METATILE(layout->map[scanY * layout->width + scanX]);

            if (!IsBridgeMetatile(currentMetatile))
                continue;

            if (scanX == x && scanY == y)
            {
                if (metatileId != NULL)
                    *metatileId = currentMetatile;
                return bridgeIndex;
            }
            bridgeIndex++;
        }
    }

    return -1;
}

static bool8 IsBridgeRevealed(u16 bridgeIndex)
{
    u16 word = bridgeIndex / 16;
    u16 bit = bridgeIndex % 16;

    if (word >= FORTREE_GYM_REVEAL_WORD_COUNT)
        return FALSE;
    return (VarGet(sBridgeRevealVars[word]) & (1 << bit)) != 0;
}

static void SetBridgeRevealed(u16 bridgeIndex)
{
    u16 word = bridgeIndex / 16;
    u16 bit = bridgeIndex % 16;
    u16 varId;

    if (word >= FORTREE_GYM_REVEAL_WORD_COUNT)
        return;

    varId = sBridgeRevealVars[word];
    VarSet(varId, VarGet(varId) | (1 << bit));
}

static void SetBridgeMetatile(s16 x, s16 y, u16 metatileId)
{
    x += MAP_OFFSET;
    y += MAP_OFFSET;
    MapGridSetMetatileIdAt(x, y, metatileId);
    CurrentMapDrawMetatileAt(x, y);
}

static u8 GetBridgeNote(u16 metatileId)
{
    switch (metatileId)
    {
    case FORTREE_GYM_BLUE_BRIDGE:
        return SE_NOTE_C;
    case FORTREE_GYM_YELLOW_BRIDGE:
        return SE_NOTE_E;
    case FORTREE_GYM_GREEN_BRIDGE:
        return SE_NOTE_G;
    case FORTREE_GYM_RED_BRIDGE:
    default:
        return SE_NOTE_C_HIGH;
    }
}

static u8 GetTilePixel(const u8 *tile, u8 x, u8 y)
{
    u8 packed = tile[y * 4 + x / 2];
    return (x & 1) ? packed >> 4 : packed & 0xF;
}

static void SetTilePixel(u8 *tile, u8 x, u8 y, u8 color)
{
    u8 *packed = &tile[y * 4 + x / 2];

    if (x & 1)
        *packed = (*packed & 0x0F) | (color << 4);
    else
        *packed = (*packed & 0xF0) | color;
}

static void BuildBridgeSpriteGraphics(u16 metatileId)
{
    const u16 *metatile;
    const u8 *bgTiles;
    u8 paletteId;
    u8 metatilePart;
    u8 y;
    u8 x;

    // Fortree Gym bridges are secondary-tileset metatiles whose visible art
    // occupies entries 4-7 (the middle layer).
    metatile = &gMapHeader.mapLayout->secondaryTileset->metatiles[(metatileId - NUM_METATILES_IN_PRIMARY) * NUM_TILES_PER_METATILE];
    bgTiles = (const u8 *)BG_CHAR_ADDR(GetBgAttribute(2, BG_ATTR_CHARBASEINDEX));
    paletteId = metatile[4] >> METATILE_PALETTE_SHIFT;
    CpuFill32(0, sBridgeSpriteTiles, sizeof(sBridgeSpriteTiles));

    for (metatilePart = 0; metatilePart < 4; metatilePart++)
    {
        u16 entry = metatile[4 + metatilePart];
        const u8 *sourceTile = &bgTiles[(entry & METATILE_TILE_MASK) * TILE_SIZE_4BPP];
        u8 *destTile = (u8 *)sBridgeSpriteTiles + metatilePart * TILE_SIZE_4BPP;

        for (y = 0; y < 8; y++)
        {
            for (x = 0; x < 8; x++)
            {
                u8 sourceX = (entry & METATILE_H_FLIP) ? 7 - x : x;
                u8 sourceY = (entry & METATILE_V_FLIP) ? 7 - y : y;
                SetTilePixel(destTile, x, y, GetTilePixel(sourceTile, sourceX, sourceY));
            }
        }
    }

    CpuCopy16(&gPlttBufferUnfaded[paletteId * 16], sBridgeSpritePalette, sizeof(sBridgeSpritePalette));
}

static void StartBridgeBounce(s16 x, s16 y, u16 metatileId)
{
    struct SpriteSheet sheet =
    {
        .data = sBridgeSpriteTiles,
        .size = sizeof(sBridgeSpriteTiles),
        .tag = FORTREE_GYM_BRIDGE_TILE_TAG,
    };
    struct SpritePalette palette =
    {
        .data = sBridgeSpritePalette,
        .tag = FORTREE_GYM_BRIDGE_PAL_TAG,
    };
    s16 spriteX;
    s16 spriteY;
    u8 spriteId;

    // A normal walking step lasts longer than this bounce. Still, finish any
    // prior sprite defensively before reusing the shared graphics allocation.
    if (sActiveBridgeSpriteId < MAX_SPRITES && gSprites[sActiveBridgeSpriteId].inUse)
    {
        struct Sprite *oldSprite = &gSprites[sActiveBridgeSpriteId];
        SetBridgeMetatile(oldSprite->data[1], oldSprite->data[2], oldSprite->data[3]);
        DestroySprite(oldSprite);
    }

    BuildBridgeSpriteGraphics(metatileId);
    FreeSpriteTilesByTag(FORTREE_GYM_BRIDGE_TILE_TAG);
    FreeSpritePaletteByTag(FORTREE_GYM_BRIDGE_PAL_TAG);
    LoadSpriteSheet(&sheet);
    LoadSpritePalette(&palette);

    SetSpritePosToMapCoords(x + MAP_OFFSET, y + MAP_OFFSET, &spriteX, &spriteY);
    // Draw above overworld shadows (OW_OBJECT_SUBPRIORITY + 1), but well
    // behind the dynamically sorted player and other object-event sprites.
    spriteId = CreateSprite(&sBridgeSpriteTemplate, spriteX + 8, spriteY + 8, OW_OBJECT_SUBPRIORITY);
    if (spriteId == MAX_SPRITES)
    {
        FreeSpriteTilesByTag(FORTREE_GYM_BRIDGE_TILE_TAG);
        FreeSpritePaletteByTag(FORTREE_GYM_BRIDGE_PAL_TAG);
        return;
    }

    gSprites[spriteId].data[0] = 0; // Animation frame timer.
    gSprites[spriteId].data[1] = x;
    gSprites[spriteId].data[2] = y;
    gSprites[spriteId].data[3] = metatileId;
    // SetSpritePosToMapCoords returns field coordinates relative to the
    // overworld camera. Enable the global sprite offset so the temporary OBJ
    // remains anchored over the map tile instead of jumping toward the top of
    // the screen.
    gSprites[spriteId].coordOffsetEnabled = TRUE;
    sActiveBridgeSpriteId = spriteId;

    // The sprite temporarily replaces the map art so it can move by pixels.
    SetBridgeMetatile(x, y, FORTREE_GYM_SKY_METATILE);
    PlaySE(GetBridgeNote(metatileId));
}

static void SpriteCB_BounceBridge(struct Sprite *sprite)
{
    static const s8 sBounceOffsets[] = {0, 1, 2, 3, 3, 2, 1, 0};
    s16 spriteX;
    s16 spriteY;
    u8 frame = sprite->data[0] / 2;

    SetSpritePosToMapCoords(sprite->data[1] + MAP_OFFSET, sprite->data[2] + MAP_OFFSET, &spriteX, &spriteY);
    sprite->x = spriteX + 8;
    sprite->y = spriteY + 8;
    sprite->y2 = sBounceOffsets[frame];
    sprite->data[0]++;

    if (sprite->data[0] >= ARRAY_COUNT(sBounceOffsets) * 2)
    {
        SetBridgeMetatile(sprite->data[1], sprite->data[2], sprite->data[3]);
        sActiveBridgeSpriteId = MAX_SPRITES;
        DestroySprite(sprite);
        FreeSpriteTilesByTag(FORTREE_GYM_BRIDGE_TILE_TAG);
        FreeSpritePaletteByTag(FORTREE_GYM_BRIDGE_PAL_TAG);
    }
}

static void Task_MonitorFloatingBridges(u8 taskId)
{
    struct Task *task = &gTasks[taskId];
    s16 mapX;
    s16 mapY;
    s16 bridgeIndex;
    u16 metatileId;

    if (task->data[2])
        return;
    if (gPlayerAvatar.tileTransitionState != T_TILE_CENTER)
        return;

    PlayerGetDestCoords(&mapX, &mapY);
    mapX -= MAP_OFFSET;
    mapY -= MAP_OFFSET;
    if (mapX == task->data[0] && mapY == task->data[1])
        return;

    task->data[0] = mapX;
    task->data[1] = mapY;
    bridgeIndex = FindBridgeIndexAt(mapX, mapY, &metatileId);
    if (bridgeIndex >= 0)
    {
        SetBridgeRevealed(bridgeIndex);
        SetBridgeMetatile(mapX, mapY, metatileId);
        StartBridgeBounce(mapX, mapY, metatileId);
    }
    else if (IsFallMetatile(UNPACK_METATILE(gMapHeader.mapLayout->map[mapY * gMapHeader.mapLayout->width + mapX])))
    {
        task->data[2] = TRUE;
        // The task detects the player at tile center. Stop running momentum
        // immediately instead of waiting for the queued field script's
        // lockall command on the following frame.
        LockPlayerFieldControls();
        PlayerFreeze();
        StopPlayerAvatar();
        ScriptContext_SetupScript(FortreeCity_Gym_EventScript_FallFromSky);
    }
}

void FortreeGym_InitFloatingBridgePuzzle(void)
{
    const struct MapLayout *layout = gMapHeader.mapLayout;
    u16 bridgeIndex = 0;
    s16 playerX;
    s16 playerY;
    s16 x;
    s16 y;
    u8 taskId;

    sActiveBridgeSpriteId = MAX_SPRITES;

    // Validate that save-bit ordering still matches the authored map.
    for (y = 0; y < layout->height; y++)
    {
        for (x = 0; x < layout->width; x++)
        {
            u16 metatileId = UNPACK_METATILE(layout->map[y * layout->width + x]);

            if (!IsBridgeMetatile(metatileId))
                continue;
            bridgeIndex++;
        }
    }

    // Catch accidental map edits before they can silently remap save bits.
    if (bridgeIndex != FORTREE_GYM_BRIDGE_COUNT)
        return;

    taskId = FindTaskIdByFunc(Task_MonitorFloatingBridges);
    if (taskId == TASK_NONE)
        taskId = CreateTask(Task_MonitorFloatingBridges, 80);

    PlayerGetDestCoords(&playerX, &playerY);
    gTasks[taskId].data[0] = playerX - MAP_OFFSET;
    gTasks[taskId].data[1] = playerY - MAP_OFFSET;
    gTasks[taskId].data[2] = FALSE;
}

void FortreeGym_ApplyFloatingBridgeState(void)
{
    const struct MapLayout *layout = gMapHeader.mapLayout;
    u16 bridgeIndex = 0;
    s16 x;
    s16 y;

    // MAP_SCRIPT_ON_LOAD runs after the backup map grid is created and before
    // it is drawn, so these replacements are present on the first visible
    // frame and do not need individual redraw calls.
    for (y = 0; y < layout->height; y++)
    {
        for (x = 0; x < layout->width; x++)
        {
            u16 metatileId = UNPACK_METATILE(layout->map[y * layout->width + x]);

            if (!IsBridgeMetatile(metatileId))
                continue;

            MapGridSetMetatileIdAt(x + MAP_OFFSET, y + MAP_OFFSET,
                                   IsBridgeRevealed(bridgeIndex) ? metatileId : FORTREE_GYM_SKY_METATILE);
            bridgeIndex++;
        }
    }
}
