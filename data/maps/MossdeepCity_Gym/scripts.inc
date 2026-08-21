# 1 "data/maps/MossdeepCity_Gym/scripts.pory"

# 2 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_MapScripts::
# 3 "data/maps/MossdeepCity_Gym/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MossdeepCity_Gym_OnTransition
# 4 "data/maps/MossdeepCity_Gym/scripts.pory"
	map_script MAP_SCRIPT_ON_LOAD, MossdeepCity_Gym_OnLoad
# 5 "data/maps/MossdeepCity_Gym/scripts.pory"
	.byte 0
# 6 "data/maps/MossdeepCity_Gym/scripts.pory"

# 7 "data/maps/MossdeepCity_Gym/scripts.pory"
@ NOTE: Mossdeep Gym was redesigned between R/S and E. Leftover (and now functionally unused) scripts are commented below
# 8 "data/maps/MossdeepCity_Gym/scripts.pory"

# 9 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_OnTransition:
# 10 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_TEMP_HIDE_FOLLOWER @ Hide follower since it can collide with moving statues
# 11 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 12 "data/maps/MossdeepCity_Gym/scripts.pory"

# 13 "data/maps/MossdeepCity_Gym/scripts.pory"
@ All the below checks are leftover from RS. FLAG_MOSSDEEP_GYM_SWITCH_X is never set
# 14 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_OnLoad:
# 15 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GYM_SWITCH_1, MossdeepCity_Gym_EventScript_SetSwitch1Metatiles
# 16 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_CheckSwitch2
# 17 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 18 "data/maps/MossdeepCity_Gym/scripts.pory"

# 19 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_CheckSwitch2::
# 20 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GYM_SWITCH_2, MossdeepCity_Gym_EventScript_SetSwitch2Metatiles
# 21 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_CheckSwitch3
# 22 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 23 "data/maps/MossdeepCity_Gym/scripts.pory"

# 24 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_CheckSwitch3::
# 25 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GYM_SWITCH_3, MossdeepCity_Gym_EventScript_SetSwitch3Metatiles
# 26 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_CheckSwitch4
# 27 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 28 "data/maps/MossdeepCity_Gym/scripts.pory"

# 29 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_CheckSwitch4::
# 30 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GYM_SWITCH_4, MossdeepCity_Gym_EventScript_SetSwitch4Metatiles
# 31 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 32 "data/maps/MossdeepCity_Gym/scripts.pory"

# 33 "data/maps/MossdeepCity_Gym/scripts.pory"
@ All the below set metatile scripts are leftover from RS and are functionally unused
# 34 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_SetSwitch1Metatiles::
# 35 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 5, 5, METATILE_RSMossdeepGym_RedArrow_Right, FALSE
# 36 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 2, 7, METATILE_RSMossdeepGym_Switch_Down, TRUE
# 37 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_CheckSwitch2
# 38 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 39 "data/maps/MossdeepCity_Gym/scripts.pory"

# 40 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_SetSwitch2Metatiles::
# 41 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 8, 14, METATILE_RSMossdeepGym_RedArrow_Right, FALSE
# 42 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 8, 10, METATILE_RSMossdeepGym_Switch_Down, TRUE
# 43 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_CheckSwitch3
# 44 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 45 "data/maps/MossdeepCity_Gym/scripts.pory"

# 46 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_SetSwitch3Metatiles::
# 47 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 15, 17, METATILE_RSMossdeepGym_RedArrow_Left, FALSE
# 48 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 17, 15, METATILE_RSMossdeepGym_Switch_Down, TRUE
# 49 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_CheckSwitch4
# 50 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 51 "data/maps/MossdeepCity_Gym/scripts.pory"

# 52 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_SetSwitch4Metatiles::
# 53 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 1, 23, METATILE_RSMossdeepGym_RedArrow_Up, FALSE
# 54 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 5, 24, METATILE_RSMossdeepGym_Switch_Down, TRUE
# 55 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 56 "data/maps/MossdeepCity_Gym/scripts.pory"

# 57 "data/maps/MossdeepCity_Gym/scripts.pory"
// Mossdeep City Gym - Tate & Liza
# 58 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_TateAndLiza::
# 59 "data/maps/MossdeepCity_Gym/scripts.pory"
    lock
# 60 "data/maps/MossdeepCity_Gym/scripts.pory"
    faceplayer
# 61 "data/maps/MossdeepCity_Gym/scripts.pory"
    getdifficulty VAR_RESULT
# 62 "data/maps/MossdeepCity_Gym/scripts.pory"
    goto_if_eq VAR_RESULT, 1, MossdeepCity_Gym_EventScript_TateAndLizaHard
# 63 "data/maps/MossdeepCity_Gym/scripts.pory"

# 64 "data/maps/MossdeepCity_Gym/scripts.pory"
    // Casual Mode 
# 65 "data/maps/MossdeepCity_Gym/scripts.pory"
    trainerbattle_double TRAINER_SOULLUNA_CASUAL, MossdeepCity_Gym_Text_TateAndLizaIntro, MossdeepCity_Gym_Text_TateAndLizaDefeat, MossdeepCity_Gym_Text_TateAndLizaNeedTwoMons, MossdeepCity_Gym_EventScript_TateAndLizaDefeated, NO_MUSIC
# 66 "data/maps/MossdeepCity_Gym/scripts.pory"
    goto MossdeepCity_Gym_EventScript_TateAndLizaAfterBattle
# 67 "data/maps/MossdeepCity_Gym/scripts.pory"

