# 1 "data/maps/MtPyre_Exterior/scripts.pory"

# 2 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_MapScripts::
# 3 "data/maps/MtPyre_Exterior/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MtPyre_Exterior_OnTransition
# 4 "data/maps/MtPyre_Exterior/scripts.pory"
	.byte 0
# 5 "data/maps/MtPyre_Exterior/scripts.pory"

# 6 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_OnTransition:
# 7 "data/maps/MtPyre_Exterior/scripts.pory"
	setflag FLAG_HIDE_MT_PYRE_EXTERIOR_MAGMA
# 8 "data/maps/MtPyre_Exterior/scripts.pory"
	setvar VAR_TEMP_2, 0
# 9 "data/maps/MtPyre_Exterior/scripts.pory"
	call MtPyre_Exterior_EventScript_CheckMagmaSceneAvailable
# 10 "data/maps/MtPyre_Exterior/scripts.pory"
	call MtPyre_Exterior_EventScript_CheckEnterFromSummit
# 11 "data/maps/MtPyre_Exterior/scripts.pory"
	end
# 12 "data/maps/MtPyre_Exterior/scripts.pory"

# 13 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_CheckMagmaSceneAvailable::
# 14 "data/maps/MtPyre_Exterior/scripts.pory"
	goto_if_set FLAG_MT_PYRE_EXTERIOR_MAGMA_SCENE_DONE, MtPyre_Exterior_EventScript_MagmaSceneUnavailable
# 15 "data/maps/MtPyre_Exterior/scripts.pory"
	goto_if_unset FLAG_DEFEATED_EVIL_TEAM_MT_CHIMNEY, MtPyre_Exterior_EventScript_MagmaSceneUnavailable
# 16 "data/maps/MtPyre_Exterior/scripts.pory"
	goto_if_ne VAR_MT_PYRE_STATE, 0, MtPyre_Exterior_EventScript_MagmaSceneUnavailable
# 17 "data/maps/MtPyre_Exterior/scripts.pory"
	setvar VAR_TEMP_2, 1
# 18 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_MagmaSceneUnavailable::
# 19 "data/maps/MtPyre_Exterior/scripts.pory"
	return
# 20 "data/maps/MtPyre_Exterior/scripts.pory"

# 21 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_CheckEnterFromSummit::
# 22 "data/maps/MtPyre_Exterior/scripts.pory"
	getplayerxy VAR_TEMP_0, VAR_TEMP_1
# 23 "data/maps/MtPyre_Exterior/scripts.pory"
	goto_if_lt VAR_TEMP_1, 12, MtPyre_Exterior_EventScript_EnterFromSummit
# 24 "data/maps/MtPyre_Exterior/scripts.pory"
	return
# 25 "data/maps/MtPyre_Exterior/scripts.pory"

# 26 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_EnterFromSummit::
# 27 "data/maps/MtPyre_Exterior/scripts.pory"
	setweather WEATHER_FOG_HORIZONTAL
# 28 "data/maps/MtPyre_Exterior/scripts.pory"
	return
# 29 "data/maps/MtPyre_Exterior/scripts.pory"

# 30 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_FogTrigger::
# 31 "data/maps/MtPyre_Exterior/scripts.pory"
	setweather WEATHER_FOG_HORIZONTAL
# 32 "data/maps/MtPyre_Exterior/scripts.pory"
	doweather
# 33 "data/maps/MtPyre_Exterior/scripts.pory"
	end
# 34 "data/maps/MtPyre_Exterior/scripts.pory"

# 35 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_SunTrigger::
# 36 "data/maps/MtPyre_Exterior/scripts.pory"
	setweather WEATHER_SUNNY
# 37 "data/maps/MtPyre_Exterior/scripts.pory"
	doweather
# 38 "data/maps/MtPyre_Exterior/scripts.pory"
	end
# 39 "data/maps/MtPyre_Exterior/scripts.pory"

# 40 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_MagmaTriggerUpper::
# 41 "data/maps/MtPyre_Exterior/scripts.pory"
	setvar VAR_TEMP_2, 0
# 42 "data/maps/MtPyre_Exterior/scripts.pory"
	setvar VAR_0x8008, 1
# 43 "data/maps/MtPyre_Exterior/scripts.pory"
	goto MtPyre_Exterior_EventScript_MagmaScene
# 44 "data/maps/MtPyre_Exterior/scripts.pory"

# 45 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_MagmaTriggerLower::
# 46 "data/maps/MtPyre_Exterior/scripts.pory"
	setvar VAR_TEMP_2, 0
# 47 "data/maps/MtPyre_Exterior/scripts.pory"
	setvar VAR_0x8008, 0
# 48 "data/maps/MtPyre_Exterior/scripts.pory"
	goto MtPyre_Exterior_EventScript_MagmaScene
