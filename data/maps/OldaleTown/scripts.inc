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
    call_if_set FLAG_SHINY_SENTRET_END, OldaleTown_EventScript_ShowSentretWithGirl
# 12 "data/maps/OldaleTown/scripts.pory"
    call_if_unset FLAG_SHINY_SENTRET_END, OldaleTown_EventScript_HideSentretWithGirl
# 13 "data/maps/OldaleTown/scripts.pory"
    end
# 14 "data/maps/OldaleTown/scripts.pory"

# 15 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ShowSentretWithGirl::
# 16 "data/maps/OldaleTown/scripts.pory"
    clearflag FLAG_HIDE_SHINY_SENTRET_WITH_GIRL  
# 17 "data/maps/OldaleTown/scripts.pory"
    return
# 18 "data/maps/OldaleTown/scripts.pory"

# 19 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_HideSentretWithGirl::
# 20 "data/maps/OldaleTown/scripts.pory"
    setflag FLAG_HIDE_SHINY_SENTRET_WITH_GIRL    
# 21 "data/maps/OldaleTown/scripts.pory"
    return
# 22 "data/maps/OldaleTown/scripts.pory"

# 23 "data/maps/OldaleTown/scripts.pory"
@ This script seems pointless because nothing uses VAR_OLDALE_TOWN_STATE
# 24 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_SetOldaleState::
# 25 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_OLDALE_TOWN_STATE, 1
# 26 "data/maps/OldaleTown/scripts.pory"
	return
# 27 "data/maps/OldaleTown/scripts.pory"

# 28 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ShopSign::
# 29 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_ShopSign, MSGBOX_SIGN
# 30 "data/maps/OldaleTown/scripts.pory"
	end
# 31 "data/maps/OldaleTown/scripts.pory"

# 32 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_BlockWestEntrance::
# 33 "data/maps/OldaleTown/scripts.pory"
	setobjectxyperm LOCALID_FOOTPRINTS_MAN, 1, 11
# 34 "data/maps/OldaleTown/scripts.pory"
	setobjectmovementtype LOCALID_FOOTPRINTS_MAN, MOVEMENT_TYPE_FACE_LEFT
# 35 "data/maps/OldaleTown/scripts.pory"
	return
# 36 "data/maps/OldaleTown/scripts.pory"

# 37 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_MoveMartEmployee::
# 38 "data/maps/OldaleTown/scripts.pory"
	setobjectxyperm LOCALID_OLDALE_MART_EMPLOYEE, 13, 14
# 39 "data/maps/OldaleTown/scripts.pory"
	setobjectmovementtype LOCALID_OLDALE_MART_EMPLOYEE, MOVEMENT_TYPE_FACE_DOWN
# 40 "data/maps/OldaleTown/scripts.pory"
	return
# 41 "data/maps/OldaleTown/scripts.pory"

# 42 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_TownSign::
# 43 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_TownSign, MSGBOX_SIGN
# 44 "data/maps/OldaleTown/scripts.pory"
	end
# 45 "data/maps/OldaleTown/scripts.pory"

# 46 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_Girl::
# 47 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_SavingMyProgress, MSGBOX_NPC
# 48 "data/maps/OldaleTown/scripts.pory"
	end
# 49 "data/maps/OldaleTown/scripts.pory"

# 50 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_Girl2::
# 51 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_PieceofMind, MSGBOX_NPC
# 52 "data/maps/OldaleTown/scripts.pory"
	end
# 53 "data/maps/OldaleTown/scripts.pory"

# 54 "data/maps/OldaleTown/scripts.pory"
// ====================================================================
# 55 "data/maps/OldaleTown/scripts.pory"
// LITTLE GIRL - Shiny Sentret Quest
# 56 "data/maps/OldaleTown/scripts.pory"
// ====================================================================
# 57 "data/maps/OldaleTown/scripts.pory"

# 58 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_LittleGirl::
# 59 "data/maps/OldaleTown/scripts.pory"
	lock
# 60 "data/maps/OldaleTown/scripts.pory"
	faceplayer
# 61 "data/maps/OldaleTown/scripts.pory"
	
# 62 "data/maps/OldaleTown/scripts.pory"
	// If quest is already complete
# 63 "data/maps/OldaleTown/scripts.pory"
	goto_if_set FLAG_SHINY_SENTRET_END, OldaleTown_EventScript_GirlQuestComplete
