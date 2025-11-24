MOSSDEEP01_MapScripts::
# 6 "data/maps/MOSSDEEP01/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, MOSSDEEP01_OnFrame
# 7 "data/maps/MOSSDEEP01/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MOSSDEEP01_MapScripts_MAP_SCRIPT_ON_TRANSITION
# 10 "data/maps/MOSSDEEP01/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, MOSSDEEP01_OnResume
	.byte 0

MOSSDEEP01_MapScripts_MAP_SCRIPT_ON_TRANSITION:
# 8 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_OnTransition
	return


MOSSDEEP01_OnFrame::
# 36 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 0
	return


MOSSDEEP01_OnTransition::
# 41 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 42 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_PROLOGUE_COMPLETED, MOSSDEEP01_OnTransition_2
MOSSDEEP01_OnTransition_1:
# 45 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 0
# 46 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_ContinueTransition
	return

MOSSDEEP01_OnTransition_2:
# 43 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_SkipPrologue
	goto MOSSDEEP01_OnTransition_1


MOSSDEEP01_SkipPrologue::
# 50 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 1
	return


MOSSDEEP01_ContinueTransition::
# 55 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_ContinueTransition_2
# 58 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_HideFollowerCelebi
MOSSDEEP01_ContinueTransition_1:
# 62 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_ContinueTransition_6
# 65 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_HideWailord
MOSSDEEP01_ContinueTransition_5:
# 68 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideComet
# 70 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_ContinueTransition_10
MOSSDEEP01_ContinueTransition_9:
# 73 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_ContinueTransition_13
MOSSDEEP01_ContinueTransition_12:
# 76 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_ContinueTransition_16
MOSSDEEP01_ContinueTransition_15:
# 81 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_ContinueTransition_19
MOSSDEEP01_ContinueTransition_18:
# 85 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_SetupRivalNPC
# 88 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_ContinueTransition_22
# 92 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_ShowInitialWally
# 93 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideCloneWally
MOSSDEEP01_ContinueTransition_21:
	end

MOSSDEEP01_ContinueTransition_2:
# 56 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_HideStaticCelebi
	goto MOSSDEEP01_ContinueTransition_1

MOSSDEEP01_ContinueTransition_6:
# 63 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_ShowWailord
	goto MOSSDEEP01_ContinueTransition_5

MOSSDEEP01_ContinueTransition_10:
# 71 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideItem1
	goto MOSSDEEP01_ContinueTransition_9

MOSSDEEP01_ContinueTransition_13:
# 74 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideItem2
	goto MOSSDEEP01_ContinueTransition_12

MOSSDEEP01_ContinueTransition_16:
# 77 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideItem3
	goto MOSSDEEP01_ContinueTransition_15

MOSSDEEP01_ContinueTransition_19:
# 82 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_KeepJirachiAwake
	goto MOSSDEEP01_ContinueTransition_18

MOSSDEEP01_ContinueTransition_22:
# 89 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideInitialWally
# 90 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_ShowCloneWally
	goto MOSSDEEP01_ContinueTransition_21


MOSSDEEP01_OnResume::
	end


MOSSDEEP01_EventScript_Prologue::
# 107 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 1
# 108 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 109 "data/maps/MOSSDEEP01/scripts.pory"
	delay 120
# 112 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_ROCK_THROW
# 113 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 3
# 114 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 3
# 115 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 8
# 116 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 10
# 117 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 118 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 119 "data/maps/MOSSDEEP01/scripts.pory"
	delay 80
# 121 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_ROCK_THROW
# 122 "data/maps/MOSSDEEP01/scripts.pory"
	delay 100
# 125 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_ExitTent
# 126 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement
# 127 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 130 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_TEMP_1
# 131 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement 16, Common_Movement_FacePlayer
# 132 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement
# 133 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaWelcome, MSGBOX_DEFAULT
# 134 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 135 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 137 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_EarthquakeWarning, MSGBOX_DEFAULT
# 138 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 2
# 139 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 2
# 140 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 5
# 141 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 8
# 142 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 143 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 144 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_ROCK_THROW
# 145 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 146 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 149 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaGivesCharm, MSGBOX_DEFAULT
# 150 "data/maps/MOSSDEEP01/scripts.pory"
	giveitem ITEM_SHINY_CHARM
# 151 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaCharmExplanation, MSGBOX_DEFAULT
# 153 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HoennDestroyed, MSGBOX_DEFAULT
# 154 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 1
# 155 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 1
# 156 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 2
# 157 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 5
# 158 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 159 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 160 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 161 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 163 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PlayerDecision, MSGBOX_DEFAULT
# 164 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 165 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 166 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GoodLuck, MSGBOX_DEFAULT
# 167 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 169 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_PROLOGUE_COMPLETED
# 170 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
	end


# 174 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_ExitTent:
# 175 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 175 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 175 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 176 "data/maps/MOSSDEEP01/scripts.pory"
	step_end

MOSSDEEP01_HideStaticCelebi::
# 184 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
	return


MOSSDEEP01_HideFollowerCelebi::
# 189 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_FOLLOWER
	return


MOSSDEEP01_HideWailord::
# 194 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WAILORD_PATH
	return


MOSSDEEP01_ShowWailord::
# 199 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WAILORD_PATH
	return


# 203 "data/maps/MOSSDEEP01/scripts.pory"

# 204 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideComet::
# 205 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_COMET
# 206 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 207 "data/maps/MOSSDEEP01/scripts.pory"

# 208 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem1::
# 209 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_1
# 210 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 211 "data/maps/MOSSDEEP01/scripts.pory"

# 212 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem2::
# 213 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_2
# 214 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 215 "data/maps/MOSSDEEP01/scripts.pory"

# 216 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem3::
# 217 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_3
# 218 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 219 "data/maps/MOSSDEEP01/scripts.pory"

# 220 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideInitialWally::
# 221 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_INITIAL
# 222 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_INITIAL
# 223 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 224 "data/maps/MOSSDEEP01/scripts.pory"

# 225 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowInitialWally::
# 226 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_INITIAL
# 227 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_INITIAL
# 228 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 229 "data/maps/MOSSDEEP01/scripts.pory"

# 230 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowCloneWally::
# 231 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_CLONE
# 232 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_CLONE
# 233 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 234 "data/maps/MOSSDEEP01/scripts.pory"

# 235 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideCloneWally::
# 236 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_CLONE
# 237 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_CLONE
# 238 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 239 "data/maps/MOSSDEEP01/scripts.pory"

# 240 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_KeepJirachiAwake::
# 241 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_NORTH
# 242 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 243 "data/maps/MOSSDEEP01/scripts.pory"

# 244 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 245 "data/maps/MOSSDEEP01/scripts.pory"
// TIME GEAR COLLECTION
# 246 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 247 "data/maps/MOSSDEEP01/scripts.pory"

# 248 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item1::
# 249 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 250 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 251 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 252 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem1, MSGBOX_DEFAULT
# 253 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 254 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear1
# 255 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 256 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_1
# 257 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_1
# 258 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 259 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 260 "data/maps/MOSSDEEP01/scripts.pory"