# 49 "data/maps/MtPyre_Exterior/scripts.pory"

# 50 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_MagmaScene::
# 51 "data/maps/MtPyre_Exterior/scripts.pory"
	goto_if_set FLAG_MT_PYRE_EXTERIOR_MAGMA_SCENE_DONE, MtPyre_Exterior_EventScript_MagmaSceneSkip
# 52 "data/maps/MtPyre_Exterior/scripts.pory"
	goto_if_unset FLAG_DEFEATED_EVIL_TEAM_MT_CHIMNEY, MtPyre_Exterior_EventScript_MagmaSceneSkip
# 53 "data/maps/MtPyre_Exterior/scripts.pory"
	goto_if_ne VAR_MT_PYRE_STATE, 0, MtPyre_Exterior_EventScript_MagmaSceneSkip
# 54 "data/maps/MtPyre_Exterior/scripts.pory"
	lockall
# 55 "data/maps/MtPyre_Exterior/scripts.pory"
	clearflag FLAG_HIDE_MT_PYRE_EXTERIOR_MAGMA
# 56 "data/maps/MtPyre_Exterior/scripts.pory"
	addobject LOCALID_MT_PYRE_EXTERIOR_MAGNUS
# 57 "data/maps/MtPyre_Exterior/scripts.pory"
	addobject LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_1
# 58 "data/maps/MtPyre_Exterior/scripts.pory"
	addobject LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_2
# 59 "data/maps/MtPyre_Exterior/scripts.pory"
	addobject LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_3
# 60 "data/maps/MtPyre_Exterior/scripts.pory"
	addobject LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_4
# 61 "data/maps/MtPyre_Exterior/scripts.pory"
	playbgm MUS_ENCOUNTER_MAGMA, FALSE
# 62 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGNUS, MtPyre_Exterior_Movement_MagnusApproach
# 63 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_1, MtPyre_Exterior_Movement_Grunt1Approach
# 64 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_2, MtPyre_Exterior_Movement_Grunt2Approach
# 65 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_3, MtPyre_Exterior_Movement_Grunt3Approach
# 66 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_4, MtPyre_Exterior_Movement_Grunt4Approach
# 67 "data/maps/MtPyre_Exterior/scripts.pory"
	@ Use bounded scene timing so an obstructed NPC cannot lock the player.
# 68 "data/maps/MtPyre_Exterior/scripts.pory"
	delay 128
# 69 "data/maps/MtPyre_Exterior/scripts.pory"
	playse SE_PIN
# 70 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGNUS, Common_Movement_ExclamationMark
# 71 "data/maps/MtPyre_Exterior/scripts.pory"
	delay 32
# 72 "data/maps/MtPyre_Exterior/scripts.pory"
	createfieldmugshot MUGSHOT_MAGNUS, EMOTE_NORMAL
# 73 "data/maps/MtPyre_Exterior/scripts.pory"
	msgbox MtPyre_Exterior_Text_MagnusSeesPlayer, MSGBOX_DEFAULT
# 74 "data/maps/MtPyre_Exterior/scripts.pory"
	removefieldmugshot
# 75 "data/maps/MtPyre_Exterior/scripts.pory"
	closemessage
# 76 "data/maps/MtPyre_Exterior/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Exterior_EventScript_StepAside
# 77 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGNUS, MtPyre_Exterior_Movement_MagnusExit
# 78 "data/maps/MtPyre_Exterior/scripts.pory"
	delay 32
# 79 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_1, MtPyre_Exterior_Movement_Grunt1Exit
# 80 "data/maps/MtPyre_Exterior/scripts.pory"
	delay 32
# 81 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_2, MtPyre_Exterior_Movement_Grunt2Exit
# 82 "data/maps/MtPyre_Exterior/scripts.pory"
	delay 32
# 83 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_3, MtPyre_Exterior_Movement_Grunt3Exit
# 84 "data/maps/MtPyre_Exterior/scripts.pory"
	delay 32
# 85 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_4, MtPyre_Exterior_Movement_Grunt4Exit
# 86 "data/maps/MtPyre_Exterior/scripts.pory"
	@ The final grunt normally finishes in 256 frames. This buffer lets all
# 87 "data/maps/MtPyre_Exterior/scripts.pory"
	@ five actors clear the stairs before cleanup without waiting on an NPC.
# 88 "data/maps/MtPyre_Exterior/scripts.pory"
	delay 288
# 89 "data/maps/MtPyre_Exterior/scripts.pory"
	removeobject LOCALID_MT_PYRE_EXTERIOR_MAGNUS
# 90 "data/maps/MtPyre_Exterior/scripts.pory"
	removeobject LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_1
