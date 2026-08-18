# 1 "data/maps/MtChimney/scripts.pory"

# 2 "data/maps/MtChimney/scripts.pory"
MtChimney_MapScripts::
# 3 "data/maps/MtChimney/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, MtChimney_OnResume
# 4 "data/maps/MtChimney/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MtChimney_OnTransition
# 5 "data/maps/MtChimney/scripts.pory"
	.byte 0
# 6 "data/maps/MtChimney/scripts.pory"

# 7 "data/maps/MtChimney/scripts.pory"
MtChimney_OnTransition:
# 8 "data/maps/MtChimney/scripts.pory"
	setvar VAR_JAGGED_PASS_ASH_WEATHER, 1
# 9 "data/maps/MtChimney/scripts.pory"
	end
# 10 "data/maps/MtChimney/scripts.pory"

# 11 "data/maps/MtChimney/scripts.pory"
MtChimney_OnResume:
# 12 "data/maps/MtChimney/scripts.pory"
	setstepcallback STEP_CB_ASH
# 13 "data/maps/MtChimney/scripts.pory"
	end
# 14 "data/maps/MtChimney/scripts.pory"

# 15 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Archie::
# 16 "data/maps/MtChimney/scripts.pory"
	lock
# 17 "data/maps/MtChimney/scripts.pory"
	faceplayer
# 18 "data/maps/MtChimney/scripts.pory"
	call_if_unset FLAG_EVIL_LEADER_PLEASE_STOP, MtChimney_EventScript_ArchieGoStopTeamMagma
# 19 "data/maps/MtChimney/scripts.pory"
	call_if_set FLAG_EVIL_LEADER_PLEASE_STOP, MtChimney_EventScript_ArchieBusyFighting
# 20 "data/maps/MtChimney/scripts.pory"
	closemessage
# 21 "data/maps/MtChimney/scripts.pory"
	applymovement LOCALID_MT_CHIMNEY_ARCHIE, Common_Movement_FaceOriginalDirection
# 22 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 23 "data/maps/MtChimney/scripts.pory"
	setflag FLAG_EVIL_LEADER_PLEASE_STOP
# 24 "data/maps/MtChimney/scripts.pory"
	release
# 25 "data/maps/MtChimney/scripts.pory"
	end
# 26 "data/maps/MtChimney/scripts.pory"

# 27 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_ArchieGoStopTeamMagma::
# 28 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_ArchieGoStopTeamMagma, MSGBOX_DEFAULT
# 29 "data/maps/MtChimney/scripts.pory"
	return
# 30 "data/maps/MtChimney/scripts.pory"

# 31 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_ArchieBusyFighting::
# 32 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_ArchieIHaveMyHandsFull, MSGBOX_DEFAULT
# 33 "data/maps/MtChimney/scripts.pory"
	return
# 34 "data/maps/MtChimney/scripts.pory"

# 35 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Maxie::
# 36 "data/maps/MtChimney/scripts.pory"
	lockall
# 37 "data/maps/MtChimney/scripts.pory"
	playbgm MUS_ENCOUNTER_MAGMA, FALSE
# 38 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MeteoriteWillActivateVolcano, MSGBOX_DEFAULT
# 39 "data/maps/MtChimney/scripts.pory"
	applymovement LOCALID_MT_CHIMNEY_MAXIE, Common_Movement_FacePlayer
# 40 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 41 "data/maps/MtChimney/scripts.pory"
	playse SE_PIN
# 42 "data/maps/MtChimney/scripts.pory"
	applymovement LOCALID_MT_CHIMNEY_MAXIE, Common_Movement_ExclamationMark
# 43 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 44 "data/maps/MtChimney/scripts.pory"
	applymovement LOCALID_MT_CHIMNEY_MAXIE, Common_Movement_Delay48
# 45 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 46 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MaxieIntro, MSGBOX_DEFAULT
# 47 "data/maps/MtChimney/scripts.pory"
	getdifficulty VAR_RESULT
# 48 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, 1, MtChimney_EventScript_MaxieHard
# 49 "data/maps/MtChimney/scripts.pory"

# 50 "data/maps/MtChimney/scripts.pory"
	@ Normal Mode - TRAINER_MAXIE_MT_CHIMNEY
# 51 "data/maps/MtChimney/scripts.pory"
	trainerbattle_no_intro TRAINER_MAXIE_MT_CHIMNEY, MtChimney_Text_MaxieDefeat
# 52 "data/maps/MtChimney/scripts.pory"
	goto MtChimney_EventScript_MaxieAfterBattle
# 53 "data/maps/MtChimney/scripts.pory"

# 54 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_MaxieHard::
# 55 "data/maps/MtChimney/scripts.pory"
	@ Hard Mode - TRAINER_MAXIE_MT_CHIMNEY_HARD
# 56 "data/maps/MtChimney/scripts.pory"
	trainerbattle_no_intro TRAINER_MAXIE_MT_CHIMNEY_HARD, MtChimney_Text_MaxieDefeat
# 57 "data/maps/MtChimney/scripts.pory"

# 58 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_MaxieAfterBattle::
# 59 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MaxieYouHaventSeenLastOfMagma, MSGBOX_DEFAULT
# 60 "data/maps/MtChimney/scripts.pory"
	closemessage
# 61 "data/maps/MtChimney/scripts.pory"
	delay 30
# 62 "data/maps/MtChimney/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 63 "data/maps/MtChimney/scripts.pory"
	removeobject LOCALID_MT_CHIMNEY_MAXIE
# 64 "data/maps/MtChimney/scripts.pory"
	removeobject LOCALID_MT_CHIMNEY_MAGMA_GRUNT_1
# 65 "data/maps/MtChimney/scripts.pory"
	removeobject LOCALID_MT_CHIMNEY_TABITHA
# 66 "data/maps/MtChimney/scripts.pory"
	removeobject LOCALID_MT_CHIMNEY_MAGMA_GRUNT_2
# 67 "data/maps/MtChimney/scripts.pory"
	setflag FLAG_HIDE_MT_CHIMNEY_TEAM_MAGMA
# 68 "data/maps/MtChimney/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 69 "data/maps/MtChimney/scripts.pory"
	setobjectxyperm LOCALID_MT_CHIMNEY_ARCHIE, 10, 18
# 70 "data/maps/MtChimney/scripts.pory"
	addobject LOCALID_MT_CHIMNEY_ARCHIE
# 71 "data/maps/MtChimney/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, MtChimney_EventScript_ArchieApproachPlayerEast
# 72 "data/maps/MtChimney/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, MtChimney_EventScript_ArchieApproachPlayerNorth
# 73 "data/maps/MtChimney/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 74 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 75 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_ArchieThankYou, MSGBOX_DEFAULT
# 76 "data/maps/MtChimney/scripts.pory"
	closemessage
# 77 "data/maps/MtChimney/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, MtChimney_EventScript_ArchieExitEast
# 78 "data/maps/MtChimney/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, MtChimney_EventScript_ArchieExitNorth
# 79 "data/maps/MtChimney/scripts.pory"
	removeobject LOCALID_MT_CHIMNEY_ARCHIE
# 80 "data/maps/MtChimney/scripts.pory"
	setflag FLAG_HIDE_MT_CHIMNEY_TEAM_AQUA
# 81 "data/maps/MtChimney/scripts.pory"
	setflag FLAG_DEFEATED_EVIL_TEAM_MT_CHIMNEY
# 82 "data/maps/MtChimney/scripts.pory"
	clearflag FLAG_HIDE_FALLARBOR_HOUSE_PROF_COZMO
# 83 "data/maps/MtChimney/scripts.pory"
	setflag FLAG_HIDE_METEOR_FALLS_1F_1R_COZMO
# 84 "data/maps/MtChimney/scripts.pory"
	clearflag FLAG_HIDE_MT_CHIMNEY_LAVA_COOKIE_LADY
# 85 "data/maps/MtChimney/scripts.pory"
	releaseall
# 86 "data/maps/MtChimney/scripts.pory"
	end
# 87 "data/maps/MtChimney/scripts.pory"

# 88 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_ArchieApproachPlayerEast::
# 89 "data/maps/MtChimney/scripts.pory"
	applymovement LOCALID_MT_CHIMNEY_ARCHIE, MtChimney_Movement_ArchieApproachPlayerEast
# 90 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 91 "data/maps/MtChimney/scripts.pory"
	return
# 92 "data/maps/MtChimney/scripts.pory"

# 93 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_ArchieApproachPlayerNorth::
# 94 "data/maps/MtChimney/scripts.pory"
	applymovement LOCALID_MT_CHIMNEY_ARCHIE, MtChimney_Movement_ArchieApproachPlayerNorth
# 95 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 96 "data/maps/MtChimney/scripts.pory"
	return
# 97 "data/maps/MtChimney/scripts.pory"

# 98 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_ArchieExitEast::
# 99 "data/maps/MtChimney/scripts.pory"
	applymovement LOCALID_MT_CHIMNEY_ARCHIE, MtChimney_Movement_ArchieExitEast
# 100 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 101 "data/maps/MtChimney/scripts.pory"
	return
# 102 "data/maps/MtChimney/scripts.pory"

# 103 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_ArchieExitNorth::
# 104 "data/maps/MtChimney/scripts.pory"
	applymovement LOCALID_MT_CHIMNEY_ARCHIE, MtChimney_Movement_ArchieExitNorth
# 105 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 106 "data/maps/MtChimney/scripts.pory"
	return
# 107 "data/maps/MtChimney/scripts.pory"

# 108 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_LavaCookieLady::
# 109 "data/maps/MtChimney/scripts.pory"
	lock
# 110 "data/maps/MtChimney/scripts.pory"
	faceplayer
# 111 "data/maps/MtChimney/scripts.pory"
	showmoneybox 0, 0
# 112 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_LavaCookiesJust200, MSGBOX_YESNO
# 113 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MtChimney_EventScript_DeclineLavaCookie
# 114 "data/maps/MtChimney/scripts.pory"
	checkmoney 200
# 115 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MtChimney_EventScript_NotEnoughMoney
# 116 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_ThankYouDear, MSGBOX_DEFAULT
# 117 "data/maps/MtChimney/scripts.pory"
	checkitemspace ITEM_LAVA_COOKIE
