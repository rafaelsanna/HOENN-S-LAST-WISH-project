# 1 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 2 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_MapScripts::
# 3 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, SootopolisCity_Gym_1F_OnFrame
# 4 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, SootopolisCity_Gym_1F_OnResume
# 5 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_LOAD, SootopolisCity_Gym_1F_OnLoad
# 6 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, SootopolisCity_Gym_1F_OnTransition
# 7 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.byte 0
# 8 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 9 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_OnTransition:
# 10 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	setvar VAR_ICE_STEP_COUNT, 1
# 11 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	end
# 12 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 13 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_OnResume:
# 14 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	setstepcallback STEP_CB_SOOTOPOLIS_ICE
# 15 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	end
# 16 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 17 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_OnLoad:
# 18 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	call SootopolisCity_Gym_1F_EventScript_CheckSetStairMetatiles
# 19 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	special SetSootopolisGymCrackedIceMetatiles
# 20 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	end
# 21 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 22 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_CheckSetStairMetatiles::
# 23 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	goto_if_lt VAR_ICE_STEP_COUNT, 8, SootopolisCity_Gym_1F_EventScript_StopCheckingStairs  @ All stairs ice
# 24 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	goto_if_lt VAR_ICE_STEP_COUNT, 28, SootopolisCity_Gym_1F_EventScript_OpenFirstStairs
# 25 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	goto_if_lt VAR_ICE_STEP_COUNT, 67, SootopolisCity_Gym_1F_EventScript_OpenFirstAndSecondStairs
# 26 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	setmetatile 8, 4, METATILE_SootopolisGym_Stairs, FALSE
# 27 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	setmetatile 8, 5, METATILE_SootopolisGym_Stairs, FALSE
# 28 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_OpenFirstAndSecondStairs::
# 29 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	setmetatile 8, 10, METATILE_SootopolisGym_Stairs, FALSE
# 30 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	setmetatile 8, 11, METATILE_SootopolisGym_Stairs, FALSE
# 31 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_OpenFirstStairs::
# 32 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	setmetatile 8, 15, METATILE_SootopolisGym_Stairs, FALSE
# 33 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	setmetatile 8, 16, METATILE_SootopolisGym_Stairs, FALSE
# 34 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_StopCheckingStairs::
# 35 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	return
# 36 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 37 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_OnFrame:
# 38 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	map_script_2 VAR_ICE_STEP_COUNT, 8, SootopolisCity_Gym_1F_EventScript_UnlockFirstStairs
# 39 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	map_script_2 VAR_ICE_STEP_COUNT, 28, SootopolisCity_Gym_1F_EventScript_UnlockSecondStairs
# 40 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	map_script_2 VAR_ICE_STEP_COUNT, 67, SootopolisCity_Gym_1F_EventScript_UnlockThirdStairs
# 41 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	map_script_2 VAR_ICE_STEP_COUNT, 0, SootopolisCity_Gym_1F_EventScript_FallThroughIce
# 42 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.2byte 0
# 43 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 44 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_UnlockFirstStairs::
# 45 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	addvar VAR_ICE_STEP_COUNT, 1
# 46 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	delay 40
# 47 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	playse SE_ICE_STAIRS
# 48 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	call SootopolisCity_Gym_1F_EventScript_CheckSetStairMetatiles
# 49 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	special DrawWholeMapView
# 50 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	end
# 51 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 52 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_UnlockSecondStairs::
# 53 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	addvar VAR_ICE_STEP_COUNT, 1
# 54 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	delay 40
# 55 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	playse SE_ICE_STAIRS
# 56 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	call SootopolisCity_Gym_1F_EventScript_CheckSetStairMetatiles
# 57 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	special DrawWholeMapView
# 58 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	end
# 59 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 60 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_UnlockThirdStairs::
# 61 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	addvar VAR_ICE_STEP_COUNT, 1
# 62 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	delay 40
# 63 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	playse SE_ICE_STAIRS
# 64 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	call SootopolisCity_Gym_1F_EventScript_CheckSetStairMetatiles
# 65 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	special DrawWholeMapView
# 66 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	end
# 67 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 68 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_FallThroughIce::
# 69 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	lockall
# 70 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	delay 20
# 71 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	applymovement LOCALID_PLAYER, SootopolisCity_Gym_1F_Movement_FallThroughIce
# 72 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	waitmovement 0
# 73 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	playse SE_FALL
# 74 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	delay 60
# 75 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	warphole MAP_SOOTOPOLIS_CITY_GYM_B1F
# 76 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	waitstate
# 77 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	end
# 78 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 79 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_Movement_FallThroughIce:
# 80 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	set_invisible
# 81 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	step_end
# 82 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 83 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
// Sootopolis City Gym - Juan
# 84 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_Juan::
# 85 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    lock
# 86 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    faceplayer
# 87 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    goto_if_set FLAG_DEFEATED_SOOTOPOLIS_GYM, SootopolisCity_Gym_1F_EventScript_JuanAfterBattle
# 88 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    getdifficulty VAR_RESULT
# 89 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    goto_if_eq VAR_RESULT, 1, SootopolisCity_Gym_1F_EventScript_JuanHard
# 90 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 91 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    // Casual Mode
# 92 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    trainerbattle_single TRAINER_RIO_CASUAL, SootopolisCity_Gym_1F_Text_JuanIntro, SootopolisCity_Gym_1F_Text_JuanDefeat, SootopolisCity_Gym_1F_EventScript_JuanDefeated, NO_MUSIC
# 93 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    goto SootopolisCity_Gym_1F_EventScript_JuanAfterBattle
# 94 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 95 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_JuanHard::
# 96 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    // Hard Mode
# 97 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    trainerbattle_single TRAINER_JUAN_1, SootopolisCity_Gym_1F_Text_JuanIntro, SootopolisCity_Gym_1F_Text_JuanDefeat, SootopolisCity_Gym_1F_EventScript_JuanDefeated, NO_MUSIC
# 98 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    // Fall through to AfterBattle
# 99 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 100 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_JuanAfterBattle::
# 101 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    goto_if_unset FLAG_RECEIVED_TM_WATER_PULSE, SootopolisCity_Gym_1F_EventScript_GiveWaterPulse2
# 102 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    setorcopyvar VAR_TRAINER_BATTLE_OPPONENT_A, TRAINER_JUAN_1
# 103 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    specialvar VAR_RESULT, ShouldTryRematchBattle
# 104 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    goto_if_eq VAR_RESULT, TRUE, SootopolisCity_Gym_1F_EventScript_JuanRematch
# 105 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    goto_if_unset FLAG_BADGE06_GET, SootopolisCity_Gym_1F_EventScript_GoGetFortreeBadge
# 106 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    msgbox SootopolisCity_Gym_1F_Text_JuanPostBattle, MSGBOX_DEFAULT
# 107 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    release
# 108 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
    end
