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
	call MtPyre_Exterior_EventScript_CheckEnterFromSummit
# 9 "data/maps/MtPyre_Exterior/scripts.pory"
	end
# 10 "data/maps/MtPyre_Exterior/scripts.pory"

# 11 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_CheckEnterFromSummit::
# 12 "data/maps/MtPyre_Exterior/scripts.pory"
	getplayerxy VAR_TEMP_0, VAR_TEMP_1
# 13 "data/maps/MtPyre_Exterior/scripts.pory"
	goto_if_lt VAR_TEMP_1, 12, MtPyre_Exterior_EventScript_EnterFromSummit
# 14 "data/maps/MtPyre_Exterior/scripts.pory"
	return
# 15 "data/maps/MtPyre_Exterior/scripts.pory"

# 16 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_EnterFromSummit::
# 17 "data/maps/MtPyre_Exterior/scripts.pory"
	setweather WEATHER_FOG_HORIZONTAL
# 18 "data/maps/MtPyre_Exterior/scripts.pory"
	return
# 19 "data/maps/MtPyre_Exterior/scripts.pory"

# 20 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_FogTrigger::
# 21 "data/maps/MtPyre_Exterior/scripts.pory"
	setweather WEATHER_FOG_HORIZONTAL
# 22 "data/maps/MtPyre_Exterior/scripts.pory"
	doweather
# 23 "data/maps/MtPyre_Exterior/scripts.pory"
	end
# 24 "data/maps/MtPyre_Exterior/scripts.pory"

# 25 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_SunTrigger::
# 26 "data/maps/MtPyre_Exterior/scripts.pory"
	setweather WEATHER_SUNNY
# 27 "data/maps/MtPyre_Exterior/scripts.pory"
	doweather
# 28 "data/maps/MtPyre_Exterior/scripts.pory"
	end
# 29 "data/maps/MtPyre_Exterior/scripts.pory"

# 30 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_MagmaTriggerUpper::
# 31 "data/maps/MtPyre_Exterior/scripts.pory"
	setvar VAR_0x8008, 1
# 32 "data/maps/MtPyre_Exterior/scripts.pory"
	goto MtPyre_Exterior_EventScript_MagmaScene
# 33 "data/maps/MtPyre_Exterior/scripts.pory"

# 34 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_MagmaTriggerLower::
# 35 "data/maps/MtPyre_Exterior/scripts.pory"
	setvar VAR_0x8008, 0
# 36 "data/maps/MtPyre_Exterior/scripts.pory"
	goto MtPyre_Exterior_EventScript_MagmaScene
# 37 "data/maps/MtPyre_Exterior/scripts.pory"

# 38 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_MagmaScene::
# 39 "data/maps/MtPyre_Exterior/scripts.pory"
	goto_if_set FLAG_MT_PYRE_EXTERIOR_MAGMA_SCENE_DONE, MtPyre_Exterior_EventScript_MagmaSceneSkip
# 40 "data/maps/MtPyre_Exterior/scripts.pory"
	goto_if_unset FLAG_DEFEATED_EVIL_TEAM_MT_CHIMNEY, MtPyre_Exterior_EventScript_MagmaSceneSkip
# 41 "data/maps/MtPyre_Exterior/scripts.pory"
	goto_if_ne VAR_MT_PYRE_STATE, 0, MtPyre_Exterior_EventScript_MagmaSceneSkip
# 42 "data/maps/MtPyre_Exterior/scripts.pory"
	lockall
# 43 "data/maps/MtPyre_Exterior/scripts.pory"
	clearflag FLAG_HIDE_MT_PYRE_EXTERIOR_MAGMA
# 44 "data/maps/MtPyre_Exterior/scripts.pory"
	addobject LOCALID_MT_PYRE_EXTERIOR_MAGNUS
# 45 "data/maps/MtPyre_Exterior/scripts.pory"
	addobject LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_1
# 46 "data/maps/MtPyre_Exterior/scripts.pory"
	addobject LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_2
# 47 "data/maps/MtPyre_Exterior/scripts.pory"
	addobject LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_3
# 48 "data/maps/MtPyre_Exterior/scripts.pory"
	addobject LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_4
# 49 "data/maps/MtPyre_Exterior/scripts.pory"
	playbgm MUS_ENCOUNTER_MAGMA, FALSE
