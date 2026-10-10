#include "global.h"
#include "event_data.h"
#include "event_object_movement.h"
#include "event_scripts.h"
#include "field_player_avatar.h"
#include "fldeff.h"
#include "overworld.h"
#include "party_menu.h"
#include "script.h"
#include "constants/event_objects.h"

static void FieldCallback_Headbutt(void)
{
    gSpecialVar_Result = GetCursorSelectionMonId();
    ScriptContext_SetupScript(EventScript_HeadbuttFromParty);
}

bool32 SetUpFieldMove_Headbutt(void)
{
    u8 objectEventId;
    const struct ObjectEvent *object;
    const struct ObjectEventTemplate *template;

    GetXYCoordsOneStepInFrontOfPlayer(&gPlayerFacingPosition.x, &gPlayerFacingPosition.y);
    gPlayerFacingPosition.elevation = PlayerGetElevation();
    objectEventId = GetObjectEventIdByPosition(gPlayerFacingPosition.x,
                                             gPlayerFacingPosition.y,
                                             gPlayerFacingPosition.elevation);
    if (objectEventId == OBJECT_EVENTS_COUNT)
        return FALSE;

    object = &gObjectEvents[objectEventId];
    if (object->localId == LOCALID_PLAYER || object->localId == OBJ_EVENT_ID_FOLLOWER)
        return FALSE;

    // Trees use several prop graphics. Their interaction script, not the
    // borrowed Pokemon sprite, identifies which objects can be headbutted.
    template = GetObjectEventTemplateByLocalIdAndMap(object->localId, object->mapNum, object->mapGroup);
    if (template == NULL || template->script != EventScript_Headbutt)
        return FALSE;

    gSpecialVar_LastTalked = object->localId;
    gFieldCallback2 = FieldCallback_PrepareFadeInFromMenu;
    gPostMenuFieldCallback = FieldCallback_Headbutt;
    return TRUE;
}
