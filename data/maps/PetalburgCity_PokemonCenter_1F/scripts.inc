PetalburgCity_PokemonCenter_1F_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, PetalburgCity_PokemonCenter_1F_OnTransition
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
	.byte 0

PetalburgCity_PokemonCenter_1F_OnTransition:
	setrespawn HEAL_LOCATION_PETALBURG_CITY
	call Common_EventScript_UpdateBrineyLocation
	end

PetalburgCity_PokemonCenter_1F_EventScript_Nurse::
	setvar VAR_0x800B, LOCALID_PETALBURG_NURSE
	call Common_EventScript_PkmnCenterNurse
	waitmessage
	waitbuttonpress
	release
	end

PetalburgCity_PokemonCenter_1F_EventScript_FatMan::
	msgbox PetalburgCity_PokemonCenter_1F_Text_PCStorageSystem, MSGBOX_NPC
	end

PetalburgCity_PokemonCenter_1F_EventScript_Youngster::
	msgbox PetalburgCity_PokemonCenter_1F_Text_OranBerryRegainedHP, MSGBOX_NPC
	end

PetalburgCity_PokemonCenter_1F_EventScript_Woman::
	lock
	faceplayer
	msgbox PetalburgCity_PokemonCenter_1F_Text_ManyTypesOfPokemon, MSGBOX_DEFAULT
	specialvar VAR_RESULT, IsStarterInParty
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_PokemonCenter_1F_EventScript_SayStarterTypeInfo
	release
	end

PetalburgCity_PokemonCenter_1F_EventScript_SayStarterTypeInfo::
	call_if_eq VAR_STARTER_MON, 0, PetalburgCity_PokemonCenter_1F_EventScript_SayTreeckoType
	call_if_eq VAR_STARTER_MON, 1, PetalburgCity_PokemonCenter_1F_EventScript_SayTorchicType
	call_if_eq VAR_STARTER_MON, 2, PetalburgCity_PokemonCenter_1F_EventScript_SayMudkipType
	release
	end

PetalburgCity_PokemonCenter_1F_EventScript_SayTreeckoType::
	msgbox PetalburgCity_PokemonCenter_1F_Text_TreeckoIsGrassType, MSGBOX_DEFAULT
	return

PetalburgCity_PokemonCenter_1F_EventScript_SayTorchicType::
	msgbox PetalburgCity_PokemonCenter_1F_Text_TorchicIsFireType, MSGBOX_DEFAULT
	return

PetalburgCity_PokemonCenter_1F_EventScript_SayMudkipType::
	msgbox PetalburgCity_PokemonCenter_1F_Text_MudkipIsWaterType, MSGBOX_DEFAULT
	return

PetalburgCity_PokemonCenter_1F_Text_PCStorageSystem:
	.string "You know, I never saw someone\n"
	.string "using a cape like yours!\p"
	.string "Not exactly Petalburg fashion!\n"
	.string "You from out of region? Or just...\l"
	.string "from somewhere else?$"

PetalburgCity_PokemonCenter_1F_Text_OranBerryRegainedHP:
	.string "The berries near the woods have been\n"
	.string "ripening wrong. Too fast. Too bright.\p"
	.string "Probably nothing. but just pay\n"
	.string "attention to what you keep.$"

PetalburgCity_PokemonCenter_1F_Text_ManyTypesOfPokemon:
	.string "Professor Calendula spent years\n"
	.string "in research labs across Hoenn.\p"
	.string "Could have stayed in academia forever.\n"
	.string "Published papers. Lived quietly.\p"
	.string "But she chose the Gym instead.\n"
	.string "Says she learned more from one real\l"
	.string "battle than ten years of theory.$"

PetalburgCity_PokemonCenter_1F_Text_TreeckoIsGrassType:  
	.string "Calendula studied Grass-types for\n"
	.string "years. Wrote papers on their empathy.\p"
	.string "She'd tell you that Torchic bond\n"
	.string "deeper than most. Trust that.$"

PetalburgCity_PokemonCenter_1F_Text_TorchicIsFireType:   
	.string "Fire-types as Calendula's say are\n"
	.string "heated! She says they're unpredictable\l"
	.string "lately. More intense.\p"
	.string "Watch your Totodile carefully.$"

PetalburgCity_PokemonCenter_1F_Text_MudkipIsWaterType:   
	.string "Calendula mentioned Water-types\n"
	.string "are gathering near strange currents.\p"
	.string "Your Bulbasaur might sense things\n"
	.string "you can't. Follow its lead.$"



