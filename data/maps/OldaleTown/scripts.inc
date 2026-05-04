# 1 "data/maps/OldaleTown/scripts.pory"

# 2 "data/maps/OldaleTown/scripts.pory"
OldaleTown_MapScripts::
# 3 "data/maps/OldaleTown/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, OldaleTown_OnTransition
# 4 "data/maps/OldaleTown/scripts.pory"
	.byte 0
# 5 "data/maps/OldaleTown/scripts.pory"

# 6 "data/maps/OldaleTown/scripts.pory"
OldaleTown_OnTransition:
# 7 "data/maps/OldaleTown/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 8 "data/maps/OldaleTown/scripts.pory"
	setflag FLAG_VISITED_OLDALE_TOWN
# 9 "data/maps/OldaleTown/scripts.pory"
	call_if_unset FLAG_ADVENTURE_STARTED, OldaleTown_EventScript_BlockWestEntrance
# 10 "data/maps/OldaleTown/scripts.pory"
	call_if_set FLAG_ADVENTURE_STARTED, OldaleTown_EventScript_SetOldaleState
# 11 "data/maps/OldaleTown/scripts.pory"
	end
# 12 "data/maps/OldaleTown/scripts.pory"

# 13 "data/maps/OldaleTown/scripts.pory"
@ This script seems pointless because nothing uses VAR_OLDALE_TOWN_STATE
# 14 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_SetOldaleState::
# 15 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_OLDALE_TOWN_STATE, 1
# 16 "data/maps/OldaleTown/scripts.pory"
	return
# 17 "data/maps/OldaleTown/scripts.pory"

# 18 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ShopSign::
# 19 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_ShopSign, MSGBOX_SIGN
# 20 "data/maps/OldaleTown/scripts.pory"
	end
# 21 "data/maps/OldaleTown/scripts.pory"

# 22 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_BlockWestEntrance::
# 23 "data/maps/OldaleTown/scripts.pory"
	setobjectxyperm LOCALID_FOOTPRINTS_MAN, 1, 11
# 24 "data/maps/OldaleTown/scripts.pory"
	setobjectmovementtype LOCALID_FOOTPRINTS_MAN, MOVEMENT_TYPE_FACE_LEFT
# 25 "data/maps/OldaleTown/scripts.pory"
	return
# 26 "data/maps/OldaleTown/scripts.pory"

# 27 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_MoveMartEmployee::
# 28 "data/maps/OldaleTown/scripts.pory"
	setobjectxyperm LOCALID_OLDALE_MART_EMPLOYEE, 13, 14
# 29 "data/maps/OldaleTown/scripts.pory"
	setobjectmovementtype LOCALID_OLDALE_MART_EMPLOYEE, MOVEMENT_TYPE_FACE_DOWN
# 30 "data/maps/OldaleTown/scripts.pory"
	return
# 31 "data/maps/OldaleTown/scripts.pory"

# 32 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_TownSign::
# 33 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_TownSign, MSGBOX_SIGN
# 34 "data/maps/OldaleTown/scripts.pory"
	end
# 35 "data/maps/OldaleTown/scripts.pory"

# 36 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_Girl::
# 37 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_SavingMyProgress, MSGBOX_NPC
# 38 "data/maps/OldaleTown/scripts.pory"
	end
# 39 "data/maps/OldaleTown/scripts.pory"

# 40 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_Girl2::
# 41 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_PieceofMind, MSGBOX_NPC
# 42 "data/maps/OldaleTown/scripts.pory"
	end
# 43 "data/maps/OldaleTown/scripts.pory"

# 44 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_MartEmployee::
# 45 "data/maps/OldaleTown/scripts.pory"
	lock
# 46 "data/maps/OldaleTown/scripts.pory"
	faceplayer
# 47 "data/maps/OldaleTown/scripts.pory"
	goto_if_set FLAG_RECEIVED_POTION_OLDALE, OldaleTown_EventScript_ExplainPotion
# 48 "data/maps/OldaleTown/scripts.pory"
	goto_if_set FLAG_TEMP_1, OldaleTown_EventScript_ExplainPotion
# 49 "data/maps/OldaleTown/scripts.pory"
	setflag FLAG_TEMP_1
# 50 "data/maps/OldaleTown/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 51 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_IWorkAtPokemonMart, MSGBOX_DEFAULT
# 52 "data/maps/OldaleTown/scripts.pory"
	closemessage
