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
	return


MOSSDEEP01_OnTransition::
# 39 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 40 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_PROLOGUE_COMPLETED, MOSSDEEP01_OnTransition_2
MOSSDEEP01_OnTransition_1:
# 43 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 0
# 44 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_ContinueTransition
	return

MOSSDEEP01_OnTransition_2:
# 41 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_SkipPrologue
	goto MOSSDEEP01_OnTransition_1


MOSSDEEP01_SkipPrologue::
# 48 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 1
	return


MOSSDEEP01_ContinueTransition::
# 53 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_ContinueTransition_2
# 56 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_HideFollowerCelebi
MOSSDEEP01_ContinueTransition_1:
# 60 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_ContinueTransition_6
# 63 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_HideWailord
MOSSDEEP01_ContinueTransition_5:
# 66 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideComet
# 68 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_ContinueTransition_10
MOSSDEEP01_ContinueTransition_9:
# 71 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_ContinueTransition_13
MOSSDEEP01_ContinueTransition_12:
# 74 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_ContinueTransition_16
MOSSDEEP01_ContinueTransition_15:
# 79 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_ContinueTransition_19
MOSSDEEP01_ContinueTransition_18:
# 83 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_SetupRivalNPC
# 86 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_ContinueTransition_22
# 90 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_ShowInitialWally
# 91 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideCloneWally
MOSSDEEP01_ContinueTransition_21:
	end

MOSSDEEP01_ContinueTransition_2:
# 54 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_HideStaticCelebi
	goto MOSSDEEP01_ContinueTransition_1

MOSSDEEP01_ContinueTransition_6:
# 61 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_ShowWailord
	goto MOSSDEEP01_ContinueTransition_5

MOSSDEEP01_ContinueTransition_10:
# 69 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideItem1
	goto MOSSDEEP01_ContinueTransition_9

MOSSDEEP01_ContinueTransition_13:
# 72 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideItem2
	goto MOSSDEEP01_ContinueTransition_12

MOSSDEEP01_ContinueTransition_16:
# 75 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideItem3
	goto MOSSDEEP01_ContinueTransition_15

MOSSDEEP01_ContinueTransition_19:
# 80 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_KeepJirachiAwake
	goto MOSSDEEP01_ContinueTransition_18

MOSSDEEP01_ContinueTransition_22:
# 87 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideInitialWally
# 88 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_ShowCloneWally
	goto MOSSDEEP01_ContinueTransition_21


MOSSDEEP01_OnResume::
	end


MOSSDEEP01_HideStaticCelebi::
# 105 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
	return


MOSSDEEP01_HideFollowerCelebi::
# 110 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_FOLLOWER
	return


MOSSDEEP01_HideWailord::
# 115 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WAILORD_PATH
	return


MOSSDEEP01_ShowWailord::
# 120 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WAILORD_PATH
	return


# 124 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_ExitTent:
# 125 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 125 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 125 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 126 "data/maps/MOSSDEEP01/scripts.pory"
	step_end

# 133 "data/maps/MOSSDEEP01/scripts.pory"

# 134 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideComet::
# 135 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_COMET
# 136 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 137 "data/maps/MOSSDEEP01/scripts.pory"

# 138 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem1::
# 139 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_1
# 140 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 141 "data/maps/MOSSDEEP01/scripts.pory"

# 142 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem2::
# 143 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_2
# 144 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 145 "data/maps/MOSSDEEP01/scripts.pory"

# 146 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem3::
# 147 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_3
# 148 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 149 "data/maps/MOSSDEEP01/scripts.pory"

# 150 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideInitialWally::
# 151 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_INITIAL
# 152 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_INITIAL
# 153 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 154 "data/maps/MOSSDEEP01/scripts.pory"

# 155 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowInitialWally::
# 156 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_INITIAL
# 157 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_INITIAL
# 158 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 159 "data/maps/MOSSDEEP01/scripts.pory"

# 160 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowCloneWally::
# 161 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_CLONE
# 162 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_CLONE
# 163 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 164 "data/maps/MOSSDEEP01/scripts.pory"

# 165 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideCloneWally::
# 166 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_CLONE
# 167 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_CLONE
# 168 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 169 "data/maps/MOSSDEEP01/scripts.pory"

# 170 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_KeepJirachiAwake::
# 171 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_NORTH
# 172 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 173 "data/maps/MOSSDEEP01/scripts.pory"

# 174 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 175 "data/maps/MOSSDEEP01/scripts.pory"
// GRANDMA EVENT - DISPARA O PRÓLOGO
# 176 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 177 "data/maps/MOSSDEEP01/scripts.pory"

# 178 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Grandma::
# 179 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 180 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 181 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_PROLOGUE_COMPLETED, MOSSDEEP01_EventScript_Prologue
# 182 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandmaAfterFirstTalk
# 183 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAskStory, MSGBOX_YESNO
# 184 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, YES
# 185 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_TellStory
# 186 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaBeCareful, MSGBOX_DEFAULT
# 187 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
# 188 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 189 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 190 "data/maps/MOSSDEEP01/scripts.pory"

# 191 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_DreamTrigger::
# 192 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 193 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 194 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_PROLOGUE_COMPLETED, MOSSDEEP01_EventScript_Prologue
# 195 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 196 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 197 "data/maps/MOSSDEEP01/scripts.pory"

# 198 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 199 "data/maps/MOSSDEEP01/scripts.pory"
// PROLOGUE EVENT (DISPARADO PELA AVÓ)
# 200 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 201 "data/maps/MOSSDEEP01/scripts.pory"

# 202 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Prologue::
# 203 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 1
# 204 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 205 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 206 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_ROCK_THROW
# 207 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 3
# 208 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 3
# 209 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 8
# 210 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 10
# 211 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 212 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 213 "data/maps/MOSSDEEP01/scripts.pory"
	delay 80
# 214 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_ROCK_THROW
# 215 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 216 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaWelcome, MSGBOX_DEFAULT
# 217 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 218 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 219 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_EarthquakeWarning, MSGBOX_DEFAULT
# 220 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 2
# 221 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 2
# 222 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 5
# 223 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 8
# 224 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 225 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 226 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_ROCK_THROW
# 227 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 228 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 229 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaGivesCharm, MSGBOX_DEFAULT
# 230 "data/maps/MOSSDEEP01/scripts.pory"
	giveitem ITEM_SHINY_CHARM
