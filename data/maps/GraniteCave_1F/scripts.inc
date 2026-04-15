GraniteCave_1F_MapScripts::
	.byte 0

GraniteCave_1F_EventScript_Aurora::
	lock
	faceplayer
	goto_if_set FLAG_RECEIVED_HM_FLASH, GraniteCave_1F_EventScript_ReceivedFlash
	goto_if_set FLAG_DEFEATED_GRANITE_CAVE_AURORA, GraniteCave_1F_EventScript_GiveFlash
	msgbox GraniteCave_1F_Text_WantToBattle, MSGBOX_DEFAULT
	trainerbattle_single TRAINER_AURORA, GraniteCave_1F_Text_Intro, GraniteCave_1F_Text_Defeat, GraniteCave_1F_EventScript_BattleEnd
	end

GraniteCave_1F_EventScript_BattleEnd::
	setflag FLAG_DEFEATED_GRANITE_CAVE_AURORA
	msgbox GraniteCave_1F_Text_CometWasAmazing, MSGBOX_DEFAULT
	goto GraniteCave_1F_EventScript_GiveFlash
	end

GraniteCave_1F_EventScript_GiveFlash::
	msgbox GraniteCave_1F_Text_GetsDarkAheadHereYouGo, MSGBOX_DEFAULT
	giveitem ITEM_HM_FLASH
	setflag FLAG_RECEIVED_HM_FLASH
	msgbox GraniteCave_1F_Text_ExplainFlash, MSGBOX_DEFAULT
	closemessage
	closemessage
	playse SE_M_TELEPORT
	fadescreen FADE_TO_BLACK
	delay 60
	removeobject VAR_LAST_TALKED
	setflag FLAG_HIDE_GRANITE_CAVE_AURORA
	fadescreen FADE_FROM_BLACK
	release
	end

GraniteCave_1F_EventScript_ReceivedFlash::
	msgbox GraniteCave_1F_Text_ExplainFlash, MSGBOX_DEFAULT
	release
	end

GraniteCave_1F_EventScript_HikerFlash::
	lock
	faceplayer
	goto_if_set FLAG_DEFEATED_GRANITE_CAVE_AURORA, GraniteCave_1F_EventScript_HikerPostAurora
	msgbox GraniteCave_1F_Text_HikerBlock, MSGBOX_DEFAULT
	closemessage
	applymovement OBJ_EVENT_ID_PLAYER, GraniteCave_1F_Movement_PushBack
	waitmovement 0
	msgbox GraniteCave_1F_Text_HikerDanger, MSGBOX_DEFAULT
	release
	end

GraniteCave_1F_EventScript_HikerPostAurora::
	msgbox GraniteCave_1F_Text_HikerNormal, MSGBOX_DEFAULT
	release
	end

GraniteCave_1F_EventScript_TriggerFlash::
	goto_if_set FLAG_DEFEATED_GRANITE_CAVE_AURORA, GraniteCave_1F_EventScript_TriggerPass
	goto GraniteCave_1F_EventScript_HikerFlash

GraniteCave_1F_EventScript_TriggerPass::
	end

GraniteCave_1F_Movement_PushBack:
	walk_right
	step_end

GraniteCave_1F_Text_WantToBattle:
	.string "AURORA: The comet's light blessed me\n"
	.string "with power beyond imagination!\p"
	.string "You carry a strange energy yourself…\n"
	.string "Let me test its strength!\p"
	.string "Face the will of the comet!$"

GraniteCave_1F_Text_Intro:
	.string "The celestial light flows through me!\n"
	.string "I see things others cannot…\p"
	.string "This comet is no mere rock in the sky.\n"
	.string "It is a message from beyond!\p"
	.string "Now witness the power it granted me!$"

GraniteCave_1F_Text_Defeat:
	.string "How…?\n"
	.string "Your light rivals the comet itself!$"

GraniteCave_1F_Text_CometWasAmazing:
	.string "When the comet passed over Hoenn,\n"
	.string "I felt its call deep in my soul.\p"
	.string "It showed me visions… warnings…\n"
	.string "A great crisis approaches this land.\p"
	.string "But you… you carry a different light.\n"
	.string "Perhaps you are the one destined to\l"
	.string "prevent what is to come.\p"
	.string "Take this. It will help you navigate\n"
	.string "the darkness ahead.$"

GraniteCave_1F_Text_GetsDarkAheadHereYouGo:
	.string "The caves ahead hold secrets.\n"
	.string "Secrets even the comet couldn't reveal.\p"
	.string "Use this FLASH to light your way.\n"
	.string "May it guide you as the comet guided me.$"

GraniteCave_1F_Text_ExplainFlash:
	.string "FLASH illuminates even the deepest\n"
	.string "darkness of caves.\p"
	.string "But to use it, you need the GYM BADGE\n"
	.string "from DEWFORD's POKéMON GYM.\p"
	.string "Go now. The path awaits, and with it,\n"
	.string "answers about the comet's message.$"

GraniteCave_1F_Text_HikerBlock:
	.string "Huh! Hey kid, wait up!\n"
	.string "Are you crazy?$"

GraniteCave_1F_Text_HikerDanger:
	.string "Going into this cave without any way\n"
	.string "to light up the path is way too dangerous!\p"
	.string "NO CHANCE! Turn back while you still can.$"

GraniteCave_1F_Text_HikerNormal:
	.string "Yo! This Granite Cave has been\n"
	.string "coveted for its precious stones…\p"
	.string "Be careful if you're going to explore.\n"
	.string "Strangers have been lurking around here.$"





