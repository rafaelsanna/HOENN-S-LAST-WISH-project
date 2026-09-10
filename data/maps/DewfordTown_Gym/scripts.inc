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
	@ Renton also gives the player the Radio (item id 834).
# 186 "data/maps/DewfordTown_Gym/scripts.pory"
	giveitem 834
# 187 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 188 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_RentonRadioGift, MSGBOX_DEFAULT
# 189 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 190 "data/maps/DewfordTown_Gym/scripts.pory"

# 191 "data/maps/DewfordTown_Gym/scripts.pory"
	closemessage
# 192 "data/maps/DewfordTown_Gym/scripts.pory"
	delay 30
# 193 "data/maps/DewfordTown_Gym/scripts.pory"
	waitfanfare
# 194 "data/maps/DewfordTown_Gym/scripts.pory"
	closemessage
# 195 "data/maps/DewfordTown_Gym/scripts.pory"
	delay 30
# 196 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 197 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 198 "data/maps/DewfordTown_Gym/scripts.pory"

# 199 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_AfterBattle::
# 200 "data/maps/DewfordTown_Gym/scripts.pory"
	@ Only reached when player talks to Renton after flag is already set
# 201 "data/maps/DewfordTown_Gym/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 202 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, DewfordTown_Gym_EventScript_BrawlyRematch
# 203 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_unset FLAG_RECEIVED_TM_BULK_UP, DewfordTown_Gym_EventScript_GiveBulkUp2
# 204 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 205 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_BrawlyPostBattle, MSGBOX_DEFAULT
# 206 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 207 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 208 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 209 "data/maps/DewfordTown_Gym/scripts.pory"

# 210 "data/maps/DewfordTown_Gym/scripts.pory"

# 211 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GiveBulkUp2:
# 212 "data/maps/DewfordTown_Gym/scripts.pory"
	giveitem ITEM_TM_BULK_UP
# 213 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 0, Common_EventScript_ShowBagIsFull
# 214 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 215 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_ExplainBulkUp, MSGBOX_DEFAULT
# 216 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 217 "data/maps/DewfordTown_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_BULK_UP
# 218 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 219 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 220 "data/maps/DewfordTown_Gym/scripts.pory"

# 221 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_BrawlyRematch::
# 222 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_rematch TRAINER_BRAWLY_1, DewfordTown_Gym_Text_BrawlyPreRematch, DewfordTown_Gym_Text_BrawlyRematchDefeat
# 223 "data/maps/DewfordTown_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 224 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_BrawlyPostRematch, MSGBOX_AUTOCLOSE
# 225 "data/maps/DewfordTown_Gym/scripts.pory"
	removefieldmugshot
# 226 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 227 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 228 "data/maps/DewfordTown_Gym/scripts.pory"

# 229 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Takao::
# 230 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_TAKAO, DewfordTown_Gym_Text_TakaoIntro, DewfordTown_Gym_Text_TakaoDefeat, DewfordTown_Gym_EventScript_TakaoBrightenRoom
# 231 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_TakaoPostBattle, MSGBOX_AUTOCLOSE
# 232 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 233 "data/maps/DewfordTown_Gym/scripts.pory"

# 234 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_TakaoBrightenRoom::
# 235 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 236 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 237 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 238 "data/maps/DewfordTown_Gym/scripts.pory"

# 239 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Jocelyn::
# 240 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_JOCELYN, DewfordTown_Gym_Text_JocelynIntro, DewfordTown_Gym_Text_JocelynDefeat, DewfordTown_Gym_EventScript_JocelynBrightenRoom
# 241 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_JocelynPostBattle, MSGBOX_AUTOCLOSE
# 242 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 243 "data/maps/DewfordTown_Gym/scripts.pory"

# 244 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_JocelynBrightenRoom::
# 245 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 246 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 247 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 248 "data/maps/DewfordTown_Gym/scripts.pory"