# 231 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaCharmExplanation, MSGBOX_DEFAULT
# 232 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HoennDestroyed, MSGBOX_DEFAULT
# 233 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 1
# 234 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 1
# 235 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 2
# 236 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 5
# 237 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 238 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 239 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 240 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 241 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PlayerDecision, MSGBOX_DEFAULT
# 242 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 243 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 244 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GoodLuck, MSGBOX_DEFAULT
# 245 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 246 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_PROLOGUE_COMPLETED
# 247 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 248 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 249 "data/maps/MOSSDEEP01/scripts.pory"

# 250 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_TellStory::
# 251 "data/maps/MOSSDEEP01/scripts.pory"
	fadeoutbgm 0
# 252 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 253 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AEGISLASH, 10, 3
# 254 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 255 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory1, MSGBOX_DEFAULT
# 256 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 257 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ALOMOMOLA, 10, 3
# 258 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
# 259 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory2, MSGBOX_DEFAULT
# 260 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 261 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AVALUGG, 10, 3
# 262 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SURF
# 263 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_THUNDERBOLT
# 264 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory3, MSGBOX_DEFAULT
# 265 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 266 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AMAURA, 10, 3
# 267 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory4, MSGBOX_DEFAULT
# 268 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 269 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AROMATISSE, 10, 3
# 270 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory5, MSGBOX_DEFAULT
# 271 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 272 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARROKUDA, 10, 3
# 273 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory6, MSGBOX_DEFAULT
# 274 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 275 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AUDINO, 10, 3
# 276 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory7, MSGBOX_DEFAULT
# 277 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 278 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AURORUS, 10, 3
# 279 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory8, MSGBOX_DEFAULT
# 280 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 281 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AMOONGUSS, 10, 3
# 282 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory9, MSGBOX_DEFAULT
# 283 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 284 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_APPLIN, 10, 3
# 285 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory10, MSGBOX_DEFAULT
# 286 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 287 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_APPLETUN, 10, 3
# 288 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory11, MSGBOX_DEFAULT
# 289 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 290 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AXEW, 10, 3
# 291 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory12, MSGBOX_DEFAULT
# 292 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 293 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARBOLIVA, 10, 3
# 294 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory13, MSGBOX_DEFAULT
# 295 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 296 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARCHEN, 10, 3
# 297 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 298 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 299 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 300 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
# 301 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 302 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 303 "data/maps/MOSSDEEP01/scripts.pory"

# 304 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandmaAfterFirstTalk::
# 305 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAskAgain, MSGBOX_YESNO
# 306 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, YES
# 307 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_TellStory
# 308 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 309 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 310 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 311 "data/maps/MOSSDEEP01/scripts.pory"

# 312 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Grandpa::
# 313 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 314 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 315 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandpaAfter
# 316 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaFirstTalk, MSGBOX_DEFAULT
# 317 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 318 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 319 "data/maps/MOSSDEEP01/scripts.pory"

# 320 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandpaAfter::
# 321 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaAfterTalk, MSGBOX_DEFAULT
# 322 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 323 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 324 "data/maps/MOSSDEEP01/scripts.pory"

# 325 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 326 "data/maps/MOSSDEEP01/scripts.pory"
// TIME GEAR COLLECTION
# 327 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 328 "data/maps/MOSSDEEP01/scripts.pory"

# 329 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item1::
# 330 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 331 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 332 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 333 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem1, MSGBOX_DEFAULT
# 334 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 335 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear1
# 336 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 337 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_1
# 338 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_1
# 339 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 340 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 341 "data/maps/MOSSDEEP01/scripts.pory"

# 342 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item2::
# 343 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 344 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 345 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 346 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem2, MSGBOX_DEFAULT
# 347 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 348 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear2
# 349 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 350 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_2
# 351 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_2
# 352 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 353 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 354 "data/maps/MOSSDEEP01/scripts.pory"

# 355 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item3::
# 356 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 357 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 358 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 359 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem3, MSGBOX_DEFAULT
# 360 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 361 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear3
# 362 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 363 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_3
# 364 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_3
# 365 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 366 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 367 "data/maps/MOSSDEEP01/scripts.pory"

# 368 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item_AlreadyCollected::
# 369 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_AlreadyCollected, MSGBOX_DEFAULT
# 370 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 371 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 372 "data/maps/MOSSDEEP01/scripts.pory"

# 373 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 374 "data/maps/MOSSDEEP01/scripts.pory"
// CELEBI RESCUE EVENT
# 375 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 376 "data/maps/MOSSDEEP01/scripts.pory"

# 377 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Celebi::
# 378 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 379 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 380 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_CelebiAlreadyRescued
# 381 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_CelebiNeedGears
# 382 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_CelebiNeedGears
# 383 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_CelebiNeedGears
# 384 "data/maps/MOSSDEEP01/scripts.pory"

# 385 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiPower, MSGBOX_DEFAULT
# 386 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 387 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_HYPER_BEAM
# 388 "data/maps/MOSSDEEP01/scripts.pory"
	
# 389 "data/maps/MOSSDEEP01/scripts.pory"
	// Transform static Celebi into follower
# 390 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 391 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
# 392 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 393 "data/maps/MOSSDEEP01/scripts.pory"
	
# 394 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_CELEBI_RESCUED
# 395 "data/maps/MOSSDEEP01/scripts.pory"
	
# 396 "data/maps/MOSSDEEP01/scripts.pory"
	// Show Wailord path and set subpriority to walk over it
# 397 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WAILORD_PATH
# 398 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectsubpriority LOCALID_WAILORD_BLOCKER, MAP_MOSSDEEP01, 0xFF
# 399 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiCallsWailord, MSGBOX_DEFAULT
# 400 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 401 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 402 "data/maps/MOSSDEEP01/scripts.pory"

# 403 "data/maps/MOSSDEEP01/scripts.pory"
	// Set Celebi as follower
# 404 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 405 "data/maps/MOSSDEEP01/scripts.pory"
	setfollowernpc LOCALID_CELEBI_STATIC, FNPC_ALL, NULL, 0
# 406 "data/maps/MOSSDEEP01/scripts.pory"

# 407 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiCalmed, MSGBOX_DEFAULT
# 408 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 409 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 410 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 411 "data/maps/MOSSDEEP01/scripts.pory"

# 412 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiNeedGears::
# 413 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARAQUANID, 10, 3
# 414 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiHelp, MSGBOX_DEFAULT
# 415 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 416 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 417 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 418 "data/maps/MOSSDEEP01/scripts.pory"

# 419 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiAlreadyRescued::
# 420 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiThanks, MSGBOX_DEFAULT
# 421 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 422 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 423 "data/maps/MOSSDEEP01/scripts.pory"

