# 1 "data/maps/GraniteCave_1F/scripts.pory"

# 2 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_MapScripts::
# 3 "data/maps/GraniteCave_1F/scripts.pory"
	.byte 0
# 4 "data/maps/GraniteCave_1F/scripts.pory"

# 5 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_EventScript_Aurora::
# 6 "data/maps/GraniteCave_1F/scripts.pory"
	lock
# 7 "data/maps/GraniteCave_1F/scripts.pory"
	faceplayer
# 8 "data/maps/GraniteCave_1F/scripts.pory"
	goto_if_set FLAG_RECEIVED_HM_FLASH, GraniteCave_1F_EventScript_ReceivedFlash
# 9 "data/maps/GraniteCave_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_GRANITE_CAVE_AURORA, GraniteCave_1F_EventScript_GiveFlash
# 10 "data/maps/GraniteCave_1F/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 11 "data/maps/GraniteCave_1F/scripts.pory"
	msgbox GraniteCave_1F_Text_WantToBattle, MSGBOX_DEFAULT
# 12 "data/maps/GraniteCave_1F/scripts.pory"
	removefieldmugshot
# 13 "data/maps/GraniteCave_1F/scripts.pory"
	trainerbattle_single TRAINER_AURORA, GraniteCave_1F_Text_Intro, GraniteCave_1F_Text_Defeat, GraniteCave_1F_EventScript_BattleEnd
# 14 "data/maps/GraniteCave_1F/scripts.pory"
	end
# 15 "data/maps/GraniteCave_1F/scripts.pory"

# 16 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_EventScript_BattleEnd::
# 17 "data/maps/GraniteCave_1F/scripts.pory"
	setflag FLAG_DEFEATED_GRANITE_CAVE_AURORA
# 18 "data/maps/GraniteCave_1F/scripts.pory"
	msgbox GraniteCave_1F_Text_CometWasAmazing, MSGBOX_DEFAULT
# 19 "data/maps/GraniteCave_1F/scripts.pory"
	goto GraniteCave_1F_EventScript_GiveFlash
# 20 "data/maps/GraniteCave_1F/scripts.pory"
	end
# 21 "data/maps/GraniteCave_1F/scripts.pory"

# 22 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_EventScript_GiveFlash::
# 23 "data/maps/GraniteCave_1F/scripts.pory"
	msgbox GraniteCave_1F_Text_GetsDarkAheadHereYouGo, MSGBOX_DEFAULT
# 24 "data/maps/GraniteCave_1F/scripts.pory"
	giveitem ITEM_HM_FLASH
# 25 "data/maps/GraniteCave_1F/scripts.pory"
	setflag FLAG_RECEIVED_HM_FLASH
# 26 "data/maps/GraniteCave_1F/scripts.pory"
	msgbox GraniteCave_1F_Text_ExplainFlash, MSGBOX_DEFAULT
# 27 "data/maps/GraniteCave_1F/scripts.pory"
	closemessage
# 28 "data/maps/GraniteCave_1F/scripts.pory"
	closemessage
# 29 "data/maps/GraniteCave_1F/scripts.pory"
	playse SE_M_TELEPORT
# 30 "data/maps/GraniteCave_1F/scripts.pory"
	fadescreen FADE_TO_BLACK
# 31 "data/maps/GraniteCave_1F/scripts.pory"
	delay 60
# 32 "data/maps/GraniteCave_1F/scripts.pory"
	removeobject VAR_LAST_TALKED
# 33 "data/maps/GraniteCave_1F/scripts.pory"
	setflag FLAG_HIDE_GRANITE_CAVE_AURORA
# 34 "data/maps/GraniteCave_1F/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 35 "data/maps/GraniteCave_1F/scripts.pory"
	release
# 36 "data/maps/GraniteCave_1F/scripts.pory"
	end
# 37 "data/maps/GraniteCave_1F/scripts.pory"

# 38 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_EventScript_ReceivedFlash::
# 39 "data/maps/GraniteCave_1F/scripts.pory"
	msgbox GraniteCave_1F_Text_ExplainFlash, MSGBOX_DEFAULT
# 40 "data/maps/GraniteCave_1F/scripts.pory"
	release
