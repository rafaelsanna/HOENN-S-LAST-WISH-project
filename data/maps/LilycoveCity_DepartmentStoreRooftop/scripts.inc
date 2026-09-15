# 1 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 2 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_MapScripts::
# 3 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, LilycoveCity_DepartmentStoreRooftop_OnTransition
# 4 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.byte 0
# 5 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 6 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_OnTransition:
# 7 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	getpokenewsactive POKENEWS_LILYCOVE
# 8 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	call_if_eq VAR_RESULT, TRUE, LilycoveCity_DepartmentStoreRooftop_EventScript_ShowSaleWoman
# 9 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	call_if_eq VAR_RESULT, FALSE, LilycoveCity_DepartmentStoreRooftop_EventScript_HideSaleWoman
# 10 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto_if_set FLAG_HIDE_PHOENIXHOUSE1_OLD_MAN, LilycoveCity_DepartmentStoreRooftop_EventScript_ShowQuestOldMan
# 11 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	setflag FLAG_HIDE_LILYCOVE_DEPARTMENT_STORE_ROOFTOP_OLD_MAN
# 12 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 13 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 14 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_ShowQuestOldMan::
# 15 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	clearflag FLAG_HIDE_LILYCOVE_DEPARTMENT_STORE_ROOFTOP_OLD_MAN
# 16 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 17 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 18 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_ShowSaleWoman::
# 19 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	clearflag FLAG_HIDE_LILYCOVE_DEPARTMENT_STORE_ROOFTOP_SALE_WOMAN
# 20 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	return
# 21 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 22 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_HideSaleWoman::
# 23 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	setflag FLAG_HIDE_LILYCOVE_DEPARTMENT_STORE_ROOFTOP_SALE_WOMAN
# 24 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	return
# 25 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 26 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_SaleWoman::
# 27 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	lock
# 28 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	faceplayer
# 29 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	message gText_HowMayIServeYou
# 30 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	waitmessage
# 31 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	pokemartdecoration LilycoveCity_DepartmentStoreRooftop_PokemartDecor_ClearOutSale
# 32 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox gText_PleaseComeAgain, MSGBOX_DEFAULT
# 33 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	release
# 34 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 35 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 36 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.align 2
# 37 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_PokemartDecor_ClearOutSale:
# 38 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.2byte DECOR_MUD_BALL
# 39 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.2byte DECOR_FENCE_LENGTH
# 40 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.2byte DECOR_FENCE_WIDTH
# 41 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.2byte DECOR_TIRE
# 42 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.2byte DECOR_BREAKABLE_DOOR
# 43 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.2byte DECOR_SOLID_BOARD
# 44 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.2byte DECOR_SAND_ORNAMENT
# 45 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.2byte DECOR_STAND
# 46 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.2byte DECOR_SLIDE
# 47 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.2byte DECOR_TV
# 48 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.2byte DECOR_ROUND_TV
# 49 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.2byte DECOR_CUTE_TV
# 50 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.2byte DECOR_WAILMER_DOLL
# 51 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.2byte DECOR_RHYDON_DOLL
# 52 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.2byte 0
# 53 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	release
# 54 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 55 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 56 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_Man::
# 57 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	lock
# 58 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	faceplayer
# 59 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	getpokenewsactive POKENEWS_LILYCOVE
# 60 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	call_if_eq VAR_RESULT, TRUE, LilycoveCity_DepartmentStoreRooftop_EventScript_ManClearOutSale
# 61 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_SetDatesForClearOutSales, MSGBOX_DEFAULT
# 62 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	release
# 63 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 64 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 65 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_ManClearOutSale::
# 66 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_BeenWaitingForClearOutSale, MSGBOX_DEFAULT
# 67 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	release
# 68 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 69 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 70 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_ThirstyMan::
# 71 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_BoneDryThirsty, MSGBOX_NPC
# 72 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 73 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 74 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_OldWoman_Quest::
# 75 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	lock
# 76 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	faceplayer
# 77 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto_if_set FLAG_HIDE_PHOENIXHOUSE1_OLD_MAN, LilycoveCity_DepartmentStoreRooftop_EventScript_OldWoman_QuestComplete
# 78 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto_if_unset FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_STARTED, LilycoveCity_DepartmentStoreRooftop_EventScript_OldWoman_QuestNormal
# 79 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto_if_set FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_REPLY, LilycoveCity_DepartmentStoreRooftop_EventScript_OldWoman_QuestReplySent
# 80 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto_if_set FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_LETTER, LilycoveCity_DepartmentStoreRooftop_EventScript_OldWoman_QuestReceiveLetter
# 81 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto_if_unset FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_FAMILY_MET, LilycoveCity_DepartmentStoreRooftop_EventScript_OldWoman_QuestIntroduction
# 82 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto LilycoveCity_DepartmentStoreRooftop_EventScript_OldWoman_QuestWaiting
# 83 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 84 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_OldWoman_QuestNormal::
# 85 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_OldWoman_QuestNormal, MSGBOX_NPC
# 86 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	release
# 87 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 88 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 89 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_OldWoman_QuestIntroduction::
# 90 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_OldWoman_QuestIntroduction, MSGBOX_DEFAULT
# 91 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	setflag FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_FAMILY_MET
# 92 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	release
# 93 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 94 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 95 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_OldWoman_QuestWaiting::
# 96 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_OldWoman_QuestWaiting, MSGBOX_DEFAULT
# 97 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	release
# 98 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 99 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 100 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_OldWoman_QuestReceiveLetter::
# 101 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	playse SE_PIN
# 102 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
# 103 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	waitmovement 0
# 104 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_OldWoman_QuestReceiveLetter, MSGBOX_DEFAULT
# 105 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	clearflag FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_LETTER
# 106 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	setflag FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_REPLY
# 107 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_OldWoman_QuestGiveReply, MSGBOX_DEFAULT
# 108 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	release
# 109 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 110 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 111 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_OldWoman_QuestReplySent::
# 112 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_OldWoman_QuestReplySent, MSGBOX_DEFAULT
# 113 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	release
# 114 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 115 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 116 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_OldWoman_QuestComplete::
# 117 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_OldWoman_QuestComplete, MSGBOX_DEFAULT
# 118 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	release
# 119 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 120 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 121 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_QuestKid::
# 122 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	lock
# 123 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	faceplayer
# 124 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto_if_set FLAG_HIDE_PHOENIXHOUSE1_OLD_MAN, LilycoveCity_DepartmentStoreRooftop_EventScript_QuestKidComplete
# 125 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto_if_unset FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_STARTED, LilycoveCity_DepartmentStoreRooftop_EventScript_QuestKidNormal
# 126 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto_if_set FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_REPLY, LilycoveCity_DepartmentStoreRooftop_EventScript_QuestKidReplySent
# 127 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto_if_set FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_LETTER, LilycoveCity_DepartmentStoreRooftop_EventScript_QuestKidReceiveLetter
# 128 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto_if_unset FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_FAMILY_MET, LilycoveCity_DepartmentStoreRooftop_EventScript_QuestKidIntroduction
# 129 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto LilycoveCity_DepartmentStoreRooftop_EventScript_QuestKidWaiting
# 130 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 131 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_QuestKidNormal::
# 132 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_QuestKid_Normal, MSGBOX_NPC
# 133 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	release
# 134 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 135 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 136 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_QuestKidIntroduction::
# 137 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_QuestKid_Introduction, MSGBOX_DEFAULT
# 138 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	setflag FLAG_PHOENIXHOUSE1_OLD_MAN_QUEST_FAMILY_MET
# 139 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	release
# 140 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 141 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 142 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_QuestKidReceiveLetter::
# 143 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	playse SE_PIN
# 144 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
# 145 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	waitmovement 0
# 146 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_QuestKid_ReceiveLetter, MSGBOX_DEFAULT
# 147 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	release
# 148 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 149 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 150 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_QuestKidReplySent::
# 151 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_QuestKid_ReplySent, MSGBOX_DEFAULT
# 152 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	release
# 153 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 154 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 155 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_QuestKidWaiting::
# 156 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_QuestKid_Waiting, MSGBOX_DEFAULT
# 157 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	release
# 158 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 159 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 160 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_QuestKidComplete::
# 161 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_QuestKid_Complete, MSGBOX_DEFAULT
# 162 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	release
# 163 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 164 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 165 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_QuestOldMan::
# 166 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_QuestOldMan_Complete, MSGBOX_NPC
# 167 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 168 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 169 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_VendingMachine::
# 170 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	lockall
# 171 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	message LilycoveCity_DepartmentStoreRooftop_Text_WhichDrinkWouldYouLike
# 172 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	waitmessage
# 173 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	showmoneybox 0, 0
# 174 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto LilycoveCity_DepartmentStoreRooftop_EventScript_ChooseDrink
# 175 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 176 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 177 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_ChooseDrink::
# 178 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	multichoice 16, 0, MULTI_VENDING_MACHINE, FALSE
# 179 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	copyvar VAR_TEMP_1, VAR_RESULT
# 180 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	switch VAR_TEMP_1
# 181 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	case 0, LilycoveCity_DepartmentStoreRooftop_EventScript_FreshWater
# 182 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	case 1, LilycoveCity_DepartmentStoreRooftop_EventScript_SodaPop
# 183 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	case 2, LilycoveCity_DepartmentStoreRooftop_EventScript_Lemonade
# 184 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_DecidedAgainstBuyingDrink, MSGBOX_DEFAULT
# 185 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto LilycoveCity_DepartmentStoreRooftop_EventScript_ExitVendingMachine
# 186 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 187 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 188 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_FreshWater::
# 189 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	setvar VAR_TEMP_0, ITEM_FRESH_WATER
# 190 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto LilycoveCity_DepartmentStoreRooftop_EventScript_TryBuyDrink
# 191 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 192 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 193 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_SodaPop::
# 194 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	setvar VAR_TEMP_0, ITEM_SODA_POP
# 195 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto LilycoveCity_DepartmentStoreRooftop_EventScript_TryBuyDrink
# 196 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 197 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 198 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_Lemonade::
# 199 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	setvar VAR_TEMP_0, ITEM_LEMONADE
# 200 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto LilycoveCity_DepartmentStoreRooftop_EventScript_TryBuyDrink
# 201 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 202 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 203 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_CheckMoneyFreshWater::
# 204 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	checkmoney 200
# 205 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	return
# 206 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 207 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_CheckMoneySodaPop::
# 208 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	checkmoney 300
# 209 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	return
# 210 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 211 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_CheckMoneyLemonade::
# 212 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	checkmoney 350
# 213 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	return
# 214 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 215 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_RemoveMoneyFreshWater::
# 216 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	removemoney 200
# 217 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	return
# 218 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 219 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_RemoveMoneySodaPop::
# 220 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	removemoney 300
# 221 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	return
# 222 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 223 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_RemoveMoneyLemonade::
# 224 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	removemoney 350
# 225 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	return
# 226 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 227 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_TryBuyDrink::
# 228 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	call_if_eq VAR_TEMP_1, 0, LilycoveCity_DepartmentStoreRooftop_EventScript_CheckMoneyFreshWater
# 229 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	call_if_eq VAR_TEMP_1, 1, LilycoveCity_DepartmentStoreRooftop_EventScript_CheckMoneySodaPop
# 230 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	call_if_eq VAR_TEMP_1, 2, LilycoveCity_DepartmentStoreRooftop_EventScript_CheckMoneyLemonade
# 231 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, LilycoveCity_DepartmentStoreRooftop_EventScript_NotEnoughMoneyForDrink
# 232 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	checkitemspace VAR_TEMP_0
# 233 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, LilycoveCity_DepartmentStoreRooftop_EventScript_NoRoomForDrink
# 234 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	call_if_eq VAR_TEMP_1, 0, LilycoveCity_DepartmentStoreRooftop_EventScript_RemoveMoneyFreshWater
# 235 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	call_if_eq VAR_TEMP_1, 1, LilycoveCity_DepartmentStoreRooftop_EventScript_RemoveMoneySodaPop
# 236 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	call_if_eq VAR_TEMP_1, 2, LilycoveCity_DepartmentStoreRooftop_EventScript_RemoveMoneyLemonade
# 237 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	updatemoneybox
# 238 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	bufferitemname STR_VAR_1, VAR_TEMP_0
# 239 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	playse SE_VEND
# 240 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_CanOfDrinkDroppedDown, MSGBOX_DEFAULT
# 241 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	additem VAR_TEMP_0
# 242 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	bufferitemname STR_VAR_2, VAR_TEMP_0
# 243 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	bufferstdstring STR_VAR_3, STDSTRING_ITEMS
# 244 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox gText_PutItemInPocket, MSGBOX_DEFAULT
# 245 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	random 64  @ 1/64 chance of an additional drink dropping
# 246 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto_if_ne VAR_RESULT, 0, LilycoveCity_DepartmentStoreRooftop_EventScript_ChooseNewDrink
# 247 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	checkitemspace VAR_TEMP_0
# 248 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, LilycoveCity_DepartmentStoreRooftop_EventScript_NoRoomForDrink
# 249 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	playse SE_VEND
# 250 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_ExtraCanOfDrinkDroppedDown, MSGBOX_DEFAULT
# 251 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	additem VAR_TEMP_0
# 252 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	bufferitemname STR_VAR_2, VAR_TEMP_0
# 253 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	bufferstdstring STR_VAR_3, STDSTRING_ITEMS
# 254 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox gText_PutItemInPocket, MSGBOX_DEFAULT
# 255 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	random 64  @ 1/64 * the prev 1/64 chance of a third additional drink dropping, ~ 0.02% chance
# 256 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto_if_ne VAR_RESULT, 0, LilycoveCity_DepartmentStoreRooftop_EventScript_ChooseNewDrink
# 257 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	checkitemspace VAR_TEMP_0
# 258 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto_if_eq VAR_RESULT, 0, LilycoveCity_DepartmentStoreRooftop_EventScript_NoRoomForDrink
# 259 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	playse SE_VEND
# 260 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_ExtraCanOfDrinkDroppedDown, MSGBOX_DEFAULT
# 261 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	additem VAR_TEMP_0
# 262 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	bufferitemname STR_VAR_2, VAR_TEMP_0
# 263 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	bufferstdstring STR_VAR_3, STDSTRING_ITEMS
# 264 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox gText_PutItemInPocket, MSGBOX_DEFAULT
# 265 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto LilycoveCity_DepartmentStoreRooftop_EventScript_ChooseNewDrink
# 266 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 267 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 268 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_ChooseNewDrink::
# 269 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	message LilycoveCity_DepartmentStoreRooftop_Text_WhichDrinkWouldYouLike
# 270 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	waitmessage
# 271 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto LilycoveCity_DepartmentStoreRooftop_EventScript_ChooseDrink
# 272 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 273 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 274 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_NotEnoughMoneyForDrink::
# 275 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox LilycoveCity_DepartmentStoreRooftop_Text_NotEnoughMoney, MSGBOX_DEFAULT
# 276 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto LilycoveCity_DepartmentStoreRooftop_EventScript_ExitVendingMachine
# 277 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 278 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 279 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_NoRoomForDrink::
# 280 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	msgbox gText_TheBagIsFull, MSGBOX_DEFAULT
# 281 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	goto LilycoveCity_DepartmentStoreRooftop_EventScript_ExitVendingMachine
# 282 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 283 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 284 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_EventScript_ExitVendingMachine::
# 285 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	hidemoneybox
# 286 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	releaseall
# 287 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	end
# 288 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 289 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_SetDatesForClearOutSales:
# 290 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Don't they have set dates for their\n"
# 291 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "clear-out sales?\p"
# 292 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "I watch TV, but they never show any\n"
# 293 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "commercials.$"
# 294 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 295 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_BeenWaitingForClearOutSale:
# 296 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Yes! I've been waiting a long time for\n"
# 297 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "this clear-out sale.\p"
# 298 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "They have items that you can only get\n"
# 299 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "here. I'm going to load up, that I am!$"
# 300 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 301 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_BoneDryThirsty:
# 302 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Ohh… I'm bone-dry thirsty!$"
# 303 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 304 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_WhichDrinkWouldYouLike:
# 305 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "It's a VENDING MACHINE.\n"
# 306 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Which drink would you like?$"
# 307 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 308 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_CanOfDrinkDroppedDown:
# 309 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Clang!\p"
# 310 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "A can of {STR_VAR_1} dropped down.$"
# 311 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 312 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_ExtraCanOfDrinkDroppedDown:
# 313 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Clang!\p"
# 314 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Score! An extra can of {STR_VAR_1}\n"
# 315 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "dropped down!$"
# 316 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 317 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_NotEnoughMoney:
# 318 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Not enough money…$"
# 319 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 320 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_DecidedAgainstBuyingDrink:
# 321 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Decided against buying a drink.$"
# 322 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 323 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_OldWoman_QuestNormal:
# 324 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "The breeze is gentle today.\n"
# 325 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "It is easy to lose an afternoon up here.$"
# 326 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 327 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_OldWoman_QuestIntroduction:
# 328 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Grandfather…?\p"
# 329 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "I remember his warm hands and the way\n"
# 330 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "he found pictures in the clouds.\p"
# 331 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "It has been such a long time…\n"
# 332 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "If you happen to see him, tell him we\n"
# 333 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "still look up at the same sky.$"
# 334 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 335 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_OldWoman_QuestWaiting:
# 336 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "We have been thinking about him ever\n"
# 337 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "since you came by.\p"
# 338 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "The sky feels a little bigger today.$"
# 339 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 340 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_OldWoman_QuestReceiveLetter:
# 341 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "From him…?\p"
# 342 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Oh, my dear… These are the words I have\n"
# 343 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "been waiting for all these years.\p"
# 344 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "I thought the wind had carried him away.\n"
# 345 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "But he was still looking at our sky.$"
# 346 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 347 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_OldWoman_QuestGiveReply:
# 348 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "I wrote a few words for him.\p"
# 349 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Please carry this back to Grandpa. Tell\n"
# 350 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "him the sky is still beautiful from here.$"
# 351 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 352 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_OldWoman_QuestReplySent:
# 353 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "I hope he reads it beneath an open sky…\n"
# 354 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Maybe the distance will feel smaller then.$"
# 355 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 356 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_OldWoman_QuestComplete:
# 357 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "He came all this way…\p"
# 358 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "The clouds look brighter than they did\n"
# 359 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "this morning.$"
# 360 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 361 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_QuestKid_Normal:
# 362 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Look! That cloud looks like a WAILMER!\n"
# 363 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Or maybe a big fluffy hat.$"
# 364 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 365 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_QuestKid_Introduction:
# 366 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Grandpa… I remember his stories.\p"
# 367 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "He could find pictures in every cloud.\n"
# 368 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Please tell him I still remember.$"
# 369 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 370 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_QuestKid_ReceiveLetter:
# 371 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Grandpa wrote to us!\p"
# 372 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Grandma is crying… but she is smiling.\n"
# 373 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Are those happy tears?$"
# 374 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 375 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_QuestKid_ReplySent:
# 376 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "I hope Grandpa likes Grandma's letter.\n"
# 377 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Maybe one day we can watch the clouds\n"
# 378 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "together.$"
# 379 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 380 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_QuestKid_Waiting:
# 381 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Do you think Grandpa is looking at the\n"
# 382 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "sky right now?$"
# 383 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 384 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_QuestKid_Complete:
# 385 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Grandpa is here!\p"
# 386 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Now we can watch the clouds together.$"
# 387 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"

# 388 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
LilycoveCity_DepartmentStoreRooftop_Text_QuestOldMan_Complete:
# 389 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "This view is even better with family.\n"
# 390 "data/maps/LilycoveCity_DepartmentStoreRooftop/scripts.pory"
	.string "Thank you for bringing us here.$"
