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
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 145 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyWantToChallengeGym, MSGBOX_DEFAULT
# 146 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 147 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_UncleYourePushingIt, MSGBOX_DEFAULT
# 148 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 149 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyWeCanBeatAnyone, MSGBOX_DEFAULT
# 150 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 151 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_FacePlayer
# 152 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 153 "data/maps/MauvilleCity/scripts.pory"
	playse SE_PIN
# 154 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_ExclamationMark
# 155 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 156 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_Delay48
# 157 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 158 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 159 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyWillYouBattleMe, MSGBOX_YESNO
# 160 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 161 "data/maps/MauvilleCity/scripts.pory"
	goto MauvilleCity_EventScript_BattleWallyPrompt
# 162 "data/maps/MauvilleCity/scripts.pory"
	end
# 163 "data/maps/MauvilleCity/scripts.pory"

# 164 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_BattleWallyPrompt::
# 165 "data/maps/MauvilleCity/scripts.pory"
	call_if_eq VAR_RESULT, YES, MauvilleCity_EventScript_BattleWally
# 166 "data/maps/MauvilleCity/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_EventScript_DeclineWallyBattle
# 167 "data/maps/MauvilleCity/scripts.pory"
	closemessage
# 168 "data/maps/MauvilleCity/scripts.pory"
	switch VAR_FACING
# 169 "data/maps/MauvilleCity/scripts.pory"
	case DIR_NORTH, MauvilleCity_EventScript_WallyAndUncleExitNorth
# 170 "data/maps/MauvilleCity/scripts.pory"
	case DIR_EAST, MauvilleCity_EventScript_WallyAndUncleExitEast
# 171 "data/maps/MauvilleCity/scripts.pory"
	end
# 172 "data/maps/MauvilleCity/scripts.pory"

# 173 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_WallyAndUncleExitNorth::
# 174 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchWallyExitNorth1
# 175 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, MauvilleCity_Movement_WallyExitNorth1
# 176 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleExitNorth1
# 177 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 178 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_WalkInPlaceFasterRight
# 179 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 180 "data/maps/MauvilleCity/scripts.pory"
	delay 30
# 181 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerFaceUncleNorth
# 182 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleApproachPlayerNorth
# 183 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 184 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_UncleVisitUsSometime, MSGBOX_DEFAULT
# 185 "data/maps/MauvilleCity/scripts.pory"
	closemessage
# 186 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchWallyExitNorth2
# 187 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleExitNorth2
# 188 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, MauvilleCity_Movement_WallyExitNorth2
# 189 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 190 "data/maps/MauvilleCity/scripts.pory"
	goto MauvilleCity_EventScript_DefeatedWally
# 191 "data/maps/MauvilleCity/scripts.pory"
	end
# 192 "data/maps/MauvilleCity/scripts.pory"

# 193 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_WallyAndUncleExitEast::
# 194 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchWallyExitEast1
# 195 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, MauvilleCity_Movement_WallyExitEast1
# 196 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleExitEast1
# 197 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 198 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_WalkInPlaceFasterRight
# 199 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 200 "data/maps/MauvilleCity/scripts.pory"
	delay 30
# 201 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleApproachPlayerEast
# 202 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 203 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_UncleVisitUsSometime, MSGBOX_DEFAULT
# 204 "data/maps/MauvilleCity/scripts.pory"
	closemessage
# 205 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchWallyExitEast2
# 206 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLYS_UNCLE, MauvilleCity_Movement_WallysUncleExitEast2
# 207 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, MauvilleCity_Movement_WallyExitEast2
# 208 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 209 "data/maps/MauvilleCity/scripts.pory"
	goto MauvilleCity_EventScript_DefeatedWally
# 210 "data/maps/MauvilleCity/scripts.pory"
	end
# 211 "data/maps/MauvilleCity/scripts.pory"

# 212 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_DefeatedWally::
# 213 "data/maps/MauvilleCity/scripts.pory"
	removeobject LOCALID_MAUVILLE_WALLY
# 214 "data/maps/MauvilleCity/scripts.pory"
	removeobject LOCALID_MAUVILLE_WALLYS_UNCLE
# 215 "data/maps/MauvilleCity/scripts.pory"
	clearflag FLAG_HIDE_VERDANTURF_TOWN_WANDAS_HOUSE_WALLY
# 216 "data/maps/MauvilleCity/scripts.pory"
	clearflag FLAG_HIDE_VERDANTURF_TOWN_WANDAS_HOUSE_WALLYS_UNCLE
# 217 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_DEFEATED_WALLY_MAUVILLE
# 218 "data/maps/MauvilleCity/scripts.pory"
	setvar VAR_WALLY_CALL_STEP_COUNTER, 0
# 219 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_ENABLE_FIRST_WALLY_POKENAV_CALL
# 220 "data/maps/MauvilleCity/scripts.pory"
	//////// call_if_eq VAR_FACING, DIR_NORTH, MauvilleCity_EventScript_ScottApproachPlayerNorth
# 221 "data/maps/MauvilleCity/scripts.pory"
	/////// call_if_eq VAR_FACING, DIR_EAST, MauvilleCity_EventScript_ScottApproachPlayerEast
