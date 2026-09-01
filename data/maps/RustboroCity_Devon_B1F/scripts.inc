# 1 "data/maps/RustboroCity_Devon_B1F/scripts.pory"

# 2 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
RustboroCity_Devon_B1F_MapScripts::
# 3 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.byte 0
# 4 "data/maps/RustboroCity_Devon_B1F/scripts.pory"

# 5 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
RustboroCity_Devon_B1F_EventScript_GenderSpecialist::
# 6 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	lock
# 7 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	faceplayer
# 8 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	msgbox RustboroCity_Devon_B1F_Text_ChangeGenderIntro, MSGBOX_YESNO
# 9 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	goto_if_eq VAR_RESULT, YES, RustboroCity_Devon_B1F_EventScript_ChooseMon
# 10 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	goto RustboroCity_Devon_B1F_EventScript_Decline
# 11 "data/maps/RustboroCity_Devon_B1F/scripts.pory"

# 12 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
RustboroCity_Devon_B1F_EventScript_ChooseMon::
# 13 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	msgbox RustboroCity_Devon_B1F_Text_ChooseMon, MSGBOX_DEFAULT
# 14 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	special ChoosePartyMon
# 15 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	waitstate
# 16 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	goto_if_eq VAR_0x8004, PARTY_NOTHING_CHOSEN, RustboroCity_Devon_B1F_EventScript_Decline
# 17 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	special BufferMonNickname
# 18 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	specialvar VAR_RESULT, Script_CanChangeSelectedMonGender
# 19 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, RustboroCity_Devon_B1F_EventScript_CantChange
# 20 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	msgbox RustboroCity_Devon_B1F_Text_ConfirmChange, MSGBOX_YESNO
# 21 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	goto_if_eq VAR_RESULT, YES, RustboroCity_Devon_B1F_EventScript_CheckMoney
# 22 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	goto RustboroCity_Devon_B1F_EventScript_Decline
# 23 "data/maps/RustboroCity_Devon_B1F/scripts.pory"

# 24 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
RustboroCity_Devon_B1F_EventScript_CheckMoney::
# 25 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	checkmoney 10000
# 26 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, RustboroCity_Devon_B1F_EventScript_NotEnoughMoney
# 27 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	msgbox RustboroCity_Devon_B1F_Text_BeginProcedure, MSGBOX_DEFAULT
# 28 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	showmoneybox 0, 0
# 29 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	delay 20
# 30 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	playse SE_SHOP
# 31 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	removemoney 10000
# 32 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	updatemoneybox
# 33 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	delay 40
# 34 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	hidemoneybox
# 35 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 36 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	playse SE_USE_ITEM
# 37 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	special Script_ChangeSelectedMonGender
# 38 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	delay 40
# 39 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 40 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	special BufferMonNickname
# 41 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	msgbox RustboroCity_Devon_B1F_Text_Success, MSGBOX_DEFAULT
# 42 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	release
# 43 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	end
# 44 "data/maps/RustboroCity_Devon_B1F/scripts.pory"

# 45 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
RustboroCity_Devon_B1F_EventScript_NotEnoughMoney::
# 46 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	msgbox RustboroCity_Devon_B1F_Text_NotEnoughMoney, MSGBOX_DEFAULT
# 47 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	release
# 48 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	end
# 49 "data/maps/RustboroCity_Devon_B1F/scripts.pory"

# 50 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
RustboroCity_Devon_B1F_EventScript_CantChange::
# 51 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	msgbox RustboroCity_Devon_B1F_Text_CantChange, MSGBOX_DEFAULT
# 52 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	release
# 53 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	end
# 54 "data/maps/RustboroCity_Devon_B1F/scripts.pory"

# 55 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
RustboroCity_Devon_B1F_EventScript_Decline::
# 56 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	msgbox RustboroCity_Devon_B1F_Text_Decline, MSGBOX_DEFAULT
# 57 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	release
# 58 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	end
# 59 "data/maps/RustboroCity_Devon_B1F/scripts.pory"

# 60 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
RustboroCity_Devon_B1F_Text_ChangeGenderIntro:
# 61 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "Hello. My research allows me to\n"
# 62 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "adjust a POKéMON's gender safely.\p"
# 63 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "The procedure costs ¥10,000.\n"
# 64 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "Would you like to change one of\l"
# 65 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "your POKéMON's gender?$"
# 66 "data/maps/RustboroCity_Devon_B1F/scripts.pory"

# 67 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
RustboroCity_Devon_B1F_Text_ChooseMon:
# 68 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "Which POKéMON should I examine?$"
# 69 "data/maps/RustboroCity_Devon_B1F/scripts.pory"

# 70 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
RustboroCity_Devon_B1F_Text_ConfirmChange:
# 71 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "You want to change {STR_VAR_1}\n"
# 72 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "to the other gender. Is that correct?$"
# 73 "data/maps/RustboroCity_Devon_B1F/scripts.pory"

# 74 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
RustboroCity_Devon_B1F_Text_BeginProcedure:
# 75 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "Very well.\n"
# 76 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "Please hold still for a moment.$"
# 77 "data/maps/RustboroCity_Devon_B1F/scripts.pory"

# 78 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
RustboroCity_Devon_B1F_Text_Success:
# 79 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "The procedure was a success.\p"
# 80 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "{STR_VAR_1} is perfectly healthy.$"
# 81 "data/maps/RustboroCity_Devon_B1F/scripts.pory"

# 82 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
RustboroCity_Devon_B1F_Text_NotEnoughMoney:
# 83 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "I am sorry, but the procedure costs\n"
# 84 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "¥10,000.$"
# 85 "data/maps/RustboroCity_Devon_B1F/scripts.pory"

# 86 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
RustboroCity_Devon_B1F_Text_CantChange:
# 87 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "I am sorry, but I cannot change\n"
# 88 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "{STR_VAR_1}'s gender.$"
# 89 "data/maps/RustboroCity_Devon_B1F/scripts.pory"

# 90 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
RustboroCity_Devon_B1F_Text_Decline:
# 91 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "All right. Come see me if you ever\n"
# 92 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "want to change your POKéMON's\l"
# 93 "data/maps/RustboroCity_Devon_B1F/scripts.pory"
	.string "gender.$"
