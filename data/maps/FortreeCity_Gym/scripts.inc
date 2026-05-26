# 1 "data/maps/FortreeCity_Gym/scripts.pory"

# 2 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_MapScripts::
# 3 "data/maps/FortreeCity_Gym/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, FortreeCity_Gym_OnTransition
# 4 "data/maps/FortreeCity_Gym/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, FortreeCity_Gym_OnWarp
# 5 "data/maps/FortreeCity_Gym/scripts.pory"
	.byte 0
# 6 "data/maps/FortreeCity_Gym/scripts.pory"

# 7 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_OnTransition:
# 8 "data/maps/FortreeCity_Gym/scripts.pory"
	special RotatingGate_InitPuzzle
# 9 "data/maps/FortreeCity_Gym/scripts.pory"
	setflag FLAG_TEMP_HIDE_FOLLOWER @ Hide follower bc of rotating gates
# 10 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 11 "data/maps/FortreeCity_Gym/scripts.pory"

# 12 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_OnWarp:
# 13 "data/maps/FortreeCity_Gym/scripts.pory"
	map_script_2 VAR_TEMP_0, VAR_TEMP_0, FortreeCity_Gym_EventScript_InitRotatingGates
# 14 "data/maps/FortreeCity_Gym/scripts.pory"
	.2byte 0
# 15 "data/maps/FortreeCity_Gym/scripts.pory"

# 16 "data/maps/FortreeCity_Gym/scripts.pory"
@ NOTE: This rotating gate puzzle makes use of VAR_TEMP_0 - VAR_TEMP_3
# 17 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_InitRotatingGates::
# 18 "data/maps/FortreeCity_Gym/scripts.pory"
	special RotatingGate_InitPuzzleAndGraphics
# 19 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 20 "data/maps/FortreeCity_Gym/scripts.pory"

# 21 "data/maps/FortreeCity_Gym/scripts.pory"
// Fortree City Gym - Winona
# 22 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Winona::
# 23 "data/maps/FortreeCity_Gym/scripts.pory"
    lock
# 24 "data/maps/FortreeCity_Gym/scripts.pory"
    faceplayer
# 25 "data/maps/FortreeCity_Gym/scripts.pory"
    getdifficulty VAR_RESULT
# 26 "data/maps/FortreeCity_Gym/scripts.pory"
    goto_if_eq VAR_RESULT, 1, FortreeCity_Gym_EventScript_WinonaHard
# 27 "data/maps/FortreeCity_Gym/scripts.pory"

# 28 "data/maps/FortreeCity_Gym/scripts.pory"
    // Casual Mode
# 29 "data/maps/FortreeCity_Gym/scripts.pory"
    trainerbattle_single TRAINER_TAKA_CASUAL, FortreeCity_Gym_Text_WinonaIntro, FortreeCity_Gym_Text_WinonaDefeat, FortreeCity_Gym_EventScript_WinonaDefeated, NO_MUSIC
# 30 "data/maps/FortreeCity_Gym/scripts.pory"
    goto FortreeCity_Gym_EventScript_WinonaAfterBattle
# 31 "data/maps/FortreeCity_Gym/scripts.pory"

# 32 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_WinonaHard::
# 33 "data/maps/FortreeCity_Gym/scripts.pory"
    // Hard Mode
# 34 "data/maps/FortreeCity_Gym/scripts.pory"
    trainerbattle_single TRAINER_WINONA_1, FortreeCity_Gym_Text_WinonaIntro, FortreeCity_Gym_Text_WinonaDefeat, FortreeCity_Gym_EventScript_WinonaDefeated, NO_MUSIC
# 35 "data/maps/FortreeCity_Gym/scripts.pory"
    // Fall through to AfterBattle
# 36 "data/maps/FortreeCity_Gym/scripts.pory"

# 37 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_WinonaAfterBattle::
# 38 "data/maps/FortreeCity_Gym/scripts.pory"
    specialvar VAR_RESULT, ShouldTryRematchBattle
# 39 "data/maps/FortreeCity_Gym/scripts.pory"
    goto_if_eq VAR_RESULT, TRUE, FortreeCity_Gym_EventScript_WinonaRematch
# 40 "data/maps/FortreeCity_Gym/scripts.pory"
    goto_if_unset FLAG_RECEIVED_TM_AERIAL_ACE, FortreeCity_Gym_EventScript_GiveAerialAce2
