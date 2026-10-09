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
	goto_if_set FLAG_DEFEATED_RUSTBORO_GYM, RustboroCity_Gym_AfterBattle
# 9 "data/maps/RustboroCity_Gym/scripts.pory"
	getdifficulty VAR_RESULT
# 10 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 1, RustboroCity_Gym_RoxanneHard
# 11 "data/maps/RustboroCity_Gym/scripts.pory"

# 12 "data/maps/RustboroCity_Gym/scripts.pory"
	@ Normal Mode - TRAINER_TERRA_CASUAL
# 13 "data/maps/RustboroCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_TERRA, EMOTE_NORMAL
# 14 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_RoxanneIntro, MSGBOX_DEFAULT
# 15 "data/maps/RustboroCity_Gym/scripts.pory"
	removefieldmugshot
# 16 "data/maps/RustboroCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_TERRA_CASUAL, RustboroCity_Gym_Text_RoxanneDefeat
# 17 "data/maps/RustboroCity_Gym/scripts.pory"
	call RustboroCity_Gym_EventScript_Victory
# 18 "data/maps/RustboroCity_Gym/scripts.pory"
	goto RustboroCity_Gym_AfterBattle
# 19 "data/maps/RustboroCity_Gym/scripts.pory"

# 20 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_RoxanneHard::
# 21 "data/maps/RustboroCity_Gym/scripts.pory"
	@ Hard Mode - TRAINER_TERRA_HARD
# 22 "data/maps/RustboroCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_TERRA, EMOTE_NORMAL
# 23 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_RoxanneIntro, MSGBOX_DEFAULT
# 24 "data/maps/RustboroCity_Gym/scripts.pory"
	removefieldmugshot
# 25 "data/maps/RustboroCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_TERRA_HARD, RustboroCity_Gym_Text_RoxanneDefeat
# 26 "data/maps/RustboroCity_Gym/scripts.pory"
	call RustboroCity_Gym_EventScript_Victory
# 27 "data/maps/RustboroCity_Gym/scripts.pory"
	goto RustboroCity_Gym_AfterBattle
# 28 "data/maps/RustboroCity_Gym/scripts.pory"

# 29 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_Victory::
# 30 "data/maps/RustboroCity_Gym/scripts.pory"
	message RustboroCity_Gym_Text_ReceivedStoneBadge
# 31 "data/maps/RustboroCity_Gym/scripts.pory"
	waitmessage
# 32 "data/maps/RustboroCity_Gym/scripts.pory"
	call Common_EventScript_PlayGymBadgeFanfare
# 33 "data/maps/RustboroCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_TERRA, EMOTE_NORMAL
# 34 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_StoneBadgeInfoTakeThis, MSGBOX_DEFAULT
# 35 "data/maps/RustboroCity_Gym/scripts.pory"
	removefieldmugshot
# 36 "data/maps/RustboroCity_Gym/scripts.pory"
	setflag FLAG_DEFEATED_RUSTBORO_GYM
# 37 "data/maps/RustboroCity_Gym/scripts.pory"
	setflag FLAG_BADGE01_GET
# 38 "data/maps/RustboroCity_Gym/scripts.pory"
	setvar VAR_RUSTBORO_CITY_STATE, 1
# 39 "data/maps/RustboroCity_Gym/scripts.pory"
	addvar VAR_PETALBURG_GYM_STATE, 1
# 40 "data/maps/RustboroCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 41 "data/maps/RustboroCity_Gym/scripts.pory"
	call Common_EventScript_SetGymTrainers
# 42 "data/maps/RustboroCity_Gym/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 6, Common_EventScript_ReadyPetalburgGymForBattle
# 43 "data/maps/RustboroCity_Gym/scripts.pory"
	return
# 44 "data/maps/RustboroCity_Gym/scripts.pory"

