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
	call LavaridgeTown_Gym_1F_EventScript_CheckBuryTrainers
# 9 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 10 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 11 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
@ Unclear where/if these temp vars are getting checked
# 12 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_SetTrainerTempVars::
# 13 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_B, 0
# 14 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_C, 0
# 15 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_D, 0
# 16 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_E, 0
# 17 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_F, 0
# 18 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_COLE, LavaridgeTown_Gym_1F_EventScript_SetGeraldTempVar
# 19 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_B, 1
# 20 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_SetGeraldTempVar::
# 21 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_GERALD, LavaridgeTown_Gym_1F_EventScript_SetAxleTempVar
# 22 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_C, 1
# 23 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_SetAxleTempVar::
# 24 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_AXLE, LavaridgeTown_Gym_1F_EventScript_SetDanielleTempVar
# 25 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_D, 1
# 26 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_SetDanielleTempVar::
# 27 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_DANIELLE, LavaridgeTown_Gym_1F_EventScript_EndSetTrainerTempVars
# 28 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_TEMP_E, 1
# 29 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_EndSetTrainerTempVars::
# 30 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	return
# 31 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 32 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_CheckBuryTrainers::
# 33 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_COLE, LavaridgeTown_Gym_1F_EventScript_CheckBuryGerald
# 34 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setobjectmovementtype LOCALID_COLE, MOVEMENT_TYPE_BURIED
# 35 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_CheckBuryGerald::
# 36 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_GERALD, LavaridgeTown_Gym_1F_EventScript_CheckBuryAxle
# 37 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setobjectmovementtype LOCALID_GERALD, MOVEMENT_TYPE_BURIED
# 38 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_CheckBuryAxle::
# 39 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_AXLE, LavaridgeTown_Gym_1F_EventScript_CheckBuryDanielle
# 40 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setobjectmovementtype LOCALID_AXLE, MOVEMENT_TYPE_BURIED
# 41 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_CheckBuryDanielle::
# 42 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_defeated TRAINER_DANIELLE, LavaridgeTown_Gym_1F_EventScript_EndCheckBuryTrainers
# 43 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setobjectmovementtype LOCALID_DANIELLE, MOVEMENT_TYPE_BURIED
# 44 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_EndCheckBuryTrainers::
# 45 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	return
# 46 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 47 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
// Lavaridge Town Gym - Flannery
# 48 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Flannery::
# 49 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    lock
# 50 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    faceplayer
# 51 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    getdifficulty VAR_RESULT
# 52 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    goto_if_eq VAR_RESULT, 1, LavaridgeTown_Gym_1F_EventScript_FlanneryHard
# 53 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 54 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    // Casual Mode
# 55 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    trainerbattle_single TRAINER_FLANNERY_CASUAL, LavaridgeTown_Gym_1F_Text_FlanneryIntro, LavaridgeTown_Gym_1F_Text_FlanneryDefeat, LavaridgeTown_Gym_1F_EventScript_FlanneryDefeated, NO_MUSIC
# 56 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    goto LavaridgeTown_Gym_1F_EventScript_FlanneryAfterBattle
# 57 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 58 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FlanneryHard::
# 59 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    // Hard Mode
# 60 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    trainerbattle_single TRAINER_FLANNERY_1, LavaridgeTown_Gym_1F_Text_FlanneryIntro, LavaridgeTown_Gym_1F_Text_FlanneryDefeat, LavaridgeTown_Gym_1F_EventScript_FlanneryDefeated, NO_MUSIC
# 61 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    // Fall through to AfterBattle
# 62 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 63 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FlanneryAfterBattle::
# 64 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    specialvar VAR_RESULT, ShouldTryRematchBattle
# 65 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    goto_if_eq VAR_RESULT, TRUE, LavaridgeTown_Gym_1F_EventScript_FlanneryRematch
# 66 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    goto_if_unset FLAG_RECEIVED_TM_OVERHEAT, LavaridgeTown_Gym_1F_EventScript_GiveOverheat2
# 67 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    msgbox LavaridgeTown_Gym_1F_Text_FlanneryPostBattle, MSGBOX_DEFAULT
# 68 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    release
# 69 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
    end
