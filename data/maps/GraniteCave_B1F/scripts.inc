# 1 "data/maps/GraniteCave_B1F/scripts.pory"

# 2 "data/maps/GraniteCave_B1F/scripts.pory"
GraniteCave_B1F_MapScripts::
# 3 "data/maps/GraniteCave_B1F/scripts.pory"
# 2 "data/maps/GraniteCave_B1F/scripts.pory"
# 4 "data/maps/GraniteCave_B1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, CaveHole_FixCrackedGround
# 5 "data/maps/GraniteCave_B1F/scripts.pory"
# 3 "data/maps/GraniteCave_B1F/scripts.pory"
# 6 "data/maps/GraniteCave_B1F/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, GraniteCave_B1F_SetHoleWarp
# 7 "data/maps/GraniteCave_B1F/scripts.pory"
# 4 "data/maps/GraniteCave_B1F/scripts.pory"
# 8 "data/maps/GraniteCave_B1F/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, CaveHole_CheckFallDownHole
# 9 "data/maps/GraniteCave_B1F/scripts.pory"
	.byte 0
# 10 "data/maps/GraniteCave_B1F/scripts.pory"

# 11 "data/maps/GraniteCave_B1F/scripts.pory"

# 12 "data/maps/GraniteCave_B1F/scripts.pory"
GraniteCave_B1F_SetHoleWarp::
# 13 "data/maps/GraniteCave_B1F/scripts.pory"
# 8 "data/maps/GraniteCave_B1F/scripts.pory"
# 14 "data/maps/GraniteCave_B1F/scripts.pory"
	setstepcallback STEP_CB_CRACKED_FLOOR
# 15 "data/maps/GraniteCave_B1F/scripts.pory"
# 9 "data/maps/GraniteCave_B1F/scripts.pory"
# 16 "data/maps/GraniteCave_B1F/scripts.pory"
	setholewarp MAP_GRANITE_CAVE_B2F
# 17 "data/maps/GraniteCave_B1F/scripts.pory"
	end
# 18 "data/maps/GraniteCave_B1F/scripts.pory"

# 19 "data/maps/GraniteCave_B1F/scripts.pory"

# 20 "data/maps/GraniteCave_B1F/scripts.pory"
CollectorSid::
# 21 "data/maps/GraniteCave_B1F/scripts.pory"
# 14 "data/maps/GraniteCave_B1F/scripts.pory"
# 22 "data/maps/GraniteCave_B1F/scripts.pory"
	trainerbattle_single TRAINER_SID, SidIntro, SidLose
# 23 "data/maps/GraniteCave_B1F/scripts.pory"
# 15 "data/maps/GraniteCave_B1F/scripts.pory"
# 24 "data/maps/GraniteCave_B1F/scripts.pory"
	lock
# 25 "data/maps/GraniteCave_B1F/scripts.pory"
# 16 "data/maps/GraniteCave_B1F/scripts.pory"
# 26 "data/maps/GraniteCave_B1F/scripts.pory"
	msgbox CollectorSid_Text_0
# 27 "data/maps/GraniteCave_B1F/scripts.pory"
# 17 "data/maps/GraniteCave_B1F/scripts.pory"
# 28 "data/maps/GraniteCave_B1F/scripts.pory"
	release
# 29 "data/maps/GraniteCave_B1F/scripts.pory"
	end
# 30 "data/maps/GraniteCave_B1F/scripts.pory"

# 31 "data/maps/GraniteCave_B1F/scripts.pory"

# 32 "data/maps/GraniteCave_B1F/scripts.pory"
PicnickerPenny::
# 33 "data/maps/GraniteCave_B1F/scripts.pory"
# 30 "data/maps/GraniteCave_B1F/scripts.pory"
# 34 "data/maps/GraniteCave_B1F/scripts.pory"
	trainerbattle_single TRAINER_PENNY, PennyIntro, PennyLose
# 35 "data/maps/GraniteCave_B1F/scripts.pory"
# 31 "data/maps/GraniteCave_B1F/scripts.pory"
# 36 "data/maps/GraniteCave_B1F/scripts.pory"
	lock
# 37 "data/maps/GraniteCave_B1F/scripts.pory"
# 32 "data/maps/GraniteCave_B1F/scripts.pory"
# 38 "data/maps/GraniteCave_B1F/scripts.pory"
	msgbox PicnickerPenny_Text_0
# 39 "data/maps/GraniteCave_B1F/scripts.pory"
# 33 "data/maps/GraniteCave_B1F/scripts.pory"
# 40 "data/maps/GraniteCave_B1F/scripts.pory"
	release
# 41 "data/maps/GraniteCave_B1F/scripts.pory"
	end
# 42 "data/maps/GraniteCave_B1F/scripts.pory"

# 43 "data/maps/GraniteCave_B1F/scripts.pory"

# 44 "data/maps/GraniteCave_B1F/scripts.pory"
CollectorSid_Text_0:
# 45 "data/maps/GraniteCave_B1F/scripts.pory"
# 16 "data/maps/GraniteCave_B1F/scripts.pory"
# 46 "data/maps/GraniteCave_B1F/scripts.pory"
	.string "I have free will, so I could lick the wall\n"
# 47 "data/maps/GraniteCave_B1F/scripts.pory"
	.string "if I wanted to.$"
# 48 "data/maps/GraniteCave_B1F/scripts.pory"

# 49 "data/maps/GraniteCave_B1F/scripts.pory"
PicnickerPenny_Text_0:
# 50 "data/maps/GraniteCave_B1F/scripts.pory"
# 32 "data/maps/GraniteCave_B1F/scripts.pory"
# 51 "data/maps/GraniteCave_B1F/scripts.pory"
	.string "This place is scary!$"
# 52 "data/maps/GraniteCave_B1F/scripts.pory"

# 53 "data/maps/GraniteCave_B1F/scripts.pory"
SidIntro::
# 54 "data/maps/GraniteCave_B1F/scripts.pory"
# 21 "data/maps/GraniteCave_B1F/scripts.pory"
# 55 "data/maps/GraniteCave_B1F/scripts.pory"
	.string "I'm here to find rare POKéMON!\n Do you have any cool ones?$"
# 56 "data/maps/GraniteCave_B1F/scripts.pory"

# 57 "data/maps/GraniteCave_B1F/scripts.pory"
SidLose::
# 58 "data/maps/GraniteCave_B1F/scripts.pory"
# 25 "data/maps/GraniteCave_B1F/scripts.pory"
# 59 "data/maps/GraniteCave_B1F/scripts.pory"
	.string "You imbecile!$"
# 60 "data/maps/GraniteCave_B1F/scripts.pory"

# 61 "data/maps/GraniteCave_B1F/scripts.pory"
PennyIntro::
# 62 "data/maps/GraniteCave_B1F/scripts.pory"
# 37 "data/maps/GraniteCave_B1F/scripts.pory"
# 63 "data/maps/GraniteCave_B1F/scripts.pory"
	.string "I'm doing a camping challenge!$"
# 64 "data/maps/GraniteCave_B1F/scripts.pory"

# 65 "data/maps/GraniteCave_B1F/scripts.pory"
PennyLose::
# 66 "data/maps/GraniteCave_B1F/scripts.pory"
# 41 "data/maps/GraniteCave_B1F/scripts.pory"
# 67 "data/maps/GraniteCave_B1F/scripts.pory"
	.string "You're a jerk!$"
