#include "global.h"
#include "achievements.h"
#include "comfy_anim.h"
#include "decompress.h"
#include "scanline_effect.h"
#include "palette.h"
#include "task.h"
#include "main.h"
#include "window.h"
#include "malloc.h"
#include "link.h"
#include "bg.h"
#include "sound.h"
#include "frontier_pass.h"
#include "overworld.h"
#include "menu.h"
#include "text.h"
#include "event_data.h"
#include "difficulty.h"
#include "easy_chat.h"
#include "money.h"
#include "nuzlocke.h"
#include "strings.h"
#include "string_util.h"
#include "trainer_card.h"
#include "gpu_regs.h"
#include "international_string_util.h"
#include "pokedex.h"
#include "pokemon_storage_system.h"
#include "pokemon_icon.h"
#include "graphics.h"
#include "pokemon_icon.h"
#include "trainer_pokemon_sprites.h"
#include "contest_util.h"
#include "decompress.h"
#include "coins.h"
#include "constants/songs.h"
#include "constants/game_stat.h"
#include "constants/flags.h"
#include "constants/battle_frontier.h"
#include "constants/rgb.h"
#include "constants/trainers.h"
#include "constants/union_room.h"
#include "hlw_media_save.h"

enum {
    WIN_MSG,
    WIN_CARD_TEXT,
    WIN_TRAINER_PIC,
};

struct TrainerCardData
{
    u8 mainState;
    u8 printState;
    u8 gfxLoadState;
    u8 bgPalLoadState;
    u8 flipDrawState;
    bool8 isLink;
    u8 timeColonBlinkTimer;
    bool8 timeColonInvisible;
    bool8 onBack;
    bool8 allowDMACopy;
    bool8 hasPokedex;
    bool8 hasHofResult;
    bool8 hasLinkResults;
    bool8 hasBattleTowerWins;
    bool8 unused_E;
    bool8 unused_F;
    bool8 hasTrades;
    u8 badgeCount[NUM_BADGES];
    u8 easyChatProfile[TRAINER_CARD_PROFILE_LENGTH][13];
    u8 textPlayersCard[70];
    u8 textHofTime[70];
    u8 textLinkBattleType[140];
    u8 textLinkBattleWins[70];
    u8 textLinkBattleLosses[140];
    u8 textNumTrades[140];
    u8 textBerryCrushPts[140];
    u8 textUnionRoomStats[70];
    u8 textNumLinkPokeblocks[70];
    u8 textNumLinkContests[70];
    u8 textBattleFacilityStat[70];
    u16 monIconPal[16 * PARTY_SIZE];
    s8 flipBlendY;
    bool8 timeColonNeedDraw;
    u8 cardType;
    bool8 isHoenn;
    u16 blendColor;
    void (*callback2)(void);
    struct TrainerCard trainerCard;
    u16 frontTilemap[600];
    u16 backTilemap[600];
    u16 bgTilemap[600];
    u8 badgeTiles[0x80 * NUM_BADGES];
    u8 stickerTiles[0x200];
    u8 cardTiles[0x2300];
    u16 cardTilemapBuffer[0x1000];
    u16 bgTilemapBuffer[0x1000];
    // The custom front card uses BG3 only for its transparent badge row.
    // Keep that map independent from the legacy trainer-card background map;
    // sharing it can leave old front-card text/icons visible on the new card.
    u16 badgeTilemapBuffer[0x400];
    u16 cardTop;
    u8 language;
    bool8 isNewCard;
    u8 colorTheme;
    u8 mugshotSpriteId;
    u8 championRibbonSpriteId;
    u8 chaosMarkSpriteId;
    u8 partyIconSpriteIds[PARTY_SIZE];
    u32 bgScrollX;
    u32 bgScrollY;
};

// EWRAM
EWRAM_DATA struct TrainerCard gTrainerCards[4] = {0};
EWRAM_DATA static struct TrainerCardData *sData = NULL;

//this file's functions
static void VblankCb_TrainerCard(void);
static void HblankCb_TrainerCard(void);
static void BlinkTimeColon(void);
static void CB2_TrainerCard(void);
static void CloseTrainerCard(u8 task);
static void CloseTrainerCardToFrontierPass(u8 task);
static bool8 PrintAllOnCardFront(void);
static void DrawTrainerCardWindow(u8);
static void CreateTrainerCardTrainerPic(void);
static void DrawCardScreenBackground(u16 *);
static void DrawCardFrontOrBack(u16 *);
static void DrawStarsAndBadgesOnCard(void);
static void PrintTimeOnCard(void);
static void FlipTrainerCard(void);
static bool8 IsCardFlipTaskActive(void);
static bool8 LoadCardGfx(void);
static void CB2_InitTrainerCard(void);
static u32 GetCappedGameStat(u8 statId, u32 maxValue);
static bool8 HasAllFrontierSymbols(void);
static u8 GetRubyTrainerStars(struct TrainerCard *);
static u16 GetCaughtMonsCount(void);
static u16 GetOwnedMonsCount(void);
static void SetPlayerCardData(struct TrainerCard *, u8);
static void TrainerCard_GenerateCardForPlayer(struct TrainerCard *);
static u8 VersionToCardType(u8);
static void SetDataFromTrainerCard(void);
static void InitGpuRegs(void);
static void ResetGpuRegs(void);
static void InitBgsAndWindows(void);
static void SetTrainerCardCb2(void);
static void SetUpTrainerCardTask(void);
static void InitTrainerCardData(void);
static u8 GetSetCardType(void);
static void PrintNameOnCardFront(void);
static void PrintIdOnCard(void);
static void PrintMoneyOnCard(void);
static void PrintPokedexOnCard(void);
static void PrintProfilePhraseOnCard(void);
static bool8 PrintAllOnCardBack(void);
static void PrintNameOnCardBack(void);
static void PrintHofDebutTimeOnCard(void);
static void PrintLinkBattleResultsOnCard(void);
static void PrintTradesStringOnCard(void);
static void PrintBerryCrushStringOnCard(void);
static void PrintPokeblockStringOnCard(void);
static void PrintUnionStringOnCard(void);
static void PrintContestStringOnCard(void);
static void PrintPokemonIconsOnCard(void);
static void PrintBattleFacilityStringOnCard(void);
static void PrintStickersOnCard(void);
static void BufferTextsVarsForCardPage2(void);
static void BufferNameForCardBack(void);
static void BufferHofDebutTime(void);
static void BufferLinkBattleResults(void);
static void BufferNumTrades(void);
static void BufferBerryCrushPoints(void);
static void BufferUnionRoomStats(void);
static void BufferLinkPokeblocksNum(void);
static void BufferLinkContestNum(void);
static void BufferBattleFacilityStats(void);
static void PrintStatOnBackOfCard(u8 top, const u8 *str1, u8 *str2, const u8 *color);
static void LoadStickerGfx(void);
static u8 SetCardBgsAndPals(void);
static void LoadNewTrainerCardFrontGraphics(void);
static void LoadNewTrainerCardBackGraphics(void);
static void SetNewTrainerCardSpritesVisible(bool8 visible);
static void DrawCardBackStats(void);
static void Task_DoCardFlipTask(u8);
static bool8 Task_BeginCardFlip(struct Task *task);
static bool8 Task_AnimateCardFlipDown(struct Task *task);
static bool8 Task_DrawFlippedCardSide(struct Task *task);
static bool8 Task_SetCardFlipped(struct Task *task);
static bool8 Task_AnimateCardFlipUp(struct Task *task);
static bool8 Task_EndCardFlip(struct Task *task);
static void UpdateCardFlipRegs(u16);
static void LoadMonIconGfx(void);
static void LoadNewTrainerCardSpriteGfx(void);
static void DestroyNewTrainerCardSprites(void);
static void PrintNewTrainerCardNameAndId(void);
static void PrintNewTrainerCardTimeAndDex(void);
static void PrintNewTrainerCardMoney(void);
static void PrintNewTrainerCardWins(void);
static void PrintNewTrainerCardBadges(void);
static void PrintNewTrainerCardOptions(void);
static void PrintNewTrainerCardBackHeader(void);
static void PrintNewTrainerCardBackProgress(void);
static void PrintNewTrainerCardBackResources(void);
static void PrintNewTrainerCardBackActivity(void);
static void PrintNewTrainerCardBackWishMenuAndCandyCount(void);
static void PrintNewTrainerCardBackRadio(void);
static void PrintNewTrainerCardBackOnlineRecord(void);
static void PrintNewTrainerCardBackChampionRecord(void);
static void CreateNewTrainerCardSprites(void);
static void ApplyHardChampionRibbonMark(void);
static void LoadNewTrainerCardScrollingBackground(void);
static void UpdateNewTrainerCardScrollingBackground(void);
static void LoadTrainerCardColorThemeFromSave(void);
static u8 GetTrainerCardThemeCyclePosition(void);
static void ChangeTrainerCardColorTheme(s8 direction);
static void ApplyTrainerCardThemePalettes(void);

static const u32 sTrainerCardStickers_Gfx[]      = INCBIN_U32("graphics/trainer_card/frlg/stickers.4bpp.smol");
static const u16 sUnused_Pal[]                   = INCBIN_U16("graphics/trainer_card/unused.gbapal");
static const u16 sHoennTrainerCardBronze_Pal[]   = INCBIN_U16("graphics/trainer_card/bronze.gbapal");
static const u16 sKantoTrainerCardGreen_Pal[]    = INCBIN_U16("graphics/trainer_card/frlg/green.gbapal");
static const u16 sHoennTrainerCardCopper_Pal[]   = INCBIN_U16("graphics/trainer_card/copper.gbapal");
static const u16 sKantoTrainerCardBronze_Pal[]   = INCBIN_U16("graphics/trainer_card/frlg/bronze.gbapal");
static const u16 sHoennTrainerCardSilver_Pal[]   = INCBIN_U16("graphics/trainer_card/silver.gbapal");
static const u16 sKantoTrainerCardSilver_Pal[]   = INCBIN_U16("graphics/trainer_card/frlg/silver.gbapal");
static const u16 sHoennTrainerCardGold_Pal[]     = INCBIN_U16("graphics/trainer_card/gold.gbapal");
static const u16 sKantoTrainerCardGold_Pal[]     = INCBIN_U16("graphics/trainer_card/frlg/gold.gbapal");
static const u16 sHoennTrainerCardFemaleBg_Pal[] = INCBIN_U16("graphics/trainer_card/female_bg.gbapal");
static const u16 sKantoTrainerCardFemaleBg_Pal[] = INCBIN_U16("graphics/trainer_card/frlg/female_bg.gbapal");
static const u16 sHoennTrainerCardBadges_Pal[]   = INCBIN_U16("graphics/trainer_card/badges.gbapal");
static const u16 sKantoTrainerCardBadges_Pal[]   = INCBIN_U16("graphics/trainer_card/frlg/badges.gbapal");
static const u16 sTrainerCardStar_Pal[]          = INCBIN_U16("graphics/trainer_card/star.gbapal");
static const u16 sTrainerCardSticker1_Pal[]      = INCBIN_U16("graphics/trainer_card/frlg/stickers1.gbapal");
static const u16 sTrainerCardSticker2_Pal[]      = INCBIN_U16("graphics/trainer_card/frlg/stickers2.gbapal");
static const u16 sTrainerCardSticker3_Pal[]      = INCBIN_U16("graphics/trainer_card/frlg/stickers3.gbapal");
static const u16 sTrainerCardSticker4_Pal[]      = INCBIN_U16("graphics/trainer_card/frlg/stickers4.gbapal");
static const u32 sHoennTrainerCardBadges_Gfx[]   = INCBIN_U32("graphics/trainer_card/badges.4bpp.smol");
// Read alternate tiles directly from ROM; reuse the existing badge buffer
// and shared palette rather than allocating another sheet in RAM.
static const u32 sHoennTrainerCardHardBadges_Gfx[] = INCBIN_U32("graphics/trainer_card/badgeshard.4bpp");
static const u32 sKantoTrainerCardBadges_Gfx[]   = INCBIN_U32("graphics/trainer_card/frlg/badges.4bpp.smol");

static const u16 sHardBadgeVictoryFlags[NUM_BADGES] =
{
    FLAG_DEFEATED_GYM_1_HARD,
    FLAG_DEFEATED_GYM_2_HARD,
    FLAG_DEFEATED_GYM_3_HARD,
    FLAG_DEFEATED_GYM_4_HARD,
    FLAG_DEFEATED_GYM_5_HARD,
    FLAG_DEFEATED_GYM_6_HARD,
    FLAG_DEFEATED_GYM_7_HARD,
    FLAG_DEFEATED_GYM_8_HARD,
};

STATIC_ASSERT(sizeof(sHoennTrainerCardHardBadges_Gfx) == 0x80 * NUM_BADGES, TrainerCardHardBadgeSheetSize);

// The custom card is a 30x20 tilemap. Its source PNG is the 128x64 4bpp
// tileset, generated to newtrainercard.4bpp by the normal graphics rule.
static const u8 sNewTrainerCard_Gfx[] = INCBIN_U8("graphics/trainer_card/newtrainercard.4bpp");
static const u16 sNewTrainerCard_Pal[] = INCBIN_U16("graphics/trainer_card/newtrainercard.gbapal");
static const u16 sNewTrainerCard_Tilemap[] = INCBIN_U16("graphics/trainer_card/newtrainercard.bin");
static const u8 sNewTrainerCardBack_Gfx[] = INCBIN_U8("graphics/trainer_card/newtrainercardback.4bpp");
static const u16 sNewTrainerCardBack_Tilemap[] = INCBIN_U16("graphics/trainer_card/newtrainercardback.bin");

// The card artwork uses palette index 0 for the area outside the card. On a
// BG this index is transparent, so keep the backdrop dark while BG2 supplies
// the animated artwork underneath it.
static const u16 sNewTrainerCardBackdrop_Pal[] = {RGB(4, 4, 5)};

// Reuse the same 128x24 scrolling artwork and movement used by Options.
#define TRAINER_CARD_SCROLL_BG_PALETTE       5
#define TRAINER_CARD_SCROLL_BG_SCREENBASE    24
#define TRAINER_CARD_SCROLL_SOURCE_WIDTH     32
#define TRAINER_CARD_SCROLL_SOURCE_HEIGHT    24
#define TRAINER_CARD_SCROLL_BG_HEIGHT        64
#define TRAINER_CARD_SCROLL_X_PERIOD_PIXELS  (TRAINER_CARD_SCROLL_SOURCE_WIDTH * 8)
#define TRAINER_CARD_SCROLL_Y_PERIOD_PIXELS  (TRAINER_CARD_SCROLL_SOURCE_HEIGHT * 8)
#define TRAINER_CARD_SCROLL_SPEED_X          32
#define TRAINER_CARD_SCROLL_SPEED_Y          48
static const u32 sTrainerCardScrolling_Gfx[] = INCBIN_U32("graphics/trainer_card/bgscroll.4bpp");
static const u16 sTrainerCardScrolling_Tilemap[] = INCBIN_U16("graphics/trainer_card/bgscroll.bin");
static const u16 sTrainerCardScrolling_Pal[] = INCBIN_U16("graphics/trainer_card/bgscroll.gbapal");

// These are the same sixteen neutral UI themes used by the Summary and Party
// screens. The saved theme byte is shared with both screens below.
#define TRAINER_CARD_NAME_ID_Y 2
#define TRAINER_CARD_TIME_DEX_Y 19
// Small-narrow glyphs (including shadows) are 12 pixels tall, despite the
// font metadata reporting an 8-pixel line height.
#define TRAINER_CARD_TIME_DEX_HEIGHT 12
#define TRAINER_CARD_MONEY_Y 30
#define TRAINER_CARD_WINS_Y 42
#define TRAINER_CARD_BADGES_TEXT_Y 59
#define TRAINER_CARD_BACK_HEADER_Y 2
#define TRAINER_CARD_BACK_PROGRESS_Y 19
#define TRAINER_CARD_BACK_RESOURCES_Y 31
#define TRAINER_CARD_BACK_ACTIVITY_Y 43
#define TRAINER_CARD_BACK_WISH_MENU_Y 55
#define TRAINER_CARD_BACK_RADIO_Y 67
#define TRAINER_CARD_BACK_ONLINE_Y 108
#define TRAINER_CARD_BACK_CHAMPION_Y 122
#define TRAINER_CARD_BADGES_BG_Y_OFFSET (-3 * 256)

static const u8 sTrainerCardThemeCycleOrder[TRAINER_CARD_THEME_COUNT] =
{
    0, 1, 2, 3, 4, 5, 6, 7,
    8, 9, 15, 10, 11, 12, 13, 14,
};

static const u8 sTrainerCardThemeName_Base[]  = _("BASE");
static const u8 sTrainerCardThemeName_Ameth[] = _("AMETH");
static const u8 sTrainerCardThemeName_Burg[]  = _("BURG");
static const u8 sTrainerCardThemeName_Sky[]   = _("SKY");
static const u8 sTrainerCardThemeName_Emrld[] = _("EMRLD");
static const u8 sTrainerCardThemeName_Ocean[] = _("OCEAN");
static const u8 sTrainerCardThemeName_Coppr[] = _("COPPR");
static const u8 sTrainerCardThemeName_Rose[]  = _("ROSE");
static const u8 sTrainerCardThemeName_Indgo[] = _("INDGO");
static const u8 sTrainerCardThemeName_Silvr[] = _("SILVR");
static const u8 sTrainerCardThemeName_Pink[]  = _("PINK");
static const u8 sTrainerCardThemeName_Lavdr[] = _("LAVDR");
static const u8 sTrainerCardThemeName_Baby[]  = _("BABY");
static const u8 sTrainerCardThemeName_Mint[]  = _("MINT");
static const u8 sTrainerCardThemeName_Peach[] = _("PEACH");
static const u8 sTrainerCardThemeName_Gold[]  = _("GOLD");