# 222 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 223 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 224 "data/maps/MauvilleCity/scripts.pory"
	////////msgbox MauvilleCity_Text_ScottYouDidntHoldBack, MSGBOX_DEFAULT
# 225 "data/maps/MauvilleCity/scripts.pory"
	//////// closemessage
# 226 "data/maps/MauvilleCity/scripts.pory"
	//////// addvar VAR_SCOTT_STATE, 1
# 227 "data/maps/MauvilleCity/scripts.pory"
	//////// call_if_eq VAR_FACING, DIR_NORTH, MauvilleCity_EventScript_ScottExitNorth
# 228 "data/maps/MauvilleCity/scripts.pory"
	/////// call_if_eq VAR_FACING, DIR_EAST, MauvilleCity_EventScript_ScottExitEast
# 229 "data/maps/MauvilleCity/scripts.pory"
	////////// removeobject LOCALID_MAUVILLE_SCOTT
# 230 "data/maps/MauvilleCity/scripts.pory"
	releaseall
# 231 "data/maps/MauvilleCity/scripts.pory"
	end
# 232 "data/maps/MauvilleCity/scripts.pory"

# 233 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_ScottApproachPlayerNorth::
# 234 "data/maps/MauvilleCity/scripts.pory"
	addobject LOCALID_MAUVILLE_SCOTT
# 235 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_SCOTT, MauvilleCity_Movement_ScottApproachPlayerNorth
# 236 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 237 "data/maps/MauvilleCity/scripts.pory"
	return
# 238 "data/maps/MauvilleCity/scripts.pory"

# 239 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_ScottApproachPlayerEast::
# 240 "data/maps/MauvilleCity/scripts.pory"
	setobjectxyperm LOCALID_MAUVILLE_SCOTT, 12, 13
# 241 "data/maps/MauvilleCity/scripts.pory"
	addobject LOCALID_MAUVILLE_SCOTT
# 242 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_SCOTT, MauvilleCity_Movement_ScottApproachPlayerEast
# 243 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 244 "data/maps/MauvilleCity/scripts.pory"
	return
# 245 "data/maps/MauvilleCity/scripts.pory"

# 246 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_ScottExitNorth::
# 247 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchScottExitNorth
# 248 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_SCOTT, MauvilleCity_Movement_ScottExitNorth
# 249 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 250 "data/maps/MauvilleCity/scripts.pory"
	return
# 251 "data/maps/MauvilleCity/scripts.pory"

# 252 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_ScottExitEast::
# 253 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_PLAYER, MauvilleCity_Movement_PlayerWatchScottExitEast
# 254 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_SCOTT, MauvilleCity_Movement_ScottExitEast
# 255 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 256 "data/maps/MauvilleCity/scripts.pory"
	return
# 257 "data/maps/MauvilleCity/scripts.pory"

# 258 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_BattleWally::
# 259 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 260 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyHereICome, MSGBOX_DEFAULT
# 261 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 262 "data/maps/MauvilleCity/scripts.pory"
	trainerbattle_no_intro TRAINER_WALLY_MAUVILLE, MauvilleCity_Text_WallyDefeat
# 263 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_WalkInPlaceFasterRight
# 264 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 265 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 266 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyIllGoBackToVerdanturf, MSGBOX_DEFAULT
# 267 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 268 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_FacePlayer
# 269 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 270 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 271 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_ThankYouNotEnoughToBattle, MSGBOX_DEFAULT
# 272 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 273 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_WalkInPlaceFasterRight
# 274 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 275 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_UncleNoNeedToBeDown, MSGBOX_DEFAULT
# 276 "data/maps/MauvilleCity/scripts.pory"
	return
# 277 "data/maps/MauvilleCity/scripts.pory"

# 278 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_DeclineWallyBattle::
# 279 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_DECLINED_WALLY_BATTLE_MAUVILLE
# 280 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 281 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyMyUncleWontKnowImStrong, MSGBOX_DEFAULT
# 282 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 283 "data/maps/MauvilleCity/scripts.pory"
	release
# 284 "data/maps/MauvilleCity/scripts.pory"
	end
# 285 "data/maps/MauvilleCity/scripts.pory"

# 286 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_WallyRequestBattleAgain::
# 287 "data/maps/MauvilleCity/scripts.pory"
	applymovement LOCALID_MAUVILLE_WALLY, Common_Movement_FacePlayer
# 288 "data/maps/MauvilleCity/scripts.pory"
	waitmovement 0
# 289 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 290 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WallyPleaseBattleMe, MSGBOX_YESNO
# 291 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 292 "data/maps/MauvilleCity/scripts.pory"
	goto MauvilleCity_EventScript_BattleWallyPrompt
# 293 "data/maps/MauvilleCity/scripts.pory"
	end
# 294 "data/maps/MauvilleCity/scripts.pory"

# 295 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallyExitNorth1:
# 296 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 297 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 298 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 299 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 300 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 301 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 302 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 303 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 304 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 305 "data/maps/MauvilleCity/scripts.pory"

# 306 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallyExitEast1:
# 307 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 308 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 309 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 310 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 311 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 312 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 313 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 314 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 315 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 316 "data/maps/MauvilleCity/scripts.pory"

# 317 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallyExitNorth2:
# 318 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 319 "data/maps/MauvilleCity/scripts.pory"
	delay_16
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
	walk_left
