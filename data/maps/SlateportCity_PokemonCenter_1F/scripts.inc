# 1 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"

# 2 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
SlateportCity_PokemonCenter_1F_MapScripts::
# 3 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, SlateportCity_PokemonCenter_1F_OnTransition
# 4 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
# 5 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.byte 0
# 6 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"

# 7 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
SlateportCity_PokemonCenter_1F_OnTransition:
# 8 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	setrespawn HEAL_LOCATION_SLATEPORT_CITY
# 9 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_UpdateBrineyLocation
# 10 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	end
# 11 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"

# 12 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
SlateportCity_PokemonCenter_1F_EventScript_Nurse::
# 13 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	setvar VAR_0x800B, LOCALID_SLATEPORT_NURSE
# 14 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_PkmnCenterNurse
# 15 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	waitmessage
# 16 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	waitbuttonpress
# 17 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	release
# 18 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	end
# 19 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"

# 20 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
SlateportCity_PokemonCenter_1F_EventScript_Sailor::
# 21 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	msgbox SlateportCity_PokemonCenter_1F_Text_RaiseDifferentTypesOfPokemon, MSGBOX_NPC
# 22 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	end
# 23 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"

# 24 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
SlateportCity_PokemonCenter_1F_EventScript_Woman::
# 25 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	msgbox SlateportCity_PokemonCenter_1F_Text_TradedMonWithFriend, MSGBOX_NPC
# 26 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	end
# 27 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"

# 28 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
SlateportCity_PokemonCenter_1F_Text_RaiseDifferentTypesOfPokemon:
# 29 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "Slateport breathes different every\n"
# 30 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "morning. Depends which ship docked.\p"
# 31 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "Last week, sailors from Kanto.\n"
# 32 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "Told stories of a lighthouse that\l"
# 33 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "shines where no land exists.\p"
# 34 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "Yesterday, a woman from Johto.\n"
# 35 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "Said the tides there whisper at night.\l"
# 36 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "Words, almost. I believed her.$"
# 37 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"

# 38 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
SlateportCity_PokemonCenter_1F_Text_TradedMonWithFriend:
# 39 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "My brother was a fisherman.\n"
# 40 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "Knew these waters like his own pulse.\p"
# 41 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "Took his boat out some weeks ago.\n"
# 42 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "Same route he'd sailed a thousand times.\p"
# 43 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "The coast guard found the vessel\n"
# 44 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "yesterday. Drifting. Empty.\p"
# 45 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "No damage. No struggle.\n"
# 46 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "Just... gone.\p"
# 47 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "The old sailors say the tides have\n"
# 48 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "been wrong since the comet.\l"
# 49 "data/maps/SlateportCity_PokemonCenter_1F/scripts.pory"
	.string "Taking things that don't belong to them.$"