# 424 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 425 "data/maps/MOSSDEEP01/scripts.pory"
// MIGHTYENA ZONE TRIGGER
# 426 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 427 "data/maps/MOSSDEEP01/scripts.pory"

# 428 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaZone::
# 429 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 430 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_MightyenaZone_Safe
# 431 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_PIN
# 432 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_ExclamationMark
# 433 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 434 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 435 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_FindNearestMightyena
# 436 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_0x8008, Common_Movement_ExclamationMark
# 437 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 438 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_0x8008, Common_Movement_FacePlayer
# 439 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 440 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 441 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 442 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 443 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 444 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 445 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
# 446 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 447 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
# 448 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 449 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 14, 67
# 450 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 451 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 452 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 453 "data/maps/MOSSDEEP01/scripts.pory"

# 454 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_FindNearestMightyena::
# 455 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8008, 6
# 456 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 457 "data/maps/MOSSDEEP01/scripts.pory"

# 458 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_MightyenaZone_Safe::
# 459 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 460 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 461 "data/maps/MOSSDEEP01/scripts.pory"

# 462 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 463 "data/maps/MOSSDEEP01/scripts.pory"
// MIGHTYENA NPC INTERACTION
# 464 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 465 "data/maps/MOSSDEEP01/scripts.pory"

# 466 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Mightyena::
# 467 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FacePlayer
# 468 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 469 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 470 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_MightyenaFriendly
# 471 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 472 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 473 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 474 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 475 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 476 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 477 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 478 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
# 479 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 480 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
# 481 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 482 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 11, 71
# 483 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 484 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 485 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 486 "data/maps/MOSSDEEP01/scripts.pory"

# 487 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaFriendly::
# 488 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 489 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaFriendly, MSGBOX_DEFAULT
# 490 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 491 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 492 "data/maps/MOSSDEEP01/scripts.pory"

# 493 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 494 "data/maps/MOSSDEEP01/scripts.pory"
// POKEMON NPC INTERACTIONS
# 495 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 496 "data/maps/MOSSDEEP01/scripts.pory"

# 497 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_PidgeotInitial::
# 498 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 499 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 500 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_PIDGEOT, CRY_MODE_NORMAL
# 501 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PidgeotGreeting, MSGBOX_DEFAULT
# 502 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 503 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 504 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 505 "data/maps/MOSSDEEP01/scripts.pory"

# 506 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Bulbasaur::
# 507 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 508 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 509 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_BULBASAUR, CRY_MODE_NORMAL
# 510 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 511 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 512 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 513 "data/maps/MOSSDEEP01/scripts.pory"

# 514 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Totodile::
# 515 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 516 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 517 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_TOTODILE, CRY_MODE_NORMAL
# 518 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 519 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 520 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 521 "data/maps/MOSSDEEP01/scripts.pory"

# 522 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Torchic::
# 523 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 524 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 525 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_TORCHIC, CRY_MODE_NORMAL
# 526 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 527 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 528 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 529 "data/maps/MOSSDEEP01/scripts.pory"

# 530 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 531 "data/maps/MOSSDEEP01/scripts.pory"
// WALLY NPC
# 532 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 533 "data/maps/MOSSDEEP01/scripts.pory"

# 534 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wally::
# 535 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 536 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 537 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_WallyAfterIntro
# 538 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_WALLY_ATTACKED_BY_MIGHTYENA, MOSSDEEP01_EventScript_WallyNotReady
# 539 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyIntro, MSGBOX_DEFAULT
# 540 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 541 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_INTRO_DONE
# 542 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_INITIAL
# 543 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_INITIAL
# 544 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_CLONE
# 545 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_CLONE
# 546 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 47, 45
# 547 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 548 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyWarped, MSGBOX_DEFAULT
# 549 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 550 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 551 "data/maps/MOSSDEEP01/scripts.pory"

# 552 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyNotReady::
# 553 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyNotReady, MSGBOX_DEFAULT
# 554 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 555 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 556 "data/maps/MOSSDEEP01/scripts.pory"

# 557 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyAfterIntro::
# 558 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyAfterCelebi, MSGBOX_DEFAULT
# 559 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 560 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 561 "data/maps/MOSSDEEP01/scripts.pory"

# 562 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 563 "data/maps/MOSSDEEP01/scripts.pory"
// SURVIVOR NPC
# 564 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 565 "data/maps/MOSSDEEP01/scripts.pory"

# 566 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Survivor::
# 567 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 568 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 569 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_SurvivorAfterCelebi
# 570 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorTrapped, MSGBOX_DEFAULT
# 571 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 572 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 573 "data/maps/MOSSDEEP01/scripts.pory"

# 574 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SurvivorAfterCelebi::
# 575 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_TEMP_14, MOSSDEEP01_EventScript_SurvivorMoved
# 576 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorAmazed, MSGBOX_DEFAULT
# 577 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 578 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorGoing, MSGBOX_DEFAULT
# 579 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 580 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_SURVIVOR, MOSSDEEP01_Movement_SurvivorGoUp
# 581 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 582 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_TEMP_14
# 583 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 584 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 585 "data/maps/MOSSDEEP01/scripts.pory"

# 586 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SurvivorMoved::
# 587 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorHappy, MSGBOX_DEFAULT
# 588 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 589 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 590 "data/maps/MOSSDEEP01/scripts.pory"

# 591 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_SurvivorGoUp:
# 592 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 593 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 594 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 595 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 596 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 597 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 598 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 599 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 600 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 601 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 602 "data/maps/MOSSDEEP01/scripts.pory"

# 603 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 604 "data/maps/MOSSDEEP01/scripts.pory"
// RIVAL NPC
# 605 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 606 "data/maps/MOSSDEEP01/scripts.pory"

# 607 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SetupRivalNPC::
# 608 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 609 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 610 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_ShowFemaleRival
# 611 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
# 612 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
# 613 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 614 "data/maps/MOSSDEEP01/scripts.pory"

# 615 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowFemaleRival::
# 616 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
# 617 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
# 618 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 619 "data/maps/MOSSDEEP01/scripts.pory"

# 620 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalMale::
# 621 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 622 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 623 "data/maps/MOSSDEEP01/scripts.pory"
	random 4
# 624 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 0
# 625 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case0
# 626 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 1
# 627 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case1
# 628 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 2
# 629 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case2
# 630 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 3
# 631 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case3
# 632 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 633 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 634 "data/maps/MOSSDEEP01/scripts.pory"

# 635 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case0::
# 636 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale01, MSGBOX_DEFAULT
# 637 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 638 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 639 "data/maps/MOSSDEEP01/scripts.pory"