# 261 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item2::
# 262 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 263 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 264 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 265 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem2, MSGBOX_DEFAULT
# 266 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 267 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear2
# 268 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 269 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_2
# 270 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_2
# 271 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 272 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 273 "data/maps/MOSSDEEP01/scripts.pory"

# 274 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item3::
# 275 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 276 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 277 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 278 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem3, MSGBOX_DEFAULT
# 279 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 280 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear3
# 281 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 282 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_3
# 283 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_3
# 284 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 285 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 286 "data/maps/MOSSDEEP01/scripts.pory"

# 287 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item_AlreadyCollected::
# 288 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_AlreadyCollected, MSGBOX_DEFAULT
# 289 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 290 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 291 "data/maps/MOSSDEEP01/scripts.pory"

# 292 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 293 "data/maps/MOSSDEEP01/scripts.pory"
// CELEBI RESCUE EVENT
# 294 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 295 "data/maps/MOSSDEEP01/scripts.pory"

# 296 "data/maps/MOSSDEEP01/scripts.pory"
// No evento de interação com Celebi, após mostrar o Wailord:
# 297 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Celebi::
# 298 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 299 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 300 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_CelebiAlreadyRescued
# 301 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_CelebiNeedGears
# 302 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_CelebiNeedGears
# 303 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_CelebiNeedGears
# 304 "data/maps/MOSSDEEP01/scripts.pory"

# 305 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiPower, MSGBOX_DEFAULT
# 306 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 307 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_HYPER_BEAM
# 308 "data/maps/MOSSDEEP01/scripts.pory"
	
# 309 "data/maps/MOSSDEEP01/scripts.pory"
	// Transform static Celebi into follower
# 310 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 311 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
# 312 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 313 "data/maps/MOSSDEEP01/scripts.pory"
	
# 314 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_CELEBI_RESCUED
# 315 "data/maps/MOSSDEEP01/scripts.pory"
	
# 316 "data/maps/MOSSDEEP01/scripts.pory"
	// Show Wailord path and set subpriority to walk over it
# 317 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WAILORD_PATH
# 318 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectsubpriority LOCALID_WAILORD_BLOCKER, MAP_MOSSDEEP01, 0xFF
# 319 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiCallsWailord, MSGBOX_DEFAULT
# 320 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 321 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 322 "data/maps/MOSSDEEP01/scripts.pory"

# 323 "data/maps/MOSSDEEP01/scripts.pory"
	// Set Celebi as follower
# 324 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 325 "data/maps/MOSSDEEP01/scripts.pory"
	setfollowernpc LOCALID_CELEBI_STATIC, FNPC_ALL, NULL, 0
# 326 "data/maps/MOSSDEEP01/scripts.pory"

# 327 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiCalmed, MSGBOX_DEFAULT
# 328 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 329 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 330 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 331 "data/maps/MOSSDEEP01/scripts.pory"

# 332 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiNeedGears::
# 333 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARAQUANID, 10, 3
# 334 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiHelp, MSGBOX_DEFAULT
# 335 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 336 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 337 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 338 "data/maps/MOSSDEEP01/scripts.pory"

# 339 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiAlreadyRescued::
# 340 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiThanks, MSGBOX_DEFAULT
# 341 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 342 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 343 "data/maps/MOSSDEEP01/scripts.pory"

# 344 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 345 "data/maps/MOSSDEEP01/scripts.pory"
// MIGHTYENA ZONE TRIGGER
# 346 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 347 "data/maps/MOSSDEEP01/scripts.pory"

# 348 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaZone::
# 349 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 350 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_MightyenaZone_Safe
# 351 "data/maps/MOSSDEEP01/scripts.pory"
	
# 352 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_PIN
# 353 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_ExclamationMark
# 354 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 355 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 356 "data/maps/MOSSDEEP01/scripts.pory"
	
# 357 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_FindNearestMightyena
# 358 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_0x8008, Common_Movement_ExclamationMark
# 359 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 360 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_0x8008, Common_Movement_FacePlayer
# 361 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 362 "data/maps/MOSSDEEP01/scripts.pory"
	
# 363 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 364 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 365 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 366 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 367 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 368 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
# 369 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 370 "data/maps/MOSSDEEP01/scripts.pory"
	
# 371 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
# 372 "data/maps/MOSSDEEP01/scripts.pory"
	
# 373 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 374 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 14, 67
# 375 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 376 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 377 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 378 "data/maps/MOSSDEEP01/scripts.pory"

# 379 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_FindNearestMightyena::
# 380 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8008, 6
# 381 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 382 "data/maps/MOSSDEEP01/scripts.pory"

# 383 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_MightyenaZone_Safe::
# 384 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 385 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 386 "data/maps/MOSSDEEP01/scripts.pory"

# 387 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 388 "data/maps/MOSSDEEP01/scripts.pory"
// MIGHTYENA NPC INTERACTION
# 389 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 390 "data/maps/MOSSDEEP01/scripts.pory"

# 391 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Mightyena::
# 392 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FacePlayer
# 393 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 394 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 395 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_MightyenaFriendly
# 396 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 397 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 398 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 399 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 400 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 401 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 402 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 403 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
# 404 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 405 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
# 406 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 407 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 11, 71
# 408 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 409 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 410 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 411 "data/maps/MOSSDEEP01/scripts.pory"

# 412 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaFriendly::
# 413 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 414 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaFriendly, MSGBOX_DEFAULT
# 415 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 416 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 417 "data/maps/MOSSDEEP01/scripts.pory"

# 418 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 419 "data/maps/MOSSDEEP01/scripts.pory"
// POKEMON NPC INTERACTIONS
# 420 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 421 "data/maps/MOSSDEEP01/scripts.pory"

# 422 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_PidgeotInitial::
# 423 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 424 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 425 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_PIDGEOT, CRY_MODE_NORMAL
# 426 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PidgeotGreeting, MSGBOX_DEFAULT
# 427 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 428 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 429 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 430 "data/maps/MOSSDEEP01/scripts.pory"

# 431 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Bulbasaur::
# 432 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 433 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 434 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_BULBASAUR, CRY_MODE_NORMAL
# 435 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 436 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 437 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 438 "data/maps/MOSSDEEP01/scripts.pory"

# 439 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Totodile::
# 440 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 441 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 442 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_TOTODILE, CRY_MODE_NORMAL
# 443 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 444 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 445 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 446 "data/maps/MOSSDEEP01/scripts.pory"

# 447 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Torchic::
# 448 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 449 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 450 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_TORCHIC, CRY_MODE_NORMAL
# 451 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 452 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 453 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 454 "data/maps/MOSSDEEP01/scripts.pory"

# 455 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 456 "data/maps/MOSSDEEP01/scripts.pory"
// WALLY NPC - SIMPLIFIED
# 457 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 458 "data/maps/MOSSDEEP01/scripts.pory"

# 459 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wally::
# 460 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 461 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 462 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_WallyAfterIntro
# 463 "data/maps/MOSSDEEP01/scripts.pory"
	
# 464 "data/maps/MOSSDEEP01/scripts.pory"
	// Check if attacked by Mightyenas
# 465 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_WALLY_ATTACKED_BY_MIGHTYENA, MOSSDEEP01_EventScript_WallyNotReady
# 466 "data/maps/MOSSDEEP01/scripts.pory"
	