# 41 "data/maps/GraniteCave_1F/scripts.pory"
	end
# 42 "data/maps/GraniteCave_1F/scripts.pory"

# 43 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_EventScript_HikerFlash::
# 44 "data/maps/GraniteCave_1F/scripts.pory"
	lock
# 45 "data/maps/GraniteCave_1F/scripts.pory"
	faceplayer
# 46 "data/maps/GraniteCave_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_GRANITE_CAVE_AURORA, GraniteCave_1F_EventScript_HikerPostAurora
# 47 "data/maps/GraniteCave_1F/scripts.pory"
	msgbox GraniteCave_1F_Text_HikerBlock, MSGBOX_DEFAULT
# 48 "data/maps/GraniteCave_1F/scripts.pory"
	closemessage
# 49 "data/maps/GraniteCave_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, GraniteCave_1F_Movement_PushBack
# 50 "data/maps/GraniteCave_1F/scripts.pory"
	waitmovement 0
# 51 "data/maps/GraniteCave_1F/scripts.pory"
	msgbox GraniteCave_1F_Text_HikerDanger, MSGBOX_DEFAULT
# 52 "data/maps/GraniteCave_1F/scripts.pory"
	release
# 53 "data/maps/GraniteCave_1F/scripts.pory"
	end
# 54 "data/maps/GraniteCave_1F/scripts.pory"

# 55 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_EventScript_HikerPostAurora::
# 56 "data/maps/GraniteCave_1F/scripts.pory"
	msgbox GraniteCave_1F_Text_HikerNormal, MSGBOX_DEFAULT
# 57 "data/maps/GraniteCave_1F/scripts.pory"
	release
# 58 "data/maps/GraniteCave_1F/scripts.pory"
	end
# 59 "data/maps/GraniteCave_1F/scripts.pory"

# 60 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_EventScript_TriggerFlash::
# 61 "data/maps/GraniteCave_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_GRANITE_CAVE_AURORA, GraniteCave_1F_EventScript_TriggerPass
# 62 "data/maps/GraniteCave_1F/scripts.pory"
	goto GraniteCave_1F_EventScript_HikerFlash
# 63 "data/maps/GraniteCave_1F/scripts.pory"

# 64 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_EventScript_TriggerPass::
# 65 "data/maps/GraniteCave_1F/scripts.pory"
	end
# 66 "data/maps/GraniteCave_1F/scripts.pory"

# 67 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_Movement_PushBack:
# 68 "data/maps/GraniteCave_1F/scripts.pory"
	walk_right
# 69 "data/maps/GraniteCave_1F/scripts.pory"
	step_end
# 70 "data/maps/GraniteCave_1F/scripts.pory"

# 71 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_Text_WantToBattle:
# 72 "data/maps/GraniteCave_1F/scripts.pory"
	.string "AURORA: The comet's light blessed me\n"
# 73 "data/maps/GraniteCave_1F/scripts.pory"
	.string "with power beyond imagination!\p"
# 74 "data/maps/GraniteCave_1F/scripts.pory"
	.string "You carry a strange energy yourself…\n"
# 75 "data/maps/GraniteCave_1F/scripts.pory"
	.string "Let me test its strength!\p"
# 76 "data/maps/GraniteCave_1F/scripts.pory"
	.string "Face the will of the comet!$"
# 77 "data/maps/GraniteCave_1F/scripts.pory"

# 78 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_Text_Intro:
# 79 "data/maps/GraniteCave_1F/scripts.pory"
	.string "The celestial light flows through me!\n"
# 80 "data/maps/GraniteCave_1F/scripts.pory"
	.string "I see things others cannot…\p"
# 81 "data/maps/GraniteCave_1F/scripts.pory"
	.string "This comet is no mere rock in the sky.\n"
# 82 "data/maps/GraniteCave_1F/scripts.pory"
	.string "It is a message from beyond!\p"
# 83 "data/maps/GraniteCave_1F/scripts.pory"
	.string "Now witness the power it granted me!$"
# 84 "data/maps/GraniteCave_1F/scripts.pory"

# 85 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_Text_Defeat:
# 86 "data/maps/GraniteCave_1F/scripts.pory"
	.string "How…?\n"
