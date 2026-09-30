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
    goto_if_set FLAG_DEFEATED_FORTREE_GYM, FortreeCity_Gym_EventScript_WinonaAfterBattle
# 52 "data/maps/FortreeCity_Gym/scripts.pory"
    getdifficulty VAR_RESULT
# 53 "data/maps/FortreeCity_Gym/scripts.pory"
    goto_if_eq VAR_RESULT, 1, FortreeCity_Gym_EventScript_WinonaHard
# 54 "data/maps/FortreeCity_Gym/scripts.pory"

# 55 "data/maps/FortreeCity_Gym/scripts.pory"
    // Casual Mode
# 56 "data/maps/FortreeCity_Gym/scripts.pory"
    trainerbattle_single TRAINER_TAKA_CASUAL, FortreeCity_Gym_Text_WinonaIntro, FortreeCity_Gym_Text_WinonaDefeat, FortreeCity_Gym_EventScript_WinonaDefeated, NO_MUSIC
# 57 "data/maps/FortreeCity_Gym/scripts.pory"
    goto FortreeCity_Gym_EventScript_WinonaAfterBattle
# 58 "data/maps/FortreeCity_Gym/scripts.pory"

# 59 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_WinonaHard::
# 60 "data/maps/FortreeCity_Gym/scripts.pory"
    // Hard Mode
# 61 "data/maps/FortreeCity_Gym/scripts.pory"
    trainerbattle_single TRAINER_WINONA_1, FortreeCity_Gym_Text_WinonaIntro, FortreeCity_Gym_Text_WinonaDefeat, FortreeCity_Gym_EventScript_WinonaDefeated, NO_MUSIC
# 62 "data/maps/FortreeCity_Gym/scripts.pory"
    // Fall through to AfterBattle
# 63 "data/maps/FortreeCity_Gym/scripts.pory"

# 64 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_WinonaAfterBattle::
# 65 "data/maps/FortreeCity_Gym/scripts.pory"
    goto_if_unset FLAG_RECEIVED_TM_AERIAL_ACE, FortreeCity_Gym_EventScript_GiveAerialAce2
# 66 "data/maps/FortreeCity_Gym/scripts.pory"
    setorcopyvar VAR_TRAINER_BATTLE_OPPONENT_A, TRAINER_WINONA_1
# 67 "data/maps/FortreeCity_Gym/scripts.pory"
    specialvar VAR_RESULT, ShouldTryRematchBattle
# 68 "data/maps/FortreeCity_Gym/scripts.pory"
    goto_if_eq VAR_RESULT, TRUE, FortreeCity_Gym_EventScript_WinonaRematch
# 69 "data/maps/FortreeCity_Gym/scripts.pory"
    msgbox FortreeCity_Gym_Text_WinonaPostBattle, MSGBOX_DEFAULT
# 70 "data/maps/FortreeCity_Gym/scripts.pory"
    release
# 71 "data/maps/FortreeCity_Gym/scripts.pory"
    end
# 72 "data/maps/FortreeCity_Gym/scripts.pory"

# 73 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_WinonaDefeated::
# 74 "data/maps/FortreeCity_Gym/scripts.pory"
	message FortreeCity_Gym_Text_ReceivedFeatherBadge
# 75 "data/maps/FortreeCity_Gym/scripts.pory"
	waitmessage
# 76 "data/maps/FortreeCity_Gym/scripts.pory"
	call Common_EventScript_PlayGymBadgeFanfare
# 77 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_ExplainFeatherBadgeTakeThis, MSGBOX_DEFAULT
# 78 "data/maps/FortreeCity_Gym/scripts.pory"
	setflag FLAG_DEFEATED_FORTREE_GYM
# 79 "data/maps/FortreeCity_Gym/scripts.pory"
	setflag FLAG_BADGE06_GET
# 80 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8008, 6
# 81 "data/maps/FortreeCity_Gym/scripts.pory"
	call Common_EventScript_SetGymTrainers
# 82 "data/maps/FortreeCity_Gym/scripts.pory"
	call FortreeCity_Gym_EventScript_GiveAerialAce