# 467 "data/maps/MOSSDEEP01/scripts.pory"
	// First conversation (after attack)
# 468 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyIntro, MSGBOX_DEFAULT
# 469 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 470 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_INTRO_DONE
# 471 "data/maps/MOSSDEEP01/scripts.pory"
	
# 472 "data/maps/MOSSDEEP01/scripts.pory"
	// Hide initial Wally and Pidgeot
# 473 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_INITIAL
# 474 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_INITIAL
# 475 "data/maps/MOSSDEEP01/scripts.pory"
	
# 476 "data/maps/MOSSDEEP01/scripts.pory"
	// Show Wally and Pidgeot at new position
# 477 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_CLONE
# 478 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_CLONE
# 479 "data/maps/MOSSDEEP01/scripts.pory"
	
# 480 "data/maps/MOSSDEEP01/scripts.pory"
	// Teleport player
# 481 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 47, 45
# 482 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 483 "data/maps/MOSSDEEP01/scripts.pory"

# 484 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyWarped, MSGBOX_DEFAULT
# 485 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 486 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 487 "data/maps/MOSSDEEP01/scripts.pory"

# 488 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyNotReady::
# 489 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyNotReady, MSGBOX_DEFAULT
# 490 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 491 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 492 "data/maps/MOSSDEEP01/scripts.pory"

# 493 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyAfterIntro::
# 494 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyAfterCelebi, MSGBOX_DEFAULT
# 495 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 496 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 497 "data/maps/MOSSDEEP01/scripts.pory"

# 498 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 499 "data/maps/MOSSDEEP01/scripts.pory"
// SURVIVOR NPC
# 500 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 501 "data/maps/MOSSDEEP01/scripts.pory"

# 502 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Survivor::
# 503 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 504 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 505 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_SurvivorAfterCelebi
# 506 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorTrapped, MSGBOX_DEFAULT
# 507 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 508 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 509 "data/maps/MOSSDEEP01/scripts.pory"

# 510 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SurvivorAfterCelebi::
# 511 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_TEMP_14, MOSSDEEP01_EventScript_SurvivorMoved
# 512 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorAmazed, MSGBOX_DEFAULT
# 513 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 514 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorGoing, MSGBOX_DEFAULT
# 515 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 516 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_SURVIVOR, MOSSDEEP01_Movement_SurvivorGoUp
# 517 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 518 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_TEMP_14
# 519 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 520 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 521 "data/maps/MOSSDEEP01/scripts.pory"

# 522 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SurvivorMoved::
# 523 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorHappy, MSGBOX_DEFAULT
# 524 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 525 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 526 "data/maps/MOSSDEEP01/scripts.pory"

# 527 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_SurvivorGoUp:
# 528 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 529 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 530 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 531 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 532 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 533 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 534 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 535 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 536 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 537 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 538 "data/maps/MOSSDEEP01/scripts.pory"

# 539 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 540 "data/maps/MOSSDEEP01/scripts.pory"
// HEALER NPC
# 541 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 542 "data/maps/MOSSDEEP01/scripts.pory"

# 543 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Healer::
# 544 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 545 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 546 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HealerWelcome, MSGBOX_DEFAULT
# 547 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_HEAL
# 548 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Healing, MSGBOX_DEFAULT
# 549 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 550 "data/maps/MOSSDEEP01/scripts.pory"
	special HealPlayerParty
# 551 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HealedComplete, MSGBOX_DEFAULT
# 552 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 553 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 554 "data/maps/MOSSDEEP01/scripts.pory"

# 555 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 556 "data/maps/MOSSDEEP01/scripts.pory"
// GRANDMA EVENT WITH STORY //
# 557 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 558 "data/maps/MOSSDEEP01/scripts.pory"

# 559 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Grandma::
# 560 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 561 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 562 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandmaAfterFirstTalk
# 563 "data/maps/MOSSDEEP01/scripts.pory"
	
# 564 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAskStory, MSGBOX_YESNO
# 565 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, YES
# 566 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_TellStory
# 567 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaBeCareful, MSGBOX_DEFAULT
# 568 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
# 569 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 570 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 571 "data/maps/MOSSDEEP01/scripts.pory"

# 572 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_TellStory::
# 573 "data/maps/MOSSDEEP01/scripts.pory"
	fadeoutbgm 0
# 574 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 575 "data/maps/MOSSDEEP01/scripts.pory"
	
# 576 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AEGISLASH, 10, 3
# 577 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 578 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory1, MSGBOX_DEFAULT
# 579 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 580 "data/maps/MOSSDEEP01/scripts.pory"
	
# 581 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ALOMOMOLA, 10, 3
# 582 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
# 583 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory2, MSGBOX_DEFAULT
# 584 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 585 "data/maps/MOSSDEEP01/scripts.pory"

# 586 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AVALUGG, 10, 3
# 587 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SURF
# 588 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_THUNDERBOLT
# 589 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory3, MSGBOX_DEFAULT
# 590 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 591 "data/maps/MOSSDEEP01/scripts.pory"
	
# 592 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AMAURA, 10, 3
# 593 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory4, MSGBOX_DEFAULT
# 594 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 595 "data/maps/MOSSDEEP01/scripts.pory"

# 596 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AROMATISSE, 10, 3
# 597 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory5, MSGBOX_DEFAULT
# 598 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 599 "data/maps/MOSSDEEP01/scripts.pory"

# 600 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARROKUDA, 10, 3
# 601 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory6, MSGBOX_DEFAULT
# 602 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 603 "data/maps/MOSSDEEP01/scripts.pory"

# 604 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AUDINO, 10, 3
# 605 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory7, MSGBOX_DEFAULT
# 606 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 607 "data/maps/MOSSDEEP01/scripts.pory"

# 608 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AURORUS, 10, 3
# 609 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory8, MSGBOX_DEFAULT
# 610 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 611 "data/maps/MOSSDEEP01/scripts.pory"

# 612 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AMOONGUSS, 10, 3
# 613 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory9, MSGBOX_DEFAULT
# 614 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 615 "data/maps/MOSSDEEP01/scripts.pory"
	
# 616 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_APPLIN, 10, 3
# 617 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory10, MSGBOX_DEFAULT
# 618 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 619 "data/maps/MOSSDEEP01/scripts.pory"
	
# 620 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_APPLETUN, 10, 3
# 621 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory11, MSGBOX_DEFAULT
# 622 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 623 "data/maps/MOSSDEEP01/scripts.pory"

# 624 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AXEW, 10, 3
# 625 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory12, MSGBOX_DEFAULT
# 626 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 627 "data/maps/MOSSDEEP01/scripts.pory"
	
# 628 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARBOLIVA, 10, 3
# 629 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory13, MSGBOX_DEFAULT
# 630 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 631 "data/maps/MOSSDEEP01/scripts.pory"

# 632 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARCHEN, 10, 3
# 633 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 634 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 635 "data/maps/MOSSDEEP01/scripts.pory"

# 636 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 637 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
# 638 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 639 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 640 "data/maps/MOSSDEEP01/scripts.pory"

# 641 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandmaAfterFirstTalk::
# 642 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAskAgain, MSGBOX_YESNO
# 643 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, YES
# 644 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_TellStory
# 645 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 646 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 647 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 648 "data/maps/MOSSDEEP01/scripts.pory"

