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
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 47 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, RustboroCity_Gym_EventScript_RoxanneRematch
# 48 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_unset FLAG_RECEIVED_TM_ROCK_TOMB, RustboroCity_Gym_EventScript_GiveRockTomb
# 49 "data/maps/RustboroCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_TERRA, EMOTE_NORMAL
# 50 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_RoxannePostBattle, MSGBOX_DEFAULT
# 51 "data/maps/RustboroCity_Gym/scripts.pory"
	removefieldmugshot
# 52 "data/maps/RustboroCity_Gym/scripts.pory"
	release
# 53 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 54 "data/maps/RustboroCity_Gym/scripts.pory"
	
# 55 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GiveRockTomb::
# 56 "data/maps/RustboroCity_Gym/scripts.pory"
	giveitem ITEM_TM_ROCK_TOMB
# 57 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 58 "data/maps/RustboroCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_ROCK_TOMB
# 59 "data/maps/RustboroCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_TERRA, EMOTE_NORMAL
# 60 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_ExplainRockTomb, MSGBOX_DEFAULT
# 61 "data/maps/RustboroCity_Gym/scripts.pory"
	removefieldmugshot
# 62 "data/maps/RustboroCity_Gym/scripts.pory"
	release
# 63 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 64 "data/maps/RustboroCity_Gym/scripts.pory"

# 65 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_RoxanneRematch::
# 66 "data/maps/RustboroCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_TERRA, EMOTE_NORMAL
# 67 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_RoxannePreRematch, MSGBOX_DEFAULT
# 68 "data/maps/RustboroCity_Gym/scripts.pory"
	removefieldmugshot
# 69 "data/maps/RustboroCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_TERRA_HARD, RustboroCity_Gym_Text_RoxanneRematchDefeat
# 70 "data/maps/RustboroCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_TERRA, EMOTE_NORMAL
# 71 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_RoxannePostRematch, MSGBOX_AUTOCLOSE
# 72 "data/maps/RustboroCity_Gym/scripts.pory"
	removefieldmugshot
# 73 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 74 "data/maps/RustboroCity_Gym/scripts.pory"

# 75 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_Josh::
# 76 "data/maps/RustboroCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_JOSH, RustboroCity_Gym_Text_JoshIntro, RustboroCity_Gym_Text_JoshDefeat
# 77 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_JoshPostBattle, MSGBOX_AUTOCLOSE
# 78 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 79 "data/maps/RustboroCity_Gym/scripts.pory"

# 80 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_Raboutou::
# 81 "data/maps/RustboroCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_RABOUTOU, RustboroCity_Gym_Text_RaboutouIntro, RustboroCity_Gym_Text_RaboutouDefeat
# 82 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_RaboutouPostBattle, MSGBOX_AUTOCLOSE
# 83 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 84 "data/maps/RustboroCity_Gym/scripts.pory"

# 85 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_Janja::
# 86 "data/maps/RustboroCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_JANJA, RustboroCity_Gym_Text_JanjaIntro, RustboroCity_Gym_Text_JanjaDefeat
# 87 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_JanjaPostBattle, MSGBOX_AUTOCLOSE
# 88 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 89 "data/maps/RustboroCity_Gym/scripts.pory"

# 90 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GymGuide::
# 91 "data/maps/RustboroCity_Gym/scripts.pory"
	lock
# 92 "data/maps/RustboroCity_Gym/scripts.pory"
	faceplayer
# 93 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_RUSTBORO_GYM, RustboroCity_Gym_EventScript_GymGuidePostVictory
# 94 "data/maps/RustboroCity_Gym/scripts.pory"
	goto RustboroCity_Gym_EventScript_GymGuideAdvice
# 95 "data/maps/RustboroCity_Gym/scripts.pory"

# 96 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GymGuideAdvice::
# 97 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 98 "data/maps/RustboroCity_Gym/scripts.pory"
	release
# 99 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 100 "data/maps/RustboroCity_Gym/scripts.pory"

# 101 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GymGuidePostVictory::
# 102 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 103 "data/maps/RustboroCity_Gym/scripts.pory"
	release
