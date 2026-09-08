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
    call PetalburgCity_EventScript_HandleAquaGrunts
# 8 "data/maps/OldaleTown/scripts.pory"
    call Common_EventScript_SetupRivalGfxId
# 9 "data/maps/OldaleTown/scripts.pory"
    setflag FLAG_VISITED_OLDALE_TOWN
# 10 "data/maps/OldaleTown/scripts.pory"
    call_if_unset FLAG_ADVENTURE_STARTED, OldaleTown_EventScript_BlockWestEntrance
# 11 "data/maps/OldaleTown/scripts.pory"
    call_if_set FLAG_ADVENTURE_STARTED, OldaleTown_EventScript_SetOldaleState
# 12 "data/maps/OldaleTown/scripts.pory"
    call_if_set FLAG_SHINY_SENTRET_END, OldaleTown_EventScript_ShowSentretWithGirl
# 13 "data/maps/OldaleTown/scripts.pory"
    call_if_unset FLAG_SHINY_SENTRET_END, OldaleTown_EventScript_HideSentretWithGirl
# 14 "data/maps/OldaleTown/scripts.pory"
    end
# 15 "data/maps/OldaleTown/scripts.pory"

# 16 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ShowSentretWithGirl::
# 17 "data/maps/OldaleTown/scripts.pory"
    clearflag FLAG_HIDE_SHINY_SENTRET_WITH_GIRL  
# 18 "data/maps/OldaleTown/scripts.pory"
    return
# 19 "data/maps/OldaleTown/scripts.pory"

# 20 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_HideSentretWithGirl::
# 21 "data/maps/OldaleTown/scripts.pory"
    setflag FLAG_HIDE_SHINY_SENTRET_WITH_GIRL    
# 22 "data/maps/OldaleTown/scripts.pory"
    return
# 23 "data/maps/OldaleTown/scripts.pory"

# 24 "data/maps/OldaleTown/scripts.pory"
@ This script seems pointless because nothing uses VAR_OLDALE_TOWN_STATE
# 25 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_SetOldaleState::
# 26 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_OLDALE_TOWN_STATE, 1
# 27 "data/maps/OldaleTown/scripts.pory"
	return
# 28 "data/maps/OldaleTown/scripts.pory"

# 29 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ShopSign::
# 30 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_ShopSign, MSGBOX_SIGN
# 31 "data/maps/OldaleTown/scripts.pory"
	end
# 32 "data/maps/OldaleTown/scripts.pory"

# 33 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_BlockWestEntrance::
# 34 "data/maps/OldaleTown/scripts.pory"
	setobjectxyperm LOCALID_FOOTPRINTS_MAN, 1, 11
# 35 "data/maps/OldaleTown/scripts.pory"
	setobjectmovementtype LOCALID_FOOTPRINTS_MAN, MOVEMENT_TYPE_FACE_LEFT
# 36 "data/maps/OldaleTown/scripts.pory"
	return
# 37 "data/maps/OldaleTown/scripts.pory"

# 38 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_MoveMartEmployee::
# 39 "data/maps/OldaleTown/scripts.pory"
	setobjectxyperm LOCALID_OLDALE_MART_EMPLOYEE, 13, 14
# 40 "data/maps/OldaleTown/scripts.pory"
	setobjectmovementtype LOCALID_OLDALE_MART_EMPLOYEE, MOVEMENT_TYPE_FACE_DOWN
# 41 "data/maps/OldaleTown/scripts.pory"
	return
# 42 "data/maps/OldaleTown/scripts.pory"

# 43 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_TownSign::
# 44 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_TownSign, MSGBOX_SIGN
# 45 "data/maps/OldaleTown/scripts.pory"
	end
# 46 "data/maps/OldaleTown/scripts.pory"

# 47 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_Girl::
# 48 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_SavingMyProgress, MSGBOX_NPC
# 49 "data/maps/OldaleTown/scripts.pory"
	end
# 50 "data/maps/OldaleTown/scripts.pory"

# 51 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_Girl2::
# 52 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_PieceofMind, MSGBOX_NPC
# 53 "data/maps/OldaleTown/scripts.pory"
	end
# 54 "data/maps/OldaleTown/scripts.pory"

# 55 "data/maps/OldaleTown/scripts.pory"
// ====================================================================
# 56 "data/maps/OldaleTown/scripts.pory"
// LITTLE GIRL - Shiny Sentret Quest
# 57 "data/maps/OldaleTown/scripts.pory"
// ====================================================================
# 58 "data/maps/OldaleTown/scripts.pory"

# 59 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_LittleGirl::
# 60 "data/maps/OldaleTown/scripts.pory"
	lock