static const u8 *const sTrainerCardThemeNames[TRAINER_CARD_THEME_COUNT] =
{
    [0]  = sTrainerCardThemeName_Base,
    [1]  = sTrainerCardThemeName_Ameth,
    [2]  = sTrainerCardThemeName_Burg,
    [3]  = sTrainerCardThemeName_Sky,
    [4]  = sTrainerCardThemeName_Emrld,
    [5]  = sTrainerCardThemeName_Ocean,
    [6]  = sTrainerCardThemeName_Coppr,
    [7]  = sTrainerCardThemeName_Rose,
    [8]  = sTrainerCardThemeName_Indgo,
    [9]  = sTrainerCardThemeName_Silvr,
    [10] = sTrainerCardThemeName_Pink,
    [11] = sTrainerCardThemeName_Lavdr,
    [12] = sTrainerCardThemeName_Baby,
    [13] = sTrainerCardThemeName_Mint,
    [14] = sTrainerCardThemeName_Peach,
    [15] = sTrainerCardThemeName_Gold,
};

static const struct TrainerCardThemeColors sTrainerCardThemeColors[TRAINER_CARD_THEME_COUNT] =
{
    [0] = {
        RGB(1, 1, 2), RGB(2, 2, 3), RGB(2, 3, 4), RGB(3, 3, 4),
        RGB(4, 4, 5), RGB(6, 6, 8), RGB(9,10,12), RGB(13,14,17), RGB(9, 7,12),
    },
    [1] = {
        RGB(2, 1, 3), RGB(3, 2, 5), RGB(4, 3, 7), RGB(5, 4, 8),
        RGB(6, 5, 9), RGB(8, 7,12), RGB(11, 9,15), RGB(16,13,19), RGB(20,16,25),
    },
    [2] = {
        RGB(3, 1, 2), RGB(5, 2, 3), RGB(7, 3, 4), RGB(8, 4, 5),
        RGB(9, 5, 6), RGB(12,6, 8), RGB(15,8,10), RGB(18,10,12), RGB(23,12,15),
    },
    [3] = {
        RGB(1, 2, 3), RGB(2, 3, 5), RGB(2, 4, 7), RGB(3, 5, 8),
        RGB(4, 6,10), RGB(5, 8,13), RGB(8,11,17), RGB(11,16,21), RGB(12,22,29),
    },
    [4] = {
        RGB(1, 3, 2), RGB(2, 4, 3), RGB(2, 6, 4), RGB(3, 7, 5),
        RGB(4, 8, 6), RGB(5,11, 8), RGB(8,14,10), RGB(11,17,13), RGB(15,23,17),
    },
    [5] = {
        RGB(1, 3, 3), RGB(2, 4, 5), RGB(2, 6, 7), RGB(3, 7, 8),
        RGB(4, 8,10), RGB(5,11,13), RGB(8,14,16), RGB(11,17,19), RGB(13,23,25),
    },
    [6] = {
        RGB(3, 2, 1), RGB(5, 3, 2), RGB(7, 4, 2), RGB(8, 5, 3),
        RGB(9, 6, 4), RGB(12,8, 5), RGB(15,10,7), RGB(18,13, 9), RGB(24,17,10),
    },
    [7] = {
        RGB(3, 1, 3), RGB(5, 2, 4), RGB(7, 3, 6), RGB(8, 4, 7),
        RGB(9, 5, 8), RGB(12,7,10), RGB(15, 9,13), RGB(18,11,15), RGB(24,16,20),
    },
    [8] = {
        RGB(1, 1, 3), RGB(2, 2, 5), RGB(3, 3, 7), RGB(4, 4, 8),
        RGB(5, 5,10), RGB(7, 7,13), RGB(10,10,17), RGB(13,13,20), RGB(18,18,27),
    },
    [9] = {
        RGB(2, 2, 3), RGB(3, 4, 5), RGB(4, 5, 6), RGB(5, 6, 7),
        RGB(6, 7, 8), RGB(8, 9,11), RGB(11,13,15), RGB(15,16,19), RGB(18,20,23),
    },
    [10] = {
        RGB(3, 1, 2), RGB(5, 2, 4), RGB(8, 3, 6), RGB(10,4, 8),
        RGB(12,5,10), RGB(15,7,12), RGB(19,10,15), RGB(24,14,19), RGB(31,18,24),
    },
    [11] = {
        RGB(2, 2, 3), RGB(3, 3, 5), RGB(5, 5, 7), RGB(6, 6, 8),
        RGB(8, 8,10), RGB(10,10,13), RGB(13,13,16), RGB(17,17,21), RGB(22,20,27),
    },
    [12] = {
        RGB(1, 2, 3), RGB(2, 3, 4), RGB(3, 5, 6), RGB(4, 6, 7),
        RGB(5, 7, 9), RGB(7,10,12), RGB(10,13,16), RGB(14,18,21), RGB(18,24,28),
    },
    [13] = {
        RGB(1, 3, 2), RGB(2, 4, 3), RGB(3, 6, 5), RGB(4, 7, 6),
        RGB(5, 8, 7), RGB(7,11, 9), RGB(10,14,12), RGB(14,18,16), RGB(18,25,21),
    },
    [14] = {
        RGB(3, 2, 2), RGB(5, 3, 2), RGB(7, 5, 4), RGB(8, 6, 5),
        RGB(10,7, 6), RGB(12,9, 8), RGB(15,12,10), RGB(19,15,13), RGB(25,20,17),
    },
    [15] = {
        RGB(3, 2, 0), RGB(5, 3, 1), RGB(7, 5, 1), RGB(9, 6, 1),
        RGB(11,8, 2), RGB(14,10,3), RGB(18,13,4), RGB(23,17,6), RGB(29,22,8),
    },
};

#define TRAINER_CARD_MUGSHOT_TAG       0x2F50
#define TRAINER_CARD_CHAMPION_RIBBON_TAG 0x2F51
#define TRAINER_CARD_CHAOS_MARK_TAG      0x2F52
#define TRAINER_CARD_CHAOS_SOURCE_TILES 6
#define TRAINER_CARD_CHAOS_FRAME_TILES  8

static const u8 sTrainerCardChaosMark_Gfx[] = INCBIN_U8("graphics/trainer_card/chaosrandom.4bpp");
static const u16 sTrainerCardChaosMark_Pal[] = INCBIN_U16("graphics/trainer_card/chaosrandom.gbapal");
STATIC_ASSERT(sizeof(sTrainerCardChaosMark_Gfx) == 48 * 48 / 2, ChaosMarkHasOriginal48x48Sheet);
STATIC_ASSERT(sizeof(sTrainerCardChaosMark_Pal) <= PLTT_SIZE_4BPP, ChaosMarkPaletteFits16Colors);

static const u16 sTrainerCardBrendanMugshot_Pal[] = INCBIN_U16("graphics/ui_main_menu/brendan_mugshot.gbapal");
static const u32 sTrainerCardBrendanMugshot_Gfx[] = INCBIN_U32("graphics/ui_main_menu/brendan_mugshot.4bpp.lz");
static const u16 sTrainerCardMayMugshot_Pal[] = INCBIN_U16("graphics/ui_main_menu/may_mugshot.gbapal");
static const u32 sTrainerCardMayMugshot_Gfx[] = INCBIN_U32("graphics/ui_main_menu/may_mugshot.4bpp.lz");

static const struct OamData sTrainerCardMugshotOam =
{
    .shape = SPRITE_SHAPE(64x64),
    .size = SPRITE_SIZE(64x64),
    .priority = 0,
};

static const struct CompressedSpriteSheet sTrainerCardBrendanMugshotSheet =
{
    .data = sTrainerCardBrendanMugshot_Gfx,
    .size = 64 * 64 / 2,
    .tag = TRAINER_CARD_MUGSHOT_TAG,
};

static const struct CompressedSpriteSheet sTrainerCardMayMugshotSheet =
{
    .data = sTrainerCardMayMugshot_Gfx,
    .size = 64 * 64 / 2,
    .tag = TRAINER_CARD_MUGSHOT_TAG,
};

static const struct SpritePalette sTrainerCardBrendanMugshotPal =
{
    .data = sTrainerCardBrendanMugshot_Pal,
    .tag = TRAINER_CARD_MUGSHOT_TAG,
};

static const struct SpritePalette sTrainerCardMayMugshotPal =
{
    .data = sTrainerCardMayMugshot_Pal,
    .tag = TRAINER_CARD_MUGSHOT_TAG,
};

static const u32 sTrainerCardChampionRibbon_Gfx[] = INCBIN_U32("graphics/trainer_card/champribbon.4bpp.lz");
static const u16 sTrainerCardChampionRibbon_Pal[] = INCBIN_U16("graphics/trainer_card/champribbon.gbapal");

static const struct CompressedSpriteSheet sTrainerCardChampionRibbonSheet =
{
    .data = sTrainerCardChampionRibbon_Gfx,
    .size = 64 * 64 / 2,
    .tag = TRAINER_CARD_CHAMPION_RIBBON_TAG,
};

static const struct SpritePalette sTrainerCardChampionRibbonPal =
{
    .data = sTrainerCardChampionRibbon_Pal,
    .tag = TRAINER_CARD_CHAMPION_RIBBON_TAG,
};