# 68 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_TateAndLizaHard::
# 69 "data/maps/MossdeepCity_Gym/scripts.pory"
    // Hard Mode
# 70 "data/maps/MossdeepCity_Gym/scripts.pory"
    trainerbattle_double TRAINER_TATE_AND_LIZA_1, MossdeepCity_Gym_Text_TateAndLizaIntro, MossdeepCity_Gym_Text_TateAndLizaDefeat, MossdeepCity_Gym_Text_TateAndLizaNeedTwoMons, MossdeepCity_Gym_EventScript_TateAndLizaDefeated, NO_MUSIC
# 71 "data/maps/MossdeepCity_Gym/scripts.pory"
    // Fall through to AfterBattle
# 72 "data/maps/MossdeepCity_Gym/scripts.pory"

# 73 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_TateAndLizaAfterBattle::
# 74 "data/maps/MossdeepCity_Gym/scripts.pory"
    specialvar VAR_RESULT, ShouldTryRematchBattle
# 75 "data/maps/MossdeepCity_Gym/scripts.pory"
    goto_if_eq VAR_RESULT, TRUE, MossdeepCity_Gym_EventScript_TateAndLizaRematch
# 76 "data/maps/MossdeepCity_Gym/scripts.pory"
    goto_if_unset FLAG_RECEIVED_TM_CALM_MIND, MossdeepCity_Gym_EventScript_GiveCalmMind2
# 77 "data/maps/MossdeepCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_LUNA, EMOTE_NORMAL
# 78 "data/maps/MossdeepCity_Gym/scripts.pory"
    msgbox MossdeepCity_Gym_Text_TateAndLizaPostBattle, MSGBOX_DEFAULT
# 79 "data/maps/MossdeepCity_Gym/scripts.pory"
    removefieldmugshot
# 80 "data/maps/MossdeepCity_Gym/scripts.pory"
    release
# 81 "data/maps/MossdeepCity_Gym/scripts.pory"
    end
# 82 "data/maps/MossdeepCity_Gym/scripts.pory"

# 83 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_TateAndLizaDefeated::
# 84 "data/maps/MossdeepCity_Gym/scripts.pory"
	message MossdeepCity_Gym_Text_ReceivedMindBadge
# 85 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmessage
# 86 "data/maps/MossdeepCity_Gym/scripts.pory"
	call Common_EventScript_PlayGymBadgeFanfare
# 87 "data/maps/MossdeepCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUNA, EMOTE_NORMAL
# 88 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_ExplainMindBadgeTakeThis, MSGBOX_DEFAULT
# 89 "data/maps/MossdeepCity_Gym/scripts.pory"
	removefieldmugshot
# 90 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_DEFEATED_MOSSDEEP_GYM
# 91 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_BADGE07_GET
# 92 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_HIDE_AQUA_HIDEOUT_GRUNTS
# 93 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_SLATEPORT_CITY_STERNS_SHIPYARD_MR_BRINEY
# 94 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_UNKNOWN_0x393
# 95 "data/maps/MossdeepCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 96 "data/maps/MossdeepCity_Gym/scripts.pory"
	call Common_EventScript_SetGymTrainers
# 97 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_SLATEPORT_CITY_HARBOR_PATRONS
# 98 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_CITY_TEAM_MAGMA
# 99 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_1F_TEAM_MAGMA
# 100 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_2F_TEAM_MAGMA
# 101 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_2F_STEVEN
# 102 "data/maps/MossdeepCity_Gym/scripts.pory"
	setvar VAR_MOSSDEEP_CITY_STATE, 1
# 103 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_1F_STEVEN
# 104 "data/maps/MossdeepCity_Gym/scripts.pory"
	setvar VAR_MOSSDEEP_SPACE_CENTER_STATE, 1
# 105 "data/maps/MossdeepCity_Gym/scripts.pory"
	call MossdeepCity_Gym_EventScript_GiveCalmMind
# 106 "data/maps/MossdeepCity_Gym/scripts.pory"
	closemessage
# 107 "data/maps/MossdeepCity_Gym/scripts.pory"
	delay 30
# 108 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitfanfare
# 109 "data/maps/MossdeepCity_Gym/scripts.pory"
	closemessage
# 110 "data/maps/MossdeepCity_Gym/scripts.pory"
	delay 30
# 111 "data/maps/MossdeepCity_Gym/scripts.pory"
	release
# 112 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 113 "data/maps/MossdeepCity_Gym/scripts.pory"

# 114 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_GiveCalmMind2::
# 115 "data/maps/MossdeepCity_Gym/scripts.pory"
	giveitem ITEM_TM_CALM_MIND
# 116 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 117 "data/maps/MossdeepCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUNA, EMOTE_NORMAL
# 118 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_ExplainCalmMind, MSGBOX_DEFAULT
# 119 "data/maps/MossdeepCity_Gym/scripts.pory"
	removefieldmugshot
# 120 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_CALM_MIND
# 121 "data/maps/MossdeepCity_Gym/scripts.pory"
	release
# 122 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 123 "data/maps/MossdeepCity_Gym/scripts.pory"

# 124 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_GiveCalmMind::
# 125 "data/maps/MossdeepCity_Gym/scripts.pory"
	giveitem ITEM_TM_CALM_MIND
# 126 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 127 "data/maps/MossdeepCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUNA, EMOTE_NORMAL
# 128 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_ExplainCalmMind, MSGBOX_DEFAULT
# 129 "data/maps/MossdeepCity_Gym/scripts.pory"
	removefieldmugshot
