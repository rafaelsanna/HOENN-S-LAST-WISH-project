# 1 "data/maps/FortreeCity_Gym/scripts.pory"

# 2 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_MapScripts::
# 3 "data/maps/FortreeCity_Gym/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, FortreeCity_Gym_OnTransition
# 4 "data/maps/FortreeCity_Gym/scripts.pory"
	map_script MAP_SCRIPT_ON_LOAD, FortreeCity_Gym_OnLoad
# 5 "data/maps/FortreeCity_Gym/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, FortreeCity_Gym_OnResume
# 6 "data/maps/FortreeCity_Gym/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, FortreeCity_Gym_OnWarp
# 7 "data/maps/FortreeCity_Gym/scripts.pory"
	.byte 0
# 8 "data/maps/FortreeCity_Gym/scripts.pory"

# 9 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_OnTransition:
# 10 "data/maps/FortreeCity_Gym/scripts.pory"
	setflag FLAG_TEMP_HIDE_FOLLOWER @ Keep followers off the floating bridge puzzle
# 11 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 12 "data/maps/FortreeCity_Gym/scripts.pory"

# 13 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_OnLoad:
# 14 "data/maps/FortreeCity_Gym/scripts.pory"
	special FortreeGym_ApplyFloatingBridgeState
# 15 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 16 "data/maps/FortreeCity_Gym/scripts.pory"

# 17 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_OnResume:
# 18 "data/maps/FortreeCity_Gym/scripts.pory"
	special FortreeGym_InitFloatingBridgePuzzle
# 19 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 20 "data/maps/FortreeCity_Gym/scripts.pory"

# 21 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_OnWarp:
# 22 "data/maps/FortreeCity_Gym/scripts.pory"
	map_script_2 VAR_TEMP_0, VAR_TEMP_0, FortreeCity_Gym_EventScript_InitFloatingBridges
# 23 "data/maps/FortreeCity_Gym/scripts.pory"
	.2byte 0
# 24 "data/maps/FortreeCity_Gym/scripts.pory"

# 25 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_InitFloatingBridges::
# 26 "data/maps/FortreeCity_Gym/scripts.pory"
	special FortreeGym_InitFloatingBridgePuzzle
# 27 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 28 "data/maps/FortreeCity_Gym/scripts.pory"

# 29 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_FallFromSky::
# 30 "data/maps/FortreeCity_Gym/scripts.pory"
	lockall
# 31 "data/maps/FortreeCity_Gym/scripts.pory"
	playse SE_FALL
# 32 "data/maps/FortreeCity_Gym/scripts.pory"
	waitse
# 33 "data/maps/FortreeCity_Gym/scripts.pory"
	delay 8
# 34 "data/maps/FortreeCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, FortreeCity_Gym_Movement_HideFallingPlayer
# 35 "data/maps/FortreeCity_Gym/scripts.pory"
	waitmovement 0
# 36 "data/maps/FortreeCity_Gym/scripts.pory"
	playse SE_WARP_OUT
# 37 "data/maps/FortreeCity_Gym/scripts.pory"
	waitse
# 38 "data/maps/FortreeCity_Gym/scripts.pory"
	delay 12
# 39 "data/maps/FortreeCity_Gym/scripts.pory"
	warpsilent MAP_FORTREE_CITY_GYM, 10, 27
# 40 "data/maps/FortreeCity_Gym/scripts.pory"
	waitstate
# 41 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 42 "data/maps/FortreeCity_Gym/scripts.pory"

# 43 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Movement_HideFallingPlayer:
# 44 "data/maps/FortreeCity_Gym/scripts.pory"
	set_invisible
# 45 "data/maps/FortreeCity_Gym/scripts.pory"
	step_end
# 46 "data/maps/FortreeCity_Gym/scripts.pory"

# 47 "data/maps/FortreeCity_Gym/scripts.pory"
// Fortree City Gym - Winona
# 48 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Winona::
# 49 "data/maps/FortreeCity_Gym/scripts.pory"
    lock
# 50 "data/maps/FortreeCity_Gym/scripts.pory"
    faceplayer
