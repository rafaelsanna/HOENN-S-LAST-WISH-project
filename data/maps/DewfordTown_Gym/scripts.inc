# 1 "data/maps/DewfordTown_Gym/scripts.pory"

# 2 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_MapScripts::
# 3 "data/maps/DewfordTown_Gym/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, DewfordTown_Gym_OnTransition
# 4 "data/maps/DewfordTown_Gym/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, DewfordTown_Gym_OnResume
# 5 "data/maps/DewfordTown_Gym/scripts.pory"
	.byte 0
# 6 "data/maps/DewfordTown_Gym/scripts.pory"

# 7 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_OnTransition:
# 8 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_SetFlashLevel
# 9 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 10 "data/maps/DewfordTown_Gym/scripts.pory"

# 11 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_OnResume:
# 12 "data/maps/DewfordTown_Gym/scripts.pory"
	special StartRentonGymRadio
# 13 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 14 "data/maps/DewfordTown_Gym/scripts.pory"

# 15 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetFlashLevel::
# 16 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_DEWFORD_GYM, DewfordTown_Gym_EventScript_SetLightsOn
# 17 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_CountTrainersDefeated
# 18 "data/maps/DewfordTown_Gym/scripts.pory"
	copyvar VAR_0x8001, VAR_0x8000
# 19 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 0, DewfordTown_Gym_EventScript_SetFlashLevel7
# 20 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 1, DewfordTown_Gym_EventScript_SetFlashLevel6
# 21 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 2, DewfordTown_Gym_EventScript_SetFlashLevel5
# 22 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 3, DewfordTown_Gym_EventScript_SetFlashLevel4
# 23 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 4, DewfordTown_Gym_EventScript_SetFlashLevel3
# 24 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 5, DewfordTown_Gym_EventScript_SetFlashLevel2
# 25 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_EventScript_SetFlashLevel1
# 26 "data/maps/DewfordTown_Gym/scripts.pory"

# 27 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetLightsOn::
# 28 "data/maps/DewfordTown_Gym/scripts.pory"
	setflashlevel 0
# 29 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 30 "data/maps/DewfordTown_Gym/scripts.pory"

# 31 "data/maps/DewfordTown_Gym/scripts.pory"
@ Brightest
# 32 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetFlashLevel1::
# 33 "data/maps/DewfordTown_Gym/scripts.pory"
	setflashlevel 1
# 34 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 35 "data/maps/DewfordTown_Gym/scripts.pory"

# 36 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetFlashLevel2::
# 37 "data/maps/DewfordTown_Gym/scripts.pory"
	setflashlevel 2
# 38 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 39 "data/maps/DewfordTown_Gym/scripts.pory"

# 40 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetFlashLevel3::
# 41 "data/maps/DewfordTown_Gym/scripts.pory"
	setflashlevel 3
# 42 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 43 "data/maps/DewfordTown_Gym/scripts.pory"

# 44 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetFlashLevel4::
# 45 "data/maps/DewfordTown_Gym/scripts.pory"
	setflashlevel 4
# 46 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 47 "data/maps/DewfordTown_Gym/scripts.pory"

# 48 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetFlashLevel5::
# 49 "data/maps/DewfordTown_Gym/scripts.pory"
	setflashlevel 5
# 50 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 51 "data/maps/DewfordTown_Gym/scripts.pory"

# 52 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetFlashLevel6::
# 53 "data/maps/DewfordTown_Gym/scripts.pory"
	setflashlevel 6
# 54 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 55 "data/maps/DewfordTown_Gym/scripts.pory"

# 56 "data/maps/DewfordTown_Gym/scripts.pory"
@ Darkest
# 57 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_SetFlashLevel7::
# 58 "data/maps/DewfordTown_Gym/scripts.pory"
	setflashlevel 7
# 59 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 60 "data/maps/DewfordTown_Gym/scripts.pory"

# 61 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_BrightenRoom::
# 62 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_CountTrainersDefeated
# 63 "data/maps/DewfordTown_Gym/scripts.pory"
	nop1