# 83 "data/maps/FortreeCity_Gym/scripts.pory"
	closemessage
# 84 "data/maps/FortreeCity_Gym/scripts.pory"
	delay 30
# 85 "data/maps/FortreeCity_Gym/scripts.pory"
	waitfanfare
# 86 "data/maps/FortreeCity_Gym/scripts.pory"
	closemessage
# 87 "data/maps/FortreeCity_Gym/scripts.pory"
	delay 30
# 88 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_SCOTT_FORTREE_CALL_STEP_COUNTER, 0
# 89 "data/maps/FortreeCity_Gym/scripts.pory"
	setflag FLAG_SCOTT_CALL_FORTREE_GYM
# 90 "data/maps/FortreeCity_Gym/scripts.pory"
	release
# 91 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 92 "data/maps/FortreeCity_Gym/scripts.pory"

# 93 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GiveAerialAce2::
# 94 "data/maps/FortreeCity_Gym/scripts.pory"
	giveitem ITEM_TM_ACROBATICS
# 95 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 96 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_ExplainAerialAce, MSGBOX_DEFAULT
# 97 "data/maps/FortreeCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_AERIAL_ACE
# 98 "data/maps/FortreeCity_Gym/scripts.pory"
	release
# 99 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 100 "data/maps/FortreeCity_Gym/scripts.pory"

# 101 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GiveAerialAce::
# 102 "data/maps/FortreeCity_Gym/scripts.pory"
	giveitem ITEM_TM_ACROBATICS
# 103 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 104 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_ExplainAerialAce, MSGBOX_DEFAULT
# 105 "data/maps/FortreeCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_AERIAL_ACE
# 106 "data/maps/FortreeCity_Gym/scripts.pory"
	return
# 107 "data/maps/FortreeCity_Gym/scripts.pory"

# 108 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_WinonaRematch::
# 109 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_rematch_double TRAINER_WINONA_1, FortreeCity_Gym_Text_WinonaPreRematch, FortreeCity_Gym_Text_WinonaRematchDefeat, FortreeCity_Gym_Text_WinonaRematchNeedTwoMons
# 110 "data/maps/FortreeCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_TAKA, EMOTE_NORMAL
# 111 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_WinonaPostRematch, MSGBOX_AUTOCLOSE
# 112 "data/maps/FortreeCity_Gym/scripts.pory"
	removefieldmugshot
# 113 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 114 "data/maps/FortreeCity_Gym/scripts.pory"

# 115 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Jared::
# 116 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_JARED, FortreeCity_Gym_Text_JaredIntro, FortreeCity_Gym_Text_JaredDefeat
# 117 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8004, 8
# 118 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8005, 17
# 119 "data/maps/FortreeCity_Gym/scripts.pory"
	special FortreeGym_RevealBridgeAt
# 120 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_JaredPostBattle, MSGBOX_AUTOCLOSE
# 121 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 122 "data/maps/FortreeCity_Gym/scripts.pory"

# 123 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Edwardo::
# 124 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_EDWARDO, FortreeCity_Gym_Text_EdwardoIntro, FortreeCity_Gym_Text_EdwardoDefeat
# 125 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8004, 3
# 126 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8005, 11
# 127 "data/maps/FortreeCity_Gym/scripts.pory"
	special FortreeGym_RevealBridgeAt
# 128 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8004, 9
# 129 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8005, 11
# 130 "data/maps/FortreeCity_Gym/scripts.pory"
	special FortreeGym_RevealBridgeAt
# 131 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_EdwardoPostBattle, MSGBOX_AUTOCLOSE
# 132 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 133 "data/maps/FortreeCity_Gym/scripts.pory"

# 134 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Flint::
# 135 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_FLINT, FortreeCity_Gym_Text_FlintIntro, FortreeCity_Gym_Text_FlintDefeat
# 136 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_FlintPostBattle, MSGBOX_AUTOCLOSE
# 137 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 138 "data/maps/FortreeCity_Gym/scripts.pory"