# 130 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_CALM_MIND
# 131 "data/maps/MossdeepCity_Gym/scripts.pory"
	return
# 132 "data/maps/MossdeepCity_Gym/scripts.pory"

# 133 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_TateAndLizaRematch::
# 134 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_rematch_double TRAINER_TATE_AND_LIZA_1, MossdeepCity_Gym_Text_TateAndLizaPreRematch, MossdeepCity_Gym_Text_TateAndLizaRematchDefeat, MossdeepCity_Gym_Text_TateAndLizaRematchNeedTwoMons
# 135 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_TateAndLizaPostRematch, MSGBOX_AUTOCLOSE
# 136 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 137 "data/maps/MossdeepCity_Gym/scripts.pory"

# 138 "data/maps/MossdeepCity_Gym/scripts.pory"
@ All the below switch scripts are leftover from RS and are functionally unused
# 139 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Switch1::
# 140 "data/maps/MossdeepCity_Gym/scripts.pory"
	lockall
# 141 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GYM_SWITCH_1, MossdeepCity_Gym_EventScript_ClearSwitch1
# 142 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_MOSSDEEP_GYM_SWITCH_1
# 143 "data/maps/MossdeepCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, MossdeepCity_Gym_Movement_WaitAfterSwitchUse
# 144 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 145 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 5, 5, METATILE_RSMossdeepGym_RedArrow_Right, FALSE
# 146 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 2, 7, METATILE_RSMossdeepGym_Switch_Down, TRUE
# 147 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed
# 148 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 149 "data/maps/MossdeepCity_Gym/scripts.pory"

# 150 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed::
# 151 "data/maps/MossdeepCity_Gym/scripts.pory"
	special DrawWholeMapView
# 152 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_CLICK
# 153 "data/maps/MossdeepCity_Gym/scripts.pory"
	releaseall
# 154 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 155 "data/maps/MossdeepCity_Gym/scripts.pory"

# 156 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_ClearSwitch1::
# 157 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_MOSSDEEP_GYM_SWITCH_1
# 158 "data/maps/MossdeepCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, MossdeepCity_Gym_Movement_WaitAfterSwitchUse
# 159 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 160 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 5, 5, METATILE_RSMossdeepGym_RedArrow_Left, FALSE
# 161 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 2, 7, METATILE_RSMossdeepGym_Switch_Up, TRUE
# 162 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed
# 163 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 164 "data/maps/MossdeepCity_Gym/scripts.pory"

# 165 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Switch2::
# 166 "data/maps/MossdeepCity_Gym/scripts.pory"
	lockall
# 167 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GYM_SWITCH_2, MossdeepCity_Gym_EventScript_ClearSwitch2
# 168 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_MOSSDEEP_GYM_SWITCH_2
# 169 "data/maps/MossdeepCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, MossdeepCity_Gym_Movement_WaitAfterSwitchUse
# 170 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 171 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 8, 14, METATILE_RSMossdeepGym_RedArrow_Right, FALSE
# 172 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 8, 10, METATILE_RSMossdeepGym_Switch_Down, TRUE
# 173 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed
# 174 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 175 "data/maps/MossdeepCity_Gym/scripts.pory"

# 176 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_ClearSwitch2::
# 177 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_MOSSDEEP_GYM_SWITCH_2
# 178 "data/maps/MossdeepCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, MossdeepCity_Gym_Movement_WaitAfterSwitchUse
# 179 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 180 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 8, 14, METATILE_RSMossdeepGym_RedArrow_Down, FALSE
# 181 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 8, 10, METATILE_RSMossdeepGym_Switch_Up, TRUE
# 182 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed
# 183 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 184 "data/maps/MossdeepCity_Gym/scripts.pory"

# 185 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Switch3::
# 186 "data/maps/MossdeepCity_Gym/scripts.pory"
	lockall
# 187 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GYM_SWITCH_3, MossdeepCity_Gym_EventScript_ClearSwitch3
# 188 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_MOSSDEEP_GYM_SWITCH_3
# 189 "data/maps/MossdeepCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, MossdeepCity_Gym_Movement_WaitAfterSwitchUse
# 190 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 191 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 15, 17, METATILE_RSMossdeepGym_RedArrow_Left, FALSE
# 192 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 17, 15, METATILE_RSMossdeepGym_Switch_Down, TRUE
# 193 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed
# 194 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 195 "data/maps/MossdeepCity_Gym/scripts.pory"

# 196 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_ClearSwitch3::
# 197 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_MOSSDEEP_GYM_SWITCH_3
# 198 "data/maps/MossdeepCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, MossdeepCity_Gym_Movement_WaitAfterSwitchUse
# 199 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 200 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 15, 17, METATILE_RSMossdeepGym_RedArrow_Right, FALSE
# 201 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 17, 15, METATILE_RSMossdeepGym_Switch_Up, TRUE
# 202 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed
# 203 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 204 "data/maps/MossdeepCity_Gym/scripts.pory"

# 205 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Switch4::
# 206 "data/maps/MossdeepCity_Gym/scripts.pory"
	lockall
# 207 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GYM_SWITCH_4, MossdeepCity_Gym_EventScript_ClearSwitch4
# 208 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_MOSSDEEP_GYM_SWITCH_4
# 209 "data/maps/MossdeepCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, MossdeepCity_Gym_Movement_WaitAfterSwitchUse
# 210 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 211 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 1, 23, METATILE_RSMossdeepGym_RedArrow_Up, FALSE
# 212 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 5, 24, METATILE_RSMossdeepGym_Switch_Down, TRUE
# 213 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed
# 214 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 215 "data/maps/MossdeepCity_Gym/scripts.pory"

