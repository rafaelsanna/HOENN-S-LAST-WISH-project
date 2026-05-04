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
MauvilleCity_EventScript_BikeShopSign::
# 99 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_BikeShopSign, MSGBOX_SIGN
# 100 "data/maps/MauvilleCity/scripts.pory"
	end
# 101 "data/maps/MauvilleCity/scripts.pory"

# 102 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_GameCornerSign::
# 103 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_GameCornerSign, MSGBOX_SIGN
# 104 "data/maps/MauvilleCity/scripts.pory"
	end
# 105 "data/maps/MauvilleCity/scripts.pory"

# 106 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_SchoolKidM::
# 107 "data/maps/MauvilleCity/scripts.pory"
	lock
# 108 "data/maps/MauvilleCity/scripts.pory"
	faceplayer
# 109 "data/maps/MauvilleCity/scripts.pory"
	goto_if_set FLAG_TV_EXPLAINED, MauvilleCity_EventScript_TVExplained
# 110 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_ExplainTV, MSGBOX_DEFAULT
# 111 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_TV_EXPLAINED
# 112 "data/maps/MauvilleCity/scripts.pory"
	release
# 113 "data/maps/MauvilleCity/scripts.pory"
	end
# 114 "data/maps/MauvilleCity/scripts.pory"

# 115 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_TVExplained::
# 116 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_BeenCheckingOutTV, MSGBOX_DEFAULT
# 117 "data/maps/MauvilleCity/scripts.pory"
	release
# 118 "data/maps/MauvilleCity/scripts.pory"
	end
# 119 "data/maps/MauvilleCity/scripts.pory"

# 120 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_WallysUncle::
# 121 "data/maps/MauvilleCity/scripts.pory"
	lock
# 122 "data/maps/MauvilleCity/scripts.pory"
	faceplayer
# 123 "data/maps/MauvilleCity/scripts.pory"
	goto_if_set FLAG_DECLINED_WALLY_BATTLE_MAUVILLE, MauvilleCity_EventScript_UncleAskPlayerToBattleWally
# 124 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_UncleHesTooPeppy, MSGBOX_DEFAULT
# 125 "data/maps/MauvilleCity/scripts.pory"
	closemessage
# 126 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, Common_Movement_FaceOriginalDirection
# 127 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 128 "data/maps/MauvilleCity/scripts.pory"
	release
# 129 "data/maps/MauvilleCity/scripts.pory"
	end
# 130 "data/maps/MauvilleCity/scripts.pory"

# 131 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_UncleAskPlayerToBattleWally::
# 132 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_UncleCanYouBattleWally, MSGBOX_DEFAULT
# 133 "data/maps/MauvilleCity/scripts.pory"
	closemessage
# 134 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, Common_Movement_FaceOriginalDirection
# 135 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 136 "data/maps/MauvilleCity/scripts.pory"
	release
# 137 "data/maps/MauvilleCity/scripts.pory"
	end
# 138 "data/maps/MauvilleCity/scripts.pory"

# 139 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_Wally::
# 140 "data/maps/MauvilleCity/scripts.pory"
	lockall
# 141 "data/maps/MauvilleCity/scripts.pory"
	goto_if_set FLAG_DECLINED_WALLY_BATTLE_MAUVILLE, MauvilleCity_EventScript_WallyRequestBattleAgain
# 142 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_WalkInPlaceFasterRight
# 143 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 144 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyWantToChallengeGym, MSGBOX_DEFAULT
# 145 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_UncleYourePushingIt, MSGBOX_DEFAULT
# 146 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyWeCanBeatAnyone, MSGBOX_DEFAULT
# 147 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_FacePlayer
# 148 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 149 "data/maps/MauvilleCity/scripts.pory"
	playse SE_PIN
# 150 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_ExclamationMark
# 151 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 152 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_Delay48
# 153 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 154 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyWillYouBattleMe, MSGBOX_YESNO
# 155 "data/maps/MauvilleCity/scripts.pory"
	goto MauvilleCity_EventScript_BattleWallyPrompt
# 156 "data/maps/MauvilleCity/scripts.pory"
	end
# 157 "data/maps/MauvilleCity/scripts.pory"

# 158 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_BattleWallyPrompt::
# 159 "data/maps/MauvilleCity/scripts.pory"
	call_if_eq VAR_RESULT, YES, MauvilleCity_EventScript_BattleWally
# 160 "data/maps/MauvilleCity/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_EventScript_DeclineWallyBattle
# 161 "data/maps/MauvilleCity/scripts.pory"
	closemessage
# 162 "data/maps/MauvilleCity/scripts.pory"
	switch VAR_FACING
# 163 "data/maps/MauvilleCity/scripts.pory"
	case DIR_NORTH, MauvilleCity_EventScript_WallyAndUncleExitNorth
# 164 "data/maps/MauvilleCity/scripts.pory"
	case DIR_EAST, MauvilleCity_EventScript_WallyAndUncleExitEast
# 165 "data/maps/MauvilleCity/scripts.pory"
	end
# 166 "data/maps/MauvilleCity/scripts.pory"

# 167 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_WallyAndUncleExitNorth::
# 168 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchWallyExitNorth1
# 169 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, MauvilleCity_Movement_WallyExitNorth1
# 170 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleExitNorth1
# 171 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 172 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_WalkInPlaceFasterRight
# 173 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 174 "data/maps/MauvilleCity/scripts.pory"
	delay 30
# 175 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerFaceUncleNorth
# 176 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleApproachPlayerNorth
# 177 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 178 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_UncleVisitUsSometime, MSGBOX_DEFAULT
# 179 "data/maps/MauvilleCity/scripts.pory"
	closemessage
