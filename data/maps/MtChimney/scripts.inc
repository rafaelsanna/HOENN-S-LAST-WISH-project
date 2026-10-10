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
	walk_up
# 191 "data/maps/MtChimney/scripts.pory"
	walk_up
# 192 "data/maps/MtChimney/scripts.pory"
	walk_up
# 193 "data/maps/MtChimney/scripts.pory"
	walk_up
# 194 "data/maps/MtChimney/scripts.pory"
	walk_right
# 195 "data/maps/MtChimney/scripts.pory"
	face_right
# 196 "data/maps/MtChimney/scripts.pory"
	step_end
# 197 "data/maps/MtChimney/scripts.pory"

# 198 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_ArchieExitNorth:
# 199 "data/maps/MtChimney/scripts.pory"
	walk_left
# 200 "data/maps/MtChimney/scripts.pory"
	walk_down
# 201 "data/maps/MtChimney/scripts.pory"
	walk_down
# 202 "data/maps/MtChimney/scripts.pory"
	walk_down
# 203 "data/maps/MtChimney/scripts.pory"
	walk_down
# 204 "data/maps/MtChimney/scripts.pory"
	walk_down
# 205 "data/maps/MtChimney/scripts.pory"
	walk_down
# 206 "data/maps/MtChimney/scripts.pory"
	walk_down
# 207 "data/maps/MtChimney/scripts.pory"
	step_end
# 208 "data/maps/MtChimney/scripts.pory"

# 209 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused1:
# 210 "data/maps/MtChimney/scripts.pory"
	walk_down
# 211 "data/maps/MtChimney/scripts.pory"
	walk_down
# 212 "data/maps/MtChimney/scripts.pory"
	walk_down
# 213 "data/maps/MtChimney/scripts.pory"
	walk_down
# 214 "data/maps/MtChimney/scripts.pory"
	walk_down
# 215 "data/maps/MtChimney/scripts.pory"
	walk_left
# 216 "data/maps/MtChimney/scripts.pory"
	walk_left
# 217 "data/maps/MtChimney/scripts.pory"
	walk_down
# 218 "data/maps/MtChimney/scripts.pory"
	walk_down
# 219 "data/maps/MtChimney/scripts.pory"
	walk_down
# 220 "data/maps/MtChimney/scripts.pory"
	walk_down
# 221 "data/maps/MtChimney/scripts.pory"
	walk_left
# 222 "data/maps/MtChimney/scripts.pory"
	walk_left
# 223 "data/maps/MtChimney/scripts.pory"
	walk_left
# 224 "data/maps/MtChimney/scripts.pory"
	walk_left
# 225 "data/maps/MtChimney/scripts.pory"
	walk_left
# 226 "data/maps/MtChimney/scripts.pory"
	walk_down
# 227 "data/maps/MtChimney/scripts.pory"
	step_end
# 228 "data/maps/MtChimney/scripts.pory"

# 229 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused2:
# 230 "data/maps/MtChimney/scripts.pory"
	walk_down
# 231 "data/maps/MtChimney/scripts.pory"
	walk_down
# 232 "data/maps/MtChimney/scripts.pory"
	walk_down
# 233 "data/maps/MtChimney/scripts.pory"
	walk_down
# 234 "data/maps/MtChimney/scripts.pory"
	walk_left
# 235 "data/maps/MtChimney/scripts.pory"
	walk_left
# 236 "data/maps/MtChimney/scripts.pory"
	walk_left
# 237 "data/maps/MtChimney/scripts.pory"
	walk_down
# 238 "data/maps/MtChimney/scripts.pory"
	step_end
# 239 "data/maps/MtChimney/scripts.pory"

# 240 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused3:
# 241 "data/maps/MtChimney/scripts.pory"
	walk_right
# 242 "data/maps/MtChimney/scripts.pory"
	walk_down
# 243 "data/maps/MtChimney/scripts.pory"
	walk_down
# 244 "data/maps/MtChimney/scripts.pory"
	walk_down
# 245 "data/maps/MtChimney/scripts.pory"
	walk_down
# 246 "data/maps/MtChimney/scripts.pory"
	walk_left
# 247 "data/maps/MtChimney/scripts.pory"
	walk_left
# 248 "data/maps/MtChimney/scripts.pory"
	walk_left
# 249 "data/maps/MtChimney/scripts.pory"
	walk_left
# 250 "data/maps/MtChimney/scripts.pory"
	walk_left
# 251 "data/maps/MtChimney/scripts.pory"
	walk_down
# 252 "data/maps/MtChimney/scripts.pory"
	walk_down
# 253 "data/maps/MtChimney/scripts.pory"
	walk_down
# 254 "data/maps/MtChimney/scripts.pory"
	walk_down
# 255 "data/maps/MtChimney/scripts.pory"
	step_end
# 256 "data/maps/MtChimney/scripts.pory"

# 257 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused4:
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
	walk_fast_down
# 265 "data/maps/MtChimney/scripts.pory"
	walk_fast_down
# 266 "data/maps/MtChimney/scripts.pory"
	walk_fast_down
# 267 "data/maps/MtChimney/scripts.pory"
	walk_left
# 268 "data/maps/MtChimney/scripts.pory"
	walk_left
# 269 "data/maps/MtChimney/scripts.pory"
	walk_down
# 270 "data/maps/MtChimney/scripts.pory"
	walk_down
# 271 "data/maps/MtChimney/scripts.pory"
	walk_down
# 272 "data/maps/MtChimney/scripts.pory"
	walk_left
# 273 "data/maps/MtChimney/scripts.pory"
	walk_left
# 274 "data/maps/MtChimney/scripts.pory"
	walk_down
# 275 "data/maps/MtChimney/scripts.pory"
	walk_down
# 276 "data/maps/MtChimney/scripts.pory"
	walk_left
# 277 "data/maps/MtChimney/scripts.pory"
	walk_left
# 278 "data/maps/MtChimney/scripts.pory"
	walk_left
# 279 "data/maps/MtChimney/scripts.pory"
	walk_left
# 280 "data/maps/MtChimney/scripts.pory"
	walk_left
# 281 "data/maps/MtChimney/scripts.pory"
	walk_down
# 282 "data/maps/MtChimney/scripts.pory"
	step_end
# 283 "data/maps/MtChimney/scripts.pory"

# 284 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused5:
# 285 "data/maps/MtChimney/scripts.pory"
	delay_16
# 286 "data/maps/MtChimney/scripts.pory"
	delay_16
# 287 "data/maps/MtChimney/scripts.pory"
	delay_16
# 288 "data/maps/MtChimney/scripts.pory"
	walk_down
# 289 "data/maps/MtChimney/scripts.pory"
	walk_down
# 290 "data/maps/MtChimney/scripts.pory"
	walk_down
# 291 "data/maps/MtChimney/scripts.pory"
	walk_left
# 292 "data/maps/MtChimney/scripts.pory"
	walk_left
# 293 "data/maps/MtChimney/scripts.pory"
	walk_left
# 294 "data/maps/MtChimney/scripts.pory"
	walk_down
# 295 "data/maps/MtChimney/scripts.pory"
	step_end
# 296 "data/maps/MtChimney/scripts.pory"

# 297 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused6:
# 298 "data/maps/MtChimney/scripts.pory"
	delay_16
# 299 "data/maps/MtChimney/scripts.pory"
	walk_left
# 300 "data/maps/MtChimney/scripts.pory"
	walk_down
# 301 "data/maps/MtChimney/scripts.pory"
	walk_down
# 302 "data/maps/MtChimney/scripts.pory"
	walk_down
# 303 "data/maps/MtChimney/scripts.pory"
	walk_down
# 304 "data/maps/MtChimney/scripts.pory"
	walk_left
# 305 "data/maps/MtChimney/scripts.pory"
	walk_left
# 306 "data/maps/MtChimney/scripts.pory"
	walk_left
# 307 "data/maps/MtChimney/scripts.pory"
	walk_left
# 308 "data/maps/MtChimney/scripts.pory"
	walk_left
# 309 "data/maps/MtChimney/scripts.pory"
	walk_down
# 310 "data/maps/MtChimney/scripts.pory"
	walk_down
# 311 "data/maps/MtChimney/scripts.pory"
	walk_down
