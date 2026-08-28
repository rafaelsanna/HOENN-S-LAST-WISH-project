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
	createfieldmugshot MUGSHOT_MAGNUS, EMOTE_NORMAL
# 47 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MaxieIntro, MSGBOX_DEFAULT
# 48 "data/maps/MtChimney/scripts.pory"
	removefieldmugshot
# 49 "data/maps/MtChimney/scripts.pory"
	getdifficulty VAR_RESULT
# 50 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, 1, MtChimney_EventScript_MaxieHard
# 51 "data/maps/MtChimney/scripts.pory"

# 52 "data/maps/MtChimney/scripts.pory"
	@ Normal Mode - TRAINER_MAXIE_MT_CHIMNEY
# 53 "data/maps/MtChimney/scripts.pory"
	trainerbattle_no_intro TRAINER_MAXIE_MT_CHIMNEY, MtChimney_Text_MaxieDefeat
# 54 "data/maps/MtChimney/scripts.pory"
	goto MtChimney_EventScript_MaxieAfterBattle
# 55 "data/maps/MtChimney/scripts.pory"

# 56 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_MaxieHard::
# 57 "data/maps/MtChimney/scripts.pory"
	@ Hard Mode - TRAINER_MAXIE_MT_CHIMNEY_HARD
# 58 "data/maps/MtChimney/scripts.pory"
	trainerbattle_no_intro TRAINER_MAXIE_MT_CHIMNEY_HARD, MtChimney_Text_MaxieDefeat
# 59 "data/maps/MtChimney/scripts.pory"

# 60 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_MaxieAfterBattle::
# 61 "data/maps/MtChimney/scripts.pory"
	createfieldmugshot MUGSHOT_MAGNUS, EMOTE_NORMAL
# 62 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MaxieYouHaventSeenLastOfMagma, MSGBOX_DEFAULT
# 63 "data/maps/MtChimney/scripts.pory"
	removefieldmugshot
# 64 "data/maps/MtChimney/scripts.pory"
	closemessage
# 65 "data/maps/MtChimney/scripts.pory"
	delay 30
# 66 "data/maps/MtChimney/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 67 "data/maps/MtChimney/scripts.pory"
	removeobject LOCALID_MT_CHIMNEY_MAXIE
# 68 "data/maps/MtChimney/scripts.pory"
	removeobject LOCALID_MT_CHIMNEY_MAGMA_GRUNT_1
# 69 "data/maps/MtChimney/scripts.pory"
	removeobject LOCALID_MT_CHIMNEY_TABITHA
# 70 "data/maps/MtChimney/scripts.pory"
	removeobject LOCALID_MT_CHIMNEY_MAGMA_GRUNT_2
# 71 "data/maps/MtChimney/scripts.pory"
	setflag FLAG_HIDE_MT_CHIMNEY_TEAM_MAGMA
# 72 "data/maps/MtChimney/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 73 "data/maps/MtChimney/scripts.pory"
	setobjectxyperm LOCALID_MT_CHIMNEY_ARCHIE, 10, 18
# 74 "data/maps/MtChimney/scripts.pory"
	addobject LOCALID_MT_CHIMNEY_ARCHIE
# 75 "data/maps/MtChimney/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, MtChimney_EventScript_ArchieApproachPlayerEast
# 76 "data/maps/MtChimney/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, MtChimney_EventScript_ArchieApproachPlayerNorth
# 77 "data/maps/MtChimney/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 78 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 79 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_ArchieThankYou, MSGBOX_DEFAULT
# 80 "data/maps/MtChimney/scripts.pory"
	closemessage
# 81 "data/maps/MtChimney/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, MtChimney_EventScript_ArchieExitEast
# 82 "data/maps/MtChimney/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, MtChimney_EventScript_ArchieExitNorth
# 83 "data/maps/MtChimney/scripts.pory"
	removeobject LOCALID_MT_CHIMNEY_ARCHIE
# 84 "data/maps/MtChimney/scripts.pory"
	setflag FLAG_HIDE_MT_CHIMNEY_TEAM_AQUA
# 85 "data/maps/MtChimney/scripts.pory"
	setflag FLAG_DEFEATED_EVIL_TEAM_MT_CHIMNEY
# 86 "data/maps/MtChimney/scripts.pory"
	clearflag FLAG_HIDE_FALLARBOR_HOUSE_PROF_COZMO
# 87 "data/maps/MtChimney/scripts.pory"
	setflag FLAG_HIDE_METEOR_FALLS_1F_1R_CALENDULA
# 88 "data/maps/MtChimney/scripts.pory"
	clearflag FLAG_HIDE_MT_CHIMNEY_LAVA_COOKIE_LADY
# 89 "data/maps/MtChimney/scripts.pory"
	releaseall
# 90 "data/maps/MtChimney/scripts.pory"
	end
# 91 "data/maps/MtChimney/scripts.pory"

# 92 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_ArchieApproachPlayerEast::
# 93 "data/maps/MtChimney/scripts.pory"
	applymovement LOCALID_MT_CHIMNEY_ARCHIE, MtChimney_Movement_ArchieApproachPlayerEast
# 94 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 95 "data/maps/MtChimney/scripts.pory"
	return
# 96 "data/maps/MtChimney/scripts.pory"

# 97 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_ArchieApproachPlayerNorth::
# 98 "data/maps/MtChimney/scripts.pory"
	applymovement LOCALID_MT_CHIMNEY_ARCHIE, MtChimney_Movement_ArchieApproachPlayerNorth
# 99 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 100 "data/maps/MtChimney/scripts.pory"
	return
# 101 "data/maps/MtChimney/scripts.pory"

# 102 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_ArchieExitEast::
# 103 "data/maps/MtChimney/scripts.pory"
	applymovement LOCALID_MT_CHIMNEY_ARCHIE, MtChimney_Movement_ArchieExitEast
# 104 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 105 "data/maps/MtChimney/scripts.pory"
	return
# 106 "data/maps/MtChimney/scripts.pory"

# 107 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_ArchieExitNorth::
# 108 "data/maps/MtChimney/scripts.pory"
	applymovement LOCALID_MT_CHIMNEY_ARCHIE, MtChimney_Movement_ArchieExitNorth
# 109 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 110 "data/maps/MtChimney/scripts.pory"
	return
# 111 "data/maps/MtChimney/scripts.pory"

# 112 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_LavaCookieLady::
# 113 "data/maps/MtChimney/scripts.pory"
	lock
# 114 "data/maps/MtChimney/scripts.pory"
	faceplayer
# 115 "data/maps/MtChimney/scripts.pory"
	showmoneybox 0, 0
# 116 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_LavaCookiesJust200, MSGBOX_YESNO
# 117 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MtChimney_EventScript_DeclineLavaCookie
# 118 "data/maps/MtChimney/scripts.pory"
	checkmoney 200
# 119 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MtChimney_EventScript_NotEnoughMoney
# 120 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_ThankYouDear, MSGBOX_DEFAULT
# 121 "data/maps/MtChimney/scripts.pory"
	checkitemspace ITEM_LAVA_COOKIE
# 122 "data/maps/MtChimney/scripts.pory"
	call_if_eq VAR_RESULT, TRUE, MtChimney_EventScript_RemoveMoney
# 123 "data/maps/MtChimney/scripts.pory"
.if OW_SHOW_ITEM_DESCRIPTIONS == OW_ITEM_DESCRIPTIONS_OFF
# 124 "data/maps/MtChimney/scripts.pory"
	giveitem ITEM_LAVA_COOKIE
# 125 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MtChimney_EventScript_BagIsFull
# 126 "data/maps/MtChimney/scripts.pory"
	hidemoneybox
# 127 "data/maps/MtChimney/scripts.pory"
	release
# 128 "data/maps/MtChimney/scripts.pory"
	end
# 129 "data/maps/MtChimney/scripts.pory"

# 130 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BagIsFull::
# 131 "data/maps/MtChimney/scripts.pory"
	msgbox gText_TooBadBagIsFull, MSGBOX_DEFAULT
# 132 "data/maps/MtChimney/scripts.pory"
	hidemoneybox
# 133 "data/maps/MtChimney/scripts.pory"
	release
# 134 "data/maps/MtChimney/scripts.pory"
	end
# 135 "data/maps/MtChimney/scripts.pory"
.else
# 136 "data/maps/MtChimney/scripts.pory"
	hidemoneybox
# 137 "data/maps/MtChimney/scripts.pory"
	giveitem ITEM_LAVA_COOKIE
# 138 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MtChimney_EventScript_BagIsFull
# 139 "data/maps/MtChimney/scripts.pory"
	release
# 140 "data/maps/MtChimney/scripts.pory"
	end
# 141 "data/maps/MtChimney/scripts.pory"

# 142 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BagIsFull::
# 143 "data/maps/MtChimney/scripts.pory"
	msgbox gText_TooBadBagIsFull, MSGBOX_DEFAULT
# 144 "data/maps/MtChimney/scripts.pory"
	release
# 145 "data/maps/MtChimney/scripts.pory"
	end
# 146 "data/maps/MtChimney/scripts.pory"
.endif @ OW_SHOW_ITEM_DESCRIPTIONS
# 147 "data/maps/MtChimney/scripts.pory"

# 148 "data/maps/MtChimney/scripts.pory"

# 149 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_RemoveMoney::
# 150 "data/maps/MtChimney/scripts.pory"
	removemoney 200
# 151 "data/maps/MtChimney/scripts.pory"
	updatemoneybox
# 152 "data/maps/MtChimney/scripts.pory"
	return
# 153 "data/maps/MtChimney/scripts.pory"

# 154 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_DeclineLavaCookie::
# 155 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_OhFineThen, MSGBOX_DEFAULT
# 156 "data/maps/MtChimney/scripts.pory"
	hidemoneybox
