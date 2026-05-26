# 1 "data/maps/PetalburgCave/scripts.pory"

# 2 "data/maps/PetalburgCave/scripts.pory"
PetalburgCave_MapScripts::
# 3 "data/maps/PetalburgCave/scripts.pory"
	.byte 0
# 4 "data/maps/PetalburgCave/scripts.pory"

# 5 "data/maps/PetalburgCave/scripts.pory"
PetalburgCave_EventScript_Marcia::
# 6 "data/maps/PetalburgCave/scripts.pory"
	trainerbattle_single TRAINER_MARCIA, PetalburgCave_Text_MarciaIntro, PetalburgCave_Text_MarciaDefeated
# 7 "data/maps/PetalburgCave/scripts.pory"
	msgbox PetalburgCave_Text_MarciaPostBattle, MSGBOX_AUTOCLOSE
# 8 "data/maps/PetalburgCave/scripts.pory"
	end
# 9 "data/maps/PetalburgCave/scripts.pory"

# 10 "data/maps/PetalburgCave/scripts.pory"
PetalburgCave_EventScript_Edwin::
# 11 "data/maps/PetalburgCave/scripts.pory"
	trainerbattle_single TRAINER_EDWIN, PetalburgCave_Text_EdwinIntro, PetalburgCave_Text_EdwinDefeated
# 12 "data/maps/PetalburgCave/scripts.pory"
	msgbox PetalburgCave_Text_EdwinPostBattle, MSGBOX_AUTOCLOSE
# 13 "data/maps/PetalburgCave/scripts.pory"
	end
# 14 "data/maps/PetalburgCave/scripts.pory"

# 15 "data/maps/PetalburgCave/scripts.pory"
PetalburgCave_Text_MarciaIntro:
# 16 "data/maps/PetalburgCave/scripts.pory"
	.string "Oh? Another one heading in?\p"
# 17 "data/maps/PetalburgCave/scripts.pory"
	.string "Heh... I've been around these\n"
# 18 "data/maps/PetalburgCave/scripts.pory"
	.string "caves for a while now.\p"
# 19 "data/maps/PetalburgCave/scripts.pory"
	.string "You see all kinds of trainers\n"
# 20 "data/maps/PetalburgCave/scripts.pory"
	.string "passing through here.\p"
# 21 "data/maps/PetalburgCave/scripts.pory"
	.string "Confident ones, nervous ones...\n"
# 22 "data/maps/PetalburgCave/scripts.pory"
	.string "and some who turn back halfway.\p"
# 23 "data/maps/PetalburgCave/scripts.pory"
	.string "So... which kind are you?\n"
# 24 "data/maps/PetalburgCave/scripts.pory"
	.string "Let's find out!$"
# 25 "data/maps/PetalburgCave/scripts.pory"

# 26 "data/maps/PetalburgCave/scripts.pory"
PetalburgCave_Text_MarciaDefeated:
# 27 "data/maps/PetalburgCave/scripts.pory"
	.string "Heh... guess I got my answer.$"
# 28 "data/maps/PetalburgCave/scripts.pory"

# 29 "data/maps/PetalburgCave/scripts.pory"
PetalburgCave_Text_MarciaPostBattle:
# 30 "data/maps/PetalburgCave/scripts.pory"
	.string "Not bad at all.\p"
# 31 "data/maps/PetalburgCave/scripts.pory"
	.string "Most people who come through here\n"
# 32 "data/maps/PetalburgCave/scripts.pory"
	.string "think it's just another cave.\p"
# 33 "data/maps/PetalburgCave/scripts.pory"
	.string "But if you pay attention,\n"
# 34 "data/maps/PetalburgCave/scripts.pory"
	.string "you start to notice that...\p"
# 35 "data/maps/PetalburgCave/scripts.pory"
	.string "it is.\p"
# 36 "data/maps/PetalburgCave/scripts.pory"
	.string "Anyway, keep going.\n"
# 37 "data/maps/PetalburgCave/scripts.pory"
	.string "You're doing just fine.$"
# 38 "data/maps/PetalburgCave/scripts.pory"

# 39 "data/maps/PetalburgCave/scripts.pory"
PetalburgCave_Text_EdwinIntro:
# 40 "data/maps/PetalburgCave/scripts.pory"
	.string "I came all the way here\n"
# 41 "data/maps/PetalburgCave/scripts.pory"
	.string "looking for rare POKéMON...\p"
# 42 "data/maps/PetalburgCave/scripts.pory"
	.string "And I haven't found anything\n"
# 43 "data/maps/PetalburgCave/scripts.pory"
	.string "worth it!\p"
# 44 "data/maps/PetalburgCave/scripts.pory"
	.string "Not even a glimpse!\p"
# 45 "data/maps/PetalburgCave/scripts.pory"
	.string "At this point, I just need\n"
# 46 "data/maps/PetalburgCave/scripts.pory"
	.string "something to pass the time.\p"
# 47 "data/maps/PetalburgCave/scripts.pory"
	.string "Hey, you'll do!\n"
# 48 "data/maps/PetalburgCave/scripts.pory"
	.string "Battle me!$"
# 49 "data/maps/PetalburgCave/scripts.pory"

# 50 "data/maps/PetalburgCave/scripts.pory"
PetalburgCave_Text_EdwinDefeated:
# 51 "data/maps/PetalburgCave/scripts.pory"
	.string "Oof... I got wrecked...$"
# 52 "data/maps/PetalburgCave/scripts.pory"

# 53 "data/maps/PetalburgCave/scripts.pory"
PetalburgCave_Text_EdwinPostBattle:
# 54 "data/maps/PetalburgCave/scripts.pory"
	.string "Wow... you totally destroyed me.\p"
# 55 "data/maps/PetalburgCave/scripts.pory"
	.string "And look at you!\n"
# 56 "data/maps/PetalburgCave/scripts.pory"
	.string "You've got that outfit and\l"
# 57 "data/maps/PetalburgCave/scripts.pory"
	.string "those POKéMON...\p"
# 58 "data/maps/PetalburgCave/scripts.pory"
	.string "You're seriously cool!\n"
# 59 "data/maps/PetalburgCave/scripts.pory"
	.string "I gotta step up my game.\p"
# 60 "data/maps/PetalburgCave/scripts.pory"
	.string "Hey, teach me how to be\n"
# 61 "data/maps/PetalburgCave/scripts.pory"
	.string "that cool someday, yeah?$"
