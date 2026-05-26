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
		getdifficulty VAR_RESULT
# 140 "data/maps/DewfordTown_Gym/scripts.pory"
		goto_if_eq VAR_RESULT, 1, DewfordTown_Gym_BrawlyHard
# 141 "data/maps/DewfordTown_Gym/scripts.pory"

# 142 "data/maps/DewfordTown_Gym/scripts.pory"
    @ Normal - TRAINER_BRAWLY_1
# 143 "data/maps/DewfordTown_Gym/scripts.pory"
    trainerbattle_single TRAINER_BRAWLY_1, DewfordTown_Gym_Text_BrawlyIntro, DewfordTown_Gym_Text_BrawlyDefeat, DewfordTown_Gym_EventScript_BrawlyDefeated, NO_MUSIC
# 144 "data/maps/DewfordTown_Gym/scripts.pory"
    goto DewfordTown_Gym_AfterBattle
# 145 "data/maps/DewfordTown_Gym/scripts.pory"

# 146 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_BrawlyHard::
# 147 "data/maps/DewfordTown_Gym/scripts.pory"
    @ Hard - TRAINER_BRAWLY
# 148 "data/maps/DewfordTown_Gym/scripts.pory"
    trainerbattle_single TRAINER_BRAWLY, DewfordTown_Gym_Text_BrawlyIntro, DewfordTown_Gym_Text_BrawlyDefeat, DewfordTown_Gym_EventScript_BrawlyDefeated, NO_MUSIC
# 149 "data/maps/DewfordTown_Gym/scripts.pory"

# 150 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_AfterBattle::
# 151 "data/maps/DewfordTown_Gym/scripts.pory"
    specialvar VAR_RESULT, ShouldTryRematchBattle
# 152 "data/maps/DewfordTown_Gym/scripts.pory"
    goto_if_eq VAR_RESULT, TRUE, DewfordTown_Gym_EventScript_BrawlyRematch
# 153 "data/maps/DewfordTown_Gym/scripts.pory"
    goto_if_unset FLAG_RECEIVED_TM_BULK_UP, DewfordTown_Gym_EventScript_GiveBulkUp2
# 154 "data/maps/DewfordTown_Gym/scripts.pory"
    msgbox DewfordTown_Gym_Text_BrawlyPostBattle, MSGBOX_DEFAULT
# 155 "data/maps/DewfordTown_Gym/scripts.pory"
    release
# 156 "data/maps/DewfordTown_Gym/scripts.pory"
    end	
# 157 "data/maps/DewfordTown_Gym/scripts.pory"

# 158 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_BrawlyDefeated::
# 159 "data/maps/DewfordTown_Gym/scripts.pory"
    call DewfordTown_Gym_EventScript_AnimateFlashFullBrightness
# 160 "data/maps/DewfordTown_Gym/scripts.pory"
    message DewfordTown_Gym_Text_ReceivedKnuckleBadge
# 161 "data/maps/DewfordTown_Gym/scripts.pory"
    waitmessage
# 162 "data/maps/DewfordTown_Gym/scripts.pory"
    call Common_EventScript_PlayGymBadgeFanfare
# 163 "data/maps/DewfordTown_Gym/scripts.pory"
    msgbox DewfordTown_Gym_Text_KnuckleBadgeInfoTakeThis, MSGBOX_DEFAULT
# 164 "data/maps/DewfordTown_Gym/scripts.pory"
    setflag FLAG_DEFEATED_DEWFORD_GYM
# 165 "data/maps/DewfordTown_Gym/scripts.pory"
    setflag FLAG_BADGE02_GET
# 166 "data/maps/DewfordTown_Gym/scripts.pory"
    addvar VAR_PETALBURG_GYM_STATE, 1
# 167 "data/maps/DewfordTown_Gym/scripts.pory"
    call_if_eq VAR_PETALBURG_GYM_STATE, 6, Common_EventScript_ReadyPetalburgGymForBattle
# 168 "data/maps/DewfordTown_Gym/scripts.pory"
    setvar VAR_0x8008, 2