# 157 "data/maps/MtChimney/scripts.pory"
	release
# 158 "data/maps/MtChimney/scripts.pory"
	end
# 159 "data/maps/MtChimney/scripts.pory"

# 160 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_NotEnoughMoney::
# 161 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_YouveNotGotTheMoney, MSGBOX_DEFAULT
# 162 "data/maps/MtChimney/scripts.pory"
	hidemoneybox
# 163 "data/maps/MtChimney/scripts.pory"
	release
# 164 "data/maps/MtChimney/scripts.pory"
	end
# 165 "data/maps/MtChimney/scripts.pory"

# 166 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_ArchieApproachPlayerEast:
# 167 "data/maps/MtChimney/scripts.pory"
	walk_right
# 168 "data/maps/MtChimney/scripts.pory"
	walk_up
# 169 "data/maps/MtChimney/scripts.pory"
	walk_up
# 170 "data/maps/MtChimney/scripts.pory"
	walk_up
# 171 "data/maps/MtChimney/scripts.pory"
	walk_up
# 172 "data/maps/MtChimney/scripts.pory"
	walk_up
# 173 "data/maps/MtChimney/scripts.pory"
	face_right
# 174 "data/maps/MtChimney/scripts.pory"
	step_end
# 175 "data/maps/MtChimney/scripts.pory"

# 176 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_ArchieExitEast:
# 177 "data/maps/MtChimney/scripts.pory"
	walk_down
# 178 "data/maps/MtChimney/scripts.pory"
	walk_down
# 179 "data/maps/MtChimney/scripts.pory"
	walk_down
# 180 "data/maps/MtChimney/scripts.pory"
	walk_down
# 181 "data/maps/MtChimney/scripts.pory"
	walk_down
# 182 "data/maps/MtChimney/scripts.pory"
	walk_left
# 183 "data/maps/MtChimney/scripts.pory"
	walk_down
# 184 "data/maps/MtChimney/scripts.pory"
	walk_down
# 185 "data/maps/MtChimney/scripts.pory"
	walk_down
# 186 "data/maps/MtChimney/scripts.pory"
	step_end
# 187 "data/maps/MtChimney/scripts.pory"

# 188 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_ArchieApproachPlayerNorth:
# 189 "data/maps/MtChimney/scripts.pory"
	walk_right
# 190 "data/maps/MtChimney/scripts.pory"
	walk_right
# 191 "data/maps/MtChimney/scripts.pory"
	walk_up
# 192 "data/maps/MtChimney/scripts.pory"
	walk_up
# 193 "data/maps/MtChimney/scripts.pory"
	walk_up
# 194 "data/maps/MtChimney/scripts.pory"
	walk_up
# 195 "data/maps/MtChimney/scripts.pory"
	face_right
# 196 "data/maps/MtChimney/scripts.pory"
	step_end
# 197 "data/maps/MtChimney/scripts.pory"

# 198 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_ArchieExitNorth:
# 199 "data/maps/MtChimney/scripts.pory"
	walk_down
# 200 "data/maps/MtChimney/scripts.pory"
	walk_down
# 201 "data/maps/MtChimney/scripts.pory"
	walk_down
# 202 "data/maps/MtChimney/scripts.pory"
	walk_down
# 203 "data/maps/MtChimney/scripts.pory"
	walk_left
# 204 "data/maps/MtChimney/scripts.pory"
	walk_left
# 205 "data/maps/MtChimney/scripts.pory"
	walk_down
# 206 "data/maps/MtChimney/scripts.pory"
	walk_down
# 207 "data/maps/MtChimney/scripts.pory"
	walk_down
# 208 "data/maps/MtChimney/scripts.pory"
	step_end
# 209 "data/maps/MtChimney/scripts.pory"

# 210 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused1:
# 211 "data/maps/MtChimney/scripts.pory"
	walk_down
# 212 "data/maps/MtChimney/scripts.pory"
	walk_down
# 213 "data/maps/MtChimney/scripts.pory"
	walk_down
# 214 "data/maps/MtChimney/scripts.pory"
	walk_down
# 215 "data/maps/MtChimney/scripts.pory"
	walk_down
# 216 "data/maps/MtChimney/scripts.pory"
	walk_left
# 217 "data/maps/MtChimney/scripts.pory"
	walk_left
# 218 "data/maps/MtChimney/scripts.pory"
	walk_down
# 219 "data/maps/MtChimney/scripts.pory"
	walk_down
# 220 "data/maps/MtChimney/scripts.pory"
	walk_down
# 221 "data/maps/MtChimney/scripts.pory"
	walk_down
# 222 "data/maps/MtChimney/scripts.pory"
	walk_left
# 223 "data/maps/MtChimney/scripts.pory"
	walk_left
# 224 "data/maps/MtChimney/scripts.pory"
	walk_left
# 225 "data/maps/MtChimney/scripts.pory"
	walk_left
# 226 "data/maps/MtChimney/scripts.pory"
	walk_left
# 227 "data/maps/MtChimney/scripts.pory"
	walk_down
# 228 "data/maps/MtChimney/scripts.pory"
	step_end
# 229 "data/maps/MtChimney/scripts.pory"

# 230 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused2:
# 231 "data/maps/MtChimney/scripts.pory"
	walk_down
# 232 "data/maps/MtChimney/scripts.pory"
	walk_down
# 233 "data/maps/MtChimney/scripts.pory"
	walk_down
# 234 "data/maps/MtChimney/scripts.pory"
	walk_down
# 235 "data/maps/MtChimney/scripts.pory"
	walk_left
# 236 "data/maps/MtChimney/scripts.pory"
	walk_left
# 237 "data/maps/MtChimney/scripts.pory"
	walk_left
# 238 "data/maps/MtChimney/scripts.pory"
	walk_down
# 239 "data/maps/MtChimney/scripts.pory"
	step_end
# 240 "data/maps/MtChimney/scripts.pory"

# 241 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused3:
# 242 "data/maps/MtChimney/scripts.pory"
	walk_right
# 243 "data/maps/MtChimney/scripts.pory"
	walk_down
# 244 "data/maps/MtChimney/scripts.pory"
	walk_down
# 245 "data/maps/MtChimney/scripts.pory"
	walk_down
# 246 "data/maps/MtChimney/scripts.pory"
	walk_down
# 247 "data/maps/MtChimney/scripts.pory"
	walk_left
# 248 "data/maps/MtChimney/scripts.pory"
	walk_left
# 249 "data/maps/MtChimney/scripts.pory"
	walk_left
# 250 "data/maps/MtChimney/scripts.pory"
	walk_left
# 251 "data/maps/MtChimney/scripts.pory"
	walk_left
# 252 "data/maps/MtChimney/scripts.pory"
	walk_down
# 253 "data/maps/MtChimney/scripts.pory"
	walk_down
# 254 "data/maps/MtChimney/scripts.pory"
	walk_down
# 255 "data/maps/MtChimney/scripts.pory"
	walk_down
# 256 "data/maps/MtChimney/scripts.pory"
	step_end
# 257 "data/maps/MtChimney/scripts.pory"

# 258 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused4:
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
	walk_fast_down
# 265 "data/maps/MtChimney/scripts.pory"
	walk_fast_down
# 266 "data/maps/MtChimney/scripts.pory"
	walk_fast_down
# 267 "data/maps/MtChimney/scripts.pory"
	walk_fast_down
# 268 "data/maps/MtChimney/scripts.pory"
	walk_left
# 269 "data/maps/MtChimney/scripts.pory"
	walk_left
# 270 "data/maps/MtChimney/scripts.pory"
	walk_down
# 271 "data/maps/MtChimney/scripts.pory"
	walk_down
# 272 "data/maps/MtChimney/scripts.pory"
	walk_down
# 273 "data/maps/MtChimney/scripts.pory"
	walk_left
# 274 "data/maps/MtChimney/scripts.pory"
	walk_left
# 275 "data/maps/MtChimney/scripts.pory"
	walk_down
# 276 "data/maps/MtChimney/scripts.pory"
	walk_down
# 277 "data/maps/MtChimney/scripts.pory"
	walk_left
# 278 "data/maps/MtChimney/scripts.pory"
	walk_left
# 279 "data/maps/MtChimney/scripts.pory"
	walk_left
# 280 "data/maps/MtChimney/scripts.pory"
	walk_left
# 281 "data/maps/MtChimney/scripts.pory"
	walk_left
# 282 "data/maps/MtChimney/scripts.pory"
	walk_down
# 283 "data/maps/MtChimney/scripts.pory"
	step_end
# 284 "data/maps/MtChimney/scripts.pory"

# 285 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused5:
# 286 "data/maps/MtChimney/scripts.pory"
	delay_16
# 287 "data/maps/MtChimney/scripts.pory"
	delay_16
# 288 "data/maps/MtChimney/scripts.pory"
	delay_16
# 289 "data/maps/MtChimney/scripts.pory"
	walk_down
# 290 "data/maps/MtChimney/scripts.pory"
	walk_down
# 291 "data/maps/MtChimney/scripts.pory"
	walk_down
# 292 "data/maps/MtChimney/scripts.pory"
	walk_left
# 293 "data/maps/MtChimney/scripts.pory"
	walk_left
# 294 "data/maps/MtChimney/scripts.pory"
	walk_left
# 295 "data/maps/MtChimney/scripts.pory"
	walk_down
# 296 "data/maps/MtChimney/scripts.pory"
	step_end
# 297 "data/maps/MtChimney/scripts.pory"

# 298 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused6:
# 299 "data/maps/MtChimney/scripts.pory"
	delay_16
# 300 "data/maps/MtChimney/scripts.pory"
	walk_left
# 301 "data/maps/MtChimney/scripts.pory"
	walk_down
