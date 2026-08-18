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
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 97 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_Gym_EventScript_WattsonRematch
# 98 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_unset FLAG_RECEIVED_TM_SHOCK_WAVE, MauvilleCity_Gym_EventScript_GiveShockWave2
# 99 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_NEW_MAUVILLE_STATE, 2, MauvilleCity_Gym_EventScript_CompletedNewMauville
# 100 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_WattsonPostBattle, MSGBOX_DEFAULT
# 101 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 102 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 103 "data/maps/MauvilleCity_Gym/scripts.pory"

# 104 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_WattsonDefeated::
# 105 "data/maps/MauvilleCity_Gym/scripts.pory"
	message MauvilleCity_Gym_Text_ReceivedDynamoBadge
# 106 "data/maps/MauvilleCity_Gym/scripts.pory"
	waitmessage
# 107 "data/maps/MauvilleCity_Gym/scripts.pory"
	call Common_EventScript_PlayGymBadgeFanfare
# 108 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_ExplainDynamoBadgeTakeThis, MSGBOX_DEFAULT
# 109 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_SLATEPORT_OUTSIDE_MUSEUM_STATE, 3
# 110 "data/maps/MauvilleCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_VERDANTURF_TOWN_SCOTT
# 111 "data/maps/MauvilleCity_Gym/scripts.pory"
	setflag FLAG_DEFEATED_MAUVILLE_GYM
# 112 "data/maps/MauvilleCity_Gym/scripts.pory"
	setflag FLAG_BADGE03_GET
# 113 "data/maps/MauvilleCity_Gym/scripts.pory"
	addvar VAR_PETALBURG_GYM_STATE, 1
# 114 "data/maps/MauvilleCity_Gym/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 6, Common_EventScript_ReadyPetalburgGymForBattle
# 115 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8008, 3
# 116 "data/maps/MauvilleCity_Gym/scripts.pory"
	call Common_EventScript_SetGymTrainers
# 117 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymDeactivatePuzzle
# 118 "data/maps/MauvilleCity_Gym/scripts.pory"
	special DrawWholeMapView
# 119 "data/maps/MauvilleCity_Gym/scripts.pory"
	playse SE_UNLOCK
# 120 "data/maps/MauvilleCity_Gym/scripts.pory"
	call MauvilleCity_Gym_EventScript_GiveShockWave
# 121 "data/maps/MauvilleCity_Gym/scripts.pory"
	closemessage
# 122 "data/maps/MauvilleCity_Gym/scripts.pory"
	delay 30
# 123 "data/maps/MauvilleCity_Gym/scripts.pory"
	waitfanfare
# 124 "data/maps/MauvilleCity_Gym/scripts.pory"
	closemessage
# 125 "data/maps/MauvilleCity_Gym/scripts.pory"
	delay 30
# 126 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 127 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 128 "data/maps/MauvilleCity_Gym/scripts.pory"

# 129 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GiveShockWave2::
# 130 "data/maps/MauvilleCity_Gym/scripts.pory"
	giveitem ITEM_TM_SHOCK_WAVE
# 131 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 132 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_ExplainShockWave, MSGBOX_DEFAULT
# 133 "data/maps/MauvilleCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_SHOCK_WAVE
# 134 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 135 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 136 "data/maps/MauvilleCity_Gym/scripts.pory"

# 137 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GiveShockWave::
# 138 "data/maps/MauvilleCity_Gym/scripts.pory"
	giveitem ITEM_TM_SHOCK_WAVE
# 139 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 140 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_ExplainShockWave, MSGBOX_DEFAULT
# 141 "data/maps/MauvilleCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_SHOCK_WAVE
# 142 "data/maps/MauvilleCity_Gym/scripts.pory"
	return
# 143 "data/maps/MauvilleCity_Gym/scripts.pory"

# 144 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_CompletedNewMauville::
# 145 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_WattsonGoForthAndEndeavor, MSGBOX_DEFAULT
# 146 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 147 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 148 "data/maps/MauvilleCity_Gym/scripts.pory"

