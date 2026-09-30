# 1 "data/maps/MauvilleCity_Gym/scripts.pory"

# 2 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_MapScripts::
# 3 "data/maps/MauvilleCity_Gym/scripts.pory"
	map_script MAP_SCRIPT_ON_LOAD, MauvilleCity_Gym_OnLoad
# 4 "data/maps/MauvilleCity_Gym/scripts.pory"
	.byte 0
# 5 "data/maps/MauvilleCity_Gym/scripts.pory"

# 6 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_OnLoad:
# 7 "data/maps/MauvilleCity_Gym/scripts.pory"
	switch VAR_MAUVILLE_GYM_STATE
# 8 "data/maps/MauvilleCity_Gym/scripts.pory"
	case 0, MauvilleCity_Gym_EventScript_UpdateBarriers
# 9 "data/maps/MauvilleCity_Gym/scripts.pory"
	case 1, MauvilleCity_Gym_EventScript_Switch1Pressed
# 10 "data/maps/MauvilleCity_Gym/scripts.pory"
	case 2, MauvilleCity_Gym_EventScript_Switch2Pressed
# 11 "data/maps/MauvilleCity_Gym/scripts.pory"
	case 3, MauvilleCity_Gym_EventScript_Switch3Pressed
# 12 "data/maps/MauvilleCity_Gym/scripts.pory"
	case 4, MauvilleCity_Gym_EventScript_Switch4Pressed
# 13 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 14 "data/maps/MauvilleCity_Gym/scripts.pory"

# 15 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_UpdateBarriers::
# 16 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_MAUVILLE_GYM_BARRIERS_STATE, MauvilleCity_Gym_EventScript_SetAltBarriers
# 17 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 18 "data/maps/MauvilleCity_Gym/scripts.pory"

# 19 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_SetAltBarriers::
# 20 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 3, 11, METATILE_MauvilleGym_RedBeamV1_On, TRUE
# 21 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 3, 12, METATILE_MauvilleGym_RedBeamV2_On, TRUE
# 22 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 3, 13, METATILE_MauvilleGym_PoleTop_On, TRUE
# 23 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 4, 10, METATILE_MauvilleGym_RedBeamH1_On, FALSE
# 24 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 5, 10, METATILE_MauvilleGym_RedBeamH2_On, FALSE
# 25 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 4, 11, METATILE_MauvilleGym_RedBeamH3_On, TRUE
# 26 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 5, 11, METATILE_MauvilleGym_RedBeamH4_On, TRUE
# 27 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 7, 10, METATILE_MauvilleGym_RedBeamH1_On, FALSE
# 28 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 8, 10, METATILE_MauvilleGym_RedBeamH2_On, FALSE
# 29 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 7, 11, METATILE_MauvilleGym_RedBeamH3_On, TRUE
# 30 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 8, 11, METATILE_MauvilleGym_RedBeamH4_On, TRUE
# 31 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 4, 13, METATILE_MauvilleGym_GreenBeamH1_Off, FALSE
# 32 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 5, 13, METATILE_MauvilleGym_GreenBeamH2_Off, FALSE
# 33 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 4, 14, METATILE_MauvilleGym_GreenBeamH3_Off, FALSE
# 34 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 5, 14, METATILE_MauvilleGym_GreenBeamH4_Off, FALSE
# 35 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 1, 10, METATILE_MauvilleGym_GreenBeamH1_Off, FALSE
# 36 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 2, 10, METATILE_MauvilleGym_GreenBeamH2_Off, FALSE
# 37 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 1, 11, METATILE_MauvilleGym_GreenBeamH3_Off, FALSE
# 38 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 2, 11, METATILE_MauvilleGym_GreenBeamH4_Off, FALSE
# 39 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 6, 8, METATILE_MauvilleGym_PoleBottom_On, TRUE
# 40 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 6, 9, METATILE_MauvilleGym_FloorTile, FALSE
# 41 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 6, 10, METATILE_MauvilleGym_PoleTop_Off, FALSE
# 42 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 4, 6, METATILE_MauvilleGym_GreenBeamH1_Off, FALSE
# 43 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 5, 6, METATILE_MauvilleGym_GreenBeamH2_Off, FALSE
# 44 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 4, 7, METATILE_MauvilleGym_GreenBeamH3_Off, FALSE
# 45 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 5, 7, METATILE_MauvilleGym_GreenBeamH4_Off, FALSE
# 46 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 47 "data/maps/MauvilleCity_Gym/scripts.pory"