# 64 "data/maps/OldaleTown/scripts.pory"
	
# 65 "data/maps/OldaleTown/scripts.pory"
	// If Sentret is following player (already found)
# 66 "data/maps/OldaleTown/scripts.pory"
	goto_if_set FLAG_SHINY_SENTRET, OldaleTown_EventScript_ReturnSentret
# 67 "data/maps/OldaleTown/scripts.pory"
	
# 68 "data/maps/OldaleTown/scripts.pory"
	// First conversation (complains Sentret ran away) - NO FLAG NEEDED
# 69 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_LostMySentret, MSGBOX_DEFAULT
# 70 "data/maps/OldaleTown/scripts.pory"
	release
# 71 "data/maps/OldaleTown/scripts.pory"
	end
# 72 "data/maps/OldaleTown/scripts.pory"

# 73 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ReturnSentret::
# 74 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_YouFoundHim, MSGBOX_DEFAULT
# 75 "data/maps/OldaleTown/scripts.pory"
	closemessage	
# 76 "data/maps/OldaleTown/scripts.pory"
	// Remove follower
# 77 "data/maps/OldaleTown/scripts.pory"
	destroyfollowernpc
# 78 "data/maps/OldaleTown/scripts.pory"
	// Set quest complete flag
# 79 "data/maps/OldaleTown/scripts.pory"
	setflag FLAG_SHINY_SENTRET_END
# 80 "data/maps/OldaleTown/scripts.pory"
	clearflag FLAG_SHINY_SENTRET  // Clear following flag	
# 81 "data/maps/OldaleTown/scripts.pory"
	// Give reward
# 82 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_HereIsYourReward, MSGBOX_DEFAULT
# 83 "data/maps/OldaleTown/scripts.pory"
	giveitem ITEM_QUICK_CLAW
# 84 "data/maps/OldaleTown/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, OldaleTown_EventScript_BagFullReward	
# 85 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_SentretIsHappy, MSGBOX_DEFAULT
# 86 "data/maps/OldaleTown/scripts.pory"
	release
# 87 "data/maps/OldaleTown/scripts.pory"
	end
# 88 "data/maps/OldaleTown/scripts.pory"

# 89 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_BagFullReward::
# 90 "data/maps/OldaleTown/scripts.pory"
	msgbox gText_TooBadBagIsFull, MSGBOX_DEFAULT
# 91 "data/maps/OldaleTown/scripts.pory"
	release
# 92 "data/maps/OldaleTown/scripts.pory"
	end
# 93 "data/maps/OldaleTown/scripts.pory"

# 94 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_GirlQuestComplete::
# 95 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_ThankYouForReturning, MSGBOX_NPC
# 96 "data/maps/OldaleTown/scripts.pory"
	release
# 97 "data/maps/OldaleTown/scripts.pory"
	end
# 98 "data/maps/OldaleTown/scripts.pory"

# 99 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_MartEmployee::
# 100 "data/maps/OldaleTown/scripts.pory"
	lock
# 101 "data/maps/OldaleTown/scripts.pory"
	faceplayer
# 102 "data/maps/OldaleTown/scripts.pory"
	goto_if_set FLAG_RECEIVED_POTION_OLDALE, OldaleTown_EventScript_ExplainPotion
# 103 "data/maps/OldaleTown/scripts.pory"
	goto_if_set FLAG_TEMP_1, OldaleTown_EventScript_ExplainPotion
# 104 "data/maps/OldaleTown/scripts.pory"
	setflag FLAG_TEMP_1
# 105 "data/maps/OldaleTown/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 106 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_IWorkAtPokemonMart, MSGBOX_DEFAULT
# 107 "data/maps/OldaleTown/scripts.pory"
	closemessage
# 108 "data/maps/OldaleTown/scripts.pory"
	switch VAR_FACING
# 109 "data/maps/OldaleTown/scripts.pory"
	case DIR_SOUTH, OldaleTown_EventScript_GoToMartSouth
# 110 "data/maps/OldaleTown/scripts.pory"
	case DIR_NORTH, OldaleTown_EventScript_GoToMartNorth
# 111 "data/maps/OldaleTown/scripts.pory"
	case DIR_EAST, OldaleTown_EventScript_GoToMartEast
# 112 "data/maps/OldaleTown/scripts.pory"
	end
# 113 "data/maps/OldaleTown/scripts.pory"

