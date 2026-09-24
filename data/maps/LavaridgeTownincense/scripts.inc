# 1 "data/maps/LavaridgeTownincense/scripts.pory"

# 2 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_MapScripts::
# 3 "data/maps/LavaridgeTownincense/scripts.pory"
	.byte 0
# 4 "data/maps/LavaridgeTownincense/scripts.pory"

# 5 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_EventScript_Merchant::
# 6 "data/maps/LavaridgeTownincense/scripts.pory"
	lock
# 7 "data/maps/LavaridgeTownincense/scripts.pory"
	faceplayer
# 8 "data/maps/LavaridgeTownincense/scripts.pory"
	message LavaridgeTownincense_Text_MerchantGreeting
# 9 "data/maps/LavaridgeTownincense/scripts.pory"
	waitmessage
# 10 "data/maps/LavaridgeTownincense/scripts.pory"
	setvar VAR_0x8004, 0
# 11 "data/maps/LavaridgeTownincense/scripts.pory"
	call_if_set FLAG_BADGE01_GET, LavaridgeTownincense_EventScript_CountBadge
# 12 "data/maps/LavaridgeTownincense/scripts.pory"
	call_if_set FLAG_BADGE02_GET, LavaridgeTownincense_EventScript_CountBadge
# 13 "data/maps/LavaridgeTownincense/scripts.pory"
	call_if_set FLAG_BADGE03_GET, LavaridgeTownincense_EventScript_CountBadge
# 14 "data/maps/LavaridgeTownincense/scripts.pory"
	call_if_set FLAG_BADGE04_GET, LavaridgeTownincense_EventScript_CountBadge
# 15 "data/maps/LavaridgeTownincense/scripts.pory"
	call_if_set FLAG_BADGE05_GET, LavaridgeTownincense_EventScript_CountBadge
# 16 "data/maps/LavaridgeTownincense/scripts.pory"
	call_if_set FLAG_BADGE06_GET, LavaridgeTownincense_EventScript_CountBadge
# 17 "data/maps/LavaridgeTownincense/scripts.pory"
	call_if_set FLAG_BADGE07_GET, LavaridgeTownincense_EventScript_CountBadge
# 18 "data/maps/LavaridgeTownincense/scripts.pory"
	call_if_set FLAG_BADGE08_GET, LavaridgeTownincense_EventScript_CountBadge
# 19 "data/maps/LavaridgeTownincense/scripts.pory"
	goto_if_ge VAR_0x8004, 8, LavaridgeTownincense_EventScript_Shop8Badges
# 20 "data/maps/LavaridgeTownincense/scripts.pory"
	goto_if_ge VAR_0x8004, 7, LavaridgeTownincense_EventScript_Shop7Badges
# 21 "data/maps/LavaridgeTownincense/scripts.pory"
	goto_if_ge VAR_0x8004, 6, LavaridgeTownincense_EventScript_Shop6Badges
# 22 "data/maps/LavaridgeTownincense/scripts.pory"
	goto_if_ge VAR_0x8004, 5, LavaridgeTownincense_EventScript_Shop5Badges
# 23 "data/maps/LavaridgeTownincense/scripts.pory"
	goto_if_ge VAR_0x8004, 4, LavaridgeTownincense_EventScript_Shop4Badges
# 24 "data/maps/LavaridgeTownincense/scripts.pory"
	pokemart LavaridgeTownincense_Pokemart_Base
# 25 "data/maps/LavaridgeTownincense/scripts.pory"
	goto LavaridgeTownincense_EventScript_Farewell
# 26 "data/maps/LavaridgeTownincense/scripts.pory"

# 27 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_EventScript_CountBadge::
# 28 "data/maps/LavaridgeTownincense/scripts.pory"
	addvar VAR_0x8004, 1
# 29 "data/maps/LavaridgeTownincense/scripts.pory"
	return
# 30 "data/maps/LavaridgeTownincense/scripts.pory"

