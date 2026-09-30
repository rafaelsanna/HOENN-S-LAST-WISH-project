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
    goto_if_set FLAG_DEFEATED_MOSSDEEP_GYM, MossdeepCity_Gym_EventScript_TateAndLizaAfterBattle
# 62 "data/maps/MossdeepCity_Gym/scripts.pory"
    getdifficulty VAR_RESULT
# 63 "data/maps/MossdeepCity_Gym/scripts.pory"
    goto_if_eq VAR_RESULT, 1, MossdeepCity_Gym_EventScript_TateAndLizaHard
# 64 "data/maps/MossdeepCity_Gym/scripts.pory"

# 65 "data/maps/MossdeepCity_Gym/scripts.pory"
    // Casual Mode
# 66 "data/maps/MossdeepCity_Gym/scripts.pory"
    trainerbattle_double TRAINER_SOULLUNA_CASUAL, MossdeepCity_Gym_Text_TateAndLizaIntro, MossdeepCity_Gym_Text_TateAndLizaDefeat, MossdeepCity_Gym_Text_TateAndLizaNeedTwoMons, MossdeepCity_Gym_EventScript_TateAndLizaDefeated, NO_MUSIC
# 67 "data/maps/MossdeepCity_Gym/scripts.pory"
    goto MossdeepCity_Gym_EventScript_TateAndLizaAfterBattle
# 68 "data/maps/MossdeepCity_Gym/scripts.pory"

# 69 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_TateAndLizaHard::
# 70 "data/maps/MossdeepCity_Gym/scripts.pory"
    // Hard Mode
# 71 "data/maps/MossdeepCity_Gym/scripts.pory"
    trainerbattle_double TRAINER_TATE_AND_LIZA_1, MossdeepCity_Gym_Text_TateAndLizaIntro, MossdeepCity_Gym_Text_TateAndLizaDefeat, MossdeepCity_Gym_Text_TateAndLizaNeedTwoMons, MossdeepCity_Gym_EventScript_TateAndLizaDefeated, NO_MUSIC
# 72 "data/maps/MossdeepCity_Gym/scripts.pory"
    // Fall through to AfterBattle
# 73 "data/maps/MossdeepCity_Gym/scripts.pory"

# 74 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_TateAndLizaAfterBattle::
# 75 "data/maps/MossdeepCity_Gym/scripts.pory"
    goto_if_unset FLAG_RECEIVED_TM_CALM_MIND, MossdeepCity_Gym_EventScript_GiveCalmMind2
# 76 "data/maps/MossdeepCity_Gym/scripts.pory"
    setorcopyvar VAR_TRAINER_BATTLE_OPPONENT_A, TRAINER_TATE_AND_LIZA_1
# 77 "data/maps/MossdeepCity_Gym/scripts.pory"
    specialvar VAR_RESULT, ShouldTryRematchBattle
# 78 "data/maps/MossdeepCity_Gym/scripts.pory"
    goto_if_eq VAR_RESULT, TRUE, MossdeepCity_Gym_EventScript_TateAndLizaRematch
# 79 "data/maps/MossdeepCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_LUNA, EMOTE_NORMAL
# 80 "data/maps/MossdeepCity_Gym/scripts.pory"
    msgbox MossdeepCity_Gym_Text_TateAndLizaPostBattle, MSGBOX_DEFAULT
# 81 "data/maps/MossdeepCity_Gym/scripts.pory"
    removefieldmugshot
# 82 "data/maps/MossdeepCity_Gym/scripts.pory"
    release
# 83 "data/maps/MossdeepCity_Gym/scripts.pory"
    end
# 84 "data/maps/MossdeepCity_Gym/scripts.pory"

# 85 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_TateAndLizaDefeated::
# 86 "data/maps/MossdeepCity_Gym/scripts.pory"
	message MossdeepCity_Gym_Text_ReceivedMindBadge
# 87 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmessage
# 88 "data/maps/MossdeepCity_Gym/scripts.pory"
	call Common_EventScript_PlayGymBadgeFanfare
# 89 "data/maps/MossdeepCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUNA, EMOTE_NORMAL
# 90 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_ExplainMindBadgeTakeThis, MSGBOX_DEFAULT
# 91 "data/maps/MossdeepCity_Gym/scripts.pory"
	removefieldmugshot
# 92 "data/maps/MossdeepCity_Gym/scripts.pory"
    setflag FLAG_DEFEATED_MOSSDEEP_GYM
# 93 "data/maps/MossdeepCity_Gym/scripts.pory"
    setflag FLAG_BADGE07_GET
# 94 "data/maps/MossdeepCity_Gym/scripts.pory"
    call EventScript_HideMrBriney
# 95 "data/maps/MossdeepCity_Gym/scripts.pory"
    setflag FLAG_HIDE_AQUA_HIDEOUT_GRUNTS
# 96 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_SLATEPORT_CITY_STERNS_SHIPYARD_MR_BRINEY
# 97 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_UNKNOWN_0x393
# 98 "data/maps/MossdeepCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 99 "data/maps/MossdeepCity_Gym/scripts.pory"
	call Common_EventScript_SetGymTrainers
