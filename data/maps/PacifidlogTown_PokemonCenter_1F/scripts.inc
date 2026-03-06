PacifidlogTown_PokemonCenter_1F_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, PacifidlogTown_PokemonCenter_1F_OnTransition
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
	.byte 0

PacifidlogTown_PokemonCenter_1F_OnTransition:
	setrespawn HEAL_LOCATION_PACIFIDLOG_TOWN
	end

PacifidlogTown_PokemonCenter_1F_EventScript_Nurse::
	setvar VAR_0x800B, LOCALID_PACIFIDLOG_NURSE
	call Common_EventScript_PkmnCenterNurse
	waitmessage
	waitbuttonpress
	release
	end

PacifidlogTown_PokemonCenter_1F_EventScript_Girl::
	msgbox PacifidlogTown_PokemonCenter_1F_Text_WhatColorTrainerCard, MSGBOX_NPC
	end

PacifidlogTown_PokemonCenter_1F_EventScript_Woman::
	msgbox PacifidlogTown_PokemonCenter_1F_Text_OnColonyOfCorsola, MSGBOX_NPC
	end

PacifidlogTown_PokemonCenter_1F_EventScript_OldMan::
	msgbox PacifidlogTown_PokemonCenter_1F_Text_AncestorsLivedOnBoats, MSGBOX_NPC
	end

PacifidlogTown_PokemonCenter_1F_Text_WhatColorTrainerCard:
	.string "The currents have shifted since\n"
	.string "the comet passed.\p"
	.string "We measure time by the tides here.\n"
	.string "And the tides are wrong now.\p"
	.string "Too high. Too low. Too fast.\n"
	.string "The ocean doesn't forget its rhythm.\p"
	.string "Unless something forces it to.$"

PacifidlogTown_PokemonCenter_1F_Text_OnColonyOfCorsola:
	.string "The CORSOLA colony beneath us\n"
	.string "is dying. Slowly. Deliberately.\p"
	.string "Marine biologists say it's temperature.\n"
	.string "Pollution. Normal things.\p"
	.string "But we've watched these waters for\n"
	.string "generations. This isn't normal.\p"
	.string "Corals don't just stop growing.\n"
	.string "They flee, or they fight.\p"
	.string "These ones are just... waiting.$"

PacifidlogTown_PokemonCenter_1F_Text_AncestorsLivedOnBoats:
	.string "We descend from nomads who foresaw\n"
	.string "the great flood. They built homes that\l"
	.string "float because they believed the sea\l"
	.string "would one day swallow everything.\p"
	.string "For generations we laughed at their fear.\n"
	.string "Called it legend.\p"
	.string "Now? The tides rise higher each year.\n"
	.string "Storms come from nowhere.\p"
	.string "Maybe they weren't afraid.\n"
	.string "Maybe they just knew what was coming.\l"
	.string "And prepared us.$"
