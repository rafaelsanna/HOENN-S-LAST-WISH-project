# 1 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"

# 2 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
EverGrandeCity_HallOfFame_MapScripts::
# 3 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, EverGrandeCity_HallOfFame_OnFrame
# 4 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, EverGrandeCity_HallOfFame_OnWarp
# 5 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	.byte 0
# 6 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"

# 7 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
EverGrandeCity_HallOfFame_OnWarp:
# 8 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	map_script_2 VAR_TEMP_1, 0, EverGrandeCity_HallOfFame_EventScript_TurnPlayerNorth
# 9 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	.2byte 0
# 10 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"

# 11 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
EverGrandeCity_HallOfFame_EventScript_TurnPlayerNorth::
# 12 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_NORTH
# 13 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	end
# 14 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"

# 15 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
EverGrandeCity_HallOfFame_OnFrame:
# 16 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	map_script_2 VAR_TEMP_1, 0, EverGrandeCity_HallOfFame_EventScript_EnterHallOfFame
# 17 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	.2byte 0
# 18 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"

# 19 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
EverGrandeCity_HallOfFame_EventScript_EnterHallOfFame::
# 20 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	lockall
# 21 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	applymovement LOCALID_HALL_OF_FAME_WALLACE, EverGrandeCity_HallOfFame_Movement_WalkIntoHallOfFame1
# 22 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	applymovement LOCALID_PLAYER, EverGrandeCity_HallOfFame_Movement_WalkIntoHallOfFame1
# 23 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	waitmovement 0
# 24 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	applymovement LOCALID_HALL_OF_FAME_WALLACE, Common_Movement_WalkInPlaceFasterRight
# 25 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 26 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	waitmovement 0
# 27 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 28 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	msgbox EverGrandeCity_HallOfFame_Text_HereWeHonorLeagueChampions, MSGBOX_DEFAULT
# 29 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	removefieldmugshot
# 30 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	closemessage
# 31 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	applymovement LOCALID_HALL_OF_FAME_WALLACE, EverGrandeCity_HallOfFame_Movement_WalkIntoHallOfFame2
# 32 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	applymovement LOCALID_PLAYER, EverGrandeCity_HallOfFame_Movement_WalkIntoHallOfFame2
# 33 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	waitmovement 0
# 34 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	delay 20
# 35 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	applymovement LOCALID_HALL_OF_FAME_WALLACE, Common_Movement_WalkInPlaceFasterRight
# 36 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 37 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	waitmovement 0
# 38 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 39 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	msgbox EverGrandeCity_HallOfFame_Text_LetsRecordYouAndYourPartnersNames, MSGBOX_DEFAULT
# 40 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	removefieldmugshot
# 41 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	closemessage
# 42 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	applymovement LOCALID_HALL_OF_FAME_WALLACE, Common_Movement_WalkInPlaceFasterUp
# 43 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 44 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	waitmovement 0
# 45 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	delay 20
# 46 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	dofieldeffect FLDEFF_HALL_OF_FAME_RECORD
# 47 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	waitfieldeffect FLDEFF_HALL_OF_FAME_RECORD
# 48 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	delay 40
# 49 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	setvar VAR_TEMP_1, 1
# 50 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	call EverGrandeCity_HallOfFame_EventScript_SetGameClearFlags
# 51 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	checkplayergender
# 52 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, EverGrandeCity_HallOfFame_EventScript_GameClearMale
# 53 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, EverGrandeCity_HallOfFame_EventScript_GameClearFemale
# 54 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	end
# 55 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"

# 56 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
EverGrandeCity_HallOfFame_EventScript_GameClearMale::
# 57 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F
# 58 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 24
# 59 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	special GameClear
# 60 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	waitstate
# 61 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	releaseall
# 62 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	end
# 63 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"

# 64 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
EverGrandeCity_HallOfFame_EventScript_GameClearFemale::
# 65 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE_2F
# 66 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 24
# 67 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	special GameClear
# 68 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	waitstate
# 69 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	releaseall
# 70 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	end
# 71 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"

# 72 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
EverGrandeCity_HallOfFame_Movement_WalkIntoHallOfFame1:
# 73 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	walk_up
# 74 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	walk_up
# 75 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	walk_up
# 76 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	walk_up
# 77 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	walk_up
# 78 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	walk_up
# 79 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	step_end
# 80 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"

# 81 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
EverGrandeCity_HallOfFame_Movement_WalkIntoHallOfFame2:
# 82 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	walk_up
# 83 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	walk_up
# 84 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	walk_up
# 85 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	walk_up
# 86 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	walk_up
# 87 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	step_end
# 88 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"

# 89 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
EverGrandeCity_HallOfFame_Text_HereWeHonorLeagueChampions:
# 90 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	.string "WALLACE: This room…\p"
# 91 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	.string "This is where we keep records of\n"
# 92 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	.string "POKéMON that prevailed through\l"
# 93 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	.string "harsh battles.\p"
# 94 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	.string "It is here that the LEAGUE CHAMPIONS\n"
# 95 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	.string "are honored.$"
# 96 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"

# 97 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
EverGrandeCity_HallOfFame_Text_LetsRecordYouAndYourPartnersNames:
# 98 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	.string "WALLACE: Come on, let's record your\n"
# 99 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	.string "name as a TRAINER who triumphed over\l"
# 100 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	.string "the POKéMON LEAGUE, and the names of\l"
# 101 "data/maps/EverGrandeCity_HallOfFame/scripts.pory"
	.string "the partners who battled with you.$"
