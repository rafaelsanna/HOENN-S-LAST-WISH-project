# 1 "data/maps/DEWFORD_POKEMART/scripts.pory"

# 2 "data/maps/DEWFORD_POKEMART/scripts.pory"
DEWFORD_POKEMART_MapScripts::
# 3 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.byte 0
# 4 "data/maps/DEWFORD_POKEMART/scripts.pory"

# 5 "data/maps/DEWFORD_POKEMART/scripts.pory"
DEWFORD_POKEMART_EventScript_Clerk::
# 6 "data/maps/DEWFORD_POKEMART/scripts.pory"
	lock
# 7 "data/maps/DEWFORD_POKEMART/scripts.pory"
	faceplayer
# 8 "data/maps/DEWFORD_POKEMART/scripts.pory"
	message gText_HowMayIServeYou
# 9 "data/maps/DEWFORD_POKEMART/scripts.pory"
	waitmessage
# 10 "data/maps/DEWFORD_POKEMART/scripts.pory"
	pokemart DEWFORD_POKEMART_Pokemart
# 11 "data/maps/DEWFORD_POKEMART/scripts.pory"
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
# 12 "data/maps/DEWFORD_POKEMART/scripts.pory"
	release
# 13 "data/maps/DEWFORD_POKEMART/scripts.pory"
	end
# 14 "data/maps/DEWFORD_POKEMART/scripts.pory"

# 15 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.align 2
# 16 "data/maps/DEWFORD_POKEMART/scripts.pory"
DEWFORD_POKEMART_Pokemart:
# 17 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.2byte ITEM_POKE_BALL
# 18 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.2byte ITEM_GREAT_BALL
# 19 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.2byte ITEM_POTION
# 20 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.2byte ITEM_SUPER_POTION
# 21 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.2byte ITEM_ANTIDOTE
# 22 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.2byte ITEM_PARALYZE_HEAL
# 23 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.2byte ITEM_ESCAPE_ROPE
# 24 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.2byte ITEM_REPEL
# 25 "data/maps/DEWFORD_POKEMART/scripts.pory"
	pokemartlistend
# 26 "data/maps/DEWFORD_POKEMART/scripts.pory"

# 27 "data/maps/DEWFORD_POKEMART/scripts.pory"
DEWFORD_POKEMART_EventScript_OldComunist::
# 28 "data/maps/DEWFORD_POKEMART/scripts.pory"
	msgbox DEWFORD_POKEMART_Text_SomeItemsOnlyAtMart, MSGBOX_NPC
# 29 "data/maps/DEWFORD_POKEMART/scripts.pory"
	end
# 30 "data/maps/DEWFORD_POKEMART/scripts.pory"

# 31 "data/maps/DEWFORD_POKEMART/scripts.pory"
DEWFORD_POKEMART_EventScript_Man::
# 32 "data/maps/DEWFORD_POKEMART/scripts.pory"
	msgbox DEWFORD_POKEMART_Text_GreatBallIsBetter, MSGBOX_NPC
# 33 "data/maps/DEWFORD_POKEMART/scripts.pory"
	end
# 34 "data/maps/DEWFORD_POKEMART/scripts.pory"

# 35 "data/maps/DEWFORD_POKEMART/scripts.pory"
DEWFORD_POKEMART_Text_SomeItemsOnlyAtMart:
# 36 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.string "Funny, isn't it?\p"
# 37 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.string "This used to be a quiet little\n"
# 38 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.string "island. Nothing but fishermen\n"
# 39 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.string "and the sound of the sea.\p"
# 40 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.string "Now we've got shelves, prices,\n"
# 41 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.string "and things people didn't even\n"
# 42 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.string "know they needed.\p"
# 43 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.string "Everyone calls it progress...\n"
# 44 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.string "I wonder where it all leads.$"
# 45 "data/maps/DEWFORD_POKEMART/scripts.pory"

# 46 "data/maps/DEWFORD_POKEMART/scripts.pory"
DEWFORD_POKEMART_Text_GreatBallIsBetter:
# 47 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.string "Life here moves with the tide.\p"
# 48 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.string "The caves and the waves\n"
# 49 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.string "shape everything.\p"
# 50 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.string "Trainers come for the GYM,\n"
# 51 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.string "but most don't stay long.\p"
# 52 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.string "Guess not everyone gets used\n"
# 53 "data/maps/DEWFORD_POKEMART/scripts.pory"
	.string "to how quiet it can be.$"
