Route106_MapScripts::
	.byte 0

Route106_EventScript_TrainerTipsSign::
	msgbox Route106_Text_TrainerTips, MSGBOX_SIGN
	end

Route106_EventScript_Douglas::
	trainerbattle_single TRAINER_DOUGLAS, Route106_Text_DouglasIntro, Route106_Text_DouglasDefeated
	msgbox Route106_Text_DouglasPostBattle, MSGBOX_AUTOCLOSE
	end

Route106_EventScript_Kyla::
	trainerbattle_single TRAINER_KYLA, Route106_Text_KylaIntro, Route106_Text_KylaDefeated
	msgbox Route106_Text_KylaPostBattle, MSGBOX_AUTOCLOSE
	end

Route106_EventScript_Elliot::
	trainerbattle_single TRAINER_ELLIOT_1, Route106_Text_ElliotIntro, Route106_Text_ElliotDefeated, Route106_EventScript_ElliotRegisterMatchCallAfterBattle
	specialvar VAR_RESULT, ShouldTryRematchBattle
	goto_if_eq VAR_RESULT, TRUE, Route106_EventScript_ElliotRematch
	msgbox Route106_Text_ElliotPostBattle, MSGBOX_DEFAULT
	release
	end

Route106_EventScript_ElliotRegisterMatchCallAfterBattle::
	special PlayerFaceTrainerAfterBattle
	waitmovement 0
	msgbox Route106_Text_ElliotRegister, MSGBOX_DEFAULT
	register_matchcall TRAINER_ELLIOT_1
	release
	end

Route106_EventScript_BerryGirl::
	lock
	faceplayer
	msgbox Route106_Text_BerryGirlStory, MSGBOX_DEFAULT
	giveitem ITEM_CHOPLE_BERRY
	msgbox Route106_Text_BerryGirlAfterGift, MSGBOX_DEFAULT
	setflag FLAG_RECEIVED_CHOPLE_BERRY_ROUTE106
	release
	end	

Route106_EventScript_ElliotRematch::
	trainerbattle_rematch TRAINER_ELLIOT_1, Route106_Text_ElliotRematchIntro, Route106_Text_ElliotRematchDefeated
	msgbox Route106_Text_ElliotRematchPostBattle, MSGBOX_AUTOCLOSE
	end

Route106_EventScript_Ned::
	trainerbattle_single TRAINER_NED, Route106_Text_NedIntro, Route106_Text_NedDefeated
	msgbox Route106_Text_NedPostBattle, MSGBOX_AUTOCLOSE
	end

Route106_Text_TrainerTips:
	.string "TRAINER TIPS\p"
	.string "Advice on catching POKéMON with a ROD:\n"
	.string "Press the A Button if you get a bite.$"

Route106_Text_BerryGirlStory:
	.string "Yo! You're a trainer too?\n"
	.string "Let me tell you something...\p"
	.string "I was trying to beat the Gym Leader\n"
	.string "here, and I trained really hard!\p"
	.string "To prepare, I grew lots of\n"
	.string "Chople Berries, which are super\l"
	.string "useful against Fighting-type moves.\p"
	.string "And guess what? I managed to beat\n"
	.string "the Gym Leader! It was amazing!\p"
	.string "I ended up with so many Chople\n"
	.string "Berries that I can share one\l"
	.string "with you! Here!$"

Route106_Text_BerryGirlAfterGift:
	.string "It's so hot here...\p"
	.string "I hope you can beat the gym!$"

