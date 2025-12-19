MauvilleCity_House1_MapScripts::
	.byte 0

MauvilleCity_House1_EventScript_RockSmashDude::
	lock
	faceplayer
	goto_if_set FLAG_RECEIVED_HM_ROCK_SMASH, MauvilleCity_House1_EventScript_ReceivedRockSmash
	msgbox MauvilleCity_House1_Text_ImRockSmashDudeTakeThis, MSGBOX_DEFAULT
	giveitem ITEM_HM_ROCK_SMASH
	setflag FLAG_RECEIVED_HM_ROCK_SMASH
	setflag FLAG_HIDE_ROUTE_111_ROCK_SMASH_TIP_GUY
	msgbox MauvilleCity_House1_Text_ExplainRockSmash, MSGBOX_DEFAULT
	release
	end

MauvilleCity_House1_EventScript_ReceivedRockSmash::
	msgbox MauvilleCity_House1_Text_MonCanFlyOutOfSmashedRock, MSGBOX_DEFAULT
	release
	end

MauvilleCity_House1_Text_ImRockSmashDudeTakeThis:
	.string "Hold on. Wait a second.\p"
	.string "You fought RENTON back in\n"
	.string "the second Gym city?\p"
	.string "And you beat him?\p"
	.string "Hah. That's impressive, kid.\p"
	.string "Renton and I go way back.\n"
	.string "Drinks, fights, broken tables.\p"
	.string "He respected strength.\n"
	.string "So did I.\p"
	.string "They used to call me the\n"
	.string "ROCK SMASH DUDE.\p"
	.string "If Renton acknowledged you,\n"
	.string "then you earned this.\p"
	.string "Take it.$"

MauvilleCity_House1_Text_ExplainRockSmash:
	.string "That HM teaches ROCK SMASH.\p"
	.string "Some obstacles are not meant\n"
	.string "to be avoided.\p"
	.string "They are meant to be broken.\p"
	.string "Use it on cracked rocks.\n"
	.string "Make your own path.$"

MauvilleCity_House1_Text_MonCanFlyOutOfSmashedRock:
	.string "One warning.\p"
	.string "When you smash rocks,\n"
	.string "something might strike back.\p"
	.string "Strength always draws attention.$"
	