# 149 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_WattsonRematch::
# 150 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_rematch_double TRAINER_WATTSON_1, MauvilleCity_Gym_Text_WattsonPreRematch, MauvilleCity_Gym_Text_WattsonRematchDefeat, MauvilleCity_Gym_Text_WattsonRematchNeedTwoMons
# 151 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_WattsonPostRematch, MSGBOX_AUTOCLOSE
# 152 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 153 "data/maps/MauvilleCity_Gym/scripts.pory"

# 154 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch1::
# 155 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 156 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MAUVILLE_GYM, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 157 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_MAUVILLE_GYM_STATE, 1, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 158 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_MAUVILLE_GYM_STATE, 1
# 159 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 0
# 160 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_PressFloorSwitch
# 161 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 162 "data/maps/MauvilleCity_Gym/scripts.pory"

# 163 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch2::
# 164 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 165 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MAUVILLE_GYM, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 166 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_MAUVILLE_GYM_STATE, 2, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 167 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_MAUVILLE_GYM_STATE, 2
# 168 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 1
# 169 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_PressFloorSwitch
# 170 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 171 "data/maps/MauvilleCity_Gym/scripts.pory"

# 172 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch3::
# 173 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 174 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MAUVILLE_GYM, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 175 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_MAUVILLE_GYM_STATE, 3, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 176 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_MAUVILLE_GYM_STATE, 3
# 177 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 2
# 178 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_PressFloorSwitch
# 179 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 180 "data/maps/MauvilleCity_Gym/scripts.pory"

# 181 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Switch4::
# 182 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 183 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MAUVILLE_GYM, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 184 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_eq VAR_MAUVILLE_GYM_STATE, 4, MauvilleCity_Gym_EventScript_SwitchDoNothing
# 185 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_MAUVILLE_GYM_STATE, 4
# 186 "data/maps/MauvilleCity_Gym/scripts.pory"
	setvar VAR_0x8004, 3
# 187 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_PressFloorSwitch
# 188 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 189 "data/maps/MauvilleCity_Gym/scripts.pory"

# 190 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_PressFloorSwitch::
# 191 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymSetDefaultBarriers
# 192 "data/maps/MauvilleCity_Gym/scripts.pory"
	special MauvilleGymPressSwitch
# 193 "data/maps/MauvilleCity_Gym/scripts.pory"
	special DrawWholeMapView
# 194 "data/maps/MauvilleCity_Gym/scripts.pory"
	playse SE_UNLOCK
# 195 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_MAUVILLE_GYM_BARRIERS_STATE, MauvilleCity_Gym_EventScript_ClearBarriersAltState
# 196 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_unset FLAG_MAUVILLE_GYM_BARRIERS_STATE, MauvilleCity_Gym_EventScript_SetBarriersAltState
# 197 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 198 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 199 "data/maps/MauvilleCity_Gym/scripts.pory"

# 200 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_SwitchDoNothing::
# 201 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 202 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 203 "data/maps/MauvilleCity_Gym/scripts.pory"

# 204 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_SetBarriersAltState::
# 205 "data/maps/MauvilleCity_Gym/scripts.pory"
	setflag FLAG_MAUVILLE_GYM_BARRIERS_STATE
# 206 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 207 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 208 "data/maps/MauvilleCity_Gym/scripts.pory"

# 209 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_ClearBarriersAltState::
# 210 "data/maps/MauvilleCity_Gym/scripts.pory"
	clearflag FLAG_MAUVILLE_GYM_BARRIERS_STATE
# 211 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 212 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 213 "data/maps/MauvilleCity_Gym/scripts.pory"

# 214 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Kirk::
# 215 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_KIRK, MauvilleCity_Gym_Text_KirkIntro, MauvilleCity_Gym_Text_KirkDefeat
# 216 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_KirkPostBattle, MSGBOX_AUTOCLOSE
# 217 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 218 "data/maps/MauvilleCity_Gym/scripts.pory"

# 219 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Shawn::
# 220 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_SHAWN, MauvilleCity_Gym_Text_ShawnIntro, MauvilleCity_Gym_Text_ShawnDefeat
# 221 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_ShawnPostBattle, MSGBOX_AUTOCLOSE
# 222 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 223 "data/maps/MauvilleCity_Gym/scripts.pory"