# 118 "data/maps/MtChimney/scripts.pory"
	call_if_eq VAR_RESULT, TRUE, MtChimney_EventScript_RemoveMoney
# 119 "data/maps/MtChimney/scripts.pory"
.if OW_SHOW_ITEM_DESCRIPTIONS == OW_ITEM_DESCRIPTIONS_OFF
# 120 "data/maps/MtChimney/scripts.pory"
	giveitem ITEM_LAVA_COOKIE
# 121 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MtChimney_EventScript_BagIsFull
# 122 "data/maps/MtChimney/scripts.pory"
	hidemoneybox
# 123 "data/maps/MtChimney/scripts.pory"
	release
# 124 "data/maps/MtChimney/scripts.pory"
	end
# 125 "data/maps/MtChimney/scripts.pory"

# 126 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BagIsFull::
# 127 "data/maps/MtChimney/scripts.pory"
	msgbox gText_TooBadBagIsFull, MSGBOX_DEFAULT
# 128 "data/maps/MtChimney/scripts.pory"
	hidemoneybox
# 129 "data/maps/MtChimney/scripts.pory"
	release
# 130 "data/maps/MtChimney/scripts.pory"
	end
# 131 "data/maps/MtChimney/scripts.pory"
.else
# 132 "data/maps/MtChimney/scripts.pory"
	hidemoneybox
# 133 "data/maps/MtChimney/scripts.pory"
	giveitem ITEM_LAVA_COOKIE
# 134 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MtChimney_EventScript_BagIsFull
# 135 "data/maps/MtChimney/scripts.pory"
	release
# 136 "data/maps/MtChimney/scripts.pory"
	end
# 137 "data/maps/MtChimney/scripts.pory"

# 138 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BagIsFull::
# 139 "data/maps/MtChimney/scripts.pory"
	msgbox gText_TooBadBagIsFull, MSGBOX_DEFAULT
# 140 "data/maps/MtChimney/scripts.pory"
	release
# 141 "data/maps/MtChimney/scripts.pory"
	end
# 142 "data/maps/MtChimney/scripts.pory"
.endif @ OW_SHOW_ITEM_DESCRIPTIONS
# 143 "data/maps/MtChimney/scripts.pory"

# 144 "data/maps/MtChimney/scripts.pory"

# 145 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_RemoveMoney::
# 146 "data/maps/MtChimney/scripts.pory"
	removemoney 200
# 147 "data/maps/MtChimney/scripts.pory"
	updatemoneybox
# 148 "data/maps/MtChimney/scripts.pory"
	return
# 149 "data/maps/MtChimney/scripts.pory"

# 150 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_DeclineLavaCookie::
# 151 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_OhFineThen, MSGBOX_DEFAULT
# 152 "data/maps/MtChimney/scripts.pory"
	hidemoneybox
# 153 "data/maps/MtChimney/scripts.pory"
	release
# 154 "data/maps/MtChimney/scripts.pory"
	end
# 155 "data/maps/MtChimney/scripts.pory"

# 156 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_NotEnoughMoney::
# 157 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_YouveNotGotTheMoney, MSGBOX_DEFAULT
# 158 "data/maps/MtChimney/scripts.pory"
	hidemoneybox
# 159 "data/maps/MtChimney/scripts.pory"
	release
# 160 "data/maps/MtChimney/scripts.pory"
	end
# 161 "data/maps/MtChimney/scripts.pory"

# 162 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_ArchieApproachPlayerEast:
# 163 "data/maps/MtChimney/scripts.pory"
	walk_right
# 164 "data/maps/MtChimney/scripts.pory"
	walk_up
# 165 "data/maps/MtChimney/scripts.pory"
	walk_up
# 166 "data/maps/MtChimney/scripts.pory"
	walk_up
# 167 "data/maps/MtChimney/scripts.pory"
	walk_up
# 168 "data/maps/MtChimney/scripts.pory"
	walk_up
# 169 "data/maps/MtChimney/scripts.pory"
	face_right
# 170 "data/maps/MtChimney/scripts.pory"
	step_end
# 171 "data/maps/MtChimney/scripts.pory"

# 172 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_ArchieExitEast:
# 173 "data/maps/MtChimney/scripts.pory"
	walk_down
# 174 "data/maps/MtChimney/scripts.pory"
	walk_down
# 175 "data/maps/MtChimney/scripts.pory"
	walk_down
# 176 "data/maps/MtChimney/scripts.pory"
	walk_down
# 177 "data/maps/MtChimney/scripts.pory"
	walk_down
# 178 "data/maps/MtChimney/scripts.pory"
	walk_left
# 179 "data/maps/MtChimney/scripts.pory"
	walk_down
# 180 "data/maps/MtChimney/scripts.pory"
	walk_down
# 181 "data/maps/MtChimney/scripts.pory"
	walk_down
# 182 "data/maps/MtChimney/scripts.pory"
	step_end
# 183 "data/maps/MtChimney/scripts.pory"

# 184 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_ArchieApproachPlayerNorth:
# 185 "data/maps/MtChimney/scripts.pory"
	walk_right
# 186 "data/maps/MtChimney/scripts.pory"
	walk_right
# 187 "data/maps/MtChimney/scripts.pory"
	walk_up
# 188 "data/maps/MtChimney/scripts.pory"
	walk_up
# 189 "data/maps/MtChimney/scripts.pory"
	walk_up
# 190 "data/maps/MtChimney/scripts.pory"
	walk_up
# 191 "data/maps/MtChimney/scripts.pory"
	face_right
# 192 "data/maps/MtChimney/scripts.pory"
	step_end
# 193 "data/maps/MtChimney/scripts.pory"

# 194 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_ArchieExitNorth:
# 195 "data/maps/MtChimney/scripts.pory"
	walk_down
# 196 "data/maps/MtChimney/scripts.pory"
	walk_down
# 197 "data/maps/MtChimney/scripts.pory"
	walk_down
# 198 "data/maps/MtChimney/scripts.pory"
	walk_down
# 199 "data/maps/MtChimney/scripts.pory"
	walk_left
# 200 "data/maps/MtChimney/scripts.pory"
	walk_left
# 201 "data/maps/MtChimney/scripts.pory"
	walk_down
# 202 "data/maps/MtChimney/scripts.pory"
	walk_down
# 203 "data/maps/MtChimney/scripts.pory"
	walk_down
# 204 "data/maps/MtChimney/scripts.pory"
	step_end
# 205 "data/maps/MtChimney/scripts.pory"

# 206 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused1:
# 207 "data/maps/MtChimney/scripts.pory"
	walk_down
# 208 "data/maps/MtChimney/scripts.pory"
	walk_down
# 209 "data/maps/MtChimney/scripts.pory"
	walk_down
# 210 "data/maps/MtChimney/scripts.pory"
	walk_down
# 211 "data/maps/MtChimney/scripts.pory"
	walk_down
# 212 "data/maps/MtChimney/scripts.pory"
	walk_left
# 213 "data/maps/MtChimney/scripts.pory"
	walk_left
# 214 "data/maps/MtChimney/scripts.pory"
	walk_down
# 215 "data/maps/MtChimney/scripts.pory"
	walk_down
# 216 "data/maps/MtChimney/scripts.pory"
	walk_down
# 217 "data/maps/MtChimney/scripts.pory"
	walk_down
# 218 "data/maps/MtChimney/scripts.pory"
	walk_left
# 219 "data/maps/MtChimney/scripts.pory"
	walk_left
# 220 "data/maps/MtChimney/scripts.pory"
	walk_left
# 221 "data/maps/MtChimney/scripts.pory"
	walk_left
# 222 "data/maps/MtChimney/scripts.pory"
	walk_left
# 223 "data/maps/MtChimney/scripts.pory"
	walk_down
# 224 "data/maps/MtChimney/scripts.pory"
	step_end
# 225 "data/maps/MtChimney/scripts.pory"

# 226 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused2:
# 227 "data/maps/MtChimney/scripts.pory"
	walk_down
# 228 "data/maps/MtChimney/scripts.pory"
	walk_down
# 229 "data/maps/MtChimney/scripts.pory"
	walk_down
# 230 "data/maps/MtChimney/scripts.pory"
	walk_down
# 231 "data/maps/MtChimney/scripts.pory"
	walk_left
# 232 "data/maps/MtChimney/scripts.pory"
	walk_left
# 233 "data/maps/MtChimney/scripts.pory"
	walk_left
# 234 "data/maps/MtChimney/scripts.pory"
	walk_down
# 235 "data/maps/MtChimney/scripts.pory"
	step_end
# 236 "data/maps/MtChimney/scripts.pory"

# 237 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused3:
# 238 "data/maps/MtChimney/scripts.pory"
	walk_right
# 239 "data/maps/MtChimney/scripts.pory"
	walk_down
# 240 "data/maps/MtChimney/scripts.pory"
	walk_down
# 241 "data/maps/MtChimney/scripts.pory"
	walk_down
# 242 "data/maps/MtChimney/scripts.pory"
	walk_down
# 243 "data/maps/MtChimney/scripts.pory"
	walk_left
# 244 "data/maps/MtChimney/scripts.pory"
	walk_left
# 245 "data/maps/MtChimney/scripts.pory"
	walk_left
# 246 "data/maps/MtChimney/scripts.pory"
	walk_left
# 247 "data/maps/MtChimney/scripts.pory"
	walk_left
# 248 "data/maps/MtChimney/scripts.pory"
	walk_down
# 249 "data/maps/MtChimney/scripts.pory"
	walk_down
# 250 "data/maps/MtChimney/scripts.pory"
	walk_down
# 251 "data/maps/MtChimney/scripts.pory"
	walk_down
# 252 "data/maps/MtChimney/scripts.pory"
	step_end
# 253 "data/maps/MtChimney/scripts.pory"

# 254 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused4:
# 255 "data/maps/MtChimney/scripts.pory"
	walk_fast_down
# 256 "data/maps/MtChimney/scripts.pory"
	walk_fast_down
# 257 "data/maps/MtChimney/scripts.pory"
	walk_fast_down
# 258 "data/maps/MtChimney/scripts.pory"
	walk_fast_down
# 259 "data/maps/MtChimney/scripts.pory"
	walk_fast_down