# 100 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_SLATEPORT_CITY_HARBOR_PATRONS
# 101 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_CITY_TEAM_MAGMA
# 102 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_1F_TEAM_MAGMA
# 103 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_2F_TEAM_MAGMA
# 104 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_2F_STEVEN
# 105 "data/maps/MossdeepCity_Gym/scripts.pory"
	setvar VAR_MOSSDEEP_CITY_STATE, 1
# 106 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CITY_SPACE_CENTER_1F_STEVEN
# 107 "data/maps/MossdeepCity_Gym/scripts.pory"
	setvar VAR_MOSSDEEP_SPACE_CENTER_STATE, 1
# 108 "data/maps/MossdeepCity_Gym/scripts.pory"
	call MossdeepCity_Gym_EventScript_GiveCalmMind
# 109 "data/maps/MossdeepCity_Gym/scripts.pory"
	closemessage
# 110 "data/maps/MossdeepCity_Gym/scripts.pory"
	delay 30
# 111 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitfanfare
# 112 "data/maps/MossdeepCity_Gym/scripts.pory"
	closemessage
# 113 "data/maps/MossdeepCity_Gym/scripts.pory"
	delay 30
# 114 "data/maps/MossdeepCity_Gym/scripts.pory"
	release
# 115 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 116 "data/maps/MossdeepCity_Gym/scripts.pory"

# 117 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_GiveCalmMind2::
# 118 "data/maps/MossdeepCity_Gym/scripts.pory"
	giveitem ITEM_TM_DAZZLING_GLEAM
# 119 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 120 "data/maps/MossdeepCity_Gym/scripts.pory"
	giveitem ITEM_TM_DARK_PULSE
# 121 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 122 "data/maps/MossdeepCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUNA, EMOTE_NORMAL
# 123 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_ExplainCalmMind, MSGBOX_DEFAULT
# 124 "data/maps/MossdeepCity_Gym/scripts.pory"
	removefieldmugshot
# 125 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_CALM_MIND
# 126 "data/maps/MossdeepCity_Gym/scripts.pory"
	release
# 127 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 128 "data/maps/MossdeepCity_Gym/scripts.pory"

# 129 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_GiveCalmMind::
# 130 "data/maps/MossdeepCity_Gym/scripts.pory"
	giveitem ITEM_TM_DAZZLING_GLEAM
# 131 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 132 "data/maps/MossdeepCity_Gym/scripts.pory"
	giveitem ITEM_TM_DARK_PULSE
# 133 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 134 "data/maps/MossdeepCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUNA, EMOTE_NORMAL
# 135 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_ExplainCalmMind, MSGBOX_DEFAULT
# 136 "data/maps/MossdeepCity_Gym/scripts.pory"
	removefieldmugshot
# 137 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_CALM_MIND
# 138 "data/maps/MossdeepCity_Gym/scripts.pory"
	return
# 139 "data/maps/MossdeepCity_Gym/scripts.pory"

# 140 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_TateAndLizaRematch::
# 141 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_rematch_double TRAINER_TATE_AND_LIZA_1, MossdeepCity_Gym_Text_TateAndLizaPreRematch, MossdeepCity_Gym_Text_TateAndLizaRematchDefeat, MossdeepCity_Gym_Text_TateAndLizaRematchNeedTwoMons
# 142 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_TateAndLizaPostRematch, MSGBOX_AUTOCLOSE
# 143 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 144 "data/maps/MossdeepCity_Gym/scripts.pory"

# 145 "data/maps/MossdeepCity_Gym/scripts.pory"
@ All the below switch scripts are leftover from RS and are functionally unused
# 146 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Switch1::
# 147 "data/maps/MossdeepCity_Gym/scripts.pory"
	lockall
# 148 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GYM_SWITCH_1, MossdeepCity_Gym_EventScript_ClearSwitch1
# 149 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_MOSSDEEP_GYM_SWITCH_1
# 150 "data/maps/MossdeepCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, MossdeepCity_Gym_Movement_WaitAfterSwitchUse
# 151 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 152 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 5, 5, METATILE_RSMossdeepGym_RedArrow_Right, FALSE
# 153 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 2, 7, METATILE_RSMossdeepGym_Switch_Down, TRUE
# 154 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed
# 155 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 156 "data/maps/MossdeepCity_Gym/scripts.pory"

# 157 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed::
# 158 "data/maps/MossdeepCity_Gym/scripts.pory"
	special DrawWholeMapView
# 159 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_CLICK
# 160 "data/maps/MossdeepCity_Gym/scripts.pory"
	releaseall
# 161 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 162 "data/maps/MossdeepCity_Gym/scripts.pory"

# 163 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_ClearSwitch1::
# 164 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_MOSSDEEP_GYM_SWITCH_1
# 165 "data/maps/MossdeepCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, MossdeepCity_Gym_Movement_WaitAfterSwitchUse
# 166 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 167 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 5, 5, METATILE_RSMossdeepGym_RedArrow_Left, FALSE
# 168 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 2, 7, METATILE_RSMossdeepGym_Switch_Up, TRUE
# 169 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed
# 170 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 171 "data/maps/MossdeepCity_Gym/scripts.pory"

# 172 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Switch2::
# 173 "data/maps/MossdeepCity_Gym/scripts.pory"
	lockall
