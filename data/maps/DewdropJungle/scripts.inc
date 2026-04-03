DewdropJungle_MapScripts::
	.byte 0

DewdropJungle_EventScript_BugCatcherDew::
	lock
	faceplayer
	trainerbattle_single TRAINER_DEW, DewdropJungle_Text_DrewIntro, DewdropJungle_Text_DrewDefeated
	msgbox DewdropJungle_Text_DrewPostBattle, MSGBOX_AUTOCLOSE
	release
	end	