# 260 "data/maps/MtChimney/scripts.pory"
	walk_fast_down
# 261 "data/maps/MtChimney/scripts.pory"
	walk_fast_down
# 262 "data/maps/MtChimney/scripts.pory"
	walk_fast_down
# 263 "data/maps/MtChimney/scripts.pory"
	walk_fast_down
# 264 "data/maps/MtChimney/scripts.pory"
	walk_left
# 265 "data/maps/MtChimney/scripts.pory"
	walk_left
# 266 "data/maps/MtChimney/scripts.pory"
	walk_down
# 267 "data/maps/MtChimney/scripts.pory"
	walk_down
# 268 "data/maps/MtChimney/scripts.pory"
	walk_down
# 269 "data/maps/MtChimney/scripts.pory"
	walk_left
# 270 "data/maps/MtChimney/scripts.pory"
	walk_left
# 271 "data/maps/MtChimney/scripts.pory"
	walk_down
# 272 "data/maps/MtChimney/scripts.pory"
	walk_down
# 273 "data/maps/MtChimney/scripts.pory"
	walk_left
# 274 "data/maps/MtChimney/scripts.pory"
	walk_left
# 275 "data/maps/MtChimney/scripts.pory"
	walk_left
# 276 "data/maps/MtChimney/scripts.pory"
	walk_left
# 277 "data/maps/MtChimney/scripts.pory"
	walk_left
# 278 "data/maps/MtChimney/scripts.pory"
	walk_down
# 279 "data/maps/MtChimney/scripts.pory"
	step_end
# 280 "data/maps/MtChimney/scripts.pory"

# 281 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused5:
# 282 "data/maps/MtChimney/scripts.pory"
	delay_16
# 283 "data/maps/MtChimney/scripts.pory"
	delay_16
# 284 "data/maps/MtChimney/scripts.pory"
	delay_16
# 285 "data/maps/MtChimney/scripts.pory"
	walk_down
# 286 "data/maps/MtChimney/scripts.pory"
	walk_down
# 287 "data/maps/MtChimney/scripts.pory"
	walk_down
# 288 "data/maps/MtChimney/scripts.pory"
	walk_left
# 289 "data/maps/MtChimney/scripts.pory"
	walk_left
# 290 "data/maps/MtChimney/scripts.pory"
	walk_left
# 291 "data/maps/MtChimney/scripts.pory"
	walk_down
# 292 "data/maps/MtChimney/scripts.pory"
	step_end
# 293 "data/maps/MtChimney/scripts.pory"

# 294 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused6:
# 295 "data/maps/MtChimney/scripts.pory"
	delay_16
# 296 "data/maps/MtChimney/scripts.pory"
	walk_left
# 297 "data/maps/MtChimney/scripts.pory"
	walk_down
# 298 "data/maps/MtChimney/scripts.pory"
	walk_down
# 299 "data/maps/MtChimney/scripts.pory"
	walk_down
# 300 "data/maps/MtChimney/scripts.pory"
	walk_down
# 301 "data/maps/MtChimney/scripts.pory"
	walk_left
# 302 "data/maps/MtChimney/scripts.pory"
	walk_left
# 303 "data/maps/MtChimney/scripts.pory"
	walk_left
# 304 "data/maps/MtChimney/scripts.pory"
	walk_left
# 305 "data/maps/MtChimney/scripts.pory"
	walk_left
# 306 "data/maps/MtChimney/scripts.pory"
	walk_down
# 307 "data/maps/MtChimney/scripts.pory"
	walk_down
# 308 "data/maps/MtChimney/scripts.pory"
	walk_down
# 309 "data/maps/MtChimney/scripts.pory"
	walk_down
# 310 "data/maps/MtChimney/scripts.pory"
	step_end
# 311 "data/maps/MtChimney/scripts.pory"

# 312 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused7:
# 313 "data/maps/MtChimney/scripts.pory"
	delay_16
# 314 "data/maps/MtChimney/scripts.pory"
	walk_left
# 315 "data/maps/MtChimney/scripts.pory"
	walk_left
# 316 "data/maps/MtChimney/scripts.pory"
	walk_down
# 317 "data/maps/MtChimney/scripts.pory"
	walk_down
# 318 "data/maps/MtChimney/scripts.pory"
	walk_down
# 319 "data/maps/MtChimney/scripts.pory"
	walk_left
# 320 "data/maps/MtChimney/scripts.pory"
	walk_left
# 321 "data/maps/MtChimney/scripts.pory"
	walk_down
# 322 "data/maps/MtChimney/scripts.pory"
	walk_down
# 323 "data/maps/MtChimney/scripts.pory"
	walk_left
# 324 "data/maps/MtChimney/scripts.pory"
	walk_left
# 325 "data/maps/MtChimney/scripts.pory"
	walk_left
# 326 "data/maps/MtChimney/scripts.pory"
	walk_left
# 327 "data/maps/MtChimney/scripts.pory"
	walk_left
# 328 "data/maps/MtChimney/scripts.pory"
	walk_down
# 329 "data/maps/MtChimney/scripts.pory"
	step_end
# 330 "data/maps/MtChimney/scripts.pory"

# 331 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused8:
# 332 "data/maps/MtChimney/scripts.pory"
	delay_16
# 333 "data/maps/MtChimney/scripts.pory"
	walk_down
# 334 "data/maps/MtChimney/scripts.pory"
	walk_left
# 335 "data/maps/MtChimney/scripts.pory"
	walk_left
# 336 "data/maps/MtChimney/scripts.pory"
	walk_left
# 337 "data/maps/MtChimney/scripts.pory"
	walk_left
# 338 "data/maps/MtChimney/scripts.pory"
	walk_in_place_faster_down
# 339 "data/maps/MtChimney/scripts.pory"
	step_end
# 340 "data/maps/MtChimney/scripts.pory"

# 341 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused9:
# 342 "data/maps/MtChimney/scripts.pory"
	walk_down
# 343 "data/maps/MtChimney/scripts.pory"
	walk_down
# 344 "data/maps/MtChimney/scripts.pory"
	walk_down
# 345 "data/maps/MtChimney/scripts.pory"
	walk_down
# 346 "data/maps/MtChimney/scripts.pory"
	walk_left
# 347 "data/maps/MtChimney/scripts.pory"
	walk_left
# 348 "data/maps/MtChimney/scripts.pory"
	walk_left
# 349 "data/maps/MtChimney/scripts.pory"
	walk_left
# 350 "data/maps/MtChimney/scripts.pory"
	walk_left
# 351 "data/maps/MtChimney/scripts.pory"
	walk_down
# 352 "data/maps/MtChimney/scripts.pory"
	walk_down
# 353 "data/maps/MtChimney/scripts.pory"
	walk_down
# 354 "data/maps/MtChimney/scripts.pory"
	walk_down
# 355 "data/maps/MtChimney/scripts.pory"
	step_end
# 356 "data/maps/MtChimney/scripts.pory"

# 357 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused10:
# 358 "data/maps/MtChimney/scripts.pory"
	walk_down
# 359 "data/maps/MtChimney/scripts.pory"
	step_end
# 360 "data/maps/MtChimney/scripts.pory"

# 361 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused11:
# 362 "data/maps/MtChimney/scripts.pory"
	walk_down
# 363 "data/maps/MtChimney/scripts.pory"
	walk_down
# 364 "data/maps/MtChimney/scripts.pory"
	walk_down
# 365 "data/maps/MtChimney/scripts.pory"
	walk_down
# 366 "data/maps/MtChimney/scripts.pory"
	walk_down
# 367 "data/maps/MtChimney/scripts.pory"
	walk_down
# 368 "data/maps/MtChimney/scripts.pory"
	walk_down
# 369 "data/maps/MtChimney/scripts.pory"
	step_end
# 370 "data/maps/MtChimney/scripts.pory"

# 371 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused12:
# 372 "data/maps/MtChimney/scripts.pory"
	delay_16
# 373 "data/maps/MtChimney/scripts.pory"
	delay_16
# 374 "data/maps/MtChimney/scripts.pory"
	walk_in_place_faster_left
# 375 "data/maps/MtChimney/scripts.pory"
	delay_16
# 376 "data/maps/MtChimney/scripts.pory"
	walk_down
# 377 "data/maps/MtChimney/scripts.pory"
	walk_down
# 378 "data/maps/MtChimney/scripts.pory"
	walk_down
# 379 "data/maps/MtChimney/scripts.pory"
	walk_down
# 380 "data/maps/MtChimney/scripts.pory"
	walk_down
# 381 "data/maps/MtChimney/scripts.pory"
	step_end
# 382 "data/maps/MtChimney/scripts.pory"

# 383 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused13:
# 384 "data/maps/MtChimney/scripts.pory"
	delay_16
# 385 "data/maps/MtChimney/scripts.pory"
	delay_16
# 386 "data/maps/MtChimney/scripts.pory"
	delay_16
# 387 "data/maps/MtChimney/scripts.pory"
	delay_16
# 388 "data/maps/MtChimney/scripts.pory"
	delay_16
# 389 "data/maps/MtChimney/scripts.pory"
	delay_16
# 390 "data/maps/MtChimney/scripts.pory"
	walk_in_place_faster_left
# 391 "data/maps/MtChimney/scripts.pory"
	delay_16
# 392 "data/maps/MtChimney/scripts.pory"
	walk_down
# 393 "data/maps/MtChimney/scripts.pory"
	walk_down
# 394 "data/maps/MtChimney/scripts.pory"
	step_end
# 395 "data/maps/MtChimney/scripts.pory"

# 396 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused14:
# 397 "data/maps/MtChimney/scripts.pory"
	lock_facing_direction
# 398 "data/maps/MtChimney/scripts.pory"
	walk_fast_left
# 399 "data/maps/MtChimney/scripts.pory"
	unlock_facing_direction
# 400 "data/maps/MtChimney/scripts.pory"
	face_right
# 401 "data/maps/MtChimney/scripts.pory"
	step_end
# 402 "data/maps/MtChimney/scripts.pory"

# 403 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused15:
# 404 "data/maps/MtChimney/scripts.pory"
	walk_left
# 405 "data/maps/MtChimney/scripts.pory"
	walk_in_place_faster_right