# 327 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 328 "data/maps/MauvilleCity/scripts.pory"
	delay_8
# 329 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 330 "data/maps/MauvilleCity/scripts.pory"

# 331 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallyExitEast2:
# 332 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 333 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 334 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 335 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 336 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 337 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 338 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 339 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 340 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 341 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 342 "data/maps/MauvilleCity/scripts.pory"
	delay_8
# 343 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 344 "data/maps/MauvilleCity/scripts.pory"

# 345 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchWallyExitNorth2:
# 346 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 347 "data/maps/MauvilleCity/scripts.pory"
	delay_8
# 348 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_left
# 349 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 350 "data/maps/MauvilleCity/scripts.pory"

# 351 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchWallyExitEast2:
# 352 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 353 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 354 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 355 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_left
# 356 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 357 "data/maps/MauvilleCity/scripts.pory"

# 358 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchScottExitNorth:
# 359 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 360 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_left
# 361 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 362 "data/maps/MauvilleCity/scripts.pory"

# 363 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchScottExitEast:
# 364 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 365 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 366 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_left
# 367 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 368 "data/maps/MauvilleCity/scripts.pory"

# 369 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchWallyExitEast1:
# 370 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 371 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_down
# 372 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 373 "data/maps/MauvilleCity/scripts.pory"

# 374 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerWatchWallyExitNorth1:
# 375 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 376 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_left
# 377 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 378 "data/maps/MauvilleCity/scripts.pory"

# 379 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallysUncleExitNorth1:
# 380 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 381 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 382 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 383 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 384 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 385 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 386 "data/maps/MauvilleCity/scripts.pory"

# 387 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallysUncleExitEast1:
# 388 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 389 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 390 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 391 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 392 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 393 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 394 "data/maps/MauvilleCity/scripts.pory"

# 395 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_PlayerFaceUncleNorth:
# 396 "data/maps/MauvilleCity/scripts.pory"
	delay_16
# 397 "data/maps/MauvilleCity/scripts.pory"
	delay_8
# 398 "data/maps/MauvilleCity/scripts.pory"
	delay_4
# 399 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_down
# 400 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 401 "data/maps/MauvilleCity/scripts.pory"

# 402 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallysUncleApproachPlayerNorth:
# 403 "data/maps/MauvilleCity/scripts.pory"
	walk_right
# 404 "data/maps/MauvilleCity/scripts.pory"
	walk_right
# 405 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_up
# 406 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 407 "data/maps/MauvilleCity/scripts.pory"

# 408 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallysUncleApproachPlayerEast:
# 409 "data/maps/MauvilleCity/scripts.pory"
	walk_right
# 410 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 411 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 412 "data/maps/MauvilleCity/scripts.pory"

# 413 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_WallysUncleExitNorth2:
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
MauvilleCity_Movement_WallysUncleExitEast2:
# 430 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 431 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 432 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 433 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 434 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 435 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 436 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 437 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 438 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 439 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 440 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 441 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 442 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 443 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 444 "data/maps/MauvilleCity/scripts.pory"

# 445 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_ScottApproachPlayerNorth:
# 446 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 447 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 448 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 449 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 450 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 451 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 452 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 453 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 454 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 455 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 456 "data/maps/MauvilleCity/scripts.pory"
	walk_in_place_faster_up
# 457 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 458 "data/maps/MauvilleCity/scripts.pory"

# 459 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_ScottApproachPlayerEast:
# 460 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 461 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 462 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 463 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 464 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 465 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 466 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 467 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 468 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 469 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 470 "data/maps/MauvilleCity/scripts.pory"
	walk_up
# 471 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 472 "data/maps/MauvilleCity/scripts.pory"

# 473 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_ScottExitNorth:
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
	walk_left
# 481 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 482 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 483 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 484 "data/maps/MauvilleCity/scripts.pory"

# 485 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Movement_ScottExitEast:
# 486 "data/maps/MauvilleCity/scripts.pory"
	walk_down
# 487 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 488 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 489 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 490 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 491 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 492 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 493 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 494 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 495 "data/maps/MauvilleCity/scripts.pory"
	walk_left
# 496 "data/maps/MauvilleCity/scripts.pory"
	step_end
# 497 "data/maps/MauvilleCity/scripts.pory"

# 498 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_Wattson::
# 499 "data/maps/MauvilleCity/scripts.pory"
	lock
# 500 "data/maps/MauvilleCity/scripts.pory"
	faceplayer
# 501 "data/maps/MauvilleCity/scripts.pory"
	goto_if_set FLAG_GOT_TM_THUNDERBOLT_FROM_WATTSON, MauvilleCity_EventScript_ReceivedThunderbolt
# 502 "data/maps/MauvilleCity/scripts.pory"
	goto_if_eq VAR_NEW_MAUVILLE_STATE, 2, MauvilleCity_EventScript_CompletedNewMauville
# 503 "data/maps/MauvilleCity/scripts.pory"
	goto_if_set FLAG_GOT_BASEMENT_KEY_FROM_WATTSON, MauvilleCity_EventScript_BegunNewMauville