# 45 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_AfterBattle::
# 46 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_unset FLAG_RECEIVED_TM_STEALTH_ROCK, RustboroCity_Gym_EventScript_GiveStealthRock
# 47 "data/maps/RustboroCity_Gym/scripts.pory"
	setorcopyvar VAR_TRAINER_BATTLE_OPPONENT_A, TRAINER_TERRA_HARD
# 48 "data/maps/RustboroCity_Gym/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 49 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, RustboroCity_Gym_EventScript_RoxanneRematch
# 50 "data/maps/RustboroCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_TERRA, EMOTE_NORMAL
# 51 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_RoxannePostBattle, MSGBOX_DEFAULT
# 52 "data/maps/RustboroCity_Gym/scripts.pory"
	removefieldmugshot
# 53 "data/maps/RustboroCity_Gym/scripts.pory"
	release
# 54 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 55 "data/maps/RustboroCity_Gym/scripts.pory"

# 56 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GiveStealthRock::
# 57 "data/maps/RustboroCity_Gym/scripts.pory"
	giveitem ITEM_TM_STEALTH_ROCK
# 58 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 59 "data/maps/RustboroCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_STEALTH_ROCK
# 60 "data/maps/RustboroCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_TERRA, EMOTE_NORMAL
# 61 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_ExplainStealthRock, MSGBOX_DEFAULT
# 62 "data/maps/RustboroCity_Gym/scripts.pory"
	removefieldmugshot
# 63 "data/maps/RustboroCity_Gym/scripts.pory"
	release
# 64 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 65 "data/maps/RustboroCity_Gym/scripts.pory"

# 66 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_RoxanneRematch::
# 67 "data/maps/RustboroCity_Gym/scripts.pory"
	trainerbattle_rematch TRAINER_TERRA_HARD, RustboroCity_Gym_Text_RoxannePreRematch, RustboroCity_Gym_Text_RoxanneRematchDefeat
# 68 "data/maps/RustboroCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_TERRA, EMOTE_NORMAL
# 69 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_RoxannePostRematch, MSGBOX_AUTOCLOSE
# 70 "data/maps/RustboroCity_Gym/scripts.pory"
	removefieldmugshot
# 71 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 72 "data/maps/RustboroCity_Gym/scripts.pory"

# 73 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_Josh::
# 74 "data/maps/RustboroCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_JOSH, RustboroCity_Gym_Text_JoshIntro, RustboroCity_Gym_Text_JoshDefeat
# 75 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_JoshPostBattle, MSGBOX_AUTOCLOSE
# 76 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 77 "data/maps/RustboroCity_Gym/scripts.pory"

# 78 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_Raboutou::
# 79 "data/maps/RustboroCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_RABOUTOU, RustboroCity_Gym_Text_RaboutouIntro, RustboroCity_Gym_Text_RaboutouDefeat
# 80 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_RaboutouPostBattle, MSGBOX_AUTOCLOSE
# 81 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 82 "data/maps/RustboroCity_Gym/scripts.pory"

# 83 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_Janja::
# 84 "data/maps/RustboroCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_JANJA, RustboroCity_Gym_Text_JanjaIntro, RustboroCity_Gym_Text_JanjaDefeat
# 85 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_JanjaPostBattle, MSGBOX_AUTOCLOSE
# 86 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 87 "data/maps/RustboroCity_Gym/scripts.pory"

# 88 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GymGuide::
# 89 "data/maps/RustboroCity_Gym/scripts.pory"
	lock
# 90 "data/maps/RustboroCity_Gym/scripts.pory"
	faceplayer
# 91 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_RUSTBORO_GYM, RustboroCity_Gym_EventScript_GymGuidePostVictory
# 92 "data/maps/RustboroCity_Gym/scripts.pory"
	goto RustboroCity_Gym_EventScript_GymGuideAdvice
# 93 "data/maps/RustboroCity_Gym/scripts.pory"

# 94 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GymGuideAdvice::
# 95 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 96 "data/maps/RustboroCity_Gym/scripts.pory"
	release
# 97 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 98 "data/maps/RustboroCity_Gym/scripts.pory"