# 406 "data/maps/MtChimney/scripts.pory"
	delay_16
# 407 "data/maps/MtChimney/scripts.pory"
	step_end
# 408 "data/maps/MtChimney/scripts.pory"

# 409 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyAquaGrunt1::
# 410 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MagmaOutnumbersUs, MSGBOX_SIGN
# 411 "data/maps/MtChimney/scripts.pory"
	end
# 412 "data/maps/MtChimney/scripts.pory"

# 413 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyAquaGrunt2::
# 414 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_LessHabitatForWaterPokemon, MSGBOX_SIGN
# 415 "data/maps/MtChimney/scripts.pory"
	end
# 416 "data/maps/MtChimney/scripts.pory"

# 417 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyAquaGrunt3::
# 418 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MagmasNameSimilar, MSGBOX_SIGN
# 419 "data/maps/MtChimney/scripts.pory"
	end
# 420 "data/maps/MtChimney/scripts.pory"

# 421 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Tabitha::
# 422 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_TABITHA_MT_CHIMNEY, MtChimney_Text_TabithaIntro, MtChimney_Text_TabithaDefeat
# 423 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_TabithaPostBattle, MSGBOX_AUTOCLOSE
# 424 "data/maps/MtChimney/scripts.pory"
	end
# 425 "data/maps/MtChimney/scripts.pory"

# 426 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Grunt2::
# 427 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_CHIMNEY_2, MtChimney_Text_Grunt2Intro, MtChimney_Text_Grunt2Defeat
# 428 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_Grunt2PostBattle, MSGBOX_AUTOCLOSE
# 429 "data/maps/MtChimney/scripts.pory"
	end
# 430 "data/maps/MtChimney/scripts.pory"

# 431 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt1::
# 432 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_TeamAquaAlwaysMessingWithPlans, MSGBOX_SIGN
# 433 "data/maps/MtChimney/scripts.pory"
	end
# 434 "data/maps/MtChimney/scripts.pory"

# 435 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt2::
# 436 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MeteoritesPackAmazingPower, MSGBOX_SIGN
# 437 "data/maps/MtChimney/scripts.pory"
	end
# 438 "data/maps/MtChimney/scripts.pory"

# 439 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt3::
# 440 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_YouBetterNotMessWithUs, MSGBOX_SIGN
# 441 "data/maps/MtChimney/scripts.pory"
	end
# 442 "data/maps/MtChimney/scripts.pory"

# 443 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt4::
# 444 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_AquasNameSimilar, MSGBOX_SIGN
# 445 "data/maps/MtChimney/scripts.pory"
	end
# 446 "data/maps/MtChimney/scripts.pory"

# 447 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt5::
# 448 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_DouseThemInFire, MSGBOX_SIGN
# 449 "data/maps/MtChimney/scripts.pory"
	end
# 450 "data/maps/MtChimney/scripts.pory"

# 451 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt6::
# 452 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_KeepMakingMoreLand, MSGBOX_SIGN
# 453 "data/maps/MtChimney/scripts.pory"
	end
# 454 "data/maps/MtChimney/scripts.pory"

# 455 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_MagmaPoochyena::
# 456 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_Bufoh, MSGBOX_SIGN
# 457 "data/maps/MtChimney/scripts.pory"
	end
# 458 "data/maps/MtChimney/scripts.pory"

# 459 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_AquaPoochyena::
# 460 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_Bushaa, MSGBOX_SIGN
# 461 "data/maps/MtChimney/scripts.pory"
	end
# 462 "data/maps/MtChimney/scripts.pory"

# 463 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_MeteoriteMachine::
# 464 "data/maps/MtChimney/scripts.pory"
	lockall
# 465 "data/maps/MtChimney/scripts.pory"
	goto_if_unset FLAG_DEFEATED_EVIL_TEAM_MT_CHIMNEY, MtChimney_EventScript_MachineOn
# 466 "data/maps/MtChimney/scripts.pory"
	goto_if_set FLAG_RECEIVED_METEORITE, MtChimney_EventScript_MachineOff
# 467 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_RemoveTheMeteorite, MSGBOX_YESNO
# 468 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MtChimney_EventScript_LeaveMeteoriteAlone
# 469 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_PlayerRemovedMeteorite, MSGBOX_DEFAULT
# 470 "data/maps/MtChimney/scripts.pory"
	giveitem ITEM_METEORITE
# 471 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 472 "data/maps/MtChimney/scripts.pory"
	setflag FLAG_RECEIVED_METEORITE
# 473 "data/maps/MtChimney/scripts.pory"
	releaseall
# 474 "data/maps/MtChimney/scripts.pory"
	end
# 475 "data/maps/MtChimney/scripts.pory"

# 476 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_LeaveMeteoriteAlone::
# 477 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_PlayerLeftMeteorite, MSGBOX_DEFAULT
# 478 "data/maps/MtChimney/scripts.pory"
	releaseall
# 479 "data/maps/MtChimney/scripts.pory"
	end
# 480 "data/maps/MtChimney/scripts.pory"

# 481 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_MachineOff::
# 482 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MachineMakesNoResponse, MSGBOX_DEFAULT
# 483 "data/maps/MtChimney/scripts.pory"
	releaseall
# 484 "data/maps/MtChimney/scripts.pory"
	end
# 485 "data/maps/MtChimney/scripts.pory"

# 486 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_MachineOn::
# 487 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MetoriteFittedOnMachine, MSGBOX_DEFAULT
# 488 "data/maps/MtChimney/scripts.pory"
	releaseall
# 489 "data/maps/MtChimney/scripts.pory"
	end
# 490 "data/maps/MtChimney/scripts.pory"

# 491 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_RouteSign::
# 492 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_RouteSign, MSGBOX_SIGN
# 493 "data/maps/MtChimney/scripts.pory"
	end
# 494 "data/maps/MtChimney/scripts.pory"

# 495 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Shelby::
# 496 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_SHELBY_1, MtChimney_Text_ShelbyIntro, MtChimney_Text_ShelbyDefeat, MtChimney_EventScript_DefeatedShelby
# 497 "data/maps/MtChimney/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 498 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MtChimney_EventScript_RematchShelby
# 499 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_ShelbyPostBattle, MSGBOX_DEFAULT
# 500 "data/maps/MtChimney/scripts.pory"
	release
# 501 "data/maps/MtChimney/scripts.pory"
	end
# 502 "data/maps/MtChimney/scripts.pory"

# 503 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_DefeatedShelby::
# 504 "data/maps/MtChimney/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 505 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 506 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_ShelbyRegister, MSGBOX_DEFAULT
# 507 "data/maps/MtChimney/scripts.pory"
	register_matchcall TRAINER_SHELBY_1
# 508 "data/maps/MtChimney/scripts.pory"
	release
# 509 "data/maps/MtChimney/scripts.pory"
	end
# 510 "data/maps/MtChimney/scripts.pory"

# 511 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_RematchShelby::
# 512 "data/maps/MtChimney/scripts.pory"
	trainerbattle_rematch TRAINER_SHELBY_1, MtChimney_Text_ShelbyRematchIntro, MtChimney_Text_ShelbyRematchDefeat
# 513 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_ShelbyPostRematch, MSGBOX_AUTOCLOSE
# 514 "data/maps/MtChimney/scripts.pory"
	end
# 515 "data/maps/MtChimney/scripts.pory"

# 516 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Melissa::
# 517 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_MELISSA, MtChimney_Text_MelissaIntro, MtChimney_Text_MelissaDefeat
# 518 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MelissaPostBattle, MSGBOX_AUTOCLOSE
# 519 "data/maps/MtChimney/scripts.pory"
	end
# 520 "data/maps/MtChimney/scripts.pory"

# 521 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Sheila::
# 522 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_SHEILA, MtChimney_Text_SheilaIntro, MtChimney_Text_SheilaDefeat
# 523 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_SheilaPostBattle, MSGBOX_AUTOCLOSE
# 524 "data/maps/MtChimney/scripts.pory"
	end
# 525 "data/maps/MtChimney/scripts.pory"

# 526 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Shirley::
# 527 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_SHIRLEY, MtChimney_Text_ShirleyIntro, MtChimney_Text_ShirleyDefeat
# 528 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_ShirleyPostBattle, MSGBOX_AUTOCLOSE
# 529 "data/maps/MtChimney/scripts.pory"
	end
# 530 "data/maps/MtChimney/scripts.pory"

# 531 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Grunt1::
# 532 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_CHIMNEY_1, MtChimney_Text_Grunt1Intro, MtChimney_Text_Grunt1Defeat
# 533 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_Grunt1PostBattle, MSGBOX_AUTOCLOSE
# 534 "data/maps/MtChimney/scripts.pory"
	end
# 535 "data/maps/MtChimney/scripts.pory"

# 536 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Sawyer::
# 537 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_SAWYER_1, MtChimney_Text_SawyerIntro, MtChimney_Text_SawyerDefeat, MtChimney_EventScript_SawyerDefeated
# 538 "data/maps/MtChimney/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 539 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MtChimney_EventScript_SawyerRematch
# 540 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_SawyerPostBattle, MSGBOX_DEFAULT
# 541 "data/maps/MtChimney/scripts.pory"
	release
# 542 "data/maps/MtChimney/scripts.pory"
	end
# 543 "data/maps/MtChimney/scripts.pory"

# 544 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_SawyerDefeated::
# 545 "data/maps/MtChimney/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 546 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 547 "data/maps/MtChimney/scripts.pory"
	release
# 548 "data/maps/MtChimney/scripts.pory"
	end
# 549 "data/maps/MtChimney/scripts.pory"

# 550 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_SawyerRematch::
# 551 "data/maps/MtChimney/scripts.pory"
	trainerbattle_rematch TRAINER_SAWYER_1, MtChimney_Text_SawyerRematchIntro, MtChimney_Text_SawyerRematchDefeat
# 552 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_SawyerPostRematch, MSGBOX_AUTOCLOSE
# 553 "data/maps/MtChimney/scripts.pory"
	end
# 554 "data/maps/MtChimney/scripts.pory"

# 555 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MeteoriteWillActivateVolcano:
# 556 "data/maps/MtChimney/scripts.pory"
	.string "By amplifying its frequency with this\n"