# 312 "data/maps/MtChimney/scripts.pory"
	walk_down
# 313 "data/maps/MtChimney/scripts.pory"
	step_end
# 314 "data/maps/MtChimney/scripts.pory"

# 315 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused7:
# 316 "data/maps/MtChimney/scripts.pory"
	delay_16
# 317 "data/maps/MtChimney/scripts.pory"
	walk_left
# 318 "data/maps/MtChimney/scripts.pory"
	walk_left
# 319 "data/maps/MtChimney/scripts.pory"
	walk_down
# 320 "data/maps/MtChimney/scripts.pory"
	walk_down
# 321 "data/maps/MtChimney/scripts.pory"
	walk_down
# 322 "data/maps/MtChimney/scripts.pory"
	walk_left
# 323 "data/maps/MtChimney/scripts.pory"
	walk_left
# 324 "data/maps/MtChimney/scripts.pory"
	walk_down
# 325 "data/maps/MtChimney/scripts.pory"
	walk_down
# 326 "data/maps/MtChimney/scripts.pory"
	walk_left
# 327 "data/maps/MtChimney/scripts.pory"
	walk_left
# 328 "data/maps/MtChimney/scripts.pory"
	walk_left
# 329 "data/maps/MtChimney/scripts.pory"
	walk_left
# 330 "data/maps/MtChimney/scripts.pory"
	walk_left
# 331 "data/maps/MtChimney/scripts.pory"
	walk_down
# 332 "data/maps/MtChimney/scripts.pory"
	step_end
# 333 "data/maps/MtChimney/scripts.pory"

# 334 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused8:
# 335 "data/maps/MtChimney/scripts.pory"
	delay_16
# 336 "data/maps/MtChimney/scripts.pory"
	walk_down
# 337 "data/maps/MtChimney/scripts.pory"
	walk_left
# 338 "data/maps/MtChimney/scripts.pory"
	walk_left
# 339 "data/maps/MtChimney/scripts.pory"
	walk_left
# 340 "data/maps/MtChimney/scripts.pory"
	walk_left
# 341 "data/maps/MtChimney/scripts.pory"
	walk_in_place_faster_down
# 342 "data/maps/MtChimney/scripts.pory"
	step_end
# 343 "data/maps/MtChimney/scripts.pory"

# 344 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused9:
# 345 "data/maps/MtChimney/scripts.pory"
	walk_down
# 346 "data/maps/MtChimney/scripts.pory"
	walk_down
# 347 "data/maps/MtChimney/scripts.pory"
	walk_down
# 348 "data/maps/MtChimney/scripts.pory"
	walk_down
# 349 "data/maps/MtChimney/scripts.pory"
	walk_left
# 350 "data/maps/MtChimney/scripts.pory"
	walk_left
# 351 "data/maps/MtChimney/scripts.pory"
	walk_left
# 352 "data/maps/MtChimney/scripts.pory"
	walk_left
# 353 "data/maps/MtChimney/scripts.pory"
	walk_left
# 354 "data/maps/MtChimney/scripts.pory"
	walk_down
# 355 "data/maps/MtChimney/scripts.pory"
	walk_down
# 356 "data/maps/MtChimney/scripts.pory"
	walk_down
# 357 "data/maps/MtChimney/scripts.pory"
	walk_down
# 358 "data/maps/MtChimney/scripts.pory"
	step_end
# 359 "data/maps/MtChimney/scripts.pory"

# 360 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused10:
# 361 "data/maps/MtChimney/scripts.pory"
	walk_down
# 362 "data/maps/MtChimney/scripts.pory"
	step_end
# 363 "data/maps/MtChimney/scripts.pory"

# 364 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused11:
# 365 "data/maps/MtChimney/scripts.pory"
	walk_down
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
	step_end
# 373 "data/maps/MtChimney/scripts.pory"

# 374 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused12:
# 375 "data/maps/MtChimney/scripts.pory"
	delay_16
# 376 "data/maps/MtChimney/scripts.pory"
	delay_16
# 377 "data/maps/MtChimney/scripts.pory"
	walk_in_place_faster_left
# 378 "data/maps/MtChimney/scripts.pory"
	delay_16
# 379 "data/maps/MtChimney/scripts.pory"
	walk_down
# 380 "data/maps/MtChimney/scripts.pory"
	walk_down
# 381 "data/maps/MtChimney/scripts.pory"
	walk_down
# 382 "data/maps/MtChimney/scripts.pory"
	walk_down
# 383 "data/maps/MtChimney/scripts.pory"
	walk_down
# 384 "data/maps/MtChimney/scripts.pory"
	step_end
# 385 "data/maps/MtChimney/scripts.pory"

# 386 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused13:
# 387 "data/maps/MtChimney/scripts.pory"
	delay_16
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
	walk_in_place_faster_left
# 394 "data/maps/MtChimney/scripts.pory"
	delay_16
# 395 "data/maps/MtChimney/scripts.pory"
	walk_down
# 396 "data/maps/MtChimney/scripts.pory"
	walk_down
# 397 "data/maps/MtChimney/scripts.pory"
	step_end
# 398 "data/maps/MtChimney/scripts.pory"

# 399 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused14:
# 400 "data/maps/MtChimney/scripts.pory"
	lock_facing_direction
# 401 "data/maps/MtChimney/scripts.pory"
	walk_fast_left
# 402 "data/maps/MtChimney/scripts.pory"
	unlock_facing_direction
# 403 "data/maps/MtChimney/scripts.pory"
	face_right
# 404 "data/maps/MtChimney/scripts.pory"
	step_end
# 405 "data/maps/MtChimney/scripts.pory"

# 406 "data/maps/MtChimney/scripts.pory"
MtChimney_Movement_Unused15:
# 407 "data/maps/MtChimney/scripts.pory"
	walk_left
# 408 "data/maps/MtChimney/scripts.pory"
	walk_in_place_faster_right
# 409 "data/maps/MtChimney/scripts.pory"
	delay_16
# 410 "data/maps/MtChimney/scripts.pory"
	step_end
# 411 "data/maps/MtChimney/scripts.pory"

# 412 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyAquaGrunt1::
# 413 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MagmaOutnumbersUs, MSGBOX_SIGN
# 414 "data/maps/MtChimney/scripts.pory"
	end
# 415 "data/maps/MtChimney/scripts.pory"

# 416 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyAquaGrunt2::
# 417 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_LessHabitatForWaterPokemon, MSGBOX_SIGN
# 418 "data/maps/MtChimney/scripts.pory"
	end
# 419 "data/maps/MtChimney/scripts.pory"

# 420 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyAquaGrunt3::
# 421 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MagmasNameSimilar, MSGBOX_SIGN
# 422 "data/maps/MtChimney/scripts.pory"
	end
# 423 "data/maps/MtChimney/scripts.pory"

# 424 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Tabitha::
# 425 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_TABITHA_MT_CHIMNEY, MtChimney_Text_TabithaIntro, MtChimney_Text_TabithaDefeat
# 426 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_TabithaPostBattle, MSGBOX_AUTOCLOSE
# 427 "data/maps/MtChimney/scripts.pory"
	end
# 428 "data/maps/MtChimney/scripts.pory"

# 429 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Grunt2::
# 430 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_CHIMNEY_2, MtChimney_Text_Grunt2Intro, MtChimney_Text_Grunt2Defeat
# 431 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_Grunt2PostBattle, MSGBOX_AUTOCLOSE
# 432 "data/maps/MtChimney/scripts.pory"
	end
# 433 "data/maps/MtChimney/scripts.pory"

# 434 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt1::
# 435 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_TeamAquaAlwaysMessingWithPlans, MSGBOX_SIGN
# 436 "data/maps/MtChimney/scripts.pory"
	end
# 437 "data/maps/MtChimney/scripts.pory"

# 438 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt2::
# 439 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MeteoritesPackAmazingPower, MSGBOX_SIGN
# 440 "data/maps/MtChimney/scripts.pory"
	end
# 441 "data/maps/MtChimney/scripts.pory"

# 442 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt3::
# 443 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_YouBetterNotMessWithUs, MSGBOX_SIGN
# 444 "data/maps/MtChimney/scripts.pory"
	end
# 445 "data/maps/MtChimney/scripts.pory"