# 87 "data/maps/GraniteCave_1F/scripts.pory"
	.string "Your light rivals the comet itself!$"
# 88 "data/maps/GraniteCave_1F/scripts.pory"

# 89 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_Text_CometWasAmazing:
# 90 "data/maps/GraniteCave_1F/scripts.pory"
	.string "When the comet passed over Hoenn,\n"
# 91 "data/maps/GraniteCave_1F/scripts.pory"
	.string "I felt its call deep in my soul.\p"
# 92 "data/maps/GraniteCave_1F/scripts.pory"
	.string "It showed me visions… warnings…\n"
# 93 "data/maps/GraniteCave_1F/scripts.pory"
	.string "A great crisis approaches this land.\p"
# 94 "data/maps/GraniteCave_1F/scripts.pory"
	.string "But you… you carry a different light.\n"
# 95 "data/maps/GraniteCave_1F/scripts.pory"
	.string "Perhaps you are the one destined to\l"
# 96 "data/maps/GraniteCave_1F/scripts.pory"
	.string "prevent what is to come.\p"
# 97 "data/maps/GraniteCave_1F/scripts.pory"
	.string "Take this. It will help you navigate\n"
# 98 "data/maps/GraniteCave_1F/scripts.pory"
	.string "the darkness ahead.$"
# 99 "data/maps/GraniteCave_1F/scripts.pory"

# 100 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_Text_GetsDarkAheadHereYouGo:
# 101 "data/maps/GraniteCave_1F/scripts.pory"
	.string "The caves ahead hold secrets.\n"
# 102 "data/maps/GraniteCave_1F/scripts.pory"
	.string "Secrets even the comet couldn't reveal.\p"
# 103 "data/maps/GraniteCave_1F/scripts.pory"
	.string "Use this FLASH to light your way.\n"
# 104 "data/maps/GraniteCave_1F/scripts.pory"
	.string "May it guide you as the comet guided me.$"
# 105 "data/maps/GraniteCave_1F/scripts.pory"

# 106 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_Text_ExplainFlash:
# 107 "data/maps/GraniteCave_1F/scripts.pory"
	.string "FLASH illuminates even the deepest\n"
# 108 "data/maps/GraniteCave_1F/scripts.pory"
	.string "darkness of caves.\p"
# 109 "data/maps/GraniteCave_1F/scripts.pory"
	.string "But to use it, you need the GYM BADGE\n"
# 110 "data/maps/GraniteCave_1F/scripts.pory"
	.string "from DEWFORD's POKéMON GYM.\p"
# 111 "data/maps/GraniteCave_1F/scripts.pory"
	.string "Go now. The path awaits, and with it,\n"
# 112 "data/maps/GraniteCave_1F/scripts.pory"
	.string "answers about the comet's message.$"
# 113 "data/maps/GraniteCave_1F/scripts.pory"

# 114 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_Text_HikerBlock:
# 115 "data/maps/GraniteCave_1F/scripts.pory"
	.string "Huh! Hey kid, wait up!\n"
# 116 "data/maps/GraniteCave_1F/scripts.pory"
	.string "Are you crazy?$"
# 117 "data/maps/GraniteCave_1F/scripts.pory"

# 118 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_Text_HikerDanger:
# 119 "data/maps/GraniteCave_1F/scripts.pory"
	.string "Going into this cave without any way\n"
# 120 "data/maps/GraniteCave_1F/scripts.pory"
	.string "to light up the path is way too dangerous!\p"
# 121 "data/maps/GraniteCave_1F/scripts.pory"
	.string "NO CHANCE! Turn back while you still can.$"
# 122 "data/maps/GraniteCave_1F/scripts.pory"

# 123 "data/maps/GraniteCave_1F/scripts.pory"
GraniteCave_1F_Text_HikerNormal:
# 124 "data/maps/GraniteCave_1F/scripts.pory"
	.string "Yo! This Granite Cave has been\n"
# 125 "data/maps/GraniteCave_1F/scripts.pory"
	.string "coveted for its precious stones…\p"
# 126 "data/maps/GraniteCave_1F/scripts.pory"
	.string "Be careful if you're going to explore.\n"
# 127 "data/maps/GraniteCave_1F/scripts.pory"
	.string "Strangers have been lurking around here.$"