# 180 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchWallyExitNorth2
# 181 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleExitNorth2
# 182 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, MauvilleCity_Movement_WallyExitNorth2
# 183 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 184 "data/maps/MauvilleCity/scripts.pory"
	goto MauvilleCity_EventScript_DefeatedWally
# 185 "data/maps/MauvilleCity/scripts.pory"
	end
# 186 "data/maps/MauvilleCity/scripts.pory"

# 187 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_WallyAndUncleExitEast::
# 188 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchWallyExitEast1
# 189 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, MauvilleCity_Movement_WallyExitEast1
# 190 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleExitEast1
# 191 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 192 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_WalkInPlaceFasterRight
# 193 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 194 "data/maps/MauvilleCity/scripts.pory"
	delay 30
# 195 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleApproachPlayerEast
# 196 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 197 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_UncleVisitUsSometime, MSGBOX_DEFAULT
# 198 "data/maps/MauvilleCity/scripts.pory"
	closemessage
# 199 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchWallyExitEast2
# 200 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleExitEast2
# 201 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, MauvilleCity_Movement_WallyExitEast2
# 202 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 203 "data/maps/MauvilleCity/scripts.pory"
	goto MauvilleCity_EventScript_DefeatedWally
# 204 "data/maps/MauvilleCity/scripts.pory"
	end
# 205 "data/maps/MauvilleCity/scripts.pory"

# 206 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_DefeatedWally::
# 207 "data/maps/MauvilleCity/scripts.pory"
	removeobject LOCALID_MAUVILLE_WALLY
# 208 "data/maps/MauvilleCity/scripts.pory"
	removeobject LOCALID_MAUVILLE_WALLYS_UNCLE
# 209 "data/maps/MauvilleCity/scripts.pory"
	clearflag FLAG_HIDE_VERDANTURF_TOWN_WANDAS_HOUSE_WALLY
# 210 "data/maps/MauvilleCity/scripts.pory"
	clearflag FLAG_HIDE_VERDANTURF_TOWN_WANDAS_HOUSE_WALLYS_UNCLE
# 211 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_DEFEATED_WALLY_MAUVILLE
# 212 "data/maps/MauvilleCity/scripts.pory"
	setvar VAR_WALLY_CALL_STEP_COUNTER, 0
# 213 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_ENABLE_FIRST_WALLY_POKENAV_CALL
# 214 "data/maps/MauvilleCity/scripts.pory"
	//////// call_if_eq VAR_FACING, DIR_NORTH, MauvilleCity_EventScript_ScottApproachPlayerNorth
# 215 "data/maps/MauvilleCity/scripts.pory"
	/////// call_if_eq VAR_FACING, DIR_EAST, MauvilleCity_EventScript_ScottApproachPlayerEast
# 216 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 217 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 218 "data/maps/MauvilleCity/scripts.pory"
	////////msgbox MauvilleCity_Text_ScottYouDidntHoldBack, MSGBOX_DEFAULT
# 219 "data/maps/MauvilleCity/scripts.pory"
	//////// closemessage
# 220 "data/maps/MauvilleCity/scripts.pory"
	//////// addvar VAR_SCOTT_STATE, 1
# 221 "data/maps/MauvilleCity/scripts.pory"
	//////// call_if_eq VAR_FACING, DIR_NORTH, MauvilleCity_EventScript_ScottExitNorth
# 222 "data/maps/MauvilleCity/scripts.pory"
	/////// call_if_eq VAR_FACING, DIR_EAST, MauvilleCity_EventScript_ScottExitEast
# 223 "data/maps/MauvilleCity/scripts.pory"
	////////// removeobject LOCALID_MAUVILLE_SCOTT
# 224 "data/maps/MauvilleCity/scripts.pory"
	releaseall
# 225 "data/maps/MauvilleCity/scripts.pory"
	end
# 226 "data/maps/MauvilleCity/scripts.pory"

# 227 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_ScottApproachPlayerNorth::
# 228 "data/maps/MauvilleCity/scripts.pory"
	addobject LOCALID_MAUVILLE_SCOTT
# 229 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_SCOTT, MauvilleCity_Movement_ScottApproachPlayerNorth
# 230 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 231 "data/maps/MauvilleCity/scripts.pory"
	return
# 232 "data/maps/MauvilleCity/scripts.pory"

# 233 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_ScottApproachPlayerEast::
# 234 "data/maps/MauvilleCity/scripts.pory"
	setobjectxyperm LOCALID_MAUVILLE_SCOTT, 12, 13
# 235 "data/maps/MauvilleCity/scripts.pory"
	addobject LOCALID_MAUVILLE_SCOTT
# 236 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_SCOTT, MauvilleCity_Movement_ScottApproachPlayerEast
# 237 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 238 "data/maps/MauvilleCity/scripts.pory"
	return
# 239 "data/maps/MauvilleCity/scripts.pory"

# 240 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_ScottExitNorth::
# 241 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchScottExitNorth
# 242 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_SCOTT, MauvilleCity_Movement_ScottExitNorth
# 243 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 244 "data/maps/MauvilleCity/scripts.pory"
	return
# 245 "data/maps/MauvilleCity/scripts.pory"

# 246 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_ScottExitEast::
# 247 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchScottExitEast
# 248 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_SCOTT, MauvilleCity_Movement_ScottExitEast
# 249 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 250 "data/maps/MauvilleCity/scripts.pory"
	return
# 251 "data/maps/MauvilleCity/scripts.pory"