# 302 "data/maps/MtChimney/scripts.pory"
	walk_down
# 303 "data/maps/MtChimney/scripts.pory"
	walk_down
# 304 "data/maps/MtChimney/scripts.pory"
	walk_down
# 305 "data/maps/MtChimney/scripts.pory"
	walk_left
# 306 "data/maps/MtChimney/scripts.pory"
	walk_left
# 307 "data/maps/MtChimney/scripts.pory"
	walk_left
# 308 "data/maps/MtChimney/scripts.pory"
	walk_left
# 309 "data/maps/MtChimney/scripts.pory"
	walk_left
# 310 "data/maps/MtChimney/scripts.pory"
	walk_down
# 311 "data/maps/MtChimney/scripts.pory"
	walk_down
# 312 "data/maps/MtChimney/scripts.pory"
	walk_down
# 313 "data/maps/MtChimney/scripts.pory"
	walk_down
# 314 "data/maps/MtChimney/scripts.pory"
	step_end
# 315 "data/maps/MtChimney/scripts.pory"

# 316 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused7:
# 317 "data/maps/MtChimney/scripts.pory"
	delay_16
# 318 "data/maps/MtChimney/scripts.pory"
	walk_left
# 319 "data/maps/MtChimney/scripts.pory"
	walk_left
# 320 "data/maps/MtChimney/scripts.pory"
	walk_down
# 321 "data/maps/MtChimney/scripts.pory"
	walk_down
# 322 "data/maps/MtChimney/scripts.pory"
	walk_down
# 323 "data/maps/MtChimney/scripts.pory"
	walk_left
# 324 "data/maps/MtChimney/scripts.pory"
	walk_left
# 325 "data/maps/MtChimney/scripts.pory"
	walk_down
# 326 "data/maps/MtChimney/scripts.pory"
	walk_down
# 327 "data/maps/MtChimney/scripts.pory"
	walk_left
# 328 "data/maps/MtChimney/scripts.pory"
	walk_left
# 329 "data/maps/MtChimney/scripts.pory"
	walk_left
# 330 "data/maps/MtChimney/scripts.pory"
	walk_left
# 331 "data/maps/MtChimney/scripts.pory"
	walk_left
# 332 "data/maps/MtChimney/scripts.pory"
	walk_down
# 333 "data/maps/MtChimney/scripts.pory"
	step_end
# 334 "data/maps/MtChimney/scripts.pory"

# 335 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused8:
# 336 "data/maps/MtChimney/scripts.pory"
	delay_16
# 337 "data/maps/MtChimney/scripts.pory"
	walk_down
# 338 "data/maps/MtChimney/scripts.pory"
	walk_left
# 339 "data/maps/MtChimney/scripts.pory"
	walk_left
# 340 "data/maps/MtChimney/scripts.pory"
	walk_left
# 341 "data/maps/MtChimney/scripts.pory"
	walk_left
# 342 "data/maps/MtChimney/scripts.pory"
	walk_in_place_faster_down
# 343 "data/maps/MtChimney/scripts.pory"
	step_end
# 344 "data/maps/MtChimney/scripts.pory"

# 345 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused9:
# 346 "data/maps/MtChimney/scripts.pory"
	walk_down
# 347 "data/maps/MtChimney/scripts.pory"
	walk_down
# 348 "data/maps/MtChimney/scripts.pory"
	walk_down
# 349 "data/maps/MtChimney/scripts.pory"
	walk_down
# 350 "data/maps/MtChimney/scripts.pory"
	walk_left
# 351 "data/maps/MtChimney/scripts.pory"
	walk_left
# 352 "data/maps/MtChimney/scripts.pory"
	walk_left
# 353 "data/maps/MtChimney/scripts.pory"
	walk_left
# 354 "data/maps/MtChimney/scripts.pory"
	walk_left
# 355 "data/maps/MtChimney/scripts.pory"
	walk_down
# 356 "data/maps/MtChimney/scripts.pory"
	walk_down
# 357 "data/maps/MtChimney/scripts.pory"
	walk_down
# 358 "data/maps/MtChimney/scripts.pory"
	walk_down
# 359 "data/maps/MtChimney/scripts.pory"
	step_end
# 360 "data/maps/MtChimney/scripts.pory"

# 361 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused10:
# 362 "data/maps/MtChimney/scripts.pory"
	walk_down
# 363 "data/maps/MtChimney/scripts.pory"
	step_end
# 364 "data/maps/MtChimney/scripts.pory"

# 365 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused11:
# 366 "data/maps/MtChimney/scripts.pory"
	walk_down
# 367 "data/maps/MtChimney/scripts.pory"
	walk_down
# 368 "data/maps/MtChimney/scripts.pory"
	walk_down
# 369 "data/maps/MtChimney/scripts.pory"
	walk_down
# 370 "data/maps/MtChimney/scripts.pory"
	walk_down
# 371 "data/maps/MtChimney/scripts.pory"
	walk_down
# 372 "data/maps/MtChimney/scripts.pory"
	walk_down
# 373 "data/maps/MtChimney/scripts.pory"
	step_end
# 374 "data/maps/MtChimney/scripts.pory"

# 375 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused12:
# 376 "data/maps/MtChimney/scripts.pory"
	delay_16
# 377 "data/maps/MtChimney/scripts.pory"
	delay_16
# 378 "data/maps/MtChimney/scripts.pory"
	walk_in_place_faster_left
# 379 "data/maps/MtChimney/scripts.pory"
	delay_16
# 380 "data/maps/MtChimney/scripts.pory"
	walk_down
# 381 "data/maps/MtChimney/scripts.pory"
	walk_down
# 382 "data/maps/MtChimney/scripts.pory"
	walk_down
# 383 "data/maps/MtChimney/scripts.pory"
	walk_down
# 384 "data/maps/MtChimney/scripts.pory"
	walk_down
# 385 "data/maps/MtChimney/scripts.pory"
	step_end
# 386 "data/maps/MtChimney/scripts.pory"

# 387 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused13:
# 388 "data/maps/MtChimney/scripts.pory"
	delay_16
# 389 "data/maps/MtChimney/scripts.pory"
	delay_16
# 390 "data/maps/MtChimney/scripts.pory"
	delay_16
# 391 "data/maps/MtChimney/scripts.pory"
	delay_16
# 392 "data/maps/MtChimney/scripts.pory"
	delay_16
# 393 "data/maps/MtChimney/scripts.pory"
	delay_16
# 394 "data/maps/MtChimney/scripts.pory"
	walk_in_place_faster_left
# 395 "data/maps/MtChimney/scripts.pory"
	delay_16
# 396 "data/maps/MtChimney/scripts.pory"
	walk_down
# 397 "data/maps/MtChimney/scripts.pory"
	walk_down
# 398 "data/maps/MtChimney/scripts.pory"
	step_end
# 399 "data/maps/MtChimney/scripts.pory"

# 400 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused14:
# 401 "data/maps/MtChimney/scripts.pory"
	lock_facing_direction
# 402 "data/maps/MtChimney/scripts.pory"
	walk_fast_left
# 403 "data/maps/MtChimney/scripts.pory"
	unlock_facing_direction
# 404 "data/maps/MtChimney/scripts.pory"
	face_right
# 405 "data/maps/MtChimney/scripts.pory"
	step_end
# 406 "data/maps/MtChimney/scripts.pory"

# 407 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused15:
# 408 "data/maps/MtChimney/scripts.pory"
	walk_left
# 409 "data/maps/MtChimney/scripts.pory"
	walk_in_place_faster_right
# 410 "data/maps/MtChimney/scripts.pory"
	delay_16
# 411 "data/maps/MtChimney/scripts.pory"
	step_end
# 412 "data/maps/MtChimney/scripts.pory"

# 413 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyAquaGrunt1::
# 414 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MagmaOutnumbersUs, MSGBOX_SIGN
# 415 "data/maps/MtChimney/scripts.pory"
	end
# 416 "data/maps/MtChimney/scripts.pory"

# 417 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyAquaGrunt2::
# 418 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_LessHabitatForWaterPokemon, MSGBOX_SIGN
# 419 "data/maps/MtChimney/scripts.pory"
	end
# 420 "data/maps/MtChimney/scripts.pory"

# 421 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyAquaGrunt3::
# 422 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MagmasNameSimilar, MSGBOX_SIGN
# 423 "data/maps/MtChimney/scripts.pory"
	end
# 424 "data/maps/MtChimney/scripts.pory"

# 425 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Tabitha::
# 426 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_TABITHA_MT_CHIMNEY, MtChimney_Text_TabithaIntro, MtChimney_Text_TabithaDefeat
# 427 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_TabithaPostBattle, MSGBOX_AUTOCLOSE
# 428 "data/maps/MtChimney/scripts.pory"
	end
# 429 "data/maps/MtChimney/scripts.pory"

# 430 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Grunt2::
# 431 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_CHIMNEY_2, MtChimney_Text_Grunt2Intro, MtChimney_Text_Grunt2Defeat
# 432 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_Grunt2PostBattle, MSGBOX_AUTOCLOSE
# 433 "data/maps/MtChimney/scripts.pory"
	end
# 434 "data/maps/MtChimney/scripts.pory"

# 435 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt1::
# 436 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_TeamAquaAlwaysMessingWithPlans, MSGBOX_SIGN
# 437 "data/maps/MtChimney/scripts.pory"
	end
# 438 "data/maps/MtChimney/scripts.pory"

# 439 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt2::
# 440 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MeteoritesPackAmazingPower, MSGBOX_SIGN
# 441 "data/maps/MtChimney/scripts.pory"
	end
# 442 "data/maps/MtChimney/scripts.pory"

# 443 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt3::
# 444 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_YouBetterNotMessWithUs, MSGBOX_SIGN
# 445 "data/maps/MtChimney/scripts.pory"
	end