# 649 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Grandpa::
# 650 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 651 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 652 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandpaAfter
# 653 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaFirstTalk, MSGBOX_DEFAULT
# 654 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 655 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 656 "data/maps/MOSSDEEP01/scripts.pory"

# 657 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandpaAfter::
# 658 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaAfterTalk, MSGBOX_DEFAULT
# 659 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 660 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 661 "data/maps/MOSSDEEP01/scripts.pory"

# 662 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 663 "data/maps/MOSSDEEP01/scripts.pory"
// RIVAL NPC (GENDER-BASED)
# 664 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 665 "data/maps/MOSSDEEP01/scripts.pory"

# 666 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SetupRivalNPC::
# 667 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 668 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 669 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_ShowFemaleRival
# 670 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
# 671 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
# 672 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 673 "data/maps/MOSSDEEP01/scripts.pory"

# 674 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowFemaleRival::
# 675 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
# 676 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
# 677 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 678 "data/maps/MOSSDEEP01/scripts.pory"

# 679 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalMale::
# 680 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 681 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 682 "data/maps/MOSSDEEP01/scripts.pory"
	random 4
# 683 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 0
# 684 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case0
# 685 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 1
# 686 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case1
# 687 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 2
# 688 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case2
# 689 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 3
# 690 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case3
# 691 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 692 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 693 "data/maps/MOSSDEEP01/scripts.pory"

# 694 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case0::
# 695 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale01, MSGBOX_DEFAULT
# 696 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 697 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 698 "data/maps/MOSSDEEP01/scripts.pory"

# 699 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case1::
# 700 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale02, MSGBOX_DEFAULT
# 701 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 702 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 703 "data/maps/MOSSDEEP01/scripts.pory"

# 704 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case2::
# 705 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale03, MSGBOX_DEFAULT
# 706 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 707 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 708 "data/maps/MOSSDEEP01/scripts.pory"

# 709 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case3::
# 710 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale04, MSGBOX_DEFAULT
# 711 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 712 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 713 "data/maps/MOSSDEEP01/scripts.pory"

# 714 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalFemale::
# 715 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 716 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 717 "data/maps/MOSSDEEP01/scripts.pory"
	random 4
# 718 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 0
# 719 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case0
# 720 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 1
# 721 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case1
# 722 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 2
# 723 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case2
# 724 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 3
# 725 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case3
# 726 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 727 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 728 "data/maps/MOSSDEEP01/scripts.pory"

# 729 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case0::
# 730 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale01, MSGBOX_DEFAULT
# 731 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 732 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 733 "data/maps/MOSSDEEP01/scripts.pory"

# 734 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case1::
# 735 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale02, MSGBOX_DEFAULT
# 736 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 737 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 738 "data/maps/MOSSDEEP01/scripts.pory"

# 739 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case2::
# 740 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale03, MSGBOX_DEFAULT
# 741 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 742 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 743 "data/maps/MOSSDEEP01/scripts.pory"

# 744 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case3::
# 745 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale04, MSGBOX_DEFAULT
# 746 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 747 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 748 "data/maps/MOSSDEEP01/scripts.pory"

# 749 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Child01::
# 750 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 751 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 752 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Child01, MSGBOX_DEFAULT
# 753 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 754 "data/maps/MOSSDEEP01/scripts.pory"
	end	
# 755 "data/maps/MOSSDEEP01/scripts.pory"

# 756 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Child02::
# 757 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 758 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 759 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Child02, MSGBOX_DEFAULT
# 760 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 761 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 762 "data/maps/MOSSDEEP01/scripts.pory"

# 763 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 764 "data/maps/MOSSDEEP01/scripts.pory"
// WAILORD BLOCKER - Simple blocking system
# 765 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 766 "data/maps/MOSSDEEP01/scripts.pory"

# 767 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordBlocker::
# 768 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 769 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 770 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WailordGone
# 771 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WailordBlocking, MSGBOX_DEFAULT
# 772 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 773 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 774 "data/maps/MOSSDEEP01/scripts.pory"

# 775 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordGone::
# 776 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PathNowOpen, MSGBOX_DEFAULT
# 777 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 778 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 779 "data/maps/MOSSDEEP01/scripts.pory"

# 780 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordBlocksPath::
# 781 "data/maps/MOSSDEEP01/scripts.pory"
    lockall
# 782 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailordBlocks, MSGBOX_DEFAULT
# 783 "data/maps/MOSSDEEP01/scripts.pory"
    closemessage
# 784 "data/maps/MOSSDEEP01/scripts.pory"
    applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 785 "data/maps/MOSSDEEP01/scripts.pory"
    waitmovement 0
# 786 "data/maps/MOSSDEEP01/scripts.pory"
    releaseall
# 787 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 788 "data/maps/MOSSDEEP01/scripts.pory"

# 789 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordPathClear::
# 790 "data/maps/MOSSDEEP01/scripts.pory"
    // Path is clear, do nothing
# 791 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 792 "data/maps/MOSSDEEP01/scripts.pory"

# 793 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wailord::
# 794 "data/maps/MOSSDEEP01/scripts.pory"
    lock
# 795 "data/maps/MOSSDEEP01/scripts.pory"
    faceplayer
# 796 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailordIdle, MSGBOX_DEFAULT
# 797 "data/maps/MOSSDEEP01/scripts.pory"
    release
# 798 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 799 "data/maps/MOSSDEEP01/scripts.pory"

# 800 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wailmer::
# 801 "data/maps/MOSSDEEP01/scripts.pory"
    lock
# 802 "data/maps/MOSSDEEP01/scripts.pory"
    faceplayer
# 803 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailmerIdle, MSGBOX_DEFAULT
# 804 "data/maps/MOSSDEEP01/scripts.pory"
    release
# 805 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 806 "data/maps/MOSSDEEP01/scripts.pory"

# 807 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordJumpOver::
# 808 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 809 "data/maps/MOSSDEEP01/scripts.pory"
	// Pula no lugar virado para cima
# 810 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_JumpOverWailordUp
# 811 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 812 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_BIKE_HOP
# 813 "data/maps/MOSSDEEP01/scripts.pory"
	
# 814 "data/maps/MOSSDEEP01/scripts.pory"
	// Move o jogador para o outro lado (atravessa o Wailord)
# 815 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_CrossWailordUp
# 816 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 817 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_BIKE_HOP
# 818 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 819 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 820 "data/maps/MOSSDEEP01/scripts.pory"

# 821 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_JumpOverWailordUp:
# 822 "data/maps/MOSSDEEP01/scripts.pory"
	jump_in_place_up     // EXISTE - pulo no lugar virado para cima
# 823 "data/maps/MOSSDEEP01/scripts.pory"
	delay_4
# 824 "data/maps/MOSSDEEP01/scripts.pory"
	jump_in_place_up     // Segundo pulo para efeito
# 825 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 826 "data/maps/MOSSDEEP01/scripts.pory"

# 827 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CrossWailordUp:
# 828 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up              // Atravessa o Wailord
# 829 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 830 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up  
# 831 "data/maps/MOSSDEEP01/scripts.pory"
	step_end	