# 216 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_ClearSwitch4::
# 217 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_MOSSDEEP_GYM_SWITCH_4
# 218 "data/maps/MossdeepCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, MossdeepCity_Gym_Movement_WaitAfterSwitchUse
# 219 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 220 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 1, 23, METATILE_RSMossdeepGym_RedArrow_Right, FALSE
# 221 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 5, 24, METATILE_RSMossdeepGym_Switch_Up, TRUE
# 222 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed
# 223 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 224 "data/maps/MossdeepCity_Gym/scripts.pory"

# 225 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_WarpToEntrance::
# 226 "data/maps/MossdeepCity_Gym/scripts.pory"
	lockall
# 227 "data/maps/MossdeepCity_Gym/scripts.pory"
	warpmossdeepgym MAP_MOSSDEEP_CITY_GYM, 7, 30
# 228 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitstate
# 229 "data/maps/MossdeepCity_Gym/scripts.pory"
	releaseall
# 230 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 231 "data/maps/MossdeepCity_Gym/scripts.pory"

# 232 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Preston::
# 233 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_PRESTON, MossdeepCity_Gym_Text_PrestonIntro, MossdeepCity_Gym_Text_PrestonDefeat
# 234 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_PrestonPostBattle, MSGBOX_AUTOCLOSE
# 235 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 236 "data/maps/MossdeepCity_Gym/scripts.pory"

# 237 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Virgil::
# 238 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_VIRGIL, MossdeepCity_Gym_Text_VirgilIntro, MossdeepCity_Gym_Text_VirgilDefeat
# 239 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_VirgilPostBattle, MSGBOX_AUTOCLOSE
# 240 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 241 "data/maps/MossdeepCity_Gym/scripts.pory"

# 242 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Blake::
# 243 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_BLAKE, MossdeepCity_Gym_Text_BlakeIntro, MossdeepCity_Gym_Text_BlakeDefeat
# 244 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_BlakePostBattle, MSGBOX_AUTOCLOSE
# 245 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 246 "data/maps/MossdeepCity_Gym/scripts.pory"

# 247 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Hannah::
# 248 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_HANNAH, MossdeepCity_Gym_Text_HannahIntro, MossdeepCity_Gym_Text_HannahDefeat
# 249 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_HannahPostBattle, MSGBOX_AUTOCLOSE
# 250 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 251 "data/maps/MossdeepCity_Gym/scripts.pory"

# 252 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Samantha::
# 253 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_SAMANTHA, MossdeepCity_Gym_Text_SamanthaIntro, MossdeepCity_Gym_Text_SamanthaDefeat
# 254 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_SamanthaPostBattle, MSGBOX_AUTOCLOSE
# 255 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 256 "data/maps/MossdeepCity_Gym/scripts.pory"

# 257 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Maura::
# 258 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_MAURA, MossdeepCity_Gym_Text_MauraIntro, MossdeepCity_Gym_Text_MauraDefeat
# 259 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_MauraPostBattle, MSGBOX_AUTOCLOSE
# 260 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 261 "data/maps/MossdeepCity_Gym/scripts.pory"

# 262 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Sylvia::
# 263 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_SYLVIA, MossdeepCity_Gym_Text_SylviaIntro, MossdeepCity_Gym_Text_SylviaDefeat
# 264 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_SylviaPostBattle, MSGBOX_AUTOCLOSE
# 265 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 266 "data/maps/MossdeepCity_Gym/scripts.pory"

# 267 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Nate::
# 268 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_NATE, MossdeepCity_Gym_Text_NateIntro, MossdeepCity_Gym_Text_NateDefeat
# 269 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_NatePostBattle, MSGBOX_AUTOCLOSE
# 270 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 271 "data/maps/MossdeepCity_Gym/scripts.pory"

# 272 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Macey::
# 273 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_MACEY, MossdeepCity_Gym_Text_MaceyIntro, MossdeepCity_Gym_Text_MaceyDefeat
# 274 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_MaceyPostBattle, MSGBOX_AUTOCLOSE
# 275 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 276 "data/maps/MossdeepCity_Gym/scripts.pory"

# 277 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Clifford::
# 278 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_CLIFFORD, MossdeepCity_Gym_Text_CliffordIntro, MossdeepCity_Gym_Text_CliffordDefeat
# 279 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_CliffordPostBattle, MSGBOX_AUTOCLOSE
# 280 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 281 "data/maps/MossdeepCity_Gym/scripts.pory"

# 282 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Nicholas::
# 283 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_NICHOLAS, MossdeepCity_Gym_Text_NicholasIntro, MossdeepCity_Gym_Text_NicholasDefeat
# 284 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_NicholasPostBattle, MSGBOX_AUTOCLOSE
# 285 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 286 "data/maps/MossdeepCity_Gym/scripts.pory"

# 287 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Kathleen::
# 288 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_KATHLEEN, MossdeepCity_Gym_Text_KathleenIntro, MossdeepCity_Gym_Text_KathleenDefeat
# 289 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_KathleenPostBattle, MSGBOX_AUTOCLOSE
# 290 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 291 "data/maps/MossdeepCity_Gym/scripts.pory"

# 292 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_GymGuide::
# 293 "data/maps/MossdeepCity_Gym/scripts.pory"
	lock
# 294 "data/maps/MossdeepCity_Gym/scripts.pory"
	faceplayer