# 252 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_BattleWally::
# 253 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyHereICome, MSGBOX_DEFAULT
# 254 "data/maps/MauvilleCity/scripts.pory"
	trainerbattle_no_intro TRAINER_WALLY_MAUVILLE, MauvilleCity_Text_WallyDefeat
# 255 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_WalkInPlaceFasterRight
# 256 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 257 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyIllGoBackToVerdanturf, MSGBOX_DEFAULT
# 258 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_FacePlayer
# 259 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 260 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_ThankYouNotEnoughToBattle, MSGBOX_DEFAULT
# 261 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_WalkInPlaceFasterRight
# 262 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 263 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_UncleNoNeedToBeDown, MSGBOX_DEFAULT
# 264 "data/maps/MauvilleCity/scripts.pory"
	return
# 265 "data/maps/MauvilleCity/scripts.pory"

# 266 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_DeclineWallyBattle::
# 267 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_DECLINED_WALLY_BATTLE_MAUVILLE
# 268 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyMyUncleWontKnowImStrong, MSGBOX_DEFAULT
# 269 "data/maps/MauvilleCity/scripts.pory"
	release
# 270 "data/maps/MauvilleCity/scripts.pory"
	end
# 271 "data/maps/MauvilleCity/scripts.pory"

# 272 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_WallyRequestBattleAgain::
# 273 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_FacePlayer
# 274 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 275 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyPleaseBattleMe, MSGBOX_YESNO
# 276 "data/maps/MauvilleCity/scripts.pory"
	goto MauvilleCity_EventScript_BattleWallyPrompt
# 277 "data/maps/MauvilleCity/scripts.pory"
	end
# 278 "data/maps/MauvilleCity/scripts.pory"

# 279 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallyExitNorth1:
# 280 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 281 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 282 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 283 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 284 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 285 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 286 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 287 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 288 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 289 "data/maps/MauvilleCity/scripts.pory"

# 290 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallyExitEast1:
# 291 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 292 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 293 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 294 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 295 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 296 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 297 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 298 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 299 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 300 "data/maps/MauvilleCity/scripts.pory"

# 301 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallyExitNorth2:
# 302 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 303 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 304 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 305 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 306 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 307 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 308 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 309 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 310 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 311 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 312 "data/maps/MauvilleCity/scripts.pory"
	delay_8
# 313 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 314 "data/maps/MauvilleCity/scripts.pory"

# 315 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallyExitEast2:
# 316 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 317 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 318 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 319 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 320 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 321 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 322 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 323 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 324 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 325 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 326 "data/maps/MauvilleCity/scripts.pory"
	delay_8
# 327 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 328 "data/maps/MauvilleCity/scripts.pory"

# 329 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchWallyExitNorth2:
# 330 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 331 "data/maps/MauvilleCity/scripts.pory"
	delay_8
# 332 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_left
# 333 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 334 "data/maps/MauvilleCity/scripts.pory"

# 335 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchWallyExitEast2:
# 336 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 337 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 338 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 339 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_left
# 340 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 341 "data/maps/MauvilleCity/scripts.pory"

# 342 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchScottExitNorth:
# 343 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 344 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_left
# 345 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 346 "data/maps/MauvilleCity/scripts.pory"

# 347 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchScottExitEast:
# 348 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 349 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 350 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_left
# 351 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 352 "data/maps/MauvilleCity/scripts.pory"

# 353 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchWallyExitEast1:
# 354 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 355 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_down
# 356 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 357 "data/maps/MauvilleCity/scripts.pory"

# 358 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchWallyExitNorth1:
# 359 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 360 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_left
# 361 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 362 "data/maps/MauvilleCity/scripts.pory"

# 363 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallysUncleExitNorth1:
# 364 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 365 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 366 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 367 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 368 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 369 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 370 "data/maps/MauvilleCity/scripts.pory"

# 371 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallysUncleExitEast1:
# 372 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 373 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 374 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 375 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 376 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 377 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 378 "data/maps/MauvilleCity/scripts.pory"

# 379 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerFaceUncleNorth:
# 380 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 381 "data/maps/MauvilleCity/scripts.pory"
	delay_8
# 382 "data/maps/MauvilleCity/scripts.pory"
	delay_4
# 383 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_down
# 384 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 385 "data/maps/MauvilleCity/scripts.pory"

# 386 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallysUncleApproachPlayerNorth:
# 387 "data/maps/MauvilleCity/scripts.pory"
	walk_right
# 388 "data/maps/MauvilleCity/scripts.pory"
	walk_right
# 389 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_up
# 390 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 391 "data/maps/MauvilleCity/scripts.pory"

# 392 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallysUncleApproachPlayerEast:
# 393 "data/maps/MauvilleCity/scripts.pory"
	walk_right
# 394 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 395 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 396 "data/maps/MauvilleCity/scripts.pory"

# 397 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallysUncleExitNorth2:
# 398 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 399 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 400 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 401 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 402 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 403 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 404 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 405 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 406 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 407 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 408 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 409 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 410 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 411 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 412 "data/maps/MauvilleCity/scripts.pory"

# 413 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallysUncleExitEast2:
# 414 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 415 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 416 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 417 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 418 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 419 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 420 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 421 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 422 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 423 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 424 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 425 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 426 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 427 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 428 "data/maps/MauvilleCity/scripts.pory"

# 429 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_ScottApproachPlayerNorth:
# 430 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 431 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 432 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 433 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 434 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 435 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 436 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 437 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 438 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 439 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 440 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_up
# 441 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 442 "data/maps/MauvilleCity/scripts.pory"

