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
	createfieldmugshot MUGSHOT_TAKA, EMOTE_NORMAL
# 83 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_WinonaPostRematch, MSGBOX_AUTOCLOSE
# 84 "data/maps/FortreeCity_Gym/scripts.pory"
	removefieldmugshot
# 85 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 86 "data/maps/FortreeCity_Gym/scripts.pory"

# 87 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Jared::
# 88 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_JARED, FortreeCity_Gym_Text_JaredIntro, FortreeCity_Gym_Text_JaredDefeat
# 89 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_JaredPostBattle, MSGBOX_AUTOCLOSE
# 90 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 91 "data/maps/FortreeCity_Gym/scripts.pory"

# 92 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Edwardo::
# 93 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_EDWARDO, FortreeCity_Gym_Text_EdwardoIntro, FortreeCity_Gym_Text_EdwardoDefeat
# 94 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_EdwardoPostBattle, MSGBOX_AUTOCLOSE
# 95 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 96 "data/maps/FortreeCity_Gym/scripts.pory"

# 97 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Flint::
# 98 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_FLINT, FortreeCity_Gym_Text_FlintIntro, FortreeCity_Gym_Text_FlintDefeat
# 99 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_FlintPostBattle, MSGBOX_AUTOCLOSE
# 100 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 101 "data/maps/FortreeCity_Gym/scripts.pory"

# 102 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Ashley::
# 103 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_ASHLEY, FortreeCity_Gym_Text_AshleyIntro, FortreeCity_Gym_Text_AshleyDefeat
# 104 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_AshleyPostBattle, MSGBOX_AUTOCLOSE
# 105 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 106 "data/maps/FortreeCity_Gym/scripts.pory"

# 107 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Humberto::
# 108 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_HUMBERTO, FortreeCity_Gym_Text_HumbertoIntro, FortreeCity_Gym_Text_HumbertoDefeat
# 109 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_HumbertoPostBattle, MSGBOX_AUTOCLOSE
# 110 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 111 "data/maps/FortreeCity_Gym/scripts.pory"

# 112 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_Darius::
# 113 "data/maps/FortreeCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_DARIUS, FortreeCity_Gym_Text_DariusIntro, FortreeCity_Gym_Text_DariusDefeat
# 114 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_DariusPostBattle, MSGBOX_AUTOCLOSE
# 115 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 116 "data/maps/FortreeCity_Gym/scripts.pory"

# 117 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GymGuide::
# 118 "data/maps/FortreeCity_Gym/scripts.pory"
	lock
# 119 "data/maps/FortreeCity_Gym/scripts.pory"
	faceplayer
# 120 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_FORTREE_GYM, FortreeCity_Gym_EventScript_GymGuidePostVictory
# 121 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 122 "data/maps/FortreeCity_Gym/scripts.pory"
	release
# 123 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 124 "data/maps/FortreeCity_Gym/scripts.pory"

# 125 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GymGuidePostVictory::
# 126 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 127 "data/maps/FortreeCity_Gym/scripts.pory"
	release
# 128 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 129 "data/maps/FortreeCity_Gym/scripts.pory"

# 130 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_LeftGymStatue::
# 131 "data/maps/FortreeCity_Gym/scripts.pory"
	lockall
# 132 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE06_GET, FortreeCity_Gym_EventScript_GymStatueCertified
# 133 "data/maps/FortreeCity_Gym/scripts.pory"
	goto FortreeCity_Gym_EventScript_GymStatue
# 134 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 135 "data/maps/FortreeCity_Gym/scripts.pory"

# 136 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_RightGymStatue::
# 137 "data/maps/FortreeCity_Gym/scripts.pory"
	lockall
# 138 "data/maps/FortreeCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE06_GET, FortreeCity_Gym_EventScript_GymStatueCertified
# 139 "data/maps/FortreeCity_Gym/scripts.pory"
	goto FortreeCity_Gym_EventScript_GymStatue
# 140 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 141 "data/maps/FortreeCity_Gym/scripts.pory"

# 142 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GymStatueCertified::
# 143 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 144 "data/maps/FortreeCity_Gym/scripts.pory"
	releaseall
# 145 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 146 "data/maps/FortreeCity_Gym/scripts.pory"

# 147 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_EventScript_GymStatue::
# 148 "data/maps/FortreeCity_Gym/scripts.pory"
	msgbox FortreeCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 149 "data/maps/FortreeCity_Gym/scripts.pory"
	releaseall
# 150 "data/maps/FortreeCity_Gym/scripts.pory"
	end
# 151 "data/maps/FortreeCity_Gym/scripts.pory"