# 169 "data/maps/DewfordTown_Gym/scripts.pory"
    call Common_EventScript_SetGymTrainers
# 170 "data/maps/DewfordTown_Gym/scripts.pory"
    call DewfordTown_Gym_EventScript_GiveBulkUp
# 171 "data/maps/DewfordTown_Gym/scripts.pory"
    closemessage
# 172 "data/maps/DewfordTown_Gym/scripts.pory"
    delay 30
# 173 "data/maps/DewfordTown_Gym/scripts.pory"
    waitfanfare
# 174 "data/maps/DewfordTown_Gym/scripts.pory"
    closemessage
# 175 "data/maps/DewfordTown_Gym/scripts.pory"
    delay 30
# 176 "data/maps/DewfordTown_Gym/scripts.pory"
    release
# 177 "data/maps/DewfordTown_Gym/scripts.pory"
    end
# 178 "data/maps/DewfordTown_Gym/scripts.pory"

# 179 "data/maps/DewfordTown_Gym/scripts.pory"

# 180 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GiveBulkUp::
# 181 "data/maps/DewfordTown_Gym/scripts.pory"
	giveitem ITEM_TM_BULK_UP
# 182 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 0, Common_EventScript_BagIsFull
# 183 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_ExplainBulkUp, MSGBOX_DEFAULT
# 184 "data/maps/DewfordTown_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_BULK_UP
# 185 "data/maps/DewfordTown_Gym/scripts.pory"
	return
# 186 "data/maps/DewfordTown_Gym/scripts.pory"

# 187 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GiveBulkUp2:
# 188 "data/maps/DewfordTown_Gym/scripts.pory"
	giveitem ITEM_TM_BULK_UP
# 189 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 0, Common_EventScript_ShowBagIsFull
# 190 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_ExplainBulkUp, MSGBOX_DEFAULT
# 191 "data/maps/DewfordTown_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_BULK_UP
# 192 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 193 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 194 "data/maps/DewfordTown_Gym/scripts.pory"

# 195 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_BrawlyRematch::
# 196 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_rematch_double TRAINER_BRAWLY_1, DewfordTown_Gym_Text_BrawlyPreRematch, DewfordTown_Gym_Text_BrawlyRematchDefeat, DewfordTown_Gym_Text_BrawlyRematchNeedTwoMons
# 197 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_BrawlyPostRematch, MSGBOX_AUTOCLOSE
# 198 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 199 "data/maps/DewfordTown_Gym/scripts.pory"

# 200 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Takao::
# 201 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_TAKAO, DewfordTown_Gym_Text_TakaoIntro, DewfordTown_Gym_Text_TakaoDefeat, DewfordTown_Gym_EventScript_TakaoBrightenRoom
# 202 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_TakaoPostBattle, MSGBOX_AUTOCLOSE
# 203 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 204 "data/maps/DewfordTown_Gym/scripts.pory"

# 205 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_TakaoBrightenRoom::
# 206 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 207 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 208 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 209 "data/maps/DewfordTown_Gym/scripts.pory"

# 210 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Jocelyn::
# 211 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_JOCELYN, DewfordTown_Gym_Text_JocelynIntro, DewfordTown_Gym_Text_JocelynDefeat, DewfordTown_Gym_EventScript_JocelynBrightenRoom
# 212 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_JocelynPostBattle, MSGBOX_AUTOCLOSE
# 213 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 214 "data/maps/DewfordTown_Gym/scripts.pory"

# 215 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_JocelynBrightenRoom::
# 216 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 217 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 218 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 219 "data/maps/DewfordTown_Gym/scripts.pory"

# 220 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Laura::
# 221 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_LAURA, DewfordTown_Gym_Text_LauraIntro, DewfordTown_Gym_Text_LauraDefeat, DewfordTown_Gym_EventScript_LauraBrightenRoom
# 222 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_LauraPostBattle, MSGBOX_AUTOCLOSE
# 223 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 224 "data/maps/DewfordTown_Gym/scripts.pory"