# 51 "data/maps/FortreeCity_Gym/scripts.pory"
    getdifficulty VAR_RESULT
# 52 "data/maps/FortreeCity_Gym/scripts.pory"
    goto_if_eq VAR_RESULT, 1, FortreeCity_Gym_EventScript_WinonaHard
# 53 "data/maps/FortreeCity_Gym/scripts.pory"

# 54 "data/maps/FortreeCity_Gym/scripts.pory"
    // Casual Mode
# 55 "data/maps/FortreeCity_Gym/scripts.pory"
    trainerbattle_single TRAINER_TAKA_CASUAL, FortreeCity_Gym_Text_WinonaIntro, FortreeCity_Gym_Text_WinonaDefeat, FortreeCity_Gym_EventScript_WinonaDefeated, NO_MUSIC
# 56 "data/maps/FortreeCity_Gym/scripts.pory"
    goto FortreeCity_Gym_EventScript_WinonaAfterBattle
# 57 "data/maps/FortreeCity_Gym/scripts.pory"

# 58 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_WinonaHard::
# 59 "data/maps/FortreeCity_Gym/scripts.pory"
    // Hard Mode
# 60 "data/maps/FortreeCity_Gym/scripts.pory"
    trainerbattle_single TRAINER_WINONA_1, FortreeCity_Gym_Text_WinonaIntro, FortreeCity_Gym_Text_WinonaDefeat, FortreeCity_Gym_EventScript_WinonaDefeated, NO_MUSIC
# 61 "data/maps/FortreeCity_Gym/scripts.pory"
    // Fall through to AfterBattle
# 62 "data/maps/FortreeCity_Gym/scripts.pory"

# 63 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_WinonaAfterBattle::
# 64 "data/maps/FortreeCity_Gym/scripts.pory"
    specialvar VAR_RESULT, ShouldTryRematchBattle
# 65 "data/maps/FortreeCity_Gym/scripts.pory"
    goto_if_eq VAR_RESULT, TRUE, FortreeCity_Gym_EventScript_WinonaRematch
# 66 "data/maps/FortreeCity_Gym/scripts.pory"
    goto_if_unset FLAG_RECEIVED_TM_AERIAL_ACE, FortreeCity_Gym_EventScript_GiveAerialAce2
# 67 "data/maps/FortreeCity_Gym/scripts.pory"
    msgbox FortreeCity_Gym_Text_WinonaPostBattle, MSGBOX_DEFAULT
# 68 "data/maps/FortreeCity_Gym/scripts.pory"
    release
# 69 "data/maps/FortreeCity_Gym/scripts.pory"
    end
# 70 "data/maps/FortreeCity_Gym/scripts.pory"

# 71 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_WinonaDefeated::
# 72 "data/maps/FortreeCity_Gym/scripts.pory"
	message FortreeCity_Gym_Text_ReceivedFeatherBadge
# 73 "data/maps/FortreeCity_Gym/scripts.pory"
	waitmessage
# 74 "data/maps/FortreeCity_Gym/scripts.pory"
	call Common_EventScript_PlayGymBadgeFanfare
# 75 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_ExplainFeatherBadgeTakeThis, MSGBOX_DEFAULT
# 76 "data/maps/FortreeCity_Gym/scripts.pory"
	setflag FLAG_DEFEATED_FORTREE_GYM
# 77 "data/maps/FortreeCity_Gym/scripts.pory"
	setflag FLAG_BADGE06_GET
# 78 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8008, 6
# 79 "data/maps/FortreeCity_Gym/scripts.pory"
	call Common_EventScript_SetGymTrainers
# 80 "data/maps/FortreeCity_Gym/scripts.pory"
	call FortreeCity_Gym_EventScript_GiveAerialAce
# 81 "data/maps/FortreeCity_Gym/scripts.pory"
	closemessage
# 82 "data/maps/FortreeCity_Gym/scripts.pory"
	delay 30
# 83 "data/maps/FortreeCity_Gym/scripts.pory"
	waitfanfare
