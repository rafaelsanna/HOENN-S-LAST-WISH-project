GraniteHill_MapScripts::
	.byte 0

GraniteHill_EventScript_Herbalistgh::
	lock
	faceplayer
	trainerbattle_single TRAINER_CECILIA, GraniteHill_Text_CeciliaIntro, GraniteHill_Text_CeciliaDefeated
	msgbox GraniteHill_Text_CeciliaPostBattle, MSGBOX_AUTOCLOSE
	release
	end	
