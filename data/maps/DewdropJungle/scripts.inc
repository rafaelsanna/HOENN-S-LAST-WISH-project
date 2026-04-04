DewdropJungle_MapScripts::
	.byte 0

DewdropJungle_EventScript_BugCatcherDew::
	lock
	faceplayer
	trainerbattle_single TRAINER_DEW, DewdropJungle_Text_DrewIntro, DewdropJungle_Text_DrewDefeated
	msgbox DewdropJungle_Text_DrewPostBattle, MSGBOX_AUTOCLOSE
	release
	end	

DewdropJungle_EventScript_HikerXander::
	lock
	faceplayer
	trainerbattle_single TRAINER_XANDER, DewdropJungle_Text_XanderIntro, DewdropJungle_Text_XanderDefeated
	msgbox DewdropJungle_Text_XanderPostBattle, MSGBOX_AUTOCLOSE
	release
	end	

DewdropJungle_EventScript_AriaPainter::
	lock
	faceplayer
	trainerbattle_single TRAINER_ARIA, DewdropJungle_Text_AriaIntro, DewdropJungle_Text_AriaDefeated
	msgbox DewdropJungle_Text_AriaPostBattle, MSGBOX_AUTOCLOSE
	release
	end	
