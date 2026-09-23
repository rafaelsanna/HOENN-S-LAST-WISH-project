# 1 "data/maps/MauvilleCity/scripts.pory"

# 2 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_MapScripts::
# 3 "data/maps/MauvilleCity/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MauvilleCity_OnTransition
# 4 "data/maps/MauvilleCity/scripts.pory"
	.byte 0
# 5 "data/maps/MauvilleCity/scripts.pory"

# 6 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_OnTransition:
# 7 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_VISITED_MAUVILLE_CITY
# 8 "data/maps/MauvilleCity/scripts.pory"
	clearflag FLAG_FORCE_MIRAGE_TOWER_VISIBLE
# 9 "data/maps/MauvilleCity/scripts.pory"
	clearflag FLAG_HIDE_SLATEPORT_MUSEUM_POPULATION
# 10 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_SYS_TV_START
# 11 "data/maps/MauvilleCity/scripts.pory"
	clearflag FLAG_MAUVILLE_GYM_BARRIERS_STATE
# 12 "data/maps/MauvilleCity/scripts.pory"
	setvar VAR_MAUVILLE_GYM_STATE, 0
# 13 "data/maps/MauvilleCity/scripts.pory"
	call_if_set FLAG_GOT_TM_THUNDERBOLT_FROM_WATTSON, MauvilleCity_EventScript_MoveWattsonBackToGym
# 14 "data/maps/MauvilleCity/scripts.pory"
	end
# 15 "data/maps/MauvilleCity/scripts.pory"

# 16 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_MoveWattsonBackToGym::
# 17 "data/maps/MauvilleCity/scripts.pory"
	clearflag FLAG_HIDE_MAUVILLE_GYM_WATTSON
# 18 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_HIDE_MAUVILLE_CITY_WATTSON
# 19 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_WATTSON_REMATCH_AVAILABLE
# 20 "data/maps/MauvilleCity/scripts.pory"
	return
# 21 "data/maps/MauvilleCity/scripts.pory"

# 22 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_Boy::
# 23 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_NurseHurtMonBackToHealth, MSGBOX_NPC
# 24 "data/maps/MauvilleCity/scripts.pory"
	end
# 25 "data/maps/MauvilleCity/scripts.pory"

# 26 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_Maniac::
# 27 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_AllSortsOfPeopleComeThrough, MSGBOX_NPC
# 28 "data/maps/MauvilleCity/scripts.pory"
	end
# 29 "data/maps/MauvilleCity/scripts.pory"

# 30 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_Woman::
# 31 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_RydelVeryGenerous, MSGBOX_NPC
# 32 "data/maps/MauvilleCity/scripts.pory"
	end
# 33 "data/maps/MauvilleCity/scripts.pory"

# 34 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_RichBoy::
# 35 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_PokemonCanJumpYouOnBike, MSGBOX_NPC
# 36 "data/maps/MauvilleCity/scripts.pory"
	end
# 37 "data/maps/MauvilleCity/scripts.pory"

# 38 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_Electirizer::
# 39 "data/maps/MauvilleCity/scripts.pory"
    lock
# 40 "data/maps/MauvilleCity/scripts.pory"
    faceplayer
# 41 "data/maps/MauvilleCity/scripts.pory"
    goto_if_set FLAG_RECEIVED_ELECTIRIZER, MauvilleCity_EventScript_AlreadyGotItem
# 42 "data/maps/MauvilleCity/scripts.pory"
    goto_if_set FLAG_BADGE03_GET, MauvilleCity_EventScript_GiveElectirizer
# 43 "data/maps/MauvilleCity/scripts.pory"
    msgbox MauvilleCity_Text_Electirizer_NotReady, MSGBOX_DEFAULT
# 44 "data/maps/MauvilleCity/scripts.pory"
    release
# 45 "data/maps/MauvilleCity/scripts.pory"
    end
# 46 "data/maps/MauvilleCity/scripts.pory"

# 47 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_GiveElectirizer::
# 48 "data/maps/MauvilleCity/scripts.pory"
    msgbox MauvilleCity_Text_Electirizer_Congrats, MSGBOX_DEFAULT
# 49 "data/maps/MauvilleCity/scripts.pory"
    giveitem ITEM_ELECTIRIZER
# 50 "data/maps/MauvilleCity/scripts.pory"
    goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 51 "data/maps/MauvilleCity/scripts.pory"
    setflag FLAG_RECEIVED_ELECTIRIZER
# 52 "data/maps/MauvilleCity/scripts.pory"
    msgbox MauvilleCity_Text_Electirizer_Goodbye, MSGBOX_DEFAULT
# 53 "data/maps/MauvilleCity/scripts.pory"
    release
# 54 "data/maps/MauvilleCity/scripts.pory"
    end
# 55 "data/maps/MauvilleCity/scripts.pory"

# 56 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_AlreadyGotItem::
# 57 "data/maps/MauvilleCity/scripts.pory"
    msgbox MauvilleCity_Text_Electirizer_AlreadyGot, MSGBOX_DEFAULT
# 58 "data/maps/MauvilleCity/scripts.pory"
    release
# 59 "data/maps/MauvilleCity/scripts.pory"
    end
# 60 "data/maps/MauvilleCity/scripts.pory"

# 61 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_Electirizer_NotReady:
# 62 "data/maps/MauvilleCity/scripts.pory"
    .string "Hmm… Den is a formidable young man.\p"
# 63 "data/maps/MauvilleCity/scripts.pory"
    .string "Ever since he was a child, he had a\n"
# 64 "data/maps/MauvilleCity/scripts.pory"
    .string "brilliant mind…\p"
# 65 "data/maps/MauvilleCity/scripts.pory"
    .string "These days, he solves calculations and\n"
# 66 "data/maps/MauvilleCity/scripts.pory"
    .string "formulas better than I do…\p"
# 67 "data/maps/MauvilleCity/scripts.pory"
    .string "I was his engineering teacher for\n"
# 68 "data/maps/MauvilleCity/scripts.pory"
    .string "many years.\p"
# 69 "data/maps/MauvilleCity/scripts.pory"
    .string "You seem like a smart trainer,\n"
# 70 "data/maps/MauvilleCity/scripts.pory"
    .string "but do you have what it takes to\l"
# 71 "data/maps/MauvilleCity/scripts.pory"
    .string "defeat him?$"
# 72 "data/maps/MauvilleCity/scripts.pory"

# 73 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_Electirizer_Congrats:
# 74 "data/maps/MauvilleCity/scripts.pory"
    .string "Hmm… You defeated Den!\p"
# 75 "data/maps/MauvilleCity/scripts.pory"
    .string "I knew you had potential.\p"
# 76 "data/maps/MauvilleCity/scripts.pory"
    .string "As his former teacher, it makes me\n"