# 64 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, VAR_0x8001, DewfordTown_Gym_EventScript_NoLightChange
# 65 "data/maps/DewfordTown_Gym/scripts.pory"
	copyvar VAR_0x8001, VAR_0x8000
# 66 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 1, DewfordTown_Gym_EventScript_AnimateFlash1Trainer
# 67 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 2, DewfordTown_Gym_EventScript_AnimateFlash2Trainers
# 68 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 3, DewfordTown_Gym_EventScript_AnimateFlash3Trainers
# 69 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 4, DewfordTown_Gym_EventScript_AnimateFlash4Trainers
# 70 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 5, DewfordTown_Gym_EventScript_AnimateFlash5Trainers
# 71 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_0x8000, 6, DewfordTown_Gym_EventScript_AnimateFlash6Trainers
# 72 "data/maps/DewfordTown_Gym/scripts.pory"

# 73 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_NoLightChange::
# 74 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 75 "data/maps/DewfordTown_Gym/scripts.pory"

# 76 "data/maps/DewfordTown_Gym/scripts.pory"
@ NOTE: A little confusingly, a larger animateflash param value is a smaller flash radius
# 77 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_AnimateFlash1Trainer::
# 78 "data/maps/DewfordTown_Gym/scripts.pory"
	playse SE_SWITCH
# 79 "data/maps/DewfordTown_Gym/scripts.pory"
	animateflash 6
# 80 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_SetFlashLevel
# 81 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 82 "data/maps/DewfordTown_Gym/scripts.pory"

# 83 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_AnimateFlash2Trainers::
# 84 "data/maps/DewfordTown_Gym/scripts.pory"
	playse SE_SWITCH
# 85 "data/maps/DewfordTown_Gym/scripts.pory"
	animateflash 5
# 86 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_SetFlashLevel
# 87 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 88 "data/maps/DewfordTown_Gym/scripts.pory"

# 89 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_AnimateFlash3Trainers::
# 90 "data/maps/DewfordTown_Gym/scripts.pory"
	playse SE_SWITCH
# 91 "data/maps/DewfordTown_Gym/scripts.pory"
	animateflash 4
# 92 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_SetFlashLevel
# 93 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 94 "data/maps/DewfordTown_Gym/scripts.pory"

# 95 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_AnimateFlash4Trainers::
# 96 "data/maps/DewfordTown_Gym/scripts.pory"
	playse SE_SWITCH
# 97 "data/maps/DewfordTown_Gym/scripts.pory"
	animateflash 3
# 98 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_SetFlashLevel
# 99 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 100 "data/maps/DewfordTown_Gym/scripts.pory"

# 101 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_AnimateFlash5Trainers::
# 102 "data/maps/DewfordTown_Gym/scripts.pory"
	playse SE_SWITCH
# 103 "data/maps/DewfordTown_Gym/scripts.pory"
	animateflash 2
# 104 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_SetFlashLevel
# 105 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 106 "data/maps/DewfordTown_Gym/scripts.pory"

# 107 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_AnimateFlash6Trainers::
# 108 "data/maps/DewfordTown_Gym/scripts.pory"
	playse SE_SWITCH
# 109 "data/maps/DewfordTown_Gym/scripts.pory"
	animateflash 1
# 110 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_SetFlashLevel
# 111 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 112 "data/maps/DewfordTown_Gym/scripts.pory"

# 113 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_AnimateFlashFullBrightness::
# 114 "data/maps/DewfordTown_Gym/scripts.pory"
	playse SE_SWITCH
# 115 "data/maps/DewfordTown_Gym/scripts.pory"
	animateflash 0
# 116 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_SetFlashLevel
# 117 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 118 "data/maps/DewfordTown_Gym/scripts.pory"

# 119 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_CountTrainersDefeated::
# 120 "data/maps/DewfordTown_Gym/scripts.pory"
	setvar VAR_0x8000, 0
# 121 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_TAKAO, DewfordTown_Gym_EventScript_CheckJocelyn
# 122 "data/maps/DewfordTown_Gym/scripts.pory"
	addvar VAR_0x8000, 1
# 123 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_CheckJocelyn::
# 124 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_JOCELYN, DewfordTown_Gym_EventScript_CheckLaura
# 125 "data/maps/DewfordTown_Gym/scripts.pory"
	addvar VAR_0x8000, 1
