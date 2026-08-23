# 1 "data/maps/AURORAGROVE/scripts.pory"

# 2 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_MapScripts::
# 3 "data/maps/AURORAGROVE/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, AURORAGROVE_OnWarp
# 4 "data/maps/AURORAGROVE/scripts.pory"
	.byte 0
# 5 "data/maps/AURORAGROVE/scripts.pory"

# 6 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_OnWarp:
# 7 "data/maps/AURORAGROVE/scripts.pory"
	map_script_2 VAR_TEMP_1, 0, AURORAGROVE_EventScript_FaceUpAtPortal
# 8 "data/maps/AURORAGROVE/scripts.pory"
	.2byte 0
# 9 "data/maps/AURORAGROVE/scripts.pory"

# 10 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_EventScript_FaceUpAtPortal::
# 11 "data/maps/AURORAGROVE/scripts.pory"
	setvar VAR_TEMP_1, 1
# 12 "data/maps/AURORAGROVE/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 13 "data/maps/AURORAGROVE/scripts.pory"
	goto_if_ne VAR_TEMP_2, 14, AURORAGROVE_EventScript_EndFaceUpAtPortal
# 14 "data/maps/AURORAGROVE/scripts.pory"
	goto_if_ne VAR_TEMP_3, 24, AURORAGROVE_EventScript_EndFaceUpAtPortal
# 15 "data/maps/AURORAGROVE/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_NORTH
# 16 "data/maps/AURORAGROVE/scripts.pory"
	end
# 17 "data/maps/AURORAGROVE/scripts.pory"

# 18 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_EventScript_EndFaceUpAtPortal::
# 19 "data/maps/AURORAGROVE/scripts.pory"
	end
# 20 "data/maps/AURORAGROVE/scripts.pory"

# 21 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_MapScripts_MagicCrystal::
# 22 "data/maps/AURORAGROVE/scripts.pory"
	lock
# 23 "data/maps/AURORAGROVE/scripts.pory"
	faceplayer
# 24 "data/maps/AURORAGROVE/scripts.pory"
	msgbox AURORAGROVE_Text_MagicCrystal, MSGBOX_YESNO
# 25 "data/maps/AURORAGROVE/scripts.pory"
	goto_if_eq VAR_RESULT, NO, AURORAGROVE_EventScript_LeavePortal
# 26 "data/maps/AURORAGROVE/scripts.pory"
	release
# 27 "data/maps/AURORAGROVE/scripts.pory"
	warpteleport MAP_PHOENIXCAVE, 1
# 28 "data/maps/AURORAGROVE/scripts.pory"
	waitstate
# 29 "data/maps/AURORAGROVE/scripts.pory"
	end
# 30 "data/maps/AURORAGROVE/scripts.pory"

# 31 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_EventScript_LeavePortal::
# 32 "data/maps/AURORAGROVE/scripts.pory"
	release
# 33 "data/maps/AURORAGROVE/scripts.pory"
	end
# 34 "data/maps/AURORAGROVE/scripts.pory"

# 35 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_Text_MagicCrystal:
# 36 "data/maps/AURORAGROVE/scripts.pory"
	.string "The portal pulses with a mysterious\n"
# 37 "data/maps/AURORAGROVE/scripts.pory"
	.string "energy.\p"
# 38 "data/maps/AURORAGROVE/scripts.pory"
	.string "Reach your hand in?$"