# 114 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_GoToMartSouth::
# 115 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_MART_EMPLOYEE, OldaleTown_Movement_EmployeeSouth
# 116 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, OldaleTown_Movement_PlayerSouth
# 117 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 118 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ExplainPokemonMart
# 119 "data/maps/OldaleTown/scripts.pory"
	end
# 120 "data/maps/OldaleTown/scripts.pory"

# 121 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_GoToMartNorth::
# 122 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_MART_EMPLOYEE, OldaleTown_Movement_EmployeeNorth
# 123 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, OldaleTown_Movement_PlayerNorth
# 124 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 125 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ExplainPokemonMart
# 126 "data/maps/OldaleTown/scripts.pory"
	end
# 127 "data/maps/OldaleTown/scripts.pory"

# 128 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_GoToMartEast::
# 129 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, OldaleTown_Movement_PlayerEast
# 130 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_MART_EMPLOYEE, OldaleTown_Movement_EmployeeEast
# 131 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 132 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ExplainPokemonMart
# 133 "data/maps/OldaleTown/scripts.pory"
	end
# 134 "data/maps/OldaleTown/scripts.pory"

# 135 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ExplainPokemonMart::
# 136 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_ThisIsAPokemonMart, MSGBOX_DEFAULT
# 137 "data/maps/OldaleTown/scripts.pory"
	giveitem ITEM_POTION
# 138 "data/maps/OldaleTown/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, OldaleTown_EventScript_BagIsFull
# 139 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_PotionExplanation, MSGBOX_DEFAULT
# 140 "data/maps/OldaleTown/scripts.pory"
	setflag FLAG_RECEIVED_POTION_OLDALE
# 141 "data/maps/OldaleTown/scripts.pory"
	fadedefaultbgm
# 142 "data/maps/OldaleTown/scripts.pory"
	release
# 143 "data/maps/OldaleTown/scripts.pory"
	end
# 144 "data/maps/OldaleTown/scripts.pory"

# 145 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ExplainPotion::
# 146 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_PotionExplanation, MSGBOX_DEFAULT
# 147 "data/maps/OldaleTown/scripts.pory"
	release
# 148 "data/maps/OldaleTown/scripts.pory"
	end
# 149 "data/maps/OldaleTown/scripts.pory"

# 150 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_BagIsFull::
# 151 "data/maps/OldaleTown/scripts.pory"
	msgbox gText_TooBadBagIsFull, MSGBOX_DEFAULT
# 152 "data/maps/OldaleTown/scripts.pory"
	fadedefaultbgm
# 153 "data/maps/OldaleTown/scripts.pory"
	release
# 154 "data/maps/OldaleTown/scripts.pory"
	end
# 155 "data/maps/OldaleTown/scripts.pory"

# 156 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_EmployeeEast:
# 157 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 158 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 159 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 160 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 161 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 162 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 163 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 164 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_down
# 165 "data/maps/OldaleTown/scripts.pory"
	step_end
# 166 "data/maps/OldaleTown/scripts.pory"

# 167 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_EmployeeSouth:
# 168 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 169 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 170 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 171 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 172 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 173 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 174 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 175 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 176 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 177 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_down
# 178 "data/maps/OldaleTown/scripts.pory"
	step_end
# 179 "data/maps/OldaleTown/scripts.pory"

# 180 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_EmployeeNorth:
# 181 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 182 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 183 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 184 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 185 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 186 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 187 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 188 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_down
# 189 "data/maps/OldaleTown/scripts.pory"
	step_end
# 190 "data/maps/OldaleTown/scripts.pory"

# 191 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_Unknown1:
# 192 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 193 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 194 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 195 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 196 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 197 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 198 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 199 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 200 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 201 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 202 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 203 "data/maps/OldaleTown/scripts.pory"
	delay_8
# 204 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_down
# 205 "data/maps/OldaleTown/scripts.pory"
	step_end
# 206 "data/maps/OldaleTown/scripts.pory"

# 207 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_PlayerEast:
# 208 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 209 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 210 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 211 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 212 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 213 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 214 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 215 "data/maps/OldaleTown/scripts.pory"
	step_end
# 216 "data/maps/OldaleTown/scripts.pory"

# 217 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_PlayerSouth:
# 218 "data/maps/OldaleTown/scripts.pory"
	delay_16
# 219 "data/maps/OldaleTown/scripts.pory"
	delay_16
# 220 "data/maps/OldaleTown/scripts.pory"
	delay_16