# 446 "data/maps/MtChimney/scripts.pory"

# 447 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt4::
# 448 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_AquasNameSimilar, MSGBOX_SIGN
# 449 "data/maps/MtChimney/scripts.pory"
	end
# 450 "data/maps/MtChimney/scripts.pory"

# 451 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt5::
# 452 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_DouseThemInFire, MSGBOX_SIGN
# 453 "data/maps/MtChimney/scripts.pory"
	end
# 454 "data/maps/MtChimney/scripts.pory"

# 455 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt6::
# 456 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_KeepMakingMoreLand, MSGBOX_SIGN
# 457 "data/maps/MtChimney/scripts.pory"
	end
# 458 "data/maps/MtChimney/scripts.pory"

# 459 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_MagmaPoochyena::
# 460 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_Bufoh, MSGBOX_SIGN
# 461 "data/maps/MtChimney/scripts.pory"
	end
# 462 "data/maps/MtChimney/scripts.pory"

# 463 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_AquaPoochyena::
# 464 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_Bushaa, MSGBOX_SIGN
# 465 "data/maps/MtChimney/scripts.pory"
	end
# 466 "data/maps/MtChimney/scripts.pory"

# 467 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_MeteoriteMachine::
# 468 "data/maps/MtChimney/scripts.pory"
	lockall
# 469 "data/maps/MtChimney/scripts.pory"
	goto_if_unset FLAG_DEFEATED_EVIL_TEAM_MT_CHIMNEY, MtChimney_EventScript_MachineOn
# 470 "data/maps/MtChimney/scripts.pory"
	goto_if_set FLAG_RECEIVED_METEORITE, MtChimney_EventScript_MachineOff
# 471 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_RemoveTheMeteorite, MSGBOX_YESNO
# 472 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MtChimney_EventScript_LeaveMeteoriteAlone
# 473 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_PlayerRemovedMeteorite, MSGBOX_DEFAULT
# 474 "data/maps/MtChimney/scripts.pory"
	giveitem ITEM_METEORITE
# 475 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 476 "data/maps/MtChimney/scripts.pory"
	setflag FLAG_RECEIVED_METEORITE
# 477 "data/maps/MtChimney/scripts.pory"
	releaseall
# 478 "data/maps/MtChimney/scripts.pory"
	end
# 479 "data/maps/MtChimney/scripts.pory"

# 480 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_LeaveMeteoriteAlone::
# 481 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_PlayerLeftMeteorite, MSGBOX_DEFAULT
# 482 "data/maps/MtChimney/scripts.pory"
	releaseall
# 483 "data/maps/MtChimney/scripts.pory"
	end
# 484 "data/maps/MtChimney/scripts.pory"

# 485 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_MachineOff::
# 486 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MachineMakesNoResponse, MSGBOX_DEFAULT
# 487 "data/maps/MtChimney/scripts.pory"
	releaseall
# 488 "data/maps/MtChimney/scripts.pory"
	end
# 489 "data/maps/MtChimney/scripts.pory"

# 490 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_MachineOn::
# 491 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MetoriteFittedOnMachine, MSGBOX_DEFAULT
# 492 "data/maps/MtChimney/scripts.pory"
	releaseall
# 493 "data/maps/MtChimney/scripts.pory"
	end
# 494 "data/maps/MtChimney/scripts.pory"

# 495 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_RouteSign::
# 496 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_RouteSign, MSGBOX_SIGN
# 497 "data/maps/MtChimney/scripts.pory"
	end
# 498 "data/maps/MtChimney/scripts.pory"

# 499 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Shelby::
# 500 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_SHELBY_1, MtChimney_Text_ShelbyIntro, MtChimney_Text_ShelbyDefeat, MtChimney_EventScript_DefeatedShelby
# 501 "data/maps/MtChimney/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 502 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MtChimney_EventScript_RematchShelby
# 503 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_ShelbyPostBattle, MSGBOX_DEFAULT
# 504 "data/maps/MtChimney/scripts.pory"
	release
# 505 "data/maps/MtChimney/scripts.pory"
	end
# 506 "data/maps/MtChimney/scripts.pory"

# 507 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_DefeatedShelby::
# 508 "data/maps/MtChimney/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 509 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 510 "data/maps/MtChimney/scripts.pory"
	@ PokéNav removed msgbox MtChimney_Text_ShelbyRegister, MSGBOX_DEFAULT
# 511 "data/maps/MtChimney/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_SHELBY_1
# 512 "data/maps/MtChimney/scripts.pory"
	release
# 513 "data/maps/MtChimney/scripts.pory"
	end
# 514 "data/maps/MtChimney/scripts.pory"

# 515 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_RematchShelby::
# 516 "data/maps/MtChimney/scripts.pory"
	trainerbattle_rematch TRAINER_SHELBY_1, MtChimney_Text_ShelbyRematchIntro, MtChimney_Text_ShelbyRematchDefeat
# 517 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_ShelbyPostRematch, MSGBOX_AUTOCLOSE
# 518 "data/maps/MtChimney/scripts.pory"
	end
# 519 "data/maps/MtChimney/scripts.pory"

# 520 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Melissa::
# 521 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_MELISSA, MtChimney_Text_MelissaIntro, MtChimney_Text_MelissaDefeat
# 522 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MelissaPostBattle, MSGBOX_AUTOCLOSE
# 523 "data/maps/MtChimney/scripts.pory"
	end
# 524 "data/maps/MtChimney/scripts.pory"

# 525 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Sheila::
# 526 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_SHEILA, MtChimney_Text_SheilaIntro, MtChimney_Text_SheilaDefeat
# 527 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_SheilaPostBattle, MSGBOX_AUTOCLOSE
# 528 "data/maps/MtChimney/scripts.pory"
	end
# 529 "data/maps/MtChimney/scripts.pory"

# 530 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Shirley::
# 531 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_SHIRLEY, MtChimney_Text_ShirleyIntro, MtChimney_Text_ShirleyDefeat
# 532 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_ShirleyPostBattle, MSGBOX_AUTOCLOSE
# 533 "data/maps/MtChimney/scripts.pory"
	end
# 534 "data/maps/MtChimney/scripts.pory"

# 535 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Grunt1::
# 536 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_CHIMNEY_1, MtChimney_Text_Grunt1Intro, MtChimney_Text_Grunt1Defeat
# 537 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_Grunt1PostBattle, MSGBOX_AUTOCLOSE
# 538 "data/maps/MtChimney/scripts.pory"
	end
# 539 "data/maps/MtChimney/scripts.pory"

# 540 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Sawyer::
# 541 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_SAWYER_1, MtChimney_Text_SawyerIntro, MtChimney_Text_SawyerDefeat, MtChimney_EventScript_SawyerDefeated
# 542 "data/maps/MtChimney/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 543 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MtChimney_EventScript_SawyerRematch
# 544 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_SawyerPostBattle, MSGBOX_DEFAULT
# 545 "data/maps/MtChimney/scripts.pory"
	release
# 546 "data/maps/MtChimney/scripts.pory"
	end
# 547 "data/maps/MtChimney/scripts.pory"

# 548 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_SawyerDefeated::
# 549 "data/maps/MtChimney/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 550 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 551 "data/maps/MtChimney/scripts.pory"
	release
# 552 "data/maps/MtChimney/scripts.pory"
	end
# 553 "data/maps/MtChimney/scripts.pory"

# 554 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_SawyerRematch::
# 555 "data/maps/MtChimney/scripts.pory"
	trainerbattle_rematch TRAINER_SAWYER_1, MtChimney_Text_SawyerRematchIntro, MtChimney_Text_SawyerRematchDefeat
# 556 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_SawyerPostRematch, MSGBOX_AUTOCLOSE
# 557 "data/maps/MtChimney/scripts.pory"
	end
# 558 "data/maps/MtChimney/scripts.pory"

# 559 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MeteoriteWillActivateVolcano:
# 560 "data/maps/MtChimney/scripts.pory"
	.string "By amplifying its frequency with this\n"
# 561 "data/maps/MtChimney/scripts.pory"
	.string "machine, we won't just cause an eruption.\l"
# 562 "data/maps/MtChimney/scripts.pory"
	.string "We will trigger a chain reaction.\p"
# 563 "data/maps/MtChimney/scripts.pory"
	.string "MT. CHIMNEY's volcanic activity will\n"
# 564 "data/maps/MtChimney/scripts.pory"
	.string "intensify tenfold. Nature's real power!\p"
# 565 "data/maps/MtChimney/scripts.pory"
	.string "The METEORITE - A fragment of the\n"
# 566 "data/maps/MtChimney/scripts.pory"
	.string "MILLENNIUM COMET, pulsing with ancient\l"
# 567 "data/maps/MtChimney/scripts.pory"
	.string "power. This world has forgotten its nature.$"
# 568 "data/maps/MtChimney/scripts.pory"

# 569 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MaxieIntro:
# 570 "data/maps/MtChimney/scripts.pory"
	.string "MAGNUS: Hm?\n"
# 571 "data/maps/MtChimney/scripts.pory"
	.string "Who are you?\p"
# 572 "data/maps/MtChimney/scripts.pory"
	.string "… … … … … …\n"
# 573 "data/maps/MtChimney/scripts.pory"
	.string "… … … … … …\p"
# 574 "data/maps/MtChimney/scripts.pory"
	.string "I'd heard NEREA bemoaning a child\n"
# 575 "data/maps/MtChimney/scripts.pory"
	.string "who's been meddling in TEAM AQUA's\l"
# 576 "data/maps/MtChimney/scripts.pory"
	.string "affairs.\p"
# 577 "data/maps/MtChimney/scripts.pory"
	.string "It must be you he meant.\p"
# 578 "data/maps/MtChimney/scripts.pory"
	.string "Humph! So you're thinking of\n"