# 446 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt4::
# 447 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_AquasNameSimilar, MSGBOX_SIGN
# 448 "data/maps/MtChimney/scripts.pory"
	end
# 449 "data/maps/MtChimney/scripts.pory"

# 450 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt5::
# 451 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_DouseThemInFire, MSGBOX_SIGN
# 452 "data/maps/MtChimney/scripts.pory"
	end
# 453 "data/maps/MtChimney/scripts.pory"

# 454 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_BusyMagmaGrunt6::
# 455 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_KeepMakingMoreLand, MSGBOX_SIGN
# 456 "data/maps/MtChimney/scripts.pory"
	end
# 457 "data/maps/MtChimney/scripts.pory"

# 458 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_MagmaPoochyena::
# 459 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_Bufoh, MSGBOX_SIGN
# 460 "data/maps/MtChimney/scripts.pory"
	end
# 461 "data/maps/MtChimney/scripts.pory"

# 462 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_AquaPoochyena::
# 463 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_Bushaa, MSGBOX_SIGN
# 464 "data/maps/MtChimney/scripts.pory"
	end
# 465 "data/maps/MtChimney/scripts.pory"

# 466 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_MeteoriteMachine::
# 467 "data/maps/MtChimney/scripts.pory"
	lockall
# 468 "data/maps/MtChimney/scripts.pory"
	goto_if_unset FLAG_DEFEATED_EVIL_TEAM_MT_CHIMNEY, MtChimney_EventScript_MachineOn
# 469 "data/maps/MtChimney/scripts.pory"
	goto_if_set FLAG_RECEIVED_METEORITE, MtChimney_EventScript_MachineOff
# 470 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_RemoveTheMeteorite, MSGBOX_YESNO
# 471 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MtChimney_EventScript_LeaveMeteoriteAlone
# 472 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_PlayerRemovedMeteorite, MSGBOX_DEFAULT
# 473 "data/maps/MtChimney/scripts.pory"
	giveitem ITEM_METEORITE
# 474 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 475 "data/maps/MtChimney/scripts.pory"
	setflag FLAG_RECEIVED_METEORITE
# 476 "data/maps/MtChimney/scripts.pory"
	releaseall
# 477 "data/maps/MtChimney/scripts.pory"
	end
# 478 "data/maps/MtChimney/scripts.pory"

# 479 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_LeaveMeteoriteAlone::
# 480 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_PlayerLeftMeteorite, MSGBOX_DEFAULT
# 481 "data/maps/MtChimney/scripts.pory"
	releaseall
# 482 "data/maps/MtChimney/scripts.pory"
	end
# 483 "data/maps/MtChimney/scripts.pory"

# 484 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_MachineOff::
# 485 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MachineMakesNoResponse, MSGBOX_DEFAULT
# 486 "data/maps/MtChimney/scripts.pory"
	releaseall
# 487 "data/maps/MtChimney/scripts.pory"
	end
# 488 "data/maps/MtChimney/scripts.pory"

# 489 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_MachineOn::
# 490 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MetoriteFittedOnMachine, MSGBOX_DEFAULT
# 491 "data/maps/MtChimney/scripts.pory"
	releaseall
# 492 "data/maps/MtChimney/scripts.pory"
	end
# 493 "data/maps/MtChimney/scripts.pory"

# 494 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_RouteSign::
# 495 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_RouteSign, MSGBOX_SIGN
# 496 "data/maps/MtChimney/scripts.pory"
	end
# 497 "data/maps/MtChimney/scripts.pory"

# 498 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Shelby::
# 499 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_SHELBY_1, MtChimney_Text_ShelbyIntro, MtChimney_Text_ShelbyDefeat, MtChimney_EventScript_DefeatedShelby
# 500 "data/maps/MtChimney/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 501 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MtChimney_EventScript_RematchShelby
# 502 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_ShelbyPostBattle, MSGBOX_DEFAULT
# 503 "data/maps/MtChimney/scripts.pory"
	release
# 504 "data/maps/MtChimney/scripts.pory"
	end
# 505 "data/maps/MtChimney/scripts.pory"

# 506 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_DefeatedShelby::
# 507 "data/maps/MtChimney/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 508 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 509 "data/maps/MtChimney/scripts.pory"
	@ PokéNav removed msgbox MtChimney_Text_ShelbyRegister, MSGBOX_DEFAULT
# 510 "data/maps/MtChimney/scripts.pory"
	@ PokéNav removed register_matchcall TRAINER_SHELBY_1
# 511 "data/maps/MtChimney/scripts.pory"
	release
# 512 "data/maps/MtChimney/scripts.pory"
	end
# 513 "data/maps/MtChimney/scripts.pory"

# 514 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_RematchShelby::
# 515 "data/maps/MtChimney/scripts.pory"
	trainerbattle_rematch TRAINER_SHELBY_1, MtChimney_Text_ShelbyRematchIntro, MtChimney_Text_ShelbyRematchDefeat
# 516 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_ShelbyPostRematch, MSGBOX_AUTOCLOSE
# 517 "data/maps/MtChimney/scripts.pory"
	end
# 518 "data/maps/MtChimney/scripts.pory"

# 519 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Melissa::
# 520 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_MELISSA, MtChimney_Text_MelissaIntro, MtChimney_Text_MelissaDefeat
# 521 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_MelissaPostBattle, MSGBOX_AUTOCLOSE
# 522 "data/maps/MtChimney/scripts.pory"
	end
# 523 "data/maps/MtChimney/scripts.pory"

# 524 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Sheila::
# 525 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_SHEILA, MtChimney_Text_SheilaIntro, MtChimney_Text_SheilaDefeat
# 526 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_SheilaPostBattle, MSGBOX_AUTOCLOSE
# 527 "data/maps/MtChimney/scripts.pory"
	end
# 528 "data/maps/MtChimney/scripts.pory"

# 529 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Shirley::
# 530 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_SHIRLEY, MtChimney_Text_ShirleyIntro, MtChimney_Text_ShirleyDefeat
# 531 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_ShirleyPostBattle, MSGBOX_AUTOCLOSE
# 532 "data/maps/MtChimney/scripts.pory"
	end
# 533 "data/maps/MtChimney/scripts.pory"

# 534 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Grunt1::
# 535 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MT_CHIMNEY_1, MtChimney_Text_Grunt1Intro, MtChimney_Text_Grunt1Defeat
# 536 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_Grunt1PostBattle, MSGBOX_AUTOCLOSE
# 537 "data/maps/MtChimney/scripts.pory"
	end
# 538 "data/maps/MtChimney/scripts.pory"

# 539 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_Sawyer::
# 540 "data/maps/MtChimney/scripts.pory"
	trainerbattle_single TRAINER_SAWYER_1, MtChimney_Text_SawyerIntro, MtChimney_Text_SawyerDefeat, MtChimney_EventScript_SawyerDefeated
# 541 "data/maps/MtChimney/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 542 "data/maps/MtChimney/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MtChimney_EventScript_SawyerRematch
# 543 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_SawyerPostBattle, MSGBOX_DEFAULT
# 544 "data/maps/MtChimney/scripts.pory"
	release
# 545 "data/maps/MtChimney/scripts.pory"
	end
# 546 "data/maps/MtChimney/scripts.pory"

# 547 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_SawyerDefeated::
# 548 "data/maps/MtChimney/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 549 "data/maps/MtChimney/scripts.pory"
	waitmovement 0
# 550 "data/maps/MtChimney/scripts.pory"
	release
# 551 "data/maps/MtChimney/scripts.pory"
	end
# 552 "data/maps/MtChimney/scripts.pory"

# 553 "data/maps/MtChimney/scripts.pory"
MtChimney_EventScript_SawyerRematch::
# 554 "data/maps/MtChimney/scripts.pory"
	trainerbattle_rematch TRAINER_SAWYER_1, MtChimney_Text_SawyerRematchIntro, MtChimney_Text_SawyerRematchDefeat
# 555 "data/maps/MtChimney/scripts.pory"
	msgbox MtChimney_Text_SawyerPostRematch, MSGBOX_AUTOCLOSE
# 556 "data/maps/MtChimney/scripts.pory"
	end
# 557 "data/maps/MtChimney/scripts.pory"