# 221 "data/maps/OldaleTown/scripts.pory"
	delay_16
# 222 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 223 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 224 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 225 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 226 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 227 "data/maps/OldaleTown/scripts.pory"
	step_end
# 228 "data/maps/OldaleTown/scripts.pory"

# 229 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_PlayerNorth:
# 230 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 231 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 232 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 233 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 234 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 235 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 236 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 237 "data/maps/OldaleTown/scripts.pory"
	step_end
# 238 "data/maps/OldaleTown/scripts.pory"

# 239 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_Unknown2:
# 240 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 241 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 242 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 243 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 244 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 245 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 246 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 247 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 248 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 249 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 250 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 251 "data/maps/OldaleTown/scripts.pory"
	step_end
# 252 "data/maps/OldaleTown/scripts.pory"

# 253 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_FootprintsMan::
# 254 "data/maps/OldaleTown/scripts.pory"
	lock
# 255 "data/maps/OldaleTown/scripts.pory"
	faceplayer
# 256 "data/maps/OldaleTown/scripts.pory"
	goto_if_set FLAG_ADVENTURE_STARTED, OldaleTown_EventScript_NotBlockingPath
# 257 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_DiscoveredFootprints, MSGBOX_DEFAULT
# 258 "data/maps/OldaleTown/scripts.pory"
	closemessage
# 259 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_FOOTPRINTS_MAN, Common_Movement_FaceOriginalDirection
# 260 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 261 "data/maps/OldaleTown/scripts.pory"
	release
# 262 "data/maps/OldaleTown/scripts.pory"
	end
# 263 "data/maps/OldaleTown/scripts.pory"

# 264 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_BlockedPath::
# 265 "data/maps/OldaleTown/scripts.pory"
	lockall
# 266 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, OldaleTown_Movement_PlayerStepBack
# 267 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_FOOTPRINTS_MAN, OldaleTown_Movement_BackUp
# 268 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 269 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_WaitDontComeInHere, MSGBOX_DEFAULT
# 270 "data/maps/OldaleTown/scripts.pory"
	closemessage
# 271 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_FOOTPRINTS_MAN, OldaleTown_Movement_ReturnToOriginalPosition
# 272 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 273 "data/maps/OldaleTown/scripts.pory"
	releaseall
# 274 "data/maps/OldaleTown/scripts.pory"
	end
# 275 "data/maps/OldaleTown/scripts.pory"

# 276 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_NotBlockingPath::
# 277 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_FinishedSketchingFootprints, MSGBOX_DEFAULT
# 278 "data/maps/OldaleTown/scripts.pory"
	release
# 279 "data/maps/OldaleTown/scripts.pory"
	end
# 280 "data/maps/OldaleTown/scripts.pory"

# 281 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_Rival::
# 282 "data/maps/OldaleTown/scripts.pory"
	lockall
# 283 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, Common_Movement_FacePlayer
# 284 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 285 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_0x8009, 0
# 286 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ShowRivalMessage
# 287 "data/maps/OldaleTown/scripts.pory"
	end
# 288 "data/maps/OldaleTown/scripts.pory"

# 289 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_RivalTrigger1::
# 290 "data/maps/OldaleTown/scripts.pory"
	lockall
# 291 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalApproachPlayer1
# 292 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 293 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 294 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 295 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_0x8009, 1
# 296 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ShowRivalMessage
# 297 "data/maps/OldaleTown/scripts.pory"
	end
# 298 "data/maps/OldaleTown/scripts.pory"

# 299 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_RivalTrigger2::
# 300 "data/maps/OldaleTown/scripts.pory"
	lockall
# 301 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalApproachPlayer2
# 302 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 303 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 304 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 305 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_0x8009, 1
# 306 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ShowRivalMessage
# 307 "data/maps/OldaleTown/scripts.pory"
	end
# 308 "data/maps/OldaleTown/scripts.pory"

# 309 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_RivalTrigger3::
# 310 "data/maps/OldaleTown/scripts.pory"
	lockall
# 311 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalApproachPlayer3
# 312 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 313 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 314 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 315 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_0x8009, 1
# 316 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ShowRivalMessage
# 317 "data/maps/OldaleTown/scripts.pory"
	end
# 318 "data/maps/OldaleTown/scripts.pory"

# 319 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ShowRivalMessage::
# 320 "data/maps/OldaleTown/scripts.pory"
	checkplayergender