# 504 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_DEN, EMOTE_NORMAL
# 505 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WattsonNeedFavorTakeKey, MSGBOX_DEFAULT
# 506 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 507 "data/maps/MauvilleCity/scripts.pory"
	giveitem ITEM_BASEMENT_KEY
# 508 "data/maps/MauvilleCity/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 509 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_GOT_BASEMENT_KEY_FROM_WATTSON
# 510 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_DEN, EMOTE_NORMAL
# 511 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WattsonWontBeChallenge, MSGBOX_DEFAULT
# 512 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 513 "data/maps/MauvilleCity/scripts.pory"
	release
# 514 "data/maps/MauvilleCity/scripts.pory"
	end
# 515 "data/maps/MauvilleCity/scripts.pory"

# 516 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_BegunNewMauville::
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
MauvilleCity_EventScript_CompletedNewMauville::
# 524 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_DEN, EMOTE_NORMAL
# 525 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WattsonThanksTakeTM, MSGBOX_DEFAULT
# 526 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 527 "data/maps/MauvilleCity/scripts.pory"
	giveitem ITEM_TM_THUNDERBOLT
# 528 "data/maps/MauvilleCity/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 529 "data/maps/MauvilleCity/scripts.pory"
	setflag FLAG_GOT_TM_THUNDERBOLT_FROM_WATTSON
# 530 "data/maps/MauvilleCity/scripts.pory"
	createfieldmugshot MUGSHOT_DEN, EMOTE_NORMAL
# 531 "data/maps/MauvilleCity/scripts.pory"
	msgbox MauvilleCity_Text_WattsonYoungTakeCharge, MSGBOX_DEFAULT
# 532 "data/maps/MauvilleCity/scripts.pory"
	removefieldmugshot
# 533 "data/maps/MauvilleCity/scripts.pory"
	release
# 534 "data/maps/MauvilleCity/scripts.pory"
	end
# 535 "data/maps/MauvilleCity/scripts.pory"

# 536 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_EventScript_ReceivedThunderbolt::
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
MauvilleCity_EventScript_RegisterWallyCall::
# 544 "data/maps/MauvilleCity/scripts.pory"
	lockall
# 545 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed pokenavcall MauvilleCity_Text_WallyPokenavCall
# 546 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed waitmessage
# 547 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed delay 30
# 548 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed playfanfare MUS_REGISTER_MATCH_CALL
# 549 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed msgbox MauvilleCity_Text_RegisteredWally, MSGBOX_DEFAULT
# 550 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed waitfanfare
# 551 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed closemessage
# 552 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed delay 30
# 553 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed setflag FLAG_ENABLE_WALLY_MATCH_CALL
# 554 "data/maps/MauvilleCity/scripts.pory"
	@ PokéNav removed clearflag FLAG_ENABLE_FIRST_WALLY_POKENAV_CALL
# 555 "data/maps/MauvilleCity/scripts.pory"
	releaseall
# 556 "data/maps/MauvilleCity/scripts.pory"
	end
# 557 "data/maps/MauvilleCity/scripts.pory"

# 558 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_UncleHesTooPeppy:
# 559 "data/maps/MauvilleCity/scripts.pory"
	.string "UNCLE: It's because of POKéMON that\n"
# 560 "data/maps/MauvilleCity/scripts.pory"
	.string "this boy's got more pep, I suppose…\l"
# 561 "data/maps/MauvilleCity/scripts.pory"
	.string "But he's become a bit too peppy…$"
# 562 "data/maps/MauvilleCity/scripts.pory"

# 563 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyWantToChallengeGym:
# 564 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: UNCLE, I really think\n"
# 565 "data/maps/MauvilleCity/scripts.pory"
	.string "I'm ready now!\p"
# 566 "data/maps/MauvilleCity/scripts.pory"
	.string "I've trained hard and grown a lot.\n"
# 567 "data/maps/MauvilleCity/scripts.pory"
	.string "I want to challenge this GYM\l"
# 568 "data/maps/MauvilleCity/scripts.pory"
	.string "and prove how strong I've become.$"
# 569 "data/maps/MauvilleCity/scripts.pory"

# 570 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_UncleYourePushingIt:
# 571 "data/maps/MauvilleCity/scripts.pory"
	.string "UNCLE: Easy there, LUKA.\p"
# 572 "data/maps/MauvilleCity/scripts.pory"
	.string "You do have other priorities right now.\p"
# 573 "data/maps/MauvilleCity/scripts.pory"
	.string "With all your research into the\l"
# 574 "data/maps/MauvilleCity/scripts.pory"
	.string "mysteries of that comet, you haven't\l"
# 575 "data/maps/MauvilleCity/scripts.pory"
	.string "had as much time to train.\p"
# 576 "data/maps/MauvilleCity/scripts.pory"
	.string "A bit more preparation wouldn't hurt.$"
# 577 "data/maps/MauvilleCity/scripts.pory"

# 578 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyWeCanBeatAnyone:
# 579 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: You're right… maybe I do need\l"
# 580 "data/maps/MauvilleCity/scripts.pory"
	.string "to focus a bit more on my training.\p"
# 581 "data/maps/MauvilleCity/scripts.pory"
	.string "That GYM LEADER really does seem\n"
# 582 "data/maps/MauvilleCity/scripts.pory"
	.string "tougher than I expected.$"