# 139 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Ashley::
# 140 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_ASHLEY, FortreeCity_Gym_Text_AshleyIntro, FortreeCity_Gym_Text_AshleyDefeat
# 141 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_AshleyPostBattle, MSGBOX_AUTOCLOSE
# 142 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 143 "data/maps/FortreeCity_Gym/scripts.pory"

# 144 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Humberto::
# 145 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_HUMBERTO, FortreeCity_Gym_Text_HumbertoIntro, FortreeCity_Gym_Text_HumbertoDefeat
# 146 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_HumbertoPostBattle, MSGBOX_AUTOCLOSE
# 147 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 148 "data/maps/FortreeCity_Gym/scripts.pory"

# 149 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Darius::
# 150 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_DARIUS, FortreeCity_Gym_Text_DariusIntro, FortreeCity_Gym_Text_DariusDefeat
# 151 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8004, 18
# 152 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8005, 16
# 153 "data/maps/FortreeCity_Gym/scripts.pory"
	special FortreeGym_RevealBridgeAt
# 154 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_DariusPostBattle, MSGBOX_AUTOCLOSE
# 155 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 156 "data/maps/FortreeCity_Gym/scripts.pory"

# 157 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GymGuide::
# 158 "data/maps/FortreeCity_Gym/scripts.pory"
	lock
# 159 "data/maps/FortreeCity_Gym/scripts.pory"
	faceplayer
# 160 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_FORTREE_GYM, FortreeCity_Gym_EventScript_GymGuidePostVictory
# 161 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 162 "data/maps/FortreeCity_Gym/scripts.pory"
	release
# 163 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 164 "data/maps/FortreeCity_Gym/scripts.pory"

# 165 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GymGuidePostVictory::
# 166 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 167 "data/maps/FortreeCity_Gym/scripts.pory"
	release
# 168 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 169 "data/maps/FortreeCity_Gym/scripts.pory"

# 170 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_LeftGymStatue::
# 171 "data/maps/FortreeCity_Gym/scripts.pory"
	lockall
# 172 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE06_GET, FortreeCity_Gym_EventScript_GymStatueCertified
# 173 "data/maps/FortreeCity_Gym/scripts.pory"
	goto FortreeCity_Gym_EventScript_GymStatue
# 174 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 175 "data/maps/FortreeCity_Gym/scripts.pory"

# 176 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_RightGymStatue::
# 177 "data/maps/FortreeCity_Gym/scripts.pory"
	lockall
# 178 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE06_GET, FortreeCity_Gym_EventScript_GymStatueCertified
# 179 "data/maps/FortreeCity_Gym/scripts.pory"
	goto FortreeCity_Gym_EventScript_GymStatue
# 180 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 181 "data/maps/FortreeCity_Gym/scripts.pory"

# 182 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GymStatueCertified::
# 183 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 184 "data/maps/FortreeCity_Gym/scripts.pory"
	releaseall
# 185 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 186 "data/maps/FortreeCity_Gym/scripts.pory"

# 187 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GymStatue::
# 188 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 189 "data/maps/FortreeCity_Gym/scripts.pory"
	releaseall
# 190 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 191 "data/maps/FortreeCity_Gym/scripts.pory"

# 192 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_GymGuideAdvice:
# 193 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Yo, CHAMPION-bound {PLAYER}!\p"
# 194 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA, our LEADER, lives\n"
# 195 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "for the open sky.\p"
# 196 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "He says battle should feel\n"
# 197 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "like riding the wind.\p"
# 198 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Keep your footing steady,\n"
# 199 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "or you'll fall fast!$"
# 200 "data/maps/FortreeCity_Gym/scripts.pory"

# 201 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_GymGuidePostVictory:
# 202 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You did it!\n"
# 203 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You soared past gravity!$"
# 204 "data/maps/FortreeCity_Gym/scripts.pory"

# 205 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_JaredIntro:
# 206 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Feel that breeze?\n"
# 207 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "That's freedom calling!\p"
# 208 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Let's see if you can\n"
# 209 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "stay airborne!$"
# 210 "data/maps/FortreeCity_Gym/scripts.pory"

# 211 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_JaredDefeat:
# 212 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Wow…\n"
# 213 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "The wind slipped away…$"
# 214 "data/maps/FortreeCity_Gym/scripts.pory"