# 174 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GYM_SWITCH_2, MossdeepCity_Gym_EventScript_ClearSwitch2
# 175 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_MOSSDEEP_GYM_SWITCH_2
# 176 "data/maps/MossdeepCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, MossdeepCity_Gym_Movement_WaitAfterSwitchUse
# 177 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 178 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 8, 14, METATILE_RSMossdeepGym_RedArrow_Right, FALSE
# 179 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 8, 10, METATILE_RSMossdeepGym_Switch_Down, TRUE
# 180 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed
# 181 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 182 "data/maps/MossdeepCity_Gym/scripts.pory"

# 183 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_ClearSwitch2::
# 184 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_MOSSDEEP_GYM_SWITCH_2
# 185 "data/maps/MossdeepCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, MossdeepCity_Gym_Movement_WaitAfterSwitchUse
# 186 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 187 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 8, 14, METATILE_RSMossdeepGym_RedArrow_Down, FALSE
# 188 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 8, 10, METATILE_RSMossdeepGym_Switch_Up, TRUE
# 189 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed
# 190 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 191 "data/maps/MossdeepCity_Gym/scripts.pory"

# 192 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Switch3::
# 193 "data/maps/MossdeepCity_Gym/scripts.pory"
	lockall
# 194 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GYM_SWITCH_3, MossdeepCity_Gym_EventScript_ClearSwitch3
# 195 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_MOSSDEEP_GYM_SWITCH_3
# 196 "data/maps/MossdeepCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, MossdeepCity_Gym_Movement_WaitAfterSwitchUse
# 197 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 198 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 15, 17, METATILE_RSMossdeepGym_RedArrow_Left, FALSE
# 199 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 17, 15, METATILE_RSMossdeepGym_Switch_Down, TRUE
# 200 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed
# 201 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 202 "data/maps/MossdeepCity_Gym/scripts.pory"

# 203 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_ClearSwitch3::
# 204 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_MOSSDEEP_GYM_SWITCH_3
# 205 "data/maps/MossdeepCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, MossdeepCity_Gym_Movement_WaitAfterSwitchUse
# 206 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 207 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 15, 17, METATILE_RSMossdeepGym_RedArrow_Right, FALSE
# 208 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 17, 15, METATILE_RSMossdeepGym_Switch_Up, TRUE
# 209 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed
# 210 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 211 "data/maps/MossdeepCity_Gym/scripts.pory"

# 212 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Switch4::
# 213 "data/maps/MossdeepCity_Gym/scripts.pory"
	lockall
# 214 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GYM_SWITCH_4, MossdeepCity_Gym_EventScript_ClearSwitch4
# 215 "data/maps/MossdeepCity_Gym/scripts.pory"
	setflag FLAG_MOSSDEEP_GYM_SWITCH_4
# 216 "data/maps/MossdeepCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, MossdeepCity_Gym_Movement_WaitAfterSwitchUse
# 217 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 218 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 1, 23, METATILE_RSMossdeepGym_RedArrow_Up, FALSE
# 219 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 5, 24, METATILE_RSMossdeepGym_Switch_Down, TRUE
# 220 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed
# 221 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 222 "data/maps/MossdeepCity_Gym/scripts.pory"

# 223 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_ClearSwitch4::
# 224 "data/maps/MossdeepCity_Gym/scripts.pory"
	clearflag FLAG_MOSSDEEP_GYM_SWITCH_4
# 225 "data/maps/MossdeepCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, MossdeepCity_Gym_Movement_WaitAfterSwitchUse
# 226 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 227 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 1, 23, METATILE_RSMossdeepGym_RedArrow_Right, FALSE
# 228 "data/maps/MossdeepCity_Gym/scripts.pory"
	setmetatile 5, 24, METATILE_RSMossdeepGym_Switch_Up, TRUE
# 229 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_DrawMapAfterSwitchUsed
# 230 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 231 "data/maps/MossdeepCity_Gym/scripts.pory"

# 232 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_WarpToEntrance::
# 233 "data/maps/MossdeepCity_Gym/scripts.pory"
	lockall
# 234 "data/maps/MossdeepCity_Gym/scripts.pory"
	warpmossdeepgym MAP_MOSSDEEP_CITY_GYM, 7, 30
# 235 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitstate
# 236 "data/maps/MossdeepCity_Gym/scripts.pory"
	releaseall
# 237 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 238 "data/maps/MossdeepCity_Gym/scripts.pory"

# 239 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Preston::
# 240 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_PRESTON, MossdeepCity_Gym_Text_PrestonIntro, MossdeepCity_Gym_Text_PrestonDefeat
# 241 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_PrestonPostBattle, MSGBOX_AUTOCLOSE
# 242 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 243 "data/maps/MossdeepCity_Gym/scripts.pory"

# 244 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Virgil::
# 245 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_VIRGIL, MossdeepCity_Gym_Text_VirgilIntro, MossdeepCity_Gym_Text_VirgilDefeat
# 246 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_VirgilPostBattle, MSGBOX_AUTOCLOSE
# 247 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 248 "data/maps/MossdeepCity_Gym/scripts.pory"