# 104 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 105 "data/maps/RustboroCity_Gym/scripts.pory"

# 106 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_LeftGymStatue::
# 107 "data/maps/RustboroCity_Gym/scripts.pory"
	lockall
# 108 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE01_GET, RustboroCity_Gym_EventScript_GymStatueCertified
# 109 "data/maps/RustboroCity_Gym/scripts.pory"
	goto RustboroCity_Gym_EventScript_GymStatue
# 110 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 111 "data/maps/RustboroCity_Gym/scripts.pory"

# 112 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_RightGymStatue::
# 113 "data/maps/RustboroCity_Gym/scripts.pory"
	lockall
# 114 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE01_GET, RustboroCity_Gym_EventScript_GymStatueCertified
# 115 "data/maps/RustboroCity_Gym/scripts.pory"
	goto RustboroCity_Gym_EventScript_GymStatue
# 116 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 117 "data/maps/RustboroCity_Gym/scripts.pory"

# 118 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GymStatueCertified::
# 119 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 120 "data/maps/RustboroCity_Gym/scripts.pory"
	releaseall
# 121 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 122 "data/maps/RustboroCity_Gym/scripts.pory"

# 123 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_GymStatue::
# 124 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 125 "data/maps/RustboroCity_Gym/scripts.pory"
	releaseall
# 126 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 127 "data/maps/RustboroCity_Gym/scripts.pory"

# 128 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_RegisterRoxanne::
# 129 "data/maps/RustboroCity_Gym/scripts.pory"
	lockall
# 130 "data/maps/RustboroCity_Gym/scripts.pory"
	waitmessage
# 131 "data/maps/RustboroCity_Gym/scripts.pory"
	delay 30
# 132 "data/maps/RustboroCity_Gym/scripts.pory"
	waitfanfare
# 133 "data/maps/RustboroCity_Gym/scripts.pory"
	closemessage
# 134 "data/maps/RustboroCity_Gym/scripts.pory"
	delay 30
# 135 "data/maps/RustboroCity_Gym/scripts.pory"
	releaseall
# 136 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 137 "data/maps/RustboroCity_Gym/scripts.pory"

# 138 "data/maps/RustboroCity_Gym/scripts.pory"
@ ============================================================
# 139 "data/maps/RustboroCity_Gym/scripts.pory"
@ SISTEMA DE ESCALADA — 30% chance passar
# 140 "data/maps/RustboroCity_Gym/scripts.pory"
@ ============================================================
# 141 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_ClimbCheck::
# 142 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_RUSTBORO_GYM, RustboroCity_Gym_EventScript_ClimbCheck_End
# 143 "data/maps/RustboroCity_Gym/scripts.pory"
	random 3
# 144 "data/maps/RustboroCity_Gym/scripts.pory"
	goto_if_lt VAR_RESULT, 1, RustboroCity_Gym_EventScript_Climb_Fall
# 145 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_ClimbCheck_End::
# 146 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 147 "data/maps/RustboroCity_Gym/scripts.pory"

# 148 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_ClimbSlow::
# 149 "data/maps/RustboroCity_Gym/scripts.pory"
	setflag DN_FLAG_SEARCHING
# 150 "data/maps/RustboroCity_Gym/scripts.pory"
	setflag DN_FLAG_DETECTOR_MODE
# 151 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 152 "data/maps/RustboroCity_Gym/scripts.pory"

# 153 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_ClimbFast::
# 154 "data/maps/RustboroCity_Gym/scripts.pory"
	clearflag DN_FLAG_SEARCHING
# 155 "data/maps/RustboroCity_Gym/scripts.pory"
	clearflag DN_FLAG_DETECTOR_MODE
# 156 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 157 "data/maps/RustboroCity_Gym/scripts.pory"

# 158 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_EventScript_Climb_Fall::
# 159 "data/maps/RustboroCity_Gym/scripts.pory"
	lockall
# 160 "data/maps/RustboroCity_Gym/scripts.pory"
	msgbox RustboroCity_Gym_Text_SlipperyRock, MSGBOX_DEFAULT