# 558 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MeteoriteWillActivateVolcano:
# 559 "data/maps/MtChimney/scripts.pory"
	.string "By amplifying its frequency with this\n"
# 560 "data/maps/MtChimney/scripts.pory"
	.string "machine, we won't just cause an eruption.\l"
# 561 "data/maps/MtChimney/scripts.pory"
	.string "We will trigger a chain reaction.\p"
# 562 "data/maps/MtChimney/scripts.pory"
	.string "MT. CHIMNEY's volcanic activity will\n"
# 563 "data/maps/MtChimney/scripts.pory"
	.string "intensify tenfold. Nature's real power!\p"
# 564 "data/maps/MtChimney/scripts.pory"
	.string "The METEORITE: A fragment of the\n"
# 565 "data/maps/MtChimney/scripts.pory"
	.string "MILLENNIUM COMET, pulsing with ancient\l"
# 566 "data/maps/MtChimney/scripts.pory"
	.string "power. This world has forgotten its nature.$"
# 567 "data/maps/MtChimney/scripts.pory"

# 568 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MaxieIntro:
# 569 "data/maps/MtChimney/scripts.pory"
	.string "MAGNUS: Hm?\n"
# 570 "data/maps/MtChimney/scripts.pory"
	.string "Who are you?\p"
# 571 "data/maps/MtChimney/scripts.pory"
	.string "… … … … … …\n"
# 572 "data/maps/MtChimney/scripts.pory"
	.string "… … … … … …\p"
# 573 "data/maps/MtChimney/scripts.pory"
	.string "I'd heard INAE bemoaning a child\n"
# 574 "data/maps/MtChimney/scripts.pory"
	.string "who's been meddling in TEAM AQUA's\l"
# 575 "data/maps/MtChimney/scripts.pory"
	.string "affairs.\p"
# 576 "data/maps/MtChimney/scripts.pory"
	.string "It must be you she meant.\p"
# 577 "data/maps/MtChimney/scripts.pory"
	.string "Humph! So you're thinking of\n"
# 578 "data/maps/MtChimney/scripts.pory"
	.string "interfering with us, TEAM MAGMA?\p"
# 579 "data/maps/MtChimney/scripts.pory"
	.string "Now you listen.\n"
# 580 "data/maps/MtChimney/scripts.pory"
	.string "Minerals and ores move this world.\l"
# 581 "data/maps/MtChimney/scripts.pory"
	.string "They build cities and fuel industries.\p"
# 582 "data/maps/MtChimney/scripts.pory"
	.string "That is why what sleeps beneath\n"
# 583 "data/maps/MtChimney/scripts.pory"
	.string "this mountain is all important!\p"
# 584 "data/maps/MtChimney/scripts.pory"
	.string "TEAM MAGMA will awaken these\n"
# 585 "data/maps/MtChimney/scripts.pory"
	.string "volcanoes not for destruction,\l"
# 586 "data/maps/MtChimney/scripts.pory"
	.string "but for extraction.\p"
# 587 "data/maps/MtChimney/scripts.pory"
	.string "The eruptions will fracture the earth,\n"
# 588 "data/maps/MtChimney/scripts.pory"
	.string "exposing veins of rare minerals\l"
# 589 "data/maps/MtChimney/scripts.pory"
	.string "never before seen.\p"
# 590 "data/maps/MtChimney/scripts.pory"
	.string "And when the ash settles…\n"
# 591 "data/maps/MtChimney/scripts.pory"
	.string "the soil will become the richest\l"
# 592 "data/maps/MtChimney/scripts.pory"
	.string "in all of HOENN.\p"
# 593 "data/maps/MtChimney/scripts.pory"
	.string "A new era of resources, and with it,\n"
# 594 "data/maps/MtChimney/scripts.pory"
	.string "a new world order.\p"
# 595 "data/maps/MtChimney/scripts.pory"
	.string "Oh! There was no need for you to\n"
# 596 "data/maps/MtChimney/scripts.pory"
	.string "learn that much.\p"
# 597 "data/maps/MtChimney/scripts.pory"
	.string "But, no matter!\n"
# 598 "data/maps/MtChimney/scripts.pory"
	.string "I'll teach you the consequences of\l"
# 599 "data/maps/MtChimney/scripts.pory"
	.string "meddling in our grand design!$"
# 600 "data/maps/MtChimney/scripts.pory"

# 601 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MaxieDefeat:
# 602 "data/maps/MtChimney/scripts.pory"
	.string "What?!\p"
# 603 "data/maps/MtChimney/scripts.pory"
	.string "I, MAGNUS, was caught off guard?!\n"
# 604 "data/maps/MtChimney/scripts.pory"
	.string "This changes nothing.\p"
# 605 "data/maps/MtChimney/scripts.pory"
	.string "The tectonic shift is inevitable.\n"
# 606 "data/maps/MtChimney/scripts.pory"
	.string "You've only delayed progress.$"
# 607 "data/maps/MtChimney/scripts.pory"

# 608 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MaxieYouHaventSeenLastOfMagma:
# 609 "data/maps/MtChimney/scripts.pory"
	.string "MAGNUS: But, enough.\n"
# 610 "data/maps/MtChimney/scripts.pory"
	.string "I will back off this time.\p"
# 611 "data/maps/MtChimney/scripts.pory"
	.string "But don't think that this is the last\n"
# 612 "data/maps/MtChimney/scripts.pory"
	.string "you've seen of TEAM MAGMA.\p"
# 613 "data/maps/MtChimney/scripts.pory"
	.string "Fufufu…\p"
# 614 "data/maps/MtChimney/scripts.pory"
	.string "Even without the METEORITE, if we\n"
# 615 "data/maps/MtChimney/scripts.pory"
	.string "obtain that ORB… Fufufu…\p"
# 616 "data/maps/MtChimney/scripts.pory"
	.string "The revolution cannot be stopped.$"
# 617 "data/maps/MtChimney/scripts.pory"

# 618 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_TabithaIntro:
# 619 "data/maps/MtChimney/scripts.pory"
	.string "Netsu: Hehehe!\p"
# 620 "data/maps/MtChimney/scripts.pory"
	.string "So you're the weirdo everyone's been\n"
# 621 "data/maps/MtChimney/scripts.pory"
	.string "whispering about!\p"
# 622 "data/maps/MtChimney/scripts.pory"
	.string "I heard some brat in a cape has been\n"
# 623 "data/maps/MtChimney/scripts.pory"
	.string "playing hero and actually managed to\l"
# 624 "data/maps/MtChimney/scripts.pory"
	.string "beat that scumbag Alejandro from\l"
# 625 "data/maps/MtChimney/scripts.pory"
	.string "that damn annoying TEAM AQUA!\p"
# 626 "data/maps/MtChimney/scripts.pory"
	.string "That weird rich boy is my rival,\n"
# 627 "data/maps/MtChimney/scripts.pory"
	.string "and I can't stand him!\l"
# 628 "data/maps/MtChimney/scripts.pory"
	.string "That spoiled boy! I hate Alejandro!\p"
# 629 "data/maps/MtChimney/scripts.pory"
	.string "Anyway…\n"
# 630 "data/maps/MtChimney/scripts.pory"
	.string "Why are you so interested in poking\l"
# 631 "data/maps/MtChimney/scripts.pory"
	.string "your nose into our revolution?\p"
# 632 "data/maps/MtChimney/scripts.pory"
	.string "You don't understand the importance\n"
# 633 "data/maps/MtChimney/scripts.pory"
	.string "of the power we want to have!\p"
# 634 "data/maps/MtChimney/scripts.pory"
	.string "But whatever…\n"
# 635 "data/maps/MtChimney/scripts.pory"
	.string "I'm gonna crush you here,\l"
# 636 "data/maps/MtChimney/scripts.pory"
	.string "and then you're going to get lost!$"
# 637 "data/maps/MtChimney/scripts.pory"

# 638 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_TabithaDefeat:
# 639 "data/maps/MtChimney/scripts.pory"
	.string "Netsu: Hehehe…\p"
# 640 "data/maps/MtChimney/scripts.pory"
	.string "Tch…\n"
# 641 "data/maps/MtChimney/scripts.pory"
	.string "So what if I lost this battle?\p"
# 642 "data/maps/MtChimney/scripts.pory"
	.string "The revolution's plan is bigger than\n"
