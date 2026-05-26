# 1 "data/maps/DewdropJungle/scripts.pory"

# 2 "data/maps/DewdropJungle/scripts.pory"
DewdropJungle_MapScripts::
# 3 "data/maps/DewdropJungle/scripts.pory"
	.byte 0
# 4 "data/maps/DewdropJungle/scripts.pory"

# 5 "data/maps/DewdropJungle/scripts.pory"
DewdropJungle_EventScript_BugCatcherDew::
# 6 "data/maps/DewdropJungle/scripts.pory"
	trainerbattle_single TRAINER_DEW, DewdropJungle_Text_DrewIntro, DewdropJungle_Text_DrewDefeated
# 7 "data/maps/DewdropJungle/scripts.pory"
	msgbox DewdropJungle_Text_DrewPostBattle, MSGBOX_AUTOCLOSE
# 8 "data/maps/DewdropJungle/scripts.pory"
	end
# 9 "data/maps/DewdropJungle/scripts.pory"

# 10 "data/maps/DewdropJungle/scripts.pory"
DewdropJungle_EventScript_AriaPainter::
# 11 "data/maps/DewdropJungle/scripts.pory"
	trainerbattle_single TRAINER_ARIA, DewdropJungle_Text_AriaIntro, DewdropJungle_Text_AriaDefeated
# 12 "data/maps/DewdropJungle/scripts.pory"
	msgbox DewdropJungle_Text_AriaPostBattle, MSGBOX_AUTOCLOSE
# 13 "data/maps/DewdropJungle/scripts.pory"
	end
# 14 "data/maps/DewdropJungle/scripts.pory"

# 15 "data/maps/DewdropJungle/scripts.pory"
DewdropJungle_EventScript_HikerXander::
# 16 "data/maps/DewdropJungle/scripts.pory"
	trainerbattle_single TRAINER_XANDER, DewdropJungle_Text_XanderIntro, DewdropJungle_Text_XanderDefeated
# 17 "data/maps/DewdropJungle/scripts.pory"
	msgbox DewdropJungle_Text_XanderPostBattle, MSGBOX_AUTOCLOSE
# 18 "data/maps/DewdropJungle/scripts.pory"
	end		
# 19 "data/maps/DewdropJungle/scripts.pory"

# 20 "data/maps/DewdropJungle/scripts.pory"
DewdropJungle_EventScript_BattleGirlKayla::
# 21 "data/maps/DewdropJungle/scripts.pory"
	lock
# 22 "data/maps/DewdropJungle/scripts.pory"
	faceplayer
# 23 "data/maps/DewdropJungle/scripts.pory"
	trainerbattle_single TRAINER_PEGGY, DewdropJungle_Text_KaylaIntro, DewdropJungle_Text_KaylaDefeated
# 24 "data/maps/DewdropJungle/scripts.pory"
	msgbox DewdropJungle_Text_KaylaPostBattle, MSGBOX_AUTOCLOSE
# 25 "data/maps/DewdropJungle/scripts.pory"
	end
# 26 "data/maps/DewdropJungle/scripts.pory"

# 27 "data/maps/DewdropJungle/scripts.pory"
DewdropJungle_EventScript_ChefLouis::
# 28 "data/maps/DewdropJungle/scripts.pory"
	trainerbattle_single TRAINER_LOUIS, DewdropJungle_Text_LouisIntro, DewdropJungle_Text_LouisDefeated
# 29 "data/maps/DewdropJungle/scripts.pory"
	msgbox DewdropJungle_Text_LouisPostBattle, MSGBOX_AUTOCLOSE
# 30 "data/maps/DewdropJungle/scripts.pory"
	end
# 31 "data/maps/DewdropJungle/scripts.pory"

# 32 "data/maps/DewdropJungle/scripts.pory"
DewdropJungle_EventScript_BugCatcherNoah::
# 33 "data/maps/DewdropJungle/scripts.pory"
	trainerbattle_single TRAINER_NOAH, DewdropJungle_Text_NoahIntro, DewdropJungle_Text_NoahDefeated
# 34 "data/maps/DewdropJungle/scripts.pory"
	msgbox DewdropJungle_Text_NoahPostBattle, MSGBOX_AUTOCLOSE
# 35 "data/maps/DewdropJungle/scripts.pory"
	end
# 36 "data/maps/DewdropJungle/scripts.pory"

# 37 "data/maps/DewdropJungle/scripts.pory"
DewdropJungle_EventScript_FisherBryce::
# 38 "data/maps/DewdropJungle/scripts.pory"
	lock
# 39 "data/maps/DewdropJungle/scripts.pory"
	faceplayer
# 40 "data/maps/DewdropJungle/scripts.pory"
	trainerbattle_single TRAINER_BRYCE, DewdropJungle_Text_BryceIntro, DewdropJungle_Text_BryceDefeated
# 41 "data/maps/DewdropJungle/scripts.pory"
	msgbox DewdropJungle_Text_BrycePostBattle, MSGBOX_AUTOCLOSE
# 42 "data/maps/DewdropJungle/scripts.pory"
	end
# 43 "data/maps/DewdropJungle/scripts.pory"

# 44 "data/maps/DewdropJungle/scripts.pory"
DewdropJungle_EventScript_Waterfallgirl::
# 45 "data/maps/DewdropJungle/scripts.pory"
	msgbox DewdropJungle_Text_Waterfallgirl, MSGBOX_NPC
# 46 "data/maps/DewdropJungle/scripts.pory"
	end
# 47 "data/maps/DewdropJungle/scripts.pory"

# 48 "data/maps/DewdropJungle/scripts.pory"
DewdropJungle_Text_Waterfallgirl:
# 49 "data/maps/DewdropJungle/scripts.pory"
	.string "I like to come out here to watch\n"
# 50 "data/maps/DewdropJungle/scripts.pory"
	.string "the waterfall. So peaceful...$"
