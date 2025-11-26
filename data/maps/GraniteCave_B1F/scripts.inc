GraniteCave_B1F_MapScripts::
# 2 "data/maps/GraniteCave_B1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, CaveHole_FixCrackedGround
# 3 "data/maps/GraniteCave_B1F/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, GraniteCave_B1F_SetHoleWarp
# 4 "data/maps/GraniteCave_B1F/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, CaveHole_CheckFallDownHole
	.byte 0


GraniteCave_B1F_SetHoleWarp::
# 8 "data/maps/GraniteCave_B1F/scripts.pory"
	setstepcallback STEP_CB_CRACKED_FLOOR
# 9 "data/maps/GraniteCave_B1F/scripts.pory"
	setholewarp MAP_GRANITE_CAVE_B2F
	end


CollectorSid::
# 14 "data/maps/GraniteCave_B1F/scripts.pory"
	trainerbattle_single TRAINER_SID, SidIntro, SidLose
# 15 "data/maps/GraniteCave_B1F/scripts.pory"
	lock
# 16 "data/maps/GraniteCave_B1F/scripts.pory"
	msgbox CollectorSid_Text_0
# 17 "data/maps/GraniteCave_B1F/scripts.pory"
	release
	end


PicnickerPenny::
# 30 "data/maps/GraniteCave_B1F/scripts.pory"
	trainerbattle_single TRAINER_PENNY, PennyIntro, PennyLose
# 31 "data/maps/GraniteCave_B1F/scripts.pory"
	lock
# 32 "data/maps/GraniteCave_B1F/scripts.pory"
	msgbox PicnickerPenny_Text_0
# 33 "data/maps/GraniteCave_B1F/scripts.pory"
	release
	end


CollectorSid_Text_0:
# 16 "data/maps/GraniteCave_B1F/scripts.pory"
	.string "I have free will, so I could lick the wall\n"
	.string "if I wanted to.$"

PicnickerPenny_Text_0:
# 32 "data/maps/GraniteCave_B1F/scripts.pory"
	.string "This place is scary!$"

SidIntro::
# 21 "data/maps/GraniteCave_B1F/scripts.pory"
	.string "I'm here to find rare POKéMON! Do you have any cool ones?$"

SidLose::
# 25 "data/maps/GraniteCave_B1F/scripts.pory"
	.string "You imbecile!$"

PennyIntro::
# 37 "data/maps/GraniteCave_B1F/scripts.pory"
	.string "I'm doing a camping challenge!$"

PennyLose::
# 41 "data/maps/GraniteCave_B1F/scripts.pory"
	.string "You're a jerk!$"