# 161 "data/maps/RustboroCity_Gym/scripts.pory"
	playse SE_BIKE_HOP
# 162 "data/maps/RustboroCity_Gym/scripts.pory"
	waitse
# 163 "data/maps/RustboroCity_Gym/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, RustboroCity_Gym_Movement_Fall
# 164 "data/maps/RustboroCity_Gym/scripts.pory"
	waitmovement 0
# 165 "data/maps/RustboroCity_Gym/scripts.pory"
	playse SE_WALL_HIT
# 166 "data/maps/RustboroCity_Gym/scripts.pory"
	waitse
# 167 "data/maps/RustboroCity_Gym/scripts.pory"
	releaseall
# 168 "data/maps/RustboroCity_Gym/scripts.pory"
	end
# 169 "data/maps/RustboroCity_Gym/scripts.pory"

# 170 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Movement_Fall:
# 171 "data/maps/RustboroCity_Gym/scripts.pory"
	slide_down
# 172 "data/maps/RustboroCity_Gym/scripts.pory"
	slide_down
# 173 "data/maps/RustboroCity_Gym/scripts.pory"
	slide_down
# 174 "data/maps/RustboroCity_Gym/scripts.pory"
	slide_down
# 175 "data/maps/RustboroCity_Gym/scripts.pory"
	step_end
# 176 "data/maps/RustboroCity_Gym/scripts.pory"

# 177 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_SlipperyRock:
# 178 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Oops! You lost your grip!$"
# 179 "data/maps/RustboroCity_Gym/scripts.pory"
	
# 180 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_GymGuideAdvice:
# 181 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Yo, how's it going?\p"
# 182 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Listen, my friend!\n"
# 183 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Would you like to become the CHAMPION?\p"
# 184 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I'm no TRAINER, but I can\n"
# 185 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "give you winning advice.\p"
# 186 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "We'll aim for the POKEMON\n"
# 187 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "CHAMPIONSHIP together!\p"
# 188 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "It's your job to collect\n"
# 189 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "GYM BADGES, am I right?\p"
# 190 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "But GYM LEADERS aren't pushovers!\n"
# 191 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "That's where I come in!\p"
# 192 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA uses ROCK-type POKEMON.\p"
# 193 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "ROCK type is durable, but\n"
# 194 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "can't stand WATER and GRASS moves.\p"
# 195 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Come see me if you beat\n"
# 196 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "the GYM LEADER.\p"
# 197 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Well, go for it!$"
# 198 "data/maps/RustboroCity_Gym/scripts.pory"

# 199 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_GymGuidePostVictory:
# 200 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Whoa! What a breathtaking victory!\n"
# 201 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "My cheering must've worked!\p"
# 202 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Great! Check your TRAINER CARD.\p"
# 203 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "The STONE BADGE you got should be\n"
# 204 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "recorded on it.\p"
# 205 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "You've climbed the first step on\n"
# 206 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "the stairs to the CHAMPIONSHIP!\p"
# 207 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "That's got to feel awesome!$"
# 208 "data/maps/RustboroCity_Gym/scripts.pory"

# 209 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JoshIntro:
# 210 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Heh... I'm a totally fearless CLIMBER!\n"
# 211 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Yep, not scared of heights at all!\p"
# 212 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Get ready to see some real skill!$"
# 213 "data/maps/RustboroCity_Gym/scripts.pory"

# 214 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JoshDefeat:
# 215 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Oof... Guess my 'cool guy' act\n"
# 216 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "wasn't enough... What a fall!$"
# 217 "data/maps/RustboroCity_Gym/scripts.pory"

# 218 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JoshPostBattle:
# 219 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Alright, alright... I admit it!\n"
# 220 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I'm actually TERRIFIED of heights!\p"
# 221 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I only carry this climbing gear\n"
# 222 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to impress girls...$"
# 223 "data/maps/RustboroCity_Gym/scripts.pory"

