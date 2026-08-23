# 1 "data/maps/PHOENIXCAVE/scripts.pory"

# 2 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_MapScripts::
# 3 "data/maps/PHOENIXCAVE/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, PHOENIXCAVE_OnWarp
# 4 "data/maps/PHOENIXCAVE/scripts.pory"
	.byte 0
# 5 "data/maps/PHOENIXCAVE/scripts.pory"

# 6 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_OnWarp:
# 7 "data/maps/PHOENIXCAVE/scripts.pory"
	map_script_2 VAR_TEMP_1, 0, PHOENIXCAVE_EventScript_FaceDownAtPortal
# 8 "data/maps/PHOENIXCAVE/scripts.pory"
	.2byte 0
# 9 "data/maps/PHOENIXCAVE/scripts.pory"

# 10 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_EventScript_FaceDownAtPortal::
# 11 "data/maps/PHOENIXCAVE/scripts.pory"
	setvar VAR_TEMP_1, 1
# 12 "data/maps/PHOENIXCAVE/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 13 "data/maps/PHOENIXCAVE/scripts.pory"
	goto_if_ne VAR_TEMP_2, 5, PHOENIXCAVE_EventScript_EndFaceDownAtPortal
# 14 "data/maps/PHOENIXCAVE/scripts.pory"
	goto_if_ne VAR_TEMP_3, 4, PHOENIXCAVE_EventScript_EndFaceDownAtPortal
# 15 "data/maps/PHOENIXCAVE/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_SOUTH
# 16 "data/maps/PHOENIXCAVE/scripts.pory"
	end
# 17 "data/maps/PHOENIXCAVE/scripts.pory"

# 18 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_EventScript_EndFaceDownAtPortal::
# 19 "data/maps/PHOENIXCAVE/scripts.pory"
	end
# 20 "data/maps/PHOENIXCAVE/scripts.pory"

# 21 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_MapScripts_MagicCrystal::
# 22 "data/maps/PHOENIXCAVE/scripts.pory"
	lock
# 23 "data/maps/PHOENIXCAVE/scripts.pory"
	faceplayer
# 24 "data/maps/PHOENIXCAVE/scripts.pory"
	msgbox PHOENIXCAVE_Text_MagicCrystal, MSGBOX_YESNO
# 25 "data/maps/PHOENIXCAVE/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PHOENIXCAVE_EventScript_LeavePortal
# 26 "data/maps/PHOENIXCAVE/scripts.pory"
	release
# 27 "data/maps/PHOENIXCAVE/scripts.pory"
	warpteleport MAP_AURORAGROVE, 0
# 28 "data/maps/PHOENIXCAVE/scripts.pory"
	waitstate
# 29 "data/maps/PHOENIXCAVE/scripts.pory"
	end
# 30 "data/maps/PHOENIXCAVE/scripts.pory"

# 31 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_EventScript_LeavePortal::
# 32 "data/maps/PHOENIXCAVE/scripts.pory"
	release
# 33 "data/maps/PHOENIXCAVE/scripts.pory"
	end
# 34 "data/maps/PHOENIXCAVE/scripts.pory"

# 35 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_Text_MagicCrystal:
# 36 "data/maps/PHOENIXCAVE/scripts.pory"
	.string "The portal pulses with a mysterious\n"
# 37 "data/maps/PHOENIXCAVE/scripts.pory"
	.string "energy.\p"
# 38 "data/maps/PHOENIXCAVE/scripts.pory"
	.string "Reach your hand in?$"
