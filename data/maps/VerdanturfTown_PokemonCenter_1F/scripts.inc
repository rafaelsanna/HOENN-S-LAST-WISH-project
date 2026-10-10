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
	.string "'Trust your POKéMON over yourself.'\p"
# 31 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "I thought I understood…\n"
# 32 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "until last week.\p"
# 33 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "My MANECTRIC woke me up at 3am,\n"
# 34 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "dragged me outside and just stood\l"
# 35 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "there staring at the sky, trembling.\p"
# 36 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "Nothing there, but he knew something.$"
# 37 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"

# 38 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
VerdanturfTown_PokemonCenter_1F_Text_VisitForBattleTent:
# 39 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "You ever feel like you're the only\n"
# 40 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "one who hasn't gone crazy?\p"
# 41 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "I tried to tell my grandkids that\n"
# 42 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "the whole town changed overnight.\p"
# 43 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "There used to be a giant BATTLE\n"
# 44 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "TENT here! I'm sure of it!\p"
# 45 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "They just looked at me with pity and\n"
# 46 "data/maps/VerdanturfTown_PokemonCenter_1F/scripts.pory"
	.string "made an appointment with the doctor…$"
