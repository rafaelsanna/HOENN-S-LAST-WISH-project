PetalburgCave_MapScripts::
	.byte 0

PetalburgCave_EventScript_Marcia::
	trainerbattle_single TRAINER_MARCIA, PetalburgCave_Text_MarciaIntro, PetalburgCave_Text_MarciaDefeated
	msgbox PetalburgCave_Text_MarciaPostBattle, MSGBOX_AUTOCLOSE
	end

PetalburgCave_EventScript_Edwin::
	trainerbattle_single TRAINER_EDWIN, PetalburgCave_Text_EdwinIntro, PetalburgCave_Text_EdwinDefeated
	msgbox PetalburgCave_Text_EdwinPostBattle, MSGBOX_AUTOCLOSE
	end

PetalburgCave_Text_MarciaIntro:
	.string "Oh? Another one heading in?\p"
	.string "Heh... I've been around these\n"
	.string "caves for a while now.\p"
	.string "You see all kinds of trainers\n"
	.string "passing through here.\p"
	.string "Confident ones, nervous ones...\n"
	.string "and some who turn back halfway.\p"
	.string "So... which kind are you?\n"
	.string "Let's find out!$"

PetalburgCave_Text_MarciaDefeated:
	.string "Heh... guess I got my answer.$"

PetalburgCave_Text_MarciaPostBattle:
	.string "Not bad at all.\p"
	.string "Most people who come through here\n"
	.string "think it's just another cave.\p"
	.string "But if you pay attention,\n"
	.string "you start to notice that...\p"
	.string "it is.\p"
	.string "Anyway, keep going.\n"
	.string "You're doing just fine.$"

PetalburgCave_Text_EdwinIntro:
	.string "I came all the way here\n"
	.string "looking for rare POKéMON...\p"
	.string "And I haven't found anything\n"
	.string "worth it!\p"
	.string "Not even a glimpse!\p"
	.string "At this point, I just need\n"
	.string "something to pass the time.\p"
	.string "Hey, you'll do!\n"
	.string "Battle me!$"

PetalburgCave_Text_EdwinDefeated:
	.string "Oof... I got wrecked...$"

PetalburgCave_Text_EdwinPostBattle:
	.string "Wow... you totally destroyed me.\p"
	.string "And look at you!\n"
	.string "You've got that outfit and\l"
	.string "those POKéMON...\p"
	.string "You're seriously cool!\n"
	.string "I gotta step up my game.\p"
	.string "Hey, teach me how to be\n"
	.string "that cool someday, yeah?$"
