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
	.string "{PLAYER}: What a weird dream...\p"
# 25 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Was that JIRACHI and CELEBI?\n"
# 26 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Maybe it wasn't a dream...\l"
# 27 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Maybe it really happened...$"
# 28 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 29 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_OnTransition:
# 30 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_lt VAR_LITTLEROOT_RIVAL_STATE, 2, LittlerootTown_BrendansHouse_2F_EventScript_CheckSetReadyToMeetBrendan
# 31 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_ge VAR_LITTLEROOT_RIVAL_STATE, 3, LittlerootTown_BrendansHouse_2F_EventScript_CheckShouldUpdateBrendanPos
# 32 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 4, PlayersHouse_2F_EventScript_BlockStairsUntilClockIsSet
# 33 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call SecretBase_EventScript_SetDecorationFlags
# 34 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_SECRET_BASE_INITIALIZED, 0
# 35 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 36 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 37 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_CheckShouldUpdateBrendanPos::
# 38 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_set FLAG_MET_RIVAL_LILYCOVE, LittlerootTown_BrendansHouse_2F_EventScript_TryUpdateBrendanPos
# 39 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_ge VAR_BIRCH_LAB_STATE, 2, LittlerootTown_BrendansHouse_2F_EventScript_Ret
# 40 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto LittlerootTown_BrendansHouse_2F_EventScript_TryUpdateBrendanPos
# 41 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 42 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_TryUpdateBrendanPos::
# 43 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 44 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 45 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_Ret::
# 46 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 47 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 48 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_CheckSetReadyToMeetBrendan::
# 49 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	checkplayergender
# 50 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, LittlerootTown_BrendansHouse_2F_EventScript_SetReadyToMeetBrendan
# 51 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 52 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 53 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_SetReadyToMeetBrendan::
# 54 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_RIVAL_STATE, 2
# 55 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 56 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 57 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_OnWarp:
# 58 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	map_script_2 VAR_SECRET_BASE_INITIALIZED, 0, LittlerootTown_BrendansHouse_2F_EventScript_CheckInitDecor
# 59 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.2byte 0
# 60 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 61 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_CheckInitDecor::
# 62 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	checkplayergender
# 63 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, SecretBase_EventScript_InitDecorations
# 64 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 65 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 66 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_RivalsPokeBall::
# 67 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	lockall
# 68 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq VAR_LITTLEROOT_RIVAL_STATE, 2, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendan
# 69 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_ItsRivalsPokeBall, MSGBOX_DEFAULT
# 70 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	releaseall
# 71 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 72 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 73 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendan::
# 74 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay 10
# 75 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	addobject LOCALID_RIVALS_HOUSE_2F_RIVAL
# 76 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanEnters
# 77 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 78 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playse SE_PIN
# 79 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, Common_Movement_ExclamationMark
# 80 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 81 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, Common_Movement_Delay48
# 82 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 83 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay 10
# 84 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 85 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanNorth
# 86 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanSouth
# 87 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanWest
# 88 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanEast
# 89 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_RIVAL_STATE, 3
# 90 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
# 91 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_BEDROOM
# 92 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 1
# 93 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	savebgm MUS_DUMMY
# 94 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	fadedefaultbgm
# 95 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	releaseall
# 96 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 97 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 98 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanNorth::
# 99 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerNorth
# 100 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 101 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 102 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 103 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
# 104 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	closemessage
# 105 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanNorth
# 106 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCNorth
# 107 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 108 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 109 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 110 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanSouth::
# 111 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerSouth
# 112 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 113 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 114 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 115 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
# 116 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	closemessage
# 117 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanSouth
# 118 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCSouth
# 119 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 120 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 121 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 122 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanWest::
# 123 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerWest
# 124 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 125 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 126 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 127 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
# 128 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	closemessage
# 129 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanWest
# 130 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCWest
# 131 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 132 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 133 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 134 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanEast::
# 135 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerEast
# 136 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 137 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 138 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 139 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
# 140 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	closemessage
# 141 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCEast
# 142 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitmovement 0
# 143 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	return
# 144 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 145 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanEnters:
# 146 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_down
# 147 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_down
# 148 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 149 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 150 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 151 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerNorth:
# 152 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 153 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 154 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_down
# 155 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_down
# 156 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 157 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 158 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 159 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCNorth:
# 160 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 161 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 162 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 163 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 164 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 165 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 166 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 167 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 168 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 169 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 170 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanNorth:
# 171 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 172 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 173 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 174 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 175 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 176 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 177 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 178 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 179 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 180 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerSouth:
# 181 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 182 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 183 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 184 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 185 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 186 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCSouth:
# 187 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 188 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 189 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 190 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 191 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 192 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 193 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 194 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 195 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanSouth:
# 196 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 197 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 198 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 199 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 200 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 201 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 202 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 203 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerWest:
# 204 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 205 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 206 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_down
# 207 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 208 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 209 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 210 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCWest:
# 211 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 212 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 213 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 214 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 215 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 216 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 217 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 218 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 219 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 220 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 221 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanWest:
# 222 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_8
# 223 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 224 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 225 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 226 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 227 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 228 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 229 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 230 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerEast:
# 231 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 232 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 233 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 234 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 235 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 236 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_down
# 237 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 238 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 239 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCEast:
# 240 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_up
# 241 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 242 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_left
# 243 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_up
# 244 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 245 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 246 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanEast:
# 247 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 248 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	delay_16
# 249 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	walk_in_place_faster_left
# 250 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	step_end
# 251 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 252 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_PC::
# 253 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	lockall
# 254 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	checkplayergender
# 255 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_BrendansHouse_2F_EventScript_CheckPlayersPC
# 256 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, LittlerootTown_BrendansHouse_2F_EventScript_CheckRivalsPC
# 257 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 258 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 259 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_CheckPlayersPC::
# 260 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_0x8004, PC_LOCATION_BRENDANS_HOUSE
# 261 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	special DoPCTurnOnEffect
# 262 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playse SE_PC_ON
# 263 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox gText_PlayerHouseBootPC, MSGBOX_DEFAULT
# 264 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	special BedroomPC
# 265 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	waitstate
# 266 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	releaseall
# 267 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 268 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 269 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_TurnOffPlayerPC::
# 270 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	setvar VAR_0x8004, PC_LOCATION_BRENDANS_HOUSE
# 271 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playse SE_PC_OFF
# 272 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	special DoPCTurnOffEffect
# 273 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	releaseall
# 274 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 275 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 276 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
LittlerootTown_BrendansHouse_2F_EventScript_CheckRivalsPC::
# 277 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox gText_PokemonTrainerSchoolEmail, MSGBOX_DEFAULT
# 278 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	releaseall
# 279 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 280 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 281 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_EventScript_Notebook::
# 282 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	lock
# 283 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	faceplayer
# 284 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookAskRead, MSGBOX_YESNO
# 285 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	compare VAR_RESULT, YES
# 286 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	goto_if_eq PlayersHouse_2F_EventScript_ReadNotebook
# 287 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookMaybeLater, MSGBOX_DEFAULT
# 288 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	release
# 289 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 290 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 291 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_EventScript_ReadNotebook::
# 292 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 1. AEGISLASH - The Beginning
# 293 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AEGISLASH, 10, 3
# 294 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory1, MSGBOX_DEFAULT
# 295 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 296 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	
# 297 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 2. ALOMOMOLA - The Conflict
# 298 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_ALOMOMOLA, 10, 3
# 299 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory2, MSGBOX_DEFAULT
# 300 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 301 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 302 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 3. AVALUGG - Great Battle
# 303 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AVALUGG, 10, 3
# 304 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playse SE_M_SURF
# 305 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	playse SE_M_THUNDERBOLT
# 306 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory3, MSGBOX_DEFAULT
# 307 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 308 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	
# 309 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 4. AMAURA - Tsunami
# 310 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AMAURA, 10, 3
# 311 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory4, MSGBOX_DEFAULT
# 312 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 313 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 314 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 5. AROMATISSE - Volcano
# 315 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AROMATISSE, 10, 3
# 316 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory5, MSGBOX_DEFAULT
# 317 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 318 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 319 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 6. ARROKUDA - Wasteland
# 320 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_ARROKUDA, 10, 3
# 321 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory6, MSGBOX_DEFAULT
# 322 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 323 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 324 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 7. AUDINO - Ocean Storms
# 325 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AUDINO, 10, 3
# 326 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory7, MSGBOX_DEFAULT
# 327 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 328 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 329 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 8. AURORUS - Survivor Camps
# 330 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AURORUS, 10, 3
# 331 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory8, MSGBOX_DEFAULT
# 332 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 333 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 334 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 9. AMOONGUSS - Hope Fades
# 335 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AMOONGUSS, 10, 3
# 336 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory9, MSGBOX_DEFAULT
# 337 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 338 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	
# 339 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 10. APPLIN - Legend Appears
# 340 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_APPLIN, 10, 3
# 341 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory10, MSGBOX_DEFAULT
# 342 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 343 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	
# 344 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 11. APPLETUN - Sky Guardian
# 345 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_APPLETUN, 10, 3
# 346 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory11, MSGBOX_DEFAULT
# 347 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 348 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 349 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 12. AXEW - Peace Restored
# 350 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_AXEW, 10, 3
# 351 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory12, MSGBOX_DEFAULT
# 352 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 353 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	
# 354 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// 13. ARBOLIVA - World Today
# 355 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	showmonpic SPECIES_ARBOLIVA, 10, 3
# 356 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookStory13, MSGBOX_DEFAULT
# 357 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	hidemonpic
# 358 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 359 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	// Final message
# 360 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_NotebookFinished, MSGBOX_DEFAULT
# 361 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	release
# 362 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 363 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 364 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_EventScript_GameCube::
# 365 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	msgbox PlayersHouse_2F_Text_ItsAGameCube, MSGBOX_SIGN
# 366 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	end
# 367 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 368 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_ClockIsStopped:
# 369 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "The clock is stopped…\p"
# 370 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Better set it and start it!$"
# 371 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 372 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_HowDoYouLikeYourRoom:
# 373 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "MOM: {PLAYER}, how do you like your\n"
# 374 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "new room?\p"
# 375 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Good! Everything's put away neatly!\p"
# 376 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "They finished moving everything in\n"
# 377 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "downstairs, too.\p"
# 378 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "POKéMON movers are so convenient!\p"
# 379 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Oh, you should make sure that\n"
# 380 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "everything's all there on your desk.$"
# 381 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 382 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookAskRead:
# 383 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "A notebook with ancient drawings\nand writings.\p"
# 384 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Would you like to read it?$"
# 385 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 386 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookMaybeLater:
# 387 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "You leave the notebook for later.$"
# 388 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 389 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory1:
# 390 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 1: This was the beginning\nof it all...$"
# 391 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 392 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory2:
# 393 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 2: Then the great conflict\nstarted...$"
# 394 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 395 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory3:
# 396 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 3: The epic battle between land\nand sea shook Hoenn...$"
# 397 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 398 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory4:
# 399 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 4: Massive tsunamis devastated\nthe coastal regions...$"
# 400 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 401 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory5:
# 402 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 5: Volcanoes erupted across\nthe land...$"
# 403 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 404 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory6:
# 405 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 6: The land became a barren\nwasteland...$"
# 406 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 407 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory7:
# 408 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 7: The oceans raged with\nunending storms...$"
# 409 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 410 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory8:
# 411 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 8: Survivors gathered in\ncamps...$"
# 412 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 413 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory9:
# 414 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 9: Hope began to fade...$"
# 415 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 416 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory10:
# 417 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 10: But then a legend\nappeared...$"
# 418 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 419 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory11:
# 420 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 11: The sky guardian descended\nfrom above...$"
# 421 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 422 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory12:
# 423 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 12: Peace was restored,\nbut at a cost...$"
# 424 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 425 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookStory13:
# 426 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "Page 13: This is how our world\nbecame what it is today...$"
# 427 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 428 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_NotebookFinished:
# 429 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "You close the notebook, filled with\nwonder about Hoenn's ancient past.$"
# 430 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 431 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
Common_Text_LookCloserAtMap:
# 432 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "{PLAYER} took a closer look at the\n"
# 433 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "HOENN region map.$"
# 434 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"

# 435 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
PlayersHouse_2F_Text_ItsAGameCube:
# 436 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "It's a Nintendo GameCube.\p"
# 437 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "A Game Boy Advance is connected to\n"
# 438 "data/maps/LittlerootTown_BrendansHouse_2F/scripts.pory"
	.string "serve as the Controller.$"