# 249 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Laura::
# 250 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_LAURA, DewfordTown_Gym_Text_LauraIntro, DewfordTown_Gym_Text_LauraDefeat, DewfordTown_Gym_EventScript_LauraBrightenRoom
# 251 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_LauraPostBattle, MSGBOX_AUTOCLOSE
# 252 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 253 "data/maps/DewfordTown_Gym/scripts.pory"

# 254 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_LauraBrightenRoom::
# 255 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 256 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 257 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 258 "data/maps/DewfordTown_Gym/scripts.pory"

# 259 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Brenden::
# 260 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_BRENDEN, DewfordTown_Gym_Text_BrendenIntro, DewfordTown_Gym_Text_BrendenDefeat, DewfordTown_Gym_EventScript_BrendenBrightenRoom
# 261 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_BrendenPostBattle, MSGBOX_AUTOCLOSE
# 262 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 263 "data/maps/DewfordTown_Gym/scripts.pory"

# 264 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_BrendenBrightenRoom::
# 265 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 266 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 267 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 268 "data/maps/DewfordTown_Gym/scripts.pory"

# 269 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Cristian::
# 270 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_CRISTIAN, DewfordTown_Gym_Text_CristianIntro, DewfordTown_Gym_Text_CristianDefeat, DewfordTown_Gym_EventScript_CristianBrightenRoom
# 271 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_CristianPostBattle, MSGBOX_AUTOCLOSE
# 272 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 273 "data/maps/DewfordTown_Gym/scripts.pory"

# 274 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_CristianBrightenRoom::
# 275 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 276 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 277 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 278 "data/maps/DewfordTown_Gym/scripts.pory"

# 279 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Lilith::
# 280 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_LILITH, DewfordTown_Gym_Text_LilithIntro, DewfordTown_Gym_Text_LilithDefeat, DewfordTown_Gym_EventScript_LilithBrightenRoom
# 281 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_LilithPostBattle, MSGBOX_AUTOCLOSE
# 282 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 283 "data/maps/DewfordTown_Gym/scripts.pory"

# 284 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_LilithBrightenRoom::
# 285 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 286 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 287 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 288 "data/maps/DewfordTown_Gym/scripts.pory"

# 289 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymGuide::
# 290 "data/maps/DewfordTown_Gym/scripts.pory"
	lock
# 291 "data/maps/DewfordTown_Gym/scripts.pory"
	faceplayer
# 292 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_DEWFORD_GYM, DewfordTown_Gym_EventScript_GymGuidePostVictory
# 293 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_EventScript_GymGuideAdvice
# 294 "data/maps/DewfordTown_Gym/scripts.pory"

# 295 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymGuideAdvice::
# 296 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 297 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 298 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 299 "data/maps/DewfordTown_Gym/scripts.pory"

# 300 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymGuidePostVictory::
# 301 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 302 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 303 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 304 "data/maps/DewfordTown_Gym/scripts.pory"

# 305 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_LeftGymStatue::
# 306 "data/maps/DewfordTown_Gym/scripts.pory"
	lockall
# 307 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_set FLAG_BADGE02_GET, DewfordTown_Gym_EventScript_GymStatueCertified
# 308 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_EventScript_GymStatue
# 309 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 310 "data/maps/DewfordTown_Gym/scripts.pory"

# 311 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_RightGymStatue::
# 312 "data/maps/DewfordTown_Gym/scripts.pory"
	lockall
# 313 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_set FLAG_BADGE02_GET, DewfordTown_Gym_EventScript_GymStatueCertified
# 314 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_EventScript_GymStatue
# 315 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 316 "data/maps/DewfordTown_Gym/scripts.pory"

# 317 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymStatueCertified::
# 318 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 319 "data/maps/DewfordTown_Gym/scripts.pory"
	releaseall
# 320 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 321 "data/maps/DewfordTown_Gym/scripts.pory"

# 322 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymStatue::
# 323 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 324 "data/maps/DewfordTown_Gym/scripts.pory"
	releaseall
# 325 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 326 "data/maps/DewfordTown_Gym/scripts.pory"

