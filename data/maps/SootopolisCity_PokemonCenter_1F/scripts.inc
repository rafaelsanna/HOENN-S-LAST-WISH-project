# 1 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"

# 2 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
SootopolisCity_PokemonCenter_1F_MapScripts::
# 3 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, SootopolisCity_PokemonCenter_1F_OnTransition
# 4 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
# 5 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.byte 0
# 6 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"

# 7 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
SootopolisCity_PokemonCenter_1F_OnTransition:
# 8 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	setrespawn HEAL_LOCATION_SOOTOPOLIS_CITY
# 9 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	end
# 10 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"

# 11 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
SootopolisCity_PokemonCenter_1F_EventScript_Nurse::
# 12 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	setvar VAR_0x800B, LOCALID_SOOTOPOLIS_NURSE
# 13 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_PkmnCenterNurse
# 14 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	waitmessage
# 15 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	waitbuttonpress
# 16 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	release
# 17 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	end
# 18 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"

# 19 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
SootopolisCity_PokemonCenter_1F_EventScript_Gentleman::
# 20 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	lock
# 21 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	faceplayer
# 22 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	goto_if_ge VAR_SKY_PILLAR_STATE, 2, SootopolisCity_PokemonCenter_1F_EventScript_GentlemanNoLegendaries
# 23 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	goto_if_unset FLAG_KYOGRE_ESCAPED_SEAFLOOR_CAVERN, SootopolisCity_PokemonCenter_1F_EventScript_GentlemanNoLegendaries
# 24 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	msgbox SootopolisCity_PokemonCenter_1F_Text_EveryoneTakenRefuge, MSGBOX_DEFAULT
# 25 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	release
# 26 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	end
# 27 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"

# 28 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
SootopolisCity_PokemonCenter_1F_EventScript_GentlemanNoLegendaries::
# 29 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	msgbox SootopolisCity_PokemonCenter_1F_Text_WallaceToughestInHoenn, MSGBOX_DEFAULT
# 30 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	release
# 31 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	end
# 32 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"

# 33 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
SootopolisCity_PokemonCenter_1F_EventScript_Woman::
# 34 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	lock
# 35 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	faceplayer
# 36 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	goto_if_ge VAR_SKY_PILLAR_STATE, 2, SootopolisCity_PokemonCenter_1F_EventScript_WomanNoLegendaries
# 37 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	goto_if_unset FLAG_KYOGRE_ESCAPED_SEAFLOOR_CAVERN, SootopolisCity_PokemonCenter_1F_EventScript_WomanNoLegendaries
# 38 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	msgbox SootopolisCity_PokemonCenter_1F_Text_ArentPokemonOurFriends, MSGBOX_DEFAULT
# 39 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	release
# 40 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	end
# 41 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"

# 42 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
SootopolisCity_PokemonCenter_1F_EventScript_WomanNoLegendaries::
# 43 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	msgbox SootopolisCity_PokemonCenter_1F_Text_AlwaysBeFriendsWithPokemon, MSGBOX_DEFAULT
# 44 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	release
# 45 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	end
# 46 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"

# 47 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
SootopolisCity_PokemonCenter_1F_Text_WallaceToughestInHoenn:
# 48 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "STELLA STONE doesn't show up here\n"
# 49 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "much anymore. Not since the comet.\p"
# 50 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "They say she felt it more than most.\n"
# 51 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "Being this close to the Cave of Origin.\p"
# 52 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "Like something deep underground\n"
# 53 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "called to her. And she's still listening.$"
# 54 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"

# 55 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
SootopolisCity_PokemonCenter_1F_Text_EveryoneTakenRefuge:
# 56 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "The water here is too calm.\n"
# 57 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "Too perfect. Like glass.\p"
# 58 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "Old divers say the sea floor\n"
# 59 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "dropped deeper that night.\p"
# 60 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "As if the city rose.\n"
# 61 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "Or something pulled us higher.$"
# 62 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"

# 63 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
SootopolisCity_PokemonCenter_1F_Text_AlwaysBeFriendsWithPokemon:
# 64 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "My Pókemon used to sleep beside me.\n"
# 65 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "Now it watches the door all night.\p"
# 66 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "Growls at nothing. Guards me from\n"
# 67 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "things I can't see.\p"
# 68 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "It knows something's coming.\n"
# 69 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "And it's decided I'm worth protecting.$"
# 70 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"

# 71 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
SootopolisCity_PokemonCenter_1F_Text_ArentPokemonOurFriends:
# 72 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "When the comet passed, every Pokémon\n"
# 73 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "in Sootopolis fell silent.\p"
# 74 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "Thousands of them. Just... stopped.\n"
# 75 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "Stared at the sky together.\p"
# 76 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "For three minutes, this city\n"
# 77 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "didn't make a sound.\p"
# 78 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "They knew. They all knew.\n"
# 79 "data/maps/SootopolisCity_PokemonCenter_1F/scripts.pory"
	.string "And none of them warned us.$"
