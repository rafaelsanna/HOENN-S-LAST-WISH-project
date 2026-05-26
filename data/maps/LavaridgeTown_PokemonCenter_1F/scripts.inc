# 1 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"

# 2 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
LavaridgeTown_PokemonCenter_1F_MapScripts::
# 3 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, LavaridgeTown_PokemonCenter_1F_OnTransition
# 4 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
# 5 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.byte 0
# 6 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"

# 7 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
LavaridgeTown_PokemonCenter_1F_OnTransition:
# 8 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	setrespawn HEAL_LOCATION_LAVARIDGE_TOWN
# 9 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_UpdateBrineyLocation
# 10 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	end
# 11 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"

# 12 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
LavaridgeTown_PokemonCenter_1F_EventScript_Nurse::
# 13 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	setvar VAR_0x800B, LOCALID_LAVARIDGE_NURSE
# 14 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_PkmnCenterNurse
# 15 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	waitmessage
# 16 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	waitbuttonpress
# 17 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	release
# 18 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	end
# 19 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"

# 20 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
LavaridgeTown_PokemonCenter_1F_EventScript_Youngster::
# 21 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	msgbox LavaridgeTown_PokemonCenter_1F_Text_HotSpringCanInvigorate, MSGBOX_NPC
# 22 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	end
# 23 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"

# 24 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
LavaridgeTown_PokemonCenter_1F_EventScript_Woman::
# 25 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	msgbox LavaridgeTown_PokemonCenter_1F_Text_TrainersPokemonSpendTimeTogether, MSGBOX_NPC
# 26 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	end
# 27 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"

# 28 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
LavaridgeTown_PokemonCenter_1F_EventScript_Gentleman::
# 29 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	msgbox LavaridgeTown_PokemonCenter_1F_Text_TrainersShouldRestToo, MSGBOX_NPC
# 30 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	end
# 31 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"

# 32 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
LavaridgeTown_PokemonCenter_1F_Text_TrainersPokemonSpendTimeTogether:
# 33 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "Something changed after the comet.\n"
# 34 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "My POKéMON look at me differently now.\p"
# 35 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "Like they understand more than they\n"
# 36 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "did before. Deeper. It's unsettling.\p"
# 37 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "Maybe we never really knew each other\n"
# 38 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "until that night.$"
# 39 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"

# 40 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
LavaridgeTown_PokemonCenter_1F_Text_HotSpringCanInvigorate:
# 41 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "The springs have been hotter lately.\n"
# 42 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "Much hotter than normal years.\p"
# 43 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "Old folks say the last time they\n"
# 44 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "heated up like this was eighty years ago.\p"
# 45 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "Right before the great eruption at\n"
# 46 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "MT. CHIMNEY. Makes you think, doesn't it?$"
# 47 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"

# 48 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
LavaridgeTown_PokemonCenter_1F_Text_TrainersShouldRestToo:
# 49 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "Hohoho! You look exhausted, kid.\n"
# 50 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "Those bags under your eyes...\p"
# 51 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "The springs are just through that door.\n"
# 52 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "Go soak. Let the heat burn away\l"
# 53 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "whatever's keeping you awake at night.\p"
# 54 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "Trust me. These waters have cured\n"
# 55 "data/maps/LavaridgeTown_PokemonCenter_1F/scripts.pory"
	.string "worse than sleeplessness.$"
