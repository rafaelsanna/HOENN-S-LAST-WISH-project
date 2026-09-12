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
    getdifficulty VAR_RESULT
# 56 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    goto_if_eq VAR_RESULT, 1, LavaridgeTown_Gym_1F_EventScript_FlanneryHard
# 57 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 58 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    // Casual Mode
# 59 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    trainerbattle_single TRAINER_FLANNERY_CASUAL, LavaridgeTown_Gym_1F_Text_FlanneryIntro, LavaridgeTown_Gym_1F_Text_FlanneryDefeat, LavaridgeTown_Gym_1F_EventScript_FlanneryDefeated, NO_MUSIC
# 60 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    goto LavaridgeTown_Gym_1F_EventScript_FlanneryAfterBattle
# 61 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 62 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FlanneryHard::
# 63 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    // Hard Mode
# 64 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    trainerbattle_single TRAINER_FLANNERY_1, LavaridgeTown_Gym_1F_Text_FlanneryIntro, LavaridgeTown_Gym_1F_Text_FlanneryDefeat, LavaridgeTown_Gym_1F_EventScript_FlanneryDefeated, NO_MUSIC
# 65 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    // Fall through to AfterBattle
# 66 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 67 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FlanneryAfterBattle::
# 68 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    specialvar VAR_RESULT, ShouldTryRematchBattle
# 69 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    goto_if_eq VAR_RESULT, TRUE, LavaridgeTown_Gym_1F_EventScript_FlanneryRematch
# 70 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    goto_if_unset FLAG_RECEIVED_TM_OVERHEAT, LavaridgeTown_Gym_1F_EventScript_GiveOverheat2
# 71 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    msgbox LavaridgeTown_Gym_1F_Text_FlanneryPostBattle, MSGBOX_DEFAULT
# 72 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    release
# 73 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    end
# 74 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 75 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FlanneryDefeated::
# 76 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	message LavaridgeTown_Gym_1F_Text_ReceivedHeatBadge
# 77 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmessage
# 78 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call Common_EventScript_PlayGymBadgeFanfare
# 79 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_ExplainHeatBadgeTakeThis, MSGBOX_DEFAULT
# 80 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_WHITEOUT_TO_LAVARIDGE
# 81 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_DEFEATED_LAVARIDGE_GYM
# 82 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_BADGE04_GET
# 83 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	addvar VAR_PETALBURG_GYM_STATE, 1
# 84 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 6, Common_EventScript_ReadyPetalburgGymForBattle
# 85 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_0x8008, 4
# 86 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call Common_EventScript_SetGymTrainers
# 87 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_HIDE_VERDANTURF_TOWN_WANDAS_HOUSE_WALLY
# 88 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_LAVARIDGE_TOWN_STATE, 1
# 89 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call LavaridgeTown_Gym_1F_EventScript_GiveOverheat
# 90 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 91 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	delay 30
# 92 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitfanfare
# 93 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 94 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	delay 30
# 95 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 96 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 97 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 98 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GiveOverheat2::
# 99 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	giveitem ITEM_TM_FIERY_DANCE
# 100 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 101 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_ExplainOverheat, MSGBOX_DEFAULT
# 102 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_RECEIVED_TM_OVERHEAT
# 103 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 104 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 105 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 106 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GiveOverheat::
# 107 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	giveitem ITEM_TM_FIERY_DANCE
# 108 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 109 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_ExplainOverheat, MSGBOX_DEFAULT
# 110 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_RECEIVED_TM_OVERHEAT
# 111 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	return
# 112 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 113 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FlanneryRematch::
# 114 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle_rematch_double TRAINER_FLANNERY_1, LavaridgeTown_Gym_1F_Text_FlanneryPreRematch, LavaridgeTown_Gym_1F_Text_FlanneryRematchDefeat, LavaridgeTown_Gym_1F_Text_FlanneryRematchNeedTwoMons
# 115 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FlanneryPostRematch, MSGBOX_AUTOCLOSE
# 116 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 117 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 118 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Cole::
# 119 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_COLE, TRAINER_COLE, LavaridgeTown_Gym_1F_Text_ColeIntro, LavaridgeTown_Gym_1F_Text_ColeDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 120 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_ColePostBattle, MSGBOX_AUTOCLOSE
# 121 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 122 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 123 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_EventScript_CheckTrainerScript::
# 124 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call LavaridgeTown_Gym_1F_EventScript_SetTrainerTempVars
# 125 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 126 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	special ShouldTryGetTrainerScript
# 127 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, 1, EventScript_GotoTrainerScript
# 128 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 129 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 130 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Axle::
# 131 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_STAGE_PASS, LavaridgeTown_Gym_1F_EventScript_AxleHasGivenPass
# 132 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_AXLE, TRAINER_AXLE, LavaridgeTown_Gym_1F_Text_AxleIntro, LavaridgeTown_Gym_1F_Text_AxleDefeat, LavaridgeTown_Gym_1F_EventScript_AxleGiveStagePass, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 133 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 134 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 135 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_AxleGiveStagePass::
# 136 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 137 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 138 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	settrainerflag TRAINER_AXLE
# 139 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_LAVARIDGE_GYM_STAGE_PASS
# 140 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 141 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitfanfare
# 142 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call LavaridgeTown_Gym_1F_EventScript_SetTrainerTempVars
# 143 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_AxlePostBattle, MSGBOX_DEFAULT
# 144 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 145 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 146 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 147 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_AxleHasGivenPass::
# 148 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 149 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 150 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_AxleHasGivenPass, MSGBOX_DEFAULT
# 151 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 152 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 153 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 154 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_EventScript_Keegan::
# 155 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_KEEGAN, TRAINER_KEEGAN, LavaridgeTown_Gym_B1F_Text_KeeganIntro, LavaridgeTown_Gym_B1F_Text_KeeganDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 156 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_B1F_Text_KeeganPostBattle, MSGBOX_AUTOCLOSE
# 157 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 158 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 159 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Danielle::
# 160 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_DANIELLE, TRAINER_DANIELLE, LavaridgeTown_Gym_1F_Text_DanielleIntro, LavaridgeTown_Gym_1F_Text_DanielleDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 161 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_DaniellePostBattle, MSGBOX_AUTOCLOSE
# 162 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 163 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 164 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Gerald::
# 165 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_GERALD, TRAINER_GERALD, LavaridgeTown_Gym_1F_Text_GeraldIntro, LavaridgeTown_Gym_1F_Text_GeraldDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 166 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GeraldPostBattle, MSGBOX_AUTOCLOSE
# 167 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 168 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 169 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_EventScript_Jace::
# 170 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_JACE, TRAINER_JACE, LavaridgeTown_Gym_B1F_Text_JaceIntro, LavaridgeTown_Gym_B1F_Text_JaceDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 171 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_B1F_Text_JacePostBattle, MSGBOX_AUTOCLOSE
# 172 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 173 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 174 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_EventScript_Jeff::
# 175 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_JEFF, TRAINER_JEFF, LavaridgeTown_Gym_B1F_Text_JeffIntro, LavaridgeTown_Gym_B1F_Text_JeffDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 176 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_B1F_Text_JeffPostBattle, MSGBOX_AUTOCLOSE
# 177 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 178 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 179 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_EventScript_Eli::
# 180 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_ELI, TRAINER_ELI, LavaridgeTown_Gym_B1F_Text_EliIntro, LavaridgeTown_Gym_B1F_Text_EliDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 181 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_B1F_Text_EliPostBattle, MSGBOX_AUTOCLOSE
# 182 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 183 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 184 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GymGuide::
# 185 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 186 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 187 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_GymGuidePostVictory
# 188 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 189 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 190 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 191 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 192 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GymGuidePostVictory::
# 193 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 194 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 195 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 196 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 197 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_LeftGymStatue::
# 198 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 199 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_BADGE04_GET, LavaridgeTown_Gym_1F_EventScript_GymStatueCertified
# 200 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_GymStatue
# 201 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 202 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 203 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RightGymStatue::
# 204 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 205 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_BADGE04_GET, LavaridgeTown_Gym_1F_EventScript_GymStatueCertified
# 206 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_GymStatue
# 207 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 208 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 209 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GymStatueCertified::
# 210 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GymStatueCertified, MSGBOX_DEFAULT
# 211 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 212 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 213 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 214 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GymStatue::
# 215 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GymStatue, MSGBOX_DEFAULT
# 216 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 217 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 218 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 219 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 220 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer1::
# 221 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 222 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 223 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_FrontStaffCongrats
# 224 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontBouncer1, MSGBOX_DEFAULT
# 225 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 226 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 227 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 228 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2::
# 229 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 230 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 231 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_FrontStaffCongrats
# 232 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_BOUGHT_TICKET, LavaridgeTown_Gym_1F_EventScript_FrontBouncer2HasTicket
# 233 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontBouncer2NeedTicket, MSGBOX_DEFAULT
# 234 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 235 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 236 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 237 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2HasTicket::
# 238 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontBouncer2HasTicket, MSGBOX_DEFAULT
# 239 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 240 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 241 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 242 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Trigger::
# 243 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_unset FLAG_LAVARIDGE_GYM_BOUGHT_TICKET, LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Block
# 244 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	specialvar VAR_RESULT, GetPlayerFacingDirection
# 245 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, DIR_SOUTH, LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Exit
# 246 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, DIR_NORTH, LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Enter
# 247 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 248 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 249 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Block::
# 250 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 251 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_FRONT_BOUNCER_2, Common_Movement_FaceLeft
# 252 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 253 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontBouncer2NeedTicket, MSGBOX_DEFAULT
# 254 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 255 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 256 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 257 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_FRONT_BOUNCER_2, Common_Movement_FaceDown
# 258 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 259 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 260 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 261 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 262 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Enter::
# 263 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 264 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_FRONT_BOUNCER_2, Common_Movement_FaceLeft
# 265 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 266 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontBouncer2HasTicket, MSGBOX_DEFAULT
# 267 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_FRONT_BOUNCER_2, Common_Movement_FaceDown
# 268 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 269 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 270 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 271 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 272 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontBouncer2Exit::
# 273 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 274 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 275 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Tickets1::
# 276 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 277 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 278 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_FrontStaffCongrats
# 279 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets1, MSGBOX_DEFAULT
# 280 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 281 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 282 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 283 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Tickets2::
# 284 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 285 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 286 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_FrontStaffCongrats
# 287 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_BOUGHT_TICKET, LavaridgeTown_Gym_1F_EventScript_Tickets2AlreadyBought
# 288 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	showmoneybox 0, 0
# 289 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets2BuyTicket, MSGBOX_YESNO
# 290 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LavaridgeTown_Gym_1F_EventScript_Tickets2Decline
# 291 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	checkmoney 100
# 292 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, LavaridgeTown_Gym_1F_EventScript_Tickets2NoMoney
# 293 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets2SoldTicket, MSGBOX_DEFAULT
# 294 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	removemoney 100
# 295 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	updatemoneybox
# 296 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_LAVARIDGE_GYM_BOUGHT_TICKET
# 297 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 298 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitfanfare
# 299 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	hidemoneybox
# 300 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 301 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 302 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 303 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Tickets2AlreadyBought::
# 304 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets2AlreadyBought, MSGBOX_DEFAULT
# 305 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 306 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 307 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 308 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Tickets2Decline::
# 309 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets2Decline, MSGBOX_DEFAULT
# 310 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	hidemoneybox
# 311 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 312 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 313 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 314 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Tickets2NoMoney::
# 315 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_Tickets2NoMoney, MSGBOX_DEFAULT
# 316 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	hidemoneybox
# 317 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 318 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 319 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 320 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_StageBouncer::
# 321 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 322 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 323 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_StageStaffCongrats
# 324 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_STAGE_PASS, LavaridgeTown_Gym_1F_EventScript_StageBouncerHasPass
# 325 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_StageBouncerNeedPass, MSGBOX_DEFAULT
# 326 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 327 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 328 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 329 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_StageBouncerHasPass::
# 330 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_StageBouncerHasPass, MSGBOX_DEFAULT
# 331 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 332 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 333 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 334 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FrontStaffCongrats::
# 335 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FrontStaffCongrats, MSGBOX_DEFAULT
# 336 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 337 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 338 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 339 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_StageStaffCongrats::
# 340 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_StageStaffCongrats, MSGBOX_DEFAULT
# 341 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 342 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 343 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 344 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_StageBouncerLeftTrigger::
# 345 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_STAGE_PASS, LavaridgeTown_Gym_1F_EventScript_BouncerTriggerPass
# 346 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 347 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_STAGE_BOUNCER_LEFT, Common_Movement_FaceRight
# 348 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 349 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_StageBouncerNeedPass, MSGBOX_DEFAULT
# 350 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 351 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 352 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 353 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_STAGE_BOUNCER_LEFT, Common_Movement_FaceRight
# 354 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 355 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 356 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 357 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 358 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_StageBouncerRightTrigger::
# 359 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_LAVARIDGE_GYM_STAGE_PASS, LavaridgeTown_Gym_1F_EventScript_BouncerTriggerPass
# 360 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 361 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_STAGE_BOUNCER_RIGHT, Common_Movement_FaceLeft
# 362 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 363 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_StageBouncerNeedPass, MSGBOX_DEFAULT
# 364 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 365 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 366 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 367 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_LAVARIDGE_GYM_STAGE_BOUNCER_RIGHT, Common_Movement_FaceLeft
# 368 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 369 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 370 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 371 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 372 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_BouncerTriggerPass::
# 373 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 374 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 375 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 376 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
@ ---------------------------------------------------------------------------
# 377 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
@ RENTON cameo - one-time POP joke at the Gym entrance.
# 378 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
@ Renton starts off-screen at (18,28).
# 379 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
@ FLAG_RENTON_LEFT (0x4B4) makes the event one-time.
# 380 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
@ ---------------------------------------------------------------------------
# 381 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 382 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonIdle::
# 383 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 384 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 385 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_RentonIdle, MSGBOX_DEFAULT
# 386 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 387 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 388 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 389 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Renton_Likes_Pop::
# 390 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_RENTON_LEFT, LavaridgeTown_Gym_1F_EventScript_RentonAlreadyLeft
# 391 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 392 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 393 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	@ Choose the approach according to which entrance trigger the player hit.
# 394 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	getplayerxy VAR_0x8004, VAR_0x8005
# 395 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_0x8004, 8, LavaridgeTown_Gym_1F_EventScript_RentonApproachX8
# 396 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_0x8004, 9, LavaridgeTown_Gym_1F_EventScript_RentonApproachX9
# 397 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_0x8004, 10, LavaridgeTown_Gym_1F_EventScript_RentonApproachX10
# 398 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_RentonApproachX11
# 399 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 400 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonApproachX8::
# 401 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_F, 1
# 402 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonApproachX8
# 403 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 404 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceRight
# 405 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 406 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_RentonStopped
# 407 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 408 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonApproachX9::
# 409 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_F, 2
# 410 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonApproachX9
# 411 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 412 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceRight
# 413 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 414 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_RentonStopped
# 415 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 416 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonApproachX10::
# 417 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_F, 3
# 418 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonApproachX10
# 419 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 420 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceRight
# 421 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 422 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_RentonStopped
# 423 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 424 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonApproachX11::
# 425 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_F, 4
# 426 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonApproachX11
# 427 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 428 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceUp
# 429 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 430 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 431 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonStopped::
# 432 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	@ The exclamation happens only after Renton is already in front of the player.
# 433 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonExclamation
# 434 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 435 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 436 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 437 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_RentonLikesPop, MSGBOX_DEFAULT
# 438 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	removefieldmugshot
# 439 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 440 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	delay 12
# 441 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 442 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_TEMP_F, 1, LavaridgeTown_Gym_1F_EventScript_RentonExitX8
# 443 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_TEMP_F, 2, LavaridgeTown_Gym_1F_EventScript_RentonExitX9
# 444 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_TEMP_F, 3, LavaridgeTown_Gym_1F_EventScript_RentonExitX10
# 445 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_RentonExitX11
# 446 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 447 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonExitX8::
# 448 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonMakeRoomX8
# 449 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 450 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	playse SE_SWITCH
# 451 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, LavaridgeTown_Gym_1F_Movement_PlayerShovedUp
# 452 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 453 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonLeaveViaLeftWarp
# 454 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 455 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_RentonGone
# 456 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 457 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonExitX9::
# 458 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	playse SE_SWITCH
# 459 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, LavaridgeTown_Gym_1F_Movement_PlayerShovedLeft
# 460 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 461 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonLeaveViaRightWarp
# 462 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 463 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_RentonGone
# 464 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 465 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonExitX10::
# 466 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	playse SE_SWITCH
# 467 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, LavaridgeTown_Gym_1F_Movement_PlayerShovedLeft
# 468 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 469 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonLeaveFromX11
# 470 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 471 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_RentonGone
# 472 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 473 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonExitX11::
# 474 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonMakeRoomX11
# 475 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 476 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	playse SE_SWITCH
# 477 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, LavaridgeTown_Gym_1F_Movement_PlayerShovedUp
# 478 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 479 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	applymovement LOCALID_RENTON, LavaridgeTown_Gym_1F_Movement_RentonLeaveViaRightWarp
# 480 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmovement 0
# 481 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 482 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonGone::
# 483 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	removeobject LOCALID_RENTON
# 484 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_RENTON_LEFT
# 485 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_F, 0
# 486 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 487 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 488 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 489 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RentonAlreadyLeft::
# 490 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 491 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 492 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 493 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
@ Renton starts at (18,28). He walks across the clear lower lane first,
# 494 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
@ then drops down next to the player.
# 495 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 496 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonApproachX8:
# 497 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 498 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
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
	walk_fast_down
