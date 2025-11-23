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
# 40 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 41 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_PROLOGUE_COMPLETED, MOSSDEEP01_OnTransition_2
MOSSDEEP01_OnTransition_1:
# 44 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 0
# 45 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_ContinueTransition
	return

MOSSDEEP01_OnTransition_2:
# 42 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_SkipPrologue
	goto MOSSDEEP01_OnTransition_1


MOSSDEEP01_SkipPrologue::
# 49 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 1
	return


MOSSDEEP01_ContinueTransition::
# 54 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_ContinueTransition_2
# 57 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_HideFollowerCelebi
MOSSDEEP01_ContinueTransition_1:
# 61 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_ContinueTransition_6
# 64 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_HideWailord
MOSSDEEP01_ContinueTransition_5:
# 67 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideComet
# 69 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_ContinueTransition_10
MOSSDEEP01_ContinueTransition_9:
# 72 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_ContinueTransition_13
MOSSDEEP01_ContinueTransition_12:
# 75 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_ContinueTransition_16
MOSSDEEP01_ContinueTransition_15:
# 80 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_ContinueTransition_19
MOSSDEEP01_ContinueTransition_18:
# 84 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_SetupRivalNPC
# 87 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_ContinueTransition_22
# 91 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_ShowInitialWally
# 92 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideCloneWally
MOSSDEEP01_ContinueTransition_21:
	end

MOSSDEEP01_ContinueTransition_2:
# 55 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_HideStaticCelebi
	goto MOSSDEEP01_ContinueTransition_1

MOSSDEEP01_ContinueTransition_6:
# 62 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_ShowWailord
	goto MOSSDEEP01_ContinueTransition_5

MOSSDEEP01_ContinueTransition_10:
# 70 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideItem1
	goto MOSSDEEP01_ContinueTransition_9

MOSSDEEP01_ContinueTransition_13:
# 73 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideItem2
	goto MOSSDEEP01_ContinueTransition_12

MOSSDEEP01_ContinueTransition_16:
# 76 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideItem3
	goto MOSSDEEP01_ContinueTransition_15

MOSSDEEP01_ContinueTransition_19:
# 81 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_KeepJirachiAwake
	goto MOSSDEEP01_ContinueTransition_18

MOSSDEEP01_ContinueTransition_22:
# 88 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideInitialWally
# 89 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_ShowCloneWally
	goto MOSSDEEP01_ContinueTransition_21


MOSSDEEP01_OnResume::
	end


MOSSDEEP01_EventScript_Prologue::
# 107 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 1
# 108 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
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
	setvar VAR_0x8004, 4
# 123 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 4
# 124 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 10
# 125 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 12
# 126 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 127 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 128 "data/maps/MOSSDEEP01/scripts.pory"
	delay 100
# 131 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_ExitTent
# 132 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement
# 133 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 136 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_TEMP_1
# 137 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement 16, Common_Movement_FacePlayer
# 138 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement
# 139 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaWelcome, MSGBOX_DEFAULT
# 140 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 141 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 143 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_EarthquakeWarning, MSGBOX_DEFAULT
# 144 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 2
# 145 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 2
# 146 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 5
# 147 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 8
# 148 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 149 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 150 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_ROCK_THROW
# 151 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 152 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 155 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaGivesCharm, MSGBOX_DEFAULT
# 156 "data/maps/MOSSDEEP01/scripts.pory"
	giveitem ITEM_SHINY_CHARM
# 157 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaCharmExplanation, MSGBOX_DEFAULT
# 159 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HoennDestroyed, MSGBOX_DEFAULT
# 160 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 1
# 161 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 1
# 162 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 2
# 163 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 5
# 164 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 165 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 166 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 167 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 169 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PlayerDecision, MSGBOX_DEFAULT
# 170 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 171 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 172 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GoodLuck, MSGBOX_DEFAULT
# 173 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 175 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_PROLOGUE_COMPLETED
# 176 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
	end


# 180 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_ExitTent:
# 181 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 181 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 181 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 182 "data/maps/MOSSDEEP01/scripts.pory"
	step_end

MOSSDEEP01_HideStaticCelebi::
# 190 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
	return


MOSSDEEP01_HideFollowerCelebi::
# 195 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_FOLLOWER
	return


MOSSDEEP01_HideWailord::
# 200 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WAILORD_PATH
	return


MOSSDEEP01_ShowWailord::
# 205 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WAILORD_PATH
	return


# 209 "data/maps/MOSSDEEP01/scripts.pory"

# 210 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideComet::
# 211 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_COMET
# 212 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 213 "data/maps/MOSSDEEP01/scripts.pory"

# 214 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem1::
# 215 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_1
# 216 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 217 "data/maps/MOSSDEEP01/scripts.pory"

# 218 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem2::
# 219 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_2
# 220 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 221 "data/maps/MOSSDEEP01/scripts.pory"

# 222 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem3::
# 223 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_3
# 224 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 225 "data/maps/MOSSDEEP01/scripts.pory"

# 226 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideInitialWally::
# 227 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_INITIAL
# 228 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_INITIAL
# 229 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 230 "data/maps/MOSSDEEP01/scripts.pory"

# 231 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowInitialWally::
# 232 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_INITIAL
# 233 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_INITIAL
# 234 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 235 "data/maps/MOSSDEEP01/scripts.pory"

# 236 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowCloneWally::
# 237 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_CLONE
# 238 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_CLONE
# 239 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 240 "data/maps/MOSSDEEP01/scripts.pory"

# 241 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideCloneWally::
# 242 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_CLONE
# 243 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_CLONE
# 244 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 245 "data/maps/MOSSDEEP01/scripts.pory"

# 246 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_KeepJirachiAwake::
# 247 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_NORTH
# 248 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 249 "data/maps/MOSSDEEP01/scripts.pory"

# 250 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 251 "data/maps/MOSSDEEP01/scripts.pory"
// TIME GEAR COLLECTION
# 252 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 253 "data/maps/MOSSDEEP01/scripts.pory"

# 254 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item1::
# 255 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 256 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 257 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 258 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem1, MSGBOX_DEFAULT
# 259 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 260 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear1
# 261 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 262 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_1
# 263 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_1
# 264 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 265 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 266 "data/maps/MOSSDEEP01/scripts.pory"

# 267 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item2::
# 268 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 269 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 270 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 271 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem2, MSGBOX_DEFAULT
# 272 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 273 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear2
# 274 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 275 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_2
# 276 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_2
# 277 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 278 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 279 "data/maps/MOSSDEEP01/scripts.pory"

# 280 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item3::
# 281 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 282 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 283 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 284 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem3, MSGBOX_DEFAULT
# 285 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 286 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear3
# 287 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 288 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_3
# 289 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_3
# 290 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 291 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 292 "data/maps/MOSSDEEP01/scripts.pory"

# 293 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item_AlreadyCollected::
# 294 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_AlreadyCollected, MSGBOX_DEFAULT
# 295 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 296 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 297 "data/maps/MOSSDEEP01/scripts.pory"