# 643 "data/maps/MtChimney/scripts.pory"
	.string "you, bigger than me, bigger than this\l"
# 644 "data/maps/MtChimney/scripts.pory"
	.string "stupid mountain!\p"
# 645 "data/maps/MtChimney/scripts.pory"
	.string "I already did what needed to be done.\n"
# 646 "data/maps/MtChimney/scripts.pory"
	.string "The METEORITE is in place.\l"
# 647 "data/maps/MtChimney/scripts.pory"
	.string "The machine is ready.\p"
# 648 "data/maps/MtChimney/scripts.pory"
	.string "The plan moves forward…\n"
# 649 "data/maps/MtChimney/scripts.pory"
	.string "whether you like it or not.\p"
# 650 "data/maps/MtChimney/scripts.pory"
	.string "Hehehe…\n"
# 651 "data/maps/MtChimney/scripts.pory"
	.string "Enjoy your little victory, hero.\l"
# 652 "data/maps/MtChimney/scripts.pory"
	.string "It won't last!$"
# 653 "data/maps/MtChimney/scripts.pory"

# 654 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_TabithaPostBattle:
# 655 "data/maps/MtChimney/scripts.pory"
	.string "Netsu: BOSS! Now!\n"
# 656 "data/maps/MtChimney/scripts.pory"
	.string "Hit it with the METEORITE's energy!\p"
# 657 "data/maps/MtChimney/scripts.pory"
	.string "Hehehe…\n"
# 658 "data/maps/MtChimney/scripts.pory"
	.string "Let those AQUA scum choke on our ash!\p"
# 659 "data/maps/MtChimney/scripts.pory"
	.string "And you, kid…\n"
# 660 "data/maps/MtChimney/scripts.pory"
	.string "You'd better run while you still can.$"
# 661 "data/maps/MtChimney/scripts.pory"

# 662 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt2Intro:
# 663 "data/maps/MtChimney/scripts.pory"
	.string "We of TEAM MAGMA are working hard for\n"
# 664 "data/maps/MtChimney/scripts.pory"
	.string "everyone's sake.\p"
# 665 "data/maps/MtChimney/scripts.pory"
	.string "You think resources appear by magic?\n"
# 666 "data/maps/MtChimney/scripts.pory"
	.string "They're extracted. Refined. Controlled.\p"
# 667 "data/maps/MtChimney/scripts.pory"
	.string "We'll control them all.\n"
# 668 "data/maps/MtChimney/scripts.pory"
	.string "Everyone will pay our price.$"
# 669 "data/maps/MtChimney/scripts.pory"

# 670 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt2Defeat:
# 671 "data/maps/MtChimney/scripts.pory"
	.string "Hunh?\n"
# 672 "data/maps/MtChimney/scripts.pory"
	.string "What do you mean I lost?\p"
# 673 "data/maps/MtChimney/scripts.pory"
	.string "The minerals… the market…\n"
# 674 "data/maps/MtChimney/scripts.pory"
	.string "This battle means nothing!$"
# 675 "data/maps/MtChimney/scripts.pory"

# 676 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt2PostBattle:
# 677 "data/maps/MtChimney/scripts.pory"
	.string "Our BOSS says, “It will make everyone\n"
# 678 "data/maps/MtChimney/scripts.pory"
	.string "happy.”\p"
# 679 "data/maps/MtChimney/scripts.pory"
	.string "But why does everyone keep getting\n"
# 680 "data/maps/MtChimney/scripts.pory"
	.string "in our way?\p"
# 681 "data/maps/MtChimney/scripts.pory"
	.string "Don't they understand?\n"
# 682 "data/maps/MtChimney/scripts.pory"
	.string "Happiness is a product.\l"
# 683 "data/maps/MtChimney/scripts.pory"
	.string "And we'll be the only suppliers.$"
# 684 "data/maps/MtChimney/scripts.pory"

# 685 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt1Intro:
# 686 "data/maps/MtChimney/scripts.pory"
	.string "If there were more land, I'd be able\n"
# 687 "data/maps/MtChimney/scripts.pory"
	.string "to get a big house of my own!\p"
# 688 "data/maps/MtChimney/scripts.pory"
	.string "I'm going to build it on hardened lava!\p"
# 689 "data/maps/MtChimney/scripts.pory"
	.string "And charge rent to all those\n"
# 690 "data/maps/MtChimney/scripts.pory"
	.string "who doubted our vision!$"
# 691 "data/maps/MtChimney/scripts.pory"

# 692 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt1Defeat:
# 693 "data/maps/MtChimney/scripts.pory"
	.string "My dream of a big house…\n"
# 694 "data/maps/MtChimney/scripts.pory"
	.string "And the passive income… gone…$"
# 695 "data/maps/MtChimney/scripts.pory"

# 696 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Grunt1PostBattle:
# 697 "data/maps/MtChimney/scripts.pory"
	.string "A kid like you, you ought to be\n"
# 698 "data/maps/MtChimney/scripts.pory"
	.string "splashing about in the waves!\p"
# 699 "data/maps/MtChimney/scripts.pory"
	.string "While we adults reshape continents\n"
# 700 "data/maps/MtChimney/scripts.pory"
	.string "and rewrite economies.$"
# 701 "data/maps/MtChimney/scripts.pory"

# 702 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_TeamAquaAlwaysMessingWithPlans:
# 703 "data/maps/MtChimney/scripts.pory"
	.string "That annoying TEAM AQUA…\n"
# 704 "data/maps/MtChimney/scripts.pory"
	.string "They always mess with our plans!\p"
# 705 "data/maps/MtChimney/scripts.pory"
	.string "They defend their precious seas\n"
# 706 "data/maps/MtChimney/scripts.pory"
	.string "while we build the future.$"
# 707 "data/maps/MtChimney/scripts.pory"

# 708 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MeteoritesPackAmazingPower:
# 709 "data/maps/MtChimney/scripts.pory"
	.string "METEORITES pack amazing power!\p"
# 710 "data/maps/MtChimney/scripts.pory"
	.string "The MILLENNIUM COMET's fragments\n"
# 711 "data/maps/MtChimney/scripts.pory"
	.string "could fuel HOENN for centuries.\p"
# 712 "data/maps/MtChimney/scripts.pory"
	.string "And we'll control every joule.$"
# 713 "data/maps/MtChimney/scripts.pory"

# 714 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_YouBetterNotMessWithUs:
# 715 "data/maps/MtChimney/scripts.pory"
	.string "You'd better not mess with us!\p"
# 716 "data/maps/MtChimney/scripts.pory"
	.string "We're trying to awaken that thing\n"
# 717 "data/maps/MtChimney/scripts.pory"
	.string "for the benefit of everyone!\p"
# 718 "data/maps/MtChimney/scripts.pory"
	.string "Whether they want it or not.$"
# 719 "data/maps/MtChimney/scripts.pory"

# 720 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_AquasNameSimilar:
# 721 "data/maps/MtChimney/scripts.pory"
	.string "We're TEAM MAGMA!\p"
# 722 "data/maps/MtChimney/scripts.pory"
	.string "They're TEAM AQUA!\p"
# 723 "data/maps/MtChimney/scripts.pory"
	.string "They're just greedy pigs!\n"
# 724 "data/maps/MtChimney/scripts.pory"
	.string "Blinded by their own selfishness.\p"
# 725 "data/maps/MtChimney/scripts.pory"
	.string "Our plan… it's a beautiful revolution.\n"
# 726 "data/maps/MtChimney/scripts.pory"
	.string "At the price of some sacrifices,\l"
# 727 "data/maps/MtChimney/scripts.pory"
	.string "it will save so many.\p"
# 728 "data/maps/MtChimney/scripts.pory"
	.string "The land will flourish.\n"
# 729 "data/maps/MtChimney/scripts.pory"
	.string "Resources for all.\p"
# 730 "data/maps/MtChimney/scripts.pory"
	.string "You wouldn't understand…\n"
# 731 "data/maps/MtChimney/scripts.pory"
	.string "You're just like them.$"
# 732 "data/maps/MtChimney/scripts.pory"

# 733 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_DouseThemInFire:
# 734 "data/maps/MtChimney/scripts.pory"
	.string "Yeah! Ha Ha Ha!\n"