# 327 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_GymGuideAdvice:
# 328 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Hey, how's it going, CHAMPION-\n"
# 329 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "bound {PLAYER}?\p"
# 330 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON loves tough battles and\n"
# 331 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "hits hard. Prepare for FIGHTING power!\p"
# 332 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "NORMAL-types are asking for trouble.\n"
# 333 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "FIGHTING moves crush them!\p"
# 334 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "The Gym is super dark. RENTON likes\n"
# 335 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "it that way.\p"
# 336 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Beat TRAINERS and it gets brighter.\n"
# 337 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Good luck!$"
# 338 "data/maps/DewfordTown_Gym/scripts.pory"

# 339 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_GymGuidePostVictory:
# 340 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Whoah! It's way brighter in here now!\p"
# 341 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Your future's looking bright too,\n"
# 342 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "CHAMPION-to-be!$"
# 343 "data/maps/DewfordTown_Gym/scripts.pory"

# 344 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_TakaoIntro:
# 345 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Might is right!\n"
# 346 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Come on!$"
# 347 "data/maps/DewfordTown_Gym/scripts.pory"

# 348 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_TakaoDefeat:
# 349 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Not enough power...$"
# 350 "data/maps/DewfordTown_Gym/scripts.pory"

# 351 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_TakaoPostBattle:
# 352 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Your skill overcame my strength!\n"
# 353 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Your technique is commendable!$"
# 354 "data/maps/DewfordTown_Gym/scripts.pory"

# 355 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_JocelynIntro:
# 356 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "No way I'm letting RENTON handle this!\n"
# 357 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You do NOT want that!\p"
# 358 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'd rather face wild Pokemon or even\n"
# 359 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "the ELITE FOUR than his street brawls!\p"
# 360 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "He demolished the old Gym Leader,\n"
# 361 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "and it wasn't even a Pokemon battle!\l"
# 362 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Hahaha!$"
# 363 "data/maps/DewfordTown_Gym/scripts.pory"

# 364 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_JocelynDefeat:
# 365 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You're tough... but be careful!\n"
# 366 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Don't get cocky around RENTON,\p"
# 367 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "or you'll end up in real trouble!\n"
# 368 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "But he respects fighters like you...$"
# 369 "data/maps/DewfordTown_Gym/scripts.pory"

# 370 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_JocelynPostBattle:
# 371 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "That battle fired me up!\n"
# 372 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm gonna train like crazy!\p"
# 373 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "One day I'll be totally badass...\n"
# 374 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "just like RENTON!$"
# 375 "data/maps/DewfordTown_Gym/scripts.pory"

# 376 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LauraIntro:
# 377 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Don't brush me off!\n"
# 378 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I blast ROCK music in here!\p"
# 379 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "The dark? I don't care about that!\n"
# 380 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I grew up hanging with RENTON!\p"
# 381 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Street fights, loud nights, bad lighting...\n"
# 382 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "This Gym is exactly my vibe!$"
# 383 "data/maps/DewfordTown_Gym/scripts.pory"

# 384 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LauraDefeat:
# 385 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Waaaah!\n"
# 386 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I lost! No way...$"
# 387 "data/maps/DewfordTown_Gym/scripts.pory"

# 388 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LauraPostBattle:
# 389 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Huh? Me and RENTON?\n"
# 390 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "A thing? No way!\p"
# 391 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "We're just friends, don't be weird!\n"
# 392 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Stop imagining stuff!$"
# 393 "data/maps/DewfordTown_Gym/scripts.pory"

# 394 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LilithIntro:
# 395 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Ufufu...\p"
# 396 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You, with those weird clothes!\n"
# 397 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Stumbling around in the dark?$"
# 398 "data/maps/DewfordTown_Gym/scripts.pory"

# 399 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LilithDefeat:
# 400 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Oh, you... weirdo...\n"
# 401 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I don't want to know you!$"
# 402 "data/maps/DewfordTown_Gym/scripts.pory"