# 557 "data/maps/MtChimney/scripts.pory"
	.string "machine, we won't just cause an eruption.\l"
# 558 "data/maps/MtChimney/scripts.pory"
	.string "We will trigger a chain reaction.\p"
# 559 "data/maps/MtChimney/scripts.pory"
	.string "MT. CHIMNEY's volcanic activity will\n"
# 560 "data/maps/MtChimney/scripts.pory"
	.string "intensify tenfold. Nature's real power!\p"
# 561 "data/maps/MtChimney/scripts.pory"
	.string "The METEORITE - A fragment of the\n"
# 562 "data/maps/MtChimney/scripts.pory"
	.string "MILLENNIUM COMET, pulsing with ancient\l"
# 563 "data/maps/MtChimney/scripts.pory"
	.string "power. This world has forgotten its nature.$"
# 564 "data/maps/MtChimney/scripts.pory"

# 565 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MaxieIntro:
# 566 "data/maps/MtChimney/scripts.pory"
	.string "MAGNUS: Hm?\n"
# 567 "data/maps/MtChimney/scripts.pory"
	.string "Who are you?\p"
# 568 "data/maps/MtChimney/scripts.pory"
	.string "… … … … … …\n"
# 569 "data/maps/MtChimney/scripts.pory"
	.string "… … … … … …\p"
# 570 "data/maps/MtChimney/scripts.pory"
	.string "I'd heard NEREA bemoaning a child\n"
# 571 "data/maps/MtChimney/scripts.pory"
	.string "who's been meddling in TEAM AQUA's\l"
# 572 "data/maps/MtChimney/scripts.pory"
	.string "affairs.\p"
# 573 "data/maps/MtChimney/scripts.pory"
	.string "It must be you he meant.\p"
# 574 "data/maps/MtChimney/scripts.pory"
	.string "Humph! So you're thinking of\n"
# 575 "data/maps/MtChimney/scripts.pory"
	.string "interfering with us, TEAM MAGMA?\p"
# 576 "data/maps/MtChimney/scripts.pory"
	.string "Now you listen.\n"
# 577 "data/maps/MtChimney/scripts.pory"
	.string "Minerals and ores move this world.\l"
# 578 "data/maps/MtChimney/scripts.pory"
	.string "They build cities and fuel industries.\p"
# 579 "data/maps/MtChimney/scripts.pory"
	.string "That is why what sleeps beneath\n"
# 580 "data/maps/MtChimney/scripts.pory"
	.string "this mountain is all important!\p"
# 581 "data/maps/MtChimney/scripts.pory"
	.string "TEAM MAGMA will awaken these\n"
# 582 "data/maps/MtChimney/scripts.pory"
	.string "volcanoes not for destruction,\l"
# 583 "data/maps/MtChimney/scripts.pory"
	.string "but for extraction.\p"
# 584 "data/maps/MtChimney/scripts.pory"
	.string "The eruptions will fracture the earth,\n"
# 585 "data/maps/MtChimney/scripts.pory"
	.string "exposing veins of rare minerals\l"
# 586 "data/maps/MtChimney/scripts.pory"
	.string "never before seen.\p"
# 587 "data/maps/MtChimney/scripts.pory"
	.string "And when the ash settles...\n"
# 588 "data/maps/MtChimney/scripts.pory"
	.string "the soil will become the richest\l"
# 589 "data/maps/MtChimney/scripts.pory"
	.string "in all of HOENN.\p"
# 590 "data/maps/MtChimney/scripts.pory"
	.string "A new era of resources.\n"
# 591 "data/maps/MtChimney/scripts.pory"
	.string "A new world order.\p"
# 592 "data/maps/MtChimney/scripts.pory"
	.string "Oh! There was no need for you to\n"
# 593 "data/maps/MtChimney/scripts.pory"
	.string "learn that much.\p"
# 594 "data/maps/MtChimney/scripts.pory"
	.string "But, no matter!\n"
# 595 "data/maps/MtChimney/scripts.pory"
	.string "I'll teach you the consequences of\l"
# 596 "data/maps/MtChimney/scripts.pory"
	.string "meddling in our grand design!$"
# 597 "data/maps/MtChimney/scripts.pory"

# 598 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MaxieDefeat:
# 599 "data/maps/MtChimney/scripts.pory"
	.string "What?!\p"
# 600 "data/maps/MtChimney/scripts.pory"
	.string "I, MAGNUS, was caught off guard?!\n"
# 601 "data/maps/MtChimney/scripts.pory"
	.string "This changes nothing.\p"
# 602 "data/maps/MtChimney/scripts.pory"
	.string "The tectonic shift is inevitable.\n"
# 603 "data/maps/MtChimney/scripts.pory"
	.string "You've only delayed progress.$"
# 604 "data/maps/MtChimney/scripts.pory"

# 605 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MaxieYouHaventSeenLastOfMagma:
# 606 "data/maps/MtChimney/scripts.pory"
	.string "MAGNUS: But, enough.\n"
# 607 "data/maps/MtChimney/scripts.pory"
	.string "I will back off this time.\p"
# 608 "data/maps/MtChimney/scripts.pory"
	.string "But don't think that this is the last\n"
# 609 "data/maps/MtChimney/scripts.pory"
	.string "you've seen of TEAM MAGMA.\p"
# 610 "data/maps/MtChimney/scripts.pory"
	.string "Fufufu…\p"
# 611 "data/maps/MtChimney/scripts.pory"
	.string "Even without the METEORITE, if we\n"
# 612 "data/maps/MtChimney/scripts.pory"
	.string "obtain that ORB… Fufufu…\p"
# 613 "data/maps/MtChimney/scripts.pory"
	.string "The revolution cannot be stopped.$"
# 614 "data/maps/MtChimney/scripts.pory"

# 615 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_TabithaIntro:
# 616 "data/maps/MtChimney/scripts.pory"
	.string "Netsu: Hehehe!\p"
# 617 "data/maps/MtChimney/scripts.pory"
	.string "So you're the weirdo everyone's been\n"
# 618 "data/maps/MtChimney/scripts.pory"
	.string "whispering about!\p"
# 619 "data/maps/MtChimney/scripts.pory"
	.string "I heard some brat in a cape has been\n"
# 620 "data/maps/MtChimney/scripts.pory"
	.string "playing hero and actually managed to\l"
# 621 "data/maps/MtChimney/scripts.pory"
	.string "beat that scumbag Alejandro from\l"
# 622 "data/maps/MtChimney/scripts.pory"
	.string "that damn annoying TEAM AQUA!\p"
# 623 "data/maps/MtChimney/scripts.pory"
	.string "That weird rich boy is my rival,\n"
# 624 "data/maps/MtChimney/scripts.pory"
	.string "and I can't stand him!\l"
# 625 "data/maps/MtChimney/scripts.pory"
	.string "That spoiled boy! I hate Alejandro!\p"
# 626 "data/maps/MtChimney/scripts.pory"
	.string "Anyway...\n"
# 627 "data/maps/MtChimney/scripts.pory"
	.string "Why are you so interested in poking\l"
# 628 "data/maps/MtChimney/scripts.pory"
	.string "your nose into our revolution?\p"
# 629 "data/maps/MtChimney/scripts.pory"
	.string "You don't understand the importance\n"
# 630 "data/maps/MtChimney/scripts.pory"
	.string "of the power we want to have!\p"
# 631 "data/maps/MtChimney/scripts.pory"
	.string "But whatever...\n"
# 632 "data/maps/MtChimney/scripts.pory"
	.string "I'm gonna crush you here,\l"
# 633 "data/maps/MtChimney/scripts.pory"
	.string "and then you're going to get lost!$"
# 634 "data/maps/MtChimney/scripts.pory"

# 635 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_TabithaDefeat:
# 636 "data/maps/MtChimney/scripts.pory"
	.string "Netsu: Hehehe…\p"
# 637 "data/maps/MtChimney/scripts.pory"
	.string "Tch…\n"
# 638 "data/maps/MtChimney/scripts.pory"
	.string "So what if I lost this battle?\p"
# 639 "data/maps/MtChimney/scripts.pory"
	.string "The revolution's plan is bigger than\n"
# 640 "data/maps/MtChimney/scripts.pory"
	.string "you, bigger than me, bigger than this\l"
# 641 "data/maps/MtChimney/scripts.pory"
	.string "stupid mountain!\p"
# 642 "data/maps/MtChimney/scripts.pory"
	.string "I already did what needed to be done.\n"
# 643 "data/maps/MtChimney/scripts.pory"
	.string "The METEORITE is in place.\l"
# 644 "data/maps/MtChimney/scripts.pory"
	.string "The machine is ready.\p"
# 645 "data/maps/MtChimney/scripts.pory"
	.string "The plan moves forward...\n"
# 646 "data/maps/MtChimney/scripts.pory"
	.string "whether you like it or not.\p"
# 647 "data/maps/MtChimney/scripts.pory"
	.string "Hehehe…\n"
# 648 "data/maps/MtChimney/scripts.pory"
	.string "Enjoy your little victory, hero.\l"
# 649 "data/maps/MtChimney/scripts.pory"
	.string "It won't last!$"
# 650 "data/maps/MtChimney/scripts.pory"

# 651 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_TabithaPostBattle:
# 652 "data/maps/MtChimney/scripts.pory"
	.string "Netsu: BOSS! Now!\n"
# 653 "data/maps/MtChimney/scripts.pory"
	.string "Hit it with the METEORITE's energy!\p"
# 654 "data/maps/MtChimney/scripts.pory"
	.string "Hehehe…\n"
# 655 "data/maps/MtChimney/scripts.pory"
	.string "Let those AQUA scum choke on our ash!\p"
# 656 "data/maps/MtChimney/scripts.pory"
	.string "And you, kid...\n"
# 657 "data/maps/MtChimney/scripts.pory"
	.string "You'd better run while you still can.$"
# 658 "data/maps/MtChimney/scripts.pory"

# 659 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt2Intro:
# 660 "data/maps/MtChimney/scripts.pory"
	.string "We of TEAM MAGMA are working hard for\n"
# 661 "data/maps/MtChimney/scripts.pory"
	.string "everyone's sake.\p"