# 126 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_CheckLaura::
# 127 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_LAURA, DewfordTown_Gym_EventScript_CheckBrenden
# 128 "data/maps/DewfordTown_Gym/scripts.pory"
	addvar VAR_0x8000, 1
# 129 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_CheckBrenden::
# 130 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_BRENDEN, DewfordTown_Gym_EventScript_CheckCristian
# 131 "data/maps/DewfordTown_Gym/scripts.pory"
	addvar VAR_0x8000, 1
# 132 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_CheckCristian::
# 133 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_CRISTIAN, DewfordTown_Gym_EventScript_CheckLilith
# 134 "data/maps/DewfordTown_Gym/scripts.pory"
	addvar VAR_0x8000, 1
# 135 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_CheckLilith::
# 136 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_LILITH, DewfordTown_Gym_EventScript_StopCountingTrainers
# 137 "data/maps/DewfordTown_Gym/scripts.pory"
	addvar VAR_0x8000, 1
# 138 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_StopCountingTrainers::
# 139 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 140 "data/maps/DewfordTown_Gym/scripts.pory"

# 141 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Brawly::
# 142 "data/maps/DewfordTown_Gym/scripts.pory"
	lock
# 143 "data/maps/DewfordTown_Gym/scripts.pory"
	faceplayer
# 144 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_DEWFORD_GYM, DewfordTown_Gym_AfterBattle
# 145 "data/maps/DewfordTown_Gym/scripts.pory"
	getdifficulty VAR_RESULT
# 146 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 1, DewfordTown_Gym_BrawlyHard
# 147 "data/maps/DewfordTown_Gym/scripts.pory"

# 148 "data/maps/DewfordTown_Gym/scripts.pory"
	@ Normal - TRAINER_BRAWLY_1
# 149 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 150 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_BrawlyIntro, MSGBOX_DEFAULT
# 151 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 152 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_BRAWLY_1, DewfordTown_Gym_Text_BrawlyDefeat
# 153 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_EventScript_BrawlyDefeated
# 154 "data/maps/DewfordTown_Gym/scripts.pory"

# 155 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_BrawlyHard::
# 156 "data/maps/DewfordTown_Gym/scripts.pory"
	@ Hard - TRAINER_BRAWLY
# 157 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 158 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_BrawlyIntro, MSGBOX_DEFAULT
# 159 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 160 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_BRAWLY, DewfordTown_Gym_Text_BrawlyDefeat
# 161 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_EventScript_BrawlyDefeated
# 162 "data/maps/DewfordTown_Gym/scripts.pory"

# 163 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_BrawlyDefeated::
# 164 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_AnimateFlashFullBrightness
# 165 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 166 "data/maps/DewfordTown_Gym/scripts.pory"
	message DewfordTown_Gym_Text_ReceivedKnuckleBadge
# 167 "data/maps/DewfordTown_Gym/scripts.pory"
	waitmessage
# 168 "data/maps/DewfordTown_Gym/scripts.pory"
	call Common_EventScript_PlayGymBadgeFanfare
# 169 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_KnuckleBadgeInfoTakeThis, MSGBOX_DEFAULT
# 170 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 171 "data/maps/DewfordTown_Gym/scripts.pory"
	setflag FLAG_DEFEATED_DEWFORD_GYM
# 172 "data/maps/DewfordTown_Gym/scripts.pory"
	setflag FLAG_BADGE02_GET
# 173 "data/maps/DewfordTown_Gym/scripts.pory"
	addvar VAR_PETALBURG_GYM_STATE, 1
# 174 "data/maps/DewfordTown_Gym/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 6, Common_EventScript_ReadyPetalburgGymForBattle
# 175 "data/maps/DewfordTown_Gym/scripts.pory"
	setvar VAR_0x8008, 2
# 176 "data/maps/DewfordTown_Gym/scripts.pory"
	call Common_EventScript_SetGymTrainers
# 177 "data/maps/DewfordTown_Gym/scripts.pory"
	@ Give TM inline — never go through AfterBattle on first victory