# 225 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_LauraBrightenRoom::
# 226 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 227 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 228 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 229 "data/maps/DewfordTown_Gym/scripts.pory"

# 230 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Brenden::
# 231 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_BRENDEN, DewfordTown_Gym_Text_BrendenIntro, DewfordTown_Gym_Text_BrendenDefeat, DewfordTown_Gym_EventScript_BrendenBrightenRoom
# 232 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_BrendenPostBattle, MSGBOX_AUTOCLOSE
# 233 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 234 "data/maps/DewfordTown_Gym/scripts.pory"

# 235 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_BrendenBrightenRoom::
# 236 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 237 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 238 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 239 "data/maps/DewfordTown_Gym/scripts.pory"

# 240 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Cristian::
# 241 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_CRISTIAN, DewfordTown_Gym_Text_CristianIntro, DewfordTown_Gym_Text_CristianDefeat, DewfordTown_Gym_EventScript_CristianBrightenRoom
# 242 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_CristianPostBattle, MSGBOX_AUTOCLOSE
# 243 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 244 "data/maps/DewfordTown_Gym/scripts.pory"

# 245 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_CristianBrightenRoom::
# 246 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 247 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 248 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 249 "data/maps/DewfordTown_Gym/scripts.pory"

# 250 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_Lilith::
# 251 "data/maps/DewfordTown_Gym/scripts.pory"
	trainerbattle_single TRAINER_LILITH, DewfordTown_Gym_Text_LilithIntro, DewfordTown_Gym_Text_LilithDefeat, DewfordTown_Gym_EventScript_LilithBrightenRoom
# 252 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_LilithPostBattle, MSGBOX_AUTOCLOSE
# 253 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 254 "data/maps/DewfordTown_Gym/scripts.pory"

# 255 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_LilithBrightenRoom::
# 256 "data/maps/DewfordTown_Gym/scripts.pory"
	call DewfordTown_Gym_EventScript_BrightenRoom
# 257 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 258 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 259 "data/maps/DewfordTown_Gym/scripts.pory"

# 260 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymGuide::
# 261 "data/maps/DewfordTown_Gym/scripts.pory"
	lock
# 262 "data/maps/DewfordTown_Gym/scripts.pory"
	faceplayer
# 263 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_DEWFORD_GYM, DewfordTown_Gym_EventScript_GymGuidePostVictory
# 264 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_EventScript_GymGuideAdvice
# 265 "data/maps/DewfordTown_Gym/scripts.pory"

# 266 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymGuideAdvice::
# 267 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 268 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 269 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 270 "data/maps/DewfordTown_Gym/scripts.pory"

# 271 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymGuidePostVictory::
# 272 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 273 "data/maps/DewfordTown_Gym/scripts.pory"
	release
# 274 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 275 "data/maps/DewfordTown_Gym/scripts.pory"

# 276 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_LeftGymStatue::
# 277 "data/maps/DewfordTown_Gym/scripts.pory"
	lockall
# 278 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_set FLAG_BADGE02_GET, DewfordTown_Gym_EventScript_GymStatueCertified
# 279 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_EventScript_GymStatue
# 280 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 281 "data/maps/DewfordTown_Gym/scripts.pory"

# 282 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_RightGymStatue::
# 283 "data/maps/DewfordTown_Gym/scripts.pory"
	lockall
# 284 "data/maps/DewfordTown_Gym/scripts.pory"
	goto_if_set FLAG_BADGE02_GET, DewfordTown_Gym_EventScript_GymStatueCertified
# 285 "data/maps/DewfordTown_Gym/scripts.pory"
	goto DewfordTown_Gym_EventScript_GymStatue
# 286 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 287 "data/maps/DewfordTown_Gym/scripts.pory"

# 288 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymStatueCertified::
# 289 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 290 "data/maps/DewfordTown_Gym/scripts.pory"
	releaseall
# 291 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 292 "data/maps/DewfordTown_Gym/scripts.pory"

# 293 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_EventScript_GymStatue::
# 294 "data/maps/DewfordTown_Gym/scripts.pory"
	msgbox DewfordTown_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 295 "data/maps/DewfordTown_Gym/scripts.pory"
	releaseall