# 77 "data/maps/MauvilleCity/scripts.pory"
    .string "happy to see talented young people.\p"
# 78 "data/maps/MauvilleCity/scripts.pory"
    .string "Here, take this as a token of\n"
# 79 "data/maps/MauvilleCity/scripts.pory"
    .string "recognition.$"
# 80 "data/maps/MauvilleCity/scripts.pory"

# 81 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_Electirizer_Goodbye:
# 82 "data/maps/MauvilleCity/scripts.pory"
    .string "Use that Electirizer wisely.\n"
# 83 "data/maps/MauvilleCity/scripts.pory"
    .string "It can evolve certain Pokémon.\p"
# 84 "data/maps/MauvilleCity/scripts.pory"
    .string "Keep up the good training, young one!$"
# 85 "data/maps/MauvilleCity/scripts.pory"

# 86 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_Electirizer_AlreadyGot:
# 87 "data/maps/MauvilleCity/scripts.pory"
    .string "Hmm… You already got the Electirizer.\n"
# 88 "data/maps/MauvilleCity/scripts.pory"
    .string "Make good use of it!$"
# 89 "data/maps/MauvilleCity/scripts.pory"

# 90 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_CitySign::
# 91 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_CitySign, MSGBOX_SIGN
# 92 "data/maps/MauvilleCity/scripts.pory"
	end
# 93 "data/maps/MauvilleCity/scripts.pory"

# 94 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_GymSign::
# 95 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_GymSign, MSGBOX_SIGN
# 96 "data/maps/MauvilleCity/scripts.pory"
	end
# 97 "data/maps/MauvilleCity/scripts.pory"

# 98 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_GymClosedForRepairs::
# 99 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_GymClosedForRepairs, MSGBOX_SIGN
# 100 "data/maps/MauvilleCity/scripts.pory"
	end
# 101 "data/maps/MauvilleCity/scripts.pory"

# 102 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_BikeShopSign::
# 103 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_BikeShopSign, MSGBOX_SIGN
# 104 "data/maps/MauvilleCity/scripts.pory"
	end
# 105 "data/maps/MauvilleCity/scripts.pory"

# 106 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_GameCornerSign::
# 107 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_GameCornerSign, MSGBOX_SIGN
# 108 "data/maps/MauvilleCity/scripts.pory"
	end
# 109 "data/maps/MauvilleCity/scripts.pory"

# 110 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_SchoolKidM::
# 111 "data/maps/MauvilleCity/scripts.pory"
	lock
# 112 "data/maps/MauvilleCity/scripts.pory"
	faceplayer
# 113 "data/maps/MauvilleCity/scripts.pory"
	goto_if_set FLAG_TV_EXPLAINED, MauvilleCity_EventScript_TVExplained
# 114 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_ExplainTV, MSGBOX_DEFAULT
# 115 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_TV_EXPLAINED
# 116 "data/maps/MauvilleCity/scripts.pory"
	release
# 117 "data/maps/MauvilleCity/scripts.pory"
	end
# 118 "data/maps/MauvilleCity/scripts.pory"

# 119 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_TVExplained::
# 120 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_BeenCheckingOutTV, MSGBOX_DEFAULT
# 121 "data/maps/MauvilleCity/scripts.pory"
	release
# 122 "data/maps/MauvilleCity/scripts.pory"
	end
# 123 "data/maps/MauvilleCity/scripts.pory"

# 124 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_WallysUncle::
# 125 "data/maps/MauvilleCity/scripts.pory"
	lock
# 126 "data/maps/MauvilleCity/scripts.pory"
	faceplayer
# 127 "data/maps/MauvilleCity/scripts.pory"
	goto_if_set FLAG_DECLINED_WALLY_BATTLE_MAUVILLE, MauvilleCity_EventScript_UncleAskPlayerToBattleWally
# 128 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_UncleHesTooPeppy, MSGBOX_DEFAULT
# 129 "data/maps/MauvilleCity/scripts.pory"
	closemessage
# 130 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, Common_Movement_FaceOriginalDirection
# 131 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 132 "data/maps/MauvilleCity/scripts.pory"
	release
# 133 "data/maps/MauvilleCity/scripts.pory"
	end
# 134 "data/maps/MauvilleCity/scripts.pory"

# 135 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_UncleAskPlayerToBattleWally::
# 136 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_UncleCanYouBattleWally, MSGBOX_DEFAULT
# 137 "data/maps/MauvilleCity/scripts.pory"
	closemessage
# 138 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, Common_Movement_FaceOriginalDirection
# 139 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 140 "data/maps/MauvilleCity/scripts.pory"
	release
# 141 "data/maps/MauvilleCity/scripts.pory"
	end
# 142 "data/maps/MauvilleCity/scripts.pory"

# 143 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_Wally::
# 144 "data/maps/MauvilleCity/scripts.pory"
	lockall
# 145 "data/maps/MauvilleCity/scripts.pory"
	goto_if_set FLAG_DECLINED_WALLY_BATTLE_MAUVILLE, MauvilleCity_EventScript_WallyRequestBattleAgain
# 146 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_WalkInPlaceFasterRight
# 147 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 148 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 149 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyWantToChallengeGym, MSGBOX_DEFAULT
# 150 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 151 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_UncleYourePushingIt, MSGBOX_DEFAULT
# 152 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 153 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyWeCanBeatAnyone, MSGBOX_DEFAULT
# 154 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 155 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_FacePlayer
# 156 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 157 "data/maps/MauvilleCity/scripts.pory"
	playse SE_PIN
# 158 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_ExclamationMark
# 159 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 160 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_Delay48
# 161 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 162 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 163 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyWillYouBattleMe, MSGBOX_YESNO
# 164 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 165 "data/maps/MauvilleCity/scripts.pory"
	goto MauvilleCity_EventScript_BattleWallyPrompt
# 166 "data/maps/MauvilleCity/scripts.pory"
	end
# 167 "data/maps/MauvilleCity/scripts.pory"

# 168 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_BattleWallyPrompt::
# 169 "data/maps/MauvilleCity/scripts.pory"
	call_if_eq VAR_RESULT, YES, MauvilleCity_EventScript_BattleWally
# 170 "data/maps/MauvilleCity/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_EventScript_DeclineWallyBattle
# 171 "data/maps/MauvilleCity/scripts.pory"
	closemessage
# 172 "data/maps/MauvilleCity/scripts.pory"
	switch VAR_FACING
# 173 "data/maps/MauvilleCity/scripts.pory"
	case DIR_NORTH, MauvilleCity_EventScript_WallyAndUncleExitNorth
# 174 "data/maps/MauvilleCity/scripts.pory"
	case DIR_EAST, MauvilleCity_EventScript_WallyAndUncleExitEast
