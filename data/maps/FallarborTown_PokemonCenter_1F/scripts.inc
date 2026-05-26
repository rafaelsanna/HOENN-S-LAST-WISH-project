# 1 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"

# 2 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
FallarborTown_PokemonCenter_1F_MapScripts::
# 3 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, FallarborTown_PokemonCenter_1F_OnTransition
# 4 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
# 5 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.byte 0
# 6 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"

# 7 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
FallarborTown_PokemonCenter_1F_OnTransition:
# 8 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	setrespawn HEAL_LOCATION_FALLARBOR_TOWN
# 9 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_UpdateBrineyLocation
# 10 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	end
# 11 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"

# 12 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
FallarborTown_PokemonCenter_1F_EventScript_Nurse::
# 13 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	setvar VAR_0x800B, LOCALID_FALLARBOR_NURSE
# 14 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_PkmnCenterNurse
# 15 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	waitmessage
# 16 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	waitbuttonpress
# 17 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	release
# 18 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	end
# 19 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"

# 20 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
FallarborTown_PokemonCenter_1F_EventScript_Girl::
# 21 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	msgbox FallarborTown_PokemonCenter_1F_Text_FossilManiacEdgeOfTown, MSGBOX_NPC
# 22 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	end
# 23 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"

# 24 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
FallarborTown_PokemonCenter_1F_EventScript_ExpertM::
# 25 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	msgbox FallarborTown_PokemonCenter_1F_Text_PlantHardyTrees, MSGBOX_NPC
# 26 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	end
# 27 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"

# 28 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
FallarborTown_PokemonCenter_1F_EventScript_Lanette::
# 29 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	lock
# 30 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	faceplayer
# 31 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	msgbox FallarborTown_PokemonCenter_1F_Text_LanetteGreeting, MSGBOX_DEFAULT
# 32 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	closemessage
# 33 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	switch VAR_FACING
# 34 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	case DIR_NORTH, FallarborTown_PokemonCenter_1F_EventScript_LanetteExitNorth
# 35 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	case DIR_WEST, FallarborTown_PokemonCenter_1F_EventScript_LanetteExitWest
# 36 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	end
# 37 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"

# 38 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
FallarborTown_PokemonCenter_1F_EventScript_LanetteExitNorth::
# 39 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	applymovement LOCALID_FALLARBOR_LANETTE, FallarborTown_PokemonCenter_1F_Movement_LanetteExitNorth
# 40 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	waitmovement 0
# 41 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	goto FallarborTown_PokemonCenter_1F_EventScript_LanetteExited
# 42 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	end
# 43 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"

# 44 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
FallarborTown_PokemonCenter_1F_EventScript_LanetteExitWest::
# 45 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	applymovement LOCALID_FALLARBOR_LANETTE, FallarborTown_PokemonCenter_1F_Movement_LanetteExitWest
# 46 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	waitmovement 0
# 47 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	goto FallarborTown_PokemonCenter_1F_EventScript_LanetteExited
# 48 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	end
# 49 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"

# 50 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
FallarborTown_PokemonCenter_1F_EventScript_LanetteExited::
# 51 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	playse SE_SLIDING_DOOR
# 52 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	removeobject LOCALID_FALLARBOR_LANETTE
# 53 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	clearflag FLAG_HIDE_LANETTES_HOUSE_LANETTE
# 54 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	release
# 55 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	end
# 56 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"

# 57 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
FallarborTown_PokemonCenter_1F_Movement_LanetteExitNorth:
# 58 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_right
# 59 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_down
# 60 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_down
# 61 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_left
# 62 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_left
# 63 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_left
# 64 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_left
# 65 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_down
# 66 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_down
# 67 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_down
# 68 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_down
# 69 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	delay_8
# 70 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	step_end
# 71 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"

# 72 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
FallarborTown_PokemonCenter_1F_Movement_LanetteExitWest:
# 73 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_down
# 74 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_down
# 75 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_left
# 76 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_left
# 77 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_left
# 78 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_down
# 79 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_down
# 80 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_down
# 81 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	walk_down
# 82 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	delay_8
# 83 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	step_end
# 84 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"

# 85 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
FallarborTown_PokemonCenter_1F_Text_LanetteGreeting:
# 86 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "Oh, hello.\n"
# 87 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "You are?\p"
# 88 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "Okay, your name's {PLAYER}{KUN}.\n"
# 89 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "I can see that you're a TRAINER.\p"
# 90 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "So that means you use the POKéMON\n"
# 91 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "Storage System I developed.\p"
# 92 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "How I arrived at that conclusion is\n"
# 93 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "a simple deductive process.\p"
# 94 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "You spoke to me because you wanted\n"
# 95 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "to access something on this PC.\p"
# 96 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "Oh, I'm sorry. I'm LANETTE.\p"
# 97 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "Honestly, I'm glad to meet you--it's\n"
# 98 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "great you're using the Storage System.\p"
# 99 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "If you could, please visit me at home.\n"
# 100 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "My house is on ROUTE 114.$"
# 101 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"

# 102 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
FallarborTown_PokemonCenter_1F_Text_FossilManiacEdgeOfTown:
# 103 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "I've been studying fossil records\n"
# 104 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "from across HOENN.\p"
# 105 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "POKéMON today are different from even\n"
# 106 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "a hundred years ago. Subtle changes.\p"
# 107 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "Larger teeth. Different eyes.\n"
# 108 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "Almost like they're adapting to\l"
# 109 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "something we can't see yet.$"
# 110 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"

# 111 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
FallarborTown_PokemonCenter_1F_Text_PlantHardyTrees:
# 112 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "Volcanic ash covers everything.\n"
# 113 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "Chokes the life right out of you.\p"
# 114 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "But give it time. The same earth that\n"
# 115 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "buries will feed.\p"
# 116 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "Nothing grows richer than soil born\n"
# 117 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "from fire and destruction.\p"
# 118 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "The comet, the mountain... maybe\n"
# 119 "data/maps/FallarborTown_PokemonCenter_1F/scripts.pory"
	.string "something beautiful comes after.$"