# 296 "data/maps/DewfordTown_Gym/scripts.pory"
	end
# 297 "data/maps/DewfordTown_Gym/scripts.pory"

# 298 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_GymGuideAdvice:
# 299 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Hey, how's it going, CHAMPION-\n"
# 300 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "bound {PLAYER}?\p"
# 301 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON loves tough battles and\n"
# 302 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "hits hard. Prepare for FIGHTING power!\p"
# 303 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "NORMAL-types are asking for trouble.\n"
# 304 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "FIGHTING moves crush them!\p"
# 305 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "The Gym is super dark. RENTON likes\n"
# 306 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "it that way.\p"
# 307 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Beat TRAINERS and it gets brighter.\n"
# 308 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Good luck!$"
# 309 "data/maps/DewfordTown_Gym/scripts.pory"

# 310 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_GymGuidePostVictory:
# 311 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Whoah! It's way brighter in here now!\p"
# 312 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Your future's looking bright too,\n"
# 313 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "CHAMPION-to-be!$"
# 314 "data/maps/DewfordTown_Gym/scripts.pory"

# 315 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_TakaoIntro:
# 316 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Might is right!\n"
# 317 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Come on!$"
# 318 "data/maps/DewfordTown_Gym/scripts.pory"

# 319 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_TakaoDefeat:
# 320 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Not enough power...$"
# 321 "data/maps/DewfordTown_Gym/scripts.pory"

# 322 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_TakaoPostBattle:
# 323 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Your skill overcame my strength!\n"
# 324 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Your technique is commendable!$"
# 325 "data/maps/DewfordTown_Gym/scripts.pory"

# 326 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_JocelynIntro:
# 327 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "No way I'm letting RENTON handle this!\n"
# 328 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You do NOT want that!\p"
# 329 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'd rather face wild Pokemon or even\n"
# 330 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "the ELITE FOUR than his street brawls!\p"
# 331 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "He demolished the old Gym Leader,\n"
# 332 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "and it wasn't even a Pokemon battle!\l"
# 333 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Hahaha!$"
# 334 "data/maps/DewfordTown_Gym/scripts.pory"

# 335 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_JocelynDefeat:
# 336 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You're tough... but be careful!\n"
# 337 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Don't get cocky around RENTON,\p"
# 338 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "or you'll end up in real trouble!\n"
# 339 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "But he respects fighters like you...$"
# 340 "data/maps/DewfordTown_Gym/scripts.pory"

# 341 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_JocelynPostBattle:
# 342 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "That battle fired me up!\n"
# 343 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm gonna train like crazy!\p"
# 344 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "One day I'll be totally badass...\n"
# 345 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "just like RENTON!$"
# 346 "data/maps/DewfordTown_Gym/scripts.pory"

# 347 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LauraIntro:
# 348 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Don't brush me off!\n"
# 349 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I blast ROCK music in here!\p"
# 350 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "The dark? I don't care about that!\n"
# 351 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I grew up hanging with RENTON!\p"
# 352 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Street fights, loud nights, bad lighting...\n"
# 353 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "This Gym is exactly my vibe!$"
# 354 "data/maps/DewfordTown_Gym/scripts.pory"

# 355 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LauraDefeat:
# 356 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Waaaah!\n"
# 357 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I lost! No way...$"
# 358 "data/maps/DewfordTown_Gym/scripts.pory"

# 359 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LauraPostBattle:
# 360 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Huh? Me and RENTON?\n"
# 361 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "A thing? No way!\p"
# 362 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "We're just friends, don't be weird!\n"
# 363 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Stop imagining stuff!$"
# 364 "data/maps/DewfordTown_Gym/scripts.pory"

# 365 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LilithIntro:
# 366 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Ufufu...\p"
# 367 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You, with those weird clothes!\n"
# 368 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Stumbling around in the dark?$"
# 369 "data/maps/DewfordTown_Gym/scripts.pory"

