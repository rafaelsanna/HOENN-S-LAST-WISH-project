# 1 "data/maps/DewfordTown_Gym/scripts.pory"

# 2 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_MapScripts::
# 3 "data/maps/DewfordTown_Gym/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, DewfordTown_Gym_OnTransition
# 4 "data/maps/DewfordTown_Gym/scripts.pory"
	.byte 0
# 5 "data/maps/DewfordTown_Gym/scripts.pory"

# 6 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_OnTransition:
# 7 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_SetFlashLevel
# 8 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 9 "data/maps/DewfordTown_Gym/scripts.pory"

# 10 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetFlashLevel::
# 11 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_DEWFORD_GYM, DewfordTown_Gym_EventScript_SetLightsOn
# 12 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_CountTrainersDefeated
# 13 "data/maps/DewfordTown_Gym/scripts.pory"
	copyvar VAR_0x8001, VAR_0x8000
# 14 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 0, DewfordTown_Gym_EventScript_SetFlashLevel7
# 15 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 1, DewfordTown_Gym_EventScript_SetFlashLevel6
# 16 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 2, DewfordTown_Gym_EventScript_SetFlashLevel5
# 17 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 3, DewfordTown_Gym_EventScript_SetFlashLevel4
# 18 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 4, DewfordTown_Gym_EventScript_SetFlashLevel3
# 19 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 5, DewfordTown_Gym_EventScript_SetFlashLevel2
# 20 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_EventScript_SetFlashLevel1
# 21 "data/maps/DewfordTown_Gym/scripts.pory"

# 22 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetLightsOn::
# 23 "data/maps/DewfordTown_Gym/scripts.pory"
	setflashlevel 0
# 24 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 25 "data/maps/DewfordTown_Gym/scripts.pory"

# 26 "data/maps/DewfordTown_Gym/scripts.pory"
@ Brightest
# 27 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetFlashLevel1::
# 28 "data/maps/DewfordTown_Gym/scripts.pory"
	setflashlevel 1
# 29 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 30 "data/maps/DewfordTown_Gym/scripts.pory"

# 31 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetFlashLevel2::
# 32 "data/maps/DewfordTown_Gym/scripts.pory"
	setflashlevel 2
# 33 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 34 "data/maps/DewfordTown_Gym/scripts.pory"

# 35 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetFlashLevel3::
# 36 "data/maps/DewfordTown_Gym/scripts.pory"
	setflashlevel 3
# 37 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 38 "data/maps/DewfordTown_Gym/scripts.pory"

# 39 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetFlashLevel4::
# 40 "data/maps/DewfordTown_Gym/scripts.pory"
	setflashlevel 4
# 41 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 42 "data/maps/DewfordTown_Gym/scripts.pory"

# 43 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetFlashLevel5::
# 44 "data/maps/DewfordTown_Gym/scripts.pory"
	setflashlevel 5
# 45 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 46 "data/maps/DewfordTown_Gym/scripts.pory"

# 47 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetFlashLevel6::
# 48 "data/maps/DewfordTown_Gym/scripts.pory"
	setflashlevel 6
# 49 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 50 "data/maps/DewfordTown_Gym/scripts.pory"

# 51 "data/maps/DewfordTown_Gym/scripts.pory"
@ Darkest
# 52 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetFlashLevel7::
# 53 "data/maps/DewfordTown_Gym/scripts.pory"
	setflashlevel 7
# 54 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 55 "data/maps/DewfordTown_Gym/scripts.pory"

# 56 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_BrightenRoom::
# 57 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_CountTrainersDefeated
# 58 "data/maps/DewfordTown_Gym/scripts.pory"
	nop1
# 59 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, VAR_0x8001, DewfordTown_Gym_EventScript_NoLightChange
# 60 "data/maps/DewfordTown_Gym/scripts.pory"
	copyvar VAR_0x8001, VAR_0x8000
