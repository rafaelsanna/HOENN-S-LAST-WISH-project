# 1 "data/maps/RustboroCity_Gym/scripts.pory"

# 2 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_MapScripts::
# 3 "data/maps/RustboroCity_Gym/scripts.pory"
	.byte 0
# 4 "data/maps/RustboroCity_Gym/scripts.pory"

# 5 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_Roxanne::
# 6 "data/maps/RustboroCity_Gym/scripts.pory"
	lock
# 7 "data/maps/RustboroCity_Gym/scripts.pory"
	faceplayer
# 8 "data/maps/RustboroCity_Gym/scripts.pory"
	getdifficulty VAR_RESULT
# 9 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 1, RustboroCity_Gym_RoxanneHard
# 10 "data/maps/RustboroCity_Gym/scripts.pory"
	
# 11 "data/maps/RustboroCity_Gym/scripts.pory"
	@ Normal Mode - TRAINER_TERRA_CASUAL 
# 12 "data/maps/RustboroCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_TERRA_CASUAL, RustboroCity_Gym_Text_RoxanneIntro, RustboroCity_Gym_Text_RoxanneDefeat, RustboroCity_Gym_EventScript_RoxanneDefeated, NO_MUSIC
# 13 "data/maps/RustboroCity_Gym/scripts.pory"
	goto RustboroCity_Gym_AfterBattle
# 14 "data/maps/RustboroCity_Gym/scripts.pory"

# 15 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_RoxanneHard::
# 16 "data/maps/RustboroCity_Gym/scripts.pory"
	@ Hard Mode - TRAINER_TERRA_HARD 
# 17 "data/maps/RustboroCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_TERRA_HARD, RustboroCity_Gym_Text_RoxanneIntro, RustboroCity_Gym_Text_RoxanneDefeat, RustboroCity_Gym_EventScript_RoxanneDefeated, NO_MUSIC
# 18 "data/maps/RustboroCity_Gym/scripts.pory"

# 19 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_AfterBattle::
# 20 "data/maps/RustboroCity_Gym/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 21 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, RustboroCity_Gym_EventScript_RoxanneRematch
# 22 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_unset FLAG_RECEIVED_TM_ROCK_TOMB, RustboroCity_Gym_EventScript_GiveRockTomb
# 23 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_RoxannePostBattle, MSGBOX_DEFAULT
# 24 "data/maps/RustboroCity_Gym/scripts.pory"
	release
# 25 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 26 "data/maps/RustboroCity_Gym/scripts.pory"
	
# 27 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_RoxanneDefeated::
# 28 "data/maps/RustboroCity_Gym/scripts.pory"
	message RustboroCity_Gym_Text_ReceivedStoneBadge
# 29 "data/maps/RustboroCity_Gym/scripts.pory"
	waitmessage
# 30 "data/maps/RustboroCity_Gym/scripts.pory"
	call Common_EventScript_PlayGymBadgeFanfare
# 31 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_StoneBadgeInfoTakeThis, MSGBOX_DEFAULT
# 32 "data/maps/RustboroCity_Gym/scripts.pory"
	setflag FLAG_DEFEATED_RUSTBORO_GYM
# 33 "data/maps/RustboroCity_Gym/scripts.pory"
	setflag FLAG_BADGE01_GET
# 34 "data/maps/RustboroCity_Gym/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 1
# 35 "data/maps/RustboroCity_Gym/scripts.pory"
	addvar VAR_PETALBURG_GYM_STATE, 1
# 36 "data/maps/RustboroCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 37 "data/maps/RustboroCity_Gym/scripts.pory"
	call Common_EventScript_SetGymTrainers
# 38 "data/maps/RustboroCity_Gym/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 6, Common_EventScript_ReadyPetalburgGymForBattle
# 39 "data/maps/RustboroCity_Gym/scripts.pory"
	goto RustboroCity_Gym_EventScript_GiveRockTomb
# 40 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 41 "data/maps/RustboroCity_Gym/scripts.pory"