# 53 "data/maps/OldaleTown/scripts.pory"
	switch VAR_FACING
# 54 "data/maps/OldaleTown/scripts.pory"
	case DIR_SOUTH, OldaleTown_EventScript_GoToMartSouth
# 55 "data/maps/OldaleTown/scripts.pory"
	case DIR_NORTH, OldaleTown_EventScript_GoToMartNorth
# 56 "data/maps/OldaleTown/scripts.pory"
	case DIR_EAST, OldaleTown_EventScript_GoToMartEast
# 57 "data/maps/OldaleTown/scripts.pory"
	end
# 58 "data/maps/OldaleTown/scripts.pory"

# 59 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_GoToMartSouth::
# 60 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_MART_EMPLOYEE, OldaleTown_Movement_EmployeeSouth
# 61 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, OldaleTown_Movement_PlayerSouth
# 62 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 63 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ExplainPokemonMart
# 64 "data/maps/OldaleTown/scripts.pory"
	end
# 65 "data/maps/OldaleTown/scripts.pory"

# 66 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_GoToMartNorth::
# 67 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_MART_EMPLOYEE, OldaleTown_Movement_EmployeeNorth
# 68 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, OldaleTown_Movement_PlayerNorth
# 69 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 70 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ExplainPokemonMart
# 71 "data/maps/OldaleTown/scripts.pory"
	end
# 72 "data/maps/OldaleTown/scripts.pory"

# 73 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_GoToMartEast::
# 74 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, OldaleTown_Movement_PlayerEast
# 75 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_MART_EMPLOYEE, OldaleTown_Movement_EmployeeEast
# 76 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 77 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ExplainPokemonMart
# 78 "data/maps/OldaleTown/scripts.pory"
	end
# 79 "data/maps/OldaleTown/scripts.pory"

# 80 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ExplainPokemonMart::
# 81 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_ThisIsAPokemonMart, MSGBOX_DEFAULT
# 82 "data/maps/OldaleTown/scripts.pory"
	giveitem ITEM_POTION
# 83 "data/maps/OldaleTown/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, OldaleTown_EventScript_BagIsFull
# 84 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_PotionExplanation, MSGBOX_DEFAULT
# 85 "data/maps/OldaleTown/scripts.pory"
	setflag FLAG_RECEIVED_POTION_OLDALE
# 86 "data/maps/OldaleTown/scripts.pory"
	fadedefaultbgm
# 87 "data/maps/OldaleTown/scripts.pory"
	release
# 88 "data/maps/OldaleTown/scripts.pory"
	end
# 89 "data/maps/OldaleTown/scripts.pory"

# 90 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ExplainPotion::
# 91 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_PotionExplanation, MSGBOX_DEFAULT
# 92 "data/maps/OldaleTown/scripts.pory"
	release
# 93 "data/maps/OldaleTown/scripts.pory"
	end
# 94 "data/maps/OldaleTown/scripts.pory"

# 95 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_BagIsFull::
# 96 "data/maps/OldaleTown/scripts.pory"
	msgbox gText_TooBadBagIsFull, MSGBOX_DEFAULT
# 97 "data/maps/OldaleTown/scripts.pory"
	fadedefaultbgm
# 98 "data/maps/OldaleTown/scripts.pory"
	release
# 99 "data/maps/OldaleTown/scripts.pory"
	end
# 100 "data/maps/OldaleTown/scripts.pory"

# 101 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_EmployeeEast:
# 102 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 103 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 104 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 105 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 106 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 107 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 108 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 109 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_down
# 110 "data/maps/OldaleTown/scripts.pory"
	step_end
# 111 "data/maps/OldaleTown/scripts.pory"

# 112 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_EmployeeSouth:
# 113 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 114 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 115 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 116 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 117 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 118 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 119 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 120 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 121 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 122 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_down
# 123 "data/maps/OldaleTown/scripts.pory"
	step_end
# 124 "data/maps/OldaleTown/scripts.pory"

# 125 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_EmployeeNorth:
# 126 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 127 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 128 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 129 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 130 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 131 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 132 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 133 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_down
# 134 "data/maps/OldaleTown/scripts.pory"
	step_end
# 135 "data/maps/OldaleTown/scripts.pory"

# 136 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_Unknown1:
# 137 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 138 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 139 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 140 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 141 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 142 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 143 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 144 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 145 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 146 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 147 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 148 "data/maps/OldaleTown/scripts.pory"
	delay_8