# 84 "data/maps/FortreeCity_Gym/scripts.pory"
	closemessage
# 85 "data/maps/FortreeCity_Gym/scripts.pory"
	delay 30
# 86 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_SCOTT_FORTREE_CALL_STEP_COUNTER, 0
# 87 "data/maps/FortreeCity_Gym/scripts.pory"
	setflag FLAG_SCOTT_CALL_FORTREE_GYM
# 88 "data/maps/FortreeCity_Gym/scripts.pory"
	release
# 89 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 90 "data/maps/FortreeCity_Gym/scripts.pory"

# 91 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GiveAerialAce2::
# 92 "data/maps/FortreeCity_Gym/scripts.pory"
	giveitem ITEM_TM_ACROBATICS
# 93 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 94 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_ExplainAerialAce, MSGBOX_DEFAULT
# 95 "data/maps/FortreeCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_AERIAL_ACE
# 96 "data/maps/FortreeCity_Gym/scripts.pory"
	release
# 97 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 98 "data/maps/FortreeCity_Gym/scripts.pory"

# 99 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GiveAerialAce::
# 100 "data/maps/FortreeCity_Gym/scripts.pory"
	giveitem ITEM_TM_ACROBATICS
# 101 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 102 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_ExplainAerialAce, MSGBOX_DEFAULT
# 103 "data/maps/FortreeCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_AERIAL_ACE
# 104 "data/maps/FortreeCity_Gym/scripts.pory"
	return
# 105 "data/maps/FortreeCity_Gym/scripts.pory"

# 106 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_WinonaRematch::
# 107 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_rematch_double TRAINER_WINONA_1, FortreeCity_Gym_Text_WinonaPreRematch, FortreeCity_Gym_Text_WinonaRematchDefeat, FortreeCity_Gym_Text_WinonaRematchNeedTwoMons
# 108 "data/maps/FortreeCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_TAKA, EMOTE_NORMAL
# 109 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_WinonaPostRematch, MSGBOX_AUTOCLOSE
# 110 "data/maps/FortreeCity_Gym/scripts.pory"
	removefieldmugshot
# 111 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 112 "data/maps/FortreeCity_Gym/scripts.pory"

# 113 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Jared::
# 114 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_JARED, FortreeCity_Gym_Text_JaredIntro, FortreeCity_Gym_Text_JaredDefeat
# 115 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8004, 8
# 116 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8005, 17
# 117 "data/maps/FortreeCity_Gym/scripts.pory"
	special FortreeGym_RevealBridgeAt
# 118 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_JaredPostBattle, MSGBOX_AUTOCLOSE
# 119 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 120 "data/maps/FortreeCity_Gym/scripts.pory"

# 121 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Edwardo::
# 122 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_EDWARDO, FortreeCity_Gym_Text_EdwardoIntro, FortreeCity_Gym_Text_EdwardoDefeat
# 123 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8004, 3
# 124 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8005, 11
# 125 "data/maps/FortreeCity_Gym/scripts.pory"
	special FortreeGym_RevealBridgeAt
# 126 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8004, 9
# 127 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8005, 11
# 128 "data/maps/FortreeCity_Gym/scripts.pory"
	special FortreeGym_RevealBridgeAt
# 129 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_EdwardoPostBattle, MSGBOX_AUTOCLOSE
# 130 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 131 "data/maps/FortreeCity_Gym/scripts.pory"

# 132 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Flint::
# 133 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_FLINT, FortreeCity_Gym_Text_FlintIntro, FortreeCity_Gym_Text_FlintDefeat
# 134 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_FlintPostBattle, MSGBOX_AUTOCLOSE
# 135 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 136 "data/maps/FortreeCity_Gym/scripts.pory"

# 137 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Ashley::
# 138 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_ASHLEY, FortreeCity_Gym_Text_AshleyIntro, FortreeCity_Gym_Text_AshleyDefeat
# 139 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_AshleyPostBattle, MSGBOX_AUTOCLOSE
# 140 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 141 "data/maps/FortreeCity_Gym/scripts.pory"