static const union AnimCmd sTrainerCardMugshotAnim[] =
{
    ANIMCMD_FRAME(0, 0),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd *const sTrainerCardMugshotAnimTable[] =
{
    sTrainerCardMugshotAnim,
};

static const struct SpriteTemplate sTrainerCardMugshotTemplate =
{
    .tileTag = TRAINER_CARD_MUGSHOT_TAG,
    .paletteTag = TRAINER_CARD_MUGSHOT_TAG,
    .oam = &sTrainerCardMugshotOam,
    .anims = sTrainerCardMugshotAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sTrainerCardChampionRibbonTemplate =
{
    .tileTag = TRAINER_CARD_CHAMPION_RIBBON_TAG,
    .paletteTag = TRAINER_CARD_CHAMPION_RIBBON_TAG,
    .oam = &sTrainerCardMugshotOam,
    .anims = sTrainerCardMugshotAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sTrainerCardChaosMarkTemplate =
{
    .tileTag = TRAINER_CARD_CHAOS_MARK_TAG,
    .paletteTag = TRAINER_CARD_CHAOS_MARK_TAG,
    .oam = &sTrainerCardMugshotOam,
    .anims = sTrainerCardMugshotAnimTable,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static bool32 HasPermanentChaosMark(void)
{
    return Randomizer_HasUsedChaosWild() || Randomizer_HasUsedChaosTrainers();
}

void TrainerCard_BuildChaosMarkTiles(u8 *tiles)
{
    // The GBA has no 48x48 OBJ size. Keep every source pixel unchanged,
    // with transparent padding in a 64x64 frame and the proper tile stride.
    memset(tiles, 0, 64 * 64 / 2);
    for (u32 row = 0; row < TRAINER_CARD_CHAOS_SOURCE_TILES; row++)
        memcpy(tiles + row * TRAINER_CARD_CHAOS_FRAME_TILES * TILE_SIZE_4BPP,
            sTrainerCardChaosMark_Gfx + row * TRAINER_CARD_CHAOS_SOURCE_TILES * TILE_SIZE_4BPP,
            TRAINER_CARD_CHAOS_SOURCE_TILES * TILE_SIZE_4BPP);
}

#if TESTING
const u8 *TrainerCard_TestChaosMarkGfx(void) { return sTrainerCardChaosMark_Gfx; }
const u16 *TrainerCard_TestChaosMarkPalette(void) { return sTrainerCardChaosMark_Pal; }
bool32 TrainerCard_TestHasChaosMark(void) { return HasPermanentChaosMark(); }
#endif

// The Champion Ribbon uses the same gold H indicator as the hard-mode badges.
// Palette index 0 remains transparent; indices 2 and 3 are the ribbon's
// existing black outline and gold colors respectively.
static const u8 sTrainerCardHardChampionMark[7][6] =
{
    {2, 2, 0, 2, 2, 0},
    {2, 3, 2, 2, 3, 2},
    {2, 3, 2, 2, 3, 2},
    {2, 3, 3, 3, 3, 2},
    {2, 3, 2, 2, 3, 2},
    {2, 3, 2, 2, 3, 2},
    {2, 2, 0, 2, 2, 0},
};

static const u8 sNewTrainerCardTextColors[] =
{
    TEXT_COLOR_TRANSPARENT,
    // The project textbox palette stores white at palette index 2 and its
    // gray shadow at palette index 3.
    TEXT_COLOR_DARK_GRAY,
    TEXT_COLOR_LIGHT_GRAY,
};

static const u8 sText_NewTrainerCardName[] = _("name: {STR_VAR_1}");
static const u8 sText_NewTrainerCardId[] = _("id: {STR_VAR_2}");
static const u8 sText_NewTrainerCardChampion[] = _("champion");
static const u8 sText_NewTrainerCardTimeAndDex[] = _("time {STR_VAR_1} : {STR_VAR_2} {EMOJI_PIPE} dex {STR_VAR_3} {EMOJI_PIPE} own ");
static const u8 sText_NewTrainerCardMoneyAndAchievements[] = _("money {STR_VAR_1} {EMOJI_PIPE} achievement {STR_VAR_2}");
static const u8 sText_NewTrainerCardWinsAndWhiteouts[] = _("win {STR_VAR_1} {EMOJI_PIPE} whiteout {STR_VAR_2}");
static const u8 sText_NewTrainerCardBadges[] = _("badges {STR_VAR_1}");
static const u8 sText_NewTrainerCardOptions[] = _("difficulty {STR_VAR_1}{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}nuzlocke {STR_VAR_2}{CLEAR 2}{EMOJI_PIPE}{CLEAR 2}wishmenu {STR_VAR_3}");
static const u8 sText_NewTrainerCardBackTitle[] = _("wish card");
static const u8 sText_NewTrainerCardBackTheme[] = _("theme {STR_VAR_1}/16");
static const u8 sText_NewTrainerCardBackHeader[] = _("name:{STR_VAR_1} id:{STR_VAR_2}");
static const u8 sText_NewTrainerCardBackProgress[] = _("steps: {STR_VAR_1} {EMOJI_PIPE} pressed a: {STR_VAR_2} {EMOJI_PIPE} battles: {STR_VAR_3}");
static const u8 sText_NewTrainerCardBackResources[] = _("battle points: {STR_VAR_1} {EMOJI_PIPE} gc coins: {STR_VAR_2} {EMOJI_PIPE} trades: {STR_VAR_3}");
static const u8 sText_NewTrainerCardBackActivity[] = _("faints: {STR_VAR_1} {EMOJI_PIPE} fled: {STR_VAR_2} {EMOJI_PIPE} evolution: {STR_VAR_3}");
static const u8 sText_NewTrainerCardBackActivityHatch[] = _(" {EMOJI_PIPE} hatch: ");
static const u8 sText_NewTrainerCardBackWishMenuAndCandyCount[] = _("wish menu count: {STR_VAR_1} {EMOJI_PIPE} infinity candy count: {STR_VAR_2}");
static const u8 sText_NewTrainerCardBackRadio[] = _("radio time: {STR_VAR_1}:{STR_VAR_2} {EMOJI_PIPE} song count: {STR_VAR_3}");
static const u8 sText_NewTrainerCardBackOnlineRecord[] = _("online record: {STR_VAR_1} win {STR_VAR_2} lost");
static const u8 sText_NewTrainerCardBackWinRate[] = _(" {EMOJI_PIPE} W R: ");
static const u8 sText_NewTrainerCardBackOnlineWinRate[] = _(" {EMOJI_PIPE} win rate: ");
static const u8 sText_NewTrainerCardBackPercent[] = _("%");
static const u8 sText_NewTrainerCardBackChampionRecord[] = _("champion: {STR_VAR_1}      hall of fame debut: {STR_VAR_2}");
static const u8 sText_NewTrainerCardBackHofTime[] = _("{STR_VAR_1}:{STR_VAR_2}:{STR_VAR_3}");
static const u8 sText_NewTrainerCardNormal[] = _("nrm");
static const u8 sText_NewTrainerCardHard[] = _("hard");
static const u8 sText_NewTrainerCardOff[] = _("off");
static const u8 sText_NewTrainerCardUsed[] = _("used");
static const u8 sText_NewTrainerCardNone[] = _("none");

static const struct BgTemplate sTrainerCardBgTemplates[4] =
{
    {
        .bg = 0,
        .charBaseIndex = 0,
        .mapBaseIndex = 27,
        .screenSize = 2,
        .paletteMode = 0,
        .priority = 2,
        .baseTile = 0
    },
    {
        .bg = 1,
        .charBaseIndex = 2,
        .mapBaseIndex = 29,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 0,
        .baseTile = 0
    },
    {
       .bg = 2,
       .charBaseIndex = 1,
       // BG2 is 32x64, so keep its 4 KiB tilemap away from BG3's map at 31.
       .mapBaseIndex = TRAINER_CARD_SCROLL_BG_SCREENBASE,
       .screenSize = 2,
       .paletteMode = 0,
       .priority = 3,
       .baseTile = 0
    },
    {
        .bg = 3,
        .charBaseIndex = 0,
        .mapBaseIndex = 31,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 1,
        .baseTile = 192
    },
};

static const struct WindowTemplate sTrainerCardWindowTemplates[] =
{
    [WIN_MSG] = {
        .bg = 1,
        .tilemapLeft = 2,
        .tilemapTop = 15,
        .width = 27,
        .height = 4,
        .paletteNum = 15,
        .baseBlock = 0x253,
    },
    [WIN_CARD_TEXT] = {
        .bg = 1,
        .tilemapLeft = 1,
        .tilemapTop = 1,
        .width = 28,
        .height = 18,
        .paletteNum = 15,
        .baseBlock = 0x1,
    },
    [WIN_TRAINER_PIC] = {
        .bg = 3,
        .tilemapLeft = 19,
        .tilemapTop = 5,
        .width = 9,
        .height = 10,
        .paletteNum = 8,
        .baseBlock = 0x150,
    },
    DUMMY_WIN_TEMPLATE
};

static const u16 *const sHoennTrainerCardPals[] =
{
    gHoennTrainerCardGreen_Pal,  // Default (0 stars)
    sHoennTrainerCardBronze_Pal, // 1 star
    sHoennTrainerCardCopper_Pal, // 2 stars
    sHoennTrainerCardSilver_Pal, // 3 stars
    sHoennTrainerCardGold_Pal,   // 4 stars
};

static const u16 *const sKantoTrainerCardPals[] =
{
    gKantoTrainerCardBlue_Pal,   // Default (0 stars)
    sKantoTrainerCardGreen_Pal,  // 1 star
    sKantoTrainerCardBronze_Pal, // 2 stars
    sKantoTrainerCardSilver_Pal, // 3 stars
    sKantoTrainerCardGold_Pal,   // 4 stars
};

static const u8 sTrainerCardTextColors[] = {TEXT_COLOR_TRANSPARENT, TEXT_COLOR_LIGHT_GRAY, TEXT_COLOR_DARK_GRAY};
static const u8 sTrainerCardStatColors[] = {TEXT_COLOR_TRANSPARENT, TEXT_COLOR_RED, TEXT_COLOR_LIGHT_RED};
static const u8 sTimeColonInvisibleTextColors[6] = {TEXT_COLOR_TRANSPARENT, TEXT_COLOR_TRANSPARENT, TEXT_COLOR_TRANSPARENT};

static const u8 sTrainerPicOffset[2][GENDER_COUNT][2] =
{
    // Kanto
    {
        [MALE]   = {13, 4},
        [FEMALE] = {13, 4}
    },
    // Hoenn
    {
        [MALE]   = {1, 0},
        [FEMALE] = {1, 0}
    },
};

static const u8 sTrainerPicFacilityClass[][GENDER_COUNT] =
{
    [CARD_TYPE_FRLG] =
    {
        [MALE]   = FACILITY_CLASS_RED,
        [FEMALE] = FACILITY_CLASS_LEAF
    },
    [CARD_TYPE_RS] =
    {
        [MALE]   = FACILITY_CLASS_RS_BRENDAN,
        [FEMALE] = FACILITY_CLASS_RS_MAY
    },
    [CARD_TYPE_EMERALD] =
    {
        [MALE]   = FACILITY_CLASS_BRENDAN,
        [FEMALE] = FACILITY_CLASS_MAY
    }
};

static bool8 (*const sTrainerCardFlipTasks[])(struct Task *) =
{
    Task_BeginCardFlip,
    Task_AnimateCardFlipDown,
    Task_DrawFlippedCardSide,
    Task_SetCardFlipped,
    Task_AnimateCardFlipUp,
    Task_EndCardFlip,
};

static void VblankCb_TrainerCard(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
    BlinkTimeColon();
    if (sData->allowDMACopy)
        DmaCopy16(3, &gScanlineEffectRegBuffers[0], &gScanlineEffectRegBuffers[1], 0x140);
}

static void HblankCb_TrainerCard(void)
{
    u16 backup;
    u16 bgVOffset;

    backup = REG_IME;
    REG_IME = 0;
    bgVOffset = gScanlineEffectRegBuffers[1][REG_VCOUNT & 0xFF];
    REG_BG0VOFS = bgVOffset;
    REG_IME = backup;
}

static void CB2_TrainerCard(void)
{
    if (sData->isNewCard)
        UpdateNewTrainerCardScrollingBackground();
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
}

static void CloseTrainerCard(u8 taskId)
{
    if (sData->isNewCard)
        DestroyNewTrainerCardSprites();

    SetMainCallback2(sData->callback2);
    FreeAllWindowBuffers();
    FREE_AND_SET_NULL(sData);
    DestroyTask(taskId);
}

static void CloseTrainerCardToFrontierPass(u8 taskId)
{
    MainCallback callback = sData->callback2;
    bool8 wasOpenedFromFrontierPass = callback == CB2_ReshowFrontierPass;

    if (sData->isNewCard)
        DestroyNewTrainerCardSprites();

    FreeAllWindowBuffers();
    FREE_AND_SET_NULL(sData);
    DestroyTask(taskId);

    if (wasOpenedFromFrontierPass)
        SetMainCallback2(CB2_ReshowFrontierPass);
    else
        ShowFrontierPass(callback);
}

// States for Task_TrainerCard. Skips the initial states, which are done once in order
#define STATE_HANDLE_INPUT_FRONT  10
#define STATE_HANDLE_INPUT_BACK   11
#define STATE_WAIT_FLIP_TO_BACK   12
#define STATE_WAIT_FLIP_TO_FRONT  13
#define STATE_CLOSE_CARD          14
#define STATE_WAIT_LINK_PARTNER   15
#define STATE_CLOSE_CARD_LINK     16
#define STATE_CLOSE_CARD_TO_PASS  17

static void Task_TrainerCard(u8 taskId)
{
    switch (sData->mainState)
    {
    // Draw card initially
    case 0:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            FillWindowPixelBuffer(WIN_CARD_TEXT, PIXEL_FILL(0));
            sData->mainState++;
        }
        break;
    case 1:
        if (PrintAllOnCardFront())
            sData->mainState++;
        break;
    case 2:
        DrawTrainerCardWindow(WIN_CARD_TEXT);
        sData->mainState++;
        break;
    case 3:
        CreateTrainerCardTrainerPic();
        if (!sData->isNewCard)
        {
            FillWindowPixelBuffer(WIN_TRAINER_PIC, PIXEL_FILL(0));
            DrawTrainerCardWindow(WIN_TRAINER_PIC);
        }
        sData->mainState++;
        break;
    case 4:
        if (!sData->isNewCard)
            DrawCardScreenBackground(sData->bgTilemap);
        sData->mainState++;
        break;
    case 5:
        DrawCardFrontOrBack(sData->frontTilemap);
        sData->mainState++;
        break;
    case 6:
        DrawStarsAndBadgesOnCard();
        sData->mainState++;
        break;
    // Fade in
    case 7:
        if (gWirelessCommType == 1 && gReceivedRemoteLinkPlayers == TRUE)
        {
            LoadWirelessStatusIndicatorSpriteGfx();
            CreateWirelessStatusIndicatorSprite(DISPLAY_WIDTH - 10, DISPLAY_HEIGHT - 10);
        }
        BlendPalettes(PALETTES_ALL, 16, sData->blendColor);
        BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, sData->blendColor);
        SetVBlankCallback(VblankCb_TrainerCard);
        sData->mainState++;
        break;
    case 8:
        if (!UpdatePaletteFade() && !IsDma3ManagerBusyWithBgCopy())
        {
            PlaySE(SE_RG_CARD_OPEN);
            sData->mainState = STATE_HANDLE_INPUT_FRONT;
        }
        break;
    case 9:
        if (!IsSEPlaying())
            sData->mainState++;
        break;
    case STATE_HANDLE_INPUT_FRONT:
        // Blink the : in play time
        if (!gReceivedRemoteLinkPlayers && sData->timeColonNeedDraw)
        {
            if (sData->isNewCard)
                PrintNewTrainerCardTimeAndDex();
            else
                PrintTimeOnCard();
            DrawTrainerCardWindow(WIN_CARD_TEXT);
            sData->timeColonNeedDraw = FALSE;
        }
        if (JOY_NEW(A_BUTTON))
        {
            FlipTrainerCard();
            PlaySE(SE_RG_CARD_FLIP);
            sData->mainState = STATE_WAIT_FLIP_TO_BACK;
        }
        else if (!sData->isLink && FlagGet(FLAG_SYS_FRONTIER_PASS)
              && JOY_NEW(START_BUTTON | SELECT_BUTTON))
        {
            PlaySE(SE_SELECT);
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
            sData->mainState = STATE_CLOSE_CARD_TO_PASS;
        }
        else if (JOY_NEW(B_BUTTON))
        {
            if (gReceivedRemoteLinkPlayers && sData->isLink && InUnionRoom() == TRUE)
            {
                sData->mainState = STATE_WAIT_LINK_PARTNER;
            }
            else
            {
                BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, sData->blendColor);
                sData->mainState = STATE_CLOSE_CARD;
            }
        }
        else if (sData->isNewCard && JOY_NEW(L_BUTTON))
        {
            PlaySE(SE_SELECT);
            ChangeTrainerCardColorTheme(-1);
        }
        else if (sData->isNewCard && JOY_NEW(R_BUTTON))
        {
            PlaySE(SE_SELECT);
            ChangeTrainerCardColorTheme(1);
        }
        break;
    case STATE_WAIT_FLIP_TO_BACK:
        if (IsCardFlipTaskActive() && Overworld_IsRecvQueueAtMax() != TRUE)
        {
            PlaySE(SE_RG_CARD_OPEN);
            sData->mainState = STATE_HANDLE_INPUT_BACK;
        }
        break;
    case STATE_HANDLE_INPUT_BACK:
        if (sData->isNewCard)
        {
            if (!sData->isLink && FlagGet(FLAG_SYS_FRONTIER_PASS)
                  && JOY_NEW(START_BUTTON | SELECT_BUTTON))
            {
                PlaySE(SE_SELECT);
                BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
                sData->mainState = STATE_CLOSE_CARD_TO_PASS;
            }
            else if (JOY_NEW(A_BUTTON))
            {
                FlipTrainerCard();
                sData->mainState = STATE_WAIT_FLIP_TO_FRONT;
                PlaySE(SE_RG_CARD_FLIP);
            }
            else if (JOY_NEW(B_BUTTON))
            {
                BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, sData->blendColor);
                sData->mainState = STATE_CLOSE_CARD;
            }
        }
        else if (JOY_NEW(B_BUTTON))
        {
            if (gReceivedRemoteLinkPlayers && sData->isLink && InUnionRoom() == TRUE)
            {
                sData->mainState = STATE_WAIT_LINK_PARTNER;
            }
            else if (gReceivedRemoteLinkPlayers)
            {
                BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, sData->blendColor);
                sData->mainState = STATE_CLOSE_CARD;
            }
            else
            {
                FlipTrainerCard();
                sData->mainState = STATE_WAIT_FLIP_TO_FRONT;
                PlaySE(SE_RG_CARD_FLIP);
            }
        }
        else if (JOY_NEW(A_BUTTON))
        {
           if (gReceivedRemoteLinkPlayers && sData->isLink && InUnionRoom() == TRUE)
           {
               sData->mainState = STATE_WAIT_LINK_PARTNER;
           }
           else
           {
               BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, sData->blendColor);
               sData->mainState = STATE_CLOSE_CARD;
           }
        }
        break;
    case STATE_WAIT_LINK_PARTNER:
        SetCloseLinkCallback();
        DrawDialogueFrame(WIN_MSG, TRUE);
        AddTextPrinterParameterized(WIN_MSG, FONT_NORMAL, gText_WaitingTrainerFinishReading, 0, 1, 255, 0);
        CopyWindowToVram(WIN_MSG, COPYWIN_FULL);
        sData->mainState = STATE_CLOSE_CARD_LINK;
        break;
    case STATE_CLOSE_CARD_LINK:
        if (!gReceivedRemoteLinkPlayers)
        {
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, sData->blendColor);
            sData->mainState = STATE_CLOSE_CARD;
        }
        break;
    case STATE_CLOSE_CARD:
        if (!UpdatePaletteFade())
            CloseTrainerCard(taskId);
        break;
    case STATE_CLOSE_CARD_TO_PASS:
        if (!UpdatePaletteFade())
            CloseTrainerCardToFrontierPass(taskId);
        break;
    case STATE_WAIT_FLIP_TO_FRONT:
        if (IsCardFlipTaskActive() && Overworld_IsRecvQueueAtMax() != TRUE)
        {
            sData->mainState = STATE_HANDLE_INPUT_FRONT;
            PlaySE(SE_RG_CARD_OPEN);
        }
        break;
   }
}

void TrainerCard_ApplyHardBadgeGraphics(u8 *tiles)
{
    const u8 *hardTiles = (const u8 *)sHoennTrainerCardHardBadges_Gfx;
    const u32 halfBadgeSize = 2 * TILE_SIZE_4BPP;
    const u32 sheetRowSize = NUM_BADGES * halfBadgeSize;

    for (u32 badge = 0; badge < NUM_BADGES; badge++)
    {
        if (FlagGet(sHardBadgeVictoryFlags[badge]))
        {
            u32 offset = badge * halfBadgeSize;

            // A 128x16 sheet stores all top tile pairs, then all bottom pairs.
            memcpy(tiles + offset, hardTiles + offset, halfBadgeSize);
            offset += sheetRowSize;
            memcpy(tiles + offset, hardTiles + offset, halfBadgeSize);
        }
    }
}

static bool8 LoadCardGfx(void)
{
    if (sData->isNewCard)
    {
        switch (sData->gfxLoadState)
        {
        case 0:
            memcpy(sData->frontTilemap, sNewTrainerCard_Tilemap, sizeof(sNewTrainerCard_Tilemap));
            break;
        case 1:
            if (sData->cardType != CARD_TYPE_FRLG)
            {
                DecompressDataWithHeaderWram(sHoennTrainerCardBadges_Gfx, sData->badgeTiles);
                TrainerCard_ApplyHardBadgeGraphics(sData->badgeTiles);
            }
            else
                DecompressDataWithHeaderWram(sKantoTrainerCardBadges_Gfx, sData->badgeTiles);
            break;
        case 2:
            memcpy(sData->backTilemap, sNewTrainerCardBack_Tilemap, sizeof(sNewTrainerCardBack_Tilemap));
            break;
        default:
            sData->gfxLoadState = 0;
            return TRUE;
        }
        sData->gfxLoadState++;
        return FALSE;
    }

    switch (sData->gfxLoadState)
    {
    case 0:
        if (sData->cardType != CARD_TYPE_FRLG)
            DecompressDataWithHeaderWram(gHoennTrainerCardBg_Tilemap, sData->bgTilemap);
        else
            DecompressDataWithHeaderWram(gKantoTrainerCardBg_Tilemap, sData->bgTilemap);
        break;
    case 1:
        if (sData->cardType != CARD_TYPE_FRLG)
            DecompressDataWithHeaderWram(gHoennTrainerCardBack_Tilemap, sData->backTilemap);
        else
            DecompressDataWithHeaderWram(gKantoTrainerCardBack_Tilemap, sData->backTilemap);
        break;
    case 2:
        if (!sData->isLink)
        {
            if (sData->cardType != CARD_TYPE_FRLG)
                DecompressDataWithHeaderWram(gHoennTrainerCardFront_Tilemap, sData->frontTilemap);
            else
                DecompressDataWithHeaderWram(gKantoTrainerCardFront_Tilemap, sData->frontTilemap);
        }
        else
        {
            if (sData->cardType != CARD_TYPE_FRLG)
                DecompressDataWithHeaderWram(gHoennTrainerCardFrontLink_Tilemap, sData->frontTilemap);
            else
                DecompressDataWithHeaderWram(gKantoTrainerCardFrontLink_Tilemap, sData->frontTilemap);
        }
        break;
    case 3:
        if (sData->cardType != CARD_TYPE_FRLG)
            DecompressDataWithHeaderWram(sHoennTrainerCardBadges_Gfx, sData->badgeTiles);
        else
            DecompressDataWithHeaderWram(sKantoTrainerCardBadges_Gfx, sData->badgeTiles);
        break;
    case 4:
        if (sData->cardType != CARD_TYPE_FRLG)
            DecompressDataWithHeaderWram(gHoennTrainerCard_Gfx, sData->cardTiles);
        else
            DecompressDataWithHeaderWram(gKantoTrainerCard_Gfx, sData->cardTiles);
        break;
    case 5:
        if (sData->cardType == CARD_TYPE_FRLG)
            DecompressDataWithHeaderWram(sTrainerCardStickers_Gfx, sData->stickerTiles);
        break;
    default:
        sData->gfxLoadState = 0;
        return TRUE;
    }
    sData->gfxLoadState++;
    return FALSE;
}

static void CB2_InitTrainerCard(void)
{
    switch (gMain.state)
    {
    case 0:
        ResetGpuRegs();
        SetUpTrainerCardTask();
        gMain.state++;
        break;
    case 1:
        DmaClear32(3, (void *)OAM, OAM_SIZE);
        gMain.state++;
        break;
    case 2:
        if (!sData->blendColor)
            DmaClear16(3, (void *)PLTT, PLTT_SIZE);
        gMain.state++;
        break;
    case 3:
        ResetSpriteData();
        FreeAllSpritePalettes();
        ResetPaletteFade();
        gMain.state++;
    case 4:
        InitBgsAndWindows();
        gMain.state++;
        break;
    case 5:
        if (sData->isNewCard)
            LoadNewTrainerCardSpriteGfx();
        else
            LoadMonIconGfx();
        gMain.state++;
        break;
    case 6:
        if (LoadCardGfx() == TRUE)
            gMain.state++;
        break;
    case 7:
        if (!sData->isNewCard)
            LoadStickerGfx();
        gMain.state++;
        break;
    case 8:
        InitGpuRegs();
        gMain.state++;
        break;
    case 9:
        BufferTextsVarsForCardPage2();
        gMain.state++;
        break;
    case 10:
        if (SetCardBgsAndPals() == TRUE)
            gMain.state++;
        break;
    default:
        SetTrainerCardCb2();
        break;
    }
}

