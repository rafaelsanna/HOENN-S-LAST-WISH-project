# 1 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"

# 2 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
PacifidlogTown_PokemonCenter_1F_MapScripts::
# 3 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, PacifidlogTown_PokemonCenter_1F_OnTransition
# 4 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
# 5 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.byte 0
# 6 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"

# 7 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
PacifidlogTown_PokemonCenter_1F_OnTransition:
# 8 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	setrespawn HEAL_LOCATION_PACIFIDLOG_TOWN
# 9 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	end
# 10 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"

# 11 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
PacifidlogTown_PokemonCenter_1F_EventScript_Nurse::
# 12 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	setvar VAR_0x800B, LOCALID_PACIFIDLOG_NURSE
# 13 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_PkmnCenterNurse
# 14 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	waitmessage
# 15 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	waitbuttonpress
# 16 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	release
# 17 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	end
# 18 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"

# 19 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
PacifidlogTown_PokemonCenter_1F_EventScript_Girl::
# 20 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	msgbox PacifidlogTown_PokemonCenter_1F_Text_WhatColorTrainerCard, MSGBOX_NPC
# 21 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	end
# 22 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"

# 23 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
PacifidlogTown_PokemonCenter_1F_EventScript_Woman::
# 24 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	msgbox PacifidlogTown_PokemonCenter_1F_Text_OnColonyOfCorsola, MSGBOX_NPC
# 25 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	end
# 26 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"

# 27 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
PacifidlogTown_PokemonCenter_1F_EventScript_OldMan::
# 28 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	msgbox PacifidlogTown_PokemonCenter_1F_Text_AncestorsLivedOnBoats, MSGBOX_NPC
# 29 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	end
# 30 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"

# 31 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
PacifidlogTown_PokemonCenter_1F_Text_WhatColorTrainerCard:
# 32 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "The currents have shifted since\n"
# 33 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "the comet passed.\p"
# 34 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "We measure time by the tides here.\n"
# 35 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "And the tides are wrong now.\p"
# 36 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "Too high. Too low. Too fast.\n"
# 37 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "The ocean doesn't forget its rhythm.\p"
# 38 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "Unless something forces it to.$"
# 39 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"

# 40 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
PacifidlogTown_PokemonCenter_1F_Text_OnColonyOfCorsola:
# 41 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "The CORSOLA colony beneath us\n"
# 42 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "is dying. Slowly. Deliberately.\p"
# 43 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "Marine biologists say it's temperature.\n"
# 44 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "Pollution. Normal things.\p"
# 45 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "But we've watched these waters for\n"
# 46 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "generations. This isn't normal.\p"
# 47 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "Corals don't just stop growing.\n"
# 48 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "They flee, or they fight.\p"
# 49 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "These ones are just... waiting.$"
# 50 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"

# 51 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
PacifidlogTown_PokemonCenter_1F_Text_AncestorsLivedOnBoats:
# 52 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "We descend from nomads who foresaw\n"
# 53 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "the great flood. They built homes that\l"
# 54 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "float because they believed the sea\l"
# 55 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "would one day swallow everything.\p"
# 56 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "For generations we laughed at their fear.\n"
# 57 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "Called it legend.\p"
# 58 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "Now? The tides rise higher each year.\n"
# 59 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "Storms come from nowhere.\p"
# 60 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "Maybe they weren't afraid.\n"
# 61 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "Maybe they just knew what was coming.\l"
# 62 "data/maps/PacifidlogTown_PokemonCenter_1F/scripts.pory"
	.string "And prepared us.$"
