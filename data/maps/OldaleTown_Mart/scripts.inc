# 1 "data/maps/OldaleTown_Mart/scripts.pory"

# 2 "data/maps/OldaleTown_Mart/scripts.pory"
OldaleTown_Mart_MapScripts::
# 3 "data/maps/OldaleTown_Mart/scripts.pory"
	.byte 0
# 4 "data/maps/OldaleTown_Mart/scripts.pory"

# 5 "data/maps/OldaleTown_Mart/scripts.pory"
OldaleTown_Mart_EventScript_Clerk::
# 6 "data/maps/OldaleTown_Mart/scripts.pory"
	lock
# 7 "data/maps/OldaleTown_Mart/scripts.pory"
	faceplayer
# 8 "data/maps/OldaleTown_Mart/scripts.pory"
	message gText_HowMayIServeYou
# 9 "data/maps/OldaleTown_Mart/scripts.pory"
	waitmessage
# 10 "data/maps/OldaleTown_Mart/scripts.pory"
	pokemart OldaleTown_Mart_Pokemart_Basic
# 11 "data/maps/OldaleTown_Mart/scripts.pory"
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
# 12 "data/maps/OldaleTown_Mart/scripts.pory"
	release
# 13 "data/maps/OldaleTown_Mart/scripts.pory"
	end
# 14 "data/maps/OldaleTown_Mart/scripts.pory"

# 15 "data/maps/OldaleTown_Mart/scripts.pory"
	.align 2
# 16 "data/maps/OldaleTown_Mart/scripts.pory"
OldaleTown_Mart_Pokemart_Basic:
# 17 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_LONELY_MINT
# 18 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_ADAMANT_MINT
# 19 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_NAUGHTY_MINT
# 20 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_BRAVE_MINT
# 21 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_BOLD_MINT
# 22 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_IMPISH_MINT
# 23 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_LAX_MINT
# 24 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_RELAXED_MINT
# 25 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_MODEST_MINT
# 26 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_MILD_MINT
# 27 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_RASH_MINT
# 28 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_QUIET_MINT
# 29 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_CALM_MINT
# 30 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_GENTLE_MINT
# 31 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_CAREFUL_MINT
# 32 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_SASSY_MINT
# 33 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_TIMID_MINT
# 34 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_HASTY_MINT
# 35 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_JOLLY_MINT
# 36 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_NAIVE_MINT
# 37 "data/maps/OldaleTown_Mart/scripts.pory"
	.2byte ITEM_SERIOUS_MINT
# 38 "data/maps/OldaleTown_Mart/scripts.pory"
	pokemartlistend
# 39 "data/maps/OldaleTown_Mart/scripts.pory"

# 40 "data/maps/OldaleTown_Mart/scripts.pory"
OldaleTown_Mart_EventScript_Woman::
# 41 "data/maps/OldaleTown_Mart/scripts.pory"
	lock
# 42 "data/maps/OldaleTown_Mart/scripts.pory"
	faceplayer
# 43 "data/maps/OldaleTown_Mart/scripts.pory"
	goto_if_set FLAG_ADVENTURE_STARTED, OldaleTown_Mart_EventScript_PokeBallsInStock
# 44 "data/maps/OldaleTown_Mart/scripts.pory"
	msgbox OldaleTown_Mart_Text_PokeBallsAreSoldOut, MSGBOX_DEFAULT
# 45 "data/maps/OldaleTown_Mart/scripts.pory"
	release
# 46 "data/maps/OldaleTown_Mart/scripts.pory"
	end
# 47 "data/maps/OldaleTown_Mart/scripts.pory"

# 48 "data/maps/OldaleTown_Mart/scripts.pory"
OldaleTown_Mart_EventScript_PokeBallsInStock::
# 49 "data/maps/OldaleTown_Mart/scripts.pory"
	msgbox OldaleTown_Mart_Text_ImGoingToBuyPokeBalls, MSGBOX_DEFAULT
# 50 "data/maps/OldaleTown_Mart/scripts.pory"
	release
# 51 "data/maps/OldaleTown_Mart/scripts.pory"
	end
# 52 "data/maps/OldaleTown_Mart/scripts.pory"

# 53 "data/maps/OldaleTown_Mart/scripts.pory"
OldaleTown_Mart_EventScript_Boy::
# 54 "data/maps/OldaleTown_Mart/scripts.pory"
	msgbox OldaleTown_Mart_Text_RestoreHPWithPotion, MSGBOX_NPC
# 55 "data/maps/OldaleTown_Mart/scripts.pory"
	end
# 56 "data/maps/OldaleTown_Mart/scripts.pory"

# 57 "data/maps/OldaleTown_Mart/scripts.pory"
OldaleTown_Mart_Text_PokeBallsAreSoldOut:
# 58 "data/maps/OldaleTown_Mart/scripts.pory"
    .string "They say some strange POKéMON have\n"
# 59 "data/maps/OldaleTown_Mart/scripts.pory"
    .string "been seen around Oldale lately.\p"
# 60 "data/maps/OldaleTown_Mart/scripts.pory"
    .string "Because of that, everyone's been buying\n"
# 61 "data/maps/OldaleTown_Mart/scripts.pory"
    .string "items like crazy.\p"
# 62 "data/maps/OldaleTown_Mart/scripts.pory"
    .string "Now the clerk says they're sold out...$"
# 63 "data/maps/OldaleTown_Mart/scripts.pory"

# 64 "data/maps/OldaleTown_Mart/scripts.pory"
OldaleTown_Mart_Text_ImGoingToBuyPokeBalls:
# 65 "data/maps/OldaleTown_Mart/scripts.pory"
    .string "Where did you get that outfit?\n"
# 66 "data/maps/OldaleTown_Mart/scripts.pory"
    .string "It looks like a full-on costume!\p"
# 67 "data/maps/OldaleTown_Mart/scripts.pory"
    .string "Do they sell stuff like that here in\n"
# 68 "data/maps/OldaleTown_Mart/scripts.pory"
    .string "the MART? I kinda want one too!$"
# 69 "data/maps/OldaleTown_Mart/scripts.pory"

# 70 "data/maps/OldaleTown_Mart/scripts.pory"
OldaleTown_Mart_Text_RestoreHPWithPotion:
# 71 "data/maps/OldaleTown_Mart/scripts.pory"
    .string "If you're heading out to check the\n"
# 72 "data/maps/OldaleTown_Mart/scripts.pory"
    .string "weird POKéMON around Oldale, be careful.\p"
# 73 "data/maps/OldaleTown_Mart/scripts.pory"
    .string "Keep some POTIONS with you so your\n"
# 74 "data/maps/OldaleTown_Mart/scripts.pory"
    .string "POKéMON don't faint out there.$"
