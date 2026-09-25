static struct ComfyAnim sLastUsedBallAnim;

u8 CreateBattlerHealthboxSprites(u8 battler)
{
    s16 data6 = 0;

    sPlayerSinglesStatusUpperBackupValid[battler] = FALSE;
    return 0;
}

// HLW PLAYER SINGLES STATUS UP 3PX V1
static u8 sPlayerSinglesStatusUpperBackup[MAX_BATTLERS_COUNT][36];
static bool8 sPlayerSinglesStatusUpperBackupValid[MAX_BATTLERS_COUNT];

static void RestorePlayerSinglesStatusUpperRows(u8 healthboxSpriteId)
{
}