# 149 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_down
# 150 "data/maps/OldaleTown/scripts.pory"
	step_end
# 151 "data/maps/OldaleTown/scripts.pory"

# 152 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_PlayerEast:
# 153 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 154 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 155 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 156 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 157 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 158 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 159 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 160 "data/maps/OldaleTown/scripts.pory"
	step_end
# 161 "data/maps/OldaleTown/scripts.pory"

# 162 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_PlayerSouth:
# 163 "data/maps/OldaleTown/scripts.pory"
	delay_16
# 164 "data/maps/OldaleTown/scripts.pory"
	delay_16
# 165 "data/maps/OldaleTown/scripts.pory"
	delay_16
# 166 "data/maps/OldaleTown/scripts.pory"
	delay_16
# 167 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 168 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 169 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 170 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 171 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 172 "data/maps/OldaleTown/scripts.pory"
	step_end
# 173 "data/maps/OldaleTown/scripts.pory"

# 174 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_PlayerNorth:
# 175 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 176 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 177 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 178 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 179 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 180 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 181 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 182 "data/maps/OldaleTown/scripts.pory"
	step_end
# 183 "data/maps/OldaleTown/scripts.pory"

# 184 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_Unknown2:
# 185 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 186 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 187 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 188 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 189 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 190 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 191 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 192 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 193 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 194 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 195 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 196 "data/maps/OldaleTown/scripts.pory"
	step_end
# 197 "data/maps/OldaleTown/scripts.pory"

# 198 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_FootprintsMan::
# 199 "data/maps/OldaleTown/scripts.pory"
	lock
# 200 "data/maps/OldaleTown/scripts.pory"
	faceplayer
# 201 "data/maps/OldaleTown/scripts.pory"
	goto_if_set FLAG_ADVENTURE_STARTED, OldaleTown_EventScript_NotBlockingPath
# 202 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_DiscoveredFootprints, MSGBOX_DEFAULT
# 203 "data/maps/OldaleTown/scripts.pory"
	closemessage
# 204 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_FOOTPRINTS_MAN, Common_Movement_FaceOriginalDirection
# 205 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 206 "data/maps/OldaleTown/scripts.pory"
	release
# 207 "data/maps/OldaleTown/scripts.pory"
	end
# 208 "data/maps/OldaleTown/scripts.pory"

# 209 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_BlockedPath::
# 210 "data/maps/OldaleTown/scripts.pory"
	lockall
# 211 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, OldaleTown_Movement_PlayerStepBack
# 212 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_FOOTPRINTS_MAN, OldaleTown_Movement_BackUp
# 213 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 214 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_WaitDontComeInHere, MSGBOX_DEFAULT
# 215 "data/maps/OldaleTown/scripts.pory"
	closemessage
# 216 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_FOOTPRINTS_MAN, OldaleTown_Movement_ReturnToOriginalPosition
# 217 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 218 "data/maps/OldaleTown/scripts.pory"
	releaseall
# 219 "data/maps/OldaleTown/scripts.pory"
	end
# 220 "data/maps/OldaleTown/scripts.pory"

# 221 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_NotBlockingPath::
# 222 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_FinishedSketchingFootprints, MSGBOX_DEFAULT
# 223 "data/maps/OldaleTown/scripts.pory"
	release
# 224 "data/maps/OldaleTown/scripts.pory"
	end
# 225 "data/maps/OldaleTown/scripts.pory"

# 226 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_Rival::
# 227 "data/maps/OldaleTown/scripts.pory"
	lockall
# 228 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, Common_Movement_FacePlayer
# 229 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 230 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_0x8009, 0
# 231 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ShowRivalMessage
# 232 "data/maps/OldaleTown/scripts.pory"
	end
# 233 "data/maps/OldaleTown/scripts.pory"

# 234 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_RivalTrigger1::
# 235 "data/maps/OldaleTown/scripts.pory"
	lockall
# 236 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalApproachPlayer1
# 237 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 238 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 239 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 240 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_0x8009, 1
# 241 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ShowRivalMessage
# 242 "data/maps/OldaleTown/scripts.pory"
	end
# 243 "data/maps/OldaleTown/scripts.pory"

# 244 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_RivalTrigger2::
# 245 "data/maps/OldaleTown/scripts.pory"
	lockall
# 246 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalApproachPlayer2
# 247 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 248 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 249 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 250 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_0x8009, 1
# 251 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ShowRivalMessage
# 252 "data/maps/OldaleTown/scripts.pory"
	end