# 142 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Humberto::
# 143 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_HUMBERTO, FortreeCity_Gym_Text_HumbertoIntro, FortreeCity_Gym_Text_HumbertoDefeat
# 144 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_HumbertoPostBattle, MSGBOX_AUTOCLOSE
# 145 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 146 "data/maps/FortreeCity_Gym/scripts.pory"

# 147 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Darius::
# 148 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_DARIUS, FortreeCity_Gym_Text_DariusIntro, FortreeCity_Gym_Text_DariusDefeat
# 149 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8004, 18
# 150 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8005, 16
# 151 "data/maps/FortreeCity_Gym/scripts.pory"
	special FortreeGym_RevealBridgeAt
# 152 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_DariusPostBattle, MSGBOX_AUTOCLOSE
# 153 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 154 "data/maps/FortreeCity_Gym/scripts.pory"

# 155 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GymGuide::
# 156 "data/maps/FortreeCity_Gym/scripts.pory"
	lock
# 157 "data/maps/FortreeCity_Gym/scripts.pory"
	faceplayer
# 158 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_FORTREE_GYM, FortreeCity_Gym_EventScript_GymGuidePostVictory
# 159 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 160 "data/maps/FortreeCity_Gym/scripts.pory"
	release
# 161 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 162 "data/maps/FortreeCity_Gym/scripts.pory"

# 163 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GymGuidePostVictory::
# 164 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 165 "data/maps/FortreeCity_Gym/scripts.pory"
	release
# 166 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 167 "data/maps/FortreeCity_Gym/scripts.pory"

# 168 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_LeftGymStatue::
# 169 "data/maps/FortreeCity_Gym/scripts.pory"
	lockall
# 170 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE06_GET, FortreeCity_Gym_EventScript_GymStatueCertified
# 171 "data/maps/FortreeCity_Gym/scripts.pory"
	goto FortreeCity_Gym_EventScript_GymStatue
# 172 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 173 "data/maps/FortreeCity_Gym/scripts.pory"

# 174 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_RightGymStatue::
# 175 "data/maps/FortreeCity_Gym/scripts.pory"
	lockall
# 176 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE06_GET, FortreeCity_Gym_EventScript_GymStatueCertified
# 177 "data/maps/FortreeCity_Gym/scripts.pory"
	goto FortreeCity_Gym_EventScript_GymStatue
# 178 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 179 "data/maps/FortreeCity_Gym/scripts.pory"

# 180 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GymStatueCertified::
# 181 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 182 "data/maps/FortreeCity_Gym/scripts.pory"
	releaseall
# 183 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 184 "data/maps/FortreeCity_Gym/scripts.pory"

# 185 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GymStatue::
# 186 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 187 "data/maps/FortreeCity_Gym/scripts.pory"
	releaseall
# 188 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 189 "data/maps/FortreeCity_Gym/scripts.pory"

# 190 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_GymGuideAdvice:
# 191 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Yo, CHAMPION-bound {PLAYER}!\p"
# 192 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA, our LEADER, lives\n"
# 193 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "for the open sky.\p"
# 194 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "He says battle should feel\n"
# 195 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "like riding the wind.\p"
# 196 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Keep your footing steady,\n"
# 197 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "or you'll fall fast!$"
# 198 "data/maps/FortreeCity_Gym/scripts.pory"

# 199 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_GymGuidePostVictory:
# 200 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You did it!\n"
# 201 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You soared past gravity!$"
# 202 "data/maps/FortreeCity_Gym/scripts.pory"

# 203 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_JaredIntro:
# 204 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Feel that breeze?\n"
# 205 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "That's freedom calling!\p"
# 206 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Let's see if you can\n"
# 207 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "stay airborne!$"
# 208 "data/maps/FortreeCity_Gym/scripts.pory"

# 209 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_JaredDefeat:
# 210 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Wow…\n"
# 211 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "The wind slipped away…$"
# 212 "data/maps/FortreeCity_Gym/scripts.pory"