# 298 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 299 "data/maps/MOSSDEEP01/scripts.pory"
// CELEBI RESCUE EVENT
# 300 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 301 "data/maps/MOSSDEEP01/scripts.pory"

# 302 "data/maps/MOSSDEEP01/scripts.pory"
// No evento de interação com Celebi, após mostrar o Wailord:
# 303 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Celebi::
# 304 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 305 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 306 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_CelebiAlreadyRescued
# 307 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_CelebiNeedGears
# 308 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_CelebiNeedGears
# 309 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_CelebiNeedGears
# 310 "data/maps/MOSSDEEP01/scripts.pory"

# 311 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiPower, MSGBOX_DEFAULT
# 312 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 313 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_HYPER_BEAM
# 314 "data/maps/MOSSDEEP01/scripts.pory"
	
# 315 "data/maps/MOSSDEEP01/scripts.pory"
	// Transform static Celebi into follower
# 316 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 317 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
# 318 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 319 "data/maps/MOSSDEEP01/scripts.pory"
	
# 320 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_CELEBI_RESCUED
# 321 "data/maps/MOSSDEEP01/scripts.pory"
	
# 322 "data/maps/MOSSDEEP01/scripts.pory"
	// Show Wailord path and set subpriority to walk over it
# 323 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WAILORD_PATH
# 324 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectsubpriority LOCALID_WAILORD_BLOCKER, MAP_MOSSDEEP01, 0xFF
# 325 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiCallsWailord, MSGBOX_DEFAULT
# 326 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 327 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 328 "data/maps/MOSSDEEP01/scripts.pory"

# 329 "data/maps/MOSSDEEP01/scripts.pory"
	// Set Celebi as follower
# 330 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 331 "data/maps/MOSSDEEP01/scripts.pory"
	setfollowernpc LOCALID_CELEBI_STATIC, FNPC_ALL, NULL, 0
# 332 "data/maps/MOSSDEEP01/scripts.pory"

# 333 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiCalmed, MSGBOX_DEFAULT
# 334 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 335 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 336 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 337 "data/maps/MOSSDEEP01/scripts.pory"

# 338 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiNeedGears::
# 339 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARAQUANID, 10, 3
# 340 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiHelp, MSGBOX_DEFAULT
# 341 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 342 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 343 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 344 "data/maps/MOSSDEEP01/scripts.pory"

# 345 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiAlreadyRescued::
# 346 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiThanks, MSGBOX_DEFAULT
# 347 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 348 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 349 "data/maps/MOSSDEEP01/scripts.pory"

# 350 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 351 "data/maps/MOSSDEEP01/scripts.pory"
// MIGHTYENA ZONE TRIGGER
# 352 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 353 "data/maps/MOSSDEEP01/scripts.pory"

# 354 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaZone::
# 355 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 356 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_MightyenaZone_Safe
# 357 "data/maps/MOSSDEEP01/scripts.pory"
	
# 358 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_PIN
# 359 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_ExclamationMark
# 360 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 361 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 362 "data/maps/MOSSDEEP01/scripts.pory"
	
# 363 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_FindNearestMightyena
# 364 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_0x8008, Common_Movement_ExclamationMark
# 365 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 366 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_0x8008, Common_Movement_FacePlayer
# 367 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 368 "data/maps/MOSSDEEP01/scripts.pory"
	
# 369 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 370 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 371 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 372 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 373 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 374 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
# 375 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 376 "data/maps/MOSSDEEP01/scripts.pory"
	
# 377 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
# 378 "data/maps/MOSSDEEP01/scripts.pory"
	
# 379 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 380 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 14, 67
# 381 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 382 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 383 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 384 "data/maps/MOSSDEEP01/scripts.pory"

# 385 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_FindNearestMightyena::
# 386 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8008, 6
# 387 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 388 "data/maps/MOSSDEEP01/scripts.pory"

# 389 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_MightyenaZone_Safe::
# 390 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 391 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 392 "data/maps/MOSSDEEP01/scripts.pory"

# 393 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 394 "data/maps/MOSSDEEP01/scripts.pory"
// MIGHTYENA NPC INTERACTION
# 395 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 396 "data/maps/MOSSDEEP01/scripts.pory"

# 397 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Mightyena::
# 398 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FacePlayer
# 399 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 400 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 401 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_MightyenaFriendly
# 402 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 403 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 404 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 405 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 406 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 407 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 408 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 409 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
# 410 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 411 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
# 412 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 413 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 11, 71
# 414 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 415 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 416 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 417 "data/maps/MOSSDEEP01/scripts.pory"

# 418 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaFriendly::
# 419 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 420 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaFriendly, MSGBOX_DEFAULT
# 421 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 422 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 423 "data/maps/MOSSDEEP01/scripts.pory"

# 424 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 425 "data/maps/MOSSDEEP01/scripts.pory"
// POKEMON NPC INTERACTIONS
# 426 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 427 "data/maps/MOSSDEEP01/scripts.pory"

# 428 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_PidgeotInitial::
# 429 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 430 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 431 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_PIDGEOT, CRY_MODE_NORMAL
# 432 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PidgeotGreeting, MSGBOX_DEFAULT
# 433 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 434 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 435 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 436 "data/maps/MOSSDEEP01/scripts.pory"

# 437 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Bulbasaur::
# 438 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 439 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 440 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_BULBASAUR, CRY_MODE_NORMAL
# 441 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 442 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 443 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 444 "data/maps/MOSSDEEP01/scripts.pory"

# 445 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Totodile::
# 446 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 447 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 448 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_TOTODILE, CRY_MODE_NORMAL
# 449 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 450 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 451 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 452 "data/maps/MOSSDEEP01/scripts.pory"

# 453 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Torchic::
# 454 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 455 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 456 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_TORCHIC, CRY_MODE_NORMAL
# 457 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 458 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 459 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 460 "data/maps/MOSSDEEP01/scripts.pory"

# 461 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 462 "data/maps/MOSSDEEP01/scripts.pory"
// WALLY NPC - SIMPLIFIED
# 463 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 464 "data/maps/MOSSDEEP01/scripts.pory"

# 465 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wally::
# 466 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 467 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 468 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_WallyAfterIntro
# 469 "data/maps/MOSSDEEP01/scripts.pory"
	
# 470 "data/maps/MOSSDEEP01/scripts.pory"
	// Check if attacked by Mightyenas
# 471 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_WALLY_ATTACKED_BY_MIGHTYENA, MOSSDEEP01_EventScript_WallyNotReady
# 472 "data/maps/MOSSDEEP01/scripts.pory"
	
# 473 "data/maps/MOSSDEEP01/scripts.pory"
	// First conversation (after attack)
# 474 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyIntro, MSGBOX_DEFAULT
# 475 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 476 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_INTRO_DONE
# 477 "data/maps/MOSSDEEP01/scripts.pory"
	
# 478 "data/maps/MOSSDEEP01/scripts.pory"
	// Hide initial Wally and Pidgeot