# 583 "data/maps/MauvilleCity/scripts.pory"

# 584 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyWillYouBattleMe:
# 585 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: Oh! {PLAYER}, you're here?\p"
# 586 "data/maps/MauvilleCity/scripts.pory"
	.string "Nice timing! You're here to challenge\n"
# 587 "data/maps/MauvilleCity/scripts.pory"
	.string "the GYM too, right?\p"
# 588 "data/maps/MauvilleCity/scripts.pory"
	.string "Then this is the perfect chance.\p"
# 589 "data/maps/MauvilleCity/scripts.pory"
	.string "Let's battle and see if I really\n"
# 590 "data/maps/MauvilleCity/scripts.pory"
	.string "need more training!$"
# 591 "data/maps/MauvilleCity/scripts.pory"

# 592 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyMyUncleWontKnowImStrong:
# 593 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: Huh? If you won't battle me,\p"
# 594 "data/maps/MauvilleCity/scripts.pory"
	.string "{PLAYER}, how will you ever prove\n"
# 595 "data/maps/MauvilleCity/scripts.pory"
	.string "you're ready for the GYM?\p"
# 596 "data/maps/MauvilleCity/scripts.pory"
	.string "If you can't face me now,\n"
# 597 "data/maps/MauvilleCity/scripts.pory"
	.string "how will you face the LEADER?$"
# 598 "data/maps/MauvilleCity/scripts.pory"

# 599 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_UncleCanYouBattleWally:
# 600 "data/maps/MauvilleCity/scripts.pory"
	.string "UNCLE: You're {PLAYER}{KUN}, right?\p"
# 601 "data/maps/MauvilleCity/scripts.pory"
	.string "CALENDULA has done a great job\n"
# 602 "data/maps/MauvilleCity/scripts.pory"
	.string "guiding you both this far.\p"
# 603 "data/maps/MauvilleCity/scripts.pory"
	.string "You've all grown so much already.\n"
# 604 "data/maps/MauvilleCity/scripts.pory"
	.string "I'm sure this will be a great battle!$"
# 605 "data/maps/MauvilleCity/scripts.pory"

# 606 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyPleaseBattleMe:
# 607 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: {PLAYER}, nice!\p"
# 608 "data/maps/MauvilleCity/scripts.pory"
	.string "Let's have an amazing battle.\n"
# 609 "data/maps/MauvilleCity/scripts.pory"
	.string "I'm sure we'll both learn a lot!$"
# 610 "data/maps/MauvilleCity/scripts.pory"

# 611 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyHereICome:
# 612 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: {PLAYER}, thank you!\p"
# 613 "data/maps/MauvilleCity/scripts.pory"
	.string "All right then!\n"
# 614 "data/maps/MauvilleCity/scripts.pory"
	.string "Get ready!$"
# 615 "data/maps/MauvilleCity/scripts.pory"

# 616 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyDefeat:
# 617 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: I see now…\p"
# 618 "data/maps/MauvilleCity/scripts.pory"
	.string "You really do have a natural talent\n"
# 619 "data/maps/MauvilleCity/scripts.pory"
	.string "for battles.\p"
# 620 "data/maps/MauvilleCity/scripts.pory"
	.string "I focused too much on research\n"
# 621 "data/maps/MauvilleCity/scripts.pory"
	.string "and not enough on training.\p"
# 622 "data/maps/MauvilleCity/scripts.pory"
	.string "Congratulations, {PLAYER}.\n"
# 623 "data/maps/MauvilleCity/scripts.pory"
	.string "You're truly impressive.$"
# 624 "data/maps/MauvilleCity/scripts.pory"
	
# 625 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyIllGoBackToVerdanturf:
# 626 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: UNCLE… and {PLAYER}...\n"
# 627 "data/maps/MauvilleCity/scripts.pory"
	.string "I'll go back to VERDANTURF…$"
# 628 "data/maps/MauvilleCity/scripts.pory"

# 629 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_ThankYouNotEnoughToBattle:
# 630 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: {PLAYER}, thank you.\p"
# 631 "data/maps/MauvilleCity/scripts.pory"
	.string "I realize now that I need to train\n"
# 632 "data/maps/MauvilleCity/scripts.pory"
	.string "my POKéMON more… and catch new ones.\p"
# 633 "data/maps/MauvilleCity/scripts.pory"
	.string "I've been so focused on uncovering\n"
# 634 "data/maps/MauvilleCity/scripts.pory"
	.string "the truth behind that comet\l"
# 635 "data/maps/MauvilleCity/scripts.pory"
	.string "that I let my training slip.\p"
# 636 "data/maps/MauvilleCity/scripts.pory"
	.string "But that's okay.\n"
# 637 "data/maps/MauvilleCity/scripts.pory"
	.string "This just gave me clarity.$"
# 638 "data/maps/MauvilleCity/scripts.pory"

# 639 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_UncleNoNeedToBeDown:
# 640 "data/maps/MauvilleCity/scripts.pory"
	.string "UNCLE: That's the spirit, LUKA.\p"
# 641 "data/maps/MauvilleCity/scripts.pory"
	.string "Curiosity and strength don't cancel\n"
# 642 "data/maps/MauvilleCity/scripts.pory"
	.string "each other out.\p"
