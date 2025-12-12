LonelyCave_B1_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, LonelyCave_B1_OnTransition
	map_script MAP_SCRIPT_ON_RESUME, LonelyCave_B1_OnResume
	.byte 0

LonelyCave_B1_OnTransition:
	end

LonelyCave_B1_OnResume:
	end

LonelyCave_B1_EventScript_ChanelerLC::
	lock
	faceplayer
	trainerbattle_single TRAINER_UZUMAKI, LonelyCaveB1_Text_UzumakiIntro, LonelyCaveB1_Text_UzumakiDefeat
	msgbox LonelyCaveB1_Text_UzumakiPostBattle, MSGBOX_AUTOCLOSE
	release
	end	