# 61 "data/maps/OldaleTown/scripts.pory"
	faceplayer
# 62 "data/maps/OldaleTown/scripts.pory"
	
# 63 "data/maps/OldaleTown/scripts.pory"
	// If quest is already complete
# 64 "data/maps/OldaleTown/scripts.pory"
	goto_if_set FLAG_SHINY_SENTRET_END, OldaleTown_EventScript_GirlQuestComplete
# 65 "data/maps/OldaleTown/scripts.pory"
	
# 66 "data/maps/OldaleTown/scripts.pory"
	// If Sentret is following player (already found)
# 67 "data/maps/OldaleTown/scripts.pory"
	goto_if_set FLAG_SHINY_SENTRET, OldaleTown_EventScript_ReturnSentret
# 68 "data/maps/OldaleTown/scripts.pory"
	
# 69 "data/maps/OldaleTown/scripts.pory"
	// First conversation (complains Sentret ran away) - NO FLAG NEEDED
# 70 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_LostMySentret, MSGBOX_DEFAULT
# 71 "data/maps/OldaleTown/scripts.pory"
	release
# 72 "data/maps/OldaleTown/scripts.pory"
	end
# 73 "data/maps/OldaleTown/scripts.pory"

# 74 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ReturnSentret::
# 75 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_YouFoundHim, MSGBOX_DEFAULT
# 76 "data/maps/OldaleTown/scripts.pory"
	closemessage	
# 77 "data/maps/OldaleTown/scripts.pory"
	// Remove follower
# 78 "data/maps/OldaleTown/scripts.pory"
	destroyfollowernpc
# 79 "data/maps/OldaleTown/scripts.pory"
	// Set quest complete flag
# 80 "data/maps/OldaleTown/scripts.pory"
	setflag FLAG_SHINY_SENTRET_END
# 81 "data/maps/OldaleTown/scripts.pory"
	clearflag FLAG_SHINY_SENTRET  // Clear following flag	
# 82 "data/maps/OldaleTown/scripts.pory"
	// Give reward
# 83 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_HereIsYourReward, MSGBOX_DEFAULT
# 84 "data/maps/OldaleTown/scripts.pory"
	giveitem ITEM_QUICK_CLAW
# 85 "data/maps/OldaleTown/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, OldaleTown_EventScript_BagFullReward	
# 86 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_SentretIsHappy, MSGBOX_DEFAULT
# 87 "data/maps/OldaleTown/scripts.pory"
	release
# 88 "data/maps/OldaleTown/scripts.pory"
	end
# 89 "data/maps/OldaleTown/scripts.pory"

# 90 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_BagFullReward::
# 91 "data/maps/OldaleTown/scripts.pory"
	msgbox gText_TooBadBagIsFull, MSGBOX_DEFAULT
# 92 "data/maps/OldaleTown/scripts.pory"
	release
# 93 "data/maps/OldaleTown/scripts.pory"
	end
# 94 "data/maps/OldaleTown/scripts.pory"

# 95 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_GirlQuestComplete::
# 96 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_ThankYouForReturning, MSGBOX_NPC
# 97 "data/maps/OldaleTown/scripts.pory"
	release
# 98 "data/maps/OldaleTown/scripts.pory"
	end
# 99 "data/maps/OldaleTown/scripts.pory"

# 100 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_MartEmployee::
# 101 "data/maps/OldaleTown/scripts.pory"
	lock
# 102 "data/maps/OldaleTown/scripts.pory"
	faceplayer
# 103 "data/maps/OldaleTown/scripts.pory"
	goto_if_set FLAG_RECEIVED_POTION_OLDALE, OldaleTown_EventScript_ExplainPotion
# 104 "data/maps/OldaleTown/scripts.pory"
	goto_if_set FLAG_TEMP_1, OldaleTown_EventScript_ExplainPotion
# 105 "data/maps/OldaleTown/scripts.pory"
	setflag FLAG_TEMP_1
# 106 "data/maps/OldaleTown/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 107 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_IWorkAtPokemonMart, MSGBOX_DEFAULT
# 108 "data/maps/OldaleTown/scripts.pory"
	closemessage
# 109 "data/maps/OldaleTown/scripts.pory"
	switch VAR_FACING
# 110 "data/maps/OldaleTown/scripts.pory"
	case DIR_SOUTH, OldaleTown_EventScript_GoToMartSouth
# 111 "data/maps/OldaleTown/scripts.pory"
	case DIR_NORTH, OldaleTown_EventScript_GoToMartNorth
