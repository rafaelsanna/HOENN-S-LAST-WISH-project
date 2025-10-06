#include "global.h"
#include "event_data.h"
#include "event_object_movement.h"
#include "field_camera.h"
#include "field_screen_effect.h"
#include "field_specials.h"
#include "fieldmap.h"
#include "main.h"
#include "overworld.h"
#include "palette.h"
#include "script.h"
#include "script_movement.h"
#include "sound.h"
#include "sprite.h"
#include "task.h"
#include "constants/event_objects.h"
#include "constants/event_object_movement.h"
#include "constants/field_specials.h"
#include "constants/songs.h"
#include "constants/metatile_labels.h"

#pragma GCC diagnostic ignored "-Wunused-function"

// Most of the boxes in the moving truck are map tiles, with the
// exception of three boxes that are map events that jostle around
// while the truck is driving. In addition, their sprite's placement
// is slightly offset to make them look less perfectly stacked.
// Box 1 (LOCALID_TRUCK_BOX_TOP)
#define BOX1_X_OFFSET  3
#define BOX1_Y_OFFSET  3
// Box 2 (LOCALID_TRUCK_BOX_BOTTOM_L)
#define BOX2_X_OFFSET  0
#define BOX2_Y_OFFSET -3
// Box 3 (LOCALID_TRUCK_BOX_BOTTOM_R)
#define BOX3_X_OFFSET -3
#define BOX3_Y_OFFSET  0

// porthole states
enum
{
    INIT_PORTHOLE,
    IDLE_CHECK,
    EXECUTE_MOVEMENT,
    EXIT_PORTHOLE,
};

static const s8 sTruckCamera_HorizontalTable[] = {0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 2, 2, 2, 2, 2, -1, -1, -1, 0};

static const u8 sSSTidalSailEastMovementScript[] =
{
    MOVEMENT_ACTION_WALK_FAST_RIGHT,
    MOVEMENT_ACTION_STEP_END
};

static const u8 sSSTidalSailWestMovementScript[] =
{
    MOVEMENT_ACTION_WALK_FAST_LEFT,
    MOVEMENT_ACTION_STEP_END
};

static void Task_Truck3(u8);

///static s16 GetTruckCameraBobbingY(int time)
//{
    //if (!(time % 120))
        //return -1;
    //else if ((time % 10) <= 4)
        //return 1;

    //return 0;
//}

// Determines the frequency that the truck boxes bounce at.
// The return value of this function is multiplied and added
// to the boxes resting y offset, the result of which is that
// when it returns 0 they remain vertically still and when it
// returns -1 they jump upward.
// Box 1 has 30 added to the time so it jumps earlier, and
// box 2 has the return value multiplied by less, so it doesn't
// jump as high.
static s16 GetTruckBoxYMovement(int time)
{
    if (!((time + 120) % 180))
        return -1;

    return 0;
}

#define tTimer data[0]

#undef tTimer

#define tTimerHorizontal data[0]
#define tMoveStep        data[1]
#define tTimerVertical   data[2]


static void Task_HandleTruckSequence(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    switch (data[0]) // tState
    {
    case 0:
        data[1]++; // tTimer
        if (data[1] == 60) // 1 segundo de tela preta
        {
            data[1] = 0;
            data[0] = 1; // tState = 1
            // Som suave de respiração/sono (opcional)
            PlaySE(SE_M_YAWN); // Ou SE_M_GROWL, SE_M_SING, etc.
        }
        break;
    case 1:
        // Fade in suave para simular despertar
        FadeInFromBlack();
        data[1] = 0;
        data[0] = 2;
        break;
    case 2:
        // Espera o fade in completar
        if (!gPaletteFade.active)
        {
            data[1] = 0;
            data[0] = 3;
        }
        break;
    case 3:
        // Tempo para o jogador "perceber" onde está
        data[1]++;
        if (data[1] == 90) // 1.5 segundos
        {
            // Som suave de movimento/alongamento
            PlaySE(SE_M_COSMIC_POWER);
            data[1] = 0;
            data[0] = 4;
        }
        break;
    case 4:
        // Abre a porta suavemente
        data[1]++;
        if (data[1] == 60) // 1 segundo
        {
            MapGridSetMetatileIdAt(4 + MAP_OFFSET, 1 + MAP_OFFSET, METATILE_InsideOfTruck_ExitLight_Top);
            MapGridSetMetatileIdAt(4 + MAP_OFFSET, 2 + MAP_OFFSET, METATILE_InsideOfTruck_ExitLight_Mid);
            MapGridSetMetatileIdAt(4 + MAP_OFFSET, 3 + MAP_OFFSET, METATILE_InsideOfTruck_ExitLight_Bottom);
            DrawWholeMapView();
            // Som suave de porta abrindo
            //PlaySE(SE_DOOR);
            DestroyTask(taskId);
            UnlockPlayerFieldControls();
        }
        break;
    }
}

void ExecuteTruckSequence(void)
{
    MapGridSetMetatileIdAt(4 + MAP_OFFSET, 1 + MAP_OFFSET, METATILE_InsideOfTruck_DoorClosedFloor_Top);
    MapGridSetMetatileIdAt(4 + MAP_OFFSET, 2 + MAP_OFFSET, METATILE_InsideOfTruck_DoorClosedFloor_Mid);
    MapGridSetMetatileIdAt(4 + MAP_OFFSET, 3 + MAP_OFFSET, METATILE_InsideOfTruck_DoorClosedFloor_Bottom);
    DrawWholeMapView();
    LockPlayerFieldControls();
    CpuFastFill(0, gPlttBufferFaded, PLTT_SIZE);
    CreateTask(Task_HandleTruckSequence, 0xA);
}