# 640 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case1::
# 641 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale02, MSGBOX_DEFAULT
# 642 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 643 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 644 "data/maps/MOSSDEEP01/scripts.pory"

# 645 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case2::
# 646 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale03, MSGBOX_DEFAULT
# 647 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 648 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 649 "data/maps/MOSSDEEP01/scripts.pory"

# 650 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case3::
# 651 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale04, MSGBOX_DEFAULT
# 652 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 653 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 654 "data/maps/MOSSDEEP01/scripts.pory"

# 655 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalFemale::
# 656 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 657 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 658 "data/maps/MOSSDEEP01/scripts.pory"
	random 4
# 659 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 0
# 660 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case0
# 661 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 1
# 662 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case1
# 663 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 2
# 664 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case2
# 665 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 3
# 666 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case3
# 667 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 668 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 669 "data/maps/MOSSDEEP01/scripts.pory"

# 670 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case0::
# 671 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale01, MSGBOX_DEFAULT
# 672 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 673 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 674 "data/maps/MOSSDEEP01/scripts.pory"

# 675 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case1::
# 676 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale02, MSGBOX_DEFAULT
# 677 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 678 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 679 "data/maps/MOSSDEEP01/scripts.pory"

# 680 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case2::
# 681 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale03, MSGBOX_DEFAULT
# 682 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 683 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 684 "data/maps/MOSSDEEP01/scripts.pory"

# 685 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case3::
# 686 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale04, MSGBOX_DEFAULT
# 687 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 688 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 689 "data/maps/MOSSDEEP01/scripts.pory"

# 690 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Child01::
# 691 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 692 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 693 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Child01, MSGBOX_DEFAULT
# 694 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 695 "data/maps/MOSSDEEP01/scripts.pory"
	end	
# 696 "data/maps/MOSSDEEP01/scripts.pory"

# 697 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Child02::
# 698 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 699 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 700 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Child02, MSGBOX_DEFAULT
# 701 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 702 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 703 "data/maps/MOSSDEEP01/scripts.pory"

# 704 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 705 "data/maps/MOSSDEEP01/scripts.pory"
// WAILORD BLOCKER
# 706 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 707 "data/maps/MOSSDEEP01/scripts.pory"

# 708 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordBlocker::
# 709 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 710 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 711 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WailordGone
# 712 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WailordBlocking, MSGBOX_DEFAULT
# 713 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 714 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 715 "data/maps/MOSSDEEP01/scripts.pory"

# 716 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordGone::
# 717 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PathNowOpen, MSGBOX_DEFAULT
# 718 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 719 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 720 "data/maps/MOSSDEEP01/scripts.pory"

# 721 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordBlocksPath::
# 722 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 723 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WailordBlocks, MSGBOX_DEFAULT
# 724 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 725 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 726 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 727 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 728 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 729 "data/maps/MOSSDEEP01/scripts.pory"

# 730 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordPathClear::
# 731 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 732 "data/maps/MOSSDEEP01/scripts.pory"

# 733 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wailord::
# 734 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 735 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 736 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WailordIdle, MSGBOX_DEFAULT
# 737 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 738 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 739 "data/maps/MOSSDEEP01/scripts.pory"

# 740 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wailmer::
# 741 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 742 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 743 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WailmerIdle, MSGBOX_DEFAULT
# 744 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 745 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 746 "data/maps/MOSSDEEP01/scripts.pory"

# 747 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordJumpOver::
# 748 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 749 "data/maps/MOSSDEEP01/scripts.pory"
	// Pula no lugar virado para cima
# 750 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_JumpOverWailordUp
# 751 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 752 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_BIKE_HOP
# 753 "data/maps/MOSSDEEP01/scripts.pory"
	
# 754 "data/maps/MOSSDEEP01/scripts.pory"
	// Move o jogador para o outro lado (atravessa o Wailord)
# 755 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_CrossWailordUp
# 756 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 757 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_BIKE_HOP
# 758 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 759 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 760 "data/maps/MOSSDEEP01/scripts.pory"

# 761 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_JumpOverWailordUp:
# 762 "data/maps/MOSSDEEP01/scripts.pory"
	jump_in_place_up     // EXISTE - pulo no lugar virado para cima
# 763 "data/maps/MOSSDEEP01/scripts.pory"
	delay_4
# 764 "data/maps/MOSSDEEP01/scripts.pory"
	jump_in_place_up     // Segundo pulo para efeito
# 765 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 766 "data/maps/MOSSDEEP01/scripts.pory"

# 767 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CrossWailordUp:
# 768 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up              // Atravessa o Wailord
# 769 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 770 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up  
# 771 "data/maps/MOSSDEEP01/scripts.pory"
	step_end	
# 772 "data/maps/MOSSDEEP01/scripts.pory"

# 773 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 774 "data/maps/MOSSDEEP01/scripts.pory"
// JIRACHI WAKE EVENT - TRIGGER BASED
# 775 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 776 "data/maps/MOSSDEEP01/scripts.pory"

# 777 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_JirachiTrigger::
# 778 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 779 "data/maps/MOSSDEEP01/scripts.pory"
	
# 780 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiAlreadyAwake
# 781 "data/maps/MOSSDEEP01/scripts.pory"
	
# 782 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiWaking, MSGBOX_DEFAULT
# 783 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 784 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 785 "data/maps/MOSSDEEP01/scripts.pory"
	
# 786 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 787 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_PSYBEAM
# 788 "data/maps/MOSSDEEP01/scripts.pory"
	delay 10
# 789 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 4
# 790 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 791 "data/maps/MOSSDEEP01/scripts.pory"
	
# 792 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_SOUTH
# 793 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_PSYBEAM
# 794 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 795 "data/maps/MOSSDEEP01/scripts.pory"
	
# 796 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_NORTH
# 797 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SWIFT
# 798 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 799 "data/maps/MOSSDEEP01/scripts.pory"
	
# 800 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_JIRACHI_AWAKE
# 801 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiAwoken, MSGBOX_DEFAULT
# 802 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 803 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 804 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 805 "data/maps/MOSSDEEP01/scripts.pory"

# 806 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiAlreadyAwake::
# 807 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 808 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 809 "data/maps/MOSSDEEP01/scripts.pory"

# 810 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Jirachi::
# 811 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 812 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 813 "data/maps/MOSSDEEP01/scripts.pory"
	
# 814 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiSleeping
# 815 "data/maps/MOSSDEEP01/scripts.pory"
	