# 175 "data/maps/MauvilleCity/scripts.pory"
	end
# 176 "data/maps/MauvilleCity/scripts.pory"

# 177 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_WallyAndUncleExitNorth::
# 178 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchWallyExitNorth1
# 179 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, MauvilleCity_Movement_WallyExitNorth1
# 180 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleExitNorth1
# 181 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 182 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_WalkInPlaceFasterRight
# 183 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 184 "data/maps/MauvilleCity/scripts.pory"
	delay 30
# 185 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerFaceUncleNorth
# 186 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleApproachPlayerNorth
# 187 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 188 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_UncleVisitUsSometime, MSGBOX_DEFAULT
# 189 "data/maps/MauvilleCity/scripts.pory"
	closemessage
# 190 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchWallyExitNorth2
# 191 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleExitNorth2
# 192 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, MauvilleCity_Movement_WallyExitNorth2
# 193 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 194 "data/maps/MauvilleCity/scripts.pory"
	goto MauvilleCity_EventScript_DefeatedWally
# 195 "data/maps/MauvilleCity/scripts.pory"
	end
# 196 "data/maps/MauvilleCity/scripts.pory"

# 197 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_WallyAndUncleExitEast::
# 198 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchWallyExitEast1
# 199 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, MauvilleCity_Movement_WallyExitEast1
# 200 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleExitEast1
# 201 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 202 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_WalkInPlaceFasterRight
# 203 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 204 "data/maps/MauvilleCity/scripts.pory"
	delay 30
# 205 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleApproachPlayerEast
# 206 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 207 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_UncleVisitUsSometime, MSGBOX_DEFAULT
# 208 "data/maps/MauvilleCity/scripts.pory"
	closemessage
# 209 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchWallyExitEast2
# 210 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleExitEast2
# 211 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, MauvilleCity_Movement_WallyExitEast2
# 212 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 213 "data/maps/MauvilleCity/scripts.pory"
	goto MauvilleCity_EventScript_DefeatedWally
# 214 "data/maps/MauvilleCity/scripts.pory"
	end
# 215 "data/maps/MauvilleCity/scripts.pory"

# 216 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_DefeatedWally::
# 217 "data/maps/MauvilleCity/scripts.pory"
	removeobject LOCALID_MAUVILLE_WALLY
# 218 "data/maps/MauvilleCity/scripts.pory"
	removeobject LOCALID_MAUVILLE_WALLYS_UNCLE
# 219 "data/maps/MauvilleCity/scripts.pory"
	@ LUKA stays at the cafe until the gathering ends.
# 220 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_HIDE_VERDANTURF_TOWN_WANDAS_HOUSE_WALLY
# 221 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BIRCH
# 222 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_GYM_NORMAN
# 223 "data/maps/MauvilleCity/scripts.pory"
	clearflag FLAG_HIDE_VERDANTURF_TOWN_WANDAS_HOUSE_WALLYS_UNCLE
# 224 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_DEFEATED_WALLY_MAUVILLE
# 225 "data/maps/MauvilleCity/scripts.pory"
	setvar VAR_WALLY_CALL_STEP_COUNTER, 0
# 226 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_ENABLE_FIRST_WALLY_POKENAV_CALL
# 227 "data/maps/MauvilleCity/scripts.pory"
	//////// call_if_eq VAR_FACING, DIR_NORTH, MauvilleCity_EventScript_ScottApproachPlayerNorth
# 228 "data/maps/MauvilleCity/scripts.pory"
	/////// call_if_eq VAR_FACING, DIR_EAST, MauvilleCity_EventScript_ScottApproachPlayerEast
# 229 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 230 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 231 "data/maps/MauvilleCity/scripts.pory"
	////////msgbox MauvilleCity_Text_ScottYouDidntHoldBack, MSGBOX_DEFAULT
# 232 "data/maps/MauvilleCity/scripts.pory"
	//////// closemessage
# 233 "data/maps/MauvilleCity/scripts.pory"
	//////// addvar VAR_SCOTT_STATE, 1
# 234 "data/maps/MauvilleCity/scripts.pory"
	//////// call_if_eq VAR_FACING, DIR_NORTH, MauvilleCity_EventScript_ScottExitNorth
# 235 "data/maps/MauvilleCity/scripts.pory"
	/////// call_if_eq VAR_FACING, DIR_EAST, MauvilleCity_EventScript_ScottExitEast
# 236 "data/maps/MauvilleCity/scripts.pory"
	////////// removeobject LOCALID_MAUVILLE_SCOTT
# 237 "data/maps/MauvilleCity/scripts.pory"
	releaseall
# 238 "data/maps/MauvilleCity/scripts.pory"
	end
# 239 "data/maps/MauvilleCity/scripts.pory"

# 240 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_ScottApproachPlayerNorth::
# 241 "data/maps/MauvilleCity/scripts.pory"
	addobject LOCALID_MAUVILLE_SCOTT
# 242 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_SCOTT, MauvilleCity_Movement_ScottApproachPlayerNorth
# 243 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 244 "data/maps/MauvilleCity/scripts.pory"
	return
# 245 "data/maps/MauvilleCity/scripts.pory"

# 246 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_ScottApproachPlayerEast::
# 247 "data/maps/MauvilleCity/scripts.pory"
	setobjectxyperm LOCALID_MAUVILLE_SCOTT, 12, 13
# 248 "data/maps/MauvilleCity/scripts.pory"
	addobject LOCALID_MAUVILLE_SCOTT
# 249 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_SCOTT, MauvilleCity_Movement_ScottApproachPlayerEast
# 250 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 251 "data/maps/MauvilleCity/scripts.pory"
	return
# 252 "data/maps/MauvilleCity/scripts.pory"

# 253 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_ScottExitNorth::
# 254 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchScottExitNorth
# 255 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_SCOTT, MauvilleCity_Movement_ScottExitNorth
# 256 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 257 "data/maps/MauvilleCity/scripts.pory"
	return
# 258 "data/maps/MauvilleCity/scripts.pory"

# 259 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_ScottExitEast::
# 260 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchScottExitEast
# 261 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_SCOTT, MauvilleCity_Movement_ScottExitEast
# 262 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 263 "data/maps/MauvilleCity/scripts.pory"
	return
# 264 "data/maps/MauvilleCity/scripts.pory"

# 265 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_BattleWally::
# 266 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 267 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyHereICome, MSGBOX_DEFAULT
# 268 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 269 "data/maps/MauvilleCity/scripts.pory"
	trainerbattle_no_intro TRAINER_WALLY_MAUVILLE, MauvilleCity_Text_WallyDefeat
