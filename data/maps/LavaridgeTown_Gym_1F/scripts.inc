# 1 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 2 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_MapScripts::
# 3 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, LavaridgeTown_Gym_1F_OnTransition
# 4 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.byte 0
# 5 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 6 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_OnTransition:
# 7 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call LavaridgeTown_Gym_1F_EventScript_SetTrainerTempVars
# 8 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 9 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 10 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
@ Unclear where/if these temp vars are getting checked
# 11 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_SetTrainerTempVars::
# 12 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_B, 0
# 13 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_C, 0
# 14 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_D, 0
# 15 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_E, 0
# 16 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_F, 0
# 17 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_COLE, LavaridgeTown_Gym_1F_EventScript_SetGeraldTempVar
# 18 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_B, 1
# 19 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_SetGeraldTempVar::
# 20 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_GERALD, LavaridgeTown_Gym_1F_EventScript_SetAxleTempVar
# 21 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_C, 1
# 22 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_SetAxleTempVar::
# 23 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_AXLE, LavaridgeTown_Gym_1F_EventScript_SetDanielleTempVar
# 24 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_D, 1
# 25 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_SetDanielleTempVar::
# 26 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_DANIELLE, LavaridgeTown_Gym_1F_EventScript_EndSetTrainerTempVars
# 27 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_E, 1
# 28 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_EndSetTrainerTempVars::
# 29 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	return
# 30 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 31 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_CheckBuryTrainers::
# 32 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_COLE, LavaridgeTown_Gym_1F_EventScript_CheckBuryGerald
# 33 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setobjectmovementtype LOCALID_COLE, MOVEMENT_TYPE_BURIED
# 34 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_CheckBuryGerald::
# 35 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_GERALD, LavaridgeTown_Gym_1F_EventScript_CheckBuryAxle
# 36 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setobjectmovementtype LOCALID_GERALD, MOVEMENT_TYPE_BURIED
# 37 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_CheckBuryAxle::
# 38 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_AXLE, LavaridgeTown_Gym_1F_EventScript_CheckBuryDanielle
# 39 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setobjectmovementtype LOCALID_AXLE, MOVEMENT_TYPE_BURIED
# 40 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_CheckBuryDanielle::
# 41 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_DANIELLE, LavaridgeTown_Gym_1F_EventScript_EndCheckBuryTrainers
# 42 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setobjectmovementtype LOCALID_DANIELLE, MOVEMENT_TYPE_BURIED
# 43 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_EndCheckBuryTrainers::
# 44 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	return
# 45 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 46 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
// Lavaridge Town Gym - Flannery
# 47 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Flannery::
# 48 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    lock
# 49 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    faceplayer
# 50 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    getdifficulty VAR_RESULT
# 51 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    goto_if_eq VAR_RESULT, 1, LavaridgeTown_Gym_1F_EventScript_FlanneryHard
# 52 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 53 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    // Casual Mode
# 54 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    trainerbattle_single TRAINER_FLANNERY_CASUAL, LavaridgeTown_Gym_1F_Text_FlanneryIntro, LavaridgeTown_Gym_1F_Text_FlanneryDefeat, LavaridgeTown_Gym_1F_EventScript_FlanneryDefeated, NO_MUSIC
# 55 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    goto LavaridgeTown_Gym_1F_EventScript_FlanneryAfterBattle
# 56 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 57 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FlanneryHard::
# 58 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    // Hard Mode
# 59 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    trainerbattle_single TRAINER_FLANNERY_1, LavaridgeTown_Gym_1F_Text_FlanneryIntro, LavaridgeTown_Gym_1F_Text_FlanneryDefeat, LavaridgeTown_Gym_1F_EventScript_FlanneryDefeated, NO_MUSIC
# 60 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    // Fall through to AfterBattle
# 61 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 62 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FlanneryAfterBattle::
# 63 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    specialvar VAR_RESULT, ShouldTryRematchBattle
# 64 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    goto_if_eq VAR_RESULT, TRUE, LavaridgeTown_Gym_1F_EventScript_FlanneryRematch
# 65 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    goto_if_unset FLAG_RECEIVED_TM_OVERHEAT, LavaridgeTown_Gym_1F_EventScript_GiveOverheat2
# 66 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    msgbox LavaridgeTown_Gym_1F_Text_FlanneryPostBattle, MSGBOX_DEFAULT
# 67 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    release
# 68 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    end
# 69 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 70 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FlanneryDefeated::
# 71 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	message LavaridgeTown_Gym_1F_Text_ReceivedHeatBadge
# 72 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmessage
# 73 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call Common_EventScript_PlayGymBadgeFanfare
# 74 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_ExplainHeatBadgeTakeThis, MSGBOX_DEFAULT
# 75 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_WHITEOUT_TO_LAVARIDGE
# 76 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_DEFEATED_LAVARIDGE_GYM
# 77 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_BADGE04_GET
# 78 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	addvar VAR_PETALBURG_GYM_STATE, 1
# 79 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 6, Common_EventScript_ReadyPetalburgGymForBattle
# 80 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_0x8008, 4
# 81 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call Common_EventScript_SetGymTrainers
# 82 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_HIDE_VERDANTURF_TOWN_WANDAS_HOUSE_WALLY
# 83 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_LAVARIDGE_TOWN_STATE, 1
# 84 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call LavaridgeTown_Gym_1F_EventScript_GiveOverheat
# 85 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 86 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	delay 30
# 87 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitfanfare
# 88 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 89 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	delay 30
# 90 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 91 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 92 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 93 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GiveOverheat2::
# 94 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	giveitem ITEM_TM_OVERHEAT
# 95 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 96 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_ExplainOverheat, MSGBOX_DEFAULT
# 97 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_RECEIVED_TM_OVERHEAT
# 98 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 99 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 100 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 101 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GiveOverheat::
# 102 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	giveitem ITEM_TM_OVERHEAT
# 103 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 104 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_ExplainOverheat, MSGBOX_DEFAULT
# 105 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_RECEIVED_TM_OVERHEAT
# 106 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	return
# 107 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 108 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FlanneryRematch::
# 109 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle_rematch_double TRAINER_FLANNERY_1, LavaridgeTown_Gym_1F_Text_FlanneryPreRematch, LavaridgeTown_Gym_1F_Text_FlanneryRematchDefeat, LavaridgeTown_Gym_1F_Text_FlanneryRematchNeedTwoMons
# 110 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FlanneryPostRematch, MSGBOX_AUTOCLOSE
# 111 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 112 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 113 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Cole::
# 114 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_COLE, TRAINER_COLE, LavaridgeTown_Gym_1F_Text_ColeIntro, LavaridgeTown_Gym_1F_Text_ColeDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 115 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_ColePostBattle, MSGBOX_AUTOCLOSE
# 116 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 117 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 118 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_EventScript_CheckTrainerScript::
# 119 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call LavaridgeTown_Gym_1F_EventScript_SetTrainerTempVars
# 120 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 121 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	special ShouldTryGetTrainerScript
# 122 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, 1, EventScript_GotoTrainerScript
# 123 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 124 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 125 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Axle::
# 126 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_STAGE_PASS, LavaridgeTown_Gym_1F_EventScript_AxleHasGivenPass
# 127 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_AXLE, TRAINER_AXLE, LavaridgeTown_Gym_1F_Text_AxleIntro, LavaridgeTown_Gym_1F_Text_AxleDefeat, LavaridgeTown_Gym_1F_EventScript_AxleGiveStagePass, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 128 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 129 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 130 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_AxleGiveStagePass::
# 131 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 132 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 133 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	settrainerflag TRAINER_AXLE
# 134 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_LAVARIDGE_GYM_STAGE_PASS
# 135 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 136 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitfanfare
# 137 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call LavaridgeTown_Gym_1F_EventScript_SetTrainerTempVars
# 138 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_AxlePostBattle, MSGBOX_DEFAULT
# 139 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 140 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 141 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 142 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_AxleHasGivenPass::
# 143 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 144 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 145 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_AxleHasGivenPass, MSGBOX_DEFAULT
# 146 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 147 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 148 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 149 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_EventScript_Keegan::
# 150 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_KEEGAN, TRAINER_KEEGAN, LavaridgeTown_Gym_B1F_Text_KeeganIntro, LavaridgeTown_Gym_B1F_Text_KeeganDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 151 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_B1F_Text_KeeganPostBattle, MSGBOX_AUTOCLOSE
# 152 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 153 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 154 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Danielle::
# 155 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_DANIELLE, TRAINER_DANIELLE, LavaridgeTown_Gym_1F_Text_DanielleIntro, LavaridgeTown_Gym_1F_Text_DanielleDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 156 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_DaniellePostBattle, MSGBOX_AUTOCLOSE
# 157 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 158 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 159 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Gerald::
# 160 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_GERALD, TRAINER_GERALD, LavaridgeTown_Gym_1F_Text_GeraldIntro, LavaridgeTown_Gym_1F_Text_GeraldDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 161 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GeraldPostBattle, MSGBOX_AUTOCLOSE
# 162 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 163 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 164 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_EventScript_Jace::
# 165 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_JACE, TRAINER_JACE, LavaridgeTown_Gym_B1F_Text_JaceIntro, LavaridgeTown_Gym_B1F_Text_JaceDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 166 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_B1F_Text_JacePostBattle, MSGBOX_AUTOCLOSE
# 167 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 168 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 169 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_EventScript_Jeff::
# 170 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_JEFF, TRAINER_JEFF, LavaridgeTown_Gym_B1F_Text_JeffIntro, LavaridgeTown_Gym_B1F_Text_JeffDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 171 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_B1F_Text_JeffPostBattle, MSGBOX_AUTOCLOSE
# 172 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 173 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 174 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_EventScript_Eli::
# 175 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_ELI, TRAINER_ELI, LavaridgeTown_Gym_B1F_Text_EliIntro, LavaridgeTown_Gym_B1F_Text_EliDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 176 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_B1F_Text_EliPostBattle, MSGBOX_AUTOCLOSE
# 177 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 178 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 179 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GymGuide::
# 180 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 181 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 182 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_GymGuidePostVictory
# 183 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 184 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 185 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 186 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 187 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GymGuidePostVictory::
# 188 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 189 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 190 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 191 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 192 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_LeftGymStatue::
# 193 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 194 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_BADGE04_GET, LavaridgeTown_Gym_1F_EventScript_GymStatueCertified
# 195 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_GymStatue
# 196 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 197 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 198 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RightGymStatue::
# 199 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 200 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_BADGE04_GET, LavaridgeTown_Gym_1F_EventScript_GymStatueCertified
# 201 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_GymStatue
# 202 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 203 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 204 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GymStatueCertified::
# 205 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GymStatueCertified, MSGBOX_DEFAULT
# 206 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 207 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 208 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 209 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GymStatue::
# 210 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GymStatue, MSGBOX_DEFAULT
# 211 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 212 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 213 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 214 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 215 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer1::
# 216 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 217 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 218 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_FrontStaffCongrats
# 219 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontBouncer1, MSGBOX_DEFAULT
# 220 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 221 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 222 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 223 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2::
# 224 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 225 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 226 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_FrontStaffCongrats
# 227 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_BOUGHT_TICKET, LavaridgeTown_Gym_1F_EventScript_FrontBouncer2HasTicket
# 228 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontBouncer2NeedTicket, MSGBOX_DEFAULT
# 229 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 230 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 231 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 232 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2HasTicket::
# 233 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontBouncer2HasTicket, MSGBOX_DEFAULT
# 234 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 235 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 236 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 237 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Trigger::
# 238 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_unset FLAG_LAVARIDGE_GYM_BOUGHT_TICKET, LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Block
# 239 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	specialvar VAR_RESULT, GetPlayerFacingDirection
# 240 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, DIR_SOUTH, LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Exit
# 241 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, DIR_NORTH, LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Enter
# 242 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 243 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 244 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Block::
# 245 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 246 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_FRONT_BOUNCER_2, Common_Movement_FaceLeft
# 247 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 248 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontBouncer2NeedTicket, MSGBOX_DEFAULT
# 249 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 250 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 251 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 252 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_FRONT_BOUNCER_2, Common_Movement_FaceDown
# 253 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 254 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 255 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 256 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 257 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Enter::
# 258 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 259 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_FRONT_BOUNCER_2, Common_Movement_FaceLeft
# 260 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 261 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontBouncer2HasTicket, MSGBOX_DEFAULT
# 262 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_FRONT_BOUNCER_2, Common_Movement_FaceDown
# 263 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 264 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 265 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 266 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 267 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Exit::
# 268 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 269 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 270 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Tickets1::
# 271 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 272 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 273 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_FrontStaffCongrats
# 274 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets1, MSGBOX_DEFAULT
# 275 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 276 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 277 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 278 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Tickets2::
# 279 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 280 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 281 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_FrontStaffCongrats
# 282 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_BOUGHT_TICKET, LavaridgeTown_Gym_1F_EventScript_Tickets2AlreadyBought
# 283 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	showmoneybox 0, 0
# 284 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets2BuyTicket, MSGBOX_YESNO
# 285 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LavaridgeTown_Gym_1F_EventScript_Tickets2Decline
# 286 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	checkmoney 100
# 287 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, LavaridgeTown_Gym_1F_EventScript_Tickets2NoMoney
# 288 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets2SoldTicket, MSGBOX_DEFAULT
# 289 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	removemoney 100
# 290 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	updatemoneybox
# 291 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_LAVARIDGE_GYM_BOUGHT_TICKET
# 292 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 293 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitfanfare
# 294 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	hidemoneybox
# 295 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 296 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 297 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 298 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Tickets2AlreadyBought::
# 299 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets2AlreadyBought, MSGBOX_DEFAULT
# 300 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 301 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 302 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 303 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Tickets2Decline::
# 304 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets2Decline, MSGBOX_DEFAULT
# 305 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	hidemoneybox
# 306 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 307 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 308 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 309 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Tickets2NoMoney::
# 310 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets2NoMoney, MSGBOX_DEFAULT
# 311 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	hidemoneybox
# 312 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 313 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 314 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 315 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_StageBouncer::
# 316 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 317 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 318 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_StageStaffCongrats
# 319 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_STAGE_PASS, LavaridgeTown_Gym_1F_EventScript_StageBouncerHasPass
# 320 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_StageBouncerNeedPass, MSGBOX_DEFAULT
# 321 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 322 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 323 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 324 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_StageBouncerHasPass::
# 325 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_StageBouncerHasPass, MSGBOX_DEFAULT
# 326 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 327 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 328 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 329 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontStaffCongrats::
# 330 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontStaffCongrats, MSGBOX_DEFAULT
# 331 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 332 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 333 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 334 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_StageStaffCongrats::
# 335 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_StageStaffCongrats, MSGBOX_DEFAULT
# 336 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 337 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 338 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 339 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_StageBouncerLeftTrigger::
# 340 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_STAGE_PASS, LavaridgeTown_Gym_1F_EventScript_BouncerTriggerPass
# 341 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 342 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_STAGE_BOUNCER_LEFT, Common_Movement_FaceRight
# 343 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 344 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_StageBouncerNeedPass, MSGBOX_DEFAULT
# 345 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 346 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 347 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 348 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_STAGE_BOUNCER_LEFT, Common_Movement_FaceRight
# 349 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 350 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 351 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 352 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 353 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_StageBouncerRightTrigger::
# 354 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_STAGE_PASS, LavaridgeTown_Gym_1F_EventScript_BouncerTriggerPass
# 355 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 356 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_STAGE_BOUNCER_RIGHT, Common_Movement_FaceLeft
# 357 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 358 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_StageBouncerNeedPass, MSGBOX_DEFAULT
# 359 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 360 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 361 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 362 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_STAGE_BOUNCER_RIGHT, Common_Movement_FaceLeft
# 363 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 364 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 365 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 366 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 367 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_BouncerTriggerPass::
# 368 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 369 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 370 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 371 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FrontBouncer1:
# 372 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Line starts over there, friend.\p"
# 373 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Get yourself a ticket first, then\n"
# 374 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "we can let you into the show.$"
# 375 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 376 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FrontBouncer2NeedTicket:
# 377 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hold up. I need to see a ticket\n"
# 378 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "before you head inside.\p"
# 379 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The ticket booth is right over there.$"
# 380 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 381 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FrontBouncer2HasTicket:
# 382 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Ticket checks out.\p"
# 383 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Enjoy the show!$"
# 384 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 385 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets1:
# 386 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Welcome to tonight's show!\n"
# 387 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "We hope you have a great time!$"
# 388 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 389 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets2BuyTicket:
# 390 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "One ticket to see AMATERASU is\n"
# 391 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "¥100.\p"
# 392 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Would you like one?$"
# 393 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 394 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets2SoldTicket:
# 395 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Thank you!\p"
# 396 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You're all set. Show your ticket\n"
# 397 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "to the bouncer at the entrance.$"
# 398 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 399 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets2AlreadyBought:
# 400 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Enjoy the show!$"
# 401 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 402 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets2Decline:
# 403 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "No problem.\p"
# 404 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Come back if you decide you want\n"
# 405 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "to see the show.$"
# 406 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 407 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets2NoMoney:
# 408 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I'm sorry, but you don't have\n"
# 409 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "enough money for a ticket.$"
# 410 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 411 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_StageBouncerNeedPass:
# 412 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Stage access is for stage-pass\n"
# 413 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "holders only.\p"
# 414 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "No pass, no getting near\n"
# 415 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU during the show.$"
# 416 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 417 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_StageBouncerHasPass:
# 418 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Stage pass confirmed.\p"
# 419 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Go on through, but mind the heat\n"
# 420 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "from the stage effects.$"
# 421 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 422 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GymGuideAdvice:
# 423 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hey! How's it going,\n"
# 424 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "CHAMPION-bound {PLAYER}?\p"
# 425 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "LAVARIDGE's LEADER is AMATERASU,\n"
# 426 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "the blazing idol of Hoenn!\p"
# 427 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "She battles with fierce FIRE\n"
# 428 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "POKéMON, many like loyal hounds.\p"
# 429 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Her passion burns hotter than\n"
# 430 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "the volcano itself!\p"
# 431 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Water will cool the flames,\n"
# 432 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "but don't underestimate her rhythm!$"
# 433 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 434 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GymGuidePostVictory:
# 435 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Yow! That was a scorching-hot battle!$"
# 436 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 437 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ColeIntro:
# 438 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Owowowowow!\n"
# 439 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It's so hot in here!\p"
# 440 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I only came to get an autograph\n"
# 441 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "from AMATERASU…\p"
# 442 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But I got burned instead!$"
# 443 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 444 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ColeDefeat:
# 445 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Whoa… you're pretty tough…\p"
# 446 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "If you get close to AMATERASU,\n"
# 447 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "can you ask for her autograph\n"
# 448 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "for me?$"
# 449 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 450 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ColePostBattle:
# 451 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU is a rising idol star.\p"
# 452 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Her voice warms every heart.\p"
# 453 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But in battle, her flames\n"
# 454 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "burn fierce and wild.$"
# 455 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 456 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_AxlePostBattle:
# 457 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love AMATERASU so much that\n"
# 458 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I bought an extra stage pass.\p"
# 459 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Since you beat me, you must really\n"
# 460 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "love her too!\p"
# 461 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Here, take my spare.\n"
# 462 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Make sure to get her autograph!$"
# 463 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 464 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_AxleDefeat:
# 465 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Woah! Ouch! I singed my hat!$"
# 466 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 467 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_AxleIntro:
# 468 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Okay… maybe I'm a little\n"
# 469 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "bit of an AMATERASU simp…\p"
# 470 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But I've got my own fire\n"
# 471 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "burning inside!\p"
# 472 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Get too close to us,\n"
# 473 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "and that strange cape of yours\l"
# 474 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "might catch flame!$"
# 475 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 476 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_KeeganIntro:
# 477 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You must be getting tired by now.\n"
# 478 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You'd like to rest in the hot sand,\l"
# 479 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "wouldn't you?\p"
# 480 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But you should know that maintaining\n"
# 481 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "your willpower is an important ability\l"
# 482 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "for all TRAINERS.$"
# 483 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 484 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_KeeganDefeat:
# 485 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Play with fire, and be burned…$"
# 486 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 487 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_KeeganPostBattle:
# 488 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Your skill is real…\n"
# 489 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But our LEADER AMATERASU is strong.\p"
# 490 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "If you don't watch yourself, you'll be\n"
# 491 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "burned seriously.$"
# 492 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 493 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GeraldIntro:
# 494 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hey! Are you trying to cut in?!\n"
# 495 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "We all want to see the show, pal.\p"
# 496 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Get to the back of the line!$"
# 497 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 498 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GeraldDefeat:
# 499 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Well, fine.. I guess you can cut me.\p"
# 500 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Jerk$"
# 501 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 502 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GeraldPostBattle:
# 503 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I've been waiting in this line\n"
# 504 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "for over an hour.\p"
# 505 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But sure, just go on through.\n"
# 506 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It's not like you'll beat Amaterasu.$"
# 507 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 508 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_DanielleIntro:
# 509 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Um… hi, weirdo…\p"
# 510 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Did I take too much, or are you\n"
# 511 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "really dressed like that?$"
# 512 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 513 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_DanielleDefeat:
# 514 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I think I did take too much.$"
# 515 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 516 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_DaniellePostBattle:
# 517 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU shines on stage\n"
# 518 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "with flames and fireworks.\p"
# 519 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But shady people under the stage\n"
# 520 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "sell some really strange stuff.$"
# 521 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 522 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JaceIntro:
# 523 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Have you ever seen her show?\n"
# 524 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Flames dancing in the dark!\p"
# 525 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "That night changed my life.\n"
# 526 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let's burn bright!$"
# 527 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 528 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JaceDefeat:
# 529 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The fireworks faded…\n"
# 530 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "and so did my spark…$"
# 531 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 532 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JacePostBattle:
# 533 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU's stage is pure fire!\p"
# 534 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The night I saw her perform,\n"
# 535 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I fell in love with flames!\p"
# 536 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "If your spirit burns like that,\n"
# 537 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "you might rival her.$"
# 538 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 539 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JeffIntro:
# 540 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You see those flames?\n"
# 541 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "They burn with loyalty!\p"
# 542 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Just like AMATERASU's\n"
# 543 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "faithful POKéMON!$"
# 544 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 545 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JeffDefeat:
# 546 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Heh… So that's your strength.\n"
# 547 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "No wonder you made it this far.$"
# 548 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 549 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JeffPostBattle:
# 550 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU loves cute and\n"
# 551 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "loyal FIRE POKéMON.\p"
# 552 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But don't mistake that\n"
# 553 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "for weakness.\p"
# 554 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "She's a natural talent.\n"
# 555 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Born to command flames.$"
# 556 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 557 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_EliIntro:
# 558 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Did you see the comet that day?\n"
# 559 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It streaked across the sky!\p"
# 560 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It reminded me of AMATERASU!$"
# 561 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 562 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_EliDefeat:
# 563 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Just like that comet…\n"
# 564 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "you burned past me.$"
# 565 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 566 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_EliPostBattle:
# 567 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "When I saw that comet blaze,\n"
# 568 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I thought of AMATERASU.\p"
# 569 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Her shows light up the night\n"
# 570 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "just like that burning star.$"
# 571 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 572 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryIntro:
# 573 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "La la la…\n"
# 574 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Ah… The stage is set.\p"
# 575 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Welcome, darling TRAINER!\p"
# 576 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You should feel honored.\n"
# 577 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Tonight's performance is\l"
# 578 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "live… and exclusive!\p"
# 579 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I am AMATERASU! Bet you know me!\p"
# 580 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The idol whose flames light\n"
# 581 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "both the stage and the battlefield!\p"
# 582 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I adore music…\n"
# 583 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "And I adore loyal FIRE POKéMON,\l"
# 584 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "especially my beloved canines!\p"
# 585 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Their howls, their pride,\n"
# 586 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "their blazing devotion…\p"
# 587 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "They burn with me in perfect harmony!\p"
# 588 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "So listen closely.\p"
# 589 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Can you hear it?\p"
# 590 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The rhythm of drums…\n"
# 591 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The roar of the flames…\p"
# 592 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let us begin our duet!\p"
# 593 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Try not to get burned\n"
# 594 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "by my blazing passion!$"
# 595 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 596 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryDefeat:
# 597 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Ahh… What a performance!\n"
# 598 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "My heart is racing!\p"
# 599 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You didn't just battle me,\n"
# 600 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "you matched my rhythm perfectly!\p"
# 601 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Battles like this are why I\n"
# 602 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "love the stage so much.\p"
# 603 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "When flames clash and spirits\n"
# 604 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "ignite… that's true passion!\p"
# 605 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You pushed me to burn brighter,\n"
# 606 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "and I respect that.\p"
# 607 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Take this BADGE.\n"
# 608 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You earned it fair and square.$"
# 609 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 610 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ReceivedHeatBadge:
# 611 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "{PLAYER} received the HEAT BADGE\n"
# 612 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "from AMATERASU.$"
# 613 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 614 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ExplainHeatBadgeTakeThis:
# 615 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "If you have a HEAT BADGE, all POKéMON\n"
# 616 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "up to Level 50, even those you get in\l"
# 617 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "trades from other people, will obey\l"
# 618 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "you completely.\p"
# 619 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "And, it lets POKéMON use HEADBUTT\n"
# 620 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "and STRENGTH outside of battle.\p"
# 621 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "This is a token of my appreciation.\n"
# 622 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Don't be shy about taking it!$"
# 623 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 624 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ExplainOverheat:
# 625 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "That TM50 contains OVERHEAT.\p"
# 626 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "That move inflicts serious damage on\n"
# 627 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "the opponent.\p"
# 628 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But it also sharply cuts the SP. ATK\n"
# 629 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "of the POKéMON using it. It might not\l"
# 630 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "be suitable for longer battles.$"
# 631 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 632 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_RegisteredFlannery:
# 633 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Registered GYM LEADER AMATERASU\n"
# 634 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "in the POKéNAV.$"
# 635 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 636 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryPostBattle:
# 637 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "WOW… That battle was CRAZY!\n"
# 638 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "My heart is still pounding!\p"
# 639 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The flames, the pressure,\n"
# 640 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "the emotion! It was perfect!\p"
# 641 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I'm seriously impressed.\n"
# 642 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "That was incredible!\p"
# 643 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I need to write a song about\n"
# 644 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "this moment right now!\p"
# 645 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hey! Do you have paper?\n"
# 646 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "A pen? Inspiration can't wait!$"
# 647 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 648 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GymStatue:
# 649 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "LAVARIDGE TOWN POKéMON GYM$"
# 650 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 651 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GymStatueCertified:
# 652 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "LAVARIDGE TOWN POKéMON GYM\p"
# 653 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU'S CERTIFIED TRAINERS:\n"
# 654 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "{PLAYER}$"
# 655 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 656 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryPreRematch:
# 657 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU: Losing a battle isn't going\n"
# 658 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "to deflate me.\p"
# 659 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love POKéMON.\n"
# 660 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love to battle.\l"
# 661 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "And… I love this GYM!\p"
# 662 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let's exchange superhot moves\n"
# 663 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "in another battle!$"
# 664 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 665 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryRematchDefeat:
# 666 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Whew!\n"
# 667 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "On the verge of eruption!$"
# 668 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 669 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryPostRematch:
# 670 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "FLANNERY: I lost the match,\n"
# 671 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "but I'm completely satisfied.\p"
# 672 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It's not often I get to enjoy a battle\n"
# 673 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "this heated.\p"
# 674 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let's have another one like this\n"
# 675 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "again sometime!$"
# 676 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 677 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryRematchNeedTwoMons:
# 678 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "FLANNERY: Losing a battle isn't going\n"
# 679 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "to deflate me.\p"
# 680 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love POKéMON.\n"
# 681 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love to battle.\l"
# 682 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "And… I love this GYM!\p"
# 683 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let's exchange superhot moves\n"
# 684 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "in another battle!\p"
# 685 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Oh, wait. Do you only have one POKéMON\n"
# 686 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "that can battle?\p"
# 687 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I hate to say this, but when you come\n"
# 688 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "see me, bring at least two POKéMON.$"
# 689 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 690 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_AxleHasGivenPass:
# 691 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hey, I'm trying to watch the show\n"
# 692 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "now.\p"
# 693 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You've got my spare pass, so go\n"
# 694 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "bug someone else.$"
# 695 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 696 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FrontStaffCongrats:
# 697 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Congratulations on your win!\p"
# 698 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "That was one seriously hot\n"
# 699 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "performance.$"
# 700 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 701 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_StageStaffCongrats:
# 702 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Congratulations, challenger.\p"
# 703 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You handled the stage like a\n"
# 704 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "real headliner.$"