# 41 "data/maps/FortreeCity_Gym/scripts.pory"
    msgbox FortreeCity_Gym_Text_WinonaPostBattle, MSGBOX_DEFAULT
# 42 "data/maps/FortreeCity_Gym/scripts.pory"
    release
# 43 "data/maps/FortreeCity_Gym/scripts.pory"
    end
# 44 "data/maps/FortreeCity_Gym/scripts.pory"

# 45 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_WinonaDefeated::
# 46 "data/maps/FortreeCity_Gym/scripts.pory"
	message FortreeCity_Gym_Text_ReceivedFeatherBadge
# 47 "data/maps/FortreeCity_Gym/scripts.pory"
	waitmessage
# 48 "data/maps/FortreeCity_Gym/scripts.pory"
	call Common_EventScript_PlayGymBadgeFanfare
# 49 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_ExplainFeatherBadgeTakeThis, MSGBOX_DEFAULT
# 50 "data/maps/FortreeCity_Gym/scripts.pory"
	setflag FLAG_DEFEATED_FORTREE_GYM
# 51 "data/maps/FortreeCity_Gym/scripts.pory"
	setflag FLAG_BADGE06_GET
# 52 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_0x8008, 6
# 53 "data/maps/FortreeCity_Gym/scripts.pory"
	call Common_EventScript_SetGymTrainers
# 54 "data/maps/FortreeCity_Gym/scripts.pory"
	call FortreeCity_Gym_EventScript_GiveAerialAce
# 55 "data/maps/FortreeCity_Gym/scripts.pory"
	closemessage
# 56 "data/maps/FortreeCity_Gym/scripts.pory"
	delay 30
# 57 "data/maps/FortreeCity_Gym/scripts.pory"
	waitfanfare
# 58 "data/maps/FortreeCity_Gym/scripts.pory"
	closemessage
# 59 "data/maps/FortreeCity_Gym/scripts.pory"
	delay 30
# 60 "data/maps/FortreeCity_Gym/scripts.pory"
	setvar VAR_SCOTT_FORTREE_CALL_STEP_COUNTER, 0
# 61 "data/maps/FortreeCity_Gym/scripts.pory"
	setflag FLAG_SCOTT_CALL_FORTREE_GYM
# 62 "data/maps/FortreeCity_Gym/scripts.pory"
	release
# 63 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 64 "data/maps/FortreeCity_Gym/scripts.pory"

# 65 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GiveAerialAce2::
# 66 "data/maps/FortreeCity_Gym/scripts.pory"
	giveitem ITEM_TM_AERIAL_ACE
# 67 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 68 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_ExplainAerialAce, MSGBOX_DEFAULT
# 69 "data/maps/FortreeCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_AERIAL_ACE
# 70 "data/maps/FortreeCity_Gym/scripts.pory"
	release
# 71 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 72 "data/maps/FortreeCity_Gym/scripts.pory"

# 73 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GiveAerialAce::
# 74 "data/maps/FortreeCity_Gym/scripts.pory"
	giveitem ITEM_TM_AERIAL_ACE
# 75 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 76 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_ExplainAerialAce, MSGBOX_DEFAULT
# 77 "data/maps/FortreeCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_AERIAL_ACE
# 78 "data/maps/FortreeCity_Gym/scripts.pory"
	return
# 79 "data/maps/FortreeCity_Gym/scripts.pory"

# 80 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_WinonaRematch::
# 81 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_rematch_double TRAINER_WINONA_1, FortreeCity_Gym_Text_WinonaPreRematch, FortreeCity_Gym_Text_WinonaRematchDefeat, FortreeCity_Gym_Text_WinonaRematchNeedTwoMons
# 82 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_WinonaPostRematch, MSGBOX_AUTOCLOSE
# 83 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 84 "data/maps/FortreeCity_Gym/scripts.pory"

# 85 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Jared::
# 86 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_JARED, FortreeCity_Gym_Text_JaredIntro, FortreeCity_Gym_Text_JaredDefeat
# 87 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_JaredPostBattle, MSGBOX_AUTOCLOSE
# 88 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 89 "data/maps/FortreeCity_Gym/scripts.pory"