# 270 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_WalkInPlaceFasterRight
# 271 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 272 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 273 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyIllGoBackToVerdanturf, MSGBOX_DEFAULT
# 274 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 275 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_FacePlayer
# 276 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 277 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 278 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_ThankYouNotEnoughToBattle, MSGBOX_DEFAULT
# 279 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 280 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_WalkInPlaceFasterRight
# 281 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 282 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_UncleNoNeedToBeDown, MSGBOX_DEFAULT
# 283 "data/maps/MauvilleCity/scripts.pory"
	return
# 284 "data/maps/MauvilleCity/scripts.pory"

# 285 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_DeclineWallyBattle::
# 286 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_DECLINED_WALLY_BATTLE_MAUVILLE
# 287 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 288 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyMyUncleWontKnowImStrong, MSGBOX_DEFAULT
# 289 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 290 "data/maps/MauvilleCity/scripts.pory"
	release
# 291 "data/maps/MauvilleCity/scripts.pory"
	end
# 292 "data/maps/MauvilleCity/scripts.pory"

# 293 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_WallyRequestBattleAgain::
# 294 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_FacePlayer
# 295 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 296 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 297 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyPleaseBattleMe, MSGBOX_YESNO
# 298 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 299 "data/maps/MauvilleCity/scripts.pory"
	goto MauvilleCity_EventScript_BattleWallyPrompt
# 300 "data/maps/MauvilleCity/scripts.pory"
	end
# 301 "data/maps/MauvilleCity/scripts.pory"

# 302 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallyExitNorth1:
# 303 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 304 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 305 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 306 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 307 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 308 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 309 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 310 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 311 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 312 "data/maps/MauvilleCity/scripts.pory"

# 313 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallyExitEast1:
# 314 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 315 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 316 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 317 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 318 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 319 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 320 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 321 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 322 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 323 "data/maps/MauvilleCity/scripts.pory"

# 324 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallyExitNorth2:
# 325 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 326 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 327 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 328 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 329 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 330 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 331 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 332 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 333 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 334 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 335 "data/maps/MauvilleCity/scripts.pory"
	delay_8
# 336 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 337 "data/maps/MauvilleCity/scripts.pory"

# 338 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallyExitEast2:
# 339 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 340 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 341 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 342 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 343 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 344 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 345 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 346 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 347 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 348 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 349 "data/maps/MauvilleCity/scripts.pory"
	delay_8
# 350 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 351 "data/maps/MauvilleCity/scripts.pory"

# 352 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchWallyExitNorth2:
# 353 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 354 "data/maps/MauvilleCity/scripts.pory"
	delay_8
# 355 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_left
# 356 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 357 "data/maps/MauvilleCity/scripts.pory"

# 358 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchWallyExitEast2:
# 359 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 360 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 361 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 362 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_left
# 363 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 364 "data/maps/MauvilleCity/scripts.pory"

# 365 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchScottExitNorth:
# 366 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 367 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_left
# 368 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 369 "data/maps/MauvilleCity/scripts.pory"

# 370 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchScottExitEast:
# 371 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 372 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 373 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_left
# 374 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 375 "data/maps/MauvilleCity/scripts.pory"

# 376 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchWallyExitEast1:
# 377 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 378 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_down
# 379 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 380 "data/maps/MauvilleCity/scripts.pory"

# 381 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchWallyExitNorth1:
# 382 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 383 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_left
# 384 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 385 "data/maps/MauvilleCity/scripts.pory"

# 386 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallysUncleExitNorth1:
# 387 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 388 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 389 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 390 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 391 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 392 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 393 "data/maps/MauvilleCity/scripts.pory"

# 394 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallysUncleExitEast1:
# 395 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 396 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 397 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 398 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 399 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 400 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 401 "data/maps/MauvilleCity/scripts.pory"

# 402 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerFaceUncleNorth:
# 403 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 404 "data/maps/MauvilleCity/scripts.pory"
	delay_8
# 405 "data/maps/MauvilleCity/scripts.pory"
	delay_4
# 406 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_down
# 407 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 408 "data/maps/MauvilleCity/scripts.pory"

# 409 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallysUncleApproachPlayerNorth:
# 410 "data/maps/MauvilleCity/scripts.pory"
	walk_right
# 411 "data/maps/MauvilleCity/scripts.pory"
	walk_right
# 412 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_up
# 413 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 414 "data/maps/MauvilleCity/scripts.pory"

# 415 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallysUncleApproachPlayerEast:
# 416 "data/maps/MauvilleCity/scripts.pory"
	walk_right
# 417 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 418 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 419 "data/maps/MauvilleCity/scripts.pory"

# 420 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallysUncleExitNorth2:
# 421 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 422 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 423 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 424 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 425 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 426 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 427 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 428 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 429 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 430 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 431 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 432 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 433 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 434 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 435 "data/maps/MauvilleCity/scripts.pory"

# 436 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallysUncleExitEast2:
# 437 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 438 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 439 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 440 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 441 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 442 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 443 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 444 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 445 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 446 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 447 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 448 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 449 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 450 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 451 "data/maps/MauvilleCity/scripts.pory"

# 452 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_ScottApproachPlayerNorth:
# 453 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 454 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 455 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 456 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 457 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 458 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 459 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 460 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 461 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 462 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 463 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_up
# 464 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 465 "data/maps/MauvilleCity/scripts.pory"

# 466 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_ScottApproachPlayerEast:
# 467 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 468 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 469 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 470 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 471 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 472 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 473 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 474 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 475 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 476 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 477 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 478 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 479 "data/maps/MauvilleCity/scripts.pory"

# 480 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_ScottExitNorth:
# 481 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 482 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 483 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 484 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 485 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 486 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 487 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 488 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 489 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 490 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 491 "data/maps/MauvilleCity/scripts.pory"

# 492 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_ScottExitEast:
# 493 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 494 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 495 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 496 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 497 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 498 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 499 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 500 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 501 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 502 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 503 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 504 "data/maps/MauvilleCity/scripts.pory"

# 505 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_Wattson::
# 506 "data/maps/MauvilleCity/scripts.pory"
	lock
# 507 "data/maps/MauvilleCity/scripts.pory"
	faceplayer
# 508 "data/maps/MauvilleCity/scripts.pory"
	goto_if_set FLAG_GOT_TM_THUNDERBOLT_FROM_WATTSON, MauvilleCity_EventScript_ReceivedThunderbolt
# 509 "data/maps/MauvilleCity/scripts.pory"
	goto_if_eq VAR_NEW_MAUVILLE_STATE, 2, MauvilleCity_EventScript_CompletedNewMauville
# 510 "data/maps/MauvilleCity/scripts.pory"
	goto_if_set FLAG_GOT_BASEMENT_KEY_FROM_WATTSON, MauvilleCity_EventScript_BegunNewMauville