# 479 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_INITIAL
# 480 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_INITIAL
# 481 "data/maps/MOSSDEEP01/scripts.pory"
	
# 482 "data/maps/MOSSDEEP01/scripts.pory"
	// Show Wally and Pidgeot at new position
# 483 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_CLONE
# 484 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_CLONE
# 485 "data/maps/MOSSDEEP01/scripts.pory"
	
# 486 "data/maps/MOSSDEEP01/scripts.pory"
	// Teleport player
# 487 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 47, 45
# 488 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 489 "data/maps/MOSSDEEP01/scripts.pory"

# 490 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyWarped, MSGBOX_DEFAULT
# 491 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 492 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 493 "data/maps/MOSSDEEP01/scripts.pory"

# 494 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyNotReady::
# 495 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyNotReady, MSGBOX_DEFAULT
# 496 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 497 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 498 "data/maps/MOSSDEEP01/scripts.pory"

# 499 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyAfterIntro::
# 500 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyAfterCelebi, MSGBOX_DEFAULT
# 501 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 502 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 503 "data/maps/MOSSDEEP01/scripts.pory"

# 504 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 505 "data/maps/MOSSDEEP01/scripts.pory"
// SURVIVOR NPC
# 506 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 507 "data/maps/MOSSDEEP01/scripts.pory"

# 508 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Survivor::
# 509 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 510 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 511 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_SurvivorAfterCelebi
# 512 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorTrapped, MSGBOX_DEFAULT
# 513 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 514 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 515 "data/maps/MOSSDEEP01/scripts.pory"

# 516 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SurvivorAfterCelebi::
# 517 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_TEMP_14, MOSSDEEP01_EventScript_SurvivorMoved
# 518 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorAmazed, MSGBOX_DEFAULT
# 519 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 520 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorGoing, MSGBOX_DEFAULT
# 521 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 522 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_SURVIVOR, MOSSDEEP01_Movement_SurvivorGoUp
# 523 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 524 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_TEMP_14
# 525 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 526 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 527 "data/maps/MOSSDEEP01/scripts.pory"

# 528 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SurvivorMoved::
# 529 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorHappy, MSGBOX_DEFAULT
# 530 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 531 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 532 "data/maps/MOSSDEEP01/scripts.pory"

# 533 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_SurvivorGoUp:
# 534 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 535 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 536 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 537 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 538 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 539 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 540 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 541 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 542 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 543 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 544 "data/maps/MOSSDEEP01/scripts.pory"

# 545 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 546 "data/maps/MOSSDEEP01/scripts.pory"
// HEALER NPC
# 547 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 548 "data/maps/MOSSDEEP01/scripts.pory"

# 549 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Healer::
# 550 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 551 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 552 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HealerWelcome, MSGBOX_DEFAULT
# 553 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_HEAL
# 554 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Healing, MSGBOX_DEFAULT
# 555 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 556 "data/maps/MOSSDEEP01/scripts.pory"
	special HealPlayerParty
# 557 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HealedComplete, MSGBOX_DEFAULT
# 558 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 559 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 560 "data/maps/MOSSDEEP01/scripts.pory"

# 561 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 562 "data/maps/MOSSDEEP01/scripts.pory"
// GRANDMA EVENT WITH STORY //
# 563 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 564 "data/maps/MOSSDEEP01/scripts.pory"

# 565 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Grandma::
# 566 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 567 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 568 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandmaAfterFirstTalk
# 569 "data/maps/MOSSDEEP01/scripts.pory"
	
# 570 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAskStory, MSGBOX_YESNO
# 571 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, YES
# 572 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_TellStory
# 573 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaBeCareful, MSGBOX_DEFAULT
# 574 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
# 575 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 576 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 577 "data/maps/MOSSDEEP01/scripts.pory"

# 578 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_TellStory::
# 579 "data/maps/MOSSDEEP01/scripts.pory"
	fadeoutbgm 0
# 580 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 581 "data/maps/MOSSDEEP01/scripts.pory"
	
# 582 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AEGISLASH, 10, 3
# 583 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 584 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory1, MSGBOX_DEFAULT
# 585 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 586 "data/maps/MOSSDEEP01/scripts.pory"
	
# 587 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ALOMOMOLA, 10, 3
# 588 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
# 589 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory2, MSGBOX_DEFAULT
# 590 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 591 "data/maps/MOSSDEEP01/scripts.pory"

# 592 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AVALUGG, 10, 3
# 593 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SURF
# 594 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_THUNDERBOLT
# 595 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory3, MSGBOX_DEFAULT
# 596 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 597 "data/maps/MOSSDEEP01/scripts.pory"
	
# 598 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AMAURA, 10, 3
# 599 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory4, MSGBOX_DEFAULT
# 600 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 601 "data/maps/MOSSDEEP01/scripts.pory"

# 602 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AROMATISSE, 10, 3
# 603 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory5, MSGBOX_DEFAULT
# 604 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 605 "data/maps/MOSSDEEP01/scripts.pory"

# 606 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARROKUDA, 10, 3
# 607 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory6, MSGBOX_DEFAULT
# 608 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 609 "data/maps/MOSSDEEP01/scripts.pory"

# 610 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AUDINO, 10, 3
# 611 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory7, MSGBOX_DEFAULT
# 612 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 613 "data/maps/MOSSDEEP01/scripts.pory"

# 614 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AURORUS, 10, 3
# 615 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory8, MSGBOX_DEFAULT
# 616 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 617 "data/maps/MOSSDEEP01/scripts.pory"

# 618 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AMOONGUSS, 10, 3
# 619 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory9, MSGBOX_DEFAULT
# 620 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 621 "data/maps/MOSSDEEP01/scripts.pory"
	
# 622 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_APPLIN, 10, 3
# 623 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory10, MSGBOX_DEFAULT
# 624 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 625 "data/maps/MOSSDEEP01/scripts.pory"
	
# 626 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_APPLETUN, 10, 3
# 627 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory11, MSGBOX_DEFAULT
# 628 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 629 "data/maps/MOSSDEEP01/scripts.pory"

# 630 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AXEW, 10, 3
# 631 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory12, MSGBOX_DEFAULT
# 632 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 633 "data/maps/MOSSDEEP01/scripts.pory"
	
# 634 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARBOLIVA, 10, 3
# 635 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory13, MSGBOX_DEFAULT
# 636 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 637 "data/maps/MOSSDEEP01/scripts.pory"

# 638 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARCHEN, 10, 3
# 639 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 640 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 641 "data/maps/MOSSDEEP01/scripts.pory"

# 642 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 643 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
# 644 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 645 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 646 "data/maps/MOSSDEEP01/scripts.pory"

# 647 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandmaAfterFirstTalk::
# 648 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAskAgain, MSGBOX_YESNO
# 649 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, YES
# 650 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_TellStory
# 651 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 652 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 653 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 654 "data/maps/MOSSDEEP01/scripts.pory"

