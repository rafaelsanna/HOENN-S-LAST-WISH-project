# 1 "data/maps/PHOENIXCAVE/scripts.pory"

# 2 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_MapScripts::
# 3 "data/maps/PHOENIXCAVE/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, PHOENIXCAVE_OnTransition
# 4 "data/maps/PHOENIXCAVE/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, PHOENIXCAVE_OnWarp
# 5 "data/maps/PHOENIXCAVE/scripts.pory"
	.byte 0
# 6 "data/maps/PHOENIXCAVE/scripts.pory"

# 7 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_OnTransition:
# 8 "data/maps/PHOENIXCAVE/scripts.pory"
	goto_if_unset FLAG_PETALBURG_QUAKE_PART1_CLEARED, PHOENIXCAVE_EventScript_HidePortal
# 9 "data/maps/PHOENIXCAVE/scripts.pory"
	clearflag FLAG_HIDE_PHOENIX_CAVE_PORTAL
# 10 "data/maps/PHOENIXCAVE/scripts.pory"
	return
# 11 "data/maps/PHOENIXCAVE/scripts.pory"

# 12 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_EventScript_HidePortal::
# 13 "data/maps/PHOENIXCAVE/scripts.pory"
	setflag FLAG_HIDE_PHOENIX_CAVE_PORTAL
# 14 "data/maps/PHOENIXCAVE/scripts.pory"
	return
# 15 "data/maps/PHOENIXCAVE/scripts.pory"

# 16 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_OnWarp:
# 17 "data/maps/PHOENIXCAVE/scripts.pory"
	map_script_2 VAR_TEMP_1, 0, PHOENIXCAVE_EventScript_FaceDownAtPortal
# 18 "data/maps/PHOENIXCAVE/scripts.pory"
	.2byte 0
# 19 "data/maps/PHOENIXCAVE/scripts.pory"

# 20 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_EventScript_FaceDownAtPortal::
# 21 "data/maps/PHOENIXCAVE/scripts.pory"
	setvar VAR_TEMP_1, 1
# 22 "data/maps/PHOENIXCAVE/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 23 "data/maps/PHOENIXCAVE/scripts.pory"
	goto_if_ne VAR_TEMP_2, 5, PHOENIXCAVE_EventScript_EndFaceDownAtPortal
# 24 "data/maps/PHOENIXCAVE/scripts.pory"
	goto_if_ne VAR_TEMP_3, 4, PHOENIXCAVE_EventScript_EndFaceDownAtPortal
# 25 "data/maps/PHOENIXCAVE/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_SOUTH
# 26 "data/maps/PHOENIXCAVE/scripts.pory"
	end
# 27 "data/maps/PHOENIXCAVE/scripts.pory"

# 28 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_EventScript_EndFaceDownAtPortal::
# 29 "data/maps/PHOENIXCAVE/scripts.pory"
	end
# 30 "data/maps/PHOENIXCAVE/scripts.pory"

# 31 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_MapScripts_MagicCrystal::
# 32 "data/maps/PHOENIXCAVE/scripts.pory"
	goto_if_unset FLAG_PETALBURG_QUAKE_PART1_CLEARED, PHOENIXCAVE_EventScript_InactivePortal
# 33 "data/maps/PHOENIXCAVE/scripts.pory"
	lock
# 34 "data/maps/PHOENIXCAVE/scripts.pory"
	faceplayer
# 35 "data/maps/PHOENIXCAVE/scripts.pory"
	msgbox PHOENIXCAVE_Text_MagicCrystal, MSGBOX_YESNO
# 36 "data/maps/PHOENIXCAVE/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PHOENIXCAVE_EventScript_LeavePortal
# 37 "data/maps/PHOENIXCAVE/scripts.pory"
	release
# 38 "data/maps/PHOENIXCAVE/scripts.pory"
	warpteleport MAP_AURORAGROVE, 0
# 39 "data/maps/PHOENIXCAVE/scripts.pory"
	waitstate
# 40 "data/maps/PHOENIXCAVE/scripts.pory"
	end
# 41 "data/maps/PHOENIXCAVE/scripts.pory"

# 42 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_EventScript_LeavePortal::
# 43 "data/maps/PHOENIXCAVE/scripts.pory"
	release
# 44 "data/maps/PHOENIXCAVE/scripts.pory"
	end
# 45 "data/maps/PHOENIXCAVE/scripts.pory"

# 46 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_EventScript_InactivePortal::
# 47 "data/maps/PHOENIXCAVE/scripts.pory"
	end
# 48 "data/maps/PHOENIXCAVE/scripts.pory"

# 49 "data/maps/PHOENIXCAVE/scripts.pory"
PHOENIXCAVE_Text_MagicCrystal:
# 50 "data/maps/PHOENIXCAVE/scripts.pory"
	.string "The portal pulses with a mysterious\n"
# 51 "data/maps/PHOENIXCAVE/scripts.pory"
	.string "energy.\p"
# 52 "data/maps/PHOENIXCAVE/scripts.pory"
	.string "Reach your hand in?$"
