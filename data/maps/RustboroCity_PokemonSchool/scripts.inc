# 1 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 2 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_MapScripts::
# 3 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.byte 0
# 4 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 5 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_Blackboard::
# 6 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	lockall
# 7 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_BlackboardListsStatusChanges, MSGBOX_DEFAULT
# 8 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	goto RustboroCity_PokemonSchool_EventScript_ChooseBlackboardTopic
# 9 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 10 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 11 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_ChooseBlackboardTopic::
# 12 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	message RustboroCity_PokemonSchool_Text_ReadWhichTopic
# 13 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	waitmessage
# 14 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	multichoicegrid 8, 1, MULTI_STATUS_INFO, 3, FALSE
# 15 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	switch VAR_RESULT
# 16 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	case 0, RustboroCity_PokemonSchool_EventScript_Poison
# 17 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	case 1, RustboroCity_PokemonSchool_EventScript_Paralysis
# 18 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	case 2, RustboroCity_PokemonSchool_EventScript_Sleep
# 19 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	case 3, RustboroCity_PokemonSchool_EventScript_Burn
# 20 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	case 4, RustboroCity_PokemonSchool_EventScript_Freeze
# 21 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	case 5, RustboroCity_PokemonSchool_EventScript_ExitTopicSelect
# 22 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	case MULTI_B_PRESSED, RustboroCity_PokemonSchool_EventScript_ExitTopicSelect
# 23 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 24 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 25 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_Poison::
# 26 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_ExplainPoison, MSGBOX_DEFAULT
# 27 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	goto RustboroCity_PokemonSchool_EventScript_ChooseBlackboardTopic
# 28 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 29 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 30 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_Paralysis::
# 31 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_ExplainParalysis, MSGBOX_DEFAULT
# 32 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	goto RustboroCity_PokemonSchool_EventScript_ChooseBlackboardTopic
# 33 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 34 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 35 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_Sleep::
# 36 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_ExplainSleep, MSGBOX_DEFAULT
# 37 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	goto RustboroCity_PokemonSchool_EventScript_ChooseBlackboardTopic
# 38 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 39 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 40 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_Burn::
# 41 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_ExplainBurn, MSGBOX_DEFAULT
# 42 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	goto RustboroCity_PokemonSchool_EventScript_ChooseBlackboardTopic
# 43 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 44 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 45 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_Freeze::
# 46 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_ExplainFreeze, MSGBOX_DEFAULT
# 47 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	goto RustboroCity_PokemonSchool_EventScript_ChooseBlackboardTopic
# 48 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 49 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 50 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_ExitTopicSelect::
# 51 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	releaseall
# 52 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 53 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 54 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_GameboyKid1::
# 55 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_TradingRightNow, MSGBOX_NPC
# 56 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 57 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 58 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_GameboyKid2::
# 59 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_AlwaysWantedSeedot, MSGBOX_NPC
# 60 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 61 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 62 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_SchoolKidM::
# 63 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	trainerbattle_double TRAINER_NILO, RustboroCity_PokemonSchool_Text_NiloIntro, RustboroCity_PokemonSchool_Text_NiloDefeat, RustboroCity_PokemonSchool_Text_NiloNotEnoughMons
# 64 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_NiloPostBattle, MSGBOX_AUTOCLOSE
# 65 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	setflag FLAG_DEFEATED_TRAINER_NILO
# 66 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 67 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 68 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_Lass::
# 69 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	trainerbattle_double TRAINER_JOLENE, RustboroCity_PokemonSchool_Text_JoleneIntro, RustboroCity_PokemonSchool_Text_JoleneDefeat, RustboroCity_PokemonSchool_Text_JoleneNotEnoughMons
# 70 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_JolenePostBattle, MSGBOX_AUTOCLOSE
# 71 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	setflag FLAG_DEFEATED_TRAINER_JOLENE
# 72 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 73 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 74 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_RichBoy::
# 75 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	trainerbattle_double TRAINER_LIAN, RustboroCity_PokemonSchool_Text_LianIntro, RustboroCity_PokemonSchool_Text_LianDefeat, RustboroCity_PokemonSchool_Text_LianNotEnoughMons
# 76 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_LianPostBattle, MSGBOX_AUTOCLOSE
# 77 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	setflag FLAG_DEFEATED_TRAINER_LIAN
# 78 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 79 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 80 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_StudentNotebook::
# 81 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_StudentsNotes, MSGBOX_SIGN
# 82 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 83 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 84 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_Teacher::
# 85 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
    lock