# 61 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 1, DewfordTown_Gym_EventScript_AnimateFlash1Trainer
# 62 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 2, DewfordTown_Gym_EventScript_AnimateFlash2Trainers
# 63 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 3, DewfordTown_Gym_EventScript_AnimateFlash3Trainers
# 64 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 4, DewfordTown_Gym_EventScript_AnimateFlash4Trainers
# 65 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 5, DewfordTown_Gym_EventScript_AnimateFlash5Trainers
# 66 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 6, DewfordTown_Gym_EventScript_AnimateFlash6Trainers
# 67 "data/maps/DewfordTown_Gym/scripts.pory"

# 68 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_NoLightChange::
# 69 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 70 "data/maps/DewfordTown_Gym/scripts.pory"

# 71 "data/maps/DewfordTown_Gym/scripts.pory"
@ NOTE: A little confusingly, a larger animateflash param value is a smaller flash radius
# 72 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_AnimateFlash1Trainer::
# 73 "data/maps/DewfordTown_Gym/scripts.pory"
	playse SE_SWITCH
# 74 "data/maps/DewfordTown_Gym/scripts.pory"
	animateflash 6
# 75 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_SetFlashLevel
# 76 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 77 "data/maps/DewfordTown_Gym/scripts.pory"

# 78 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_AnimateFlash2Trainers::
# 79 "data/maps/DewfordTown_Gym/scripts.pory"
	playse SE_SWITCH
# 80 "data/maps/DewfordTown_Gym/scripts.pory"
	animateflash 5
# 81 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_SetFlashLevel
# 82 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 83 "data/maps/DewfordTown_Gym/scripts.pory"

# 84 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_AnimateFlash3Trainers::
# 85 "data/maps/DewfordTown_Gym/scripts.pory"
	playse SE_SWITCH
# 86 "data/maps/DewfordTown_Gym/scripts.pory"
	animateflash 4
# 87 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_SetFlashLevel
# 88 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 89 "data/maps/DewfordTown_Gym/scripts.pory"

# 90 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_AnimateFlash4Trainers::
# 91 "data/maps/DewfordTown_Gym/scripts.pory"
	playse SE_SWITCH
# 92 "data/maps/DewfordTown_Gym/scripts.pory"
	animateflash 3
# 93 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_SetFlashLevel
# 94 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 95 "data/maps/DewfordTown_Gym/scripts.pory"

# 96 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_AnimateFlash5Trainers::
# 97 "data/maps/DewfordTown_Gym/scripts.pory"
	playse SE_SWITCH
# 98 "data/maps/DewfordTown_Gym/scripts.pory"
	animateflash 2
# 99 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_SetFlashLevel
# 100 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 101 "data/maps/DewfordTown_Gym/scripts.pory"

# 102 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_AnimateFlash6Trainers::
# 103 "data/maps/DewfordTown_Gym/scripts.pory"
	playse SE_SWITCH
# 104 "data/maps/DewfordTown_Gym/scripts.pory"
	animateflash 1
# 105 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_SetFlashLevel
# 106 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 107 "data/maps/DewfordTown_Gym/scripts.pory"

# 108 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_AnimateFlashFullBrightness::
# 109 "data/maps/DewfordTown_Gym/scripts.pory"
	playse SE_SWITCH
# 110 "data/maps/DewfordTown_Gym/scripts.pory"
	animateflash 0
# 111 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_SetFlashLevel
# 112 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 113 "data/maps/DewfordTown_Gym/scripts.pory"

# 114 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_CountTrainersDefeated::
# 115 "data/maps/DewfordTown_Gym/scripts.pory"
	setvar VAR_0x8000, 0
# 116 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_TAKAO, DewfordTown_Gym_EventScript_CheckJocelyn
# 117 "data/maps/DewfordTown_Gym/scripts.pory"
	addvar VAR_0x8000, 1