# 655 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Grandpa::
# 656 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 657 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 658 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandpaAfter
# 659 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaFirstTalk, MSGBOX_DEFAULT
# 660 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 661 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 662 "data/maps/MOSSDEEP01/scripts.pory"

# 663 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandpaAfter::
# 664 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaAfterTalk, MSGBOX_DEFAULT
# 665 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 666 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 667 "data/maps/MOSSDEEP01/scripts.pory"

# 668 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 669 "data/maps/MOSSDEEP01/scripts.pory"
// RIVAL NPC (GENDER-BASED)
# 670 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 671 "data/maps/MOSSDEEP01/scripts.pory"

# 672 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SetupRivalNPC::
# 673 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 674 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 675 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_ShowFemaleRival
# 676 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
# 677 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
# 678 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 679 "data/maps/MOSSDEEP01/scripts.pory"

# 680 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowFemaleRival::
# 681 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
# 682 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
# 683 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 684 "data/maps/MOSSDEEP01/scripts.pory"

# 685 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalMale::
# 686 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 687 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 688 "data/maps/MOSSDEEP01/scripts.pory"
	random 4
# 689 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 0
# 690 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case0
# 691 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 1
# 692 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case1
# 693 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 2
# 694 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case2
# 695 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 3
# 696 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case3
# 697 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 698 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 699 "data/maps/MOSSDEEP01/scripts.pory"

# 700 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case0::
# 701 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale01, MSGBOX_DEFAULT
# 702 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 703 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 704 "data/maps/MOSSDEEP01/scripts.pory"

# 705 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case1::
# 706 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale02, MSGBOX_DEFAULT
# 707 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 708 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 709 "data/maps/MOSSDEEP01/scripts.pory"

# 710 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case2::
# 711 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale03, MSGBOX_DEFAULT
# 712 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 713 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 714 "data/maps/MOSSDEEP01/scripts.pory"

# 715 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case3::
# 716 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale04, MSGBOX_DEFAULT
# 717 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 718 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 719 "data/maps/MOSSDEEP01/scripts.pory"

# 720 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalFemale::
# 721 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 722 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 723 "data/maps/MOSSDEEP01/scripts.pory"
	random 4
# 724 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 0
# 725 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case0
# 726 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 1
# 727 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case1
# 728 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 2
# 729 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case2
# 730 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 3
# 731 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case3
# 732 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 733 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 734 "data/maps/MOSSDEEP01/scripts.pory"

# 735 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case0::
# 736 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale01, MSGBOX_DEFAULT
# 737 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 738 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 739 "data/maps/MOSSDEEP01/scripts.pory"

# 740 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case1::
# 741 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale02, MSGBOX_DEFAULT
# 742 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 743 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 744 "data/maps/MOSSDEEP01/scripts.pory"

# 745 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case2::
# 746 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale03, MSGBOX_DEFAULT
# 747 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 748 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 749 "data/maps/MOSSDEEP01/scripts.pory"

# 750 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case3::
# 751 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale04, MSGBOX_DEFAULT
# 752 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 753 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 754 "data/maps/MOSSDEEP01/scripts.pory"

# 755 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Child01::
# 756 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 757 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 758 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Child01, MSGBOX_DEFAULT
# 759 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 760 "data/maps/MOSSDEEP01/scripts.pory"
	end	
# 761 "data/maps/MOSSDEEP01/scripts.pory"

# 762 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Child02::
# 763 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 764 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 765 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Child02, MSGBOX_DEFAULT
# 766 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 767 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 768 "data/maps/MOSSDEEP01/scripts.pory"

# 769 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 770 "data/maps/MOSSDEEP01/scripts.pory"
// WAILORD BLOCKER - Simple blocking system
# 771 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 772 "data/maps/MOSSDEEP01/scripts.pory"

# 773 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordBlocker::
# 774 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 775 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 776 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WailordGone
# 777 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WailordBlocking, MSGBOX_DEFAULT
# 778 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 779 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 780 "data/maps/MOSSDEEP01/scripts.pory"

# 781 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordGone::
# 782 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PathNowOpen, MSGBOX_DEFAULT
# 783 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 784 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 785 "data/maps/MOSSDEEP01/scripts.pory"

# 786 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordBlocksPath::
# 787 "data/maps/MOSSDEEP01/scripts.pory"
    lockall
# 788 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailordBlocks, MSGBOX_DEFAULT
# 789 "data/maps/MOSSDEEP01/scripts.pory"
    closemessage
# 790 "data/maps/MOSSDEEP01/scripts.pory"
    applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 791 "data/maps/MOSSDEEP01/scripts.pory"
    waitmovement 0
# 792 "data/maps/MOSSDEEP01/scripts.pory"
    releaseall
# 793 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 794 "data/maps/MOSSDEEP01/scripts.pory"

# 795 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordPathClear::
# 796 "data/maps/MOSSDEEP01/scripts.pory"
    // Path is clear, do nothing
# 797 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 798 "data/maps/MOSSDEEP01/scripts.pory"

# 799 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wailord::
# 800 "data/maps/MOSSDEEP01/scripts.pory"
    lock
# 801 "data/maps/MOSSDEEP01/scripts.pory"
    faceplayer
# 802 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailordIdle, MSGBOX_DEFAULT
# 803 "data/maps/MOSSDEEP01/scripts.pory"
    release
# 804 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 805 "data/maps/MOSSDEEP01/scripts.pory"

# 806 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wailmer::
# 807 "data/maps/MOSSDEEP01/scripts.pory"
    lock
# 808 "data/maps/MOSSDEEP01/scripts.pory"
    faceplayer
# 809 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailmerIdle, MSGBOX_DEFAULT
# 810 "data/maps/MOSSDEEP01/scripts.pory"
    release
# 811 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 812 "data/maps/MOSSDEEP01/scripts.pory"

# 813 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordJumpOver::
# 814 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 815 "data/maps/MOSSDEEP01/scripts.pory"
	// Pula no lugar virado para cima
# 816 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_JumpOverWailordUp
# 817 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 818 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_BIKE_HOP
# 819 "data/maps/MOSSDEEP01/scripts.pory"
	
# 820 "data/maps/MOSSDEEP01/scripts.pory"
	// Move o jogador para o outro lado (atravessa o Wailord)
# 821 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_CrossWailordUp
# 822 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 823 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_BIKE_HOP
# 824 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 825 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 826 "data/maps/MOSSDEEP01/scripts.pory"

# 827 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_JumpOverWailordUp:
# 828 "data/maps/MOSSDEEP01/scripts.pory"
	jump_in_place_up     // EXISTE - pulo no lugar virado para cima
# 829 "data/maps/MOSSDEEP01/scripts.pory"
	delay_4
# 830 "data/maps/MOSSDEEP01/scripts.pory"
	jump_in_place_up     // Segundo pulo para efeito
# 831 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 832 "data/maps/MOSSDEEP01/scripts.pory"