# 112 "data/maps/OldaleTown/scripts.pory"
	case DIR_EAST, OldaleTown_EventScript_GoToMartEast
# 113 "data/maps/OldaleTown/scripts.pory"
	end
# 114 "data/maps/OldaleTown/scripts.pory"

# 115 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_GoToMartSouth::
# 116 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_MART_EMPLOYEE, OldaleTown_Movement_EmployeeSouth
# 117 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, OldaleTown_Movement_PlayerSouth
# 118 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 119 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ExplainPokemonMart
# 120 "data/maps/OldaleTown/scripts.pory"
	end
# 121 "data/maps/OldaleTown/scripts.pory"

# 122 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_GoToMartNorth::
# 123 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_MART_EMPLOYEE, OldaleTown_Movement_EmployeeNorth
# 124 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, OldaleTown_Movement_PlayerNorth
# 125 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 126 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ExplainPokemonMart
# 127 "data/maps/OldaleTown/scripts.pory"
	end
# 128 "data/maps/OldaleTown/scripts.pory"

# 129 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_GoToMartEast::
# 130 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, OldaleTown_Movement_PlayerEast
# 131 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_MART_EMPLOYEE, OldaleTown_Movement_EmployeeEast
# 132 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 133 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ExplainPokemonMart
# 134 "data/maps/OldaleTown/scripts.pory"
	end
# 135 "data/maps/OldaleTown/scripts.pory"

# 136 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ExplainPokemonMart::
# 137 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_ThisIsAPokemonMart, MSGBOX_DEFAULT
# 138 "data/maps/OldaleTown/scripts.pory"
	giveitem ITEM_POTION
# 139 "data/maps/OldaleTown/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, OldaleTown_EventScript_BagIsFull
# 140 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_PotionExplanation, MSGBOX_DEFAULT
# 141 "data/maps/OldaleTown/scripts.pory"
	setflag FLAG_RECEIVED_POTION_OLDALE
# 142 "data/maps/OldaleTown/scripts.pory"
	fadedefaultbgm
# 143 "data/maps/OldaleTown/scripts.pory"
	release
# 144 "data/maps/OldaleTown/scripts.pory"
	end
# 145 "data/maps/OldaleTown/scripts.pory"

# 146 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ExplainPotion::
# 147 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_PotionExplanation, MSGBOX_DEFAULT
# 148 "data/maps/OldaleTown/scripts.pory"
	release
# 149 "data/maps/OldaleTown/scripts.pory"
	end
# 150 "data/maps/OldaleTown/scripts.pory"

# 151 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_BagIsFull::
# 152 "data/maps/OldaleTown/scripts.pory"
	msgbox gText_TooBadBagIsFull, MSGBOX_DEFAULT
# 153 "data/maps/OldaleTown/scripts.pory"
	fadedefaultbgm
# 154 "data/maps/OldaleTown/scripts.pory"
	release
# 155 "data/maps/OldaleTown/scripts.pory"
	end
# 156 "data/maps/OldaleTown/scripts.pory"

# 157 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_EmployeeEast:
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
	walk_up
# 165 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_down
# 166 "data/maps/OldaleTown/scripts.pory"
	step_end
# 167 "data/maps/OldaleTown/scripts.pory"

# 168 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_EmployeeSouth:
# 169 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 170 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 171 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 172 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 173 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 174 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 175 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 176 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 177 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 178 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_down
# 179 "data/maps/OldaleTown/scripts.pory"
	step_end
# 180 "data/maps/OldaleTown/scripts.pory"

# 181 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_EmployeeNorth:
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
	walk_up
# 189 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_down
# 190 "data/maps/OldaleTown/scripts.pory"
	step_end
# 191 "data/maps/OldaleTown/scripts.pory"

# 192 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_Unknown1:
# 193 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 194 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 195 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 196 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 197 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 198 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 199 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 200 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 201 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 202 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 203 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 204 "data/maps/OldaleTown/scripts.pory"
	delay_8
# 205 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_down
# 206 "data/maps/OldaleTown/scripts.pory"
	step_end
# 207 "data/maps/OldaleTown/scripts.pory"

# 208 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_PlayerEast:
# 209 "data/maps/OldaleTown/scripts.pory"
	walk_right
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
	walk_up
# 216 "data/maps/OldaleTown/scripts.pory"
	step_end
# 217 "data/maps/OldaleTown/scripts.pory"

# 218 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_PlayerSouth:
# 219 "data/maps/OldaleTown/scripts.pory"
	delay_16
# 220 "data/maps/OldaleTown/scripts.pory"
	delay_16
# 221 "data/maps/OldaleTown/scripts.pory"
	delay_16