# 118 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_CheckJocelyn::
# 119 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_JOCELYN, DewfordTown_Gym_EventScript_CheckLaura
# 120 "data/maps/DewfordTown_Gym/scripts.pory"
	addvar VAR_0x8000, 1
# 121 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_CheckLaura::
# 122 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_LAURA, DewfordTown_Gym_EventScript_CheckBrenden
# 123 "data/maps/DewfordTown_Gym/scripts.pory"
	addvar VAR_0x8000, 1
# 124 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_CheckBrenden::
# 125 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_BRENDEN, DewfordTown_Gym_EventScript_CheckCristian
# 126 "data/maps/DewfordTown_Gym/scripts.pory"
	addvar VAR_0x8000, 1
# 127 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_CheckCristian::
# 128 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_CRISTIAN, DewfordTown_Gym_EventScript_CheckLilith
# 129 "data/maps/DewfordTown_Gym/scripts.pory"
	addvar VAR_0x8000, 1
# 130 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_CheckLilith::
# 131 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_LILITH, DewfordTown_Gym_EventScript_StopCountingTrainers
# 132 "data/maps/DewfordTown_Gym/scripts.pory"
	addvar VAR_0x8000, 1
# 133 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_StopCountingTrainers::
# 134 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 135 "data/maps/DewfordTown_Gym/scripts.pory"

# 136 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Brawly::
# 137 "data/maps/DewfordTown_Gym/scripts.pory"
	lock
# 138 "data/maps/DewfordTown_Gym/scripts.pory"
	faceplayer
# 139 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_DEWFORD_GYM, DewfordTown_Gym_AfterBattle
# 140 "data/maps/DewfordTown_Gym/scripts.pory"
	getdifficulty VAR_RESULT
# 141 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 1, DewfordTown_Gym_BrawlyHard
# 142 "data/maps/DewfordTown_Gym/scripts.pory"

# 143 "data/maps/DewfordTown_Gym/scripts.pory"
	@ Normal - TRAINER_BRAWLY_1
# 144 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 145 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_BrawlyIntro, MSGBOX_DEFAULT
# 146 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 147 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_BRAWLY_1, DewfordTown_Gym_Text_BrawlyDefeat
# 148 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrawlyDefeated
# 149 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_AfterBattle
# 150 "data/maps/DewfordTown_Gym/scripts.pory"

# 151 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_BrawlyHard::
# 152 "data/maps/DewfordTown_Gym/scripts.pory"
	@ Hard - TRAINER_BRAWLY
# 153 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 154 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_BrawlyIntro, MSGBOX_DEFAULT
# 155 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 156 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_BRAWLY, DewfordTown_Gym_Text_BrawlyDefeat
# 157 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrawlyDefeated
# 158 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_AfterBattle
# 159 "data/maps/DewfordTown_Gym/scripts.pory"

# 160 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_AfterBattle::
# 161 "data/maps/DewfordTown_Gym/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 162 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, DewfordTown_Gym_EventScript_BrawlyRematch
# 163 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_unset FLAG_RECEIVED_TM_BULK_UP, DewfordTown_Gym_EventScript_GiveBulkUp2
# 164 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 165 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_BrawlyPostBattle, MSGBOX_DEFAULT
# 166 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 167 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 168 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 169 "data/maps/DewfordTown_Gym/scripts.pory"

# 170 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_BrawlyDefeated::
# 171 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_AnimateFlashFullBrightness
# 172 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 173 "data/maps/DewfordTown_Gym/scripts.pory"
	message DewfordTown_Gym_Text_ReceivedKnuckleBadge
# 174 "data/maps/DewfordTown_Gym/scripts.pory"
	waitmessage
# 175 "data/maps/DewfordTown_Gym/scripts.pory"
	call Common_EventScript_PlayGymBadgeFanfare
# 176 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_KnuckleBadgeInfoTakeThis, MSGBOX_DEFAULT
# 177 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 178 "data/maps/DewfordTown_Gym/scripts.pory"
	setflag FLAG_DEFEATED_DEWFORD_GYM