# 579 "data/maps/MtChimney/scripts.pory"
	.string "interfering with us, TEAM MAGMA?\p"
# 580 "data/maps/MtChimney/scripts.pory"
	.string "Now you listen.\n"
# 581 "data/maps/MtChimney/scripts.pory"
	.string "Minerals and ores move this world.\l"
# 582 "data/maps/MtChimney/scripts.pory"
	.string "They build cities and fuel industries.\p"
# 583 "data/maps/MtChimney/scripts.pory"
	.string "That is why what sleeps beneath\n"
# 584 "data/maps/MtChimney/scripts.pory"
	.string "this mountain is all important!\p"
# 585 "data/maps/MtChimney/scripts.pory"
	.string "TEAM MAGMA will awaken these\n"
# 586 "data/maps/MtChimney/scripts.pory"
	.string "volcanoes not for destruction,\l"
# 587 "data/maps/MtChimney/scripts.pory"
	.string "but for extraction.\p"
# 588 "data/maps/MtChimney/scripts.pory"
	.string "The eruptions will fracture the earth,\n"
# 589 "data/maps/MtChimney/scripts.pory"
	.string "exposing veins of rare minerals\l"
# 590 "data/maps/MtChimney/scripts.pory"
	.string "never before seen.\p"
# 591 "data/maps/MtChimney/scripts.pory"
	.string "And when the ash settles...\n"
# 592 "data/maps/MtChimney/scripts.pory"
	.string "the soil will become the richest\l"
# 593 "data/maps/MtChimney/scripts.pory"
	.string "in all of HOENN.\p"
# 594 "data/maps/MtChimney/scripts.pory"
	.string "A new era of resources.\n"
# 595 "data/maps/MtChimney/scripts.pory"
	.string "A new world order.\p"
# 596 "data/maps/MtChimney/scripts.pory"
	.string "Oh! There was no need for you to\n"
# 597 "data/maps/MtChimney/scripts.pory"
	.string "learn that much.\p"
# 598 "data/maps/MtChimney/scripts.pory"
	.string "But, no matter!\n"
# 599 "data/maps/MtChimney/scripts.pory"
	.string "I'll teach you the consequences of\l"
# 600 "data/maps/MtChimney/scripts.pory"
	.string "meddling in our grand design!$"
# 601 "data/maps/MtChimney/scripts.pory"

# 602 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MaxieDefeat:
# 603 "data/maps/MtChimney/scripts.pory"
	.string "What?!\p"
# 604 "data/maps/MtChimney/scripts.pory"
	.string "I, MAGNUS, was caught off guard?!\n"
# 605 "data/maps/MtChimney/scripts.pory"
	.string "This changes nothing.\p"
# 606 "data/maps/MtChimney/scripts.pory"
	.string "The tectonic shift is inevitable.\n"
# 607 "data/maps/MtChimney/scripts.pory"
	.string "You've only delayed progress.$"
# 608 "data/maps/MtChimney/scripts.pory"

# 609 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MaxieYouHaventSeenLastOfMagma:
# 610 "data/maps/MtChimney/scripts.pory"
	.string "MAGNUS: But, enough.\n"
# 611 "data/maps/MtChimney/scripts.pory"
	.string "I will back off this time.\p"
# 612 "data/maps/MtChimney/scripts.pory"
	.string "But don't think that this is the last\n"
# 613 "data/maps/MtChimney/scripts.pory"
	.string "you've seen of TEAM MAGMA.\p"
# 614 "data/maps/MtChimney/scripts.pory"
	.string "Fufufu…\p"
# 615 "data/maps/MtChimney/scripts.pory"
	.string "Even without the METEORITE, if we\n"
# 616 "data/maps/MtChimney/scripts.pory"
	.string "obtain that ORB… Fufufu…\p"
# 617 "data/maps/MtChimney/scripts.pory"
	.string "The revolution cannot be stopped.$"
# 618 "data/maps/MtChimney/scripts.pory"

# 619 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_TabithaIntro:
# 620 "data/maps/MtChimney/scripts.pory"
	.string "Netsu: Hehehe!\p"
# 621 "data/maps/MtChimney/scripts.pory"
	.string "So you're the weirdo everyone's been\n"
# 622 "data/maps/MtChimney/scripts.pory"
	.string "whispering about!\p"
# 623 "data/maps/MtChimney/scripts.pory"
	.string "I heard some brat in a cape has been\n"
# 624 "data/maps/MtChimney/scripts.pory"
	.string "playing hero and actually managed to\l"
# 625 "data/maps/MtChimney/scripts.pory"
	.string "beat that scumbag Alejandro from\l"
# 626 "data/maps/MtChimney/scripts.pory"
	.string "that damn annoying TEAM AQUA!\p"
# 627 "data/maps/MtChimney/scripts.pory"
	.string "That weird rich boy is my rival,\n"
# 628 "data/maps/MtChimney/scripts.pory"
	.string "and I can't stand him!\l"
# 629 "data/maps/MtChimney/scripts.pory"
	.string "That spoiled boy! I hate Alejandro!\p"
# 630 "data/maps/MtChimney/scripts.pory"
	.string "Anyway...\n"
# 631 "data/maps/MtChimney/scripts.pory"
	.string "Why are you so interested in poking\l"
# 632 "data/maps/MtChimney/scripts.pory"
	.string "your nose into our revolution?\p"
# 633 "data/maps/MtChimney/scripts.pory"
	.string "You don't understand the importance\n"
# 634 "data/maps/MtChimney/scripts.pory"
	.string "of the power we want to have!\p"
# 635 "data/maps/MtChimney/scripts.pory"
	.string "But whatever...\n"
# 636 "data/maps/MtChimney/scripts.pory"
	.string "I'm gonna crush you here,\l"
# 637 "data/maps/MtChimney/scripts.pory"
	.string "and then you're going to get lost!$"
# 638 "data/maps/MtChimney/scripts.pory"

# 639 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_TabithaDefeat:
# 640 "data/maps/MtChimney/scripts.pory"
	.string "Netsu: Hehehe…\p"
# 641 "data/maps/MtChimney/scripts.pory"
	.string "Tch…\n"
# 642 "data/maps/MtChimney/scripts.pory"
	.string "So what if I lost this battle?\p"
# 643 "data/maps/MtChimney/scripts.pory"
	.string "The revolution's plan is bigger than\n"
# 644 "data/maps/MtChimney/scripts.pory"
	.string "you, bigger than me, bigger than this\l"
# 645 "data/maps/MtChimney/scripts.pory"
	.string "stupid mountain!\p"
# 646 "data/maps/MtChimney/scripts.pory"
	.string "I already did what needed to be done.\n"
# 647 "data/maps/MtChimney/scripts.pory"
	.string "The METEORITE is in place.\l"
# 648 "data/maps/MtChimney/scripts.pory"
	.string "The machine is ready.\p"
# 649 "data/maps/MtChimney/scripts.pory"
	.string "The plan moves forward...\n"
# 650 "data/maps/MtChimney/scripts.pory"
	.string "whether you like it or not.\p"
# 651 "data/maps/MtChimney/scripts.pory"
	.string "Hehehe…\n"
# 652 "data/maps/MtChimney/scripts.pory"
	.string "Enjoy your little victory, hero.\l"
# 653 "data/maps/MtChimney/scripts.pory"
	.string "It won't last!$"
# 654 "data/maps/MtChimney/scripts.pory"

# 655 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_TabithaPostBattle:
# 656 "data/maps/MtChimney/scripts.pory"
	.string "Netsu: BOSS! Now!\n"
# 657 "data/maps/MtChimney/scripts.pory"
	.string "Hit it with the METEORITE's energy!\p"
# 658 "data/maps/MtChimney/scripts.pory"
	.string "Hehehe…\n"
# 659 "data/maps/MtChimney/scripts.pory"
	.string "Let those AQUA scum choke on our ash!\p"
# 660 "data/maps/MtChimney/scripts.pory"
	.string "And you, kid...\n"
# 661 "data/maps/MtChimney/scripts.pory"
	.string "You'd better run while you still can.$"
# 662 "data/maps/MtChimney/scripts.pory"

# 663 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt2Intro:
# 664 "data/maps/MtChimney/scripts.pory"
	.string "We of TEAM MAGMA are working hard for\n"
# 665 "data/maps/MtChimney/scripts.pory"
	.string "everyone's sake.\p"
# 666 "data/maps/MtChimney/scripts.pory"
	.string "You think resources appear by magic?\n"
# 667 "data/maps/MtChimney/scripts.pory"
	.string "They're extracted. Refined. Controlled.\p"
# 668 "data/maps/MtChimney/scripts.pory"
	.string "We'll control them all.\n"
# 669 "data/maps/MtChimney/scripts.pory"
	.string "Everyone will pay our price.$"
# 670 "data/maps/MtChimney/scripts.pory"

# 671 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt2Defeat:
# 672 "data/maps/MtChimney/scripts.pory"
	.string "Hunh?\n"
# 673 "data/maps/MtChimney/scripts.pory"
	.string "What do you mean I lost?\p"
# 674 "data/maps/MtChimney/scripts.pory"
	.string "The minerals… the market…\n"
# 675 "data/maps/MtChimney/scripts.pory"
	.string "This battle means nothing!$"
# 676 "data/maps/MtChimney/scripts.pory"

# 677 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt2PostBattle:
# 678 "data/maps/MtChimney/scripts.pory"
	.string "Our BOSS says, “It will make everyone\n"
# 679 "data/maps/MtChimney/scripts.pory"
	.string "happy.”\p"
# 680 "data/maps/MtChimney/scripts.pory"
	.string "But why does everyone keep getting\n"
# 681 "data/maps/MtChimney/scripts.pory"
	.string "in our way?\p"