# 662 "data/maps/MtChimney/scripts.pory"
	.string "You think resources appear by magic?\n"
# 663 "data/maps/MtChimney/scripts.pory"
	.string "They're extracted. Refined. Controlled.\p"
# 664 "data/maps/MtChimney/scripts.pory"
	.string "We'll control them all.\n"
# 665 "data/maps/MtChimney/scripts.pory"
	.string "Everyone will pay our price.$"
# 666 "data/maps/MtChimney/scripts.pory"

# 667 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt2Defeat:
# 668 "data/maps/MtChimney/scripts.pory"
	.string "Hunh?\n"
# 669 "data/maps/MtChimney/scripts.pory"
	.string "What do you mean I lost?\p"
# 670 "data/maps/MtChimney/scripts.pory"
	.string "The minerals… the market…\n"
# 671 "data/maps/MtChimney/scripts.pory"
	.string "This battle means nothing!$"
# 672 "data/maps/MtChimney/scripts.pory"

# 673 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt2PostBattle:
# 674 "data/maps/MtChimney/scripts.pory"
	.string "Our BOSS says, “It will make everyone\n"
# 675 "data/maps/MtChimney/scripts.pory"
	.string "happy.”\p"
# 676 "data/maps/MtChimney/scripts.pory"
	.string "But why does everyone keep getting\n"
# 677 "data/maps/MtChimney/scripts.pory"
	.string "in our way?\p"
# 678 "data/maps/MtChimney/scripts.pory"
	.string "Don't they understand?\n"
# 679 "data/maps/MtChimney/scripts.pory"
	.string "Happiness is a product.\l"
# 680 "data/maps/MtChimney/scripts.pory"
	.string "And we'll be the only suppliers.$"
# 681 "data/maps/MtChimney/scripts.pory"

# 682 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt1Intro:
# 683 "data/maps/MtChimney/scripts.pory"
	.string "If there were more land, I'd be able\n"
# 684 "data/maps/MtChimney/scripts.pory"
	.string "to get a big house of my own!\p"
# 685 "data/maps/MtChimney/scripts.pory"
	.string "I'm going to build it on hardened lava!\p"
# 686 "data/maps/MtChimney/scripts.pory"
	.string "And charge rent to all those\n"
# 687 "data/maps/MtChimney/scripts.pory"
	.string "who doubted our vision!$"
# 688 "data/maps/MtChimney/scripts.pory"

# 689 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt1Defeat:
# 690 "data/maps/MtChimney/scripts.pory"
	.string "My dream of a big house…\n"
# 691 "data/maps/MtChimney/scripts.pory"
	.string "And the passive income… gone…$"
# 692 "data/maps/MtChimney/scripts.pory"

# 693 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt1PostBattle:
# 694 "data/maps/MtChimney/scripts.pory"
	.string "A kid like you, you ought to be\n"
# 695 "data/maps/MtChimney/scripts.pory"
	.string "splashing about in the waves!\p"
# 696 "data/maps/MtChimney/scripts.pory"
	.string "While we adults reshape continents\n"
# 697 "data/maps/MtChimney/scripts.pory"
	.string "and rewrite economies.$"
# 698 "data/maps/MtChimney/scripts.pory"

# 699 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_TeamAquaAlwaysMessingWithPlans:
# 700 "data/maps/MtChimney/scripts.pory"
	.string "That annoying TEAM AQUA…\n"
# 701 "data/maps/MtChimney/scripts.pory"
	.string "They always mess with our plans!\p"
# 702 "data/maps/MtChimney/scripts.pory"
	.string "They defend their precious seas\n"
# 703 "data/maps/MtChimney/scripts.pory"
	.string "while we build the future.$"
# 704 "data/maps/MtChimney/scripts.pory"

# 705 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MeteoritesPackAmazingPower:
# 706 "data/maps/MtChimney/scripts.pory"
	.string "METEORITES pack amazing power!\p"
# 707 "data/maps/MtChimney/scripts.pory"
	.string "The MILLENNIUM COMET's fragments\n"
# 708 "data/maps/MtChimney/scripts.pory"
	.string "could fuel HOENN for centuries.\p"
# 709 "data/maps/MtChimney/scripts.pory"
	.string "And we'll control every joule.$"
# 710 "data/maps/MtChimney/scripts.pory"

# 711 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_YouBetterNotMessWithUs:
# 712 "data/maps/MtChimney/scripts.pory"
	.string "You'd better not mess with us!\p"
# 713 "data/maps/MtChimney/scripts.pory"
	.string "We're trying to awaken that thing\n"
# 714 "data/maps/MtChimney/scripts.pory"
	.string "for the benefit of everyone!\p"
# 715 "data/maps/MtChimney/scripts.pory"
	.string "Whether they want it or not.$"
# 716 "data/maps/MtChimney/scripts.pory"

# 717 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_AquasNameSimilar:
# 718 "data/maps/MtChimney/scripts.pory"
	.string "We're TEAM MAGMA!\p"
# 719 "data/maps/MtChimney/scripts.pory"
	.string "They're TEAM AQUA!\p"
# 720 "data/maps/MtChimney/scripts.pory"
	.string "They're just greedy pigs!\n"
# 721 "data/maps/MtChimney/scripts.pory"
	.string "Blinded by their own selfishness.\p"
# 722 "data/maps/MtChimney/scripts.pory"
	.string "Our plan... it's a beautiful revolution.\n"
# 723 "data/maps/MtChimney/scripts.pory"
	.string "At the price of some sacrifices,\l"
# 724 "data/maps/MtChimney/scripts.pory"
	.string "it will save so many.\p"
# 725 "data/maps/MtChimney/scripts.pory"
	.string "The land will flourish.\n"
# 726 "data/maps/MtChimney/scripts.pory"
	.string "Resources for all.\p"
# 727 "data/maps/MtChimney/scripts.pory"
	.string "You wouldn't understand...\n"
# 728 "data/maps/MtChimney/scripts.pory"
	.string "You're just like them.$"
# 729 "data/maps/MtChimney/scripts.pory"

# 730 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_DouseThemInFire:
# 731 "data/maps/MtChimney/scripts.pory"
	.string "Yeah! Ha Ha Ha!\n"
# 732 "data/maps/MtChimney/scripts.pory"
	.string "Douse them in fire!\p"
# 733 "data/maps/MtChimney/scripts.pory"
	.string "Let them swim in our molten future!$"
# 734 "data/maps/MtChimney/scripts.pory"

# 735 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_KeepMakingMoreLand:
# 736 "data/maps/MtChimney/scripts.pory"
	.string "We're going to keep making more land!\p"
# 737 "data/maps/MtChimney/scripts.pory"
	.string "More land means more mines.\n"
# 738 "data/maps/MtChimney/scripts.pory"
	.string "More mines means more wealth.\l"
# 739 "data/maps/MtChimney/scripts.pory"
	.string "More wealth means more power.$"
# 740 "data/maps/MtChimney/scripts.pory"

# 741 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Bufoh:
# 742 "data/maps/MtChimney/scripts.pory"
	.string "Bufoh!$"
# 743 "data/maps/MtChimney/scripts.pory"

# 744 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ArchieGoStopTeamMagma:
# 745 "data/maps/MtChimney/scripts.pory"
	.string "NEREA: Grr, {PLAYER}!\n"
# 746 "data/maps/MtChimney/scripts.pory"
	.string "I should've guessed you'd show up!\p"
# 747 "data/maps/MtChimney/scripts.pory"
	.string "See for yourself what the fanatics\n"
# 748 "data/maps/MtChimney/scripts.pory"
	.string "of TEAM MAGMA are up to!\p"
# 749 "data/maps/MtChimney/scripts.pory"
	.string "They're trying to inject the stolen\n"
# 750 "data/maps/MtChimney/scripts.pory"
	.string "METEORITE's power into the volcano!\p"
# 751 "data/maps/MtChimney/scripts.pory"
	.string "Doing something like that will cause\n"
# 752 "data/maps/MtChimney/scripts.pory"
	.string "the volcano's eruption!\p"
# 753 "data/maps/MtChimney/scripts.pory"
	.string "And when the tectonic plates shift...\n"
# 754 "data/maps/MtChimney/scripts.pory"
	.string "our coastlines. Our territories.\l"
# 755 "data/maps/MtChimney/scripts.pory"
	.string "Everything we've built. Gone.$"
# 756 "data/maps/MtChimney/scripts.pory"

# 757 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ArchieIHaveMyHandsFull:
# 758 "data/maps/MtChimney/scripts.pory"
	.string "NEREA: Grrr…\p"
# 759 "data/maps/MtChimney/scripts.pory"
	.string "I want to stop that MAGNUS,\n"
# 760 "data/maps/MtChimney/scripts.pory"
	.string "but I can't!\p"
# 761 "data/maps/MtChimney/scripts.pory"
	.string "Not when I have my hands full battling\n"
# 762 "data/maps/MtChimney/scripts.pory"
	.string "three opponents at once!\p"
# 763 "data/maps/MtChimney/scripts.pory"
	.string "… … … … … …\n"
# 764 "data/maps/MtChimney/scripts.pory"
	.string "… … … … … …\p"
# 765 "data/maps/MtChimney/scripts.pory"
	.string "You?\n"
# 766 "data/maps/MtChimney/scripts.pory"
	.string "The one who tried to stop us before?\p"
# 767 "data/maps/MtChimney/scripts.pory"
	.string "Hahahahahaha!\p"
# 768 "data/maps/MtChimney/scripts.pory"
	.string "Ambition drives humans to terrible\n"
# 769 "data/maps/MtChimney/scripts.pory"
	.string "places, doesn't it?\p"
# 770 "data/maps/MtChimney/scripts.pory"
	.string "That madman MAGNUS will reshape all\n"
# 771 "data/maps/MtChimney/scripts.pory"
	.string "of HOENN with his volcanic greed.\p"
# 772 "data/maps/MtChimney/scripts.pory"
	.string "The tectonic shift alone...\n"
# 773 "data/maps/MtChimney/scripts.pory"
	.string "entire coastlines will collapse.\p"
# 774 "data/maps/MtChimney/scripts.pory"
	.string "Irony of ironies...\p"