# 443 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_ScottApproachPlayerEast:
# 444 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 445 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 446 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 447 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 448 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 449 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 450 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 451 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 452 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 453 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 454 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 455 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 456 "data/maps/MauvilleCity/scripts.pory"

# 457 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_ScottExitNorth:
# 458 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 459 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 460 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 461 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 462 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 463 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 464 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 465 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 466 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 467 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 468 "data/maps/MauvilleCity/scripts.pory"

# 469 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_ScottExitEast:
# 470 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 471 "data/maps/MauvilleCity/scripts.pory"
	walk_left
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
	walk_left
# 478 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 479 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 480 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 481 "data/maps/MauvilleCity/scripts.pory"

# 482 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_Wattson::
# 483 "data/maps/MauvilleCity/scripts.pory"
	lock
# 484 "data/maps/MauvilleCity/scripts.pory"
	faceplayer
# 485 "data/maps/MauvilleCity/scripts.pory"
	goto_if_set FLAG_GOT_TM_THUNDERBOLT_FROM_WATTSON, MauvilleCity_EventScript_ReceivedThunderbolt
# 486 "data/maps/MauvilleCity/scripts.pory"
	goto_if_eq VAR_NEW_MAUVILLE_STATE, 2, MauvilleCity_EventScript_CompletedNewMauville
# 487 "data/maps/MauvilleCity/scripts.pory"
	goto_if_set FLAG_GOT_BASEMENT_KEY_FROM_WATTSON, MauvilleCity_EventScript_BegunNewMauville
# 488 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WattsonNeedFavorTakeKey, MSGBOX_DEFAULT
# 489 "data/maps/MauvilleCity/scripts.pory"
	giveitem ITEM_BASEMENT_KEY
# 490 "data/maps/MauvilleCity/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 491 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_GOT_BASEMENT_KEY_FROM_WATTSON
# 492 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WattsonWontBeChallenge, MSGBOX_DEFAULT
# 493 "data/maps/MauvilleCity/scripts.pory"
	release
# 494 "data/maps/MauvilleCity/scripts.pory"
	end
# 495 "data/maps/MauvilleCity/scripts.pory"

# 496 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_BegunNewMauville::
# 497 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WattsonWontBeChallenge, MSGBOX_DEFAULT
# 498 "data/maps/MauvilleCity/scripts.pory"
	release
# 499 "data/maps/MauvilleCity/scripts.pory"
	end
# 500 "data/maps/MauvilleCity/scripts.pory"

# 501 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_CompletedNewMauville::
# 502 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WattsonThanksTakeTM, MSGBOX_DEFAULT
# 503 "data/maps/MauvilleCity/scripts.pory"
	giveitem ITEM_TM_THUNDERBOLT
# 504 "data/maps/MauvilleCity/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 505 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_GOT_TM_THUNDERBOLT_FROM_WATTSON
# 506 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WattsonYoungTakeCharge, MSGBOX_DEFAULT
# 507 "data/maps/MauvilleCity/scripts.pory"
	release
# 508 "data/maps/MauvilleCity/scripts.pory"
	end
# 509 "data/maps/MauvilleCity/scripts.pory"

# 510 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_ReceivedThunderbolt::
# 511 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WattsonYoungTakeCharge, MSGBOX_DEFAULT
# 512 "data/maps/MauvilleCity/scripts.pory"
	release
# 513 "data/maps/MauvilleCity/scripts.pory"
	end
# 514 "data/maps/MauvilleCity/scripts.pory"

# 515 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_RegisterWallyCall::
# 516 "data/maps/MauvilleCity/scripts.pory"
	lockall
# 517 "data/maps/MauvilleCity/scripts.pory"
	pokenavcall MauvilleCity_Text_WallyPokenavCall
# 518 "data/maps/MauvilleCity/scripts.pory"
	waitmessage
# 519 "data/maps/MauvilleCity/scripts.pory"
	delay 30
# 520 "data/maps/MauvilleCity/scripts.pory"
	playfanfare MUS_REGISTER_MATCH_CALL
# 521 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_RegisteredWally, MSGBOX_DEFAULT
# 522 "data/maps/MauvilleCity/scripts.pory"
	waitfanfare
# 523 "data/maps/MauvilleCity/scripts.pory"
	closemessage
# 524 "data/maps/MauvilleCity/scripts.pory"
	delay 30
# 525 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_ENABLE_WALLY_MATCH_CALL
# 526 "data/maps/MauvilleCity/scripts.pory"
	clearflag FLAG_ENABLE_FIRST_WALLY_POKENAV_CALL
# 527 "data/maps/MauvilleCity/scripts.pory"
	releaseall
# 528 "data/maps/MauvilleCity/scripts.pory"
	end
# 529 "data/maps/MauvilleCity/scripts.pory"

# 530 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_UncleHesTooPeppy:
# 531 "data/maps/MauvilleCity/scripts.pory"
	.string "UNCLE: It's because of POKéMON that\n"
# 532 "data/maps/MauvilleCity/scripts.pory"
	.string "this boy's got more pep, I suppose…\l"
# 533 "data/maps/MauvilleCity/scripts.pory"
	.string "But he's become a bit too peppy…$"
# 534 "data/maps/MauvilleCity/scripts.pory"

# 535 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyWantToChallengeGym:
# 536 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: UNCLE, I really think\n"
# 537 "data/maps/MauvilleCity/scripts.pory"
	.string "I'm ready now!\p"
# 538 "data/maps/MauvilleCity/scripts.pory"
	.string "I've trained hard and grown a lot.\n"