# 511 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_DEN, EMOTE_NORMAL
# 512 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WattsonNeedFavorTakeKey, MSGBOX_DEFAULT
# 513 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 514 "data/maps/MauvilleCity/scripts.pory"
	giveitem ITEM_BASEMENT_KEY
# 515 "data/maps/MauvilleCity/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 516 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_GOT_BASEMENT_KEY_FROM_WATTSON
# 517 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_DEN, EMOTE_NORMAL
# 518 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WattsonWontBeChallenge, MSGBOX_DEFAULT
# 519 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 520 "data/maps/MauvilleCity/scripts.pory"
	release
# 521 "data/maps/MauvilleCity/scripts.pory"
	end
# 522 "data/maps/MauvilleCity/scripts.pory"

# 523 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_BegunNewMauville::
# 524 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_DEN, EMOTE_NORMAL
# 525 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WattsonWontBeChallenge, MSGBOX_DEFAULT
# 526 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 527 "data/maps/MauvilleCity/scripts.pory"
	release
# 528 "data/maps/MauvilleCity/scripts.pory"
	end
# 529 "data/maps/MauvilleCity/scripts.pory"

# 530 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_CompletedNewMauville::
# 531 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_DEN, EMOTE_NORMAL
# 532 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WattsonThanksTakeTM, MSGBOX_DEFAULT
# 533 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 534 "data/maps/MauvilleCity/scripts.pory"
	giveitem ITEM_TM_THUNDERBOLT
# 535 "data/maps/MauvilleCity/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 536 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_GOT_TM_THUNDERBOLT_FROM_WATTSON
# 537 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_DEN, EMOTE_NORMAL
# 538 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WattsonYoungTakeCharge, MSGBOX_DEFAULT
# 539 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 540 "data/maps/MauvilleCity/scripts.pory"
	release
# 541 "data/maps/MauvilleCity/scripts.pory"
	end
# 542 "data/maps/MauvilleCity/scripts.pory"

# 543 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_ReceivedThunderbolt::
# 544 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_DEN, EMOTE_NORMAL
# 545 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WattsonYoungTakeCharge, MSGBOX_DEFAULT
# 546 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 547 "data/maps/MauvilleCity/scripts.pory"
	release
# 548 "data/maps/MauvilleCity/scripts.pory"
	end
# 549 "data/maps/MauvilleCity/scripts.pory"

# 550 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_RegisterWallyCall::
# 551 "data/maps/MauvilleCity/scripts.pory"
	lockall
# 552 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed pokenavcall MauvilleCity_Text_WallyPokenavCall
# 553 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed waitmessage
# 554 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed delay 30
# 555 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed playfanfare MUS_REGISTER_MATCH_CALL
# 556 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed msgbox MauvilleCity_Text_RegisteredWally, MSGBOX_DEFAULT
# 557 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed waitfanfare
# 558 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed closemessage
# 559 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed delay 30
# 560 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed setflag FLAG_ENABLE_WALLY_MATCH_CALL
# 561 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed clearflag FLAG_ENABLE_FIRST_WALLY_POKENAV_CALL
# 562 "data/maps/MauvilleCity/scripts.pory"
	releaseall
# 563 "data/maps/MauvilleCity/scripts.pory"
	end
# 564 "data/maps/MauvilleCity/scripts.pory"

# 565 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_UncleHesTooPeppy:
# 566 "data/maps/MauvilleCity/scripts.pory"
	.string "UNCLE: DEN's doing emergency\n"
# 567 "data/maps/MauvilleCity/scripts.pory"
	.string "repairs on the GYM again.\p"
# 568 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA's been itching for a battle\n"
# 569 "data/maps/MauvilleCity/scripts.pory"
	.string "while we wait.$"
# 570 "data/maps/MauvilleCity/scripts.pory"

# 571 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyWantToChallengeGym:
# 572 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: This blows. We came out here\n"
# 573 "data/maps/MauvilleCity/scripts.pory"
	.string "to challenge the GYM, UNCLE, but\l"
# 574 "data/maps/MauvilleCity/scripts.pory"
	.string "now it's suddenly closed for\l"
# 575 "data/maps/MauvilleCity/scripts.pory"
	.string "emergency repairs.$"
# 576 "data/maps/MauvilleCity/scripts.pory"

# 577 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_UncleYourePushingIt:
# 578 "data/maps/MauvilleCity/scripts.pory"
	.string "UNCLE: Easy there, LUKA. You'll\n"
# 579 "data/maps/MauvilleCity/scripts.pory"
	.string "have your chance to challenge DEN\l"
# 580 "data/maps/MauvilleCity/scripts.pory"
	.string "soon enough.\p"
# 581 "data/maps/MauvilleCity/scripts.pory"
	.string "It's not the first time he's\n"
# 582 "data/maps/MauvilleCity/scripts.pory"
	.string "blown up his GYM by trying out\l"
# 583 "data/maps/MauvilleCity/scripts.pory"
	.string "some wacky new electrical\l"
# 584 "data/maps/MauvilleCity/scripts.pory"
	.string "experiment.\p"
# 585 "data/maps/MauvilleCity/scripts.pory"
	.string "This GYM is always back up and\n"
# 586 "data/maps/MauvilleCity/scripts.pory"
	.string "running shortly.$"
# 587 "data/maps/MauvilleCity/scripts.pory"

# 588 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyWeCanBeatAnyone:
# 589 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: You're right… I suppose it\n"
# 590 "data/maps/MauvilleCity/scripts.pory"
	.string "wouldn't hurt to spend some more\l"
# 591 "data/maps/MauvilleCity/scripts.pory"
	.string "time on my research while I wait.$"
# 592 "data/maps/MauvilleCity/scripts.pory"

# 593 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyWillYouBattleMe:
# 594 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: Oh! {PLAYER}, you're here?\n"
# 595 "data/maps/MauvilleCity/scripts.pory"
	.string "What timing. You're here to\l"
# 596 "data/maps/MauvilleCity/scripts.pory"
	.string "challenge the GYM too, right?\p"
# 597 "data/maps/MauvilleCity/scripts.pory"
	.string "Unfortunately, DEN blew it up\n"
# 598 "data/maps/MauvilleCity/scripts.pory"
	.string "again, so it's closed.\p"
# 599 "data/maps/MauvilleCity/scripts.pory"
	.string "Hey, since we're both here and\n"
# 600 "data/maps/MauvilleCity/scripts.pory"
	.string "itching for a battle, how about\l"
# 601 "data/maps/MauvilleCity/scripts.pory"
	.string "we battle each other?$"
# 602 "data/maps/MauvilleCity/scripts.pory"