# 224 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Ben::
# 225 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_BEN, MauvilleCity_Gym_Text_BenIntro, MauvilleCity_Gym_Text_BenDefeat
# 226 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_BenPostBattle, MSGBOX_AUTOCLOSE
# 227 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 228 "data/maps/MauvilleCity_Gym/scripts.pory"

# 229 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Vivian::
# 230 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_VIVIAN, MauvilleCity_Gym_Text_VivianIntro, MauvilleCity_Gym_Text_VivianDefeat
# 231 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_VivianPostBattle, MSGBOX_AUTOCLOSE
# 232 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 233 "data/maps/MauvilleCity_Gym/scripts.pory"

# 234 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_Angelo::
# 235 "data/maps/MauvilleCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_ANGELO, MauvilleCity_Gym_Text_AngeloIntro, MauvilleCity_Gym_Text_AngeloDefeat
# 236 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_AngeloPostBattle, MSGBOX_AUTOCLOSE
# 237 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 238 "data/maps/MauvilleCity_Gym/scripts.pory"

# 239 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GymGuide::
# 240 "data/maps/MauvilleCity_Gym/scripts.pory"
	lock
# 241 "data/maps/MauvilleCity_Gym/scripts.pory"
	faceplayer
# 242 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MAUVILLE_GYM, MauvilleCity_Gym_EventScript_GymGuidePostVictory
# 243 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 244 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 245 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 246 "data/maps/MauvilleCity_Gym/scripts.pory"

# 247 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GymGuidePostVictory::
# 248 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 249 "data/maps/MauvilleCity_Gym/scripts.pory"
	release
# 250 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 251 "data/maps/MauvilleCity_Gym/scripts.pory"

# 252 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_LeftGymStatue::
# 253 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 254 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE03_GET, MauvilleCity_Gym_EventScript_GymStatueCertified
# 255 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_GymStatue
# 256 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 257 "data/maps/MauvilleCity_Gym/scripts.pory"

# 258 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_RightGymStatue::
# 259 "data/maps/MauvilleCity_Gym/scripts.pory"
	lockall
# 260 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE03_GET, MauvilleCity_Gym_EventScript_GymStatueCertified
# 261 "data/maps/MauvilleCity_Gym/scripts.pory"
	goto MauvilleCity_Gym_EventScript_GymStatue
# 262 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 263 "data/maps/MauvilleCity_Gym/scripts.pory"

# 264 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GymStatueCertified::
# 265 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 266 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 267 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 268 "data/maps/MauvilleCity_Gym/scripts.pory"

# 269 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_EventScript_GymStatue::
# 270 "data/maps/MauvilleCity_Gym/scripts.pory"
	msgbox MauvilleCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 271 "data/maps/MauvilleCity_Gym/scripts.pory"
	releaseall
# 272 "data/maps/MauvilleCity_Gym/scripts.pory"
	end
# 273 "data/maps/MauvilleCity_Gym/scripts.pory"

# 274 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_GymGuideAdvice:
# 275 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Hey, how's it going, CHAMPION-\n"
# 276 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "bound {PLAYER}?\p"
# 277 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN, the LEADER of MAUVILLE\n"
# 278 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "GYM, uses ELECTRIC-type POKéMON.\p"
# 279 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "If you challenge him with WATER-type\n"
# 280 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "POKéMON, he'll zap them! Bzzt!\p"
# 281 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "And, he's put in magnetized plates\n"
# 282 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "all over his GYM! Eccentric!\p"
# 283 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Hey, go for it!$"
# 284 "data/maps/MauvilleCity_Gym/scripts.pory"

# 285 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_GymGuidePostVictory:
# 286 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Whoa, you're electrifying!\n"
# 287 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Nice job, kid!$"
# 288 "data/maps/MauvilleCity_Gym/scripts.pory"

# 289 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_KirkIntro:
# 290 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "My electric soul, it'll shatter your\n"
# 291 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "dreams whole, whoa-yeahah!$"
# 292 "data/maps/MauvilleCity_Gym/scripts.pory"

# 293 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_KirkDefeat:
# 294 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "That was plugged in, amped up,\n"
# 295 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "over-driven electric, man!$"
# 296 "data/maps/MauvilleCity_Gym/scripts.pory"

# 297 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_KirkPostBattle:
# 298 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "POKéMON and rock, it's all about heart,\n"
# 299 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "whoa-yeah!$"
# 300 "data/maps/MauvilleCity_Gym/scripts.pory"