# 539 "data/maps/MauvilleCity/scripts.pory"
	.string "I want to challenge this GYM\l"
# 540 "data/maps/MauvilleCity/scripts.pory"
	.string "and prove how strong I've become.$"
# 541 "data/maps/MauvilleCity/scripts.pory"

# 542 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_UncleYourePushingIt:
# 543 "data/maps/MauvilleCity/scripts.pory"
	.string "UNCLE: Easy there, LUKA.\p"
# 544 "data/maps/MauvilleCity/scripts.pory"
	.string "You do have other priorities right now.\p"
# 545 "data/maps/MauvilleCity/scripts.pory"
	.string "With all your research into the\l"
# 546 "data/maps/MauvilleCity/scripts.pory"
	.string "mysteries of that comet, you haven't\l"
# 547 "data/maps/MauvilleCity/scripts.pory"
	.string "had as much time to train.\p"
# 548 "data/maps/MauvilleCity/scripts.pory"
	.string "A bit more preparation wouldn't hurt.$"
# 549 "data/maps/MauvilleCity/scripts.pory"

# 550 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyWeCanBeatAnyone:
# 551 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: You're right… maybe I do need\l"
# 552 "data/maps/MauvilleCity/scripts.pory"
	.string "to focus a bit more on my training.\p"
# 553 "data/maps/MauvilleCity/scripts.pory"
	.string "That GYM LEADER really does seem\n"
# 554 "data/maps/MauvilleCity/scripts.pory"
	.string "tougher than I expected.$"
# 555 "data/maps/MauvilleCity/scripts.pory"

# 556 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyWillYouBattleMe:
# 557 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: Oh! {PLAYER}, you're here?\p"
# 558 "data/maps/MauvilleCity/scripts.pory"
	.string "Nice timing! You're here to challenge\n"
# 559 "data/maps/MauvilleCity/scripts.pory"
	.string "the GYM too, right?\p"
# 560 "data/maps/MauvilleCity/scripts.pory"
	.string "Then this is the perfect chance.\p"
# 561 "data/maps/MauvilleCity/scripts.pory"
	.string "Let's battle and see if I really\n"
# 562 "data/maps/MauvilleCity/scripts.pory"
	.string "need more training!$"
# 563 "data/maps/MauvilleCity/scripts.pory"

# 564 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyMyUncleWontKnowImStrong:
# 565 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: Huh? If you won't battle me,\p"
# 566 "data/maps/MauvilleCity/scripts.pory"
	.string "{PLAYER}, how will you ever prove\n"
# 567 "data/maps/MauvilleCity/scripts.pory"
	.string "you're ready for the GYM?\p"
# 568 "data/maps/MauvilleCity/scripts.pory"
	.string "If you can't face me now,\n"
# 569 "data/maps/MauvilleCity/scripts.pory"
	.string "how will you face the LEADER?$"
# 570 "data/maps/MauvilleCity/scripts.pory"

# 571 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_UncleCanYouBattleWally:
# 572 "data/maps/MauvilleCity/scripts.pory"
	.string "UNCLE: You're {PLAYER}{KUN}, right?\p"
# 573 "data/maps/MauvilleCity/scripts.pory"
	.string "CALENDULA has done a great job\n"
# 574 "data/maps/MauvilleCity/scripts.pory"
	.string "guiding you both this far.\p"
# 575 "data/maps/MauvilleCity/scripts.pory"
	.string "You've all grown so much already.\n"
# 576 "data/maps/MauvilleCity/scripts.pory"
	.string "I'm sure this will be a great battle!$"
# 577 "data/maps/MauvilleCity/scripts.pory"

# 578 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyPleaseBattleMe:
# 579 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: {PLAYER}, nice!\p"
# 580 "data/maps/MauvilleCity/scripts.pory"
	.string "Let's have an amazing battle.\n"
# 581 "data/maps/MauvilleCity/scripts.pory"
	.string "I'm sure we'll both learn a lot!$"
# 582 "data/maps/MauvilleCity/scripts.pory"

# 583 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyHereICome:
# 584 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: {PLAYER}, thank you!\p"
# 585 "data/maps/MauvilleCity/scripts.pory"
	.string "All right then!\n"
# 586 "data/maps/MauvilleCity/scripts.pory"
	.string "Get ready!$"
# 587 "data/maps/MauvilleCity/scripts.pory"

# 588 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyDefeat:
# 589 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: I see now…\p"
# 590 "data/maps/MauvilleCity/scripts.pory"
	.string "You really do have a natural talent\n"
# 591 "data/maps/MauvilleCity/scripts.pory"
	.string "for battles.\p"
# 592 "data/maps/MauvilleCity/scripts.pory"
	.string "I focused too much on research\n"
# 593 "data/maps/MauvilleCity/scripts.pory"
	.string "and not enough on training.\p"
# 594 "data/maps/MauvilleCity/scripts.pory"
	.string "Congratulations, {PLAYER}.\n"
# 595 "data/maps/MauvilleCity/scripts.pory"
	.string "You're truly impressive.$"
# 596 "data/maps/MauvilleCity/scripts.pory"
	
# 597 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyIllGoBackToVerdanturf:
# 598 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: UNCLE… and {PLAYER}...\n"
# 599 "data/maps/MauvilleCity/scripts.pory"
	.string "I'll go back to VERDANTURF…$"
# 600 "data/maps/MauvilleCity/scripts.pory"

# 601 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_ThankYouNotEnoughToBattle:
# 602 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: {PLAYER}, thank you.\p"
# 603 "data/maps/MauvilleCity/scripts.pory"
	.string "I realize now that I need to train\n"