# 42 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GiveRockTomb::
# 43 "data/maps/RustboroCity_Gym/scripts.pory"
	giveitem ITEM_TM_ROCK_TOMB
# 44 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 45 "data/maps/RustboroCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_ROCK_TOMB
# 46 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_ExplainRockTomb, MSGBOX_DEFAULT
# 47 "data/maps/RustboroCity_Gym/scripts.pory"
	release
# 48 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 49 "data/maps/RustboroCity_Gym/scripts.pory"

# 50 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_RoxanneRematch::
# 51 "data/maps/RustboroCity_Gym/scripts.pory"
	trainerbattle_rematch_double TRAINER_TERRA_HARD, RustboroCity_Gym_Text_RoxannePreRematch, RustboroCity_Gym_Text_RoxanneRematchDefeat, RustboroCity_Gym_Text_RoxanneRematchNeedTwoMons
# 52 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_RoxannePostRematch, MSGBOX_AUTOCLOSE
# 53 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 54 "data/maps/RustboroCity_Gym/scripts.pory"

# 55 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_Josh::
# 56 "data/maps/RustboroCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_JOSH, RustboroCity_Gym_Text_JoshIntro, RustboroCity_Gym_Text_JoshDefeat
# 57 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_JoshPostBattle, MSGBOX_AUTOCLOSE
# 58 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 59 "data/maps/RustboroCity_Gym/scripts.pory"

# 60 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_Raboutou::
# 61 "data/maps/RustboroCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_RABOUTOU, RustboroCity_Gym_Text_RaboutouIntro, RustboroCity_Gym_Text_RaboutouDefeat
# 62 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_RaboutouPostBattle, MSGBOX_AUTOCLOSE
# 63 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 64 "data/maps/RustboroCity_Gym/scripts.pory"

# 65 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_Janja::
# 66 "data/maps/RustboroCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_JANJA, RustboroCity_Gym_Text_JanjaIntro, RustboroCity_Gym_Text_JanjaDefeat
# 67 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_JanjaPostBattle, MSGBOX_AUTOCLOSE
# 68 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 69 "data/maps/RustboroCity_Gym/scripts.pory"

# 70 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GymGuide::
# 71 "data/maps/RustboroCity_Gym/scripts.pory"
	lock
# 72 "data/maps/RustboroCity_Gym/scripts.pory"
	faceplayer
# 73 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_RUSTBORO_GYM, RustboroCity_Gym_EventScript_GymGuidePostVictory
# 74 "data/maps/RustboroCity_Gym/scripts.pory"
	goto RustboroCity_Gym_EventScript_GymGuideAdvice
# 75 "data/maps/RustboroCity_Gym/scripts.pory"

# 76 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GymGuideAdvice::
# 77 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 78 "data/maps/RustboroCity_Gym/scripts.pory"
	release
# 79 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 80 "data/maps/RustboroCity_Gym/scripts.pory"

# 81 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GymGuidePostVictory::
# 82 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 83 "data/maps/RustboroCity_Gym/scripts.pory"
	release
# 84 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 85 "data/maps/RustboroCity_Gym/scripts.pory"

# 86 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_LeftGymStatue::
# 87 "data/maps/RustboroCity_Gym/scripts.pory"
	lockall
# 88 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE01_GET, RustboroCity_Gym_EventScript_GymStatueCertified
# 89 "data/maps/RustboroCity_Gym/scripts.pory"
	goto RustboroCity_Gym_EventScript_GymStatue
# 90 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 91 "data/maps/RustboroCity_Gym/scripts.pory"

# 92 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_RightGymStatue::
# 93 "data/maps/RustboroCity_Gym/scripts.pory"
	lockall
# 94 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE01_GET, RustboroCity_Gym_EventScript_GymStatueCertified
# 95 "data/maps/RustboroCity_Gym/scripts.pory"
	goto RustboroCity_Gym_EventScript_GymStatue
# 96 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 97 "data/maps/RustboroCity_Gym/scripts.pory"

# 98 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GymStatueCertified::
# 99 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 100 "data/maps/RustboroCity_Gym/scripts.pory"
	releaseall