# 253 "data/maps/OldaleTown/scripts.pory"

# 254 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_RivalTrigger3::
# 255 "data/maps/OldaleTown/scripts.pory"
	lockall
# 256 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalApproachPlayer3
# 257 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 258 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 259 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 260 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_0x8009, 1
# 261 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ShowRivalMessage
# 262 "data/maps/OldaleTown/scripts.pory"
	end
# 263 "data/maps/OldaleTown/scripts.pory"

# 264 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ShowRivalMessage::
# 265 "data/maps/OldaleTown/scripts.pory"
	checkplayergender
# 266 "data/maps/OldaleTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, OldaleTown_EventScript_ShowMayMessage
# 267 "data/maps/OldaleTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, OldaleTown_EventScript_ShowBrendanMessage
# 268 "data/maps/OldaleTown/scripts.pory"
	end
# 269 "data/maps/OldaleTown/scripts.pory"

# 270 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ShowMayMessage::
# 271 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_MayLetsGoBack, MSGBOX_DEFAULT
# 272 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_RivalFinish
# 273 "data/maps/OldaleTown/scripts.pory"
	end
# 274 "data/maps/OldaleTown/scripts.pory"

# 275 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ShowBrendanMessage::
# 276 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_BrendanLetsGoBack, MSGBOX_DEFAULT
# 277 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_RivalFinish
# 278 "data/maps/OldaleTown/scripts.pory"
	end
# 279 "data/maps/OldaleTown/scripts.pory"

# 280 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_RivalFinish::
# 281 "data/maps/OldaleTown/scripts.pory"
	closemessage
# 282 "data/maps/OldaleTown/scripts.pory"
	call_if_eq VAR_0x8009, 0, OldaleTown_EventScript_DoExitMovement1
# 283 "data/maps/OldaleTown/scripts.pory"
	call_if_eq VAR_0x8009, 1, OldaleTown_EventScript_DoExitMovement2
# 284 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalExit
# 285 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 286 "data/maps/OldaleTown/scripts.pory"
	removeobject LOCALID_OLDALE_RIVAL
# 287 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_OLDALE_RIVAL_STATE, 2
# 288 "data/maps/OldaleTown/scripts.pory"
	setflag FLAG_HIDE_OLDALE_TOWN_RIVAL
# 289 "data/maps/OldaleTown/scripts.pory"
	releaseall
# 290 "data/maps/OldaleTown/scripts.pory"
	end
# 291 "data/maps/OldaleTown/scripts.pory"

# 292 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_DoExitMovement1::
# 293 "data/maps/OldaleTown/scripts.pory"
	goto_if_ne VAR_FACING, DIR_SOUTH, OldaleTown_EventScript_DoExitMovement2
# 294 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalExit
# 295 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 296 "data/maps/OldaleTown/scripts.pory"
	return
# 297 "data/maps/OldaleTown/scripts.pory"

# 298 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_DoExitMovement2::
# 299 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, OldaleTown_Movement_WatchRivalExit
# 300 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalExit
# 301 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 302 "data/maps/OldaleTown/scripts.pory"
	return
# 303 "data/maps/OldaleTown/scripts.pory"

# 304 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_RivalApproachPlayer1:
# 305 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 306 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 307 "data/maps/OldaleTown/scripts.pory"
	step_end
# 308 "data/maps/OldaleTown/scripts.pory"

# 309 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_RivalApproachPlayer2:
# 310 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 311 "data/maps/OldaleTown/scripts.pory"
	step_end
# 312 "data/maps/OldaleTown/scripts.pory"

# 313 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_RivalApproachPlayer3:
# 314 "data/maps/OldaleTown/scripts.pory"
	face_left
# 315 "data/maps/OldaleTown/scripts.pory"
	step_end
# 316 "data/maps/OldaleTown/scripts.pory"

# 317 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_RivalExit:
# 318 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 319 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 320 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 321 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 322 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 323 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 324 "data/maps/OldaleTown/scripts.pory"
	step_end
# 325 "data/maps/OldaleTown/scripts.pory"

# 326 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_WatchRivalExit:
# 327 "data/maps/OldaleTown/scripts.pory"
	delay_8
# 328 "data/maps/OldaleTown/scripts.pory"
	delay_4
# 329 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_down
# 330 "data/maps/OldaleTown/scripts.pory"
	step_end
