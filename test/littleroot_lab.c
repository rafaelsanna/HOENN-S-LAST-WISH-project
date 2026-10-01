#include "global.h"
#include "script.h"
#include "test/test.h"

extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_BirchRivalGoneHome[];
extern const u8 LittlerootTown_ProfessorBirchsLab_Text_BirchRivalGoneHome[];
extern const u8 LittlerootTown_ProfessorBirchsLab_Text_BirchBrendanGoneHome[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_GivePokedex[];
extern const u8 LittlerootTown_ProfessorBirchsLab_Text_HeardYouBeatRivalTakePokedex[];
extern const u8 LittlerootTown_ProfessorBirchsLab_Text_HeardYouBeatBrendanTakePokedex[];

TEST("Littleroot lab uses May pronouns for a male player")
{
    struct ScriptContext ctx;

    gSaveBlock2Ptr->playerGender = MALE;
    EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_HARDWARE,
        LittlerootTown_ProfessorBirchsLab_EventScript_BirchRivalGoneHome, &ctx));
    EXPECT_EQ(ctx.data[0], (u32)LittlerootTown_ProfessorBirchsLab_Text_BirchRivalGoneHome);
}

TEST("Littleroot lab uses Brendan pronouns for a female player")
{
    struct ScriptContext ctx;

    gSaveBlock2Ptr->playerGender = FEMALE;
    EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_HARDWARE,
        LittlerootTown_ProfessorBirchsLab_EventScript_BirchRivalGoneHome, &ctx));
    EXPECT_EQ(ctx.data[0], (u32)LittlerootTown_ProfessorBirchsLab_Text_BirchBrendanGoneHome);
}

TEST("Littleroot lab Pokedex introduction uses May pronouns for a male player")
{
    struct ScriptContext ctx;

    gSaveBlock2Ptr->playerGender = MALE;
    EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_HARDWARE,
        LittlerootTown_ProfessorBirchsLab_EventScript_GivePokedex, &ctx));
    EXPECT_EQ(ctx.data[0], (u32)LittlerootTown_ProfessorBirchsLab_Text_HeardYouBeatRivalTakePokedex);
}

TEST("Littleroot lab Pokedex introduction uses Brendan pronouns for a female player")
{
    struct ScriptContext ctx;

    gSaveBlock2Ptr->playerGender = FEMALE;
    EXPECT(RunScriptImmediatelyUntilEffect(SCREFF_V1 | SCREFF_HARDWARE,
        LittlerootTown_ProfessorBirchsLab_EventScript_GivePokedex, &ctx));
    EXPECT_EQ(ctx.data[0], (u32)LittlerootTown_ProfessorBirchsLab_Text_HeardYouBeatBrendanTakePokedex);
}