# 48 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch1Pressed::
# 49 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 0
# 50 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymPressSwitch
# 51 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_UpdateBarriers
# 52 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 53 "data/maps/MauvilleCity_Gym/scripts.pory"

# 54 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch2Pressed::
# 55 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 1
# 56 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymPressSwitch
# 57 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_UpdateBarriers
# 58 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 59 "data/maps/MauvilleCity_Gym/scripts.pory"

# 60 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch3Pressed::
# 61 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 2
# 62 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymPressSwitch
# 63 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_UpdateBarriers
# 64 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 65 "data/maps/MauvilleCity_Gym/scripts.pory"

# 66 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch4Pressed::
# 67 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 3
# 68 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymPressSwitch
# 69 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_UpdateBarriers
# 70 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 71 "data/maps/MauvilleCity_Gym/scripts.pory"

# 72 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_DeactivatePuzzle::
# 73 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymDeactivatePuzzle
# 74 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 75 "data/maps/MauvilleCity_Gym/scripts.pory"

# 76 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Wattson::
# 77 "data/maps/MauvilleCity_Gym/scripts.pory"
	lock
# 78 "data/maps/MauvilleCity_Gym/scripts.pory"
	faceplayer
# 79 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MAUVILLE_GYM, MauvilleCity_Gym_AfterBattle
# 80 "data/maps/MauvilleCity_Gym/scripts.pory"
	getdifficulty VAR_RESULT
# 81 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 1, MauvilleCity_Gym_WattsonHard
# 82 "data/maps/MauvilleCity_Gym/scripts.pory"

# 83 "data/maps/MauvilleCity_Gym/scripts.pory"
	@ Normal Mode
# 84 "data/maps/MauvilleCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_DEN, EMOTE_NORMAL
# 85 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_WattsonIntro, MSGBOX_DEFAULT
# 86 "data/maps/MauvilleCity_Gym/scripts.pory"
	removefieldmugshot
# 87 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_DEN_CASUAL, MauvilleCity_Gym_Text_WattsonDefeat
# 88 "data/maps/MauvilleCity_Gym/scripts.pory"
	call MauvilleCity_Gym_EventScript_WattsonDefeated
# 89 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_AfterBattle
# 90 "data/maps/MauvilleCity_Gym/scripts.pory"

# 91 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_WattsonHard::
# 92 "data/maps/MauvilleCity_Gym/scripts.pory"
	@ Hard Mode
# 93 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_WATTSON_1, MauvilleCity_Gym_Text_WattsonIntro, MauvilleCity_Gym_Text_WattsonDefeat, MauvilleCity_Gym_EventScript_WattsonDefeated, NO_MUSIC
# 94 "data/maps/MauvilleCity_Gym/scripts.pory"

# 95 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_AfterBattle::
# 96 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_unset FLAG_RECEIVED_TM_SHOCK_WAVE, MauvilleCity_Gym_EventScript_GiveShockWave2
# 97 "data/maps/MauvilleCity_Gym/scripts.pory"
	setorcopyvar VAR_TRAINER_BATTLE_OPPONENT_A, TRAINER_WATTSON_1
# 98 "data/maps/MauvilleCity_Gym/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 99 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_Gym_EventScript_WattsonRematch
# 100 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_NEW_MAUVILLE_STATE, 2, MauvilleCity_Gym_EventScript_CompletedNewMauville
# 101 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_WattsonPostBattle, MSGBOX_DEFAULT
# 102 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 103 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 104 "data/maps/MauvilleCity_Gym/scripts.pory"

# 105 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_WattsonDefeated::
# 106 "data/maps/MauvilleCity_Gym/scripts.pory"
	message MauvilleCity_Gym_Text_ReceivedDynamoBadge