# 331 "data/maps/OldaleTown/scripts.pory"

# 332 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_PlayerStepBack:
# 333 "data/maps/OldaleTown/scripts.pory"
	delay_8
# 334 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 335 "data/maps/OldaleTown/scripts.pory"
	step_end
# 336 "data/maps/OldaleTown/scripts.pory"

# 337 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_BackUp:
# 338 "data/maps/OldaleTown/scripts.pory"
	walk_fast_up
# 339 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_left
# 340 "data/maps/OldaleTown/scripts.pory"
	lock_facing_direction
# 341 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 342 "data/maps/OldaleTown/scripts.pory"
	unlock_facing_direction
# 343 "data/maps/OldaleTown/scripts.pory"
	step_end
# 344 "data/maps/OldaleTown/scripts.pory"

# 345 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_ReturnToOriginalPosition:
# 346 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 347 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 348 "data/maps/OldaleTown/scripts.pory"
	step_end
# 349 "data/maps/OldaleTown/scripts.pory"

# 350 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_SavingMyProgress:
# 351 "data/maps/OldaleTown/scripts.pory"
	.string "You look familiar, but also kind of\n"
# 352 "data/maps/OldaleTown/scripts.pory"
	.string "strange... I can't explain it.\p"
# 353 "data/maps/OldaleTown/scripts.pory"
	.string "Lately everything has felt a little off.\n"
# 354 "data/maps/OldaleTown/scripts.pory"
	.string "Even this town feels different.\p"
# 355 "data/maps/OldaleTown/scripts.pory"
	.string "It's like something changed after last\n"
# 356 "data/maps/OldaleTown/scripts.pory"
	.string "night... really strange.$"
# 357 "data/maps/OldaleTown/scripts.pory"

# 358 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_PieceofMind:
# 359 "data/maps/OldaleTown/scripts.pory"
	.string "I just want my peace of mind, calm,\n"
# 360 "data/maps/OldaleTown/scripts.pory"
	.string "quiet days without any rush.\p"
# 361 "data/maps/OldaleTown/scripts.pory"
	.string "I don't like spending all day on\n"
# 362 "data/maps/OldaleTown/scripts.pory"
	.string "computers or watching TV.\p"
# 363 "data/maps/OldaleTown/scripts.pory"
	.string "Here in OLDALE, time moves slowly.\n"
# 364 "data/maps/OldaleTown/scripts.pory"
	.string "I feel truly at ease.\p"
# 365 "data/maps/OldaleTown/scripts.pory"
	.string "I would never trade this for\n"
# 366 "data/maps/OldaleTown/scripts.pory"
	.string "a hectic life in the big city.$"
# 367 "data/maps/OldaleTown/scripts.pory"

# 368 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_IWorkAtPokemonMart:
# 369 "data/maps/OldaleTown/scripts.pory"
	.string "Hi!\n"
# 370 "data/maps/OldaleTown/scripts.pory"
	.string "I work at a POKéMON MART.\p"
# 371 "data/maps/OldaleTown/scripts.pory"
	.string "Can I get you to come with me?$"
# 372 "data/maps/OldaleTown/scripts.pory"

# 373 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_ThisIsAPokemonMart:
# 374 "data/maps/OldaleTown/scripts.pory"
	.string "This is a POKéMON MART.\n"
# 375 "data/maps/OldaleTown/scripts.pory"
	.string "Just look for our blue roof.\p"
# 376 "data/maps/OldaleTown/scripts.pory"
	.string "We sell a variety of goods including\n"
# 377 "data/maps/OldaleTown/scripts.pory"
	.string "POKé BALLS for catching POKéMON.\p"
# 378 "data/maps/OldaleTown/scripts.pory"
	.string "Here, I'd like you to have this as\n"
# 379 "data/maps/OldaleTown/scripts.pory"
	.string "a promotional item.$"
# 380 "data/maps/OldaleTown/scripts.pory"

# 381 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_PotionExplanation:
# 382 "data/maps/OldaleTown/scripts.pory"
	.string "A POTION can be used anytime, so it's\n"
# 383 "data/maps/OldaleTown/scripts.pory"
	.string "even more useful than a POKéMON CENTER\l"
# 384 "data/maps/OldaleTown/scripts.pory"
	.string "in certain situations.$"
# 385 "data/maps/OldaleTown/scripts.pory"

# 386 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_WaitDontComeInHere:
# 387 "data/maps/OldaleTown/scripts.pory"
	.string "Waaaaaait! Stop right there!\p"