# 643 "data/maps/MauvilleCity/scripts.pory"
	.string "Train, explore, and learn.\n"
# 644 "data/maps/MauvilleCity/scripts.pory"
	.string "All of that will make you stronger.\p"
# 645 "data/maps/MauvilleCity/scripts.pory"
	.string "Come on, let's head home.\n"
# 646 "data/maps/MauvilleCity/scripts.pory"
	.string "You’ve got a path ahead of you.$"
# 647 "data/maps/MauvilleCity/scripts.pory"

# 648 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_UncleVisitUsSometime:
# 649 "data/maps/MauvilleCity/scripts.pory"
	.string "UNCLE: {PLAYER}{KUN}, thank you for\n"
# 650 "data/maps/MauvilleCity/scripts.pory"
	.string "pushing LUKA forward today.\p"
# 651 "data/maps/MauvilleCity/scripts.pory"
	.string "He may have lost, but he gained\n"
# 652 "data/maps/MauvilleCity/scripts.pory"
	.string "something far more important.\p"
# 653 "data/maps/MauvilleCity/scripts.pory"
	.string "Why don't you visit us in VERDANTURF\n"
# 654 "data/maps/MauvilleCity/scripts.pory"
	.string "sometime?\l"
# 655 "data/maps/MauvilleCity/scripts.pory"
	.string "Next time, he must be ready,\n"
# 656 "data/maps/MauvilleCity/scripts.pory"
	.string "both in mind and in strength.$"
# 657 "data/maps/MauvilleCity/scripts.pory"

# 658 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WallyPokenavCall:
# 659 "data/maps/MauvilleCity/scripts.pory"
	.string "… … … … … …\n" 
# 660 "data/maps/MauvilleCity/scripts.pory"
	.string "… … … … … Beep!\p"
# 661 "data/maps/MauvilleCity/scripts.pory"
	.string "LUKA: Oh, hi, {PLAYER}!\p"
# 662 "data/maps/MauvilleCity/scripts.pory"
	.string "Professor CALENDULA gave me\n"
# 663 "data/maps/MauvilleCity/scripts.pory"
	.string "a PokeNav today.\p"
# 664 "data/maps/MauvilleCity/scripts.pory"
	.string "She told me to focus on my\n"
# 665 "data/maps/MauvilleCity/scripts.pory"
	.string "training and research.\p"
# 666 "data/maps/MauvilleCity/scripts.pory"
	.string "If I learn anything important\n"
# 667 "data/maps/MauvilleCity/scripts.pory"
	.string "about the comet or Hoenn,\l"
# 668 "data/maps/MauvilleCity/scripts.pory"
	.string "I will contact you right away!\p"
# 669 "data/maps/MauvilleCity/scripts.pory"
	.string "Talk to you soon, {PLAYER}!\p"
# 670 "data/maps/MauvilleCity/scripts.pory"
	.string "… … … … … …\n" 
# 671 "data/maps/MauvilleCity/scripts.pory"
	.string "… … … … … Click!$"
# 672 "data/maps/MauvilleCity/scripts.pory"

# 673 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_RegisteredWally:
# 674 "data/maps/MauvilleCity/scripts.pory"
	.string "Registered LUKA\n"
# 675 "data/maps/MauvilleCity/scripts.pory"
	.string "in the POKéNAV.$"
# 676 "data/maps/MauvilleCity/scripts.pory"

# 677 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_ScottYouDidntHoldBack:
# 678 "data/maps/MauvilleCity/scripts.pory"
	.string "SCOTT: Hehe…\n"
# 679 "data/maps/MauvilleCity/scripts.pory"
	.string "I was watching that match!\p"
# 680 "data/maps/MauvilleCity/scripts.pory"
	.string "You're friends with that boy LUKA,\n"
# 681 "data/maps/MauvilleCity/scripts.pory"
	.string "aren't you?\p"
# 682 "data/maps/MauvilleCity/scripts.pory"
	.string "But you didn't hold anything back\n"
# 683 "data/maps/MauvilleCity/scripts.pory"
	.string "and beat him impressively.\p"
# 684 "data/maps/MauvilleCity/scripts.pory"
	.string "Yeah! That's what a real POKéMON\n"
# 685 "data/maps/MauvilleCity/scripts.pory"
	.string "battle is all about!\p"
# 686 "data/maps/MauvilleCity/scripts.pory"
	.string "I idolize TRAINERS like that!\p"
# 687 "data/maps/MauvilleCity/scripts.pory"
	.string "… … … … … …\n"
# 688 "data/maps/MauvilleCity/scripts.pory"
	.string "I'll be cheering for you!$"
# 689 "data/maps/MauvilleCity/scripts.pory"

# 690 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WattsonNeedFavorTakeKey:
# 691 "data/maps/MauvilleCity/scripts.pory"
	.string "DEN: Oh, {PLAYER}{KUN}!\n"
# 692 "data/maps/MauvilleCity/scripts.pory"
	.string "You look like you have a lot of zip!\l"
# 693 "data/maps/MauvilleCity/scripts.pory"
	.string "That's a good thing, wahahahaha!\p"
# 694 "data/maps/MauvilleCity/scripts.pory"
	.string "Fine! I've decided!\n"