# 31 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_EventScript_Shop4Badges::
# 32 "data/maps/LavaridgeTownincense/scripts.pory"
	pokemart LavaridgeTownincense_Pokemart_4Badges
# 33 "data/maps/LavaridgeTownincense/scripts.pory"
	goto LavaridgeTownincense_EventScript_Farewell
# 34 "data/maps/LavaridgeTownincense/scripts.pory"

# 35 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_EventScript_Shop5Badges::
# 36 "data/maps/LavaridgeTownincense/scripts.pory"
	pokemart LavaridgeTownincense_Pokemart_5Badges
# 37 "data/maps/LavaridgeTownincense/scripts.pory"
	goto LavaridgeTownincense_EventScript_Farewell
# 38 "data/maps/LavaridgeTownincense/scripts.pory"

# 39 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_EventScript_Shop6Badges::
# 40 "data/maps/LavaridgeTownincense/scripts.pory"
	pokemart LavaridgeTownincense_Pokemart_6Badges
# 41 "data/maps/LavaridgeTownincense/scripts.pory"
	goto LavaridgeTownincense_EventScript_Farewell
# 42 "data/maps/LavaridgeTownincense/scripts.pory"

# 43 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_EventScript_Shop7Badges::
# 44 "data/maps/LavaridgeTownincense/scripts.pory"
	pokemart LavaridgeTownincense_Pokemart_7Badges
# 45 "data/maps/LavaridgeTownincense/scripts.pory"
	goto LavaridgeTownincense_EventScript_Farewell
# 46 "data/maps/LavaridgeTownincense/scripts.pory"

# 47 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_EventScript_Shop8Badges::
# 48 "data/maps/LavaridgeTownincense/scripts.pory"
	pokemart LavaridgeTownincense_Pokemart_8Badges
# 49 "data/maps/LavaridgeTownincense/scripts.pory"
	goto LavaridgeTownincense_EventScript_Farewell
# 50 "data/maps/LavaridgeTownincense/scripts.pory"

# 51 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_EventScript_Farewell::
# 52 "data/maps/LavaridgeTownincense/scripts.pory"
	msgbox LavaridgeTownincense_Text_MerchantFarewell, MSGBOX_DEFAULT
# 53 "data/maps/LavaridgeTownincense/scripts.pory"
	release
# 54 "data/maps/LavaridgeTownincense/scripts.pory"
	end
# 55 "data/maps/LavaridgeTownincense/scripts.pory"

# 56 "data/maps/LavaridgeTownincense/scripts.pory"
	.align 2
# 57 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_Pokemart_Base:
# 58 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_FULL_INCENSE
# 59 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_LAX_INCENSE
# 60 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_PURE_INCENSE
# 61 "data/maps/LavaridgeTownincense/scripts.pory"
	pokemartlistend
# 62 "data/maps/LavaridgeTownincense/scripts.pory"

# 63 "data/maps/LavaridgeTownincense/scripts.pory"
	.align 2
# 64 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_Pokemart_4Badges:
# 65 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_FULL_INCENSE
# 66 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_LAX_INCENSE
# 67 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_PURE_INCENSE
# 68 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_SEA_INCENSE
# 69 "data/maps/LavaridgeTownincense/scripts.pory"
	pokemartlistend
# 70 "data/maps/LavaridgeTownincense/scripts.pory"

# 71 "data/maps/LavaridgeTownincense/scripts.pory"
	.align 2
# 72 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_Pokemart_5Badges:
# 73 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_FULL_INCENSE
# 74 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_LAX_INCENSE
# 75 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_PURE_INCENSE
# 76 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_SEA_INCENSE
# 77 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_LUCK_INCENSE
# 78 "data/maps/LavaridgeTownincense/scripts.pory"
	pokemartlistend
# 79 "data/maps/LavaridgeTownincense/scripts.pory"

# 80 "data/maps/LavaridgeTownincense/scripts.pory"
	.align 2