# 70 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 71 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FlanneryDefeated::
# 72 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	message LavaridgeTown_Gym_1F_Text_ReceivedHeatBadge
# 73 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitmessage
# 74 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call Common_EventScript_PlayGymBadgeFanfare
# 75 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_ExplainHeatBadgeTakeThis, MSGBOX_DEFAULT
# 76 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_WHITEOUT_TO_LAVARIDGE
# 77 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_DEFEATED_LAVARIDGE_GYM
# 78 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_BADGE04_GET
# 79 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	addvar VAR_PETALBURG_GYM_STATE, 1
# 80 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 6, Common_EventScript_ReadyPetalburgGymForBattle
# 81 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_0x8008, 4
# 82 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call Common_EventScript_SetGymTrainers
# 83 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_HIDE_VERDANTURF_TOWN_WANDAS_HOUSE_WALLY
# 84 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setvar VAR_LAVARIDGE_TOWN_STATE, 1
# 85 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call LavaridgeTown_Gym_1F_EventScript_GiveOverheat
# 86 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 87 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	delay 30
# 88 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	waitfanfare
# 89 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	closemessage
# 90 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	delay 30
# 91 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 92 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 93 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 94 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GiveOverheat2::
# 95 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	giveitem ITEM_TM_OVERHEAT
# 96 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 97 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_ExplainOverheat, MSGBOX_DEFAULT
# 98 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_RECEIVED_TM_OVERHEAT
# 99 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 100 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 101 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 102 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GiveOverheat::
# 103 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	giveitem ITEM_TM_OVERHEAT
# 104 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 105 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_ExplainOverheat, MSGBOX_DEFAULT
# 106 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	setflag FLAG_RECEIVED_TM_OVERHEAT
# 107 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	return
# 108 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 109 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_FlanneryRematch::
# 110 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle_rematch_double TRAINER_FLANNERY_1, LavaridgeTown_Gym_1F_Text_FlanneryPreRematch, LavaridgeTown_Gym_1F_Text_FlanneryRematchDefeat, LavaridgeTown_Gym_1F_Text_FlanneryRematchNeedTwoMons
# 111 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_FlanneryPostRematch, MSGBOX_AUTOCLOSE
# 112 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 113 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 114 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Cole::
# 115 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_COLE, TRAINER_COLE, LavaridgeTown_Gym_1F_Text_ColeIntro, LavaridgeTown_Gym_1F_Text_ColeDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 116 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_ColePostBattle, MSGBOX_AUTOCLOSE
# 117 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 118 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 119 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_EventScript_CheckTrainerScript::
# 120 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	call LavaridgeTown_Gym_1F_EventScript_SetTrainerTempVars
# 121 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 122 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	special ShouldTryGetTrainerScript
# 123 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, 1, EventScript_GotoTrainerScript
# 124 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 125 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 126 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Axle::
# 127 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_AXLE, TRAINER_AXLE, LavaridgeTown_Gym_1F_Text_AxleIntro, LavaridgeTown_Gym_1F_Text_AxleDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 128 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_AxlePostBattle, MSGBOX_AUTOCLOSE
# 129 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 130 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 131 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_EventScript_Keegan::
# 132 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_KEEGAN, TRAINER_KEEGAN, LavaridgeTown_Gym_B1F_Text_KeeganIntro, LavaridgeTown_Gym_B1F_Text_KeeganDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 133 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_B1F_Text_KeeganPostBattle, MSGBOX_AUTOCLOSE
# 134 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 135 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 136 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Danielle::
# 137 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_DANIELLE, TRAINER_DANIELLE, LavaridgeTown_Gym_1F_Text_DanielleIntro, LavaridgeTown_Gym_1F_Text_DanielleDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 138 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_DaniellePostBattle, MSGBOX_AUTOCLOSE
# 139 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 140 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 141 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_Gerald::
# 142 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_GERALD, TRAINER_GERALD, LavaridgeTown_Gym_1F_Text_GeraldIntro, LavaridgeTown_Gym_1F_Text_GeraldDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 143 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GeraldPostBattle, MSGBOX_AUTOCLOSE
# 144 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 145 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 146 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_EventScript_Jace::
# 147 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_JACE, TRAINER_JACE, LavaridgeTown_Gym_B1F_Text_JaceIntro, LavaridgeTown_Gym_B1F_Text_JaceDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 148 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_B1F_Text_JacePostBattle, MSGBOX_AUTOCLOSE
# 149 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 150 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 151 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_EventScript_Jeff::
# 152 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_JEFF, TRAINER_JEFF, LavaridgeTown_Gym_B1F_Text_JeffIntro, LavaridgeTown_Gym_B1F_Text_JeffDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 153 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_B1F_Text_JeffPostBattle, MSGBOX_AUTOCLOSE
# 154 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 155 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 156 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_EventScript_Eli::
# 157 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, LOCALID_ELI, TRAINER_ELI, LavaridgeTown_Gym_B1F_Text_EliIntro, LavaridgeTown_Gym_B1F_Text_EliDefeat, LavaridgeTown_Gym_EventScript_CheckTrainerScript, OBJ_ID_NONE, TRAINER_NONE, NULL, NULL, NULL, NULL, NULL, FALSE, TRUE, FALSE, FALSE
# 158 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_B1F_Text_EliPostBattle, MSGBOX_AUTOCLOSE
# 159 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 160 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 161 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GymGuide::
# 162 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lock
# 163 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	faceplayer
# 164 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, LavaridgeTown_Gym_1F_EventScript_GymGuidePostVictory
# 165 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 166 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 167 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 168 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 169 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GymGuidePostVictory::
# 170 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 171 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	release
# 172 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 173 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 174 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_LeftGymStatue::
# 175 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 176 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_BADGE04_GET, LavaridgeTown_Gym_1F_EventScript_GymStatueCertified
# 177 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_GymStatue
# 178 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 179 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 180 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_RightGymStatue::
# 181 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	lockall
# 182 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto_if_set FLAG_BADGE04_GET, LavaridgeTown_Gym_1F_EventScript_GymStatueCertified
# 183 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	goto LavaridgeTown_Gym_1F_EventScript_GymStatue
# 184 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 185 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 186 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GymStatueCertified::
# 187 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GymStatueCertified, MSGBOX_DEFAULT
# 188 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 189 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 190 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 191 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_EventScript_GymStatue::
# 192 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	msgbox LavaridgeTown_Gym_1F_Text_GymStatue, MSGBOX_DEFAULT
# 193 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	releaseall
# 194 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	end
# 195 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 196 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GymGuideAdvice:
# 197 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hey! How's it going,\n"
# 198 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "CHAMPION-bound {PLAYER}?\p"
# 199 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "LAVARIDGE's LEADER is AMATERASU,\n"
# 200 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "the blazing idol of Hoenn!\p"
# 201 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "She battles with fierce FIRE\n"
# 202 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "POKéMON, many like loyal hounds.\p"
# 203 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Her passion burns hotter than\n"
# 204 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "the volcano itself!\p"
# 205 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Water will cool the flames,\n"
# 206 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "but don't underestimate her rhythm!$"
# 207 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 208 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GymGuidePostVictory:
# 209 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Yow! That was a scorching-hot battle!$"
# 210 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 211 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ColeIntro:
# 212 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Owowowowow!\n"
# 213 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It's so hot in here!\p"
# 214 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I only came to get an autograph\n"
# 215 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "from AMATERASU…\p"
# 216 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But I got burned instead!$"
# 217 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 218 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ColeDefeat:
# 219 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Whoa… you're pretty tough…\p"
# 220 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "If you get close to AMATERASU,\n"
# 221 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "can you ask for her autograph\n"
# 222 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "for me?$"
# 223 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 224 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ColePostBattle:
# 225 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU is a rising idol star.\p"
# 226 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Her voice warms every heart.\p"
# 227 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But in battle, her flames\n"
# 228 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "burn fierce and wild.$"
# 229 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 230 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_AxleIntro:
# 231 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hey! I'm not here because\n"
# 232 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "of AMATERASU, okay?\p"
# 233 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I just like intense battles\n"
# 234 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "and blazing heat!$"
# 235 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 236 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_AxleDefeat:
# 237 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I hope AMATERASU flames you good!$"
# 238 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 239 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_AxlePostBattle:
# 240 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Okay… maybe I'm a little\n"
# 241 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "bit of an AMATERASU simp…\p"
# 242 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But I've got my own fire\n"
# 243 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "burning inside!\p"
# 244 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Get too close to us,\n"
# 245 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "and that strange cape of yours\n"
# 246 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "might catch flame!$"
# 247 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 248 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_KeeganIntro:
# 249 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You must be getting tired by now.\n"
# 250 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You'd like to rest in the hot sand,\l"
# 251 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "wouldn't you?\p"
# 252 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But you should know that maintaining\n"
# 253 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "your willpower is an important ability\l"
# 254 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "for all TRAINERS.$"
# 255 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 256 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_KeeganDefeat:
# 257 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Play with fire, and be burned…$"
# 258 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 259 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_KeeganPostBattle:
# 260 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Your skill is real…\n"
# 261 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But our LEADER AMATERASU is strong.\p"
# 262 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "If you don't watch yourself, you'll be\n"
# 263 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "burned seriously.$"
# 264 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 265 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GeraldIntro:
# 266 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Can your POKéMON withstand\n"
# 267 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "392-degree heat?$"
# 268 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 269 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GeraldDefeat:
# 270 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It didn't burn hotly enough…$"
# 271 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 272 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GeraldPostBattle:
# 273 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The temperature of magma is\n"
# 274 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "392 degrees.\p"
# 275 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Your POKéMON beat me, so they should\n"
# 276 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "easily survive in magma.$"
# 277 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 278 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_DanielleIntro:
# 279 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Um… hi wierdo…\n"
# 280 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I'll battle you now!$"
# 281 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 282 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_DanielleDefeat:
# 283 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Oh, but you're too strong.$"
# 284 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 285 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_DaniellePostBattle:
# 286 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU shines on stage\n"
# 287 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "with flames and fireworks.\p"
# 288 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I want to be strong and radiant\n"
# 289 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "just like her someday!$"
# 290 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 291 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JaceIntro:
# 292 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Have you ever seen her show?\n"
# 293 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Flames dancing in the dark!\p"
# 294 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "That night changed my life.\n"
# 295 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let's burn bright!$"
# 296 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 297 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JaceDefeat:
# 298 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The fireworks faded…\n"
# 299 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "and so did my spark…$"
# 300 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 301 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JacePostBattle:
# 302 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU's stage is pure fire!\p"
# 303 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The night I saw her perform,\n"
# 304 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I fell in love with flames!\p"
# 305 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "If your spirit burns like that,\n"
# 306 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "you might rival her.$"
# 307 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 308 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JeffIntro:
# 309 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You see those flames?\n"
# 310 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "They burn with loyalty!\p"
# 311 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Just like AMATERASU's\n"
# 312 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "faithful POKéMON!$"
# 313 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 314 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JeffDefeat:
# 315 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Heh… So that's your strength.\n"
# 316 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "No wonder you made it this far.$"
# 317 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 318 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_JeffPostBattle:
# 319 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU loves cute and\n"
# 320 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "loyal FIRE POKéMON.\p"
# 321 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But don't mistake that\n"
# 322 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "for weakness.\p"
# 323 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "She's a natural talent.\n"
# 324 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Born to command flames.$"
# 325 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 326 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_EliIntro:
# 327 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Did you see the comet that day?\n"
# 328 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It streaked across the sky!\p"
# 329 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It reminded me of AMATERASU!$"
# 330 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 331 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_EliDefeat:
# 332 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Just like that comet…\n"
# 333 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "you burned past me.$"
# 334 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 335 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_B1F_Text_EliPostBattle:
# 336 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "When I saw that comet blaze,\n"
# 337 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I thought of AMATERASU.\p"
# 338 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Her shows light up the night\n"
# 339 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "just like that burning star.$"
# 340 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 341 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryIntro:
# 342 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "La la la…\n"
# 343 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Ah… The stage is set.\p"
# 344 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Welcome, darling TRAINER!\p"
# 345 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You should feel honored.\n"
# 346 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Tonight's performance is\l"
# 347 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "live… and exclusive!\p"
# 348 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I am AMATERASU! Bet you know me!\p"
# 349 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The idol whose flames light\n"
# 350 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "both the stage and the battlefield!\p"
# 351 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I adore music…\n"
# 352 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "And I adore loyal FIRE POKéMON,\l"
# 353 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "especially my beloved canines!\p"
# 354 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Their howls, their pride,\n"
# 355 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "their blazing devotion…\p"
# 356 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "They burn with me in perfect harmony!\p"
# 357 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "So listen closely.\p"
# 358 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Can you hear it?\p"
# 359 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The rhythm of drums…\n"
# 360 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The roar of the flames…\p"
# 361 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let us begin our duet!\p"
# 362 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Try not to get burned\n"
# 363 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "by my blazing passion!$"
# 364 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 365 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryDefeat:
# 366 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Ahh… What a performance!\n"
# 367 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "My heart is racing!\p"
# 368 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You didn't just battle me,\n"
# 369 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "you matched my rhythm perfectly!\p"
# 370 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Battles like this are why I\n"
# 371 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "love the stage so much.\p"
# 372 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "When flames clash and spirits\n"
# 373 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "ignite… that's true passion!\p"
# 374 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You pushed me to burn brighter.\n"
# 375 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "And I respect that.\p"
# 376 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Take this BADGE.\n"
# 377 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "You earned it fair and square.$"
# 378 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 379 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ReceivedHeatBadge:
# 380 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "{PLAYER} received the HEAT BADGE\n"
# 381 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "from AMATERASU.$"
# 382 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 383 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ExplainHeatBadgeTakeThis:
# 384 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "If you have a HEAT BADGE, all POKéMON\n"
# 385 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "up to Level 50, even those you get in\l"
# 386 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "trades from other people, will obey\l"
# 387 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "you completely.\p"
# 388 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "And, it lets POKéMON use the HM move\n"
# 389 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "STRENGTH outside of battle.\p"
# 390 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "This is a token of my appreciation.\n"
# 391 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Don't be shy about taking it!$"
# 392 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 393 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_ExplainOverheat:
# 394 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "That TM50 contains OVERHEAT.\p"
# 395 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "That move inflicts serious damage on\n"
# 396 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "the opponent.\p"
# 397 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "But it also sharply cuts the SP. ATK\n"
# 398 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "of the POKéMON using it. It might not\l"
# 399 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "be suitable for longer battles.$"
# 400 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 401 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_RegisteredFlannery:
# 402 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Registered GYM LEADER AMATERASU\n"
# 403 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "in the POKéNAV.$"
# 404 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 405 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryPostBattle:
# 406 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "WOW… That battle was CRAZY!\n"
# 407 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "My heart is still pounding!\p"
# 408 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "The flames, the pressure,\n"
# 409 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "the emotion! It was perfect!\p"
# 410 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I'm seriously impressed.\n"
# 411 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "That was incredible!\p"
# 412 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I need to write a song about\n"
# 413 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "this moment right now!\p"
# 414 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Hey! Do you have paper?\n"
# 415 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "A pen? Inspiration can't wait!$"
# 416 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 417 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GymStatue:
# 418 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "LAVARIDGE TOWN POKéMON GYM$"
# 419 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 420 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_GymStatueCertified:
# 421 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "LAVARIDGE TOWN POKéMON GYM\p"
# 422 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU'S CERTIFIED TRAINERS:\n"
# 423 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "{PLAYER}$"
# 424 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 425 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryPreRematch:
# 426 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "AMATERASU: Losing a battle isn't going\n"
# 427 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "to deflate me.\p"
# 428 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love POKéMON.\n"
# 429 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love to battle.\l"
# 430 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "And… I love this GYM!\p"
# 431 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let's exchange superhot moves\n"
# 432 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "in another battle!$"
# 433 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 434 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryRematchDefeat:
# 435 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Whew!\n"
# 436 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "On the verge of eruption!$"
# 437 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 438 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryPostRematch:
# 439 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "FLANNERY: I lost the match,\n"
# 440 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "but I'm completely satisfied.\p"
# 441 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "It's not often I get to enjoy a battle\n"
# 442 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "this heated.\p"
# 443 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let's have another one like this\n"
# 444 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "again sometime!$"
# 445 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"

# 446 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
LavaridgeTown_Gym_1F_Text_FlanneryRematchNeedTwoMons:
# 447 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "FLANNERY: Losing a battle isn't going\n"
# 448 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "to deflate me.\p"
# 449 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love POKéMON.\n"
# 450 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I love to battle.\l"
# 451 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "And… I love this GYM!\p"
# 452 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Let's exchange superhot moves\n"
# 453 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "in another battle!\p"
# 454 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "Oh, wait. Do you only have one POKéMON\n"
# 455 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "that can battle?\p"
# 456 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "I hate to say this, but when you come\n"
# 457 "data/maps/LavaridgeTown_Gym_1F/scripts.pory"
	.string "see me, bring at least two POKéMON.$"