# 301 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_ShawnIntro:
# 302 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "I trained under DEN!\n"
# 303 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "No way I'm losing easily!$"
# 304 "data/maps/MauvilleCity_Gym/scripts.pory"

# 305 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_ShawnDefeat:
# 306 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Overloaded…\n"
# 307 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "System failure…$"
# 308 "data/maps/MauvilleCity_Gym/scripts.pory"

# 309 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_ShawnPostBattle:
# 310 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN isn't just strong,\n"
# 311 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "he's a genius.\p"
# 312 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "He solves insane calculations\n"
# 313 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "while building his machines.\p"
# 314 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "He says only those who can think\n"
# 315 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "fast deserve to challenge him.$"
# 316 "data/maps/MauvilleCity_Gym/scripts.pory"

# 317 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_BenIntro:
# 318 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "This GYM is full of puzzles!\n"
# 319 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Think you can handle them?$"
# 320 "data/maps/MauvilleCity_Gym/scripts.pory"

# 321 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_BenDefeat:
# 322 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Guess I wasn't clever enough…$"
# 323 "data/maps/MauvilleCity_Gym/scripts.pory"

# 324 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_BenPostBattle:
# 325 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN believes strength isn't enough.\p"
# 326 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "He says only TRAINERS with sharp\n"
# 327 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "minds deserve to face him.\p"
# 328 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Every battle is a test of power\n"
# 329 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "and intellect.$"
# 330 "data/maps/MauvilleCity_Gym/scripts.pory"

# 331 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_VivianIntro:
# 332 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Careful now!\p"
# 333 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Between my charm and my POKéMON,\n"
# 334 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "you might get shocked!$"
# 335 "data/maps/MauvilleCity_Gym/scripts.pory"

# 336 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_VivianDefeat:
# 337 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Wow…\p"
# 338 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "That shock was real.$"
# 339 "data/maps/MauvilleCity_Gym/scripts.pory"

# 340 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_VivianPostBattle:
# 341 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN isn't like other LEADERS.\p"
# 342 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Even since he was a child,\n"
# 343 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "he solved impossible formulas.\p"
# 344 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Machines, energy, circuits…\n"
# 345 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "they make sense to him.\p"
# 346 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Sometimes I wonder if\n"
# 347 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "electricity thinks like DEN does.$"
# 348 "data/maps/MauvilleCity_Gym/scripts.pory"

# 349 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_AngeloIntro:
# 350 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "You came for DEN?\p"
# 351 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Heh… be careful.\n"
# 352 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "That man isn't normal.\p"
# 353 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Electricity listens to him.$"
# 354 "data/maps/MauvilleCity_Gym/scripts.pory"

# 355 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_AngeloDefeat:
# 356 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Tch… figures.\p"
# 357 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "If you beat me,\n"
# 358 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN will fry you.$"
# 359 "data/maps/MauvilleCity_Gym/scripts.pory"

# 360 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_AngeloPostBattle:
# 361 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Hey, word of advice!\p"
# 362 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Don't get too close to DEN.\p"
# 363 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "That guy is always carrying\n"
# 364 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "some high-voltage machine!\p"
# 365 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Hahaha! Seriously, though...\n"
# 366 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "One wrong step and ZAP!$"
# 367 "data/maps/MauvilleCity_Gym/scripts.pory"

# 368 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_WattsonIntro:
# 369 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN: Hehehe...\p"
# 370 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "I used to dream about powering\n"
# 371 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "the whole city all by myself.\p"
# 372 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Circuits, volts, equations...\n"
# 373 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "They speak to me.\p"
# 374 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "But dreams change.\p"
# 375 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Now I spend my days building\n"
# 376 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "traps and testing limits.\p"
# 377 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Electric limits.\p"
# 378 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Oh?\n"
# 379 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "You made it through my gym?\p"
# 380 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Heh... interesting.\p"
# 381 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "I've taken more shocks than\n"
# 382 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "any normal human should survive.\p"
# 383 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "My body learned to adapt...\n"
# 384 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "I am DEN, the LEADER of\l"
# 385 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "MAUVILLE GYM.\p"
# 386 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Let's see if you can endure\n"
# 387 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "my electricity!$"
# 388 "data/maps/MauvilleCity_Gym/scripts.pory"

