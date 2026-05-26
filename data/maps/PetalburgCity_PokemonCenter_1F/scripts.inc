# 1 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"

# 2 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
PetalburgCity_PokemonCenter_1F_MapScripts::
# 3 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, PetalburgCity_PokemonCenter_1F_OnTransition
# 4 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
# 5 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.byte 0
# 6 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"

# 7 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
PetalburgCity_PokemonCenter_1F_OnTransition:
# 8 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	setrespawn HEAL_LOCATION_PETALBURG_CITY
# 9 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_UpdateBrineyLocation
# 10 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	end
# 11 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"

# 12 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
PetalburgCity_PokemonCenter_1F_EventScript_Nurse::
# 13 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	setvar VAR_0x800B, LOCALID_PETALBURG_NURSE
# 14 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_PkmnCenterNurse
# 15 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	waitmessage
# 16 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	waitbuttonpress
# 17 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	release
# 18 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	end
# 19 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"

# 20 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
PetalburgCity_PokemonCenter_1F_EventScript_FatMan::
# 21 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	msgbox PetalburgCity_PokemonCenter_1F_Text_PCStorageSystem, MSGBOX_NPC
# 22 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	end
# 23 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"

# 24 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
PetalburgCity_PokemonCenter_1F_EventScript_Youngster::
# 25 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	msgbox PetalburgCity_PokemonCenter_1F_Text_OranBerryRegainedHP, MSGBOX_NPC
# 26 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	end
# 27 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"

# 28 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
PetalburgCity_PokemonCenter_1F_EventScript_Woman::
# 29 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	lock
# 30 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	faceplayer
# 31 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	msgbox PetalburgCity_PokemonCenter_1F_Text_ManyTypesOfPokemon, MSGBOX_DEFAULT
# 32 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	specialvar VAR_RESULT, IsStarterInParty
# 33 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_PokemonCenter_1F_EventScript_SayStarterTypeInfo
# 34 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	release
# 35 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	end
# 36 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"

# 37 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
PetalburgCity_PokemonCenter_1F_EventScript_SayStarterTypeInfo::
# 38 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	call_if_eq VAR_STARTER_MON, 0, PetalburgCity_PokemonCenter_1F_EventScript_SayTreeckoType
# 39 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	call_if_eq VAR_STARTER_MON, 1, PetalburgCity_PokemonCenter_1F_EventScript_SayTorchicType
# 40 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	call_if_eq VAR_STARTER_MON, 2, PetalburgCity_PokemonCenter_1F_EventScript_SayMudkipType
# 41 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	release
# 42 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	end
# 43 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"

# 44 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
PetalburgCity_PokemonCenter_1F_EventScript_SayTreeckoType::
# 45 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	msgbox PetalburgCity_PokemonCenter_1F_Text_TreeckoIsGrassType, MSGBOX_DEFAULT
# 46 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	return
# 47 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"

# 48 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
PetalburgCity_PokemonCenter_1F_EventScript_SayTorchicType::
# 49 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	msgbox PetalburgCity_PokemonCenter_1F_Text_TorchicIsFireType, MSGBOX_DEFAULT
# 50 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	return
# 51 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"

# 52 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
PetalburgCity_PokemonCenter_1F_EventScript_SayMudkipType::
# 53 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	msgbox PetalburgCity_PokemonCenter_1F_Text_MudkipIsWaterType, MSGBOX_DEFAULT
# 54 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	return
# 55 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"

# 56 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
PetalburgCity_PokemonCenter_1F_Text_PCStorageSystem:
# 57 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "You know, I never saw someone\n"
# 58 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "using a cape like yours!\p"
# 59 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "Not exactly Petalburg fashion!\n"
# 60 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "You from out of region? Or just...\l"
# 61 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "from somewhere else?$"
# 62 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"

# 63 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
PetalburgCity_PokemonCenter_1F_Text_OranBerryRegainedHP:
# 64 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "The berries near the woods have been\n"
# 65 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "ripening wrong - too fast and bright.\p"
# 66 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "It's probably nothing, but just pay\n"
# 67 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "attention to what you keep.$"
# 68 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"

# 69 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
PetalburgCity_PokemonCenter_1F_Text_ManyTypesOfPokemon:
# 70 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "Professor Calendula spent years\n"
# 71 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "in research labs across Hoenn.\p"
# 72 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "She could have been an academic forever,\n"
# 73 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "publishing papers and living quietly.\p"
# 74 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "But she chose the Gym instead.\n"
# 75 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "Says she learned more from one real\l"
# 76 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "battle than ten years of theory.$"
# 77 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"

# 78 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
PetalburgCity_PokemonCenter_1F_Text_TreeckoIsGrassType:  
# 79 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "Calendula studied Grass-types for\n"
# 80 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "years. She wrote papers on their empathy.\p"
# 81 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "She'd tell you that Torchic bond\n"
# 82 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "deeper than most. Trust that.$"
# 83 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"

# 84 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
PetalburgCity_PokemonCenter_1F_Text_TorchicIsFireType:   
# 85 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "Fire-types, as Calendula says, are\n"
# 86 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "heated! She says they're unpredictable\l"
# 87 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "and more intense than other types.\p"
# 88 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "Watch your Totodile carefully.$"
# 89 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"

# 90 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
PetalburgCity_PokemonCenter_1F_Text_MudkipIsWaterType:   
# 91 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "Calendula mentioned Water-types\n"
# 92 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "are gathering near strange currents.\p"
# 93 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "Your Bulbasaur might sense things\n"
# 94 "data/maps/PetalburgCity_PokemonCenter_1F/scripts.pory"
	.string "you can't. Follow its lead.$"