static u32 GetCappedGameStat(u8 statId, u32 maxValue)
{
    u32 statValue = GetGameStat(statId);

    return min(maxValue, statValue);
}

static bool8 HasAllFrontierSymbols(void)
{
    u8 i;
    for (i = 0; i < NUM_FRONTIER_FACILITIES; i++)
    {
        if (!FlagGet(FLAG_SYS_TOWER_SILVER + 2 * i) || !FlagGet(FLAG_SYS_TOWER_GOLD + 2 * i))
            return FALSE;
    }
    return TRUE;
}

u32 CountPlayerTrainerStars(void)
{
    u8 stars = 0;

    if (GetGameStat(GAME_STAT_ENTERED_HOF))
        stars++;
    if (HasAllHoennMons())
        stars++;
    if (CountPlayerMuseumPaintings() >= CONTEST_CATEGORIES_COUNT)
        stars++;
    if (HasAllFrontierSymbols())
        stars++;

    return stars;
}

static u8 GetRubyTrainerStars(struct TrainerCard *trainerCard)
{
    u8 stars = 0;

    if (trainerCard->hofDebutHours || trainerCard->hofDebutMinutes || trainerCard->hofDebutSeconds)
        stars++;
    if (trainerCard->caughtAllHoenn)
        stars++;
    if (trainerCard->battleTowerStraightWins > 49)
        stars++;
    if (trainerCard->hasAllPaintings)
        stars++;

    return stars;
}

static void SetPlayerCardData(struct TrainerCard *trainerCard, u8 cardType)
{
    u32 playTime;
    u8 i;

    trainerCard->gender = gSaveBlock2Ptr->playerGender;
    trainerCard->playTimeHours = gSaveBlock2Ptr->playTimeHours;
    trainerCard->playTimeMinutes = gSaveBlock2Ptr->playTimeMinutes;

    playTime = GetGameStat(GAME_STAT_FIRST_HOF_PLAY_TIME);
    if (!GetGameStat(GAME_STAT_ENTERED_HOF))
        playTime = 0;

    trainerCard->hofDebutHours = playTime >> 16;
    trainerCard->hofDebutMinutes = (playTime >> 8) & 0xFF;
    trainerCard->hofDebutSeconds = playTime & 0xFF;
    if ((playTime >> 16) > 999)
    {
        trainerCard->hofDebutHours = 999;
        trainerCard->hofDebutMinutes = 59;
        trainerCard->hofDebutSeconds = 59;
    }

    trainerCard->hasPokedex = FlagGet(FLAG_SYS_POKEDEX_GET);
    trainerCard->caughtAllHoenn = HasAllHoennMons();
    trainerCard->caughtMonsCount = GetCaughtMonsCount();

    trainerCard->trainerId = (gSaveBlock2Ptr->playerTrainerId[1] << 8) | gSaveBlock2Ptr->playerTrainerId[0];

    trainerCard->linkBattleWins = GetCappedGameStat(GAME_STAT_LINK_BATTLE_WINS, 9999);
    trainerCard->linkBattleLosses = GetCappedGameStat(GAME_STAT_LINK_BATTLE_LOSSES, 9999);

    trainerCard->pokemonTrades = GetCappedGameStat(GAME_STAT_POKEMON_TRADES, 0xFFFF);

    trainerCard->money = GetMoney(&gSaveBlock1Ptr->money);

    for (i = 0; i < TRAINER_CARD_PROFILE_LENGTH; i++)
        trainerCard->easyChatProfile[i] = gSaveBlock1Ptr->easyChatProfile[i];

    StringCopy(trainerCard->playerName, gSaveBlock2Ptr->playerName);

    switch (cardType)
    {
    case CARD_TYPE_EMERALD:
        trainerCard->battleTowerWins = 0;
        trainerCard->battleTowerStraightWins = 0;
    // Seems like GF got CARD_TYPE_FRLG and CARD_TYPE_RS wrong.
    case CARD_TYPE_FRLG:
        trainerCard->contestsWithFriends = GetCappedGameStat(GAME_STAT_WON_LINK_CONTEST, 999);
        trainerCard->pokeblocksWithFriends = GetCappedGameStat(GAME_STAT_POKEBLOCKS_WITH_FRIENDS, 0xFFFF);
        if (CountPlayerMuseumPaintings() >= CONTEST_CATEGORIES_COUNT)
            trainerCard->hasAllPaintings = TRUE;
        trainerCard->stars = GetRubyTrainerStars(trainerCard);
        break;
    case CARD_TYPE_RS:
        trainerCard->battleTowerWins = 0;
        trainerCard->battleTowerStraightWins = 0;
        trainerCard->contestsWithFriends = 0;
        trainerCard->pokeblocksWithFriends = 0;
        trainerCard->hasAllPaintings = 0;
        trainerCard->stars = 0;
        break;
    }
}

static void TrainerCard_GenerateCardForPlayer(struct TrainerCard *trainerCard)
{
    memset(trainerCard, 0, sizeof(struct TrainerCard));
    trainerCard->version = GAME_VERSION;
    SetPlayerCardData(trainerCard, CARD_TYPE_EMERALD);
    trainerCard->hasAllFrontierSymbols = HasAllFrontierSymbols();
    trainerCard->frontierBP = gSaveBlock2Ptr->frontier.cardBattlePoints;
    if (trainerCard->hasAllFrontierSymbols)
        trainerCard->stars++;

    if (trainerCard->gender == FEMALE)
        trainerCard->unionRoomClass = gUnionRoomFacilityClasses[(trainerCard->trainerId % NUM_UNION_ROOM_CLASSES) + NUM_UNION_ROOM_CLASSES];
    else
        trainerCard->unionRoomClass = gUnionRoomFacilityClasses[trainerCard->trainerId % NUM_UNION_ROOM_CLASSES];
}

void TrainerCard_GenerateCardForLinkPlayer(struct TrainerCard *trainerCard)
{
    memset(trainerCard, 0, 0x60);
    trainerCard->version = GAME_VERSION;
    SetPlayerCardData(trainerCard, CARD_TYPE_EMERALD);
    trainerCard->linkHasAllFrontierSymbols = HasAllFrontierSymbols();
    *((u16 *)&trainerCard->linkPoints.frontier) = gSaveBlock2Ptr->frontier.cardBattlePoints;
    if (trainerCard->linkHasAllFrontierSymbols)
        trainerCard->stars++;

    if (trainerCard->gender == FEMALE)
        trainerCard->unionRoomClass = gUnionRoomFacilityClasses[(trainerCard->trainerId % NUM_UNION_ROOM_CLASSES) + NUM_UNION_ROOM_CLASSES];
    else
        trainerCard->unionRoomClass = gUnionRoomFacilityClasses[trainerCard->trainerId % NUM_UNION_ROOM_CLASSES];
}

void CopyTrainerCardData(struct TrainerCard *dst, struct TrainerCard *src, u8 gameVersion)
{
    memset(dst, 0, sizeof(struct TrainerCard));
    dst->version = gameVersion;

    switch (VersionToCardType(gameVersion))
    {
    case CARD_TYPE_FRLG:
        memcpy(dst, src, 0x60);
        break;
    case CARD_TYPE_RS:
        memcpy(dst, src, 0x38);
        break;
    case CARD_TYPE_EMERALD:
        memcpy(dst, src, 0x60);
        dst->linkPoints.frontier = 0;
        dst->hasAllFrontierSymbols = src->linkHasAllFrontierSymbols;
        dst->frontierBP = *((u16 *)&src->linkPoints.frontier);
        break;
    }
}

static void SetDataFromTrainerCard(void)
{
    u8 i;
    u32 badgeFlag;

    sData->hasPokedex = FALSE;
    sData->hasHofResult = FALSE;
    sData->hasLinkResults = FALSE;
    sData->hasBattleTowerWins = FALSE;
    sData->unused_E = FALSE;
    sData->unused_F = FALSE;
    sData->hasTrades = FALSE;
    memset(sData->badgeCount, 0, sizeof(sData->badgeCount));
    if (sData->trainerCard.hasPokedex)
        sData->hasPokedex++;

    if (sData->trainerCard.hofDebutHours
     || sData->trainerCard.hofDebutMinutes
     || sData->trainerCard.hofDebutSeconds)
        sData->hasHofResult++;

    if (sData->trainerCard.linkBattleWins || sData->trainerCard.linkBattleLosses)
        sData->hasLinkResults++;
    if (sData->trainerCard.pokemonTrades)
        sData->hasTrades++;
    if (sData->trainerCard.battleTowerWins || sData->trainerCard.battleTowerStraightWins)
        sData->hasBattleTowerWins++;

    for (i = 0, badgeFlag = FLAG_BADGE01_GET; badgeFlag < FLAG_BADGE01_GET + NUM_BADGES; badgeFlag++, i++)
    {
        if (FlagGet(badgeFlag))
            sData->badgeCount[i]++;
    }
}

static void InitGpuRegs(void)
{
    SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_WIN0_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP);
    ShowBg(0);
    ShowBg(1);
    ShowBg(2);
    ShowBg(3);
    SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_TGT1_BG0 | BLDCNT_EFFECT_DARKEN);
    SetGpuReg(REG_OFFSET_BLDY, 0);
    SetGpuReg(REG_OFFSET_WININ, WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR);
    SetGpuReg(REG_OFFSET_WINOUT, WINOUT_WIN01_BG1 | WINOUT_WIN01_BG2 | WINOUT_WIN01_BG3 | WINOUT_WIN01_OBJ);
    SetGpuReg(REG_OFFSET_WIN0V, DISPLAY_HEIGHT);
    SetGpuReg(REG_OFFSET_WIN0H, DISPLAY_WIDTH);
    if (sData->isNewCard)
        ChangeBgY(3, TRAINER_CARD_BADGES_BG_Y_OFFSET, BG_COORD_SET);
    if (gReceivedRemoteLinkPlayers)
        EnableInterrupts(INTR_FLAG_VBLANK | INTR_FLAG_HBLANK | INTR_FLAG_VCOUNT | INTR_FLAG_TIMER3 | INTR_FLAG_SERIAL);
    else
        EnableInterrupts(INTR_FLAG_VBLANK | INTR_FLAG_HBLANK);
}

static void UpdateCardFlipRegs(u16 cardTop)
{
    s8 blendY = (cardTop + 40) / 10;

    if (blendY <= 4)
        blendY = 0;
    sData->flipBlendY = blendY;
    SetGpuReg(REG_OFFSET_BLDY, sData->flipBlendY);
    SetGpuReg(REG_OFFSET_WIN0V, WIN_RANGE(sData->cardTop, DISPLAY_HEIGHT - sData->cardTop));
}

static void ResetGpuRegs(void)
{
    SetVBlankCallback(NULL);
    SetHBlankCallback(NULL);
    SetGpuReg(REG_OFFSET_DISPCNT, 0);
    SetGpuReg(REG_OFFSET_BG0CNT, 0);
    SetGpuReg(REG_OFFSET_BG1CNT, 0);
    SetGpuReg(REG_OFFSET_BG2CNT, 0);
    SetGpuReg(REG_OFFSET_BG3CNT, 0);
}

static void InitBgsAndWindows(void)
{
    ResetBgsAndClearDma3BusyFlags(0);
    InitBgsFromTemplates(0, sTrainerCardBgTemplates, ARRAY_COUNT(sTrainerCardBgTemplates));
    ChangeBgX(0, 0, BG_COORD_SET);
    ChangeBgY(0, 0, BG_COORD_SET);
    ChangeBgX(1, 0, BG_COORD_SET);
    ChangeBgY(1, 0, BG_COORD_SET);
    ChangeBgX(2, 0, BG_COORD_SET);
    ChangeBgY(2, 0, BG_COORD_SET);
    ChangeBgX(3, 0, BG_COORD_SET);
    ChangeBgY(3, 0, BG_COORD_SET);
    InitWindows(sTrainerCardWindowTemplates);
    DeactivateAllTextPrinters();
    LoadMessageBoxAndBorderGfx();
}

static void SetTrainerCardCb2(void)
{
    SetMainCallback2(CB2_TrainerCard);
}

static void SetUpTrainerCardTask(void)
{
    ResetTasks();
    ReleaseComfyAnims();
    ScanlineEffect_Stop();
    CreateTask(Task_TrainerCard, 0);
    InitTrainerCardData();
    SetDataFromTrainerCard();
}

static bool8 PrintAllOnCardFront(void)
{
    if (sData->isNewCard)
    {
        switch (sData->printState)
        {
        case 0:
            PrintNewTrainerCardNameAndId();
            break;
        case 1:
            PrintNewTrainerCardTimeAndDex();
            break;
        case 2:
            PrintNewTrainerCardMoney();
            break;
        case 3:
            PrintNewTrainerCardWins();
            break;
        case 4:
            PrintNewTrainerCardBadges();
            break;
        case 5:
            PrintNewTrainerCardOptions();
            break;
        default:
            sData->printState = 0;
            return TRUE;
        }
        sData->printState++;
        return FALSE;
    }

    switch (sData->printState)
    {
    case 0:
        PrintNameOnCardFront();
        break;
    case 1:
        PrintIdOnCard();
        break;
    case 2:
        PrintMoneyOnCard();
        break;
    case 3:
        PrintPokedexOnCard();
        break;
    case 4:
        PrintTimeOnCard();
        break;
    case 5:
        PrintProfilePhraseOnCard();
        break;
    default:
        sData->printState = 0;
        return TRUE;
    }
    sData->printState++;
    return FALSE;
}

static void PrintNewTrainerCardNameAndId(void)
{
    s32 idX;
    s32 championX;

    StringCopy(gStringVar1, sData->trainerCard.playerName);
    ConvertInternationalString(gStringVar1, sData->language);
    ConvertIntToDecimalStringN(gStringVar2, sData->trainerCard.trainerId, STR_CONV_MODE_LEADING_ZEROS, 5);

    // Keep the name and ID in separate runs. The mugshot begins at the right
    // edge of this text area, so one long combined run could be hidden by it.
    // The narrower font also leaves room for the full seven-character name.
    StringExpandPlaceholders(gStringVar4, sText_NewTrainerCardName);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_SMALL_NARROWER, 6, TRAINER_CARD_NAME_ID_Y, sNewTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
    idX = 6 + GetStringWidth(FONT_SMALL_NARROWER, gStringVar4, 0) + 6;

    StringExpandPlaceholders(gStringVar4, sText_NewTrainerCardId);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_SMALL_NARROWER, idX, TRAINER_CARD_NAME_ID_Y, sNewTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);

    if (FlagGet(FLAG_IS_CHAMPION))
    {
        StringCopy(gStringVar4, sText_NewTrainerCardChampion);
        championX = (HasPermanentChaosMark() ? 184 : 176) - GetStringWidth(FONT_SMALL_NARROWER, gStringVar4, 0) / 2;
        AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_SMALL_NARROWER, championX, 77, sNewTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
    }
}

void TrainerCard_DrawTimeAndDex(u8 windowId, u16 hours, u16 minutes, u16 caughtCount, u16 ownedCount)
{
    u8 text[64];

    // Clear the entire row at its current position before every redraw.
    // Include the font's full glyph/shadow footprint, not its shorter
    // reported line height. The next line's visible text starts below it.
    FillWindowPixelRect(windowId, PIXEL_FILL(0), 0, TRAINER_CARD_TIME_DEX_Y,
        WindowWidthPx(windowId), TRAINER_CARD_TIME_DEX_HEIGHT);

    ConvertIntToDecimalStringN(gStringVar1, hours, STR_CONV_MODE_LEFT_ALIGN, 3);
    ConvertIntToDecimalStringN(gStringVar2, minutes, STR_CONV_MODE_LEADING_ZEROS, 2);
    ConvertIntToDecimalStringN(gStringVar3, caughtCount, STR_CONV_MODE_LEFT_ALIGN, 3);
    ConvertIntToDecimalStringN(gStringVar4, ownedCount, STR_CONV_MODE_LEFT_ALIGN, 3);
    StringExpandPlaceholders(text, sText_NewTrainerCardTimeAndDex);
    StringAppend(text, gStringVar4);
    AddTextPrinterParameterized3(windowId, FONT_SMALL_NARROW, 6, TRAINER_CARD_TIME_DEX_Y, sNewTrainerCardTextColors, TEXT_SKIP_DRAW, text);
}

static void PrintNewTrainerCardTimeAndDex(void)
{
    u16 hours = sData->isLink ? sData->trainerCard.playTimeHours : gSaveBlock2Ptr->playTimeHours;
    u16 minutes = sData->isLink ? sData->trainerCard.playTimeMinutes : gSaveBlock2Ptr->playTimeMinutes;

    TrainerCard_DrawTimeAndDex(WIN_CARD_TEXT, hours, minutes,
        sData->trainerCard.caughtMonsCount, GetOwnedMonsCount());
}