# 222 "data/maps/OldaleTown/scripts.pory"
	delay_16
# 223 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 224 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 225 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 226 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 227 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 228 "data/maps/OldaleTown/scripts.pory"
	step_end
# 229 "data/maps/OldaleTown/scripts.pory"

# 230 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_PlayerNorth:
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
	walk_up
# 238 "data/maps/OldaleTown/scripts.pory"
	step_end
# 239 "data/maps/OldaleTown/scripts.pory"

# 240 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_Unknown2:
# 241 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 242 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 243 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 244 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 245 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 246 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 247 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 248 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 249 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 250 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 251 "data/maps/OldaleTown/scripts.pory"
	walk_up
# 252 "data/maps/OldaleTown/scripts.pory"
	step_end
# 253 "data/maps/OldaleTown/scripts.pory"

# 254 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_FootprintsMan::
# 255 "data/maps/OldaleTown/scripts.pory"
	lock
# 256 "data/maps/OldaleTown/scripts.pory"
	faceplayer
# 257 "data/maps/OldaleTown/scripts.pory"
	goto_if_set FLAG_ADVENTURE_STARTED, OldaleTown_EventScript_NotBlockingPath
# 258 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_DiscoveredFootprints, MSGBOX_DEFAULT
# 259 "data/maps/OldaleTown/scripts.pory"
	closemessage
# 260 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_FOOTPRINTS_MAN, Common_Movement_FaceOriginalDirection
# 261 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 262 "data/maps/OldaleTown/scripts.pory"
	release
# 263 "data/maps/OldaleTown/scripts.pory"
	end
# 264 "data/maps/OldaleTown/scripts.pory"

# 265 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_BlockedPath::
# 266 "data/maps/OldaleTown/scripts.pory"
	lockall
# 267 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, OldaleTown_Movement_PlayerStepBack
# 268 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_FOOTPRINTS_MAN, OldaleTown_Movement_BackUp
# 269 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 270 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_WaitDontComeInHere, MSGBOX_DEFAULT
# 271 "data/maps/OldaleTown/scripts.pory"
	closemessage
# 272 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_FOOTPRINTS_MAN, OldaleTown_Movement_ReturnToOriginalPosition
# 273 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 274 "data/maps/OldaleTown/scripts.pory"
	releaseall
# 275 "data/maps/OldaleTown/scripts.pory"
	end
# 276 "data/maps/OldaleTown/scripts.pory"

# 277 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_NotBlockingPath::
# 278 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_FinishedSketchingFootprints, MSGBOX_DEFAULT
# 279 "data/maps/OldaleTown/scripts.pory"
	release
# 280 "data/maps/OldaleTown/scripts.pory"
	end
# 281 "data/maps/OldaleTown/scripts.pory"

# 282 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_Rival::
# 283 "data/maps/OldaleTown/scripts.pory"
	lockall
# 284 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, Common_Movement_FacePlayer
# 285 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 286 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_0x8009, 0
# 287 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ShowRivalMessage
# 288 "data/maps/OldaleTown/scripts.pory"
	end
# 289 "data/maps/OldaleTown/scripts.pory"

# 290 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_RivalTrigger1::
# 291 "data/maps/OldaleTown/scripts.pory"
	lockall
# 292 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalApproachPlayer1
# 293 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 294 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 295 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 296 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_0x8009, 1
# 297 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ShowRivalMessage
# 298 "data/maps/OldaleTown/scripts.pory"
	end
# 299 "data/maps/OldaleTown/scripts.pory"

# 300 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_RivalTrigger2::
# 301 "data/maps/OldaleTown/scripts.pory"
	lockall
# 302 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalApproachPlayer2
# 303 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 304 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 305 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 306 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_0x8009, 1
# 307 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ShowRivalMessage
# 308 "data/maps/OldaleTown/scripts.pory"
	end
# 309 "data/maps/OldaleTown/scripts.pory"

# 310 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_RivalTrigger3::
# 311 "data/maps/OldaleTown/scripts.pory"
	lockall
# 312 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalApproachPlayer3
# 313 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 314 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 315 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 316 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_0x8009, 1
# 317 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_ShowRivalMessage
# 318 "data/maps/OldaleTown/scripts.pory"
	end
# 319 "data/maps/OldaleTown/scripts.pory"

# 320 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ShowRivalMessage::
# 321 "data/maps/OldaleTown/scripts.pory"
	checkplayergender
# 322 "data/maps/OldaleTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, OldaleTown_EventScript_ShowMayMessage
# 323 "data/maps/OldaleTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, OldaleTown_EventScript_ShowBrendanMessage
# 324 "data/maps/OldaleTown/scripts.pory"
	end