# 178 "data/maps/DewfordTown_Gym/scripts.pory"
	giveitem ITEM_TM_BULK_UP
# 179 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 0, Common_EventScript_BagIsFull
# 180 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 181 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_ExplainBulkUp, MSGBOX_DEFAULT
# 182 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 183 "data/maps/DewfordTown_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_BULK_UP
# 184 "data/maps/DewfordTown_Gym/scripts.pory"

# 185 "data/maps/DewfordTown_Gym/scripts.pory"
	@ Renton also gives the player the Radio.
# 186 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_EventScript_GiveRadio
# 187 "data/maps/DewfordTown_Gym/scripts.pory"

# 188 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_AfterBattle::
# 189 "data/maps/DewfordTown_Gym/scripts.pory"
	@ Only reached when player talks to Renton after flag is already set
# 190 "data/maps/DewfordTown_Gym/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 191 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, DewfordTown_Gym_EventScript_BrawlyRematch
# 192 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_unset FLAG_RECEIVED_TM_BULK_UP, DewfordTown_Gym_EventScript_GiveBulkUp2
# 193 "data/maps/DewfordTown_Gym/scripts.pory"
	checkitem ITEM_RADIO
# 194 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, DewfordTown_Gym_EventScript_GiveRadio
# 195 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 196 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_BrawlyPostBattle, MSGBOX_DEFAULT
# 197 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 198 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 199 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 200 "data/maps/DewfordTown_Gym/scripts.pory"

# 201 "data/maps/DewfordTown_Gym/scripts.pory"

# 202 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GiveRadio:
# 203 "data/maps/DewfordTown_Gym/scripts.pory"
	checkitemspace ITEM_RADIO
# 204 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 205 "data/maps/DewfordTown_Gym/scripts.pory"
	giveitem ITEM_RADIO
# 206 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 207 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_RentonRadioGift, MSGBOX_DEFAULT
# 208 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 209 "data/maps/DewfordTown_Gym/scripts.pory"
	closemessage
# 210 "data/maps/DewfordTown_Gym/scripts.pory"
	delay 30
# 211 "data/maps/DewfordTown_Gym/scripts.pory"
	waitfanfare
# 212 "data/maps/DewfordTown_Gym/scripts.pory"
	closemessage
# 213 "data/maps/DewfordTown_Gym/scripts.pory"
	delay 30
# 214 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 215 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 216 "data/maps/DewfordTown_Gym/scripts.pory"

# 217 "data/maps/DewfordTown_Gym/scripts.pory"

# 218 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GiveBulkUp2:
# 219 "data/maps/DewfordTown_Gym/scripts.pory"
	giveitem ITEM_TM_BULK_UP
# 220 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 0, Common_EventScript_ShowBagIsFull
# 221 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 222 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_ExplainBulkUp, MSGBOX_DEFAULT
# 223 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 224 "data/maps/DewfordTown_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_BULK_UP
# 225 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 226 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 227 "data/maps/DewfordTown_Gym/scripts.pory"

# 228 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_BrawlyRematch::
# 229 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_rematch TRAINER_BRAWLY_1, DewfordTown_Gym_Text_BrawlyPreRematch, DewfordTown_Gym_Text_BrawlyRematchDefeat
# 230 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 231 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_BrawlyPostRematch, MSGBOX_AUTOCLOSE
# 232 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 233 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 234 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 235 "data/maps/DewfordTown_Gym/scripts.pory"

# 236 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Takao::
# 237 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_TAKAO, DewfordTown_Gym_Text_TakaoIntro, DewfordTown_Gym_Text_TakaoDefeat, DewfordTown_Gym_EventScript_TakaoBrightenRoom
# 238 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_TakaoPostBattle, MSGBOX_AUTOCLOSE
# 239 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 240 "data/maps/DewfordTown_Gym/scripts.pory"

# 241 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_TakaoBrightenRoom::
# 242 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 243 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 244 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 245 "data/maps/DewfordTown_Gym/scripts.pory"