static void PrintNewTrainerCardMoney(void)
{
    ConvertIntToDecimalStringN(gStringVar1, sData->trainerCard.money, STR_CONV_MODE_LEFT_ALIGN, MAX_MONEY_DIGITS);
    ConvertIntToDecimalStringN(gStringVar2, Achievement_CountUnlocked(), STR_CONV_MODE_LEFT_ALIGN, 3);
    StringExpandPlaceholders(gStringVar4, sText_NewTrainerCardMoneyAndAchievements);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_SMALL_NARROW, 6, TRAINER_CARD_MONEY_Y, sNewTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
}

static void PrintNewTrainerCardWins(void)
{
    ConvertIntToDecimalStringN(gStringVar1, GetCappedGameStat(GAME_STAT_TRAINER_WINS, 9999), STR_CONV_MODE_LEFT_ALIGN, 4);
    ConvertIntToDecimalStringN(gStringVar2, GetCappedGameStat(GAME_STAT_WHITEOUTS, 9999), STR_CONV_MODE_LEFT_ALIGN, 4);
    StringExpandPlaceholders(gStringVar4, sText_NewTrainerCardWinsAndWhiteouts);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_SMALL_NARROW, 6, TRAINER_CARD_WINS_Y, sNewTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
}

static void PrintNewTrainerCardBadges(void)
{
    u8 i;
    u8 badgeCount = 0;

    for (i = 0; i < NUM_BADGES; i++)
        badgeCount += sData->badgeCount[i];

    ConvertIntToDecimalStringN(gStringVar1, badgeCount, STR_CONV_MODE_LEFT_ALIGN, 1);
    StringExpandPlaceholders(gStringVar4, sText_NewTrainerCardBadges);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_SMALL_NARROW, 6, TRAINER_CARD_BADGES_TEXT_Y, sNewTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
}

void TrainerCard_FormatRunStatus(u8 *dest)
{
    StringCopy(gStringVar1, GetDifficultyRunQualification() == DIFFICULTY_HARD ? sText_NewTrainerCardHard : sText_NewTrainerCardNormal);

    switch (Nuzlocke_GetRunQualification())
    {
    case OPTIONS_NUZLOCKE_NORMAL:
        StringCopy(gStringVar2, sText_NewTrainerCardNormal);
        break;
    case OPTIONS_NUZLOCKE_HARD:
        StringCopy(gStringVar2, sText_NewTrainerCardHard);
        break;
    default:
        StringCopy(gStringVar2, sText_NewTrainerCardOff);
        break;
    }

    StringCopy(gStringVar3, FlagGet(FLAG_USED_DEBUG_MENU) ? sText_NewTrainerCardUsed : sText_NewTrainerCardNone);
    StringExpandPlaceholders(dest, sText_NewTrainerCardOptions);
}

static void PrintNewTrainerCardOptions(void)
{
    TrainerCard_FormatRunStatus(gStringVar4);
    // Two-pixel separator gaps let the widest labels fit without shrinking glyphs.
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_SMALL_NARROW, 6, 120, sNewTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
}

static void PrintNewTrainerCardBackHeader(void)
{
    s32 x;

    ConvertIntToDecimalStringN(gStringVar1, GetTrainerCardThemeCyclePosition() + 1, STR_CONV_MODE_LEFT_ALIGN, 2);
    StringExpandPlaceholders(gStringVar4, sText_NewTrainerCardBackTheme);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_SMALL_NARROWER, 69, TRAINER_CARD_BACK_HEADER_Y,
        sNewTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);

    StringCopy(gStringVar1, sData->trainerCard.playerName);
    ConvertInternationalString(gStringVar1, sData->language);
    ConvertIntToDecimalStringN(gStringVar2, sData->trainerCard.trainerId, STR_CONV_MODE_LEADING_ZEROS, 5);

    StringExpandPlaceholders(gStringVar4, sText_NewTrainerCardBackTitle);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_SMALL_NARROWER, 6, TRAINER_CARD_BACK_HEADER_Y,
        sNewTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);

    StringExpandPlaceholders(gStringVar4, sText_NewTrainerCardBackHeader);
    x = GetStringRightAlignXOffset(FONT_SMALL_NARROWER, gStringVar4, 218);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_SMALL_NARROWER, x, TRAINER_CARD_BACK_HEADER_Y,
        sNewTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
}

static void PrintNewTrainerCardBackProgress(void)
{
    u8 winRate[4];
    u32 trainerWins = GetCappedGameStat(GAME_STAT_TRAINER_WINS, 9999);
    u32 trainerBattles = GetCappedGameStat(GAME_STAT_TRAINER_BATTLES, 9999);

    ConvertIntToDecimalStringN(gStringVar1, GetCappedGameStat(GAME_STAT_STEPS, 9999), STR_CONV_MODE_LEFT_ALIGN, 4);
    ConvertIntToDecimalStringN(gStringVar2, GetCappedGameStat(GAME_STAT_A_BUTTON_PRESSES, 9999), STR_CONV_MODE_LEFT_ALIGN, 4);
    ConvertIntToDecimalStringN(gStringVar3, GetCappedGameStat(GAME_STAT_TOTAL_BATTLES, 9999), STR_CONV_MODE_LEFT_ALIGN, 4);
    StringExpandPlaceholders(gStringVar4, sText_NewTrainerCardBackProgress);
    StringAppend(gStringVar4, sText_NewTrainerCardBackWinRate);
    ConvertIntToDecimalStringN(winRate, trainerBattles == 0 ? 0 : trainerWins * 100 / trainerBattles, STR_CONV_MODE_LEFT_ALIGN, 3);
    StringAppend(gStringVar4, winRate);
    StringAppend(gStringVar4, sText_NewTrainerCardBackPercent);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_SMALL_NARROWER, 6, TRAINER_CARD_BACK_PROGRESS_Y,
        sNewTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
}

static void PrintNewTrainerCardBackResources(void)
{
    ConvertIntToDecimalStringN(gStringVar1, sData->trainerCard.frontierBP, STR_CONV_MODE_LEFT_ALIGN, 5);
    ConvertIntToDecimalStringN(gStringVar2, GetCoins(), STR_CONV_MODE_LEFT_ALIGN, 4);
    ConvertIntToDecimalStringN(gStringVar3, GetCappedGameStat(GAME_STAT_POKEMON_TRADES, 9999), STR_CONV_MODE_LEFT_ALIGN, 4);
    StringExpandPlaceholders(gStringVar4, sText_NewTrainerCardBackResources);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_SMALL_NARROWER, 6, TRAINER_CARD_BACK_RESOURCES_Y,
        sNewTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
}

static void PrintNewTrainerCardBackActivity(void)
{
    u8 hatchCount[5];

    ConvertIntToDecimalStringN(gStringVar1, GetCappedGameStat(GAME_STAT_FAINTED_POKEMON, 9999), STR_CONV_MODE_LEFT_ALIGN, 4);
    ConvertIntToDecimalStringN(gStringVar2, GetCappedGameStat(GAME_STAT_BATTLES_RUN_FROM, 9999), STR_CONV_MODE_LEFT_ALIGN, 4);
    ConvertIntToDecimalStringN(gStringVar3, GetCappedGameStat(GAME_STAT_EVOLVED_POKEMON, 9999), STR_CONV_MODE_LEFT_ALIGN, 4);
    ConvertIntToDecimalStringN(hatchCount, GetCappedGameStat(GAME_STAT_HATCHED_EGGS, 9999), STR_CONV_MODE_LEFT_ALIGN, 4);
    StringExpandPlaceholders(gStringVar4, sText_NewTrainerCardBackActivity);
    StringAppend(gStringVar4, sText_NewTrainerCardBackActivityHatch);
    StringAppend(gStringVar4, hatchCount);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_SMALL_NARROWER, 6, TRAINER_CARD_BACK_ACTIVITY_Y,
        sNewTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
}

static void PrintNewTrainerCardBackWishMenuAndCandyCount(void)
{
    ConvertIntToDecimalStringN(gStringVar1, GetCappedGameStat(GAME_STAT_WISH_MENU_OPENINGS, 9999), STR_CONV_MODE_LEFT_ALIGN, 4);
    ConvertIntToDecimalStringN(gStringVar2, GetCappedGameStat(GAME_STAT_INFINITE_CANDY_USES, 9999), STR_CONV_MODE_LEFT_ALIGN, 4);
    StringExpandPlaceholders(gStringVar4, sText_NewTrainerCardBackWishMenuAndCandyCount);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_SMALL_NARROWER, 6, TRAINER_CARD_BACK_WISH_MENU_Y,
        sNewTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
}

static void PrintNewTrainerCardBackRadio(void)
{
    u32 radioTime = GetCappedGameStat(GAME_STAT_RADIO_TIME, 0xFFFFFF);
    u32 radioMinutes = radioTime / 60;
    u32 radioSeconds = radioTime % 60;

    ConvertIntToDecimalStringN(gStringVar1, radioMinutes, STR_CONV_MODE_LEFT_ALIGN, 4);
    ConvertIntToDecimalStringN(gStringVar2, radioSeconds, STR_CONV_MODE_LEADING_ZEROS, 2);
    ConvertIntToDecimalStringN(gStringVar3, GetCappedGameStat(GAME_STAT_RADIO_TRACKS, 9999), STR_CONV_MODE_LEFT_ALIGN, 4);
    StringExpandPlaceholders(gStringVar4, sText_NewTrainerCardBackRadio);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_SMALL_NARROWER, 6, TRAINER_CARD_BACK_RADIO_Y,
        sNewTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
}

static void PrintNewTrainerCardBackOnlineRecord(void)
{
    u8 winRate[4];
    u32 onlineBattles = sData->trainerCard.linkBattleWins + sData->trainerCard.linkBattleLosses;

    ConvertIntToDecimalStringN(gStringVar1, sData->trainerCard.linkBattleWins, STR_CONV_MODE_LEFT_ALIGN, 4);
    ConvertIntToDecimalStringN(gStringVar2, sData->trainerCard.linkBattleLosses, STR_CONV_MODE_LEFT_ALIGN, 4);
    StringExpandPlaceholders(gStringVar4, sText_NewTrainerCardBackOnlineRecord);
    StringAppend(gStringVar4, sText_NewTrainerCardBackOnlineWinRate);
    ConvertIntToDecimalStringN(winRate, onlineBattles == 0 ? 0 : sData->trainerCard.linkBattleWins * 100 / onlineBattles, STR_CONV_MODE_LEFT_ALIGN, 3);
    StringAppend(gStringVar4, winRate);
    StringAppend(gStringVar4, sText_NewTrainerCardBackPercent);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_SMALL_NARROWER, 6, TRAINER_CARD_BACK_ONLINE_Y,
        sNewTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
}

static void PrintNewTrainerCardBackChampionRecord(void)
{
    u8 hofTime[16];

    ConvertIntToDecimalStringN(gStringVar1, sData->trainerCard.hofDebutHours, STR_CONV_MODE_LEFT_ALIGN, 3);
    ConvertIntToDecimalStringN(gStringVar2, sData->trainerCard.hofDebutMinutes, STR_CONV_MODE_LEADING_ZEROS, 2);
    ConvertIntToDecimalStringN(gStringVar3, sData->trainerCard.hofDebutSeconds, STR_CONV_MODE_LEADING_ZEROS, 2);
    StringExpandPlaceholders(hofTime, sText_NewTrainerCardBackHofTime);

    ConvertIntToDecimalStringN(gStringVar1, GetCappedGameStat(GAME_STAT_ENTERED_HOF, 999), STR_CONV_MODE_LEFT_ALIGN, 3);
    StringCopy(gStringVar2, hofTime);
    StringExpandPlaceholders(gStringVar4, sText_NewTrainerCardBackChampionRecord);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_SMALL_NARROWER, 6, TRAINER_CARD_BACK_CHAMPION_Y,
        sNewTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
}

static bool8 PrintAllOnCardBack(void)
{
    if (sData->isNewCard)
    {
        switch (sData->printState)
        {
        case 0:
            PrintNewTrainerCardBackHeader();
            break;
        case 1:
            PrintNewTrainerCardBackProgress();
            break;
        case 2:
            PrintNewTrainerCardBackResources();
            break;
        case 3:
            PrintNewTrainerCardBackActivity();
            break;
        case 4:
            PrintNewTrainerCardBackWishMenuAndCandyCount();
            break;
        case 5:
            PrintNewTrainerCardBackRadio();
            break;
        case 6:
            PrintNewTrainerCardBackOnlineRecord();
            break;
        case 7:
            PrintNewTrainerCardBackChampionRecord();
            break;
        default:
            sData->printState = 0;
            return TRUE;
        }
        sData->printState++;
        return FALSE;
    }

    switch (sData->printState)
    {
    case 0:
        PrintNameOnCardBack();
        break;
    case 1:
        PrintHofDebutTimeOnCard();
        break;
    case 2:
        PrintLinkBattleResultsOnCard();
        break;
    case 3:
        PrintTradesStringOnCard();
        break;
    case 4:
        PrintBerryCrushStringOnCard();
        PrintPokeblockStringOnCard();
        break;
    case 5:
        PrintUnionStringOnCard();
        PrintContestStringOnCard();
        break;
    case 6:
        PrintPokemonIconsOnCard();
        PrintBattleFacilityStringOnCard();
        break;
    case 7:
        PrintStickersOnCard();
        break;
    default:
        sData->printState = 0;
        return TRUE;
    }
    sData->printState++;
    return FALSE;
}

static void BufferTextsVarsForCardPage2(void)
{
    BufferNameForCardBack();
    BufferHofDebutTime();
    BufferLinkBattleResults();
    BufferNumTrades();
    BufferBerryCrushPoints();
    BufferUnionRoomStats();
    BufferLinkPokeblocksNum();
    BufferLinkContestNum();
    BufferBattleFacilityStats();
}

static void PrintNameOnCardFront(void)
{
    u8 buffer[32];
    u8 *txtPtr;
    txtPtr = StringCopy(buffer, gText_TrainerCardName);
    StringCopy(txtPtr, sData->trainerCard.playerName);
    ConvertInternationalString(txtPtr, sData->language);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, 20, 28, sTrainerCardTextColors, TEXT_SKIP_DRAW, buffer);
}

static void PrintIdOnCard(void)
{
    u8 buffer[32];
    u8 *txtPtr;
    s32 xPos;
    u32 top;
    txtPtr = StringCopy(buffer, gText_TrainerCardIDNo);
    ConvertIntToDecimalStringN(txtPtr, sData->trainerCard.trainerId, STR_CONV_MODE_LEADING_ZEROS, 5);
    if (sData->cardType == CARD_TYPE_FRLG)
    {
        xPos = GetStringCenterAlignXOffset(FONT_NORMAL, buffer, 80) + 132;
        top = 9;
    }
    else
    {
        xPos = GetStringCenterAlignXOffset(FONT_NORMAL, buffer, 96) + 120;
        top = 9;
    }

    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, xPos, top, sTrainerCardTextColors, TEXT_SKIP_DRAW, buffer);
}

static void PrintMoneyOnCard(void)
{
    s32 xOffset;
    u8 top;

    if (!sData->isHoenn)
        AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, 20, 56, sTrainerCardTextColors, TEXT_SKIP_DRAW, gText_TrainerCardMoney);
    else
        AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, 20, 57, sTrainerCardTextColors, TEXT_SKIP_DRAW, gText_TrainerCardMoney);

    ConvertIntToDecimalStringN(gStringVar1, sData->trainerCard.money, STR_CONV_MODE_LEFT_ALIGN, MAX_MONEY_DIGITS);
    StringExpandPlaceholders(gStringVar4, gText_PokedollarVar1);
    if (!sData->isHoenn)
    {
        xOffset = GetStringRightAlignXOffset(FONT_NORMAL, gStringVar4, 144);
        top = 56;
    }
    else
    {
        xOffset = GetStringRightAlignXOffset(FONT_NORMAL, gStringVar4, 128);
        top = 57;
    }
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, xOffset, top, sTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
}

static u16 GetCaughtMonsCount(void)
{
    if (IsNationalPokedexEnabled())
        return GetNationalPokedexCount(FLAG_GET_CAUGHT);
    else
        return GetHoennPokedexCount(FLAG_GET_CAUGHT);
}

static u16 GetOwnedMonsCount(void)
{
    u32 count = CountPartyNonEggMons();

    if (gPokemonStoragePtr != NULL)
        count += CountStorageNonEggMons();

    return min(count, 999);
}

static void PrintPokedexOnCard(void)
{
    s32 xOffset;
    u8 top;
    if (!sData->isHoenn)
        AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, 20, 72, sTrainerCardTextColors, TEXT_SKIP_DRAW, gText_TrainerCardPokedex);
    else
        AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, 20, 73, sTrainerCardTextColors, TEXT_SKIP_DRAW, gText_TrainerCardPokedex);
    StringCopy(ConvertIntToDecimalStringN(gStringVar4, sData->trainerCard.caughtMonsCount, STR_CONV_MODE_LEFT_ALIGN, 4), gText_EmptyString6);
    if (!sData->isHoenn)
    {
        xOffset = GetStringRightAlignXOffset(FONT_NORMAL, gStringVar4, 144);
        top = 72;
    }
    else
    {
        xOffset = GetStringRightAlignXOffset(FONT_NORMAL, gStringVar4, 128);
        top = 73;
    }
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, xOffset, top, sTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
}

static const u8 *const sTimeColonTextColors[] = {sTrainerCardTextColors, sTimeColonInvisibleTextColors};