# 101 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 102 "data/maps/RustboroCity_Gym/scripts.pory"

# 103 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GymStatue::
# 104 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 105 "data/maps/RustboroCity_Gym/scripts.pory"
	releaseall
# 106 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 107 "data/maps/RustboroCity_Gym/scripts.pory"

# 108 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_RegisterRoxanne::
# 109 "data/maps/RustboroCity_Gym/scripts.pory"
	lockall
# 110 "data/maps/RustboroCity_Gym/scripts.pory"
	waitmessage
# 111 "data/maps/RustboroCity_Gym/scripts.pory"
	delay 30
# 112 "data/maps/RustboroCity_Gym/scripts.pory"
	waitfanfare
# 113 "data/maps/RustboroCity_Gym/scripts.pory"
	closemessage
# 114 "data/maps/RustboroCity_Gym/scripts.pory"
	delay 30
# 115 "data/maps/RustboroCity_Gym/scripts.pory"
	releaseall
# 116 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 117 "data/maps/RustboroCity_Gym/scripts.pory"

# 118 "data/maps/RustboroCity_Gym/scripts.pory"
@ ============================================================
# 119 "data/maps/RustboroCity_Gym/scripts.pory"
@ SISTEMA DE ESCALADA — 30% chance passar
# 120 "data/maps/RustboroCity_Gym/scripts.pory"
@ coord_events no events.inc apontam para ClimbCheck.
# 121 "data/maps/RustboroCity_Gym/scripts.pory"
@ Após a FLAG_DEFEATED_RUSTBORO_GYM ser setada, triggers
# 122 "data/maps/RustboroCity_Gym/scripts.pory"
@ ficam silenciosos (jogador pode subir livremente).
# 123 "data/maps/RustboroCity_Gym/scripts.pory"
@ ============================================================
# 124 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_ClimbCheck::
# 125 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_RUSTBORO_GYM, RustboroCity_Gym_EventScript_ClimbCheck_End
# 126 "data/maps/RustboroCity_Gym/scripts.pory"
	random 3
# 127 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_lt VAR_RESULT, 1, RustboroCity_Gym_EventScript_Climb_Fall
# 128 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_ClimbCheck_End::
# 129 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 130 "data/maps/RustboroCity_Gym/scripts.pory"

# 131 "data/maps/RustboroCity_Gym/scripts.pory"
/// climb slow x climb fast
# 132 "data/maps/RustboroCity_Gym/scripts.pory"

# 133 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_ClimbSlow::
# 134 "data/maps/RustboroCity_Gym/scripts.pory"
	setflag DN_FLAG_SEARCHING
# 135 "data/maps/RustboroCity_Gym/scripts.pory"
	setflag DN_FLAG_DETECTOR_MODE
# 136 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 137 "data/maps/RustboroCity_Gym/scripts.pory"

# 138 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_ClimbFast::
# 139 "data/maps/RustboroCity_Gym/scripts.pory"
	clearflag DN_FLAG_SEARCHING
# 140 "data/maps/RustboroCity_Gym/scripts.pory"
	clearflag DN_FLAG_DETECTOR_MODE
# 141 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 142 "data/maps/RustboroCity_Gym/scripts.pory"

# 143 "data/maps/RustboroCity_Gym/scripts.pory"

# 144 "data/maps/RustboroCity_Gym/scripts.pory"
@ ============================================================
# 145 "data/maps/RustboroCity_Gym/scripts.pory"
@ QUEDA: slide_down move o player fisicamente,
# 146 "data/maps/RustboroCity_Gym/scripts.pory"
@ sem necessidade de warp ou fadescreen.
# 147 "data/maps/RustboroCity_Gym/scripts.pory"
@ Ajuste a quantidade de slide_down conforme a altura
# 148 "data/maps/RustboroCity_Gym/scripts.pory"
@ do ponto de escalada no mapa (1 slide = 1 tile para baixo).
# 149 "data/maps/RustboroCity_Gym/scripts.pory"
@ ============================================================
# 150 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_Climb_Fall::
# 151 "data/maps/RustboroCity_Gym/scripts.pory"
	lockall