# 604 "data/maps/MauvilleCity/scripts.pory"
	.string "my POKéMON more… and catch new ones.\p"
# 605 "data/maps/MauvilleCity/scripts.pory"
	.string "I've been so focused on uncovering\n"
# 606 "data/maps/MauvilleCity/scripts.pory"
	.string "the truth behind that comet\l"
# 607 "data/maps/MauvilleCity/scripts.pory"
	.string "that I let my training slip.\p"
# 608 "data/maps/MauvilleCity/scripts.pory"
	.string "But that's okay.\n"
# 609 "data/maps/MauvilleCity/scripts.pory"
	.string "This just gave me clarity.$"
# 610 "data/maps/MauvilleCity/scripts.pory"

# 611 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_UncleNoNeedToBeDown:
# 612 "data/maps/MauvilleCity/scripts.pory"
	.string "UNCLE: That's the spirit, LUKA.\p"
# 613 "data/maps/MauvilleCity/scripts.pory"
	.string "Curiosity and strength don't cancel\n"
# 614 "data/maps/MauvilleCity/scripts.pory"
	.string "each other out.\p"
# 615 "data/maps/MauvilleCity/scripts.pory"
	.string "Train, explore, and learn.\n"
# 616 "data/maps/MauvilleCity/scripts.pory"
	.string "All of that will make you stronger.\p"
# 617 "data/maps/MauvilleCity/scripts.pory"
	.string "Come on, let's head home.\n"
# 618 "data/maps/MauvilleCity/scripts.pory"
	.string "You’ve got a path ahead of you.$"
# 619 "data/maps/MauvilleCity/scripts.pory"

# 620 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_UncleVisitUsSometime:
# 621 "data/maps/MauvilleCity/scripts.pory"
	.string "UNCLE: {PLAYER}{KUN}, thank you for\n"
# 622 "data/maps/MauvilleCity/scripts.pory"
	.string "pushing LUKA forward today.\p"
# 623 "data/maps/MauvilleCity/scripts.pory"
	.string "He may have lost, but he gained\n"
# 624 "data/maps/MauvilleCity/scripts.pory"
	.string "something far more important.\p"
# 625 "data/maps/MauvilleCity/scripts.pory"
	.string "Why don't you visit us in VERDANTURF\n"
# 626 "data/maps/MauvilleCity/scripts.pory"
	.string "sometime?\l"
# 627 "data/maps/MauvilleCity/scripts.pory"
	.string "Next time, he must be ready,\n"
# 628 "data/maps/MauvilleCity/scripts.pory"
	.string "both in mind and in strength.$"
# 629 "data/maps/MauvilleCity/scripts.pory"

# 630 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyPokenavCall:
# 631 "data/maps/MauvilleCity/scripts.pory"
	.string "… … … … … …\n" 
# 632 "data/maps/MauvilleCity/scripts.pory"
	.string "… … … … … Beep!\p"
# 633 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: Oh, hi, {PLAYER}!\p"
# 634 "data/maps/MauvilleCity/scripts.pory"
	.string "Professor CALENDULA gave me\n"
# 635 "data/maps/MauvilleCity/scripts.pory"
	.string "a PokeNav today.\p"
# 636 "data/maps/MauvilleCity/scripts.pory"
	.string "She told me to focus on my\n"
# 637 "data/maps/MauvilleCity/scripts.pory"
	.string "training and research.\p"
# 638 "data/maps/MauvilleCity/scripts.pory"
	.string "If I learn anything important\n"
# 639 "data/maps/MauvilleCity/scripts.pory"
	.string "about the comet or Hoenn,\l"
# 640 "data/maps/MauvilleCity/scripts.pory"
	.string "I will contact you right away!\p"
# 641 "data/maps/MauvilleCity/scripts.pory"
	.string "Talk to you soon, {PLAYER}!\p"
# 642 "data/maps/MauvilleCity/scripts.pory"
	.string "… … … … … …\n" 
# 643 "data/maps/MauvilleCity/scripts.pory"
	.string "… … … … … Click!$"
# 644 "data/maps/MauvilleCity/scripts.pory"

# 645 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_RegisteredWally:
# 646 "data/maps/MauvilleCity/scripts.pory"
	.string "Registered LUKA\n"
# 647 "data/maps/MauvilleCity/scripts.pory"
	.string "in the POKéNAV.$"
# 648 "data/maps/MauvilleCity/scripts.pory"

# 649 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_ScottYouDidntHoldBack:
# 650 "data/maps/MauvilleCity/scripts.pory"
	.string "SCOTT: Hehe…\n"
# 651 "data/maps/MauvilleCity/scripts.pory"
	.string "I was watching that match!\p"
# 652 "data/maps/MauvilleCity/scripts.pory"
	.string "You're friends with that boy LUKA,\n"
# 653 "data/maps/MauvilleCity/scripts.pory"
	.string "aren't you?\p"
# 654 "data/maps/MauvilleCity/scripts.pory"
	.string "But you didn't hold anything back\n"
# 655 "data/maps/MauvilleCity/scripts.pory"
	.string "and beat him impressively.\p"
# 656 "data/maps/MauvilleCity/scripts.pory"
	.string "Yeah! That's what a real POKéMON\n"
# 657 "data/maps/MauvilleCity/scripts.pory"
	.string "battle is all about!\p"
# 658 "data/maps/MauvilleCity/scripts.pory"
	.string "I idolize TRAINERS like that!\p"
# 659 "data/maps/MauvilleCity/scripts.pory"
	.string "… … … … … …\n"