# 249 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Blake::
# 250 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_BLAKE, MossdeepCity_Gym_Text_BlakeIntro, MossdeepCity_Gym_Text_BlakeDefeat
# 251 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_BlakePostBattle, MSGBOX_AUTOCLOSE
# 252 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 253 "data/maps/MossdeepCity_Gym/scripts.pory"

# 254 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Hannah::
# 255 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_HANNAH, MossdeepCity_Gym_Text_HannahIntro, MossdeepCity_Gym_Text_HannahDefeat
# 256 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_HannahPostBattle, MSGBOX_AUTOCLOSE
# 257 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 258 "data/maps/MossdeepCity_Gym/scripts.pory"

# 259 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Samantha::
# 260 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_SAMANTHA, MossdeepCity_Gym_Text_SamanthaIntro, MossdeepCity_Gym_Text_SamanthaDefeat
# 261 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_SamanthaPostBattle, MSGBOX_AUTOCLOSE
# 262 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 263 "data/maps/MossdeepCity_Gym/scripts.pory"

# 264 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Maura::
# 265 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_MAURA, MossdeepCity_Gym_Text_MauraIntro, MossdeepCity_Gym_Text_MauraDefeat
# 266 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_MauraPostBattle, MSGBOX_AUTOCLOSE
# 267 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 268 "data/maps/MossdeepCity_Gym/scripts.pory"

# 269 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Sylvia::
# 270 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_SYLVIA, MossdeepCity_Gym_Text_SylviaIntro, MossdeepCity_Gym_Text_SylviaDefeat
# 271 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_SylviaPostBattle, MSGBOX_AUTOCLOSE
# 272 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 273 "data/maps/MossdeepCity_Gym/scripts.pory"

# 274 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Nate::
# 275 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_NATE, MossdeepCity_Gym_Text_NateIntro, MossdeepCity_Gym_Text_NateDefeat
# 276 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_NatePostBattle, MSGBOX_AUTOCLOSE
# 277 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 278 "data/maps/MossdeepCity_Gym/scripts.pory"

# 279 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Macey::
# 280 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_MACEY, MossdeepCity_Gym_Text_MaceyIntro, MossdeepCity_Gym_Text_MaceyDefeat
# 281 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_MaceyPostBattle, MSGBOX_AUTOCLOSE
# 282 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 283 "data/maps/MossdeepCity_Gym/scripts.pory"

# 284 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Clifford::
# 285 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_CLIFFORD, MossdeepCity_Gym_Text_CliffordIntro, MossdeepCity_Gym_Text_CliffordDefeat
# 286 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_CliffordPostBattle, MSGBOX_AUTOCLOSE
# 287 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 288 "data/maps/MossdeepCity_Gym/scripts.pory"

# 289 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Nicholas::
# 290 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_NICHOLAS, MossdeepCity_Gym_Text_NicholasIntro, MossdeepCity_Gym_Text_NicholasDefeat
# 291 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_NicholasPostBattle, MSGBOX_AUTOCLOSE
# 292 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 293 "data/maps/MossdeepCity_Gym/scripts.pory"

# 294 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_Kathleen::
# 295 "data/maps/MossdeepCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_KATHLEEN, MossdeepCity_Gym_Text_KathleenIntro, MossdeepCity_Gym_Text_KathleenDefeat
# 296 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_KathleenPostBattle, MSGBOX_AUTOCLOSE
# 297 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 298 "data/maps/MossdeepCity_Gym/scripts.pory"

# 299 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_GymGuide::
# 300 "data/maps/MossdeepCity_Gym/scripts.pory"
	lock
# 301 "data/maps/MossdeepCity_Gym/scripts.pory"
	faceplayer
# 302 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_MOSSDEEP_GYM, MossdeepCity_Gym_EventScript_GymGuidePostVictory
# 303 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 304 "data/maps/MossdeepCity_Gym/scripts.pory"
	release
# 305 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 306 "data/maps/MossdeepCity_Gym/scripts.pory"

# 307 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_GymGuidePostVictory::
# 308 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 309 "data/maps/MossdeepCity_Gym/scripts.pory"
	release
# 310 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 311 "data/maps/MossdeepCity_Gym/scripts.pory"

# 312 "data/maps/MossdeepCity_Gym/scripts.pory"
@ Leftover from RS, functionally unused
# 313 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Movement_WaitAfterSwitchUse:
# 314 "data/maps/MossdeepCity_Gym/scripts.pory"
	delay_16
# 315 "data/maps/MossdeepCity_Gym/scripts.pory"
	delay_16
# 316 "data/maps/MossdeepCity_Gym/scripts.pory"
	step_end
# 317 "data/maps/MossdeepCity_Gym/scripts.pory"

# 318 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_LeftGymStatue::
# 319 "data/maps/MossdeepCity_Gym/scripts.pory"
	lockall
# 320 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE07_GET, MossdeepCity_Gym_EventScript_GymStatueCertified
# 321 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_GymStatue
# 322 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 323 "data/maps/MossdeepCity_Gym/scripts.pory"

# 324 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_RightGymStatue::
# 325 "data/maps/MossdeepCity_Gym/scripts.pory"
	lockall
# 326 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE07_GET, MossdeepCity_Gym_EventScript_GymStatueCertified
# 327 "data/maps/MossdeepCity_Gym/scripts.pory"
	goto MossdeepCity_Gym_EventScript_GymStatue