static void PrintTimeOnCard(void)
{
    u16 hours;
    u16 minutes;
    s32 width;
    u32 x, y, totalWidth;

    // The custom front card has its own clock line and must never use the
    // legacy TIME label/position.
    if (sData->isNewCard)
        return;

    if (!sData->isHoenn)
        AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, 20, 88, sTrainerCardTextColors, TEXT_SKIP_DRAW, gText_TrainerCardTime);
    else
        AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, 20, 89, sTrainerCardTextColors, TEXT_SKIP_DRAW, gText_TrainerCardTime);

    if (sData->isLink)
    {
        hours = sData->trainerCard.playTimeHours;
        minutes = sData->trainerCard.playTimeMinutes;
    }
    else
    {
        hours = gSaveBlock2Ptr->playTimeHours;
        minutes = gSaveBlock2Ptr->playTimeMinutes;
    }

    if (hours > 999)
        hours = 999;
    if (minutes > 59)
        minutes = 59;
    width = GetStringWidth(FONT_NORMAL, gText_Colon2, 0);

    if (!sData->isHoenn)
    {
        x = 144;
        y = 88;
    }
    else
    {
        x = 128;
        y = 89;
    }
    totalWidth = width + 30;
    x -= totalWidth;

    FillWindowPixelRect(WIN_CARD_TEXT, PIXEL_FILL(0), x, y, totalWidth, 15);
    ConvertIntToDecimalStringN(gStringVar4, hours, STR_CONV_MODE_RIGHT_ALIGN, 3);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, x, y, sTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
    x += 18;
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, x, y, sTimeColonTextColors[sData->timeColonInvisible], TEXT_SKIP_DRAW, gText_Colon2);
    x += width;
    ConvertIntToDecimalStringN(gStringVar4, minutes, STR_CONV_MODE_LEADING_ZEROS, 2);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, x, y, sTrainerCardTextColors, TEXT_SKIP_DRAW, gStringVar4);
}

static void PrintProfilePhraseOnCard(void)
{
    static const u8 yOffsetsLine1[] = {113, 104};
    static const u8 yOffsetsLine2[] = {129, 120};

    if (sData->isLink)
    {
        AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, 8, yOffsetsLine1[sData->isHoenn], sTrainerCardTextColors, TEXT_SKIP_DRAW, sData->easyChatProfile[0]);
        AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, GetStringWidth(FONT_NORMAL, sData->easyChatProfile[0], 0) + 14, yOffsetsLine1[sData->isHoenn], sTrainerCardTextColors, TEXT_SKIP_DRAW, sData->easyChatProfile[1]);
        AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, 8, yOffsetsLine2[sData->isHoenn], sTrainerCardTextColors, TEXT_SKIP_DRAW, sData->easyChatProfile[2]);
        AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, GetStringWidth(FONT_NORMAL, sData->easyChatProfile[2], 0) + 14, yOffsetsLine2[sData->isHoenn], sTrainerCardTextColors, TEXT_SKIP_DRAW, sData->easyChatProfile[3]);
    }
}

static void BufferNameForCardBack(void)
{
    StringCopy(sData->textPlayersCard, sData->trainerCard.playerName);
    ConvertInternationalString(sData->textPlayersCard, sData->language);
    if (sData->cardType != CARD_TYPE_FRLG)
    {
        StringCopy(gStringVar1, sData->textPlayersCard);
        StringExpandPlaceholders(sData->textPlayersCard, gText_Var1sTrainerCard);
    }
}

static void PrintNameOnCardBack(void)
{
    if (!sData->isHoenn)
        AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, 136, 9, sTrainerCardTextColors, TEXT_SKIP_DRAW, sData->textPlayersCard);
    else
        AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, GetStringRightAlignXOffset(FONT_NORMAL, sData->textPlayersCard, 216), 9, sTrainerCardTextColors, TEXT_SKIP_DRAW, sData->textPlayersCard);
}

static const u8 sText_HofTime[] = _("{STR_VAR_1}:{STR_VAR_2}:{STR_VAR_3}");

static void BufferHofDebutTime(void)
{
    if (sData->hasHofResult)
    {
        ConvertIntToDecimalStringN(gStringVar1, sData->trainerCard.hofDebutHours, STR_CONV_MODE_RIGHT_ALIGN, 3);
        ConvertIntToDecimalStringN(gStringVar2, sData->trainerCard.hofDebutMinutes, STR_CONV_MODE_LEADING_ZEROS, 2);
        ConvertIntToDecimalStringN(gStringVar3, sData->trainerCard.hofDebutSeconds, STR_CONV_MODE_LEADING_ZEROS, 2);
        StringExpandPlaceholders(sData->textHofTime, sText_HofTime);
    }
}

static void PrintStatOnBackOfCard(u8 top, const u8 *statName, u8 *stat, const u8 *color)
{
    static const u8 xOffsets[] = {8, 16};
    static const u8 widths[] = {216, 216};

    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, xOffsets[sData->isHoenn], top * 16 + 33, sTrainerCardTextColors, TEXT_SKIP_DRAW, statName);
    AddTextPrinterParameterized3(WIN_CARD_TEXT, FONT_NORMAL, GetStringRightAlignXOffset(FONT_NORMAL, stat, widths[sData->isHoenn]), top * 16 + 33, color, TEXT_SKIP_DRAW, stat);
}

static void PrintHofDebutTimeOnCard(void)
{
    if (sData->hasHofResult)
        PrintStatOnBackOfCard(0, gText_HallOfFameDebut, sData->textHofTime, sTrainerCardStatColors);
}

static const u8 *const sLinkBattleTexts[] =
{
    [CARD_TYPE_FRLG]    = gText_LinkBattles,
    [CARD_TYPE_RS]      = gText_LinkCableBattles,
    [CARD_TYPE_EMERALD] = gText_LinkBattles
};

static void BufferLinkBattleResults(void)
{
    if (sData->hasLinkResults)
    {
        StringCopy(sData->textLinkBattleType, sLinkBattleTexts[sData->cardType]);
        ConvertIntToDecimalStringN(sData->textLinkBattleWins, sData->trainerCard.linkBattleWins, STR_CONV_MODE_LEFT_ALIGN, 4);
        ConvertIntToDecimalStringN(sData->textLinkBattleLosses, sData->trainerCard.linkBattleLosses, STR_CONV_MODE_LEFT_ALIGN, 4);
    }
}

static void PrintLinkBattleResultsOnCard(void)
{
    if (sData->hasLinkResults)
    {
        StringCopy(gStringVar1, sData->textLinkBattleWins);
        StringCopy(gStringVar2, sData->textLinkBattleLosses);
        StringExpandPlaceholders(gStringVar4, gText_WinsLosses);
        PrintStatOnBackOfCard(1, sData->textLinkBattleType, gStringVar4, sTrainerCardTextColors);
    }
}

static void BufferNumTrades(void)
{
    if (sData->hasTrades)
        ConvertIntToDecimalStringN(sData->textNumTrades, sData->trainerCard.pokemonTrades, STR_CONV_MODE_RIGHT_ALIGN, 5);
}

static void PrintTradesStringOnCard(void)
{
    if (sData->hasTrades)
        PrintStatOnBackOfCard(2, gText_PokemonTrades, sData->textNumTrades, sTrainerCardStatColors);
}

static void BufferBerryCrushPoints(void)
{
    if (sData->cardType == CARD_TYPE_FRLG && sData->trainerCard.linkPoints.berryCrush)
        ConvertIntToDecimalStringN(sData->textBerryCrushPts, sData->trainerCard.linkPoints.berryCrush, STR_CONV_MODE_RIGHT_ALIGN, 5);
}

static void PrintBerryCrushStringOnCard(void)
{
    if (sData->cardType == CARD_TYPE_FRLG && sData->trainerCard.linkPoints.berryCrush)
        PrintStatOnBackOfCard(4, gText_BerryCrush, sData->textBerryCrushPts, sTrainerCardStatColors);
}

static void BufferUnionRoomStats(void)
{
    if (sData->cardType == CARD_TYPE_FRLG && sData->trainerCard.unionRoomNum)
        ConvertIntToDecimalStringN(sData->textUnionRoomStats, sData->trainerCard.unionRoomNum, STR_CONV_MODE_RIGHT_ALIGN, 5);
}

static void PrintUnionStringOnCard(void)
{
    if (sData->cardType == CARD_TYPE_FRLG && sData->trainerCard.unionRoomNum)
        PrintStatOnBackOfCard(3, gText_UnionTradesAndBattles, sData->textUnionRoomStats, sTrainerCardStatColors);
}

static void BufferLinkPokeblocksNum(void)
{
    if (sData->cardType != CARD_TYPE_FRLG && sData->trainerCard.pokeblocksWithFriends)
    {
        ConvertIntToDecimalStringN(gStringVar1, sData->trainerCard.pokeblocksWithFriends, STR_CONV_MODE_RIGHT_ALIGN, 5);
        StringExpandPlaceholders(sData->textNumLinkPokeblocks, gText_NumPokeblocks);
    }
}

static void PrintPokeblockStringOnCard(void)
{
    if (sData->cardType != CARD_TYPE_FRLG && sData->trainerCard.pokeblocksWithFriends)
        PrintStatOnBackOfCard(3, gText_PokeblocksWithFriends, sData->textNumLinkPokeblocks, sTrainerCardStatColors);
}

static void BufferLinkContestNum(void)
{
    if (sData->cardType != CARD_TYPE_FRLG && sData->trainerCard.contestsWithFriends)
        ConvertIntToDecimalStringN(sData->textNumLinkContests, sData->trainerCard.contestsWithFriends, STR_CONV_MODE_RIGHT_ALIGN, 5);
}

static void PrintContestStringOnCard(void)
{
    if (sData->cardType != CARD_TYPE_FRLG && sData->trainerCard.contestsWithFriends)
        PrintStatOnBackOfCard(4, gText_WonContestsWFriends, sData->textNumLinkContests, sTrainerCardStatColors);
}

static void BufferBattleFacilityStats(void)
{
    switch (sData->cardType)
    {
    case CARD_TYPE_RS:
        if (sData->hasBattleTowerWins)
        {
            ConvertIntToDecimalStringN(gStringVar1, sData->trainerCard.battleTowerWins, STR_CONV_MODE_RIGHT_ALIGN, 4);
            ConvertIntToDecimalStringN(gStringVar2, sData->trainerCard.battleTowerStraightWins, STR_CONV_MODE_RIGHT_ALIGN, 4);
            StringExpandPlaceholders(sData->textBattleFacilityStat, gText_WinsStraight);
        }
        break;
    case CARD_TYPE_EMERALD:
        if (sData->trainerCard.frontierBP)
        {
            ConvertIntToDecimalStringN(gStringVar1, sData->trainerCard.frontierBP, STR_CONV_MODE_RIGHT_ALIGN, 5);
            StringExpandPlaceholders(sData->textBattleFacilityStat, gText_NumBP);
        }
        break;
    case CARD_TYPE_FRLG:
        break;
    }
}

static void PrintBattleFacilityStringOnCard(void)
{
    switch (sData->cardType)
    {
    case CARD_TYPE_RS:
        if (sData->hasBattleTowerWins)
            PrintStatOnBackOfCard(5, gText_BattleTower, sData->textBattleFacilityStat, sTrainerCardTextColors);
        break;
    case CARD_TYPE_EMERALD:
        if (sData->trainerCard.frontierBP)
            PrintStatOnBackOfCard(5, gText_BattlePtsWon, sData->textBattleFacilityStat, sTrainerCardStatColors);
        break;
    case CARD_TYPE_FRLG:
        break;
    }
}

static void PrintPokemonIconsOnCard(void)
{
    u8 i;
    u8 paletteSlots[PARTY_SIZE] = {5, 6, 7, 14, 9, 10};
    u8 xOffsets[PARTY_SIZE] = {0, 4, 8, 12, 16, 20};

    if (sData->cardType == CARD_TYPE_FRLG)
    {
        for (i = 0; i < PARTY_SIZE; i++)
        {
            if (sData->trainerCard.monSpecies[i])
            {
                WriteSequenceToBgTilemapBuffer(3, 16 * i + 224, xOffsets[i] + 3, 15, 4, 4, paletteSlots[i], 1);
            }
        }
    }
}

static void LoadMonIconGfx(void)
{
    u32 i;
    u32 paletteStart = 5;

    for (i = 0; i < PARTY_SIZE; i++) {
        const u32 *palette;
        if (!sData->trainerCard.monSpecies[i])
            continue;

        palette = GetIconPalette(sData->trainerCard.monSpecies[i], FALSE, FALSE);

        LZ77UnCompWram(palette, sData->monIconPal);

        switch (sData->trainerCard.monIconTint)
        {
        case MON_ICON_TINT_NORMAL:
            break;
        case MON_ICON_TINT_BLACK:
            TintPalette_CustomTone(sData->monIconPal, 16, 0, 0, 0);
            break;
        case MON_ICON_TINT_PINK:
            TintPalette_CustomTone(sData->monIconPal, 16, 500, 330, 310);
            break;
        case MON_ICON_TINT_SEPIA:
            TintPalette_SepiaTone(sData->monIconPal, 16);
            break;
        }

        LoadPalette(sData->monIconPal, i == 3 ? (14*16) : (i+paletteStart)*16, PLTT_SIZE_4BPP);
        LoadBgTiles(3, GetMonIconTiles(sData->trainerCard.monSpecies[i], 0), 512, 16 * i + 32);
    }
}

static void LoadNewTrainerCardSpriteGfx(void)
{
    if (sData->trainerCard.gender == MALE)
    {
        LoadCompressedSpriteSheet(&sTrainerCardBrendanMugshotSheet);
        LoadSpritePalette(&sTrainerCardBrendanMugshotPal);
    }
    else
    {
        LoadCompressedSpriteSheet(&sTrainerCardMayMugshotSheet);
        LoadSpritePalette(&sTrainerCardMayMugshotPal);
    }

    if (FlagGet(FLAG_IS_CHAMPION))
    {
        LoadCompressedSpriteSheet(&sTrainerCardChampionRibbonSheet);
        LoadSpritePalette(&sTrainerCardChampionRibbonPal);
        if (FlagGet(FLAG_DEFEATED_CHAMPION_HARD))
            ApplyHardChampionRibbonMark();
    }

    if (HasPermanentChaosMark())
    {
        u8 *tiles = AllocZeroed(64 * 64 / 2);
        if (tiles != NULL)
        {
            struct SpriteSheet sheet = {tiles, 64 * 64 / 2, TRAINER_CARD_CHAOS_MARK_TAG};
            u16 palette[16] = {0};
            struct SpritePalette spritePalette = {palette, TRAINER_CARD_CHAOS_MARK_TAG};
            TrainerCard_BuildChaosMarkTiles(tiles);
            LoadSpriteSheet(&sheet);
            // PNG has five indexed colors; pad the unused entries safely.
            // Index zero is still the original transparent green color key.
            memcpy(palette, sTrainerCardChaosMark_Pal, sizeof(sTrainerCardChaosMark_Pal));
            LoadSpritePalette(&spritePalette);
            Free(tiles);
        }
    }

    LoadMonIconPalettes();
}

static void ApplyHardChampionRibbonMark(void)
{
    u16 tileStart = GetSpriteTileStartByTag(TRAINER_CARD_CHAMPION_RIBBON_TAG);
    u8 *tileData;
    u8 x, y;

    if (tileStart == 0xFFFF)
        return;

    tileData = (u8 *)OBJ_VRAM0 + tileStart * TILE_SIZE_4BPP;

    for (y = 0; y < ARRAY_COUNT(sTrainerCardHardChampionMark); y++)
    {
        for (x = 0; x < ARRAY_COUNT(sTrainerCardHardChampionMark[0]); x++)
        {
            u8 color = sTrainerCardHardChampionMark[y][x];
            u8 *pixel;
            u8 shift;

            if (color == 0)
                continue;

            // Put the mark on the lower-right of the 64x64 ribbon sprite,
            // matching the placement of the H on each hard badge.
            pixel = tileData
                  + ((y + 44) / 8 * 8 + (x + 47) / 8) * TILE_SIZE_4BPP
                  + ((y + 44) % 8) * 4
                  + ((x + 47) % 8) / 2;
            shift = ((x + 47) & 1) * 4;
            *pixel = (*pixel & (0xF0 >> shift)) | (color << shift);
        }
    }
}

static void CreateNewTrainerCardSprites(void)
{
    u8 i;

    sData->mugshotSpriteId = CreateSprite(&sTrainerCardMugshotTemplate, 184, 51, 0);
    if (sData->mugshotSpriteId != SPRITE_NONE)
    {
        gSprites[sData->mugshotSpriteId].oam.priority = 0;
        StartSpriteAnim(&gSprites[sData->mugshotSpriteId], 0);
    }

    if (FlagGet(FLAG_IS_CHAMPION))
    {
        sData->championRibbonSpriteId = CreateSprite(&sTrainerCardChampionRibbonTemplate, 214, 83, 0);
        if (sData->championRibbonSpriteId != SPRITE_NONE)
            gSprites[sData->championRibbonSpriteId].oam.priority = 0;
    }

    if (HasPermanentChaosMark() && GetSpriteTileStartByTag(TRAINER_CARD_CHAOS_MARK_TAG) != TAG_NONE)
    {
        // Top-left is (144,56): move the mark 16px right and 8px down
        // to match the requested green-overlay position.
        sData->chaosMarkSpriteId = CreateSprite(&sTrainerCardChaosMarkTemplate, 176, 88, 0);
        if (sData->chaosMarkSpriteId != SPRITE_NONE)
        {
            gSprites[sData->chaosMarkSpriteId].oam.priority = 0;
            if (sData->mugshotSpriteId != SPRITE_NONE)
                gSprites[sData->mugshotSpriteId].subpriority = 1;
        }
    }

    for (i = 0; i < PARTY_SIZE; i++)
    {
        u16 species = GetMonData(&gPlayerParty[i], MON_DATA_SPECIES_OR_EGG);

        if (species == SPECIES_NONE)
            continue;

        sData->partyIconSpriteIds[i] = CreateMonIcon(
            species,
            SpriteCB_MonIcon,
            28 + (37 * i),
            112,
            0,
            GetMonData(&gPlayerParty[i], MON_DATA_PERSONALITY));
        if (sData->partyIconSpriteIds[i] != SPRITE_NONE)
            gSprites[sData->partyIconSpriteIds[i]].oam.priority = 0;

    }
}