# 833 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CrossWailordUp:
# 834 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up              // Atravessa o Wailord
# 835 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 836 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up  
# 837 "data/maps/MOSSDEEP01/scripts.pory"
	step_end	
# 838 "data/maps/MOSSDEEP01/scripts.pory"

# 839 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 840 "data/maps/MOSSDEEP01/scripts.pory"
// JIRACHI WAKE EVENT - TRIGGER BASED
# 841 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 842 "data/maps/MOSSDEEP01/scripts.pory"

# 843 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_JirachiTrigger::
# 844 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 845 "data/maps/MOSSDEEP01/scripts.pory"
	
# 846 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiAlreadyAwake
# 847 "data/maps/MOSSDEEP01/scripts.pory"
	
# 848 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiWaking, MSGBOX_DEFAULT
# 849 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 850 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 851 "data/maps/MOSSDEEP01/scripts.pory"
	
# 852 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 853 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_PSYBEAM
# 854 "data/maps/MOSSDEEP01/scripts.pory"
	delay 10
# 855 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 4
# 856 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 857 "data/maps/MOSSDEEP01/scripts.pory"
	
# 858 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_SOUTH
# 859 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_PSYBEAM
# 860 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 861 "data/maps/MOSSDEEP01/scripts.pory"
	
# 862 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_NORTH
# 863 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SWIFT
# 864 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 865 "data/maps/MOSSDEEP01/scripts.pory"
	
# 866 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_JIRACHI_AWAKE
# 867 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiAwoken, MSGBOX_DEFAULT
# 868 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 869 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 870 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 871 "data/maps/MOSSDEEP01/scripts.pory"

# 872 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiAlreadyAwake::
# 873 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 874 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 875 "data/maps/MOSSDEEP01/scripts.pory"

# 876 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Jirachi::
# 877 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 878 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 879 "data/maps/MOSSDEEP01/scripts.pory"
	
# 880 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiSleeping
# 881 "data/maps/MOSSDEEP01/scripts.pory"
	
# 882 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_JirachiNeedCelebi
# 883 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_JirachiNeedItems
# 884 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_JirachiNeedItems
# 885 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_JirachiNeedItems
# 886 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_QUEST_COMPLETED, MOSSDEEP01_JirachiAlreadyCompleted
# 887 "data/maps/MOSSDEEP01/scripts.pory"
	
# 888 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_EventScript_QuestComplete
# 889 "data/maps/MOSSDEEP01/scripts.pory"

# 890 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiNeedCelebi::
# 891 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiNeedCelebi, MSGBOX_DEFAULT
# 892 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 893 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 894 "data/maps/MOSSDEEP01/scripts.pory"

# 895 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiNeedItems::
# 896 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiNeedItems, MSGBOX_DEFAULT
# 897 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 898 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 899 "data/maps/MOSSDEEP01/scripts.pory"

# 900 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiAlreadyCompleted::
# 901 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiCompleted, MSGBOX_DEFAULT
# 902 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 903 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 904 "data/maps/MOSSDEEP01/scripts.pory"

# 905 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiSleeping::
# 906 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiStillSleeping, MSGBOX_DEFAULT
# 907 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 908 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 909 "data/maps/MOSSDEEP01/scripts.pory"

# 910 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 911 "data/maps/MOSSDEEP01/scripts.pory"
// QUEST COMPLETION - JIRACHI SENDS PLAYER HOME
# 912 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 913 "data/maps/MOSSDEEP01/scripts.pory"

# 914 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_QuestComplete::
# 915 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_ThankYou, MSGBOX_DEFAULT
# 916 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 917 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_QUEST_COMPLETED
# 918 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CometAppears, MSGBOX_DEFAULT
# 919 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 920 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 8
# 921 "data/maps/MOSSDEEP01/scripts.pory"
	delay 40
# 922 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceUp
# 923 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 924 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_BLACK, 4
# 925 "data/maps/MOSSDEEP01/scripts.pory"
	delay 10
# 926 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_COMET
# 927 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_MILLENNIUM_COMET
# 928 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_SHINY
# 929 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 2
# 930 "data/maps/MOSSDEEP01/scripts.pory"
	delay 8
# 931 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 2
# 932 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 933 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_THUNDERSTORM
# 934 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 935 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SACRED_FIRE
# 936 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 937 "data/maps/MOSSDEEP01/scripts.pory"
	special SpawnCameraObject
# 938 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SWIFT
# 939 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MOSSDEEP01_Movement_CameraFollowComet
# 940 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_MILLENNIUM_COMET, MOSSDEEP01_Movement_CometCrossingSky
# 941 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 942 "data/maps/MOSSDEEP01/scripts.pory"
	special RemoveCameraObject
# 943 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 944 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_EXPLOSION
# 945 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 946 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 947 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 948 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SOLAR_BEAM
# 949 "data/maps/MOSSDEEP01/scripts.pory"
	delay 40
# 950 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 8
# 951 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 952 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_MILLENNIUM_COMET
# 953 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_COMET
# 954 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_TimeToWakeUp, MSGBOX_DEFAULT
# 955 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 956 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 957 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_TELEPORT
# 958 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 12
# 959 "data/maps/MOSSDEEP01/scripts.pory"
	delay 80
# 960 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 961 "data/maps/MOSSDEEP01/scripts.pory"
	
# 962 "data/maps/MOSSDEEP01/scripts.pory"
	// Set flags for Littleroot Town start
# 963 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_VISITED_LITTLEROOT_TOWN
# 964 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
# 965 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
# 966 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SET_WALL_CLOCK
# 967 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_RESCUED_BIRCH
# 968 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 969 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SYS_B_DASH
# 970 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_RECEIVED_RUNNING_SHOES
# 971 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SYS_POKEMON_GET
# 972 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SYS_POKEDEX_GET
# 973 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 6
# 974 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 4
# 975 "data/maps/MOSSDEEP01/scripts.pory"
	
# 976 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 977 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 978 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_WarpMale
# 979 "data/maps/MOSSDEEP01/scripts.pory"
	
# 980 "data/maps/MOSSDEEP01/scripts.pory"
	// Female player
# 981 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
# 982 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 983 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 984 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
# 985 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 986 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
# 987 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 988 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 989 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 990 "data/maps/MOSSDEEP01/scripts.pory"

# 991 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_WarpMale::
# 992 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
# 993 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 994 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 995 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
# 996 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 997 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
# 998 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 999 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1000 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1001 "data/maps/MOSSDEEP01/scripts.pory"

# 1002 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1003 "data/maps/MOSSDEEP01/scripts.pory"
// MOVEMENT SCRIPTS
# 1004 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1005 "data/maps/MOSSDEEP01/scripts.pory"

# 1006 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CameraFollowComet:
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
	walk_fast_left
# 1042 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1043 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1044 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1045 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1046 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1047 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 1048 "data/maps/MOSSDEEP01/scripts.pory"

# 1049 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CometCrossingSky:
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
	walk_fast_left
# 1125 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1126 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1127 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1128 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1129 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1130 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 1131 "data/maps/MOSSDEEP01/scripts.pory"