# 90 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Edwardo::
# 91 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_EDWARDO, FortreeCity_Gym_Text_EdwardoIntro, FortreeCity_Gym_Text_EdwardoDefeat
# 92 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_EdwardoPostBattle, MSGBOX_AUTOCLOSE
# 93 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 94 "data/maps/FortreeCity_Gym/scripts.pory"

# 95 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Flint::
# 96 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_FLINT, FortreeCity_Gym_Text_FlintIntro, FortreeCity_Gym_Text_FlintDefeat
# 97 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_FlintPostBattle, MSGBOX_AUTOCLOSE
# 98 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 99 "data/maps/FortreeCity_Gym/scripts.pory"

# 100 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Ashley::
# 101 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_ASHLEY, FortreeCity_Gym_Text_AshleyIntro, FortreeCity_Gym_Text_AshleyDefeat
# 102 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_AshleyPostBattle, MSGBOX_AUTOCLOSE
# 103 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 104 "data/maps/FortreeCity_Gym/scripts.pory"

# 105 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Humberto::
# 106 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_HUMBERTO, FortreeCity_Gym_Text_HumbertoIntro, FortreeCity_Gym_Text_HumbertoDefeat
# 107 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_HumbertoPostBattle, MSGBOX_AUTOCLOSE
# 108 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 109 "data/maps/FortreeCity_Gym/scripts.pory"

# 110 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Darius::
# 111 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_DARIUS, FortreeCity_Gym_Text_DariusIntro, FortreeCity_Gym_Text_DariusDefeat
# 112 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_DariusPostBattle, MSGBOX_AUTOCLOSE
# 113 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 114 "data/maps/FortreeCity_Gym/scripts.pory"

# 115 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GymGuide::
# 116 "data/maps/FortreeCity_Gym/scripts.pory"
	lock
# 117 "data/maps/FortreeCity_Gym/scripts.pory"
	faceplayer
# 118 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_FORTREE_GYM, FortreeCity_Gym_EventScript_GymGuidePostVictory
# 119 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 120 "data/maps/FortreeCity_Gym/scripts.pory"
	release
# 121 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 122 "data/maps/FortreeCity_Gym/scripts.pory"

# 123 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GymGuidePostVictory::
# 124 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 125 "data/maps/FortreeCity_Gym/scripts.pory"
	release
# 126 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 127 "data/maps/FortreeCity_Gym/scripts.pory"

# 128 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_LeftGymStatue::
# 129 "data/maps/FortreeCity_Gym/scripts.pory"
	lockall
# 130 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE06_GET, FortreeCity_Gym_EventScript_GymStatueCertified
# 131 "data/maps/FortreeCity_Gym/scripts.pory"
	goto FortreeCity_Gym_EventScript_GymStatue
# 132 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 133 "data/maps/FortreeCity_Gym/scripts.pory"

# 134 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_RightGymStatue::
# 135 "data/maps/FortreeCity_Gym/scripts.pory"
	lockall
# 136 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE06_GET, FortreeCity_Gym_EventScript_GymStatueCertified
# 137 "data/maps/FortreeCity_Gym/scripts.pory"
	goto FortreeCity_Gym_EventScript_GymStatue
# 138 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 139 "data/maps/FortreeCity_Gym/scripts.pory"

# 140 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GymStatueCertified::
# 141 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 142 "data/maps/FortreeCity_Gym/scripts.pory"
	releaseall
# 143 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 144 "data/maps/FortreeCity_Gym/scripts.pory"

# 145 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GymStatue::
# 146 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 147 "data/maps/FortreeCity_Gym/scripts.pory"
	releaseall
# 148 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 149 "data/maps/FortreeCity_Gym/scripts.pory"

# 150 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_GymGuideAdvice:
# 151 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Yo, CHAMPION-bound {PLAYER}!\p"
# 152 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA, our LEADER, lives\n"
# 153 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "for the open sky.\p"
# 154 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "He says battle should feel\n"
# 155 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "like riding the wind.\p"
# 156 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Keep your footing steady,\n"
# 157 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "or you'll fall fast!$"
# 158 "data/maps/FortreeCity_Gym/scripts.pory"

# 159 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_GymGuidePostVictory:
# 160 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You did it!\n"
# 161 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You soared past gravity!$"
# 162 "data/maps/FortreeCity_Gym/scripts.pory"