# 99 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GymGuidePostVictory::
# 100 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 101 "data/maps/RustboroCity_Gym/scripts.pory"
	release
# 102 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 103 "data/maps/RustboroCity_Gym/scripts.pory"

# 104 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_LeftGymStatue::
# 105 "data/maps/RustboroCity_Gym/scripts.pory"
	lockall
# 106 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE01_GET, RustboroCity_Gym_EventScript_GymStatueCertified
# 107 "data/maps/RustboroCity_Gym/scripts.pory"
	goto RustboroCity_Gym_EventScript_GymStatue
# 108 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 109 "data/maps/RustboroCity_Gym/scripts.pory"

# 110 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_RightGymStatue::
# 111 "data/maps/RustboroCity_Gym/scripts.pory"
	lockall
# 112 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE01_GET, RustboroCity_Gym_EventScript_GymStatueCertified
# 113 "data/maps/RustboroCity_Gym/scripts.pory"
	goto RustboroCity_Gym_EventScript_GymStatue
# 114 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 115 "data/maps/RustboroCity_Gym/scripts.pory"

# 116 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GymStatueCertified::
# 117 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 118 "data/maps/RustboroCity_Gym/scripts.pory"
	releaseall
# 119 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 120 "data/maps/RustboroCity_Gym/scripts.pory"

# 121 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GymStatue::
# 122 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 123 "data/maps/RustboroCity_Gym/scripts.pory"
	releaseall
# 124 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 125 "data/maps/RustboroCity_Gym/scripts.pory"

# 126 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_RegisterRoxanne::
# 127 "data/maps/RustboroCity_Gym/scripts.pory"
	lockall
# 128 "data/maps/RustboroCity_Gym/scripts.pory"
	waitmessage
# 129 "data/maps/RustboroCity_Gym/scripts.pory"
	delay 30
# 130 "data/maps/RustboroCity_Gym/scripts.pory"
	waitfanfare
# 131 "data/maps/RustboroCity_Gym/scripts.pory"
	closemessage
# 132 "data/maps/RustboroCity_Gym/scripts.pory"
	delay 30
# 133 "data/maps/RustboroCity_Gym/scripts.pory"
	releaseall
# 134 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 135 "data/maps/RustboroCity_Gym/scripts.pory"

# 136 "data/maps/RustboroCity_Gym/scripts.pory"
@ ============================================================
# 137 "data/maps/RustboroCity_Gym/scripts.pory"
@ SISTEMA DE ESCALADA — 30% chance passar
# 138 "data/maps/RustboroCity_Gym/scripts.pory"
@ ============================================================
# 139 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_ClimbCheck::
# 140 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_RUSTBORO_GYM, RustboroCity_Gym_EventScript_ClimbCheck_End
# 141 "data/maps/RustboroCity_Gym/scripts.pory"
	random 3
# 142 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_lt VAR_RESULT, 1, RustboroCity_Gym_EventScript_Climb_Fall
# 143 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_ClimbCheck_End::
# 144 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 145 "data/maps/RustboroCity_Gym/scripts.pory"

# 146 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_ClimbSlow::
# 147 "data/maps/RustboroCity_Gym/scripts.pory"
	setflag DN_FLAG_SEARCHING
# 148 "data/maps/RustboroCity_Gym/scripts.pory"
	setflag DN_FLAG_DETECTOR_MODE
# 149 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 150 "data/maps/RustboroCity_Gym/scripts.pory"

# 151 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_ClimbFast::
# 152 "data/maps/RustboroCity_Gym/scripts.pory"
	clearflag DN_FLAG_SEARCHING
# 153 "data/maps/RustboroCity_Gym/scripts.pory"
	clearflag DN_FLAG_DETECTOR_MODE
# 154 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 155 "data/maps/RustboroCity_Gym/scripts.pory"

# 156 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_Climb_Fall::
# 157 "data/maps/RustboroCity_Gym/scripts.pory"
	lockall
# 158 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_SlipperyRock, MSGBOX_DEFAULT
# 159 "data/maps/RustboroCity_Gym/scripts.pory"
	playse SE_BIKE_HOP
