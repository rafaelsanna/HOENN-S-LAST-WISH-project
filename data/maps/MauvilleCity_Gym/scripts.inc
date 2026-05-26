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
	goto_if_set FLAG_DEFEATED_MAUVILLE_GYM, MauvilleCity_Gym_EventScript_DeactivatePuzzle
# 8 "data/maps/MauvilleCity_Gym/scripts.pory"
	switch VAR_MAUVILLE_GYM_STATE
# 9 "data/maps/MauvilleCity_Gym/scripts.pory"
	case 0, MauvilleCity_Gym_EventScript_UpdateBarriers
# 10 "data/maps/MauvilleCity_Gym/scripts.pory"
	case 1, MauvilleCity_Gym_EventScript_Switch1Pressed
# 11 "data/maps/MauvilleCity_Gym/scripts.pory"
	case 2, MauvilleCity_Gym_EventScript_Switch2Pressed
# 12 "data/maps/MauvilleCity_Gym/scripts.pory"
	case 3, MauvilleCity_Gym_EventScript_Switch3Pressed
# 13 "data/maps/MauvilleCity_Gym/scripts.pory"
	case 4, MauvilleCity_Gym_EventScript_Switch4Pressed
# 14 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 15 "data/maps/MauvilleCity_Gym/scripts.pory"

# 16 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_UpdateBarriers::
# 17 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_MAUVILLE_GYM_BARRIERS_STATE, MauvilleCity_Gym_EventScript_SetAltBarriers
# 18 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 19 "data/maps/MauvilleCity_Gym/scripts.pory"

# 20 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_SetAltBarriers::
# 21 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 3, 11, METATILE_MauvilleGym_RedBeamV1_On, TRUE
# 22 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 3, 12, METATILE_MauvilleGym_RedBeamV2_On, TRUE
# 23 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 3, 13, METATILE_MauvilleGym_PoleTop_On, TRUE
# 24 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 4, 10, METATILE_MauvilleGym_RedBeamH1_On, FALSE
# 25 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 5, 10, METATILE_MauvilleGym_RedBeamH2_On, FALSE
# 26 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 4, 11, METATILE_MauvilleGym_RedBeamH3_On, TRUE
# 27 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 5, 11, METATILE_MauvilleGym_RedBeamH4_On, TRUE
# 28 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 7, 10, METATILE_MauvilleGym_RedBeamH1_On, FALSE
# 29 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 8, 10, METATILE_MauvilleGym_RedBeamH2_On, FALSE
# 30 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 7, 11, METATILE_MauvilleGym_RedBeamH3_On, TRUE
# 31 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 8, 11, METATILE_MauvilleGym_RedBeamH4_On, TRUE
# 32 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 4, 13, METATILE_MauvilleGym_GreenBeamH1_Off, FALSE
# 33 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 5, 13, METATILE_MauvilleGym_GreenBeamH2_Off, FALSE
# 34 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 4, 14, METATILE_MauvilleGym_GreenBeamH3_Off, FALSE
# 35 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 5, 14, METATILE_MauvilleGym_GreenBeamH4_Off, FALSE
# 36 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 1, 10, METATILE_MauvilleGym_GreenBeamH1_Off, FALSE
# 37 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 2, 10, METATILE_MauvilleGym_GreenBeamH2_Off, FALSE
# 38 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 1, 11, METATILE_MauvilleGym_GreenBeamH3_Off, FALSE
# 39 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 2, 11, METATILE_MauvilleGym_GreenBeamH4_Off, FALSE
# 40 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 6, 8, METATILE_MauvilleGym_PoleBottom_On, TRUE
# 41 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 6, 9, METATILE_MauvilleGym_FloorTile, FALSE
# 42 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 6, 10, METATILE_MauvilleGym_PoleTop_Off, FALSE
# 43 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 4, 6, METATILE_MauvilleGym_GreenBeamH1_Off, FALSE
# 44 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 5, 6, METATILE_MauvilleGym_GreenBeamH2_Off, FALSE
# 45 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 4, 7, METATILE_MauvilleGym_GreenBeamH3_Off, FALSE
# 46 "data/maps/MauvilleCity_Gym/scripts.pory"
	setmetatile 5, 7, METATILE_MauvilleGym_GreenBeamH4_Off, FALSE