# 603 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyMyUncleWontKnowImStrong:
# 604 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: Huh? If you won't battle me,\p"
# 605 "data/maps/MauvilleCity/scripts.pory"
	.string "{PLAYER}, how will you ever prove\n"
# 606 "data/maps/MauvilleCity/scripts.pory"
	.string "you're ready for the GYM?\p"
# 607 "data/maps/MauvilleCity/scripts.pory"
	.string "If you can't face me now,\n"
# 608 "data/maps/MauvilleCity/scripts.pory"
	.string "how will you face the LEADER?$"
# 609 "data/maps/MauvilleCity/scripts.pory"

# 610 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_UncleCanYouBattleWally:
# 611 "data/maps/MauvilleCity/scripts.pory"
	.string "UNCLE: DEN's still repairing the\n"
# 612 "data/maps/MauvilleCity/scripts.pory"
	.string "GYM. Could you battle LUKA while\l"
# 613 "data/maps/MauvilleCity/scripts.pory"
	.string "we wait?$"
# 614 "data/maps/MauvilleCity/scripts.pory"

# 615 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyPleaseBattleMe:
# 616 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: {PLAYER}, nice! I'm so bored\n"
# 617 "data/maps/MauvilleCity/scripts.pory"
	.string "waiting for this GYM to open.\p"
# 618 "data/maps/MauvilleCity/scripts.pory"
	.string "Let's have an amazing battle.$"
# 619 "data/maps/MauvilleCity/scripts.pory"

# 620 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyHereICome:
# 621 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: All right then, {PLAYER}!\n"
# 622 "data/maps/MauvilleCity/scripts.pory"
	.string "Get ready!$"
# 623 "data/maps/MauvilleCity/scripts.pory"

# 624 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyDefeat:
# 625 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: I see now…\p"
# 626 "data/maps/MauvilleCity/scripts.pory"
	.string "You really do have a natural talent\n"
# 627 "data/maps/MauvilleCity/scripts.pory"
	.string "for battles.\p"
# 628 "data/maps/MauvilleCity/scripts.pory"
	.string "I couldn't get the dreams off my mind,\n"
# 629 "data/maps/MauvilleCity/scripts.pory"
	.string "so I focused too much on research\l"
# 630 "data/maps/MauvilleCity/scripts.pory"
	.string "and not enough on training.\p"
# 631 "data/maps/MauvilleCity/scripts.pory"
	.string "But I can't just let that control\n"
# 632 "data/maps/MauvilleCity/scripts.pory"
	.string "my entire life. I need to be stronger.\p"
# 633 "data/maps/MauvilleCity/scripts.pory"
	.string "Congratulations, {PLAYER}.\n"
# 634 "data/maps/MauvilleCity/scripts.pory"
	.string "You're truly impressive.$"
# 635 "data/maps/MauvilleCity/scripts.pory"

# 636 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyIllGoBackToVerdanturf:
# 637 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: That was a great battle\n"
# 638 "data/maps/MauvilleCity/scripts.pory"
	.string "but... now what are we supposed\l"
# 639 "data/maps/MauvilleCity/scripts.pory"
	.string "to do?$"
# 640 "data/maps/MauvilleCity/scripts.pory"

# 641 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_ThankYouNotEnoughToBattle:
# 642 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: Oh! {PLAYER}, it's going to\n"
# 643 "data/maps/MauvilleCity/scripts.pory"
	.string "take a little more time for this\l"
# 644 "data/maps/MauvilleCity/scripts.pory"
	.string "GYM to open, so why don't you\l"
# 645 "data/maps/MauvilleCity/scripts.pory"
	.string "come visit VERDANTURF while you\l"
# 646 "data/maps/MauvilleCity/scripts.pory"
	.string "wait?\p"
# 647 "data/maps/MauvilleCity/scripts.pory"
	.string "I'm actually going to meet with\n"
# 648 "data/maps/MauvilleCity/scripts.pory"
	.string "everyone at the CAFE there.\p"
# 649 "data/maps/MauvilleCity/scripts.pory"
	.string "I'm sure they'd like to see you\n"
# 650 "data/maps/MauvilleCity/scripts.pory"
	.string "too.$"
# 651 "data/maps/MauvilleCity/scripts.pory"

# 652 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_UncleNoNeedToBeDown:
# 653 "data/maps/MauvilleCity/scripts.pory"
	.string "UNCLE: That's the spirit, LUKA.\p"
# 654 "data/maps/MauvilleCity/scripts.pory"
	.string "It's okay to not be always\n"
# 655 "data/maps/MauvilleCity/scripts.pory"
	.string "rushing toward your next goal.\p"
# 656 "data/maps/MauvilleCity/scripts.pory"
	.string "Train, explore, rest, and learn.\n"
# 657 "data/maps/MauvilleCity/scripts.pory"
	.string "All of that will make you\l"
# 658 "data/maps/MauvilleCity/scripts.pory"
	.string "stronger.\p"
# 659 "data/maps/MauvilleCity/scripts.pory"
	.string "Come on, let's head home.$"
# 660 "data/maps/MauvilleCity/scripts.pory"

# 661 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_UncleVisitUsSometime:
# 662 "data/maps/MauvilleCity/scripts.pory"
	.string "UNCLE: {PLAYER}{KUN}, thank you for\n"
# 663 "data/maps/MauvilleCity/scripts.pory"
	.string "battling LUKA today.\p"
# 664 "data/maps/MauvilleCity/scripts.pory"
	.string "He may have lost, but he gained\n"
# 665 "data/maps/MauvilleCity/scripts.pory"
	.string "something far more important.\p"
# 666 "data/maps/MauvilleCity/scripts.pory"
	.string "When you visit VERDANTURF, why\n"
# 667 "data/maps/MauvilleCity/scripts.pory"
	.string "don't you stop by our home too?\p"
# 668 "data/maps/MauvilleCity/scripts.pory"
	.string "The family would love to meet you.$"
# 669 "data/maps/MauvilleCity/scripts.pory"

# 670 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_GymClosedForRepairs:
# 671 "data/maps/MauvilleCity/scripts.pory"
	.string "Closed for emergency repairs.$"
# 672 "data/maps/MauvilleCity/scripts.pory"

# 673 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyPokenavCall:
# 674 "data/maps/MauvilleCity/scripts.pory"
	.string "… … … … … …\n"
# 675 "data/maps/MauvilleCity/scripts.pory"
	.string "… … … … … Beep!\p"
# 676 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: Oh, hi, {PLAYER}!\p"
# 677 "data/maps/MauvilleCity/scripts.pory"
	.string "Professor CALENDULA gave me\n"
# 678 "data/maps/MauvilleCity/scripts.pory"
	.string "a PokeNav today.\p"