# 160 "data/maps/RustboroCity_Gym/scripts.pory"
	waitse
# 161 "data/maps/RustboroCity_Gym/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, RustboroCity_Gym_Movement_Fall
# 162 "data/maps/RustboroCity_Gym/scripts.pory"
	waitmovement 0
# 163 "data/maps/RustboroCity_Gym/scripts.pory"
	playse SE_WALL_HIT
# 164 "data/maps/RustboroCity_Gym/scripts.pory"
	waitse
# 165 "data/maps/RustboroCity_Gym/scripts.pory"
	releaseall
# 166 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 167 "data/maps/RustboroCity_Gym/scripts.pory"

# 168 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Movement_Fall:
# 169 "data/maps/RustboroCity_Gym/scripts.pory"
	slide_down
# 170 "data/maps/RustboroCity_Gym/scripts.pory"
	slide_down
# 171 "data/maps/RustboroCity_Gym/scripts.pory"
	slide_down
# 172 "data/maps/RustboroCity_Gym/scripts.pory"
	slide_down
# 173 "data/maps/RustboroCity_Gym/scripts.pory"
	step_end
# 174 "data/maps/RustboroCity_Gym/scripts.pory"

# 175 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_SlipperyRock:
# 176 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Oops! You lost your grip!$"
# 177 "data/maps/RustboroCity_Gym/scripts.pory"

# 178 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_GymGuideAdvice:
# 179 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Yo, how's it going?\p"
# 180 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Listen, my friend!\n"
# 181 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Would you like to become the CHAMPION?\p"
# 182 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I'm no TRAINER, but I can\n"
# 183 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "give you winning advice.\p"
# 184 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "We'll aim for the POKéMON\n"
# 185 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "CHAMPIONSHIP together!\p"
# 186 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "It's your job to collect\n"
# 187 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "GYM BADGES, am I right?\p"
# 188 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "But GYM LEADERS aren't pushovers!\n"
# 189 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "That's where I come in!\p"
# 190 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA uses ROCK-type POKéMON.\p"
# 191 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "ROCK type is durable, but\n"
# 192 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "can't stand WATER and GRASS moves.\p"
# 193 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Come see me if you beat\n"
# 194 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "the GYM LEADER.\p"
# 195 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Well, go for it!$"
# 196 "data/maps/RustboroCity_Gym/scripts.pory"

# 197 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_GymGuidePostVictory:
# 198 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Whoa! What a breathtaking victory!\n"
# 199 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "My cheering must've worked!\p"
# 200 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Great! Check your TRAINER CARD.\p"
# 201 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "The STONE BADGE you got should be\n"
# 202 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "recorded on it.\p"
# 203 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "You've climbed the first step on\n"
# 204 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "the stairs to the CHAMPIONSHIP!\p"
# 205 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "That's got to feel awesome!$"
# 206 "data/maps/RustboroCity_Gym/scripts.pory"

# 207 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JoshIntro:
# 208 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Heh… I'm a totally fearless CLIMBER!\n"
# 209 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Yep, not scared of heights at all!\p"
# 210 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Get ready to see some real skill!$"
# 211 "data/maps/RustboroCity_Gym/scripts.pory"

# 212 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JoshDefeat:
# 213 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Oof… Guess my 'cool guy' act\n"
# 214 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "wasn't enough… What a fall!$"
# 215 "data/maps/RustboroCity_Gym/scripts.pory"

# 216 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JoshPostBattle:
# 217 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Alright, alright… I admit it!\n"
# 218 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I'm actually TERRIFIED of heights!\p"
# 219 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I only carry this climbing gear\n"
# 220 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to impress girls…$"
# 221 "data/maps/RustboroCity_Gym/scripts.pory"

# 222 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RaboutouIntro:
# 223 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Think you can beat me?\n"
# 224 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I've climbed HOENN's tallest peaks!\p"
# 225 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Show me what you're made of!$"
# 226 "data/maps/RustboroCity_Gym/scripts.pory"