# 47 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 48 "data/maps/MauvilleCity_Gym/scripts.pory"

# 49 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch1Pressed::
# 50 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 0
# 51 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymPressSwitch
# 52 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_UpdateBarriers
# 53 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 54 "data/maps/MauvilleCity_Gym/scripts.pory"

# 55 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch2Pressed::
# 56 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 1
# 57 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymPressSwitch
# 58 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_UpdateBarriers
# 59 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 60 "data/maps/MauvilleCity_Gym/scripts.pory"

# 61 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch3Pressed::
# 62 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 2
# 63 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymPressSwitch
# 64 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_UpdateBarriers
# 65 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 66 "data/maps/MauvilleCity_Gym/scripts.pory"

# 67 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch4Pressed::
# 68 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 3
# 69 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymPressSwitch
# 70 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_UpdateBarriers
# 71 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 72 "data/maps/MauvilleCity_Gym/scripts.pory"

# 73 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_DeactivatePuzzle::
# 74 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymDeactivatePuzzle
# 75 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 76 "data/maps/MauvilleCity_Gym/scripts.pory"

# 77 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Wattson::
# 78 "data/maps/MauvilleCity_Gym/scripts.pory"
	lock
# 79 "data/maps/MauvilleCity_Gym/scripts.pory"
	faceplayer
# 80 "data/maps/MauvilleCity_Gym/scripts.pory"
	getdifficulty VAR_RESULT
# 81 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 1, MauvilleCity_Gym_WattsonHard
# 82 "data/maps/MauvilleCity_Gym/scripts.pory"

# 83 "data/maps/MauvilleCity_Gym/scripts.pory"
	@ Normal Mode
# 84 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_DEN_CASUAL, MauvilleCity_Gym_Text_WattsonIntro, MauvilleCity_Gym_Text_WattsonDefeat, MauvilleCity_Gym_EventScript_WattsonDefeated, NO_MUSIC
# 85 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_AfterBattle
# 86 "data/maps/MauvilleCity_Gym/scripts.pory"

# 87 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_WattsonHard::
# 88 "data/maps/MauvilleCity_Gym/scripts.pory"
	@ Hard Mode
# 89 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_WATTSON_1, MauvilleCity_Gym_Text_WattsonIntro, MauvilleCity_Gym_Text_WattsonDefeat, MauvilleCity_Gym_EventScript_WattsonDefeated, NO_MUSIC
# 90 "data/maps/MauvilleCity_Gym/scripts.pory"

# 91 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_AfterBattle::
# 92 "data/maps/MauvilleCity_Gym/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 93 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_Gym_EventScript_WattsonRematch
# 94 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_unset FLAG_RECEIVED_TM_SHOCK_WAVE, MauvilleCity_Gym_EventScript_GiveShockWave2
# 95 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_NEW_MAUVILLE_STATE, 2, MauvilleCity_Gym_EventScript_CompletedNewMauville
# 96 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_WattsonPostBattle, MSGBOX_DEFAULT
# 97 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 98 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 99 "data/maps/MauvilleCity_Gym/scripts.pory"

# 100 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_WattsonDefeated::
# 101 "data/maps/MauvilleCity_Gym/scripts.pory"
	message MauvilleCity_Gym_Text_ReceivedDynamoBadge
# 102 "data/maps/MauvilleCity_Gym/scripts.pory"
	waitmessage
# 103 "data/maps/MauvilleCity_Gym/scripts.pory"
	call Common_EventScript_PlayGymBadgeFanfare