# 370 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LilithDefeat:
# 371 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Oh, you... weirdo...\n"
# 372 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I don't want to know you!$"
# 373 "data/maps/DewfordTown_Gym/scripts.pory"

# 374 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_LilithPostBattle:
# 375 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You deserve to get lost and end up\n"
# 376 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "back at the entrance!\p"
# 377 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "We get used to the dark here.\n"
# 378 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Just like street fights... the more,\l"
# 379 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "the better we become!$"
# 380 "data/maps/DewfordTown_Gym/scripts.pory"

# 381 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrendenIntro:
# 382 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHA! During one of RENTON's wild\n"
# 383 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "nights, we became friends!\p"
# 384 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "We threw hands, I got beat up bad,\n"
# 385 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHA! But he saw I was tough!\p"
# 386 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm a sailor! I've seen storms,\n"
# 387 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "ship brawls, bar fights, everything!\p"
# 388 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "So come on, cape brat!\n"
# 389 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Show me what you got!$"
# 390 "data/maps/DewfordTown_Gym/scripts.pory"

# 391 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrendenDefeat:
# 392 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Not bad! But this was nothing compared\n"
# 393 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "to RENTON's beatdowns!\p"
# 394 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "That was easy stuff!\n"
# 395 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You've got a long way to go!$"
# 396 "data/maps/DewfordTown_Gym/scripts.pory"

# 397 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrendenPostBattle:
# 398 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Rules are rules, y'know.\n"
# 399 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Go on, take your beatdown from RENTON!\p"
# 400 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "After that, we can sail off and\n"
# 401 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "drink till sunrise! RENTON's the man!$"
# 402 "data/maps/DewfordTown_Gym/scripts.pory"

# 403 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_CristianIntro:
# 404 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "If you want to pass, you fight me first!\p"
# 405 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Strength matters here\n"
# 406 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "just like in any street brawl!\p"
# 407 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm a punk and proud of it!\n"
# 408 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm here because I grew up with RENTON!\l"
# 409 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "We've been scrapping since kindergarten!$"
# 410 "data/maps/DewfordTown_Gym/scripts.pory"

# 411 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_CristianDefeat:
# 412 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Grrrrr!\n"
# 413 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You got lucky!$"
# 414 "data/maps/DewfordTown_Gym/scripts.pory"

# 415 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_CristianPostBattle:
# 416 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Fine! You win!\n"
# 417 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Go after that BADGE!\p"
# 418 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "With moves like that, you'd survive\n"
# 419 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "a real street fight too!$"
# 420 "data/maps/DewfordTown_Gym/scripts.pory"

# 421 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyIntro:
# 422 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Yo! I'm RENTON!\n"
# 423 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "DEWFORD's new GYM LEADER!\p"
# 424 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm forged in street brawls and\n"
# 425 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "back-alley fights. Fists fly harder\l"
# 426 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "than any fancy cave move!\p"
# 427 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I took down the last Leader here\n"
# 428 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "with my own fists. Forgot his name!\p"
# 429 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "So, you wanna challenge me?\n"
# 430 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Show me what you're made of!$"
# 431 "data/maps/DewfordTown_Gym/scripts.pory"

# 432 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyDefeat:
# 433 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Whoah, damn! You hit way harder than\n"
# 434 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I thought you would!\p"
# 435 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You totally wrecked me!\n"
# 436 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Alright, take this GYM BADGE!\p"
# 437 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "But you'd better run along now...\n"
# 438 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "or you might pick a real fight with me!\p"
# 439 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHAHAHA!$"
# 440 "data/maps/DewfordTown_Gym/scripts.pory"

# 441 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_ReceivedKnuckleBadge:
# 442 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "{PLAYER} received the KNUCKLE BADGE\n"
# 443 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "from RENTON.$"
# 444 "data/maps/DewfordTown_Gym/scripts.pory"

# 445 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_KnuckleBadgeInfoTakeThis:
# 446 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "The KNUCKLE BADGE makes all POKéMON\n"
# 447 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "up to Level 30 obey without question.\p"
# 448 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "And you can use FLASH outside\n"
# 449 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "of battle.\p"
# 450 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "If you'd like, use this TECHNICAL\n"
# 451 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "MACHINE, too.$"
# 452 "data/maps/DewfordTown_Gym/scripts.pory"