# 832 "data/maps/MOSSDEEP01/scripts.pory"

# 833 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 834 "data/maps/MOSSDEEP01/scripts.pory"
// JIRACHI WAKE EVENT - TRIGGER BASED
# 835 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 836 "data/maps/MOSSDEEP01/scripts.pory"

# 837 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_JirachiTrigger::
# 838 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 839 "data/maps/MOSSDEEP01/scripts.pory"
	
# 840 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiAlreadyAwake
# 841 "data/maps/MOSSDEEP01/scripts.pory"
	
# 842 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiWaking, MSGBOX_DEFAULT
# 843 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 844 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 845 "data/maps/MOSSDEEP01/scripts.pory"
	
# 846 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 847 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_PSYBEAM
# 848 "data/maps/MOSSDEEP01/scripts.pory"
	delay 10
# 849 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 4
# 850 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 851 "data/maps/MOSSDEEP01/scripts.pory"
	
# 852 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_SOUTH
# 853 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_PSYBEAM
# 854 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 855 "data/maps/MOSSDEEP01/scripts.pory"
	
# 856 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_NORTH
# 857 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SWIFT
# 858 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 859 "data/maps/MOSSDEEP01/scripts.pory"
	
# 860 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_JIRACHI_AWAKE
# 861 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiAwoken, MSGBOX_DEFAULT
# 862 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 863 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 864 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 865 "data/maps/MOSSDEEP01/scripts.pory"

# 866 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiAlreadyAwake::
# 867 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 868 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 869 "data/maps/MOSSDEEP01/scripts.pory"

# 870 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Jirachi::
# 871 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 872 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 873 "data/maps/MOSSDEEP01/scripts.pory"
	
# 874 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiSleeping
# 875 "data/maps/MOSSDEEP01/scripts.pory"
	
# 876 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_JirachiNeedCelebi
# 877 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_JirachiNeedItems
# 878 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_JirachiNeedItems
# 879 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_JirachiNeedItems
# 880 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_QUEST_COMPLETED, MOSSDEEP01_JirachiAlreadyCompleted
# 881 "data/maps/MOSSDEEP01/scripts.pory"
	
# 882 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_EventScript_QuestComplete
# 883 "data/maps/MOSSDEEP01/scripts.pory"

# 884 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiNeedCelebi::
# 885 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiNeedCelebi, MSGBOX_DEFAULT
# 886 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 887 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 888 "data/maps/MOSSDEEP01/scripts.pory"

# 889 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiNeedItems::
# 890 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiNeedItems, MSGBOX_DEFAULT
# 891 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 892 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 893 "data/maps/MOSSDEEP01/scripts.pory"

# 894 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiAlreadyCompleted::
# 895 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiCompleted, MSGBOX_DEFAULT
# 896 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 897 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 898 "data/maps/MOSSDEEP01/scripts.pory"

# 899 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiSleeping::
# 900 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiStillSleeping, MSGBOX_DEFAULT
# 901 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 902 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 903 "data/maps/MOSSDEEP01/scripts.pory"

# 904 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 905 "data/maps/MOSSDEEP01/scripts.pory"
// QUEST COMPLETION - JIRACHI SENDS PLAYER HOME
# 906 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 907 "data/maps/MOSSDEEP01/scripts.pory"

# 908 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_QuestComplete::
# 909 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_ThankYou, MSGBOX_DEFAULT
# 910 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 911 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_QUEST_COMPLETED
# 912 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CometAppears, MSGBOX_DEFAULT
# 913 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 914 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 8
# 915 "data/maps/MOSSDEEP01/scripts.pory"
	delay 40
# 916 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceUp
# 917 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 918 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_BLACK, 4
# 919 "data/maps/MOSSDEEP01/scripts.pory"
	delay 10
# 920 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_COMET
# 921 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_MILLENNIUM_COMET
# 922 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_SHINY
# 923 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 2
# 924 "data/maps/MOSSDEEP01/scripts.pory"
	delay 8
# 925 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 2
# 926 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 927 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_THUNDERSTORM
# 928 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 929 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SACRED_FIRE
# 930 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 931 "data/maps/MOSSDEEP01/scripts.pory"
	special SpawnCameraObject
# 932 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SWIFT
# 933 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MOSSDEEP01_Movement_CameraFollowComet
# 934 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_MILLENNIUM_COMET, MOSSDEEP01_Movement_CometCrossingSky
# 935 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 936 "data/maps/MOSSDEEP01/scripts.pory"
	special RemoveCameraObject
# 937 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 938 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_EXPLOSION
# 939 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 940 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 941 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 942 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SOLAR_BEAM
# 943 "data/maps/MOSSDEEP01/scripts.pory"
	delay 40
# 944 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 8
# 945 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 946 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_MILLENNIUM_COMET
# 947 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_COMET
# 948 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_TimeToWakeUp, MSGBOX_DEFAULT
# 949 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 950 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 951 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_TELEPORT
# 952 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 12
# 953 "data/maps/MOSSDEEP01/scripts.pory"
	delay 80
# 954 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 955 "data/maps/MOSSDEEP01/scripts.pory"
	
# 956 "data/maps/MOSSDEEP01/scripts.pory"
	// Set flags for Littleroot Town start
# 957 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_VISITED_LITTLEROOT_TOWN
# 958 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
# 959 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
# 960 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SET_WALL_CLOCK
# 961 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_RESCUED_BIRCH
# 962 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 963 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SYS_B_DASH
# 964 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_RECEIVED_RUNNING_SHOES
# 965 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SYS_POKEMON_GET
# 966 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SYS_POKEDEX_GET
# 967 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 6
# 968 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 4
# 969 "data/maps/MOSSDEEP01/scripts.pory"
	
# 970 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 971 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 972 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_WarpMale
# 973 "data/maps/MOSSDEEP01/scripts.pory"
	
# 974 "data/maps/MOSSDEEP01/scripts.pory"
	// Female player
# 975 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
# 976 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 977 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 978 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
# 979 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 980 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
# 981 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 982 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 983 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 984 "data/maps/MOSSDEEP01/scripts.pory"

# 985 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_WarpMale::
# 986 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
# 987 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 988 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 989 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
# 990 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 991 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
# 992 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 993 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 994 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 995 "data/maps/MOSSDEEP01/scripts.pory"

# 996 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 997 "data/maps/MOSSDEEP01/scripts.pory"
// MOVEMENT SCRIPTS
# 998 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 999 "data/maps/MOSSDEEP01/scripts.pory"

# 1000 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CameraFollowComet:
# 1001 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1002 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1003 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1004 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1005 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1006 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1007 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1008 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1009 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1010 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1011 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1012 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1013 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1014 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1015 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1016 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1017 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1018 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1019 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1020 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1021 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1022 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1023 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1024 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1025 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1026 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1027 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1028 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1029 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1030 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1031 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1032 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1033 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1034 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1035 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1036 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1037 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1038 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1039 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1040 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1041 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 1042 "data/maps/MOSSDEEP01/scripts.pory"