# 213 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_JaredPostBattle:
# 214 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Battles shift like currents.\p"
# 215 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "If you panic midair,\n"
# 216 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "you'll lose control.\p"
# 217 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Can you stay steady\n"
# 218 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "against TAKA?$"
# 219 "data/maps/FortreeCity_Gym/scripts.pory"

# 220 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_EdwardoIntro:
# 221 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Only those who love the sky\n"
# 222 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "truly belong here.\p"
# 223 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I won't fall easily!$"
# 224 "data/maps/FortreeCity_Gym/scripts.pory"

# 225 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_EdwardoDefeat:
# 226 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "The height overwhelmed me…$"
# 227 "data/maps/FortreeCity_Gym/scripts.pory"

# 228 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_EdwardoPostBattle:
# 229 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "The world below looks small\n"
# 230 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "from up high.\p"
# 231 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "But the fall is always\n"
# 232 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "a risk.\p"
# 233 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I'll fly higher again.$"
# 234 "data/maps/FortreeCity_Gym/scripts.pory"

# 235 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_FlintIntro:
# 236 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You think you can face TAKA?\p"
# 237 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You'll have to get past\n"
# 238 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "this gust first!$"
# 239 "data/maps/FortreeCity_Gym/scripts.pory"

# 240 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_FlintDefeat:
# 241 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA, I…\n"
# 242 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I lost!$"
# 243 "data/maps/FortreeCity_Gym/scripts.pory"

# 244 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_FlintPostBattle:
# 245 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA doesn't fear heights.\n"
# 246 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "He embraces them.\p"
# 247 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Up there, he's untouchable.$"
# 248 "data/maps/FortreeCity_Gym/scripts.pory"

# 249 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_AshleyIntro:
# 250 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA taught me to trust\n"
# 251 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the wind beneath me!\p"
# 252 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I won't lose balance!$"
# 253 "data/maps/FortreeCity_Gym/scripts.pory"

# 254 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_AshleyDefeat:
# 255 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I couldn't keep altitude…$"
# 256 "data/maps/FortreeCity_Gym/scripts.pory"

# 257 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_AshleyPostBattle:
# 258 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Because of TAKA,\n"
# 259 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "we're not afraid of falling.\p"
# 260 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "We learn to rise again.$"
# 261 "data/maps/FortreeCity_Gym/scripts.pory"

# 262 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_HumbertoIntro:
# 263 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "When TAKA battles,\n"
# 264 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "he looks completely free.\p"
# 265 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I won't let you\n"
# 266 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "see that sky today!$"
# 267 "data/maps/FortreeCity_Gym/scripts.pory"

# 268 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_HumbertoDefeat:
# 269 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Urk!\n"
# 270 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I couldn't stop you.$"
# 271 "data/maps/FortreeCity_Gym/scripts.pory"

# 272 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_HumbertoPostBattle:
# 273 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Careful up there.\n"
# 274 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "One wrong move,\l"
# 275 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "and you plummet.\p"
# 276 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Freedom demands courage!$"
# 277 "data/maps/FortreeCity_Gym/scripts.pory"

# 278 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_DariusIntro:
# 279 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Flying POKEMON aren't\n"
# 280 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "all the same.\p"
# 281 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Some soar.\n"
# 282 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Some dive.\p"
# 283 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Can you handle both?$"
# 284 "data/maps/FortreeCity_Gym/scripts.pory"

# 285 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_DariusDefeat:
# 286 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You handled the air well.$"
# 287 "data/maps/FortreeCity_Gym/scripts.pory"

# 288 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_DariusPostBattle:
# 289 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Sure, you beat me.\p"
# 290 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "But TAKA moves like\n"
# 291 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "a shifting gale.\p"
# 292 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Stay sharp up there.$"
# 293 "data/maps/FortreeCity_Gym/scripts.pory"

# 294 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaIntro:
# 295 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "So you've made it this high.\p"
# 296 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I am TAKA, Leader of\n"
# 297 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the FORTREE GYM.\p"
# 298 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "The sky is my true home.\n"
# 299 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Up there, I feel limitless.\p"
# 300 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "With my FLYING POKEMON,\n"
# 301 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I chase the wind itself.\p"
# 302 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Show me, can you battle\n"
# 303 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "with the same freedom?$"
# 304 "data/maps/FortreeCity_Gym/scripts.pory"