# 735 "data/maps/MtChimney/scripts.pory"
	.string "Douse them in fire!\p"
# 736 "data/maps/MtChimney/scripts.pory"
	.string "Let them swim in our molten future!$"
# 737 "data/maps/MtChimney/scripts.pory"

# 738 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_KeepMakingMoreLand:
# 739 "data/maps/MtChimney/scripts.pory"
	.string "We're going to keep making more land!\p"
# 740 "data/maps/MtChimney/scripts.pory"
	.string "More land means more mines.\n"
# 741 "data/maps/MtChimney/scripts.pory"
	.string "More mines means more wealth.\l"
# 742 "data/maps/MtChimney/scripts.pory"
	.string "More wealth means more power.$"
# 743 "data/maps/MtChimney/scripts.pory"

# 744 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Bufoh:
# 745 "data/maps/MtChimney/scripts.pory"
	.string "Bufoh!$"
# 746 "data/maps/MtChimney/scripts.pory"

# 747 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ArchieGoStopTeamMagma:
# 748 "data/maps/MtChimney/scripts.pory"
	.string "INAE: Grr, {PLAYER}!\n"
# 749 "data/maps/MtChimney/scripts.pory"
	.string "I should've guessed you'd show up!\p"
# 750 "data/maps/MtChimney/scripts.pory"
	.string "See for yourself what the fanatics\n"
# 751 "data/maps/MtChimney/scripts.pory"
	.string "of TEAM MAGMA are up to!\p"
# 752 "data/maps/MtChimney/scripts.pory"
	.string "They're trying to inject the stolen\n"
# 753 "data/maps/MtChimney/scripts.pory"
	.string "METEORITE's power into the volcano!\p"
# 754 "data/maps/MtChimney/scripts.pory"
	.string "Doing something like that will cause\n"
# 755 "data/maps/MtChimney/scripts.pory"
	.string "the volcano's eruption!\p"
# 756 "data/maps/MtChimney/scripts.pory"
	.string "And when the tectonic plates shift…\n"
# 757 "data/maps/MtChimney/scripts.pory"
	.string "our coastlines… our territories…\l"
# 758 "data/maps/MtChimney/scripts.pory"
	.string "Everything we've built. Gone.$"
# 759 "data/maps/MtChimney/scripts.pory"

# 760 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ArchieIHaveMyHandsFull:
# 761 "data/maps/MtChimney/scripts.pory"
	.string "INAE: Grrr…\p"
# 762 "data/maps/MtChimney/scripts.pory"
	.string "I want to stop that MAGNUS,\n"
# 763 "data/maps/MtChimney/scripts.pory"
	.string "but I can't!\p"
# 764 "data/maps/MtChimney/scripts.pory"
	.string "Not when I have my hands full battling\n"
# 765 "data/maps/MtChimney/scripts.pory"
	.string "three opponents at once!\p"
# 766 "data/maps/MtChimney/scripts.pory"
	.string "… … … … … …\n"
# 767 "data/maps/MtChimney/scripts.pory"
	.string "… … … … … …\p"
# 768 "data/maps/MtChimney/scripts.pory"
	.string "You?\n"
# 769 "data/maps/MtChimney/scripts.pory"
	.string "The one who tried to stop us before?\p"
# 770 "data/maps/MtChimney/scripts.pory"
	.string "Hahahahahaha!\p"
# 771 "data/maps/MtChimney/scripts.pory"
	.string "Ambition drives humans to terrible\n"
# 772 "data/maps/MtChimney/scripts.pory"
	.string "places, doesn't it?\p"
# 773 "data/maps/MtChimney/scripts.pory"
	.string "That madman MAGNUS will reshape all\n"
# 774 "data/maps/MtChimney/scripts.pory"
	.string "of HOENN with his volcanic greed.\p"
# 775 "data/maps/MtChimney/scripts.pory"
	.string "The tectonic shift alone…\n"
# 776 "data/maps/MtChimney/scripts.pory"
	.string "entire coastlines will collapse.\p"
# 777 "data/maps/MtChimney/scripts.pory"
	.string "Irony of ironies…\p"
# 778 "data/maps/MtChimney/scripts.pory"
	.string "For now… we need to ally.\n"
# 779 "data/maps/MtChimney/scripts.pory"
	.string "You'll help TEAM AQUA.\p"
# 780 "data/maps/MtChimney/scripts.pory"
	.string "Just a pawn…\n"
# 781 "data/maps/MtChimney/scripts.pory"
	.string "but a useful one, kid!$"
# 782 "data/maps/MtChimney/scripts.pory"

# 783 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ArchieThankYou:
# 784 "data/maps/MtChimney/scripts.pory"
	.string "INAE: {PLAYER}!\n"
# 785 "data/maps/MtChimney/scripts.pory"
	.string "Thank you!\p"
# 786 "data/maps/MtChimney/scripts.pory"
	.string "With your help, we thwarted TEAM\n"
# 787 "data/maps/MtChimney/scripts.pory"
	.string "MAGMA's destructive plan!\p"
# 788 "data/maps/MtChimney/scripts.pory"
	.string "But… You…\n"
# 789 "data/maps/MtChimney/scripts.pory"
	.string "Whose side are you on?\p"
# 790 "data/maps/MtChimney/scripts.pory"
	.string "Don't think for a moment that you're\n"
# 791 "data/maps/MtChimney/scripts.pory"
	.string "more than just a pawn in this.\p"
# 792 "data/maps/MtChimney/scripts.pory"
	.string "You have no idea the importance of\n"
# 793 "data/maps/MtChimney/scripts.pory"
	.string "the revolution that is coming.\p"
# 794 "data/maps/MtChimney/scripts.pory"
	.string "This revolution will save the world,\n"
# 795 "data/maps/MtChimney/scripts.pory"
	.string "whether you understand it or not.\p"
# 796 "data/maps/MtChimney/scripts.pory"
	.string "You need to choose a side.\n"
# 797 "data/maps/MtChimney/scripts.pory"
	.string "The fence you're sitting on…\l"
# 798 "data/maps/MtChimney/scripts.pory"
	.string "it will collapse beneath you.\p"
# 799 "data/maps/MtChimney/scripts.pory"
	.string "{PLAYER}, we shall meet again!\n"
# 800 "data/maps/MtChimney/scripts.pory"
	.string "And next time… choose wisely.$"
# 801 "data/maps/MtChimney/scripts.pory"

# 802 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MagmaOutnumbersUs:
# 803 "data/maps/MtChimney/scripts.pory"
	.string "Darn… TEAM MAGMA outnumbers us!\n"
# 804 "data/maps/MtChimney/scripts.pory"
	.string "We can't keep up with them!\p"
# 805 "data/maps/MtChimney/scripts.pory"
	.string "Their corporate sponsors must be\n"
# 806 "data/maps/MtChimney/scripts.pory"
	.string "funding this whole operation.$"
# 807 "data/maps/MtChimney/scripts.pory"

# 808 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_LessHabitatForWaterPokemon:
# 809 "data/maps/MtChimney/scripts.pory"
	.string "If they expand the land, there'll be\n"
# 810 "data/maps/MtChimney/scripts.pory"
	.string "less habitats for WATER POKéMON!\p"
# 811 "data/maps/MtChimney/scripts.pory"
	.string "But worse… shipping routes.\n"
# 812 "data/maps/MtChimney/scripts.pory"
	.string "Trade harbors. Our entire economy.\l"
# 813 "data/maps/MtChimney/scripts.pory"
	.string "All built on the coastlines.$"
# 814 "data/maps/MtChimney/scripts.pory"

# 815 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MagmasNameSimilar:
# 816 "data/maps/MtChimney/scripts.pory"
	.string "We're TEAM AQUA!\p"
# 817 "data/maps/MtChimney/scripts.pory"
	.string "They're TEAM MAGMA!\p"
# 818 "data/maps/MtChimney/scripts.pory"
	.string "It burns me up that they'd use such\n"
# 819 "data/maps/MtChimney/scripts.pory"
	.string "a confusing name!\p"
# 820 "data/maps/MtChimney/scripts.pory"
	.string "We protect the seas.\n"
# 821 "data/maps/MtChimney/scripts.pory"
	.string "They exploit the earth.\l"