void EndTruckSequence(u8 taskId)
{
    if (!FuncIsActiveTask(Task_HandleTruckSequence))
    {
        SetObjectEventSpritePosByLocalIdAndMap(LOCALID_TRUCK_BOX_TOP,      gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup, BOX1_X_OFFSET, BOX1_Y_OFFSET);
        SetObjectEventSpritePosByLocalIdAndMap(LOCALID_TRUCK_BOX_BOTTOM_L, gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup, BOX2_X_OFFSET, BOX2_Y_OFFSET);
        SetObjectEventSpritePosByLocalIdAndMap(LOCALID_TRUCK_BOX_BOTTOM_R, gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup, BOX3_X_OFFSET, BOX3_Y_OFFSET);
    }
}

bool8 TrySetPortholeWarpDestination(void)
{
    s8 mapGroup, mapNum;
    s16 x, y;

    if (GetSSTidalLocation(&mapGroup, &mapNum, &x, &y) != SS_TIDAL_LOCATION_CURRENTS)
    {
        return FALSE;
    }
    else
    {
        SetWarpDestination(mapGroup, mapNum, WARP_ID_NONE, x, y);
        return TRUE;
    }
}

void Task_HandlePorthole(u8 taskId)
{
    s16 *data = gTasks[taskId].data;
    u16 *cruiseState = GetVarPointer(VAR_SS_TIDAL_STATE);
    struct WarpData *location = &gSaveBlock1Ptr->location;

    switch (data[0])
    {
    case INIT_PORTHOLE: // finish fading before making porthole finish.
        if (!gPaletteFade.active)
        {
            data[1] = 0;
            data[0] = EXECUTE_MOVEMENT; // execute movement before checking if should be exited. strange?
        }
        break;
    case IDLE_CHECK:
        if (JOY_NEW(A_BUTTON))
            data[1] = 1;
        if (!ScriptMovement_IsObjectMovementFinished(LOCALID_PLAYER, location->mapNum, location->mapGroup))
            return;
        if (CountSSTidalStep(1) == TRUE)
        {
            if (*cruiseState == SS_TIDAL_DEPART_SLATEPORT)
                *cruiseState = SS_TIDAL_EXIT_CURRENTS_RIGHT;
            else
                *cruiseState = SS_TIDAL_EXIT_CURRENTS_LEFT;
            data[0] = EXIT_PORTHOLE;
            return;
        }
        data[0] = EXECUTE_MOVEMENT;
        //fallthrough
    case EXECUTE_MOVEMENT:
        if (data[1])
        {
            data[0] = EXIT_PORTHOLE;
            return;
        }

        if (*cruiseState == SS_TIDAL_DEPART_SLATEPORT)
        {
            ScriptMovement_StartObjectMovementScript(LOCALID_PLAYER, location->mapNum, location->mapGroup, sSSTidalSailEastMovementScript);
            data[0] = IDLE_CHECK;
        }
        else
        {
            ScriptMovement_StartObjectMovementScript(LOCALID_PLAYER, location->mapNum, location->mapGroup, sSSTidalSailWestMovementScript);
            data[0] = IDLE_CHECK;
        }
        break;
    case EXIT_PORTHOLE:
        FlagClear(FLAG_DONT_TRANSITION_MUSIC);
        FlagClear(FLAG_HIDE_MAP_NAME_POPUP);
        SetWarpDestinationToDynamicWarp(0);
        DoDiveWarp();
        DestroyTask(taskId);
        break;
    }
}

static void ShowSSTidalWhileSailing(void)
{
    u8 spriteId = CreateObjectGraphicsSprite(OBJ_EVENT_GFX_SS_TIDAL, SpriteCallbackDummy, 112, 80, 0);

    gSprites[spriteId].coordOffsetEnabled = FALSE;

    if (VarGet(VAR_SS_TIDAL_STATE) == SS_TIDAL_DEPART_SLATEPORT)
        StartSpriteAnim(&gSprites[spriteId], GetFaceDirectionAnimNum(DIR_EAST));
    else
        StartSpriteAnim(&gSprites[spriteId], GetFaceDirectionAnimNum(DIR_WEST));
}

void FieldCB_ShowPortholeView(void)
{
    ShowSSTidalWhileSailing();
    gObjectEvents[gPlayerAvatar.objectEventId].invisible = TRUE;
    FadeInFromBlack();
    CreateTask(Task_HandlePorthole, 80);
    LockPlayerFieldControls();
}

void LookThroughPorthole(void)
{
    FlagSet(FLAG_SYS_CRUISE_MODE);
    FlagSet(FLAG_DONT_TRANSITION_MUSIC);
    FlagSet(FLAG_HIDE_MAP_NAME_POPUP);
    SetDynamicWarp(0, gSaveBlock1Ptr->location.mapGroup, gSaveBlock1Ptr->location.mapNum, WARP_ID_NONE);
    TrySetPortholeWarpDestination();
    DoPortholeWarp();
}