# 816 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_JirachiNeedCelebi
# 817 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_JirachiNeedItems
# 818 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_JirachiNeedItems
# 819 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_JirachiNeedItems
# 820 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_QUEST_COMPLETED, MOSSDEEP01_JirachiAlreadyCompleted
# 821 "data/maps/MOSSDEEP01/scripts.pory"
	
# 822 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_EventScript_QuestComplete
# 823 "data/maps/MOSSDEEP01/scripts.pory"

# 824 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiNeedCelebi::
# 825 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiNeedCelebi, MSGBOX_DEFAULT
# 826 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 827 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 828 "data/maps/MOSSDEEP01/scripts.pory"

# 829 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiNeedItems::
# 830 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiNeedItems, MSGBOX_DEFAULT
# 831 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 832 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 833 "data/maps/MOSSDEEP01/scripts.pory"

# 834 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiAlreadyCompleted::
# 835 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiCompleted, MSGBOX_DEFAULT
# 836 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 837 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 838 "data/maps/MOSSDEEP01/scripts.pory"

# 839 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiSleeping::
# 840 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiStillSleeping, MSGBOX_DEFAULT
# 841 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 842 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 843 "data/maps/MOSSDEEP01/scripts.pory"

# 844 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 845 "data/maps/MOSSDEEP01/scripts.pory"
// QUEST COMPLETION - JIRACHI SENDS PLAYER HOME
# 846 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 847 "data/maps/MOSSDEEP01/scripts.pory"

# 848 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_QuestComplete::
# 849 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_ThankYou, MSGBOX_DEFAULT
# 850 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 851 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_QUEST_COMPLETED
# 852 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CometAppears, MSGBOX_DEFAULT
# 853 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 854 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 8
# 855 "data/maps/MOSSDEEP01/scripts.pory"
	delay 40
# 856 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceUp
# 857 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 858 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_BLACK, 4
# 859 "data/maps/MOSSDEEP01/scripts.pory"
	delay 10
# 860 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_COMET
# 861 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_MILLENNIUM_COMET
# 862 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_SHINY
# 863 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 2
# 864 "data/maps/MOSSDEEP01/scripts.pory"
	delay 8
# 865 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 2
# 866 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 867 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_THUNDERSTORM
# 868 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 869 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SACRED_FIRE
# 870 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 871 "data/maps/MOSSDEEP01/scripts.pory"
	special SpawnCameraObject
# 872 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SWIFT
# 873 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MOSSDEEP01_Movement_CameraFollowComet
# 874 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_MILLENNIUM_COMET, MOSSDEEP01_Movement_CometCrossingSky
# 875 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 876 "data/maps/MOSSDEEP01/scripts.pory"
	special RemoveCameraObject
# 877 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 878 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_EXPLOSION
# 879 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 880 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 881 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 882 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SOLAR_BEAM
# 883 "data/maps/MOSSDEEP01/scripts.pory"
	delay 40
# 884 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 8
# 885 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 886 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_MILLENNIUM_COMET
# 887 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_COMET
# 888 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_TimeToWakeUp, MSGBOX_DEFAULT
# 889 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 890 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 891 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_TELEPORT
# 892 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 12
# 893 "data/maps/MOSSDEEP01/scripts.pory"
	delay 80
# 894 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 895 "data/maps/MOSSDEEP01/scripts.pory"
	
# 896 "data/maps/MOSSDEEP01/scripts.pory"
	// Set flags for Littleroot Town start
# 897 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_VISITED_LITTLEROOT_TOWN
# 898 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
# 899 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
# 900 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SET_WALL_CLOCK
# 901 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_RESCUED_BIRCH
# 902 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 903 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SYS_B_DASH
# 904 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_RECEIVED_RUNNING_SHOES
# 905 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SYS_POKEMON_GET
# 906 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SYS_POKEDEX_GET
# 907 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 6
# 908 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 4
# 909 "data/maps/MOSSDEEP01/scripts.pory"
	
# 910 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 911 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 912 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_WarpMale
# 913 "data/maps/MOSSDEEP01/scripts.pory"
	
# 914 "data/maps/MOSSDEEP01/scripts.pory"
	// Female player
# 915 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
# 916 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 917 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 918 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
# 919 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 920 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
# 921 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 922 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 923 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 924 "data/maps/MOSSDEEP01/scripts.pory"

# 925 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_WarpMale::
# 926 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
# 927 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 928 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 929 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
# 930 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 931 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
# 932 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 933 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 934 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 935 "data/maps/MOSSDEEP01/scripts.pory"

# 936 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 937 "data/maps/MOSSDEEP01/scripts.pory"
// MOVEMENT SCRIPTS
# 938 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 939 "data/maps/MOSSDEEP01/scripts.pory"

# 940 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CameraFollowComet:
# 941 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 942 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 943 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 944 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 945 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 946 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 947 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 948 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 949 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 950 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 951 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 952 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 953 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 954 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 955 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 956 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 957 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 958 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 959 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 960 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 961 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 962 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 963 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 964 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 965 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 966 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 967 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 968 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 969 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 970 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 971 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 972 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 973 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 974 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 975 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 976 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 977 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 978 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 979 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 980 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 981 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 982 "data/maps/MOSSDEEP01/scripts.pory"

# 983 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CometCrossingSky:
# 984 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 985 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 986 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 987 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 988 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 989 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 990 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 991 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 992 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 993 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 994 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 995 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 996 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 997 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 998 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 999 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1000 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
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
	step_end
# 1065 "data/maps/MOSSDEEP01/scripts.pory"

# 1066 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1067 "data/maps/MOSSDEEP01/scripts.pory"
// TEXT MESSAGES
# 1068 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1069 "data/maps/MOSSDEEP01/scripts.pory"

# 1070 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_NeedCelebiFirst:
# 1071 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: I sense something...\p"
# 1072 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The Guardian of the Forest,\n"
# 1073 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI, is in danger!\p"
# 1074 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please, help CELEBI first!\n"
# 1075 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I assist you.$"
# 1076 "data/maps/MOSSDEEP01/scripts.pory"

# 1077 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_NeedItems:
# 1078 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: Thank you for saving CELEBI!\p"
# 1079 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Now, the flow of time is broken!\p"
# 1080 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please find the 3 TIME GEARS\n"
# 1081 "data/maps/MOSSDEEP01/scripts.pory"
	.string "scattered around this place.\p"
# 1082 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I send you home!$"
# 1083 "data/maps/MOSSDEEP01/scripts.pory"

# 1084 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ThankYou:
# 1085 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You found all the TIME GEARS!\p"
# 1086 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The temporal flow is restoring...\n"
# 1087 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Look! The Millennium Comet!$"
# 1088 "data/maps/MOSSDEEP01/scripts.pory"