# 321 "data/maps/OldaleTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, OldaleTown_EventScript_ShowMayMessage
# 322 "data/maps/OldaleTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, OldaleTown_EventScript_ShowBrendanMessage
# 323 "data/maps/OldaleTown/scripts.pory"
	end
# 324 "data/maps/OldaleTown/scripts.pory"

# 325 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ShowMayMessage::
# 326 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_MayLetsGoBack, MSGBOX_DEFAULT
# 327 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_RivalFinish
# 328 "data/maps/OldaleTown/scripts.pory"
	end
# 329 "data/maps/OldaleTown/scripts.pory"

# 330 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ShowBrendanMessage::
# 331 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_BrendanLetsGoBack, MSGBOX_DEFAULT
# 332 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_RivalFinish
# 333 "data/maps/OldaleTown/scripts.pory"
	end
# 334 "data/maps/OldaleTown/scripts.pory"

# 335 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_RivalFinish::
# 336 "data/maps/OldaleTown/scripts.pory"
	closemessage
# 337 "data/maps/OldaleTown/scripts.pory"
	call_if_eq VAR_0x8009, 0, OldaleTown_EventScript_DoExitMovement1
# 338 "data/maps/OldaleTown/scripts.pory"
	call_if_eq VAR_0x8009, 1, OldaleTown_EventScript_DoExitMovement2
# 339 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalExit
# 340 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 341 "data/maps/OldaleTown/scripts.pory"
	removeobject LOCALID_OLDALE_RIVAL
# 342 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_OLDALE_RIVAL_STATE, 2
# 343 "data/maps/OldaleTown/scripts.pory"
	setflag FLAG_HIDE_OLDALE_TOWN_RIVAL
# 344 "data/maps/OldaleTown/scripts.pory"
	releaseall
# 345 "data/maps/OldaleTown/scripts.pory"
	end
# 346 "data/maps/OldaleTown/scripts.pory"

# 347 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_DoExitMovement1::
# 348 "data/maps/OldaleTown/scripts.pory"
	goto_if_ne VAR_FACING, DIR_SOUTH, OldaleTown_EventScript_DoExitMovement2
# 349 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalExit
# 350 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 351 "data/maps/OldaleTown/scripts.pory"
	return
# 352 "data/maps/OldaleTown/scripts.pory"

# 353 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_DoExitMovement2::
# 354 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, OldaleTown_Movement_WatchRivalExit
# 355 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalExit
# 356 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 357 "data/maps/OldaleTown/scripts.pory"
	return
# 358 "data/maps/OldaleTown/scripts.pory"

# 359 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_RivalApproachPlayer1:
# 360 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 361 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 362 "data/maps/OldaleTown/scripts.pory"
	step_end
# 363 "data/maps/OldaleTown/scripts.pory"

# 364 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_RivalApproachPlayer2:
# 365 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 366 "data/maps/OldaleTown/scripts.pory"
	step_end
# 367 "data/maps/OldaleTown/scripts.pory"

# 368 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_RivalApproachPlayer3:
# 369 "data/maps/OldaleTown/scripts.pory"
	face_left
# 370 "data/maps/OldaleTown/scripts.pory"
	step_end
# 371 "data/maps/OldaleTown/scripts.pory"

# 372 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_RivalExit:
# 373 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 374 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 375 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 376 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 377 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 378 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 379 "data/maps/OldaleTown/scripts.pory"
	step_end
# 380 "data/maps/OldaleTown/scripts.pory"

# 381 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_WatchRivalExit:
# 382 "data/maps/OldaleTown/scripts.pory"
	delay_8
# 383 "data/maps/OldaleTown/scripts.pory"
	delay_4
# 384 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_down
# 385 "data/maps/OldaleTown/scripts.pory"
	step_end
# 386 "data/maps/OldaleTown/scripts.pory"

# 387 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_PlayerStepBack:
# 388 "data/maps/OldaleTown/scripts.pory"
	delay_8
# 389 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 390 "data/maps/OldaleTown/scripts.pory"
	step_end
# 391 "data/maps/OldaleTown/scripts.pory"

# 392 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_BackUp:
# 393 "data/maps/OldaleTown/scripts.pory"
	walk_fast_up
# 394 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_left
# 395 "data/maps/OldaleTown/scripts.pory"
	lock_facing_direction
