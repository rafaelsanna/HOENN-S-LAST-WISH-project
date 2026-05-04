# 1 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"

# 2 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
VerdanturfTown_PokemonCenter_1F_MapScripts::
# 3 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, VerdanturfTown_PokemonCenter_1F_OnTransition
# 4 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
# 5 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.byte 0
# 6 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"

# 7 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
VerdanturfTown_PokemonCenter_1F_OnTransition:
# 8 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	setrespawn HEAL_LOCATION_VERDANTURF_TOWN
# 9 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_UpdateBrineyLocation
# 10 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	end
# 11 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"

# 12 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
VerdanturfTown_PokemonCenter_1F_EventScript_Nurse::
# 13 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	setvar VAR_0x800B, LOCALID_VERDANTURF_NURSE
# 14 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_PkmnCenterNurse
# 15 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	waitmessage
# 16 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	waitbuttonpress
# 17 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	release
# 18 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	end
# 19 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"

# 20 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
VerdanturfTown_PokemonCenter_1F_EventScript_Gentleman::
# 21 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	msgbox VerdanturfTown_PokemonCenter_1F_Text_FaithInYourPokemon, MSGBOX_NPC
# 22 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	end
# 23 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"

# 24 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
VerdanturfTown_PokemonCenter_1F_EventScript_ExpertM::
# 25 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	msgbox VerdanturfTown_PokemonCenter_1F_Text_VisitForBattleTent, MSGBOX_NPC
# 26 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	end
# 27 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"

# 28 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
VerdanturfTown_PokemonCenter_1F_Text_FaithInYourPokemon:
# 29 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "My grandfather always said:\n"
# 30 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "'Trust your POKéMON more than yourself.'\p"
# 31 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "I thought I understood.\n"
# 32 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "Until last week.\p"
# 33 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "My MANECTRIC woke me up at 3am.\n"
# 34 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "Dragged me outside. Just stood there\l"
# 35 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "staring at the sky. Trembling.\p"
# 36 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "Nothing there. But he knew something.\n"
# 37 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "He was warning me about... what?\p"
# 38 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "Faith isn't blind anymore.\n"
# 39 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "It's survival...$"
# 40 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"

# 41 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
VerdanturfTown_PokemonCenter_1F_Text_VisitForBattleTent:
# 42 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "You ever feel like you're living in\n"
# 43 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "a world that's already ended?\p"
# 44 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "The BATTLE TENT is still open.\n"
# 45 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "People still fight. Still cheer.\p"
# 46 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "But sometimes I catch them staring\n"
# 47 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "off into nothing. Mid-match.\p"
# 48 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "Like everyone's waiting for the other\n"
# 49 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "shoe to drop. Including me.$"