# 325 "data/maps/OldaleTown/scripts.pory"

# 326 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ShowMayMessage::
# 327 "data/maps/OldaleTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 328 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_MayLetsGoBack, MSGBOX_DEFAULT
# 329 "data/maps/OldaleTown/scripts.pory"
	removefieldmugshot
# 330 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_RivalFinish
# 331 "data/maps/OldaleTown/scripts.pory"
	end
# 332 "data/maps/OldaleTown/scripts.pory"

# 333 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_ShowBrendanMessage::
# 334 "data/maps/OldaleTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 335 "data/maps/OldaleTown/scripts.pory"
	msgbox OldaleTown_Text_BrendanLetsGoBack, MSGBOX_DEFAULT
# 336 "data/maps/OldaleTown/scripts.pory"
	removefieldmugshot
# 337 "data/maps/OldaleTown/scripts.pory"
	goto OldaleTown_EventScript_RivalFinish
# 338 "data/maps/OldaleTown/scripts.pory"
	end
# 339 "data/maps/OldaleTown/scripts.pory"

# 340 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_RivalFinish::
# 341 "data/maps/OldaleTown/scripts.pory"
	closemessage
# 342 "data/maps/OldaleTown/scripts.pory"
	call_if_eq VAR_0x8009, 0, OldaleTown_EventScript_DoExitMovement1
# 343 "data/maps/OldaleTown/scripts.pory"
	call_if_eq VAR_0x8009, 1, OldaleTown_EventScript_DoExitMovement2
# 344 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalExit
# 345 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 346 "data/maps/OldaleTown/scripts.pory"
	removeobject LOCALID_OLDALE_RIVAL
# 347 "data/maps/OldaleTown/scripts.pory"
	setvar VAR_OLDALE_RIVAL_STATE, 2
# 348 "data/maps/OldaleTown/scripts.pory"
	setflag FLAG_HIDE_OLDALE_TOWN_RIVAL
# 349 "data/maps/OldaleTown/scripts.pory"
	releaseall
# 350 "data/maps/OldaleTown/scripts.pory"
	end
# 351 "data/maps/OldaleTown/scripts.pory"

# 352 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_DoExitMovement1::
# 353 "data/maps/OldaleTown/scripts.pory"
	goto_if_ne VAR_FACING, DIR_SOUTH, OldaleTown_EventScript_DoExitMovement2
# 354 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalExit
# 355 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 356 "data/maps/OldaleTown/scripts.pory"
	return
# 357 "data/maps/OldaleTown/scripts.pory"

# 358 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_DoExitMovement2::
# 359 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_PLAYER, OldaleTown_Movement_WatchRivalExit
# 360 "data/maps/OldaleTown/scripts.pory"
	applymovement LOCALID_OLDALE_RIVAL, OldaleTown_Movement_RivalExit
# 361 "data/maps/OldaleTown/scripts.pory"
	waitmovement 0
# 362 "data/maps/OldaleTown/scripts.pory"
	return
# 363 "data/maps/OldaleTown/scripts.pory"

# 364 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_RivalApproachPlayer1:
# 365 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 366 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 367 "data/maps/OldaleTown/scripts.pory"
	step_end
# 368 "data/maps/OldaleTown/scripts.pory"

# 369 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_RivalApproachPlayer2:
# 370 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 371 "data/maps/OldaleTown/scripts.pory"
	step_end
# 372 "data/maps/OldaleTown/scripts.pory"

# 373 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_RivalApproachPlayer3:
# 374 "data/maps/OldaleTown/scripts.pory"
	face_left
# 375 "data/maps/OldaleTown/scripts.pory"
	step_end
# 376 "data/maps/OldaleTown/scripts.pory"

# 377 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_RivalExit:
# 378 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 379 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 380 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 381 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 382 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 383 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 384 "data/maps/OldaleTown/scripts.pory"
	step_end
# 385 "data/maps/OldaleTown/scripts.pory"

# 386 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_WatchRivalExit:
# 387 "data/maps/OldaleTown/scripts.pory"
	delay_8
# 388 "data/maps/OldaleTown/scripts.pory"
	delay_4
# 389 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_down
# 390 "data/maps/OldaleTown/scripts.pory"
	step_end
# 391 "data/maps/OldaleTown/scripts.pory"

# 392 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_PlayerStepBack:
# 393 "data/maps/OldaleTown/scripts.pory"
	delay_8
# 394 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 395 "data/maps/OldaleTown/scripts.pory"
	step_end
# 396 "data/maps/OldaleTown/scripts.pory"