# 305 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaDefeat:
# 306 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Incredible…\n"
# 307 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You rode the wind perfectly.\p"
# 308 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Very well.\n"
# 309 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You have earned this GYM BADGE.$"
# 310 "data/maps/FortreeCity_Gym/scripts.pory"

# 311 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_ReceivedFeatherBadge:
# 312 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "{PLAYER} received the FEATHER BADGE\n"
# 313 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "from TAKA.$"
# 314 "data/maps/FortreeCity_Gym/scripts.pory"

# 315 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_ExplainFeatherBadgeTakeThis:
# 316 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "With the FEATHER BADGE, all POKéMON up\n"
# 317 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "to LV 70, even those received through\l"
# 318 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "trades, will obey your every command.\p"
# 319 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You will also be able to use\n"
# 320 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the HM move FLY outside of battle.\p"
# 321 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "And this…\n"
# 322 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "This is a gift from me.$"
# 323 "data/maps/FortreeCity_Gym/scripts.pory"

# 324 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_ExplainAerialAce:
# 325 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TM40 contains ACROBATICS.\p"
# 326 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "It becomes much stronger when the\n"
# 327 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "user is not holding an item.$"
# 328 "data/maps/FortreeCity_Gym/scripts.pory"

# 329 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_RegisteredWinona:
# 330 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Registered GYM LEADER TAKA\n"
# 331 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "in the POKéNAV.$"
# 332 "data/maps/FortreeCity_Gym/scripts.pory"

# 333 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaPostBattle:
# 334 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Even in defeat, I feel lighter.\p"
# 335 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "A true battle is like flight,\n"
# 336 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "you must trust the wind.\p"
# 337 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Keep chasing new heights!$"
# 338 "data/maps/FortreeCity_Gym/scripts.pory"

# 339 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_GymStatue:
# 340 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "FORTREE CITY POKéMON GYM$"
# 341 "data/maps/FortreeCity_Gym/scripts.pory"

# 342 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_GymStatueCertified:
# 343 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "FORTREE CITY POKéMON GYM\p"
# 344 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA'S CERTIFIED TRAINERS:\n"
# 345 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "{PLAYER}$"
# 346 "data/maps/FortreeCity_Gym/scripts.pory"

# 347 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaPreRematch:
# 348 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA: We humans can never escape\n"
# 349 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "gravity's pull on the ground.\p"
# 350 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "But by striving for excellence,\n"
# 351 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "we have the power to soar!\p"
# 352 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You have scaled the pinnacle as\n"
# 353 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the reigning CHAMPION.\p"
# 354 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Please, allow me to see your power\n"
# 355 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "at full flight!$"
# 356 "data/maps/FortreeCity_Gym/scripts.pory"

# 357 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaRematchDefeat:
# 358 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I failed to reach your height again…$"
# 359 "data/maps/FortreeCity_Gym/scripts.pory"

# 360 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaPostRematch:
# 361 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA: Even though I have lost,\n"
# 362 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the wings of my heart remain unbroken.\p"
# 363 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I can rise and soar again and\n"
# 364 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "yet again.\p"
# 365 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I am convinced of it!$"
# 366 "data/maps/FortreeCity_Gym/scripts.pory"

# 367 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaRematchNeedTwoMons:
# 368 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA: We humans can never escape\n"
# 369 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "gravity's pull on the ground.\p"
# 370 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "But by striving for excellence,\n"
# 371 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "we have the power to soar!\p"
# 372 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You have scaled the pinnacle as\n"
# 373 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the reigning CHAMPION.\p"
# 374 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Please, allow me to see your power\n"
# 375 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "at full flight!\p"
# 376 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Oh, no… Do you have but one\n"
# 377 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "POKéMON with you?\p"
# 378 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Please return with two POKéMON\n"
# 379 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "at the very least.$"