# 295 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MOSSDEEP_GYM, MossdeepCity_Gym_EventScript_GymGuidePostVictory
# 296 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 297 "data/maps/MossdeepCity_Gym/scripts.pory"
	release
# 298 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 299 "data/maps/MossdeepCity_Gym/scripts.pory"

# 300 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_GymGuidePostVictory::
# 301 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 302 "data/maps/MossdeepCity_Gym/scripts.pory"
	release
# 303 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 304 "data/maps/MossdeepCity_Gym/scripts.pory"

# 305 "data/maps/MossdeepCity_Gym/scripts.pory"
@ Leftover from RS, functionally unused
# 306 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Movement_WaitAfterSwitchUse:
# 307 "data/maps/MossdeepCity_Gym/scripts.pory"
	delay_16
# 308 "data/maps/MossdeepCity_Gym/scripts.pory"
	delay_16
# 309 "data/maps/MossdeepCity_Gym/scripts.pory"
	step_end
# 310 "data/maps/MossdeepCity_Gym/scripts.pory"

# 311 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_LeftGymStatue::
# 312 "data/maps/MossdeepCity_Gym/scripts.pory"
	lockall
# 313 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE07_GET, MossdeepCity_Gym_EventScript_GymStatueCertified
# 314 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_GymStatue
# 315 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 316 "data/maps/MossdeepCity_Gym/scripts.pory"

# 317 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_RightGymStatue::
# 318 "data/maps/MossdeepCity_Gym/scripts.pory"
	lockall
# 319 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE07_GET, MossdeepCity_Gym_EventScript_GymStatueCertified
# 320 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_GymStatue
# 321 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 322 "data/maps/MossdeepCity_Gym/scripts.pory"

# 323 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_GymStatueCertified::
# 324 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 325 "data/maps/MossdeepCity_Gym/scripts.pory"
	releaseall
# 326 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 327 "data/maps/MossdeepCity_Gym/scripts.pory"

# 328 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_GymStatue::
# 329 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 330 "data/maps/MossdeepCity_Gym/scripts.pory"
	releaseall
# 331 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 332 "data/maps/MossdeepCity_Gym/scripts.pory"

# 333 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_YellowFloorSwitch::
# 334 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_SWITCH
# 335 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitse
# 336 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_REPEL
# 337 "data/maps/MossdeepCity_Gym/scripts.pory"
	initrotatingtilepuzzle FALSE
# 338 "data/maps/MossdeepCity_Gym/scripts.pory"
	moverotatingtileobjects 0
# 339 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 340 "data/maps/MossdeepCity_Gym/scripts.pory"
	turnrotatingtileobjects
# 341 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 342 "data/maps/MossdeepCity_Gym/scripts.pory"
	freerotatingtilepuzzle
# 343 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 344 "data/maps/MossdeepCity_Gym/scripts.pory"

# 345 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_BlueFloorSwitch::
# 346 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_SWITCH
# 347 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitse
# 348 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_REPEL
# 349 "data/maps/MossdeepCity_Gym/scripts.pory"
	initrotatingtilepuzzle FALSE
# 350 "data/maps/MossdeepCity_Gym/scripts.pory"
	moverotatingtileobjects 1
# 351 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 352 "data/maps/MossdeepCity_Gym/scripts.pory"
	turnrotatingtileobjects
# 353 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 354 "data/maps/MossdeepCity_Gym/scripts.pory"
	freerotatingtilepuzzle
# 355 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 356 "data/maps/MossdeepCity_Gym/scripts.pory"

# 357 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_GreenFloorSwitch::
# 358 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_SWITCH
# 359 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitse
# 360 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_REPEL
# 361 "data/maps/MossdeepCity_Gym/scripts.pory"
	initrotatingtilepuzzle FALSE
# 362 "data/maps/MossdeepCity_Gym/scripts.pory"
	moverotatingtileobjects 2
# 363 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 364 "data/maps/MossdeepCity_Gym/scripts.pory"
	turnrotatingtileobjects
# 365 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 366 "data/maps/MossdeepCity_Gym/scripts.pory"
	freerotatingtilepuzzle
# 367 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 368 "data/maps/MossdeepCity_Gym/scripts.pory"

# 369 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_PurpleFloorSwitch::
# 370 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_SWITCH
# 371 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitse
# 372 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_REPEL
# 373 "data/maps/MossdeepCity_Gym/scripts.pory"
	initrotatingtilepuzzle FALSE
# 374 "data/maps/MossdeepCity_Gym/scripts.pory"
	moverotatingtileobjects 3
# 375 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 376 "data/maps/MossdeepCity_Gym/scripts.pory"
	turnrotatingtileobjects
# 377 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 378 "data/maps/MossdeepCity_Gym/scripts.pory"
	freerotatingtilepuzzle
# 379 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 380 "data/maps/MossdeepCity_Gym/scripts.pory"

# 381 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_RedFloorSwitch::
# 382 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_SWITCH
# 383 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitse
# 384 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_REPEL
# 385 "data/maps/MossdeepCity_Gym/scripts.pory"
	initrotatingtilepuzzle FALSE
# 386 "data/maps/MossdeepCity_Gym/scripts.pory"
	moverotatingtileobjects 4
# 387 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 388 "data/maps/MossdeepCity_Gym/scripts.pory"
	turnrotatingtileobjects
# 389 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 390 "data/maps/MossdeepCity_Gym/scripts.pory"
	freerotatingtilepuzzle
# 391 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 392 "data/maps/MossdeepCity_Gym/scripts.pory"

