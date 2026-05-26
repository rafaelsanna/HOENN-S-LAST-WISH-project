# 1 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"

# 2 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
RustboroCity_PokemonCenter_1F_MapScripts::
# 3 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, RustboroCity_PokemonCenter_1F_OnTransition
# 4 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, CableClub_OnResume
# 5 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.byte 0
# 6 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"

# 7 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
RustboroCity_PokemonCenter_1F_OnTransition:
# 8 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	setrespawn HEAL_LOCATION_RUSTBORO_CITY
# 9 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_UpdateBrineyLocation
# 10 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	end
# 11 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"

# 12 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
RustboroCity_PokemonCenter_1F_EventScript_Nurse::
# 13 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	setvar VAR_0x800B, LOCALID_RUSTBORO_NURSE
# 14 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	call Common_EventScript_PkmnCenterNurse
# 15 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	waitmessage
# 16 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	waitbuttonpress
# 17 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	release
# 18 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	end
# 19 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"

# 20 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
RustboroCity_PokemonCenter_1F_EventScript_Man::
# 21 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	msgbox RustboroCity_PokemonCenter_1F_Text_PokemonHavePersonalities, MSGBOX_NPC
# 22 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	end
# 23 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"

# 24 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
RustboroCity_PokemonCenter_1F_EventScript_Boy::
# 25 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	msgbox RustboroCity_PokemonCenter_1F_Text_MaleAndFemalePokemon, MSGBOX_NPC
# 26 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	end
# 27 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"

# 28 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
RustboroCity_PokemonCenter_1F_EventScript_Girl::
# 29 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	msgbox RustboroCity_PokemonCenter_1F_Text_HMCutNextDoor, MSGBOX_NPC
# 30 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	end
# 31 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"

# 32 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
RustboroCity_PokemonCenter_1F_Text_PokemonHavePersonalities:
# 33 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "I work in the Devon Corporation's\n"
# 34 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "research division.\p"
# 35 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "After the comet, we started detecting\n"
# 36 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "energy signatures that don't match\l"
# 37 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "any known Pokémon.\p"
# 38 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "Something is bleeding through from\n"
# 39 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "somewhere. The question is where.$"
# 40 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"

# 41 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
RustboroCity_PokemonCenter_1F_Text_MaleAndFemalePokemon:
# 42 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "My grandfather helped found\n"
# 43 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "the Pokémon Trainer's School here.\p"
# 44 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "He used to say that Rustboro would\n"
# 45 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "outlast any disaster, but there\l"
# 46 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "have been so many earthquakes lately.\p"
# 47 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "I hope he was right. I really do.$"
# 48 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"

# 49 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
RustboroCity_PokemonCenter_1F_Text_HMCutNextDoor:
# 50 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "Have you heard the rumor?\n"
# 51 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "A woman who moves like wind through trees.\p"
# 52 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "They say she can slice through\n"
# 53 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "the thickest branches with one strike.\p"
# 54 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "She learned the art from her grandfather,\n"
# 55 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "but she only teaches those who can\l"
# 56 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "defeat her in battle.\p"
# 57 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "I've searched everywhere but never found her.\n"
# 58 "data/maps/RustboroCity_PokemonCenter_1F/scripts.pory"
	.string "Maybe she doesn't want to be found.$"