# 507 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 508 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 509 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	face_left
# 510 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 511 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 512 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonApproachX9:
# 513 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 514 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
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
	walk_fast_down
# 522 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 523 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	face_left
# 524 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 525 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 526 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonApproachX10:
# 527 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 528 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
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
	walk_fast_down
# 535 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 536 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	face_left
# 537 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 538 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 539 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonApproachX11:
# 540 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 541 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
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
	walk_fast_down
# 548 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 549 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	face_down
# 550 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 551 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 552 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonExclamation:
# 553 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	emote_exclamation_mark
# 554 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	delay_16
# 555 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 556 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 557 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonMakeRoomX8:
# 558 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_up
# 559 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	face_left
# 560 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 561 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 562 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonMakeRoomX11:
# 563 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 564 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	face_down
# 565 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 566 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 567 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_PlayerShovedLeft:
# 568 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	jump_left
# 569 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	face_right
# 570 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 571 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 572 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_PlayerShovedUp:
# 573 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	jump_up
# 574 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	face_down
# 575 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 576 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 577 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonLeaveViaLeftWarp:
# 578 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 579 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 580 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 581 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonLeaveViaRightWarp:
# 582 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 583 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 584 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 585 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Movement_RentonLeaveFromX11:
# 586 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_down
# 587 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	walk_fast_left
# 588 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	step_end
# 589 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 590 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 591 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_RentonIdle:
# 592 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Uh... I'm just passing through.\p"
# 593 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Don't make this weird, kid.$"
# 594 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 595 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_RentonLikesPop:
# 596 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Yo! There you are! HAHAHA!\p"
# 597 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I gotta admit, I liked our fight!\n"
# 598 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "...Wait a second.\n"
# 599 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "YOU like POP?!\p"
# 600 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "HAHAHA!\p"
# 601 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Me? A POP fan? Pffft! No way!\n"
# 602 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU's songs are all glitter!\p"
# 603 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "At my GYM we listen to HEAVY\n"
# 604 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "music! Real songs only!\p"
# 605 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Okay, maybe ONE chorus was\n"
# 606 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "kinda catchy. Just one!\p"
# 607 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "HEY! Forget you heard that!\p"
# 608 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Why am I here, then?\n"
# 609 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "My BRASS KNUCKLES, obviously!\p"
# 610 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "They got stuck in some AMATERASU\n"
# 611 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "fan after I punched the guy.\p"
# 612 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I just came back to get them!\n"
# 613 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Perfectly normal explanation!\p"
# 614 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "...What? Why are you grinning?\n"
# 615 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Red? ME?! I'm not red!\p"
# 616 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "This place is packed, that's all!\n"
# 617 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It's hot! There's no air in here!\p"
# 618 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I'm definitely NOT embarrassed!\n"
# 619 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "HAHAHA... ha...\p"
# 620 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Now scoot over before somebody\n"
# 621 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "from my GYM sees me here!$"
# 622 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 623 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 624 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FrontBouncer1:
# 625 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Line starts over there, friend.\p"
# 626 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Get yourself a ticket first, then\n"
# 627 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "we can let you into the show.$"
# 628 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 629 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FrontBouncer2NeedTicket:
# 630 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hold up. I need to see a ticket\n"
# 631 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "before you head inside.\p"
# 632 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The ticket booth is right over there.$"
# 633 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 634 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FrontBouncer2HasTicket:
# 635 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Ticket checks out.\p"
# 636 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Enjoy the show!$"
# 637 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 638 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets1:
# 639 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Welcome to tonight's show!\n"
# 640 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "We hope you have a great time!$"
# 641 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 642 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets2BuyTicket:
# 643 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "One ticket to see AMATERASU is\n"
# 644 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "¥100.\p"
# 645 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Would you like one?$"
# 646 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 647 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets2SoldTicket:
# 648 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Thank you!\p"
# 649 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You're all set. Show your ticket\n"
# 650 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "to the bouncer at the entrance.$"
# 651 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 652 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets2AlreadyBought:
# 653 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Enjoy the show!$"
# 654 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 655 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets2Decline:
# 656 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "No problem.\p"
# 657 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Come back if you decide you want\n"
# 658 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "to see the show.$"
# 659 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 660 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_Tickets2NoMoney:
# 661 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I'm sorry, but you don't have\n"
# 662 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "enough money for a ticket.$"
# 663 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 664 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_StageBouncerNeedPass:
# 665 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Stage access is for stage-pass\n"
# 666 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "holders only.\p"
# 667 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "No pass, no getting near\n"
# 668 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU during the show.$"
# 669 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 670 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_StageBouncerHasPass:
# 671 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Stage pass confirmed.\p"
# 672 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Go on through, but mind the heat\n"
# 673 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "from the stage effects.$"
# 674 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 675 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GymGuideAdvice:
# 676 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hey! How's it going,\n"
# 677 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "CHAMPION-bound {PLAYER}?\p"
# 678 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "LAVARIDGE's LEADER is AMATERASU,\n"
# 679 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "the blazing idol of Hoenn!\p"
# 680 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "She battles with fierce FIRE\n"
# 681 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "POKéMON, many like loyal hounds.\p"
# 682 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Her passion burns hotter than\n"
# 683 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "the volcano itself!\p"
# 684 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Water will cool the flames,\n"
# 685 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "but don't underestimate her rhythm!$"
# 686 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 687 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GymGuidePostVictory:
# 688 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Yow! That was a scorching-hot battle!$"
# 689 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 690 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ColeIntro:
# 691 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Owowowowow!\n"
# 692 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It's so hot in here!\p"
# 693 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I only came to get an autograph\n"
# 694 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "from AMATERASU…\p"
# 695 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But I got burned instead!$"
# 696 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 697 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ColeDefeat:
# 698 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Whoa… you're pretty tough…\p"
# 699 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "If you get close to AMATERASU,\n"
# 700 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "can you ask for her autograph\n"
# 701 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "for me?$"
# 702 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 703 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ColePostBattle:
# 704 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU is a rising idol star.\p"
# 705 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Her voice warms every heart.\p"
# 706 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But in battle, her flames\n"
# 707 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "burn fierce and wild.$"
# 708 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 709 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_AxlePostBattle:
# 710 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love AMATERASU so much that\n"
# 711 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I bought an extra stage pass.\p"
# 712 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Since you beat me, you must really\n"
# 713 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "love her too!\p"
# 714 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Here, take my spare.\n"
# 715 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Make sure to get her autograph!$"
# 716 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 717 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_AxleDefeat:
# 718 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Woah! Ouch! I singed my hat!$"
# 719 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 720 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_AxleIntro:
# 721 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Okay… maybe I'm a little\n"
# 722 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "bit of an AMATERASU simp…\p"
# 723 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But I've got my own fire\n"
# 724 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "burning inside!\p"
# 725 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Get too close to us,\n"
# 726 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "and that strange cape of yours\l"
# 727 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "might catch flame!$"
# 728 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 729 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_KeeganIntro:
# 730 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You must be getting tired by now.\n"
# 731 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You'd like to rest in the hot sand,\l"
# 732 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "wouldn't you?\p"
# 733 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But you should know that maintaining\n"
# 734 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "your willpower is an important ability\l"
# 735 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "for all TRAINERS.$"
# 736 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 737 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_KeeganDefeat:
# 738 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Play with fire, and be burned…$"
# 739 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 740 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_KeeganPostBattle:
# 741 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Your skill is real…\n"
# 742 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But our LEADER AMATERASU is strong.\p"
# 743 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "If you don't watch yourself, you'll be\n"
# 744 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "burned seriously.$"
# 745 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 746 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GeraldIntro:
# 747 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hey! Are you trying to cut in?!\n"
# 748 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "We all want to see the show, pal.\p"
# 749 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Get to the back of the line!$"
# 750 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 751 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GeraldDefeat:
# 752 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Well, fine.. I guess you can cut me.\p"
# 753 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Jerk$"
# 754 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 755 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GeraldPostBattle:
# 756 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I've been waiting in this line\n"
# 757 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "for over an hour.\p"
# 758 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But sure, just go on through.\n"
# 759 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It's not like you'll beat Amaterasu.$"
# 760 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 761 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_DanielleIntro:
# 762 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Um… hi, weirdo…\p"
# 763 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Did I take too much, or are you\n"
# 764 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "really dressed like that?$"
# 765 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 766 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_DanielleDefeat:
# 767 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I think I did take too much.$"
# 768 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 769 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_DaniellePostBattle:
# 770 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU shines on stage\n"
# 771 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "with flames and fireworks.\p"
# 772 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But shady people under the stage\n"
# 773 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "sell some really strange stuff.$"
# 774 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 775 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JaceIntro:
# 776 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Have you ever seen her show?\n"
# 777 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Flames dancing in the dark!\p"
# 778 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "That night changed my life.\n"
# 779 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let's burn bright!$"
# 780 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 781 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JaceDefeat:
# 782 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The fireworks faded…\n"
# 783 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "and so did my spark…$"
# 784 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 785 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JacePostBattle:
# 786 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU's stage is pure fire!\p"
# 787 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The night I saw her perform,\n"
# 788 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I fell in love with flames!\p"
# 789 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "If your spirit burns like that,\n"
# 790 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "you might rival her.$"
# 791 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 792 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JeffIntro:
# 793 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You see those flames?\n"
# 794 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "They burn with loyalty!\p"
# 795 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Just like AMATERASU's\n"
# 796 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "faithful POKéMON!$"
# 797 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 798 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JeffDefeat:
# 799 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Heh… So that's your strength.\n"
# 800 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "No wonder you made it this far.$"
# 801 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 802 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JeffPostBattle:
# 803 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU loves cute and\n"
# 804 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "loyal FIRE POKéMON.\p"
# 805 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But don't mistake that\n"
# 806 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "for weakness.\p"
# 807 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "She's a natural talent.\n"
# 808 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Born to command flames.$"
# 809 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 810 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_EliIntro:
# 811 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Did you see the comet that day?\n"
# 812 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It streaked across the sky!\p"
# 813 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It reminded me of AMATERASU!$"
# 814 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 815 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_EliDefeat:
# 816 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Just like that comet…\n"
# 817 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "you burned past me.$"
# 818 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 819 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_EliPostBattle:
# 820 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "When I saw that comet blaze,\n"
# 821 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I thought of AMATERASU.\p"
# 822 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Her shows light up the night\n"
# 823 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "just like that burning star.$"
# 824 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 825 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryIntro:
# 826 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "La la la…\n"
# 827 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Ah… The stage is set.\p"
# 828 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Welcome, darling TRAINER!\p"
# 829 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You should feel honored.\n"
# 830 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Tonight's performance is\l"
# 831 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "live… and exclusive!\p"
# 832 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I am AMATERASU! Bet you know me!\p"
# 833 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The idol whose flames light\n"
# 834 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "both the stage and the battlefield!\p"
# 835 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I adore music…\n"
# 836 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "And I adore loyal FIRE POKéMON,\l"
# 837 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "especially my beloved canines!\p"
# 838 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Their howls, their pride,\n"
# 839 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "their blazing devotion…\p"
# 840 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "They burn with me in perfect harmony!\p"
# 841 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "So listen closely.\p"
# 842 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Can you hear it?\p"
# 843 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The rhythm of drums…\n"
# 844 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The roar of the flames…\p"
# 845 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let us begin our duet!\p"
# 846 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Try not to get burned\n"
# 847 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "by my blazing passion!$"
# 848 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 849 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryDefeat:
# 850 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Ahh… What a performance!\n"
# 851 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "My heart is racing!\p"
# 852 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You didn't just battle me,\n"
# 853 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "you matched my rhythm perfectly!\p"
# 854 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Battles like this are why I\n"
# 855 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "love the stage so much.\p"
# 856 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "When flames clash and spirits\n"
# 857 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "ignite… that's true passion!\p"
# 858 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You pushed me to burn brighter,\n"
# 859 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "and I respect that.\p"
# 860 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Take this BADGE.\n"
# 861 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You earned it fair and square.$"
# 862 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 863 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ReceivedHeatBadge:
# 864 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "{PLAYER} received the HEAT BADGE\n"
# 865 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "from AMATERASU.$"
# 866 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 867 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ExplainHeatBadgeTakeThis:
# 868 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "If you have a HEAT BADGE, all POKéMON\n"
# 869 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "up to Level 50, even those you get in\l"
# 870 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "trades from other people, will obey\l"
# 871 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "you completely.\p"
# 872 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "And, it lets POKéMON use HEADBUTT\n"
# 873 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "and STRENGTH outside of battle.\p"
# 874 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "This is a token of my appreciation.\n"
# 875 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Don't be shy about taking it!$"
# 876 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 877 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ExplainOverheat:
# 878 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "That TM50 contains FIERY DANCE.\p"
# 879 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It attacks the foe with flames and\n"
# 880 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "may also raise the user's SP. ATK.$"
# 881 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 882 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_RegisteredFlannery:
# 883 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Registered GYM LEADER AMATERASU\n"
# 884 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "in the POKéNAV.$"
# 885 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 886 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryPostBattle:
# 887 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "WOW… That battle was CRAZY!\n"
# 888 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "My heart is still pounding!\p"
# 889 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The flames, the pressure,\n"
# 890 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "the emotion! It was perfect!\p"
# 891 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I'm seriously impressed.\n"
# 892 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "That was incredible!\p"
# 893 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I need to write a song about\n"
# 894 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "this moment right now!\p"
# 895 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hey! Do you have paper?\n"
# 896 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "A pen? Inspiration can't wait!$"
# 897 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 898 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GymStatue:
# 899 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "LAVARIDGE TOWN POKéMON GYM$"
# 900 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 901 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GymStatueCertified:
# 902 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "LAVARIDGE TOWN POKéMON GYM\p"
# 903 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU'S CERTIFIED TRAINERS:\n"
# 904 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "{PLAYER}$"
# 905 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 906 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryPreRematch:
# 907 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU: Losing a battle isn't going\n"
# 908 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "to deflate me.\p"
# 909 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love POKéMON.\n"
# 910 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love to battle.\l"
# 911 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "And… I love this GYM!\p"
# 912 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let's exchange superhot moves\n"
# 913 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "in another battle!$"
# 914 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 915 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryRematchDefeat:
# 916 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Whew!\n"
# 917 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "On the verge of eruption!$"
# 918 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 919 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryPostRematch:
# 920 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "FLANNERY: I lost the match,\n"
# 921 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "but I'm completely satisfied.\p"
# 922 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It's not often I get to enjoy a battle\n"
# 923 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "this heated.\p"
# 924 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let's have another one like this\n"
# 925 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "again sometime!$"
# 926 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 927 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryRematchNeedTwoMons:
# 928 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "FLANNERY: Losing a battle isn't going\n"
# 929 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "to deflate me.\p"
# 930 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love POKéMON.\n"
# 931 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love to battle.\l"
# 932 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "And… I love this GYM!\p"
# 933 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let's exchange superhot moves\n"
# 934 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "in another battle!\p"
# 935 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Oh, wait. Do you only have one POKéMON\n"
# 936 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "that can battle?\p"
# 937 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I hate to say this, but when you come\n"
# 938 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "see me, bring at least two POKéMON.$"
# 939 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 940 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_AxleHasGivenPass:
# 941 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hey, I'm trying to watch the show\n"
# 942 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "now.\p"
# 943 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You've got my spare pass, so go\n"
# 944 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "bug someone else.$"
# 945 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 946 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FrontStaffCongrats:
# 947 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Congratulations on your win!\p"
# 948 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "That was one seriously hot\n"
# 949 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "performance.$"
# 950 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 951 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_StageStaffCongrats:
# 952 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Congratulations, challenger.\p"
# 953 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You handled the stage like a\n"
# 954 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "real headliner.$"
