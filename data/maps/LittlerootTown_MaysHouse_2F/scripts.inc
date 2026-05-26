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
	.string "{PLAYER}: What a weird dream…\p"
# 25 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Were those JIRACHI and CELEBI?\n"
# 26 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Maybe it wasn't a dream…\l"
# 27 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Maybe it really happened…p"
# 28 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "…Either way, I have to get going.$"
# 29 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 30 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_OnTransition:
# 31 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_lt VAR_LITTLEROOT_RIVAL_STATE, 2, LittlerootTown_MaysHouse_2F_EventScript_CheckSetReadyToMeetMay
# 32 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_ge VAR_LITTLEROOT_RIVAL_STATE, 3, LittlerootTown_MaysHouse_2F_EventScript_CheckShouldUpdateMayPos
# 33 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 4, PlayersHouse_2F_EventScript_BlockStairsUntilClockIsSet
# 34 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call SecretBase_EventScript_SetDecorationFlags
# 35 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_SECRET_BASE_INITIALIZED, 0
# 36 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 37 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 38 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_CheckShouldUpdateMayPos::
# 39 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_LILYCOVE, LittlerootTown_MaysHouse_2F_EventScript_TryUpdateMayPos
# 40 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_ge VAR_BIRCH_LAB_STATE, 2, LittlerootTown_MaysHouse_2F_EventScript_Ret
# 41 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto LittlerootTown_MaysHouse_2F_EventScript_TryUpdateMayPos
# 42 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 43 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_TryUpdateMayPos::
# 44 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 45 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 46 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_Ret::
# 47 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 48 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 49 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_CheckSetReadyToMeetMay::
# 50 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	checkplayergender
# 51 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_MaysHouse_2F_EventScript_SetReadyToMeetMay
# 52 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 53 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 54 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_SetReadyToMeetMay::
# 55 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_RIVAL_STATE, 2
# 56 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 57 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 58 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_OnWarp:
# 59 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	map_script_2 VAR_SECRET_BASE_INITIALIZED, 0, LittlerootTown_MaysHouse_2F_EventScript_CheckInitDecor
# 60 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.2byte 0
# 61 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 62 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_CheckInitDecor::
# 63 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	checkplayergender
# 64 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, SecretBase_EventScript_InitDecorations
# 65 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 66 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 67 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
// O resto do seu script original da May continua aqui...
# 68 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_RivalsPokeBall::
# 69 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	lockall
# 70 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_LITTLEROOT_RIVAL_STATE, 2, LittlerootTown_MaysHouse_2F_EventScript_MeetMay
# 71 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_ItsRivalsPokeBall, MSGBOX_DEFAULT
# 72 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 73 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 74 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 75 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_MeetMay::
# 76 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay 10
# 77 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	addobject LOCALID_RIVALS_HOUSE_2F_RIVAL
# 78 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayEnters
# 79 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 80 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	playse SE_PIN
# 81 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, Common_Movement_ExclamationMark
# 82 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 83 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, Common_Movement_Delay48
# 84 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 85 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay 10
# 86 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	playbgm MUS_ENCOUNTER_MAY, TRUE
# 87 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, LittlerootTown_MaysHouse_2F_EventScript_MeetMayNorth
# 88 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, LittlerootTown_MaysHouse_2F_EventScript_MeetMaySouth
# 89 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, LittlerootTown_MaysHouse_2F_EventScript_MeetMayWest
# 90 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, LittlerootTown_MaysHouse_2F_EventScript_MeetMayEast
# 91 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_RIVAL_STATE, 3
# 92 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
# 93 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_BEDROOM
# 94 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 1
# 95 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	savebgm MUS_DUMMY
# 96 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	fadedefaultbgm
# 97 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 98 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 99 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 100 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_MeetMayNorth::
# 101 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerNorth
# 102 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 103 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 104 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 105 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayWhoAreYou, MSGBOX_DEFAULT
# 106 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	closemessage
# 107 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMayNorth
# 108 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCNorth
# 109 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 110 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 111 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 112 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_MeetMaySouth::
# 113 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerSouth
# 114 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 115 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 116 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 117 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayWhoAreYou, MSGBOX_DEFAULT
# 118 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	closemessage
# 119 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMaySouth
# 120 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCSouth
# 121 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 122 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 123 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 124 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_MeetMayWest::
# 125 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerWest
# 126 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 127 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 128 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 129 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayWhoAreYou, MSGBOX_DEFAULT
# 130 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	closemessage
# 131 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCWest
# 132 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 133 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 134 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 135 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_MeetMayEast::
# 136 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerEast
# 137 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 138 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 139 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 140 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayWhoAreYou, MSGBOX_DEFAULT
# 141 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	closemessage
# 142 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMayEast
# 143 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCEast
# 144 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 145 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 146 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 147 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayEnters:
# 148 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_down
# 149 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_down
# 150 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 151 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 152 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 153 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerNorth:
# 154 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 155 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 156 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_down
# 157 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_down
# 158 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 159 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 160 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 161 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCNorth:
# 162 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 163 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 164 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 165 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 166 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 167 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 168 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 169 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 170 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 171 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 172 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 173 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMayNorth:
# 174 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 175 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 176 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 177 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 178 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 179 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 180 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 181 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 182 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 183 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerSouth:
# 184 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 185 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 186 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 187 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 188 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 189 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCSouth:
# 190 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 191 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 192 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 193 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 194 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 195 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 196 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 197 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 198 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 199 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMaySouth:
# 200 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 201 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 202 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 203 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 204 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 205 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 206 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 207 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerWest:
# 208 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 209 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 210 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 211 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 212 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 213 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_down
# 214 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 215 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 216 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCWest:
# 217 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 218 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 219 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 220 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 221 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 222 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 223 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayApproachPlayerEast:
# 224 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 225 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 226 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_down
# 227 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 228 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 229 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 230 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_MayWalkToPCEast:
# 231 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 232 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_up
# 233 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 234 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 235 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 236 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 237 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_right
# 238 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 239 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 240 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 241 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_Movement_PlayerWatchMayEast:
# 242 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 243 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 244 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 245 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	delay_16
# 246 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	walk_in_place_faster_right
# 247 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	step_end
# 248 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 249 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_Rival::
# 250 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	lockall
# 251 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_LILYCOVE, RivalsHouse_2F_EventScript_RivalPostLilycove
# 252 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	checkplayergender
# 253 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, RivalsHouse_2F_EventScript_May
# 254 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, RivalsHouse_2F_EventScript_Brendan
# 255 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 256 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 257 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_May::
# 258 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayGettingReady, MSGBOX_DEFAULT
# 259 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 260 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 261 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 262 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_Brendan::
# 263 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanGettingReady, MSGBOX_DEFAULT
# 264 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 265 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 266 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 267 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_RivalPostLilycove::
# 268 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FacePlayer
# 269 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitmovement 0
# 270 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	checkplayergender
# 271 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_RESULT, MALE, RivalsHouse_2F_EventScript_MayPostLilycove
# 272 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, RivalsHouse_2F_EventScript_BrendanPostLilycove
# 273 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setflag FLAG_MET_RIVAL_IN_HOUSE_AFTER_LILYCOVE
# 274 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 275 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 276 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 277 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_MayPostLilycove::
# 278 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_IN_HOUSE_AFTER_LILYCOVE, RivalsHouse_2F_EventScript_MayWhereShouldIGoNext
# 279 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayJustCheckingMyPokedex, MSGBOX_DEFAULT
# 280 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 281 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 282 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_BrendanPostLilycove::
# 283 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_IN_HOUSE_AFTER_LILYCOVE, RivalsHouse_2F_EventScript_BrendanWhereShouldIGoNext
# 284 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanJustCheckingMyPokedex, MSGBOX_DEFAULT
# 285 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 286 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 287 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_MayWhereShouldIGoNext::
# 288 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_MayWhereShouldIGoNext, MSGBOX_DEFAULT
# 289 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 290 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 291 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_EventScript_BrendanWhereShouldIGoNext::
# 292 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanWhereShouldIGoNext, MSGBOX_DEFAULT
# 293 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	return
# 294 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 295 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_PC::
# 296 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	lockall
# 297 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	checkplayergender
# 298 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_MaysHouse_2F_EventScript_CheckRivalsPC
# 299 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, LittlerootTown_MaysHouse_2F_EventScript_CheckPlayersPC
# 300 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 301 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 302 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_CheckRivalsPC::
# 303 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox gText_PokemonTrainerSchoolEmail, MSGBOX_DEFAULT
# 304 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 305 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 306 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 307 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_CheckPlayersPC::
# 308 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_0x8004, PC_LOCATION_MAYS_HOUSE
# 309 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	special DoPCTurnOnEffect
# 310 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	playse SE_PC_ON
# 311 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	msgbox gText_PlayerHouseBootPC, MSGBOX_DEFAULT
# 312 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	special BedroomPC
# 313 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	waitstate
# 314 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 315 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 316 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 317 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
LittlerootTown_MaysHouse_2F_EventScript_TurnOffPlayerPC::
# 318 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	setvar VAR_0x8004, PC_LOCATION_MAYS_HOUSE
# 319 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	playse SE_PC_OFF
# 320 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	special DoPCTurnOffEffect
# 321 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	releaseall
# 322 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	end
# 323 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 324 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_MayWhoAreYou:
# 325 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Oh, hey {PLAYER}!\n"
# 326 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "What are you doing here?\p"
# 327 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Oh, but nevermind that.\n"
# 328 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Did you see the comet last night?\p"
# 329 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "It lit up the entire sky!\n"
# 330 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "It was so beautiful…\p"
# 331 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I made a wish when I saw it.\n"
# 332 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Got goosebumps all over!\p"
# 333 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Anyway… I gotta go!\n"
# 334 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I'm going to train on ROUTE 103.\p"
# 335 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "PROFESSOR ACACIA says we both have\n"
# 336 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "a lot of potential as TRAINERS.\p"
# 337 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Wouldn't want to let her down!\n"
# 338 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "See you later, {PLAYER}!$"
# 339 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 340 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_MayGettingReady:
# 341 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Studying about the millennium comet…\n"
# 342 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "It only passes once every 1000 years!\p"
# 343 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "The ancient texts say it has some\n"
# 344 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "connection to legendary POKéMON…$"
# 345 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 346 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_BrendanWhoAreYou:
# 347 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Oh, hey {PLAYER}!\n"
# 348 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "What are you doing here?\p"
# 349 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Oh, but nevermind that.\n"
# 350 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Did you see the comet last night?\p"
# 351 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "The whole sky was glowing with this\n"
# 352 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "weird purple light!\p"
# 353 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "PROFESSOR ACACIA said it might be\n"
# 354 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "connected to POKeMON somehow.\p"
# 355 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Me? Of course I made a wish.\n"
# 356 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I'm not telling you though, or it won't\n"
# 357 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "come true.$"
# 358 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Anyway, I should get going.\n"
# 359 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Got some training on ROUTE 103 to do.\p"
# 360 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Catch you later, neighbor!$"
# 361 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 362 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_BrendanGettingReady:
# 363 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Studying about the millennium comet…\n"
# 364 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "It only passes once every 1000 years!\p"
# 365 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "The ancient texts say it has some\n"
# 366 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "connection to legendary POKéMON…$"
# 367 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 368 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_ItsRivalsPokeBall:
# 369 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "It's {RIVAL}'s POKé BALL!\p"
# 370 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Better leave it right where it is.$"
# 371 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 372 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_MayJustCheckingMyPokedex:
# 373 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "ZINNIA: {PLAYER}{KUN}!\p"
# 374 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I was just checking my POKéDEX.\p"
# 375 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "There's still a lot of POKéMON that\n"
# 376 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I've seen but haven't caught.\p"
# 377 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "And there are many others that\n"
# 378 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I think will evolve.\p"
# 379 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I wonder where I should go catch\n"
# 380 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "some POKéMON next?$"
# 381 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 382 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_MayWhereShouldIGoNext:
# 383 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "ZINNIA: I wonder where I should go catch\n"
# 384 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "some POKéMON next?\p"
# 385 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Wouldn't it be funny if we ran into each\n"
# 386 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "other, {PLAYER}{KUN}?$"
# 387 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 388 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_BrendanJustCheckingMyPokedex:
# 389 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "ZENNO: Hey, it's {PLAYER}.\p"
# 390 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I was just checking out my POKéDEX.\p"
# 391 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "There are still many POKéMON that\n"
# 392 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "I need to catch, I know, but this\l"
# 393 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "is looking pretty good.\p"
# 394 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Checking this POKéDEX out gives me\n"
# 395 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "the urge to hit the road again.$"
# 396 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"

# 397 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
RivalsHouse_2F_Text_BrendanWhereShouldIGoNext:
# 398 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "ZENNO: I'm having a hard time deciding\n"
# 399 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "where I should catch POKéMON next.\p"
# 400 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "Hey, {PLAYER}, if I see you while I'm out\n"
# 401 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "catching POKéMON, I can pitch you a\l"
# 402 "data/maps/LittlerootTown_MaysHouse_2F/scripts.pory"
	.string "battle if you'd like.$"
