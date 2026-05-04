# 1 "data/maps/Route106/scripts.pory"

# 2 "data/maps/Route106/scripts.pory"
Route106_MapScripts::
# 3 "data/maps/Route106/scripts.pory"
	.byte 0
# 4 "data/maps/Route106/scripts.pory"

# 5 "data/maps/Route106/scripts.pory"
Route106_EventScript_TrainerTipsSign::
# 6 "data/maps/Route106/scripts.pory"
	msgbox Route106_Text_TrainerTips, MSGBOX_SIGN
# 7 "data/maps/Route106/scripts.pory"
	end
# 8 "data/maps/Route106/scripts.pory"

# 9 "data/maps/Route106/scripts.pory"
Route106_EventScript_Douglas::
# 10 "data/maps/Route106/scripts.pory"
	trainerbattle_single TRAINER_DOUGLAS, Route106_Text_DouglasIntro, Route106_Text_DouglasDefeated
# 11 "data/maps/Route106/scripts.pory"
	msgbox Route106_Text_DouglasPostBattle, MSGBOX_AUTOCLOSE
# 12 "data/maps/Route106/scripts.pory"
	end
# 13 "data/maps/Route106/scripts.pory"

# 14 "data/maps/Route106/scripts.pory"
Route106_EventScript_Kyla::
# 15 "data/maps/Route106/scripts.pory"
	trainerbattle_single TRAINER_KYLA, Route106_Text_KylaIntro, Route106_Text_KylaDefeated
# 16 "data/maps/Route106/scripts.pory"
	msgbox Route106_Text_KylaPostBattle, MSGBOX_AUTOCLOSE
# 17 "data/maps/Route106/scripts.pory"
	end
# 18 "data/maps/Route106/scripts.pory"

# 19 "data/maps/Route106/scripts.pory"
Route106_EventScript_Elliot::
# 20 "data/maps/Route106/scripts.pory"
	trainerbattle_single TRAINER_ELLIOT_1, Route106_Text_ElliotIntro, Route106_Text_ElliotDefeated, Route106_EventScript_ElliotRegisterMatchCallAfterBattle
# 21 "data/maps/Route106/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 22 "data/maps/Route106/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, Route106_EventScript_ElliotRematch
# 23 "data/maps/Route106/scripts.pory"
	msgbox Route106_Text_ElliotPostBattle, MSGBOX_DEFAULT
# 24 "data/maps/Route106/scripts.pory"
	release
# 25 "data/maps/Route106/scripts.pory"
	end
# 26 "data/maps/Route106/scripts.pory"

# 27 "data/maps/Route106/scripts.pory"
Route106_EventScript_ElliotRegisterMatchCallAfterBattle::
# 28 "data/maps/Route106/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 29 "data/maps/Route106/scripts.pory"
	waitmovement 0
# 30 "data/maps/Route106/scripts.pory"
	release
# 31 "data/maps/Route106/scripts.pory"
	end
# 32 "data/maps/Route106/scripts.pory"

# 33 "data/maps/Route106/scripts.pory"
Route106_EventScript_BerryGirl::
# 34 "data/maps/Route106/scripts.pory"
    lock
# 35 "data/maps/Route106/scripts.pory"
    faceplayer
# 36 "data/maps/Route106/scripts.pory"

# 37 "data/maps/Route106/scripts.pory"
    checkflag FLAG_GOT_BERRY_GIRL_ROUTE106
# 38 "data/maps/Route106/scripts.pory"
    goto_if TRUE, Route106_BerryGirl_After
# 39 "data/maps/Route106/scripts.pory"

# 40 "data/maps/Route106/scripts.pory"
    msgbox Route106_Text_BerryGirl_Give, MSGBOX_DEFAULT
# 41 "data/maps/Route106/scripts.pory"
    giveitem ITEM_CHOPLE_BERRY, 1
# 42 "data/maps/Route106/scripts.pory"
    setflag FLAG_GOT_BERRY_GIRL_ROUTE106
# 43 "data/maps/Route106/scripts.pory"
    release
# 44 "data/maps/Route106/scripts.pory"
    end
# 45 "data/maps/Route106/scripts.pory"

# 46 "data/maps/Route106/scripts.pory"
Route106_BerryGirl_After:
# 47 "data/maps/Route106/scripts.pory"
    msgbox Route106_Text_BerryGirl_After, MSGBOX_DEFAULT
# 48 "data/maps/Route106/scripts.pory"
    release
# 49 "data/maps/Route106/scripts.pory"
    end	
# 50 "data/maps/Route106/scripts.pory"

# 51 "data/maps/Route106/scripts.pory"
Route106_EventScript_ElliotRematch::
# 52 "data/maps/Route106/scripts.pory"
	trainerbattle_rematch TRAINER_ELLIOT_1, Route106_Text_ElliotRematchIntro, Route106_Text_ElliotRematchDefeated
# 53 "data/maps/Route106/scripts.pory"
	msgbox Route106_Text_ElliotRematchPostBattle, MSGBOX_AUTOCLOSE
# 54 "data/maps/Route106/scripts.pory"
	end
# 55 "data/maps/Route106/scripts.pory"

# 56 "data/maps/Route106/scripts.pory"
Route106_EventScript_Ned::
# 57 "data/maps/Route106/scripts.pory"
	trainerbattle_single TRAINER_NED, Route106_Text_NedIntro, Route106_Text_NedDefeated
# 58 "data/maps/Route106/scripts.pory"
	msgbox Route106_Text_NedPostBattle, MSGBOX_AUTOCLOSE
# 59 "data/maps/Route106/scripts.pory"
	end
# 60 "data/maps/Route106/scripts.pory"

# 61 "data/maps/Route106/scripts.pory"
Route106_Text_TrainerTips:
# 62 "data/maps/Route106/scripts.pory"
	.string "TRAINER TIPS\p"
# 63 "data/maps/Route106/scripts.pory"
	.string "Advice on catching POKéMON with a ROD:\n"
# 64 "data/maps/Route106/scripts.pory"
	.string "Press the A Button if you get a bite.$"
# 65 "data/maps/Route106/scripts.pory"

# 66 "data/maps/Route106/scripts.pory"
Route106_Text_BerryGirl_Give:
# 67 "data/maps/Route106/scripts.pory"
    .string "Yo! You're a trainer too?\n"
# 68 "data/maps/Route106/scripts.pory"
    .string "Let me tell you something...\p"
# 69 "data/maps/Route106/scripts.pory"
    .string "I was trying to beat the Gym Leader\n"
# 70 "data/maps/Route106/scripts.pory"
    .string "here, and I trained really hard!\p"
# 71 "data/maps/Route106/scripts.pory"
    .string "To prepare, I grew lots of\n"
# 72 "data/maps/Route106/scripts.pory"
    .string "Chople Berries, which are super\l"
# 73 "data/maps/Route106/scripts.pory"
    .string "useful against Fighting-type moves.\p"
# 74 "data/maps/Route106/scripts.pory"
    .string "I ended up with so many Chople\n"
# 75 "data/maps/Route106/scripts.pory"
    .string "Berries that I can share one\l"
# 76 "data/maps/Route106/scripts.pory"
    .string "with you! Here!$"
# 77 "data/maps/Route106/scripts.pory"

# 78 "data/maps/Route106/scripts.pory"
Route106_Text_BerryGirl_After:
# 79 "data/maps/Route106/scripts.pory"
    .string "It's so hot here...\p"
# 80 "data/maps/Route106/scripts.pory"
    .string "I hope you can beat the gym!$"