# 396 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 397 "data/maps/OldaleTown/scripts.pory"
	unlock_facing_direction
# 398 "data/maps/OldaleTown/scripts.pory"
	step_end
# 399 "data/maps/OldaleTown/scripts.pory"

# 400 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_ReturnToOriginalPosition:
# 401 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 402 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 403 "data/maps/OldaleTown/scripts.pory"
	step_end
# 404 "data/maps/OldaleTown/scripts.pory"

# 405 "data/maps/OldaleTown/scripts.pory"
// ====================================================================
# 406 "data/maps/OldaleTown/scripts.pory"
// SENTRET WITH GIRL - After quest complete
# 407 "data/maps/OldaleTown/scripts.pory"
// ====================================================================
# 408 "data/maps/OldaleTown/scripts.pory"

# 409 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_SentretWithGirl::
# 410 "data/maps/OldaleTown/scripts.pory"
    lock
# 411 "data/maps/OldaleTown/scripts.pory"
    faceplayer
# 412 "data/maps/OldaleTown/scripts.pory"
    msgbox OldaleTown_Text_SentretWithGirlHappy, MSGBOX_DEFAULT
# 413 "data/maps/OldaleTown/scripts.pory"
    playmoncry SPECIES_SENTRET, CRY_MODE_NORMAL
# 414 "data/maps/OldaleTown/scripts.pory"
    waitmoncry
# 415 "data/maps/OldaleTown/scripts.pory"
    release
# 416 "data/maps/OldaleTown/scripts.pory"
    end
# 417 "data/maps/OldaleTown/scripts.pory"

# 418 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_SentretWithGirlHappy:
# 419 "data/maps/OldaleTown/scripts.pory"
    .string "SENTRET: Sent! Sentret!\n"
# 420 "data/maps/OldaleTown/scripts.pory"
    .string "He plays happily at the girl's feet.\p"
# 421 "data/maps/OldaleTown/scripts.pory"
    .string "They look so content together!$"	
# 422 "data/maps/OldaleTown/scripts.pory"

# 423 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_SavingMyProgress:
# 424 "data/maps/OldaleTown/scripts.pory"
	.string "You look familiar, but also kind of\n"
# 425 "data/maps/OldaleTown/scripts.pory"
	.string "strange…\p"
# 426 "data/maps/OldaleTown/scripts.pory"
	.string "Oh, sorry, that was a rude thing to say,\n"
# 427 "data/maps/OldaleTown/scripts.pory"
	.string "wasn't it?\p"
# 428 "data/maps/OldaleTown/scripts.pory"
	.string "I've just been getting this strange\n"
# 429 "data/maps/OldaleTown/scripts.pory"
	.string "feeling since I saw the meteor…\p"
# 430 "data/maps/OldaleTown/scripts.pory"
	.string "Even this town feels different.$"
# 431 "data/maps/OldaleTown/scripts.pory"

# 432 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_PieceofMind:
# 433 "data/maps/OldaleTown/scripts.pory"
	.string "I just want some peace of mind.\n"
# 434 "data/maps/OldaleTown/scripts.pory"
	.string "Calm, quiet days without any rush.\p"
# 435 "data/maps/OldaleTown/scripts.pory"
	.string "I don't like spending all day on\n"
# 436 "data/maps/OldaleTown/scripts.pory"
	.string "computers or watching TV.\p"
# 437 "data/maps/OldaleTown/scripts.pory"
	.string "Here in OLDALE, time moves slowly.\n"
# 438 "data/maps/OldaleTown/scripts.pory"
	.string "I feel truly at ease.\p"
# 439 "data/maps/OldaleTown/scripts.pory"
	.string "I would never trade this for\n"
# 440 "data/maps/OldaleTown/scripts.pory"
	.string "a hectic life in the big city.$"
# 441 "data/maps/OldaleTown/scripts.pory"

# 442 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_IWorkAtPokemonMart:
# 443 "data/maps/OldaleTown/scripts.pory"
	.string "Hi!\n"
# 444 "data/maps/OldaleTown/scripts.pory"
	.string "I work at a POKéMON MART.\p"
# 445 "data/maps/OldaleTown/scripts.pory"
	.string "Can I get you to come with me?$"
# 446 "data/maps/OldaleTown/scripts.pory"

# 447 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_ThisIsAPokemonMart:
# 448 "data/maps/OldaleTown/scripts.pory"
	.string "This is a POKéMON MART.\n"