# 246 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Jocelyn::
# 247 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_JOCELYN, DewfordTown_Gym_Text_JocelynIntro, DewfordTown_Gym_Text_JocelynDefeat, DewfordTown_Gym_EventScript_JocelynBrightenRoom
# 248 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_JocelynPostBattle, MSGBOX_AUTOCLOSE
# 249 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 250 "data/maps/DewfordTown_Gym/scripts.pory"

# 251 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_JocelynBrightenRoom::
# 252 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 253 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 254 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 255 "data/maps/DewfordTown_Gym/scripts.pory"

# 256 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Laura::
# 257 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_LAURA, DewfordTown_Gym_Text_LauraIntro, DewfordTown_Gym_Text_LauraDefeat, DewfordTown_Gym_EventScript_LauraBrightenRoom
# 258 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_LauraPostBattle, MSGBOX_AUTOCLOSE
# 259 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 260 "data/maps/DewfordTown_Gym/scripts.pory"

# 261 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_LauraBrightenRoom::
# 262 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 263 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 264 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 265 "data/maps/DewfordTown_Gym/scripts.pory"

# 266 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Brenden::
# 267 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_BRENDEN, DewfordTown_Gym_Text_BrendenIntro, DewfordTown_Gym_Text_BrendenDefeat, DewfordTown_Gym_EventScript_BrendenBrightenRoom
# 268 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_BrendenPostBattle, MSGBOX_AUTOCLOSE
# 269 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 270 "data/maps/DewfordTown_Gym/scripts.pory"

# 271 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_BrendenBrightenRoom::
# 272 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 273 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 274 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 275 "data/maps/DewfordTown_Gym/scripts.pory"

# 276 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Cristian::
# 277 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_CRISTIAN, DewfordTown_Gym_Text_CristianIntro, DewfordTown_Gym_Text_CristianDefeat, DewfordTown_Gym_EventScript_CristianBrightenRoom
# 278 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_CristianPostBattle, MSGBOX_AUTOCLOSE
# 279 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 280 "data/maps/DewfordTown_Gym/scripts.pory"

# 281 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_CristianBrightenRoom::
# 282 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 283 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 284 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 285 "data/maps/DewfordTown_Gym/scripts.pory"

# 286 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Lilith::
# 287 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_LILITH, DewfordTown_Gym_Text_LilithIntro, DewfordTown_Gym_Text_LilithDefeat, DewfordTown_Gym_EventScript_LilithBrightenRoom
# 288 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_LilithPostBattle, MSGBOX_AUTOCLOSE
# 289 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 290 "data/maps/DewfordTown_Gym/scripts.pory"

# 291 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_LilithBrightenRoom::
# 292 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 293 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 294 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 295 "data/maps/DewfordTown_Gym/scripts.pory"

# 296 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymGuide::
# 297 "data/maps/DewfordTown_Gym/scripts.pory"
	lock
# 298 "data/maps/DewfordTown_Gym/scripts.pory"
	faceplayer
# 299 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_DEWFORD_GYM, DewfordTown_Gym_EventScript_GymGuidePostVictory
# 300 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_EventScript_GymGuideAdvice
# 301 "data/maps/DewfordTown_Gym/scripts.pory"

# 302 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymGuideAdvice::
# 303 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 304 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 305 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 306 "data/maps/DewfordTown_Gym/scripts.pory"

# 307 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymGuidePostVictory::
# 308 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 309 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 310 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 311 "data/maps/DewfordTown_Gym/scripts.pory"

# 312 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_LeftGymStatue::
# 313 "data/maps/DewfordTown_Gym/scripts.pory"
	lockall
# 314 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_set FLAG_BADGE02_GET, DewfordTown_Gym_EventScript_GymStatueCertified
# 315 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_EventScript_GymStatue
# 316 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 317 "data/maps/DewfordTown_Gym/scripts.pory"

# 318 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_RightGymStatue::
# 319 "data/maps/DewfordTown_Gym/scripts.pory"
	lockall
# 320 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_set FLAG_BADGE02_GET, DewfordTown_Gym_EventScript_GymStatueCertified
# 321 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_EventScript_GymStatue
# 322 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 323 "data/maps/DewfordTown_Gym/scripts.pory"

# 324 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymStatueCertified::
# 325 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 326 "data/maps/DewfordTown_Gym/scripts.pory"
	releaseall