# 682 "data/maps/MtChimney/scripts.pory"
	.string "Don't they understand?\n"
# 683 "data/maps/MtChimney/scripts.pory"
	.string "Happiness is a product.\l"
# 684 "data/maps/MtChimney/scripts.pory"
	.string "And we'll be the only suppliers.$"
# 685 "data/maps/MtChimney/scripts.pory"

# 686 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt1Intro:
# 687 "data/maps/MtChimney/scripts.pory"
	.string "If there were more land, I'd be able\n"
# 688 "data/maps/MtChimney/scripts.pory"
	.string "to get a big house of my own!\p"
# 689 "data/maps/MtChimney/scripts.pory"
	.string "I'm going to build it on hardened lava!\p"
# 690 "data/maps/MtChimney/scripts.pory"
	.string "And charge rent to all those\n"
# 691 "data/maps/MtChimney/scripts.pory"
	.string "who doubted our vision!$"
# 692 "data/maps/MtChimney/scripts.pory"

# 693 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt1Defeat:
# 694 "data/maps/MtChimney/scripts.pory"
	.string "My dream of a big house…\n"
# 695 "data/maps/MtChimney/scripts.pory"
	.string "And the passive income… gone…$"
# 696 "data/maps/MtChimney/scripts.pory"

# 697 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt1PostBattle:
# 698 "data/maps/MtChimney/scripts.pory"
	.string "A kid like you, you ought to be\n"
# 699 "data/maps/MtChimney/scripts.pory"
	.string "splashing about in the waves!\p"
# 700 "data/maps/MtChimney/scripts.pory"
	.string "While we adults reshape continents\n"
# 701 "data/maps/MtChimney/scripts.pory"
	.string "and rewrite economies.$"
# 702 "data/maps/MtChimney/scripts.pory"

# 703 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_TeamAquaAlwaysMessingWithPlans:
# 704 "data/maps/MtChimney/scripts.pory"
	.string "That annoying TEAM AQUA…\n"
# 705 "data/maps/MtChimney/scripts.pory"
	.string "They always mess with our plans!\p"
# 706 "data/maps/MtChimney/scripts.pory"
	.string "They defend their precious seas\n"
# 707 "data/maps/MtChimney/scripts.pory"
	.string "while we build the future.$"
# 708 "data/maps/MtChimney/scripts.pory"

# 709 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MeteoritesPackAmazingPower:
# 710 "data/maps/MtChimney/scripts.pory"
	.string "METEORITES pack amazing power!\p"
# 711 "data/maps/MtChimney/scripts.pory"
	.string "The MILLENNIUM COMET's fragments\n"
# 712 "data/maps/MtChimney/scripts.pory"
	.string "could fuel HOENN for centuries.\p"
# 713 "data/maps/MtChimney/scripts.pory"
	.string "And we'll control every joule.$"
# 714 "data/maps/MtChimney/scripts.pory"

# 715 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_YouBetterNotMessWithUs:
# 716 "data/maps/MtChimney/scripts.pory"
	.string "You'd better not mess with us!\p"
# 717 "data/maps/MtChimney/scripts.pory"
	.string "We're trying to awaken that thing\n"
# 718 "data/maps/MtChimney/scripts.pory"
	.string "for the benefit of everyone!\p"
# 719 "data/maps/MtChimney/scripts.pory"
	.string "Whether they want it or not.$"
# 720 "data/maps/MtChimney/scripts.pory"

# 721 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_AquasNameSimilar:
# 722 "data/maps/MtChimney/scripts.pory"
	.string "We're TEAM MAGMA!\p"
# 723 "data/maps/MtChimney/scripts.pory"
	.string "They're TEAM AQUA!\p"
# 724 "data/maps/MtChimney/scripts.pory"
	.string "They're just greedy pigs!\n"
# 725 "data/maps/MtChimney/scripts.pory"
	.string "Blinded by their own selfishness.\p"
# 726 "data/maps/MtChimney/scripts.pory"
	.string "Our plan... it's a beautiful revolution.\n"
# 727 "data/maps/MtChimney/scripts.pory"
	.string "At the price of some sacrifices,\l"
# 728 "data/maps/MtChimney/scripts.pory"
	.string "it will save so many.\p"
# 729 "data/maps/MtChimney/scripts.pory"
	.string "The land will flourish.\n"
# 730 "data/maps/MtChimney/scripts.pory"
	.string "Resources for all.\p"
# 731 "data/maps/MtChimney/scripts.pory"
	.string "You wouldn't understand...\n"
# 732 "data/maps/MtChimney/scripts.pory"
	.string "You're just like them.$"
# 733 "data/maps/MtChimney/scripts.pory"

# 734 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_DouseThemInFire:
# 735 "data/maps/MtChimney/scripts.pory"
	.string "Yeah! Ha Ha Ha!\n"
# 736 "data/maps/MtChimney/scripts.pory"
	.string "Douse them in fire!\p"
# 737 "data/maps/MtChimney/scripts.pory"
	.string "Let them swim in our molten future!$"
# 738 "data/maps/MtChimney/scripts.pory"

# 739 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_KeepMakingMoreLand:
# 740 "data/maps/MtChimney/scripts.pory"
	.string "We're going to keep making more land!\p"
# 741 "data/maps/MtChimney/scripts.pory"
	.string "More land means more mines.\n"
# 742 "data/maps/MtChimney/scripts.pory"
	.string "More mines means more wealth.\l"
# 743 "data/maps/MtChimney/scripts.pory"
	.string "More wealth means more power.$"
# 744 "data/maps/MtChimney/scripts.pory"

# 745 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Bufoh:
# 746 "data/maps/MtChimney/scripts.pory"
	.string "Bufoh!$"
# 747 "data/maps/MtChimney/scripts.pory"

# 748 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ArchieGoStopTeamMagma:
# 749 "data/maps/MtChimney/scripts.pory"
	.string "NEREA: Grr, {PLAYER}!\n"
# 750 "data/maps/MtChimney/scripts.pory"
	.string "I should've guessed you'd show up!\p"
# 751 "data/maps/MtChimney/scripts.pory"
	.string "See for yourself what the fanatics\n"
# 752 "data/maps/MtChimney/scripts.pory"
	.string "of TEAM MAGMA are up to!\p"
# 753 "data/maps/MtChimney/scripts.pory"
	.string "They're trying to inject the stolen\n"
# 754 "data/maps/MtChimney/scripts.pory"
	.string "METEORITE's power into the volcano!\p"
# 755 "data/maps/MtChimney/scripts.pory"
	.string "Doing something like that will cause\n"
# 756 "data/maps/MtChimney/scripts.pory"
	.string "the volcano's eruption!\p"
# 757 "data/maps/MtChimney/scripts.pory"
	.string "And when the tectonic plates shift...\n"
# 758 "data/maps/MtChimney/scripts.pory"
	.string "our coastlines. Our territories.\l"
# 759 "data/maps/MtChimney/scripts.pory"
	.string "Everything we've built. Gone.$"
# 760 "data/maps/MtChimney/scripts.pory"

# 761 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ArchieIHaveMyHandsFull:
# 762 "data/maps/MtChimney/scripts.pory"
	.string "NEREA: Grrr…\p"
# 763 "data/maps/MtChimney/scripts.pory"
	.string "I want to stop that MAGNUS,\n"
# 764 "data/maps/MtChimney/scripts.pory"
	.string "but I can't!\p"
# 765 "data/maps/MtChimney/scripts.pory"
	.string "Not when I have my hands full battling\n"
# 766 "data/maps/MtChimney/scripts.pory"
	.string "three opponents at once!\p"
# 767 "data/maps/MtChimney/scripts.pory"
	.string "… … … … … …\n"
# 768 "data/maps/MtChimney/scripts.pory"
	.string "… … … … … …\p"
# 769 "data/maps/MtChimney/scripts.pory"
	.string "You?\n"
# 770 "data/maps/MtChimney/scripts.pory"
	.string "The one who tried to stop us before?\p"
# 771 "data/maps/MtChimney/scripts.pory"
	.string "Hahahahahaha!\p"
# 772 "data/maps/MtChimney/scripts.pory"
	.string "Ambition drives humans to terrible\n"
# 773 "data/maps/MtChimney/scripts.pory"
	.string "places, doesn't it?\p"
# 774 "data/maps/MtChimney/scripts.pory"
	.string "That madman MAGNUS will reshape all\n"
# 775 "data/maps/MtChimney/scripts.pory"
	.string "of HOENN with his volcanic greed.\p"
# 776 "data/maps/MtChimney/scripts.pory"
	.string "The tectonic shift alone...\n"
# 777 "data/maps/MtChimney/scripts.pory"
	.string "entire coastlines will collapse.\p"
# 778 "data/maps/MtChimney/scripts.pory"
	.string "Irony of ironies...\p"
# 779 "data/maps/MtChimney/scripts.pory"
	.string "For now... we need to ally.\n"
# 780 "data/maps/MtChimney/scripts.pory"
	.string "You'll help TEAM AQUA.\p"
# 781 "data/maps/MtChimney/scripts.pory"
	.string "Just a pawn...\n"
# 782 "data/maps/MtChimney/scripts.pory"
	.string "but a useful one, kid!$"
# 783 "data/maps/MtChimney/scripts.pory"

# 784 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ArchieThankYou:
# 785 "data/maps/MtChimney/scripts.pory"
	.string "NEREA: {PLAYER}!\n"
# 786 "data/maps/MtChimney/scripts.pory"
	.string "Thank you!\p"
# 787 "data/maps/MtChimney/scripts.pory"
	.string "With your help, we thwarted TEAM\n"
# 788 "data/maps/MtChimney/scripts.pory"
	.string "MAGMA's destructive plan!\p"