# 775 "data/maps/MtChimney/scripts.pory"
	.string "For now... we need to ally.\n"
# 776 "data/maps/MtChimney/scripts.pory"
	.string "You'll help TEAM AQUA.\p"
# 777 "data/maps/MtChimney/scripts.pory"
	.string "Just a pawn...\n"
# 778 "data/maps/MtChimney/scripts.pory"
	.string "but a useful one, kid!$"
# 779 "data/maps/MtChimney/scripts.pory"

# 780 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ArchieThankYou:
# 781 "data/maps/MtChimney/scripts.pory"
	.string "NEREA: {PLAYER}!\n"
# 782 "data/maps/MtChimney/scripts.pory"
	.string "Thank you!\p"
# 783 "data/maps/MtChimney/scripts.pory"
	.string "With your help, we thwarted TEAM\n"
# 784 "data/maps/MtChimney/scripts.pory"
	.string "MAGMA's destructive plan!\p"
# 785 "data/maps/MtChimney/scripts.pory"
	.string "But… You…\n"
# 786 "data/maps/MtChimney/scripts.pory"
	.string "Whose side are you on?\p"
# 787 "data/maps/MtChimney/scripts.pory"
	.string "Don't think for a moment that you're\n"
# 788 "data/maps/MtChimney/scripts.pory"
	.string "more than just a pawn in this.\p"
# 789 "data/maps/MtChimney/scripts.pory"
	.string "You have no idea the importance of\n"
# 790 "data/maps/MtChimney/scripts.pory"
	.string "the revolution that is coming.\p"
# 791 "data/maps/MtChimney/scripts.pory"
	.string "A revolution that will save the world,\n"
# 792 "data/maps/MtChimney/scripts.pory"
	.string "whether you understand it or not.\p"
# 793 "data/maps/MtChimney/scripts.pory"
	.string "You need to choose a side.\n"
# 794 "data/maps/MtChimney/scripts.pory"
	.string "The fence you're sitting on...\l"
# 795 "data/maps/MtChimney/scripts.pory"
	.string "it will collapse beneath you.\p"
# 796 "data/maps/MtChimney/scripts.pory"
	.string "{PLAYER}, we shall meet again!\n"
# 797 "data/maps/MtChimney/scripts.pory"
	.string "And next time... choose wisely.$"
# 798 "data/maps/MtChimney/scripts.pory"

# 799 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MagmaOutnumbersUs:
# 800 "data/maps/MtChimney/scripts.pory"
	.string "Darn… TEAM MAGMA outnumbers us!\n"
# 801 "data/maps/MtChimney/scripts.pory"
	.string "We can't keep up with them!\p"
# 802 "data/maps/MtChimney/scripts.pory"
	.string "Their corporate sponsors must be\n"
# 803 "data/maps/MtChimney/scripts.pory"
	.string "funding this whole operation.$"
# 804 "data/maps/MtChimney/scripts.pory"

# 805 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_LessHabitatForWaterPokemon:
# 806 "data/maps/MtChimney/scripts.pory"
	.string "If they expand the land, there'll be\n"
# 807 "data/maps/MtChimney/scripts.pory"
	.string "less habitats for WATER POKéMON!\p"
# 808 "data/maps/MtChimney/scripts.pory"
	.string "But worse... shipping routes.\n"
# 809 "data/maps/MtChimney/scripts.pory"
	.string "Trade harbors. Our entire economy.\l"
# 810 "data/maps/MtChimney/scripts.pory"
	.string "All built on the coastlines.$"
# 811 "data/maps/MtChimney/scripts.pory"

# 812 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MagmasNameSimilar:
# 813 "data/maps/MtChimney/scripts.pory"
	.string "We're TEAM AQUA!\p"
# 814 "data/maps/MtChimney/scripts.pory"
	.string "They're TEAM MAGMA!\p"
# 815 "data/maps/MtChimney/scripts.pory"
	.string "It burns me up that they'd use such\n"
# 816 "data/maps/MtChimney/scripts.pory"
	.string "a confusing name!\p"
# 817 "data/maps/MtChimney/scripts.pory"
	.string "We protect the seas.\n"
# 818 "data/maps/MtChimney/scripts.pory"
	.string "They exploit the earth.\l"
# 819 "data/maps/MtChimney/scripts.pory"
	.string "The difference is clear.$"
# 820 "data/maps/MtChimney/scripts.pory"

# 821 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Bushaa:
# 822 "data/maps/MtChimney/scripts.pory"
	.string "Bushaa!$"
# 823 "data/maps/MtChimney/scripts.pory"

# 824 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_LavaCookiesJust200:
# 825 "data/maps/MtChimney/scripts.pory"
	.string "LAVA COOKIES are MT. CHIMNEY's local\n"
# 826 "data/maps/MtChimney/scripts.pory"
	.string "specialty.\p"
# 827 "data/maps/MtChimney/scripts.pory"
	.string "Try one. It's just ¥200.\p"
# 828 "data/maps/MtChimney/scripts.pory"
	.string "Baked with the same geothermal heat\n"
# 829 "data/maps/MtChimney/scripts.pory"
	.string "that MAGMA wants to weaponize.$"
# 830 "data/maps/MtChimney/scripts.pory"

# 831 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ThankYouDear:
# 832 "data/maps/MtChimney/scripts.pory"
	.string "Thank you, dear!\n"
# 833 "data/maps/MtChimney/scripts.pory"
	.string "Enjoy the warmth!$"
# 834 "data/maps/MtChimney/scripts.pory"

# 835 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_YouveNotGotTheMoney:
# 836 "data/maps/MtChimney/scripts.pory"
	.string "Oh, dear. You can't buy a thing if\n"
# 837 "data/maps/MtChimney/scripts.pory"
	.string "you've not got the money.\p"
# 838 "data/maps/MtChimney/scripts.pory"
	.string "That's how the world works, child.$"
# 839 "data/maps/MtChimney/scripts.pory"

# 840 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_OhFineThen:
# 841 "data/maps/MtChimney/scripts.pory"
	.string "Oh, fine then.\n"
# 842 "data/maps/MtChimney/scripts.pory"
	.string "Come back when you can afford it.$"
# 843 "data/maps/MtChimney/scripts.pory"

# 844 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MetoriteFittedOnMachine:
# 845 "data/maps/MtChimney/scripts.pory"
	.string "A METEORITE is fitted on a mysterious\n"
# 846 "data/maps/MtChimney/scripts.pory"
	.string "machine…\p"
# 847 "data/maps/MtChimney/scripts.pory"
	.string "The machine seems to be storing\n"
# 848 "data/maps/MtChimney/scripts.pory"
	.string "energy in the METEORITE.\p"
# 849 "data/maps/MtChimney/scripts.pory"
	.string "It hums with geological potential.$"
# 850 "data/maps/MtChimney/scripts.pory"

# 851 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_RemoveTheMeteorite:
# 852 "data/maps/MtChimney/scripts.pory"
	.string "A METEORITE is fitted on a mysterious\n"
# 853 "data/maps/MtChimney/scripts.pory"
	.string "machine…\p"
# 854 "data/maps/MtChimney/scripts.pory"
	.string "Do you want to remove the METEORITE?\p"
# 855 "data/maps/MtChimney/scripts.pory"
	.string "One small act that could delay\n"
# 856 "data/maps/MtChimney/scripts.pory"
	.string "a continental revolution.$"
# 857 "data/maps/MtChimney/scripts.pory"

# 858 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_PlayerRemovedMeteorite:
# 859 "data/maps/MtChimney/scripts.pory"
	.string "{PLAYER} removed the METEORITE from\n"
# 860 "data/maps/MtChimney/scripts.pory"
	.string "the mysterious machine.\p"
# 861 "data/maps/MtChimney/scripts.pory"
	.string "For now... HOENN is safe.$"
# 862 "data/maps/MtChimney/scripts.pory"

# 863 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_PlayerLeftMeteorite:
# 864 "data/maps/MtChimney/scripts.pory"
	.string "{PLAYER} left the METEORITE where\n"
# 865 "data/maps/MtChimney/scripts.pory"
	.string "it was.\p"
# 866 "data/maps/MtChimney/scripts.pory"
	.string "The machine continues its work.\n"
# 867 "data/maps/MtChimney/scripts.pory"
	.string "The countdown continues.$"
# 868 "data/maps/MtChimney/scripts.pory"

# 869 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MachineMakesNoResponse:
# 870 "data/maps/MtChimney/scripts.pory"
	.string "This mysterious machine…\n"
# 871 "data/maps/MtChimney/scripts.pory"
	.string "It makes no response whatsoever.\p"
# 872 "data/maps/MtChimney/scripts.pory"
	.string "Perhaps it only answers to those\n"
# 873 "data/maps/MtChimney/scripts.pory"
	.string "with the ambition to use it.$"
# 874 "data/maps/MtChimney/scripts.pory"

# 875 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_RouteSign:
# 876 "data/maps/MtChimney/scripts.pory"
	.string "{DOWN_ARROW} JAGGED PATH\n"
# 877 "data/maps/MtChimney/scripts.pory"
	.string "LAVARIDGE TOWN AHEAD\p"
# 878 "data/maps/MtChimney/scripts.pory"
	.string "MT. CHIMNEY - Where the future\n"
# 879 "data/maps/MtChimney/scripts.pory"
	.string "of HOENN will be decided.$"
# 880 "data/maps/MtChimney/scripts.pory"

# 881 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyIntro:
# 882 "data/maps/MtChimney/scripts.pory"
	.string "I've been to the hot springs and\n"
# 883 "data/maps/MtChimney/scripts.pory"
	.string "refreshed my tired bones.\l"
# 884 "data/maps/MtChimney/scripts.pory"
	.string "Right now I'm feeling strong!\p"
# 885 "data/maps/MtChimney/scripts.pory"
	.string "Unlike those MAGMA fools who think\n"
# 886 "data/maps/MtChimney/scripts.pory"
	.string "they can move mountains.$"
# 887 "data/maps/MtChimney/scripts.pory"

# 888 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyDefeat:
# 889 "data/maps/MtChimney/scripts.pory"
	.string "Oh, my goodness.\n"
# 890 "data/maps/MtChimney/scripts.pory"
	.string "Now, aren't you something!$"