# 104 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_ExplainDynamoBadgeTakeThis, MSGBOX_DEFAULT
# 105 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_SLATEPORT_OUTSIDE_MUSEUM_STATE, 3
# 106 "data/maps/MauvilleCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_VERDANTURF_TOWN_SCOTT
# 107 "data/maps/MauvilleCity_Gym/scripts.pory"
	setflag FLAG_DEFEATED_MAUVILLE_GYM
# 108 "data/maps/MauvilleCity_Gym/scripts.pory"
	setflag FLAG_BADGE03_GET
# 109 "data/maps/MauvilleCity_Gym/scripts.pory"
	addvar VAR_PETALBURG_GYM_STATE, 1
# 110 "data/maps/MauvilleCity_Gym/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 6, Common_EventScript_ReadyPetalburgGymForBattle
# 111 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8008, 3
# 112 "data/maps/MauvilleCity_Gym/scripts.pory"
	call Common_EventScript_SetGymTrainers
# 113 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymDeactivatePuzzle
# 114 "data/maps/MauvilleCity_Gym/scripts.pory"
	special DrawWholeMapView
# 115 "data/maps/MauvilleCity_Gym/scripts.pory"
	playse SE_UNLOCK
# 116 "data/maps/MauvilleCity_Gym/scripts.pory"
	call MauvilleCity_Gym_EventScript_GiveShockWave
# 117 "data/maps/MauvilleCity_Gym/scripts.pory"
	closemessage
# 118 "data/maps/MauvilleCity_Gym/scripts.pory"
	delay 30
# 119 "data/maps/MauvilleCity_Gym/scripts.pory"
	waitfanfare
# 120 "data/maps/MauvilleCity_Gym/scripts.pory"
	closemessage
# 121 "data/maps/MauvilleCity_Gym/scripts.pory"
	delay 30
# 122 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 123 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 124 "data/maps/MauvilleCity_Gym/scripts.pory"

# 125 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GiveShockWave2::
# 126 "data/maps/MauvilleCity_Gym/scripts.pory"
	giveitem ITEM_TM_SHOCK_WAVE
# 127 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 128 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_ExplainShockWave, MSGBOX_DEFAULT
# 129 "data/maps/MauvilleCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_SHOCK_WAVE
# 130 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 131 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 132 "data/maps/MauvilleCity_Gym/scripts.pory"

# 133 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GiveShockWave::
# 134 "data/maps/MauvilleCity_Gym/scripts.pory"
	giveitem ITEM_TM_SHOCK_WAVE
# 135 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 136 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_ExplainShockWave, MSGBOX_DEFAULT
# 137 "data/maps/MauvilleCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_SHOCK_WAVE
# 138 "data/maps/MauvilleCity_Gym/scripts.pory"
	return
# 139 "data/maps/MauvilleCity_Gym/scripts.pory"

# 140 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_CompletedNewMauville::
# 141 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_WattsonGoForthAndEndeavor, MSGBOX_DEFAULT
# 142 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 143 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 144 "data/maps/MauvilleCity_Gym/scripts.pory"

# 145 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_WattsonRematch::
# 146 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_rematch_double TRAINER_WATTSON_1, MauvilleCity_Gym_Text_WattsonPreRematch, MauvilleCity_Gym_Text_WattsonRematchDefeat, MauvilleCity_Gym_Text_WattsonRematchNeedTwoMons
# 147 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_WattsonPostRematch, MSGBOX_AUTOCLOSE
# 148 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 149 "data/maps/MauvilleCity_Gym/scripts.pory"

# 150 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch1::
# 151 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 152 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MAUVILLE_GYM, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 153 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_MAUVILLE_GYM_STATE, 1, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 154 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_MAUVILLE_GYM_STATE, 1
# 155 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 0
# 156 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_PressFloorSwitch
# 157 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 158 "data/maps/MauvilleCity_Gym/scripts.pory"

