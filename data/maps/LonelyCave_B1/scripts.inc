# 1 "data/maps/LonelyCave_B1/scripts.pory"

# 2 "data/maps/LonelyCave_B1/scripts.pory"
LonelyCave_B1_MapScripts::
# 3 "data/maps/LonelyCave_B1/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, LonelyCave_B1_OnTransition
# 4 "data/maps/LonelyCave_B1/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, LonelyCave_B1_OnResume
# 5 "data/maps/LonelyCave_B1/scripts.pory"
	.byte 0
# 6 "data/maps/LonelyCave_B1/scripts.pory"

# 7 "data/maps/LonelyCave_B1/scripts.pory"
LonelyCave_B1_OnTransition:
# 8 "data/maps/LonelyCave_B1/scripts.pory"
	end
# 9 "data/maps/LonelyCave_B1/scripts.pory"

# 10 "data/maps/LonelyCave_B1/scripts.pory"
LonelyCave_B1_OnResume:
# 11 "data/maps/LonelyCave_B1/scripts.pory"
	end
# 12 "data/maps/LonelyCave_B1/scripts.pory"

# 13 "data/maps/LonelyCave_B1/scripts.pory"
LonelyCave_B1_EventScript_ChanelerLC::
# 14 "data/maps/LonelyCave_B1/scripts.pory"
	lock
# 15 "data/maps/LonelyCave_B1/scripts.pory"
	faceplayer
# 16 "data/maps/LonelyCave_B1/scripts.pory"
	trainerbattle_single TRAINER_UZUMAKI, LonelyCaveB1_Text_UzumakiIntro, LonelyCaveB1_Text_UzumakiDefeat
# 17 "data/maps/LonelyCave_B1/scripts.pory"
	msgbox LonelyCaveB1_Text_UzumakiPostBattle, MSGBOX_AUTOCLOSE
# 18 "data/maps/LonelyCave_B1/scripts.pory"
	release
# 19 "data/maps/LonelyCave_B1/scripts.pory"
	end