# 695 "data/maps/MauvilleCity/scripts.pory"
	.string "I need a favor, {PLAYER}{KUN}!\p"
# 696 "data/maps/MauvilleCity/scripts.pory"
	.string "MAUVILLE CITY has an underground\n"
# 697 "data/maps/MauvilleCity/scripts.pory"
	.string "sector called NEW MAUVILLE.\p"
# 698 "data/maps/MauvilleCity/scripts.pory"
	.string "{PLAYER}{KUN}, I'd like you to go there and\n"
# 699 "data/maps/MauvilleCity/scripts.pory"
	.string "switch off the GENERATOR.\p"
# 700 "data/maps/MauvilleCity/scripts.pory"
	.string "The GENERATOR has been running a bit\n"
# 701 "data/maps/MauvilleCity/scripts.pory"
	.string "haywire. It's getting unsafe.\p"
# 702 "data/maps/MauvilleCity/scripts.pory"
	.string "Here, this is the KEY to get into\n"
# 703 "data/maps/MauvilleCity/scripts.pory"
	.string "NEW MAUVILLE.$"
# 704 "data/maps/MauvilleCity/scripts.pory"

# 705 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WattsonWontBeChallenge:
# 706 "data/maps/MauvilleCity/scripts.pory"
	.string "DEN: Don't you worry about it.\n"
# 707 "data/maps/MauvilleCity/scripts.pory"
	.string "It won't be a challenge to you.\p"
# 708 "data/maps/MauvilleCity/scripts.pory"
	.string "The entrance to NEW MAUVILLE is just\n"
# 709 "data/maps/MauvilleCity/scripts.pory"
	.string "a short SURF away from ROUTE 110.\p"
# 710 "data/maps/MauvilleCity/scripts.pory"
	.string "That's it, then, you have my trust!\n"
# 711 "data/maps/MauvilleCity/scripts.pory"
	.string "Wahahahaha!$"
# 712 "data/maps/MauvilleCity/scripts.pory"

# 713 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WattsonThanksTakeTM:
# 714 "data/maps/MauvilleCity/scripts.pory"
	.string "DEN: Wahahahaha!\p"
# 715 "data/maps/MauvilleCity/scripts.pory"
	.string "I knew it, {PLAYER}{KUN}! I knew I'd made\n"
# 716 "data/maps/MauvilleCity/scripts.pory"
	.string "the right choice asking you!\p"
# 717 "data/maps/MauvilleCity/scripts.pory"
	.string "This is my thanks--a TM containing\n"
# 718 "data/maps/MauvilleCity/scripts.pory"
	.string "THUNDERBOLT!\p"
# 719 "data/maps/MauvilleCity/scripts.pory"
	.string "Go on, you've earned it!$"
# 720 "data/maps/MauvilleCity/scripts.pory"

# 721 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_WattsonYoungTakeCharge:
# 722 "data/maps/MauvilleCity/scripts.pory"
	.string "DEN: Wahahahaha!\p"
# 723 "data/maps/MauvilleCity/scripts.pory"
	.string "It pleases me to no end to see\n"
# 724 "data/maps/MauvilleCity/scripts.pory"
	.string "the young step up and take charge!$"
# 725 "data/maps/MauvilleCity/scripts.pory"

# 726 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_NurseHurtMonBackToHealth:
# 727 "data/maps/MauvilleCity/scripts.pory"
	.string "You have heard about DEN, right?\n"
# 728 "data/maps/MauvilleCity/scripts.pory"
	.string "The Gym Leader here.\p"
# 729 "data/maps/MauvilleCity/scripts.pory"
	.string "They say he is a genius with\n"
# 730 "data/maps/MauvilleCity/scripts.pory"
	.string "electricity and POKéMON.\p"
# 731 "data/maps/MauvilleCity/scripts.pory"
	.string "But also a little unstable.\n"
# 732 "data/maps/MauvilleCity/scripts.pory"
	.string "His experiments go too far sometimes.\p"
# 733 "data/maps/MauvilleCity/scripts.pory"
	.string "Strange machines, sparks everywhere,\n"
# 734 "data/maps/MauvilleCity/scripts.pory"
	.string "lights flashing all night.\p"
# 735 "data/maps/MauvilleCity/scripts.pory"
	.string "Some people find him scary.\n"
# 736 "data/maps/MauvilleCity/scripts.pory"
	.string "Others call him brilliant.\p"
# 737 "data/maps/MauvilleCity/scripts.pory"
	.string "Maybe both are true.$"
# 738 "data/maps/MauvilleCity/scripts.pory"

# 739 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_AllSortsOfPeopleComeThrough:
# 740 "data/maps/MauvilleCity/scripts.pory"
	.string "Mauville sits at the crossroads.\n"
# 741 "data/maps/MauvilleCity/scripts.pory"
	.string "People come from every direction.\p"
# 742 "data/maps/MauvilleCity/scripts.pory"
	.string "Trainers, merchants, engineers,\n"
# 743 "data/maps/MauvilleCity/scripts.pory"
	.string "and travelers just passing through.\p"
# 744 "data/maps/MauvilleCity/scripts.pory"
	.string "I've seen all kinds of outfits here.\n"
# 745 "data/maps/MauvilleCity/scripts.pory"
	.string "Nothing really surprises me anymore.\p"
