# 1 "data/maps/AbandonedShip_TeamAqua/scripts.pory"

# 2 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
AbandonedShip_TeamAqua_MapScripts::
# 3 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	.byte 0
# 4 "data/maps/AbandonedShip_TeamAqua/scripts.pory"

# 5 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
AbandonedShip_TeamAqua_NeedKeys::
# 6 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	checkflag FLAG_AQUA_SHIP_KEYS
# 7 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	goto_if TRUE, AbandonedShip_TeamAqua_NeedKeys_End
# 8 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	playse SE_WALL_HIT
# 9 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_TeamAqua_Movement_FaceUp
# 10 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	msgbox AbandonedShip_TeamAqua_Text_Locked, MSGBOX_SIGN
# 11 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, AbandonedShip_TeamAqua_Movement_StepBack
# 12 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	waitmovement 0
# 13 "data/maps/AbandonedShip_TeamAqua/scripts.pory"

# 14 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
AbandonedShip_TeamAqua_NeedKeys_End::
# 15 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	end
# 16 "data/maps/AbandonedShip_TeamAqua/scripts.pory"

# 17 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
AbandonedShip_TeamAqua_Movement_FaceUp:
# 18 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	face_up
# 19 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	step_end
# 20 "data/maps/AbandonedShip_TeamAqua/scripts.pory"

# 21 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
AbandonedShip_TeamAqua_Movement_StepBack:
# 22 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	face_up
# 23 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	walk_down
# 24 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	step_end
# 25 "data/maps/AbandonedShip_TeamAqua/scripts.pory"

# 26 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
AbandonedShip_TeamAqua_Text_Locked::
# 27 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	.string "The door is locked.\nYou need the ship's keys.$"