# 179 "data/maps/DewfordTown_Gym/scripts.pory"
	setflag FLAG_BADGE02_GET
# 180 "data/maps/DewfordTown_Gym/scripts.pory"
	addvar VAR_PETALBURG_GYM_STATE, 1
# 181 "data/maps/DewfordTown_Gym/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 6, Common_EventScript_ReadyPetalburgGymForBattle
# 182 "data/maps/DewfordTown_Gym/scripts.pory"
	setvar VAR_0x8008, 2
# 183 "data/maps/DewfordTown_Gym/scripts.pory"
	call Common_EventScript_SetGymTrainers
# 184 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_GiveBulkUp
# 185 "data/maps/DewfordTown_Gym/scripts.pory"
	closemessage
# 186 "data/maps/DewfordTown_Gym/scripts.pory"
	delay 30
# 187 "data/maps/DewfordTown_Gym/scripts.pory"
	waitfanfare
# 188 "data/maps/DewfordTown_Gym/scripts.pory"
	closemessage
# 189 "data/maps/DewfordTown_Gym/scripts.pory"
	delay 30
# 190 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 191 "data/maps/DewfordTown_Gym/scripts.pory"

# 192 "data/maps/DewfordTown_Gym/scripts.pory"

# 193 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GiveBulkUp::
# 194 "data/maps/DewfordTown_Gym/scripts.pory"
	giveitem ITEM_TM_BULK_UP
# 195 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 0, Common_EventScript_BagIsFull
# 196 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 197 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_ExplainBulkUp, MSGBOX_DEFAULT
# 198 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 199 "data/maps/DewfordTown_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_BULK_UP
# 200 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 201 "data/maps/DewfordTown_Gym/scripts.pory"

# 202 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GiveBulkUp2:
# 203 "data/maps/DewfordTown_Gym/scripts.pory"
	giveitem ITEM_TM_BULK_UP
# 204 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 0, Common_EventScript_ShowBagIsFull
# 205 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 206 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_ExplainBulkUp, MSGBOX_DEFAULT
# 207 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 208 "data/maps/DewfordTown_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_BULK_UP
# 209 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 210 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 211 "data/maps/DewfordTown_Gym/scripts.pory"

# 212 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_BrawlyRematch::
# 213 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 214 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_BrawlyPreRematch, MSGBOX_DEFAULT
# 215 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 216 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_BRAWLY_1, DewfordTown_Gym_Text_BrawlyRematchDefeat
# 217 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 218 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_BrawlyPostRematch, MSGBOX_AUTOCLOSE
# 219 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 220 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 221 "data/maps/DewfordTown_Gym/scripts.pory"

# 222 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Takao::
# 223 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_TAKAO, DewfordTown_Gym_Text_TakaoIntro, DewfordTown_Gym_Text_TakaoDefeat, DewfordTown_Gym_EventScript_TakaoBrightenRoom
# 224 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_TakaoPostBattle, MSGBOX_AUTOCLOSE
# 225 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 226 "data/maps/DewfordTown_Gym/scripts.pory"

# 227 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_TakaoBrightenRoom::
# 228 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 229 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 230 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 231 "data/maps/DewfordTown_Gym/scripts.pory"

# 232 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Jocelyn::
# 233 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_JOCELYN, DewfordTown_Gym_Text_JocelynIntro, DewfordTown_Gym_Text_JocelynDefeat, DewfordTown_Gym_EventScript_JocelynBrightenRoom
# 234 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_JocelynPostBattle, MSGBOX_AUTOCLOSE
# 235 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 236 "data/maps/DewfordTown_Gym/scripts.pory"

# 237 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_JocelynBrightenRoom::
# 238 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 239 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 240 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 241 "data/maps/DewfordTown_Gym/scripts.pory"