# 660 "data/maps/MauvilleCity/scripts.pory"
	.string "I'll be cheering for you!$"
# 661 "data/maps/MauvilleCity/scripts.pory"

# 662 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WattsonNeedFavorTakeKey:
# 663 "data/maps/MauvilleCity/scripts.pory"
	.string "DEN: Oh, {PLAYER}{KUN}!\n"
# 664 "data/maps/MauvilleCity/scripts.pory"
	.string "You look like you have a lot of zip!\l"
# 665 "data/maps/MauvilleCity/scripts.pory"
	.string "That's a good thing, wahahahaha!\p"
# 666 "data/maps/MauvilleCity/scripts.pory"
	.string "Fine! I've decided!\n"
# 667 "data/maps/MauvilleCity/scripts.pory"
	.string "I need a favor, {PLAYER}{KUN}!\p"
# 668 "data/maps/MauvilleCity/scripts.pory"
	.string "MAUVILLE CITY has an underground\n"
# 669 "data/maps/MauvilleCity/scripts.pory"
	.string "sector called NEW MAUVILLE.\p"
# 670 "data/maps/MauvilleCity/scripts.pory"
	.string "{PLAYER}{KUN}, I'd like you to go there and\n"
# 671 "data/maps/MauvilleCity/scripts.pory"
	.string "switch off the GENERATOR.\p"
# 672 "data/maps/MauvilleCity/scripts.pory"
	.string "The GENERATOR has been running a bit\n"
# 673 "data/maps/MauvilleCity/scripts.pory"
	.string "haywire. It's getting unsafe.\p"
# 674 "data/maps/MauvilleCity/scripts.pory"
	.string "Here, this is the KEY to get into\n"
# 675 "data/maps/MauvilleCity/scripts.pory"
	.string "NEW MAUVILLE.$"
# 676 "data/maps/MauvilleCity/scripts.pory"

# 677 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WattsonWontBeChallenge:
# 678 "data/maps/MauvilleCity/scripts.pory"
	.string "DEN: Don't you worry about it.\n"
# 679 "data/maps/MauvilleCity/scripts.pory"
	.string "It won't be a challenge to you.\p"
# 680 "data/maps/MauvilleCity/scripts.pory"
	.string "The entrance to NEW MAUVILLE is just\n"
# 681 "data/maps/MauvilleCity/scripts.pory"
	.string "a short SURF away from ROUTE 110.\p"
# 682 "data/maps/MauvilleCity/scripts.pory"
	.string "That's it, then, you have my trust!\n"
# 683 "data/maps/MauvilleCity/scripts.pory"
	.string "Wahahahaha!$"
# 684 "data/maps/MauvilleCity/scripts.pory"

# 685 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WattsonThanksTakeTM:
# 686 "data/maps/MauvilleCity/scripts.pory"
	.string "DEN: Wahahahaha!\p"
# 687 "data/maps/MauvilleCity/scripts.pory"
	.string "I knew it, {PLAYER}{KUN}! I knew I'd made\n"
# 688 "data/maps/MauvilleCity/scripts.pory"
	.string "the right choice asking you!\p"
# 689 "data/maps/MauvilleCity/scripts.pory"
	.string "This is my thanks--a TM containing\n"
# 690 "data/maps/MauvilleCity/scripts.pory"
	.string "THUNDERBOLT!\p"
# 691 "data/maps/MauvilleCity/scripts.pory"
	.string "Go on, you've earned it!$"
# 692 "data/maps/MauvilleCity/scripts.pory"

# 693 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WattsonYoungTakeCharge:
# 694 "data/maps/MauvilleCity/scripts.pory"
	.string "DEN: Wahahahaha!\p"
# 695 "data/maps/MauvilleCity/scripts.pory"
	.string "It pleases me to no end to see\n"
# 696 "data/maps/MauvilleCity/scripts.pory"
	.string "the young step up and take charge!$"
# 697 "data/maps/MauvilleCity/scripts.pory"

# 698 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_NurseHurtMonBackToHealth:
# 699 "data/maps/MauvilleCity/scripts.pory"
	.string "You have heard about DEN, right?\n"
# 700 "data/maps/MauvilleCity/scripts.pory"
	.string "The Gym Leader here.\p"
# 701 "data/maps/MauvilleCity/scripts.pory"
	.string "They say he is a genius with\n"
# 702 "data/maps/MauvilleCity/scripts.pory"
	.string "electricity and POKéMON.\p"
# 703 "data/maps/MauvilleCity/scripts.pory"
	.string "But also a little unstable.\n"
# 704 "data/maps/MauvilleCity/scripts.pory"
	.string "His experiments go too far sometimes.\p"
# 705 "data/maps/MauvilleCity/scripts.pory"
	.string "Strange machines, sparks everywhere,\n"
# 706 "data/maps/MauvilleCity/scripts.pory"
	.string "lights flashing all night.\p"
# 707 "data/maps/MauvilleCity/scripts.pory"
	.string "Some people find him scary.\n"
# 708 "data/maps/MauvilleCity/scripts.pory"
	.string "Others call him brilliant.\p"
# 709 "data/maps/MauvilleCity/scripts.pory"
	.string "Maybe both are true.$"
# 710 "data/maps/MauvilleCity/scripts.pory"

# 711 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_AllSortsOfPeopleComeThrough:
# 712 "data/maps/MauvilleCity/scripts.pory"
	.string "Mauville sits at the crossroads.\n"
# 713 "data/maps/MauvilleCity/scripts.pory"
	.string "People come from every direction.\p"