# 397 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_BackUp:
# 398 "data/maps/OldaleTown/scripts.pory"
	walk_fast_up
# 399 "data/maps/OldaleTown/scripts.pory"
	walk_in_place_faster_left
# 400 "data/maps/OldaleTown/scripts.pory"
	lock_facing_direction
# 401 "data/maps/OldaleTown/scripts.pory"
	walk_right
# 402 "data/maps/OldaleTown/scripts.pory"
	unlock_facing_direction
# 403 "data/maps/OldaleTown/scripts.pory"
	step_end
# 404 "data/maps/OldaleTown/scripts.pory"

# 405 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Movement_ReturnToOriginalPosition:
# 406 "data/maps/OldaleTown/scripts.pory"
	walk_down
# 407 "data/maps/OldaleTown/scripts.pory"
	walk_left
# 408 "data/maps/OldaleTown/scripts.pory"
	step_end
# 409 "data/maps/OldaleTown/scripts.pory"

# 410 "data/maps/OldaleTown/scripts.pory"
// ====================================================================
# 411 "data/maps/OldaleTown/scripts.pory"
// SENTRET WITH GIRL - After quest complete
# 412 "data/maps/OldaleTown/scripts.pory"
// ====================================================================
# 413 "data/maps/OldaleTown/scripts.pory"

# 414 "data/maps/OldaleTown/scripts.pory"
OldaleTown_EventScript_SentretWithGirl::
# 415 "data/maps/OldaleTown/scripts.pory"
    lock
# 416 "data/maps/OldaleTown/scripts.pory"
    faceplayer
# 417 "data/maps/OldaleTown/scripts.pory"
    msgbox OldaleTown_Text_SentretWithGirlHappy, MSGBOX_DEFAULT
# 418 "data/maps/OldaleTown/scripts.pory"
    playmoncry SPECIES_SENTRET, CRY_MODE_NORMAL
# 419 "data/maps/OldaleTown/scripts.pory"
    waitmoncry
# 420 "data/maps/OldaleTown/scripts.pory"
    release
# 421 "data/maps/OldaleTown/scripts.pory"
    end
# 422 "data/maps/OldaleTown/scripts.pory"

# 423 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_SentretWithGirlHappy:
# 424 "data/maps/OldaleTown/scripts.pory"
    .string "SENTRET: Sent! Sentret!\n"
# 425 "data/maps/OldaleTown/scripts.pory"
    .string "He plays happily at the girl's feet.\p"
# 426 "data/maps/OldaleTown/scripts.pory"
    .string "They look so content together!$"	
# 427 "data/maps/OldaleTown/scripts.pory"

# 428 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_SavingMyProgress:
# 429 "data/maps/OldaleTown/scripts.pory"
	.string "You look familiar, but also kind of\n"
# 430 "data/maps/OldaleTown/scripts.pory"
	.string "strange…\p"
# 431 "data/maps/OldaleTown/scripts.pory"
	.string "Oh, sorry, that was a rude thing to say,\n"
# 432 "data/maps/OldaleTown/scripts.pory"
	.string "wasn't it?\p"
# 433 "data/maps/OldaleTown/scripts.pory"
	.string "I've just been getting this strange\n"
# 434 "data/maps/OldaleTown/scripts.pory"
	.string "feeling since I saw the meteor…\p"
# 435 "data/maps/OldaleTown/scripts.pory"
	.string "Even this town feels different.$"
# 436 "data/maps/OldaleTown/scripts.pory"

# 437 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_PieceofMind:
# 438 "data/maps/OldaleTown/scripts.pory"
	.string "I just want some peace of mind.\n"
# 439 "data/maps/OldaleTown/scripts.pory"
	.string "Calm, quiet days without any rush.\p"
# 440 "data/maps/OldaleTown/scripts.pory"
	.string "I don't like spending all day on\n"
# 441 "data/maps/OldaleTown/scripts.pory"
	.string "computers or watching TV.\p"
# 442 "data/maps/OldaleTown/scripts.pory"
	.string "Here in OLDALE, time moves slowly.\n"
# 443 "data/maps/OldaleTown/scripts.pory"
	.string "I feel truly at ease.\p"
# 444 "data/maps/OldaleTown/scripts.pory"
	.string "I would never trade this for\n"
# 445 "data/maps/OldaleTown/scripts.pory"
	.string "a hectic life in the big city.$"
# 446 "data/maps/OldaleTown/scripts.pory"

# 447 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_IWorkAtPokemonMart:
# 448 "data/maps/OldaleTown/scripts.pory"
	.string "Hi!\n"
# 449 "data/maps/OldaleTown/scripts.pory"
	.string "I work at a POKéMON MART.\p"