# 327 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 328 "data/maps/DewfordTown_Gym/scripts.pory"

# 329 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymStatue::
# 330 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 331 "data/maps/DewfordTown_Gym/scripts.pory"
	releaseall
# 332 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 333 "data/maps/DewfordTown_Gym/scripts.pory"

# 334 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_GymGuideAdvice:
# 335 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Hey, how's it going, CHAMPION-\n"
# 336 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "bound {PLAYER}?\p"
# 337 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON loves tough battles and\n"
# 338 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "hits hard. Prepare for FIGHTING power!\p"
# 339 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "NORMAL-types are asking for trouble.\n"
# 340 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "FIGHTING moves crush them!\p"
# 341 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "The Gym is super dark. RENTON likes\n"
# 342 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "it that way.\p"
# 343 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Beat TRAINERS and it gets brighter.\n"
# 344 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Good luck!$"
# 345 "data/maps/DewfordTown_Gym/scripts.pory"

# 346 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_GymGuidePostVictory:
# 347 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Whoah! It's way brighter in here now!\p"
# 348 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Your future's looking bright too,\n"
# 349 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "CHAMPION-to-be!$"
# 350 "data/maps/DewfordTown_Gym/scripts.pory"

# 351 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_TakaoIntro:
# 352 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Might is right!\n"
# 353 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Come on!$"
# 354 "data/maps/DewfordTown_Gym/scripts.pory"

# 355 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_TakaoDefeat:
# 356 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Not enough power...$"
# 357 "data/maps/DewfordTown_Gym/scripts.pory"

# 358 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_TakaoPostBattle:
# 359 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Your skill overcame my strength!\n"
# 360 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Your technique is commendable!$"
# 361 "data/maps/DewfordTown_Gym/scripts.pory"

# 362 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_JocelynIntro:
# 363 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "No way I'm letting RENTON handle this!\n"
# 364 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You do NOT want that!\p"
# 365 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'd rather face wild Pokemon or even\n"
# 366 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "the ELITE FOUR than his street brawls!\p"
# 367 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "He demolished the old Gym Leader,\n"
# 368 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "and it wasn't even a Pokemon battle!\l"
# 369 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Hahaha!$"
# 370 "data/maps/DewfordTown_Gym/scripts.pory"

# 371 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_JocelynDefeat:
# 372 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You're tough... but be careful!\n"
# 373 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Don't get cocky around RENTON,\p"
# 374 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "or you'll end up in real trouble!\n"
# 375 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "But he respects fighters like you...$"
# 376 "data/maps/DewfordTown_Gym/scripts.pory"

# 377 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_JocelynPostBattle:
# 378 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "That battle fired me up!\n"
# 379 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm gonna train like crazy!\p"
# 380 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "One day I'll be totally badass...\n"
# 381 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "just like RENTON!$"
# 382 "data/maps/DewfordTown_Gym/scripts.pory"

# 383 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LauraIntro:
# 384 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Don't brush me off!\n"
# 385 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I blast ROCK music in here!\p"
# 386 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "The dark? I don't care about that!\n"
# 387 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I grew up hanging with RENTON!\p"
# 388 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Street fights, loud nights, bad lighting...\n"
# 389 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "This Gym is exactly my vibe!$"
# 390 "data/maps/DewfordTown_Gym/scripts.pory"

# 391 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LauraDefeat:
# 392 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Waaaah!\n"
# 393 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I lost! No way...$"
# 394 "data/maps/DewfordTown_Gym/scripts.pory"

# 395 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LauraPostBattle:
# 396 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Huh? Me and RENTON?\n"
# 397 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "A thing? No way!\p"
# 398 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "We're just friends, don't be weird!\n"
# 399 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Stop imagining stuff!$"
# 400 "data/maps/DewfordTown_Gym/scripts.pory"

# 401 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LilithIntro:
# 402 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Ufufu...\p"
# 403 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You, with those weird clothes!\n"
# 404 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Stumbling around in the dark?$"
# 405 "data/maps/DewfordTown_Gym/scripts.pory"