# 159 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch2::
# 160 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 161 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MAUVILLE_GYM, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 162 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_MAUVILLE_GYM_STATE, 2, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 163 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_MAUVILLE_GYM_STATE, 2
# 164 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 1
# 165 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_PressFloorSwitch
# 166 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 167 "data/maps/MauvilleCity_Gym/scripts.pory"

# 168 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch3::
# 169 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 170 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MAUVILLE_GYM, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 171 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_MAUVILLE_GYM_STATE, 3, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 172 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_MAUVILLE_GYM_STATE, 3
# 173 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 2
# 174 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_PressFloorSwitch
# 175 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 176 "data/maps/MauvilleCity_Gym/scripts.pory"

# 177 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch4::
# 178 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 179 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MAUVILLE_GYM, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 180 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_MAUVILLE_GYM_STATE, 4, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 181 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_MAUVILLE_GYM_STATE, 4
# 182 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 3
# 183 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_PressFloorSwitch
# 184 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 185 "data/maps/MauvilleCity_Gym/scripts.pory"

# 186 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_PressFloorSwitch::
# 187 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymSetDefaultBarriers
# 188 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymPressSwitch
# 189 "data/maps/MauvilleCity_Gym/scripts.pory"
	special DrawWholeMapView
# 190 "data/maps/MauvilleCity_Gym/scripts.pory"
	playse SE_UNLOCK
# 191 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_MAUVILLE_GYM_BARRIERS_STATE, MauvilleCity_Gym_EventScript_ClearBarriersAltState
# 192 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_unset FLAG_MAUVILLE_GYM_BARRIERS_STATE, MauvilleCity_Gym_EventScript_SetBarriersAltState
# 193 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 194 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 195 "data/maps/MauvilleCity_Gym/scripts.pory"

# 196 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_SwitchDoNothing::
# 197 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 198 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 199 "data/maps/MauvilleCity_Gym/scripts.pory"

# 200 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_SetBarriersAltState::
# 201 "data/maps/MauvilleCity_Gym/scripts.pory"
	setflag FLAG_MAUVILLE_GYM_BARRIERS_STATE
# 202 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 203 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 204 "data/maps/MauvilleCity_Gym/scripts.pory"

# 205 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_ClearBarriersAltState::
# 206 "data/maps/MauvilleCity_Gym/scripts.pory"
	clearflag FLAG_MAUVILLE_GYM_BARRIERS_STATE
# 207 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 208 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 209 "data/maps/MauvilleCity_Gym/scripts.pory"

# 210 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Kirk::
# 211 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_KIRK, MauvilleCity_Gym_Text_KirkIntro, MauvilleCity_Gym_Text_KirkDefeat
# 212 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_KirkPostBattle, MSGBOX_AUTOCLOSE
# 213 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 214 "data/maps/MauvilleCity_Gym/scripts.pory"

# 215 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Shawn::
# 216 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_SHAWN, MauvilleCity_Gym_Text_ShawnIntro, MauvilleCity_Gym_Text_ShawnDefeat
# 217 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_ShawnPostBattle, MSGBOX_AUTOCLOSE
# 218 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 219 "data/maps/MauvilleCity_Gym/scripts.pory"

# 220 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Ben::
# 221 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_BEN, MauvilleCity_Gym_Text_BenIntro, MauvilleCity_Gym_Text_BenDefeat
# 222 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_BenPostBattle, MSGBOX_AUTOCLOSE
# 223 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 224 "data/maps/MauvilleCity_Gym/scripts.pory"

# 225 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Vivian::
# 226 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_VIVIAN, MauvilleCity_Gym_Text_VivianIntro, MauvilleCity_Gym_Text_VivianDefeat
# 227 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_VivianPostBattle, MSGBOX_AUTOCLOSE
# 228 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 229 "data/maps/MauvilleCity_Gym/scripts.pory"

