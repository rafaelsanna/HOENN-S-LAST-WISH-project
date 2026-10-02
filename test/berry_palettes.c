#include "global.h"
#include "event_object_movement.h"
#include "field_weather.h"
#include "palette.h"
#include "sprite.h"
#include "constants/berry.h"
#include "constants/event_objects.h"
#include "constants/items.h"
#include "test/test.h"

extern const u16 gObjectEventPal_Npc1[];
extern const u16 gObjectEventPal_Npc2[];
extern const u16 gObjectEventPal_Npc3[];
extern const u16 gObjectEventPal_Npc4[];

static void SetUpBerrySprites(void)
{
    ResetSpriteData();
    FreeAllSpritePalettes();
    ResetPreservedPalettesInWeather();
    memset(gWeatherPtr, 0, sizeof(*gWeatherPtr));
    gWeatherPtr->palProcessingState = WEATHER_PAL_STATE_IDLE;
    memset(&gMapHeader, 0, sizeof(gMapHeader));
    gPaletteFade.active = FALSE;
}

static void SetBerryGraphics(u8 spriteId, u16 berryItem, u8 stage)
{
    struct ObjectEvent objectEvent = {0};

    objectEvent.spriteId = spriteId;
    objectEvent.currentCoords.x = 7;
    objectEvent.currentCoords.y = 7;
    ObjectEvent_TestSetBerryTreeGraphics(&objectEvent, berryItem - FIRST_BERRY_INDEX, stage - 1);
    EXPECT(gSprites[spriteId].inUse);
    EXPECT_EQ(gSprites[spriteId].images, gBerryTreePicTablePointers[berryItem - FIRST_BERRY_INDEX]);
    EXPECT_EQ(objectEvent.graphicsId, stage <= BERRY_STAGE_SPROUTED
        ? OBJ_EVENT_GFX_BERRY_TREE_EARLY_STAGES : OBJ_EVENT_GFX_BERRY_TREE_LATE_STAGES);
}

static void ExpectBerryPalette(u8 spriteId, u16 tag, const u16 *colors)
{
    u8 paletteNum = gSprites[spriteId].oam.paletteNum;

    EXPECT_EQ(GetSpritePaletteTagByPaletteNum(paletteNum), tag);
    EXPECT_EQ(IndexOfSpritePaletteTag(tag), paletteNum);
    EXPECT(memcmp(&gPlttBufferUnfaded[OBJ_PLTT_ID(paletteNum)], colors, PLTT_SIZE_4BPP) == 0);
}

TEST("Berry plants select the intended palette for every berry and growth stage")
{
    static const u16 expectedTags[] = {
        [PALSLOT_NPC_1] = OBJ_EVENT_PAL_TAG_NPC_1,
        [PALSLOT_NPC_2] = OBJ_EVENT_PAL_TAG_NPC_2,
        [PALSLOT_NPC_3] = OBJ_EVENT_PAL_TAG_NPC_3,
        [PALSLOT_NPC_4] = OBJ_EVENT_PAL_TAG_NPC_4,
    };
    static const u16 *const expectedColors[] = {
        [PALSLOT_NPC_1] = gObjectEventPal_Npc1,
        [PALSLOT_NPC_2] = gObjectEventPal_Npc2,
        [PALSLOT_NPC_3] = gObjectEventPal_Npc3,
        [PALSLOT_NPC_4] = gObjectEventPal_Npc4,
    };

    SetUpBerrySprites();
    for (u16 berryItem = FIRST_BERRY_INDEX; berryItem <= LAST_BERRY_INDEX; berryItem++)
    {
        for (u8 stage = BERRY_STAGE_PLANTED; stage <= BERRY_STAGE_BUDDING; stage++)
        {
            u8 slot = gBerryTreePaletteSlotTablePointers[berryItem - FIRST_BERRY_INDEX][stage - 1];

            EXPECT(slot >= PALSLOT_NPC_1 && slot <= PALSLOT_NPC_4);
            SetBerryGraphics(0, berryItem, stage);
            ExpectBerryPalette(0, expectedTags[slot], expectedColors[slot]);
        }
    }
}