# 449 "data/maps/OldaleTown/scripts.pory"
	.string "Just look for our blue roof.\p"
# 450 "data/maps/OldaleTown/scripts.pory"
	.string "We sell a variety of goods including\n"
# 451 "data/maps/OldaleTown/scripts.pory"
	.string "POKé BALLS for catching POKéMON.\p"
# 452 "data/maps/OldaleTown/scripts.pory"
	.string "Here, I'd like you to have this as\n"
# 453 "data/maps/OldaleTown/scripts.pory"
	.string "a promotional item.$"
# 454 "data/maps/OldaleTown/scripts.pory"

# 455 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_PotionExplanation:
# 456 "data/maps/OldaleTown/scripts.pory"
	.string "A POTION can be used anytime, so it's\n"
# 457 "data/maps/OldaleTown/scripts.pory"
	.string "even more useful than a POKéMON CENTER\l"
# 458 "data/maps/OldaleTown/scripts.pory"
	.string "in certain situations.$"
# 459 "data/maps/OldaleTown/scripts.pory"

# 460 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_WaitDontComeInHere:
# 461 "data/maps/OldaleTown/scripts.pory"
	.string "Waaaaaait! Stop right there!\p"
# 462 "data/maps/OldaleTown/scripts.pory"
	.string "PROFESSOR ACACIA asked me to check\n"
# 463 "data/maps/OldaleTown/scripts.pory"
	.string "this area.\p"
# 464 "data/maps/OldaleTown/scripts.pory"
	.string "A piece of the meteor might have broken\n"
# 465 "data/maps/OldaleTown/scripts.pory"
	.string "off and landed here!\p"
# 466 "data/maps/OldaleTown/scripts.pory"
	.string "This opportunity only comes once in a\n"
# 467 "data/maps/OldaleTown/scripts.pory"
	.string "millennium, so please let us work!$"
# 468 "data/maps/OldaleTown/scripts.pory"

# 469 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_DiscoveredFootprints:
# 470 "data/maps/OldaleTown/scripts.pory"
	.string "Hey, you there!\n"
# 471 "data/maps/OldaleTown/scripts.pory"
	.string "Stop right now!\p"
# 472 "data/maps/OldaleTown/scripts.pory"
	.string "PROFESSOR ACACIA asked me to check\n"
# 473 "data/maps/OldaleTown/scripts.pory"
	.string "this area.\p"
# 474 "data/maps/OldaleTown/scripts.pory"
	.string "A piece of the meteor might have broken\n"
# 475 "data/maps/OldaleTown/scripts.pory"
	.string "off and landed here!\p"
# 476 "data/maps/OldaleTown/scripts.pory"
	.string "This opportunity only comes once in a\n"
# 477 "data/maps/OldaleTown/scripts.pory"
	.string "millennium!\p"
# 478 "data/maps/OldaleTown/scripts.pory"
	.string "And you, with that… strange outfit.\n"
# 479 "data/maps/OldaleTown/scripts.pory"
	.string "Are you even from around here?\p"
# 480 "data/maps/OldaleTown/scripts.pory"
	.string "I can't let you pass until I'm sure\n"
# 481 "data/maps/OldaleTown/scripts.pory"
	.string "you're not a threat to the research.$"
# 482 "data/maps/OldaleTown/scripts.pory"

# 483 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_FinishedSketchingFootprints:
# 484 "data/maps/OldaleTown/scripts.pory"
	.string "Not a single clue…\p"
# 485 "data/maps/OldaleTown/scripts.pory"
	.string "We found nothing here.\n"
# 486 "data/maps/OldaleTown/scripts.pory"
	.string "No pieces of the MILLENNIUM COMET.\p"
# 487 "data/maps/OldaleTown/scripts.pory"
	.string "I guess I can let you through, now.\p"
# 488 "data/maps/OldaleTown/scripts.pory"
	.string "MILLENNIUM COMET anywhere.\p"
# 489 "data/maps/OldaleTown/scripts.pory"
	.string "It's a long shot, but if you learn\n"
# 490 "data/maps/OldaleTown/scripts.pory"
	.string "anything about the comet, please\l"
# 491 "data/maps/OldaleTown/scripts.pory"
	.string "tell me.\p"
# 492 "data/maps/OldaleTown/scripts.pory"
	.string "I've studied for years, but this…\p"
# 493 "data/maps/OldaleTown/scripts.pory"
	.string "This could be the discovery of a\n"
