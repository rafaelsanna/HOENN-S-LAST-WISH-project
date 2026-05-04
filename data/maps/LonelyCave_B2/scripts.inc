# 1 "data/maps/LonelyCave_B2/scripts.pory"

# 2 "data/maps/LonelyCave_B2/scripts.pory"
LonelyCave_B2_MapScripts::
# 3 "data/maps/LonelyCave_B2/scripts.pory"
	.byte 0
# 4 "data/maps/LonelyCave_B2/scripts.pory"

# 5 "data/maps/LonelyCave_B2/scripts.pory"

# 6 "data/maps/LonelyCave_B2/scripts.pory"
HexManiacSelene::
# 7 "data/maps/LonelyCave_B2/scripts.pory"
# 4 "data/maps/LonelyCave_B2/scripts.pory"
# 8 "data/maps/LonelyCave_B2/scripts.pory"
	trainerbattle_single TRAINER_SELENE, SeleneIntro, SeleneLose
# 9 "data/maps/LonelyCave_B2/scripts.pory"
# 5 "data/maps/LonelyCave_B2/scripts.pory"
# 10 "data/maps/LonelyCave_B2/scripts.pory"
	lock
# 11 "data/maps/LonelyCave_B2/scripts.pory"
# 6 "data/maps/LonelyCave_B2/scripts.pory"
# 12 "data/maps/LonelyCave_B2/scripts.pory"
	msgbox HexManiacSelene_Text_0
# 13 "data/maps/LonelyCave_B2/scripts.pory"
# 7 "data/maps/LonelyCave_B2/scripts.pory"
# 14 "data/maps/LonelyCave_B2/scripts.pory"
	release
# 15 "data/maps/LonelyCave_B2/scripts.pory"
	end
# 16 "data/maps/LonelyCave_B2/scripts.pory"

# 17 "data/maps/LonelyCave_B2/scripts.pory"

# 18 "data/maps/LonelyCave_B2/scripts.pory"
PsychicWill::
# 19 "data/maps/LonelyCave_B2/scripts.pory"
# 20 "data/maps/LonelyCave_B2/scripts.pory"
# 20 "data/maps/LonelyCave_B2/scripts.pory"
	trainerbattle_single TRAINER_WILL, WillIntro, WillLose
# 21 "data/maps/LonelyCave_B2/scripts.pory"
# 21 "data/maps/LonelyCave_B2/scripts.pory"
# 22 "data/maps/LonelyCave_B2/scripts.pory"
	lock
# 23 "data/maps/LonelyCave_B2/scripts.pory"
# 22 "data/maps/LonelyCave_B2/scripts.pory"
# 24 "data/maps/LonelyCave_B2/scripts.pory"
	msgbox PsychicWill_Text_0
# 25 "data/maps/LonelyCave_B2/scripts.pory"
# 23 "data/maps/LonelyCave_B2/scripts.pory"
# 26 "data/maps/LonelyCave_B2/scripts.pory"
	release
# 27 "data/maps/LonelyCave_B2/scripts.pory"
	end
# 28 "data/maps/LonelyCave_B2/scripts.pory"

# 29 "data/maps/LonelyCave_B2/scripts.pory"

# 30 "data/maps/LonelyCave_B2/scripts.pory"
HexManiacSelene_Text_0:
# 31 "data/maps/LonelyCave_B2/scripts.pory"
# 6 "data/maps/LonelyCave_B2/scripts.pory"
# 32 "data/maps/LonelyCave_B2/scripts.pory"
	.string "Spirits dwell in this cave, but for what?$"
# 33 "data/maps/LonelyCave_B2/scripts.pory"

# 34 "data/maps/LonelyCave_B2/scripts.pory"
PsychicWill_Text_0:
# 35 "data/maps/LonelyCave_B2/scripts.pory"
# 22 "data/maps/LonelyCave_B2/scripts.pory"
# 36 "data/maps/LonelyCave_B2/scripts.pory"
	.string "I always come here to train my POKéMON.\n"
# 37 "data/maps/LonelyCave_B2/scripts.pory"
	.string "It's nice and quiet.$"
# 38 "data/maps/LonelyCave_B2/scripts.pory"

# 39 "data/maps/LonelyCave_B2/scripts.pory"
SeleneIntro::
# 40 "data/maps/LonelyCave_B2/scripts.pory"
# 11 "data/maps/LonelyCave_B2/scripts.pory"
# 41 "data/maps/LonelyCave_B2/scripts.pory"
	.string "Are you scared of death?$"
# 42 "data/maps/LonelyCave_B2/scripts.pory"

# 43 "data/maps/LonelyCave_B2/scripts.pory"
SeleneLose::
# 44 "data/maps/LonelyCave_B2/scripts.pory"
# 15 "data/maps/LonelyCave_B2/scripts.pory"
# 45 "data/maps/LonelyCave_B2/scripts.pory"
	.string "Well you're not scared of battle, I see.$"
# 46 "data/maps/LonelyCave_B2/scripts.pory"

# 47 "data/maps/LonelyCave_B2/scripts.pory"
WillIntro::
# 48 "data/maps/LonelyCave_B2/scripts.pory"
# 27 "data/maps/LonelyCave_B2/scripts.pory"
# 49 "data/maps/LonelyCave_B2/scripts.pory"
	.string "I sense something in here...$"
# 50 "data/maps/LonelyCave_B2/scripts.pory"

# 51 "data/maps/LonelyCave_B2/scripts.pory"
WillLose::
# 52 "data/maps/LonelyCave_B2/scripts.pory"
# 31 "data/maps/LonelyCave_B2/scripts.pory"
# 53 "data/maps/LonelyCave_B2/scripts.pory"
	.string "You have a very strong will.$"