# 91 "data/maps/MtPyre_Exterior/scripts.pory"
	removeobject LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_2
# 92 "data/maps/MtPyre_Exterior/scripts.pory"
	removeobject LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_3
# 93 "data/maps/MtPyre_Exterior/scripts.pory"
	removeobject LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_4
# 94 "data/maps/MtPyre_Exterior/scripts.pory"
	setflag FLAG_HIDE_MT_PYRE_EXTERIOR_MAGMA
# 95 "data/maps/MtPyre_Exterior/scripts.pory"
	setflag FLAG_MT_PYRE_EXTERIOR_MAGMA_SCENE_DONE
# 96 "data/maps/MtPyre_Exterior/scripts.pory"
	fadedefaultbgm
# 97 "data/maps/MtPyre_Exterior/scripts.pory"
	releaseall
# 98 "data/maps/MtPyre_Exterior/scripts.pory"
	end
# 99 "data/maps/MtPyre_Exterior/scripts.pory"

# 100 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_StepAside::
# 101 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Exterior_Movement_PlayerStepAside
# 102 "data/maps/MtPyre_Exterior/scripts.pory"
	waitmovement 0
# 103 "data/maps/MtPyre_Exterior/scripts.pory"
	return
# 104 "data/maps/MtPyre_Exterior/scripts.pory"

# 105 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_MagmaSceneSkip::
# 106 "data/maps/MtPyre_Exterior/scripts.pory"
	end
# 107 "data/maps/MtPyre_Exterior/scripts.pory"

# 108 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_PlayerStepAside:
# 109 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 110 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 111 "data/maps/MtPyre_Exterior/scripts.pory"

# 112 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_MagnusApproach:
# 113 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 114 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 115 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 116 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 117 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 118 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 119 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 120 "data/maps/MtPyre_Exterior/scripts.pory"

# 121 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_Grunt1Approach:
# 122 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 123 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 124 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 125 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 126 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 127 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 128 "data/maps/MtPyre_Exterior/scripts.pory"

# 129 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_Grunt2Approach:
# 130 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 131 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 132 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 133 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 134 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 135 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 136 "data/maps/MtPyre_Exterior/scripts.pory"

# 137 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_Grunt3Approach:
# 138 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 139 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 140 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 141 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 142 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 143 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 144 "data/maps/MtPyre_Exterior/scripts.pory"

# 145 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_Grunt4Approach:
# 146 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 147 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 148 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 149 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 150 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 151 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 152 "data/maps/MtPyre_Exterior/scripts.pory"

# 153 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_MagnusExit:
# 154 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 155 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 156 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 157 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 158 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 159 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 160 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 161 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 162 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 163 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 164 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 165 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 166 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 167 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 168 "data/maps/MtPyre_Exterior/scripts.pory"

# 169 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_Grunt1Exit:
# 170 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 171 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 172 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 173 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 174 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 175 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 176 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 177 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 178 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 179 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 180 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 181 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 182 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 183 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 184 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 185 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 186 "data/maps/MtPyre_Exterior/scripts.pory"

# 187 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_Grunt2Exit:
# 188 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 189 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 190 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 191 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 192 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 193 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 194 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 195 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 196 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 197 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 198 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 199 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 200 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 201 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 202 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 203 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 204 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 205 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 206 "data/maps/MtPyre_Exterior/scripts.pory"

# 207 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_Grunt3Exit:
# 208 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 209 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 210 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 211 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 212 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 213 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 214 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 215 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 216 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 217 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 218 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 219 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 220 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 221 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 222 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 223 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 224 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 225 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 226 "data/maps/MtPyre_Exterior/scripts.pory"

# 227 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_Grunt4Exit:
# 228 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 229 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 230 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 231 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 232 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 233 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 234 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 235 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 236 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 237 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 238 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 239 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 240 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 241 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 242 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 243 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 244 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 245 "data/maps/MtPyre_Exterior/scripts.pory"

# 246 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Text_MagnusSeesPlayer:
# 247 "data/maps/MtPyre_Exterior/scripts.pory"
	.string "MAGNUS: You again…\p"
# 248 "data/maps/MtPyre_Exterior/scripts.pory"
	.string "Did you come to stop us, too?\p"
# 249 "data/maps/MtPyre_Exterior/scripts.pory"
	.string "Ha! TEAM AQUA raced up to the\n"
# 250 "data/maps/MtPyre_Exterior/scripts.pory"
	.string "summit. They never even noticed\p"
# 251 "data/maps/MtPyre_Exterior/scripts.pory"
	.string "our group slipping down the\n"
# 252 "data/maps/MtPyre_Exterior/scripts.pory"
	.string "other side.\p"
# 253 "data/maps/MtPyre_Exterior/scripts.pory"
	.string "Now, step aside.$"