# 242 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Laura::
# 243 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_LAURA, DewfordTown_Gym_Text_LauraIntro, DewfordTown_Gym_Text_LauraDefeat, DewfordTown_Gym_EventScript_LauraBrightenRoom
# 244 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_LauraPostBattle, MSGBOX_AUTOCLOSE
# 245 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 246 "data/maps/DewfordTown_Gym/scripts.pory"

# 247 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_LauraBrightenRoom::
# 248 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 249 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 250 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 251 "data/maps/DewfordTown_Gym/scripts.pory"

# 252 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Brenden::
# 253 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_BRENDEN, DewfordTown_Gym_Text_BrendenIntro, DewfordTown_Gym_Text_BrendenDefeat, DewfordTown_Gym_EventScript_BrendenBrightenRoom
# 254 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_BrendenPostBattle, MSGBOX_AUTOCLOSE
# 255 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 256 "data/maps/DewfordTown_Gym/scripts.pory"

# 257 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_BrendenBrightenRoom::
# 258 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 259 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 260 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 261 "data/maps/DewfordTown_Gym/scripts.pory"

# 262 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Cristian::
# 263 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_CRISTIAN, DewfordTown_Gym_Text_CristianIntro, DewfordTown_Gym_Text_CristianDefeat, DewfordTown_Gym_EventScript_CristianBrightenRoom
# 264 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_CristianPostBattle, MSGBOX_AUTOCLOSE
# 265 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 266 "data/maps/DewfordTown_Gym/scripts.pory"

# 267 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_CristianBrightenRoom::
# 268 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 269 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 270 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 271 "data/maps/DewfordTown_Gym/scripts.pory"

# 272 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Lilith::
# 273 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_LILITH, DewfordTown_Gym_Text_LilithIntro, DewfordTown_Gym_Text_LilithDefeat, DewfordTown_Gym_EventScript_LilithBrightenRoom
# 274 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_LilithPostBattle, MSGBOX_AUTOCLOSE
# 275 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 276 "data/maps/DewfordTown_Gym/scripts.pory"

# 277 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_LilithBrightenRoom::
# 278 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 279 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 280 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 281 "data/maps/DewfordTown_Gym/scripts.pory"

# 282 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymGuide::
# 283 "data/maps/DewfordTown_Gym/scripts.pory"
	lock
# 284 "data/maps/DewfordTown_Gym/scripts.pory"
	faceplayer
# 285 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_DEWFORD_GYM, DewfordTown_Gym_EventScript_GymGuidePostVictory
# 286 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_EventScript_GymGuideAdvice
# 287 "data/maps/DewfordTown_Gym/scripts.pory"

# 288 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymGuideAdvice::
# 289 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 290 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 291 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 292 "data/maps/DewfordTown_Gym/scripts.pory"

# 293 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymGuidePostVictory::
# 294 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 295 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 296 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 297 "data/maps/DewfordTown_Gym/scripts.pory"

# 298 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_LeftGymStatue::
# 299 "data/maps/DewfordTown_Gym/scripts.pory"
	lockall
# 300 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_set FLAG_BADGE02_GET, DewfordTown_Gym_EventScript_GymStatueCertified
# 301 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_EventScript_GymStatue
# 302 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 303 "data/maps/DewfordTown_Gym/scripts.pory"

# 304 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_RightGymStatue::
# 305 "data/maps/DewfordTown_Gym/scripts.pory"
	lockall
# 306 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_set FLAG_BADGE02_GET, DewfordTown_Gym_EventScript_GymStatueCertified
# 307 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_EventScript_GymStatue
# 308 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 309 "data/maps/DewfordTown_Gym/scripts.pory"

# 310 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymStatueCertified::
# 311 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 312 "data/maps/DewfordTown_Gym/scripts.pory"
	releaseall
# 313 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 314 "data/maps/DewfordTown_Gym/scripts.pory"

# 315 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymStatue::
# 316 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 317 "data/maps/DewfordTown_Gym/scripts.pory"
	releaseall