# 822 "data/maps/MtChimney/scripts.pory"
	.string "The difference is clear.$"
# 823 "data/maps/MtChimney/scripts.pory"

# 824 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_Bushaa:
# 825 "data/maps/MtChimney/scripts.pory"
	.string "Bushaa!$"
# 826 "data/maps/MtChimney/scripts.pory"

# 827 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_LavaCookiesJust200:
# 828 "data/maps/MtChimney/scripts.pory"
	.string "LAVA COOKIES are MT. CHIMNEY's local\n"
# 829 "data/maps/MtChimney/scripts.pory"
	.string "specialty.\p"
# 830 "data/maps/MtChimney/scripts.pory"
	.string "Try one. It's just ¥200.\p"
# 831 "data/maps/MtChimney/scripts.pory"
	.string "Baked with the same geothermal heat\n"
# 832 "data/maps/MtChimney/scripts.pory"
	.string "that MAGMA wants to weaponize.$"
# 833 "data/maps/MtChimney/scripts.pory"

# 834 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ThankYouDear:
# 835 "data/maps/MtChimney/scripts.pory"
	.string "Thank you, dear!\n"
# 836 "data/maps/MtChimney/scripts.pory"
	.string "Enjoy the warmth!$"
# 837 "data/maps/MtChimney/scripts.pory"

# 838 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_YouveNotGotTheMoney:
# 839 "data/maps/MtChimney/scripts.pory"
	.string "Oh, dear. You can't buy a thing if\n"
# 840 "data/maps/MtChimney/scripts.pory"
	.string "you've not got the money.\p"
# 841 "data/maps/MtChimney/scripts.pory"
	.string "That's how the world works, child.$"
# 842 "data/maps/MtChimney/scripts.pory"

# 843 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_OhFineThen:
# 844 "data/maps/MtChimney/scripts.pory"
	.string "Oh, fine then.\n"
# 845 "data/maps/MtChimney/scripts.pory"
	.string "Come back when you can afford it.$"
# 846 "data/maps/MtChimney/scripts.pory"

# 847 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MetoriteFittedOnMachine:
# 848 "data/maps/MtChimney/scripts.pory"
	.string "A METEORITE is fitted on a mysterious\n"
# 849 "data/maps/MtChimney/scripts.pory"
	.string "machine…\p"
# 850 "data/maps/MtChimney/scripts.pory"
	.string "The machine seems to be storing\n"
# 851 "data/maps/MtChimney/scripts.pory"
	.string "energy in the METEORITE.\p"
# 852 "data/maps/MtChimney/scripts.pory"
	.string "It hums with geological potential.$"
# 853 "data/maps/MtChimney/scripts.pory"

# 854 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_RemoveTheMeteorite:
# 855 "data/maps/MtChimney/scripts.pory"
	.string "A METEORITE is fitted on a mysterious\n"
# 856 "data/maps/MtChimney/scripts.pory"
	.string "machine…\p"
# 857 "data/maps/MtChimney/scripts.pory"
	.string "Do you want to remove the METEORITE?\p"
# 858 "data/maps/MtChimney/scripts.pory"
	.string "One small act that could delay\n"
# 859 "data/maps/MtChimney/scripts.pory"
	.string "a continental revolution.$"
# 860 "data/maps/MtChimney/scripts.pory"

# 861 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_PlayerRemovedMeteorite:
# 862 "data/maps/MtChimney/scripts.pory"
	.string "{PLAYER} removed the METEORITE from\n"
# 863 "data/maps/MtChimney/scripts.pory"
	.string "the mysterious machine.\p"
# 864 "data/maps/MtChimney/scripts.pory"
	.string "For now… HOENN is safe.$"
# 865 "data/maps/MtChimney/scripts.pory"

# 866 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_PlayerLeftMeteorite:
# 867 "data/maps/MtChimney/scripts.pory"
	.string "{PLAYER} left the METEORITE where\n"
# 868 "data/maps/MtChimney/scripts.pory"
	.string "it was.\p"
# 869 "data/maps/MtChimney/scripts.pory"
	.string "The machine continues its work.\n"
# 870 "data/maps/MtChimney/scripts.pory"
	.string "The countdown continues.$"
# 871 "data/maps/MtChimney/scripts.pory"

# 872 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MachineMakesNoResponse:
# 873 "data/maps/MtChimney/scripts.pory"
	.string "This mysterious machine…\n"
# 874 "data/maps/MtChimney/scripts.pory"
	.string "It makes no response whatsoever.\p"
# 875 "data/maps/MtChimney/scripts.pory"
	.string "Perhaps it only answers to those\n"
# 876 "data/maps/MtChimney/scripts.pory"
	.string "with the ambition to use it.$"
# 877 "data/maps/MtChimney/scripts.pory"

# 878 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_RouteSign:
# 879 "data/maps/MtChimney/scripts.pory"
	.string "{DOWN_ARROW} JAGGED PATH\n"
# 880 "data/maps/MtChimney/scripts.pory"
	.string "LAVARIDGE TOWN AHEAD\p"
# 881 "data/maps/MtChimney/scripts.pory"
	.string "MT. CHIMNEY: Where the future\n"
# 882 "data/maps/MtChimney/scripts.pory"
	.string "of HOENN will be decided.$"
# 883 "data/maps/MtChimney/scripts.pory"

# 884 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyIntro:
# 885 "data/maps/MtChimney/scripts.pory"
	.string "I've been to the hot springs and\n"
# 886 "data/maps/MtChimney/scripts.pory"
	.string "refreshed my tired bones.\l"
# 887 "data/maps/MtChimney/scripts.pory"
	.string "Right now I'm feeling strong!\p"
# 888 "data/maps/MtChimney/scripts.pory"
	.string "Unlike those MAGMA fools who think\n"
# 889 "data/maps/MtChimney/scripts.pory"
	.string "they can move mountains.$"
# 890 "data/maps/MtChimney/scripts.pory"

# 891 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyDefeat:
# 892 "data/maps/MtChimney/scripts.pory"
	.string "Oh, my goodness.\n"
# 893 "data/maps/MtChimney/scripts.pory"
	.string "Now, aren't you something!$"
# 894 "data/maps/MtChimney/scripts.pory"

# 895 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyPostBattle:
# 896 "data/maps/MtChimney/scripts.pory"
	.string "Well, well, I've lost. I can't call\n"
# 897 "data/maps/MtChimney/scripts.pory"
	.string "myself an EXPERT now, can I?\p"
# 898 "data/maps/MtChimney/scripts.pory"
	.string "But some things never change.\n"
# 899 "data/maps/MtChimney/scripts.pory"
	.string "The mountain still stands.\l"
# 900 "data/maps/MtChimney/scripts.pory"
	.string "For now.$"
# 901 "data/maps/MtChimney/scripts.pory"

# 902 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyRegister:
# 903 "data/maps/MtChimney/scripts.pory"
	.string "Thank you, child. It was fun, as if\n"
# 904 "data/maps/MtChimney/scripts.pory"
	.string "I were battling my own grandchild.\p"
# 905 "data/maps/MtChimney/scripts.pory"
	.string "Please, come see me again for\n"
# 906 "data/maps/MtChimney/scripts.pory"
	.string "a rematch.\p"
# 907 "data/maps/MtChimney/scripts.pory"
	.string "Before the world ends, perhaps.$"
# 908 "data/maps/MtChimney/scripts.pory"

# 909 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyRematchIntro:
# 910 "data/maps/MtChimney/scripts.pory"
	.string "If you can mesh your heart with those\n"
# 911 "data/maps/MtChimney/scripts.pory"
	.string "of your POKéMON, why, you should be\l"
# 912 "data/maps/MtChimney/scripts.pory"
	.string "able to achieve great things.\p"
# 913 "data/maps/MtChimney/scripts.pory"
	.string "Greater than these fools who\n"
# 914 "data/maps/MtChimney/scripts.pory"
	.string "worship minerals and tides.$"
# 915 "data/maps/MtChimney/scripts.pory"

# 916 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyRematchDefeat:
# 917 "data/maps/MtChimney/scripts.pory"
	.string "Oh, my goodness.\n"
# 918 "data/maps/MtChimney/scripts.pory"
	.string "Now, aren't you something!$"