# 163 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_JaredIntro:
# 164 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Feel that breeze?\n"
# 165 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "That's freedom calling!\p"
# 166 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Let's see if you can\n"
# 167 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "stay airborne!$"
# 168 "data/maps/FortreeCity_Gym/scripts.pory"

# 169 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_JaredDefeat:
# 170 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Wow…\n"
# 171 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "The wind slipped away…$"
# 172 "data/maps/FortreeCity_Gym/scripts.pory"

# 173 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_JaredPostBattle:
# 174 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Battles shift like currents.\p"
# 175 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "If you panic midair,\n"
# 176 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "you'll lose control.\p"
# 177 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Can you stay steady\n"
# 178 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "against TAKA?$"
# 179 "data/maps/FortreeCity_Gym/scripts.pory"

# 180 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_EdwardoIntro:
# 181 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Only those who love the sky\n"
# 182 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "truly belong here.\p"
# 183 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I won't fall easily!$"
# 184 "data/maps/FortreeCity_Gym/scripts.pory"

# 185 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_EdwardoDefeat:
# 186 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "The height overwhelmed me…$"
# 187 "data/maps/FortreeCity_Gym/scripts.pory"

# 188 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_EdwardoPostBattle:
# 189 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "The world below looks small\n"
# 190 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "from up high.\p"
# 191 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "But the fall is always\n"
# 192 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "a risk.\p"
# 193 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I'll fly higher again.$"
# 194 "data/maps/FortreeCity_Gym/scripts.pory"

# 195 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_FlintIntro:
# 196 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You think you can face TAKA?\p"
# 197 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You'll have to get past\n"
# 198 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "this gust first!$"
# 199 "data/maps/FortreeCity_Gym/scripts.pory"

# 200 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_FlintDefeat:
# 201 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA, I…\n"
# 202 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I lost!$"
# 203 "data/maps/FortreeCity_Gym/scripts.pory"

# 204 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_FlintPostBattle:
# 205 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA doesn't fear heights.\n"
# 206 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "He embraces them.\p"
# 207 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Up there, he's untouchable.$"
# 208 "data/maps/FortreeCity_Gym/scripts.pory"

# 209 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_AshleyIntro:
# 210 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA taught me to trust\n"
# 211 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the wind beneath me!\p"
# 212 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I won't lose balance!$"
# 213 "data/maps/FortreeCity_Gym/scripts.pory"

# 214 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_AshleyDefeat:
# 215 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I couldn't keep altitude…$"
# 216 "data/maps/FortreeCity_Gym/scripts.pory"

# 217 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_AshleyPostBattle:
# 218 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Because of TAKA,\n"
# 219 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "we're not afraid of falling.\p"
# 220 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "We learn to rise again.$"
# 221 "data/maps/FortreeCity_Gym/scripts.pory"

# 222 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_HumbertoIntro:
# 223 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "When TAKA battles,\n"
# 224 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "he looks completely free.\p"
# 225 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I won't let you\n"
# 226 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "see that sky today!$"
# 227 "data/maps/FortreeCity_Gym/scripts.pory"

# 228 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_HumbertoDefeat:
# 229 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Urk!\n"
# 230 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I couldn't stop you.$"
# 231 "data/maps/FortreeCity_Gym/scripts.pory"

# 232 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_HumbertoPostBattle:
# 233 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Careful up there.\n"
# 234 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "One wrong move,\l"
# 235 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "and you plummet.\p"
# 236 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Freedom demands courage!$"
# 237 "data/maps/FortreeCity_Gym/scripts.pory"

# 238 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_DariusIntro:
# 239 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Flying POKEMON aren't\n"
# 240 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "all the same.\p"
# 241 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Some soar.\n"
# 242 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Some dive.\p"
# 243 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Can you handle both?$"
# 244 "data/maps/FortreeCity_Gym/scripts.pory"

# 245 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_DariusDefeat:
# 246 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You handled the air well.$"
# 247 "data/maps/FortreeCity_Gym/scripts.pory"

# 248 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_DariusPostBattle:
# 249 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Sure, you beat me.\p"
# 250 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "But TAKA moves like\n"
# 251 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "a shifting gale.\p"
# 252 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Stay sharp up there.$"
# 253 "data/maps/FortreeCity_Gym/scripts.pory"