# 789 "data/maps/MtChimney/scripts.pory"
	.string "But… You…\n"
# 790 "data/maps/MtChimney/scripts.pory"
	.string "Whose side are you on?\p"
# 791 "data/maps/MtChimney/scripts.pory"
	.string "Don't think for a moment that you're\n"
# 792 "data/maps/MtChimney/scripts.pory"
	.string "more than just a pawn in this.\p"
# 793 "data/maps/MtChimney/scripts.pory"
	.string "You have no idea the importance of\n"
# 794 "data/maps/MtChimney/scripts.pory"
	.string "the revolution that is coming.\p"
# 795 "data/maps/MtChimney/scripts.pory"
	.string "A revolution that will save the world,\n"
# 796 "data/maps/MtChimney/scripts.pory"
	.string "whether you understand it or not.\p"
# 797 "data/maps/MtChimney/scripts.pory"
	.string "You need to choose a side.\n"
# 798 "data/maps/MtChimney/scripts.pory"
	.string "The fence you're sitting on...\l"
# 799 "data/maps/MtChimney/scripts.pory"
	.string "it will collapse beneath you.\p"
# 800 "data/maps/MtChimney/scripts.pory"
	.string "{PLAYER}, we shall meet again!\n"
# 801 "data/maps/MtChimney/scripts.pory"
	.string "And next time... choose wisely.$"
# 802 "data/maps/MtChimney/scripts.pory"

# 803 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MagmaOutnumbersUs:
# 804 "data/maps/MtChimney/scripts.pory"
	.string "Darn… TEAM MAGMA outnumbers us!\n"
# 805 "data/maps/MtChimney/scripts.pory"
	.string "We can't keep up with them!\p"
# 806 "data/maps/MtChimney/scripts.pory"
	.string "Their corporate sponsors must be\n"
# 807 "data/maps/MtChimney/scripts.pory"
	.string "funding this whole operation.$"
# 808 "data/maps/MtChimney/scripts.pory"

# 809 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_LessHabitatForWaterPokemon:
# 810 "data/maps/MtChimney/scripts.pory"
	.string "If they expand the land, there'll be\n"
# 811 "data/maps/MtChimney/scripts.pory"
	.string "less habitats for WATER POKéMON!\p"
# 812 "data/maps/MtChimney/scripts.pory"
	.string "But worse... shipping routes.\n"
# 813 "data/maps/MtChimney/scripts.pory"
	.string "Trade harbors. Our entire economy.\l"
# 814 "data/maps/MtChimney/scripts.pory"
	.string "All built on the coastlines.$"
# 815 "data/maps/MtChimney/scripts.pory"

# 816 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MagmasNameSimilar:
# 817 "data/maps/MtChimney/scripts.pory"
	.string "We're TEAM AQUA!\p"
# 818 "data/maps/MtChimney/scripts.pory"
	.string "They're TEAM MAGMA!\p"
# 819 "data/maps/MtChimney/scripts.pory"
	.string "It burns me up that they'd use such\n"
# 820 "data/maps/MtChimney/scripts.pory"
	.string "a confusing name!\p"
# 821 "data/maps/MtChimney/scripts.pory"
	.string "We protect the seas.\n"
# 822 "data/maps/MtChimney/scripts.pory"
	.string "They exploit the earth.\l"
# 823 "data/maps/MtChimney/scripts.pory"
	.string "The difference is clear.$"
# 824 "data/maps/MtChimney/scripts.pory"

# 825 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Bushaa:
# 826 "data/maps/MtChimney/scripts.pory"
	.string "Bushaa!$"
# 827 "data/maps/MtChimney/scripts.pory"

# 828 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_LavaCookiesJust200:
# 829 "data/maps/MtChimney/scripts.pory"
	.string "LAVA COOKIES are MT. CHIMNEY's local\n"
# 830 "data/maps/MtChimney/scripts.pory"
	.string "specialty.\p"
# 831 "data/maps/MtChimney/scripts.pory"
	.string "Try one. It's just ¥200.\p"
# 832 "data/maps/MtChimney/scripts.pory"
	.string "Baked with the same geothermal heat\n"
# 833 "data/maps/MtChimney/scripts.pory"
	.string "that MAGMA wants to weaponize.$"
# 834 "data/maps/MtChimney/scripts.pory"

# 835 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ThankYouDear:
# 836 "data/maps/MtChimney/scripts.pory"
	.string "Thank you, dear!\n"
# 837 "data/maps/MtChimney/scripts.pory"
	.string "Enjoy the warmth!$"
# 838 "data/maps/MtChimney/scripts.pory"

# 839 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_YouveNotGotTheMoney:
# 840 "data/maps/MtChimney/scripts.pory"
	.string "Oh, dear. You can't buy a thing if\n"
# 841 "data/maps/MtChimney/scripts.pory"
	.string "you've not got the money.\p"
# 842 "data/maps/MtChimney/scripts.pory"
	.string "That's how the world works, child.$"
# 843 "data/maps/MtChimney/scripts.pory"

# 844 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_OhFineThen:
# 845 "data/maps/MtChimney/scripts.pory"
	.string "Oh, fine then.\n"
# 846 "data/maps/MtChimney/scripts.pory"
	.string "Come back when you can afford it.$"
# 847 "data/maps/MtChimney/scripts.pory"

# 848 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MetoriteFittedOnMachine:
# 849 "data/maps/MtChimney/scripts.pory"
	.string "A METEORITE is fitted on a mysterious\n"
# 850 "data/maps/MtChimney/scripts.pory"
	.string "machine…\p"
# 851 "data/maps/MtChimney/scripts.pory"
	.string "The machine seems to be storing\n"
# 852 "data/maps/MtChimney/scripts.pory"
	.string "energy in the METEORITE.\p"
# 853 "data/maps/MtChimney/scripts.pory"
	.string "It hums with geological potential.$"
# 854 "data/maps/MtChimney/scripts.pory"

# 855 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_RemoveTheMeteorite:
# 856 "data/maps/MtChimney/scripts.pory"
	.string "A METEORITE is fitted on a mysterious\n"
# 857 "data/maps/MtChimney/scripts.pory"
	.string "machine…\p"
# 858 "data/maps/MtChimney/scripts.pory"
	.string "Do you want to remove the METEORITE?\p"
# 859 "data/maps/MtChimney/scripts.pory"
	.string "One small act that could delay\n"
# 860 "data/maps/MtChimney/scripts.pory"
	.string "a continental revolution.$"
# 861 "data/maps/MtChimney/scripts.pory"

# 862 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_PlayerRemovedMeteorite:
# 863 "data/maps/MtChimney/scripts.pory"
	.string "{PLAYER} removed the METEORITE from\n"
# 864 "data/maps/MtChimney/scripts.pory"
	.string "the mysterious machine.\p"
# 865 "data/maps/MtChimney/scripts.pory"
	.string "For now... HOENN is safe.$"
# 866 "data/maps/MtChimney/scripts.pory"

# 867 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_PlayerLeftMeteorite:
# 868 "data/maps/MtChimney/scripts.pory"
	.string "{PLAYER} left the METEORITE where\n"
# 869 "data/maps/MtChimney/scripts.pory"
	.string "it was.\p"
# 870 "data/maps/MtChimney/scripts.pory"
	.string "The machine continues its work.\n"
# 871 "data/maps/MtChimney/scripts.pory"
	.string "The countdown continues.$"
# 872 "data/maps/MtChimney/scripts.pory"

# 873 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MachineMakesNoResponse:
# 874 "data/maps/MtChimney/scripts.pory"
	.string "This mysterious machine…\n"
# 875 "data/maps/MtChimney/scripts.pory"
	.string "It makes no response whatsoever.\p"
# 876 "data/maps/MtChimney/scripts.pory"
	.string "Perhaps it only answers to those\n"
# 877 "data/maps/MtChimney/scripts.pory"
	.string "with the ambition to use it.$"
# 878 "data/maps/MtChimney/scripts.pory"

# 879 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_RouteSign:
# 880 "data/maps/MtChimney/scripts.pory"
	.string "{DOWN_ARROW} JAGGED PATH\n"
# 881 "data/maps/MtChimney/scripts.pory"
	.string "LAVARIDGE TOWN AHEAD\p"
# 882 "data/maps/MtChimney/scripts.pory"
	.string "MT. CHIMNEY - Where the future\n"
# 883 "data/maps/MtChimney/scripts.pory"
	.string "of HOENN will be decided.$"
# 884 "data/maps/MtChimney/scripts.pory"

# 885 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyIntro:
# 886 "data/maps/MtChimney/scripts.pory"
	.string "I've been to the hot springs and\n"
# 887 "data/maps/MtChimney/scripts.pory"
	.string "refreshed my tired bones.\l"
# 888 "data/maps/MtChimney/scripts.pory"
	.string "Right now I'm feeling strong!\p"
# 889 "data/maps/MtChimney/scripts.pory"
	.string "Unlike those MAGMA fools who think\n"
# 890 "data/maps/MtChimney/scripts.pory"
	.string "they can move mountains.$"
# 891 "data/maps/MtChimney/scripts.pory"

# 892 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyDefeat:
# 893 "data/maps/MtChimney/scripts.pory"
	.string "Oh, my goodness.\n"
# 894 "data/maps/MtChimney/scripts.pory"
	.string "Now, aren't you something!$"
# 895 "data/maps/MtChimney/scripts.pory"

# 896 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyPostBattle:
# 897 "data/maps/MtChimney/scripts.pory"
	.string "Well, well, I've lost. I can't call\n"
# 898 "data/maps/MtChimney/scripts.pory"
	.string "myself an EXPERT now, can I?\p"
# 899 "data/maps/MtChimney/scripts.pory"
	.string "But some things never change.\n"