# 1043 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CometCrossingSky:
# 1044 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1045 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1046 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1047 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1048 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1049 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1050 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1051 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1052 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1053 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1054 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1055 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1056 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1057 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1058 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1059 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1060 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1061 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1062 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1063 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1064 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1065 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1066 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1067 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1068 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1069 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1070 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1071 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1072 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1073 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1074 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1075 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1076 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1077 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1078 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1079 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1080 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1081 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1082 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1083 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1084 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1085 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1086 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1087 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1088 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1089 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1090 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1091 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1092 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1093 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1094 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1095 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1096 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1097 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1098 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1099 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1100 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1101 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1102 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1103 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1104 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1105 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1106 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1107 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1108 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1109 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1110 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1111 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1112 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1113 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1114 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1115 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1116 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1117 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1118 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1119 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1120 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1121 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1122 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1123 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1124 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 1125 "data/maps/MOSSDEEP01/scripts.pory"

# 1126 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1127 "data/maps/MOSSDEEP01/scripts.pory"
// TEXT MESSAGES
# 1128 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1129 "data/maps/MOSSDEEP01/scripts.pory"

# 1130 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_NeedCelebiFirst:
# 1131 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: I sense something...\p"
# 1132 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The Guardian of the Forest,\n"
# 1133 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI, is in danger!\p"
# 1134 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please, help CELEBI first!\n"
# 1135 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I assist you.$"
# 1136 "data/maps/MOSSDEEP01/scripts.pory"

# 1137 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_NeedItems:
# 1138 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: Thank you for saving CELEBI!\p"
# 1139 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Now, the flow of time is broken!\p"
# 1140 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please find the 3 TIME GEARS\n"
# 1141 "data/maps/MOSSDEEP01/scripts.pory"
	.string "scattered around this place.\p"
# 1142 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I send you home!$"
# 1143 "data/maps/MOSSDEEP01/scripts.pory"

# 1144 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ThankYou:
# 1145 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You found all the TIME GEARS!\p"
# 1146 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The temporal flow is restoring...\n"
# 1147 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Look! The Millennium Comet!$"
# 1148 "data/maps/MOSSDEEP01/scripts.pory"

# 1149 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CometAppears:
# 1150 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The sky begins to glow!\p"
# 1151 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A brilliant comet streaks across\n"
# 1152 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the heavens!$"
# 1153 "data/maps/MOSSDEEP01/scripts.pory"

# 1154 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_TimeToWakeUp:
# 1155 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: The timeline is restored!\p"
# 1156 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It's time to wake up from this dream...$"
# 1157 "data/maps/MOSSDEEP01/scripts.pory"

# 1158 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AlreadyHelped:
# 1159 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You already helped restore\n"
# 1160 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the flow of time!\p"
# 1161 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you, time traveler!$"
# 1162 "data/maps/MOSSDEEP01/scripts.pory"

# 1163 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem1:
# 1164 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} found something shining\n"
# 1165 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the sand...$"
# 1166 "data/maps/MOSSDEEP01/scripts.pory"

# 1167 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear1:
# 1168 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1169 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the PAST!$"
# 1170 "data/maps/MOSSDEEP01/scripts.pory"

# 1171 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem2:
# 1172 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} discovered something glowing\n"
# 1173 "data/maps/MOSSDEEP01/scripts.pory"
	.string "among the rocks...$"
# 1174 "data/maps/MOSSDEEP01/scripts.pory"

# 1175 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear2:
# 1176 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1177 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the PRESENT!$"
# 1178 "data/maps/MOSSDEEP01/scripts.pory"

# 1179 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem3:
# 1180 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} noticed something sparkling\n"
# 1181 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the water...$"
# 1182 "data/maps/MOSSDEEP01/scripts.pory"

# 1183 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear3:
# 1184 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1185 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the FUTURE!$"
# 1186 "data/maps/MOSSDEEP01/scripts.pory"

# 1187 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AlreadyCollected:
# 1188 "data/maps/MOSSDEEP01/scripts.pory"
	.string "This place seems peaceful now.$"
# 1189 "data/maps/MOSSDEEP01/scripts.pory"

# 1190 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiHelp:
# 1191 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: ... ... ...\p"
# 1192 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The flow of time is broken...\p"
# 1193 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please... find the 3 TIME GEARS...\n"
# 1194 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I be freed...$"
# 1195 "data/maps/MOSSDEEP01/scripts.pory"

# 1196 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiPower:
# 1197 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: You found all the TIME GEARS!\p"
# 1198 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Now I can use my power to restore\n"
# 1199 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the temporal flow!$"
# 1200 "data/maps/MOSSDEEP01/scripts.pory"

# 1201 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiCalmed:
# 1202 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild POKÉMON have calmed down!$"
# 1203 "data/maps/MOSSDEEP01/scripts.pory"

# 1204 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiThanks:
# 1205 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: Thank you, {PLAYER}!\n"
# 1206 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Together we restored time!$"
# 1207 "data/maps/MOSSDEEP01/scripts.pory"

# 1208 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaAttack:
# 1209 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild MIGHTYENA attacks!$"
# 1210 "data/maps/MOSSDEEP01/scripts.pory"

# 1211 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaBlackedOut:
# 1212 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild POKÉMON are too aggressive!\n"
# 1213 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You blacked out!$"
# 1214 "data/maps/MOSSDEEP01/scripts.pory"

# 1215 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaFriendly:
# 1216 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The MIGHTYENA looks calm and friendly.\n"
# 1217 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Amazing, they're so peaceful now!\p"
# 1218 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You can even pet them!$"
# 1219 "data/maps/MOSSDEEP01/scripts.pory"

# 1220 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorTrapped:
# 1221 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: Help! These wild POKÉMON\n"
# 1222 "data/maps/MOSSDEEP01/scripts.pory"
	.string "are too aggressive!\p"
# 1223 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I can't escape!$"
# 1224 "data/maps/MOSSDEEP01/scripts.pory"

# 1225 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorAmazed:
# 1226 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: Incredible! The POKÉMON\n"
# 1227 "data/maps/MOSSDEEP01/scripts.pory"
	.string "suddenly calmed down!\p"
# 1228 "data/maps/MOSSDEEP01/scripts.pory"
	.string "What happened?$"
# 1229 "data/maps/MOSSDEEP01/scripts.pory"

# 1230 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorGoing:
# 1231 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: I'm going to find a safer\n"
# 1232 "data/maps/MOSSDEEP01/scripts.pory"
	.string "place. Thank you!$"
# 1233 "data/maps/MOSSDEEP01/scripts.pory"

# 1234 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorHappy:
# 1235 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: I feel much safer now.\n"
# 1236 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you for your help!$"
# 1237 "data/maps/MOSSDEEP01/scripts.pory"

# 1238 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HealerWelcome:
# 1239 "data/maps/MOSSDEEP01/scripts.pory"
	.string "HEALER: Let me heal your POKÉMON.$"
# 1240 "data/maps/MOSSDEEP01/scripts.pory"

# 1241 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Healing:
# 1242 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Healing POKÉMON...$"
# 1243 "data/maps/MOSSDEEP01/scripts.pory"

# 1244 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HealedComplete:
# 1245 "data/maps/MOSSDEEP01/scripts.pory"
	.string "HEALER: Your POKÉMON are fully\n"
# 1246 "data/maps/MOSSDEEP01/scripts.pory"
	.string "healed! Good luck!$"
