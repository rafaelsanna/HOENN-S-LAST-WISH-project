# 1 "data/maps/Route109ballshop/scripts.pory"

# 2 "data/maps/Route109ballshop/scripts.pory"
Route109ballshop_MapScripts::
# 3 "data/maps/Route109ballshop/scripts.pory"
	.byte 0
# 4 "data/maps/Route109ballshop/scripts.pory"

# 5 "data/maps/Route109ballshop/scripts.pory"
Route109ballshop_EventScript_Merchant::
# 6 "data/maps/Route109ballshop/scripts.pory"
	lock
# 7 "data/maps/Route109ballshop/scripts.pory"
	faceplayer
# 8 "data/maps/Route109ballshop/scripts.pory"
	message Route109ballshop_Text_MerchantGreeting
# 9 "data/maps/Route109ballshop/scripts.pory"
	waitmessage
# 10 "data/maps/Route109ballshop/scripts.pory"
	pokemart Route109ballshop_Pokemart
# 11 "data/maps/Route109ballshop/scripts.pory"
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
# 12 "data/maps/Route109ballshop/scripts.pory"
	release
# 13 "data/maps/Route109ballshop/scripts.pory"
	end
# 14 "data/maps/Route109ballshop/scripts.pory"

# 15 "data/maps/Route109ballshop/scripts.pory"
	.align 2
# 16 "data/maps/Route109ballshop/scripts.pory"
Route109ballshop_Pokemart:
# 17 "data/maps/Route109ballshop/scripts.pory"
	.2byte ITEM_DUSK_BALL
# 18 "data/maps/Route109ballshop/scripts.pory"
	.2byte ITEM_LUXURY_BALL
# 19 "data/maps/Route109ballshop/scripts.pory"
	.2byte ITEM_QUICK_BALL
# 20 "data/maps/Route109ballshop/scripts.pory"
	.2byte ITEM_LURE_BALL
# 21 "data/maps/Route109ballshop/scripts.pory"
	.2byte ITEM_HEAVY_BALL
# 22 "data/maps/Route109ballshop/scripts.pory"
	.2byte ITEM_LOVE_BALL
# 23 "data/maps/Route109ballshop/scripts.pory"
	.2byte ITEM_LEVEL_BALL
# 24 "data/maps/Route109ballshop/scripts.pory"
	.2byte ITEM_FAST_BALL
# 25 "data/maps/Route109ballshop/scripts.pory"
	.2byte ITEM_MOON_BALL
# 26 "data/maps/Route109ballshop/scripts.pory"
	pokemartlistend
# 27 "data/maps/Route109ballshop/scripts.pory"

# 28 "data/maps/Route109ballshop/scripts.pory"
Route109ballshop_EventScript_Customer::
# 29 "data/maps/Route109ballshop/scripts.pory"
	msgbox Route109ballshop_Text_Customer, MSGBOX_NPC
# 30 "data/maps/Route109ballshop/scripts.pory"
	end
# 31 "data/maps/Route109ballshop/scripts.pory"

# 32 "data/maps/Route109ballshop/scripts.pory"
Route109ballshop_Text_MerchantGreeting:
# 33 "data/maps/Route109ballshop/scripts.pory"
	.string "Welcome to the POKE BALL shop!\p"
# 34 "data/maps/Route109ballshop/scripts.pory"
	.string "We import POKE BALLS from all over\n"
# 35 "data/maps/Route109ballshop/scripts.pory"
	.string "the world. Would you like to take a\l"
# 36 "data/maps/Route109ballshop/scripts.pory"
	.string "look at our stock?$"
# 37 "data/maps/Route109ballshop/scripts.pory"

# 38 "data/maps/Route109ballshop/scripts.pory"
Route109ballshop_Text_Customer:
# 39 "data/maps/Route109ballshop/scripts.pory"
	.string "This shop sells POKE BALLS that\n"
# 40 "data/maps/Route109ballshop/scripts.pory"
	.string "are found nowhere else in HOENN.\p"
# 41 "data/maps/Route109ballshop/scripts.pory"
	.string "Isn't global trade amazing?$"