# 403 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LilithPostBattle:
# 404 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You deserve to get lost and end up\n"
# 405 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "back at the entrance!\p"
# 406 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "We get used to the dark here.\n"
# 407 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Just like street fights... the more,\l"
# 408 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "the better we become!$"
# 409 "data/maps/DewfordTown_Gym/scripts.pory"

# 410 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrendenIntro:
# 411 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHA! During one of RENTON's wild\n"
# 412 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "nights, we became friends!\p"
# 413 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "We threw hands, I got beat up bad,\n"
# 414 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHA! But he saw I was tough!\p"
# 415 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm a sailor! I've seen storms,\n"
# 416 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "ship brawls, bar fights, everything!\p"
# 417 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "So come on, cape brat!\n"
# 418 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Show me what you got!$"
# 419 "data/maps/DewfordTown_Gym/scripts.pory"

# 420 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrendenDefeat:
# 421 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Not bad! But this was nothing compared\n"
# 422 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "to RENTON's beatdowns!\p"
# 423 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "That was easy stuff!\n"
# 424 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You've got a long way to go!$"
# 425 "data/maps/DewfordTown_Gym/scripts.pory"

# 426 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrendenPostBattle:
# 427 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Rules are rules, y'know.\n"
# 428 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Go on, take your beatdown from RENTON!\p"
# 429 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "After that, we can sail off and\n"
# 430 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "drink till sunrise! RENTON's the man!$"
# 431 "data/maps/DewfordTown_Gym/scripts.pory"

# 432 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_CristianIntro:
# 433 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "If you want to pass, you fight me first!\p"
# 434 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Strength matters here\n"
# 435 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "just like in any street brawl!\p"
# 436 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm a punk and proud of it!\n"
# 437 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm here because I grew up with RENTON!\l"
# 438 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "We've been scrapping since kindergarten!$"
# 439 "data/maps/DewfordTown_Gym/scripts.pory"

# 440 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_CristianDefeat:
# 441 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Grrrrr!\n"
# 442 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You got lucky!$"
# 443 "data/maps/DewfordTown_Gym/scripts.pory"

# 444 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_CristianPostBattle:
# 445 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Fine! You win!\n"
# 446 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Go after that BADGE!\p"
# 447 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "With moves like that, you'd survive\n"
# 448 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "a real street fight too!$"
# 449 "data/maps/DewfordTown_Gym/scripts.pory"

# 450 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyIntro:
# 451 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Yo! I'm RENTON!\n"
# 452 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "DEWFORD's new GYM LEADER!\p"
# 453 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm forged in street brawls and\n"
# 454 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "back-alley fights. Fists fly harder\l"
# 455 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "than any fancy cave move!\p"
# 456 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I took down the last Leader here\n"
# 457 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "with my own fists. Forgot his name!\p"
# 458 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "So, you wanna challenge me?\n"
# 459 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Show me what you're made of!$"
# 460 "data/maps/DewfordTown_Gym/scripts.pory"

# 461 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyDefeat:
# 462 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Whoah, damn! You hit way harder than\n"
# 463 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I thought you would!\p"
# 464 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You totally wrecked me!\n"
# 465 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Alright, take this GYM BADGE!\p"
# 466 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "But you'd better run along now...\n"
# 467 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "or you might pick a real fight with me!\p"
# 468 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHAHAHA!$"
# 469 "data/maps/DewfordTown_Gym/scripts.pory"

# 470 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_ReceivedKnuckleBadge:
# 471 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "{PLAYER} received the KNUCKLE BADGE\n"
# 472 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "from RENTON.$"
# 473 "data/maps/DewfordTown_Gym/scripts.pory"

# 474 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_KnuckleBadgeInfoTakeThis:
# 475 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "The KNUCKLE BADGE makes all POKéMON\n"
# 476 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "up to Level 30 obey without question.\p"
# 477 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "And you can use FLASH outside\n"
# 478 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "of battle.\p"
# 479 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "If you'd like, use this TECHNICAL\n"
# 480 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "MACHINE, too.$"
# 481 "data/maps/DewfordTown_Gym/scripts.pory"

