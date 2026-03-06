VerdanturfTown_PokemonCenter_1F_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, VerdanturfTown_PokemonCenter_1F_OnTransition
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
	.byte 0

VerdanturfTown_PokemonCenter_1F_OnTransition:
	setrespawn HEAL_LOCATION_VERDANTURF_TOWN
	call Common_EventScript_UpdateBrineyLocation
	end

VerdanturfTown_PokemonCenter_1F_EventScript_Nurse::
	setvar VAR_0x800B, LOCALID_VERDANTURF_NURSE
	call Common_EventScript_PkmnCenterNurse
	waitmessage
	waitbuttonpress
	release
	end

VerdanturfTown_PokemonCenter_1F_EventScript_Gentleman::
	msgbox VerdanturfTown_PokemonCenter_1F_Text_FaithInYourPokemon, MSGBOX_NPC
	end

VerdanturfTown_PokemonCenter_1F_EventScript_ExpertM::
	msgbox VerdanturfTown_PokemonCenter_1F_Text_VisitForBattleTent, MSGBOX_NPC
	end

VerdanturfTown_PokemonCenter_1F_Text_FaithInYourPokemon:
	.string "My grandfather always said:\n"
	.string "'Trust your POKéMON more than yourself.'\p"
	.string "I thought I understood.\n"
	.string "Until last week.\p"
	.string "My MANECTRIC woke me up at 3am.\n"
	.string "Dragged me outside. Just stood there\l"
	.string "staring at the sky. Trembling.\p"
	.string "Nothing there. But he knew something.\n"
	.string "He was warning me about... what?\p"
	.string "Faith isn't blind anymore.\n"
	.string "It's survival...$"

VerdanturfTown_PokemonCenter_1F_Text_VisitForBattleTent:
	.string "You ever feel like you're living in\n"
	.string "a world that's already ended?\p"
	.string "The BATTLE TENT is still open.\n"
	.string "People still fight. Still cheer.\p"
	.string "But sometimes I catch them staring\n"
	.string "off into nothing. Mid-match.\p"
	.string "Like everyone's waiting for the other\n"
	.string "shoe to drop. Including me.$"