# 152 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_SlipperyRock, MSGBOX_DEFAULT
# 153 "data/maps/RustboroCity_Gym/scripts.pory"
	playse SE_BIKE_HOP
# 154 "data/maps/RustboroCity_Gym/scripts.pory"
	waitse
# 155 "data/maps/RustboroCity_Gym/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, RustboroCity_Gym_Movement_Fall
# 156 "data/maps/RustboroCity_Gym/scripts.pory"
	waitmovement 0
# 157 "data/maps/RustboroCity_Gym/scripts.pory"
	playse SE_WALL_HIT
# 158 "data/maps/RustboroCity_Gym/scripts.pory"
	waitse
# 159 "data/maps/RustboroCity_Gym/scripts.pory"
	releaseall
# 160 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 161 "data/maps/RustboroCity_Gym/scripts.pory"

# 162 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Movement_Fall:
# 163 "data/maps/RustboroCity_Gym/scripts.pory"
	slide_down
# 164 "data/maps/RustboroCity_Gym/scripts.pory"
	slide_down
# 165 "data/maps/RustboroCity_Gym/scripts.pory"
	slide_down
# 166 "data/maps/RustboroCity_Gym/scripts.pory"
	slide_down
# 167 "data/maps/RustboroCity_Gym/scripts.pory"
	step_end
# 168 "data/maps/RustboroCity_Gym/scripts.pory"

# 169 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_SlipperyRock:
# 170 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Oops! You lost your grip!$"
# 171 "data/maps/RustboroCity_Gym/scripts.pory"
	
# 172 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_GymGuideAdvice:
# 173 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Yo, how's it going?\p"
# 174 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Listen, my friend!\n"
# 175 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Would you like to become the CHAMPION?\p"
# 176 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I'm no TRAINER, but I can\n"
# 177 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "give you winning advice.\p"
# 178 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "We'll aim for the POKEMON\n"
# 179 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "CHAMPIONSHIP together!\p"
# 180 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "It's your job to collect\n"
# 181 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "GYM BADGES, am I right?\p"
# 182 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "But GYM LEADERS aren't pushovers!\n"
# 183 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "That's where I come in!\p"
# 184 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA uses ROCK-type POKEMON.\p"
# 185 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "ROCK type is durable, but\n"
# 186 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "can't stand WATER and GRASS moves.\p"
# 187 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Come see me if you beat\n"
# 188 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "the GYM LEADER.\p"
# 189 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Well, go for it!$"
# 190 "data/maps/RustboroCity_Gym/scripts.pory"

# 191 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_GymGuidePostVictory:
# 192 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Whoa! What a breathtaking victory!\n"
# 193 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "My cheering must've worked!\p"
# 194 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Great! Check your TRAINER CARD.\p"
# 195 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "The STONE BADGE you got should be\n"
# 196 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "recorded on it.\p"
# 197 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "You've climbed the first step on\n"
# 198 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "the stairs to the CHAMPIONSHIP!\p"
# 199 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "That's got to feel awesome!$"
# 200 "data/maps/RustboroCity_Gym/scripts.pory"

# 201 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JoshIntro:
# 202 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Heh... I'm a totally fearless CLIMBER!\n"
# 203 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Yep, not scared of heights at all!\p"
# 204 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Get ready to see some real skill!$"
# 205 "data/maps/RustboroCity_Gym/scripts.pory"

# 206 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JoshDefeat:
# 207 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Oof... Guess my 'cool guy' act\n"
# 208 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "wasn't enough... What a fall!$"
# 209 "data/maps/RustboroCity_Gym/scripts.pory"

# 210 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JoshPostBattle:
# 211 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Alright, alright... I admit it!\n"
# 212 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I'm actually TERRIFIED of heights!\p"
# 213 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I only carry this climbing gear\n"
# 214 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to impress girls...$"
# 215 "data/maps/RustboroCity_Gym/scripts.pory"