# 482 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_RentonRadioGift:
# 483 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Oh! One more thing, take this RADIO.\p"
# 484 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You can make your own playlists with it.\n"
# 485 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I made a killer one for my GYM!\p"
# 486 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Mix whatever you want and make it loud!$"
# 487 "data/maps/DewfordTown_Gym/scripts.pory"

# 488 "data/maps/DewfordTown_Gym/scripts.pory"

# 489 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_ExplainBulkUp:
# 490 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "That TM08 contains BULK UP.\p"
# 491 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "It raises both ATTACK and DEFENSE.\p"
# 492 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "… … … … … …$"
# 493 "data/maps/DewfordTown_Gym/scripts.pory"

# 494 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_RegisteredBrawly:
# 495 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Registered GYM LEADER RENTON\n"
# 496 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "in the POKéNAV.$"
# 497 "data/maps/DewfordTown_Gym/scripts.pory"

# 498 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyPostBattle:
# 499 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Heh, I can tell you've been in plenty\n"
# 500 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "of fights, kid... HAHAHA!\l"
# 501 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You know how to have fun!\p"
# 502 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Let's clash again someday, yeah?\n"
# 503 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Or hang out and trade street stories!\p"
# 504 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHAHAHA!$"
# 505 "data/maps/DewfordTown_Gym/scripts.pory"

# 506 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_GymStatue:
# 507 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "DEWFORD TOWN POKéMON GYM$"
# 508 "data/maps/DewfordTown_Gym/scripts.pory"

# 509 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_GymStatueCertified:
# 510 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "DEWFORD TOWN POKéMON GYM\p"
# 511 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON'S CERTIFIED TRAINERS:\n"
# 512 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "{PLAYER}$"
# 513 "data/maps/DewfordTown_Gym/scripts.pory"

# 514 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyPreRematch:
# 515 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON: Heh, look who showed up.\n"
# 516 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "A real fighter always comes back.\p"
# 517 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I knew you'd return, kiddo!\n"
# 518 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Saw it in how you threw down!\p"
# 519 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Now show me how much tougher\n"
# 520 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "you've gotten!$"
# 521 "data/maps/DewfordTown_Gym/scripts.pory"

# 522 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyRematchDefeat:
# 523 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHAHA! That was insane!\n"
# 524 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Now THAT was a real fight!\p"
# 525 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm so pumped I'm gonna go get\n"
# 526 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "wasted after this! Maybe find a\l"
# 527 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "brawl with some sailor out there!\l"
# 528 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHAHAHA!$"
# 529 "data/maps/DewfordTown_Gym/scripts.pory"

# 530 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyPostRematch:
# 531 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON: Fighting's wild and endless,\n"
# 532 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "kid. You never see the bottom.\p"
# 533 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "There's always someone tougher\n"
# 534 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "waiting to throw down!$"
# 535 "data/maps/DewfordTown_Gym/scripts.pory"

# 536 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyRematchNeedTwoMons:
# 537 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON: Heh, knew you'd come back,\n"
# 538 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "kid! Real fighters always do.\p"
# 539 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "But hold up... You've only got one\n"
# 540 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "POKéMON ready to throw down.\p"
# 541 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Bring at least two POKéMON and\n"
# 542 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "then we'll have a real fight!$"
# 543 "data/maps/DewfordTown_Gym/scripts.pory"

# 544 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_AskDifficulty:
# 545 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "GYM GUIDE: Before you face RENTON,\n"
# 546 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I can adjust the challenge!\p"
# 547 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Want HARD mode where TRAINERS\n"
# 548 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "use optimized teams?$"
# 549 "data/maps/DewfordTown_Gym/scripts.pory"

# 550 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_HardSelected:
# 551 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "GYM GUIDE: Hard mode selected!\n"
# 552 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON won't hold back!$"
# 553 "data/maps/DewfordTown_Gym/scripts.pory"

# 554 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_NormalSelected:
# 555 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "GYM GUIDE: Casual mode selected!\n"
# 556 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON is waiting!$"