# 679 "data/maps/MauvilleCity/scripts.pory"
	.string "She told me to focus on my\n"
# 680 "data/maps/MauvilleCity/scripts.pory"
	.string "training and research.\p"
# 681 "data/maps/MauvilleCity/scripts.pory"
	.string "If I learn anything important\n"
# 682 "data/maps/MauvilleCity/scripts.pory"
	.string "about the comet or Hoenn,\l"
# 683 "data/maps/MauvilleCity/scripts.pory"
	.string "I will contact you right away!\p"
# 684 "data/maps/MauvilleCity/scripts.pory"
	.string "Talk to you soon, {PLAYER}!\p"
# 685 "data/maps/MauvilleCity/scripts.pory"
	.string "… … … … … …\n"
# 686 "data/maps/MauvilleCity/scripts.pory"
	.string "… … … … … Click!$"
# 687 "data/maps/MauvilleCity/scripts.pory"

# 688 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_RegisteredWally:
# 689 "data/maps/MauvilleCity/scripts.pory"
	.string "Registered LUKA\n"
# 690 "data/maps/MauvilleCity/scripts.pory"
	.string "in the POKéNAV.$"
# 691 "data/maps/MauvilleCity/scripts.pory"

# 692 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_ScottYouDidntHoldBack:
# 693 "data/maps/MauvilleCity/scripts.pory"
	.string "SCOTT: Hehe…\n"
# 694 "data/maps/MauvilleCity/scripts.pory"
	.string "I was watching that match!\p"
# 695 "data/maps/MauvilleCity/scripts.pory"
	.string "You're friends with that boy LUKA,\n"
# 696 "data/maps/MauvilleCity/scripts.pory"
	.string "aren't you?\p"
# 697 "data/maps/MauvilleCity/scripts.pory"
	.string "But you didn't hold anything back\n"
# 698 "data/maps/MauvilleCity/scripts.pory"
	.string "and beat him impressively.\p"
# 699 "data/maps/MauvilleCity/scripts.pory"
	.string "Yeah! That's what a real POKéMON\n"
# 700 "data/maps/MauvilleCity/scripts.pory"
	.string "battle is all about!\p"
# 701 "data/maps/MauvilleCity/scripts.pory"
	.string "I idolize TRAINERS like that!\p"
# 702 "data/maps/MauvilleCity/scripts.pory"
	.string "… … … … … …\n"
# 703 "data/maps/MauvilleCity/scripts.pory"
	.string "I'll be cheering for you!$"
# 704 "data/maps/MauvilleCity/scripts.pory"

# 705 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WattsonNeedFavorTakeKey:
# 706 "data/maps/MauvilleCity/scripts.pory"
	.string "DEN: Oh, {PLAYER}{KUN}!\n"
# 707 "data/maps/MauvilleCity/scripts.pory"
	.string "You look like you have a lot of zip!\l"
# 708 "data/maps/MauvilleCity/scripts.pory"
	.string "That's a good thing, wahahahaha!\p"
# 709 "data/maps/MauvilleCity/scripts.pory"
	.string "Fine! I've decided!\n"
# 710 "data/maps/MauvilleCity/scripts.pory"
	.string "I need a favor, {PLAYER}{KUN}!\p"
# 711 "data/maps/MauvilleCity/scripts.pory"
	.string "MAUVILLE CITY has an underground\n"
# 712 "data/maps/MauvilleCity/scripts.pory"
	.string "sector called NEW MAUVILLE.\p"
# 713 "data/maps/MauvilleCity/scripts.pory"
	.string "{PLAYER}{KUN}, I'd like you to go there and\n"
# 714 "data/maps/MauvilleCity/scripts.pory"
	.string "switch off the GENERATOR.\p"
# 715 "data/maps/MauvilleCity/scripts.pory"
	.string "The GENERATOR has been running a bit\n"
# 716 "data/maps/MauvilleCity/scripts.pory"
	.string "haywire. It's getting unsafe.\p"
# 717 "data/maps/MauvilleCity/scripts.pory"
	.string "Here, this is the KEY to get into\n"
# 718 "data/maps/MauvilleCity/scripts.pory"
	.string "NEW MAUVILLE.$"
# 719 "data/maps/MauvilleCity/scripts.pory"

# 720 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WattsonWontBeChallenge:
# 721 "data/maps/MauvilleCity/scripts.pory"
	.string "DEN: Don't you worry about it.\n"
# 722 "data/maps/MauvilleCity/scripts.pory"
	.string "It won't be a challenge to you.\p"
# 723 "data/maps/MauvilleCity/scripts.pory"
	.string "The entrance to NEW MAUVILLE is just\n"
# 724 "data/maps/MauvilleCity/scripts.pory"
	.string "a short SURF away from ROUTE 110.\p"
# 725 "data/maps/MauvilleCity/scripts.pory"
	.string "That's it, then, you have my trust!\n"
# 726 "data/maps/MauvilleCity/scripts.pory"
	.string "Wahahahaha!$"
# 727 "data/maps/MauvilleCity/scripts.pory"

# 728 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WattsonThanksTakeTM:
# 729 "data/maps/MauvilleCity/scripts.pory"
	.string "DEN: Wahahahaha!\p"
# 730 "data/maps/MauvilleCity/scripts.pory"
	.string "I knew it, {PLAYER}{KUN}! I knew I'd made\n"
# 731 "data/maps/MauvilleCity/scripts.pory"
	.string "the right choice asking you!\p"
# 732 "data/maps/MauvilleCity/scripts.pory"
	.string "This is my thanks--a TM containing\n"
# 733 "data/maps/MauvilleCity/scripts.pory"
	.string "THUNDERBOLT!\p"
# 734 "data/maps/MauvilleCity/scripts.pory"
	.string "Go on, you've earned it!$"
# 735 "data/maps/MauvilleCity/scripts.pory"

# 736 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WattsonYoungTakeCharge:
# 737 "data/maps/MauvilleCity/scripts.pory"
	.string "DEN: Wahahahaha!\p"
# 738 "data/maps/MauvilleCity/scripts.pory"
	.string "It pleases me to no end to see\n"
# 739 "data/maps/MauvilleCity/scripts.pory"
	.string "the young step up and take charge!$"
# 740 "data/maps/MauvilleCity/scripts.pory"

# 741 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_NurseHurtMonBackToHealth:
# 742 "data/maps/MauvilleCity/scripts.pory"
	.string "You have heard about DEN, right?\n"
# 743 "data/maps/MauvilleCity/scripts.pory"
	.string "The Gym Leader here.\p"
# 744 "data/maps/MauvilleCity/scripts.pory"
	.string "They say he is a genius with\n"
# 745 "data/maps/MauvilleCity/scripts.pory"
	.string "electricity and POKéMON.\p"
