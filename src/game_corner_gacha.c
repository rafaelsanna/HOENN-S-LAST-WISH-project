#include "game_corner_gacha.h"
#include "global.h"
#include "malloc.h"
#include "battle.h"
#include "bg.h"
#include "coins.h"
#include "caps.h"
#include "data.h"
#include "daycare.h"
#include "decompress.h"
#include "event_data.h"
#include "gpu_regs.h"
#include "graphics.h"
#include "field_message_box.h"
#include "international_string_util.h"
#include "m4a.h"
#include "main.h"
#include "menu.h"
#include "menu_helpers.h"
#include "naming_screen.h"
#include "new_game.h"
#include "overworld.h"
#include "palette.h"
#include "palette_util.h"
#include "pokemon.h"
#include "pokedex.h"
#include "random.h"
#include "script.h"
#include "sound.h"
#include "sprite.h"
#include "strings.h"
#include "task.h"
#include "text.h"
#include "text_window.h"
#include "trade.h"
#include "trainer_pokemon_sprites.h"
#include "tv.h"
#include "window.h"
#include "constants/coins.h"
#include "constants/flags.h"
#include "constants/pokedex.h"
#include "constants/rgb.h"
#include "constants/songs.h"
#include "constants/vars.h"
#include "scanline_effect.h"
#include "pokemon_storage_system.h"
#include "string_util.h"
#include "field_specials.h"

enum
{
    GACHA_STATE_INIT,
    GACHA_STATE_PROCESS_INPUT,
    GACHA_STATE_START_EXIT,
    GACHA_STATE_EXIT,
    STATE_INIT_A,
    STATE_TIMER_1,
    STATE_TWIST,
    STATE_TIMER_2,
    STATE_INIT_GIVE,
    STATE_SHAKE_1,
    STATE_TIMER_3,
    STATE_INIT_SHAKE_2,
    STATE_SHAKE_2,
    STATE_TIMER_4,
    STATE_INIT_SHAKE_3,
    STATE_TIMER_5,
    STATE_GIVE,
    STATE_FADE,
    STATE_POKEBALL_INIT,
    STATE_POKEBALL_PROCESS,
    STATE_POKEBALL_ARRIVE,
    STATE_FADE_POKEBALL_TO_NORMAL,
    STATE_POKEBALL_ARRIVE_WAIT,
    STATE_SHOW_NEW_MON,
    STATE_NEW_MON_MSG,
    NEW_1,
    NEW_2,
    STATE_SET_EXIT,
};

enum {
    SPR_CREDIT_DIG_1,
    SPR_CREDIT_DIG_10,
    SPR_CREDIT_DIG_100,
    SPR_CREDIT_DIG_1000,
};

enum {
    GACHA_BASIC = 1,
    GACHA_GREAT,
    GACHA_ULTRA,
    GACHA_MASTER,
};

enum {
    RARITY_COMMON,
    RARITY_UNCOMMON,
    RARITY_RARE,
    RARITY_ULTRA_RARE,
};

enum {
    SPR_PLAYER_DIG_1,
    SPR_PLAYER_DIG_10,
    SPR_PLAYER_DIG_100,
    SPR_PLAYER_DIG_1000,
};

#define RARITY_COMMON_ODDS 60
#define RARITY_UNCOMMON_ODDS 33
#define RARITY_RARE_ODDS 6
#define RARITY_ULTRA_RARE_ODDS 1

#define GACHA_BASIC_MIN_WAGER 100
#define GACHA_GREAT_MIN_WAGER 500
#define GACHA_ULTRA_MIN_WAGER 2000
#define GACHA_MASTER_MIN_WAGER 4500

#define SPR_CREDIT_DIGITS SPR_CREDIT_DIG_1
#define SPR_PLAYER_DIGITS SPR_PLAYER_DIG_1

#define MAX_SPRITES_CREDIT 4
#define MAX_SPRITES_PLAYER 4

struct Gacha {
    u8 state;
    u8 GachaId;
    u8 KnobSpriteId;
    u8 DigitalTextSpriteId;
    u8 LotteryJPNspriteId;
    u8 CreditSpriteIds[MAX_SPRITES_CREDIT];
    u8 PlayerSpriteIds[MAX_SPRITES_PLAYER];
    u8 CreditMenu1Id;
    u8 CreditMenu2Id;
    u8 PokemonOneSpriteId;
    u8 PokemonTwoSpriteId;
    u8 PokemonThreeSpriteId;
    u8 newMonOdds;
    u8 ArrowsSpriteId;
    u8 CTAspriteId;
    u8 cursorPosition;
    bool8 canBetWager;
    u8 Rarity; // 0 = Common, 1 = Uncommon, 2 = Rare, 3 = Ultra Rare
    u8 ownedCommon;
    u8 ownedUncommon;
    u8 ownedRare;
    u8 ownedUltraRare;
    u8 bouncingPokeballSpriteId;
    u8 timer;
    u8 monSpriteId;
    u16 CalculatedSpecies;
    u16 wager;
    u16 refundCoins;
    u32 waitTimer;
    u8 canGiveMon;
    bool8 refundExtraCoins;
};    

static const u8 sText_FromGacha[] = _("{STR_VAR_2}\nYou got {STR_VAR_1}!");
static const u8 sText_CommonPrize[] = _("Common prize!");
static const u8 sText_UncommonPrize[] = _("Uncommon prize!");
static const u8 sText_RarePrize[] = _("Rare prize!");
static const u8 sText_UltraRarePrize[] = _("Ultra-rare prize!");

static const s8 sTradeBallVerticalVelocityTable[] =
{
     0,  0,  1,  0,  1,  0,  1,  1,  1,
     1,  2,  2,  2,  2,  3,  3,  3,  3,
     4,  4,  4,  4, -4, -4, -4, -3, -3,
    -3, -3, -2, -2, -2, -2, -1, -1, -1,
    -1,  0, -1,  0, -1,  0,  0,  0,  0,
     0,  1,  0,  1,  0,  1,  1,  1,  1,
     2,  2,  2,  2,  3,  3,  3,  3,  4,
     4,  4,  4, -4, -3, -3, -2, -2, -1,
    -1, -1,  0, -1,  0,  0,  0,  0,  0,
     0,  1,  0,  1,  1,  1,  2,  2,  3,
     3,  4, -4, -3, -2, -1, -1, -1,  0,
     0,  0,  0,  1,  0,  1,  1,  2,  3
};

static EWRAM_DATA struct Gacha *sGacha = NULL;
static EWRAM_DATA u8 sTextWindowId = 0;

static void FadeToGachaScreen(u8 taskId);
static void InitGachaScreen(void);
static void GachaVBlankCallback(void);
static void SpriteCB_BouncingPokeball(struct Sprite *);
static void SpriteCB_BouncingPokeballArrive(struct Sprite *);
static u16 GetMaxAvailableGachaRaritySpecies(u32 gachaId, u32 rarity);
static u16 GetGachaMon(u16 randNum);
static inline bool32 CheckIfOwned(u16 species);
static const u8 *GetGachaRarityPrizeText(u8 rarity);

static const u8 sMessageText[] = _("NEW POKéMON : {STR_VAR_1}%");

static void SpriteCB_Null(struct Sprite *sprite)
{
}

// BG Images/Tilemaps

// Main, no shake
static const u32 Gacha_BG_Main[] = INCBIN_U32("graphics/gacha/bg_middle.4bpp.smol");
static const u8 Gacha_BG_Main_Tilemap[] = INCBIN_U8("graphics/gacha/bg_middle.bin.smolTM");
// Left shake
static const u32 Gacha_BG_Left[] = INCBIN_U32("graphics/gacha/bg_left.4bpp.smol");
static const u8 Gacha_BG_Left_Tilemap[] = INCBIN_U8("graphics/gacha/bg_left.bin.smolTM");
// Right shake
static const u32 Gacha_BG_Right[] = INCBIN_U32("graphics/gacha/bg_right.4bpp.smol");
static const u8 Gacha_BG_Right_Tilemap[] = INCBIN_U8("graphics/gacha/bg_right.bin.smolTM");

// Trade
static const u32 Gacha_BG_Red[] = INCBIN_U32("graphics/gacha/bg_mon.4bpp.smol");
static const u8 Gacha_BG_Red_Tilemap[] = INCBIN_U8("graphics/gacha/bg_mon.bin.smolTM");

// BG Palettes

// Basic
static const u16 Gacha_BG_Basic_Pal[] = INCBIN_U16("graphics/gacha/bg_basic.gbapal");
// Great
static const u16 Gacha_BG_Great_Pal[] = INCBIN_U16("graphics/gacha/bg_great.gbapal");
// Ultra
static const u16 Gacha_BG_Ultra_Pal[] = INCBIN_U16("graphics/gacha/bg_ultra.gbapal");
// Master
static const u16 Gacha_BG_Master_Pal[] = INCBIN_U16("graphics/gacha/bg_master.gbapal");

static const u16 Gacha_BG_Red_Pal[] = INCBIN_U16("graphics/gacha/bg_mon.gbapal");

// Knob Sprite Image
static const u32 Gacha_Knob[] = INCBIN_U32("graphics/gacha/knob.4bpp.smol");

// Knob Sprite Palettes

static const u16 Gacha_Knob_Pal[] = INCBIN_U16("graphics/gacha/knob.gbapal");
static const u16 Gacha_Digital_Text_Pal[] = INCBIN_U16("graphics/gacha/digital_text.gbapal");
static const u16 Gacha_Lottery_Pal[] = INCBIN_U16("graphics/gacha/lottery.gbapal");
static const u16 Gacha_press_a_Pal[] = INCBIN_U16("graphics/gacha/press_a.gbapal");

// Digital Text
static const u32 Gacha_Digital_Text[] = INCBIN_U32("graphics/gacha/digital_text.4bpp.smol");

// Title, Japanese
static const u32 Gacha_Lottery_JPN[] = INCBIN_U32("graphics/gacha/lottery_japan.4bpp.smol");

//Numbers

static const u32 gCredits_Gfx[] = INCBIN_U32("graphics/gacha/numbers.4bpp.smol");
static const u16 sCredit_Pal[] = INCBIN_U16("graphics/gacha/numbers.gbapal");

static const u32 gPlayer_Gfx[] = INCBIN_U32("graphics/gacha/input_numbers.4bpp.smol");
static const u16 sPlayer_Pal[] = INCBIN_U16("graphics/gacha/input_numbers.gbapal");

// Credits Menu

// Images

static const u32 Gacha_Menu_1[] = INCBIN_U32("graphics/gacha/menu_1.4bpp.smol");
static const u32 Gacha_Menu_2[] = INCBIN_U32("graphics/gacha/menu_2.4bpp.smol");

// Palettes

// Basic
static const u16 Gacha_Menu_Basic_Pal[] = INCBIN_U16("graphics/gacha/menu_basic.gbapal");
// Great
static const u16 Gacha_Menu_Great_Pal[] = INCBIN_U16("graphics/gacha/menu_great.gbapal");
// Ultra
static const u16 Gacha_Menu_Ultra_Pal[] = INCBIN_U16("graphics/gacha/menu_ultra.gbapal");
// Master
static const u16 Gacha_Menu_Master_Pal[] = INCBIN_U16("graphics/gacha/menu_master.gbapal");

// Basic
static const u16 Gacha_Menu2_Basic_Pal[] = INCBIN_U16("graphics/gacha/menu2_basic.gbapal");
// Great
static const u16 Gacha_Menu2_Great_Pal[] = INCBIN_U16("graphics/gacha/menu2_great.gbapal");
// Ultra
static const u16 Gacha_Menu2_Ultra_Pal[] = INCBIN_U16("graphics/gacha/menu2_ultra.gbapal");
// Master
static const u16 Gacha_Menu2_Master_Pal[] = INCBIN_U16("graphics/gacha/menu2_master.gbapal");

// Pokemon

// Belossom
static const u32 BelossomGFX[] = INCBIN_U32("graphics/gacha/belossom.4bpp.smol");
static const u16 BelossomPAL[] = INCBIN_U16("graphics/gacha/belossom.gbapal");

// Phanpy
static const u32 PhanpyGFX[] = INCBIN_U32("graphics/gacha/phanpy.4bpp.smol");
static const u16 PhanpyPal[] = INCBIN_U16("graphics/gacha/phanpy.gbapal");

// Teddiursa
static const u32 TeddiursaGFX[] = INCBIN_U32("graphics/gacha/teddiursa.4bpp.smol");
static const u16 TeddiursaPAL[] = INCBIN_U16("graphics/gacha/teddiursa.gbapal");

// Elekid
static const u32 ElekidGFX[] = INCBIN_U32("graphics/gacha/elekid.4bpp.smol");
static const u16 ElekidPAL[] = INCBIN_U16("graphics/gacha/elekid.gbapal");

// Hoppip
static const u32 HoppipGFX[] = INCBIN_U32("graphics/gacha/hoppip.4bpp.smol");
static const u16 HoppipPAL[] = INCBIN_U16("graphics/gacha/hoppip.gbapal");

// Arrows

static const u32 Gacha_Arrows_GFX[] = INCBIN_U32("graphics/gacha/arrows.4bpp.smol");

// Press "A"

static const u32 Gacha_Press_A_GFX[] = INCBIN_U32("graphics/gacha/pressA.4bpp.smol");

static const u16 sPokeball_Pal[] = INCBIN_U16("graphics/trade/pokeball.gbapal");
static const u8 sPokeball_Gfx[] = INCBIN_U8("graphics/trade/pokeball.4bpp");

const u16 gTrade_Tilemap[] = INCBIN_U16("graphics/trade/platform.bin");

#define GACHA_BG_BASE 1
#define GACHA_MENUS 2

static const struct BgTemplate sGachaBGtemplates[] = {
    {
       .bg = GACHA_BG_BASE,
       .charBaseIndex = 2,
       .mapBaseIndex = 31,
       .screenSize = 0,
       .paletteMode = 0,
       .priority = 3,
       .baseTile = 0
   },
   {
        .bg = GACHA_MENUS,
        .charBaseIndex = 0,
        .mapBaseIndex = 0x17,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 0,
        .baseTile = 0
    }
};

static const struct WindowTemplate sGachaWinTemplates[] = {
    {
        .bg = GACHA_MENUS,
        .tilemapLeft = 16,
        .tilemapTop = 9,
        .width = 14,
        .height = 2,
        .paletteNum = 0xF,
        .baseBlock = 0x194,
    },
    DUMMY_WIN_TEMPLATE,
};

static const struct WindowTemplate sWinTemplates_EggHatch[] =
{
    {
        .bg = 0,
        .tilemapLeft = 2,
        .tilemapTop = 15,
        .width = 26,
        .height = 4,
        .paletteNum = 0,
        .baseBlock = 64
    },
    DUMMY_WIN_TEMPLATE
};

static const struct WindowTemplate sYesNoWinTemplate =
{
    .bg = 0,
    .tilemapLeft = 21,
    .tilemapTop = 9,
    .width = 5,
    .height = 4,
    .paletteNum = 15,
    .baseBlock = 424
};

#define BG_MIDDLE_GFX 1
#define BG_LEFT_GFX 2
#define BG_RIGHT_GFX 3
#define KNOB_GFX 4
#define DIGITAL_TEXT_GFX 5
#define LOTTERY_JPN_GFX 6
#define GFXTAG_CREDIT_DIGIT 7
#define GFXTAG_PLAYER_DIGIT 8
#define GFXTAG_MENU_1 9
#define GFXTAG_MENU_2 10
#define GFXTAG_MASCOT 11
#define GFXTAG_ARROWS 12
#define GFXTAG_PRESS_A 13

#define GFXTAG_POKEBALL        5557