# 393 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_GymGuideAdvice:
# 394 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Yo, how's it going, CHAMPION-bound\n"
# 395 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "{PLAYER}?\p"
# 396 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "This GYM is a split challenge!\n"
# 397 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Two LEADERS, two styles!\p"
# 398 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "One commands FAIRY-type POKEMON,\n"
# 399 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "bright, tricky, and unpredictable.\p"
# 400 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "The other wields DARK-type POKEMON,\n"
# 401 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "ruthless, tactical, and merciless.\p"
# 402 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "If you rush in blindly, you'll get\n"
# 403 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "outplayed from both sides.\p"
# 404 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "They fight like opposites\n"
# 405 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "light and shadow in sync.\p"
# 406 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "If you want to win, you'll need more\n"
# 407 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "than strength. You'll need strategy.\n"
# 408 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Show them your bond is unbreakable!$"
# 409 "data/maps/MossdeepCity_Gym/scripts.pory"

# 410 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_GymGuidePostVictory:
# 411 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Wow, you're astounding!\n"
# 412 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "You're one great TRAINER!$"
# 413 "data/maps/MossdeepCity_Gym/scripts.pory"

# 414 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_PrestonIntro:
# 415 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Battles hinge on the strength of your\n"
# 416 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "spirit!\p"
# 417 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "This GYM used to follow only one path.\n"
# 418 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "But Luna and Soul changed that.\p"
# 419 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "They became the first in HOENN\n"
# 420 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "to lead a split GYM.\p"
# 421 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "FAIRY and DARK.\n"
# 422 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Light and shadow in balance.$"
# 423 "data/maps/MossdeepCity_Gym/scripts.pory"

# 424 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_PrestonDefeat:
# 425 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "I lost…\n"
# 426 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "My spirit still wavers.$"
# 427 "data/maps/MossdeepCity_Gym/scripts.pory"

# 428 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_PrestonPostBattle:
# 429 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Luna's brilliance can blind you.\p"
# 430 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Soul's darkness can trap you.\p"
# 431 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "They are formidaveis together.\n"
# 432 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Do not hesitate when you face them.$"
# 433 "data/maps/MossdeepCity_Gym/scripts.pory"

# 434 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_VirgilIntro:
# 435 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Let me see your talent.\p"
# 436 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "I'm training under LUNA,\n"
# 437 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "master of DARK-type POKEMON.$"
# 438 "data/maps/MossdeepCity_Gym/scripts.pory"

# 439 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_VirgilDefeat:
# 440 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Your light cut through my shadows…$"
# 441 "data/maps/MossdeepCity_Gym/scripts.pory"

# 442 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_VirgilPostBattle:
# 443 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA teaches that darkness isn't evil.\p"
# 444 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "It's something you must control,\n"
# 445 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "not fear.\p"
# 446 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "I'm still learning to master it.$"
# 447 "data/maps/MossdeepCity_Gym/scripts.pory"

# 448 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_BlakeIntro:
# 449 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Did you know?\n"
# 450 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA and SOUL are twin sisters.\p"
# 451 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Same blood.\n"
# 452 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Completely different presences.\p"
# 453 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "One walks in shadow.\n"
# 454 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "The other shines like starlight.$"
# 455 "data/maps/MossdeepCity_Gym/scripts.pory"

# 456 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_BlakeDefeat:
# 457 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Even opposites can move in perfect\n"
# 458 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "harmony… I see that now.$"
# 459 "data/maps/MossdeepCity_Gym/scripts.pory"

# 460 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_BlakePostBattle:
# 461 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA dresses in dark elegance.\p"
# 462 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL prefers soft, radiant colors.\p"
# 463 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Their battle styles are opposites.\n"
# 464 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Their personalities too.\p"
# 465 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Yet together… they are unstoppable.$"
# 466 "data/maps/MossdeepCity_Gym/scripts.pory"

# 467 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_HannahIntro:
# 468 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "If I win, don't be too upset!\p"
# 469 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL always says battles should be\n"
# 470 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "fun and full of energy!$"
# 471 "data/maps/MossdeepCity_Gym/scripts.pory"

# 472 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_HannahDefeat:
# 473 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "You're amazing!\n"
# 474 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "That was exciting!$"
# 475 "data/maps/MossdeepCity_Gym/scripts.pory"

# 476 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_HannahPostBattle:
# 477 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "I learned from SOUL to stay positive.\p"
# 478 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "She smiles even in tough fights.\n"
# 479 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "That energy is contagious!\p"
# 480 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "I'll keep improving with that same\n"
# 481 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "enthusiasm!$"
# 482 "data/maps/MossdeepCity_Gym/scripts.pory"

# 483 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_SamanthaIntro:
# 484 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Do you believe in opposites?\p"
# 485 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Light and shadow.\n"
# 486 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Softness and severity.\p"
# 487 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Let's see how you handle both.$"
# 488 "data/maps/MossdeepCity_Gym/scripts.pory"

# 489 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_SamanthaDefeat:
# 490 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "You balanced both sides…$"
# 491 "data/maps/MossdeepCity_Gym/scripts.pory"

# 492 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_SamanthaPostBattle:
# 493 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA and SOUL prove something.\p"
# 494 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Opposites don't always clash.\n"
# 495 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Sometimes, they complete each other.\p"
# 496 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "When two extremes unite,\n"
# 497 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "the result can be unstoppable.$"
# 498 "data/maps/MossdeepCity_Gym/scripts.pory"

# 499 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_MauraIntro:
# 500 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "The roads you have traveled…\n"
# 501 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "What you have experienced…\p"
# 502 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Come at me with everything you've\n"
# 503 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "learned!$"
# 504 "data/maps/MossdeepCity_Gym/scripts.pory"

