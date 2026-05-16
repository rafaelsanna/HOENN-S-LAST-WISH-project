#!/usr/bin/env python3
from PIL import Image
import struct
import sys

BASE = 'graphics/intro/scene_0'
SETS = [( 'bgsky00.4bpp','bgsky00.bin','bgsky00.gbapal','bg00.4bpp','bg00.bin','bg00.gbapal'),
        ( 'bgsky01.4bpp','bgsky01.bin','bgsky01.gbapal','bg01.4bpp','bg01.bin','bg01.gbapal'),
        ( 'bgsky02.4bpp','bgsky02.bin','bgsky02.gbapal','bg02.4bpp','bg02.bin','bg02.gbapal')]

def load_palette(path):
    d = open(path,'rb').read()
    pals = []
    for i in range(0,len(d),2):
        if i+1>=len(d): break
        val = d[i] | (d[i+1]<<8)
        r = (val & 0x1F) << 3
        g = ((val>>5) & 0x1F) << 3
        b = ((val>>10)&0x1F) << 3
        pals.append((r,g,b))
    return pals

def decode_4bpp_tiles(path):
    d = open(path,'rb').read()
    tiles = []
    for t in range(0,len(d),32):
        tile = [[0]*8 for _ in range(8)]
        block = d[t:t+32]
        for y in range(8):
            b0 = block[y*4+0]
            b1 = block[y*4+1]
            b2 = block[y*4+2]
            b3 = block[y*4+3]
            for x in range(8):
                shift = 7-x
                val = ((b0>>shift)&1) | (((b1>>shift)&1)<<1) | (((b2>>shift)&1)<<2) | (((b3>>shift)&1)<<3)
                tile[y][x] = val
        tiles.append(tile)
    return tiles

def load_map(path):
    d = open(path,'rb').read()
    entries = []
    for i in range(0,len(d),2):
        if i+1>=len(d): break
        val = d[i] | (d[i+1]<<8)
        entries.append(val)
    return entries

def render_set(index, patched=False, outpath=None):
    sky_tiles_file, sky_map_file, sky_pal_file, fg_tiles_file, fg_map_file, fg_pal_file = SETS[index]
    sky_tiles = decode_4bpp_tiles(f'{BASE}/{sky_tiles_file}')
    fg_tiles = decode_4bpp_tiles(f'{BASE}/{fg_tiles_file}')
    sky_map = load_map(f'{BASE}/{sky_map_file}')
    fg_map = load_map(f'{BASE}/{fg_map_file}')
    sky_pal = load_palette(f'{BASE}/{sky_pal_file}')
    fg_pal = load_palette(f'{BASE}/{fg_pal_file}')

    width = 32*8
    height = 20*8
    img = Image.new('RGB',(width,height),(0,0,0))
    px = img.load()

    def draw_layer(tile_list, cmap, pal, pal_slot_offset=0):
        for mi,entry in enumerate(cmap):
            if patched:
                # if this is forest layer, ensure pal bit set
                # We'll only use this for foreground when patched=True
                pass
            tile_index = entry & 0x03FF
            hflip = (entry>>10)&1
            vflip = (entry>>11)&1
            palidx = (entry>>12)&0xF
            # if palidx==0 and pal_slot_offset!=0, you may want to offset; keep as-is
            # compute tile coords
            col = mi % 32
            row = mi // 32
            tx = col*8
            ty = row*8
            if tile_index >= len(tile_list):
                # skip
                continue
            tile = tile_list[tile_index]
            for y in range(8):
                for x in range(8):
                    sx = 7-x if hflip else x
                    sy = 7-y if vflip else y
                    v = tile[sy][sx]
                    # choose palette: if palidx==0 use pal[0], else pal[palidx]
                    if v==0:
                        # transparency for foreground: skip
                        continue
                    # map pal index v into palette colors
                    # we assume palidx selects which 16-color block; but pal arrays are single 16 entries
                    color = pal[v % len(pal)]
                    px[tx+x,ty+y] = color

    # draw sky first using its own palette
    # sky tiles likely use palette slot 0
    for mi,entry in enumerate(sky_map):
        tile_index = entry & 0x03FF
        hflip = (entry>>10)&1
        vflip = (entry>>11)&1
        palidx = (entry>>12)&0xF
        col = mi % 32
        row = mi // 32
        tx = col*8
        ty = row*8
        if tile_index >= len(sky_tiles):
            continue
        tile = sky_tiles[tile_index]
        for y in range(8):
            for x in range(8):
                sx = 7-x if hflip else x
                sy = 7-y if vflip else y
                v = tile[sy][sx]
                if v==0: continue
                color = sky_pal[v % len(sky_pal)]
                px[tx+x,ty+y] = color

    # draw foreground; if patched, force pal bits to 1 when reading map
    for mi,entry in enumerate(fg_map):
        if patched:
            entry = entry | (1<<12)
        tile_index = entry & 0x03FF
        hflip = (entry>>10)&1
        vflip = (entry>>11)&1
        palidx = (entry>>12)&0xF
        col = mi % 32
        row = mi // 32
        tx = col*8
        ty = row*8
        if tile_index >= len(fg_tiles):
            continue
        tile = fg_tiles[tile_index]
        for y in range(8):
            for x in range(8):
                sx = 7-x if hflip else x
                sy = 7-y if vflip else y
                v = tile[sy][sx]
                if v==0: continue
                color = fg_pal[v % len(fg_pal)]
                px[tx+x,ty+y] = color

    out = outpath or f'build/preview_set{index}_patched{int(patched)}.png'
    img.save(out)
    print('Wrote', out)

if __name__=='__main__':
    try:
        import os
        os.makedirs('build',exist_ok=True)
    except:
        pass
    for i in range(3):
        render_set(i, patched=False, outpath=f'build/preview_set{i}_orig.png')
        render_set(i, patched=True, outpath=f'build/preview_set{i}_patched.png')
    print('Done')
