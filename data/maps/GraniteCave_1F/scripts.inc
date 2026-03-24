GraniteCave_1F_MapScripts::
	.byte 0

GraniteCave_1F_EventScript_Hiker::
	lock
	faceplayer
	goto_if_set FLAG_RECEIVED_HM_FLASH, GraniteCave_1F_EventScript_ReceivedFlash
	goto_if_set FLAG_DEFEATED_GRANITE_CAVE_HIKER, GraniteCave_1F_EventScript_GiveFlash
	msgbox GraniteCave_1F_Text_WantToBattle, MSGBOX_DEFAULT
	trainerbattle_single TRAINER_LIO, GraniteCave_1F_Text_Intro, GraniteCave_1F_Text_Defeat, GraniteCave_1F_EventScript_BattleEnd
	end

GraniteCave_1F_EventScript_BattleEnd::
	setflag FLAG_DEFEATED_GRANITE_CAVE_HIKER
	msgbox GraniteCave_1F_Text_CometWasAmazing, MSGBOX_DEFAULT
	goto GraniteCave_1F_EventScript_GiveFlash
	end

GraniteCave_1F_EventScript_GiveFlash::
	msgbox GraniteCave_1F_Text_GetsDarkAheadHereYouGo, MSGBOX_DEFAULT
	giveitem ITEM_HM_FLASH
	setflag FLAG_RECEIVED_HM_FLASH
	msgbox GraniteCave_1F_Text_ExplainFlash, MSGBOX_DEFAULT
	release
	end

GraniteCave_1F_EventScript_ReceivedFlash::
	msgbox GraniteCave_1F_Text_ExplainFlash, MSGBOX_DEFAULT
	release
	end

GraniteCave_1F_Text_WantToBattle:
	.string "Hey, you!\n"
	.string "You look like a strong TRAINER.\p"
	.string "I've been itching for a battle ever\n"
	.string "since I saw that comet light up the sky!\p"
	.string "What do you say?\n"
	.string "Let's battle!$"

GraniteCave_1F_Text_Intro:
	.string "I've been training extra hard since\n"
	.string "that comet passed through Hoenn!\p"
	.string "Its light was something else!\n"
	.string "Now show me what you've got!$"

GraniteCave_1F_Text_Defeat:
	.string "Whoa…\n"
	.string "You're stronger than I expected!$"

GraniteCave_1F_Text_CometWasAmazing:
	.string "That comet was incredible, wasn't it?\n"
	.string "The way it lit up the whole region…\p"
	.string "I've been obsessed with it ever since.\n"
	.string "Couldn't stop thinking about that light.\p"
	.string "But you… you've got a different kind\n"
	.string "of light in your eyes.\p"
	.string "Alright, take this.\n"
	.string "It'll help you explore deeper.$"

GraniteCave_1F_Text_GetsDarkAheadHereYouGo:
	.string "It gets awfully dark ahead.\n"
	.string "It'll be tough trying to explore.\p"
	.string "That guy who came by earlier…\n"
	.string "STEVEN, I think it was.\p"
	.string "He knew how to use FLASH, so he ought\n"
	.string "to be all right, but…\p"
	.string "Well, for us HIKERS, helping out those\n"
	.string "that we meet is our motto.\p"
	.string "Here you go, I'll pass this on to you.$"

GraniteCave_1F_Text_ExplainFlash:
	.string "Teach that hidden move FLASH to\n"
	.string "a POKéMON and use it.\p"
	.string "It lights up even the inky darkness\n"
	.string "of caves.\p"
	.string "But, to use it, you need the GYM BADGE\n"
	.string "from DEWFORD's POKéMON GYM.$"



