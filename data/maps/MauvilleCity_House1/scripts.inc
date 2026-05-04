# 1 "data/maps/MauvilleCity_House1/scripts.pory"

# 2 "data/maps/MauvilleCity_House1/scripts.pory"
MauvilleCity_House1_MapScripts::
# 3 "data/maps/MauvilleCity_House1/scripts.pory"
	.byte 0
# 4 "data/maps/MauvilleCity_House1/scripts.pory"

# 5 "data/maps/MauvilleCity_House1/scripts.pory"
MauvilleCity_House1_EventScript_RockSmashDude::
# 6 "data/maps/MauvilleCity_House1/scripts.pory"
	lock
# 7 "data/maps/MauvilleCity_House1/scripts.pory"
	faceplayer
# 8 "data/maps/MauvilleCity_House1/scripts.pory"
	goto_if_set FLAG_RECEIVED_HM_ROCK_SMASH, MauvilleCity_House1_EventScript_ReceivedRockSmash
# 9 "data/maps/MauvilleCity_House1/scripts.pory"
	msgbox MauvilleCity_House1_Text_ImRockSmashDudeTakeThis, MSGBOX_DEFAULT
# 10 "data/maps/MauvilleCity_House1/scripts.pory"
	giveitem ITEM_HM_ROCK_SMASH
# 11 "data/maps/MauvilleCity_House1/scripts.pory"
	setflag FLAG_RECEIVED_HM_ROCK_SMASH
# 12 "data/maps/MauvilleCity_House1/scripts.pory"
	setflag FLAG_HIDE_ROUTE_111_ROCK_SMASH_TIP_GUY
# 13 "data/maps/MauvilleCity_House1/scripts.pory"
	msgbox MauvilleCity_House1_Text_ExplainRockSmash, MSGBOX_DEFAULT
# 14 "data/maps/MauvilleCity_House1/scripts.pory"
	release
# 15 "data/maps/MauvilleCity_House1/scripts.pory"
	end
# 16 "data/maps/MauvilleCity_House1/scripts.pory"

# 17 "data/maps/MauvilleCity_House1/scripts.pory"
MauvilleCity_House1_EventScript_ReceivedRockSmash::
# 18 "data/maps/MauvilleCity_House1/scripts.pory"
	msgbox MauvilleCity_House1_Text_MonCanFlyOutOfSmashedRock, MSGBOX_DEFAULT
# 19 "data/maps/MauvilleCity_House1/scripts.pory"
	release
# 20 "data/maps/MauvilleCity_House1/scripts.pory"
	end
# 21 "data/maps/MauvilleCity_House1/scripts.pory"

# 22 "data/maps/MauvilleCity_House1/scripts.pory"
MauvilleCity_House1_Text_ImRockSmashDudeTakeThis:
# 23 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "Hold on. Wait a second.\p"
# 24 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "You fought RENTON back in\n"
# 25 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "the second Gym city?\p"
# 26 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "And you beat him?\p"
# 27 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "Hah. That's impressive, kid.\p"
# 28 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "Renton and I go way back.\n"
# 29 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "Drinks, fights, broken tables.\p"
# 30 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "He respected strength.\n"
# 31 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "So did I.\p"
# 32 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "They used to call me the\n"
# 33 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "ROCK SMASH DUDE.\p"
# 34 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "If Renton acknowledged you,\n"
# 35 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "then you earned this.\p"
# 36 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "Take it.$"
# 37 "data/maps/MauvilleCity_House1/scripts.pory"

# 38 "data/maps/MauvilleCity_House1/scripts.pory"
MauvilleCity_House1_Text_ExplainRockSmash:
# 39 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "That HM teaches ROCK SMASH.\p"
# 40 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "Some obstacles are not meant\n"
# 41 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "to be avoided.\p"
# 42 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "They are meant to be broken.\p"
# 43 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "Use it on cracked rocks.\n"
# 44 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "Make your own path.$"
# 45 "data/maps/MauvilleCity_House1/scripts.pory"

# 46 "data/maps/MauvilleCity_House1/scripts.pory"
MauvilleCity_House1_Text_MonCanFlyOutOfSmashedRock:
# 47 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "One warning.\p"
# 48 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "When you smash rocks,\n"
# 49 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "something might strike back.\p"
# 50 "data/maps/MauvilleCity_House1/scripts.pory"
	.string "Strength always draws attention.$"
