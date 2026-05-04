# 1 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 2 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
// ====================================================================
# 3 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
// MAY'S HOUSE 2F - ESPELHADO DO BRENDAN COM WEIRD DREAM
# 4 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
// ====================================================================
# 5 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 6 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_MapScripts::
# 7 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, LittlerootTown_MaysHouse_2F_OnTransition
# 8 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, LittlerootTown_MaysHouse_2F_OnWarp
# 9 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, LittlerootTown_MaysHouse_2F_OnFrame
# 10 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.byte 0
# 11 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 12 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_OnFrame:
# 13 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 6, LittlerootTown_MaysHouse_2F_EventScript_WeirdDreamDialogue
# 14 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.2byte 0
# 15 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 16 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_WeirdDreamDialogue::
# 17 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	lockall
# 18 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox LittlerootTown_MaysHouse_2F_Text_WeirdDream, MSGBOX_DEFAULT
# 19 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 7
# 20 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 21 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 22 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 23 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Text_WeirdDream:
# 24 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "{PLAYER}: What a weird dream...\p"
# 25 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Was that JIRACHI and CELEBI?\n"
# 26 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Maybe it wasn't a dream...\l"
# 27 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Maybe it really happened...$"
# 28 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 29 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_OnTransition:
# 30 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_lt VAR_LITTLEROOT_RIVAL_STATE, 2, LittlerootTown_MaysHouse_2F_EventScript_CheckSetReadyToMeetMay
# 31 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_ge VAR_LITTLEROOT_RIVAL_STATE, 3, LittlerootTown_MaysHouse_2F_EventScript_CheckShouldUpdateMayPos
# 32 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 4, PlayersHouse_2F_EventScript_BlockStairsUntilClockIsSet
# 33 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call SecretBase_EventScript_SetDecorationFlags
# 34 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_SECRET_BASE_INITIALIZED, 0
# 35 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 36 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 37 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_CheckShouldUpdateMayPos::
# 38 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_LILYCOVE, LittlerootTown_MaysHouse_2F_EventScript_TryUpdateMayPos
# 39 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_ge VAR_BIRCH_LAB_STATE, 2, LittlerootTown_MaysHouse_2F_EventScript_Ret
# 40 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto LittlerootTown_MaysHouse_2F_EventScript_TryUpdateMayPos
# 41 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 42 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_TryUpdateMayPos::
# 43 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 44 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 45 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_Ret::
# 46 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 47 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 48 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_CheckSetReadyToMeetMay::
# 49 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	checkplayergender
# 50 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_MaysHouse_2F_EventScript_SetReadyToMeetMay
# 51 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 52 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 53 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_SetReadyToMeetMay::
# 54 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_RIVAL_STATE, 2
# 55 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 56 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 57 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_OnWarp:
# 58 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	map_script_2 VAR_SECRET_BASE_INITIALIZED, 0, LittlerootTown_MaysHouse_2F_EventScript_CheckInitDecor
# 59 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.2byte 0
# 60 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 61 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_CheckInitDecor::
# 62 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	checkplayergender
# 63 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, SecretBase_EventScript_InitDecorations
# 64 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 65 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 66 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
// O resto do seu script original da May continua aqui...
# 67 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_RivalsPokeBall::
# 68 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	lockall
# 69 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_LITTLEROOT_RIVAL_STATE, 2, LittlerootTown_MaysHouse_2F_EventScript_MeetMay
# 70 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_ItsRivalsPokeBall, MSGBOX_DEFAULT
# 71 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 72 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 73 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 74 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_MeetMay::
# 75 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay 10
# 76 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	addobject LOCALID_RIVALS_HOUSE_2F_RIVAL
# 77 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayEnters
# 78 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 79 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	playse SE_PIN
# 80 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, Common_Movement_ExclamationMark
# 81 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 82 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, Common_Movement_Delay48
# 83 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 84 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay 10
# 85 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	playbgm MUS_ENCOUNTER_MAY, TRUE
# 86 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, LittlerootTown_MaysHouse_2F_EventScript_MeetMayNorth
# 87 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, LittlerootTown_MaysHouse_2F_EventScript_MeetMaySouth
# 88 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, LittlerootTown_MaysHouse_2F_EventScript_MeetMayWest
# 89 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, LittlerootTown_MaysHouse_2F_EventScript_MeetMayEast
# 90 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_RIVAL_STATE, 3
# 91 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
# 92 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_BEDROOM
# 93 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 1
# 94 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	savebgm MUS_DUMMY
# 95 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	fadedefaultbgm
# 96 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 97 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 98 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 99 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_MeetMayNorth::
# 100 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerNorth
# 101 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 102 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 103 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 104 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayWhoAreYou, MSGBOX_DEFAULT
# 105 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	closemessage
# 106 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMayNorth
# 107 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCNorth
# 108 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 109 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 110 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 111 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_MeetMaySouth::
# 112 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerSouth
# 113 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 114 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 115 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 116 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayWhoAreYou, MSGBOX_DEFAULT
# 117 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	closemessage
# 118 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMaySouth
# 119 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCSouth
# 120 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 121 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 122 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 123 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_MeetMayWest::
# 124 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerWest
# 125 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 126 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 127 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 128 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayWhoAreYou, MSGBOX_DEFAULT
# 129 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	closemessage
# 130 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCWest
# 131 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 132 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 133 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 134 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_MeetMayEast::
# 135 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerEast
# 136 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 137 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 138 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 139 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayWhoAreYou, MSGBOX_DEFAULT
# 140 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	closemessage
# 141 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMayEast
# 142 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCEast
# 143 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 144 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 145 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 146 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayEnters:
# 147 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_down
# 148 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_down
# 149 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 150 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 151 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 152 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerNorth:
# 153 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 154 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 155 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_down
# 156 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_down
# 157 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 158 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 159 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 160 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCNorth:
# 161 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 162 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 163 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 164 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 165 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 166 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 167 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 168 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 169 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 170 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 171 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 172 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMayNorth:
# 173 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 174 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 175 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 176 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 177 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 178 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 179 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 180 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 181 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 182 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerSouth:
# 183 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 184 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 185 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 186 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 187 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 188 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCSouth:
# 189 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 190 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 191 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 192 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 193 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 194 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 195 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 196 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 197 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 198 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMaySouth:
# 199 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 200 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 201 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 202 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 203 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 204 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 205 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 206 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerWest:
# 207 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 208 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 209 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 210 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 211 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 212 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_down
# 213 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 214 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 215 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCWest:
# 216 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 217 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 218 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 219 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 220 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 221 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 222 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerEast:
# 223 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 224 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 225 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_down
# 226 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 227 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 228 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 229 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCEast:
# 230 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 231 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 232 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 233 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 234 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 235 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 236 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 237 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 238 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 239 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 240 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMayEast:
# 241 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 242 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 243 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 244 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 245 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 246 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 247 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 248 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_Rival::
# 249 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	lockall
# 250 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_LILYCOVE, RivalsHouse_2F_EventScript_RivalPostLilycove
# 251 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	checkplayergender
# 252 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, RivalsHouse_2F_EventScript_May
# 253 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, RivalsHouse_2F_EventScript_Brendan
# 254 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 255 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 256 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_May::
# 257 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayGettingReady, MSGBOX_DEFAULT
# 258 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 259 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 260 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 261 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_Brendan::
# 262 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanGettingReady, MSGBOX_DEFAULT
# 263 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 264 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 265 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 266 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_RivalPostLilycove::
# 267 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FacePlayer
# 268 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 269 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	checkplayergender
# 270 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_RESULT, MALE, RivalsHouse_2F_EventScript_MayPostLilycove
# 271 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, RivalsHouse_2F_EventScript_BrendanPostLilycove
# 272 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setflag FLAG_MET_RIVAL_IN_HOUSE_AFTER_LILYCOVE
# 273 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 274 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 275 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 276 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_MayPostLilycove::
# 277 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_IN_HOUSE_AFTER_LILYCOVE, RivalsHouse_2F_EventScript_MayWhereShouldIGoNext
# 278 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayJustCheckingMyPokedex, MSGBOX_DEFAULT
# 279 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 280 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 281 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_BrendanPostLilycove::
# 282 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_IN_HOUSE_AFTER_LILYCOVE, RivalsHouse_2F_EventScript_BrendanWhereShouldIGoNext
# 283 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanJustCheckingMyPokedex, MSGBOX_DEFAULT
# 284 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 285 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 286 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_MayWhereShouldIGoNext::
# 287 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayWhereShouldIGoNext, MSGBOX_DEFAULT
# 288 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 289 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 290 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_BrendanWhereShouldIGoNext::
# 291 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanWhereShouldIGoNext, MSGBOX_DEFAULT
# 292 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 293 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 294 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_PC::
# 295 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	lockall
# 296 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	checkplayergender
# 297 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_MaysHouse_2F_EventScript_CheckRivalsPC
# 298 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, LittlerootTown_MaysHouse_2F_EventScript_CheckPlayersPC
# 299 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 300 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 301 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_CheckRivalsPC::
# 302 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox gText_PokemonTrainerSchoolEmail, MSGBOX_DEFAULT
# 303 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 304 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 305 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 306 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_CheckPlayersPC::
# 307 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_0x8004, PC_LOCATION_MAYS_HOUSE
# 308 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	special DoPCTurnOnEffect
# 309 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	playse SE_PC_ON
# 310 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox gText_PlayerHouseBootPC, MSGBOX_DEFAULT
# 311 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	special BedroomPC
# 312 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitstate
# 313 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 314 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 315 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 316 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_TurnOffPlayerPC::
# 317 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_0x8004, PC_LOCATION_MAYS_HOUSE
# 318 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	playse SE_PC_OFF
# 319 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	special DoPCTurnOffEffect
# 320 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 321 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 322 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 323 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_MayWhoAreYou:
# 324 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Oh, hey {PLAYER}!\n"
# 325 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Didn't see you there.\p"
# 326 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Did you come to talk about that\n"
# 327 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "bizarre comet last night?\p"
# 328 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "It lit up the entire sky!\n"
# 329 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "So strange and beautiful...\p"
# 330 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I made a wish when I saw it.\n"
# 331 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Got goosebumps all over!\p"
# 332 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Anyway... I remembered something!\n"
# 333 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "PROFESSOR ACACIA says we both have\n"
# 334 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "a lot of potential as TRAINERS.\p"
# 335 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Anyway, I should get back to studying\n"
# 336 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "on the computer.\p"
# 337 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "See you later, {PLAYER}!$"
# 338 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 339 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_MayGettingReady:
# 340 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Studying about the millennium comet...\n"
# 341 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "It only passes once every 1000 years!\p"
# 342 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "The ancient texts say it has some\n"
# 343 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "connection to legendary POKéMON...$"
# 344 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 345 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_BrendanWhoAreYou:
# 346 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Hey {PLAYER}!\n"
# 347 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Over here!\p"
# 348 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Did you see that bizarre comet\n"
# 349 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "last night?\p"
# 350 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "The whole sky was glowing with\n"
# 351 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "this weird purple light!\p"
# 352 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I made a wish too, hope it comes\n"
# 353 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "true, whatever it was!\p"
# 354 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "And I remembered something!\n"
# 355 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "PROFESSOR ACACIA said it might be\n"
# 356 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "connected to POKéMON somehow.\p"
# 357 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Anyway, I should get going.\n"
# 358 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Got some training to do.\p"
# 359 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Catch you later, neighbor!$"
# 360 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 361 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_BrendanGettingReady:
# 362 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Studying about the millennium comet...\n"
# 363 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "It only passes once every 1000 years!\p"
# 364 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "The ancient texts say it has some\n"
# 365 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "connection to legendary POKéMON...$"
# 366 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 367 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_ItsRivalsPokeBall:
# 368 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "It's {RIVAL}'s POKé BALL!\p"
# 369 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Better leave it right where it is.$"
# 370 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 371 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_MayJustCheckingMyPokedex:
# 372 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "ZINNIA: {PLAYER}{KUN}!\p"
# 373 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I was just checking my POKéDEX.\p"
# 374 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "There's still a lot of POKéMON that\n"
# 375 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I've seen but haven't caught.\p"
# 376 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "And there are many others that\n"
# 377 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I think will evolve.\p"
# 378 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I wonder where I should go catch\n"
# 379 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "some POKéMON next?$"
# 380 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 381 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_MayWhereShouldIGoNext:
# 382 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "ZINNIA: I wonder where I should go catch\n"
# 383 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "some POKéMON next?\p"
# 384 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Wouldn't it be funny if we ran into each\n"
# 385 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "other, {PLAYER}{KUN}?$"
# 386 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 387 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_BrendanJustCheckingMyPokedex:
# 388 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "ZENNO: Hey, it's {PLAYER}.\p"
# 389 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I was just checking out my POKéDEX.\p"
# 390 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "There are still many POKéMON that\n"
# 391 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I need to catch, I know, but this\l"
# 392 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "is looking pretty good.\p"
# 393 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Checking this POKéDEX out gives me\n"
# 394 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "the urge to hit the road again.$"
# 395 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 396 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_BrendanWhereShouldIGoNext:
# 397 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "ZENNO: I'm having a hard time deciding\n"
# 398 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "where I should catch POKéMON next.\p"
# 399 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Hey, {PLAYER}, if I see you while I'm out\n"
# 400 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "catching POKéMON, I can pitch you a\l"
# 401 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "battle if you'd like.$"
