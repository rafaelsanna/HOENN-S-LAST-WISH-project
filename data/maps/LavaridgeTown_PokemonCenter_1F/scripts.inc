LavaridgeTown_PokemonCenter_1F_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, LavaridgeTown_PokemonCenter_1F_OnTransition
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
	.byte 0

LavaridgeTown_PokemonCenter_1F_OnTransition:
	setrespawn HEAL_LOCATION_LAVARIDGE_TOWN
	call Common_EventScript_UpdateBrineyLocation
	end

LavaridgeTown_PokemonCenter_1F_EventScript_Nurse::
	setvar VAR_0x800B, LOCALID_LAVARIDGE_NURSE
	call Common_EventScript_PkmnCenterNurse
	waitmessage
	waitbuttonpress
	release
	end

LavaridgeTown_PokemonCenter_1F_EventScript_Youngster::
	msgbox LavaridgeTown_PokemonCenter_1F_Text_HotSpringCanInvigorate, MSGBOX_NPC
	end

LavaridgeTown_PokemonCenter_1F_EventScript_Woman::
	msgbox LavaridgeTown_PokemonCenter_1F_Text_TrainersPokemonSpendTimeTogether, MSGBOX_NPC
	end

LavaridgeTown_PokemonCenter_1F_EventScript_Gentleman::
	msgbox LavaridgeTown_PokemonCenter_1F_Text_TrainersShouldRestToo, MSGBOX_NPC
	end

LavaridgeTown_PokemonCenter_1F_Text_TrainersPokemonSpendTimeTogether:
	.string "Something changed after the comet.\n"
	.string "My POKéMON look at me differently now.\p"
	.string "Like they understand more than they\n"
	.string "did before. Deeper. It's unsettling.\p"
	.string "Maybe we never really knew each other\n"
	.string "until that night.$"

LavaridgeTown_PokemonCenter_1F_Text_HotSpringCanInvigorate:
	.string "The springs have been hotter lately.\n"
	.string "Much hotter than normal years.\p"
	.string "Old folks say the last time they\n"
	.string "heated up like this was eighty years ago.\p"
	.string "Right before the great eruption at\n"
	.string "MT. CHIMNEY. Makes you think, doesn't it?$"

LavaridgeTown_PokemonCenter_1F_Text_TrainersShouldRestToo:
	.string "Hohoho! You look exhausted, kid.\n"
	.string "Those bags under your eyes...\p"
	.string "The springs are just through that door.\n"
	.string "Go soak. Let the heat burn away whatever's\l"
	.string "keeping you awake at night.\p"
	.string "Trust me. These waters have cured\n"
	.string "worse than sleeplessness.$"
