#include "global.h"
#include "decompress.h"
#include "event_data.h"
#include "event_object_movement.h"
#include "field_effect.h"
#include "field_effect_helpers.h"
#include "field_player_avatar.h"
#include "field_weather.h"
#include "item.h"
#include "main.h"
#include "party_menu.h"
#include "sprite.h"
#include "surfable.h"
#include "constants/event_object_movement.h"
#include "constants/event_objects.h"
#include "constants/field_effects.h"
#include "constants/flags.h"
#include "constants/moves.h"
#include "constants/species.h"
#include "config/surfable_species_enabled.h"

extern const struct OamData gObjectEventBaseOam_32x32;
extern const struct OamData gObjectEventBaseOam_64x64;
extern const struct SpriteTemplate *const gFieldEffectObjectTemplatePointers[];

extern void SynchroniseSurfAnim(struct ObjectEvent *playerObj, struct Sprite *sprite);
extern void SynchroniseSurfPosition(struct ObjectEvent *playerObj, struct Sprite *sprite);

static void CreateOverlaySprite(void);
static void UpdateSurfMonOverlay(struct Sprite *sprite);

#define SURFABLE_TILE_TAG_BASE (COMP_OW_TILE_TAG_BASE + 0x100)

struct RideablePokemon
{
    u16 species;
    u8 trainerPose;
};

// Keep the default table focused on Gen I-III and evolutions introduced later
// for those families. Additional families can still be enabled explicitly by
// adding their OW_SURF_* setting in surfable_species_enabled.h.
#undef P_FAMILY_PIPLUP
#define P_FAMILY_PIPLUP FALSE
#undef P_FAMILY_CRANIDOS
#define P_FAMILY_CRANIDOS FALSE
#undef P_FAMILY_BUIZEL
#define P_FAMILY_BUIZEL FALSE
#undef P_FAMILY_SHELLOS
#define P_FAMILY_SHELLOS FALSE
#undef P_FAMILY_GIBLE
#define P_FAMILY_GIBLE FALSE
#undef P_FAMILY_FINNEON
#define P_FAMILY_FINNEON FALSE
#undef P_FAMILY_PALKIA
#define P_FAMILY_PALKIA FALSE
#undef P_FAMILY_MANAPHY
#define P_FAMILY_MANAPHY FALSE
#undef P_FAMILY_ARCEUS
#define P_FAMILY_ARCEUS FALSE
#undef P_FAMILY_OSHAWOTT
#define P_FAMILY_OSHAWOTT FALSE
#undef P_FAMILY_LILLIPUP
#define P_FAMILY_LILLIPUP FALSE
#undef P_FAMILY_PANPOUR
#define P_FAMILY_PANPOUR FALSE
#undef P_FAMILY_AUDINO
#define P_FAMILY_AUDINO FALSE
#undef P_FAMILY_TYMPOLE
#define P_FAMILY_TYMPOLE FALSE
#undef P_FAMILY_BASCULIN
#define P_FAMILY_BASCULIN FALSE

#include "data/object_events/surfable/surfable_pokemon_graphics.h"
#include "data/object_events/surfable/surfable_pokemon.h"
#include "data/object_events/surfable/surfable_pokemon_pic_tables.h"
#include "data/object_events/surfable/surfable_pokemon_templates.h"

STATIC_ASSERT(ARRAY_COUNT(gSurfablePokemon) == ARRAY_COUNT(sSurfablePokemonPalettes), SurfSpeciesAndPalettesCountMismatch);
STATIC_ASSERT(ARRAY_COUNT(gSurfablePokemon) == ARRAY_COUNT(sSurfablePokemonShinyPalettes), SurfSpeciesAndShinyPalettesCountMismatch);
STATIC_ASSERT(ARRAY_COUNT(gSurfablePokemon) == ARRAY_COUNT(gSurfablePokemonOverworldSprites), SurfSpeciesAndSpritesCountMismatch);
STATIC_ASSERT(ARRAY_COUNT(gSurfablePokemon) == ARRAY_COUNT(gSurfablePokemonOverlaySprites), SurfSpeciesAndOverlaysCountMismatch);