# 215 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_JaredPostBattle:
# 216 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Battles shift like currents.\p"
# 217 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "If you panic midair,\n"
# 218 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "you'll lose control.\p"
# 219 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Can you stay steady\n"
# 220 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "against TAKA?$"
# 221 "data/maps/FortreeCity_Gym/scripts.pory"

# 222 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_EdwardoIntro:
# 223 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Only those who love the sky\n"
# 224 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "truly belong here.\p"
# 225 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I won't fall easily!$"
# 226 "data/maps/FortreeCity_Gym/scripts.pory"

# 227 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_EdwardoDefeat:
# 228 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "The height overwhelmed me…$"
# 229 "data/maps/FortreeCity_Gym/scripts.pory"

# 230 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_EdwardoPostBattle:
# 231 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "The world below looks small\n"
# 232 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "from up high.\p"
# 233 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "But the fall is always\n"
# 234 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "a risk.\p"
# 235 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I'll fly higher again.$"
# 236 "data/maps/FortreeCity_Gym/scripts.pory"

# 237 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_FlintIntro:
# 238 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You think you can face TAKA?\p"
# 239 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You'll have to get past\n"
# 240 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "this gust first!$"
# 241 "data/maps/FortreeCity_Gym/scripts.pory"

# 242 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_FlintDefeat:
# 243 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA, I…\n"
# 244 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I lost!$"
# 245 "data/maps/FortreeCity_Gym/scripts.pory"

# 246 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_FlintPostBattle:
# 247 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA doesn't fear heights.\n"
# 248 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "He embraces them.\p"
# 249 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Up there, he's untouchable.$"
# 250 "data/maps/FortreeCity_Gym/scripts.pory"

# 251 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_AshleyIntro:
# 252 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA taught me to trust\n"
# 253 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the wind beneath me!\p"
# 254 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I won't lose balance!$"
# 255 "data/maps/FortreeCity_Gym/scripts.pory"

# 256 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_AshleyDefeat:
# 257 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I couldn't keep altitude…$"
# 258 "data/maps/FortreeCity_Gym/scripts.pory"

# 259 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_AshleyPostBattle:
# 260 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Because of TAKA,\n"
# 261 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "we're not afraid of falling.\p"
# 262 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "We learn to rise again.$"
# 263 "data/maps/FortreeCity_Gym/scripts.pory"

# 264 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_HumbertoIntro:
# 265 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "When TAKA battles,\n"
# 266 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "he looks completely free.\p"
# 267 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I won't let you\n"
# 268 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "see that sky today!$"
# 269 "data/maps/FortreeCity_Gym/scripts.pory"

# 270 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_HumbertoDefeat:
# 271 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Urk!\n"
# 272 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I couldn't stop you.$"
# 273 "data/maps/FortreeCity_Gym/scripts.pory"

# 274 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_HumbertoPostBattle:
# 275 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Careful up there.\n"
# 276 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "One wrong move,\l"
# 277 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "and you plummet.\p"
# 278 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Freedom demands courage!$"
# 279 "data/maps/FortreeCity_Gym/scripts.pory"

# 280 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_DariusIntro:
# 281 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Flying POKEMON aren't\n"
# 282 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "all the same.\p"
# 283 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Some soar.\n"
# 284 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Some dive.\p"
# 285 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Can you handle both?$"
# 286 "data/maps/FortreeCity_Gym/scripts.pory"

# 287 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_DariusDefeat:
# 288 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You handled the air well.$"
# 289 "data/maps/FortreeCity_Gym/scripts.pory"

# 290 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_DariusPostBattle:
# 291 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Sure, you beat me.\p"
# 292 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "But TAKA moves like\n"
# 293 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "a shifting gale.\p"
# 294 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Stay sharp up there.$"
# 295 "data/maps/FortreeCity_Gym/scripts.pory"