# 109 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 110 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_JuanDefeated::
# 111 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	message SootopolisCity_Gym_1F_Text_ReceivedRainBadge
# 112 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	waitmessage
# 113 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	call Common_EventScript_PlayGymBadgeFanfare
# 114 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	msgbox SootopolisCity_Gym_1F_Text_ExplainRainBadgeTakeThis, MSGBOX_DEFAULT
# 115 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	setflag FLAG_DEFEATED_SOOTOPOLIS_GYM
# 116 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	setflag FLAG_BADGE08_GET
# 117 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	setflag FLAG_HIDE_SOOTOPOLIS_CITY_RESIDENTS
# 118 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	setflag FLAG_HIDE_SOOTOPOLIS_CITY_STEVEN
# 119 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	setflag FLAG_HIDE_SOOTOPOLIS_CITY_WALLACE
# 120 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	setvar VAR_SOOTOPOLIS_CITY_STATE, 6
# 121 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	clearflag FLAG_HIDE_SOOTOPOLIS_CITY_MAN_1
# 122 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	setvar VAR_0x8008, 8
# 123 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	call Common_EventScript_SetGymTrainers
# 124 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	call SootopolisCity_Gym_1F_EventScript_GiveWaterPulse
# 125 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	closemessage
# 126 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	delay 30
# 127 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	waitfanfare
# 128 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	closemessage
# 129 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	delay 30
# 130 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	release
# 131 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	end
# 132 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 133 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_GiveWaterPulse::
# 134 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	giveitem ITEM_TM_FLIP_TURN
# 135 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 136 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	msgbox SootopolisCity_Gym_1F_Text_ExplainWaterPulse, MSGBOX_DEFAULT
# 137 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	setflag FLAG_RECEIVED_TM_WATER_PULSE
# 138 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	return
# 139 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 140 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_GiveWaterPulse2::
# 141 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	giveitem ITEM_TM_FLIP_TURN
# 142 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 143 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	msgbox SootopolisCity_Gym_1F_Text_ExplainWaterPulse, MSGBOX_DEFAULT
# 144 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	setflag FLAG_RECEIVED_TM_WATER_PULSE
# 145 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	release
# 146 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	end
# 147 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 148 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_GoGetFortreeBadge::
# 149 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	msgbox SootopolisCity_Gym_1F_Text_GoGetFortreeBadge, MSGBOX_DEFAULT
# 150 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	release
# 151 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	end
# 152 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 153 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_JuanRematch::
# 154 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	trainerbattle_rematch_double TRAINER_JUAN_1, SootopolisCity_Gym_1F_Text_JuanPreRematch, SootopolisCity_Gym_1F_Text_JuanRematchDefeat, SootopolisCity_Gym_1F_Text_JuanRematchNeedTwoMons
# 155 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	msgbox SootopolisCity_Gym_1F_Text_JuanPostRematch, MSGBOX_AUTOCLOSE
# 156 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	end
# 157 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 158 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_GymGuide::
# 159 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	lock
# 160 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	faceplayer
# 161 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	goto_if_set FLAG_DEFEATED_SOOTOPOLIS_GYM, SootopolisCity_Gym_1F_EventScript_GymGuidePostVictory
# 162 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	msgbox SootopolisCity_Gym_1F_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 163 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	release
# 164 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	end
# 165 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 166 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_GymGuidePostVictory::
# 167 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	msgbox SootopolisCity_Gym_1F_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 168 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	release
# 169 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	end
# 170 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 171 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_LeftGymStatue::
# 172 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	lockall
# 173 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	goto_if_set FLAG_BADGE08_GET, SootopolisCity_Gym_1F_EventScript_GymStatueCertified
# 174 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	goto SootopolisCity_Gym_1F_EventScript_GymStatue
# 175 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	end
# 176 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 177 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_RightGymStatue::
# 178 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	lockall
# 179 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	goto_if_set FLAG_BADGE08_GET, SootopolisCity_Gym_1F_EventScript_GymStatueCertified
# 180 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	goto SootopolisCity_Gym_1F_EventScript_GymStatue
# 181 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	end
# 182 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 183 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_GymStatueCertified::
# 184 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	msgbox SootopolisCity_Gym_1F_Text_GymStatueCertified, MSGBOX_DEFAULT
# 185 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	releaseall
# 186 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	end
# 187 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 188 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_EventScript_GymStatue::
# 189 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	msgbox SootopolisCity_Gym_1F_Text_GymStatue, MSGBOX_DEFAULT
# 190 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	releaseall
# 191 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	end
# 192 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 193 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_Text_GymGuideAdvice:
# 194 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Yo! How's it going, CHAMPION-\n"
# 195 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "bound {PLAYER}?\p"
# 196 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "SOOTOPOLIS's GYM LEADER RIO is\n"
# 197 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "a master of WATER-type POKéMON.\p"
# 198 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "And, to get to RIO, an icy floor\n"
# 199 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "will hamper your progress…\p"
# 200 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Listen, I'm sorry, but that's all the\n"
# 201 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "advice that I have for you.\p"
# 202 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "The rest of the way, you have to\n"
# 203 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "go for it yourself!$"
# 204 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 205 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_Text_GymGuidePostVictory:
# 206 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Yow! You've beaten even RIO, who\n"
# 207 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "was supposedly the best in all HOENN!\p"
# 208 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Okay! Check out your TRAINER CARD.\p"
# 209 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "If you've gotten all the BADGES, you're\n"
# 210 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "set for the POKéMON LEAGUE challenge!$"
# 211 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 212 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_Text_JuanIntro:
# 213 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "So you're the challenger?\n"
# 214 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Nice. I've been waiting.\p"
# 215 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "I'm RIO! This GYM's LEADER,\n"
# 216 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "and TERRA's older brother.\p"
# 217 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "We grew up in a family\n"
# 218 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "of elite athletes.\p"
# 219 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Discipline was everything.\n"
# 220 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "We trained since we were kids.\p"
# 221 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "I still train every day,\n"
# 222 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "diving deeper and deeper.\p"
# 223 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "I want to explore parts of the sea\n"
# 224 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "no one has ever seen!\p"
# 225 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "TERRA said you had potential.\n"
# 226 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "That is why I'm excited.\p"
# 227 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Show me she wasn't mistaken.$"
# 228 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 229 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
@ NOTE: This defeat text actually causes a buffer overflow. It's about 50 bytes too long for
# 230 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
@ the gDisplayedStringBattle buffer that it's put into, and it stomps all over the gBattleTextBuffs
# 231 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
@ after, as well as the otherwise unused array after that. One wonders if that's the reason for
# 232 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
@ the existence of that unused array of ints.
# 233 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_Text_JuanDefeat:
# 234 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Heh… that was intense.\n"
# 235 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "You really pushed me.\p"
# 236 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Your control and timing were solid.\n"
# 237 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "I can't ignore that.\p"
# 238 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Still, there's always room to grow.\n"
# 239 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Even I train every single day.\p"
# 240 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Strength isn't a destination.\n"
# 241 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "It's discipline, repeated.\p"
# 242 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "You earned this victory.\n"
# 243 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Take the RAIN BADGE.$"
# 244 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 245 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_Text_ReceivedRainBadge:
# 246 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "{PLAYER} received the RAIN BADGE\n"
# 247 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "from RIO.$"
# 248 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 249 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_Text_ExplainRainBadgeTakeThis:
# 250 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Having the RAIN BADGE shall assure you\n"
# 251 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "the full obedience of all your POKéMON\l"
# 252 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "to your every command.\p"
# 253 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "The RAIN BADGE also allows the use\n"
# 254 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "of the HM move WATERFALL to scale\l"
# 255 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "walls of cascading water.\p"
# 256 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "And, so that you never forget the\n"
# 257 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "battle we shared, take this…$"
# 258 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 259 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_Text_ExplainWaterPulse:
# 260 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "The TM I handed you is TM03,\n"
# 261 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "and it contains FLIP TURN.\p"
# 262 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "It attacks, then lets the user switch\n"
# 263 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "with another party POKéMON.$"
# 264 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 265 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_Text_RegisteredJuan:
# 266 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Registered GYM LEADER RIO\n"
# 267 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "in the POKéNAV.$"
# 268 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 269 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_Text_JuanPostBattle:
# 270 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Now I understand something.\p"
# 271 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "I see why TERRA respected you\n"
# 272 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "so much.\p"
# 273 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "You've earned every victory.\n"
# 274 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Not by lucky, but by effort.\p"
# 275 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "If you've gathered all the\n"
# 276 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "GYM BADGES of HOENN,\l"
# 277 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "there's only one path left.\p"
# 278 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Head east, to EVER GRANDE.\n"
# 279 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "The POKEMON LEAGUE awaits.\p"
# 280 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "That's where the strongest\n"
# 281 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "prove themselves.$"
# 282 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 283 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_Text_GoGetFortreeBadge:
# 284 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "There remains but one BADGE to\n"
# 285 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "obtain in HOENN.\p"
# 286 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "If you wish to challenge the POKéMON\n"
# 287 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "LEAGUE, you must obtain the last\l"
# 288 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "BADGE from the GYM in FORTREE.$"
# 289 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 290 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_Text_GymStatue:
# 291 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "SOOTOPOLIS CITY POKéMON GYM$"
# 292 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 293 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_Text_GymStatueCertified:
# 294 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "SOOTOPOLIS CITY POKéMON GYM\p"
# 295 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "RIO'S CERTIFIED TRAINERS:\n"
# 296 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "{PLAYER}$"
# 297 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 298 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_Text_JuanPreRematch:
# 299 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "RIO: Ah, this GYM had returned to its\n"
# 300 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "usual state of serenity…\p"
# 301 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "But our young typhoon has returned\n"
# 302 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "to put us to the test again!\p"
# 303 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Well, my friend, most certainly!\p"
# 304 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "I shall be delighted to dance with you\n"
# 305 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "as often as you wish!$"
# 306 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 307 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_Text_JuanRematchDefeat:
# 308 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Ahahaha, you are the winner!\n"
# 309 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "You have defeated me again!$"
# 310 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 311 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_Text_JuanPostRematch:
# 312 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "RIO: If I told you to become my\n"
# 313 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "apprentice, you will refuse, I am sure.\p"
# 314 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "I would like to make a gift of my coat\n"
# 315 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "to you.\p"
# 316 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "But again, you will refuse.\n"
# 317 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "I imagine that to be so.\p"
# 318 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "And that, my friend, is a certain sign\n"
# 319 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "of nobility!$"
# 320 "data/maps/SootopolisCity_Gym_1F/scripts.pory"

# 321 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
SootopolisCity_Gym_1F_Text_JuanRematchNeedTwoMons:
# 322 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "RIO: Ah, this GYM had returned to its\n"
# 323 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "usual state of serenity…\p"
# 324 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "But our young typhoon has returned\n"
# 325 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "to put us to the test again!\p"
# 326 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Well, my friend, most certainly!\n"
# 327 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "I shall be delighted to dance with you…\p"
# 328 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "Ah, no, no, no.\n"
# 329 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "You have with you but one POKéMON.\p"
# 330 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "I wish that you would return with\n"
# 331 "data/maps/SootopolisCity_Gym_1F/scripts.pory"
	.string "two, perhaps more, POKéMON, please.$"
