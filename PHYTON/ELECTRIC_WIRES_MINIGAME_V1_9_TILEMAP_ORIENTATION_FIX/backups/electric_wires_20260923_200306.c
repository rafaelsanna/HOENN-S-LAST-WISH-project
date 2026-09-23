#define CONNECT_MAP_W          16
#define CONNECT_MAP_H           8
#define CONNECT_MAP_X           7
#define CONNECT_MAP_Y           5

static void HideCableSprites(void)
{
    // The connected overlay is only the lower connection strip.
    gSprites[sWires.cableUpSpriteId].invisible = FALSE;
    gSprites[sWires.cableLeftSpriteId].invisible = TRUE;
    gSprites[sWires.cableRightSpriteId].invisible = TRUE;
}