# 1132 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1133 "data/maps/MOSSDEEP01/scripts.pory"
// TEXT MESSAGES
# 1134 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1135 "data/maps/MOSSDEEP01/scripts.pory"

# 1136 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_NeedCelebiFirst:
# 1137 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: I sense something...\p"
# 1138 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The Guardian of the Forest,\n"
# 1139 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI, is in danger!\p"
# 1140 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please, help CELEBI first!\n"
# 1141 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I assist you.$"
# 1142 "data/maps/MOSSDEEP01/scripts.pory"

# 1143 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_NeedItems:
# 1144 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: Thank you for saving CELEBI!\p"
# 1145 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Now, the flow of time is broken!\p"
# 1146 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please find the 3 TIME GEARS\n"
# 1147 "data/maps/MOSSDEEP01/scripts.pory"
	.string "scattered around this place.\p"
# 1148 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I send you home!$"
# 1149 "data/maps/MOSSDEEP01/scripts.pory"

# 1150 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ThankYou:
# 1151 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You found all the TIME GEARS!\p"
# 1152 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The temporal flow is restoring...\n"
# 1153 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Look! The Millennium Comet!$"
# 1154 "data/maps/MOSSDEEP01/scripts.pory"

# 1155 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CometAppears:
# 1156 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The sky begins to glow!\p"
# 1157 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A brilliant comet streaks across\n"
# 1158 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the heavens!$"
# 1159 "data/maps/MOSSDEEP01/scripts.pory"

# 1160 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_TimeToWakeUp:
# 1161 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: The timeline is restored!\p"
# 1162 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It's time to wake up from this dream...$"
# 1163 "data/maps/MOSSDEEP01/scripts.pory"

# 1164 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AlreadyHelped:
# 1165 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You already helped restore\n"
# 1166 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the flow of time!\p"
# 1167 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you, time traveler!$"
# 1168 "data/maps/MOSSDEEP01/scripts.pory"

# 1169 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem1:
# 1170 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} found something shining\n"
# 1171 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the sand...$"
# 1172 "data/maps/MOSSDEEP01/scripts.pory"

# 1173 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear1:
# 1174 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1175 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the PAST!$"
# 1176 "data/maps/MOSSDEEP01/scripts.pory"

# 1177 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem2:
# 1178 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} discovered something glowing\n"
# 1179 "data/maps/MOSSDEEP01/scripts.pory"
	.string "among the rocks...$"
# 1180 "data/maps/MOSSDEEP01/scripts.pory"

# 1181 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear2:
# 1182 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1183 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the PRESENT!$"
# 1184 "data/maps/MOSSDEEP01/scripts.pory"

# 1185 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem3:
# 1186 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} noticed something sparkling\n"
# 1187 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the water...$"
# 1188 "data/maps/MOSSDEEP01/scripts.pory"

# 1189 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear3:
# 1190 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1191 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the FUTURE!$"
# 1192 "data/maps/MOSSDEEP01/scripts.pory"

# 1193 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AlreadyCollected:
# 1194 "data/maps/MOSSDEEP01/scripts.pory"
	.string "This place seems peaceful now.$"
# 1195 "data/maps/MOSSDEEP01/scripts.pory"

# 1196 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiHelp:
# 1197 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: ... ... ...\p"
# 1198 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The flow of time is broken...\p"
# 1199 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please... find the 3 TIME GEARS...\n"
# 1200 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I be freed...$"
# 1201 "data/maps/MOSSDEEP01/scripts.pory"

# 1202 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiPower:
# 1203 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: You found all the TIME GEARS!\p"
# 1204 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Now I can use my power to restore\n"
# 1205 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the temporal flow!$"
# 1206 "data/maps/MOSSDEEP01/scripts.pory"

# 1207 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiCalmed:
# 1208 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild POKÉMON have calmed down!$"
# 1209 "data/maps/MOSSDEEP01/scripts.pory"

# 1210 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiThanks:
# 1211 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: Thank you, {PLAYER}!\n"
# 1212 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Together we restored time!$"
# 1213 "data/maps/MOSSDEEP01/scripts.pory"

# 1214 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaAttack:
# 1215 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild MIGHTYENA attacks!$"
# 1216 "data/maps/MOSSDEEP01/scripts.pory"

# 1217 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaBlackedOut:
# 1218 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild POKÉMON are too aggressive!\n"
# 1219 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You blacked out!$"
# 1220 "data/maps/MOSSDEEP01/scripts.pory"

# 1221 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaFriendly:
# 1222 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The MIGHTYENA looks calm and friendly.\n"
# 1223 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Amazing, they're so peaceful now!\p"
# 1224 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You can even pet them!$"
# 1225 "data/maps/MOSSDEEP01/scripts.pory"

# 1226 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorTrapped:
# 1227 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: Help! These wild POKÉMON\n"
# 1228 "data/maps/MOSSDEEP01/scripts.pory"
	.string "are too aggressive!\p"
# 1229 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I can't escape!$"
# 1230 "data/maps/MOSSDEEP01/scripts.pory"

# 1231 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorAmazed:
# 1232 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: Incredible! The POKÉMON\n"
# 1233 "data/maps/MOSSDEEP01/scripts.pory"
	.string "suddenly calmed down!\p"
# 1234 "data/maps/MOSSDEEP01/scripts.pory"
	.string "What happened?$"
# 1235 "data/maps/MOSSDEEP01/scripts.pory"

# 1236 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorGoing:
# 1237 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: I'm going to find a safer\n"
# 1238 "data/maps/MOSSDEEP01/scripts.pory"
	.string "place. Thank you!$"
# 1239 "data/maps/MOSSDEEP01/scripts.pory"

# 1240 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorHappy:
# 1241 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: I feel much safer now.\n"
# 1242 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you for your help!$"
# 1243 "data/maps/MOSSDEEP01/scripts.pory"

# 1244 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HealerWelcome:
# 1245 "data/maps/MOSSDEEP01/scripts.pory"
	.string "HEALER: Let me heal your POKÉMON.$"
# 1246 "data/maps/MOSSDEEP01/scripts.pory"

# 1247 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Healing:
# 1248 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Healing POKÉMON...$"
# 1249 "data/maps/MOSSDEEP01/scripts.pory"

# 1250 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HealedComplete:
# 1251 "data/maps/MOSSDEEP01/scripts.pory"
	.string "HEALER: Your POKÉMON are fully\n"
# 1252 "data/maps/MOSSDEEP01/scripts.pory"
	.string "healed! Good luck!$"
# 1253 "data/maps/MOSSDEEP01/scripts.pory"

# 1254 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaWelcome:
# 1255 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: {PLAYER}! You're awake!\p"
# 1256 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The earthquake was terrible...\n"
# 1257 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Many people are trapped...$"
# 1258 "data/maps/MOSSDEEP01/scripts.pory"

# 1259 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_EarthquakeWarning:
# 1260 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Another tremor!\n"
# 1261 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there!$"
# 1262 "data/maps/MOSSDEEP01/scripts.pory"