# 318 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 319 "data/maps/DewfordTown_Gym/scripts.pory"

# 320 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_GymGuideAdvice:
# 321 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Hey, how's it going, CHAMPION-\n"
# 322 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "bound {PLAYER}?\p"
# 323 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON loves tough battles and\n"
# 324 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "hits hard. Prepare for FIGHTING power!\p"
# 325 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "NORMAL-types are asking for trouble.\n"
# 326 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "FIGHTING moves crush them!\p"
# 327 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "The Gym is super dark. RENTON likes\n"
# 328 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "it that way.\p"
# 329 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Beat TRAINERS and it gets brighter.\n"
# 330 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Good luck!$"
# 331 "data/maps/DewfordTown_Gym/scripts.pory"

# 332 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_GymGuidePostVictory:
# 333 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Whoah! It's way brighter in here now!\p"
# 334 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Your future's looking bright too,\n"
# 335 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "CHAMPION-to-be!$"
# 336 "data/maps/DewfordTown_Gym/scripts.pory"

# 337 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_TakaoIntro:
# 338 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Might is right!\n"
# 339 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Come on!$"
# 340 "data/maps/DewfordTown_Gym/scripts.pory"

# 341 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_TakaoDefeat:
# 342 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Not enough power...$"
# 343 "data/maps/DewfordTown_Gym/scripts.pory"

# 344 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_TakaoPostBattle:
# 345 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Your skill overcame my strength!\n"
# 346 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Your technique is commendable!$"
# 347 "data/maps/DewfordTown_Gym/scripts.pory"

# 348 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_JocelynIntro:
# 349 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "No way I'm letting RENTON handle this!\n"
# 350 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You do NOT want that!\p"
# 351 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'd rather face wild Pokemon or even\n"
# 352 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "the ELITE FOUR than his street brawls!\p"
# 353 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "He demolished the old Gym Leader,\n"
# 354 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "and it wasn't even a Pokemon battle!\l"
# 355 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Hahaha!$"
# 356 "data/maps/DewfordTown_Gym/scripts.pory"

# 357 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_JocelynDefeat:
# 358 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You're tough... but be careful!\n"
# 359 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Don't get cocky around RENTON,\p"
# 360 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "or you'll end up in real trouble!\n"
# 361 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "But he respects fighters like you...$"
# 362 "data/maps/DewfordTown_Gym/scripts.pory"

# 363 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_JocelynPostBattle:
# 364 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "That battle fired me up!\n"
# 365 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm gonna train like crazy!\p"
# 366 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "One day I'll be totally badass...\n"
# 367 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "just like RENTON!$"
# 368 "data/maps/DewfordTown_Gym/scripts.pory"

# 369 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LauraIntro:
# 370 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Don't brush me off!\n"
# 371 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I blast ROCK music in here!\p"
# 372 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "The dark? I don't care about that!\n"
# 373 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I grew up hanging with RENTON!\p"
# 374 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Street fights, loud nights, bad lighting...\n"
# 375 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "This Gym is exactly my vibe!$"
# 376 "data/maps/DewfordTown_Gym/scripts.pory"

# 377 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LauraDefeat:
# 378 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Waaaah!\n"
# 379 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I lost! No way...$"
# 380 "data/maps/DewfordTown_Gym/scripts.pory"

# 381 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LauraPostBattle:
# 382 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Huh? Me and RENTON?\n"
# 383 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "A thing? No way!\p"
# 384 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "We're just friends, don't be weird!\n"
# 385 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Stop imagining stuff!$"
# 386 "data/maps/DewfordTown_Gym/scripts.pory"

# 387 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LilithIntro:
# 388 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Ufufu...\p"
# 389 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You, with those weird clothes!\n"
# 390 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Stumbling around in the dark?$"
# 391 "data/maps/DewfordTown_Gym/scripts.pory"

# 392 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LilithDefeat:
# 393 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Oh, you... weirdo...\n"
# 394 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I don't want to know you!$"
# 395 "data/maps/DewfordTown_Gym/scripts.pory"