# 1089 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CometAppears:
# 1090 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The sky begins to glow!\p"
# 1091 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A brilliant comet streaks across\n"
# 1092 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the heavens!$"
# 1093 "data/maps/MOSSDEEP01/scripts.pory"

# 1094 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_TimeToWakeUp:
# 1095 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: The timeline is restored!\p"
# 1096 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It's time to wake up from this dream...$"
# 1097 "data/maps/MOSSDEEP01/scripts.pory"

# 1098 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AlreadyHelped:
# 1099 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You already helped restore\n"
# 1100 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the flow of time!\p"
# 1101 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you, time traveler!$"
# 1102 "data/maps/MOSSDEEP01/scripts.pory"

# 1103 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem1:
# 1104 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} found something shining\n"
# 1105 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the sand...$"
# 1106 "data/maps/MOSSDEEP01/scripts.pory"

# 1107 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear1:
# 1108 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1109 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the PAST!$"
# 1110 "data/maps/MOSSDEEP01/scripts.pory"

# 1111 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem2:
# 1112 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} discovered something glowing\n"
# 1113 "data/maps/MOSSDEEP01/scripts.pory"
	.string "among the rocks...$"
# 1114 "data/maps/MOSSDEEP01/scripts.pory"

# 1115 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear2:
# 1116 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1117 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the PRESENT!$"
# 1118 "data/maps/MOSSDEEP01/scripts.pory"

# 1119 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem3:
# 1120 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} noticed something sparkling\n"
# 1121 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the water...$"
# 1122 "data/maps/MOSSDEEP01/scripts.pory"

# 1123 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear3:
# 1124 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1125 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the FUTURE!$"
# 1126 "data/maps/MOSSDEEP01/scripts.pory"

# 1127 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AlreadyCollected:
# 1128 "data/maps/MOSSDEEP01/scripts.pory"
	.string "This place seems peaceful now.$"
# 1129 "data/maps/MOSSDEEP01/scripts.pory"

# 1130 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiHelp:
# 1131 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: ... ... ...\p"
# 1132 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The flow of time is broken...\p"
# 1133 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please... find the 3 TIME GEARS...\n"
# 1134 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I be freed...$"
# 1135 "data/maps/MOSSDEEP01/scripts.pory"

# 1136 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiPower:
# 1137 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: You found all the TIME GEARS!\p"
# 1138 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Now I can use my power to restore\n"
# 1139 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the temporal flow!$"
# 1140 "data/maps/MOSSDEEP01/scripts.pory"

# 1141 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiCalmed:
# 1142 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild POKÉMON have calmed down!$"
# 1143 "data/maps/MOSSDEEP01/scripts.pory"

# 1144 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiThanks:
# 1145 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: Thank you, {PLAYER}!\n"
# 1146 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Together we restored time!$"
# 1147 "data/maps/MOSSDEEP01/scripts.pory"

# 1148 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaAttack:
# 1149 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild MIGHTYENA attacks!$"
# 1150 "data/maps/MOSSDEEP01/scripts.pory"

# 1151 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaBlackedOut:
# 1152 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild POKÉMON are too aggressive!\n"
# 1153 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You blacked out!$"
# 1154 "data/maps/MOSSDEEP01/scripts.pory"

# 1155 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaFriendly:
# 1156 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The MIGHTYENA looks calm and friendly.\n"
# 1157 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Amazing, they're so peaceful now!\p"
# 1158 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You can even pet them!$"
# 1159 "data/maps/MOSSDEEP01/scripts.pory"

# 1160 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorTrapped:
# 1161 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: Help! These wild POKÉMON\n"
# 1162 "data/maps/MOSSDEEP01/scripts.pory"
	.string "are too aggressive!\p"
# 1163 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I can't escape!$"
# 1164 "data/maps/MOSSDEEP01/scripts.pory"

# 1165 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorAmazed:
# 1166 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: Incredible! The POKÉMON\n"
# 1167 "data/maps/MOSSDEEP01/scripts.pory"
	.string "suddenly calmed down!\p"
# 1168 "data/maps/MOSSDEEP01/scripts.pory"
	.string "What happened?$"
# 1169 "data/maps/MOSSDEEP01/scripts.pory"

# 1170 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorGoing:
# 1171 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: I'm going to find a safer\n"
# 1172 "data/maps/MOSSDEEP01/scripts.pory"
	.string "place. Thank you!$"
# 1173 "data/maps/MOSSDEEP01/scripts.pory"

# 1174 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorHappy:
# 1175 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: I feel much safer now.\n"
# 1176 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you for your help!$"
# 1177 "data/maps/MOSSDEEP01/scripts.pory"

# 1178 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HealerWelcome:
# 1179 "data/maps/MOSSDEEP01/scripts.pory"
	.string "HEALER: Let me heal your POKÉMON.$"
# 1180 "data/maps/MOSSDEEP01/scripts.pory"

# 1181 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Healing:
# 1182 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Healing POKÉMON...$"
# 1183 "data/maps/MOSSDEEP01/scripts.pory"

# 1184 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HealedComplete:
# 1185 "data/maps/MOSSDEEP01/scripts.pory"
	.string "HEALER: Your POKÉMON are fully\n"
# 1186 "data/maps/MOSSDEEP01/scripts.pory"
	.string "healed! Good luck!$"
# 1187 "data/maps/MOSSDEEP01/scripts.pory"

# 1188 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaWelcome:
# 1189 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: {PLAYER}! You're awake!\p"
# 1190 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The earthquake was terrible...\n"
# 1191 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Many people are trapped...$"
# 1192 "data/maps/MOSSDEEP01/scripts.pory"

# 1193 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_EarthquakeWarning:
# 1194 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Another tremor!\n"
# 1195 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there!$"
# 1196 "data/maps/MOSSDEEP01/scripts.pory"

# 1197 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaGivesCharm:
# 1198 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Take this SHINY CHARM.\n"
# 1199 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It might bring you luck!$"
# 1200 "data/maps/MOSSDEEP01/scripts.pory"

# 1201 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaCharmExplanation:
# 1202 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: This charm increases your\n"
# 1203 "data/maps/MOSSDEEP01/scripts.pory"
	.string "chances of finding rare POKÉMON.\p"
# 1204 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Use it well!$"
# 1205 "data/maps/MOSSDEEP01/scripts.pory"

# 1206 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HoennDestroyed:
# 1207 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The HOENN region...\n"
# 1208 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It's been completely destroyed...\p"
# 1209 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But there are survivors who need\n"
# 1210 "data/maps/MOSSDEEP01/scripts.pory"
	.string "help. Please, {PLAYER}, help them!$"