# 919 "data/maps/MtChimney/scripts.pory"

# 920 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShelbyPostRematch:
# 921 "data/maps/MtChimney/scripts.pory"
	.string "Perhaps your heart has become one\n"
# 922 "data/maps/MtChimney/scripts.pory"
	.string "with the hearts of your POKéMON.\p"
# 923 "data/maps/MtChimney/scripts.pory"
	.string "That's something no revolution\n"
# 924 "data/maps/MtChimney/scripts.pory"
	.string "can take from you.$"
# 925 "data/maps/MtChimney/scripts.pory"

# 926 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MelissaIntro:
# 927 "data/maps/MtChimney/scripts.pory"
	.string "I've got the fire in me, baby.\n"
# 928 "data/maps/MtChimney/scripts.pory"
	.string "I can't stand it! I have to battle!\p"
# 929 "data/maps/MtChimney/scripts.pory"
	.string "Unlike those MAGMA creeps who want\n"
# 930 "data/maps/MtChimney/scripts.pory"
	.string "to bottle it and sell it!$"
# 931 "data/maps/MtChimney/scripts.pory"

# 932 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MelissaDefeat:
# 933 "data/maps/MtChimney/scripts.pory"
	.string "Ooh, that was a scorching-hot match!$"
# 934 "data/maps/MtChimney/scripts.pory"

# 935 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_MelissaPostBattle:
# 936 "data/maps/MtChimney/scripts.pory"
	.string "The heat of MT. CHIMNEY warms\n"
# 937 "data/maps/MtChimney/scripts.pory"
	.string "me up, baby!\p"
# 938 "data/maps/MtChimney/scripts.pory"
	.string "Let them try to control it.\n"
# 939 "data/maps/MtChimney/scripts.pory"
	.string "Nature always wins.$"
# 940 "data/maps/MtChimney/scripts.pory"

# 941 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SheilaIntro:
# 942 "data/maps/MtChimney/scripts.pory"
	.string "I've finally made it to MT. CHIMNEY.\n"
# 943 "data/maps/MtChimney/scripts.pory"
	.string "I want to make my POKéMON battle!\p"
# 944 "data/maps/MtChimney/scripts.pory"
	.string "They say MAGMA wants to trigger\n"
# 945 "data/maps/MtChimney/scripts.pory"
	.string "an eruption.\p"
# 946 "data/maps/MtChimney/scripts.pory"
	.string "Let's give them an eruption\n"
# 947 "data/maps/MtChimney/scripts.pory"
	.string "of their own!$"
# 948 "data/maps/MtChimney/scripts.pory"

# 949 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SheilaDefeat:
# 950 "data/maps/MtChimney/scripts.pory"
	.string "The way you battle…\n"
# 951 "data/maps/MtChimney/scripts.pory"
	.string "It's like a MT. CHIMNEY eruption!$"
# 952 "data/maps/MtChimney/scripts.pory"

# 953 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SheilaPostBattle:
# 954 "data/maps/MtChimney/scripts.pory"
	.string "Like I said, I've finally made it to\n"
# 955 "data/maps/MtChimney/scripts.pory"
	.string "MT. CHIMNEY. It would be a shame if\l"
# 956 "data/maps/MtChimney/scripts.pory"
	.string "I only do a little sightseeing…\p"
# 957 "data/maps/MtChimney/scripts.pory"
	.string "I want to get in some battles and buy\n"
# 958 "data/maps/MtChimney/scripts.pory"
	.string "COOKIES as souvenirs.\p"
# 959 "data/maps/MtChimney/scripts.pory"
	.string "Before MAGMA turns it all to ash.$"
# 960 "data/maps/MtChimney/scripts.pory"

# 961 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShirleyIntro:
# 962 "data/maps/MtChimney/scripts.pory"
	.string "Since I bathed in the hot springs,\n"
# 963 "data/maps/MtChimney/scripts.pory"
	.string "I've been feeling great!\l"
# 964 "data/maps/MtChimney/scripts.pory"
	.string "I'm sure I'm going to win!\p"
# 965 "data/maps/MtChimney/scripts.pory"
	.string "Those MAGMA grunts look tense.\n"
# 966 "data/maps/MtChimney/scripts.pory"
	.string "They should try the springs.$"
# 967 "data/maps/MtChimney/scripts.pory"

# 968 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShirleyDefeat:
# 969 "data/maps/MtChimney/scripts.pory"
	.string "Yowch!\n"
# 970 "data/maps/MtChimney/scripts.pory"
	.string "I'm getting a chill out of the water.$"
# 971 "data/maps/MtChimney/scripts.pory"

# 972 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_ShirleyPostBattle:
# 973 "data/maps/MtChimney/scripts.pory"
	.string "I'll have to take another dip in the\n"
# 974 "data/maps/MtChimney/scripts.pory"
	.string "hot springs. Want to join me?\p"
# 975 "data/maps/MtChimney/scripts.pory"
	.string "Just joking!\p"
# 976 "data/maps/MtChimney/scripts.pory"
	.string "But seriously… if they blow this\n"
# 977 "data/maps/MtChimney/scripts.pory"
	.string "mountain, the springs go with it.$"
# 978 "data/maps/MtChimney/scripts.pory"

# 979 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerIntro:
# 980 "data/maps/MtChimney/scripts.pory"
	.string "This is one fine mountain! Plenty of\n"
# 981 "data/maps/MtChimney/scripts.pory"
	.string "hot people around for company!\p"
# 982 "data/maps/MtChimney/scripts.pory"
	.string "And plenty of cold-hearted fanatics\n"
# 983 "data/maps/MtChimney/scripts.pory"
	.string "trying to ruin it all.$"
# 984 "data/maps/MtChimney/scripts.pory"

# 985 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerDefeat:
# 986 "data/maps/MtChimney/scripts.pory"
	.string "Oh, you're a real firebrand, too!$"
# 987 "data/maps/MtChimney/scripts.pory"

# 988 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerPostBattle:
# 989 "data/maps/MtChimney/scripts.pory"
	.string "I think I need a dip in LAVARIDGE\n"
# 990 "data/maps/MtChimney/scripts.pory"
	.string "HOT SPRING with the locals!\p"
# 991 "data/maps/MtChimney/scripts.pory"
	.string "Before it becomes a crater.$"
# 992 "data/maps/MtChimney/scripts.pory"

# 993 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerRegister:
# 994 "data/maps/MtChimney/scripts.pory"
	.string "I like little fireballs like you.\n"
# 995 "data/maps/MtChimney/scripts.pory"
	.string "Let me register you in my POKéNAV.\p"
# 996 "data/maps/MtChimney/scripts.pory"
	.string "Someone needs to keep an eye on\n"
# 997 "data/maps/MtChimney/scripts.pory"
	.string "these extremists.$"
# 998 "data/maps/MtChimney/scripts.pory"

# 999 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerRematchIntro:
# 1000 "data/maps/MtChimney/scripts.pory"
	.string "I'm happily surrounded by hot people\n"
# 1001 "data/maps/MtChimney/scripts.pory"
	.string "around these parts. I won't lose!\p"
# 1002 "data/maps/MtChimney/scripts.pory"
	.string "MAGMA thinks they own this mountain.\n"
# 1003 "data/maps/MtChimney/scripts.pory"
	.string "Let's remind them who really does.$"
# 1004 "data/maps/MtChimney/scripts.pory"

# 1005 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerRematchDefeat:
# 1006 "data/maps/MtChimney/scripts.pory"
	.string "Gosh, you're still the same\n"
# 1007 "data/maps/MtChimney/scripts.pory"
	.string "firebrand as before!$"
# 1008 "data/maps/MtChimney/scripts.pory"

# 1009 "data/maps/MtChimney/scripts.pory"
MtChimney_Text_SawyerPostRematch:
# 1010 "data/maps/MtChimney/scripts.pory"
	.string "Actually, it really is hot here.\n"
# 1011 "data/maps/MtChimney/scripts.pory"
	.string "I'm overdressed for these parts.\p"
# 1012 "data/maps/MtChimney/scripts.pory"
	.string "But not as overdressed as MAGMA\n"
# 1013 "data/maps/MtChimney/scripts.pory"
	.string "in their delusions of grandeur.$"
