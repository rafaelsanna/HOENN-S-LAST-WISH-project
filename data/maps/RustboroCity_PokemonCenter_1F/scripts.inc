RustboroCity_PokemonCenter_1F_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, RustboroCity_PokemonCenter_1F_OnTransition
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
	.byte 0

RustboroCity_PokemonCenter_1F_OnTransition:
	setrespawn HEAL_LOCATION_RUSTBORO_CITY
	call Common_EventScript_UpdateBrineyLocation
	end

RustboroCity_PokemonCenter_1F_EventScript_Nurse::
	setvar VAR_0x800B, LOCALID_RUSTBORO_NURSE
	call Common_EventScript_PkmnCenterNurse
	waitmessage
	waitbuttonpress
	release
	end

RustboroCity_PokemonCenter_1F_EventScript_Man::
	msgbox RustboroCity_PokemonCenter_1F_Text_PokemonHavePersonalities, MSGBOX_NPC
	end

RustboroCity_PokemonCenter_1F_EventScript_Boy::
	msgbox RustboroCity_PokemonCenter_1F_Text_MaleAndFemalePokemon, MSGBOX_NPC
	end

RustboroCity_PokemonCenter_1F_EventScript_Girl::
	msgbox RustboroCity_PokemonCenter_1F_Text_HMCutNextDoor, MSGBOX_NPC
	end

RustboroCity_PokemonCenter_1F_Text_PokemonHavePersonalities:
	.string "I work in the Devon Corporation's\n"
	.string "research division.\p"
	.string "After the comet, we started detecting\n"
	.string "energy signatures that don't match\l"
	.string "any known Pokémon.\p"
	.string "Something is bleeding through from\n"
	.string "somewhere. The question is where.$"

RustboroCity_PokemonCenter_1F_Text_MaleAndFemalePokemon:
	.string "My grandfather helped found\n"
	.string "the Pokémon Trainer's School here.\p"
	.string "He used to say that Rustboro would\n"
	.string "outlast any disaster, but there\l"
	.string "have been so many earthquakes lately.\p"
	.string "I hope he was right. I really do.$"

RustboroCity_PokemonCenter_1F_Text_HMCutNextDoor:
	.string "Have you heard the rumor?\n"
	.string "A woman who moves like wind through trees.\p"
	.string "They say she can slice through\n"
	.string "the thickest branches with one strike.\p"
	.string "She learned the art from her grandfather,\n"
	.string "but she only teaches those who can\l"
	.string "defeat her in battle.\p"
	.string "I've searched everywhere but never found her.\n"
	.string "Maybe she doesn't want to be found.$"