# 328 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 329 "data/maps/MossdeepCity_Gym/scripts.pory"

# 330 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_GymStatueCertified::
# 331 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 332 "data/maps/MossdeepCity_Gym/scripts.pory"
	releaseall
# 333 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 334 "data/maps/MossdeepCity_Gym/scripts.pory"

# 335 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_GymStatue::
# 336 "data/maps/MossdeepCity_Gym/scripts.pory"
	msgbox MossdeepCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 337 "data/maps/MossdeepCity_Gym/scripts.pory"
	releaseall
# 338 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 339 "data/maps/MossdeepCity_Gym/scripts.pory"

# 340 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_YellowFloorSwitch::
# 341 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_SWITCH
# 342 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitse
# 343 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_REPEL
# 344 "data/maps/MossdeepCity_Gym/scripts.pory"
	initrotatingtilepuzzle FALSE
# 345 "data/maps/MossdeepCity_Gym/scripts.pory"
	moverotatingtileobjects 0
# 346 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 347 "data/maps/MossdeepCity_Gym/scripts.pory"
	turnrotatingtileobjects
# 348 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 349 "data/maps/MossdeepCity_Gym/scripts.pory"
	freerotatingtilepuzzle
# 350 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 351 "data/maps/MossdeepCity_Gym/scripts.pory"

# 352 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_BlueFloorSwitch::
# 353 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_SWITCH
# 354 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitse
# 355 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_REPEL
# 356 "data/maps/MossdeepCity_Gym/scripts.pory"
	initrotatingtilepuzzle FALSE
# 357 "data/maps/MossdeepCity_Gym/scripts.pory"
	moverotatingtileobjects 1
# 358 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 359 "data/maps/MossdeepCity_Gym/scripts.pory"
	turnrotatingtileobjects
# 360 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 361 "data/maps/MossdeepCity_Gym/scripts.pory"
	freerotatingtilepuzzle
# 362 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 363 "data/maps/MossdeepCity_Gym/scripts.pory"

# 364 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_GreenFloorSwitch::
# 365 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_SWITCH
# 366 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitse
# 367 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_REPEL
# 368 "data/maps/MossdeepCity_Gym/scripts.pory"
	initrotatingtilepuzzle FALSE
# 369 "data/maps/MossdeepCity_Gym/scripts.pory"
	moverotatingtileobjects 2
# 370 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 371 "data/maps/MossdeepCity_Gym/scripts.pory"
	turnrotatingtileobjects
# 372 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 373 "data/maps/MossdeepCity_Gym/scripts.pory"
	freerotatingtilepuzzle
# 374 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 375 "data/maps/MossdeepCity_Gym/scripts.pory"

# 376 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_PurpleFloorSwitch::
# 377 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_SWITCH
# 378 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitse
# 379 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_REPEL
# 380 "data/maps/MossdeepCity_Gym/scripts.pory"
	initrotatingtilepuzzle FALSE
# 381 "data/maps/MossdeepCity_Gym/scripts.pory"
	moverotatingtileobjects 3
# 382 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 383 "data/maps/MossdeepCity_Gym/scripts.pory"
	turnrotatingtileobjects
# 384 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 385 "data/maps/MossdeepCity_Gym/scripts.pory"
	freerotatingtilepuzzle
# 386 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 387 "data/maps/MossdeepCity_Gym/scripts.pory"

# 388 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_EventScript_RedFloorSwitch::
# 389 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_SWITCH
# 390 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitse
# 391 "data/maps/MossdeepCity_Gym/scripts.pory"
	playse SE_REPEL
# 392 "data/maps/MossdeepCity_Gym/scripts.pory"
	initrotatingtilepuzzle FALSE
# 393 "data/maps/MossdeepCity_Gym/scripts.pory"
	moverotatingtileobjects 4
# 394 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 395 "data/maps/MossdeepCity_Gym/scripts.pory"
	turnrotatingtileobjects
# 396 "data/maps/MossdeepCity_Gym/scripts.pory"
	waitmovement 0
# 397 "data/maps/MossdeepCity_Gym/scripts.pory"
	freerotatingtilepuzzle
# 398 "data/maps/MossdeepCity_Gym/scripts.pory"
	end
# 399 "data/maps/MossdeepCity_Gym/scripts.pory"

# 400 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_GymGuideAdvice:
# 401 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Yo, how's it going, CHAMPION-bound\n"
# 402 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "{PLAYER}?\p"
# 403 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "This GYM is a split challenge!\n"
# 404 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Two LEADERS, two styles!\p"
# 405 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "One commands FAIRY-type POKEMON,\n"
# 406 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "bright, tricky, and unpredictable.\p"
# 407 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "The other wields DARK-type POKEMON,\n"
# 408 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "ruthless, tactical, and merciless.\p"
# 409 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "If you rush in blindly, you'll get\n"
# 410 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "outplayed from both sides.\p"
# 411 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "They fight like opposites\n"
# 412 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "light and shadow in sync.\p"
# 413 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "If you want to win, you'll need more\n"
# 414 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "than strength. You'll need strategy.\n"
# 415 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Show them your bond is unbreakable!$"
# 416 "data/maps/MossdeepCity_Gym/scripts.pory"