# 389 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_WattsonDefeat:
# 390 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Ahahaha…!\p"
# 391 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "My circuits failed!\n"
# 392 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "What a shock… what a shock!\p"
# 393 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "You earned this.\n"
# 394 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Take this BADGE.$"
# 395 "data/maps/MauvilleCity_Gym/scripts.pory"

# 396 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_ReceivedDynamoBadge:
# 397 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "{PLAYER} received the DYNAMO BADGE\n"
# 398 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "from DEN.$"
# 399 "data/maps/MauvilleCity_Gym/scripts.pory"

# 400 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_ExplainDynamoBadgeTakeThis:
# 401 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "With the DYNAMO BADGE, POKéMON can\n"
# 402 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "use ROCK SMASH out of battle.\p"
# 403 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "And, it will make your POKéMON a little\n"
# 404 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "bit faster, too.\p"
# 405 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Hmm…\n"
# 406 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "You should take this, too!$"
# 407 "data/maps/MauvilleCity_Gym/scripts.pory"

# 408 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_ExplainShockWave:
# 409 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "That TM34 there contains SHOCK WAVE.\p"
# 410 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "It's a trustworthy move that never\n"
# 411 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "misses! You can count on it!$"
# 412 "data/maps/MauvilleCity_Gym/scripts.pory"

# 413 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_RegisteredWattson:
# 414 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "I expect great things from you.$"
# 415 "data/maps/MauvilleCity_Gym/scripts.pory"

# 416 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_WattsonPostBattle:
# 417 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Heh… interesting.\p"
# 418 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "You kept up with my circuits.\n"
# 419 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Not many can do that.$"
# 420 "data/maps/MauvilleCity_Gym/scripts.pory"

# 421 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_WattsonGoForthAndEndeavor:
# 422 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "This was fun.\p"
# 423 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Go test yourself out there.\n"
# 424 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Hoenn won't go easy on you.$"
# 425 "data/maps/MauvilleCity_Gym/scripts.pory"

# 426 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_GymStatue:
# 427 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "MAUVILLE CITY POKéMON GYM$"
# 428 "data/maps/MauvilleCity_Gym/scripts.pory"

# 429 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_GymStatueCertified:
# 430 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "MAUVILLE CITY POKéMON GYM\p"
# 431 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "DEN'S CERTIFIED TRAINERS:\n"
# 432 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "{PLAYER}$"
# 433 "data/maps/MauvilleCity_Gym/scripts.pory"

# 434 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_WattsonPreRematch:
# 435 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "WATTSON: Ah-ha! Here at last!\n"
# 436 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "I know what you want.\l"
# 437 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "You want to battle my POKéMON!\p"
# 438 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Wahahahaha!\p"
# 439 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "I'll make sparks fly from you!\n"
# 440 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Don't say I didn't warn you!$"
# 441 "data/maps/MauvilleCity_Gym/scripts.pory"

# 442 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_WattsonRematchDefeat:
# 443 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Oof…\n"
# 444 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Our batteries ran dry…$"
# 445 "data/maps/MauvilleCity_Gym/scripts.pory"

# 446 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_WattsonPostRematch:
# 447 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "WATTSON: We'll have to recharge our\n"
# 448 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "batteries again.\p"
# 449 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "When we're fully charged up, we'll\n"
# 450 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "gladly accept your challenge.\p"
# 451 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "So, come back again sometime,\n"
# 452 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "won't you?$"
# 453 "data/maps/MauvilleCity_Gym/scripts.pory"

# 454 "data/maps/MauvilleCity_Gym/scripts.pory"
MauvilleCity_Gym_Text_WattsonRematchNeedTwoMons:
# 455 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "WATTSON: Ah-ha! Here at last!\n"
# 456 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "I know what you want.\l"
# 457 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "You want to battle my POKéMON!\p"
# 458 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Wahahahaha!\p"
# 459 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Oops! Wait!\n"
# 460 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "You've only one POKéMON with you!\p"
# 461 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "Come see me with two or more\n"
# 462 "data/maps/MauvilleCity_Gym/scripts.pory"
	.string "POKéMON, all right?$"