# 107 "data/maps/MauvilleCity_Gym/scripts.pory"
	waitmessage
# 108 "data/maps/MauvilleCity_Gym/scripts.pory"
	call Common_EventScript_PlayGymBadgeFanfare
# 109 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_ExplainDynamoBadgeTakeThis, MSGBOX_DEFAULT
# 110 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_SLATEPORT_OUTSIDE_MUSEUM_STATE, 3
# 111 "data/maps/MauvilleCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_VERDANTURF_TOWN_SCOTT
# 112 "data/maps/MauvilleCity_Gym/scripts.pory"
	setflag FLAG_DEFEATED_MAUVILLE_GYM
# 113 "data/maps/MauvilleCity_Gym/scripts.pory"
	setflag FLAG_BADGE03_GET
# 114 "data/maps/MauvilleCity_Gym/scripts.pory"
	addvar VAR_PETALBURG_GYM_STATE, 1
# 115 "data/maps/MauvilleCity_Gym/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 6, Common_EventScript_ReadyPetalburgGymForBattle
# 116 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8008, 3
# 117 "data/maps/MauvilleCity_Gym/scripts.pory"
	call Common_EventScript_SetGymTrainers
# 118 "data/maps/MauvilleCity_Gym/scripts.pory"
	call MauvilleCity_Gym_EventScript_GiveShockWave
# 119 "data/maps/MauvilleCity_Gym/scripts.pory"
	closemessage
# 120 "data/maps/MauvilleCity_Gym/scripts.pory"
	delay 30
# 121 "data/maps/MauvilleCity_Gym/scripts.pory"
	waitfanfare
# 122 "data/maps/MauvilleCity_Gym/scripts.pory"
	closemessage
# 123 "data/maps/MauvilleCity_Gym/scripts.pory"
	delay 30
# 124 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 125 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 126 "data/maps/MauvilleCity_Gym/scripts.pory"

# 127 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GiveShockWave2::
# 128 "data/maps/MauvilleCity_Gym/scripts.pory"
	giveitem ITEM_TM_VOLT_SWITCH
# 129 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 130 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_ExplainShockWave, MSGBOX_DEFAULT
# 131 "data/maps/MauvilleCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_SHOCK_WAVE
# 132 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 133 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 134 "data/maps/MauvilleCity_Gym/scripts.pory"

# 135 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GiveShockWave::
# 136 "data/maps/MauvilleCity_Gym/scripts.pory"
	giveitem ITEM_TM_VOLT_SWITCH
# 137 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 138 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_ExplainShockWave, MSGBOX_DEFAULT
# 139 "data/maps/MauvilleCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_SHOCK_WAVE
# 140 "data/maps/MauvilleCity_Gym/scripts.pory"
	return
# 141 "data/maps/MauvilleCity_Gym/scripts.pory"

# 142 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_CompletedNewMauville::
# 143 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_WattsonGoForthAndEndeavor, MSGBOX_DEFAULT
# 144 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 145 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 146 "data/maps/MauvilleCity_Gym/scripts.pory"

# 147 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_WattsonRematch::
# 148 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_rematch_double TRAINER_WATTSON_1, MauvilleCity_Gym_Text_WattsonPreRematch, MauvilleCity_Gym_Text_WattsonRematchDefeat, MauvilleCity_Gym_Text_WattsonRematchNeedTwoMons
# 149 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_WattsonPostRematch, MSGBOX_AUTOCLOSE
# 150 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 151 "data/maps/MauvilleCity_Gym/scripts.pory"

# 152 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch1::
# 153 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 154 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MAUVILLE_GYM, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 155 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_MAUVILLE_GYM_STATE, 1, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 156 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_MAUVILLE_GYM_STATE, 1
# 157 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 0
# 158 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_PressFloorSwitch
# 159 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 160 "data/maps/MauvilleCity_Gym/scripts.pory"

# 161 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch2::
# 162 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 163 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MAUVILLE_GYM, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 164 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_MAUVILLE_GYM_STATE, 2, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 165 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_MAUVILLE_GYM_STATE, 2
# 166 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 1
# 167 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_PressFloorSwitch
# 168 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 169 "data/maps/MauvilleCity_Gym/scripts.pory"