# 388 "data/maps/OldaleTown/scripts.pory"
	.string "Professor ACACIA asked me to monitor\n"
# 389 "data/maps/OldaleTown/scripts.pory"
	.string "this area for any traces of the meteor\l"
# 390 "data/maps/OldaleTown/scripts.pory"
	.string "that passed through the sky last night.\p"
# 391 "data/maps/OldaleTown/scripts.pory"
	.string "They say this comet only appears once\n"
# 392 "data/maps/OldaleTown/scripts.pory"
	.string "every thousand years...\p"
# 393 "data/maps/OldaleTown/scripts.pory"
	.string "How lucky are we to witness this?\p"
# 394 "data/maps/OldaleTown/scripts.pory"
	.string "This area is off-limits for now, so\n"
# 395 "data/maps/OldaleTown/scripts.pory"
	.string "please don't come in here!$"
# 396 "data/maps/OldaleTown/scripts.pory"

# 397 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_DiscoveredFootprints:
# 398 "data/maps/OldaleTown/scripts.pory"
	.string "Hey, you there! Stop right now!\p"
# 399 "data/maps/OldaleTown/scripts.pory"
	.string "Professor ACACIA put me in charge of\n"
# 400 "data/maps/OldaleTown/scripts.pory"
	.string "investigating the MILLENNIUM COMET's\l"
# 401 "data/maps/OldaleTown/scripts.pory"
	.string "landing site. This area is restricted!\p"
# 402 "data/maps/OldaleTown/scripts.pory"
	.string "That cape... That strange outfit...\n"
# 403 "data/maps/OldaleTown/scripts.pory"
	.string "You don't look like you're from around\l"
# 404 "data/maps/OldaleTown/scripts.pory"
	.string "here. What are you supposed to be?\p"
# 405 "data/maps/OldaleTown/scripts.pory"
	.string "I can't let you pass until I'm sure\n"
# 406 "data/maps/OldaleTown/scripts.pory"
	.string "you're not a threat to the research.$"
# 407 "data/maps/OldaleTown/scripts.pory"

# 408 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_FinishedSketchingFootprints:
# 409 "data/maps/OldaleTown/scripts.pory"
	.string "Not a single clue...\p"
# 410 "data/maps/OldaleTown/scripts.pory"
	.string "We found nothing here. No trace of the\n"
# 411 "data/maps/OldaleTown/scripts.pory"
	.string "MILLENNIUM COMET anywhere.\p"
# 412 "data/maps/OldaleTown/scripts.pory"
	.string "Good luck out there. If you learn about\n"
# 413 "data/maps/OldaleTown/scripts.pory"
	.string "that comet, please tell me!\p"
# 414 "data/maps/OldaleTown/scripts.pory"
	.string "I've studied for years, but this...\n"
# 415 "data/maps/OldaleTown/scripts.pory"
	.string "This is beyond science.$"
# 416 "data/maps/OldaleTown/scripts.pory"

# 417 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_MayLetsGoBack:
# 418 "data/maps/OldaleTown/scripts.pory"
	.string "ZINNIA: {PLAYER}{KUN}!\n"
# 419 "data/maps/OldaleTown/scripts.pory"
	.string "Over here!\l"
# 420 "data/maps/OldaleTown/scripts.pory"
	.string "Let's hurry!$"
# 421 "data/maps/OldaleTown/scripts.pory"

# 422 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_BrendanLetsGoBack:
# 423 "data/maps/OldaleTown/scripts.pory"
	.string "ZENNO: {PLAYER}{KUN}!\n"
# 424 "data/maps/OldaleTown/scripts.pory"
	.string "Over here!\l"
# 425 "data/maps/OldaleTown/scripts.pory"
	.string "Let's hurry!$"
# 426 "data/maps/OldaleTown/scripts.pory"

# 427 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_TownSign:
# 428 "data/maps/OldaleTown/scripts.pory"
	.string "OLDALE TOWN\n"
# 429 "data/maps/OldaleTown/scripts.pory"
	.string "“Where things start off scarce.”$"
# 430 "data/maps/OldaleTown/scripts.pory"

# 431 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_ShopSign:
# 432 "data/maps/OldaleTown/scripts.pory"
	.string "OLDALE SHOP\n"
# 433 "data/maps/OldaleTown/scripts.pory"
	.string "“We got cool stuff!”$"
