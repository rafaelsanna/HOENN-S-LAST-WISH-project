#include "global.h"
#include "decompress.h"
#include "mugshot.h"
#include "constants/mugshots.h"
#include "palette.h"

#define MUGSHOT_BG_PRIO 1

struct Mugshot {
    u16 x;
    u16 y;
    u16 width;
    u16 height;
    const u32 *image;
    const u16 *palette;
};

// Graphics
static const u32 sMugshotImg_Jirachi[] = INCBIN_U32("graphics/mugshots/jirachi.4bpp.lz");
static const u16 sMugshotPal_Jirachi[] = INCBIN_U16("graphics/mugshots/jirachi.gbapal");

static const u32 sMugshotImg_Celebi[] = INCBIN_U32("graphics/mugshots/celebi.4bpp.lz");
static const u16 sMugshotPal_Celebi[] = INCBIN_U16("graphics/mugshots/celebi.gbapal");

static const struct Mugshot sMugshots[] = {
    [0] = {  // MUGSHOT_JIRACHI
        .x = 16, 
        .y = 5, 
        .width = 80, 
        .height = 72, 
        .image = sMugshotImg_Jirachi, 
        .palette = sMugshotPal_Jirachi
    },
    [1] = {  // MUGSHOT_CELEBI
        .x = 16, 
        .y = 5, 
        .width = 80, 
        .height = 72, 
        .image = sMugshotImg_Celebi, 
        .palette = sMugshotPal_Celebi
    },
};

static u16 sMugshotTileOffset;

void DrawMugshot(u16 mugshotId) {
    const struct Mugshot *mugshot = &sMugshots[mugshotId];
    
    ClearMugshot();
    
    sMugshotTileOffset = 0x100;
    
    LoadPalette(mugshot->palette, 0xD0, 0x20);
    LZ77UnCompWram(mugshot->image, (void *)VRAM + 0x4000 + sMugshotTileOffset * 32);
    
    u16 i, j;
    for (i = 0; i < mugshot->height / 8; i++) {
        for (j = 0; j < mugshot->width / 8; j++) {
            ((u16*)BG_VRAM)[0x10 + (mugshot->y + i) * 32 + mugshot->x + j] = sMugshotTileOffset | (MUGSHOT_BG_PRIO << 10);
            sMugshotTileOffset++;
        }
    }
}

void DrawMugshotAtPos(u16 mugshotId, u16 x, u16 y) {
    const struct Mugshot *mugshot = &sMugshots[mugshotId];
    
    ClearMugshot();
    
    sMugshotTileOffset = 0x100;
    
    LoadPalette(mugshot->palette, 0xD0, 0x20);
    LZ77UnCompWram(mugshot->image, (void *)VRAM + 0x4000 + sMugshotTileOffset * 32);
    
    u16 i, j;
    for (i = 0; i < mugshot->height / 8; i++) {
        for (j = 0; j < mugshot->width / 8; j++) {
            ((u16*)BG_VRAM)[0x10 + (y + i) * 32 + x + j] = sMugshotTileOffset | (MUGSHOT_BG_PRIO << 10);
            sMugshotTileOffset++;
        }
    }
}

void ClearMugshot(void) {
    u16 i;
    
    // Clear palette
    for (i = 0; i < 16; i++) {
        ((u16*)gPlttBufferUnfaded)[0xD0 + i] = 0;
        ((u16*)gPlttBufferFaded)[0xD0 + i] = 0;
    }
    
    // Clear tiles
    DmaFill16(3, 0, (void *)VRAM + 0x4000 + 0x100 * 32, 0x800);
    
    // Clear tilemap entries
    for (i = 0; i < 32 * 32; i++) {
        if ((((u16*)BG_VRAM)[i] & 0x3FF) >= 0x100 && (((u16*)BG_VRAM)[i] & 0x3FF) < 0x200) {
            ((u16*)BG_VRAM)[i] = 0;
        }
    }
}