# 746 "data/maps/MauvilleCity/scripts.pory"
	.string "But someone dressed like you?\n"
# 747 "data/maps/MauvilleCity/scripts.pory"
	.string "That cape is something else.\p"
# 748 "data/maps/MauvilleCity/scripts.pory"
	.string "Kind of stylish, I guess.\n"
# 749 "data/maps/MauvilleCity/scripts.pory"
	.string "Not my look, though. Haha.$"
# 750 "data/maps/MauvilleCity/scripts.pory"

# 751 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_RydelVeryGenerous:
# 752 "data/maps/MauvilleCity/scripts.pory"
	.string "Have you been to RYDEL'S CYCLES yet?\p"
# 753 "data/maps/MauvilleCity/scripts.pory"
	.string "RYDEL, the owner, is a very generous\n"
# 754 "data/maps/MauvilleCity/scripts.pory"
	.string "man.$"
# 755 "data/maps/MauvilleCity/scripts.pory"

# 756 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_PokemonCanJumpYouOnBike:
# 757 "data/maps/MauvilleCity/scripts.pory"
	.string "Mauville City hums with power.\n"
# 758 "data/maps/MauvilleCity/scripts.pory"
	.string "They say the energy here is so strong\l"
# 759 "data/maps/MauvilleCity/scripts.pory"
	.string "it can make POKéMON behave strangely.\p"
# 760 "data/maps/MauvilleCity/scripts.pory"
	.string "Some trainers claim they felt their\n"
# 761 "data/maps/MauvilleCity/scripts.pory"
	.string "own POKéMON twitch without warning.\p"
# 762 "data/maps/MauvilleCity/scripts.pory"
	.string "Others swear strange lights flicker\n"
# 763 "data/maps/MauvilleCity/scripts.pory"
	.string "near the power grid at night.\p"
# 764 "data/maps/MauvilleCity/scripts.pory"
	.string "If you pay attention, you might\n"
# 765 "data/maps/MauvilleCity/scripts.pory"
	.string "discover something no one else has.$"
# 766 "data/maps/MauvilleCity/scripts.pory"

# 767 "data/maps/MauvilleCity/scripts.pory"

# 768 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_CitySign:
# 769 "data/maps/MauvilleCity/scripts.pory"
	.string "MAUVILLE CITY\n"
# 770 "data/maps/MauvilleCity/scripts.pory"
	.string "“The bright and shiny city of fun!”$"
# 771 "data/maps/MauvilleCity/scripts.pory"

# 772 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_GymSign:
# 773 "data/maps/MauvilleCity/scripts.pory"
	.string "MAUVILLE CITY POKeMON GYM\n"
# 774 "data/maps/MauvilleCity/scripts.pory"
	.string "LEADER: DEN\l"
# 775 "data/maps/MauvilleCity/scripts.pory"
	.string "The brilliant, electrifying prodigy!$"
# 776 "data/maps/MauvilleCity/scripts.pory"

# 777 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_BikeShopSign:
# 778 "data/maps/MauvilleCity/scripts.pory"
	.string "“Ride in gravel and shake up your\n"
# 779 "data/maps/MauvilleCity/scripts.pory"
	.string "soul!”\l"
# 780 "data/maps/MauvilleCity/scripts.pory"
	.string "RYDEL'S CYCLES$"
# 781 "data/maps/MauvilleCity/scripts.pory"

# 782 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_GameCornerSign:
# 783 "data/maps/MauvilleCity/scripts.pory"
	.string "“The play spot for all!”\n"
# 784 "data/maps/MauvilleCity/scripts.pory"
	.string "MAUVILLE GAME CORNER$"
# 785 "data/maps/MauvilleCity/scripts.pory"

# 786 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_ExplainTV:
# 787 "data/maps/MauvilleCity/scripts.pory"
	.string "Hey, have you seen the news lately?\p"
# 788 "data/maps/MauvilleCity/scripts.pory"
	.string "Ever since that meteor passed,\n"
# 789 "data/maps/MauvilleCity/scripts.pory"
	.string "it's all they talk about on TV.\p"
# 790 "data/maps/MauvilleCity/scripts.pory"
	.string "No one knows where it came from,\n"
# 791 "data/maps/MauvilleCity/scripts.pory"
	.string "or what it really was.\p"
# 792 "data/maps/MauvilleCity/scripts.pory"
	.string "People are curious.\n"
# 793 "data/maps/MauvilleCity/scripts.pory"
	.string "Some are even scared.\p"
# 794 "data/maps/MauvilleCity/scripts.pory"
	.string "I keep watching, hoping they find\n"
# 795 "data/maps/MauvilleCity/scripts.pory"
	.string "some new clue or explanation.\p"
# 796 "data/maps/MauvilleCity/scripts.pory"
	.string "You should watch TV too.\n"
# 797 "data/maps/MauvilleCity/scripts.pory"
	.string "You never know what you might learn.$"
# 798 "data/maps/MauvilleCity/scripts.pory"

# 799 "data/maps/MauvilleCity/scripts.pory"
MauvilleCity_Text_BeenCheckingOutTV:
# 800 "data/maps/MauvilleCity/scripts.pory"
	.string "Hi, have you been checking out TVs?$"
