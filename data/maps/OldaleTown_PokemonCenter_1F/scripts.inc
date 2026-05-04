# 1 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"

# 2 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
OldaleTown_PokemonCenter_1F_MapScripts::
# 3 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, OldaleTown_PokemonCenter_1F_OnTransition
# 4 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
# 5 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	.byte 0
# 6 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"

# 7 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
OldaleTown_PokemonCenter_1F_OnTransition:
# 8 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	setrespawn HEAL_LOCATION_OLDALE_TOWN
# 9 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_UpdateBrineyLocation
# 10 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	end
# 11 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"

# 12 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
OldaleTown_PokemonCenter_1F_EventScript_Nurse::
# 13 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	setvar VAR_0x800B, LOCALID_OLDALE_NURSE
# 14 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_PkmnCenterNurse
# 15 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	waitmessage
# 16 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	waitbuttonpress
# 17 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	release
# 18 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	end
# 19 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"

# 20 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
OldaleTown_PokemonCenter_1F_EventScript_Gentleman::
# 21 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	msgbox OldaleTown_PokemonCenter_1F_Text_TrainersCanUsePC, MSGBOX_NPC
# 22 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	end
# 23 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"

# 24 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
OldaleTown_PokemonCenter_1F_EventScript_Boy::
# 25 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	msgbox OldaleTown_PokemonCenter_1F_Text_PokemonCentersAreGreat, MSGBOX_NPC
# 26 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	end
# 27 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"

# 28 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
OldaleTown_PokemonCenter_1F_EventScript_Girl::
# 29 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	lock
# 30 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	faceplayer
# 31 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	goto_if_set FLAG_SYS_POKEDEX_GET, OldaleTown_PokemonCenter_1F_EventScript_WirelessClubAvailable
# 32 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	msgbox OldaleTown_PokemonCenter_1F_Text_WirelessClubNotAvailable, MSGBOX_DEFAULT
# 33 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	release
# 34 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	end
# 35 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"

# 36 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
OldaleTown_PokemonCenter_1F_EventScript_WirelessClubAvailable::
# 37 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	msgbox OldaleTown_PokemonCenter_1F_Text_TradedInWirelessClub, MSGBOX_DEFAULT
# 38 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	release
# 39 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
	end
# 40 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"

# 41 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
OldaleTown_PokemonCenter_1F_Text_TrainersCanUsePC:
# 42 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "Did you see the sky last night?\n"
# 43 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "That comet lit everything up like day.\p"
# 44 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "People say it only appears once every\n"
# 45 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "thousand years.\p"
# 46 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "Makes you wonder what it means...$"
# 47 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"

# 48 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
OldaleTown_PokemonCenter_1F_Text_PokemonCentersAreGreat:
# 49 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "I swear something feels off today.\p"
# 50 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "Ever since that bright streak crossed\n"
# 51 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "the sky, the town feels different.\p"
# 52 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "Like the world shifted just a little.$"
# 53 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"

# 54 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
OldaleTown_PokemonCenter_1F_Text_WirelessClubNotAvailable:
# 55 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "Everyone keeps talking about the\n"
# 56 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "Millennium Comet.\p"
# 57 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "Some people said they made a wish\n"
# 58 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "when it passed.\p"
# 59 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "If the stories are true... maybe their\n"
# 60 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "lives really will change.$"
# 61 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"

# 62 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
OldaleTown_PokemonCenter_1F_Text_TradedInWirelessClub:
# 63 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "Hey, your outfit is... something.\n"
# 64 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "A cape? Layers like that?\p"
# 65 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "Guess fashion is getting wild lately.\n"
# 66 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "Or maybe the comet messed with more\n"
# 67 "data/maps/OldaleTown_PokemonCenter_1F/scripts.pory"
    .string "than just the sky.$"