# 417 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_GymGuidePostVictory:
# 418 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Wow, you're astounding!\n"
# 419 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "You're one great TRAINER!$"
# 420 "data/maps/MossdeepCity_Gym/scripts.pory"

# 421 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_PrestonIntro:
# 422 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Battles hinge on the strength of your\n"
# 423 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "spirit!\p"
# 424 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "This GYM used to follow only one path.\n"
# 425 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "But Luna and Soul changed that.\p"
# 426 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "They became the first in HOENN\n"
# 427 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "to lead a split GYM.\p"
# 428 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "FAIRY and DARK.\n"
# 429 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Light and shadow in balance.$"
# 430 "data/maps/MossdeepCity_Gym/scripts.pory"

# 431 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_PrestonDefeat:
# 432 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "I lost…\n"
# 433 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "My spirit still wavers.$"
# 434 "data/maps/MossdeepCity_Gym/scripts.pory"

# 435 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_PrestonPostBattle:
# 436 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Luna's brilliance can blind you.\p"
# 437 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Soul's darkness can trap you.\p"
# 438 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "They are formidaveis together.\n"
# 439 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Do not hesitate when you face them.$"
# 440 "data/maps/MossdeepCity_Gym/scripts.pory"

# 441 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_VirgilIntro:
# 442 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Let me see your talent.\p"
# 443 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "I'm training under LUNA,\n"
# 444 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "master of DARK-type POKEMON.$"
# 445 "data/maps/MossdeepCity_Gym/scripts.pory"

# 446 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_VirgilDefeat:
# 447 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Your light cut through my shadows…$"
# 448 "data/maps/MossdeepCity_Gym/scripts.pory"

# 449 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_VirgilPostBattle:
# 450 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA teaches that darkness isn't evil.\p"
# 451 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "It's something you must control,\n"
# 452 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "not fear.\p"
# 453 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "I'm still learning to master it.$"
# 454 "data/maps/MossdeepCity_Gym/scripts.pory"

# 455 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_BlakeIntro:
# 456 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Did you know?\n"
# 457 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA and SOUL are twin sisters.\p"
# 458 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Same blood.\n"
# 459 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Completely different presences.\p"
# 460 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "One walks in shadow.\n"
# 461 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "The other shines like starlight.$"
# 462 "data/maps/MossdeepCity_Gym/scripts.pory"

# 463 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_BlakeDefeat:
# 464 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Even opposites can move in perfect\n"
# 465 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "harmony… I see that now.$"
# 466 "data/maps/MossdeepCity_Gym/scripts.pory"

# 467 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_BlakePostBattle:
# 468 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA dresses in dark elegance.\p"
# 469 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL prefers soft, radiant colors.\p"
# 470 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Their battle styles are opposites.\n"
# 471 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Their personalities too.\p"
# 472 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Yet together… they are unstoppable.$"
# 473 "data/maps/MossdeepCity_Gym/scripts.pory"

# 474 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_HannahIntro:
# 475 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "If I win, don't be too upset!\p"
# 476 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL always says battles should be\n"
# 477 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "fun and full of energy!$"
# 478 "data/maps/MossdeepCity_Gym/scripts.pory"

# 479 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_HannahDefeat:
# 480 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "You're amazing!\n"
# 481 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "That was exciting!$"
# 482 "data/maps/MossdeepCity_Gym/scripts.pory"

# 483 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_HannahPostBattle:
# 484 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "I learned from SOUL to stay positive.\p"
# 485 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "She smiles even in tough fights.\n"
# 486 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "That energy is contagious!\p"
# 487 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "I'll keep improving with that same\n"
# 488 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "enthusiasm!$"
# 489 "data/maps/MossdeepCity_Gym/scripts.pory"

# 490 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_SamanthaIntro:
# 491 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Do you believe in opposites?\p"
# 492 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Light and shadow.\n"
# 493 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Softness and severity.\p"
# 494 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Let's see how you handle both.$"
# 495 "data/maps/MossdeepCity_Gym/scripts.pory"

# 496 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_SamanthaDefeat:
# 497 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "You balanced both sides…$"
# 498 "data/maps/MossdeepCity_Gym/scripts.pory"

# 499 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_SamanthaPostBattle:
# 500 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA and SOUL prove something.\p"
# 501 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Opposites don't always clash.\n"
# 502 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Sometimes, they complete each other.\p"
# 503 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "When two extremes unite,\n"
# 504 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "the result can be unstoppable.$"
# 505 "data/maps/MossdeepCity_Gym/scripts.pory"

# 506 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_MauraIntro:
# 507 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "The roads you have traveled…\n"
# 508 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "What you have experienced…\p"
# 509 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Come at me with everything you've\n"
# 510 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "learned!$"
# 511 "data/maps/MossdeepCity_Gym/scripts.pory"

# 512 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_MauraDefeat:
# 513 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "You've traveled a path of greatness!$"
# 514 "data/maps/MossdeepCity_Gym/scripts.pory"

# 515 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_MauraPostBattle:
# 516 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "A bright future awaits those who have\n"
# 517 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "worked diligently.\p"
# 518 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "For those who lazed idly, there is\n"
# 519 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "only despair at the end.\p"
# 520 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "What goes around comes around…$"
# 521 "data/maps/MossdeepCity_Gym/scripts.pory"