# 1247 "data/maps/MOSSDEEP01/scripts.pory"

# 1248 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaWelcome:
# 1249 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: {PLAYER}! You're awake!\p"
# 1250 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The earthquake was terrible...\n"
# 1251 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Many people are trapped...$"
# 1252 "data/maps/MOSSDEEP01/scripts.pory"

# 1253 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_EarthquakeWarning:
# 1254 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Another tremor!\n"
# 1255 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there!$"
# 1256 "data/maps/MOSSDEEP01/scripts.pory"

# 1257 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaGivesCharm:
# 1258 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Take this SHINY CHARM.\n"
# 1259 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It might bring you luck!$"
# 1260 "data/maps/MOSSDEEP01/scripts.pory"

# 1261 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaCharmExplanation:
# 1262 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: This charm increases your\n"
# 1263 "data/maps/MOSSDEEP01/scripts.pory"
	.string "chances of finding rare POKÉMON.\p"
# 1264 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Use it well!$"
# 1265 "data/maps/MOSSDEEP01/scripts.pory"

# 1266 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HoennDestroyed:
# 1267 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The HOENN region...\n"
# 1268 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It's been completely destroyed...\p"
# 1269 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But there are survivors who need\n"
# 1270 "data/maps/MOSSDEEP01/scripts.pory"
	.string "help. Please, {PLAYER}, help them!$"
# 1271 "data/maps/MOSSDEEP01/scripts.pory"

# 1272 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PlayerDecision:
# 1273 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} decides to help the survivors\n"
# 1274 "data/maps/MOSSDEEP01/scripts.pory"
	.string "and explore the devastated area.$"
# 1275 "data/maps/MOSSDEEP01/scripts.pory"

# 1276 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GoodLuck:
# 1277 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Good luck, {PLAYER}!\n"
# 1278 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be very careful!$"
# 1279 "data/maps/MOSSDEEP01/scripts.pory"

# 1280 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaEncouragement:
# 1281 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: You're doing great, {PLAYER}!\n"
# 1282 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Keep helping people!$"
# 1283 "data/maps/MOSSDEEP01/scripts.pory"

# 1284 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaFirstTalk:
# 1285 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: The world has changed...\n"
# 1286 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Everything is so different now...$"
# 1287 "data/maps/MOSSDEEP01/scripts.pory"

# 1288 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaAfterTalk:
# 1289 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: Thank you for helping\n"
# 1290 "data/maps/MOSSDEEP01/scripts.pory"
	.string "everyone, {PLAYER}. You're a hero!$"
# 1291 "data/maps/MOSSDEEP01/scripts.pory"

# 1292 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory1:
# 1293 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: This was the beginning...$"
# 1294 "data/maps/MOSSDEEP01/scripts.pory"

# 1295 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory2:
# 1296 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Then the conflict started...$"
# 1297 "data/maps/MOSSDEEP01/scripts.pory"

# 1298 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory3:
# 1299 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The great battle between\n"
# 1300 "data/maps/MOSSDEEP01/scripts.pory"
	.string "land and sea...$"
# 1301 "data/maps/MOSSDEEP01/scripts.pory"

# 1302 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory4:
# 1303 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The tsunami devastated\n"
# 1304 "data/maps/MOSSDEEP01/scripts.pory"
	.string "everything...$"
# 1305 "data/maps/MOSSDEEP01/scripts.pory"

# 1306 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory5:
# 1307 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Volcanoes erupted across\n"
# 1308 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the land...$"
# 1309 "data/maps/MOSSDEEP01/scripts.pory"

# 1310 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory6:
# 1311 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The land became a barren\n"
# 1312 "data/maps/MOSSDEEP01/scripts.pory"
	.string "wasteland...$"
# 1313 "data/maps/MOSSDEEP01/scripts.pory"

# 1314 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory7:
# 1315 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The oceans raged with\n"
# 1316 "data/maps/MOSSDEEP01/scripts.pory"
	.string "unending storms...$"
# 1317 "data/maps/MOSSDEEP01/scripts.pory"

# 1318 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory8:
# 1319 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Survivors gathered in\n"
# 1320 "data/maps/MOSSDEEP01/scripts.pory"
	.string "camps...$"
# 1321 "data/maps/MOSSDEEP01/scripts.pory"

# 1322 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory9:
# 1323 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Hope began to fade...$"
# 1324 "data/maps/MOSSDEEP01/scripts.pory"

# 1325 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory10:
# 1326 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: But then a legend\n"
# 1327 "data/maps/MOSSDEEP01/scripts.pory"
	.string "appeared...$"
# 1328 "data/maps/MOSSDEEP01/scripts.pory"

# 1329 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory11:
# 1330 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The sky guardian descended\n"
# 1331 "data/maps/MOSSDEEP01/scripts.pory"
	.string "from above...$"
# 1332 "data/maps/MOSSDEEP01/scripts.pory"

# 1333 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory12:
# 1334 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Peace was restored,\n"
# 1335 "data/maps/MOSSDEEP01/scripts.pory"
	.string "but at a cost...$"
# 1336 "data/maps/MOSSDEEP01/scripts.pory"

# 1337 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory13:
# 1338 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: And this is how our world\n"
# 1339 "data/maps/MOSSDEEP01/scripts.pory"
	.string "became what it is today...$"
# 1340 "data/maps/MOSSDEEP01/scripts.pory"

# 1341 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAskStory:
# 1342 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Hello, {PLAYER}!\p"
# 1343 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Would you like to hear the legends\n"
# 1344 "data/maps/MOSSDEEP01/scripts.pory"
	.string "and stories of how HOENN arrived\l"
# 1345 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the state it is now?$"
# 1346 "data/maps/MOSSDEEP01/scripts.pory"

# 1347 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaBeCareful:
# 1348 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: I understand.\p"
# 1349 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please be very careful when exploring\n"
# 1350 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the MOSSDEEP ruins.\p"
# 1351 "data/maps/MOSSDEEP01/scripts.pory"
	.string "There are many dangers out there...$"
# 1352 "data/maps/MOSSDEEP01/scripts.pory"

# 1353 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAskAgain:
# 1354 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Would you like to hear\n"
# 1355 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the stories of HOENN again?$"
# 1356 "data/maps/MOSSDEEP01/scripts.pory"

# 1357 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale01:
# 1358 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: Hey {PLAYER}! I'm helping\n"
# 1359 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the survivors too!\p"
# 1360 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's work together!$"
# 1361 "data/maps/MOSSDEEP01/scripts.pory"

# 1362 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale02:
# 1363 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: These wild POKÉMON are\n"
# 1364 "data/maps/MOSSDEEP01/scripts.pory"
	.string "really aggressive!\p"
# 1365 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there!$"
# 1366 "data/maps/MOSSDEEP01/scripts.pory"

# 1367 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale03:
# 1368 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: I heard there's a special\n"
# 1369 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON that can help us.\p"
# 1370 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's find it!$"
# 1371 "data/maps/MOSSDEEP01/scripts.pory"

# 1372 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale04:
# 1373 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: We can do this, {PLAYER}!\n"
# 1374 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Together we'll save everyone!$"
# 1375 "data/maps/MOSSDEEP01/scripts.pory"