# 296 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaIntro:
# 297 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "So you've made it this high.\p"
# 298 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I am TAKA, Leader of\n"
# 299 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the FORTREE GYM.\p"
# 300 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "The sky is my true home.\n"
# 301 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Up there, I feel limitless.\p"
# 302 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "With my FLYING POKEMON,\n"
# 303 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I chase the wind itself.\p"
# 304 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Show me, can you battle\n"
# 305 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "with the same freedom?$"
# 306 "data/maps/FortreeCity_Gym/scripts.pory"

# 307 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaDefeat:
# 308 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Incredible…\n"
# 309 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You rode the wind perfectly.\p"
# 310 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Very well.\n"
# 311 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You have earned this GYM BADGE.$"
# 312 "data/maps/FortreeCity_Gym/scripts.pory"

# 313 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_ReceivedFeatherBadge:
# 314 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "{PLAYER} received the FEATHER BADGE\n"
# 315 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "from TAKA.$"
# 316 "data/maps/FortreeCity_Gym/scripts.pory"

# 317 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_ExplainFeatherBadgeTakeThis:
# 318 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "With the FEATHER BADGE, all POKéMON up\n"
# 319 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "to LV 70, even those received through\l"
# 320 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "trades, will obey your every command.\p"
# 321 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You will also be able to use\n"
# 322 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the HM move FLY outside of battle.\p"
# 323 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "And this…\n"
# 324 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "This is a gift from me.$"
# 325 "data/maps/FortreeCity_Gym/scripts.pory"

# 326 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_ExplainAerialAce:
# 327 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TM40 contains ACROBATICS.\p"
# 328 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "It becomes much stronger when the\n"
# 329 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "user is not holding an item.$"
# 330 "data/maps/FortreeCity_Gym/scripts.pory"

# 331 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_RegisteredWinona:
# 332 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Registered GYM LEADER TAKA\n"
# 333 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "in the POKéNAV.$"
# 334 "data/maps/FortreeCity_Gym/scripts.pory"

# 335 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaPostBattle:
# 336 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Even in defeat, I feel lighter.\p"
# 337 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "A true battle is like flight,\n"
# 338 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "you must trust the wind.\p"
# 339 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Keep chasing new heights!$"
# 340 "data/maps/FortreeCity_Gym/scripts.pory"

# 341 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_GymStatue:
# 342 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "FORTREE CITY POKéMON GYM$"
# 343 "data/maps/FortreeCity_Gym/scripts.pory"

# 344 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_GymStatueCertified:
# 345 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "FORTREE CITY POKéMON GYM\p"
# 346 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA'S CERTIFIED TRAINERS:\n"
# 347 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "{PLAYER}$"
# 348 "data/maps/FortreeCity_Gym/scripts.pory"

# 349 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaPreRematch:
# 350 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA: We humans can never escape\n"
# 351 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "gravity's pull on the ground.\p"
# 352 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "But by striving for excellence,\n"
# 353 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "we have the power to soar!\p"
# 354 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You have scaled the pinnacle as\n"
# 355 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the reigning CHAMPION.\p"
# 356 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Please, allow me to see your power\n"
# 357 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "at full flight!$"
# 358 "data/maps/FortreeCity_Gym/scripts.pory"

# 359 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaRematchDefeat:
# 360 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I failed to reach your height again…$"
# 361 "data/maps/FortreeCity_Gym/scripts.pory"

# 362 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaPostRematch:
# 363 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA: Even though I have lost,\n"
# 364 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the wings of my heart remain unbroken.\p"
# 365 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I can rise and soar again and\n"
# 366 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "yet again.\p"
# 367 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I am convinced of it!$"
# 368 "data/maps/FortreeCity_Gym/scripts.pory"

# 369 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaRematchNeedTwoMons:
# 370 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA: We humans can never escape\n"
# 371 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "gravity's pull on the ground.\p"
# 372 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "But by striving for excellence,\n"
# 373 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "we have the power to soar!\p"
# 374 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You have scaled the pinnacle as\n"
# 375 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the reigning CHAMPION.\p"
# 376 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Please, allow me to see your power\n"
# 377 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "at full flight!\p"
# 378 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Oh, no… Do you have but one\n"
# 379 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "POKéMON with you?\p"
# 380 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Please return with two POKéMON\n"
# 381 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "at the very least.$"
