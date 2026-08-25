# 1 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"

# 2 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
EverGrandeCity_SidneysRoom_MapScripts::
# 3 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	map_script MAP_SCRIPT_ON_LOAD, EverGrandeCity_SidneysRoom_OnLoad
# 4 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, EverGrandeCity_SidneysRoom_OnWarp
# 5 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, EverGrandeCity_SidneysRoom_OnTransition
# 6 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, EverGrandeCity_SidneysRoom_OnFrame
# 7 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.byte 0
# 8 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"

# 9 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
EverGrandeCity_SidneysRoom_OnTransition:
# 10 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	setflag FLAG_MET_SCOTT_IN_EVERGRANDE
# 11 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	setflag FLAG_HIDE_EVER_GRANDE_POKEMON_CENTER_1F_SCOTT
# 12 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	end
# 13 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"

# 14 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
EverGrandeCity_SidneysRoom_OnLoad:
# 15 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	call_if_set FLAG_DEFEATED_ELITE_4_SIDNEY, EverGrandeCity_SidneysRoom_EventScript_ResetAdvanceToNextRoom
# 16 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	call_if_eq VAR_ELITE_4_STATE, 1, EverGrandeCity_SidneysRoom_EventScript_CloseDoor
# 17 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	end
# 18 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"

# 19 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
EverGrandeCity_SidneysRoom_EventScript_ResetAdvanceToNextRoom::
# 20 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	call PokemonLeague_EliteFour_EventScript_ResetAdvanceToNextRoom
# 21 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	return
# 22 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"

# 23 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
EverGrandeCity_SidneysRoom_EventScript_CloseDoor::
# 24 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	call PokemonLeague_EliteFour_EventScript_CloseDoor
# 25 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	return
# 26 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"

# 27 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
EverGrandeCity_SidneysRoom_OnWarp:
# 28 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	map_script_2 VAR_TEMP_1, 0, EverGrandeCity_SidneysRoom_EventScript_PlayerTurnNorth
# 29 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.2byte 0
# 30 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"

# 31 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
EverGrandeCity_SidneysRoom_EventScript_PlayerTurnNorth::
# 32 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_NORTH
# 33 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	end
# 34 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"

# 35 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
EverGrandeCity_SidneysRoom_OnFrame:
# 36 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	map_script_2 VAR_ELITE_4_STATE, 0, EverGrandeCity_SidneysRoom_EventScript_WalkInCloseDoor
# 37 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.2byte 0
# 38 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"

# 39 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
EverGrandeCity_SidneysRoom_EventScript_WalkInCloseDoor::
# 40 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	lockall
# 41 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	call PokemonLeague_EliteFour_EventScript_WalkInCloseDoor
# 42 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	setvar VAR_ELITE_4_STATE, 1
# 43 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	releaseall
# 44 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	end
# 45 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"

# 46 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
EverGrandeCity_SidneysRoom_EventScript_Sidney::
# 47 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	lock
# 48 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	faceplayer
# 49 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	clearflag FLAG_PARTY_MENU_PC_ACCESS 
# 50 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	goto_if_set FLAG_DEFEATED_ELITE_4_SIDNEY, EverGrandeCity_SidneysRoom_EventScript_PostBattleSpeech
# 51 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	playbgm MUS_ENCOUNTER_ELITE_FOUR, FALSE
# 52 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	createfieldmugshot MUGSHOT_TSUBAKI, EMOTE_NORMAL
# 53 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	msgbox EverGrandeCity_SidneysRoom_Text_IntroSpeech, MSGBOX_DEFAULT
# 54 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	removefieldmugshot
# 55 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	getdifficulty VAR_RESULT
# 56 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	goto_if_eq VAR_RESULT, 1, EverGrandeCity_SidneysRoom_EventScript_TsubakiHard
# 57 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	trainerbattle_no_intro TRAINER_SIDNEY, EverGrandeCity_SidneysRoom_Text_Defeat
# 58 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	goto EverGrandeCity_SidneysRoom_EventScript_Defeated
# 59 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	end
# 60 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"

# 61 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
EverGrandeCity_SidneysRoom_EventScript_TsubakiHard::
# 62 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	random 2
# 63 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	goto_if_eq VAR_RESULT, 0, EverGrandeCity_SidneysRoom_EventScript_TsubakiHardSingles
# 64 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	trainerbattle_no_intro TRAINER_TSUBAKI_HARD_DOUBLES, EverGrandeCity_SidneysRoom_Text_Defeat
# 65 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	goto EverGrandeCity_SidneysRoom_EventScript_Defeated
# 66 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"

# 67 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
EverGrandeCity_SidneysRoom_EventScript_TsubakiHardSingles::
# 68 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	trainerbattle_no_intro TRAINER_TSUBAKI_HARD_SINGLES, EverGrandeCity_SidneysRoom_Text_Defeat
# 69 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	goto EverGrandeCity_SidneysRoom_EventScript_Defeated
# 70 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"

# 71 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
EverGrandeCity_SidneysRoom_EventScript_PostBattleSpeech::
# 72 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	createfieldmugshot MUGSHOT_TSUBAKI, EMOTE_NORMAL
# 73 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	msgbox EverGrandeCity_SidneysRoom_Text_PostBattleSpeech, MSGBOX_DEFAULT
# 74 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	removefieldmugshot
# 75 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	release
# 76 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	end
# 77 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"

# 78 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
EverGrandeCity_SidneysRoom_EventScript_Defeated::
# 79 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	setflag FLAG_DEFEATED_ELITE_4_SIDNEY
# 80 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	call PokemonLeague_EliteFour_SetAdvanceToNextRoomMetatiles
# 81 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	createfieldmugshot MUGSHOT_TSUBAKI, EMOTE_NORMAL
# 82 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	msgbox EverGrandeCity_SidneysRoom_Text_PostBattleSpeech, MSGBOX_DEFAULT
# 83 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	removefieldmugshot
# 84 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	release
# 85 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	end
# 86 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"

# 87 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
EverGrandeCity_SidneysRoom_Text_IntroSpeech:
# 88 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "TSUBAKI: ...So the one who sensed me\n"
# 89 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "in the grove has reached this peak.\p"
# 90 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "I am TSUBAKI, no master, no pupil.\n"
# 91 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "Simply a blade that moves in shadow.\p"
# 92 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "Across Hoenn, I've watched from dark\n"
# 93 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "corners, unseen, unheard...\p"
# 94 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "Now, before the LEAGUE, I step into\n"
# 95 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "the light-just this once.\p"
# 96 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "Can you strike one who lives in\n"
# 97 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "shadows? Come, let's find out.$"
# 98 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"

# 99 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
EverGrandeCity_SidneysRoom_Text_Defeat:
# 100 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "TSUBAKI: Heh... My shadow...\n"
# 101 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "couldn't hide from your light...$"
# 102 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"

# 103 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
EverGrandeCity_SidneysRoom_Text_PostBattleSpeech:
# 104 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "TSUBAKI: You saw through every feint.\n"
# 105 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "Every flicker. Every silence.\p"
# 106 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "Perhaps you too walk between worlds\n"
# 107 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "light and shadow, seen and unseen.\p"
# 108 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "Go now. The next room waits.\n"
# 109 "data/maps/EverGrandeCity_SidneysRoom/scripts.pory"
	.string "And I... return to where I belong.$"
