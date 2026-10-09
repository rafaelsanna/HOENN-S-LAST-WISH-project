# 1 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 2 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_MapScripts::
# 3 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, LavaridgeTown_Gym_1F_OnTransition
# 4 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, LavaridgeTown_Gym_1F_OnResume
# 5 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.byte 0
# 6 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 7 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_OnTransition:
# 8 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call LavaridgeTown_Gym_1F_EventScript_SetTrainerTempVars
# 9 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 10 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 11 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_OnResume:
# 12 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	special StartLavaridgeGymStagePlaylist
# 13 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 14 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 15 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
@ Unclear where/if these temp vars are getting checked
# 16 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_SetTrainerTempVars::
# 17 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_B, 0
# 18 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_C, 0
# 19 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_D, 0
# 20 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_E, 0
# 21 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_F, 0
# 22 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_COLE, LavaridgeTown_Gym_1F_EventScript_SetGeraldTempVar
# 23 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_B, 1
# 24 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_SetGeraldTempVar::
# 25 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_GERALD, LavaridgeTown_Gym_1F_EventScript_SetAxleTempVar
# 26 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_C, 1
# 27 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_SetAxleTempVar::
# 28 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_AXLE, LavaridgeTown_Gym_1F_EventScript_SetDanielleTempVar
# 29 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_D, 1
# 30 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_SetDanielleTempVar::
# 31 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_DANIELLE, LavaridgeTown_Gym_1F_EventScript_EndSetTrainerTempVars
# 32 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_E, 1
# 33 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_EndSetTrainerTempVars::
# 34 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	return
# 35 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 36 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_CheckBuryTrainers::
# 37 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_COLE, LavaridgeTown_Gym_1F_EventScript_CheckBuryGerald
# 38 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setobjectmovementtype LOCALID_COLE, MOVEMENT_TYPE_BURIED
# 39 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_CheckBuryGerald::
# 40 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_GERALD, LavaridgeTown_Gym_1F_EventScript_CheckBuryAxle
# 41 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setobjectmovementtype LOCALID_GERALD, MOVEMENT_TYPE_BURIED
# 42 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_CheckBuryAxle::
# 43 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_AXLE, LavaridgeTown_Gym_1F_EventScript_CheckBuryDanielle
# 44 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setobjectmovementtype LOCALID_AXLE, MOVEMENT_TYPE_BURIED
# 45 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_CheckBuryDanielle::
# 46 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_DANIELLE, LavaridgeTown_Gym_1F_EventScript_EndCheckBuryTrainers
# 47 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setobjectmovementtype LOCALID_DANIELLE, MOVEMENT_TYPE_BURIED
# 48 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_EndCheckBuryTrainers::
# 49 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	return
# 50 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 51 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
// Lavaridge Town Gym - Flannery
# 52 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Flannery::
# 53 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    lock
# 54 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    faceplayer
# 55 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_FlanneryAfterBattle
# 56 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    getdifficulty VAR_RESULT
# 57 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    goto_if_eq VAR_RESULT, 1, LavaridgeTown_Gym_1F_EventScript_FlanneryHard
# 58 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 59 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    // Casual Mode
# 60 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    trainerbattle_single TRAINER_FLANNERY_CASUAL, LavaridgeTown_Gym_1F_Text_FlanneryIntro, LavaridgeTown_Gym_1F_Text_FlanneryDefeat, LavaridgeTown_Gym_1F_EventScript_FlanneryDefeated, NO_MUSIC
# 61 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    goto LavaridgeTown_Gym_1F_EventScript_FlanneryAfterBattle
# 62 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 63 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FlanneryHard::
# 64 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    // Hard Mode
# 65 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    trainerbattle_single TRAINER_FLANNERY_1, LavaridgeTown_Gym_1F_Text_FlanneryIntro, LavaridgeTown_Gym_1F_Text_FlanneryDefeat, LavaridgeTown_Gym_1F_EventScript_FlanneryDefeated, NO_MUSIC
# 66 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    // Fall through to AfterBattle
# 67 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 68 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FlanneryAfterBattle::
# 69 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    goto_if_unset FLAG_RECEIVED_TM_OVERHEAT, LavaridgeTown_Gym_1F_EventScript_GiveOverheat2
# 70 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    setorcopyvar VAR_TRAINER_BATTLE_OPPONENT_A, TRAINER_FLANNERY_1
# 71 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    specialvar VAR_RESULT, ShouldTryRematchBattle
# 72 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    goto_if_eq VAR_RESULT, TRUE, LavaridgeTown_Gym_1F_EventScript_FlanneryRematch
# 73 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    msgbox LavaridgeTown_Gym_1F_Text_FlanneryPostBattle, MSGBOX_DEFAULT
# 74 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    release
# 75 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    end
# 76 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 77 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FlanneryDefeated::
# 78 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	message LavaridgeTown_Gym_1F_Text_ReceivedHeatBadge
# 79 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmessage
# 80 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call Common_EventScript_PlayGymBadgeFanfare
# 81 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_ExplainHeatBadgeTakeThis, MSGBOX_DEFAULT
# 82 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_WHITEOUT_TO_LAVARIDGE
# 83 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_DEFEATED_LAVARIDGE_GYM
# 84 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_BADGE04_GET
# 85 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	addvar VAR_PETALBURG_GYM_STATE, 1
# 86 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 6, Common_EventScript_ReadyPetalburgGymForBattle
# 87 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_0x8008, 4
# 88 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call Common_EventScript_SetGymTrainers
# 89 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_HIDE_VERDANTURF_TOWN_WANDAS_HOUSE_WALLY
# 90 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_LAVARIDGE_TOWN_STATE, 1
# 91 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call LavaridgeTown_Gym_1F_EventScript_GiveOverheat
# 92 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 93 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	delay 30
# 94 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitfanfare
# 95 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 96 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	delay 30
# 97 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 98 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 99 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 100 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GiveOverheat2::
# 101 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	giveitem ITEM_TM_FIERY_DANCE
# 102 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 103 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_ExplainOverheat, MSGBOX_DEFAULT
# 104 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_RECEIVED_TM_OVERHEAT
# 105 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 106 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 107 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 108 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GiveOverheat::
# 109 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	giveitem ITEM_TM_FIERY_DANCE
# 110 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 111 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_ExplainOverheat, MSGBOX_DEFAULT
# 112 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_RECEIVED_TM_OVERHEAT
# 113 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	return
# 114 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 115 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FlanneryRematch::
# 116 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle_rematch_double TRAINER_FLANNERY_1, LavaridgeTown_Gym_1F_Text_FlanneryPreRematch, LavaridgeTown_Gym_1F_Text_FlanneryRematchDefeat, LavaridgeTown_Gym_1F_Text_FlanneryRematchNeedTwoMons
# 117 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FlanneryPostRematch, MSGBOX_AUTOCLOSE
# 118 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 119 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 120 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Cole::
# 121 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_COLE, TRAINER_COLE, LavaridgeTown_Gym_1F_Text_ColeIntro, LavaridgeTown_Gym_1F_Text_ColeDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 122 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_ColePostBattle, MSGBOX_AUTOCLOSE
# 123 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 124 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 125 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_EventScript_CheckTrainerScript::
# 126 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call LavaridgeTown_Gym_1F_EventScript_SetTrainerTempVars
# 127 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 128 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	special ShouldTryGetTrainerScript
# 129 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, 1, EventScript_GotoTrainerScript
# 130 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 131 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 132 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Axle::
# 133 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_STAGE_PASS, LavaridgeTown_Gym_1F_EventScript_AxleHasGivenPass
# 134 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_AXLE, TRAINER_AXLE, LavaridgeTown_Gym_1F_Text_AxleIntro, LavaridgeTown_Gym_1F_Text_AxleDefeat, LavaridgeTown_Gym_1F_EventScript_AxleGiveStagePass, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 135 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 136 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 137 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_AxleGiveStagePass::
# 138 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 139 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 140 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	settrainerflag TRAINER_AXLE
# 141 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_LAVARIDGE_GYM_STAGE_PASS
# 142 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 143 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitfanfare
# 144 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call LavaridgeTown_Gym_1F_EventScript_SetTrainerTempVars
# 145 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_AxlePostBattle, MSGBOX_DEFAULT
# 146 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 147 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 148 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 149 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_AxleHasGivenPass::
# 150 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 151 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 152 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_AxleHasGivenPass, MSGBOX_DEFAULT
# 153 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 154 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 155 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 156 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_EventScript_Keegan::
# 157 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_KEEGAN, TRAINER_KEEGAN, LavaridgeTown_Gym_B1F_Text_KeeganIntro, LavaridgeTown_Gym_B1F_Text_KeeganDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 158 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_B1F_Text_KeeganPostBattle, MSGBOX_AUTOCLOSE
# 159 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 160 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 161 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Danielle::
# 162 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_DANIELLE, TRAINER_DANIELLE, LavaridgeTown_Gym_1F_Text_DanielleIntro, LavaridgeTown_Gym_1F_Text_DanielleDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 163 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_DaniellePostBattle, MSGBOX_AUTOCLOSE
# 164 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 165 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 166 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Gerald::
# 167 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_GERALD, TRAINER_GERALD, LavaridgeTown_Gym_1F_Text_GeraldIntro, LavaridgeTown_Gym_1F_Text_GeraldDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 168 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GeraldPostBattle, MSGBOX_AUTOCLOSE
# 169 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 170 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 171 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_EventScript_Jace::
# 172 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_JACE, TRAINER_JACE, LavaridgeTown_Gym_B1F_Text_JaceIntro, LavaridgeTown_Gym_B1F_Text_JaceDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 173 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_B1F_Text_JacePostBattle, MSGBOX_AUTOCLOSE
# 174 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 175 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 176 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_EventScript_Jeff::
# 177 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_JEFF, TRAINER_JEFF, LavaridgeTown_Gym_B1F_Text_JeffIntro, LavaridgeTown_Gym_B1F_Text_JeffDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 178 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_B1F_Text_JeffPostBattle, MSGBOX_AUTOCLOSE
# 179 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 180 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 181 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_EventScript_Eli::
# 182 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_ELI, TRAINER_ELI, LavaridgeTown_Gym_B1F_Text_EliIntro, LavaridgeTown_Gym_B1F_Text_EliDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 183 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_B1F_Text_EliPostBattle, MSGBOX_AUTOCLOSE
# 184 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 185 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 186 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GymGuide::
# 187 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 188 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 189 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_GymGuidePostVictory
# 190 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 191 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 192 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 193 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 194 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GymGuidePostVictory::
# 195 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 196 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 197 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 198 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 199 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_LeftGymStatue::
# 200 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 201 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_BADGE04_GET, LavaridgeTown_Gym_1F_EventScript_GymStatueCertified
# 202 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_GymStatue
# 203 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 204 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 205 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RightGymStatue::
# 206 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 207 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_BADGE04_GET, LavaridgeTown_Gym_1F_EventScript_GymStatueCertified
# 208 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_GymStatue
# 209 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 210 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 211 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GymStatueCertified::
# 212 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GymStatueCertified, MSGBOX_DEFAULT
# 213 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 214 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 215 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 216 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GymStatue::
# 217 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GymStatue, MSGBOX_DEFAULT
# 218 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 219 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 220 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 221 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 222 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer1::
# 223 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 224 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 225 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_FrontStaffCongrats
# 226 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontBouncer1, MSGBOX_DEFAULT
# 227 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 228 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 229 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 230 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2::
# 231 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 232 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 233 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_FrontStaffCongrats
# 234 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_BOUGHT_TICKET, LavaridgeTown_Gym_1F_EventScript_FrontBouncer2HasTicket
# 235 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontBouncer2NeedTicket, MSGBOX_DEFAULT
# 236 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 237 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 238 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 239 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2HasTicket::
# 240 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontBouncer2HasTicket, MSGBOX_DEFAULT
# 241 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 242 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 243 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 244 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Trigger::
# 245 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_unset FLAG_LAVARIDGE_GYM_BOUGHT_TICKET, LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Block
# 246 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	specialvar VAR_RESULT, GetPlayerFacingDirection
# 247 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, DIR_SOUTH, LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Exit
# 248 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, DIR_NORTH, LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Enter
# 249 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 250 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 251 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Block::
# 252 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 253 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_FRONT_BOUNCER_2, Common_Movement_FaceLeft
# 254 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 255 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontBouncer2NeedTicket, MSGBOX_DEFAULT
# 256 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 257 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 258 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 259 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_FRONT_BOUNCER_2, Common_Movement_FaceDown
# 260 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 261 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 262 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 263 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 264 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Enter::
# 265 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 266 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_FRONT_BOUNCER_2, Common_Movement_FaceLeft
# 267 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 268 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontBouncer2HasTicket, MSGBOX_DEFAULT
# 269 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_FRONT_BOUNCER_2, Common_Movement_FaceDown
# 270 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 271 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 272 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 273 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 274 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Exit::
# 275 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 276 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 277 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Tickets1::
# 278 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 279 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 280 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_FrontStaffCongrats
# 281 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets1, MSGBOX_DEFAULT
# 282 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 283 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 284 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 285 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Tickets2::
# 286 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 287 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 288 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_FrontStaffCongrats
# 289 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_BOUGHT_TICKET, LavaridgeTown_Gym_1F_EventScript_Tickets2AlreadyBought
# 290 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	showmoneybox 0, 0
# 291 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets2BuyTicket, MSGBOX_YESNO
# 292 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LavaridgeTown_Gym_1F_EventScript_Tickets2Decline
# 293 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	checkmoney 100
# 294 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, LavaridgeTown_Gym_1F_EventScript_Tickets2NoMoney
# 295 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets2SoldTicket, MSGBOX_DEFAULT
# 296 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	removemoney 100
# 297 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	updatemoneybox
# 298 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_LAVARIDGE_GYM_BOUGHT_TICKET
# 299 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 300 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitfanfare
# 301 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	hidemoneybox
# 302 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 303 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 304 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 305 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Tickets2AlreadyBought::
# 306 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets2AlreadyBought, MSGBOX_DEFAULT
# 307 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 308 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 309 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 310 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Tickets2Decline::
# 311 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets2Decline, MSGBOX_DEFAULT
# 312 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	hidemoneybox
# 313 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 314 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 315 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 316 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Tickets2NoMoney::
# 317 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets2NoMoney, MSGBOX_DEFAULT
# 318 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	hidemoneybox
# 319 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 320 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 321 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 322 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_StageBouncer::
# 323 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 324 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 325 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_StageStaffCongrats
# 326 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_STAGE_PASS, LavaridgeTown_Gym_1F_EventScript_StageBouncerHasPass
# 327 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_StageBouncerNeedPass, MSGBOX_DEFAULT
# 328 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 329 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 330 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 331 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_StageBouncerHasPass::
# 332 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_StageBouncerHasPass, MSGBOX_DEFAULT
# 333 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 334 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 335 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 336 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontStaffCongrats::
# 337 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontStaffCongrats, MSGBOX_DEFAULT
# 338 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 339 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 340 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 341 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_StageStaffCongrats::
# 342 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_StageStaffCongrats, MSGBOX_DEFAULT
# 343 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 344 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 345 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 346 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_StageBouncerLeftTrigger::
# 347 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_STAGE_PASS, LavaridgeTown_Gym_1F_EventScript_BouncerTriggerPass
# 348 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 349 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_STAGE_BOUNCER_LEFT, Common_Movement_FaceRight
# 350 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 351 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_StageBouncerNeedPass, MSGBOX_DEFAULT
# 352 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 353 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 354 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 355 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_STAGE_BOUNCER_LEFT, Common_Movement_FaceRight
# 356 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 357 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 358 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 359 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 360 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_StageBouncerRightTrigger::
# 361 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_STAGE_PASS, LavaridgeTown_Gym_1F_EventScript_BouncerTriggerPass
# 362 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 363 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_STAGE_BOUNCER_RIGHT, Common_Movement_FaceLeft
# 364 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 365 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_StageBouncerNeedPass, MSGBOX_DEFAULT
# 366 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 367 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 368 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 369 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_STAGE_BOUNCER_RIGHT, Common_Movement_FaceLeft
# 370 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 371 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 372 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 373 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 374 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_BouncerTriggerPass::
# 375 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 376 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 377 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 378 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
@ ---------------------------------------------------------------------------
# 379 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
@ RENTON cameo - one-time POP joke at the Gym entrance.
# 380 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
@ Renton starts off-screen at (18,28).
# 381 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
@ FLAG_RENTON_LEFT (0x4B4) makes the event one-time.
# 382 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
@ ---------------------------------------------------------------------------
# 383 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 384 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonIdle::
# 385 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 386 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 387 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_RentonIdle, MSGBOX_DEFAULT
# 388 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 389 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 390 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 391 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Renton_Likes_Pop::
# 392 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_RENTON_LEFT, LavaridgeTown_Gym_1F_EventScript_RentonAlreadyLeft
# 393 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 394 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 395 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	@ Choose the approach according to which entrance trigger the player hit.
# 396 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	getplayerxy VAR_0x8004, VAR_0x8005
# 397 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_0x8004, 8, LavaridgeTown_Gym_1F_EventScript_RentonApproachX8
# 398 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_0x8004, 9, LavaridgeTown_Gym_1F_EventScript_RentonApproachX9
# 399 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_0x8004, 10, LavaridgeTown_Gym_1F_EventScript_RentonApproachX10
# 400 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_RentonApproachX11
# 401 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 402 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonApproachX8::
# 403 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_F, 1
# 404 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonApproachX8
# 405 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 406 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceRight
# 407 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 408 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_RentonStopped
# 409 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 410 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonApproachX9::
# 411 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_F, 2
# 412 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonApproachX9
# 413 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 414 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceRight
# 415 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 416 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_RentonStopped
# 417 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 418 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonApproachX10::
# 419 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_F, 3
# 420 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonApproachX10
# 421 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 422 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceRight
# 423 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 424 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_RentonStopped
# 425 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 426 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonApproachX11::
# 427 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_F, 4
# 428 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonApproachX11
# 429 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 430 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceUp
# 431 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 432 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 433 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonStopped::
# 434 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	@ The exclamation happens only after Renton is already in front of the player.
# 435 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonExclamation
# 436 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 437 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 438 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 439 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_RentonLikesPop, MSGBOX_DEFAULT
# 440 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	removefieldmugshot
# 441 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 442 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	delay 12
# 443 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 444 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_TEMP_F, 1, LavaridgeTown_Gym_1F_EventScript_RentonExitX8
# 445 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_TEMP_F, 2, LavaridgeTown_Gym_1F_EventScript_RentonExitX9
# 446 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_TEMP_F, 3, LavaridgeTown_Gym_1F_EventScript_RentonExitX10
# 447 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_RentonExitX11
# 448 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 449 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonExitX8::
# 450 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonMakeRoomX8
# 451 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 452 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	playse SE_SWITCH
# 453 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, LavaridgeTown_Gym_1F_Movement_PlayerShovedUp
# 454 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 455 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonLeaveViaLeftWarp
# 456 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 457 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_RentonGone
# 458 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 459 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonExitX9::
# 460 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	playse SE_SWITCH
# 461 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, LavaridgeTown_Gym_1F_Movement_PlayerShovedLeft
# 462 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 463 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonLeaveViaRightWarp
# 464 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 465 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_RentonGone
# 466 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 467 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonExitX10::
# 468 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	playse SE_SWITCH
# 469 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, LavaridgeTown_Gym_1F_Movement_PlayerShovedLeft
# 470 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 471 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonLeaveFromX11
# 472 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 473 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_RentonGone
# 474 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 475 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonExitX11::
# 476 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonMakeRoomX11
# 477 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 478 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	playse SE_SWITCH
# 479 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, LavaridgeTown_Gym_1F_Movement_PlayerShovedUp
# 480 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 481 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonLeaveViaRightWarp
# 482 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 483 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 484 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonGone::
# 485 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	removeobject LOCALID_RENTON
# 486 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_RENTON_LEFT
# 487 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_F, 0
# 488 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 489 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 490 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 491 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonAlreadyLeft::
# 492 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 493 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 494 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 495 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
@ Renton starts at (18,28). He walks across the clear lower lane first,
# 496 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
@ then drops down next to the player.
# 497 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 498 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonApproachX8:
# 499 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 500 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 501 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 502 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 503 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 504 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 505 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 506 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 507 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 508 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 509 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 510 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 511 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	face_left
# 512 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 513 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 514 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonApproachX9:
# 515 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 516 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 517 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 518 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 519 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 520 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 521 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 522 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 523 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 524 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 525 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	face_left
# 526 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 527 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 528 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonApproachX10:
# 529 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 530 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 531 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 532 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 533 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 534 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 535 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 536 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 537 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 538 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	face_left
# 539 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 540 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 541 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonApproachX11:
# 542 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 543 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 544 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 545 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 546 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 547 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 548 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 549 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 550 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 551 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	face_down
# 552 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 553 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 554 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonExclamation:
# 555 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	emote_exclamation_mark
# 556 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	delay_16
# 557 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 558 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 559 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonMakeRoomX8:
# 560 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_up
# 561 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	face_left
# 562 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 563 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 564 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonMakeRoomX11:
# 565 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 566 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	face_down
# 567 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 568 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 569 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_PlayerShovedLeft:
# 570 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	jump_left
# 571 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	face_right
# 572 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 573 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 574 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_PlayerShovedUp:
# 575 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	jump_up
# 576 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	face_down
# 577 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 578 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 579 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonLeaveViaLeftWarp:
# 580 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 581 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 582 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 583 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonLeaveViaRightWarp:
# 584 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 585 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 586 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 587 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonLeaveFromX11:
# 588 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 589 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 590 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 591 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 592 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 593 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_RentonIdle:
# 594 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Uh… I'm just passing through.\p"
# 595 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Don't make this weird, kid.$"
# 596 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 597 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_RentonLikesPop:
# 598 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Yo! There you are! HAHAHA!\p"
# 599 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I gotta admit, I liked our fight!\n"
# 600 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "…Wait a second.\n"
# 601 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "YOU like POP?!\p"
# 602 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "HAHAHA!\p"
# 603 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Me? A POP fan? Pffft! No way!\n"
# 604 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU's songs are all glitter!\p"
# 605 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "At my GYM we listen to HEAVY\n"
# 606 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "music! Real songs only!\p"
# 607 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Okay, maybe ONE chorus was\n"
# 608 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "kinda catchy. Just one!\p"
# 609 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "HEY! Forget you heard that!\p"
# 610 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Why am I here, then?\n"
# 611 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "My BRASS KNUCKLES, obviously!\p"
# 612 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "They got stuck in some AMATERASU\n"
# 613 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "fan after I punched the guy.\p"
# 614 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I just came back to get them!\n"
# 615 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Perfectly normal explanation!\p"
# 616 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "…What? Why are you grinning?\n"
# 617 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Red? ME?! I'm not red!\p"
# 618 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "This place is packed, that's all!\n"
# 619 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It's hot! There's no air in here!\p"
# 620 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I'm definitely NOT embarrassed!\n"
# 621 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "HAHAHA… ha…\p"
# 622 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Now scoot over before somebody\n"
# 623 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "from my GYM sees me here!$"
# 624 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 625 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 626 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FrontBouncer1:
# 627 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Line starts over there, friend.\p"
# 628 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Get yourself a ticket first, then\n"
# 629 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "we can let you into the show.$"
# 630 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 631 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FrontBouncer2NeedTicket:
# 632 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hold up. I need to see a ticket\n"
# 633 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "before you head inside.\p"
# 634 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The ticket booth is right over there.$"
# 635 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 636 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FrontBouncer2HasTicket:
# 637 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Ticket checks out.\p"
# 638 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Enjoy the show!$"
# 639 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 640 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets1:
# 641 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Welcome to tonight's show!\n"
# 642 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "We hope you have a great time!$"
# 643 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 644 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets2BuyTicket:
# 645 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "One ticket to see AMATERASU is\n"
# 646 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "¥100.\p"
# 647 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Would you like one?$"
# 648 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 649 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets2SoldTicket:
# 650 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Thank you!\p"
# 651 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You're all set. Show your ticket\n"
# 652 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "to the bouncer at the entrance.$"
# 653 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 654 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets2AlreadyBought:
# 655 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Enjoy the show!$"
# 656 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 657 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets2Decline:
# 658 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "No problem.\p"
# 659 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Come back if you decide you want\n"
# 660 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "to see the show.$"
# 661 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 662 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets2NoMoney:
# 663 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I'm sorry, but you don't have\n"
# 664 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "enough money for a ticket.$"
# 665 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 666 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_StageBouncerNeedPass:
# 667 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Stage access is for stage-pass\n"
# 668 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "holders only.\p"
# 669 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "No pass, no getting near\n"
# 670 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU during the show.$"
# 671 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 672 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_StageBouncerHasPass:
# 673 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Stage pass confirmed.\p"
# 674 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Go on through, but mind the heat\n"
# 675 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "from the stage effects.$"
# 676 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 677 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GymGuideAdvice:
# 678 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hey! How's it going,\n"
# 679 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "CHAMPION-bound {PLAYER}?\p"
# 680 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "LAVARIDGE's LEADER is AMATERASU,\n"
# 681 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "the blazing idol of Hoenn!\p"
# 682 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "She battles with fierce FIRE\n"
# 683 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "POKéMON, many like loyal hounds.\p"
# 684 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Her passion burns hotter than\n"
# 685 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "the volcano itself!\p"
# 686 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Water will cool the flames,\n"
# 687 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "but don't underestimate her rhythm!$"
# 688 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 689 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GymGuidePostVictory:
# 690 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Yow! That was a scorching-hot battle!$"
# 691 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 692 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ColeIntro:
# 693 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Owowowowow!\n"
# 694 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It's so hot in here!\p"
# 695 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I only came to get an autograph\n"
# 696 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "from AMATERASU…\p"
# 697 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But I got burned instead!$"
# 698 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 699 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ColeDefeat:
# 700 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Whoa… you're pretty tough…\p"
# 701 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "If you get close to AMATERASU,\n"
# 702 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "can you ask for her autograph\n"
# 703 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "for me?$"
# 704 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 705 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ColePostBattle:
# 706 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU is a rising idol star.\p"
# 707 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Her voice warms every heart.\p"
# 708 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But in battle, her flames\n"
# 709 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "burn fierce and wild.$"
# 710 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 711 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_AxlePostBattle:
# 712 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love AMATERASU so much that\n"
# 713 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I bought an extra stage pass.\p"
# 714 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Since you beat me, you must really\n"
# 715 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "love her too!\p"
# 716 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Here, take my spare.\n"
# 717 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Make sure to get her autograph!$"
# 718 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 719 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_AxleDefeat:
# 720 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Woah! Ouch! I singed my hat!$"
# 721 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 722 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_AxleIntro:
# 723 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Okay… maybe I'm a little\n"
# 724 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "bit of an AMATERASU simp…\p"
# 725 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But I've got my own fire\n"
# 726 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "burning inside!\p"
# 727 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Get too close to us,\n"
# 728 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "and that strange cape of yours\l"
# 729 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "might catch flame!$"
# 730 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 731 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_KeeganIntro:
# 732 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You must be getting tired by now.\n"
# 733 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You'd like to rest in the hot sand,\l"
# 734 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "wouldn't you?\p"
# 735 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But you should know that maintaining\n"
# 736 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "your willpower is an important ability\l"
# 737 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "for all TRAINERS.$"
# 738 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 739 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_KeeganDefeat:
# 740 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Play with fire, and be burned…$"
# 741 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 742 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_KeeganPostBattle:
# 743 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Your skill is real…\n"
# 744 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But our LEADER AMATERASU is strong.\p"
# 745 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "If you don't watch yourself, you'll be\n"
# 746 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "burned seriously.$"
# 747 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 748 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GeraldIntro:
# 749 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hey! Are you trying to cut in?!\n"
# 750 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "We all want to see the show, pal.\p"
# 751 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Get to the back of the line!$"
# 752 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 753 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GeraldDefeat:
# 754 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Well, fine.. I guess you can cut me.\p"
# 755 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Jerk$"
# 756 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 757 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GeraldPostBattle:
# 758 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I've been waiting in this line\n"
# 759 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "for over an hour.\p"
# 760 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But sure, just go on through.\n"
# 761 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It's not like you'll beat Amaterasu.$"
# 762 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 763 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_DanielleIntro:
# 764 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Um… hi, weirdo…\p"
# 765 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Did I take too much, or are you\n"
# 766 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "really dressed like that?$"
# 767 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 768 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_DanielleDefeat:
# 769 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I think I did take too much.$"
# 770 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 771 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_DaniellePostBattle:
# 772 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU shines on stage\n"
# 773 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "with flames and fireworks.\p"
# 774 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But shady people under the stage\n"
# 775 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "sell some really strange stuff.$"
# 776 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 777 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JaceIntro:
# 778 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Have you ever seen her show?\n"
# 779 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Flames dancing in the dark!\p"
# 780 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "That night changed my life.\n"
# 781 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let's burn bright!$"
# 782 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 783 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JaceDefeat:
# 784 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The fireworks faded…\n"
# 785 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "and so did my spark…$"
# 786 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 787 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JacePostBattle:
# 788 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU's stage is pure fire!\p"
# 789 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The night I saw her perform,\n"
# 790 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I fell in love with flames!\p"
# 791 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "If your spirit burns like that,\n"
# 792 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "you might rival her.$"
# 793 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 794 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JeffIntro:
# 795 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You see those flames?\n"
# 796 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "They burn with loyalty!\p"
# 797 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Just like AMATERASU's\n"
# 798 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "faithful POKéMON!$"
# 799 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 800 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JeffDefeat:
# 801 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Heh… So that's your strength.\n"
# 802 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "No wonder you made it this far.$"
# 803 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 804 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JeffPostBattle:
# 805 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU loves cute and\n"
# 806 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "loyal FIRE POKéMON.\p"
# 807 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But don't mistake that\n"
# 808 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "for weakness.\p"
# 809 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "She's a natural talent.\n"
# 810 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Born to command flames.$"
# 811 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 812 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_EliIntro:
# 813 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Did you see the comet that day?\n"
# 814 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It streaked across the sky!\p"
# 815 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It reminded me of AMATERASU!$"
# 816 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 817 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_EliDefeat:
# 818 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Just like that comet…\n"
# 819 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "you burned past me.$"
# 820 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 821 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_EliPostBattle:
# 822 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "When I saw that comet blaze,\n"
# 823 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I thought of AMATERASU.\p"
# 824 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Her shows light up the night\n"
# 825 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "just like that burning star.$"
# 826 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 827 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryIntro:
# 828 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "La la la…\n"
# 829 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Ah… The stage is set.\p"
# 830 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Welcome, darling TRAINER!\p"
# 831 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You should feel honored.\n"
# 832 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Tonight's performance is\l"
# 833 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "live… and exclusive!\p"
# 834 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I am AMATERASU! Bet you know me!\p"
# 835 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The idol whose flames light\n"
# 836 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "both the stage and the battlefield!\p"
# 837 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I adore music…\n"
# 838 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "And I adore loyal FIRE POKéMON,\l"
# 839 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "especially my beloved canines!\p"
# 840 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Their howls, their pride,\n"
# 841 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "their blazing devotion…\p"
# 842 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "They burn with me in perfect harmony!\p"
# 843 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "So listen closely.\p"
# 844 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Can you hear it?\p"
# 845 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The rhythm of drums…\n"
# 846 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The roar of the flames…\p"
# 847 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let us begin our duet!\p"
# 848 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Try not to get burned\n"
# 849 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "by my blazing passion!$"
# 850 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 851 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryDefeat:
# 852 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Ahh… What a performance!\n"
# 853 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "My heart is racing!\p"
# 854 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You didn't just battle me,\n"
# 855 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "you matched my rhythm perfectly!\p"
# 856 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Battles like this are why I\n"
# 857 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "love the stage so much.\p"
# 858 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "When flames clash and spirits\n"
# 859 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "ignite… that's true passion!\p"
# 860 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You pushed me to burn brighter,\n"
# 861 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "and I respect that.\p"
# 862 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Take this BADGE.\n"
# 863 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You earned it fair and square.$"
# 864 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 865 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ReceivedHeatBadge:
# 866 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "{PLAYER} received the HEAT BADGE\n"
# 867 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "from AMATERASU.$"
# 868 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 869 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ExplainHeatBadgeTakeThis:
# 870 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "If you have a HEAT BADGE, all POKéMON\n"
# 871 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "up to Level 50, even those you get in\l"
# 872 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "trades from other people, will obey\l"
# 873 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "you completely.\p"
# 874 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "And, it lets POKéMON use HEADBUTT\n"
# 875 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "and STRENGTH outside of battle.\p"
# 876 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "This is a token of my appreciation.\n"
# 877 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Don't be shy about taking it!$"
# 878 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 879 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ExplainOverheat:
# 880 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "That TM50 contains FIERY DANCE.\p"
# 881 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It attacks the foe with flames and\n"
# 882 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "may also raise the user's SP. ATK.$"
# 883 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 884 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_RegisteredFlannery:
# 885 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Registered GYM LEADER AMATERASU\n"
# 886 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "in the POKéNAV.$"
# 887 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 888 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryPostBattle:
# 889 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "WOW… That battle was CRAZY!\n"
# 890 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "My heart is still pounding!\p"
# 891 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The flames, the pressure,\n"
# 892 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "the emotion! It was perfect!\p"
# 893 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I'm seriously impressed.\n"
# 894 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "That was incredible!\p"
# 895 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I need to write a song about\n"
# 896 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "this moment right now!\p"
# 897 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hey! Do you have paper?\n"
# 898 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "A pen? Inspiration can't wait!$"
# 899 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 900 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GymStatue:
# 901 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "LAVARIDGE TOWN POKéMON GYM$"
# 902 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 903 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GymStatueCertified:
# 904 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "LAVARIDGE TOWN POKéMON GYM\p"
# 905 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU'S CERTIFIED TRAINERS:\n"
# 906 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "{PLAYER}$"
# 907 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 908 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryPreRematch:
# 909 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU: Losing a battle isn't going\n"
# 910 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "to deflate me.\p"
# 911 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love POKéMON.\n"
# 912 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love to battle.\l"
# 913 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "And… I love this GYM!\p"
# 914 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let's exchange superhot moves\n"
# 915 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "in another battle!$"
# 916 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 917 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryRematchDefeat:
# 918 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Whew!\n"
# 919 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "On the verge of eruption!$"
# 920 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 921 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryPostRematch:
# 922 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU: I lost the match,\n"
# 923 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "but I'm completely satisfied.\p"
# 924 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It's not often I get to enjoy a battle\n"
# 925 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "this heated.\p"
# 926 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let's have another one like this\n"
# 927 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "again sometime!$"
# 928 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 929 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryRematchNeedTwoMons:
# 930 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU: Losing a battle isn't going\n"
# 931 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "to deflate me.\p"
# 932 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love POKéMON.\n"
# 933 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love to battle.\l"
# 934 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "And… I love this GYM!\p"
# 935 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let's exchange superhot moves\n"
# 936 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "in another battle!\p"
# 937 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Oh, wait. Do you only have one POKéMON\n"
# 938 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "that can battle?\p"
# 939 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I hate to say this, but when you come\n"
# 940 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "see me, bring at least two POKéMON.$"
# 941 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 942 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_AxleHasGivenPass:
# 943 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hey, I'm trying to watch the show\n"
# 944 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "now.\p"
# 945 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You've got my spare pass, so go\n"
# 946 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "bug someone else.$"
# 947 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 948 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FrontStaffCongrats:
# 949 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Congratulations on your win!\p"
# 950 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "That was one seriously hot\n"
# 951 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "performance.$"
# 952 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 953 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_StageStaffCongrats:
# 954 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Congratulations, challenger.\p"
# 955 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You handled the stage like a\n"
# 956 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "real headliner.$"