# 152 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_GymGuideAdvice:
# 153 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Yo, CHAMPION-bound {PLAYER}!\p"
# 154 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA, our LEADER, lives\n"
# 155 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "for the open sky.\p"
# 156 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "He says battle should feel\n"
# 157 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "like riding the wind.\p"
# 158 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Keep your footing steady,\n"
# 159 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "or you'll fall fast!$"
# 160 "data/maps/FortreeCity_Gym/scripts.pory"

# 161 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_GymGuidePostVictory:
# 162 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You did it!\n"
# 163 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You soared past gravity!$"
# 164 "data/maps/FortreeCity_Gym/scripts.pory"

# 165 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_JaredIntro:
# 166 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Feel that breeze?\n"
# 167 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "That's freedom calling!\p"
# 168 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Let's see if you can\n"
# 169 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "stay airborne!$"
# 170 "data/maps/FortreeCity_Gym/scripts.pory"

# 171 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_JaredDefeat:
# 172 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Wow…\n"
# 173 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "The wind slipped away…$"
# 174 "data/maps/FortreeCity_Gym/scripts.pory"

# 175 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_JaredPostBattle:
# 176 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Battles shift like currents.\p"
# 177 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "If you panic midair,\n"
# 178 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "you'll lose control.\p"
# 179 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Can you stay steady\n"
# 180 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "against TAKA?$"
# 181 "data/maps/FortreeCity_Gym/scripts.pory"

# 182 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_EdwardoIntro:
# 183 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Only those who love the sky\n"
# 184 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "truly belong here.\p"
# 185 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I won't fall easily!$"
# 186 "data/maps/FortreeCity_Gym/scripts.pory"

# 187 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_EdwardoDefeat:
# 188 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "The height overwhelmed me…$"
# 189 "data/maps/FortreeCity_Gym/scripts.pory"

# 190 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_EdwardoPostBattle:
# 191 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "The world below looks small\n"
# 192 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "from up high.\p"
# 193 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "But the fall is always\n"
# 194 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "a risk.\p"
# 195 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I'll fly higher again.$"
# 196 "data/maps/FortreeCity_Gym/scripts.pory"

# 197 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_FlintIntro:
# 198 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You think you can face TAKA?\p"
# 199 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You'll have to get past\n"
# 200 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "this gust first!$"
# 201 "data/maps/FortreeCity_Gym/scripts.pory"

# 202 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_FlintDefeat:
# 203 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA, I…\n"
# 204 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I lost!$"
# 205 "data/maps/FortreeCity_Gym/scripts.pory"

# 206 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_FlintPostBattle:
# 207 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA doesn't fear heights.\n"
# 208 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "He embraces them.\p"
# 209 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Up there, he's untouchable.$"
# 210 "data/maps/FortreeCity_Gym/scripts.pory"

# 211 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_AshleyIntro:
# 212 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA taught me to trust\n"
# 213 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the wind beneath me!\p"
# 214 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I won't lose balance!$"
# 215 "data/maps/FortreeCity_Gym/scripts.pory"

# 216 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_AshleyDefeat:
# 217 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I couldn't keep altitude…$"
# 218 "data/maps/FortreeCity_Gym/scripts.pory"

# 219 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_AshleyPostBattle:
# 220 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Because of TAKA,\n"
# 221 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "we're not afraid of falling.\p"
# 222 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "We learn to rise again.$"
# 223 "data/maps/FortreeCity_Gym/scripts.pory"

# 224 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_HumbertoIntro:
# 225 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "When TAKA battles,\n"
# 226 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "he looks completely free.\p"
# 227 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I won't let you\n"
# 228 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "see that sky today!$"
# 229 "data/maps/FortreeCity_Gym/scripts.pory"

# 230 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_HumbertoDefeat:
# 231 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Urk!\n"
# 232 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I couldn't stop you.$"
# 233 "data/maps/FortreeCity_Gym/scripts.pory"

# 234 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_HumbertoPostBattle:
# 235 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Careful up there.\n"
# 236 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "One wrong move,\l"
# 237 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "and you plummet.\p"
# 238 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Freedom demands courage!$"
# 239 "data/maps/FortreeCity_Gym/scripts.pory"

# 240 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_DariusIntro:
# 241 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Flying POKEMON aren't\n"
# 242 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "all the same.\p"
# 243 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Some soar.\n"
# 244 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Some dive.\p"
# 245 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Can you handle both?$"
# 246 "data/maps/FortreeCity_Gym/scripts.pory"

# 247 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_DariusDefeat:
# 248 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You handled the air well.$"
# 249 "data/maps/FortreeCity_Gym/scripts.pory"

# 250 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_DariusPostBattle:
# 251 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Sure, you beat me.\p"
# 252 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "But TAKA moves like\n"
# 253 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "a shifting gale.\p"
# 254 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Stay sharp up there.$"
# 255 "data/maps/FortreeCity_Gym/scripts.pory"