# 227 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RaboutouDefeat:
# 228 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Wow! You've really got potential!$"
# 229 "data/maps/RustboroCity_Gym/scripts.pory"

# 230 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RaboutouPostBattle:
# 231 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA's strength is on a whole\n"
# 232 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "different level.\p"
# 233 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "You'd better come prepared!$"
# 234 "data/maps/RustboroCity_Gym/scripts.pory"

# 235 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JanjaIntro:
# 236 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "You think climbing these walls is tough?\n"
# 237 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Try scaling a cliff with no rope!\p"
# 238 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "My ROCK POKéMON and I have faced\n"
# 239 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "the harshest peaks in HOENN.\p"
# 240 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Every fall and scrape only made\n"
# 241 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "us stronger.\p"
# 242 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Now, let's see if your team can handle\n"
# 243 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "the pressure of a true mountain climb!$"
# 244 "data/maps/RustboroCity_Gym/scripts.pory"

# 245 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JanjaDefeat:
# 246 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Whoooa! Our challenger's got\n"
# 247 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "some real guts!$"
# 248 "data/maps/RustboroCity_Gym/scripts.pory"

# 249 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JanjaPostBattle:
# 250 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I've explored Hoenn's peaks for years!\p"
# 251 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "That's how I met TERRA. She's brave and\n"
# 252 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "fearless, just like the mountains.\p"
# 253 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "She wisely chose ROCK type for\n"
# 254 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "its strength and endurance.\p"
# 255 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "You've got that same spirit!\n"
# 256 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Keep climbing.$"
# 257 "data/maps/RustboroCity_Gym/scripts.pory"

# 258 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxanneIntro:
# 259 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Hey! I'm TERRA, RUSTBORO CITY's\n"
# 260 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "GYM LEADER and pro climber!\p"
# 261 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I trained on cliffs and mountains,\n"
# 262 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "pushing my limits with my Rock-types.\p"
# 263 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Show me how you battle and which\n"
# 264 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "POKéMON you brought to climb this!$"
# 265 "data/maps/RustboroCity_Gym/scripts.pory"

# 266 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxanneDefeat:
# 267 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Whoa… No way…\n"
# 268 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "So I really lost…\p"
# 269 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Damn, this feels like failing a\n"
# 270 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "climbing route… Sucks…\l"
# 271 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "But… I get it.\p"
# 272 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Please accept the official POKéMON\n"
# 273 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "LEAGUE STONE BADGE.$"
# 274 "data/maps/RustboroCity_Gym/scripts.pory"

# 275 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_ReceivedStoneBadge:
# 276 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "{PLAYER} received the STONE BADGE\n"
# 277 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "from TERRA.$"
# 278 "data/maps/RustboroCity_Gym/scripts.pory"

# 279 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_StoneBadgeInfoTakeThis:
# 280 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "The STONE BADGE heightens the ATTACK\n"
# 281 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "power of your POKéMON.\p"
# 282 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "It also enables them to use the HM move\n"
# 283 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "CUT outside of battle.\p"
# 284 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Please take this with you, too.$"
# 285 "data/maps/RustboroCity_Gym/scripts.pory"

# 286 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_ExplainStealthRock:
# 287 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "That TM39 contains STEALTH ROCK.\p"
# 288 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "It sets a trap of floating stones around\n"
# 289 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "the opposing team.\p"
# 290 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "The trap hurts opposing POKéMON when\n"
# 291 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "they switch into battle.\p"
# 292 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "A TM instantly teaches the move\n"
# 293 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to a POKéMON.\p"
# 294 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "In the past, TMs could only be used once,\n"
# 295 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "but technology has evolved, hasn't it?\p"
# 296 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Now we can use them indefinitely,\n"
# 297 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "that's just great!$"
# 298 "data/maps/RustboroCity_Gym/scripts.pory"