# 50 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGNUS, MtPyre_Exterior_Movement_MagnusApproach
# 51 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_1, MtPyre_Exterior_Movement_Grunt1Approach
# 52 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_2, MtPyre_Exterior_Movement_Grunt2Approach
# 53 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_3, MtPyre_Exterior_Movement_Grunt3Approach
# 54 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_4, MtPyre_Exterior_Movement_Grunt4Approach
# 55 "data/maps/MtPyre_Exterior/scripts.pory"
	waitmovement LOCALID_MT_PYRE_EXTERIOR_MAGNUS
# 56 "data/maps/MtPyre_Exterior/scripts.pory"
	waitmovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_1
# 57 "data/maps/MtPyre_Exterior/scripts.pory"
	waitmovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_2
# 58 "data/maps/MtPyre_Exterior/scripts.pory"
	waitmovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_3
# 59 "data/maps/MtPyre_Exterior/scripts.pory"
	waitmovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_4
# 60 "data/maps/MtPyre_Exterior/scripts.pory"
	playse SE_PIN
# 61 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGNUS, Common_Movement_ExclamationMark
# 62 "data/maps/MtPyre_Exterior/scripts.pory"
	waitmovement 0
# 63 "data/maps/MtPyre_Exterior/scripts.pory"
	createfieldmugshot MUGSHOT_MAGNUS, EMOTE_NORMAL
# 64 "data/maps/MtPyre_Exterior/scripts.pory"
	msgbox MtPyre_Exterior_Text_MagnusSeesPlayer, MSGBOX_DEFAULT
# 65 "data/maps/MtPyre_Exterior/scripts.pory"
	removefieldmugshot
# 66 "data/maps/MtPyre_Exterior/scripts.pory"
	closemessage
# 67 "data/maps/MtPyre_Exterior/scripts.pory"
	call_if_eq VAR_0x8008, 1, MtPyre_Exterior_EventScript_StepAside
# 68 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGNUS, MtPyre_Exterior_Movement_MagnusExit
# 69 "data/maps/MtPyre_Exterior/scripts.pory"
	delay 32
# 70 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_1, MtPyre_Exterior_Movement_Grunt1Exit
# 71 "data/maps/MtPyre_Exterior/scripts.pory"
	delay 32
# 72 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_2, MtPyre_Exterior_Movement_Grunt2Exit
# 73 "data/maps/MtPyre_Exterior/scripts.pory"
	delay 32
# 74 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_3, MtPyre_Exterior_Movement_Grunt3Exit
# 75 "data/maps/MtPyre_Exterior/scripts.pory"
	delay 32
# 76 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_4, MtPyre_Exterior_Movement_Grunt4Exit
# 77 "data/maps/MtPyre_Exterior/scripts.pory"
	waitmovement LOCALID_MT_PYRE_EXTERIOR_MAGNUS
# 78 "data/maps/MtPyre_Exterior/scripts.pory"
	waitmovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_1
# 79 "data/maps/MtPyre_Exterior/scripts.pory"
	waitmovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_2
# 80 "data/maps/MtPyre_Exterior/scripts.pory"
	waitmovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_3
# 81 "data/maps/MtPyre_Exterior/scripts.pory"
	waitmovement LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_4
# 82 "data/maps/MtPyre_Exterior/scripts.pory"
	removeobject LOCALID_MT_PYRE_EXTERIOR_MAGNUS
# 83 "data/maps/MtPyre_Exterior/scripts.pory"
	removeobject LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_1
# 84 "data/maps/MtPyre_Exterior/scripts.pory"
	removeobject LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_2
# 85 "data/maps/MtPyre_Exterior/scripts.pory"
	removeobject LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_3
# 86 "data/maps/MtPyre_Exterior/scripts.pory"
	removeobject LOCALID_MT_PYRE_EXTERIOR_MAGMA_GRUNT_4
# 87 "data/maps/MtPyre_Exterior/scripts.pory"
	setflag FLAG_HIDE_MT_PYRE_EXTERIOR_MAGMA
# 88 "data/maps/MtPyre_Exterior/scripts.pory"
	setflag FLAG_MT_PYRE_EXTERIOR_MAGMA_SCENE_DONE
# 89 "data/maps/MtPyre_Exterior/scripts.pory"
	fadedefaultbgm
# 90 "data/maps/MtPyre_Exterior/scripts.pory"
	releaseall