# 1211 "data/maps/MOSSDEEP01/scripts.pory"

# 1212 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PlayerDecision:
# 1213 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} decides to help the survivors\n"
# 1214 "data/maps/MOSSDEEP01/scripts.pory"
	.string "and explore the devastated area.$"
# 1215 "data/maps/MOSSDEEP01/scripts.pory"

# 1216 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GoodLuck:
# 1217 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Good luck, {PLAYER}!\n"
# 1218 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be very careful!$"
# 1219 "data/maps/MOSSDEEP01/scripts.pory"

# 1220 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaEncouragement:
# 1221 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: You're doing great, {PLAYER}!\n"
# 1222 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Keep helping people!$"
# 1223 "data/maps/MOSSDEEP01/scripts.pory"

# 1224 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaFirstTalk:
# 1225 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: The world has changed...\n"
# 1226 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Everything is so different now...$"
# 1227 "data/maps/MOSSDEEP01/scripts.pory"

# 1228 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaAfterTalk:
# 1229 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: Thank you for helping\n"
# 1230 "data/maps/MOSSDEEP01/scripts.pory"
	.string "everyone, {PLAYER}. You're a hero!$"
# 1231 "data/maps/MOSSDEEP01/scripts.pory"

# 1232 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory1:
# 1233 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: This was the beginning...$"
# 1234 "data/maps/MOSSDEEP01/scripts.pory"

# 1235 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory2:
# 1236 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Then the conflict started...$"
# 1237 "data/maps/MOSSDEEP01/scripts.pory"

# 1238 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory3:
# 1239 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The great battle between\n"
# 1240 "data/maps/MOSSDEEP01/scripts.pory"
	.string "land and sea...$"
# 1241 "data/maps/MOSSDEEP01/scripts.pory"

# 1242 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory4:
# 1243 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The tsunami devastated\n"
# 1244 "data/maps/MOSSDEEP01/scripts.pory"
	.string "everything...$"
# 1245 "data/maps/MOSSDEEP01/scripts.pory"

# 1246 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory5:
# 1247 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Volcanoes erupted across\n"
# 1248 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the land...$"
# 1249 "data/maps/MOSSDEEP01/scripts.pory"

# 1250 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory6:
# 1251 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The land became a barren\n"
# 1252 "data/maps/MOSSDEEP01/scripts.pory"
	.string "wasteland...$"
# 1253 "data/maps/MOSSDEEP01/scripts.pory"

# 1254 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory7:
# 1255 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The oceans raged with\n"
# 1256 "data/maps/MOSSDEEP01/scripts.pory"
	.string "unending storms...$"
# 1257 "data/maps/MOSSDEEP01/scripts.pory"

# 1258 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory8:
# 1259 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Survivors gathered in\n"
# 1260 "data/maps/MOSSDEEP01/scripts.pory"
	.string "camps...$"
# 1261 "data/maps/MOSSDEEP01/scripts.pory"

# 1262 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory9:
# 1263 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Hope began to fade...$"
# 1264 "data/maps/MOSSDEEP01/scripts.pory"

# 1265 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory10:
# 1266 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: But then a legend\n"
# 1267 "data/maps/MOSSDEEP01/scripts.pory"
	.string "appeared...$"
# 1268 "data/maps/MOSSDEEP01/scripts.pory"

# 1269 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory11:
# 1270 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The sky guardian descended\n"
# 1271 "data/maps/MOSSDEEP01/scripts.pory"
	.string "from above...$"
# 1272 "data/maps/MOSSDEEP01/scripts.pory"

# 1273 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory12:
# 1274 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Peace was restored,\n"
# 1275 "data/maps/MOSSDEEP01/scripts.pory"
	.string "but at a cost...$"
# 1276 "data/maps/MOSSDEEP01/scripts.pory"

# 1277 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory13:
# 1278 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: And this is how our world\n"
# 1279 "data/maps/MOSSDEEP01/scripts.pory"
	.string "became what it is today...$"
# 1280 "data/maps/MOSSDEEP01/scripts.pory"

# 1281 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAskStory:
# 1282 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Hello, {PLAYER}!\p"
# 1283 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Would you like to hear the legends\n"
# 1284 "data/maps/MOSSDEEP01/scripts.pory"
	.string "and stories of how HOENN arrived\l"
# 1285 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the state it is now?$"
# 1286 "data/maps/MOSSDEEP01/scripts.pory"

# 1287 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaBeCareful:
# 1288 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: I understand.\p"
# 1289 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please be very careful when exploring\n"
# 1290 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the MOSSDEEP ruins.\p"
# 1291 "data/maps/MOSSDEEP01/scripts.pory"
	.string "There are many dangers out there...$"
# 1292 "data/maps/MOSSDEEP01/scripts.pory"

# 1293 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAskAgain:
# 1294 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Would you like to hear\n"
# 1295 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the stories of HOENN again?$"
# 1296 "data/maps/MOSSDEEP01/scripts.pory"

# 1297 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale01:
# 1298 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: Hey {PLAYER}! I'm helping\n"
# 1299 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the survivors too!\p"
# 1300 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's work together!$"
# 1301 "data/maps/MOSSDEEP01/scripts.pory"

# 1302 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale02:
# 1303 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: These wild POKÉMON are\n"
# 1304 "data/maps/MOSSDEEP01/scripts.pory"
	.string "really aggressive!\p"
# 1305 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there!$"
# 1306 "data/maps/MOSSDEEP01/scripts.pory"

# 1307 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale03:
# 1308 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: I heard there's a special\n"
# 1309 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON that can help us.\p"
# 1310 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's find it!$"
# 1311 "data/maps/MOSSDEEP01/scripts.pory"

# 1312 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale04:
# 1313 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: We can do this, {PLAYER}!\n"
# 1314 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Together we'll save everyone!$"
# 1315 "data/maps/MOSSDEEP01/scripts.pory"

# 1316 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale01:
# 1317 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: {PLAYER}! I'm so glad\n"
# 1318 "data/maps/MOSSDEEP01/scripts.pory"
	.string "you're safe!\p"
# 1319 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's help the survivors together!$"
# 1320 "data/maps/MOSSDEEP01/scripts.pory"

# 1321 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale02:
# 1322 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: The wild POKÉMON are\n"
# 1323 "data/maps/MOSSDEEP01/scripts.pory"
	.string "acting so strange...\p"
# 1324 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Something must be wrong!$"
# 1325 "data/maps/MOSSDEEP01/scripts.pory"