# 714 "data/maps/MauvilleCity/scripts.pory"
	.string "Trainers, merchants, engineers,\n"
# 715 "data/maps/MauvilleCity/scripts.pory"
	.string "and travelers just passing through.\p"
# 716 "data/maps/MauvilleCity/scripts.pory"
	.string "I've seen all kinds of outfits here.\n"
# 717 "data/maps/MauvilleCity/scripts.pory"
	.string "Nothing really surprises me anymore.\p"
# 718 "data/maps/MauvilleCity/scripts.pory"
	.string "But someone dressed like you?\n"
# 719 "data/maps/MauvilleCity/scripts.pory"
	.string "That cape is something else.\p"
# 720 "data/maps/MauvilleCity/scripts.pory"
	.string "Kind of stylish, I guess.\n"
# 721 "data/maps/MauvilleCity/scripts.pory"
	.string "Not my look, though. Haha.$"
# 722 "data/maps/MauvilleCity/scripts.pory"

# 723 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_RydelVeryGenerous:
# 724 "data/maps/MauvilleCity/scripts.pory"
	.string "Have you been to RYDEL'S CYCLES yet?\p"
# 725 "data/maps/MauvilleCity/scripts.pory"
	.string "RYDEL, the owner, is a very generous\n"
# 726 "data/maps/MauvilleCity/scripts.pory"
	.string "man.$"
# 727 "data/maps/MauvilleCity/scripts.pory"

# 728 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_PokemonCanJumpYouOnBike:
# 729 "data/maps/MauvilleCity/scripts.pory"
	.string "Mauville City hums with power.\n"
# 730 "data/maps/MauvilleCity/scripts.pory"
	.string "They say the energy here is so strong\l"
# 731 "data/maps/MauvilleCity/scripts.pory"
	.string "it can make POKéMON behave strangely.\p"
# 732 "data/maps/MauvilleCity/scripts.pory"
	.string "Some trainers claim they felt their\n"
# 733 "data/maps/MauvilleCity/scripts.pory"
	.string "own POKéMON twitch without warning.\p"
# 734 "data/maps/MauvilleCity/scripts.pory"
	.string "Others swear strange lights flicker\n"
# 735 "data/maps/MauvilleCity/scripts.pory"
	.string "near the power grid at night.\p"
# 736 "data/maps/MauvilleCity/scripts.pory"
	.string "If you pay attention, you might\n"
# 737 "data/maps/MauvilleCity/scripts.pory"
	.string "discover something no one else has.$"
# 738 "data/maps/MauvilleCity/scripts.pory"

# 739 "data/maps/MauvilleCity/scripts.pory"

# 740 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_CitySign:
# 741 "data/maps/MauvilleCity/scripts.pory"
	.string "MAUVILLE CITY\n"
# 742 "data/maps/MauvilleCity/scripts.pory"
	.string "“The bright and shiny city of fun!”$"
# 743 "data/maps/MauvilleCity/scripts.pory"

# 744 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_GymSign:
# 745 "data/maps/MauvilleCity/scripts.pory"
	.string "MAUVILLE CITY POKeMON GYM\n"
# 746 "data/maps/MauvilleCity/scripts.pory"
	.string "LEADER: DEN\l"
# 747 "data/maps/MauvilleCity/scripts.pory"
	.string "The brilliant, electrifying prodigy!$"
# 748 "data/maps/MauvilleCity/scripts.pory"

# 749 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_BikeShopSign:
# 750 "data/maps/MauvilleCity/scripts.pory"
	.string "“Ride in gravel and shake up your\n"
# 751 "data/maps/MauvilleCity/scripts.pory"
	.string "soul!”\l"
# 752 "data/maps/MauvilleCity/scripts.pory"
	.string "RYDEL'S CYCLES$"
# 753 "data/maps/MauvilleCity/scripts.pory"

# 754 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_GameCornerSign:
# 755 "data/maps/MauvilleCity/scripts.pory"
	.string "“The play spot for all!”\n"
# 756 "data/maps/MauvilleCity/scripts.pory"
	.string "MAUVILLE GAME CORNER$"
# 757 "data/maps/MauvilleCity/scripts.pory"

# 758 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_ExplainTV:
# 759 "data/maps/MauvilleCity/scripts.pory"
	.string "Hey, have you seen the news lately?\p"
# 760 "data/maps/MauvilleCity/scripts.pory"
	.string "Ever since that meteor passed,\n"
# 761 "data/maps/MauvilleCity/scripts.pory"
	.string "it's all they talk about on TV.\p"
# 762 "data/maps/MauvilleCity/scripts.pory"
	.string "No one knows where it came from,\n"
# 763 "data/maps/MauvilleCity/scripts.pory"
	.string "or what it really was.\p"
# 764 "data/maps/MauvilleCity/scripts.pory"
	.string "People are curious.\n"
# 765 "data/maps/MauvilleCity/scripts.pory"
	.string "Some are even scared.\p"
# 766 "data/maps/MauvilleCity/scripts.pory"
	.string "I keep watching, hoping they find\n"
# 767 "data/maps/MauvilleCity/scripts.pory"
	.string "some new clue or explanation.\p"
# 768 "data/maps/MauvilleCity/scripts.pory"
	.string "You should watch TV too.\n"
# 769 "data/maps/MauvilleCity/scripts.pory"
	.string "You never know what you might learn.$"
# 770 "data/maps/MauvilleCity/scripts.pory"

# 771 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_BeenCheckingOutTV:
# 772 "data/maps/MauvilleCity/scripts.pory"
	.string "Hi, have you been checking out TVs?$"