# 230 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Angelo::
# 231 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_ANGELO, MauvilleCity_Gym_Text_AngeloIntro, MauvilleCity_Gym_Text_AngeloDefeat
# 232 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_AngeloPostBattle, MSGBOX_AUTOCLOSE
# 233 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 234 "data/maps/MauvilleCity_Gym/scripts.pory"

# 235 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GymGuide::
# 236 "data/maps/MauvilleCity_Gym/scripts.pory"
	lock
# 237 "data/maps/MauvilleCity_Gym/scripts.pory"
	faceplayer
# 238 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MAUVILLE_GYM, MauvilleCity_Gym_EventScript_GymGuidePostVictory
# 239 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 240 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 241 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 242 "data/maps/MauvilleCity_Gym/scripts.pory"

# 243 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GymGuidePostVictory::
# 244 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 245 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 246 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 247 "data/maps/MauvilleCity_Gym/scripts.pory"

# 248 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_LeftGymStatue::
# 249 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 250 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE03_GET, MauvilleCity_Gym_EventScript_GymStatueCertified
# 251 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_GymStatue
# 252 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 253 "data/maps/MauvilleCity_Gym/scripts.pory"

# 254 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_RightGymStatue::
# 255 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 256 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE03_GET, MauvilleCity_Gym_EventScript_GymStatueCertified
# 257 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_GymStatue
# 258 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 259 "data/maps/MauvilleCity_Gym/scripts.pory"

# 260 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GymStatueCertified::
# 261 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 262 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 263 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 264 "data/maps/MauvilleCity_Gym/scripts.pory"

# 265 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GymStatue::
# 266 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 267 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 268 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 269 "data/maps/MauvilleCity_Gym/scripts.pory"

# 270 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_GymGuideAdvice:
# 271 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Hey, how's it going, CHAMPION-\n"
# 272 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "bound {PLAYER}?\p"
# 273 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN, the LEADER of MAUVILLE\n"
# 274 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "GYM, uses ELECTRIC-type POKéMON.\p"
# 275 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "If you challenge him with WATER-type\n"
# 276 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "POKéMON, he'll zap them! Bzzt!\p"
# 277 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "And, he's put in magnetized plates\n"
# 278 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "all over his GYM! Eccentric!\p"
# 279 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Hey, go for it!$"
# 280 "data/maps/MauvilleCity_Gym/scripts.pory"

# 281 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_GymGuidePostVictory:
# 282 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Whoa, you're electrifying!\n"
# 283 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Nice job, kid!$"
# 284 "data/maps/MauvilleCity_Gym/scripts.pory"

# 285 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_KirkIntro:
# 286 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "My electric soul, it'll shatter your\n"
# 287 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "dreams whole, whoa-yeahah!$"
# 288 "data/maps/MauvilleCity_Gym/scripts.pory"

# 289 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_KirkDefeat:
# 290 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "That was plugged in, amped up,\n"
# 291 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "over-driven electric, man!$"
# 292 "data/maps/MauvilleCity_Gym/scripts.pory"

# 293 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_KirkPostBattle:
# 294 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "POKéMON and rock, it's all about heart,\n"
# 295 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "whoa-yeah!$"
# 296 "data/maps/MauvilleCity_Gym/scripts.pory"

# 297 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_ShawnIntro:
# 298 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "I trained under DEN!\n"
# 299 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "No way I'm losing easily!$"
# 300 "data/maps/MauvilleCity_Gym/scripts.pory"

# 301 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_ShawnDefeat:
# 302 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Overloaded…\n"
# 303 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "System failure…$"
# 304 "data/maps/MauvilleCity_Gym/scripts.pory"

# 305 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_ShawnPostBattle:
# 306 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN isn't just strong,\n"
# 307 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "he's a genius.\p"
# 308 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "He solves insane calculations\n"
# 309 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "while building his machines.\p"
# 310 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "He says only those who can think\n"
# 311 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "fast deserve to challenge him.$"
# 312 "data/maps/MauvilleCity_Gym/scripts.pory"