# 1376 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale01:
# 1377 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: {PLAYER}! I'm so glad\n"
# 1378 "data/maps/MOSSDEEP01/scripts.pory"
	.string "you're safe!\p"
# 1379 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's help the survivors together!$"
# 1380 "data/maps/MOSSDEEP01/scripts.pory"

# 1381 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale02:
# 1382 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: The wild POKÉMON are\n"
# 1383 "data/maps/MOSSDEEP01/scripts.pory"
	.string "acting so strange...\p"
# 1384 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Something must be wrong!$"
# 1385 "data/maps/MOSSDEEP01/scripts.pory"

# 1386 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale03:
# 1387 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: I heard about a legendary\n"
# 1388 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON that controls time.\p"
# 1389 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe it can help us!$"
# 1390 "data/maps/MOSSDEEP01/scripts.pory"

# 1391 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale04:
# 1392 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: We make a great team,\n"
# 1393 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER}! Let's keep going!$"
# 1394 "data/maps/MOSSDEEP01/scripts.pory"

# 1395 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Child01:
# 1396 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CHILD: I'm scared...\n"
# 1397 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Where are my parents?$"
# 1398 "data/maps/MOSSDEEP01/scripts.pory"

# 1399 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Child02:
# 1400 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CHILD: The ground shook really hard...\n"
# 1401 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Then everything changed...$"
# 1402 "data/maps/MOSSDEEP01/scripts.pory"

# 1403 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordBlocking:
# 1404 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A massive WAILORD blocks the path!\p"
# 1405 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems agitated by the chaos...\n"
# 1406 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You can't get through.$"
# 1407 "data/maps/MOSSDEEP01/scripts.pory"

# 1408 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PathNowOpen:
# 1409 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The WAILORD has calmed down and\n"
# 1410 "data/maps/MOSSDEEP01/scripts.pory"
	.string "moved away. The path is clear!$"
# 1411 "data/maps/MOSSDEEP01/scripts.pory"

# 1412 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiWaking:
# 1413 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A mysterious POKÉMON is sleeping\n"
# 1414 "data/maps/MOSSDEEP01/scripts.pory"
	.string "near the rocks...\p"
# 1415 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems to be waking up!$"
# 1416 "data/maps/MOSSDEEP01/scripts.pory"

# 1417 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiAwoken:
# 1418 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI has awoken!$"
# 1419 "data/maps/MOSSDEEP01/scripts.pory"

# 1420 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiNeedCelebi:
# 1421 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: I sense temporal disturbance...\n"
# 1422 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The forest guardian needs help!\p"
# 1423 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please rescue CELEBI first!$"
# 1424 "data/maps/MOSSDEEP01/scripts.pory"

# 1425 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiNeedItems:
# 1426 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: Thank you for saving CELEBI!\n"
# 1427 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But time is still broken...\p"
# 1428 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please find the 3 TIME GEARS\n"
# 1429 "data/maps/MOSSDEEP01/scripts.pory"
	.string "to restore temporal flow!$"
# 1430 "data/maps/MOSSDEEP01/scripts.pory"

# 1431 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiCompleted:
# 1432 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You restored the timeline!\n"
# 1433 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you, time traveler!$"
# 1434 "data/maps/MOSSDEEP01/scripts.pory"

# 1435 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiStillSleeping:
# 1436 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI is sleeping peacefully...\n"
# 1437 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe you should approach it?$"
# 1438 "data/maps/MOSSDEEP01/scripts.pory"

# 1439 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyIntro:
# 1440 "data/maps/MOSSDEEP01/scripts.pory"
	.string "WALLY: Hello, {PLAYER}!\p"
# 1441 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Did you know that in the past people\n"
# 1442 "data/maps/MOSSDEEP01/scripts.pory"
	.string "could train POKÉMON normally?\p"
# 1443 "data/maps/MOSSDEEP01/scripts.pory"
	.string "There were POKÉ BALLS, devices that\n"
# 1444 "data/maps/MOSSDEEP01/scripts.pory"
	.string "captured and stored POKÉMON.\p"
# 1445 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But now... they don't make them anymore.\n"
# 1446 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The technology was lost.\p"
# 1447 "data/maps/MOSSDEEP01/scripts.pory"
	.string "That's why the connection with POKÉMON\n"
# 1448 "data/maps/MOSSDEEP01/scripts.pory"
	.string "has to be made in another way...\p"
# 1449 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A more natural, purer connection.$"
# 1450 "data/maps/MOSSDEEP01/scripts.pory"

# 1451 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyAfterCelebi:
# 1452 "data/maps/MOSSDEEP01/scripts.pory"
	.string "WALLY: {PLAYER}, you did it!\p"
# 1453 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI calmed all the wild POKÉMON.\n"
# 1454 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Amazing!\p"
# 1455 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The connection between POKÉMON and\n"
# 1456 "data/maps/MOSSDEEP01/scripts.pory"
	.string "humans is being restored!$"
# 1457 "data/maps/MOSSDEEP01/scripts.pory"

# 1458 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyWarped:
# 1459 "data/maps/MOSSDEEP01/scripts.pory"
	.string "WALLY: I'll head there first!\p"
# 1460 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Meet me ahead, {PLAYER}!$"
# 1461 "data/maps/MOSSDEEP01/scripts.pory"

# 1462 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyNotReady:
# 1463 "data/maps/MOSSDEEP01/scripts.pory"
	.string "WALLY: Hello, {PLAYER}!\p"
# 1464 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there! The wild\n"
# 1465 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON are very aggressive.\p"
# 1466 "data/maps/MOSSDEEP01/scripts.pory"
	.string "If you get into trouble, come\n"
# 1467 "data/maps/MOSSDEEP01/scripts.pory"
	.string "talk to me!$"
# 1468 "data/maps/MOSSDEEP01/scripts.pory"

# 1469 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PidgeotGreeting:
# 1470 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Pidgeot: Piiidgeoo!$"
# 1471 "data/maps/MOSSDEEP01/scripts.pory"

# 1472 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordBlocks:
# 1473 "data/maps/MOSSDEEP01/scripts.pory"
    .string "There's only water ahead!\p"
# 1474 "data/maps/MOSSDEEP01/scripts.pory"
    .string "You can't cross without help...$"
# 1475 "data/maps/MOSSDEEP01/scripts.pory"

# 1476 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordIdle:
# 1477 "data/maps/MOSSDEEP01/scripts.pory"
    .string "WAILORD is calmly floating on the water.$"
# 1478 "data/maps/MOSSDEEP01/scripts.pory"

# 1479 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailmerIdle:
# 1480 "data/maps/MOSSDEEP01/scripts.pory"
    .string "The WAILMER are splashing playfully!$"
# 1481 "data/maps/MOSSDEEP01/scripts.pory"

# 1482 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiCallsWailord:
# 1483 "data/maps/MOSSDEEP01/scripts.pory"
    .string "CELEBI calls out to the ocean!\p"
# 1484 "data/maps/MOSSDEEP01/scripts.pory"
    .string "A massive WAILORD appears and\n"
# 1485 "data/maps/MOSSDEEP01/scripts.pory"
    .string "creates a path across the water!$"