# 1263 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaGivesCharm:
# 1264 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Take this SHINY CHARM.\n"
# 1265 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It might bring you luck!$"
# 1266 "data/maps/MOSSDEEP01/scripts.pory"

# 1267 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaCharmExplanation:
# 1268 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: This charm increases your\n"
# 1269 "data/maps/MOSSDEEP01/scripts.pory"
	.string "chances of finding rare POKÉMON.\p"
# 1270 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Use it well!$"
# 1271 "data/maps/MOSSDEEP01/scripts.pory"

# 1272 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HoennDestroyed:
# 1273 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The HOENN region...\n"
# 1274 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It's been completely destroyed...\p"
# 1275 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But there are survivors who need\n"
# 1276 "data/maps/MOSSDEEP01/scripts.pory"
	.string "help. Please, {PLAYER}, help them!$"
# 1277 "data/maps/MOSSDEEP01/scripts.pory"

# 1278 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PlayerDecision:
# 1279 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} decides to help the survivors\n"
# 1280 "data/maps/MOSSDEEP01/scripts.pory"
	.string "and explore the devastated area.$"
# 1281 "data/maps/MOSSDEEP01/scripts.pory"

# 1282 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GoodLuck:
# 1283 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Good luck, {PLAYER}!\n"
# 1284 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be very careful!$"
# 1285 "data/maps/MOSSDEEP01/scripts.pory"

# 1286 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaEncouragement:
# 1287 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: You're doing great, {PLAYER}!\n"
# 1288 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Keep helping people!$"
# 1289 "data/maps/MOSSDEEP01/scripts.pory"

# 1290 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaFirstTalk:
# 1291 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: The world has changed...\n"
# 1292 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Everything is so different now...$"
# 1293 "data/maps/MOSSDEEP01/scripts.pory"

# 1294 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaAfterTalk:
# 1295 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: Thank you for helping\n"
# 1296 "data/maps/MOSSDEEP01/scripts.pory"
	.string "everyone, {PLAYER}. You're a hero!$"
# 1297 "data/maps/MOSSDEEP01/scripts.pory"

# 1298 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory1:
# 1299 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: This was the beginning...$"
# 1300 "data/maps/MOSSDEEP01/scripts.pory"

# 1301 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory2:
# 1302 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Then the conflict started...$"
# 1303 "data/maps/MOSSDEEP01/scripts.pory"

# 1304 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory3:
# 1305 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The great battle between\n"
# 1306 "data/maps/MOSSDEEP01/scripts.pory"
	.string "land and sea...$"
# 1307 "data/maps/MOSSDEEP01/scripts.pory"

# 1308 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory4:
# 1309 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The tsunami devastated\n"
# 1310 "data/maps/MOSSDEEP01/scripts.pory"
	.string "everything...$"
# 1311 "data/maps/MOSSDEEP01/scripts.pory"

# 1312 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory5:
# 1313 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Volcanoes erupted across\n"
# 1314 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the land...$"
# 1315 "data/maps/MOSSDEEP01/scripts.pory"

# 1316 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory6:
# 1317 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The land became a barren\n"
# 1318 "data/maps/MOSSDEEP01/scripts.pory"
	.string "wasteland...$"
# 1319 "data/maps/MOSSDEEP01/scripts.pory"

# 1320 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory7:
# 1321 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The oceans raged with\n"
# 1322 "data/maps/MOSSDEEP01/scripts.pory"
	.string "unending storms...$"
# 1323 "data/maps/MOSSDEEP01/scripts.pory"

# 1324 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory8:
# 1325 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Survivors gathered in\n"
# 1326 "data/maps/MOSSDEEP01/scripts.pory"
	.string "camps...$"
# 1327 "data/maps/MOSSDEEP01/scripts.pory"

# 1328 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory9:
# 1329 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Hope began to fade...$"
# 1330 "data/maps/MOSSDEEP01/scripts.pory"

# 1331 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory10:
# 1332 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: But then a legend\n"
# 1333 "data/maps/MOSSDEEP01/scripts.pory"
	.string "appeared...$"
# 1334 "data/maps/MOSSDEEP01/scripts.pory"

# 1335 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory11:
# 1336 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The sky guardian descended\n"
# 1337 "data/maps/MOSSDEEP01/scripts.pory"
	.string "from above...$"
# 1338 "data/maps/MOSSDEEP01/scripts.pory"

# 1339 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory12:
# 1340 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Peace was restored,\n"
# 1341 "data/maps/MOSSDEEP01/scripts.pory"
	.string "but at a cost...$"
# 1342 "data/maps/MOSSDEEP01/scripts.pory"

# 1343 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory13:
# 1344 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: And this is how our world\n"
# 1345 "data/maps/MOSSDEEP01/scripts.pory"
	.string "became what it is today...$"
# 1346 "data/maps/MOSSDEEP01/scripts.pory"

# 1347 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAskStory:
# 1348 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Hello, {PLAYER}!\p"
# 1349 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Would you like to hear the legends\n"
# 1350 "data/maps/MOSSDEEP01/scripts.pory"
	.string "and stories of how HOENN arrived\l"
# 1351 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the state it is now?$"
# 1352 "data/maps/MOSSDEEP01/scripts.pory"

# 1353 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaBeCareful:
# 1354 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: I understand.\p"
# 1355 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please be very careful when exploring\n"
# 1356 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the MOSSDEEP ruins.\p"
# 1357 "data/maps/MOSSDEEP01/scripts.pory"
	.string "There are many dangers out there...$"
# 1358 "data/maps/MOSSDEEP01/scripts.pory"

# 1359 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAskAgain:
# 1360 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Would you like to hear\n"
# 1361 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the stories of HOENN again?$"
# 1362 "data/maps/MOSSDEEP01/scripts.pory"

# 1363 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale01:
# 1364 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: Hey {PLAYER}! I'm helping\n"
# 1365 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the survivors too!\p"
# 1366 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's work together!$"
# 1367 "data/maps/MOSSDEEP01/scripts.pory"

# 1368 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale02:
# 1369 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: These wild POKÉMON are\n"
# 1370 "data/maps/MOSSDEEP01/scripts.pory"
	.string "really aggressive!\p"
# 1371 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there!$"
# 1372 "data/maps/MOSSDEEP01/scripts.pory"

# 1373 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale03:
# 1374 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: I heard there's a special\n"
# 1375 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON that can help us.\p"
# 1376 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's find it!$"
# 1377 "data/maps/MOSSDEEP01/scripts.pory"

# 1378 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale04:
# 1379 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: We can do this, {PLAYER}!\n"
# 1380 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Together we'll save everyone!$"
# 1381 "data/maps/MOSSDEEP01/scripts.pory"

# 1382 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale01:
# 1383 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: {PLAYER}! I'm so glad\n"
# 1384 "data/maps/MOSSDEEP01/scripts.pory"
	.string "you're safe!\p"