# 170 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch3::
# 171 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 172 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MAUVILLE_GYM, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 173 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_MAUVILLE_GYM_STATE, 3, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 174 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_MAUVILLE_GYM_STATE, 3
# 175 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 2
# 176 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_PressFloorSwitch
# 177 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 178 "data/maps/MauvilleCity_Gym/scripts.pory"

# 179 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch4::
# 180 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 181 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MAUVILLE_GYM, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 182 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_MAUVILLE_GYM_STATE, 4, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 183 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_MAUVILLE_GYM_STATE, 4
# 184 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 3
# 185 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_PressFloorSwitch
# 186 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 187 "data/maps/MauvilleCity_Gym/scripts.pory"

# 188 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_PressFloorSwitch::
# 189 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymSetDefaultBarriers
# 190 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymPressSwitch
# 191 "data/maps/MauvilleCity_Gym/scripts.pory"
	special DrawWholeMapView
# 192 "data/maps/MauvilleCity_Gym/scripts.pory"
	playse SE_UNLOCK
# 193 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_MAUVILLE_GYM_BARRIERS_STATE, MauvilleCity_Gym_EventScript_ClearBarriersAltState
# 194 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_unset FLAG_MAUVILLE_GYM_BARRIERS_STATE, MauvilleCity_Gym_EventScript_SetBarriersAltState
# 195 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 196 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 197 "data/maps/MauvilleCity_Gym/scripts.pory"

# 198 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_SwitchDoNothing::
# 199 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 200 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 201 "data/maps/MauvilleCity_Gym/scripts.pory"

# 202 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_SetBarriersAltState::
# 203 "data/maps/MauvilleCity_Gym/scripts.pory"
	setflag FLAG_MAUVILLE_GYM_BARRIERS_STATE
# 204 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 205 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 206 "data/maps/MauvilleCity_Gym/scripts.pory"

# 207 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_ClearBarriersAltState::
# 208 "data/maps/MauvilleCity_Gym/scripts.pory"
	clearflag FLAG_MAUVILLE_GYM_BARRIERS_STATE
# 209 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 210 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 211 "data/maps/MauvilleCity_Gym/scripts.pory"

# 212 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Kirk::
# 213 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_KIRK, MauvilleCity_Gym_Text_KirkIntro, MauvilleCity_Gym_Text_KirkDefeat
# 214 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_KirkPostBattle, MSGBOX_AUTOCLOSE
# 215 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 216 "data/maps/MauvilleCity_Gym/scripts.pory"

# 217 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Shawn::
# 218 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_SHAWN, MauvilleCity_Gym_Text_ShawnIntro, MauvilleCity_Gym_Text_ShawnDefeat
# 219 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_ShawnPostBattle, MSGBOX_AUTOCLOSE
# 220 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 221 "data/maps/MauvilleCity_Gym/scripts.pory"

# 222 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Ben::
# 223 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_BEN, MauvilleCity_Gym_Text_BenIntro, MauvilleCity_Gym_Text_BenDefeat
# 224 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_BenPostBattle, MSGBOX_AUTOCLOSE
# 225 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 226 "data/maps/MauvilleCity_Gym/scripts.pory"

# 227 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Vivian::
# 228 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_VIVIAN, MauvilleCity_Gym_Text_VivianIntro, MauvilleCity_Gym_Text_VivianDefeat
# 229 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_VivianPostBattle, MSGBOX_AUTOCLOSE
# 230 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 231 "data/maps/MauvilleCity_Gym/scripts.pory"

# 232 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Angelo::
# 233 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_ANGELO, MauvilleCity_Gym_Text_AngeloIntro, MauvilleCity_Gym_Text_AngeloDefeat
# 234 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_AngeloPostBattle, MSGBOX_AUTOCLOSE
# 235 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 236 "data/maps/MauvilleCity_Gym/scripts.pory"

# 237 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GymGuide::
# 238 "data/maps/MauvilleCity_Gym/scripts.pory"
	lock