#define PALTAG_KNOB 1
#define DIGITAL_TEXT_PAL 2
#define LOTTERY_JPN_PAL 3
#define PALTAG_INTERFACE 4
#define PALTAG_INTERFACEPLAYER 5
#define PALTAG_MENU_ID 6

#define PALTAG_MASCOT 7
#define PALTAG_ARROWS 8
#define PALTAG_PRESS_A 9

#define PALTAG_POKEBALL  5558

static const struct SpritePalette sSpritePalettesBasic[] =
{
    { .data = Gacha_press_a_Pal,       .tag = PALTAG_PRESS_A },
    { .data = Gacha_Knob_Pal,          .tag = PALTAG_KNOB },
    { .data = Gacha_Digital_Text_Pal,  .tag = DIGITAL_TEXT_PAL },
    { .data = sCredit_Pal,             .tag = PALTAG_INTERFACE },
    { .data = sPlayer_Pal,             .tag = PALTAG_INTERFACEPLAYER },
    { .data = Gacha_Lottery_Pal,       .tag = LOTTERY_JPN_PAL },
    { .data = Gacha_Menu_Basic_Pal,    .tag = PALTAG_MENU_ID },
    { .data = HoppipPAL,               .tag = PALTAG_MASCOT },
    { .data = sCredit_Pal,             .tag = PALTAG_ARROWS },
    {}
};

static const struct SpritePalette sSpritePalettesGreat[] =
{
    { .data = Gacha_press_a_Pal,       .tag = PALTAG_PRESS_A },
    { .data = Gacha_Knob_Pal,          .tag = PALTAG_KNOB },
    { .data = Gacha_Digital_Text_Pal,  .tag = DIGITAL_TEXT_PAL },
    { .data = sCredit_Pal,             .tag = PALTAG_INTERFACE },
    { .data = sPlayer_Pal,             .tag = PALTAG_INTERFACEPLAYER },
    { .data = Gacha_Lottery_Pal,       .tag = LOTTERY_JPN_PAL },
    { .data = Gacha_Menu_Great_Pal,    .tag = PALTAG_MENU_ID },
    { .data = PhanpyPal,               .tag = PALTAG_MASCOT },
    { .data = sCredit_Pal,             .tag = PALTAG_ARROWS },
    {}
};

static const struct SpritePalette sSpritePalettesUltra[] =
{
    { .data = Gacha_press_a_Pal,       .tag = PALTAG_PRESS_A },
    { .data = Gacha_Knob_Pal,          .tag = PALTAG_KNOB },
    { .data = Gacha_Digital_Text_Pal,  .tag = DIGITAL_TEXT_PAL },
    { .data = sCredit_Pal,             .tag = PALTAG_INTERFACE },
    { .data = sPlayer_Pal,             .tag = PALTAG_INTERFACEPLAYER },
    { .data = Gacha_Lottery_Pal,       .tag = LOTTERY_JPN_PAL },
    { .data = Gacha_Menu_Ultra_Pal,    .tag = PALTAG_MENU_ID },
    { .data = TeddiursaPAL,            .tag = PALTAG_MASCOT },
    { .data = sCredit_Pal,             .tag = PALTAG_ARROWS },
    {}
};

static const struct SpritePalette sSpritePalettesMaster[] =
{
    { .data = Gacha_press_a_Pal,       .tag = PALTAG_PRESS_A },
    { .data = Gacha_Knob_Pal,          .tag = PALTAG_KNOB },
    { .data = Gacha_Digital_Text_Pal,  .tag = DIGITAL_TEXT_PAL },
    { .data = sCredit_Pal,             .tag = PALTAG_INTERFACE },
    { .data = sPlayer_Pal,             .tag = PALTAG_INTERFACEPLAYER },
    { .data = Gacha_Lottery_Pal,       .tag = LOTTERY_JPN_PAL },
    { .data = Gacha_Menu_Master_Pal,   .tag = PALTAG_MENU_ID },
    { .data = BelossomPAL,             .tag = PALTAG_MASCOT },
    { .data = sCredit_Pal,             .tag = PALTAG_ARROWS },
    {}
};

static const struct CompressedSpriteSheet sSpriteSheet_Press_A =
{
    .data = Gacha_Press_A_GFX,
    .size = 0xC00,
    .tag = GFXTAG_PRESS_A,
};

static const struct CompressedSpriteSheet sSpriteSheet_Arrows =
{
    .data = Gacha_Arrows_GFX,
    .size = 0x200,
    .tag = GFXTAG_ARROWS,
};

static const struct CompressedSpriteSheet sSpriteSheet_Hoppip =
{
    .data = HoppipGFX,
    .size = 0x800,
    .tag = GFXTAG_MASCOT,
};

static const struct CompressedSpriteSheet sSpriteSheet_Elekid =
{
    .data = ElekidGFX,
    .size = 0x800,
    .tag = GFXTAG_MASCOT,
};

static const struct CompressedSpriteSheet sSpriteSheet_Teddiursa =
{
    .data = TeddiursaGFX,
    .size = 0x800,
    .tag = GFXTAG_MASCOT,
};

static const struct CompressedSpriteSheet sSpriteSheet_Phanpy =
{
    .data = PhanpyGFX,
    .size = 0x800,
    .tag = GFXTAG_MASCOT,
};

static const struct CompressedSpriteSheet sSpriteSheet_Belossom =
{
    .data = BelossomGFX,
    .size = 0x800,
    .tag = GFXTAG_MASCOT,
};

static const struct CompressedSpriteSheet sSpriteSheet_Menu_1 =
{
    .data = Gacha_Menu_1,
    .size = 0x800,
    .tag = GFXTAG_MENU_1,
};

static const struct CompressedSpriteSheet sSpriteSheet_Menu_2 =
{
    .data = Gacha_Menu_2,
    .size = 0x1000,
    .tag = GFXTAG_MENU_2,
};

static const struct CompressedSpriteSheet sSpriteSheets_Interface[] =
{
    {
        .data = gCredits_Gfx,
        .size = 0x280,
        .tag = GFXTAG_CREDIT_DIGIT,
    },
    {}
};

static const struct CompressedSpriteSheet sSpriteSheets_PlayerInterface[] =
{
    {
        .data = gPlayer_Gfx,
        .size = 0x280,
        .tag = GFXTAG_PLAYER_DIGIT
    },
    {}
};

static const struct CompressedSpriteSheet sSpriteSheet_Lottery_JPN =
{
    .data = Gacha_Lottery_JPN,
    .size = 0x800,
    .tag = LOTTERY_JPN_GFX,
};

static const struct CompressedSpriteSheet sSpriteSheet_Digital_Text =
{
    .data = Gacha_Digital_Text,
    .size = 0x1000,
    .tag = DIGITAL_TEXT_GFX,
};

static const struct CompressedSpriteSheet sSpriteSheet_Knob =
{
    .data = Gacha_Knob,
    .size = 0x800,
    .tag = KNOB_GFX,
};

static const struct OamData sOamData_Press_A =
{
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .shape = SPRITE_SHAPE(64x32),
    .size = SPRITE_SIZE(64x32),
    .tileNum = 0,
    .priority = 0,
};

static const struct OamData sOamData_Arrows =
{
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .shape = SPRITE_SHAPE(8x32),
    .size = SPRITE_SIZE(8x32),
    .tileNum = 0,
    .priority = 0,
};

static const struct OamData sOamData_Hoppip =
{
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .shape = SPRITE_SHAPE(32x32),
    .size = SPRITE_SIZE(32x32),
    .tileNum = 0,
    .priority = 0,
};

static const struct OamData sOamData_Elekid =
{
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .shape = SPRITE_SHAPE(32x32),
    .size = SPRITE_SIZE(32x32),
    .tileNum = 0,
    .priority = 0,
};

static const struct OamData sOamData_Teddiursa =
{
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .shape = SPRITE_SHAPE(32x32),
    .size = SPRITE_SIZE(32x32),
    .tileNum = 0,
    .priority = 0,
};

static const struct OamData sOamData_Phanpy =
{
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .shape = SPRITE_SHAPE(32x32),
    .size = SPRITE_SIZE(32x32),
    .tileNum = 0,
    .priority = 0,
};

static const struct OamData sOamData_Belossom =
{
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .shape = SPRITE_SHAPE(32x32),
    .size = SPRITE_SIZE(32x32),
    .tileNum = 0,
    .priority = 0,
};

static const struct OamData sOamData_Menu =
{
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .shape = SPRITE_SHAPE(64x64),
    .size = SPRITE_SIZE(64x64),
    .tileNum = 0,
    .priority = 0,
};

static const struct OamData sOamData_Menu_2 =
{
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .shape = SPRITE_SHAPE(64x64),
    .size = SPRITE_SIZE(64x64),
    .tileNum = 0,
    .priority = 0,
};

static const struct OamData sOamData_Lottery_JPN =
{
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .shape = SPRITE_SHAPE(64x64),
    .size = SPRITE_SIZE(64x64),
    .tileNum = 0,
    .priority = 0,
};

static const struct OamData sOamData_Digital_Text =
{
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .shape = SPRITE_SHAPE(64x32),
    .size = SPRITE_SIZE(64x32),
    .tileNum = 0,
    .priority = 0,
};

static const struct OamData sOamData_Knob =
{
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .shape = SPRITE_SHAPE(32x32),
    .size = SPRITE_SIZE(32x32),
    .tileNum = 0,
    .priority = 0,
};

static const struct OamData sOam_CreditDigit =
{
    .affineMode = ST_OAM_AFFINE_OFF,
    .objMode = ST_OAM_OBJ_NORMAL,
    .shape = SPRITE_SHAPE(8x16),
    .size = SPRITE_SIZE(8x16),
    .priority = 2,
};

static const struct OamData sOamData_Pokeball =
{
    .affineMode = ST_OAM_AFFINE_NORMAL,
    .shape = SPRITE_SHAPE(16x16),
    .size = SPRITE_SIZE(16x16)
};

static const union AnimCmd sAnim_Pokeball_SpinOnce[] =
{
    ANIMCMD_FRAME( 0, 3),
    ANIMCMD_FRAME( 4, 3),
    ANIMCMD_FRAME( 8, 3),
    ANIMCMD_FRAME(12, 3),
    ANIMCMD_FRAME(16, 3),
    ANIMCMD_FRAME(20, 3),
    ANIMCMD_FRAME(24, 3),
    ANIMCMD_FRAME(28, 3),
    ANIMCMD_FRAME(32, 3),
    ANIMCMD_FRAME(36, 3),
    ANIMCMD_FRAME(40, 3),
    ANIMCMD_FRAME(44, 3),
    ANIMCMD_LOOP(1),
    ANIMCMD_FRAME( 0, 3),
    ANIMCMD_END
};

static const union AnimCmd sAnim_Pokeball_SpinTwice[] =
{
    ANIMCMD_FRAME( 0, 3),
    ANIMCMD_FRAME( 4, 3),
    ANIMCMD_FRAME( 8, 3),
    ANIMCMD_FRAME(12, 3),
    ANIMCMD_FRAME(16, 3),
    ANIMCMD_FRAME(20, 3),
    ANIMCMD_FRAME(24, 3),
    ANIMCMD_FRAME(28, 3),
    ANIMCMD_FRAME(32, 3),
    ANIMCMD_FRAME(36, 3),
    ANIMCMD_FRAME(40, 3),
    ANIMCMD_FRAME(44, 3),
    ANIMCMD_LOOP(2),
    ANIMCMD_FRAME( 0, 3),
    ANIMCMD_END
};

static const union AnimCmd *const sAnims_Pokeball[] =
{
    sAnim_Pokeball_SpinOnce,
    sAnim_Pokeball_SpinTwice
};

static const union AffineAnimCmd sAffineAnim_Pokeball_Normal[] =
{
    AFFINEANIMCMD_FRAME(0, 0, 0, 1),
    AFFINEANIMCMD_END
};

static const union AffineAnimCmd sAffineAnim_Pokeball_Squish[] =
{
    AFFINEANIMCMD_FRAME(-8, 0, 0, 20),
    AFFINEANIMCMD_END
};

static const union AffineAnimCmd sAffineAnim_Pokeball_Unsquish[] =
{
    AFFINEANIMCMD_FRAME(0x60, 0x100, 0,  0),
    AFFINEANIMCMD_FRAME(   0,     0, 0,  5),
    AFFINEANIMCMD_FRAME(   8,     0, 0, 20),
    AFFINEANIMCMD_END
};

static const union AffineAnimCmd *const sAffineAnims_Pokeball[] =
{
    sAffineAnim_Pokeball_Normal,
    sAffineAnim_Pokeball_Squish,
    sAffineAnim_Pokeball_Unsquish
};

static const struct SpriteSheet sPokeBallSpriteSheet =
{
    .data = sPokeball_Gfx,
    .size = sizeof(sPokeball_Gfx),
    .tag = GFXTAG_POKEBALL
};

static const struct SpritePalette sPokeBallSpritePalette =
{
    .data = sPokeball_Pal,
    .tag = PALTAG_POKEBALL
};

static const struct SpriteTemplate sSpriteTemplate_Pokeball =
{
    .tileTag = GFXTAG_POKEBALL,
    .paletteTag = PALTAG_POKEBALL,
    .oam = &sOamData_Pokeball,
    .anims = sAnims_Pokeball,
    .images = NULL,
    .affineAnims = sAffineAnims_Pokeball,
    .callback = SpriteCB_BouncingPokeball
};

static const union AnimCmd sPressAAnimCmd_1[] = 
{
    ANIMCMD_FRAME(32, 10),
    ANIMCMD_FRAME(64, 10),
    ANIMCMD_JUMP(0)
};

static const union AnimCmd sPressAAnimCmd_0[] = 
{
    ANIMCMD_FRAME(0, 10),
    ANIMCMD_FRAME(0, 10),
    ANIMCMD_JUMP(0)
};

static const union AnimCmd *const sPressAAnimCmds[] = {
    sPressAAnimCmd_0, // Gray
    sPressAAnimCmd_1, // Highlight
};