# 453 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_ExplainBulkUp:
# 454 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "That TM08 contains BULK UP.\p"
# 455 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "It raises both ATTACK and DEFENSE.\p"
# 456 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "… … … … … …$"
# 457 "data/maps/DewfordTown_Gym/scripts.pory"

# 458 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_RegisteredBrawly:
# 459 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Registered GYM LEADER RENTON\n"
# 460 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "in the POKéNAV.$"
# 461 "data/maps/DewfordTown_Gym/scripts.pory"

# 462 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyPostBattle:
# 463 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Heh, I can tell you've been in plenty\n"
# 464 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "of fights, kid... HAHAHA!\l"
# 465 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "You know how to have fun!\p"
# 466 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Let's clash again someday, yeah?\n"
# 467 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Or hang out and trade street stories!\p"
# 468 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHAHAHA!$"
# 469 "data/maps/DewfordTown_Gym/scripts.pory"

# 470 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_GymStatue:
# 471 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "DEWFORD TOWN POKéMON GYM$"
# 472 "data/maps/DewfordTown_Gym/scripts.pory"

# 473 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_GymStatueCertified:
# 474 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "DEWFORD TOWN POKéMON GYM\p"
# 475 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON'S CERTIFIED TRAINERS:\n"
# 476 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "{PLAYER}$"
# 477 "data/maps/DewfordTown_Gym/scripts.pory"

# 478 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyPreRematch:
# 479 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON: Heh, look who showed up.\n"
# 480 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "A real fighter always comes back.\p"
# 481 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I knew you'd return, kiddo!\n"
# 482 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Saw it in how you threw down!\p"
# 483 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Now show me how much tougher\n"
# 484 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "you've gotten!$"
# 485 "data/maps/DewfordTown_Gym/scripts.pory"

# 486 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyRematchDefeat:
# 487 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHAHA! That was insane!\n"
# 488 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Now THAT was a real fight!\p"
# 489 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I'm so pumped I'm gonna go get\n"
# 490 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "wasted after this! Maybe find a\l"
# 491 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "brawl with some sailor out there!\l"
# 492 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "HAHAHAHAHA!$"
# 493 "data/maps/DewfordTown_Gym/scripts.pory"

# 494 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyPostRematch:
# 495 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON: Fighting's wild and endless,\n"
# 496 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "kid. You never see the bottom.\p"
# 497 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "There's always someone tougher\n"
# 498 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "waiting to throw down!$"
# 499 "data/maps/DewfordTown_Gym/scripts.pory"

# 500 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_BrawlyRematchNeedTwoMons:
# 501 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON: Heh, knew you'd come back,\n"
# 502 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "kid! Real fighters always do.\p"
# 503 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "But hold up... You've only got one\n"
# 504 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "POKéMON ready to throw down.\p"
# 505 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Bring at least two POKéMON and\n"
# 506 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "then we'll have a real fight!$"
# 507 "data/maps/DewfordTown_Gym/scripts.pory"

# 508 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_AskDifficulty:
# 509 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "GYM GUIDE: Before you face RENTON,\n"
# 510 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "I can adjust the challenge!\p"
# 511 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "Want HARD mode where TRAINERS\n"
# 512 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "use optimized teams?$"
# 513 "data/maps/DewfordTown_Gym/scripts.pory"

# 514 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_HardSelected:
# 515 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "GYM GUIDE: Hard mode selected!\n"
# 516 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON won't hold back!$"
# 517 "data/maps/DewfordTown_Gym/scripts.pory"

# 518 "data/maps/DewfordTown_Gym/scripts.pory"
DewfordTown_Gym_Text_NormalSelected:
# 519 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "GYM GUIDE: Casual mode selected!\n"
# 520 "data/maps/DewfordTown_Gym/scripts.pory"
	.string "RENTON is waiting!$"
