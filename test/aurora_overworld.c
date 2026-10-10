#include "global.h"
#include "event_object_movement.h"
#include "field_weather.h"
#include "overworld.h"
#include "palette.h"
#include "sprite.h"
#include "constants/event_objects.h"
#include "constants/event_object_movement.h"
#include "test/test.h"

extern const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Aurora;
extern const u32 gObjectEventPic_Aurora[];
extern const u16 gObjectEventPal_Aurora[];

TEST("Aurora overworld: every placement uses the dedicated NPC graphics")
{
    u16 map;
    u8 localId;

    PARAMETRIZE { map = MAP_GRANITE_CAVE_1F; localId = 1; }
    PARAMETRIZE { map = MAP_AURORAGROVE; localId = LOCALID_AURORA_GROVE_AURORA; }
    PARAMETRIZE { map = MAP_PHOENIX_TOWN; localId = LOCALID_PHOENIX_TOWN_AURORA_PETALBURG_EVENT; }

    const struct MapHeader *header = Overworld_GetMapHeaderByGroupAndId(MAP_GROUP(map), MAP_NUM(map));
    const struct ObjectEventTemplate *object = FindObjectEventTemplateByLocalId(
        localId, header->events->objectEvents, header->events->objectEventCount);

    ASSUME(object != NULL);
    EXPECT_EQ(object->graphicsId, OBJ_EVENT_GFX_AURORA);
    EXPECT_EQ(object->graphicsId & OBJ_EVENT_MON, 0);
    EXPECT(object->script != NULL);
}

TEST("Aurora overworld: the registered NPC has 16x32 frames and its own palette")
{
    const struct ObjectEventGraphicsInfo *graphics = GetObjectEventGraphicsInfo(OBJ_EVENT_GFX_AURORA);
    const struct ObjectEventGraphicsInfo *standard = GetObjectEventGraphicsInfo(OBJ_EVENT_GFX_GIRL_1);

    EXPECT_EQ(OBJ_EVENT_GFX_AURORA, 271);
    EXPECT_EQ(graphics, &gObjectEventGraphicsInfo_Aurora);
    ASSUME(graphics != NULL);
    EXPECT_EQ(graphics->width, 16);
    EXPECT_EQ(graphics->height, 32);
    EXPECT_EQ(graphics->size, 256);
    EXPECT_EQ(graphics->paletteTag, OBJ_EVENT_PAL_TAG_AURORA);
    EXPECT_EQ(graphics->paletteTag, 0x1132);
    EXPECT_EQ(graphics->reflectionPaletteTag, OBJ_EVENT_PAL_TAG_NONE);
    EXPECT(graphics->paletteSlot == PALSLOT_NPC_SPECIAL);
    EXPECT_EQ(graphics->tracks, TRACKS_FOOT);
    EXPECT(graphics->inanimate == FALSE);
    EXPECT(graphics->compressed == FALSE);
    ASSUME(graphics->oam != NULL);
    EXPECT(graphics->oam->shape == SPRITE_SHAPE(16x32));
    EXPECT(graphics->oam->size == SPRITE_SIZE(16x32));
    EXPECT_EQ(graphics->oam, standard->oam);
    EXPECT_EQ(graphics->subspriteTables, standard->subspriteTables);
    EXPECT_EQ(graphics->anims, standard->anims);
    EXPECT_EQ(graphics->affineAnims, gDummySpriteAffineAnimTable);
    ASSUME(graphics->images != NULL);
    EXPECT_EQ(graphics->images[0].data, gObjectEventPic_Aurora);
    EXPECT_EQ(graphics->images[0].size, 256);
    // One relative descriptor addresses the nine contiguous frames; indexing
    // images[1..8] would incorrectly read beyond that descriptor table.
    EXPECT_EQ(graphics->images[0].relativeFrames, TRUE);
}

