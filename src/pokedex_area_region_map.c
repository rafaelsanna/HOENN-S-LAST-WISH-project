#include "global.h"
#include "main.h"
#include "menu.h"
#include "bg.h"
#include "malloc.h"
#include "palette.h"
#include "pokedex_area_region_map.h"

static EWRAM_DATA u8 sPokedexAreaMapBgNum = 0;

static const u16 ALIGNED(4) sPokedexAreaMap_Pal[] = INCBIN_U16("graphics/pokedex/region_map.gbapal");
static const u32 sPokedexAreaMap_Gfx[] = INCBIN_U32("graphics/pokedex/region_map.8bpp.smol");
static const u32 sPokedexAreaMap_Tilemap[] = INCBIN_U32("graphics/pokedex/region_map.bin.smolTM");
static const u32 sPokedexAreaMapAffine_Gfx[] = INCBIN_U32("graphics/pokedex/region_map_affine.8bpp.smol");
static const u32 sPokedexAreaMapAffine_Tilemap[] = INCBIN_U32("graphics/pokedex/region_map_affine.bin.smolTM");

void LoadPokedexAreaMapGfx(const struct PokedexAreaMapTemplate *template)
{
    u8 mode;
    void *tilemap;
    // Sem Alloc aqui!
    mode = template->mode;

    if (mode == 0)
    {
        SetBgAttribute(template->bg, BG_ATTR_METRIC, 0);
        DecompressAndCopyTileDataToVram(template->bg, sPokedexAreaMap_Gfx, 0, template->offset, 0);
        tilemap = DecompressAndCopyTileDataToVram(template->bg, sPokedexAreaMap_Tilemap, 0, 0, 1);
        AddValToTilemapBuffer(tilemap, template->offset, 32, 32, FALSE);
    }
    else
    {
        SetBgAttribute(template->bg, BG_ATTR_METRIC, 2);
        SetBgAttribute(template->bg, BG_ATTR_TYPE, BG_TYPE_AFFINE);
        DecompressAndCopyTileDataToVram(template->bg, sPokedexAreaMapAffine_Gfx, 0, template->offset, 0);
        tilemap = DecompressAndCopyTileDataToVram(template->bg, sPokedexAreaMapAffine_Tilemap, 0, 0, 1);
        AddValToTilemapBuffer(tilemap, template->offset, 64, 64, TRUE);
    }

    ChangeBgX(template->bg, 0, BG_COORD_SET);
    ChangeBgY(template->bg, 0, BG_COORD_SET);
    SetBgAttribute(template->bg, BG_ATTR_PALETTEMODE, 1);
    CpuCopy32(sPokedexAreaMap_Pal, &gPlttBufferUnfaded[BG_PLTT_ID(7)], sizeof(sPokedexAreaMap_Pal));
    sPokedexAreaMapBgNum = template->bg;  // direto, sem ponteiro
}

bool32 TryShowPokedexAreaMap(void)
{
    if (!FreeTempTileDataBuffersIfPossible())
    {
        ShowBg(sPokedexAreaMapBgNum);  // sem desreferência
        return FALSE;
    }
    else
    {
        return TRUE;
    }
}

void FreePokedexAreaMapBgNum(void)
{
    sPokedexAreaMapBgNum = 0;
}

void PokedexAreaMapChangeBgY(u32 move)
{
    ChangeBgY(sPokedexAreaMapBgNum, move * 0x100, BG_COORD_SET);
}