# 224 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RaboutouIntro:
# 225 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Think you can beat me?\n"
# 226 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I've climbed HOENN's tallest peaks!\p"
# 227 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Show me what you're made of!$"
# 228 "data/maps/RustboroCity_Gym/scripts.pory"

# 229 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RaboutouDefeat:
# 230 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Wow! You've really got potential!$"
# 231 "data/maps/RustboroCity_Gym/scripts.pory"

# 232 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RaboutouPostBattle:
# 233 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA's strength is on a whole\n"
# 234 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "different level.\p"
# 235 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "You'd better come prepared!$"
# 236 "data/maps/RustboroCity_Gym/scripts.pory"

# 237 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JanjaIntro:
# 238 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "You think climbing these walls is tough?\n"
# 239 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Try scaling a cliff with no rope!\p"
# 240 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "My ROCK POKEMON and I have faced\n"
# 241 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "the harshest peaks in HOENN.\p"
# 242 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Every fall and scrape only made\n"
# 243 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "us stronger.\p"
# 244 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Now, let's see if your team can handle\n"
# 245 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "the pressure of a true mountain climb!$"
# 246 "data/maps/RustboroCity_Gym/scripts.pory"

# 247 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JanjaDefeat:
# 248 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Whoooa! Our challenger's got\n"
# 249 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "some real guts!$"
# 250 "data/maps/RustboroCity_Gym/scripts.pory"

# 251 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_JanjaPostBattle:
# 252 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I've explored Hoenn's peaks for years!\p"
# 253 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "That's how I met TERRA. She's brave and\n"
# 254 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "fearless, just like the mountains.\p"
# 255 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "She wisely chose ROCK type for\n"
# 256 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "its strength and endurance.\p"
# 257 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "You've got that same spirit!\n"
# 258 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Keep climbing.$"
# 259 "data/maps/RustboroCity_Gym/scripts.pory"

# 260 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxanneIntro:
# 261 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Hey! I'm TERRA, RUSTBORO CITY's\n"
# 262 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "GYM LEADER and pro climber!\p"
# 263 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I trained on cliffs and mountains,\n"
# 264 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "pushing my limits with my Rock-types.\p"
# 265 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Show me how you battle and which\n"
# 266 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "POKEMON you brought to climb this!$"
# 267 "data/maps/RustboroCity_Gym/scripts.pory"

# 268 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxanneDefeat:
# 269 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Whoa... No way...\n"
# 270 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "So I really lost...\p"
# 271 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Damn, this feels like failing a\n"
# 272 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "climbing route... Sucks...\l"
# 273 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "But... I get it.\p"
# 274 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Please accept the official POKEMON\n"
# 275 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "LEAGUE STONE BADGE.$"
# 276 "data/maps/RustboroCity_Gym/scripts.pory"

# 277 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_ReceivedStoneBadge:
# 278 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "{PLAYER} received the STONE BADGE\n"
# 279 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "from TERRA.$"
# 280 "data/maps/RustboroCity_Gym/scripts.pory"

# 281 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_StoneBadgeInfoTakeThis:
# 282 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "The STONE BADGE heightens the ATTACK\n"
# 283 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "power of your POKEMON.\p"
# 284 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "It also enables them to use the HM move\n"
# 285 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "CUT outside of battle.\p"
# 286 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Please take this with you, too.$"
# 287 "data/maps/RustboroCity_Gym/scripts.pory"

# 288 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_ExplainRockTomb:
# 289 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "That TM39 contains ROCK TOMB.\p"
# 290 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "It inflicts damage and lowers SPEED.\p"
# 291 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "A TM instantly teaches the move\n"
# 292 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to a POKEMON.\p"
# 293 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "In the past, TMs could only be used once,\n"
# 294 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "but technology has evolved, hasn't it?\p"
# 295 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Now we can use them indefinitely,\n"
# 296 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "that's just great!$"
# 297 "data/maps/RustboroCity_Gym/scripts.pory"

# 298 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxannePostBattle:
# 299 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "If you want a real challenge, come\n"
# 300 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "back later! I'll have my true team ready.\p"
# 301 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Maybe we can even hit a climbing\n"
# 302 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "route together someday!$"
# 303 "data/maps/RustboroCity_Gym/scripts.pory"

