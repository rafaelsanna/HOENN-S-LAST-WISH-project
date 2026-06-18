#ifndef GUARD_DATA_FIELD_MUGSHOTS_H
#define GUARD_DATA_FIELD_MUGSHOTS_H

// Tes
static const u32 sFieldMugshotGfx_TestNormal[] = INCBIN_U32("graphics/field_mugshots/test/normal.4bpp.lz");
static const u32 sFieldMugshotGfx_TestAlt[]   = INCBIN_U32("graphics/field_mugshots/test/alt.4bpp.lz");
static const u16 sFieldMugshotPal_TestNormal[] = INCBIN_U16("graphics/field_mugshots/test/normal.gbapal");
static const u16 sFieldMugshotPal_TestAlt[]   = INCBIN_U16("graphics/field_mugshots/test/alt.gbapal");

// Celebi
static const u32 sFieldMugshotGfx_CelebiNormal[] = INCBIN_U32("graphics/field_mugshots/celebi/normal.4bpp.lz");
static const u16 sFieldMugshotPal_CelebiNormal[] = INCBIN_U16("graphics/field_mugshots/celebi/normal.gbapal");

// Jirachi
static const u32 sFieldMugshotGfx_JirachiNormal[] = INCBIN_U32("graphics/field_mugshots/jirachi/normal.4bpp.lz");
static const u16 sFieldMugshotPal_JirachiNormal[] = INCBIN_U16("graphics/field_mugshots/jirachi/normal.gbapal");

// Acacia
static const u32 sFieldMugshotGfx_AcaciaNormal[] = INCBIN_U32("graphics/field_mugshots/acacia/normal.4bpp.lz");
static const u16 sFieldMugshotPal_AcaciaNormal[] = INCBIN_U16("graphics/field_mugshots/acacia/normal.gbapal");

// Renton
static const u32 sFieldMugshotGfx_RentonNormal[] = INCBIN_U32("graphics/field_mugshots/renton/normal.4bpp.lz");
static const u16 sFieldMugshotPal_RentonNormal[] = INCBIN_U16("graphics/field_mugshots/renton/normal.gbapal");

// Terra
static const u32 sFieldMugshotGfx_TerraNormal[] = INCBIN_U32("graphics/field_mugshots/terra/normal.4bpp.lz");
static const u16 sFieldMugshotPal_TerraNormal[] = INCBIN_U16("graphics/field_mugshots/terra/normal.gbapal");

// Zenno
static const u32 sFieldMugshotGfx_ZennoNormal[] = INCBIN_U32("graphics/field_mugshots/zenno/normal.4bpp.lz");
static const u16 sFieldMugshotPal_ZennoNormal[] = INCBIN_U16("graphics/field_mugshots/zenno/normal.gbapal");

// Zinnia
static const u32 sFieldMugshotGfx_ZinniaNormal[] = INCBIN_U32("graphics/field_mugshots/zinnia/normal.4bpp.lz");
static const u16 sFieldMugshotPal_ZinniaNormal[] = INCBIN_U16("graphics/field_mugshots/zinnia/normal.gbapal");

// Calendula 
static const u32 sFieldMugshotGfx_CalendulaNormal[] = INCBIN_U32("graphics/field_mugshots/calendula/normal.4bpp.lz");
static const u16 sFieldMugshotPal_CalendulaNormal[] = INCBIN_U16("graphics/field_mugshots/calendula/normal.gbapal");

// Luka
static const u32 sFieldMugshotGfx_LukaNormal[] = INCBIN_U32("graphics/field_mugshots/luka/normal.4bpp.lz");
static const u16 sFieldMugshotPal_LukaNormal[] = INCBIN_U16("graphics/field_mugshots/luka/normal.gbapal");

// Den
static const u32 sFieldMugshotGfx_DenNormal[] = INCBIN_U32("graphics/field_mugshots/den/normal.4bpp.lz");
static const u16 sFieldMugshotPal_DenNormal[] = INCBIN_U16("graphics/field_mugshots/den/normal.gbapal");


struct MugshotGfx
{
    const u32 *gfx;
    const u16 *pal;
};

static const struct MugshotGfx sFieldMugshots[MUGSHOT_COUNT][EMOTE_COUNT] =
{
    [MUGSHOT_TEST] =
    {
        [EMOTE_NORMAL] = { .gfx = sFieldMugshotGfx_TestNormal, .pal = sFieldMugshotPal_TestNormal },
        [EMOTE_ALT]    = { .gfx = sFieldMugshotGfx_TestAlt,    .pal = sFieldMugshotPal_TestAlt    },
    },
    [MUGSHOT_CELEBI] =
    {
        [EMOTE_NORMAL] = { .gfx = sFieldMugshotGfx_CelebiNormal, .pal = sFieldMugshotPal_CelebiNormal },
    },
    [MUGSHOT_JIRACHI] =
    {
        [EMOTE_NORMAL] = { .gfx = sFieldMugshotGfx_JirachiNormal, .pal = sFieldMugshotPal_JirachiNormal },
    },
    [MUGSHOT_ACACIA] =
    {
        [EMOTE_NORMAL] = { .gfx = sFieldMugshotGfx_AcaciaNormal, .pal = sFieldMugshotPal_AcaciaNormal },
    },
    [MUGSHOT_RENTON] =
    {
        [EMOTE_NORMAL] = { .gfx = sFieldMugshotGfx_RentonNormal, .pal = sFieldMugshotPal_RentonNormal },
    },
    [MUGSHOT_TERRA] =
    {
        [EMOTE_NORMAL] = { .gfx = sFieldMugshotGfx_TerraNormal, .pal = sFieldMugshotPal_TerraNormal },
    },
    [MUGSHOT_ZENNO] =
    {
        [EMOTE_NORMAL] = { .gfx = sFieldMugshotGfx_ZennoNormal, .pal = sFieldMugshotPal_ZennoNormal },
    },
    [MUGSHOT_ZINNIA] =
    {
        [EMOTE_NORMAL] = { .gfx = sFieldMugshotGfx_ZinniaNormal, .pal = sFieldMugshotPal_ZinniaNormal },
    },
        [MUGSHOT_CALENDULA] =
    {
        [EMOTE_NORMAL] = { .gfx = sFieldMugshotGfx_CalendulaNormal, .pal = sFieldMugshotPal_CalendulaNormal },
    },
    [MUGSHOT_LUKA] =
    {
        [EMOTE_NORMAL] = { .gfx = sFieldMugshotGfx_LukaNormal, .pal = sFieldMugshotPal_LukaNormal },
    },
    [MUGSHOT_DEN] =
    {
        [EMOTE_NORMAL] = { .gfx = sFieldMugshotGfx_DenNormal, .pal = sFieldMugshotPal_DenNormal },
    },
};

#endif // GUARD_DATA_FIELD_MUGSHOTS_H