# 505 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_MauraDefeat:
# 506 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "You've traveled a path of greatness!$"
# 507 "data/maps/MossdeepCity_Gym/scripts.pory"

# 508 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_MauraPostBattle:
# 509 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "A bright future awaits those who have\n"
# 510 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "worked diligently.\p"
# 511 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "For those who lazed idly, there is\n"
# 512 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "only despair at the end.\p"
# 513 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "What goes around comes around…$"
# 514 "data/maps/MossdeepCity_Gym/scripts.pory"

# 515 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_SylviaIntro:
# 516 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "You may have come this far…\p"
# 517 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "But against our LEADERS,\n"
# 518 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "you won't stand a chance!$"
# 519 "data/maps/MossdeepCity_Gym/scripts.pory"

# 520 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_SylviaDefeat:
# 521 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Impossible…\n"
# 522 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "You broke through…$"
# 523 "data/maps/MossdeepCity_Gym/scripts.pory"

# 524 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_SylviaPostBattle:
# 525 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA and SOUL are prodigies.\p"
# 526 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Two minds, two styles,\n"
# 527 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "perfectly in sync.\p"
# 528 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "To challenge them is to face\n"
# 529 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "true genius.$"
# 530 "data/maps/MossdeepCity_Gym/scripts.pory"

# 531 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_NateIntro:
# 532 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Hohoho.\p"
# 533 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "In this GYM, you don't face just\n"
# 534 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "strength, you face contrast.\p"
# 535 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Tell me… can you stand between\n"
# 536 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "two extremes without wavering?$"
# 537 "data/maps/MossdeepCity_Gym/scripts.pory"

# 538 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_NateDefeat:
# 539 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Oh! My, my!\n"
# 540 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "You held your ground perfectly!$"
# 541 "data/maps/MossdeepCity_Gym/scripts.pory"

# 542 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_NatePostBattle:
# 543 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Most TRAINERS lean too far\n"
# 544 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "to one side.\p"
# 545 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "But real mastery lies in balance.\n"
# 546 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Neither consumed by light,\l"
# 547 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "nor swallowed by shadow.$"
# 548 "data/maps/MossdeepCity_Gym/scripts.pory"

# 549 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_KathleenIntro:
# 550 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Let me show you a perfectly awful,\n"
# 551 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "horrifying time!$"
# 552 "data/maps/MossdeepCity_Gym/scripts.pory"

# 553 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_KathleenDefeat:
# 554 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "N-nooooo!$"
# 555 "data/maps/MossdeepCity_Gym/scripts.pory"

# 556 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_KathleenPostBattle:
# 557 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Your vitality is contagious!\n"
# 558 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Get away from me quickly!$"
# 559 "data/maps/MossdeepCity_Gym/scripts.pory"

# 560 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_CliffordIntro:
# 561 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "I may be past my prime, but I suggest\n"
# 562 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "you not patronize me.$"
# 563 "data/maps/MossdeepCity_Gym/scripts.pory"

# 564 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_CliffordDefeat:
# 565 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Ah, you overflow with the power\n"
# 566 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "of youth!$"
# 567 "data/maps/MossdeepCity_Gym/scripts.pory"

# 568 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_CliffordPostBattle:
# 569 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "It seems that I could not overcome\n"
# 570 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "your youthful energy.$"
# 571 "data/maps/MossdeepCity_Gym/scripts.pory"

# 572 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_MaceyIntro:
# 573 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "You're not getting to the end!\n"
# 574 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Not without proving yourself first!$"
# 575 "data/maps/MossdeepCity_Gym/scripts.pory"

# 576 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_MaceyDefeat:
# 577 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "How are you that strong…?$"
# 578 "data/maps/MossdeepCity_Gym/scripts.pory"

# 579 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_MaceyPostBattle:
# 580 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Humph! Strength alone isn't enough\n"
# 581 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "for this GYM.\p"
# 582 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA and SOUL demand control\n"
# 583 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "and awareness.\p"
# 584 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "If you lose yourself to one side,\n"
# 585 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "you'll never defeat them.$"
# 586 "data/maps/MossdeepCity_Gym/scripts.pory"

# 587 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_NicholasIntro:
# 588 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Wroooar! Have a taste of my super\n"
# 589 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "POKéMON hard-battling power!$"
# 590 "data/maps/MossdeepCity_Gym/scripts.pory"

# 591 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_NicholasDefeat:
# 592 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Oh!\n"
# 593 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Done in!$"
# 594 "data/maps/MossdeepCity_Gym/scripts.pory"

# 595 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_NicholasPostBattle:
# 596 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "All right! I think I'll develop a special\n"
# 597 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "invincible POKéMON power next.$"
# 598 "data/maps/MossdeepCity_Gym/scripts.pory"

# 599 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_TateAndLizaIntro:
# 600 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: So… you've reached us.\p"
# 601 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: Hehe… did the contrast surprise you?\p"
# 602 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Two LEADERS.\n"
# 603 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: Two paths.\p"
# 604 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: We are twin sisters.\n"
# 605 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: Born beneath the same sky.\p"
# 606 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Yet I walk in shadow.\n"
# 607 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: And I shine in light.\p"
# 608 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: DARKNESS is calm. Precise.\n"
# 609 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: FAIRY light is radiant. Hopeful.\p"
# 610 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Opposites since birth.\n"
# 611 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: But never apart.\p"
# 612 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Like Yin and Yang.\n"
# 613 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: Different… yet whole.\p"
# 614 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: We do not clash.\n"
# 615 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: We complete.\p"
# 616 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Two minds.\n"
# 617 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: One rhythm.\p"
# 618 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Our battle is balance.\n"
# 619 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: Our strength is unity.\p"
# 620 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Can you stand between us?\n"
# 621 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: Can you endure perfect harmony?$"
# 622 "data/maps/MossdeepCity_Gym/scripts.pory"