# 746 "data/maps/MauvilleCity/scripts.pory"
	.string "But also a little unstable.\n"
# 747 "data/maps/MauvilleCity/scripts.pory"
	.string "His experiments go too far sometimes.\p"
# 748 "data/maps/MauvilleCity/scripts.pory"
	.string "Strange machines, sparks everywhere,\n"
# 749 "data/maps/MauvilleCity/scripts.pory"
	.string "lights flashing all night.\p"
# 750 "data/maps/MauvilleCity/scripts.pory"
	.string "Some people find him scary.\n"
# 751 "data/maps/MauvilleCity/scripts.pory"
	.string "Others call him brilliant.\p"
# 752 "data/maps/MauvilleCity/scripts.pory"
	.string "Maybe both are true.$"
# 753 "data/maps/MauvilleCity/scripts.pory"

# 754 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_AllSortsOfPeopleComeThrough:
# 755 "data/maps/MauvilleCity/scripts.pory"
	.string "Mauville sits at the crossroads.\n"
# 756 "data/maps/MauvilleCity/scripts.pory"
	.string "People come from every direction.\p"
# 757 "data/maps/MauvilleCity/scripts.pory"
	.string "Trainers, merchants, engineers,\n"
# 758 "data/maps/MauvilleCity/scripts.pory"
	.string "and travelers just passing through.\p"
# 759 "data/maps/MauvilleCity/scripts.pory"
	.string "I've seen all kinds of outfits here.\n"
# 760 "data/maps/MauvilleCity/scripts.pory"
	.string "Nothing really surprises me anymore.\p"
# 761 "data/maps/MauvilleCity/scripts.pory"
	.string "But someone dressed like you?\n"
# 762 "data/maps/MauvilleCity/scripts.pory"
	.string "That cape is something else.\p"
# 763 "data/maps/MauvilleCity/scripts.pory"
	.string "Kind of stylish, I guess.\n"
# 764 "data/maps/MauvilleCity/scripts.pory"
	.string "Not my look, though. Haha.$"
# 765 "data/maps/MauvilleCity/scripts.pory"

# 766 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_RydelVeryGenerous:
# 767 "data/maps/MauvilleCity/scripts.pory"
	.string "Have you been to RYDEL'S CYCLES yet?\p"
# 768 "data/maps/MauvilleCity/scripts.pory"
	.string "RYDEL, the owner, is a very generous\n"
# 769 "data/maps/MauvilleCity/scripts.pory"
	.string "man.$"
# 770 "data/maps/MauvilleCity/scripts.pory"

# 771 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_PokemonCanJumpYouOnBike:
# 772 "data/maps/MauvilleCity/scripts.pory"
	.string "Mauville City hums with power.\n"
# 773 "data/maps/MauvilleCity/scripts.pory"
	.string "They say the energy here is so strong\l"
# 774 "data/maps/MauvilleCity/scripts.pory"
	.string "it can make POKéMON behave strangely.\p"
# 775 "data/maps/MauvilleCity/scripts.pory"
	.string "Some trainers claim they felt their\n"
# 776 "data/maps/MauvilleCity/scripts.pory"
	.string "own POKéMON twitch without warning.\p"
# 777 "data/maps/MauvilleCity/scripts.pory"
	.string "Others swear strange lights flicker\n"
# 778 "data/maps/MauvilleCity/scripts.pory"
	.string "near the power grid at night.\p"
# 779 "data/maps/MauvilleCity/scripts.pory"
	.string "If you pay attention, you might\n"
# 780 "data/maps/MauvilleCity/scripts.pory"
	.string "discover something no one else has.$"
# 781 "data/maps/MauvilleCity/scripts.pory"

# 782 "data/maps/MauvilleCity/scripts.pory"

# 783 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_CitySign:
# 784 "data/maps/MauvilleCity/scripts.pory"
	.string "MAUVILLE CITY\n"
# 785 "data/maps/MauvilleCity/scripts.pory"
	.string "“The bright and shiny city of fun!”$"
# 786 "data/maps/MauvilleCity/scripts.pory"

# 787 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_GymSign:
# 788 "data/maps/MauvilleCity/scripts.pory"
	.string "MAUVILLE CITY POKeMON GYM\n"
# 789 "data/maps/MauvilleCity/scripts.pory"
	.string "LEADER: DEN\l"
# 790 "data/maps/MauvilleCity/scripts.pory"
	.string "The brilliant, electrifying prodigy!$"
# 791 "data/maps/MauvilleCity/scripts.pory"

# 792 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_BikeShopSign:
# 793 "data/maps/MauvilleCity/scripts.pory"
	.string "“Ride in gravel and shake up your\n"
# 794 "data/maps/MauvilleCity/scripts.pory"
	.string "soul!”\l"
# 795 "data/maps/MauvilleCity/scripts.pory"
	.string "RYDEL'S CYCLES$"
# 796 "data/maps/MauvilleCity/scripts.pory"

# 797 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_GameCornerSign:
# 798 "data/maps/MauvilleCity/scripts.pory"
	.string "“The play spot for all!”\n"
# 799 "data/maps/MauvilleCity/scripts.pory"
	.string "MAUVILLE GAME CORNER$"
# 800 "data/maps/MauvilleCity/scripts.pory"

# 801 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_ExplainTV:
# 802 "data/maps/MauvilleCity/scripts.pory"
	.string "Hey, have you seen the news lately?\p"
# 803 "data/maps/MauvilleCity/scripts.pory"
	.string "Ever since that meteor passed,\n"
# 804 "data/maps/MauvilleCity/scripts.pory"
	.string "it's all they talk about on TV.\p"
# 805 "data/maps/MauvilleCity/scripts.pory"
	.string "No one knows where it came from,\n"
# 806 "data/maps/MauvilleCity/scripts.pory"
	.string "or what it really was.\p"
# 807 "data/maps/MauvilleCity/scripts.pory"
	.string "People are curious.\n"
# 808 "data/maps/MauvilleCity/scripts.pory"
	.string "Some are even scared.\p"
# 809 "data/maps/MauvilleCity/scripts.pory"
	.string "I keep watching, hoping they find\n"
# 810 "data/maps/MauvilleCity/scripts.pory"
	.string "some new clue or explanation.\p"
# 811 "data/maps/MauvilleCity/scripts.pory"
	.string "You should watch TV too.\n"
# 812 "data/maps/MauvilleCity/scripts.pory"
	.string "You never know what you might learn.$"
# 813 "data/maps/MauvilleCity/scripts.pory"

# 814 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_BeenCheckingOutTV:
# 815 "data/maps/MauvilleCity/scripts.pory"
	.string "Hi, have you been checking out TVs?$"
