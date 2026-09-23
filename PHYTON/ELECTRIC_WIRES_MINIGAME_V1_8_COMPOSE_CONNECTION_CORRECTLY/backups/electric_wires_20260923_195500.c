#define CONNECT_MAP_Y           8

static void HideCableSprites(void)
{
    gSprites[sWires.cableUpSpriteId].invisible = TRUE;
    gSprites[sWires.cableLeftSpriteId].invisible = TRUE;
    gSprites[sWires.cableRightSpriteId].invisible = TRUE;
}
