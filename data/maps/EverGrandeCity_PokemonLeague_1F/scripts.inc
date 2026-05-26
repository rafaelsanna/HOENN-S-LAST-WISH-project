# 1 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 2 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_MapScripts::
# 3 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, EverGrandeCity_PokemonLeague_1F_OnTransition
# 4 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
# 5 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.byte 0
# 6 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 7 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_OnTransition:
# 8 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	setrespawn HEAL_LOCATION_EVER_GRANDE_CITY_POKEMON_LEAGUE
# 9 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	setflag FLAG_LANDMARK_POKEMON_LEAGUE
# 10 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	call_if_unset FLAG_ENTERED_ELITE_FOUR, EverGrandeCity_PokemonLeague_1F_EventScript_GuardsBlockDoor
# 11 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	end
# 12 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 13 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_EventScript_GuardsBlockDoor::
# 14 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	setobjectxyperm LOCALID_LEAGUE_GUARD_1, 9, 2
# 15 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	setobjectxyperm LOCALID_LEAGUE_GUARD_2, 10, 2
# 16 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	return
# 17 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 18 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_EventScript_Nurse::
# 19 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	setvar VAR_0x800B, LOCALID_LEAGUE_NURSE
# 20 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	call Common_EventScript_PkmnCenterNurse
# 21 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	setflag FLAG_PARTY_MENU_PC_ACCESS
# 22 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	waitmessage
# 23 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	waitbuttonpress
# 24 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	release
# 25 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	end
# 26 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 27 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_EventScript_Clerk::
# 28 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	lock
# 29 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	faceplayer
# 30 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	message gText_HowMayIServeYou
# 31 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	waitmessage
# 32 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	pokemart EverGrandeCity_PokemonLeague_1F_Pokemart
# 33 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
# 34 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	release
# 35 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	end
# 36 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 37 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.align 2
# 38 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_Pokemart:
# 39 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.2byte ITEM_ULTRA_BALL
# 40 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.2byte ITEM_HYPER_POTION
# 41 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.2byte ITEM_MAX_POTION
# 42 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.2byte ITEM_FULL_RESTORE
# 43 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.2byte ITEM_FULL_HEAL
# 44 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.2byte ITEM_REVIVE
# 45 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.2byte ITEM_MAX_REPEL
# 46 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	pokemartlistend
# 47 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 48 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
@ The door guards only check for FLAG_BADGE06_GET because Winonas badge is the only one that can be skipped
# 49 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
@ Its assumed the player has the remaining badges
# 50 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_EventScript_DoorGuard::
# 51 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	lockall
# 52 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	goto_if_set FLAG_ENTERED_ELITE_FOUR, EverGrandeCity_PokemonLeague_1F_EventScript_GoForth
# 53 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	getplayerxy VAR_TEMP_0, VAR_TEMP_1
# 54 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	call_if_ge VAR_TEMP_0, 11, EverGrandeCity_PokemonLeague_1F_EventScript_PlayerMoveToFrontFromRight
# 55 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	call_if_le VAR_TEMP_0, 8, EverGrandeCity_PokemonLeague_1F_EventScript_PlayerMoveToFrontFromLeft
# 56 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	message EverGrandeCity_PokemonLeague_1F_Text_MustHaveAllGymBadges
# 57 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	waitmessage
# 58 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	delay 120
# 59 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	goto_if_unset FLAG_BADGE06_GET, EverGrandeCity_PokemonLeague_1F_EventScript_NotAllBadges
# 60 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	closemessage
# 61 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	applymovement LOCALID_LEAGUE_GUARD_1, EverGrandeCity_PokemonLeague_1F_Movement_LeftGuardOutOfWay
# 62 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	applymovement LOCALID_LEAGUE_GUARD_2, EverGrandeCity_PokemonLeague_1F_Movement_RightGuardOutOfWay
# 63 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	waitmovement 0
# 64 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	delay 10
# 65 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	playfanfare MUS_OBTAIN_BADGE
# 66 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	message EverGrandeCity_PokemonLeague_1F_Text_GoForth
# 67 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	waitmessage
# 68 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	waitfanfare
# 69 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	closemessage
# 70 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	copyobjectxytoperm LOCALID_LEAGUE_GUARD_1
# 71 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	copyobjectxytoperm LOCALID_LEAGUE_GUARD_2
# 72 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	setflag FLAG_ENTERED_ELITE_FOUR
# 73 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	clearflag FLAG_PARTY_MENU_PC_ACCESS
# 74 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	releaseall
# 75 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	end
# 76 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 77 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_EventScript_PlayerMoveToFrontFromRight::
# 78 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	applymovement LOCALID_PLAYER, EverGrandeCity_PokemonLeague_1F_Movement_MoveToFrontFromRight
# 79 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	waitmovement 0
# 80 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	return
# 81 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 82 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_EventScript_PlayerMoveToFrontFromLeft::
# 83 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	applymovement LOCALID_PLAYER, EverGrandeCity_PokemonLeague_1F_Movement_MoveToFrontFromLeft
# 84 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	waitmovement 0
# 85 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	return
# 86 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 87 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_EventScript_NotAllBadges::
# 88 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	playse SE_FAILURE
# 89 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	msgbox EverGrandeCity_PokemonLeague_1F_Text_HaventObtainedAllBadges, MSGBOX_DEFAULT
# 90 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	releaseall
# 91 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	end
# 92 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 93 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_EventScript_GoForth::
# 94 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FacePlayer
# 95 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	waitmovement 0
# 96 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	msgbox EverGrandeCity_PokemonLeague_1F_Text_GoForth, MSGBOX_DEFAULT
# 97 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	closemessage
# 98 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
# 99 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	waitmovement 0 
# 100 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	releaseall
# 101 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	end
# 102 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 103 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_Movement_MoveToFrontFromRight:
# 104 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	walk_down
# 105 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	walk_left
# 106 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	walk_in_place_faster_up
# 107 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	step_end
# 108 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 109 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_Movement_MoveToFrontFromLeft:
# 110 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	walk_down
# 111 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	walk_right
# 112 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	walk_in_place_faster_up
# 113 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	step_end
# 114 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 115 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_Movement_LeftGuardOutOfWay:
# 116 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	walk_left
# 117 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	walk_in_place_faster_down
# 118 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	step_end
# 119 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 120 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_Movement_RightGuardOutOfWay:
# 121 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	walk_right
# 122 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	walk_in_place_faster_down
# 123 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	step_end
# 124 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 125 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_Text_MustHaveAllGymBadges:
# 126 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.string "Beyond this point, only those TRAINERS\n"
# 127 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.string "who have collected all the GYM BADGES\l"
# 128 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.string "are permitted to enter.\p"
# 129 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.string "TRAINER, let us confirm that you have\n"
# 130 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.string "all the GYM BADGES.$"
# 131 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 132 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_Text_HaventObtainedAllBadges:
# 133 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.string "You haven't obtained all the BADGES.\p"
# 134 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.string "If you're bound for the POKéMON\n"
# 135 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.string "LEAGUE, you must return with them.$"
# 136 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"

# 137 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
EverGrandeCity_PokemonLeague_1F_Text_GoForth:
# 138 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.string "TRAINER! Believe in yourself and your\n"
# 139 "data/maps/EverGrandeCity_PokemonLeague_1F/scripts.pory"
	.string "POKéMON, and go forth!$"
