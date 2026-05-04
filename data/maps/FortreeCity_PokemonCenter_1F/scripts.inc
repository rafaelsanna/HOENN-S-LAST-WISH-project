# 1 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"

# 2 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
FortreeCity_PokemonCenter_1F_MapScripts::
# 3 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, FortreeCity_PokemonCenter_1F_OnTransition
# 4 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
# 5 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.byte 0
# 6 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"

# 7 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
FortreeCity_PokemonCenter_1F_OnTransition:
# 8 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	setrespawn HEAL_LOCATION_FORTREE_CITY
# 9 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	end
# 10 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"

# 11 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
FortreeCity_PokemonCenter_1F_EventScript_Nurse::
# 12 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	setvar VAR_0x800B, LOCALID_FORTREE_NURSE
# 13 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_PkmnCenterNurse
# 14 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	waitmessage
# 15 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	waitbuttonpress
# 16 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	release
# 17 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	end
# 18 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"

# 19 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
FortreeCity_PokemonCenter_1F_EventScript_Gentleman::
# 20 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	msgbox FortreeCity_PokemonCenter_1F_Text_GoToSafariZone, MSGBOX_NPC
# 21 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	end
# 22 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"

# 23 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
FortreeCity_PokemonCenter_1F_EventScript_Man::
# 24 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	msgbox FortreeCity_PokemonCenter_1F_Text_RecordCornerIsNeat, MSGBOX_NPC
# 25 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	end
# 26 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"

# 27 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
FortreeCity_PokemonCenter_1F_EventScript_Boy::
# 28 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	msgbox FortreeCity_PokemonCenter_1F_Text_DoYouKnowAboutPokenav, MSGBOX_NPC
# 29 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	end
# 30 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"

# 31 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
FortreeCity_PokemonCenter_1F_Text_GoToSafariZone:
# 32 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "They say the trees here have grown\n"
# 33 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "for three thousand years.\p"
# 34 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "Roots so deep they touch something\n"
# 35 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "ancient. Something sleeping.\p"
# 36 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "Lately, the canopy whispers.\n"
# 37 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "Not wind. Voices. Old voices.\p"
# 38 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "The elder says the trees remember\n"
# 39 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "the last time the comet came.\p"
# 40 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "And they're trying to warn us.$"
# 41 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"

# 42 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
FortreeCity_PokemonCenter_1F_Text_RecordCornerIsNeat:
# 43 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "My grandfather built this house\n"
# 44 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "with his own hands. Fifty years ago.\p"
# 45 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "Last week, I found old carvings\n"
# 46 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "hidden beneath the floorboards.\p"
# 47 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "Symbols I've never seen.\n"
# 48 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "Dates that haven't happened yet.\p"
# 49 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "He knew something. They all did.$"
# 50 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	
# 51 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
FortreeCity_PokemonCenter_1F_Text_DoYouKnowAboutPokenav:
# 52 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "A POKéNAV? From Devon?\n"
# 53 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "They've been quiet lately.\p"
# 54 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "Heard their satellites pick up\n"
# 55 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "signals from empty frequencies.\p"
# 56 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "Voices where there should be silence.\n"
# 57 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "Coordinates that lead to nowhere.\p"
# 58 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "Technology sees what we can't.\n"
# 59 "data/maps/FortreeCity_PokemonCenter_1F/scripts.pory"
	.string "Question is... should it?$"