# 299 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxannePostBattle:
# 300 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "If you want a real challenge, come\n"
# 301 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "back later! I'll have my true team ready.\p"
# 302 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Maybe we can even hit a climbing\n"
# 303 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "route together someday!$"
# 304 "data/maps/RustboroCity_Gym/scripts.pory"

# 305 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_GymStatue:
# 306 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "RUSTBORO CITY POKéMON GYM$"
# 307 "data/maps/RustboroCity_Gym/scripts.pory"

# 308 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_GymStatueCertified:
# 309 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "RUSTBORO CITY POKéMON GYM\p"
# 310 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA'S CERTIFIED TRAINERS:\n"
# 311 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "{PLAYER}$"
# 312 "data/maps/RustboroCity_Gym/scripts.pory"

# 313 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxanneRegisterCall:
# 314 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "… … … … … …\n"
# 315 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "… … … … … Beep!\p"
# 316 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA: Hey, {PLAYER}!\n"
# 317 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "It's TERRA from RUSTBORO CITY.\p"
# 318 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "RENTON called me, said there's some\n"
# 319 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "rookie with a cape who looks badass.\p"
# 320 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Then he invited me for a night out\n"
# 321 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to get into trouble around town.\p"
# 322 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Obviously I said no! I've got rocks\n"
# 323 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to climb and a Gym to run!\p"
# 324 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "But don't get too comfortable ahead!\n"
# 325 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I'm training hard for our rematch!\p"
# 326 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "… … … … … …\n"
# 327 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "… … … … … Click!$"
# 328 "data/maps/RustboroCity_Gym/scripts.pory"

# 329 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RegisteredRoxanne:
# 330 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Registered GYM LEADER TERRA\n"
# 331 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "in the POKENAV.$"
# 332 "data/maps/RustboroCity_Gym/scripts.pory"

# 333 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxannePreRematch:
# 334 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA: Hey, you're back! Great to see\n"
# 335 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "you again on my mountain.\p"
# 336 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I'm TERRA. Since our last battle,\n"
# 337 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I hit the summit and found some\l"
# 338 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "badass Rock-type POKéMON.\p"
# 339 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I've been training nonstop.\n"
# 340 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Let's see how much we've leveled up!\p"
# 341 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Ready for a real rematch?\n"
# 342 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Let's CLIMB!$"
# 343 "data/maps/RustboroCity_Gym/scripts.pory"

# 344 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxanneRematchDefeat:
# 345 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Grr…\n"
# 346 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Again, I have lost…$"
# 347 "data/maps/RustboroCity_Gym/scripts.pory"

# 348 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxannePostRematch:
# 349 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA: Guess I've still got some climbing\n"
# 350 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to do in POKéMON battles.\p"
# 351 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "But that fires me up. There's always\n"
# 352 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "another peak to reach!$"
# 353 "data/maps/RustboroCity_Gym/scripts.pory"

# 354 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxanneRematchNeedTwoMons:
# 355 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA: Hey, you're back! Always good\n"
# 356 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to see you on my mountain.\p"
# 357 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "We've both climbed through tons\n"
# 358 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "of battles since last time, huh?\p"
# 359 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Oh, hold up.\n"
# 360 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "You've only got one POKéMON?\p"
# 361 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Come back with at least one more\n"
# 362 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "for a real climb of a battle!$"
# 363 "data/maps/RustboroCity_Gym/scripts.pory"

# 364 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_AskDifficulty:
# 365 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "GYM GUIDE: Before you challenge\n"
# 366 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA, I can adjust the difficulty!\p"
# 367 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Play on HARD mode where trainers\n"
# 368 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "have optimized teams?$"
# 369 "data/maps/RustboroCity_Gym/scripts.pory"

# 370 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_HardSelected:
# 371 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "GYM GUIDE: Hard mode selected!\n"
# 372 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA is waiting!$"
# 373 "data/maps/RustboroCity_Gym/scripts.pory"

# 374 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_NormalSelected:
# 375 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "GYM GUIDE: Casual mode selected!\n"
# 376 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA is waiting!$"
