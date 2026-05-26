# 1 "data/maps/RustboroCity_Flat1_1F/scripts.pory"

# 2 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
RustboroCity_Flat1_1F_MapScripts::
# 3 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	.byte 0
# 4 "data/maps/RustboroCity_Flat1_1F/scripts.pory"

# 5 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
RustboroCity_Flat1_1F_EventScript_Man::
# 6 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	msgbox RustboroCity_Flat1_1F_Text_EveryPokemonHasAbility, MSGBOX_NPC
# 7 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	end
# 8 "data/maps/RustboroCity_Flat1_1F/scripts.pory"

# 9 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
RustboroCity_Flat1_1F_EventScript_Woman::
# 10 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	msgbox RustboroCity_Flat1_1F_Text_PokemonStrange, MSGBOX_NPC
# 11 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	end
# 12 "data/maps/RustboroCity_Flat1_1F/scripts.pory"

# 13 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
RustboroCity_Flat1_1F_EventScript_OldLadyAndVulpix::
# 14 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
    lock
# 15 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
    faceplayer
# 16 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
    playmoncry SPECIES_VULPIX, CRY_MODE_NORMAL
# 17 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	playse SE_M_FLAMETHROWER
# 18 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
    msgbox RustboroCity_Flat1_1F_Text_VulpixEmber, MSGBOX_DEFAULT
# 19 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
    waitmessage
# 20 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
    release
# 21 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
    end
# 22 "data/maps/RustboroCity_Flat1_1F/scripts.pory"

# 23 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
RustboroCity_Flat1_1F_Text_EveryPokemonHasAbility:
# 24 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	.string "Did you know GYM LEADER TERRA has an\n"
# 25 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	.string "older brother? They say he's even more\l"
# 26 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	.string "famous than her… He's like, a total\l"
# 27 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	.string "celebrity all across HOENN!$"
# 28 "data/maps/RustboroCity_Flat1_1F/scripts.pory"

# 29 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
RustboroCity_Flat1_1F_Text_PokemonStrange:
# 30 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	.string "Oh, hello there! Would you like some\n"
# 31 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	.string "coffee? I just made it hot and fresh!\p"
# 32 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	.string "My Vulpix helps me warm it with its\n"
# 33 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	.string "flame. Such a dear little helper!\p"
# 34 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	.string "I simply love coffee… And Pokémon are\n"
# 35 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	.string "truly amazing, aren't they?$"
# 36 "data/maps/RustboroCity_Flat1_1F/scripts.pory"

# 37 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
RustboroCity_Flat1_1F_Text_VulpixEmber:
# 38 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	.string "VULPIX uses EMBER!\n"
# 39 "data/maps/RustboroCity_Flat1_1F/scripts.pory"
	.string "UUUUH! HOT! HOT! HOT!$"
