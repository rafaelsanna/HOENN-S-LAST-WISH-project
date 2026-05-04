AbandonedShip_TeamAqua_MapScripts::
	.byte 0

AbandonedShip_TeamAqua_NeedKeys::
	checkflag FLAG_AQUA_SHIP_KEYS
	goto_if TRUE, AbandonedShip_TeamAqua_NeedKeys_End
	msgbox AbandonedShip_TeamAqua_Text_Locked, MSGBOX_SIGN
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_TeamAqua_Movement_StepBack
	waitmovement 0

AbandonedShip_TeamAqua_NeedKeys_End::
	end

AbandonedShip_TeamAqua_Movement_StepBack:
	face_up
	walk_down
	step_end

AbandonedShip_TeamAqua_Text_Locked::
	.string "The door is locked.\nYou need the ship's keys.$"
	