TEST("Aurora overworld: all standard animations stay inside the nine-frame sheet")
{
    const struct ObjectEventGraphicsInfo *graphics = GetObjectEventGraphicsInfo(OBJ_EVENT_GFX_AURORA);
    u16 usedFrames = 0;

    ASSUME(graphics != NULL && graphics->anims != NULL);
    for (u32 animation = 0; animation < ANIM_STD_COUNT; animation++)
    {
        const union AnimCmd *commands = graphics->anims[animation];
        bool32 ended = FALSE;

        ASSUME(commands != NULL);
        for (u32 command = 0; command < 16; command++)
        {
            if (commands[command].type < 0)
            {
                EXPECT_EQ(commands[command].type, -2);
                EXPECT(commands[command].jump.target == 0);
                ended = TRUE;
                break;
            }
            EXPECT(commands[command].frame.imageValue < 9);
            EXPECT(commands[command].frame.duration > 0);
            usedFrames |= 1u << commands[command].frame.imageValue;
        }
        EXPECT(ended);
    }
    EXPECT_EQ(usedFrames, (1u << 9) - 1);
}

TEST("Aurora overworld: standing and walking face each direction with mirrored east frames")
{
    static const u8 standingFrames[] = { 0, 1, 2, 2 };
    static const u8 walkingFrames[][4] =
    {
        { 3, 0, 4, 0 },
        { 5, 1, 6, 1 },
        { 7, 2, 8, 2 },
        { 7, 2, 8, 2 },
    };
    const struct ObjectEventGraphicsInfo *graphics = GetObjectEventGraphicsInfo(OBJ_EVENT_GFX_AURORA);

    ASSUME(graphics != NULL && graphics->anims != NULL);
    for (u32 direction = 0; direction < ARRAY_COUNT(standingFrames); direction++)
    {
        const union AnimCmd *standing = graphics->anims[ANIM_STD_FACE_SOUTH + direction];
        const union AnimCmd *walking = graphics->anims[ANIM_STD_GO_SOUTH + direction];
        bool32 mirrored = direction == 3;

        ASSUME(standing != NULL && walking != NULL);
        EXPECT(standing[0].frame.imageValue == standingFrames[direction]);
        EXPECT(standing[0].frame.hFlip == mirrored);
        EXPECT(standing[0].frame.vFlip == FALSE);
        for (u32 frame = 0; frame < ARRAY_COUNT(walkingFrames[direction]); frame++)
        {
            EXPECT(walking[frame].frame.imageValue == walkingFrames[direction][frame]);
            EXPECT(walking[frame].frame.duration == 8);
            EXPECT(walking[frame].frame.hFlip == mirrored);
            EXPECT(walking[frame].frame.vFlip == FALSE);
        }
    }
}

TEST("Aurora overworld: the normal object palette loader resolves her registered colors")
{
    const struct ObjectEventGraphicsInfo *graphics = GetObjectEventGraphicsInfo(OBJ_EVENT_GFX_AURORA);
    u8 paletteNum;

    ASSUME(graphics != NULL);
    ResetSpriteData();
    FreeAllSpritePalettes();
    ResetPreservedPalettesInWeather();
    memset(gWeatherPtr, 0, sizeof(*gWeatherPtr));
    gWeatherPtr->palProcessingState = WEATHER_PAL_STATE_IDLE;
    gPaletteFade.active = FALSE;

    paletteNum = LoadObjectEventPalette(graphics->paletteTag);
    EXPECT(paletteNum < 16);
    EXPECT_EQ(IndexOfSpritePaletteTag(OBJ_EVENT_PAL_TAG_AURORA), paletteNum);
    EXPECT_EQ(GetSpritePaletteTagByPaletteNum(paletteNum), OBJ_EVENT_PAL_TAG_AURORA);
    EXPECT(memcmp(&gPlttBufferUnfaded[OBJ_PLTT_ID(paletteNum)],
                  gObjectEventPal_Aurora, PLTT_SIZE_4BPP) == 0);
    EXPECT_EQ(LoadObjectEventPalette(graphics->paletteTag), paletteNum);

    FreeSpritePaletteByTag(graphics->paletteTag);
    EXPECT_EQ(IndexOfSpritePaletteTag(OBJ_EVENT_PAL_TAG_AURORA), 0xFF);
}
