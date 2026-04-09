DEWFORD_POKEMART_MapScripts::
	.byte 0

DEWFORD_POKEMART_EventScript_Clerk::
	lock
	faceplayer
	message gText_HowMayIServeYou
	waitmessage
	pokemart DEWFORD_POKEMART_Pokemart
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
	release
	end

	.align 2
DEWFORD_POKEMART_Pokemart:
	.2byte ITEM_POKE_BALL
	.2byte ITEM_GREAT_BALL
	.2byte ITEM_POTION
	.2byte ITEM_SUPER_POTION
	.2byte ITEM_ANTIDOTE
	.2byte ITEM_PARALYZE_HEAL
	.2byte ITEM_ESCAPE_ROPE
	.2byte ITEM_REPEL
	pokemartlistend

DEWFORD_POKEMART_EventScript_OldComunist::
	msgbox DEWFORD_POKEMART_Text_SomeItemsOnlyAtMart, MSGBOX_NPC
	end

DEWFORD_POKEMART_EventScript_Man::
	msgbox DEWFORD_POKEMART_Text_GreatBallIsBetter, MSGBOX_NPC
	end

DEWFORD_POKEMART_Text_SomeItemsOnlyAtMart:
	.string "Funny, isn't it?\p"
	.string "This used to be a quiet little\n"
	.string "island. Nothing but fishermen\n"
	.string "and the sound of the sea.\p"
	.string "Now we've got shelves, prices,\n"
	.string "and things people didn't even\n"
	.string "know they needed.\p"
	.string "Everyone calls it progress...\n"
	.string "I wonder where it all leads.$"

DEWFORD_POKEMART_Text_GreatBallIsBetter:
	.string "Life here moves with the tide.\p"
	.string "The caves and the waves\n"
	.string "shape everything.\p"
	.string "Trainers come for the GYM,\n"
	.string "but most don't stay long.\p"
	.string "Guess not everyone gets used\n"
	.string "to how quiet it can be.$"