# 304 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_GymStatue:
# 305 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "RUSTBORO CITY POKEMON GYM$"
# 306 "data/maps/RustboroCity_Gym/scripts.pory"

# 307 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_GymStatueCertified:
# 308 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "RUSTBORO CITY POKEMON GYM\p"
# 309 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA'S CERTIFIED TRAINERS:\n"
# 310 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "{PLAYER}$"
# 311 "data/maps/RustboroCity_Gym/scripts.pory"

# 312 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxanneRegisterCall:
# 313 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "... ... ... ... ... ...\n"
# 314 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "... ... ... ... ... Beep!\p"
# 315 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA: Hey, {PLAYER}!\n"
# 316 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "It's TERRA from RUSTBORO CITY.\p"
# 317 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "RENTON called me - said there's some\n"
# 318 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "rookie with a cape who looks badass.\p"
# 319 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Then he invited me for a night out\n"
# 320 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to get into trouble around town.\p"
# 321 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Obviously I said no! I've got rocks\n"
# 322 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to climb and a Gym to run!\p"
# 323 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "But don't get too comfortable ahead!\n"
# 324 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I'm training hard for our rematch!\p"
# 325 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "... ... ... ... ... ...\n"
# 326 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "... ... ... ... ... Click!$"
# 327 "data/maps/RustboroCity_Gym/scripts.pory"

# 328 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RegisteredRoxanne:
# 329 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Registered GYM LEADER TERRA\n"
# 330 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "in the POKENAV.$"
# 331 "data/maps/RustboroCity_Gym/scripts.pory"

# 332 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxannePreRematch:
# 333 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA: Hey, you're back! Great to see\n"
# 334 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "you again on my mountain.\p"
# 335 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I'm TERRA - since our last battle,\n"
# 336 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I hit the summit and found some\l"
# 337 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "badass Rock-type POKEMON.\p"
# 338 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "I've been training nonstop.\n"
# 339 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Let's see how much we've leveled up!\p"
# 340 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Ready for a real rematch?\n"
# 341 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Let's CLIMB!$"
# 342 "data/maps/RustboroCity_Gym/scripts.pory"

# 343 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxanneRematchDefeat:
# 344 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Grr...\n"
# 345 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Again, I have lost...$"
# 346 "data/maps/RustboroCity_Gym/scripts.pory"

# 347 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxannePostRematch:
# 348 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA: Guess I've still got some climbing\n"
# 349 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to do in POKEMON battles.\p"
# 350 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "But that fires me up - there's always\n"
# 351 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "another peak to reach!$"
# 352 "data/maps/RustboroCity_Gym/scripts.pory"

# 353 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_RoxanneRematchNeedTwoMons:
# 354 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA: Hey, you're back! Always good\n"
# 355 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "to see you on my mountain.\p"
# 356 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "We've both climbed through tons\n"
# 357 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "of battles since last time, huh?\p"
# 358 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Oh - hold up.\n"
# 359 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "You've only got one POKEMON?\p"
# 360 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Come back with at least one more\n"
# 361 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "for a real climb of a battle!$"
# 362 "data/maps/RustboroCity_Gym/scripts.pory"

# 363 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_AskDifficulty:
# 364 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "GYM GUIDE: Before you challenge\n"
# 365 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA, I can adjust the difficulty!\p"
# 366 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "Play on HARD mode where trainers\n"
# 367 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "have optimized teams?$"
# 368 "data/maps/RustboroCity_Gym/scripts.pory"

# 369 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_HardSelected:
# 370 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "GYM GUIDE: Hard mode selected!\n"
# 371 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA is waiting!$"
# 372 "data/maps/RustboroCity_Gym/scripts.pory"

# 373 "data/maps/RustboroCity_Gym/scripts.pory"
RustboroCity_Gym_Text_NormalSelected:
# 374 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "GYM GUIDE: Casual mode selected!\n"
# 375 "data/maps/RustboroCity_Gym/scripts.pory"
	.string "TERRA is waiting!$"