# 91 "data/maps/MtPyre_Exterior/scripts.pory"
	end
# 92 "data/maps/MtPyre_Exterior/scripts.pory"

# 93 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_StepAside::
# 94 "data/maps/MtPyre_Exterior/scripts.pory"
	applymovement LOCALID_PLAYER, MtPyre_Exterior_Movement_PlayerStepAside
# 95 "data/maps/MtPyre_Exterior/scripts.pory"
	waitmovement 0
# 96 "data/maps/MtPyre_Exterior/scripts.pory"
	return
# 97 "data/maps/MtPyre_Exterior/scripts.pory"

# 98 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_EventScript_MagmaSceneSkip::
# 99 "data/maps/MtPyre_Exterior/scripts.pory"
	end
# 100 "data/maps/MtPyre_Exterior/scripts.pory"

# 101 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_PlayerStepAside:
# 102 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 103 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 104 "data/maps/MtPyre_Exterior/scripts.pory"

# 105 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_MagnusApproach:
# 106 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 107 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 108 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 109 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 110 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 111 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 112 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 113 "data/maps/MtPyre_Exterior/scripts.pory"

# 114 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_Grunt1Approach:
# 115 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 116 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 117 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 118 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 119 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 120 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 121 "data/maps/MtPyre_Exterior/scripts.pory"

# 122 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_Grunt2Approach:
# 123 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 124 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 125 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 126 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 127 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 128 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 129 "data/maps/MtPyre_Exterior/scripts.pory"

# 130 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_Grunt3Approach:
# 131 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 132 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 133 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 134 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 135 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 136 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 137 "data/maps/MtPyre_Exterior/scripts.pory"

# 138 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_Grunt4Approach:
# 139 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 140 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 141 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 142 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 143 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 144 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 145 "data/maps/MtPyre_Exterior/scripts.pory"

# 146 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_MagnusExit:
# 147 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 148 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 149 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 150 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 151 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 152 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 153 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 154 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 155 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 156 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 157 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 158 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 159 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 160 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 161 "data/maps/MtPyre_Exterior/scripts.pory"

# 162 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_Grunt1Exit:
# 163 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 164 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 165 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 166 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 167 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 168 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 169 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 170 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 171 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 172 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 173 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 174 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 175 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 176 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 177 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 178 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 179 "data/maps/MtPyre_Exterior/scripts.pory"

# 180 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_Grunt2Exit:
# 181 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 182 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 183 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 184 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 185 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 186 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 187 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 188 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 189 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 190 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 191 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 192 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 193 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 194 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 195 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 196 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 197 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 198 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 199 "data/maps/MtPyre_Exterior/scripts.pory"

# 200 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_Grunt3Exit:
# 201 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 202 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 203 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 204 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 205 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 206 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 207 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 208 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 209 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 210 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 211 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 212 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 213 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 214 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 215 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 216 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 217 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 218 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 219 "data/maps/MtPyre_Exterior/scripts.pory"

# 220 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Movement_Grunt4Exit:
# 221 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 222 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 223 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 224 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 225 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 226 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 227 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 228 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 229 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_right
# 230 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 231 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 232 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 233 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 234 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 235 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 236 "data/maps/MtPyre_Exterior/scripts.pory"
	walk_down
# 237 "data/maps/MtPyre_Exterior/scripts.pory"
	step_end
# 238 "data/maps/MtPyre_Exterior/scripts.pory"

# 239 "data/maps/MtPyre_Exterior/scripts.pory"
MtPyre_Exterior_Text_MagnusSeesPlayer:
# 240 "data/maps/MtPyre_Exterior/scripts.pory"
	.string "MAGNUS: You again…\p"
# 241 "data/maps/MtPyre_Exterior/scripts.pory"
	.string "Did you come to stop us, too?\p"
# 242 "data/maps/MtPyre_Exterior/scripts.pory"
	.string "Ha! TEAM AQUA raced up to the\n"
# 243 "data/maps/MtPyre_Exterior/scripts.pory"
	.string "summit. They never even noticed\p"
# 244 "data/maps/MtPyre_Exterior/scripts.pory"
	.string "TEAM MAGMA slipping down the\n"
# 245 "data/maps/MtPyre_Exterior/scripts.pory"
	.string "other side.\p"
# 246 "data/maps/MtPyre_Exterior/scripts.pory"
	.string "Now, step aside.$"