# 522 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_SylviaIntro:
# 523 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "You may have come this far…\p"
# 524 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "But against our LEADERS,\n"
# 525 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "you won't stand a chance!$"
# 526 "data/maps/MossdeepCity_Gym/scripts.pory"

# 527 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_SylviaDefeat:
# 528 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Impossible…\n"
# 529 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "You broke through…$"
# 530 "data/maps/MossdeepCity_Gym/scripts.pory"

# 531 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_SylviaPostBattle:
# 532 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA and SOUL are prodigies.\p"
# 533 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Two minds, two styles,\n"
# 534 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "perfectly in sync.\p"
# 535 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "To challenge them is to face\n"
# 536 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "true genius.$"
# 537 "data/maps/MossdeepCity_Gym/scripts.pory"

# 538 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_NateIntro:
# 539 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Hohoho.\p"
# 540 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "In this GYM, you don't face just\n"
# 541 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "strength, you face contrast.\p"
# 542 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Tell me… can you stand between\n"
# 543 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "two extremes without wavering?$"
# 544 "data/maps/MossdeepCity_Gym/scripts.pory"

# 545 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_NateDefeat:
# 546 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Oh! My, my!\n"
# 547 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "You held your ground perfectly!$"
# 548 "data/maps/MossdeepCity_Gym/scripts.pory"

# 549 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_NatePostBattle:
# 550 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Most TRAINERS lean too far\n"
# 551 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "to one side.\p"
# 552 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "But real mastery lies in balance.\n"
# 553 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Neither consumed by light,\l"
# 554 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "nor swallowed by shadow.$"
# 555 "data/maps/MossdeepCity_Gym/scripts.pory"

# 556 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_KathleenIntro:
# 557 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Let me show you a perfectly awful,\n"
# 558 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "horrifying time!$"
# 559 "data/maps/MossdeepCity_Gym/scripts.pory"

# 560 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_KathleenDefeat:
# 561 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "N-nooooo!$"
# 562 "data/maps/MossdeepCity_Gym/scripts.pory"

# 563 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_KathleenPostBattle:
# 564 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Your vitality is contagious!\n"
# 565 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Get away from me quickly!$"
# 566 "data/maps/MossdeepCity_Gym/scripts.pory"

# 567 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_CliffordIntro:
# 568 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "I may be past my prime, but I suggest\n"
# 569 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "you not patronize me.$"
# 570 "data/maps/MossdeepCity_Gym/scripts.pory"

# 571 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_CliffordDefeat:
# 572 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Ah, you overflow with the power\n"
# 573 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "of youth!$"
# 574 "data/maps/MossdeepCity_Gym/scripts.pory"

# 575 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_CliffordPostBattle:
# 576 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "It seems that I could not overcome\n"
# 577 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "your youthful energy.$"
# 578 "data/maps/MossdeepCity_Gym/scripts.pory"

# 579 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_MaceyIntro:
# 580 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "You're not getting to the end!\n"
# 581 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Not without proving yourself first!$"
# 582 "data/maps/MossdeepCity_Gym/scripts.pory"

# 583 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_MaceyDefeat:
# 584 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "How are you that strong…?$"
# 585 "data/maps/MossdeepCity_Gym/scripts.pory"

# 586 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_MaceyPostBattle:
# 587 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Humph! Strength alone isn't enough\n"
# 588 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "for this GYM.\p"
# 589 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA and SOUL demand control\n"
# 590 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "and awareness.\p"
# 591 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "If you lose yourself to one side,\n"
# 592 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "you'll never defeat them.$"
# 593 "data/maps/MossdeepCity_Gym/scripts.pory"

# 594 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_NicholasIntro:
# 595 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Wroooar! Have a taste of my super\n"
# 596 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "POKéMON hard-battling power!$"
# 597 "data/maps/MossdeepCity_Gym/scripts.pory"

# 598 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_NicholasDefeat:
# 599 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Oh!\n"
# 600 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Done in!$"
# 601 "data/maps/MossdeepCity_Gym/scripts.pory"

# 602 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_NicholasPostBattle:
# 603 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "All right! I think I'll develop a special\n"
# 604 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "invincible POKéMON power next.$"
# 605 "data/maps/MossdeepCity_Gym/scripts.pory"

# 606 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_TateAndLizaIntro:
# 607 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: So… you've reached us.\p"
# 608 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: Hehe… did the contrast surprise you?\p"
# 609 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Two LEADERS.\n"
# 610 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: Two paths.\p"
# 611 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: We are twin sisters.\n"
# 612 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: Born beneath the same sky.\p"
# 613 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Yet I walk in shadow.\n"
# 614 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: And I shine in light.\p"
# 615 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: DARKNESS is calm. Precise.\n"
# 616 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: FAIRY light is radiant. Hopeful.\p"
# 617 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Opposites since birth.\n"
# 618 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: But never apart.\p"
# 619 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Like Yin and Yang.\n"
# 620 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: Different… yet whole.\p"
# 621 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: We do not clash.\n"
# 622 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: We complete.\p"
# 623 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Two minds.\n"
# 624 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: One rhythm.\p"
# 625 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Our battle is balance.\n"
# 626 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: Our strength is unity.\p"
# 627 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Can you stand between us?\n"
# 628 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: Can you endure perfect harmony?$"
# 629 "data/maps/MossdeepCity_Gym/scripts.pory"