static EWRAM_DATA u16 sCurrentSurfMon = {0};
static EWRAM_DATA u8 sCurrentSurfMonPartySlot = {0};
static struct SpriteTemplate sSurfablePokemonSpriteTemplate;
static struct SpriteTemplate sSurfablePokemonOverlayTemplate;

static const union AnimCmd sSurfablePokemonOverlayAnim_FaceSouth[] =
{
    ANIMCMD_FRAME(8, 16),
    ANIMCMD_FRAME(9, 16),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd sSurfablePokemonOverlayAnim_FaceNorth[] =
{
    ANIMCMD_FRAME(6, 16),
    ANIMCMD_FRAME(7, 16),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd sSurfablePokemonOverlayAnim_FaceWest[] =
{
    ANIMCMD_FRAME(10, 16),
    ANIMCMD_FRAME(11, 16),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd sSurfablePokemonOverlayAnim_FaceEast[] =
{
    ANIMCMD_FRAME(10, 16, .hFlip = TRUE),
    ANIMCMD_FRAME(11, 16, .hFlip = TRUE),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd *const sSurfablePokemonOverlayAnimTable[] =
{
    sSurfablePokemonOverlayAnim_FaceSouth,
    sSurfablePokemonOverlayAnim_FaceNorth,
    sSurfablePokemonOverlayAnim_FaceWest,
    sSurfablePokemonOverlayAnim_FaceEast,
};

static const union AnimCmd sSurfablePokemonOverlayAnim_NoFlipFaceEast[] =
{
    ANIMCMD_FRAME(14, 16),
    ANIMCMD_FRAME(15, 16),
    ANIMCMD_JUMP(0),
};

static const union AnimCmd *const sSurfablePokemonOverlayNoFlipAnimTable[] =
{
    sSurfablePokemonOverlayAnim_FaceSouth,
    sSurfablePokemonOverlayAnim_FaceNorth,
    sSurfablePokemonOverlayAnim_FaceWest,
    sSurfablePokemonOverlayAnim_NoFlipFaceEast,
};

static u16 GetSurfablePokemonTileTag(void)
{
    return SURFABLE_TILE_TAG_BASE + sCurrentSurfMon;
}

static bool8 PrepareSurfablePokemonGraphics(void)
{
    u32 sheetSpan;
    u16 tileTag;

    sSurfablePokemonSpriteTemplate = gSurfablePokemonOverworldSprites[sCurrentSurfMon];
    sSurfablePokemonOverlayTemplate = gSurfablePokemonOverlaySprites[sCurrentSurfMon];
    tileTag = GetSurfablePokemonTileTag();
    sSurfablePokemonSpriteTemplate.tileTag = tileTag;

    if (sSurfablePokemonOverlayTemplate.images != NULL)
    {
        sSurfablePokemonOverlayTemplate.tileTag = tileTag;
        sSurfablePokemonOverlayTemplate.anims = sSurfablePokemonSpriteTemplate.anims == gSurfablePokemonNoFlipAnimTable
            ? sSurfablePokemonOverlayNoFlipAnimTable
            : sSurfablePokemonOverlayAnimTable;
    }

    if (GetSpriteTileStartByTag(tileTag) != TAG_NONE)
        return TRUE;

    sheetSpan = GetSpanPerImage(sSurfablePokemonSpriteTemplate.oam->shape, sSurfablePokemonSpriteTemplate.oam->size);
    LoadCompressedSpriteSheetByTemplate(&sSurfablePokemonSpriteTemplate, TILE_SIZE_4BPP << sheetSpan);
    return GetSpriteTileStartByTag(tileTag) != TAG_NONE;
}

static void SetSurfablePokemonSheetSpan(struct Sprite *sprite)
{
    if (sprite->usingSheet)
    {
        sprite->sheetSpan = GetSpanPerImage(sprite->oam.shape, sprite->oam.size);
        SetSpriteSheetFrameTileNum(sprite);
    }
}

static bool8 IsSurfablePokemonSprite(const struct Sprite *sprite)
{
    return sprite->template == &sSurfablePokemonSpriteTemplate
        || sprite->template == &sSurfablePokemonOverlayTemplate;
}

void FreeSurfablePokemonSpriteTiles(struct Sprite *sprite)
{
    if (IsSurfablePokemonSprite(sprite) && sprite->usingSheet)
        FieldEffectFreeTilesIfUnused(sprite->sheetTileStart);
}

void DestroySurfablePokemonSprite(struct Sprite *sprite)
{
    bool8 isSurfablePokemon = IsSurfablePokemonSprite(sprite);
    u16 tileStart = sprite->sheetTileStart;

    DestroySprite(sprite);
    if (isSurfablePokemon)
        FieldEffectFreeTilesIfUnused(tileStart);
}

static u16 GetSurfablePokemonIndex(u16 species)
{
    if (species == SPECIES_PIKACHU_PARTNER || species == SPECIES_PIKACHU_STARTER)
        species = SPECIES_PIKACHU;

    for (u32 surfMon = 1; surfMon < ARRAY_COUNT(gSurfablePokemon); surfMon++)
    {
        if (species == gSurfablePokemon[surfMon].species)
            return surfMon;
    }

    return 0xFFFF;
}

static u16 GetSurfablePokemonIndexForMon(struct Pokemon *mon)
{
    u16 species = GetMonData(mon, MON_DATA_SPECIES);

#if P_MEGA_EVOLUTIONS
    if (CheckBagHasItem(ITEM_MEGA_RING, 1))
    {
        u32 megaSpecies = GetFormChangeTargetSpecies(mon, FORM_CHANGE_BATTLE_MEGA_EVOLUTION_ITEM, 0);

        if (megaSpecies == species)
            megaSpecies = GetFormChangeTargetSpecies(mon, FORM_CHANGE_BATTLE_MEGA_EVOLUTION_MOVE, 0);

        if (megaSpecies < NUM_SPECIES && GetSurfablePokemonIndex(megaSpecies) != 0xFFFF)
            species = megaSpecies;
    }
#endif

    return GetSurfablePokemonIndex(species);
}

u8 GetSurfablePokemonPartySlot(void)
{
    for (u32 partySlot = 0; partySlot < PARTY_SIZE; partySlot++)
    {
        u16 species = GetMonData(&gPlayerParty[partySlot], MON_DATA_SPECIES);

        if (species == SPECIES_NONE)
            break;
        if (GetMonData(&gPlayerParty[partySlot], MON_DATA_IS_EGG))
            continue;

        if (GetSurfablePokemonIndexForMon(&gPlayerParty[partySlot]) == 0xFFFF
         || !CanLearnTeachableMove(species, MOVE_SURF))
            continue;

        return partySlot;
    }

    return PARTY_SIZE;
}

static u16 GetSurfablePokemonSprite(void)
{
    // Saves from before this option existed default to the Pokémon sprites.
    if (FlagGet(FLAG_SURF_SPRITE_CONFIGURED) && !FlagGet(FLAG_SURF_SPRITE))
        return 0xFFFF;

    sCurrentSurfMonPartySlot = GetSurfablePokemonPartySlot();
    if (sCurrentSurfMonPartySlot == PARTY_SIZE)
        return 0xFFFF;

    return GetSurfablePokemonIndexForMon(&gPlayerParty[sCurrentSurfMonPartySlot]);
}

static void LoadSurfOverworldPalette(void)
{
    u8 paletteNum;

    if (IsMonShiny(&gPlayerParty[sCurrentSurfMonPartySlot]) == TRUE)
        paletteNum = LoadSpritePalette(&sSurfablePokemonShinyPalettes[sCurrentSurfMon]);
    else
        paletteNum = LoadSpritePalette(&sSurfablePokemonPalettes[sCurrentSurfMon]);

    if (paletteNum != 0xFF)
        UpdateSpritePaletteWithWeather(paletteNum, FALSE);
}

u32 CreateSurfablePokemonSprite(void)
{
    u8 spriteId;
    struct Sprite *sprite;

    SetSpritePosToOffsetMapCoords((s16 *)&gFieldEffectArguments[0], (s16 *)&gFieldEffectArguments[1], 8, 8);

    sCurrentSurfMon = GetSurfablePokemonSprite();
    if (sCurrentSurfMon != 0xFFFF)
    {
        LoadSurfOverworldPalette();
        if (!PrepareSurfablePokemonGraphics())
        {
            sCurrentSurfMon = 0xFFFF;
            spriteId = CreateSpriteAtEnd(gFieldEffectObjectTemplatePointers[FLDEFFOBJ_SURF_BLOB], gFieldEffectArguments[0], gFieldEffectArguments[1], 0x96);
        }
        else
        {
            if (sSurfablePokemonOverlayTemplate.images == NULL)
                CreateOverlaySprite();

            spriteId = CreateSpriteAtEnd(&sSurfablePokemonSpriteTemplate, gFieldEffectArguments[0], gFieldEffectArguments[1], 0x96);
            if (spriteId != MAX_SPRITES)
                SetSurfablePokemonSheetSpan(&gSprites[spriteId]);
        }
    }
    else
    {
        // Create surf blob
        spriteId = CreateSpriteAtEnd(gFieldEffectObjectTemplatePointers[FLDEFFOBJ_SURF_BLOB], gFieldEffectArguments[0], gFieldEffectArguments[1], 0x96);
    }

    if (spriteId != MAX_SPRITES)
    {
        sprite = &gSprites[spriteId];
        sprite->coordOffsetEnabled = TRUE;
        sprite->data[2] = gFieldEffectArguments[2];
        if (sCurrentSurfMon != 0xFFFF)
            CreateSurfablePokemonReflection(sprite);
        // Can use either gender's palette, so try to use the one that should be loaded
        if (sCurrentSurfMon == 0xFFFF)
            sprite->oam.paletteNum = LoadPlayerObjectEventPalette(gSaveBlock2Ptr->playerGender);
        sprite->data[3] = -1;
        sprite->data[6] = -1;
        sprite->data[7] = -1;
    }
    FieldEffectActiveListRemove(FLDEFF_SURF_BLOB);
    return spriteId;
}

static void CreateOverlaySprite(void)
{
    u8 overlaySprite;
    u8 subpriority;
    struct Sprite *sprite;

    subpriority = gSprites[gPlayerAvatar.spriteId].subpriority - 1;
    overlaySprite = CreateSpriteAtEnd(&sSurfablePokemonOverlayTemplate, gFieldEffectArguments[0], gFieldEffectArguments[1], subpriority);

    if (overlaySprite != MAX_SPRITES)
    {
        sprite = &gSprites[overlaySprite];
        SetSurfablePokemonSheetSpan(sprite);
        sprite->coordOffsetEnabled = TRUE;
        sprite->data[2] = gFieldEffectArguments[2];
        sprite->data[3] = -1;
        sprite->data[6] = -1;
        sprite->data[7] = -1;
        sprite->oam.priority = 2;
    }
    if (overlaySprite != MAX_SPRITES)
        SetSurfBlob_BobState(overlaySprite, BOB_PLAYER_AND_MON);
}

static void UpdateSurfMonOverlay(struct Sprite *sprite)
{
    struct ObjectEvent *playerObj;
    struct Sprite *surfSprite;
    u8 subpriority;

    playerObj = &gObjectEvents[gPlayerAvatar.objectEventId];
    surfSprite = &gSprites[playerObj->fieldEffectSpriteId];

    SynchroniseSurfAnim(playerObj, sprite);
    SynchroniseSurfPosition(playerObj, sprite);

    // Reset the subpriority for the overlay sprite so it shows on top of the player
    // We need this here so the subprio is correct after a screen transition (e.g. after exiting a battle)
    subpriority = gSprites[gPlayerAvatar.spriteId].subpriority - 1;
    sprite->subpriority = subpriority;

    sprite->x = surfSprite->x;
    sprite->y = surfSprite->y;
    sprite->x2 = surfSprite->x2;
    sprite->y2 = surfSprite->y2;
    sprite->oam.priority = surfSprite->oam.priority;

    if (!(gPlayerAvatar.flags & PLAYER_AVATAR_FLAG_SURFING))
        DestroySurfablePokemonSprite(sprite);
}
