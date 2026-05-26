# 1 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 2 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
// ====================================================================
# 3 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
// BRENDAN'S HOUSE 2F - SIMPLIFICADO SEM VARIÁVEIS EXTRAS
# 4 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
// ====================================================================
# 5 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 6 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_MapScripts::
# 7 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, LittlerootTown_BrendansHouse_2F_OnTransition
# 8 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, LittlerootTown_BrendansHouse_2F_OnWarp
# 9 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, LittlerootTown_BrendansHouse_2F_OnFrame
# 10 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.byte 0
# 11 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 12 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_OnFrame:
# 13 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 6, LittlerootTown_BrendansHouse_2F_EventScript_WeirdDreamDialogue
# 14 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.2byte 0
# 15 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 16 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_WeirdDreamDialogue::
# 17 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	lockall
# 18 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox LittlerootTown_BrendansHouse_2F_Text_WeirdDream, MSGBOX_DEFAULT
# 19 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 7
# 20 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	releaseall
# 21 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 22 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 23 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Text_WeirdDream:
# 24 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "{PLAYER}: What a weird dream…\p"
# 25 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Were those JIRACHI and CELEBI?\n"
# 26 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Maybe it wasn't a dream…\l"
# 27 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Maybe it really happened…p"
# 28 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "…Either way, I have to get going.$"
# 29 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 30 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_OnTransition:
# 31 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_lt VAR_LITTLEROOT_RIVAL_STATE, 2, LittlerootTown_BrendansHouse_2F_EventScript_CheckSetReadyToMeetBrendan
# 32 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_ge VAR_LITTLEROOT_RIVAL_STATE, 3, LittlerootTown_BrendansHouse_2F_EventScript_CheckShouldUpdateBrendanPos
# 33 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 4, PlayersHouse_2F_EventScript_BlockStairsUntilClockIsSet
# 34 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call SecretBase_EventScript_SetDecorationFlags
# 35 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_SECRET_BASE_INITIALIZED, 0
# 36 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 37 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 38 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_CheckShouldUpdateBrendanPos::
# 39 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_LILYCOVE, LittlerootTown_BrendansHouse_2F_EventScript_TryUpdateBrendanPos
# 40 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_ge VAR_BIRCH_LAB_STATE, 2, LittlerootTown_BrendansHouse_2F_EventScript_Ret
# 41 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto LittlerootTown_BrendansHouse_2F_EventScript_TryUpdateBrendanPos
# 42 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 43 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_TryUpdateBrendanPos::
# 44 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 45 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 46 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_Ret::
# 47 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 48 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 49 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_CheckSetReadyToMeetBrendan::
# 50 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	checkplayergender
# 51 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, LittlerootTown_BrendansHouse_2F_EventScript_SetReadyToMeetBrendan
# 52 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 53 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 54 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_SetReadyToMeetBrendan::
# 55 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_RIVAL_STATE, 2
# 56 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 57 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 58 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_OnWarp:
# 59 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	map_script_2 VAR_SECRET_BASE_INITIALIZED, 0, LittlerootTown_BrendansHouse_2F_EventScript_CheckInitDecor
# 60 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.2byte 0
# 61 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 62 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_CheckInitDecor::
# 63 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	checkplayergender
# 64 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, SecretBase_EventScript_InitDecorations
# 65 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 66 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 67 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_RivalsPokeBall::
# 68 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	lockall
# 69 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq VAR_LITTLEROOT_RIVAL_STATE, 2, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendan
# 70 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_ItsRivalsPokeBall, MSGBOX_DEFAULT
# 71 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	releaseall
# 72 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 73 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 74 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendan::
# 75 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay 10
# 76 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	addobject LOCALID_RIVALS_HOUSE_2F_RIVAL
# 77 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanEnters
# 78 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 79 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playse SE_PIN
# 80 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, Common_Movement_ExclamationMark
# 81 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 82 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, Common_Movement_Delay48
# 83 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 84 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay 10
# 85 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 86 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanNorth
# 87 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanSouth
# 88 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanWest
# 89 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanEast
# 90 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_RIVAL_STATE, 3
# 91 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
# 92 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_BEDROOM
# 93 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 1
# 94 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	savebgm MUS_DUMMY
# 95 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	fadedefaultbgm
# 96 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	releaseall
# 97 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 98 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 99 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanNorth::
# 100 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerNorth
# 101 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 102 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 103 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 104 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
# 105 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	closemessage
# 106 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanNorth
# 107 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCNorth
# 108 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 109 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 110 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 111 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanSouth::
# 112 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerSouth
# 113 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 114 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 115 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 116 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
# 117 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	closemessage
# 118 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanSouth
# 119 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCSouth
# 120 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 121 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 122 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 123 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanWest::
# 124 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerWest
# 125 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 126 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 127 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 128 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
# 129 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	closemessage
# 130 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanWest
# 131 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCWest
# 132 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 133 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 134 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 135 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanEast::
# 136 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerEast
# 137 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 138 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 139 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 140 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
# 141 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	closemessage
# 142 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCEast
# 143 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 144 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 145 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 146 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanEnters:
# 147 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_down
# 148 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_down
# 149 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 150 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 151 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 152 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerNorth:
# 153 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 154 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 155 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_down
# 156 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_down
# 157 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 158 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 159 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 160 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCNorth:
# 161 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 162 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 163 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 164 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 165 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 166 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 167 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 168 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 169 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 170 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 171 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanNorth:
# 172 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 173 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 174 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 175 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 176 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 177 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 178 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 179 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 180 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 181 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerSouth:
# 182 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 183 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 184 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 185 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 186 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 187 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCSouth:
# 188 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 189 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 190 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 191 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 192 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 193 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 194 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 195 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 196 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanSouth:
# 197 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 198 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 199 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 200 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 201 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 202 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 203 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 204 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerWest:
# 205 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 206 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 207 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_down
# 208 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 209 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 210 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 211 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCWest:
# 212 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 213 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 214 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 215 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 216 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 217 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 218 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 219 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 220 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 221 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 222 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanWest:
# 223 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_8
# 224 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 225 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 226 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 227 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 228 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 229 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 230 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 231 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerEast:
# 232 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 233 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 234 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 235 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 236 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 237 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_down
# 238 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 239 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 240 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCEast:
# 241 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 242 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 243 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 244 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 245 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 246 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 247 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanEast:
# 248 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 249 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 250 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 251 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 252 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 253 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_PC::
# 254 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	lockall
# 255 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	checkplayergender
# 256 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_BrendansHouse_2F_EventScript_CheckPlayersPC
# 257 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, LittlerootTown_BrendansHouse_2F_EventScript_CheckRivalsPC
# 258 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 259 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 260 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_CheckPlayersPC::
# 261 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_0x8004, PC_LOCATION_BRENDANS_HOUSE
# 262 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	special DoPCTurnOnEffect
# 263 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playse SE_PC_ON
# 264 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox gText_PlayerHouseBootPC, MSGBOX_DEFAULT
# 265 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	special BedroomPC
# 266 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitstate
# 267 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	releaseall
# 268 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 269 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 270 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_TurnOffPlayerPC::
# 271 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_0x8004, PC_LOCATION_BRENDANS_HOUSE
# 272 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playse SE_PC_OFF
# 273 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	special DoPCTurnOffEffect
# 274 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	releaseall
# 275 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 276 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 277 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_CheckRivalsPC::
# 278 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox gText_PokemonTrainerSchoolEmail, MSGBOX_DEFAULT
# 279 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	releaseall
# 280 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 281 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 282 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_EventScript_Notebook::
# 283 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	lock
# 284 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	faceplayer
# 285 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookAskRead, MSGBOX_YESNO
# 286 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	compare VAR_RESULT, YES
# 287 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq PlayersHouse_2F_EventScript_ReadNotebook
# 288 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookMaybeLater, MSGBOX_DEFAULT
# 289 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	release
# 290 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 291 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 292 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_EventScript_ReadNotebook::
# 293 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 1. AEGISLASH - The Beginning
# 294 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AEGISLASH, 10, 3
# 295 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory1, MSGBOX_DEFAULT
# 296 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 297 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	
# 298 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 2. ALOMOMOLA - The Conflict
# 299 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_ALOMOMOLA, 10, 3
# 300 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory2, MSGBOX_DEFAULT
# 301 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 302 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 303 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 3. AVALUGG - Great Battle
# 304 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AVALUGG, 10, 3
# 305 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playse SE_M_SURF
# 306 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playse SE_M_THUNDERBOLT
# 307 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory3, MSGBOX_DEFAULT
# 308 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 309 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	
# 310 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 4. AMAURA - Tsunami
# 311 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AMAURA, 10, 3
# 312 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory4, MSGBOX_DEFAULT
# 313 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 314 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 315 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 5. AROMATISSE - Volcano
# 316 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AROMATISSE, 10, 3
# 317 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory5, MSGBOX_DEFAULT
# 318 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 319 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 320 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 6. ARROKUDA - Wasteland
# 321 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_ARROKUDA, 10, 3
# 322 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory6, MSGBOX_DEFAULT
# 323 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 324 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 325 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 7. AUDINO - Ocean Storms
# 326 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AUDINO, 10, 3
# 327 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory7, MSGBOX_DEFAULT
# 328 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 329 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 330 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 8. AURORUS - Survivor Camps
# 331 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AURORUS, 10, 3
# 332 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory8, MSGBOX_DEFAULT
# 333 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 334 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 335 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 9. AMOONGUSS - Hope Fades
# 336 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AMOONGUSS, 10, 3
# 337 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory9, MSGBOX_DEFAULT
# 338 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 339 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	
# 340 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 10. APPLIN - Legend Appears
# 341 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_APPLIN, 10, 3
# 342 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory10, MSGBOX_DEFAULT
# 343 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 344 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	
# 345 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 11. APPLETUN - Sky Guardian
# 346 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_APPLETUN, 10, 3
# 347 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory11, MSGBOX_DEFAULT
# 348 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 349 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 350 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 12. AXEW - Peace Restored
# 351 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AXEW, 10, 3
# 352 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory12, MSGBOX_DEFAULT
# 353 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 354 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	
# 355 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 13. ARBOLIVA - World Today
# 356 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_ARBOLIVA, 10, 3
# 357 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory13, MSGBOX_DEFAULT
# 358 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 359 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 360 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// Final message
# 361 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookFinished, MSGBOX_DEFAULT
# 362 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	release
# 363 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 364 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 365 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_EventScript_GameCube::
# 366 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_ItsAGameCube, MSGBOX_SIGN
# 367 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 368 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 369 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_ClockIsStopped:
# 370 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "The clock is stopped…\p"
# 371 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Better set it and start it!$"
# 372 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 373 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_HowDoYouLikeYourRoom:
# 374 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "MOM: {PLAYER}, how do you like your\n"
# 375 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "new room?\p"
# 376 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Good! Everything's put away neatly!\p"
# 377 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "They finished moving everything in\n"
# 378 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "downstairs, too.\p"
# 379 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "POKéMON movers are so convenient!\p"
# 380 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Oh, you should make sure that\n"
# 381 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "everything's all there on your desk.$"
# 382 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 383 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookAskRead:
# 384 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "A notebook with ancient drawings\nand writings.\p"
# 385 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Would you like to read it?$"
# 386 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 387 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookMaybeLater:
# 388 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "You leave the notebook for later.$"
# 389 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 390 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory1:
# 391 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 1: This was the beginning\nof it all…$"
# 392 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 393 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory2:
# 394 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 2: Then the great conflict\nstarted…$"
# 395 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 396 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory3:
# 397 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 3: The epic battle between land\nand sea shook HOENN…$"
# 398 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 399 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory4:
# 400 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 4: Massive tsunami devastated\nthe coastal regions…$"
# 401 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 402 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory5:
# 403 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 5: Volcanoes erupted across\nthe land…$"
# 404 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 405 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory6:
# 406 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 6: The land became barren…$"
# 407 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 408 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory7:
# 409 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 7: The oceans raged with\nunending storms…$"
# 410 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 411 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory8:
# 412 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 8: Survivors gathered in\ncamps…$"
# 413 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 414 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory9:
# 415 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 9: Hope began to fade…$"
# 416 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 417 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory10:
# 418 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 10: But then a legend\nappeared…$"
# 419 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 420 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory11:
# 421 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 11: The sky guardian descended\nfrom above…$"
# 422 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 423 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory12:
# 424 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 12: Peace was restored,\nbut at a cost…$"
# 425 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 426 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory13:
# 427 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 13: This is how our world\nbecame what it is today…$"
# 428 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 429 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookFinished:
# 430 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "You close the notebook, filled with\nwonder about HOENN's ancient past.$"
# 431 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 432 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
Common_Text_LookCloserAtMap:
# 433 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "{PLAYER} took a closer look at the\n"
# 434 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "HOENN region map.$"
# 435 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 436 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_ItsAGameCube:
# 437 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "It's a Nintendo GameCube.\p"
# 438 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "A Game Boy Advance is connected to\n"
# 439 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "serve as the Controller.$"