# 891 "data/maps/MtChimney/scripts.pory"

# 892 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyPostBattle:
# 893 "data/maps/MtChimney/scripts.pory"
	.string "Well, well, I've lost. I can't call\n"
# 894 "data/maps/MtChimney/scripts.pory"
	.string "myself an EXPERT now, can I?\p"
# 895 "data/maps/MtChimney/scripts.pory"
	.string "But some things never change.\n"
# 896 "data/maps/MtChimney/scripts.pory"
	.string "The mountain still stands.\l"
# 897 "data/maps/MtChimney/scripts.pory"
	.string "For now.$"
# 898 "data/maps/MtChimney/scripts.pory"

# 899 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyRegister:
# 900 "data/maps/MtChimney/scripts.pory"
	.string "Thank you, child. It was fun, as if\n"
# 901 "data/maps/MtChimney/scripts.pory"
	.string "I were battling my own grandchild.\p"
# 902 "data/maps/MtChimney/scripts.pory"
	.string "Please, come see me again for\n"
# 903 "data/maps/MtChimney/scripts.pory"
	.string "a rematch.\p"
# 904 "data/maps/MtChimney/scripts.pory"
	.string "Before the world ends, perhaps.$"
# 905 "data/maps/MtChimney/scripts.pory"

# 906 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyRematchIntro:
# 907 "data/maps/MtChimney/scripts.pory"
	.string "If you can mesh your heart with those\n"
# 908 "data/maps/MtChimney/scripts.pory"
	.string "of your POKéMON, why, you should be\l"
# 909 "data/maps/MtChimney/scripts.pory"
	.string "able to achieve great things.\p"
# 910 "data/maps/MtChimney/scripts.pory"
	.string "Greater than these fools who\n"
# 911 "data/maps/MtChimney/scripts.pory"
	.string "worship minerals and tides.$"
# 912 "data/maps/MtChimney/scripts.pory"

# 913 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyRematchDefeat:
# 914 "data/maps/MtChimney/scripts.pory"
	.string "Oh, my goodness.\n"
# 915 "data/maps/MtChimney/scripts.pory"
	.string "Now, aren't you something!$"
# 916 "data/maps/MtChimney/scripts.pory"

# 917 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyPostRematch:
# 918 "data/maps/MtChimney/scripts.pory"
	.string "Perhaps your heart has become one\n"
# 919 "data/maps/MtChimney/scripts.pory"
	.string "with the hearts of your POKéMON.\p"
# 920 "data/maps/MtChimney/scripts.pory"
	.string "That's something no revolution\n"
# 921 "data/maps/MtChimney/scripts.pory"
	.string "can take from you.$"
# 922 "data/maps/MtChimney/scripts.pory"

# 923 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MelissaIntro:
# 924 "data/maps/MtChimney/scripts.pory"
	.string "I've got the fire in me, baby.\n"
# 925 "data/maps/MtChimney/scripts.pory"
	.string "I can't stand it! I have to battle!\p"
# 926 "data/maps/MtChimney/scripts.pory"
	.string "Unlike those MAGMA creeps who want\n"
# 927 "data/maps/MtChimney/scripts.pory"
	.string "to bottle it and sell it!$"
# 928 "data/maps/MtChimney/scripts.pory"

# 929 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MelissaDefeat:
# 930 "data/maps/MtChimney/scripts.pory"
	.string "Ooh, that was a scorching-hot match!$"
# 931 "data/maps/MtChimney/scripts.pory"

# 932 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MelissaPostBattle:
# 933 "data/maps/MtChimney/scripts.pory"
	.string "The heat of MT. CHIMNEY warms\n"
# 934 "data/maps/MtChimney/scripts.pory"
	.string "me up, baby!\p"
# 935 "data/maps/MtChimney/scripts.pory"
	.string "Let them try to control it.\n"
# 936 "data/maps/MtChimney/scripts.pory"
	.string "Nature always wins.$"
# 937 "data/maps/MtChimney/scripts.pory"

# 938 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SheilaIntro:
# 939 "data/maps/MtChimney/scripts.pory"
	.string "I've finally made it to MT. CHIMNEY.\n"
# 940 "data/maps/MtChimney/scripts.pory"
	.string "I want to make my POKéMON battle!\p"
# 941 "data/maps/MtChimney/scripts.pory"
	.string "They say MAGMA wants to trigger\n"
# 942 "data/maps/MtChimney/scripts.pory"
	.string "an eruption.\p"
# 943 "data/maps/MtChimney/scripts.pory"
	.string "Let's give them an eruption\n"
# 944 "data/maps/MtChimney/scripts.pory"
	.string "of their own!$"
# 945 "data/maps/MtChimney/scripts.pory"

# 946 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SheilaDefeat:
# 947 "data/maps/MtChimney/scripts.pory"
	.string "The way you battle…\n"
# 948 "data/maps/MtChimney/scripts.pory"
	.string "It's like a MT. CHIMNEY eruption!$"
# 949 "data/maps/MtChimney/scripts.pory"

# 950 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SheilaPostBattle:
# 951 "data/maps/MtChimney/scripts.pory"
	.string "Like I said, I've finally made it to\n"
# 952 "data/maps/MtChimney/scripts.pory"
	.string "MT. CHIMNEY. It would be a shame if\l"
# 953 "data/maps/MtChimney/scripts.pory"
	.string "I only do a little sightseeing…\p"
# 954 "data/maps/MtChimney/scripts.pory"
	.string "I want to get in some battles and buy\n"
# 955 "data/maps/MtChimney/scripts.pory"
	.string "COOKIES as souvenirs.\p"
# 956 "data/maps/MtChimney/scripts.pory"
	.string "Before MAGMA turns it all to ash.$"
# 957 "data/maps/MtChimney/scripts.pory"

# 958 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShirleyIntro:
# 959 "data/maps/MtChimney/scripts.pory"
	.string "Since I bathed in the hot springs,\n"
# 960 "data/maps/MtChimney/scripts.pory"
	.string "I've been feeling great!\l"
# 961 "data/maps/MtChimney/scripts.pory"
	.string "I'm sure I'm going to win!\p"
# 962 "data/maps/MtChimney/scripts.pory"
	.string "Those MAGMA grunts look tense.\n"
# 963 "data/maps/MtChimney/scripts.pory"
	.string "They should try the springs.$"
# 964 "data/maps/MtChimney/scripts.pory"

# 965 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShirleyDefeat:
# 966 "data/maps/MtChimney/scripts.pory"
	.string "Yowch!\n"
# 967 "data/maps/MtChimney/scripts.pory"
	.string "I'm getting a chill out of the water.$"
# 968 "data/maps/MtChimney/scripts.pory"

# 969 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShirleyPostBattle:
# 970 "data/maps/MtChimney/scripts.pory"
	.string "I'll have to take another dip in the\n"
# 971 "data/maps/MtChimney/scripts.pory"
	.string "hot springs. Want to join me?\p"
# 972 "data/maps/MtChimney/scripts.pory"
	.string "Just joking!\p"
# 973 "data/maps/MtChimney/scripts.pory"
	.string "But seriously... if they blow this\n"
# 974 "data/maps/MtChimney/scripts.pory"
	.string "mountain, the springs go with it.$"
# 975 "data/maps/MtChimney/scripts.pory"

# 976 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerIntro:
# 977 "data/maps/MtChimney/scripts.pory"
	.string "This is one fine mountain! Plenty of\n"
# 978 "data/maps/MtChimney/scripts.pory"
	.string "hot people around for company!\p"
# 979 "data/maps/MtChimney/scripts.pory"
	.string "And plenty of cold-hearted fanatics\n"
# 980 "data/maps/MtChimney/scripts.pory"
	.string "trying to ruin it all.$"
# 981 "data/maps/MtChimney/scripts.pory"

# 982 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerDefeat:
# 983 "data/maps/MtChimney/scripts.pory"
	.string "Oh, you're a real firebrand, too!$"
# 984 "data/maps/MtChimney/scripts.pory"

# 985 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerPostBattle:
# 986 "data/maps/MtChimney/scripts.pory"
	.string "I think I need a dip in LAVARIDGE\n"
# 987 "data/maps/MtChimney/scripts.pory"
	.string "HOT SPRING with the locals!\p"
# 988 "data/maps/MtChimney/scripts.pory"
	.string "Before it becomes a crater.$"
# 989 "data/maps/MtChimney/scripts.pory"

# 990 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerRegister:
# 991 "data/maps/MtChimney/scripts.pory"
	.string "I like little fireballs like you.\n"
# 992 "data/maps/MtChimney/scripts.pory"
	.string "Let me register you in my POKéNAV.\p"
# 993 "data/maps/MtChimney/scripts.pory"
	.string "Someone needs to keep an eye on\n"
# 994 "data/maps/MtChimney/scripts.pory"
	.string "these extremists.$"
# 995 "data/maps/MtChimney/scripts.pory"

# 996 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerRematchIntro:
# 997 "data/maps/MtChimney/scripts.pory"
	.string "I'm happily surrounded by hot people\n"
# 998 "data/maps/MtChimney/scripts.pory"
	.string "around these parts. I won't lose!\p"
# 999 "data/maps/MtChimney/scripts.pory"
	.string "MAGMA thinks they own this mountain.\n"
# 1000 "data/maps/MtChimney/scripts.pory"
	.string "Let's remind them who really does.$"
# 1001 "data/maps/MtChimney/scripts.pory"

# 1002 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerRematchDefeat:
# 1003 "data/maps/MtChimney/scripts.pory"
	.string "Gosh, you're still the same\n"
# 1004 "data/maps/MtChimney/scripts.pory"
	.string "firebrand as before!$"
# 1005 "data/maps/MtChimney/scripts.pory"

# 1006 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerPostRematch:
# 1007 "data/maps/MtChimney/scripts.pory"
	.string "Actually, it really is hot here.\n"
# 1008 "data/maps/MtChimney/scripts.pory"
	.string "I'm overdressed for these parts.\p"
# 1009 "data/maps/MtChimney/scripts.pory"
	.string "But not as overdressed as MAGMA\n"
# 1010 "data/maps/MtChimney/scripts.pory"
	.string "in their delusions of grandeur.$"