# 450 "data/maps/OldaleTown/scripts.pory"
	.string "Can I get you to come with me?$"
# 451 "data/maps/OldaleTown/scripts.pory"

# 452 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_ThisIsAPokemonMart:
# 453 "data/maps/OldaleTown/scripts.pory"
	.string "This is a POKéMON MART.\n"
# 454 "data/maps/OldaleTown/scripts.pory"
	.string "Just look for our blue roof.\p"
# 455 "data/maps/OldaleTown/scripts.pory"
	.string "We sell a variety of goods including\n"
# 456 "data/maps/OldaleTown/scripts.pory"
	.string "POKé BALLS for catching POKéMON.\p"
# 457 "data/maps/OldaleTown/scripts.pory"
	.string "Here, I'd like you to have this as\n"
# 458 "data/maps/OldaleTown/scripts.pory"
	.string "a promotional item.$"
# 459 "data/maps/OldaleTown/scripts.pory"

# 460 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_PotionExplanation:
# 461 "data/maps/OldaleTown/scripts.pory"
	.string "A POTION can be used anytime, so it's\n"
# 462 "data/maps/OldaleTown/scripts.pory"
	.string "even more useful than a POKéMON CENTER\l"
# 463 "data/maps/OldaleTown/scripts.pory"
	.string "in certain situations.$"
# 464 "data/maps/OldaleTown/scripts.pory"

# 465 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_WaitDontComeInHere:
# 466 "data/maps/OldaleTown/scripts.pory"
	.string "Waaaaaait! Stop right there!\p"
# 467 "data/maps/OldaleTown/scripts.pory"
	.string "PROFESSOR ACACIA asked me to check\n"
# 468 "data/maps/OldaleTown/scripts.pory"
	.string "this area.\p"
# 469 "data/maps/OldaleTown/scripts.pory"
	.string "A piece of the meteor might have broken\n"
# 470 "data/maps/OldaleTown/scripts.pory"
	.string "off and landed here!\p"
# 471 "data/maps/OldaleTown/scripts.pory"
	.string "This opportunity only comes once in a\n"
# 472 "data/maps/OldaleTown/scripts.pory"
	.string "millennium, so please let us work!$"
# 473 "data/maps/OldaleTown/scripts.pory"

# 474 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_DiscoveredFootprints:
# 475 "data/maps/OldaleTown/scripts.pory"
	.string "Hey, you there!\n"
# 476 "data/maps/OldaleTown/scripts.pory"
	.string "Stop right now!\p"
# 477 "data/maps/OldaleTown/scripts.pory"
	.string "PROFESSOR ACACIA asked me to check\n"
# 478 "data/maps/OldaleTown/scripts.pory"
	.string "this area.\p"
# 479 "data/maps/OldaleTown/scripts.pory"
	.string "A piece of the meteor might have broken\n"
# 480 "data/maps/OldaleTown/scripts.pory"
	.string "off and landed here!\p"
# 481 "data/maps/OldaleTown/scripts.pory"
	.string "This opportunity only comes once in a\n"
# 482 "data/maps/OldaleTown/scripts.pory"
	.string "millennium!\p"
# 483 "data/maps/OldaleTown/scripts.pory"
	.string "And you, with that… strange outfit.\n"
# 484 "data/maps/OldaleTown/scripts.pory"
	.string "Are you even from around here?\p"
# 485 "data/maps/OldaleTown/scripts.pory"
	.string "I can't let you pass until I'm sure\n"
# 486 "data/maps/OldaleTown/scripts.pory"
	.string "you're not a threat to the research.$"
# 487 "data/maps/OldaleTown/scripts.pory"

# 488 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_FinishedSketchingFootprints:
# 489 "data/maps/OldaleTown/scripts.pory"
	.string "Not a single clue…\p"
# 490 "data/maps/OldaleTown/scripts.pory"
	.string "We found nothing here.\n"
# 491 "data/maps/OldaleTown/scripts.pory"
	.string "No pieces of the MILLENNIUM COMET.\p"
# 492 "data/maps/OldaleTown/scripts.pory"
	.string "I guess I can let you through, now.\p"
# 493 "data/maps/OldaleTown/scripts.pory"
	.string "MILLENNIUM COMET anywhere.\p"
# 494 "data/maps/OldaleTown/scripts.pory"
	.string "It's a long shot, but if you learn\n"
# 495 "data/maps/OldaleTown/scripts.pory"
	.string "anything about the comet, please\l"
# 496 "data/maps/OldaleTown/scripts.pory"
	.string "tell me.\p"