# 239 "data/maps/MauvilleCity_Gym/scripts.pory"
	faceplayer
# 240 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MAUVILLE_GYM, MauvilleCity_Gym_EventScript_GymGuidePostVictory
# 241 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 242 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 243 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 244 "data/maps/MauvilleCity_Gym/scripts.pory"

# 245 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GymGuidePostVictory::
# 246 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 247 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 248 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 249 "data/maps/MauvilleCity_Gym/scripts.pory"

# 250 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_LeftGymStatue::
# 251 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 252 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE03_GET, MauvilleCity_Gym_EventScript_GymStatueCertified
# 253 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_GymStatue
# 254 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 255 "data/maps/MauvilleCity_Gym/scripts.pory"

# 256 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_RightGymStatue::
# 257 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 258 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE03_GET, MauvilleCity_Gym_EventScript_GymStatueCertified
# 259 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_GymStatue
# 260 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 261 "data/maps/MauvilleCity_Gym/scripts.pory"

# 262 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GymStatueCertified::
# 263 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 264 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 265 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 266 "data/maps/MauvilleCity_Gym/scripts.pory"

# 267 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GymStatue::
# 268 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 269 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 270 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 271 "data/maps/MauvilleCity_Gym/scripts.pory"

# 272 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_GymGuideAdvice:
# 273 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Hey, how's it going, CHAMPION-\n"
# 274 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "bound {PLAYER}?\p"
# 275 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN, the LEADER of MAUVILLE\n"
# 276 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "GYM, uses ELECTRIC-type POKéMON.\p"
# 277 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "If you challenge him with WATER-type\n"
# 278 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "POKéMON, he'll zap them! Bzzt!\p"
# 279 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "And, he's put in magnetized plates\n"
# 280 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "all over his GYM! Eccentric!\p"
# 281 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Hey, go for it!$"
# 282 "data/maps/MauvilleCity_Gym/scripts.pory"

# 283 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_GymGuidePostVictory:
# 284 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Whoa, you're electrifying!\n"
# 285 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Nice job, kid!$"
# 286 "data/maps/MauvilleCity_Gym/scripts.pory"

# 287 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_KirkIntro:
# 288 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "My electric soul, it'll shatter your\n"
# 289 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "dreams whole, whoa-yeahah!$"
# 290 "data/maps/MauvilleCity_Gym/scripts.pory"

# 291 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_KirkDefeat:
# 292 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "That was plugged in, amped up,\n"
# 293 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "over-driven electric, man!$"
# 294 "data/maps/MauvilleCity_Gym/scripts.pory"

# 295 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_KirkPostBattle:
# 296 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "POKéMON and rock, it's all about heart,\n"
# 297 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "whoa-yeah!$"
# 298 "data/maps/MauvilleCity_Gym/scripts.pory"

# 299 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_ShawnIntro:
# 300 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "I trained under DEN!\n"
# 301 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "No way I'm losing easily!$"
# 302 "data/maps/MauvilleCity_Gym/scripts.pory"

# 303 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_ShawnDefeat:
# 304 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Overloaded…\n"
# 305 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "System failure…$"
# 306 "data/maps/MauvilleCity_Gym/scripts.pory"

# 307 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_ShawnPostBattle:
# 308 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN isn't just strong,\n"
# 309 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "he's a genius.\p"
# 310 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "He solves insane calculations\n"
# 311 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "while building his machines.\p"
# 312 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "He says only those who can think\n"
# 313 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "fast deserve to challenge him.$"
# 314 "data/maps/MauvilleCity_Gym/scripts.pory"

# 315 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_BenIntro:
# 316 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "This GYM is full of puzzles!\n"
# 317 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Think you can handle them?$"
# 318 "data/maps/MauvilleCity_Gym/scripts.pory"

# 319 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_BenDefeat:
# 320 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Guess I wasn't clever enough…$"
# 321 "data/maps/MauvilleCity_Gym/scripts.pory"