# 406 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LilithDefeat:
# 407 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Oh, you... weirdo...\n"
# 408 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I don't want to know you!$"
# 409 "data/maps/DewfordTown_Gym/scripts.pory"

# 410 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LilithPostBattle:
# 411 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You deserve to get lost and end up\n"
# 412 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "back at the entrance!\p"
# 413 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "We get used to the dark here.\n"
# 414 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Just like street fights... the more,\l"
# 415 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "the better we become!$"
# 416 "data/maps/DewfordTown_Gym/scripts.pory"

# 417 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrendenIntro:
# 418 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHA! During one of RENTON's wild\n"
# 419 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "nights, we became friends!\p"
# 420 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "We threw hands, I got beat up bad,\n"
# 421 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHA! But he saw I was tough!\p"
# 422 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm a sailor! I've seen storms,\n"
# 423 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "ship brawls, bar fights, everything!\p"
# 424 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "So come on, cape brat!\n"
# 425 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Show me what you got!$"
# 426 "data/maps/DewfordTown_Gym/scripts.pory"

# 427 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrendenDefeat:
# 428 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Not bad! But this was nothing compared\n"
# 429 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "to RENTON's beatdowns!\p"
# 430 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "That was easy stuff!\n"
# 431 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You've got a long way to go!$"
# 432 "data/maps/DewfordTown_Gym/scripts.pory"

# 433 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrendenPostBattle:
# 434 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Rules are rules, y'know.\n"
# 435 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Go on, take your beatdown from RENTON!\p"
# 436 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "After that, we can sail off and\n"
# 437 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "drink till sunrise! RENTON's the man!$"
# 438 "data/maps/DewfordTown_Gym/scripts.pory"

# 439 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_CristianIntro:
# 440 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "If you want to pass, you fight me first!\p"
# 441 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Strength matters here\n"
# 442 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "just like in any street brawl!\p"
# 443 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm a punk and proud of it!\n"
# 444 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm here because I grew up with RENTON!\l"
# 445 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "We've been scrapping since kindergarten!$"
# 446 "data/maps/DewfordTown_Gym/scripts.pory"

# 447 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_CristianDefeat:
# 448 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Grrrrr!\n"
# 449 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You got lucky!$"
# 450 "data/maps/DewfordTown_Gym/scripts.pory"

# 451 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_CristianPostBattle:
# 452 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Fine! You win!\n"
# 453 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Go after that BADGE!\p"
# 454 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "With moves like that, you'd survive\n"
# 455 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "a real street fight too!$"
# 456 "data/maps/DewfordTown_Gym/scripts.pory"

# 457 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyIntro:
# 458 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Yo! I'm RENTON!\n"
# 459 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "DEWFORD's new GYM LEADER!\p"
# 460 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm forged in street brawls and\n"
# 461 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "back-alley fights. Fists fly harder\l"
# 462 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "than any fancy cave move!\p"
# 463 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I took down the last Leader here\n"
# 464 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "with my own fists. Forgot his name!\p"
# 465 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "So, you wanna challenge me?\n"
# 466 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Show me what you're made of!$"
# 467 "data/maps/DewfordTown_Gym/scripts.pory"

# 468 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyDefeat:
# 469 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Whoah, damn! You hit way harder than\n"
# 470 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I thought you would!\p"
# 471 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You totally wrecked me!\n"
# 472 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Alright, take this GYM BADGE!\p"
# 473 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "But you'd better run along now...\n"
# 474 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "or you might pick a real fight with me!\p"
# 475 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHAHAHA!$"
# 476 "data/maps/DewfordTown_Gym/scripts.pory"

# 477 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_ReceivedKnuckleBadge:
# 478 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "{PLAYER} received the KNUCKLE BADGE\n"
# 479 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "from RENTON.$"
# 480 "data/maps/DewfordTown_Gym/scripts.pory"

# 481 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_KnuckleBadgeInfoTakeThis:
# 482 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "The KNUCKLE BADGE makes all POKéMON\n"
# 483 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "up to Level 30 obey without question.\p"
# 484 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "And you can use FLASH outside\n"
# 485 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "of battle.\p"
# 486 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "If you'd like, use this TECHNICAL\n"
# 487 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "MACHINE, too.$"
# 488 "data/maps/DewfordTown_Gym/scripts.pory"