# 497 "data/maps/OldaleTown/scripts.pory"
	.string "I've studied for years, but this…\p"
# 498 "data/maps/OldaleTown/scripts.pory"
	.string "This could be the discovery of a\n"
# 499 "data/maps/OldaleTown/scripts.pory"
	.string "lifetime.$"
# 500 "data/maps/OldaleTown/scripts.pory"

# 501 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_MayLetsGoBack:
# 502 "data/maps/OldaleTown/scripts.pory"
	.string "ZINNIA: {PLAYER}{KUN}!\n"
# 503 "data/maps/OldaleTown/scripts.pory"
	.string "Over here!\l"
# 504 "data/maps/OldaleTown/scripts.pory"
	.string "Let's hurry!$"
# 505 "data/maps/OldaleTown/scripts.pory"

# 506 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_BrendanLetsGoBack:
# 507 "data/maps/OldaleTown/scripts.pory"
	.string "ZENNO: {PLAYER}{KUN}!\n"
# 508 "data/maps/OldaleTown/scripts.pory"
	.string "Over here!\l"
# 509 "data/maps/OldaleTown/scripts.pory"
	.string "Let's hurry!$"
# 510 "data/maps/OldaleTown/scripts.pory"

# 511 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_TownSign:
# 512 "data/maps/OldaleTown/scripts.pory"
	.string "OLDALE TOWN\n"
# 513 "data/maps/OldaleTown/scripts.pory"
	.string "“Where things start off scarce.”$"
# 514 "data/maps/OldaleTown/scripts.pory"

# 515 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_ShopSign:
# 516 "data/maps/OldaleTown/scripts.pory"
	.string "OLDALE SHOP\n"
# 517 "data/maps/OldaleTown/scripts.pory"
	.string "“We got cool stuff!”$"
# 518 "data/maps/OldaleTown/scripts.pory"

# 519 "data/maps/OldaleTown/scripts.pory"
// ====================================================================
# 520 "data/maps/OldaleTown/scripts.pory"
// Sentret Quest Text
# 521 "data/maps/OldaleTown/scripts.pory"
// ====================================================================
# 522 "data/maps/OldaleTown/scripts.pory"

# 523 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_LostMySentret:
# 524 "data/maps/OldaleTown/scripts.pory"
	.string "Oh no, oh no, oh no!\n"
# 525 "data/maps/OldaleTown/scripts.pory"
	.string "My SENTRET ran away!\p"
# 526 "data/maps/OldaleTown/scripts.pory"
	.string "He's not like the others…\n"
# 527 "data/maps/OldaleTown/scripts.pory"
	.string "He's SHINY! His fur sparkles!\p"
# 528 "data/maps/OldaleTown/scripts.pory"
	.string "Please, if you see him anywhere,\n"
# 529 "data/maps/OldaleTown/scripts.pory"
	.string "bring him back to me!$"
# 530 "data/maps/OldaleTown/scripts.pory"

# 531 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_YouFoundHim:
# 532 "data/maps/OldaleTown/scripts.pory"
	.string "Oh! You found my SENTRET!\n"
# 533 "data/maps/OldaleTown/scripts.pory"
	.string "Is he okay? Is he hurt?\p"
# 534 "data/maps/OldaleTown/scripts.pory"
	.string "Thank you so much for bringing\n"
# 535 "data/maps/OldaleTown/scripts.pory"
	.string "him back to me!$"
# 536 "data/maps/OldaleTown/scripts.pory"

# 537 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_HereIsYourReward:
# 538 "data/maps/OldaleTown/scripts.pory"
	.string "Here, please take this as a reward\n"
# 539 "data/maps/OldaleTown/scripts.pory"
	.string "for helping us reunite!$"
# 540 "data/maps/OldaleTown/scripts.pory"

# 541 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_SentretIsHappy:
# 542 "data/maps/OldaleTown/scripts.pory"
	.string "SENTRET: Sent! Sentret!\n"
# 543 "data/maps/OldaleTown/scripts.pory"
	.string "He happily nuzzles against the girl!\p"
# 544 "data/maps/OldaleTown/scripts.pory"
	.string "They look so happy together!$"
# 545 "data/maps/OldaleTown/scripts.pory"

# 546 "data/maps/OldaleTown/scripts.pory"
OldaleTown_Text_ThankYouForReturning:
# 547 "data/maps/OldaleTown/scripts.pory"
	.string "My SENTRET and I will never be\n"
# 548 "data/maps/OldaleTown/scripts.pory"
	.string "separated again!\p"
# 549 "data/maps/OldaleTown/scripts.pory"
	.string "Thank you so much for everything!$"