# 86 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
    faceplayer
# 87 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
    goto_if_set FLAG_RECEIVED_QUICK_CLAW, RustboroCity_PokemonSchool_EventScript_GaveWiseGlasses
# 88 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
    goto_if_unset FLAG_DEFEATED_TRAINER_NILO, RustboroCity_PokemonSchool_EventScript_TeacherRegular
# 89 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
    goto_if_unset FLAG_DEFEATED_TRAINER_JOLENE, RustboroCity_PokemonSchool_EventScript_TeacherRegular
# 90 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
    goto_if_unset FLAG_DEFEATED_TRAINER_LIAN, RustboroCity_PokemonSchool_EventScript_TeacherRegular
# 91 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
    goto RustboroCity_PokemonSchool_EventScript_GiveWiseGlasses
# 92 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
    end
# 93 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 94 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_TeacherRegular::
# 95 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
    msgbox RustboroCity_PokemonSchool_Text_TeacherRegular, MSGBOX_DEFAULT
# 96 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
    release
# 97 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
    end
# 98 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 99 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_CheckJolene::
# 100 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	goto_if_set FLAG_DEFEATED_TRAINER_JOLENE, RustboroCity_PokemonSchool_EventScript_CheckLian
# 101 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_TeacherTwoDefeated, MSGBOX_DEFAULT
# 102 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	release
# 103 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 104 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 105 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_CheckLian::
# 106 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	goto_if_set FLAG_DEFEATED_TRAINER_LIAN, RustboroCity_PokemonSchool_EventScript_GiveWiseGlasses
# 107 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_TeacherTwoDefeated, MSGBOX_DEFAULT
# 108 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	release
# 109 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 110 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 111 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_GiveWiseGlasses::
# 112 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_StudentsWhoDefeatAllGetWiseGlasses, MSGBOX_DEFAULT
# 113 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	giveitem ITEM_WISE_GLASSES
# 114 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	goto_if_eq VAR_RESULT, 0, Common_EventScript_ShowBagIsFull
# 115 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	closemessage
# 116 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_WalkInPlaceFasterDown
# 117 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	waitmovement 0
# 118 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	setflag FLAG_RECEIVED_QUICK_CLAW
# 119 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	release
# 120 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 121 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 122 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_GaveWiseGlasses::
# 123 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_ExplainWiseGlasses, MSGBOX_DEFAULT
# 124 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	closemessage
# 125 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_WalkInPlaceFasterDown
# 126 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	waitmovement 0
# 127 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	release
# 128 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 129 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 130 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_TeacherCheckOnStudentsEast::
# 131 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	applymovement VAR_LAST_TALKED, RustboroCity_PokemonSchool_Movement_TeacherCheckOnStudentsEast
# 132 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	waitmovement 0
# 133 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	return
# 134 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 135 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_TeacherCheckOnStudentsWest::
# 136 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	applymovement VAR_LAST_TALKED, RustboroCity_PokemonSchool_Movement_TeacherCheckOnStudentsWest
# 137 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	waitmovement 0
# 138 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	return
# 139 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 140 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Movement_TeacherCheckOnStudentsWest:
# 141 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_left
# 142 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_down
# 143 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_down
# 144 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_right
# 145 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_in_place_faster_down
# 146 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	delay_16
# 147 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	delay_16
# 148 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	delay_16
# 149 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_down
# 150 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_in_place_faster_left
# 151 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	delay_16
# 152 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	delay_16
# 153 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_right
# 154 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	delay_16
# 155 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	delay_16
# 156 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	delay_8
# 157 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_up
# 158 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_left
# 159 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_left
# 160 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_up
# 161 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_up
# 162 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_right
# 163 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	step_end
# 164 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 165 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Movement_TeacherCheckOnStudentsEast:
# 166 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_right
# 167 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_right
# 168 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_down
# 169 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_down
# 170 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_left
# 171 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_left
# 172 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_in_place_faster_down
# 173 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	delay_16
# 174 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	delay_16
# 175 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	delay_16
# 176 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_down
# 177 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_in_place_faster_left
# 178 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	delay_16
# 179 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	delay_16
# 180 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_right
# 181 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	delay_16
# 182 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	delay_16
# 183 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	delay_8
# 184 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_up
# 185 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_right
# 186 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_up
# 187 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_up
# 188 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_left
# 189 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	walk_left
# 190 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	step_end
# 191 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 192 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
@ ========================================
# 193 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
@ NEW NPC SCRIPTS
# 194 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
@ ========================================
# 195 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 196 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_Reception1::
# 197 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_ReceptionClassroomAndLibrary, MSGBOX_NPC
# 198 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 199 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 200 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_Reception2::
# 201 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_ReceptionClassesAreFree, MSGBOX_NPC
# 202 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 203 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 204 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_Couchlady::
# 205 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_CouchladyWaitingForBrother, MSGBOX_NPC
# 206 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 207 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 208 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_GirlLikesArt::
# 209 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_GirlLikesArt, MSGBOX_NPC
# 210 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 211 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 212 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_GirlAnsiousAboutExams::
# 213 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_GirlAnxiousAboutExams, MSGBOX_NPC
# 214 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 215 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 216 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_GirlLookingForBooks::
# 217 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_GirlLookingForBooks, MSGBOX_NPC
# 218 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 219 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 220 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_smallBoycantReadthesigns::
# 221 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	lock
# 222 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	faceplayer
# 223 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_SmallBoyCannotRead, MSGBOX_YESNO
# 224 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	goto_if_eq VAR_RESULT, NO, RustboroCity_PokemonSchool_EventScript_SmallBoyDeclined
# 225 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_SmallBoySignContent, MSGBOX_DEFAULT
# 226 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_SmallBoyThanks, MSGBOX_DEFAULT
# 227 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	release
# 228 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 229 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 230 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_EventScript_SmallBoyDeclined::
# 231 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	msgbox RustboroCity_PokemonSchool_Text_SmallBoyDeclined, MSGBOX_DEFAULT
# 232 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	release
# 233 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	end
# 234 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 235 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
@ ========================================
# 236 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
@ ORIGINAL TEXTS
# 237 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
@ ========================================
# 238 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 239 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_BlackboardListsStatusChanges:
# 240 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "The blackboard lists status changes\n"
# 241 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "that may affect POKéMON in battle.$"
# 242 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 243 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_ReadWhichTopic:
# 244 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Which topic do you want to read?$"
# 245 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 246 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_ExplainPoison:
# 247 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "If a POKéMON is poisoned, it will\n"
# 248 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "steadily lose HP.\p"
# 249 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "The effects of poison remain after\n"
# 250 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "a battle.\p"
# 251 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "A poisoned POKéMON's HP will drop\n"
# 252 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "while it is traveling.\p"
# 253 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Heal a poisoning using an ANTIDOTE.$"
# 254 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 255 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_ExplainParalysis:
# 256 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "If a POKéMON becomes paralyzed,\n"
# 257 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "its SPEED drops.\p"
# 258 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "It may also not be able to move while\n"
# 259 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "it is in battle.\p"
# 260 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Paralysis remains after battle.\n"
# 261 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Cure it using a PARLYZ HEAL.$"
# 262 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 263 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_ExplainSleep:
# 264 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "If a POKéMON falls asleep, it will be\n"
# 265 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "unable to attack.\p"
# 266 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "A POKéMON may wake up on its own,\n"
# 267 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "but if a battle ends while it is\l"
# 268 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "sleeping, it will stay asleep.\p"
# 269 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Wake it up using an AWAKENING.$"
# 270 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 271 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_ExplainBurn:
# 272 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "A burn reduces ATTACK power, and it\n"
# 273 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "steadily reduces the victim's HP.\p"
# 274 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "A burn lingers after battle.\n"
# 275 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Cure a burn using a BURN HEAL.$"
# 276 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 277 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_ExplainFreeze:
# 278 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "If a POKéMON is frozen, it becomes\n"
# 279 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "completely helpless.\p"
# 280 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "It will remain frozen after battle.\n"
# 281 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Thaw it out using an ICE HEAL.$"
# 282 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 283 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_TradingRightNow:
# 284 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "I'm trading POKéMON with my friend\n"
# 285 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "right now.$"
# 286 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 287 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_AlwaysWantedSeedot:
# 288 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "I always wanted a SEEDOT, and\n"
# 289 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "I'm finally getting one!$"
# 290 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 291 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_ConfusedPokemonAttacksItself:
# 292 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "You know how some POKéMON moves can\n"
# 293 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "confuse a POKéMON?\p"
# 294 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "A confused POKéMON will sometimes\n"
# 295 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "attack itself without meaning to.\p"
# 296 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "But once it leaves battle, it will\n"
# 297 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "return to normal.$"
# 298 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 299 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_PokemonHealItselfWithBerry:
# 300 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "A POKéMON holding a BERRY will heal\n"
# 301 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "itself…\p"
# 302 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "There are many kinds of items that\n"
# 303 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "POKéMON can hold…\p"
# 304 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Boy, it sure is hard taking notes\n"
# 305 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "down…$"
# 306 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 307 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_StudentsNotes:
# 308 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "It's this student's notebook…\p"
# 309 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "POKéMON are to be caught using\n"
# 310 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "POKé BALLS.\p"
# 311 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Up to six POKéMON can accompany\n"
# 312 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "a TRAINER.\p"
# 313 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "A TRAINER is someone who catches\n"
# 314 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "POKéMON, raises them, and battles\l"
# 315 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "with them.\p"
# 316 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "A TRAINER's mission is to defeat\n"
# 317 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "the strong TRAINERS who await\l"
# 318 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "challengers in POKéMON GYMS.$"
# 319 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 320 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_ScottMetAlreadyCut:
# 321 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Hello? Didn't we meet before?\n"
# 322 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "I think back in PETALBURG CITY.\p"
# 323 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Let me introduce myself.\n"
# 324 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "My name's SCOTT.\p"
# 325 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "I've been traveling everywhere in\n"
# 326 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "search of outstanding TRAINERS.\p"
# 327 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "More specifically, I'm looking for\n"
# 328 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "POKéMON battle experts.\p"
# 329 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "So, what brings you to this SCHOOL?\n"
# 330 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Are you a TRAINER, too?\p"
# 331 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "The first thing you should do is to\n"
# 332 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "have a POKéMON learn the move CUT.\p"
# 333 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "If I remember correctly, someone in\n"
# 334 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "this town has CUT.$"
# 335 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 336 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_NiloIntro:
# 337 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "I've been studying hard about\n"
# 338 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Pokémon battles!\p"
# 339 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Let me show you what I've learned!$"
# 340 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 341 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_NiloDefeat:
# 342 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Wow! You're really strong!$"
# 343 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 344 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_NiloPostBattle:
# 345 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "I need to study more…\n"
# 346 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "But battling is so much fun!$"
# 347 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 348 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_NiloNotEnoughMons:
# 349 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "You need two Pokémon to battle\n"
# 350 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "with me!$"
# 351 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 352 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_JoleneIntro:
# 353 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "My friends and I practice\n"
# 354 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "battling together.\p"
# 355 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Want to join our training session?$"
# 356 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 357 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_JoleneDefeat:
# 358 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "You're really good at this!$"
# 359 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 360 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_JolenePostBattle:
# 361 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "I'll keep practicing until\n"
# 362 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "I become a great Trainer!$"
# 363 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 364 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_JoleneNotEnoughMons:
# 365 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Oh, you don't have enough\n"
# 366 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Pokémon for a double battle.$"
# 367 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 368 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_LianIntro:
# 369 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "My family is quite wealthy,\n"
# 370 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "but I prefer Pokémon battles over\l"
# 371 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "material possessions!\p"
# 372 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Let's see how you fare against my\n"
# 373 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "well-bred Pokémon!$"
# 374 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 375 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_LianDefeat:
# 376 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Incredible! Your skill surpasses\n"
# 377 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "my wealth!$"
# 378 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 379 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_LianPostBattle:
# 380 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "True strength comes from\n"
# 381 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "training, not money.\p"
# 382 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "I respect your abilities.$"
# 383 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 384 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_LianNotEnoughMons:
# 385 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "A proper double battle requires\n"
# 386 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "two Pokémon on each side.$"
# 387 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 388 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_StudentsWhoDefeatAllGetWiseGlasses:
# 389 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Whoa! Congratulations on defeating\n"
# 390 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "all of our top students! Amazing.\p"
# 391 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "You've demonstrated excellent battle\n"
# 392 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "skills and strategy. Great job!\p"
# 393 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Please accept these WISE GLASSES as\n"
# 394 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "a reward for your accomplishment.$"
# 395 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 396 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_TeacherRegular:
# 397 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Our top students are ready for\n"
# 398 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "battles if you want to test your\l"
# 399 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "skills! Don't be shy. After\l"
# 400 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "defeating all the students, make sure\l"
# 401 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "to talk to each one to see if they\l"
# 402 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "have something to share. After that,\l"
# 403 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "talk to me to receive a prize for your\l"
# 404 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "dedication to your studies!$"
# 405 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 406 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_TeacherTwoDefeated:
# 407 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "You're doing great! Defeat all \n"
# 408 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "three students for a special reward!\p"
# 409 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "After defeating all the students, \n"
# 410 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "make sure to talk to each one to \l"
# 411 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "see if they have something to \l"
# 412 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "share. After that, talk to me to \l"
# 413 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "receive a prize for your dedication \l"
# 414 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "to your studies!$"
# 415 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 416 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_ExplainWiseGlasses:
# 417 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "The WISE GLASSES boost\n"
# 418 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "special attack power. Use them wisely!$"
# 419 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 420 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
@ ========================================
# 421 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
@ NEW NPC TEXTS
# 422 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
@ ========================================
# 423 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 424 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_ReceptionClassroomAndLibrary:
# 425 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Welcome to the POKéMON SCHOOL!\p"
# 426 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "The classroom is on your left.\n"
# 427 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "The library is up the stairs to\l"
# 428 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "the right.$"
# 429 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 430 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_ReceptionClassesAreFree:
# 431 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Classes here are free for all\n"
# 432 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "TRAINERS.\p"
# 433 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Please feel welcome to sit in\n"
# 434 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "and learn with us!$"
# 435 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 436 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_CouchladyWaitingForBrother:
# 437 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "I'm waiting to pick up my little\n"
# 438 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "brother from class.\p"
# 439 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "He always comes out talking about\n"
# 440 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "some new POKéMON fact he learned.$"
# 441 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 442 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_GirlLikesArt:
# 443 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "I love drawing POKéMON way more\n"
# 444 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "than writing notes!\p"
# 445 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "My favorite is RALTS.\n"
# 446 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "She looks so graceful and pretty!$"
# 447 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 448 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_GirlAnxiousAboutExams:
# 449 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Oh no, oh no…\n"
# 450 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "The exam is coming so soon!\p"
# 451 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "I haven't studied nearly enough!\n"
# 452 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "What if I forget everything?!$"
# 453 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 454 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_SmallBoyCannotRead:
# 455 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Hey, you! Could you read that\n"
# 456 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "notice board for me, please?\p"
# 457 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "I keep stretching on my tiptoes\n"
# 458 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "but it's way too high for me…\p"
# 459 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Will you read it?$"
# 460 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 461 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_SmallBoySignContent:
# 462 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "You read the notice board aloud:\p"
# 463 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "STUDENT NOTICES:\n"
# 464 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "- Label all your notebooks.\p"
# 465 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "- No running in the hallways.\p"
# 466 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "- Return borrowed books before\n"
# 467 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "  the exam week. Thank you!$"
# 468 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 469 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_SmallBoyThanks:
# 470 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Wow, thanks a lot!\p"
# 471 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "I'm gonna grow real tall someday\n"
# 472 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "and read everything by myself!$"
# 473 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 474 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_SmallBoyDeclined:
# 475 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Aww…\n"
# 476 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Okay, I'll ask someone else…$"
# 477 "data/maps/RustboroCity_PokemonSchool/scripts.pory"

# 478 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
RustboroCity_PokemonSchool_Text_GirlLookingForBooks:
# 479 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Hmm… I'm sure I left my\n"
# 480 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "study book around here…\p"
# 481 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "Have you seen a blue notebook\n"
# 482 "data/maps/RustboroCity_PokemonSchool/scripts.pory"
	.string "with POKéMON stickers on it?$"