# 1385 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's help the survivors together!$"
# 1386 "data/maps/MOSSDEEP01/scripts.pory"

# 1387 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale02:
# 1388 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: The wild POKÉMON are\n"
# 1389 "data/maps/MOSSDEEP01/scripts.pory"
	.string "acting so strange...\p"
# 1390 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Something must be wrong!$"
# 1391 "data/maps/MOSSDEEP01/scripts.pory"

# 1392 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale03:
# 1393 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: I heard about a legendary\n"
# 1394 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON that controls time.\p"
# 1395 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe it can help us!$"
# 1396 "data/maps/MOSSDEEP01/scripts.pory"

# 1397 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale04:
# 1398 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: We make a great team,\n"
# 1399 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER}! Let's keep going!$"
# 1400 "data/maps/MOSSDEEP01/scripts.pory"

# 1401 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Child01:
# 1402 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CHILD: I'm scared...\n"
# 1403 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Where are my parents?$"
# 1404 "data/maps/MOSSDEEP01/scripts.pory"

# 1405 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Child02:
# 1406 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CHILD: The ground shook really hard...\n"
# 1407 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Then everything changed...$"
# 1408 "data/maps/MOSSDEEP01/scripts.pory"

# 1409 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordBlocking:
# 1410 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A massive WAILORD blocks the path!\p"
# 1411 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems agitated by the chaos...\n"
# 1412 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You can't get through.$"
# 1413 "data/maps/MOSSDEEP01/scripts.pory"

# 1414 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PathNowOpen:
# 1415 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The WAILORD has calmed down and\n"
# 1416 "data/maps/MOSSDEEP01/scripts.pory"
	.string "moved away. The path is clear!$"
# 1417 "data/maps/MOSSDEEP01/scripts.pory"

# 1418 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiWaking:
# 1419 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A mysterious POKÉMON is sleeping\n"
# 1420 "data/maps/MOSSDEEP01/scripts.pory"
	.string "near the rocks...\p"
# 1421 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems to be waking up!$"
# 1422 "data/maps/MOSSDEEP01/scripts.pory"

# 1423 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiAwoken:
# 1424 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI has awoken!$"
# 1425 "data/maps/MOSSDEEP01/scripts.pory"

# 1426 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiNeedCelebi:
# 1427 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: I sense temporal disturbance...\n"
# 1428 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The forest guardian needs help!\p"
# 1429 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please rescue CELEBI first!$"
# 1430 "data/maps/MOSSDEEP01/scripts.pory"

# 1431 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiNeedItems:
# 1432 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: Thank you for saving CELEBI!\n"
# 1433 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But time is still broken...\p"
# 1434 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please find the 3 TIME GEARS\n"
# 1435 "data/maps/MOSSDEEP01/scripts.pory"
	.string "to restore temporal flow!$"
# 1436 "data/maps/MOSSDEEP01/scripts.pory"

# 1437 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiCompleted:
# 1438 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You restored the timeline!\n"
# 1439 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you, time traveler!$"
# 1440 "data/maps/MOSSDEEP01/scripts.pory"

# 1441 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiStillSleeping:
# 1442 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI is sleeping peacefully...\n"
# 1443 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe you should approach it?$"
# 1444 "data/maps/MOSSDEEP01/scripts.pory"

# 1445 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyIntro:
# 1446 "data/maps/MOSSDEEP01/scripts.pory"
	.string "WALLY: Hello, {PLAYER}!\p"
# 1447 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Did you know that in the past people\n"
# 1448 "data/maps/MOSSDEEP01/scripts.pory"
	.string "could train POKÉMON normally?\p"
# 1449 "data/maps/MOSSDEEP01/scripts.pory"
	.string "There were POKÉ BALLS, devices that\n"
# 1450 "data/maps/MOSSDEEP01/scripts.pory"
	.string "captured and stored POKÉMON.\p"
# 1451 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But now... they don't make them anymore.\n"
# 1452 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The technology was lost.\p"
# 1453 "data/maps/MOSSDEEP01/scripts.pory"
	.string "That's why the connection with POKÉMON\n"
# 1454 "data/maps/MOSSDEEP01/scripts.pory"
	.string "has to be made in another way...\p"
# 1455 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A more natural, purer connection.$"
# 1456 "data/maps/MOSSDEEP01/scripts.pory"

# 1457 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyAfterCelebi:
# 1458 "data/maps/MOSSDEEP01/scripts.pory"
	.string "WALLY: {PLAYER}, you did it!\p"
# 1459 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI calmed all the wild POKÉMON.\n"
# 1460 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Amazing!\p"
# 1461 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The connection between POKÉMON and\n"
# 1462 "data/maps/MOSSDEEP01/scripts.pory"
	.string "humans is being restored!$"
# 1463 "data/maps/MOSSDEEP01/scripts.pory"

# 1464 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyWarped:
# 1465 "data/maps/MOSSDEEP01/scripts.pory"
	.string "WALLY: I'll head there first!\p"
# 1466 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Meet me ahead, {PLAYER}!$"
# 1467 "data/maps/MOSSDEEP01/scripts.pory"

# 1468 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyNotReady:
# 1469 "data/maps/MOSSDEEP01/scripts.pory"
	.string "WALLY: Hello, {PLAYER}!\p"
# 1470 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there! The wild\n"
# 1471 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON are very aggressive.\p"
# 1472 "data/maps/MOSSDEEP01/scripts.pory"
	.string "If you get into trouble, come\n"
# 1473 "data/maps/MOSSDEEP01/scripts.pory"
	.string "talk to me!$"
# 1474 "data/maps/MOSSDEEP01/scripts.pory"

# 1475 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PidgeotGreeting:
# 1476 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Pidgeot: Piiidgeoo!$"
# 1477 "data/maps/MOSSDEEP01/scripts.pory"

# 1478 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordBlocks:
# 1479 "data/maps/MOSSDEEP01/scripts.pory"
    .string "There's only water ahead!\p"
# 1480 "data/maps/MOSSDEEP01/scripts.pory"
    .string "You can't cross without help...$"
# 1481 "data/maps/MOSSDEEP01/scripts.pory"

# 1482 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordIdle:
# 1483 "data/maps/MOSSDEEP01/scripts.pory"
    .string "WAILORD is calmly floating on the water.$"
# 1484 "data/maps/MOSSDEEP01/scripts.pory"

# 1485 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailmerIdle:
# 1486 "data/maps/MOSSDEEP01/scripts.pory"
    .string "The WAILMER are splashing playfully!$"
# 1487 "data/maps/MOSSDEEP01/scripts.pory"

# 1488 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiCallsWailord:
# 1489 "data/maps/MOSSDEEP01/scripts.pory"
    .string "CELEBI calls out to the ocean!\p"
# 1490 "data/maps/MOSSDEEP01/scripts.pory"
    .string "A massive WAILORD appears and\n"
# 1491 "data/maps/MOSSDEEP01/scripts.pory"
    .string "creates a path across the water!$"
