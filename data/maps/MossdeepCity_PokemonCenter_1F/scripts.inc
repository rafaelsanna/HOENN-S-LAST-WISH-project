# 1 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"

# 2 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
MossdeepCity_PokemonCenter_1F_MapScripts::
# 3 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MossdeepCity_PokemonCenter_1F_OnTransition
# 4 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
# 5 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.byte 0
# 6 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"

# 7 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
MossdeepCity_PokemonCenter_1F_OnTransition:
# 8 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_CITY
# 9 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	end
# 10 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"

# 11 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
MossdeepCity_PokemonCenter_1F_EventScript_Nurse::
# 12 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	setvar VAR_0x800B, LOCALID_MOSSDEEP_NURSE
# 13 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_PkmnCenterNurse
# 14 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	waitmessage
# 15 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	waitbuttonpress
# 16 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	release
# 17 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	end
# 18 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"

# 19 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
MossdeepCity_PokemonCenter_1F_EventScript_Woman::
# 20 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	msgbox MossdeepCity_PokemonCenter_1F_Text_GymLeaderDuoFormidable, MSGBOX_NPC
# 21 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	end
# 22 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"

# 23 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
MossdeepCity_PokemonCenter_1F_EventScript_Girl::
# 24 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	msgbox MossdeepCity_PokemonCenter_1F_Text_AbilitiesMightChangeMoves, MSGBOX_NPC
# 25 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	end
# 26 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"

# 27 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
MossdeepCity_PokemonCenter_1F_Text_GymLeaderDuoFormidable:
# 28 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "When the comet passed... it filled\n"
# 29 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "the entire sky. Overwhelming.\p"
# 30 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "But here? In Mossdeep?\n"
# 31 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "It felt... gentle. Almost welcoming.\p"
# 32 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "Like the city itself exhaled\n"
# 33 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "and the comet exhaled back.\p"
# 34 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "People came from everywhere after.\n"
# 35 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "Refugees. Survivors. They said other\l"
# 36 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "towns felt the weight of it.\p"
# 37 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "Here, we just felt... seen.$"
# 38 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"

# 39 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
MossdeepCity_PokemonCenter_1F_Text_AbilitiesMightChangeMoves:
# 40 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "The space center detected something\n"
# 41 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "that night. A reading they won't share.\p"
# 42 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "But the engineers talk when they drink.\n"
# 43 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "Say the comet wasn't passing by.\p"
# 44 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "It was stopping. Right above us.\n"
# 45 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "Hovering. Watching.\p"
# 46 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "And for those few minutes,\n"
# 47 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "Mossdeep existed somewhere else.\p"
# 48 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "Somewhere safe.\n"
# 49 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "I don't know why we were chosen.\p"
# 50 "data/maps/MossdeepCity_PokemonCenter_1F/scripts.pory"
	.string "But I'm grateful. And terrified.$"