# 494 "data/maps/OldaleTown/scripts.pory"
	.string "lifetime.$"
# 495 "data/maps/OldaleTown/scripts.pory"

# 496 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_MayLetsGoBack:
# 497 "data/maps/OldaleTown/scripts.pory"
	.string "ZINNIA: {PLAYER}{KUN}!\n"
# 498 "data/maps/OldaleTown/scripts.pory"
	.string "Over here!\l"
# 499 "data/maps/OldaleTown/scripts.pory"
	.string "Let's hurry!$"
# 500 "data/maps/OldaleTown/scripts.pory"

# 501 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_BrendanLetsGoBack:
# 502 "data/maps/OldaleTown/scripts.pory"
	.string "ZENNO: {PLAYER}{KUN}!\n"
# 503 "data/maps/OldaleTown/scripts.pory"
	.string "Over here!\l"
# 504 "data/maps/OldaleTown/scripts.pory"
	.string "Let's hurry!$"
# 505 "data/maps/OldaleTown/scripts.pory"

# 506 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_TownSign:
# 507 "data/maps/OldaleTown/scripts.pory"
	.string "OLDALE TOWN\n"
# 508 "data/maps/OldaleTown/scripts.pory"
	.string "“Where things start off scarce.”$"
# 509 "data/maps/OldaleTown/scripts.pory"

# 510 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_ShopSign:
# 511 "data/maps/OldaleTown/scripts.pory"
	.string "OLDALE SHOP\n"
# 512 "data/maps/OldaleTown/scripts.pory"
	.string "“We got cool stuff!”$"
# 513 "data/maps/OldaleTown/scripts.pory"

# 514 "data/maps/OldaleTown/scripts.pory"
// ====================================================================
# 515 "data/maps/OldaleTown/scripts.pory"
// Sentret Quest Text
# 516 "data/maps/OldaleTown/scripts.pory"
// ====================================================================
# 517 "data/maps/OldaleTown/scripts.pory"

# 518 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_LostMySentret:
# 519 "data/maps/OldaleTown/scripts.pory"
	.string "Oh no, oh no, oh no!\n"
# 520 "data/maps/OldaleTown/scripts.pory"
	.string "My SENTRET ran away!\p"
# 521 "data/maps/OldaleTown/scripts.pory"
	.string "He's not like the others…\n"
# 522 "data/maps/OldaleTown/scripts.pory"
	.string "He's SHINY! His fur sparkles!\p"
# 523 "data/maps/OldaleTown/scripts.pory"
	.string "Please, if you see him anywhere,\n"
# 524 "data/maps/OldaleTown/scripts.pory"
	.string "bring him back to me!$"
# 525 "data/maps/OldaleTown/scripts.pory"

# 526 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_YouFoundHim:
# 527 "data/maps/OldaleTown/scripts.pory"
	.string "Oh! You found my SENTRET!\n"
# 528 "data/maps/OldaleTown/scripts.pory"
	.string "Is he okay? Is he hurt?\p"
# 529 "data/maps/OldaleTown/scripts.pory"
	.string "Thank you so much for bringing\n"
# 530 "data/maps/OldaleTown/scripts.pory"
	.string "him back to me!$"
# 531 "data/maps/OldaleTown/scripts.pory"

# 532 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_HereIsYourReward:
# 533 "data/maps/OldaleTown/scripts.pory"
	.string "Here, please take this as a reward\n"
# 534 "data/maps/OldaleTown/scripts.pory"
	.string "for helping us reunite!$"
# 535 "data/maps/OldaleTown/scripts.pory"

# 536 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_SentretIsHappy:
# 537 "data/maps/OldaleTown/scripts.pory"
	.string "SENTRET: Sent! Sentret!\n"
# 538 "data/maps/OldaleTown/scripts.pory"
	.string "He happily nuzzles against the girl!\p"
# 539 "data/maps/OldaleTown/scripts.pory"
	.string "They look so happy together!$"
# 540 "data/maps/OldaleTown/scripts.pory"

# 541 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_ThankYouForReturning:
# 542 "data/maps/OldaleTown/scripts.pory"
	.string "My SENTRET and I will never be\n"
# 543 "data/maps/OldaleTown/scripts.pory"
	.string "separated again!\p"
# 544 "data/maps/OldaleTown/scripts.pory"
	.string "Thank you so much for everything!$"
