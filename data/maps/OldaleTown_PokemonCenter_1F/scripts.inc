OldaleTown_PokemonCenter_1F_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, OldaleTown_PokemonCenter_1F_OnTransition
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
	.byte 0

OldaleTown_PokemonCenter_1F_OnTransition:
	setrespawn HEAL_LOCATION_OLDALE_TOWN
	call Common_EventScript_UpdateBrineyLocation
	end

OldaleTown_PokemonCenter_1F_EventScript_Nurse::
	setvar VAR_0x800B, LOCALID_OLDALE_NURSE
	call Common_EventScript_PkmnCenterNurse
	waitmessage
	waitbuttonpress
	release
	end

OldaleTown_PokemonCenter_1F_EventScript_Gentleman::
	msgbox OldaleTown_PokemonCenter_1F_Text_TrainersCanUsePC, MSGBOX_NPC
	end

OldaleTown_PokemonCenter_1F_EventScript_Boy::
	msgbox OldaleTown_PokemonCenter_1F_Text_PokemonCentersAreGreat, MSGBOX_NPC
	end

OldaleTown_PokemonCenter_1F_EventScript_Girl::
	lock
	faceplayer
	goto_if_set FLAG_SYS_POKEDEX_GET, OldaleTown_PokemonCenter_1F_EventScript_WirelessClubAvailable
	msgbox OldaleTown_PokemonCenter_1F_Text_WirelessClubNotAvailable, MSGBOX_DEFAULT
	release
	end

OldaleTown_PokemonCenter_1F_EventScript_WirelessClubAvailable::
	msgbox OldaleTown_PokemonCenter_1F_Text_TradedInWirelessClub, MSGBOX_DEFAULT
	release
	end

OldaleTown_PokemonCenter_1F_Text_TrainersCanUsePC:
    .string "Did you see the sky last night?\n"
    .string "That comet lit everything up like day.\p"
    .string "People say it only appears once every\n"
    .string "thousand years.\p"
    .string "Makes you wonder what it means...$"

OldaleTown_PokemonCenter_1F_Text_PokemonCentersAreGreat:
    .string "I swear something feels off today.\p"
    .string "Ever since that bright streak crossed\n"
    .string "the sky, the town feels different.\p"
    .string "Like the world shifted just a little.$"

OldaleTown_PokemonCenter_1F_Text_WirelessClubNotAvailable:
    .string "Everyone keeps talking about the\n"
    .string "Millennium Comet.\p"
    .string "Some people said they made a wish\n"
    .string "when it passed.\p"
    .string "If the stories are true... maybe their\n"
    .string "lives really will change.$"

OldaleTown_PokemonCenter_1F_Text_TradedInWirelessClub:
    .string "Hey, your outfit is... something.\n"
    .string "A cape? Layers like that?\p"
    .string "Guess fashion is getting wild lately.\n"
    .string "Or maybe the comet messed with more\n"
    .string "than just the sky.$"