# 322 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_BenPostBattle:
# 323 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN believes strength isn't enough.\p"
# 324 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "He says only TRAINERS with sharp\n"
# 325 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "minds deserve to face him.\p"
# 326 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Every battle is a test of power\n"
# 327 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "and intellect.$"
# 328 "data/maps/MauvilleCity_Gym/scripts.pory"

# 329 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_VivianIntro:
# 330 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Careful now!\p"
# 331 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Between my charm and my POKéMON,\n"
# 332 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "you might get shocked!$"
# 333 "data/maps/MauvilleCity_Gym/scripts.pory"

# 334 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_VivianDefeat:
# 335 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Wow…\p"
# 336 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "That shock was real.$"
# 337 "data/maps/MauvilleCity_Gym/scripts.pory"

# 338 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_VivianPostBattle:
# 339 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN isn't like other LEADERS.\p"
# 340 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Even since he was a child,\n"
# 341 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "he solved impossible formulas.\p"
# 342 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Machines, energy, circuits…\n"
# 343 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "they make sense to him.\p"
# 344 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Sometimes I wonder if\n"
# 345 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "electricity thinks like DEN does.$"
# 346 "data/maps/MauvilleCity_Gym/scripts.pory"

# 347 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_AngeloIntro:
# 348 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "You came for DEN?\p"
# 349 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Heh… be careful.\n"
# 350 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "That man isn't normal.\p"
# 351 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Electricity listens to him.$"
# 352 "data/maps/MauvilleCity_Gym/scripts.pory"

# 353 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_AngeloDefeat:
# 354 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Tch… figures.\p"
# 355 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "If you beat me,\n"
# 356 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN will fry you.$"
# 357 "data/maps/MauvilleCity_Gym/scripts.pory"

# 358 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_AngeloPostBattle:
# 359 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Hey, word of advice!\p"
# 360 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Don't get too close to DEN.\p"
# 361 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "That guy is always carrying\n"
# 362 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "some high-voltage machine!\p"
# 363 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Hahaha! Seriously, though...\n"
# 364 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "One wrong step and ZAP!$"
# 365 "data/maps/MauvilleCity_Gym/scripts.pory"

# 366 "data/maps/MauvilleCity_Gym/scripts.pory"
 MauvilleCity_Gym_Text_WattsonIntro:
# 367 "data/maps/MauvilleCity_Gym/scripts.pory"
    .string "Oh?\n"
# 368 "data/maps/MauvilleCity_Gym/scripts.pory"
    .string "You made it through my puzzles?\p"
# 369 "data/maps/MauvilleCity_Gym/scripts.pory"
    .string "Interesting. I admire that!\p"
# 370 "data/maps/MauvilleCity_Gym/scripts.pory"
    .string "I've taken more shocks than\n"
# 371 "data/maps/MauvilleCity_Gym/scripts.pory"
    .string "any normal human should survive.\p"
# 372 "data/maps/MauvilleCity_Gym/scripts.pory"
    .string "It tickles sometimes, right?\n"
# 373 "data/maps/MauvilleCity_Gym/scripts.pory"
    .string "You get used to it over time, or die.\p"
# 374 "data/maps/MauvilleCity_Gym/scripts.pory"
    .string "Hehehe.\p"
# 375 "data/maps/MauvilleCity_Gym/scripts.pory"
    .string "You've probably heard of me.\n"
# 376 "data/maps/MauvilleCity_Gym/scripts.pory"
    .string "I'm DEN! The genius! Yes!\p"
# 377 "data/maps/MauvilleCity_Gym/scripts.pory"
    .string "When I was a child, I was already\n"
# 378 "data/maps/MauvilleCity_Gym/scripts.pory"
    .string "solving impossible math problems!\p"
# 379 "data/maps/MauvilleCity_Gym/scripts.pory"
    .string "Boring! I always wanted more!\p"
# 380 "data/maps/MauvilleCity_Gym/scripts.pory"
    .string "Electricity moves the world!\n"
# 381 "data/maps/MauvilleCity_Gym/scripts.pory"
    .string "I want to understand everything!\p"
# 382 "data/maps/MauvilleCity_Gym/scripts.pory"
    .string "Sometimes I have epiphanies in battles.\n"