static void DestroyNewTrainerCardSprites(void)
{
    u8 i;

    if (sData->mugshotSpriteId != SPRITE_NONE)
        DestroySprite(&gSprites[sData->mugshotSpriteId]);

    FreeSpriteTilesByTag(TRAINER_CARD_MUGSHOT_TAG);
    FreeSpritePaletteByTag(TRAINER_CARD_MUGSHOT_TAG);

    if (sData->championRibbonSpriteId != SPRITE_NONE)
        DestroySprite(&gSprites[sData->championRibbonSpriteId]);

    FreeSpriteTilesByTag(TRAINER_CARD_CHAMPION_RIBBON_TAG);
    FreeSpritePaletteByTag(TRAINER_CARD_CHAMPION_RIBBON_TAG);

    if (sData->chaosMarkSpriteId != SPRITE_NONE)
        DestroySprite(&gSprites[sData->chaosMarkSpriteId]);
    FreeSpriteTilesByTag(TRAINER_CARD_CHAOS_MARK_TAG);
    FreeSpritePaletteByTag(TRAINER_CARD_CHAOS_MARK_TAG);

    for (i = 0; i < PARTY_SIZE; i++)
    {
        if (sData->partyIconSpriteIds[i] != SPRITE_NONE)
            FreeAndDestroyMonIconSprite(&gSprites[sData->partyIconSpriteIds[i]]);
    }

    FreeMonIconPalettes();
}

static void SetNewTrainerCardSpritesVisible(bool8 visible)
{
    u8 i;

    if (sData->mugshotSpriteId != SPRITE_NONE)
        gSprites[sData->mugshotSpriteId].invisible = !visible;
    if (sData->championRibbonSpriteId != SPRITE_NONE)
        gSprites[sData->championRibbonSpriteId].invisible = !visible;
    if (sData->chaosMarkSpriteId != SPRITE_NONE)
        gSprites[sData->chaosMarkSpriteId].invisible = !visible;

    for (i = 0; i < PARTY_SIZE; i++)
    {
        if (sData->partyIconSpriteIds[i] != SPRITE_NONE)
            gSprites[sData->partyIconSpriteIds[i]].invisible = !visible;
    }
}

static void PrintStickersOnCard(void)
{
    u8 i;
    u8 paletteSlots[4] = {11, 12, 13, 13};

    if (sData->cardType == CARD_TYPE_FRLG && sData->trainerCard.shouldDrawStickers == TRUE)
    {
        for (i = 0; i < TRAINER_CARD_STICKER_TYPES; i++)
        {
            u8 sticker = sData->trainerCard.stickers[i];
            if (sData->trainerCard.stickers[i])
                WriteSequenceToBgTilemapBuffer(3, i * 4 + 320, i * 3 + 2, 2, 2, 2, paletteSlots[sticker - 1], 1);
        }
    }
}

static void LoadStickerGfx(void)
{
    LoadPalette(sTrainerCardSticker1_Pal, BG_PLTT_ID(11), PLTT_SIZE_4BPP);
    LoadPalette(sTrainerCardSticker2_Pal, BG_PLTT_ID(12), PLTT_SIZE_4BPP);
    LoadPalette(sTrainerCardSticker3_Pal, BG_PLTT_ID(13), PLTT_SIZE_4BPP);
    // LoadPalette(sTrainerCardSticker4_Pal, BG_PLTT_ID(14), PLTT_SIZE_4BPP);
    LoadBgTiles(3, sData->stickerTiles, 1024, 128);
}

static void DrawTrainerCardWindow(u8 windowId)
{
    PutWindowTilemap(windowId);
    CopyWindowToVram(windowId, COPYWIN_FULL);
}

static u8 SetCardBgsAndPals(void)
{
    if (sData->isNewCard)
    {
        switch (sData->bgPalLoadState)
        {
        case 0:
            LoadBgTiles(0, sNewTrainerCard_Gfx, sizeof(sNewTrainerCard_Gfx), 0);
            break;
        case 1:
            // Some map entries use palette bits. The source card has one
            // palette, so mirror it into all referenced BG palette slots.
            LoadPalette(sNewTrainerCard_Pal, BG_PLTT_ID(0), PLTT_SIZE_4BPP);
            LoadPalette(sNewTrainerCard_Pal, BG_PLTT_ID(1), PLTT_SIZE_4BPP);
            LoadPalette(sNewTrainerCard_Pal, BG_PLTT_ID(2), PLTT_SIZE_4BPP);
            LoadPalette(sNewTrainerCard_Pal, BG_PLTT_ID(3), PLTT_SIZE_4BPP);
            LoadPalette(sNewTrainerCardBackdrop_Pal, BG_PLTT_ID(0), sizeof(sNewTrainerCardBackdrop_Pal));
            break;
        case 2:
            LoadBgTiles(2, sTrainerCardScrolling_Gfx, sizeof(sTrainerCardScrolling_Gfx), 0);
            break;
        case 3:
            LoadPalette(sTrainerCardScrolling_Pal, BG_PLTT_ID(TRAINER_CARD_SCROLL_BG_PALETTE), PLTT_SIZE_4BPP);
            ApplyTrainerCardThemePalettes();
            break;
        case 4:
            // Keep badges on a separate priority layer so their transparent
            // pixels reveal the new card underneath instead of the backdrop.
            LoadBgTiles(3, sData->badgeTiles, ARRAY_COUNT(sData->badgeTiles), 0);
            break;
        case 5:
            if (sData->cardType != CARD_TYPE_FRLG)
                LoadPalette(sHoennTrainerCardBadges_Pal, BG_PLTT_ID(4), PLTT_SIZE_4BPP);
            else
                LoadPalette(sKantoTrainerCardBadges_Pal, BG_PLTT_ID(4), PLTT_SIZE_4BPP);
            break;
        case 6:
            SetBgTilemapBuffer(0, sData->cardTilemapBuffer);
            SetBgTilemapBuffer(2, sData->bgTilemapBuffer);
            // Use a dedicated cleared buffer for BG3; this prevents the
            // legacy team/portrait tilemap from surviving into the new card.
            SetBgTilemapBuffer(3, sData->badgeTilemapBuffer);
            break;
        case 7:
            FillBgTilemapBufferRect_Palette0(2, 0, 0, 0, 32, 32);
            // BG3 used to contain the old trainer-card portrait/badges.
            FillBgTilemapBufferRect_Palette0(3, 0, 0, 0, 32, 32);
            LoadNewTrainerCardScrollingBackground();
            break;
        default:
            return 1;
        }
        sData->bgPalLoadState++;
        return 0;
    }

    switch (sData->bgPalLoadState)
    {
    case 0:
        LoadBgTiles(3, sData->badgeTiles, ARRAY_COUNT(sData->badgeTiles), 0);
        break;
    case 1:
        LoadBgTiles(0, sData->cardTiles, 0x1800, 0);
        // BG2 uses its own character block so the animated card backdrop does
        // not overwrite the legacy trainer-card tiles on BG0.
        LoadBgTiles(2, sData->cardTiles, 0x1800, 0);
        break;
    case 2:
        if (sData->cardType != CARD_TYPE_FRLG)
        {
            LoadPalette(sHoennTrainerCardPals[sData->trainerCard.stars], BG_PLTT_ID(0), 3 * PLTT_SIZE_4BPP);
            LoadPalette(sHoennTrainerCardBadges_Pal, BG_PLTT_ID(3), PLTT_SIZE_4BPP);
            if (sData->trainerCard.gender != MALE)
                LoadPalette(sHoennTrainerCardFemaleBg_Pal, BG_PLTT_ID(1), PLTT_SIZE_4BPP);
        }
        else
        {
            LoadPalette(sKantoTrainerCardPals[sData->trainerCard.stars], BG_PLTT_ID(0), 3 * PLTT_SIZE_4BPP);
            LoadPalette(sKantoTrainerCardBadges_Pal, BG_PLTT_ID(3), PLTT_SIZE_4BPP);
            if (sData->trainerCard.gender != MALE)
                LoadPalette(sKantoTrainerCardFemaleBg_Pal, BG_PLTT_ID(1), PLTT_SIZE_4BPP);
        }
        LoadPalette(sTrainerCardStar_Pal, BG_PLTT_ID(4), PLTT_SIZE_4BPP);
        break;
    case 3:
        SetBgTilemapBuffer(0, sData->cardTilemapBuffer);
        SetBgTilemapBuffer(2, sData->bgTilemapBuffer);
        break;
    case 4:
        FillBgTilemapBufferRect_Palette0(0, 0, 0, 0, 32, 32);
        FillBgTilemapBufferRect_Palette0(2, 0, 0, 0, 32, 32);
        FillBgTilemapBufferRect_Palette0(3, 0, 0, 0, 32, 32);
    default:
        return 1;
    }
    sData->bgPalLoadState++;
    return 0;
}

static void DrawCardScreenBackground(u16 *ptr)
{
    s16 i, j;
    u16 *dst = sData->bgTilemapBuffer;

    for (i = 0; i < 20; i++)
    {
        for (j = 0; j < 32; j++)
        {
            if (j < 30)
                dst[32 * i + j] = ptr[30 * i + j];
            else
                dst[32 * i + j] = ptr[0];
        }
    }
    CopyBgTilemapBufferToVram(2);
}

static void LoadNewTrainerCardScrollingBackground(void)
{
    u32 x, y;
    vu16 *dst = (vu16 *)BG_SCREEN_ADDR(TRAINER_CARD_SCROLL_BG_SCREENBASE);

    // BG2 is 32x64 tiles. Repeat the authored 32x24 map far enough to keep
    // the full card viewport covered while the camera moves vertically.
    for (y = 0; y < TRAINER_CARD_SCROLL_BG_HEIGHT; y++)
    {
        const u32 srcY = y % TRAINER_CARD_SCROLL_SOURCE_HEIGHT;

        for (x = 0; x < TRAINER_CARD_SCROLL_SOURCE_WIDTH; x++)
        {
            const u16 entry = sTrainerCardScrolling_Tilemap[srcY * TRAINER_CARD_SCROLL_SOURCE_WIDTH + x];
            dst[y * TRAINER_CARD_SCROLL_SOURCE_WIDTH + x] =
                (entry & 0x0FFF) | (TRAINER_CARD_SCROLL_BG_PALETTE << 12);
        }
    }
}

static void UpdateNewTrainerCardScrollingBackground(void)
{
    // Match Options: decreasing the camera offsets makes the artwork drift
    // down and to the right, with the same smooth diagonal speed and loops.
    if (sData->bgScrollX <= TRAINER_CARD_SCROLL_SPEED_X)
        sData->bgScrollX = TRAINER_CARD_SCROLL_X_PERIOD_PIXELS << 8;
    else
        sData->bgScrollX -= TRAINER_CARD_SCROLL_SPEED_X;

    if (sData->bgScrollY <= TRAINER_CARD_SCROLL_SPEED_Y)
        sData->bgScrollY = TRAINER_CARD_SCROLL_Y_PERIOD_PIXELS << 8;
    else
        sData->bgScrollY -= TRAINER_CARD_SCROLL_SPEED_Y;

    ChangeBgX(2, sData->bgScrollX, BG_COORD_SET);
    ChangeBgY(2, sData->bgScrollY, BG_COORD_SET);
}

static void LoadTrainerCardColorThemeFromSave(void)
{
    sData->colorTheme = TrainerCard_GetColorTheme();
}

u8 TrainerCard_GetColorTheme(void)
{
    if (gSaveBlock1Ptr != NULL
     && gSaveBlock1Ptr->hlwSave.future[HLW_MEDIA_PARTY_THEME_OFFSET] < TRAINER_CARD_THEME_COUNT)
    {
        return gSaveBlock1Ptr->hlwSave.future[HLW_MEDIA_PARTY_THEME_OFFSET];
    }

    return 0;
}

const struct TrainerCardThemeColors *TrainerCard_GetColorThemeColors(void)
{
    return &sTrainerCardThemeColors[TrainerCard_GetColorTheme()];
}

const u8 *TrainerCard_GetColorThemeName(void)
{
    return sTrainerCardThemeNames[TrainerCard_GetColorTheme()];
}

static u8 GetTrainerCardThemeCyclePosition(void)
{
    u8 i;

    for (i = 0; i < TRAINER_CARD_THEME_COUNT; i++)
    {
        if (sTrainerCardThemeCycleOrder[i] == sData->colorTheme)
            return i;
    }

    return 0;
}

u8 TrainerCard_GetColorThemeCyclePosition(void)
{
    u8 i;
    u8 current = TrainerCard_GetColorTheme();

    for (i = 0; i < TRAINER_CARD_THEME_COUNT; i++)
    {
        if (sTrainerCardThemeCycleOrder[i] == current)
            return i;
    }

    return 0;
}

void TrainerCard_CycleColorTheme(s8 direction)
{
    u8 position = 0;
    u8 current = TrainerCard_GetColorTheme();

    for (position = 0; position < TRAINER_CARD_THEME_COUNT; position++)
    {
        if (sTrainerCardThemeCycleOrder[position] == current)
            break;
    }

    if (position >= TRAINER_CARD_THEME_COUNT)
        position = 0;
    else if (direction > 0)
        position = (position + 1) % TRAINER_CARD_THEME_COUNT;
    else if (position > 0)
        position--;
    else
        position = TRAINER_CARD_THEME_COUNT - 1;

    if (gSaveBlock1Ptr != NULL)
        gSaveBlock1Ptr->hlwSave.future[HLW_MEDIA_PARTY_THEME_OFFSET] = sTrainerCardThemeCycleOrder[position];

    if (sData != NULL)
    {
        sData->colorTheme = sTrainerCardThemeCycleOrder[position];
        ApplyTrainerCardThemePalettes();
    }
}

static void ChangeTrainerCardColorTheme(s8 direction)
{
    TrainerCard_CycleColorTheme(direction);
}

static void ApplyTrainerCardThemePalettes(void)
{
    u16 cardPalette[16];
    u16 scrollPalette[16];
    const struct TrainerCardThemeColors *theme;
    u8 i;

    CpuCopy16(sNewTrainerCard_Pal, cardPalette, sizeof(cardPalette));
    CpuCopy16(sTrainerCardScrolling_Pal, scrollPalette, sizeof(scrollPalette));

    // Palette index 0 is transparent in both BGs. Give the hardware backdrop
    // a dark theme color so the old green key color can never leak through.
    cardPalette[0] = sNewTrainerCardBackdrop_Pal[0];
    scrollPalette[0] = sNewTrainerCardBackdrop_Pal[0];

    if (sData->colorTheme != 0)
    {
        theme = &sTrainerCardThemeColors[sData->colorTheme];

        cardPalette[0] = theme->charcoal;
        scrollPalette[0] = theme->charcoal;

        // Re-map the card's neutral ramp while keeping its colored accent.
        cardPalette[1] = theme->light;
        cardPalette[2] = theme->light;
        cardPalette[3] = theme->detail;
        cardPalette[4] = theme->light;
        cardPalette[5] = theme->mid;
        cardPalette[6] = theme->mid;
        cardPalette[7] = theme->dark;
        cardPalette[8] = theme->charcoal;
        cardPalette[9] = theme->dark1;
        cardPalette[10] = theme->deep;
        cardPalette[11] = theme->black2;
        cardPalette[12] = theme->nearBlack;

        // Apply the same theme ramp to the moving background.
        scrollPalette[1] = theme->mid;
        scrollPalette[2] = theme->dark;
        scrollPalette[3] = theme->deep;
        scrollPalette[4] = theme->black2;
        scrollPalette[5] = theme->nearBlack;
        scrollPalette[6] = theme->nearBlack;
        scrollPalette[7] = theme->nearBlack;
    }

    for (i = 0; i < 4; i++)
        LoadPalette(cardPalette, BG_PLTT_ID(i), PLTT_SIZE_4BPP);
    LoadPalette(scrollPalette, BG_PLTT_ID(TRAINER_CARD_SCROLL_BG_PALETTE), PLTT_SIZE_4BPP);
}

static void LoadNewTrainerCardFrontGraphics(void)
{
    LoadBgTiles(0, sNewTrainerCard_Gfx, sizeof(sNewTrainerCard_Gfx), 0);
    LoadBgTiles(2, sTrainerCardScrolling_Gfx, sizeof(sTrainerCardScrolling_Gfx), 0);
    ApplyTrainerCardThemePalettes();
    if (sData->cardType != CARD_TYPE_FRLG)
        LoadPalette(sHoennTrainerCardBadges_Pal, BG_PLTT_ID(4), PLTT_SIZE_4BPP);
    else
        LoadPalette(sKantoTrainerCardBadges_Pal, BG_PLTT_ID(4), PLTT_SIZE_4BPP);
    LoadNewTrainerCardScrollingBackground();
    ChangeBgX(2, sData->bgScrollX, BG_COORD_SET);
    ChangeBgY(2, sData->bgScrollY, BG_COORD_SET);
}