# 81 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_Pokemart_6Badges:
# 82 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_FULL_INCENSE
# 83 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_LAX_INCENSE
# 84 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_PURE_INCENSE
# 85 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_SEA_INCENSE
# 86 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_LUCK_INCENSE
# 87 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_ROCK_INCENSE
# 88 "data/maps/LavaridgeTownincense/scripts.pory"
	pokemartlistend
# 89 "data/maps/LavaridgeTownincense/scripts.pory"

# 90 "data/maps/LavaridgeTownincense/scripts.pory"
	.align 2
# 91 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_Pokemart_7Badges:
# 92 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_FULL_INCENSE
# 93 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_LAX_INCENSE
# 94 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_PURE_INCENSE
# 95 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_SEA_INCENSE
# 96 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_LUCK_INCENSE
# 97 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_ROCK_INCENSE
# 98 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_ODD_INCENSE
# 99 "data/maps/LavaridgeTownincense/scripts.pory"
	pokemartlistend
# 100 "data/maps/LavaridgeTownincense/scripts.pory"

# 101 "data/maps/LavaridgeTownincense/scripts.pory"
	.align 2
# 102 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_Pokemart_8Badges:
# 103 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_FULL_INCENSE
# 104 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_LAX_INCENSE
# 105 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_PURE_INCENSE
# 106 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_SEA_INCENSE
# 107 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_LUCK_INCENSE
# 108 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_ROCK_INCENSE
# 109 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_ODD_INCENSE
# 110 "data/maps/LavaridgeTownincense/scripts.pory"
	.2byte ITEM_ROSE_INCENSE
# 111 "data/maps/LavaridgeTownincense/scripts.pory"
	pokemartlistend
# 112 "data/maps/LavaridgeTownincense/scripts.pory"

# 113 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_EventScript_Husband::
# 114 "data/maps/LavaridgeTownincense/scripts.pory"
	msgbox LavaridgeTownincense_Text_Husband, MSGBOX_NPC
# 115 "data/maps/LavaridgeTownincense/scripts.pory"
	end
# 116 "data/maps/LavaridgeTownincense/scripts.pory"

# 117 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_Text_MerchantGreeting:
# 118 "data/maps/LavaridgeTownincense/scripts.pory"
	.string "Hello hello! I love incense.\p"
# 119 "data/maps/LavaridgeTownincense/scripts.pory"
	.string "In fact, I love it so much that I\n"
# 120 "data/maps/LavaridgeTownincense/scripts.pory"
	.string "want everyone to have some!\p"
# 121 "data/maps/LavaridgeTownincense/scripts.pory"
	.string "But it's so expensive, I'd go broke\n"
# 122 "data/maps/LavaridgeTownincense/scripts.pory"
	.string "if I just gave it away!\p"
# 123 "data/maps/LavaridgeTownincense/scripts.pory"
	.string "Here, I'll sell it to you!$"
# 124 "data/maps/LavaridgeTownincense/scripts.pory"

# 125 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_Text_MerchantFarewell:
# 126 "data/maps/LavaridgeTownincense/scripts.pory"
	.string "Come back again! I know you will.\p"
# 127 "data/maps/LavaridgeTownincense/scripts.pory"
	.string "Everyone loves incense!$"
# 128 "data/maps/LavaridgeTownincense/scripts.pory"

# 129 "data/maps/LavaridgeTownincense/scripts.pory"
LavaridgeTownincense_Text_Husband:
# 130 "data/maps/LavaridgeTownincense/scripts.pory"
	.string "My husband is completely obsessed\n"
# 131 "data/maps/LavaridgeTownincense/scripts.pory"
	.string "with incense.\p"
# 132 "data/maps/LavaridgeTownincense/scripts.pory"
	.string "Every drawer, pot, and cabinet in\n"
# 133 "data/maps/LavaridgeTownincense/scripts.pory"
	.string "our house is stuffed with it.\p"
# 134 "data/maps/LavaridgeTownincense/scripts.pory"
	.string "Please, for the love of ARCEUS,\n"
# 135 "data/maps/LavaridgeTownincense/scripts.pory"
	.string "buy some and get it out of here...$"