# 313 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_BenIntro:
# 314 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "This GYM is full of puzzles!\n"
# 315 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Think you can handle them?$"
# 316 "data/maps/MauvilleCity_Gym/scripts.pory"

# 317 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_BenDefeat:
# 318 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Guess I wasn't clever enough…$"
# 319 "data/maps/MauvilleCity_Gym/scripts.pory"

# 320 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_BenPostBattle:
# 321 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN believes strength isn't enough.\p"
# 322 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "He says only TRAINERS with sharp\n"
# 323 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "minds deserve to face him.\p"
# 324 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Every battle is a test of power\n"
# 325 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "and intellect.$"
# 326 "data/maps/MauvilleCity_Gym/scripts.pory"

# 327 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_VivianIntro:
# 328 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Careful now!\p"
# 329 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Between my charm and my POKéMON,\n"
# 330 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "you might get shocked!$"
# 331 "data/maps/MauvilleCity_Gym/scripts.pory"

# 332 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_VivianDefeat:
# 333 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Wow…\p"
# 334 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "That shock was real.$"
# 335 "data/maps/MauvilleCity_Gym/scripts.pory"

# 336 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_VivianPostBattle:
# 337 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN isn't like other LEADERS.\p"
# 338 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Even since he was a child,\n"
# 339 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "he solved impossible formulas.\p"
# 340 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Machines, energy, circuits…\n"
# 341 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "they make sense to him.\p"
# 342 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Sometimes I wonder if\n"
# 343 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "electricity thinks like DEN does.$"
# 344 "data/maps/MauvilleCity_Gym/scripts.pory"

# 345 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_AngeloIntro:
# 346 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "You came for DEN?\p"
# 347 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Heh… be careful.\n"
# 348 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "That man isn't normal.\p"
# 349 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Electricity listens to him.$"
# 350 "data/maps/MauvilleCity_Gym/scripts.pory"

# 351 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_AngeloDefeat:
# 352 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Tch… figures.\p"
# 353 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "If you beat me,\n"
# 354 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN will fry you.$"
# 355 "data/maps/MauvilleCity_Gym/scripts.pory"

# 356 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_AngeloPostBattle:
# 357 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Hey, word of advice!\p"
# 358 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Don't get too close to DEN.\p"
# 359 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "That guy is always carrying\n"
# 360 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "some high-voltage machine!\p"
# 361 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Hahaha! Seriously, though...\n"
# 362 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "One wrong step and ZAP!$"
# 363 "data/maps/MauvilleCity_Gym/scripts.pory"

# 364 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_WattsonIntro:
# 365 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN: Hehehe...\p"
# 366 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "I used to dream about powering\n"
# 367 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "the whole city all by myself.\p"
# 368 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Circuits, volts, equations...\n"
# 369 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "They speak to me.\p"
# 370 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "But dreams change.\p"
# 371 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Now I spend my days building\n"
# 372 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "traps and testing limits.\p"
# 373 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Electric limits.\p"
# 374 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Oh?\n"
# 375 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "You made it through my gym?\p"
# 376 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Heh... interesting.\p"
# 377 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "I've taken more shocks than\n"
# 378 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "any normal human should survive.\p"
# 379 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "My body learned to adapt...\n"
# 380 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "I am DEN, the LEADER of\l"
# 381 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "MAUVILLE GYM.\p"
# 382 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Let's see if you can endure\n"
# 383 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "my electricity!$"
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
	.string "That TM34 there contains SHOCK WAVE.\p"
# 406 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "It's a trustworthy move that never\n"
# 407 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "misses! You can count on it!$"
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
	.string "WATTSON: Ah-ha! Here at last!\n"
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
	.string "WATTSON: We'll have to recharge our\n"
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
	.string "WATTSON: Ah-ha! Here at last!\n"
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