static const struct SpriteTemplate sSpriteTemplate_Press_A =
{
    .tileTag = GFXTAG_PRESS_A,
    .paletteTag = PALTAG_PRESS_A,
    .oam = &sOamData_Press_A,
    .anims = sPressAAnimCmds,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const union AnimCmd sArrowAnimCmd_1[] = 
{
    ANIMCMD_FRAME(8, 20),
    ANIMCMD_FRAME(12, 20),
    ANIMCMD_JUMP(0)
};

static const union AnimCmd sArrowAnimCmd_0[] = 
{
    ANIMCMD_FRAME(0, 20),
    ANIMCMD_FRAME(4, 20),
    ANIMCMD_JUMP(0)
};

static const union AnimCmd *const sArrowsAnimCmds[] = {
    sArrowAnimCmd_0, // Up and Down
    sArrowAnimCmd_1, // Up
};

static const struct SpriteTemplate sSpriteTemplate_Arrows =
{
    .tileTag = GFXTAG_ARROWS,
    .paletteTag = PALTAG_ARROWS,
    .oam = &sOamData_Arrows,
    .anims = sArrowsAnimCmds,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const union AnimCmd sMenu2AnimCmd_0[] = 
{
    ANIMCMD_FRAME(0, 10),
    ANIMCMD_FRAME(64, 10),
    ANIMCMD_JUMP(0)
};

static const union AnimCmd *const sMenu2AnimCmds[] = {
    sMenu2AnimCmd_0,  // Looping animation
};

static const union AnimCmd sHoppipAnimCmd_0[] = 
{
    ANIMCMD_FRAME(0, 15),
    ANIMCMD_FRAME(16, 15),
    ANIMCMD_FRAME(32, 15),
    ANIMCMD_FRAME(48, 15),
    ANIMCMD_JUMP(0)
};

static const union AnimCmd *const sHoppipAnimCmds[] = {
    sHoppipAnimCmd_0,  // Looping animation
};

static const struct SpriteTemplate sSpriteTemplate_Hoppip =
{
    .tileTag = GFXTAG_MASCOT,
    .paletteTag = PALTAG_MASCOT,
    .oam = &sOamData_Hoppip,
    .anims = sHoppipAnimCmds,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const union AnimCmd sElekidAnimCmd_0[] = 
{
    ANIMCMD_FRAME(0, 15),
    ANIMCMD_FRAME(32, 15),
    ANIMCMD_FRAME(0, 15),
    ANIMCMD_FRAME(16, 15),
    ANIMCMD_FRAME(0, 15),
    ANIMCMD_FRAME(32, 15),
    //ANIMCMD_FRAME(0, 15),
    ANIMCMD_FRAME(48, 15),
    ANIMCMD_FRAME(32, 15),
    ANIMCMD_JUMP(0)
};

static const union AnimCmd *const sElekidAnimCmds[] = {
    sElekidAnimCmd_0,  // Looping animation
};

static const struct SpriteTemplate sSpriteTemplate_Elekid =
{
    .tileTag = GFXTAG_MASCOT,
    .paletteTag = PALTAG_MASCOT,
    .oam = &sOamData_Elekid,
    .anims = sElekidAnimCmds,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const union AnimCmd sTeddiursaAnimCmd_0[] = 
{
    ANIMCMD_FRAME(16, 15),
    ANIMCMD_FRAME(32, 15),
    ANIMCMD_FRAME(16, 15),
    ANIMCMD_FRAME(0, 15),
    ANIMCMD_FRAME(16, 15),
    ANIMCMD_FRAME(32, 15),
    ANIMCMD_FRAME(16, 15),
    ANIMCMD_FRAME(0, 15),
    ANIMCMD_FRAME(16, 15),
    ANIMCMD_FRAME(32, 15),
    ANIMCMD_FRAME(16, 15),
    ANIMCMD_FRAME(0, 15),
    ANIMCMD_FRAME(16, 15),
    ANIMCMD_FRAME(32, 15),
    ANIMCMD_FRAME(16, 15),
    ANIMCMD_FRAME(0, 15),
    ANIMCMD_FRAME(16, 15),
    ANIMCMD_FRAME(32, 15),
    ANIMCMD_FRAME(16, 15),
    ANIMCMD_FRAME(48, 30),
    ANIMCMD_JUMP(0)
};

static const union AnimCmd *const sTeddiursaAnimCmds[] = {
    sTeddiursaAnimCmd_0,  // Looping animation
};

static const struct SpriteTemplate sSpriteTemplate_Teddiursa =
{
    .tileTag = GFXTAG_MASCOT,
    .paletteTag = PALTAG_MASCOT,
    .oam = &sOamData_Teddiursa,
    .anims = sTeddiursaAnimCmds,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const union AnimCmd sPhanpyAnimCmd_0[] = 
{
    ANIMCMD_FRAME(0, 15),
    ANIMCMD_FRAME(16, 15),
    ANIMCMD_FRAME(48, 15),
    ANIMCMD_FRAME(32, 15),
    ANIMCMD_FRAME(48, 15),
    ANIMCMD_FRAME(16, 15),
    ANIMCMD_JUMP(0)
};

static const union AnimCmd *const sPhanpyAnimCmds[] = {
    sPhanpyAnimCmd_0,  // Looping animation
};

static const struct SpriteTemplate sSpriteTemplate_Phanpy =
{
    .tileTag = GFXTAG_MASCOT,
    .paletteTag = PALTAG_MASCOT,
    .oam = &sOamData_Phanpy,
    .anims = sPhanpyAnimCmds,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const union AnimCmd sBelossomAnimCmd_0[] = 
{
    ANIMCMD_FRAME(0, 15),
    ANIMCMD_FRAME(16, 15),
    ANIMCMD_FRAME(0, 15),
    ANIMCMD_FRAME(32, 15),
    ANIMCMD_FRAME(0, 15),
    ANIMCMD_FRAME(16, 15),
    ANIMCMD_FRAME(0, 15),
    ANIMCMD_FRAME(48, 30),
    ANIMCMD_JUMP(0)
};

static const union AnimCmd *const sBelossomAnimCmds[] = {
    sBelossomAnimCmd_0,  // Looping animation
};

static const struct SpriteTemplate sSpriteTemplate_Belossom =
{
    .tileTag = GFXTAG_MASCOT,
    .paletteTag = PALTAG_MASCOT,
    .oam = &sOamData_Belossom,
    .anims = sBelossomAnimCmds,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_Menu_1_Master =
{
    .tileTag = GFXTAG_MENU_1,
    .paletteTag = PALTAG_MENU_ID,
    .oam = &sOamData_Menu,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_Menu_2_Master =
{
    .tileTag = GFXTAG_MENU_2,
    .paletteTag = PALTAG_MENU_ID,
    .oam = &sOamData_Menu_2,
    .anims = sMenu2AnimCmds,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_Menu_1_Ultra =
{
    .tileTag = GFXTAG_MENU_1,
    .paletteTag = PALTAG_MENU_ID,
    .oam = &sOamData_Menu,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_Menu_2_Ultra =
{
    .tileTag = GFXTAG_MENU_2,
    .paletteTag = PALTAG_MENU_ID,
    .oam = &sOamData_Menu_2,
    .anims = sMenu2AnimCmds,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_Menu_1_Great =
{
    .tileTag = GFXTAG_MENU_1,
    .paletteTag = PALTAG_MENU_ID,
    .oam = &sOamData_Menu,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_Menu_2_Great =
{
    .tileTag = GFXTAG_MENU_2,
    .paletteTag = PALTAG_MENU_ID,
    .oam = &sOamData_Menu_2,
    .anims = sMenu2AnimCmds,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_Menu_1_Basic =
{
    .tileTag = GFXTAG_MENU_1,
    .paletteTag = PALTAG_MENU_ID,
    .oam = &sOamData_Menu,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_Menu_2_Basic =
{
    .tileTag = GFXTAG_MENU_2,
    .paletteTag = PALTAG_MENU_ID,
    .oam = &sOamData_Menu_2,
    .anims = sMenu2AnimCmds,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_CreditDigit =
{
    .tileTag = GFXTAG_CREDIT_DIGIT,
    .paletteTag = PALTAG_INTERFACE,
    .oam = &sOam_CreditDigit,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy
};

static const struct SpriteTemplate sSpriteTemplate_PlayerDigit =
{
    .tileTag = GFXTAG_PLAYER_DIGIT,
    .paletteTag = PALTAG_INTERFACEPLAYER,
    .oam = &sOam_CreditDigit,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy
};

static const union AnimCmd sDigitalTextAnimCmd_0[] = 
{
    ANIMCMD_FRAME(0, 30),
    ANIMCMD_FRAME(32, 30),
    ANIMCMD_FRAME(64, 30),
    ANIMCMD_FRAME(96, 30),
    ANIMCMD_JUMP(0)
};

static const union AnimCmd *const sDigitalTextAnimCmds[] = {
    sDigitalTextAnimCmd_0,  // Looping animation
};

static const struct SpriteTemplate sSpriteTemplate_Digital_Text =
{
    .tileTag = DIGITAL_TEXT_GFX,
    .paletteTag = DIGITAL_TEXT_PAL,
    .oam = &sOamData_Digital_Text,
    .anims = sDigitalTextAnimCmds,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sSpriteTemplate_Lottery_JPN =
{
    .tileTag = LOTTERY_JPN_GFX,
    .paletteTag = LOTTERY_JPN_PAL,
    .oam = &sOamData_Lottery_JPN,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const union AnimCmd sKnobAnimCmd_1[] = 
{
    ANIMCMD_FRAME(0, 5),
    ANIMCMD_FRAME(16, 5),
    ANIMCMD_FRAME(32, 20),
    ANIMCMD_FRAME(16, 5),
    ANIMCMD_FRAME(0, 5),
    ANIMCMD_END
};

static const union AnimCmd sKnobAnimCmd_0[] = 
{
    ANIMCMD_FRAME(0, 20),
    ANIMCMD_END
};

static const union AnimCmd *const sKnobAnimCmds[] = {
    sKnobAnimCmd_0, // Still
    sKnobAnimCmd_1, // Rotate
};

static const struct SpriteTemplate sSpriteTemplate_Knob =
{
    .tileTag = KNOB_GFX,
    .paletteTag = PALTAG_KNOB,
    .oam = &sOamData_Knob,
    .anims = sKnobAnimCmds,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

void StartGacha(void)
{
    sGacha = AllocZeroed(sizeof(struct Gacha));
    CreateTask(FadeToGachaScreen, 0);
}

static void SpriteCB_BouncingPokeball(struct Sprite *sprite)
{
    sprite->y += sprite->data[0] / 10;
    sprite->data[5] += sprite->data[1];
    sprite->x = sprite->data[5] / 10;
    if (sprite->y > 0x4c)
    {
        sprite->y = 0x4c;
        sprite->data[0] = -(sprite->data[0] * sprite->data[2]) / 100;
        sprite->data[3] ++;
    }
    if (sprite->x == 0x78)
        sprite->data[1] = 0;
    sprite->data[0] += sprite->data[4];
    if (sprite->data[3] == 4)
    {
        sprite->data[7] = 1;
        sprite->callback = SpriteCallbackDummy;
    }
}

static void SpriteCB_BouncingPokeballArrive(struct Sprite *sprite)
{
    if (sprite->data[2] == 0)
    {
        if ((sprite->y += 4) > sprite->data[3])
        {
            sprite->data[2] ++;
            sprite->data[0] = 0x16;
            PlaySE(SE_BALL_BOUNCE_1);
        }
    }
    else
    {
        if (sprite->data[0] == 0x42)
            PlaySE(SE_BALL_BOUNCE_2);
        if (sprite->data[0] == 0x5c)
            PlaySE(SE_BALL_BOUNCE_3);
        if (sprite->data[0] == 0x6b)
            PlaySE(SE_BALL_BOUNCE_4);
        sprite->y2 += sTradeBallVerticalVelocityTable[sprite->data[0]];
        if (++sprite->data[0] == 0x6c)
            sprite->callback = SpriteCallbackDummy;
    }
}

static void FadeToGachaScreen(u8 taskId)
{
    switch (gTasks[taskId].data[0])
    {
    case 0:
        BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
        gTasks[taskId].data[0]++;
        break;
    case 1:
        if (!gPaletteFade.active)
        {
            SetMainCallback2(InitGachaScreen);
            DestroyTask(taskId);
        }
        break;
    }
}

static void BGSetup(void)
{
    u16 size = 0x1480;

    InitBgsFromTemplates(0, sGachaBGtemplates, ARRAY_COUNT(sGachaBGtemplates));
    SetBgTilemapBuffer(GACHA_BG_BASE, AllocZeroed(BG_SCREEN_SIZE));
    DecompressAndLoadBgGfxUsingHeap(GACHA_BG_BASE, Gacha_BG_Main, size, 0, 0);
    CopyToBgTilemapBuffer(GACHA_BG_BASE, Gacha_BG_Main_Tilemap, 0, 0);
    ResetPaletteFade();

    switch (sGacha->GachaId)
    {
    default:
    case GACHA_BASIC:
        LoadPalette(Gacha_BG_Basic_Pal, 0, PLTT_SIZE_4BPP);
        break;
    case GACHA_GREAT:
        LoadPalette(Gacha_BG_Great_Pal, 0, PLTT_SIZE_4BPP);
        break;
    case GACHA_ULTRA:
        LoadPalette(Gacha_BG_Ultra_Pal, 0, PLTT_SIZE_4BPP);
        break;
    case GACHA_MASTER:
        LoadPalette(Gacha_BG_Master_Pal, 0, PLTT_SIZE_4BPP);
        break;
    }
}

static void BGRed(void)
{
    u16 size = 0x1480;

    InitBgsFromTemplates(0, sGachaBGtemplates, ARRAY_COUNT(sGachaBGtemplates));
    SetBgTilemapBuffer(GACHA_BG_BASE, AllocZeroed(BG_SCREEN_SIZE));
    DecompressAndLoadBgGfxUsingHeap(GACHA_BG_BASE, Gacha_BG_Red, size, 0, 0);
    CopyToBgTilemapBuffer(GACHA_BG_BASE, Gacha_BG_Red_Tilemap, 0, 0);
    ResetPaletteFade();
    LoadPalette(Gacha_BG_Red_Pal, 0, PLTT_SIZE_4BPP);
}

static void Shake1(void)
{
    u16 size = 0x1480;

    InitBgsFromTemplates(0, sGachaBGtemplates, ARRAY_COUNT(sGachaBGtemplates));
    SetBgTilemapBuffer(GACHA_BG_BASE, AllocZeroed(BG_SCREEN_SIZE));
    DecompressAndLoadBgGfxUsingHeap(GACHA_BG_BASE, Gacha_BG_Left, size, 0, 0);
    CopyToBgTilemapBuffer(GACHA_BG_BASE, Gacha_BG_Left_Tilemap, 0, 0);
    ResetPaletteFade();

    switch (sGacha->GachaId)
    {
    default:
    case GACHA_BASIC:
        LoadPalette(Gacha_BG_Basic_Pal, 0, PLTT_SIZE_4BPP);
        break;
    case GACHA_GREAT:
        LoadPalette(Gacha_BG_Great_Pal, 0, PLTT_SIZE_4BPP);
        break;
    case GACHA_ULTRA:
        LoadPalette(Gacha_BG_Ultra_Pal, 0, PLTT_SIZE_4BPP);
        break;
    case GACHA_MASTER:
        LoadPalette(Gacha_BG_Master_Pal, 0, PLTT_SIZE_4BPP);
        break;
    }
}

static void Shake2(void)
{
    u16 size = 0x1480;

    InitBgsFromTemplates(0, sGachaBGtemplates, ARRAY_COUNT(sGachaBGtemplates));
    SetBgTilemapBuffer(GACHA_BG_BASE, AllocZeroed(BG_SCREEN_SIZE));
    DecompressAndLoadBgGfxUsingHeap(GACHA_BG_BASE, Gacha_BG_Right, size, 0, 0);
    CopyToBgTilemapBuffer(GACHA_BG_BASE, Gacha_BG_Right_Tilemap, 0, 0);
    ResetPaletteFade();

    switch (sGacha->GachaId)
    {
    default:
    case GACHA_BASIC:
        LoadPalette(Gacha_BG_Basic_Pal, 0, PLTT_SIZE_4BPP);
        break;
    case GACHA_GREAT:
        LoadPalette(Gacha_BG_Great_Pal, 0, PLTT_SIZE_4BPP);
        break;
    case GACHA_ULTRA:
        LoadPalette(Gacha_BG_Ultra_Pal, 0, PLTT_SIZE_4BPP);
        break;
    case GACHA_MASTER:
        LoadPalette(Gacha_BG_Master_Pal, 0, PLTT_SIZE_4BPP);
        break;
    }
}

static void GachaVBlankCallback(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void GachaMainCallback(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    RunTextPrinters();
    UpdatePaletteFade();
}

static void SetCreditDigits(u16 num)
{
    u8 i;
    u16 d = 1000;

    for (i = 0; i < 4; i++)
    {
        u8 digit = num / d;

        gSprites[sGacha->CreditSpriteIds[i + SPR_CREDIT_DIGITS]].invisible = FALSE;

        gSprites[sGacha->CreditSpriteIds[i + SPR_CREDIT_DIGITS]].oam.tileNum =
            gSprites[sGacha->CreditSpriteIds[i + SPR_CREDIT_DIGITS]].sheetTileStart + (digit * 2);

        gSprites[sGacha->CreditSpriteIds[i + SPR_CREDIT_DIGITS]].oam.priority = 0;

        num = num % d;
        d = d / 10;
    }

    for (i = 0; i < 4; i++) {
        if (gSprites[sGacha->CreditSpriteIds[i + SPR_CREDIT_DIGITS]].invisible == FALSE) {

        } else {
            gSprites[sGacha->CreditSpriteIds[i + SPR_CREDIT_DIGITS]].invisible = FALSE;
        }
    }

    BuildOamBuffer();
}

static void SetPlayerDigits(u16 num)
{
    u8 i;
    u16 d = 1000;  // Start with the thousands place

    for (i = 0; i < 4; i++)  // Always show 4 digits
    {
        u8 digit = num / d;

        // Show the digit (all digits are visible)
        gSprites[sGacha->PlayerSpriteIds[i + SPR_PLAYER_DIGITS]].invisible = FALSE;

        // If it's a smaller number, show 0 for the higher place values
        if (i == 0 && num < 1000) {
            digit = 0;  // Force 0 for the thousands place if the number is less than 1000
        }

        // Set the tileNum based on the current digit
        gSprites[sGacha->PlayerSpriteIds[i + SPR_PLAYER_DIGITS]].oam.tileNum =
            gSprites[sGacha->PlayerSpriteIds[i + SPR_PLAYER_DIGITS]].sheetTileStart + (digit * 2);

        gSprites[sGacha->PlayerSpriteIds[i + SPR_PLAYER_DIGITS]].oam.priority = 0;

        // Reduce num for the next digit
        num = num % d;
        d = d / 10;
    }

    BuildOamBuffer();
}

static void CreateCreditSprites(void)
{
    u8 i;

    for (i = 0; i < ARRAY_COUNT(sSpriteSheets_Interface) - 1; i++)  
    {
        LoadCompressedSpriteSheet(&sSpriteSheets_Interface[i]);
    }

    for (i = 0; i < MAX_COIN_DIGITS; i++)
    {
        if (i == 0)
        {
            sGacha->CreditSpriteIds[i + SPR_CREDIT_DIGITS] = CreateSprite(&sSpriteTemplate_CreditDigit, 207, 140, 2);
            gSprites[sGacha->PlayerSpriteIds[i + SPR_CREDIT_DIGITS]].oam.priority = 0;
        }
        if (i == 1)
        {
            sGacha->CreditSpriteIds[i + SPR_CREDIT_DIGITS] = CreateSprite(&sSpriteTemplate_CreditDigit, 8 + 207, 140, 2);
            gSprites[sGacha->PlayerSpriteIds[i + SPR_CREDIT_DIGITS]].oam.priority = 0;
        }
        if (i == 2)
        {
            sGacha->CreditSpriteIds[i + SPR_CREDIT_DIGITS] = CreateSprite(&sSpriteTemplate_CreditDigit, 16 + 207, 140, 2);
            gSprites[sGacha->PlayerSpriteIds[i + SPR_CREDIT_DIGITS]].oam.priority = 0;
        }
        if (i == 3)
        {
            sGacha->CreditSpriteIds[i + SPR_CREDIT_DIGITS] = CreateSprite(&sSpriteTemplate_CreditDigit, 24 + 207, 140, 2);
            gSprites[sGacha->PlayerSpriteIds[i + SPR_CREDIT_DIGITS]].oam.priority = 0;
        }
    }
}

static void CreatePlayerSprites(void)
{
    u8 i;

    for (i = 0; i < ARRAY_COUNT(sSpriteSheets_PlayerInterface) - 1; i++)  
    {
        LoadCompressedSpriteSheet(&sSpriteSheets_PlayerInterface[i]);
    }

    for (i = 0; i < 4; i++)
    {
        sGacha->PlayerSpriteIds[i + SPR_PLAYER_DIGITS] = CreateSprite(&sSpriteTemplate_PlayerDigit, i * 8 + 207, 118, 2);
        gSprites[sGacha->PlayerSpriteIds[i + SPR_PLAYER_DIGITS]].oam.priority = 0;
    }
}

static void CreateCTA(void)
{
    LoadCompressedSpriteSheet(&sSpriteSheet_Press_A);
    sGacha->CTAspriteId = CreateSprite(&sSpriteTemplate_Press_A, 152, 116, 0);
    gSprites[sGacha->CTAspriteId].animNum = 0; // Off
}

static void CreateArrows(void)
{
    LoadCompressedSpriteSheet(&sSpriteSheet_Arrows);
    sGacha->ArrowsSpriteId = CreateSprite(&sSpriteTemplate_Arrows, 207 + 24, 120, 0);
    gSprites[sGacha->ArrowsSpriteId].animNum = 1; // Only Up
}

static void CreateLotteryJPN(void)
{
    LoadCompressedSpriteSheet(&sSpriteSheet_Lottery_JPN);
    sGacha->LotteryJPNspriteId = CreateSprite(&sSpriteTemplate_Lottery_JPN, 176, 32, 0);
}

static void CreateHoppip(void)
{
    s16 x = 142;
    s16 y = 56;
    s16 x2 = x + 34;
    s16 x3 = x + 68;

    LoadCompressedSpriteSheet(&sSpriteSheet_Hoppip);
    sGacha->PokemonOneSpriteId = CreateSprite(&sSpriteTemplate_Hoppip, x, y, 0);
    sGacha->PokemonTwoSpriteId = CreateSprite(&sSpriteTemplate_Hoppip, x2, y, 0);    
    sGacha->PokemonThreeSpriteId = CreateSprite(&sSpriteTemplate_Hoppip, x3, y, 0);    
}

static UNUSED void CreateElekid(void)
{
    s16 x = 142;
    s16 y = 56 + 2;
    s16 x2 = x + 34;
    s16 x3 = x + 68;

    LoadCompressedSpriteSheet(&sSpriteSheet_Elekid);
    sGacha->PokemonOneSpriteId = CreateSprite(&sSpriteTemplate_Elekid, x, y, 0);
    sGacha->PokemonTwoSpriteId = CreateSprite(&sSpriteTemplate_Elekid, x2, y, 0);
    sGacha->PokemonThreeSpriteId = CreateSprite(&sSpriteTemplate_Elekid, x3, y, 0);    
}

static void CreateTeddiursa(void)
{
    s16 x = 142;
    s16 y = 56;
    s16 x2 = x + 34;
    s16 x3 = x + 68;

    LoadCompressedSpriteSheet(&sSpriteSheet_Teddiursa);
    sGacha->PokemonOneSpriteId = CreateSprite(&sSpriteTemplate_Teddiursa, x, y, 0);
    sGacha->PokemonTwoSpriteId = CreateSprite(&sSpriteTemplate_Teddiursa, x2, y, 0);    
    sGacha->PokemonThreeSpriteId = CreateSprite(&sSpriteTemplate_Teddiursa, x3, y, 0);
}

static void CreatePhanpy(void)
{
    s16 x = 142;
    s16 y = 56;
    s16 x2 = x + 34;
    s16 x3 = x + 68;

    LoadCompressedSpriteSheet(&sSpriteSheet_Phanpy);
    sGacha->PokemonOneSpriteId = CreateSprite(&sSpriteTemplate_Phanpy, x, y, 0);
    sGacha->PokemonTwoSpriteId = CreateSprite(&sSpriteTemplate_Phanpy, x2, y, 0);
    sGacha->PokemonThreeSpriteId = CreateSprite(&sSpriteTemplate_Phanpy, x3, y, 0);
}

static void CreateBelossom(void)
{
    s16 x = 142;
    s16 y = 56;
    s16 x2 = x + 34;
    s16 x3 = x + 68;

    LoadCompressedSpriteSheet(&sSpriteSheet_Belossom);
    sGacha->PokemonOneSpriteId = CreateSprite(&sSpriteTemplate_Belossom, x, y, 0);
    sGacha->PokemonTwoSpriteId = CreateSprite(&sSpriteTemplate_Belossom, x2, y, 0);    
    sGacha->PokemonThreeSpriteId = CreateSprite(&sSpriteTemplate_Belossom, x3, y, 0);

}

static void CreateDigitalText(void)
{
    LoadCompressedSpriteSheet(&sSpriteSheet_Digital_Text);
    sGacha->DigitalTextSpriteId = CreateSprite(&sSpriteTemplate_Digital_Text, 64, 25, 0);
}

static void CreateCreditMenu(void)
{
    s16 x = 144;
    s16 y = 128;
    u8 priority = 1;

    LoadCompressedSpriteSheet(&sSpriteSheet_Menu_1);

    switch (sGacha->GachaId)
    {
    default:
    case GACHA_BASIC:
        sGacha->CreditMenu1Id = CreateSprite(&sSpriteTemplate_Menu_1_Basic, x, y, priority);
        break;
    case GACHA_GREAT:
        sGacha->CreditMenu1Id = CreateSprite(&sSpriteTemplate_Menu_1_Great, x, y, priority);
        break;
    case GACHA_ULTRA:
        sGacha->CreditMenu1Id = CreateSprite(&sSpriteTemplate_Menu_1_Ultra, x, y, priority);
        break;
    case GACHA_MASTER:
        sGacha->CreditMenu1Id = CreateSprite(&sSpriteTemplate_Menu_1_Master, x, y, priority);
        break;
    }
    gSprites[sGacha->CreditMenu1Id].oam.priority = 1;
}

static void CreatePlayerMenu(void)
{
    s16 x = 144;
    s16 y = 128;
    s16 x2 = x + 64;
    u8 priority = 1;

    LoadCompressedSpriteSheet(&sSpriteSheet_Menu_2);

    switch (sGacha->GachaId)
    {
    default:
    case GACHA_BASIC:
        sGacha->CreditMenu2Id = CreateSprite(&sSpriteTemplate_Menu_2_Basic, x2, y, priority);
        break;
    case GACHA_GREAT:
        sGacha->CreditMenu2Id = CreateSprite(&sSpriteTemplate_Menu_2_Great, x2, y, priority);
        break;
    case GACHA_ULTRA:
        sGacha->CreditMenu2Id = CreateSprite(&sSpriteTemplate_Menu_2_Ultra, x2, y, priority);
        break;
    case GACHA_MASTER:
        sGacha->CreditMenu2Id = CreateSprite(&sSpriteTemplate_Menu_2_Master, x2, y, priority);
        break;
    }
    gSprites[sGacha->CreditMenu2Id].oam.priority = 1;
}

static void CreateKnob(void)
{
    LoadCompressedSpriteSheet(&sSpriteSheet_Knob);
    sGacha->KnobSpriteId = CreateSprite(&sSpriteTemplate_Knob, 76, 128, 0);
    gSprites[sGacha->KnobSpriteId].animNum = 0; // No Rotation
}

static const u16 sGachaBasicSpeciesCommon[] = {
    SPECIES_WURMPLE,
    SPECIES_MAGIKARP,
    SPECIES_SENTRET,
    SPECIES_LOTAD,
    SPECIES_POOCHYENA,
    SPECIES_MAKUHITA,
    SPECIES_WHISMUR,
    SPECIES_ZIGZAGOON,
    SPECIES_ZUBAT,
    SPECIES_PIDGEY,
    SPECIES_RATTATA,
    SPECIES_SKITTY,
    SPECIES_SLUGMA,
    SPECIES_SURSKIT,
    SPECIES_TAILLOW,
    SPECIES_WINGULL,
    SPECIES_MEDITITE,
    SPECIES_SLAKOTH,
    SPECIES_MARILL,
    SPECIES_MACHOP,
    SPECIES_MANKEY,
    SPECIES_SLOWPOKE,
    SPECIES_ODDISH,
    SPECIES_PSYDUCK,
    SPECIES_NINCADA,
    SPECIES_ELECTRIKE,
    SPECIES_BARBOACH,
    SPECIES_SHROOMISH,
    SPECIES_GEODUDE,
    SPECIES_POLIWAG,
    SPECIES_SNUBBULL,
    SPECIES_GOLDEEN,
    SPECIES_ARON,
    SPECIES_BUDEW
};

static const u16 sGachaBasicSpeciesUncommon[] = {
    SPECIES_CASCOON,
    SPECIES_SILCOON,
    SPECIES_RALTS,
    SPECIES_JIGGLYPUFF,
    SPECIES_NIDORAN_F,
    SPECIES_NIDORAN_M,
    SPECIES_KIRLIA,
    SPECIES_HORSEA,
    SPECIES_CHINGLING,
    SPECIES_MEOWTH,
    SPECIES_PINECO,
    SPECIES_SPHEAL,
    SPECIES_VULPIX,
    SPECIES_BALTOY,
    SPECIES_GULPIN,
    SPECIES_SANDSHREW,
    SPECIES_SNORUNT,
    SPECIES_NUMEL,
    SPECIES_SMOOCHUM,
    SPECIES_CORPHISH,
    SPECIES_ABRA,
    SPECIES_DODUO,
    SPECIES_GASTLY,
    SPECIES_CARVANHA,
    SPECIES_WOOPER,
    SPECIES_VOLTORB,
    SPECIES_CACNEA,
    SPECIES_TENTACOOL,
    SPECIES_KOFFING,
    SPECIES_NATU,
    SPECIES_GRIMER,
    SPECIES_MAGNEMITE,
    SPECIES_HOPPIP,
    SPECIES_HOUNDOUR,
    SPECIES_PHANPY,
    SPECIES_SPOINK,
    SPECIES_STARYU,
    SPECIES_LOMBRE,
    SPECIES_NUZLEAF,
    SPECIES_RHYHORN,
    SPECIES_DUSKULL,
    SPECIES_SHUPPET,
    SPECIES_TRAPINCH,
    SPECIES_GROWLITHE
};

static const u16 sGachaBasicSpeciesRare[] = {
    SPECIES_SKIPLOOM,
    SPECIES_CHINCHOU,
    SPECIES_VIBRAVA,
    SPECIES_CLAMPERL,
    SPECIES_MANTYKE,
    SPECIES_CLEFAIRY,
    SPECIES_PIKACHU,
    SPECIES_PICHU,
    SPECIES_AZURILL,
    SPECIES_IGGLYBUFF,
    SPECIES_CLEFFA,
    SPECIES_SHEDINJA,
    SPECIES_SMEARGLE,
    SPECIES_WYNAUT,
    SPECIES_FEEBAS,
    SPECIES_TEDDIURSA,
    SPECIES_EEVEE,
    SPECIES_SWABLU
};

static const u16 sGachaBasicSpeciesUltraRare[] = {
    SPECIES_TOGEPI,
    SPECIES_TORCHIC,
    SPECIES_TOTODILE,
    SPECIES_BAGON,
    SPECIES_BULBASAUR,
    SPECIES_BELDUM,
    SPECIES_DRATINI
};

static const u16 sGachaGreatSpeciesCommon[] = {
    SPECIES_PIDGEOTTO,
    SPECIES_LOUDRED,
    SPECIES_SPINDA,
    SPECIES_NIDORINA,
    SPECIES_NIDORINO,
    SPECIES_NOSEPASS,
    SPECIES_SABLEYE,
    SPECIES_POLIWHIRL,
    SPECIES_GRAVELER,
    SPECIES_BEAUTIFLY,
    SPECIES_DUSTOX,
    SPECIES_GLOOM,
    SPECIES_ROSELIA,
    SPECIES_MACHOKE,
    SPECIES_MINUN,
    SPECIES_MURKROW,
    SPECIES_PLUSLE,
    SPECIES_MEDICHAM,
    SPECIES_RATICATE,
    SPECIES_DELCATTY,
    SPECIES_FURRET,
    SPECIES_LINOONE,
    SPECIES_MIGHTYENA,
    SPECIES_GLIGAR,
    SPECIES_ILLUMISE,
    SPECIES_VOLBEAT,
    SPECIES_PELIPPER,
    SPECIES_VIGOROTH,
    SPECIES_SANDSLASH,
    SPECIES_SEAKING,
    SPECIES_MASQUERAIN,
    SPECIES_MISDREAVUS,
    SPECIES_PRIMEAPE,
    SPECIES_SWELLOW,
    SPECIES_NINJASK,
    SPECIES_TANGELA,
    SPECIES_GOLBAT,
    SPECIES_STANTLER,
    SPECIES_FORRETRESS,
    SPECIES_SWALOT,
    SPECIES_CRAWDAUNT,
    SPECIES_WHISCASH,
    SPECIES_SKARMORY,
    SPECIES_TORKOAL,
    SPECIES_HARIYAMA,
    SPECIES_CACTURNE,
    SPECIES_MANECTRIC,
    SPECIES_WEEZING,
    SPECIES_KADABRA,
    SPECIES_RHYDON,
    SPECIES_SLOWBRO,
    SPECIES_YANMA,
    SPECIES_WAILMER,
    SPECIES_SCIZOR
};

static const u16 sGachaGreatSpeciesUncommon[] = {
    SPECIES_LAIRON,
    SPECIES_MAGCARGO,
    SPECIES_QUAGSIRE,
    SPECIES_SNEASEL,
    SPECIES_KECLEON,
    SPECIES_SEADRA,
    SPECIES_GRANBULL,
    SPECIES_SEALEO,
    SPECIES_PERSIAN,
    SPECIES_SHARPEDO,
    SPECIES_CAMERUPT,
    SPECIES_CHIMECHO,
    SPECIES_DUSCLOPS,
    SPECIES_GIRAFARIG,
    SPECIES_JYNX,
    SPECIES_SEVIPER,
    SPECIES_ZANGOOSE,
    SPECIES_BRELOOM,
    SPECIES_LUNATONE,
    SPECIES_VIRIZION,
    SPECIES_SOLROCK,
    SPECIES_TROPIUS,
    SPECIES_LUVDISC,
    SPECIES_DODRIO,
    SPECIES_GRUMPIG,
    SPECIES_GLALIE,
    SPECIES_ELECTABUZZ,
    SPECIES_ELECTRODE,
    SPECIES_EXPLOUD,
    SPECIES_LUDICOLO,
    SPECIES_SHIFTRY,
    SPECIES_PIDGEOT,
    SPECIES_HAUNTER,
    SPECIES_XATU,
    SPECIES_BIBAREL,
    SPECIES_MANTINE,
    SPECIES_RAICHU,
    SPECIES_CORSOLA,
    SPECIES_AZUMARILL,
    SPECIES_CASTFORM,
    SPECIES_MAWILE,
    SPECIES_ELEKID,
    SPECIES_MAGBY,
    SPECIES_MAGNETON
};

static const u16 sGachaGreatSpeciesRare[] = {
    SPECIES_BANETTE,
    SPECIES_MISMAGIUS,
    SPECIES_WOBBUFFET,
    SPECIES_JUMPLUFF,
    SPECIES_LANTURN,
    SPECIES_ABSOL,
    SPECIES_GOREBYSS,
    SPECIES_HUNTAIL,
    SPECIES_GOLEM,
    SPECIES_MAGMAR,
    SPECIES_SLOWKING,
    SPECIES_CLEFABLE,
    SPECIES_LILEEP,
    SPECIES_ALAKAZAM,
    SPECIES_FROSLASS,
    SPECIES_ALTARIA,
    SPECIES_WIGGLYTUFF,
    SPECIES_ANORITH
};

static const u16 sGachaGreatSpeciesUltraRare[] = {
    SPECIES_TOGETIC,
    SPECIES_ARMALDO,
    SPECIES_CRADILY,
    SPECIES_METANG,
    SPECIES_COMBUSKEN,
    SPECIES_CROCONAW,
    SPECIES_DRAGONAIR,
    SPECIES_SHELGON,
    SPECIES_IVYSAUR
};

static const u16 sGachaUltraSpeciesCommon[] = {
    SPECIES_CLAYDOL,
    SPECIES_DONPHAN,
    SPECIES_HERACROSS,
    SPECIES_HOUNDOOM,
    SPECIES_MUK,
    SPECIES_PINSIR,
    SPECIES_SCYTHER,
    SPECIES_WAILORD,
    SPECIES_VOLCARONA,
    SPECIES_HONCHKROW,
    SPECIES_MACHAMP,
    SPECIES_GOLDUCK,
    SPECIES_POLIWRATH,
    SPECIES_TENTACRUEL,
    SPECIES_ROSERADE,
    SPECIES_YANMEGA,
    SPECIES_DARKRAI,
    SPECIES_OBSTAGOON,
    SPECIES_SLAKING,
    SPECIES_CROBAT,
    SPECIES_LAPRAS,
    SPECIES_STARMIE,
    SPECIES_AGGRON,
    SPECIES_GYARADOS,
    SPECIES_WALREIN,
    SPECIES_URSARING,
    SPECIES_TANGROWTH,
    SPECIES_PROBOPASS
};

static const u16 sGachaUltraSpeciesUncommon[] = {
    SPECIES_CURSOLA,
    SPECIES_WEAVILE,
    SPECIES_GALLADE,
    SPECIES_GARDEVOIR,
    SPECIES_FARIGIRAF,
    SPECIES_FLYGON,
    SPECIES_GLISCOR,
    SPECIES_NIDOKING,
    SPECIES_NIDOQUEEN,
    SPECIES_NINETALES,
    SPECIES_RELICANTH,
    SPECIES_ARCANINE,
    SPECIES_KINGDRA,
    SPECIES_POLITOED,
    SPECIES_VILEPLUME,
    SPECIES_GENGAR,
    SPECIES_ANNIHILAPE,
    SPECIES_WYRDEER,
    SPECIES_MILOTIC,
    SPECIES_RHYPERIOR,
    SPECIES_MAGNEZONE,
    SPECIES_ELECTIVIRE,
    SPECIES_MAGMORTAR,
    SPECIES_DUSKNOIR,
    SPECIES_BELLOSSOM
};

static const u16 sGachaUltraSpeciesRare[] = {
    SPECIES_SYLVEON,
    SPECIES_UMBREON,
    SPECIES_VAPOREON,
    SPECIES_ESPEON,
    SPECIES_FLAREON,
    SPECIES_GLACEON,
    SPECIES_JOLTEON,
    SPECIES_LEAFEON,
    SPECIES_TOGEKISS,
    SPECIES_URSALUNA,
    SPECIES_KLEAVOR
};

static const u16 sGachaUltraSpeciesUltraRare[] = {
    SPECIES_METAGROSS,
    SPECIES_DRUDDIGON,
    SPECIES_DRAGONITE,
    SPECIES_BLAZIKEN,
    SPECIES_FERALIGATR,
    SPECIES_VENUSAUR
};

static const u16 sGachaMasterSpeciesCommon[] = {
    SPECIES_DITTO,
    SPECIES_METANG,
    SPECIES_SHELGON,
    SPECIES_PUPITAR,
    SPECIES_DRAGONAIR,
    SPECIES_FLYGON,
    SPECIES_VENUSAUR,
    SPECIES_VAPOREON,
    SPECIES_JOLTEON,
    SPECIES_FLAREON,
    SPECIES_MEGANIUM,
    SPECIES_BLASTOISE,
    SPECIES_FERALIGATR,
    SPECIES_SCEPTILE,
    SPECIES_BLAZIKEN,
    SPECIES_SWAMPERT,
    SPECIES_CHARIZARD,
    SPECIES_TYPHLOSION
};

static const u16 sGachaMasterSpeciesUncommon[] = {
    SPECIES_OMASTAR,
    SPECIES_KABUTOPS,
    SPECIES_CRADILY,
    SPECIES_ARMALDO,
    SPECIES_SHUCKLE,
    SPECIES_AERODACTYL,
    SPECIES_ESPEON,
    SPECIES_UMBREON,
    SPECIES_LAPRAS,
    SPECIES_SNORLAX,
    SPECIES_DRAGONITE,
    SPECIES_SALAMENCE,
    SPECIES_METAGROSS,
    SPECIES_SHEDINJA,
    SPECIES_SMEARGLE,
    SPECIES_UNOWN,
    SPECIES_BLISSEY
};

static const u16 sGachaMasterSpeciesRare[] = {
    SPECIES_ARTICUNO,
    SPECIES_ZAPDOS,
    SPECIES_MOLTRES,
    SPECIES_RAIKOU,
    SPECIES_ENTEI,
    SPECIES_SUICUNE,
    SPECIES_REGIROCK,
    SPECIES_REGICE,
    SPECIES_REGISTEEL,
    SPECIES_LATIAS,
    SPECIES_LATIOS
};

static const u16 sGachaMasterSpeciesUltraRare[] = {
    SPECIES_MEW,
    SPECIES_CELEBI,
    SPECIES_JIRACHI,
    SPECIES_DEOXYS,
    SPECIES_KYOGRE,
    SPECIES_GROUDON,
    SPECIES_MEWTWO,
    SPECIES_LUGIA,
    SPECIES_HO_OH,
    SPECIES_RAYQUAZA
};

static void ShowMessage(void)
{
    u16 bet;
    struct WindowTemplate template;

    SetWindowTemplateFields(&template, GACHA_MENUS, 17, 10, 10, 2, 0xF, 0x194);
    
    sTextWindowId = AddWindow(&template);
    FillWindowPixelBuffer(sTextWindowId, PIXEL_FILL(0));
    PutWindowTilemap(sTextWindowId);
    LoadUserWindowBorderGfx(sTextWindowId, 0x214, BG_PLTT_ID(14));
    DrawStdWindowFrame(sTextWindowId, FALSE); 
    bet = sGacha->newMonOdds;
    ConvertUIntToDecimalStringN(gStringVar1, bet, STR_CONV_MODE_LEADING_ZEROS, 3);
    //gStringVar4[0] = '\0';
    StringExpandPlaceholders(gStringVar4, sMessageText);
    AddTextPrinterParameterized(sTextWindowId, FONT_NARROW, gStringVar4, 0, 1, 0, 0);
    CopyWindowToVram(sTextWindowId, 3);
}

static void ResetMessage(void)
{
    ClearStdWindowAndFrame(sTextWindowId, TRUE);
    RemoveWindow(sTextWindowId);
}

static void StartExitGacha(void)
{
    BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
    sGacha->state = GACHA_STATE_EXIT;
}

static void StartTradeScreen(void)
{
    BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);
    sGacha->state = STATE_FADE;
}

static u16 CountValidGachaSpecies(const u16 *speciesList, u16 speciesCount)
{
    u16 i;
    u16 validCount = 0;

    for (i = 0; i < speciesCount; i++)
    {
        if (IsSpeciesInHoennDex(speciesList[i]))
            validCount++;
    }

    return validCount;
}

static u16 GetMinWagerForCurrentGacha(void)
{
    switch (sGacha->GachaId)
    {
    default:
    case GACHA_BASIC:
        return GACHA_BASIC_MIN_WAGER;
    case GACHA_GREAT:
        return GACHA_GREAT_MIN_WAGER;
    case GACHA_ULTRA:
        return GACHA_ULTRA_MIN_WAGER;
    case GACHA_MASTER:
        return GACHA_MASTER_MIN_WAGER;
    }
}

static u16 GetNthValidGachaSpecies(const u16 *speciesList, u16 speciesCount, u16 validIndex)
{
    u16 i;

    for (i = 0; i < speciesCount; i++)
    {
        if (!IsSpeciesInHoennDex(speciesList[i]))
            continue;

        if (validIndex == 0)
            return speciesList[i];

        validIndex--;
    }

    return SPECIES_NONE;
}

static u8 GetOwnedCountForCurrentRarity(void)
{
    switch (sGacha->Rarity)
    {
    default:
    case RARITY_COMMON:
        return sGacha->ownedCommon;
    case RARITY_UNCOMMON:
        return sGacha->ownedUncommon;
    case RARITY_RARE:
        return sGacha->ownedRare;
    case RARITY_ULTRA_RARE:
        return sGacha->ownedUltraRare;
    }
}

static u16 GetTotalOwnedGachaSpecies(void)
{
    return sGacha->ownedCommon + sGacha->ownedUncommon + sGacha->ownedRare + sGacha->ownedUltraRare;
}

static u16 GetTotalAvailableGachaSpecies(void)
{
    return GetMaxAvailableGachaRaritySpecies(sGacha->GachaId, RARITY_COMMON)
         + GetMaxAvailableGachaRaritySpecies(sGacha->GachaId, RARITY_UNCOMMON)
         + GetMaxAvailableGachaRaritySpecies(sGacha->GachaId, RARITY_RARE)
         + GetMaxAvailableGachaRaritySpecies(sGacha->GachaId, RARITY_ULTRA_RARE);
}

static u16 GetTotalUnownedGachaSpecies(void)
{
    u16 totalAvailable = GetTotalAvailableGachaSpecies();
    u16 totalOwned = GetTotalOwnedGachaSpecies();

    return (totalAvailable > totalOwned) ? (totalAvailable - totalOwned) : 0;
}

static void RollGachaRarity(void)
{
    u16 randomValue = Random() % 100;

    if (randomValue < RARITY_COMMON_ODDS)
        sGacha->Rarity = RARITY_COMMON;
    else if (randomValue < (RARITY_COMMON_ODDS + RARITY_UNCOMMON_ODDS))
        sGacha->Rarity = RARITY_UNCOMMON;
    else if (randomValue < (RARITY_COMMON_ODDS + RARITY_UNCOMMON_ODDS + RARITY_RARE_ODDS))
        sGacha->Rarity = RARITY_RARE;
    else
        sGacha->Rarity = RARITY_ULTRA_RARE;
}

static u16 GetSpeciesForRarityIndex(u8 rarity, u16 index)
{
    u8 savedRarity = sGacha->Rarity;
    u16 species;

    sGacha->Rarity = rarity;
    species = GetGachaMon(index);
    sGacha->Rarity = savedRarity;
    return species;
}

static u16 FindFallbackGachaSpecies(bool32 wantsNew)
{
    u8 rarity;
    u16 i;
    u16 totalMax;
    u16 species;

    for (rarity = RARITY_COMMON; rarity <= RARITY_ULTRA_RARE; rarity++)
    {
        totalMax = GetMaxAvailableGachaRaritySpecies(sGacha->GachaId, rarity);
        for (i = 0; i < totalMax; i++)
        {
            species = GetSpeciesForRarityIndex(rarity, i);
            if (species == SPECIES_NONE)
                continue;

            if (wantsNew)
            {
                if (!CheckIfOwned(species))
                {
                    sGacha->Rarity = rarity;
                    return species;
                }
            }
            else
            {
                if (CheckIfOwned(species))
                {
                    sGacha->Rarity = rarity;
                    return species;
                }
            }
        }
    }

    return SPECIES_NONE;
}

static void DeterminePokemonRarityAndNewStatusSafe(void)
{
    u16 species = SPECIES_NONE;
    u16 totalMax;
    u16 newPokemonChance;
    u16 totalOwned;
    u16 totalUnowned;
    bool32 wantsNew;
    u32 attempts = 5000;

    totalUnowned = GetTotalUnownedGachaSpecies();
    totalOwned = GetTotalOwnedGachaSpecies();
    wantsNew = (sGacha->newMonOdds > (Random() % 100));

    if (totalUnowned == 0)
        wantsNew = FALSE;
    else if (totalOwned == 0)
        wantsNew = TRUE;

    while (attempts-- > 0)
    {
        RollGachaRarity();
        totalMax = GetMaxAvailableGachaRaritySpecies(sGacha->GachaId, sGacha->Rarity);
        totalOwned = GetOwnedCountForCurrentRarity();

        if (totalMax == 0)
            continue;

        if (wantsNew && totalOwned >= totalMax)
            continue;

        if (!wantsNew && totalOwned == 0)
            continue;

        newPokemonChance = Random() % totalMax;
        species = GetGachaMon(newPokemonChance);
        if (species == SPECIES_NONE)
            continue;

        if (wantsNew)
        {
            if (!CheckIfOwned(species))
                break;
        }
        else
        {
            if (CheckIfOwned(species))
                break;
        }
    }

    if (species == SPECIES_NONE || species == 0)
    {
        species = FindFallbackGachaSpecies(wantsNew);

        if (species == SPECIES_NONE)
            species = FindFallbackGachaSpecies(FALSE);

        if (species == SPECIES_NONE)
            species = GetSpeciesForRarityIndex(RARITY_COMMON, 0);
    }

    sGacha->CalculatedSpecies = species;
}

static u16 GetMaxAvailableGachaRaritySpecies(u32 gachaId, u32 rarity)
{
    // Get the number of available Pokémon based on rarity
    switch (gachaId)
    {
    default:
    case GACHA_BASIC:
        switch (rarity)
        {
        default:
        case RARITY_COMMON:
            return CountValidGachaSpecies(sGachaBasicSpeciesCommon, ARRAY_COUNT(sGachaBasicSpeciesCommon));
        case RARITY_UNCOMMON:
            return CountValidGachaSpecies(sGachaBasicSpeciesUncommon, ARRAY_COUNT(sGachaBasicSpeciesUncommon));
        case RARITY_RARE:
            return CountValidGachaSpecies(sGachaBasicSpeciesRare, ARRAY_COUNT(sGachaBasicSpeciesRare));
        case RARITY_ULTRA_RARE:
            return CountValidGachaSpecies(sGachaBasicSpeciesUltraRare, ARRAY_COUNT(sGachaBasicSpeciesUltraRare));
        }
    case GACHA_GREAT:
        switch (rarity)
        {
        default:
        case RARITY_COMMON:
            return CountValidGachaSpecies(sGachaGreatSpeciesCommon, ARRAY_COUNT(sGachaGreatSpeciesCommon));
        case RARITY_UNCOMMON:
            return CountValidGachaSpecies(sGachaGreatSpeciesUncommon, ARRAY_COUNT(sGachaGreatSpeciesUncommon));
        case RARITY_RARE:
            return CountValidGachaSpecies(sGachaGreatSpeciesRare, ARRAY_COUNT(sGachaGreatSpeciesRare));
        case RARITY_ULTRA_RARE:
            return CountValidGachaSpecies(sGachaGreatSpeciesUltraRare, ARRAY_COUNT(sGachaGreatSpeciesUltraRare));
        }
    case GACHA_ULTRA:
        switch (rarity)
        {
        default:
        case RARITY_COMMON:
            return CountValidGachaSpecies(sGachaUltraSpeciesCommon, ARRAY_COUNT(sGachaUltraSpeciesCommon));
        case RARITY_UNCOMMON:
            return CountValidGachaSpecies(sGachaUltraSpeciesUncommon, ARRAY_COUNT(sGachaUltraSpeciesUncommon));
        case RARITY_RARE:
            return CountValidGachaSpecies(sGachaUltraSpeciesRare, ARRAY_COUNT(sGachaUltraSpeciesRare));
        case RARITY_ULTRA_RARE:
            return CountValidGachaSpecies(sGachaUltraSpeciesUltraRare, ARRAY_COUNT(sGachaUltraSpeciesUltraRare));
        }
    case GACHA_MASTER:
        switch (rarity)
        {
        default:
        case RARITY_COMMON:
            return CountValidGachaSpecies(sGachaMasterSpeciesCommon, ARRAY_COUNT(sGachaMasterSpeciesCommon));
        case RARITY_UNCOMMON:
            return CountValidGachaSpecies(sGachaMasterSpeciesUncommon, ARRAY_COUNT(sGachaMasterSpeciesUncommon));
        case RARITY_RARE:
            return CountValidGachaSpecies(sGachaMasterSpeciesRare, ARRAY_COUNT(sGachaMasterSpeciesRare));
        case RARITY_ULTRA_RARE:
            return CountValidGachaSpecies(sGachaMasterSpeciesUltraRare, ARRAY_COUNT(sGachaMasterSpeciesUltraRare));
        }
    }
    return 0; // failsafe
}

static inline u16 GetGachaBasicSpecies(u16 randNum)
{
    u16 totalMax;

    // Use the pre-defined totalMax values based on the rarity
    totalMax = GetMaxAvailableGachaRaritySpecies(GACHA_BASIC, sGacha->Rarity);

    // Check if the provided Number is valid
    if (randNum >= totalMax)
        return -1;  // Return -1 if the Number is out of range for the list

    // Now, search for the Pokémon based on its customNumber
    switch (sGacha->Rarity)
    {
    default:
    case RARITY_COMMON:
        return GetNthValidGachaSpecies(sGachaBasicSpeciesCommon, ARRAY_COUNT(sGachaBasicSpeciesCommon), randNum);
    case RARITY_UNCOMMON:
        return GetNthValidGachaSpecies(sGachaBasicSpeciesUncommon, ARRAY_COUNT(sGachaBasicSpeciesUncommon), randNum);
    case RARITY_RARE:
        return GetNthValidGachaSpecies(sGachaBasicSpeciesRare, ARRAY_COUNT(sGachaBasicSpeciesRare), randNum);
    case RARITY_ULTRA_RARE:
        return GetNthValidGachaSpecies(sGachaBasicSpeciesUltraRare, ARRAY_COUNT(sGachaBasicSpeciesUltraRare), randNum);
    }

    return -1; // Return -1 if customNumber is not found
}

static inline u16 GetGachaGreatSpecies(u16 randNum)
{
    u16 totalMax = 0;

    // Determine the totalMax based on rarity
    totalMax = GetMaxAvailableGachaRaritySpecies(GACHA_GREAT, sGacha->Rarity);

    // Check if the provided Number is within the range
    if (randNum >= totalMax)
        return -1;  // Return -1 if out of range

    // Loop through the correct array based on rarity
    switch (sGacha->Rarity)
    {
    default:
    case RARITY_COMMON:
        return GetNthValidGachaSpecies(sGachaGreatSpeciesCommon, ARRAY_COUNT(sGachaGreatSpeciesCommon), randNum);
    case RARITY_UNCOMMON:
        return GetNthValidGachaSpecies(sGachaGreatSpeciesUncommon, ARRAY_COUNT(sGachaGreatSpeciesUncommon), randNum);
    case RARITY_RARE:
        return GetNthValidGachaSpecies(sGachaGreatSpeciesRare, ARRAY_COUNT(sGachaGreatSpeciesRare), randNum);
    case RARITY_ULTRA_RARE:
        return GetNthValidGachaSpecies(sGachaGreatSpeciesUltraRare, ARRAY_COUNT(sGachaGreatSpeciesUltraRare), randNum);
    }

    return -1; // Return -1 if customNumber is not found
}

static inline u16 GetGachaUltraSpecies(u16 randNum)
{
    u16 totalMax = 0;

    // Determine the totalMax based on rarity
    totalMax = GetMaxAvailableGachaRaritySpecies(GACHA_ULTRA, sGacha->Rarity);

    // Check if the provided Number is within the range
    if (randNum >= totalMax)
        return -1;  // Return -1 if out of range

    // Loop through the correct array based on rarity
    switch (sGacha->Rarity)
    {
    default:
    case RARITY_COMMON:
        return GetNthValidGachaSpecies(sGachaUltraSpeciesCommon, ARRAY_COUNT(sGachaUltraSpeciesCommon), randNum);
    case RARITY_UNCOMMON:
        return GetNthValidGachaSpecies(sGachaUltraSpeciesUncommon, ARRAY_COUNT(sGachaUltraSpeciesUncommon), randNum);
    case RARITY_RARE:
        return GetNthValidGachaSpecies(sGachaUltraSpeciesRare, ARRAY_COUNT(sGachaUltraSpeciesRare), randNum);
    case RARITY_ULTRA_RARE:
        return GetNthValidGachaSpecies(sGachaUltraSpeciesUltraRare, ARRAY_COUNT(sGachaUltraSpeciesUltraRare), randNum);
    }

    return -1; // Return -1 if customNumber is not found
}

static inline u16 GetGachaMasterSpecies(u16 randNum)
{
    u16 totalMax = 0;

    totalMax = GetMaxAvailableGachaRaritySpecies(GACHA_MASTER, sGacha->Rarity);

    // Check if the provided Number is within the range
    if (randNum >= totalMax)
        return -1;  // Return -1 if out of range

    switch (sGacha->Rarity)
    {
    default:
    case RARITY_COMMON:
        return GetNthValidGachaSpecies(sGachaMasterSpeciesCommon, ARRAY_COUNT(sGachaMasterSpeciesCommon), randNum);
    case RARITY_UNCOMMON:
        return GetNthValidGachaSpecies(sGachaMasterSpeciesUncommon, ARRAY_COUNT(sGachaMasterSpeciesUncommon), randNum);
    case RARITY_RARE:
        return GetNthValidGachaSpecies(sGachaMasterSpeciesRare, ARRAY_COUNT(sGachaMasterSpeciesRare), randNum);
    case RARITY_ULTRA_RARE:
        return GetNthValidGachaSpecies(sGachaMasterSpeciesUltraRare, ARRAY_COUNT(sGachaMasterSpeciesUltraRare), randNum);
    }

    return -1; // Return -1 if customNumber is not found
}

static u16 GetGachaMon(u16 randNum)
{
    u32 species;

    switch (sGacha->GachaId)
    {
    default:
    case GACHA_BASIC:
        species = GetGachaBasicSpecies(randNum);
        break;
    case GACHA_GREAT:
        species = GetGachaGreatSpecies(randNum);
        break;
    case GACHA_ULTRA:
        species = GetGachaUltraSpecies(randNum);
        break;
    case GACHA_MASTER:
        species = GetGachaMasterSpecies(randNum);
        break;
    }

    if (species >= SPECIES_EGG)
        return SPECIES_NONE;  // Or another default value indicating not found.
    return species;
}

static inline bool32 CheckIfOwned(u16 species)
{
    u16 nationalDexNo;
    nationalDexNo = SpeciesToNationalPokedexNum(species);
    return GetSetPokedexFlag(nationalDexNo, FLAG_GET_CAUGHT);
}

static const u8 *GetGachaRarityPrizeText(u8 rarity)
{
    switch (rarity)
    {
    case RARITY_COMMON:
        return sText_CommonPrize;
    case RARITY_UNCOMMON:
        return sText_UncommonPrize;
    case RARITY_RARE:
        return sText_RarePrize;
    case RARITY_ULTRA_RARE:
    default:
        return sText_UltraRarePrize;
    }
}

static inline bool32 IsNotValidOwnedSpecies(u16 species)
{
    if (species == SPECIES_NONE)
        return TRUE;
    return !CheckIfOwned(species);
}

static inline bool32 IsNotValidUnownedSpecies(u16 species)
{
    if (species == SPECIES_NONE)
        return TRUE;
    return CheckIfOwned(species);
}

static u8 CountOwnedGachaSpecies(const u16 *speciesList, u16 speciesCount)
{
    u16 i;
    u16 species;
    int nationalDexNo;
    u8 ownedCount = 0;

    for (i = 0; i < speciesCount; i++)
    {
        species = speciesList[i];
        if (!IsSpeciesInHoennDex(species))
            continue;

        nationalDexNo = SpeciesToNationalPokedexNum(species);
        ownedCount += GetSetPokedexFlag(nationalDexNo, FLAG_GET_CAUGHT);
    }

    return ownedCount;
}

static void GetPokemonOwned(void)
{
    sGacha->ownedCommon = 0;
    sGacha->ownedUncommon = 0;
    sGacha->ownedRare = 0;
    sGacha->ownedUltraRare = 0;

    switch (sGacha->GachaId)
    {
    default:
    case GACHA_BASIC:
        sGacha->ownedCommon = CountOwnedGachaSpecies(sGachaBasicSpeciesCommon, ARRAY_COUNT(sGachaBasicSpeciesCommon));
        sGacha->ownedUncommon = CountOwnedGachaSpecies(sGachaBasicSpeciesUncommon, ARRAY_COUNT(sGachaBasicSpeciesUncommon));
        sGacha->ownedRare = CountOwnedGachaSpecies(sGachaBasicSpeciesRare, ARRAY_COUNT(sGachaBasicSpeciesRare));
        sGacha->ownedUltraRare = CountOwnedGachaSpecies(sGachaBasicSpeciesUltraRare, ARRAY_COUNT(sGachaBasicSpeciesUltraRare));
        break;
    case GACHA_GREAT:
        sGacha->ownedCommon = CountOwnedGachaSpecies(sGachaGreatSpeciesCommon, ARRAY_COUNT(sGachaGreatSpeciesCommon));
        sGacha->ownedUncommon = CountOwnedGachaSpecies(sGachaGreatSpeciesUncommon, ARRAY_COUNT(sGachaGreatSpeciesUncommon));
        sGacha->ownedRare = CountOwnedGachaSpecies(sGachaGreatSpeciesRare, ARRAY_COUNT(sGachaGreatSpeciesRare));
        sGacha->ownedUltraRare = CountOwnedGachaSpecies(sGachaGreatSpeciesUltraRare, ARRAY_COUNT(sGachaGreatSpeciesUltraRare));
        break;
    case GACHA_ULTRA:
        sGacha->ownedCommon = CountOwnedGachaSpecies(sGachaUltraSpeciesCommon, ARRAY_COUNT(sGachaUltraSpeciesCommon));
        sGacha->ownedUncommon = CountOwnedGachaSpecies(sGachaUltraSpeciesUncommon, ARRAY_COUNT(sGachaUltraSpeciesUncommon));
        sGacha->ownedRare = CountOwnedGachaSpecies(sGachaUltraSpeciesRare, ARRAY_COUNT(sGachaUltraSpeciesRare));
        sGacha->ownedUltraRare = CountOwnedGachaSpecies(sGachaUltraSpeciesUltraRare, ARRAY_COUNT(sGachaUltraSpeciesUltraRare));
        break;
    case GACHA_MASTER:
        sGacha->ownedCommon = CountOwnedGachaSpecies(sGachaMasterSpeciesCommon, ARRAY_COUNT(sGachaMasterSpeciesCommon));
        sGacha->ownedUncommon = CountOwnedGachaSpecies(sGachaMasterSpeciesUncommon, ARRAY_COUNT(sGachaMasterSpeciesUncommon));
        sGacha->ownedRare = CountOwnedGachaSpecies(sGachaMasterSpeciesRare, ARRAY_COUNT(sGachaMasterSpeciesRare));
        sGacha->ownedUltraRare = CountOwnedGachaSpecies(sGachaMasterSpeciesUltraRare, ARRAY_COUNT(sGachaMasterSpeciesUltraRare));
        break;
    }
}

u8 CalculateChanceForCategory(u16 owned, u16 available, u8 baseChance, u16 wager)
{
    u8 newChance;
    u8 ownedPercentage;
    u8 wagerMultiplier;
    u8 boostedChance;
    u16 minWager;

    // Determine minimum wager based on sGacha->GachaId
    switch (sGacha->GachaId)
    {
    default:
    case GACHA_BASIC:
        minWager = GACHA_BASIC_MIN_WAGER;
        break;
    case GACHA_GREAT:
        minWager = GACHA_GREAT_MIN_WAGER;
        break;
    case GACHA_ULTRA:
        minWager = GACHA_ULTRA_MIN_WAGER;
        break;
    case GACHA_MASTER:
        minWager = GACHA_MASTER_MIN_WAGER;
        break;
    }

    // If available Pokémon is 0, there is no chance
    if (available == 0)
        return 0;

    // Calculate the reduction in chance based on the proportion of owned Pokémon
    ownedPercentage = (owned * 100) / available;
    newChance = baseChance * (100 - ownedPercentage) / 100;

    // Ensure the wager is within the valid range
    if (wager >= minWager && owned < available)
    {
        // Normalize wager to a 0-100 range where [minWager - 9999] -> [0 - 100]
        wagerMultiplier = ((wager - minWager) * 100) / (9999 - minWager);

        // Boost the chance based on the wager multiplier, but cap it by baseChance
        boostedChance = newChance + ((baseChance - newChance) * wagerMultiplier) / 100;

        // Ensure the chance doesn't exceed baseChance
        newChance = (boostedChance > baseChance) ? baseChance : boostedChance;
    }

    return newChance;
}

// Function to determine if the player gets a new Pokémon, and the rarity
void DeterminePokemonRarityAndNewStatus(void)
{
    u16 species;
    u16 totalNotOwned;
    u8 totalOwned;
    u16 totalMax;
    u16 newPokemonChance;
    u16 randomValue;
    u32 attempts = 1000;
    u32 outerAttempts = 50;

    while (outerAttempts > 0)
    {
        outerAttempts--;
        randomValue = (Random() % 100);  // Generate random value between 0 and 100

        // Determine Rarity based on the chances
        if (randomValue < RARITY_COMMON_ODDS)
            sGacha->Rarity = RARITY_COMMON; // Common
        else if (randomValue < (RARITY_COMMON_ODDS + RARITY_UNCOMMON_ODDS))
            sGacha->Rarity = RARITY_UNCOMMON; // Uncommon
        else if (randomValue < (RARITY_COMMON_ODDS + RARITY_UNCOMMON_ODDS + RARITY_RARE_ODDS))
            sGacha->Rarity = RARITY_RARE; // Rare
        else
            sGacha->Rarity = RARITY_ULTRA_RARE; // Ultra Rare

        // Get the number of available and owned Pokémon based on rarity
        totalMax = GetMaxAvailableGachaRaritySpecies(sGacha->GachaId, sGacha->Rarity);
        switch (sGacha->Rarity)
        {
        default:
        case RARITY_COMMON:
            totalOwned = sGacha->ownedCommon;
            break;
        case RARITY_UNCOMMON:
            totalOwned = sGacha->ownedUncommon;
            break;
        case RARITY_RARE:
            totalOwned = sGacha->ownedRare;
            break;
        case RARITY_ULTRA_RARE:
            totalOwned = sGacha->ownedUltraRare;
            break;
        }

        // Calculate the total number of Pokémon the player doesn't own
        totalNotOwned = totalMax - totalOwned;

        if (totalNotOwned <= 0)
        {
            // fallback para COMMON se esgotou tentativas
            if (outerAttempts <= 0)
            {
                sGacha->Rarity = RARITY_COMMON;
                totalMax = GetMaxAvailableGachaRaritySpecies(sGacha->GachaId, RARITY_COMMON);
                totalNotOwned = totalMax;
            }
            else
            {
                continue;
            }
        }

        // Generate a random value for the chances
        randomValue = Random() % 100;  // Generate random value between 0-99

        // Check if we should get a new Pokémon based on the odds
        if (sGacha->newMonOdds >= randomValue)
        {
            // Loop until a new (not owned) Pokémon is found
            do {
                newPokemonChance = (Random() % totalMax);  // Random pull from the available pool
                species = GetGachaMon(newPokemonChance);  // Get the Pokémon species based on the random value
                attempts--;
                if (attempts < 1)
                {
                    attempts = 1000;
                    randomValue = (Random() % 100);  // Generate random value between 0 and 100

                    // Determine Rarity based on the chances
                    if (randomValue < RARITY_COMMON_ODDS)
                        sGacha->Rarity = RARITY_COMMON;
                    else if (randomValue < (RARITY_COMMON_ODDS + RARITY_UNCOMMON_ODDS))
                        sGacha->Rarity = RARITY_UNCOMMON;
                    else if (randomValue < (RARITY_COMMON_ODDS + RARITY_UNCOMMON_ODDS + RARITY_RARE_ODDS))
                        sGacha->Rarity = RARITY_RARE;
                    else
                        sGacha->Rarity = RARITY_ULTRA_RARE;
                }
                // If the Pokémon is not owned, we found a new Pokémon
            } while (IsNotValidUnownedSpecies(species));  // Continue if owned (IsNotValidUnownedSpecies returns TRUE)

            // If we've broken out of the loop, we have a new Pokémon
            if (species == SPECIES_NONE || species == 0)
                species = sGachaBasicSpeciesCommon[0];
            sGacha->CalculatedSpecies = species;  // Store the species of the new Pokémon
            break;  // Exit the loop after finding a new Pokémon
        }
        else
        {
            // Loop until an owned Pokémon is found
            do {
                newPokemonChance = (Random() % totalMax);  // Random pull from the available pool
                species = GetGachaMon(newPokemonChance);  // Get the Pokémon species based on the random value
                attempts--;
                if (attempts < 1)
                {
                    attempts = 1000;
                    randomValue = (Random() % 100);  // Generate random value between 0 and 100

                    // Determine Rarity based on the chances
                    if (randomValue < RARITY_COMMON_ODDS)
                        sGacha->Rarity = RARITY_COMMON;
                    else if (randomValue < (RARITY_COMMON_ODDS + RARITY_UNCOMMON_ODDS))
                        sGacha->Rarity = RARITY_UNCOMMON;
                    else if (randomValue < (RARITY_COMMON_ODDS + RARITY_UNCOMMON_ODDS + RARITY_RARE_ODDS))
                        sGacha->Rarity = RARITY_RARE;
                    else
                        sGacha->Rarity = RARITY_ULTRA_RARE;
                }

                // If the Pokémon is owned, we have an owned Pokémon
            } while (IsNotValidOwnedSpecies(species) && sGacha->ownedCommon + sGacha->ownedUncommon + sGacha->ownedRare + sGacha->ownedUltraRare > 0);  // Continue if not owned

            // If we've broken out of the loop, we have an owned Pokémon
            if (species == SPECIES_NONE || species == 0)
                species = sGachaBasicSpeciesCommon[0];
            sGacha->CalculatedSpecies = species;  // Store the species of the owned Pokémon
            break;  // Exit the loop after finding an owned Pokémon
        }
    }
}

static void CalculatePullOdds(void)
{
    u16 wager = sGacha->wager;
    u16 minWager = GetMinWagerForCurrentGacha();
    u16 maxGuaranteedWager = minWager * 2;

    if (wager <= minWager)
        sGacha->newMonOdds = 20;
    else if (wager >= maxGuaranteedWager)
        sGacha->newMonOdds = 100;
    else
        sGacha->newMonOdds = 20 + (((wager - minWager) * 80) / minWager);
}

static void AButton(void)
{
    if (sGacha->canBetWager)
    {
        sGacha->state = STATE_INIT_A;
    }
    else
    {
        PlaySE(SE_FAILURE);
    }
}

static void UpdateCursorPosition(s16 x)
{
    // Update cursor position based on X coordinate
    if (x == 231)
        sGacha->cursorPosition = 3; // Ones
    else if (x == 223)
        sGacha->cursorPosition = 2; // Tens
    else if (x == 215)
        sGacha->cursorPosition = 1; // Hundreds
    else
        sGacha->cursorPosition = 0; // Thousands
}

static void UpdateWagerDigit(int direction)
{
    u8 place;
    u16 oldWager;
    u8 wagerDigits[4];
    u16 newWager;
    u16 d;
    int i;
    u16 maxWager;
    u16 minWager;

    place = sGacha->cursorPosition;
    d = 1000;
    oldWager = sGacha->wager;
    
    for (i = 0; i < 4; i++)
    {
        if (oldWager >= d)
            wagerDigits[i] = oldWager / d;
        else
            wagerDigits[i] = 0;

        oldWager = oldWager % d;
        d = d / 10;
    }
    maxWager = GetCoins();  // Maximum wager is the current coins
    minWager = GetMinWagerForCurrentGacha();
    if (maxWager > minWager * 2)
        maxWager = minWager * 2;
    
    // wagerDigits[0] = Thousands place
    // wagerDigits[1] = Hundreds place
    // wagerDigits[2] = Tens place
    // wagerDigits[3] = Ones place

    if (direction == 0) // Up
    {
        if (wagerDigits[place] == 9)
        {
            // Set the current digit to 0
            wagerDigits[place] = 0;
            if (place > 0)
                place--;  // Move to the next digit on the left
        }

        // Otherwise, simply increase the digit by 1
        wagerDigits[place]++;
        PlaySE(SE_SELECT);
                
        // Ensure the new wager doesn't exceed max available coins
        newWager = (wagerDigits[0] * 1000) + (wagerDigits[1] * 100) + (wagerDigits[2] * 10) + wagerDigits[3];
        if (newWager > maxWager) // If the new wager exceeds available coins, revert back
            newWager = maxWager;
        // Update the wager if it's within the limit
        sGacha->wager = newWager;
    }
    else if (direction == 2) // Down
    {
        if (wagerDigits[place] > 0)
        {
            // Decrease the digit by 1
            wagerDigits[place]--;
            newWager = (wagerDigits[0] * 1000) + (wagerDigits[1] * 100) + (wagerDigits[2] * 10) + wagerDigits[3];
            if (newWager < minWager)
                newWager = minWager;
            if (newWager != sGacha->wager)
            {
                sGacha->wager = newWager;
                PlaySE(SE_SELECT);
            }
        }
    }

    // Update sprite animation based on the new value
    gSprites[sGacha->ArrowsSpriteId].animNum = (wagerDigits[place] == 0) ? 1 : 0;
    SetPlayerDigits(sGacha->wager);  // Update the displayed wager

    if (sGacha->wager >= minWager && sGacha->canGiveMon)
    {
        ResetMessage();
        CalculatePullOdds();
        sGacha->canBetWager = TRUE;
        gSprites[sGacha->CTAspriteId].animNum = 1; // On
        ShowMessage();
    }
    else
    {
        ResetMessage();
        //CalculatePullOdds();
        sGacha->newMonOdds = 0;
        sGacha->canBetWager = FALSE;        
        gSprites[sGacha->CTAspriteId].animNum = 0; // Off
        ShowMessage();
    }
}

static void MoveCursor(int direction)
{
    struct Sprite *cursorSprite = &gSprites[sGacha->ArrowsSpriteId];
    int curX = cursorSprite->x;
    int destX = curX;
    
    // Move cursor left or right (X axis)
    if (direction == 1 || direction == 3)// Right or Left
    {
        if (direction == 1 && curX < 231)
        {
            destX = curX + 8;
            PlaySE(SE_SELECT);
        }
        else if (direction == 3 && curX > 207)
        {
            destX = curX - 8;
            PlaySE(SE_SELECT);
        }
        
        cursorSprite->x = destX;
        UpdateCursorPosition(gSprites[sGacha->ArrowsSpriteId].x);  // Update cursor position based on X coordinate
    }
    
    // Move cursor up or down (change wager digit)
    else if (direction == 0 || direction == 2) // Up or Down
    {
        UpdateWagerDigit(direction); // Update the corresponding digit
    }
}

static void ExitGacha(void)
{
    if (!gPaletteFade.active)
    {
        SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
        FREE_AND_SET_NULL(sGacha);
    }
}

static void HandleInput(void)
{
    if (JOY_NEW(A_BUTTON))
    {
        AButton();
    }
    else if (JOY_NEW(B_BUTTON))
    {
        gSpecialVar_Result = MON_CANT_GIVE;
        sGacha->state = GACHA_STATE_START_EXIT;
    }
    else if (JOY_NEW(DPAD_UP))
    {
        MoveCursor(0);
    }
    else if (JOY_NEW(DPAD_RIGHT))
    {
        MoveCursor(1);
    }
    else if (JOY_NEW(DPAD_DOWN))
    {
        MoveCursor(2);
    }
    else if (JOY_NEW(DPAD_LEFT))
    {
        MoveCursor(3);
    }
}

static void RemoveGarbage(void)
{
    DestroySpriteAndFreeResources(&gSprites[sGacha->CreditSpriteIds[0]]);
    DestroySpriteAndFreeResources(&gSprites[sGacha->CreditSpriteIds[1]]);
    DestroySpriteAndFreeResources(&gSprites[sGacha->CreditSpriteIds[2]]);
    DestroySpriteAndFreeResources(&gSprites[sGacha->CreditSpriteIds[3]]);
    DestroySpriteAndFreeResources(&gSprites[sGacha->PlayerSpriteIds[0]]);
    DestroySpriteAndFreeResources(&gSprites[sGacha->PlayerSpriteIds[1]]);
    DestroySpriteAndFreeResources(&gSprites[sGacha->PlayerSpriteIds[2]]);
    DestroySpriteAndFreeResources(&gSprites[sGacha->PlayerSpriteIds[3]]);
    DestroySpriteAndFreeResources(&gSprites[sGacha->KnobSpriteId]);
    DestroySpriteAndFreeResources(&gSprites[sGacha->DigitalTextSpriteId]);
    DestroySpriteAndFreeResources(&gSprites[sGacha->LotteryJPNspriteId]);
    DestroySpriteAndFreeResources(&gSprites[sGacha->CreditMenu1Id]);
    DestroySpriteAndFreeResources(&gSprites[sGacha->CreditMenu2Id]);
    DestroySpriteAndFreeResources(&gSprites[sGacha->PokemonOneSpriteId]);
    DestroySpriteAndFreeResources(&gSprites[sGacha->PokemonTwoSpriteId]);
    DestroySpriteAndFreeResources(&gSprites[sGacha->PokemonThreeSpriteId]);
    DestroySpriteAndFreeResources(&gSprites[sGacha->ArrowsSpriteId]);
    DestroySpriteAndFreeResources(&gSprites[sGacha->CTAspriteId]);
    ResetMessage();
    SetGpuReg(REG_OFFSET_BLDCNT, 0);
    SetGpuReg(REG_OFFSET_BG2CNT, BGCNT_PRIORITY(2) |
                                 BGCNT_CHARBASE(1) |
                                 BGCNT_16COLOR |
                                 BGCNT_SCREENBASE(18) |
                                 BGCNT_TXT512x256);
    LoadPalette(gTradeGba2_Pal, BG_PLTT_ID(1), 3 * PLTT_SIZE_4BPP);
    DmaCopyLarge16(3, gTradeGba_Gfx, (void *) BG_CHAR_ADDR(1), 0x1420, 0x1000);
    DmaCopy16Defvars(3, gTrade_Tilemap, (void *) BG_SCREEN_ADDR(18), 0x1000);    
    
    gPaletteFade.bufferTransferDisabled = TRUE;
    gPaletteFade.bufferTransferDisabled = FALSE;
    BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
    SetVBlankCallback(GachaVBlankCallback);
}

void ShowFinalMessage(void)
{
    struct WindowTemplate template;

    SetWindowTemplateFields(&template, 1, 2, 15, 26, 4, 0xF, 0x194);
    
    sTextWindowId = AddWindow(&template);
    FillWindowPixelBuffer(sTextWindowId, PIXEL_FILL(0));
    PutWindowTilemap(sTextWindowId);
    LoadUserWindowBorderGfx(sTextWindowId, 0x214, BG_PLTT_ID(14));
    DrawStdWindowFrame(sTextWindowId, FALSE); 
    StringCopy(gStringVar1, GetSpeciesName(sGacha->CalculatedSpecies));
    StringCopy(gStringVar2, GetGachaRarityPrizeText(sGacha->Rarity));
    StringExpandPlaceholders(gStringVar4, sText_FromGacha);
    AddTextPrinterParameterized(sTextWindowId, FONT_NORMAL, gStringVar4, 0, 1, 0, 0);
    CopyWindowToVram(sTextWindowId, 3);
}

static u8 GetSpeciesGachaLevel(void)
{
    u32 level, levelCap, minLevel, addedLevelRange, i;
    static const u32 sLevelGachaFlagMap[][3] =
    {
        {FLAG_BADGE01_GET, 5, 6},
        {FLAG_BADGE02_GET, 7, 5},
        {FLAG_BADGE03_GET, 13, 7},
        {FLAG_BADGE04_GET, 18, 5},
        {FLAG_BADGE05_GET, 19, 9},
        {FLAG_BADGE06_GET, 21, 9},
        {FLAG_BADGE07_GET, 28, 8},
        {FLAG_BADGE08_GET, 36, 14},
        {FLAG_IS_CHAMPION, 40, 29},
    };

    minLevel = 2;
    addedLevelRange = 4;

    for (i = 0; i < ARRAY_COUNT(sLevelGachaFlagMap); i++)
    {
        if (FlagGet(sLevelGachaFlagMap[i][0]))
        {
            minLevel = sLevelGachaFlagMap[i][1];
            addedLevelRange = sLevelGachaFlagMap[i][2];
        }
    }

    addedLevelRange += 1;

    level = (Random() % addedLevelRange) + minLevel;

    levelCap = GetCurrentLevelCap();

    if (level > levelCap)
        return levelCap;

    return level;
}

static void GachaMain(u8 taskId)
{
    switch (sGacha->state)
    {
    case GACHA_STATE_INIT:
        if (!gPaletteFade.active) {
            sGacha->state = GACHA_STATE_PROCESS_INPUT;
        }
        break;
    case GACHA_STATE_PROCESS_INPUT:
        HandleInput();
        break;
    case GACHA_STATE_START_EXIT:
        StartExitGacha();
        break;
    case GACHA_STATE_EXIT:
        ExitGacha();
        break;
    case STATE_INIT_A: // Initial state
            DeterminePokemonRarityAndNewStatusSafe();
        if (GetTotalUnownedGachaSpecies() == 0 && sGacha->wager > GetMinWagerForCurrentGacha())
        {
            sGacha->refundExtraCoins = TRUE;
            sGacha->refundCoins = sGacha->wager - GetMinWagerForCurrentGacha();
        }
        else
        {
            sGacha->refundExtraCoins = FALSE;
            sGacha->refundCoins = 0;
        }
        VarSet(VAR_TEMP_4, sGacha->refundCoins);
        VarSet(VAR_TEMP_5, sGacha->refundExtraCoins);
        PlaySE(SE_SHOP);
        RemoveCoins(sGacha->wager - sGacha->refundCoins);
        sGacha->wager = 0;
        ResetMessage();
        gSprites[sGacha->CTAspriteId].animNum = 0;
        gSprites[sGacha->ArrowsSpriteId].invisible = TRUE;
        SetCreditDigits(GetCoins());
        SetPlayerDigits(sGacha->wager);
        sGacha->waitTimer = 30;  // Set the timer
        sGacha->state = STATE_TIMER_1;  // Move to next state
        break;
    case STATE_TIMER_1: // Waiting for timer to expire
        if (sGacha->waitTimer > 0)
            sGacha->waitTimer--;  // Decrease timer
        else
            sGacha->state = STATE_TWIST;  // Transition to next state when the timer is done
        break;
    case STATE_TWIST: // After timer expires, proceed with animation
        PlaySE(SE_VEND);
        gSprites[sGacha->KnobSpriteId].animNum = 1;
        sGacha->state = STATE_TIMER_2;  // Move to the next state after animation starts
        break;
    case STATE_TIMER_2: // Handle the next part of the delay or action
        // (You can add another waiting period if needed)
        sGacha->waitTimer = 50;  // Set the next timer
        sGacha->state = STATE_INIT_GIVE;  // Move to next state
        break;
    case STATE_INIT_GIVE: // Final state
        if (sGacha->waitTimer > 0)
            sGacha->waitTimer--;  // Decrease timer
        else
            sGacha->state = STATE_SHAKE_1;  // Final action after timer
        break;
    case STATE_SHAKE_1: // After timer expires, proceed with animation
        PlaySE(SE_BREAKABLE_DOOR);
        Shake1();
        sGacha->state = STATE_TIMER_3;  // Move to the next state after animation starts
        break;
    case STATE_TIMER_3: // Handle the next part of the delay or action
        // (You can add another waiting period if needed)
        sGacha->waitTimer = 3;  // Set the next timer
        sGacha->state = STATE_INIT_SHAKE_2;  // Move to next state
        break;
    case STATE_INIT_SHAKE_2: // Final state
        if (sGacha->waitTimer > 0)
            sGacha->waitTimer--;  // Decrease timer
        else
            sGacha->state = STATE_SHAKE_2;  // Final action after timer
        break;    
    case STATE_SHAKE_2: // After timer expires, proceed with animation
        //PlaySE(SE_BREAKABLE_DOOR);
        Shake2();
        sGacha->state = STATE_TIMER_4;  // Move to the next state after animation starts
        break;
    case STATE_TIMER_4: // Handle the next part of the delay or action
        // (You can add another waiting period if needed)
        sGacha->waitTimer = 3;  // Set the next timer
        sGacha->state = STATE_INIT_SHAKE_3;  // Move to next state
        break;
    case STATE_INIT_SHAKE_3: // Final state
        if (sGacha->waitTimer > 0)
        {
            sGacha->waitTimer--;  // Decrease timer
        }
        else 
        {
            BGSetup();
            sGacha->waitTimer = 20;
            sGacha->state = STATE_TIMER_5;  // Final action after timer
        }
        break;
    case STATE_TIMER_5: // After timer expires, proceed with animation
        if (sGacha->waitTimer > 0)
            sGacha->waitTimer--;  // Decrease timer
        else
            sGacha->state = STATE_GIVE;  // Move to the next state after animation starts
        break;
    case STATE_GIVE:
        StartTradeScreen();
        break;
    case STATE_FADE:
        if (!gPaletteFade.active)
        {
            BGRed();
            sGacha->state = STATE_POKEBALL_INIT;
        }
        break;
    case STATE_POKEBALL_INIT:
        RemoveGarbage();
        sGacha->state++;
        break;    
    case STATE_POKEBALL_PROCESS:
        if (!gPaletteFade.active)
            sGacha->state = STATE_POKEBALL_ARRIVE;
        break;
    case STATE_POKEBALL_ARRIVE:    
        LoadSpriteSheet(&sPokeBallSpriteSheet);
        LoadSpritePalette(&sPokeBallSpritePalette);
        sGacha->bouncingPokeballSpriteId = CreateSprite(&sSpriteTemplate_Pokeball, 120, -8, 0);
        gSprites[sGacha->bouncingPokeballSpriteId].data[3] = 74;
        gSprites[sGacha->bouncingPokeballSpriteId].callback = SpriteCB_BouncingPokeballArrive;
        StartSpriteAnim(&gSprites[sGacha->bouncingPokeballSpriteId], 1);
        StartSpriteAffineAnim(&gSprites[sGacha->bouncingPokeballSpriteId], 2);
        BlendPalettes(1 << (16 + gSprites[sGacha->bouncingPokeballSpriteId].oam.paletteNum), 16, RGB_WHITEALPHA);
        sGacha->state++;
        sGacha->timer = 0;
        break;
    case STATE_FADE_POKEBALL_TO_NORMAL:
        BeginNormalPaletteFade(1 << (16 + gSprites[sGacha->bouncingPokeballSpriteId].oam.paletteNum), 1, 16, 0, RGB_WHITEALPHA);
        sGacha->state++;
        break;
    case STATE_POKEBALL_ARRIVE_WAIT:        
        if (gSprites[sGacha->bouncingPokeballSpriteId].callback == SpriteCallbackDummy)
        {
            CreateMon(&gEnemyParty[0], sGacha->CalculatedSpecies, GetSpeciesGachaLevel(), USE_RANDOM_IVS, FALSE, 0, OT_ID_PLAYER_ID, 0);
            gSpecialVar_Result = GiveMonToPlayer(&gEnemyParty[0]);
            VarSet(VAR_TEMP_TRANSFERRED_SPECIES, sGacha->CalculatedSpecies);
            GetSetPokedexFlag(SpeciesToNationalPokedexNum(sGacha->CalculatedSpecies), FLAG_SET_SEEN);
            HandleSetPokedexFlag(SpeciesToNationalPokedexNum(sGacha->CalculatedSpecies), FLAG_SET_CAUGHT, GetMonData(&gEnemyParty[0], MON_DATA_PERSONALITY));
            LoadPalette(GetMonFrontSpritePal(&gEnemyParty[0]), OBJ_PLTT_ID(2), PLTT_SIZE_4BPP);
            SetMultiuseSpriteTemplateToPokemon(sGacha->CalculatedSpecies, B_POSITION_OPPONENT_LEFT);
            sGacha->monSpriteId = CreateMonPicSprite_Affine(sGacha->CalculatedSpecies, GetMonData(&gEnemyParty[0], MON_DATA_IS_SHINY), GetMonData(&gEnemyParty[0], MON_DATA_PERSONALITY), MON_PIC_AFFINE_FRONT, 120, 60, 14, TAG_NONE);
            gSprites[sGacha->monSpriteId].callback = SpriteCB_Null;
            gSprites[sGacha->monSpriteId].oam.priority = 0;
            gSprites[sGacha->monSpriteId].invisible = TRUE;
            HandleLoadSpecialPokePic(TRUE,
                                        gMonSpritesGfxPtr->spritesGfx[B_POSITION_OPPONENT_LEFT],
                                        sGacha->CalculatedSpecies,
                                        GetMonData(&gEnemyParty[0], MON_DATA_PERSONALITY));
            sGacha->state++;
        }
        break;
    case STATE_SHOW_NEW_MON:
        gSprites[sGacha->monSpriteId].x = 120;
        gSprites[sGacha->monSpriteId].y = gSpeciesInfo[sGacha->CalculatedSpecies].frontPicYOffset + 56;
        gSprites[sGacha->monSpriteId].x2 = 0;
        gSprites[sGacha->monSpriteId].y2 = 0;
        StartSpriteAnim(&gSprites[sGacha->monSpriteId], 0);
        CreatePokeballSpriteToReleaseMon(sGacha->monSpriteId, gSprites[sGacha->monSpriteId].oam.paletteNum, 120, 84, 2, 1, 20, PALETTES_BG | (0xF << 16), sGacha->CalculatedSpecies);
        FreeSpriteOamMatrix(&gSprites[sGacha->bouncingPokeballSpriteId]);
        DestroySprite(&gSprites[sGacha->bouncingPokeballSpriteId]);
        sGacha->state++;
        break;
    case STATE_NEW_MON_MSG:
        // Wait for Pokémon's front sprite animation
        if (gSprites[sGacha->monSpriteId].callback == SpriteCallbackDummy)
            sGacha->state++;
        break;
    case NEW_1:
        // "{mon} hatched from egg" message/fanfare
        ShowFinalMessage();
        PlayFanfare(MUS_EVOLVED);
        sGacha->state++;
        //PutWindowTilemap(0);
        //CopyWindowToVram(0, COPYWIN_FULL);
        break;
    case NEW_2:
        if (IsFanfareTaskInactive())
            sGacha->state++;
        break;
    case STATE_SET_EXIT:
        // Ready the nickname prompt
        if (!FlagGet(FLAG_SYS_POKEMON_GET))
        {
            FlagSet(FLAG_SYS_POKEMON_GET);
        }
        sGacha->state = GACHA_STATE_START_EXIT;
        break;
    }
}

static bool32 GachaGfxSetup(void)
{
    switch (gMain.state)
    {
    case 0:
        sGacha->GachaId = gSpecialVar_0x8004;

        SetVBlankCallback(NULL);
        ResetAllBgsCoordinates();
        ResetVramOamAndBgCntRegs();
        ResetBgsAndClearDma3BusyFlags(0);
        ResetTempTileDataBuffers();
        ResetSpriteData();
        FreeAllSpritePalettes();
        gPaletteFade.bufferTransferDisabled = TRUE;
        gMain.state++;
        break;
    case 1:
        BGSetup();
        gMain.state++;
        break;
    case 2:
        switch (sGacha->GachaId)
        {
        default:
        case GACHA_BASIC:
            LoadSpritePalettes(sSpritePalettesBasic);
            CreateHoppip();
            break;
        case GACHA_GREAT:
            LoadSpritePalettes(sSpritePalettesGreat);
            CreatePhanpy();
            break;
        case GACHA_ULTRA:
            LoadSpritePalettes(sSpritePalettesUltra);
            CreateTeddiursa();
            break;
        case GACHA_MASTER:
            LoadSpritePalettes(sSpritePalettesMaster);
            CreateBelossom();
            break;
        }
        gMain.state++;
        break;
    case 3:
        CreateArrows();
        CreateCTA();
        CreateDigitalText();    
        CreateKnob();
        CreateCreditSprites();
        CreatePlayerSprites();
        SetCreditDigits(GetCoins());
        sGacha->wager = GetMinWagerForCurrentGacha();
        SetPlayerDigits(sGacha->wager);
        CreateCreditMenu();    
        CreatePlayerMenu();
        CreateLotteryJPN();
        gMain.state++;
        break;
    case 4:
        sGacha->newMonOdds = 0;
        InitWindows(sGachaWinTemplates);
        LoadPalette(GetTextWindowPalette(2), BG_PLTT_ID(11), PLTT_SIZE_4BPP);
        ShowMessage();
        gMain.state++;
        break;
    case 5:
        UpdateCursorPosition(gSprites[sGacha->ArrowsSpriteId].x);
        sGacha->waitTimer = 0;
        sGacha->refundCoins = 0;
        sGacha->refundExtraCoins = FALSE;
        VarSet(VAR_TEMP_4, 0);
        VarSet(VAR_TEMP_5, 0);
        sGacha->canGiveMon = !IsPlayerPartyAndPokemonStorageFull();
        GetPokemonOwned();
        CalculatePullOdds();
        sGacha->canBetWager = sGacha->canGiveMon;
        gSprites[sGacha->CTAspriteId].animNum = sGacha->canGiveMon ? 1 : 0;
        ResetMessage();
        ShowMessage();
        gMain.state++;
        break;
    case 6:
        CopyBgTilemapBufferToVram(GACHA_BG_BASE);
        CopyBgTilemapBufferToVram(GACHA_MENUS);
        SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_OBJ_ON | DISPCNT_BG2_ON);
        ShowBg(GACHA_BG_BASE);
        ShowBg(GACHA_MENUS);
        gMain.state++;
        break;
    case 7:
        CreateTask(GachaMain, 1);
        gMain.state++;
        break;
    case 8:
        BlendPalettes(PALETTES_ALL, 16, RGB_BLACK);
        gPaletteFade.bufferTransferDisabled = FALSE;
        gMain.state++;
        break;
    case 9:
        BeginNormalPaletteFade(PALETTES_ALL, 0, 16, 0, RGB_BLACK);
        gMain.state++;
        break;
    default:
        SetVBlankCallback(GachaVBlankCallback);
        SetMainCallback2(GachaMainCallback);
        return TRUE;
    }
    return FALSE;
}

static void InitGachaScreen(void)
{
    while (TRUE)
    {
        if (GachaGfxSetup())
            break;
    }
}