# 383 "data/maps/MauvilleCity_Gym/scripts.pory"
    .string "Let's electrify things! Help me out, now!$"
# 384 "data/maps/MauvilleCity_Gym/scripts.pory"

# 385 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_WattsonDefeat:
# 386 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Ahahaha…!\p"
# 387 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "My circuits failed!\n"
# 388 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "What a shock… what a shock!\p"
# 389 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "You earned this.\n"
# 390 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Take this BADGE.$"
# 391 "data/maps/MauvilleCity_Gym/scripts.pory"

# 392 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_ReceivedDynamoBadge:
# 393 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "{PLAYER} received the DYNAMO BADGE\n"
# 394 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "from DEN.$"
# 395 "data/maps/MauvilleCity_Gym/scripts.pory"

# 396 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_ExplainDynamoBadgeTakeThis:
# 397 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "With the DYNAMO BADGE, POKéMON can\n"
# 398 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "use ROCK SMASH out of battle.\p"
# 399 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "And, it will make your POKéMON a little\n"
# 400 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "bit faster, too.\p"
# 401 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Hmm…\n"
# 402 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "You should take this, too!$"
# 403 "data/maps/MauvilleCity_Gym/scripts.pory"

# 404 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_ExplainShockWave:
# 405 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "That TM34 there contains VOLT SWITCH.\p"
# 406 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "It attacks with electricity, then\n"
# 407 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "lets the user switch out!$"
# 408 "data/maps/MauvilleCity_Gym/scripts.pory"

# 409 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_RegisteredWattson:
# 410 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "I expect great things from you.$"
# 411 "data/maps/MauvilleCity_Gym/scripts.pory"

# 412 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_WattsonPostBattle:
# 413 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Heh… interesting.\p"
# 414 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "You kept up with my circuits.\n"
# 415 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Not many can do that.$"
# 416 "data/maps/MauvilleCity_Gym/scripts.pory"

# 417 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_WattsonGoForthAndEndeavor:
# 418 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "This was fun.\p"
# 419 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Go test yourself out there.\n"
# 420 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Hoenn won't go easy on you.$"
# 421 "data/maps/MauvilleCity_Gym/scripts.pory"

# 422 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_GymStatue:
# 423 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "MAUVILLE CITY POKéMON GYM$"
# 424 "data/maps/MauvilleCity_Gym/scripts.pory"

# 425 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_GymStatueCertified:
# 426 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "MAUVILLE CITY POKéMON GYM\p"
# 427 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN'S CERTIFIED TRAINERS:\n"
# 428 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "{PLAYER}$"
# 429 "data/maps/MauvilleCity_Gym/scripts.pory"

# 430 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_WattsonPreRematch:
# 431 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN: Ah-ha! Here at last!\n"
# 432 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "I know what you want.\l"
# 433 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "You want to battle my POKéMON!\p"
# 434 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Wahahahaha!\p"
# 435 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "I'll make sparks fly from you!\n"
# 436 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Don't say I didn't warn you!$"
# 437 "data/maps/MauvilleCity_Gym/scripts.pory"

# 438 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_WattsonRematchDefeat:
# 439 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Oof…\n"
# 440 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Our batteries ran dry…$"
# 441 "data/maps/MauvilleCity_Gym/scripts.pory"

# 442 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_WattsonPostRematch:
# 443 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN: We'll have to recharge our\n"
# 444 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "batteries again.\p"
# 445 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "When we're fully charged up, we'll\n"
# 446 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "gladly accept your challenge.\p"
# 447 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "So, come back again sometime,\n"
# 448 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "won't you?$"
# 449 "data/maps/MauvilleCity_Gym/scripts.pory"

# 450 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_WattsonRematchNeedTwoMons:
# 451 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN: Ah-ha! Here at last!\n"
# 452 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "I know what you want.\l"
# 453 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "You want to battle my POKéMON!\p"
# 454 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Wahahahaha!\p"
# 455 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Oops! Wait!\n"
# 456 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "You've only one POKéMON with you!\p"
# 457 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Come see me with two or more\n"
# 458 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "POKéMON, all right?$"