# 216 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RaboutouIntro:
# 217 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Think you can beat me?\n"
# 218 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I've climbed HOENN's tallest peaks!\p"
# 219 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Show me what you're made of!$"
# 220 "data/maps/RustboroCity_Gym/scripts.pory"

# 221 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RaboutouDefeat:
# 222 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Wow! You've really got potential!$"
# 223 "data/maps/RustboroCity_Gym/scripts.pory"

# 224 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RaboutouPostBattle:
# 225 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA's strength is on a whole\n"
# 226 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "different level.\p"
# 227 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "You'd better come prepared!$"
# 228 "data/maps/RustboroCity_Gym/scripts.pory"

# 229 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JanjaIntro:
# 230 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "You think climbing these walls is tough?\n"
# 231 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Try scaling a cliff with no rope!\p"
# 232 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "My ROCK POKEMON and I have faced\n"
# 233 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "the harshest peaks in HOENN.\p"
# 234 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Every fall and scrape only made\n"
# 235 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "us stronger.\p"
# 236 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Now, let's see if your team can handle\n"
# 237 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "the pressure of a true mountain climb!$"
# 238 "data/maps/RustboroCity_Gym/scripts.pory"

# 239 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JanjaDefeat:
# 240 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Whoooa! Our challenger's got\n"
# 241 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "some real guts!$"
# 242 "data/maps/RustboroCity_Gym/scripts.pory"

# 243 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JanjaPostBattle:
# 244 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I've explored Hoenn's peaks for years!\p"
# 245 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "That's how I met TERRA. She's brave and\n"
# 246 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "fearless, just like the mountains.\p"
# 247 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "She wisely chose ROCK type for\n"
# 248 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "its strength and endurance.\p"
# 249 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "You've got that same spirit!\n"
# 250 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Keep climbing.$"
# 251 "data/maps/RustboroCity_Gym/scripts.pory"

# 252 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxanneIntro:
# 253 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Hey! I'm TERRA, RUSTBORO CITY's\n"
# 254 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "GYM LEADER and pro climber!\p"
# 255 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I trained on cliffs and mountains,\n"
# 256 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "pushing my limits with my Rock-types.\p"
# 257 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Show me how you battle and which\n"
# 258 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "POKEMON you brought to climb this!$"
# 259 "data/maps/RustboroCity_Gym/scripts.pory"

# 260 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxanneDefeat:
# 261 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Whoa... No way...\n"
# 262 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "So I really lost...\p"
# 263 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Damn, this feels like failing a\n"
# 264 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "climbing route... Sucks...\l"
# 265 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "But... I get it.\p"
# 266 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Please accept the official POKEMON\n"
# 267 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "LEAGUE STONE BADGE.$"
# 268 "data/maps/RustboroCity_Gym/scripts.pory"

# 269 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_ReceivedStoneBadge:
# 270 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "{PLAYER} received the STONE BADGE\n"
# 271 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "from TERRA.$"
# 272 "data/maps/RustboroCity_Gym/scripts.pory"

# 273 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_StoneBadgeInfoTakeThis:
# 274 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "The STONE BADGE heightens the ATTACK\n"
# 275 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "power of your POKEMON.\p"
# 276 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "It also enables them to use the HM move\n"
# 277 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "CUT outside of battle.\p"
# 278 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Please take this with you, too.$"
# 279 "data/maps/RustboroCity_Gym/scripts.pory"

# 280 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_ExplainRockTomb:
# 281 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "That TM39 contains ROCK TOMB.\p"
# 282 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "It inflicts damage and lowers SPEED.\p"
# 283 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "A TM instantly teaches the move\n"
# 284 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to a POKEMON.\p"
# 285 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "In the past, TMs could only be used once,\n"
# 286 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "but technology has evolved, hasn't it?\p"
# 287 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Now we can use them indefinitely,\n"
# 288 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "that's just great!$"
# 289 "data/maps/RustboroCity_Gym/scripts.pory"