# 900 "data/maps/MtChimney/scripts.pory"
	.string "The mountain still stands.\l"
# 901 "data/maps/MtChimney/scripts.pory"
	.string "For now.$"
# 902 "data/maps/MtChimney/scripts.pory"

# 903 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyRegister:
# 904 "data/maps/MtChimney/scripts.pory"
	.string "Thank you, child. It was fun, as if\n"
# 905 "data/maps/MtChimney/scripts.pory"
	.string "I were battling my own grandchild.\p"
# 906 "data/maps/MtChimney/scripts.pory"
	.string "Please, come see me again for\n"
# 907 "data/maps/MtChimney/scripts.pory"
	.string "a rematch.\p"
# 908 "data/maps/MtChimney/scripts.pory"
	.string "Before the world ends, perhaps.$"
# 909 "data/maps/MtChimney/scripts.pory"

# 910 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyRematchIntro:
# 911 "data/maps/MtChimney/scripts.pory"
	.string "If you can mesh your heart with those\n"
# 912 "data/maps/MtChimney/scripts.pory"
	.string "of your POKéMON, why, you should be\l"
# 913 "data/maps/MtChimney/scripts.pory"
	.string "able to achieve great things.\p"
# 914 "data/maps/MtChimney/scripts.pory"
	.string "Greater than these fools who\n"
# 915 "data/maps/MtChimney/scripts.pory"
	.string "worship minerals and tides.$"
# 916 "data/maps/MtChimney/scripts.pory"

# 917 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyRematchDefeat:
# 918 "data/maps/MtChimney/scripts.pory"
	.string "Oh, my goodness.\n"
# 919 "data/maps/MtChimney/scripts.pory"
	.string "Now, aren't you something!$"
# 920 "data/maps/MtChimney/scripts.pory"

# 921 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyPostRematch:
# 922 "data/maps/MtChimney/scripts.pory"
	.string "Perhaps your heart has become one\n"
# 923 "data/maps/MtChimney/scripts.pory"
	.string "with the hearts of your POKéMON.\p"
# 924 "data/maps/MtChimney/scripts.pory"
	.string "That's something no revolution\n"
# 925 "data/maps/MtChimney/scripts.pory"
	.string "can take from you.$"
# 926 "data/maps/MtChimney/scripts.pory"

# 927 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MelissaIntro:
# 928 "data/maps/MtChimney/scripts.pory"
	.string "I've got the fire in me, baby.\n"
# 929 "data/maps/MtChimney/scripts.pory"
	.string "I can't stand it! I have to battle!\p"
# 930 "data/maps/MtChimney/scripts.pory"
	.string "Unlike those MAGMA creeps who want\n"
# 931 "data/maps/MtChimney/scripts.pory"
	.string "to bottle it and sell it!$"
# 932 "data/maps/MtChimney/scripts.pory"

# 933 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MelissaDefeat:
# 934 "data/maps/MtChimney/scripts.pory"
	.string "Ooh, that was a scorching-hot match!$"
# 935 "data/maps/MtChimney/scripts.pory"

# 936 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MelissaPostBattle:
# 937 "data/maps/MtChimney/scripts.pory"
	.string "The heat of MT. CHIMNEY warms\n"
# 938 "data/maps/MtChimney/scripts.pory"
	.string "me up, baby!\p"
# 939 "data/maps/MtChimney/scripts.pory"
	.string "Let them try to control it.\n"
# 940 "data/maps/MtChimney/scripts.pory"
	.string "Nature always wins.$"
# 941 "data/maps/MtChimney/scripts.pory"

# 942 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SheilaIntro:
# 943 "data/maps/MtChimney/scripts.pory"
	.string "I've finally made it to MT. CHIMNEY.\n"
# 944 "data/maps/MtChimney/scripts.pory"
	.string "I want to make my POKéMON battle!\p"
# 945 "data/maps/MtChimney/scripts.pory"
	.string "They say MAGMA wants to trigger\n"
# 946 "data/maps/MtChimney/scripts.pory"
	.string "an eruption.\p"
# 947 "data/maps/MtChimney/scripts.pory"
	.string "Let's give them an eruption\n"
# 948 "data/maps/MtChimney/scripts.pory"
	.string "of their own!$"
# 949 "data/maps/MtChimney/scripts.pory"

# 950 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SheilaDefeat:
# 951 "data/maps/MtChimney/scripts.pory"
	.string "The way you battle…\n"
# 952 "data/maps/MtChimney/scripts.pory"
	.string "It's like a MT. CHIMNEY eruption!$"
# 953 "data/maps/MtChimney/scripts.pory"

# 954 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SheilaPostBattle:
# 955 "data/maps/MtChimney/scripts.pory"
	.string "Like I said, I've finally made it to\n"
# 956 "data/maps/MtChimney/scripts.pory"
	.string "MT. CHIMNEY. It would be a shame if\l"
# 957 "data/maps/MtChimney/scripts.pory"
	.string "I only do a little sightseeing…\p"
# 958 "data/maps/MtChimney/scripts.pory"
	.string "I want to get in some battles and buy\n"
# 959 "data/maps/MtChimney/scripts.pory"
	.string "COOKIES as souvenirs.\p"
# 960 "data/maps/MtChimney/scripts.pory"
	.string "Before MAGMA turns it all to ash.$"
# 961 "data/maps/MtChimney/scripts.pory"

# 962 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShirleyIntro:
# 963 "data/maps/MtChimney/scripts.pory"
	.string "Since I bathed in the hot springs,\n"
# 964 "data/maps/MtChimney/scripts.pory"
	.string "I've been feeling great!\l"
# 965 "data/maps/MtChimney/scripts.pory"
	.string "I'm sure I'm going to win!\p"
# 966 "data/maps/MtChimney/scripts.pory"
	.string "Those MAGMA grunts look tense.\n"
# 967 "data/maps/MtChimney/scripts.pory"
	.string "They should try the springs.$"
# 968 "data/maps/MtChimney/scripts.pory"

# 969 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShirleyDefeat:
# 970 "data/maps/MtChimney/scripts.pory"
	.string "Yowch!\n"
# 971 "data/maps/MtChimney/scripts.pory"
	.string "I'm getting a chill out of the water.$"
# 972 "data/maps/MtChimney/scripts.pory"

# 973 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShirleyPostBattle:
# 974 "data/maps/MtChimney/scripts.pory"
	.string "I'll have to take another dip in the\n"
# 975 "data/maps/MtChimney/scripts.pory"
	.string "hot springs. Want to join me?\p"
# 976 "data/maps/MtChimney/scripts.pory"
	.string "Just joking!\p"
# 977 "data/maps/MtChimney/scripts.pory"
	.string "But seriously... if they blow this\n"
# 978 "data/maps/MtChimney/scripts.pory"
	.string "mountain, the springs go with it.$"
# 979 "data/maps/MtChimney/scripts.pory"

# 980 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerIntro:
# 981 "data/maps/MtChimney/scripts.pory"
	.string "This is one fine mountain! Plenty of\n"
# 982 "data/maps/MtChimney/scripts.pory"
	.string "hot people around for company!\p"
# 983 "data/maps/MtChimney/scripts.pory"
	.string "And plenty of cold-hearted fanatics\n"
# 984 "data/maps/MtChimney/scripts.pory"
	.string "trying to ruin it all.$"
# 985 "data/maps/MtChimney/scripts.pory"

# 986 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerDefeat:
# 987 "data/maps/MtChimney/scripts.pory"
	.string "Oh, you're a real firebrand, too!$"
# 988 "data/maps/MtChimney/scripts.pory"

# 989 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerPostBattle:
# 990 "data/maps/MtChimney/scripts.pory"
	.string "I think I need a dip in LAVARIDGE\n"
# 991 "data/maps/MtChimney/scripts.pory"
	.string "HOT SPRING with the locals!\p"
# 992 "data/maps/MtChimney/scripts.pory"
	.string "Before it becomes a crater.$"
# 993 "data/maps/MtChimney/scripts.pory"

# 994 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerRegister:
# 995 "data/maps/MtChimney/scripts.pory"
	.string "I like little fireballs like you.\n"
# 996 "data/maps/MtChimney/scripts.pory"
	.string "Let me register you in my POKéNAV.\p"
# 997 "data/maps/MtChimney/scripts.pory"
	.string "Someone needs to keep an eye on\n"
# 998 "data/maps/MtChimney/scripts.pory"
	.string "these extremists.$"
# 999 "data/maps/MtChimney/scripts.pory"

# 1000 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerRematchIntro:
# 1001 "data/maps/MtChimney/scripts.pory"
	.string "I'm happily surrounded by hot people\n"
# 1002 "data/maps/MtChimney/scripts.pory"
	.string "around these parts. I won't lose!\p"
# 1003 "data/maps/MtChimney/scripts.pory"
	.string "MAGMA thinks they own this mountain.\n"
# 1004 "data/maps/MtChimney/scripts.pory"
	.string "Let's remind them who really does.$"
# 1005 "data/maps/MtChimney/scripts.pory"

# 1006 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerRematchDefeat:
# 1007 "data/maps/MtChimney/scripts.pory"
	.string "Gosh, you're still the same\n"
# 1008 "data/maps/MtChimney/scripts.pory"
	.string "firebrand as before!$"
# 1009 "data/maps/MtChimney/scripts.pory"

# 1010 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerPostRematch:
# 1011 "data/maps/MtChimney/scripts.pory"
	.string "Actually, it really is hot here.\n"
# 1012 "data/maps/MtChimney/scripts.pory"
	.string "I'm overdressed for these parts.\p"
# 1013 "data/maps/MtChimney/scripts.pory"
	.string "But not as overdressed as MAGMA\n"
# 1014 "data/maps/MtChimney/scripts.pory"
	.string "in their delusions of grandeur.$"