# 254 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaIntro:
# 255 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "So you've made it this high.\p"
# 256 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I am TAKA, Leader of\n"
# 257 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the FORTREE GYM.\p"
# 258 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "The sky is my true home.\n"
# 259 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Up there, I feel limitless.\p"
# 260 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "With my FLYING POKEMON,\n"
# 261 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I chase the wind itself.\p"
# 262 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Show me, can you battle\n"
# 263 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "with the same freedom?$"
# 264 "data/maps/FortreeCity_Gym/scripts.pory"

# 265 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaDefeat:
# 266 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Incredible…\n"
# 267 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You rode the wind perfectly.\p"
# 268 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Very well.\n"
# 269 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You have earned this GYM BADGE.$"
# 270 "data/maps/FortreeCity_Gym/scripts.pory"

# 271 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_ReceivedFeatherBadge:
# 272 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "{PLAYER} received the FEATHER BADGE\n"
# 273 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "from TAKA.$"
# 274 "data/maps/FortreeCity_Gym/scripts.pory"

# 275 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_ExplainFeatherBadgeTakeThis:
# 276 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "With the FEATHER BADGE, all POKéMON up\n"
# 277 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "to LV 70, even those received through\l"
# 278 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "trades, will obey your every command.\p"
# 279 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You will also be able to use\n"
# 280 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the HM move FLY outside of battle.\p"
# 281 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "And this…\n"
# 282 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "This is a gift from me.$"
# 283 "data/maps/FortreeCity_Gym/scripts.pory"

# 284 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_ExplainAerialAce:
# 285 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TM40 contains AERIAL ACE.\p"
# 286 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Its speed…\n"
# 287 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "No POKéMON should be able to avoid it.\p"
# 288 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "… … … … … …$"
# 289 "data/maps/FortreeCity_Gym/scripts.pory"

# 290 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_RegisteredWinona:
# 291 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Registered GYM LEADER TAKA\n"
# 292 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "in the POKéNAV.$"
# 293 "data/maps/FortreeCity_Gym/scripts.pory"

# 294 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaPostBattle:
# 295 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Even in defeat, I feel lighter.\p"
# 296 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "A true battle is like flight,\n"
# 297 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "you must trust the wind.\p"
# 298 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Keep chasing new heights!$"
# 299 "data/maps/FortreeCity_Gym/scripts.pory"

# 300 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_GymStatue:
# 301 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "FORTREE CITY POKéMON GYM$"
# 302 "data/maps/FortreeCity_Gym/scripts.pory"

# 303 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_GymStatueCertified:
# 304 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "FORTREE CITY POKéMON GYM\p"
# 305 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA'S CERTIFIED TRAINERS:\n"
# 306 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "{PLAYER}$"
# 307 "data/maps/FortreeCity_Gym/scripts.pory"

# 308 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaPreRematch:
# 309 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA: We humans can never escape\n"
# 310 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "gravity's pull on the ground.\p"
# 311 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "But by striving for excellence,\n"
# 312 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "we have the power to soar!\p"
# 313 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You have scaled the pinnacle as\n"
# 314 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the reigning CHAMPION.\p"
# 315 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Please, allow me to see your power\n"
# 316 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "at full flight!$"
# 317 "data/maps/FortreeCity_Gym/scripts.pory"

# 318 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaRematchDefeat:
# 319 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I failed to reach your height again…$"
# 320 "data/maps/FortreeCity_Gym/scripts.pory"

# 321 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaPostRematch:
# 322 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA: Even though I have lost,\n"
# 323 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the wings of my heart remain unbroken.\p"
# 324 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I can rise and soar again and\n"
# 325 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "yet again.\p"
# 326 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I am convinced of it!$"
# 327 "data/maps/FortreeCity_Gym/scripts.pory"

# 328 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaRematchNeedTwoMons:
# 329 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA: We humans can never escape\n"
# 330 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "gravity's pull on the ground.\p"
# 331 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "But by striving for excellence,\n"
# 332 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "we have the power to soar!\p"
# 333 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You have scaled the pinnacle as\n"
# 334 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the reigning CHAMPION.\p"
# 335 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Please, allow me to see your power\n"
# 336 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "at full flight!\p"
# 337 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Oh, no… Do you have but one\n"
# 338 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "POKéMON with you?\p"
# 339 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Please return with two POKéMON\n"
# 340 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "at the very least.$"
