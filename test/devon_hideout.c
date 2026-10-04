#include "global.h"
#include "overworld.h"
#include "script.h"
#include "constants/event_bg.h"
#include "constants/maps.h"
#include "test/test.h"

extern const u8 DevonHideout_EventScript_FilingCabinet1[];
extern const u8 DevonHideout_EventScript_Stone1[];
extern const u8 DevonHideout_EventScript_Stone2[];
extern const u8 DevonHideout_EventScript_PC1[];
extern const u8 DevonHideout_EventScript_PC2[];
extern const u8 DevonHideout_EventScript_Device[];
extern const u8 DevonHideout_EventScript_Trash1[];
extern const u8 DevonHideout_EventScript_Trash2[];
extern const u8 DevonHideout_EventScript_FilingCabinet2[];
extern const u8 DevonHideout_EventScript_FilingCabinet3[];
extern const u8 DevonHideout_EventScript_FilingCabinet4[];
extern const u8 DevonHideout_EventScript_FilingCabinet5[];
extern const u8 DevonHideout_EventScript_Book1[];
extern const u8 DevonHideout_EventScript_Book2[];

extern const u8 DevonHideout_Text_FilingCabinet1[];
extern const u8 DevonHideout_Text_Stone1[];
extern const u8 DevonHideout_Text_Stone2[];
extern const u8 DevonHideout_Text_PC1[];
extern const u8 DevonHideout_Text_PC2[];
extern const u8 DevonHideout_Text_Device[];
extern const u8 DevonHideout_Text_Trash1[];
extern const u8 DevonHideout_Text_Trash2[];
extern const u8 DevonHideout_Text_FilingCabinet2[];
extern const u8 DevonHideout_Text_FilingCabinet3[];
extern const u8 DevonHideout_Text_FilingCabinet4[];
extern const u8 DevonHideout_Text_FilingCabinet5[];
extern const u8 DevonHideout_Text_Book1[];
extern const u8 DevonHideout_Text_Book2[];

static const struct
{
    s16 x, y;
    const u8 *script;
    const u8 *text;
} sClues[] =
{
    {0, 1, DevonHideout_EventScript_FilingCabinet1, DevonHideout_Text_FilingCabinet1},
    {14, 2, DevonHideout_EventScript_Stone1, DevonHideout_Text_Stone1},
    {15, 2, DevonHideout_EventScript_Stone2, DevonHideout_Text_Stone2},
    {7, 4, DevonHideout_EventScript_PC1, DevonHideout_Text_PC1},
    {7, 7, DevonHideout_EventScript_PC2, DevonHideout_Text_PC2},
    {3, 4, DevonHideout_EventScript_Device, DevonHideout_Text_Device},
    {9, 4, DevonHideout_EventScript_Trash1, DevonHideout_Text_Trash1},
    {19, 9, DevonHideout_EventScript_Trash2, DevonHideout_Text_Trash2},
    {1, 1, DevonHideout_EventScript_FilingCabinet2, DevonHideout_Text_FilingCabinet2},
    {8, 1, DevonHideout_EventScript_FilingCabinet3, DevonHideout_Text_FilingCabinet3},
    {9, 1, DevonHideout_EventScript_FilingCabinet4, DevonHideout_Text_FilingCabinet4},
    {10, 1, DevonHideout_EventScript_FilingCabinet5, DevonHideout_Text_FilingCabinet5},
    {15, 6, DevonHideout_EventScript_Book1, DevonHideout_Text_Book1},
    {16, 6, DevonHideout_EventScript_Book2, DevonHideout_Text_Book2},
};

TEST("Devon hideout clue events retain their positions and independent scripts")
{
    const struct MapHeader *map = Overworld_GetMapHeaderByGroupAndId(
        MAP_GROUP(MAP_DEVON_HIDEOUT), MAP_NUM(MAP_DEVON_HIDEOUT));

    EXPECT_EQ(map->events->bgEventCount, ARRAY_COUNT(sClues));
    for (u32 i = 0; i < ARRAY_COUNT(sClues); i++)
    {
        const struct BgEvent *event = &map->events->bgEvents[i];

        EXPECT_EQ(event->x, sClues[i].x);
        EXPECT_EQ(event->y, sClues[i].y);
        EXPECT_EQ(event->elevation, 0);
        EXPECT_EQ(event->kind, BG_EVENT_PLAYER_FACING_ANY);
        EXPECT_EQ(event->bgUnion.script, sClues[i].script);
    }
}

TEST("Devon hideout clues each select their own text before opening the message box")
{
    for (u32 i = 0; i < ARRAY_COUNT(sClues); i++)
    {
        struct ScriptContext ctx;

        // Stop before the shared sign handler changes flags or opens overworld UI.
        EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_SAVE | SCREFF_HARDWARE,
            sClues[i].script, &ctx));
        EXPECT_EQ(ctx.data[0], (u32)sClues[i].text);
        for (u32 j = 0; j < i; j++)
        {
            EXPECT_NE(sClues[i].script, sClues[j].script);
            EXPECT_NE(sClues[i].text, sClues[j].text);
        }
    }
}