# 623 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_TateAndLizaDefeat:
# 624 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Our harmony…\n"
# 625 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: You broke through it…\p"
# 626 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: You stood between shadow and light…\n"
# 627 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: And did not falter.\p"
# 628 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: That is no small feat.\n"
# 629 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: Not against us.\p"
# 630 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: We were born as opposites.\n"
# 631 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: But we fight as one.\p"
# 632 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Today…\n"
# 633 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: You surpassed that unity.\p"
# 634 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Accept this as proof.\n"
# 635 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: You've earned it.$"
# 636 "data/maps/MossdeepCity_Gym/scripts.pory"

# 637 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_ReceivedMindBadge:
# 638 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "{PLAYER} received the MIND BADGE\n"
# 639 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "from SOUL and LUNA.$"
# 640 "data/maps/MossdeepCity_Gym/scripts.pory"

# 641 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_ExplainMindBadgeTakeThis:
# 642 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: The MIND BADGE enhances the\n"
# 643 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SP. ATK and SP. DEF of POKéMON.\p"
# 644 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: It also lets you use the HM move\n"
# 645 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "DIVE outside of battle.\p"
# 646 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: You should also take this, too.$"
# 647 "data/maps/MossdeepCity_Gym/scripts.pory"

# 648 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_ExplainCalmMind:
# 649 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: That TM04 contains…\n"
# 650 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: CALM MIND!\p"
# 651 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: It raises SP. ATK and…\n"
# 652 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: It raises SP. DEF!\p"
# 653 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: It's a move that's perfect…\n"
# 654 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: For ofense and defense!\p"
# 655 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "… … … … … …$"
# 656 "data/maps/MossdeepCity_Gym/scripts.pory"

# 657 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_RegisteredTateAndLiza:
# 658 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Registered GYM LEADERS SOUL & LUNA\n"
# 659 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "in the POKéNAV.$"
# 660 "data/maps/MossdeepCity_Gym/scripts.pory"

# 661 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_TateAndLizaPostBattle:
# 662 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Looks like the bond between you\n"
# 663 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "and your POKéMON is far stronger than\l"
# 664 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "the bond that we share as twins.\p"
# 665 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: You will become even stronger!\n"
# 666 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "We've battled you, so we know.$"
# 667 "data/maps/MossdeepCity_Gym/scripts.pory"

# 668 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_TateAndLizaNeedTwoMons:
# 669 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Hehehe… Were you surprised?\p"
# 670 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: That there are two GYM LEADERS?\p"
# 671 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Oops, you have only one…\n"
# 672 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: POKéMON that can battle.\p"
# 673 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: We can't battle that way!\p"
# 674 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: If you want to challenge us,\n"
# 675 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "bring some more POKéMON.$"
# 676 "data/maps/MossdeepCity_Gym/scripts.pory"

# 677 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_GymStatue:
# 678 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "MOSSDEEP CITY POKéMON GYM$"
# 679 "data/maps/MossdeepCity_Gym/scripts.pory"

# 680 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_GymStatueCertified:
# 681 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "MOSSDEEP CITY POKéMON GYM\p"
# 682 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL AND LUNA'S CERTIFIED TRAINERS:\n"
# 683 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "{PLAYER}$"
# 684 "data/maps/MossdeepCity_Gym/scripts.pory"

# 685 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_TateAndLizaPreRematch:
# 686 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "TATE: POKéMON…\n"
# 687 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LIZA: POKéMON…\p"
# 688 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "TATE: By changing the party's mix…\n"
# 689 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LIZA: The battle style changes.\p"
# 690 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "TATE: But me…\n"
# 691 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LIZA: But me…\p"
# 692 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "TATE: I'll always be with LIZA!\n"
# 693 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LIZA: I'll always be with TATE!\p"
# 694 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "TATE: Our combination…\n"
# 695 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LIZA: We'll show you again and again!$"
# 696 "data/maps/MossdeepCity_Gym/scripts.pory"

# 697 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_TateAndLizaRematchDefeat:
# 698 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "TATE: You and your POKéMON…\n"
# 699 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LIZA: It's as if you were siblings!$"
# 700 "data/maps/MossdeepCity_Gym/scripts.pory"

# 701 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_TateAndLizaPostRematch:
# 702 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "TATE: You can knock us down,\n"
# 703 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "but we'll never stay down!\p"
# 704 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LIZA: Because the two of us,\n"
# 705 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "we always support each other!$"
# 706 "data/maps/MossdeepCity_Gym/scripts.pory"

# 707 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_TateAndLizaRematchNeedTwoMons:
# 708 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "TATE: You're back again…\n"
# 709 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LIZA: You're back again…\p"
# 710 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "TATE: To give us a rematch.\n"
# 711 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LIZA: To give us a rematch.\p"
# 712 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "TATE: But…\n"
# 713 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LIZA: For our match…\p"
# 714 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "TATE: You brought just one POKéMON!\n"
# 715 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LIZA: You brought just one POKéMON!\p"
# 716 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "TATE: We need you to bring at least…\n"
# 717 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LIZA: Two POKéMON when you come back.$"