TEST("Berry plants with different or shared palettes do not recolor each other")
{
    SetUpBerrySprites();
    SetBerryGraphics(0, ITEM_CHESTO_BERRY, BERRY_STAGE_BERRIES);
    SetBerryGraphics(1, ITEM_ASPEAR_BERRY, BERRY_STAGE_BERRIES);
    SetBerryGraphics(2, ITEM_CHERI_BERRY, BERRY_STAGE_BERRIES);
    SetBerryGraphics(3, ITEM_ORAN_BERRY, BERRY_STAGE_BERRIES);
    SetBerryGraphics(4, ITEM_SHUCA_BERRY, BERRY_STAGE_BERRIES);
    ExpectBerryPalette(0, OBJ_EVENT_PAL_TAG_NPC_1, gObjectEventPal_Npc1);
    ExpectBerryPalette(1, OBJ_EVENT_PAL_TAG_NPC_2, gObjectEventPal_Npc2);
    ExpectBerryPalette(2, OBJ_EVENT_PAL_TAG_NPC_3, gObjectEventPal_Npc3);
    ExpectBerryPalette(3, OBJ_EVENT_PAL_TAG_NPC_1, gObjectEventPal_Npc1);
    ExpectBerryPalette(4, OBJ_EVENT_PAL_TAG_NPC_4, gObjectEventPal_Npc4);
    EXPECT_EQ((u8)gSprites[0].oam.paletteNum, (u8)gSprites[3].oam.paletteNum);

    SetBerryGraphics(0, ITEM_CHESTO_BERRY, BERRY_STAGE_PLANTED);
    ExpectBerryPalette(0, OBJ_EVENT_PAL_TAG_NPC_2, gObjectEventPal_Npc2);
    ExpectBerryPalette(1, OBJ_EVENT_PAL_TAG_NPC_2, gObjectEventPal_Npc2);
    ExpectBerryPalette(2, OBJ_EVENT_PAL_TAG_NPC_3, gObjectEventPal_Npc3);
    ExpectBerryPalette(3, OBJ_EVENT_PAL_TAG_NPC_1, gObjectEventPal_Npc1);
    ExpectBerryPalette(4, OBJ_EVENT_PAL_TAG_NPC_4, gObjectEventPal_Npc4);
}

TEST("Berry plants refresh their palettes as they grow and free only unused palettes")
{
    SetUpBerrySprites();
    SetBerryGraphics(0, ITEM_CHESTO_BERRY, BERRY_STAGE_PLANTED);
    SetBerryGraphics(1, ITEM_ASPEAR_BERRY, BERRY_STAGE_BERRIES);
    SetBerryGraphics(0, ITEM_CHESTO_BERRY, BERRY_STAGE_SPROUTED);
    ExpectBerryPalette(0, OBJ_EVENT_PAL_TAG_NPC_3, gObjectEventPal_Npc3);
    ExpectBerryPalette(1, OBJ_EVENT_PAL_TAG_NPC_2, gObjectEventPal_Npc2);

    SetBerryGraphics(0, ITEM_CHESTO_BERRY, BERRY_STAGE_TALLER);
    ExpectBerryPalette(0, OBJ_EVENT_PAL_TAG_NPC_1, gObjectEventPal_Npc1);
    ExpectBerryPalette(1, OBJ_EVENT_PAL_TAG_NPC_2, gObjectEventPal_Npc2);
    EXPECT_EQ(IndexOfSpritePaletteTag(OBJ_EVENT_PAL_TAG_NPC_3), 0xFF);
    SetBerryGraphics(0, ITEM_CHESTO_BERRY, BERRY_STAGE_TRUNK);
    SetBerryGraphics(0, ITEM_CHESTO_BERRY, BERRY_STAGE_BUDDING);
    SetBerryGraphics(0, ITEM_CHESTO_BERRY, BERRY_STAGE_FLOWERING);
    SetBerryGraphics(0, ITEM_CHESTO_BERRY, BERRY_STAGE_BERRIES);
    ExpectBerryPalette(0, OBJ_EVENT_PAL_TAG_NPC_1, gObjectEventPal_Npc1);
    ExpectBerryPalette(1, OBJ_EVENT_PAL_TAG_NPC_2, gObjectEventPal_Npc2);
}
