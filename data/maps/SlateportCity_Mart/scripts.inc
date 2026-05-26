# 1 "data/maps/SlateportCity_Mart/scripts.pory"

# 2 "data/maps/SlateportCity_Mart/scripts.pory"
SlateportCity_Mart_MapScripts::
# 3 "data/maps/SlateportCity_Mart/scripts.pory"
	.byte 0
# 4 "data/maps/SlateportCity_Mart/scripts.pory"

# 5 "data/maps/SlateportCity_Mart/scripts.pory"
SlateportCity_Mart_EventScript_Clerk::
# 6 "data/maps/SlateportCity_Mart/scripts.pory"
	lock
# 7 "data/maps/SlateportCity_Mart/scripts.pory"
	faceplayer
# 8 "data/maps/SlateportCity_Mart/scripts.pory"
	message gText_HowMayIServeYou
# 9 "data/maps/SlateportCity_Mart/scripts.pory"
	waitmessage
# 10 "data/maps/SlateportCity_Mart/scripts.pory"
	pokemart SlateportCity_Mart_Pokemart
# 11 "data/maps/SlateportCity_Mart/scripts.pory"
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
# 12 "data/maps/SlateportCity_Mart/scripts.pory"
	release
# 13 "data/maps/SlateportCity_Mart/scripts.pory"
	end
# 14 "data/maps/SlateportCity_Mart/scripts.pory"

# 15 "data/maps/SlateportCity_Mart/scripts.pory"
	.align 2
# 16 "data/maps/SlateportCity_Mart/scripts.pory"
SlateportCity_Mart_Pokemart:
# 17 "data/maps/SlateportCity_Mart/scripts.pory"
	.2byte ITEM_POKE_BALL
# 18 "data/maps/SlateportCity_Mart/scripts.pory"
	.2byte ITEM_GREAT_BALL
# 19 "data/maps/SlateportCity_Mart/scripts.pory"
	.2byte ITEM_POTION
# 20 "data/maps/SlateportCity_Mart/scripts.pory"
	.2byte ITEM_SUPER_POTION
# 21 "data/maps/SlateportCity_Mart/scripts.pory"
	.2byte ITEM_ANTIDOTE
# 22 "data/maps/SlateportCity_Mart/scripts.pory"
	.2byte ITEM_PARALYZE_HEAL
# 23 "data/maps/SlateportCity_Mart/scripts.pory"
	.2byte ITEM_ESCAPE_ROPE
# 24 "data/maps/SlateportCity_Mart/scripts.pory"
	.2byte ITEM_REPEL
# 25 "data/maps/SlateportCity_Mart/scripts.pory"
	.2byte ITEM_HARBOR_MAIL
# 26 "data/maps/SlateportCity_Mart/scripts.pory"
	pokemartlistend
# 27 "data/maps/SlateportCity_Mart/scripts.pory"

# 28 "data/maps/SlateportCity_Mart/scripts.pory"
SlateportCity_Mart_EventScript_BlackBelt::
# 29 "data/maps/SlateportCity_Mart/scripts.pory"
	msgbox SlateportCity_Mart_Text_SomeItemsOnlyAtMart, MSGBOX_NPC
# 30 "data/maps/SlateportCity_Mart/scripts.pory"
	end
# 31 "data/maps/SlateportCity_Mart/scripts.pory"

# 32 "data/maps/SlateportCity_Mart/scripts.pory"
SlateportCity_Mart_EventScript_Man::
# 33 "data/maps/SlateportCity_Mart/scripts.pory"
	msgbox SlateportCity_Mart_Text_GreatBallIsBetter, MSGBOX_NPC
# 34 "data/maps/SlateportCity_Mart/scripts.pory"
	end
# 35 "data/maps/SlateportCity_Mart/scripts.pory"

# 36 "data/maps/SlateportCity_Mart/scripts.pory"
SlateportCity_Mart_Text_SomeItemsOnlyAtMart:
# 37 "data/maps/SlateportCity_Mart/scripts.pory"
	.string "Welcome to SLATEPORT, Hoenn's busiest\n"
# 38 "data/maps/SlateportCity_Mart/scripts.pory"
	.string "harbor! Ships from every region dock here.\p"
# 39 "data/maps/SlateportCity_Mart/scripts.pory"
	.string "The MARKET's great for trinkets, but for\n"
# 40 "data/maps/SlateportCity_Mart/scripts.pory"
	.string "reliable gear, you want the MART.\p"
# 41 "data/maps/SlateportCity_Mart/scripts.pory"
	.string "We've served sailors and trainers for\n"
# 42 "data/maps/SlateportCity_Mart/scripts.pory"
	.string "generations trust what works.$"
# 43 "data/maps/SlateportCity_Mart/scripts.pory"

# 44 "data/maps/SlateportCity_Mart/scripts.pory"
SlateportCity_Mart_Text_GreatBallIsBetter:
# 45 "data/maps/SlateportCity_Mart/scripts.pory"
	.string "Generations ago, SLATEPORT was just\n"
# 46 "data/maps/SlateportCity_Mart/scripts.pory"
	.string "a humble fishing village.\p"
# 47 "data/maps/SlateportCity_Mart/scripts.pory"
	.string "Now? It's HOENN's gateway to the world.\n"
# 48 "data/maps/SlateportCity_Mart/scripts.pory"
	.string "Ships from JOHTO, KANTO, even far off\l"
# 49 "data/maps/SlateportCity_Mart/scripts.pory"
	.string "regions dock here every week.\p"
# 50 "data/maps/SlateportCity_Mart/scripts.pory"
	.string "The city's soul is salt and sea.$"