# 630 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_TateAndLizaDefeat:
# 631 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Our harmony…\n"
# 632 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: You broke through it…\p"
# 633 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: You stood between shadow and light…\n"
# 634 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: And did not falter.\p"
# 635 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: That is no small feat.\n"
# 636 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: Not against us.\p"
# 637 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: We were born as opposites.\n"
# 638 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: But we fight as one.\p"
# 639 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Today…\n"
# 640 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: You surpassed that unity.\p"
# 641 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Accept this as proof.\n"
# 642 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: You've earned it.$"
# 643 "data/maps/MossdeepCity_Gym/scripts.pory"

# 644 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_ReceivedMindBadge:
# 645 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "{PLAYER} received the MIND BADGE\n"
# 646 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "from SOUL and LUNA.$"
# 647 "data/maps/MossdeepCity_Gym/scripts.pory"

# 648 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_ExplainMindBadgeTakeThis:
# 649 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: The MIND BADGE enhances the\n"
# 650 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SP. ATK and SP. DEF of POKéMON.\p"
# 651 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: It also lets you use the HM move\n"
# 652 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "DIVE outside of battle.\p"
# 653 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: You should also take this, too.$"
# 654 "data/maps/MossdeepCity_Gym/scripts.pory"

# 655 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_ExplainCalmMind:
# 656 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: TM04 contains…\n"
# 657 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: DAZZLING GLEAM!\p"
# 658 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: And TM56 contains…\n"
# 659 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: DARK PULSE!\p"
# 660 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Light and darkness…\n"
# 661 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: Two powers for one victory!$"
# 662 "data/maps/MossdeepCity_Gym/scripts.pory"

# 663 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_RegisteredTateAndLiza:
# 664 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "Registered GYM LEADERS SOUL & LUNA\n"
# 665 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "in the POKéNAV.$"
# 666 "data/maps/MossdeepCity_Gym/scripts.pory"

# 667 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_TateAndLizaPostBattle:
# 668 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Looks like the bond between you\n"
# 669 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "and your POKéMON is far stronger than\l"
# 670 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "the bond that we share as twins.\p"
# 671 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: You will become even stronger!\n"
# 672 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "We've battled you, so we know.$"
# 673 "data/maps/MossdeepCity_Gym/scripts.pory"

# 674 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_TateAndLizaNeedTwoMons:
# 675 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Hehehe… Were you surprised?\p"
# 676 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: That there are two GYM LEADERS?\p"
# 677 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Oops, you have only one…\n"
# 678 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: POKéMON that can battle.\p"
# 679 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: We can't battle that way!\p"
# 680 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: If you want to challenge us,\n"
# 681 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "bring some more POKéMON.$"
# 682 "data/maps/MossdeepCity_Gym/scripts.pory"

# 683 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_GymStatue:
# 684 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "MOSSDEEP CITY POKéMON GYM$"
# 685 "data/maps/MossdeepCity_Gym/scripts.pory"

# 686 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_GymStatueCertified:
# 687 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "MOSSDEEP CITY POKéMON GYM\p"
# 688 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL AND LUNA'S CERTIFIED TRAINERS:\n"
# 689 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "{PLAYER}$"
# 690 "data/maps/MossdeepCity_Gym/scripts.pory"

# 691 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_TateAndLizaPreRematch:
# 692 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: POKéMON…\n"
# 693 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: POKéMON…\p"
# 694 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: By changing the party's mix…\n"
# 695 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: The battle style changes.\p"
# 696 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: But me…\n"
# 697 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: But me…\p"
# 698 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: I'll always be with LUNA!\n"
# 699 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: I'll always be with SOUL!\p"
# 700 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: Our combination…\n"
# 701 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: We'll show you again and again!$"
# 702 "data/maps/MossdeepCity_Gym/scripts.pory"

# 703 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_TateAndLizaRematchDefeat:
# 704 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: You and your POKéMON…\n"
# 705 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: It's as if you were siblings!$"
# 706 "data/maps/MossdeepCity_Gym/scripts.pory"

# 707 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_TateAndLizaPostRematch:
# 708 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: You can knock us down,\n"
# 709 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "but we'll never stay down!\p"
# 710 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Because the two of us,\n"
# 711 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "we always support each other!$"
# 712 "data/maps/MossdeepCity_Gym/scripts.pory"

# 713 "data/maps/MossdeepCity_Gym/scripts.pory"
MossdeepCity_Gym_Text_TateAndLizaRematchNeedTwoMons:
# 714 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: You're back again…\n"
# 715 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: You're back again…\p"
# 716 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: To give us a rematch.\n"
# 717 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: To give us a rematch.\p"
# 718 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: But…\n"
# 719 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: For our match…\p"
# 720 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: You brought just one POKéMON!\n"
# 721 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: You brought just one POKéMON!\p"
# 722 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "SOUL: We need you to bring at least…\n"
# 723 "data/maps/MossdeepCity_Gym/scripts.pory"
	.string "LUNA: Two POKéMON when you come back.$"
