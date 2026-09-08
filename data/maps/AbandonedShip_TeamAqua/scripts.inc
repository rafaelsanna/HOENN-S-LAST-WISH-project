# 1 "data/maps/AbandonedShip_TeamAqua/scripts.pory"

# 2 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
AbandonedShip_TeamAqua_MapScripts::
# 3 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	.byte 0
# 4 "data/maps/AbandonedShip_TeamAqua/scripts.pory"

# 5 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
AbandonedShip_TeamAqua_NeedKeys::
# 6 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	playse SE_WALL_HIT
# 7 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	msgbox AbandonedShip_TeamAqua_Text_Locked, MSGBOX_SIGN
# 8 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	end
# 9 "data/maps/AbandonedShip_TeamAqua/scripts.pory"

# 10 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
AbandonedShip_TeamAqua_Text_Locked::
# 11 "data/maps/AbandonedShip_TeamAqua/scripts.pory"
	.string "The door is locked.\nYou need the ship's keys.$"