# 396 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LilithPostBattle:
# 397 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You deserve to get lost and end up\n"
# 398 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "back at the entrance!\p"
# 399 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "We get used to the dark here.\n"
# 400 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Just like street fights... the more,\l"
# 401 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "the better we become!$"
# 402 "data/maps/DewfordTown_Gym/scripts.pory"

# 403 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrendenIntro:
# 404 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHA! During one of RENTON's wild\n"
# 405 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "nights, we became friends!\p"
# 406 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "We threw hands, I got beat up bad,\n"
# 407 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHA! But he saw I was tough!\p"
# 408 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm a sailor! I've seen storms,\n"
# 409 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "ship brawls, bar fights, everything!\p"
# 410 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "So come on, cape brat!\n"
# 411 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Show me what you got!$"
# 412 "data/maps/DewfordTown_Gym/scripts.pory"

# 413 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrendenDefeat:
# 414 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Not bad! But this was nothing compared\n"
# 415 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "to RENTON's beatdowns!\p"
# 416 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "That was easy stuff!\n"
# 417 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You've got a long way to go!$"
# 418 "data/maps/DewfordTown_Gym/scripts.pory"

# 419 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrendenPostBattle:
# 420 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Rules are rules, y'know.\n"
# 421 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Go on, take your beatdown from RENTON!\p"
# 422 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "After that, we can sail off and\n"
# 423 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "drink till sunrise! RENTON's the man!$"
# 424 "data/maps/DewfordTown_Gym/scripts.pory"

# 425 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_CristianIntro:
# 426 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "If you want to pass, you fight me first!\p"
# 427 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Strength matters here\n"
# 428 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "just like in any street brawl!\p"
# 429 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm a punk and proud of it!\n"
# 430 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm here because I grew up with RENTON!\l"
# 431 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "We've been scrapping since kindergarten!$"
# 432 "data/maps/DewfordTown_Gym/scripts.pory"

# 433 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_CristianDefeat:
# 434 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Grrrrr!\n"
# 435 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You got lucky!$"
# 436 "data/maps/DewfordTown_Gym/scripts.pory"

# 437 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_CristianPostBattle:
# 438 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Fine! You win!\n"
# 439 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Go after that BADGE!\p"
# 440 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "With moves like that, you'd survive\n"
# 441 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "a real street fight too!$"
# 442 "data/maps/DewfordTown_Gym/scripts.pory"

# 443 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyIntro:
# 444 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Yo! I'm RENTON!\n"
# 445 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "DEWFORD's new GYM LEADER!\p"
# 446 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm forged in street brawls and\n"
# 447 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "back-alley fights. Fists fly harder\l"
# 448 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "than any fancy cave move!\p"
# 449 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I took down the last Leader here\n"
# 450 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "with my own fists. Forgot his name!\p"
# 451 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "So, you wanna challenge me?\n"
# 452 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Show me what you're made of!$"
# 453 "data/maps/DewfordTown_Gym/scripts.pory"

# 454 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyDefeat:
# 455 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Whoah, damn! You hit way harder than\n"
# 456 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I thought you would!\p"
# 457 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You totally wrecked me!\n"
# 458 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Alright, take this GYM BADGE!\p"
# 459 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "But you'd better run along now...\n"
# 460 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "or you might pick a real fight with me!\p"
# 461 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHAHAHA!$"
# 462 "data/maps/DewfordTown_Gym/scripts.pory"

# 463 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_ReceivedKnuckleBadge:
# 464 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "{PLAYER} received the KNUCKLE BADGE\n"
# 465 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "from RENTON.$"
# 466 "data/maps/DewfordTown_Gym/scripts.pory"