# 1326 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale03:
# 1327 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: I heard about a legendary\n"
# 1328 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON that controls time.\p"
# 1329 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe it can help us!$"
# 1330 "data/maps/MOSSDEEP01/scripts.pory"

# 1331 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale04:
# 1332 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: We make a great team,\n"
# 1333 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER}! Let's keep going!$"
# 1334 "data/maps/MOSSDEEP01/scripts.pory"

# 1335 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Child01:
# 1336 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CHILD: I'm scared...\n"
# 1337 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Where are my parents?$"
# 1338 "data/maps/MOSSDEEP01/scripts.pory"

# 1339 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Child02:
# 1340 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CHILD: The ground shook really hard...\n"
# 1341 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Then everything changed...$"
# 1342 "data/maps/MOSSDEEP01/scripts.pory"

# 1343 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordBlocking:
# 1344 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A massive WAILORD blocks the path!\p"
# 1345 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems agitated by the chaos...\n"
# 1346 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You can't get through.$"
# 1347 "data/maps/MOSSDEEP01/scripts.pory"

# 1348 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PathNowOpen:
# 1349 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The WAILORD has calmed down and\n"
# 1350 "data/maps/MOSSDEEP01/scripts.pory"
	.string "moved away. The path is clear!$"
# 1351 "data/maps/MOSSDEEP01/scripts.pory"

# 1352 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiWaking:
# 1353 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A mysterious POKÉMON is sleeping\n"
# 1354 "data/maps/MOSSDEEP01/scripts.pory"
	.string "near the rocks...\p"
# 1355 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems to be waking up!$"
# 1356 "data/maps/MOSSDEEP01/scripts.pory"

# 1357 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiAwoken:
# 1358 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI has awoken!$"
# 1359 "data/maps/MOSSDEEP01/scripts.pory"

# 1360 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiNeedCelebi:
# 1361 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: I sense temporal disturbance...\n"
# 1362 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The forest guardian needs help!\p"
# 1363 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please rescue CELEBI first!$"
# 1364 "data/maps/MOSSDEEP01/scripts.pory"

# 1365 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiNeedItems:
# 1366 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: Thank you for saving CELEBI!\n"
# 1367 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But time is still broken...\p"
# 1368 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please find the 3 TIME GEARS\n"
# 1369 "data/maps/MOSSDEEP01/scripts.pory"
	.string "to restore temporal flow!$"
# 1370 "data/maps/MOSSDEEP01/scripts.pory"

# 1371 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiCompleted:
# 1372 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You restored the timeline!\n"
# 1373 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you, time traveler!$"
# 1374 "data/maps/MOSSDEEP01/scripts.pory"

# 1375 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiStillSleeping:
# 1376 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI is sleeping peacefully...\n"
# 1377 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe you should approach it?$"
# 1378 "data/maps/MOSSDEEP01/scripts.pory"

# 1379 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyIntro:
# 1380 "data/maps/MOSSDEEP01/scripts.pory"
	.string "WALLY: Hello, {PLAYER}!\p"
# 1381 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Did you know that in the past people\n"
# 1382 "data/maps/MOSSDEEP01/scripts.pory"
	.string "could train POKÉMON normally?\p"
# 1383 "data/maps/MOSSDEEP01/scripts.pory"
	.string "There were POKÉ BALLS, devices that\n"
# 1384 "data/maps/MOSSDEEP01/scripts.pory"
	.string "captured and stored POKÉMON.\p"
# 1385 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But now... they don't make them anymore.\n"
# 1386 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The technology was lost.\p"
# 1387 "data/maps/MOSSDEEP01/scripts.pory"
	.string "That's why the connection with POKÉMON\n"
# 1388 "data/maps/MOSSDEEP01/scripts.pory"
	.string "has to be made in another way...\p"
# 1389 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A more natural, purer connection.$"
# 1390 "data/maps/MOSSDEEP01/scripts.pory"

# 1391 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyAfterCelebi:
# 1392 "data/maps/MOSSDEEP01/scripts.pory"
	.string "WALLY: {PLAYER}, you did it!\p"
# 1393 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI calmed all the wild POKÉMON.\n"
# 1394 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Amazing!\p"
# 1395 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The connection between POKÉMON and\n"
# 1396 "data/maps/MOSSDEEP01/scripts.pory"
	.string "humans is being restored!$"
# 1397 "data/maps/MOSSDEEP01/scripts.pory"

# 1398 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyWarped:
# 1399 "data/maps/MOSSDEEP01/scripts.pory"
	.string "WALLY: I'll head there first!\p"
# 1400 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Meet me ahead, {PLAYER}!$"
# 1401 "data/maps/MOSSDEEP01/scripts.pory"

# 1402 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyNotReady:
# 1403 "data/maps/MOSSDEEP01/scripts.pory"
	.string "WALLY: Hello, {PLAYER}!\p"
# 1404 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there! The wild\n"
# 1405 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON are very aggressive.\p"
# 1406 "data/maps/MOSSDEEP01/scripts.pory"
	.string "If you get into trouble, come\n"
# 1407 "data/maps/MOSSDEEP01/scripts.pory"
	.string "talk to me!$"
# 1408 "data/maps/MOSSDEEP01/scripts.pory"

# 1409 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PidgeotGreeting:
# 1410 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Pidgeot: Piiidgeoo!$"
# 1411 "data/maps/MOSSDEEP01/scripts.pory"

# 1412 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordBlocks:
# 1413 "data/maps/MOSSDEEP01/scripts.pory"
    .string "There's only water ahead!\p"
# 1414 "data/maps/MOSSDEEP01/scripts.pory"
    .string "You can't cross without help...$"
# 1415 "data/maps/MOSSDEEP01/scripts.pory"

# 1416 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordIdle:
# 1417 "data/maps/MOSSDEEP01/scripts.pory"
    .string "WAILORD is calmly floating on the water.$"
# 1418 "data/maps/MOSSDEEP01/scripts.pory"

# 1419 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailmerIdle:
# 1420 "data/maps/MOSSDEEP01/scripts.pory"
    .string "The WAILMER are splashing playfully!$"
# 1421 "data/maps/MOSSDEEP01/scripts.pory"

# 1422 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiCallsWailord:
# 1423 "data/maps/MOSSDEEP01/scripts.pory"
    .string "CELEBI calls out to the ocean!\p"
# 1424 "data/maps/MOSSDEEP01/scripts.pory"
    .string "A massive WAILORD appears and\n"
# 1425 "data/maps/MOSSDEEP01/scripts.pory"
    .string "creates a path across the water!$"
