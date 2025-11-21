LittlerootCoast_MapScripts::
	.byte 0


BirdKeeperLee::
# 4 "data/maps/LittlerootCoast/scripts.pory"
	trainerbattle_single TRAINER_LEE, LeeIntro, LeeLose
# 5 "data/maps/LittlerootCoast/scripts.pory"
	lock
# 6 "data/maps/LittlerootCoast/scripts.pory"
	msgbox BirdKeeperLee_Text_0
# 7 "data/maps/LittlerootCoast/scripts.pory"
	release
	end


BirdKeeperLee_Text_0:
# 6 "data/maps/LittlerootCoast/scripts.pory"
	.string "I'm trying to catch a wingull!$"

LeeIntro::
# 11 "data/maps/LittlerootCoast/scripts.pory"
	.string "Did you know most birds can fly?$"

LeeLose::
# 15 "data/maps/LittlerootCoast/scripts.pory"
	.string "But they can't always win...$"