# 256 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaIntro:
# 257 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "So you've made it this high.\p"
# 258 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I am TAKA, Leader of\n"
# 259 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the FORTREE GYM.\p"
# 260 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "The sky is my true home.\n"
# 261 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Up there, I feel limitless.\p"
# 262 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "With my FLYING POKEMON,\n"
# 263 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I chase the wind itself.\p"
# 264 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Show me, can you battle\n"
# 265 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "with the same freedom?$"
# 266 "data/maps/FortreeCity_Gym/scripts.pory"

# 267 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaDefeat:
# 268 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Incredible…\n"
# 269 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You rode the wind perfectly.\p"
# 270 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Very well.\n"
# 271 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You have earned this GYM BADGE.$"
# 272 "data/maps/FortreeCity_Gym/scripts.pory"

# 273 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_ReceivedFeatherBadge:
# 274 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "{PLAYER} received the FEATHER BADGE\n"
# 275 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "from TAKA.$"
# 276 "data/maps/FortreeCity_Gym/scripts.pory"

# 277 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_ExplainFeatherBadgeTakeThis:
# 278 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "With the FEATHER BADGE, all POKéMON up\n"
# 279 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "to LV 70, even those received through\l"
# 280 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "trades, will obey your every command.\p"
# 281 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You will also be able to use\n"
# 282 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the HM move FLY outside of battle.\p"
# 283 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "And this…\n"
# 284 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "This is a gift from me.$"
# 285 "data/maps/FortreeCity_Gym/scripts.pory"

# 286 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_ExplainAerialAce:
# 287 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TM40 contains AERIAL ACE.\p"
# 288 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Its speed…\n"
# 289 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "No POKéMON should be able to avoid it.\p"
# 290 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "… … … … … …$"
# 291 "data/maps/FortreeCity_Gym/scripts.pory"

# 292 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_RegisteredWinona:
# 293 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Registered GYM LEADER TAKA\n"
# 294 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "in the POKéNAV.$"
# 295 "data/maps/FortreeCity_Gym/scripts.pory"

# 296 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaPostBattle:
# 297 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Even in defeat, I feel lighter.\p"
# 298 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "A true battle is like flight,\n"
# 299 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "you must trust the wind.\p"
# 300 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Keep chasing new heights!$"
# 301 "data/maps/FortreeCity_Gym/scripts.pory"

# 302 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_GymStatue:
# 303 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "FORTREE CITY POKéMON GYM$"
# 304 "data/maps/FortreeCity_Gym/scripts.pory"

# 305 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_GymStatueCertified:
# 306 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "FORTREE CITY POKéMON GYM\p"
# 307 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA'S CERTIFIED TRAINERS:\n"
# 308 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "{PLAYER}$"
# 309 "data/maps/FortreeCity_Gym/scripts.pory"

# 310 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaPreRematch:
# 311 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA: We humans can never escape\n"
# 312 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "gravity's pull on the ground.\p"
# 313 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "But by striving for excellence,\n"
# 314 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "we have the power to soar!\p"
# 315 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You have scaled the pinnacle as\n"
# 316 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the reigning CHAMPION.\p"
# 317 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Please, allow me to see your power\n"
# 318 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "at full flight!$"
# 319 "data/maps/FortreeCity_Gym/scripts.pory"

# 320 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaRematchDefeat:
# 321 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I failed to reach your height again…$"
# 322 "data/maps/FortreeCity_Gym/scripts.pory"

# 323 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaPostRematch:
# 324 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA: Even though I have lost,\n"
# 325 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the wings of my heart remain unbroken.\p"
# 326 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I can rise and soar again and\n"
# 327 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "yet again.\p"
# 328 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "I am convinced of it!$"
# 329 "data/maps/FortreeCity_Gym/scripts.pory"

# 330 "data/maps/FortreeCity_Gym/scripts.pory"
FortreeCity_Gym_Text_WinonaRematchNeedTwoMons:
# 331 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "TAKA: We humans can never escape\n"
# 332 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "gravity's pull on the ground.\p"
# 333 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "But by striving for excellence,\n"
# 334 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "we have the power to soar!\p"
# 335 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "You have scaled the pinnacle as\n"
# 336 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "the reigning CHAMPION.\p"
# 337 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Please, allow me to see your power\n"
# 338 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "at full flight!\p"
# 339 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Oh, no… Do you have but one\n"
# 340 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "POKéMON with you?\p"
# 341 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "Please return with two POKéMON\n"
# 342 "data/maps/FortreeCity_Gym/scripts.pory"
	.string "at the very least.$"
