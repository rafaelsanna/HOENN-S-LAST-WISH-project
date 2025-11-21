LonelyCave_B2_MapScripts::
	.byte 0


HexManiacSelene::
# 4 "data/maps/LonelyCave_B2/scripts.pory"
	trainerbattle_single TRAINER_SELENE, SeleneIntro, SeleneLose
# 5 "data/maps/LonelyCave_B2/scripts.pory"
	lock
# 6 "data/maps/LonelyCave_B2/scripts.pory"
	msgbox HexManiacSelene_Text_0
# 7 "data/maps/LonelyCave_B2/scripts.pory"
	release
	end


PsychicWill::
# 20 "data/maps/LonelyCave_B2/scripts.pory"
	trainerbattle_single TRAINER_WILL, WillIntro, WillLose
# 21 "data/maps/LonelyCave_B2/scripts.pory"
	lock
# 22 "data/maps/LonelyCave_B2/scripts.pory"
	msgbox PsychicWill_Text_0
# 23 "data/maps/LonelyCave_B2/scripts.pory"
	release
	end


HexManiacSelene_Text_0:
# 6 "data/maps/LonelyCave_B2/scripts.pory"
	.string "Spirits dwell this cave. But for what?$"

PsychicWill_Text_0:
# 22 "data/maps/LonelyCave_B2/scripts.pory"
	.string "I always come here to train my pokemon.\n"
	.string "It's nice and quiet.$"

SeleneIntro::
# 11 "data/maps/LonelyCave_B2/scripts.pory"
	.string "Are you scared of death?$"

SeleneLose::
# 15 "data/maps/LonelyCave_B2/scripts.pory"
	.string "Well you're not scared of battle I see.$"

WillIntro::
# 27 "data/maps/LonelyCave_B2/scripts.pory"
	.string "I sense something in here...$"

WillLose::
# 31 "data/maps/LonelyCave_B2/scripts.pory"
	.string "You have a very strong will.$"