# 290 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxannePostBattle:
# 291 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "If you want a real challenge, come\n"
# 292 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "back later - I'll have my true team ready.\p"
# 293 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Maybe we can even hit a climbing\n"
# 294 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "route together someday!$"
# 295 "data/maps/RustboroCity_Gym/scripts.pory"

# 296 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_GymStatue:
# 297 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "RUSTBORO CITY POKEMON GYM$"
# 298 "data/maps/RustboroCity_Gym/scripts.pory"

# 299 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_GymStatueCertified:
# 300 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "RUSTBORO CITY POKEMON GYM\p"
# 301 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA'S CERTIFIED TRAINERS:\n"
# 302 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "{PLAYER}$"
# 303 "data/maps/RustboroCity_Gym/scripts.pory"

# 304 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxanneRegisterCall:
# 305 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "... ... ... ... ... ...\n"
# 306 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "... ... ... ... ... Beep!\p"
# 307 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA: Hey, {PLAYER}!\n"
# 308 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "It's TERRA from RUSTBORO CITY.\p"
# 309 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "RENTON called me - said there's some\n"
# 310 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "rookie with a cape who looks badass.\p"
# 311 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Then he invited me for a night out\n"
# 312 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to get into trouble around town.\p"
# 313 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Obviously I said no! I've got rocks\n"
# 314 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to climb and a Gym to run!\p"
# 315 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "But don't get too comfortable ahead!\n"
# 316 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I'm training hard for our rematch!\p"
# 317 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "... ... ... ... ... ...\n"
# 318 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "... ... ... ... ... Click!$"
# 319 "data/maps/RustboroCity_Gym/scripts.pory"

# 320 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RegisteredRoxanne:
# 321 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Registered GYM LEADER TERRA\n"
# 322 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "in the POKENAV.$"
# 323 "data/maps/RustboroCity_Gym/scripts.pory"

# 324 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxannePreRematch:
# 325 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA: Hey, you're back! Great to see\n"
# 326 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "you again on my mountain.\p"
# 327 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I'm TERRA - since our last battle,\n"
# 328 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I hit the summit and found some\l"
# 329 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "badass Rock-type POKEMON.\p"
# 330 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I've been training nonstop.\n"
# 331 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Let's see how much we've leveled up!\p"
# 332 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Ready for a real rematch?\n"
# 333 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Let's CLIMB!$"
# 334 "data/maps/RustboroCity_Gym/scripts.pory"

# 335 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxanneRematchDefeat:
# 336 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Grr...\n"
# 337 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Again, I have lost...$"
# 338 "data/maps/RustboroCity_Gym/scripts.pory"

# 339 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxannePostRematch:
# 340 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA: Guess I've still got some climbing\n"
# 341 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to do in POKEMON battles.\p"
# 342 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "But that fires me up - there's always\n"
# 343 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "another peak to reach!$"
# 344 "data/maps/RustboroCity_Gym/scripts.pory"

# 345 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxanneRematchNeedTwoMons:
# 346 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA: Hey, you're back! Always good\n"
# 347 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to see you on my mountain.\p"
# 348 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "We've both climbed through tons\n"
# 349 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "of battles since last time, huh?\p"
# 350 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Oh - hold up.\n"
# 351 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "You've only got one POKEMON?\p"
# 352 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Come back with at least one more\n"
# 353 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "for a real climb of a battle!$"
# 354 "data/maps/RustboroCity_Gym/scripts.pory"

# 355 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_AskDifficulty:
# 356 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "GYM GUIDE: Before you challenge\n"
# 357 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA, I can adjust the difficulty!\p"
# 358 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Play on HARD mode where trainers\n"
# 359 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "have optimized teams?$"
# 360 "data/maps/RustboroCity_Gym/scripts.pory"

# 361 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_HardSelected:
# 362 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "GYM GUIDE: Hard mode selected!\n"
# 363 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA is waiting!$"
# 364 "data/maps/RustboroCity_Gym/scripts.pory"

# 365 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_NormalSelected:
# 366 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "GYM GUIDE: Casual mode selected!\n"
# 367 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA is waiting!$"