# 489 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_RentonRadioGift:
# 490 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Oh! One more thing, take this RADIO.\p"
# 491 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You can make your own playlists with it.\n"
# 492 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I made a killer one for my GYM!\p"
# 493 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Mix whatever you want and make it loud!$"
# 494 "data/maps/DewfordTown_Gym/scripts.pory"

# 495 "data/maps/DewfordTown_Gym/scripts.pory"

# 496 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_ExplainBulkUp:
# 497 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "That TM08 contains BULK UP.\p"
# 498 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "It raises both ATTACK and DEFENSE.\p"
# 499 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "… … … … … …$"
# 500 "data/maps/DewfordTown_Gym/scripts.pory"

# 501 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_RegisteredBrawly:
# 502 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Registered GYM LEADER RENTON\n"
# 503 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "in the POKéNAV.$"
# 504 "data/maps/DewfordTown_Gym/scripts.pory"

# 505 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyPostBattle:
# 506 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Heh, I can tell you've been in plenty\n"
# 507 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "of fights, kid... HAHAHA!\l"
# 508 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You know how to have fun!\p"
# 509 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Let's clash again someday, yeah?\n"
# 510 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Or hang out and trade street stories!\p"
# 511 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHAHAHA!$"
# 512 "data/maps/DewfordTown_Gym/scripts.pory"

# 513 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_GymStatue:
# 514 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "DEWFORD TOWN POKéMON GYM$"
# 515 "data/maps/DewfordTown_Gym/scripts.pory"

# 516 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_GymStatueCertified:
# 517 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "DEWFORD TOWN POKéMON GYM\p"
# 518 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON'S CERTIFIED TRAINERS:\n"
# 519 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "{PLAYER}$"
# 520 "data/maps/DewfordTown_Gym/scripts.pory"

# 521 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyPreRematch:
# 522 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON: Heh, look who showed up.\n"
# 523 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "A real fighter always comes back.\p"
# 524 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I knew you'd return, kiddo!\n"
# 525 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Saw it in how you threw down!\p"
# 526 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Now show me how much tougher\n"
# 527 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "you've gotten!$"
# 528 "data/maps/DewfordTown_Gym/scripts.pory"

# 529 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyRematchDefeat:
# 530 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHAHA! That was insane!\n"
# 531 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Now THAT was a real fight!\p"
# 532 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm so pumped I'm gonna go get\n"
# 533 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "wasted after this! Maybe find a\l"
# 534 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "brawl with some sailor out there!\l"
# 535 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHAHAHA!$"
# 536 "data/maps/DewfordTown_Gym/scripts.pory"

# 537 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyPostRematch:
# 538 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON: Fighting's wild and endless,\n"
# 539 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "kid. You never see the bottom.\p"
# 540 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "There's always someone tougher\n"
# 541 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "waiting to throw down!$"
# 542 "data/maps/DewfordTown_Gym/scripts.pory"

# 543 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyRematchNeedTwoMons:
# 544 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON: Heh, knew you'd come back,\n"
# 545 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "kid! Real fighters always do.\p"
# 546 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "But hold up... You've only got one\n"
# 547 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "POKéMON ready to throw down.\p"
# 548 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Bring at least two POKéMON and\n"
# 549 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "then we'll have a real fight!$"
# 550 "data/maps/DewfordTown_Gym/scripts.pory"

# 551 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_AskDifficulty:
# 552 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "GYM GUIDE: Before you face RENTON,\n"
# 553 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I can adjust the challenge!\p"
# 554 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Want HARD mode where TRAINERS\n"
# 555 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "use optimized teams?$"
# 556 "data/maps/DewfordTown_Gym/scripts.pory"

# 557 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_HardSelected:
# 558 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "GYM GUIDE: Hard mode selected!\n"
# 559 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON won't hold back!$"
# 560 "data/maps/DewfordTown_Gym/scripts.pory"

# 561 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_NormalSelected:
# 562 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "GYM GUIDE: Casual mode selected!\n"
# 563 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON is waiting!$"