# 467 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_KnuckleBadgeInfoTakeThis:
# 468 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "The KNUCKLE BADGE makes all POKéMON\n"
# 469 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "up to Level 30 obey without question.\p"
# 470 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "And you can use FLASH outside\n"
# 471 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "of battle.\p"
# 472 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "If you'd like, use this TECHNICAL\n"
# 473 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "MACHINE, too.$"
# 474 "data/maps/DewfordTown_Gym/scripts.pory"

# 475 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_ExplainBulkUp:
# 476 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "That TM08 contains BULK UP.\p"
# 477 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "It raises both ATTACK and DEFENSE.\p"
# 478 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "… … … … … …$"
# 479 "data/maps/DewfordTown_Gym/scripts.pory"

# 480 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_RegisteredBrawly:
# 481 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Registered GYM LEADER RENTON\n"
# 482 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "in the POKéNAV.$"
# 483 "data/maps/DewfordTown_Gym/scripts.pory"

# 484 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyPostBattle:
# 485 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Heh, I can tell you've been in plenty\n"
# 486 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "of fights, kid... HAHAHA!\l"
# 487 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You know how to have fun!\p"
# 488 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Let's clash again someday, yeah?\n"
# 489 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Or hang out and trade street stories!\p"
# 490 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHAHAHA!$"
# 491 "data/maps/DewfordTown_Gym/scripts.pory"

# 492 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_GymStatue:
# 493 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "DEWFORD TOWN POKéMON GYM$"
# 494 "data/maps/DewfordTown_Gym/scripts.pory"

# 495 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_GymStatueCertified:
# 496 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "DEWFORD TOWN POKéMON GYM\p"
# 497 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON'S CERTIFIED TRAINERS:\n"
# 498 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "{PLAYER}$"
# 499 "data/maps/DewfordTown_Gym/scripts.pory"

# 500 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyPreRematch:
# 501 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON: Heh, look who showed up.\n"
# 502 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "A real fighter always comes back.\p"
# 503 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I knew you'd return, kiddo!\n"
# 504 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Saw it in how you threw down!\p"
# 505 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Now show me how much tougher\n"
# 506 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "you've gotten!$"
# 507 "data/maps/DewfordTown_Gym/scripts.pory"

# 508 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyRematchDefeat:
# 509 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHAHA! That was insane!\n"
# 510 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Now THAT was a real fight!\p"
# 511 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm so pumped I'm gonna go get\n"
# 512 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "wasted after this! Maybe find a\l"
# 513 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "brawl with some sailor out there!\l"
# 514 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHAHAHA!$"
# 515 "data/maps/DewfordTown_Gym/scripts.pory"

# 516 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyPostRematch:
# 517 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON: Fighting's wild and endless,\n"
# 518 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "kid. You never see the bottom.\p"
# 519 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "There's always someone tougher\n"
# 520 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "waiting to throw down!$"
# 521 "data/maps/DewfordTown_Gym/scripts.pory"

# 522 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyRematchNeedTwoMons:
# 523 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON: Heh, knew you'd come back,\n"
# 524 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "kid! Real fighters always do.\p"
# 525 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "But hold up... You've only got one\n"
# 526 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "POKéMON ready to throw down.\p"
# 527 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Bring at least two POKéMON and\n"
# 528 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "then we'll have a real fight!$"
# 529 "data/maps/DewfordTown_Gym/scripts.pory"

# 530 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_AskDifficulty:
# 531 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "GYM GUIDE: Before you face RENTON,\n"
# 532 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I can adjust the challenge!\p"
# 533 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Want HARD mode where TRAINERS\n"
# 534 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "use optimized teams?$"
# 535 "data/maps/DewfordTown_Gym/scripts.pory"

# 536 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_HardSelected:
# 537 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "GYM GUIDE: Hard mode selected!\n"
# 538 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON won't hold back!$"
# 539 "data/maps/DewfordTown_Gym/scripts.pory"

# 540 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_NormalSelected:
# 541 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "GYM GUIDE: Casual mode selected!\n"
# 542 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON is waiting!$"
