Route120_FrogsHouse_MapScripts::
	.byte 0

Route120_FrogsHouse_EventScript_Poliwag::
	lock
	faceplayer
	playmoncry SPECIES_POLIWAG, CRY_MODE_NORMAL
	waitmoncry
	release
	end

Route120_FrogsHouse_EventScript_Politoed::
	lock
	faceplayer
	playmoncry SPECIES_POLITOED, CRY_MODE_NORMAL
	waitmoncry
	release
	end

Route120_FrogsHouse_EventScript_FrogFan::
	lock
	faceplayer
	goto_if_set FLAG_RECEIVED_FROGS_HOUSE_KINGS_ROCK, Route120_FrogsHouse_EventScript_FrogFanPostReward
	msgbox Route120_FrogsHouse_Text_FrogFanIntro, MSGBOX_DEFAULT
	checkspecies SPECIES_POLIWRATH
	goto_if_eq VAR_RESULT, TRUE, Route120_FrogsHouse_EventScript_FrogFanFoundPoliwrath
	release
	end

Route120_FrogsHouse_EventScript_FrogFanFoundPoliwrath::
	playse SE_PIN
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
	waitmovement 0
	msgbox Route120_FrogsHouse_Text_FrogFanFoundPoliwrath, MSGBOX_DEFAULT
	giveitem ITEM_KINGS_ROCK
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
	setflag FLAG_RECEIVED_FROGS_HOUSE_KINGS_ROCK
	release
	end

Route120_FrogsHouse_EventScript_FrogFanPostReward::
	msgbox Route120_FrogsHouse_Text_FrogFanPostReward, MSGBOX_DEFAULT
	release
	end

Route120_FrogsHouse_Text_FrogFanIntro:
	.string "POLIWAG are, by far, the best POKéMON!\p"
	.string "To evolve them, you need either a\n"
	.string "KING'S ROCK or a THUNDER STONE.\p"
	.string "I'd really love to see a POLIWRATH,\n"
	.string "but I've never seen one…$"

Route120_FrogsHouse_Text_FrogFanFoundPoliwrath:
	.string "What?! You have a POLIWRATH?\n"
	.string "That's incredible!\p"
	.string "Please, take this KING'S ROCK.\n"
	.string "It's a gift from one fan to another.$"

Route120_FrogsHouse_Text_FrogFanPostReward:
	.string "YOUR POLIWRATH IS INCREDIBLE!$"