static void LoadNewTrainerCardBackGraphics(void)
{
    LoadBgTiles(0, sNewTrainerCardBack_Gfx, sizeof(sNewTrainerCardBack_Gfx), 0);
    LoadBgTiles(2, sTrainerCardScrolling_Gfx, sizeof(sTrainerCardScrolling_Gfx), 0);
    ApplyTrainerCardThemePalettes();
    LoadNewTrainerCardScrollingBackground();
    ChangeBgX(2, sData->bgScrollX, BG_COORD_SET);
    ChangeBgY(2, sData->bgScrollY, BG_COORD_SET);
}

static void DrawCardFrontOrBack(u16 *ptr)
{
    s16 i, j;
    u16 *dst = sData->cardTilemapBuffer;

    for (i = 0; i < 20; i++)
    {
        for (j = 0; j < 32; j++)
        {
            if (j < 30)
                dst[32 * i + j] = ptr[30 * i + j];
            else
                dst[32 * i + j] = ptr[0];
        }
    }
    CopyBgTilemapBufferToVram(0);
}

// Tunable placement for the badge row. The badge icon is 2x2 tiles (16x16 px).
// BADGE_X_START/BADGE_X_STEP control the horizontal position of badge 1 and the
// spacing between badges; BADGE_Y_TOP is the tile row the icon's top half is
// drawn on (the bottom half is drawn one row below, at BADGE_Y_TOP + 1).
// Nudge these if the icons don't line up with the numbered boxes on your card background.
#define BADGE_X_START 4
#define BADGE_X_STEP  3
#define BADGE_Y_TOP   16

static void DrawStarsAndBadgesOnCard(void)
{
    static const u8 yOffsets[] = {7, 7};

    s16 i, x;
    u16 tileNum = 192;
    u8 palNum = 3;

    if (sData->isNewCard)
    {
        // The new card has one compact row for the eight real Hoenn badges.
        // Badge graphics are 2x2 tiles, so keep them contiguous like the mockup.
        palNum = 4;
        x = 2;
        for (i = 0; i < NUM_BADGES; i++, tileNum += 2, x += 2)
        {
            if (sData->badgeCount[i])
            {
                FillBgTilemapBufferRect(3, tileNum, x, 10, 1, 1, palNum);
                FillBgTilemapBufferRect(3, tileNum + 1, x + 1, 10, 1, 1, palNum);
                FillBgTilemapBufferRect(3, tileNum + 16, x, 11, 1, 1, palNum);
                FillBgTilemapBufferRect(3, tileNum + 17, x + 1, 11, 1, 1, palNum);
            }
        }
        CopyBgTilemapBufferToVram(3);
        return;
    }

    FillBgTilemapBufferRect(3, 143, 15, yOffsets[sData->isHoenn], sData->trainerCard.stars, 1, 4);
    if (!sData->isLink)
    {
        x = BADGE_X_START;
        for (i = 0; i < NUM_BADGES; i++, tileNum += 2, x += BADGE_X_STEP)
        {
            if (sData->badgeCount[i])
            {
                FillBgTilemapBufferRect(3, tileNum, x, BADGE_Y_TOP, 1, 1, palNum);
                FillBgTilemapBufferRect(3, tileNum + 1, x + 1, BADGE_Y_TOP, 1, 1, palNum);
                FillBgTilemapBufferRect(3, tileNum + 16, x, BADGE_Y_TOP + 1, 1, 1, palNum);
                FillBgTilemapBufferRect(3, tileNum + 17, x + 1, BADGE_Y_TOP + 1, 1, 1, palNum);
            }
        }
    }
    CopyBgTilemapBufferToVram(3);
}

static void DrawCardBackStats(void)
{
    if (sData->cardType == CARD_TYPE_FRLG)
    {
        if (sData->hasTrades)
        {
            FillBgTilemapBufferRect(3, 141, 27, 9, 1, 1, 1);
            FillBgTilemapBufferRect(3, 157, 27, 10, 1, 1, 1);
        }
        if (sData->trainerCard.linkPoints.berryCrush)
        {
            FillBgTilemapBufferRect(3, 141, 21, 13, 1, 1, 1);
            FillBgTilemapBufferRect(3, 157, 21, 14, 1, 1, 1);
        }
        if (sData->trainerCard.unionRoomNum)
        {
            FillBgTilemapBufferRect(3, 141, 27, 11, 1, 1, 1);
            FillBgTilemapBufferRect(3, 157, 27, 12, 1, 1, 1);
        }
    }
    else
    {
        if (sData->hasTrades)
        {
            FillBgTilemapBufferRect(3, 141, 27, 9, 1, 1, 0);
            FillBgTilemapBufferRect(3, 157, 27, 10, 1, 1, 0);
        }
        if (sData->trainerCard.contestsWithFriends)
        {
            FillBgTilemapBufferRect(3, 141, 27, 13, 1, 1, 0);
            FillBgTilemapBufferRect(3, 157, 27, 14, 1, 1, 0);
        }
        if (sData->hasBattleTowerWins)
        {
            FillBgTilemapBufferRect(3, 141, 17, 15, 1, 1, 0);
            FillBgTilemapBufferRect(3, 157, 17, 16, 1, 1, 0);
            FillBgTilemapBufferRect(3, 140, 27, 15, 1, 1, 0);
            FillBgTilemapBufferRect(3, 156, 27, 16, 1, 1, 0);
        }
    }
    CopyBgTilemapBufferToVram(3);
}

static void BlinkTimeColon(void)
{
    if (++sData->timeColonBlinkTimer > 60)
    {
        sData->timeColonBlinkTimer = 0;
        sData->timeColonInvisible ^= 1;
        sData->timeColonNeedDraw = TRUE;
    }
}

u8 GetTrainerCardStars(u8 cardId)
{
    struct TrainerCard *trainerCards = gTrainerCards;
    return trainerCards[cardId].stars;
}

#define tFlipState data[0]
#define tCardTop   data[1]

static void FlipTrainerCard(void)
{
    u8 taskId = CreateTask(Task_DoCardFlipTask, 0);
    Task_DoCardFlipTask(taskId);
    SetHBlankCallback(HblankCb_TrainerCard);
}

static bool8 IsCardFlipTaskActive(void)
{
    if (FindTaskIdByFunc(Task_DoCardFlipTask) == TASK_NONE)
        return TRUE;
    else
        return FALSE;
}

static void Task_DoCardFlipTask(u8 taskId)
{
    while(sTrainerCardFlipTasks[gTasks[taskId].tFlipState](&gTasks[taskId]))
        ;
}

static bool8 Task_BeginCardFlip(struct Task *task)
{
    u32 i;

    if (sData->isNewCard && !sData->onBack)
        SetNewTrainerCardSpritesVisible(FALSE);
    HideBg(1);
    HideBg(3);
    ScanlineEffect_Stop();
    ScanlineEffect_Clear();
    for (i = 0; i < DISPLAY_HEIGHT; i++)
        gScanlineEffectRegBuffers[1][i] = 0;
    task->tFlipState++;
    return FALSE;
}

// Note: Cannot be DISPLAY_HEIGHT / 2, or cardHeight will be 0
#define CARD_FLIP_Y ((DISPLAY_HEIGHT / 2) - 3)

static bool8 Task_AnimateCardFlipDown(struct Task *task)
{
    u32 cardHeight, r5, r10, cardTop, r6, var_24, cardBottom, var;
    s16 i;

    sData->allowDMACopy = FALSE;
    if (task->tCardTop >= CARD_FLIP_Y)
        task->tCardTop = CARD_FLIP_Y;
    else
        task->tCardTop += 7;

    sData->cardTop = task->tCardTop;
    UpdateCardFlipRegs(task->tCardTop);

    cardTop = task->tCardTop;
    cardBottom = DISPLAY_HEIGHT - cardTop;
    cardHeight = cardBottom - cardTop;
    r6 = -cardTop << 16;
    r5 = (DISPLAY_HEIGHT << 16) / cardHeight;
    r5 -= 1 << 16;
    var_24 = r6;
    var_24 += r5 * cardHeight;
    r10 = r5 / cardHeight;
    r5 *= 2;

    for (i = 0; i < cardTop; i++)
        gScanlineEffectRegBuffers[0][i] = -i;
    for (; i < (s16)cardBottom; i++)
    {
        var = r6 >> 16;
        r6 += r5;
        r5 -= r10;
        gScanlineEffectRegBuffers[0][i] = var;
    }
    var = var_24 >> 16;
    for (; i < DISPLAY_HEIGHT; i++)
        gScanlineEffectRegBuffers[0][i] = var;

    sData->allowDMACopy = TRUE;
    if (task->tCardTop >= CARD_FLIP_Y)
        task->tFlipState++;

    return FALSE;
}

static bool8 Task_DrawFlippedCardSide(struct Task *task)
{
    sData->allowDMACopy = FALSE;
    if (Overworld_IsRecvQueueAtMax() == TRUE)
        return FALSE;

    do
    {
        switch (sData->flipDrawState)
        {
        case 0:
            if (sData->isNewCard)
            {
                if (sData->onBack)
                    LoadNewTrainerCardFrontGraphics();
                else
                    LoadNewTrainerCardBackGraphics();
            }
            FillWindowPixelBuffer(WIN_CARD_TEXT, PIXEL_FILL(0));
            FillBgTilemapBufferRect_Palette0(3, 0, 0, 0, 0x20, 0x20);
            if (sData->isNewCard)
                CopyBgTilemapBufferToVram(3);
            break;
        case 1:
            if (!sData->onBack)
            {
                if (!PrintAllOnCardBack())
                    return FALSE;
            }
            else
            {
                if (!PrintAllOnCardFront())
                    return FALSE;
            }
            break;
        case 2:
            if (!sData->onBack)
            {
                DrawCardFrontOrBack(sData->backTilemap);
            }
            else
                DrawTrainerCardWindow(WIN_CARD_TEXT);
            break;
        case 3:
            if (!sData->onBack && !sData->isNewCard)
                DrawCardBackStats();
            else
                FillWindowPixelBuffer(WIN_TRAINER_PIC, PIXEL_FILL(0));
            break;
        case 4:
            if (sData->onBack)
                CreateTrainerCardTrainerPic();
            break;
        default:
            task->tFlipState++;
            sData->allowDMACopy = TRUE;
            sData->flipDrawState = 0;
            return FALSE;
        }
        sData->flipDrawState++;
    } while (gReceivedRemoteLinkPlayers == 0);

    return FALSE;
}

static bool8 Task_SetCardFlipped(struct Task *task)
{
    sData->allowDMACopy = FALSE;

    // If on back of card, draw front of card because its being flipped
    if (sData->onBack)
    {
        if (!sData->isNewCard)
        {
            DrawTrainerCardWindow(WIN_TRAINER_PIC);
            DrawCardScreenBackground(sData->bgTilemap);
        }
        DrawCardFrontOrBack(sData->frontTilemap);
        DrawStarsAndBadgesOnCard();
        if (sData->isNewCard)
            SetNewTrainerCardSpritesVisible(TRUE);
    }
    DrawTrainerCardWindow(WIN_CARD_TEXT);
    sData->onBack ^= 1;
    task->tFlipState++;
    sData->allowDMACopy = TRUE;
    PlaySE(SE_RG_CARD_FLIPPING);
    return FALSE;
}

static bool8 Task_AnimateCardFlipUp(struct Task *task)
{
    u32 cardHeight, r5, r10, cardTop, r6, var_24, cardBottom, var;
    s16 i;

    sData->allowDMACopy = FALSE;
    if (task->tCardTop <= 5)
        task->tCardTop = 0;
    else
        task->tCardTop -= 5;

    sData->cardTop = task->tCardTop;
    UpdateCardFlipRegs(task->tCardTop);

    cardTop = task->tCardTop;
    cardBottom = DISPLAY_HEIGHT - cardTop;
    cardHeight = cardBottom - cardTop;
    r6 = -cardTop << 16;
    r5 = (DISPLAY_HEIGHT << 16) / cardHeight;
    r5 -= 1 << 16;
    var_24 = r6;
    var_24 += r5 * cardHeight;
    r10 = r5 / cardHeight;
    r5 /= 2;

    for (i = 0; i < cardTop; i++)
        gScanlineEffectRegBuffers[0][i] = -i;
    for (; i < (s16)cardBottom; i++)
    {
        var = r6 >> 16;
        r6 += r5;
        r5 += r10;
        gScanlineEffectRegBuffers[0][i] = var;
    }
    var = var_24 >> 16;
    for (; i < DISPLAY_HEIGHT; i++)
        gScanlineEffectRegBuffers[0][i] = var;

    sData->allowDMACopy = TRUE;
    if (task->tCardTop <= 0)
        task->tFlipState++;

    return FALSE;
}

static bool8 Task_EndCardFlip(struct Task *task)
{
    ShowBg(1);
    ShowBg(3);
    SetHBlankCallback(NULL);
    DestroyTask(FindTaskIdByFunc(Task_DoCardFlipTask));
    return FALSE;
}

void ShowPlayerTrainerCard(void (*callback)(void))
{
    Randomizer_RecordActiveChaosUsage();
    sData = AllocZeroed(sizeof(*sData));
    sData->callback2 = callback;
    // Profile transitions use the same black fade in both directions. The
    // previous white fade was especially harsh when returning from the card
    // to the Frontier Pass.
    sData->blendColor = RGB_BLACK;

    if (InUnionRoom() == TRUE)
        sData->isLink = TRUE;
    else
        sData->isLink = FALSE;

    sData->isNewCard = !sData->isLink;
    sData->language = GAME_LANGUAGE;
    TrainerCard_GenerateCardForPlayer(&sData->trainerCard);
    SetMainCallback2(CB2_InitTrainerCard);
}

void ShowTrainerCardInLink(u8 cardId, void (*callback)(void))
{
    sData = AllocZeroed(sizeof(*sData));
    sData->callback2 = callback;
    sData->isLink = TRUE;
    sData->trainerCard = gTrainerCards[cardId];
    sData->language = gLinkPlayers[cardId].language;
    SetMainCallback2(CB2_InitTrainerCard);
}

static void InitTrainerCardData(void)
{
    u8 i;

    sData->mainState = 0;
    sData->timeColonBlinkTimer = gSaveBlock2Ptr->playTimeVBlanks;
    sData->timeColonInvisible = FALSE;
    sData->onBack = FALSE;
    sData->flipBlendY = 0;
    sData->cardType = GetSetCardType();
    LoadTrainerCardColorThemeFromSave();
    sData->mugshotSpriteId = SPRITE_NONE;
    sData->championRibbonSpriteId = SPRITE_NONE;
    sData->chaosMarkSpriteId = SPRITE_NONE;
    sData->bgScrollX = TRAINER_CARD_SCROLL_X_PERIOD_PIXELS << 8;
    sData->bgScrollY = TRAINER_CARD_SCROLL_Y_PERIOD_PIXELS << 8;
    for (i = 0; i < PARTY_SIZE; i++)
        sData->partyIconSpriteIds[i] = SPRITE_NONE;
    for (i = 0; i < TRAINER_CARD_PROFILE_LENGTH; i++)
        CopyEasyChatWord(sData->easyChatProfile[i], sData->trainerCard.easyChatProfile[i]);
}

static u8 GetSetCardType(void)
{
    if (sData == NULL)
    {
        if (gGameVersion == VERSION_FIRE_RED || gGameVersion == VERSION_LEAF_GREEN)
            return CARD_TYPE_FRLG;
        else if (gGameVersion == VERSION_EMERALD)
            return CARD_TYPE_EMERALD;
        else
            return CARD_TYPE_RS;
    }
    else
    {
        if (sData->trainerCard.version == VERSION_FIRE_RED || sData->trainerCard.version == VERSION_LEAF_GREEN)
        {
            sData->isHoenn = FALSE;
            return CARD_TYPE_FRLG;
        }
        else if (sData->trainerCard.version == VERSION_EMERALD)
        {
            sData->isHoenn = TRUE;
            return CARD_TYPE_EMERALD;
        }
        else
        {
            sData->isHoenn = TRUE;
            return CARD_TYPE_RS;
        }
    }
}

static u8 VersionToCardType(u8 version)
{
    if (version == VERSION_FIRE_RED || version == VERSION_LEAF_GREEN)
        return CARD_TYPE_FRLG;
    else if (version == VERSION_EMERALD)
        return CARD_TYPE_EMERALD;
    else
        return CARD_TYPE_RS;
}

static void CreateTrainerCardTrainerPic(void)
{
    if (sData->isNewCard)
    {
        if (sData->mugshotSpriteId == SPRITE_NONE)
            CreateNewTrainerCardSprites();
        return;
    }

    if (InUnionRoom() == TRUE && gReceivedRemoteLinkPlayers == 1)
    {
        CreateTrainerCardTrainerPicSprite(FacilityClassToPicIndex(sData->trainerCard.unionRoomClass),
                    TRUE,
                    sTrainerPicOffset[sData->isHoenn][sData->trainerCard.gender][0],
                    sTrainerPicOffset[sData->isHoenn][sData->trainerCard.gender][1],
                    8,
                    WIN_TRAINER_PIC);
    }
    else
    {
        CreateTrainerCardTrainerPicSprite(FacilityClassToPicIndex(sTrainerPicFacilityClass[sData->cardType][sData->trainerCard.gender]),
                    TRUE,
                    sTrainerPicOffset[sData->isHoenn][sData->trainerCard.gender][0],
                    sTrainerPicOffset[sData->isHoenn][sData->trainerCard.gender][1],
                    8,
                    WIN_TRAINER_PIC);
    }
}
