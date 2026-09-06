# 1 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_MapScripts::
# 3 "data/maps/PetalburgCity_Gym/scripts.pory"
	map_script MAP_SCRIPT_ON_LOAD, PetalburgCity_Gym_OnLoad
# 4 "data/maps/PetalburgCity_Gym/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, PetalburgCity_Gym_OnTransition
# 5 "data/maps/PetalburgCity_Gym/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, PetalburgCity_Gym_OnWarp
# 6 "data/maps/PetalburgCity_Gym/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, PetalburgCity_Gym_OnFrame
# 7 "data/maps/PetalburgCity_Gym/scripts.pory"
	.byte 0
# 8 "data/maps/PetalburgCity_Gym/scripts.pory"

# 9 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_OnLoad:
# 10 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 11 "data/maps/PetalburgCity_Gym/scripts.pory"

# 12 "data/maps/PetalburgCity_Gym/scripts.pory"
@ NOTE: Strength and OHKO rooms are misleading. Both are more accurately Critical-Hit
# 13 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenUnlockedDoors::
# 14 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 15 "data/maps/PetalburgCity_Gym/scripts.pory"

# 16 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_UnlockAllDoors::
# 17 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 18 "data/maps/PetalburgCity_Gym/scripts.pory"

# 19 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_OnTransition:
# 20 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 1, PetalburgCity_Gym_EventScript_MoveWallyToEntrance
# 21 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_ne VAR_PETALBURG_GYM_STATE, 6, PetalburgCity_Gym_EventScript_MoveNormanToEntrance
# 22 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 6, PetalburgCity_Gym_EventScript_MoveNormanToGymLeaderRoom
# 23 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_SYS_GAME_CLEAR, PetalburgCity_Gym_EventScript_CheckNormanForRematch
# 24 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionClearedGuards
# 25 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 26 "data/maps/PetalburgCity_Gym/scripts.pory"

# 27 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveWallyToEntrance::
# 28 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_WALLY, 5, 108
# 29 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 30 "data/maps/PetalburgCity_Gym/scripts.pory"

# 31 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveNormanToEntrance::
# 32 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_NORMAN, 4, 107
# 33 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 34 "data/maps/PetalburgCity_Gym/scripts.pory"

# 35 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveNormanToGymLeaderRoom::
# 36 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_NORMAN, 4, 3
# 37 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_NORMAN, MOVEMENT_TYPE_FACE_DOWN
# 38 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 39 "data/maps/PetalburgCity_Gym/scripts.pory"

# 40 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_CheckNormanForRematch::
# 41 "data/maps/PetalburgCity_Gym/scripts.pory"
	setorcopyvar VAR_TRAINER_BATTLE_OPPONENT_A, TRAINER_NORMAN_1
# 42 "data/maps/PetalburgCity_Gym/scripts.pory"
	specialvar VAR_RESULT, IsTrainerReadyForRematch
# 43 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_Gym_EventScript_DontMoveNormanToFront
# 44 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_PETALBURG_GYM_STATE, 8, PetalburgCity_Gym_EventScript_DontMoveNormanToFront
# 45 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_NORMAN, 4, 107
# 46 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 47 "data/maps/PetalburgCity_Gym/scripts.pory"

# 48 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_DontMoveNormanToFront::
# 49 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_GYM_STATE, 8
# 50 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 51 "data/maps/PetalburgCity_Gym/scripts.pory"

# 52 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_OnWarp:
# 53 "data/maps/PetalburgCity_Gym/scripts.pory"
	map_script_2 VAR_TEMP_1, 0, PetalburgCity_Gym_EventScript_CheckWarpFacing
# 54 "data/maps/PetalburgCity_Gym/scripts.pory"
	.2byte 0
# 55 "data/maps/PetalburgCity_Gym/scripts.pory"

# 56 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_CheckWarpFacing::
# 57 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_TEMP_1, 1
# 58 "data/maps/PetalburgCity_Gym/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 59 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_ne VAR_TEMP_2, 4, PetalburgCity_Gym_EventScript_CheckWallyWarpFacing
# 60 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_ne VAR_TEMP_3, 104, PetalburgCity_Gym_EventScript_CheckWallyWarpFacing
# 61 "data/maps/PetalburgCity_Gym/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_SOUTH
# 62 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 63 "data/maps/PetalburgCity_Gym/scripts.pory"

# 64 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_CheckWallyWarpFacing::
# 65 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_PETALBURG_GYM_STATE, 1, PetalburgCity_Gym_EventScript_TurnPlayerNorth
# 66 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 67 "data/maps/PetalburgCity_Gym/scripts.pory"

# 68 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_TurnPlayerNorth::
# 69 "data/maps/PetalburgCity_Gym/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_NORTH
# 70 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 71 "data/maps/PetalburgCity_Gym/scripts.pory"

# 72 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_OnFrame:
# 73 "data/maps/PetalburgCity_Gym/scripts.pory"
	map_script_2 VAR_PETALBURG_GYM_STATE, 1, PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial
# 74 "data/maps/PetalburgCity_Gym/scripts.pory"
	.2byte 0
# 75 "data/maps/PetalburgCity_Gym/scripts.pory"

# 76 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial::
# 77 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 78 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_WALLY_TUTORIAL_RESULT, 1, PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial_LukaWon
# 79 "data/maps/PetalburgCity_Gym/scripts.pory"
	@ --- Jogador VENCEU ---
# 80 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 81 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadSoDidItWorkOut, MSGBOX_DEFAULT
# 82 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 83 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 84 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyThankYouBye, MSGBOX_DEFAULT
# 85 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 86 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial_Shared
# 87 "data/maps/PetalburgCity_Gym/scripts.pory"

# 88 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial_LukaWon::
# 89 "data/maps/PetalburgCity_Gym/scripts.pory"
	@ --- Luka VENCEU, progresso continua igual ---
# 90 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 91 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadSoDidItWorkOut_LukaWon, MSGBOX_DEFAULT
# 92 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 93 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 94 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyThankYouBye_LukaWon, MSGBOX_DEFAULT
# 95 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 96 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_WALLY_TUTORIAL_RESULT, 0
# 97 "data/maps/PetalburgCity_Gym/scripts.pory"

# 98 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial_Shared::
# 99 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 100 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 101 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitGym
# 102 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 103 "data/maps/PetalburgCity_Gym/scripts.pory"
	playse SE_EXIT
# 104 "data/maps/PetalburgCity_Gym/scripts.pory"
	removeobject LOCALID_PETALBURG_GYM_WALLY
# 105 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_WALLY
# 106 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay 30
# 107 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 108 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 109 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 110 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadGoCollectBadges, MSGBOX_DEFAULT
# 111 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 112 "data/maps/PetalburgCity_Gym/scripts.pory"
	giveegg SPECIES_EEVEE
# 113 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_RecievedEgg, MSGBOX_DEFAULT
# 114 "data/maps/PetalburgCity_Gym/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 115 "data/maps/PetalburgCity_Gym/scripts.pory"
	giveitem ITEM_EVERSTONE
# 116 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_Everstone, MSGBOX_DEFAULT
# 117 "data/maps/PetalburgCity_Gym/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 118 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 119 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_CalendulaGaveEevee, MSGBOX_DEFAULT
# 120 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 121 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_GYM_STATE, 2
# 122 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 123 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 124 "data/maps/PetalburgCity_Gym/scripts.pory"

# 125 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RecievedEgg:
# 126 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER} recieved EEVEE egg!$"
# 127 "data/maps/PetalburgCity_Gym/scripts.pory"

# 128 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_Everstone:
# 129 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER} recieved an Everstone!$"	
# 130 "data/maps/PetalburgCity_Gym/scripts.pory"

# 131 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitGym:
# 132 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 133 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 134 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 135 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 136 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 137 "data/maps/PetalburgCity_Gym/scripts.pory"

# 138 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Norman::
# 139 "data/maps/PetalburgCity_Gym/scripts.pory"
    lock
# 140 "data/maps/PetalburgCity_Gym/scripts.pory"
    faceplayer
# 141 "data/maps/PetalburgCity_Gym/scripts.pory"
    getdifficulty VAR_RESULT
# 142 "data/maps/PetalburgCity_Gym/scripts.pory"
    goto_if_eq VAR_RESULT, 1, PetalburgCity_Gym_EventScript_NormanHard
# 143 "data/maps/PetalburgCity_Gym/scripts.pory"
    goto PetalburgCity_Gym_EventScript_NormanCasual
# 144 "data/maps/PetalburgCity_Gym/scripts.pory"

# 145 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanCasual::
# 146 "data/maps/PetalburgCity_Gym/scripts.pory"
    // Modo Casual - 
# 147 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_PETALBURG_GYM_STATE
# 148 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 2, PetalburgCity_Gym_EventScript_NormanNoBadges
# 149 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 3, PetalburgCity_Gym_EventScript_NormanOneBadge
# 150 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 4, PetalburgCity_Gym_EventScript_NormanTwoBadges
# 151 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 5, PetalburgCity_Gym_EventScript_NormanThreeBadges
# 152 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 6, PetalburgCity_Gym_EventScript_NormanBattleCasual
# 153 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 7, PetalburgCity_Gym_EventScript_NormanPostBattle
# 154 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 8, PetalburgCity_Gym_EventScript_NormanRematch
# 155 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 156 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_DadYoureHereWithYourPokemon, MSGBOX_DEFAULT
# 157 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 158 "data/maps/PetalburgCity_Gym/scripts.pory"
    closemessage
# 159 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_FACING
# 160 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_SOUTH, PetalburgCity_Gym_EventScript_BeginWallyTutorialSouth
# 161 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_NORTH, PetalburgCity_Gym_EventScript_BeginWallyTutorialNorth
# 162 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_WEST, PetalburgCity_Gym_EventScript_BeginWallyTutorialWest
# 163 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_EAST, PetalburgCity_Gym_EventScript_BeginWallyTutorialEast
# 164 "data/maps/PetalburgCity_Gym/scripts.pory"
    end
# 165 "data/maps/PetalburgCity_Gym/scripts.pory"

# 166 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanHard::
# 167 "data/maps/PetalburgCity_Gym/scripts.pory"
    // Modo Hard
# 168 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_PETALBURG_GYM_STATE
# 169 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 2, PetalburgCity_Gym_EventScript_NormanNoBadges
# 170 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 3, PetalburgCity_Gym_EventScript_NormanOneBadge
# 171 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 4, PetalburgCity_Gym_EventScript_NormanTwoBadges
# 172 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 5, PetalburgCity_Gym_EventScript_NormanThreeBadges
# 173 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 6, PetalburgCity_Gym_EventScript_NormanBattleHard
# 174 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 7, PetalburgCity_Gym_EventScript_NormanPostBattle
# 175 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 8, PetalburgCity_Gym_EventScript_NormanRematch
# 176 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 177 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_DadYoureHereWithYourPokemon, MSGBOX_DEFAULT
# 178 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 179 "data/maps/PetalburgCity_Gym/scripts.pory"
    closemessage
# 180 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_FACING
# 181 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_SOUTH, PetalburgCity_Gym_EventScript_BeginWallyTutorialSouth
# 182 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_NORTH, PetalburgCity_Gym_EventScript_BeginWallyTutorialNorth
# 183 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_WEST, PetalburgCity_Gym_EventScript_BeginWallyTutorialWest
# 184 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_EAST, PetalburgCity_Gym_EventScript_BeginWallyTutorialEast
# 185 "data/maps/PetalburgCity_Gym/scripts.pory"
    end
# 186 "data/maps/PetalburgCity_Gym/scripts.pory"

# 187 "data/maps/PetalburgCity_Gym/scripts.pory"
// Modo Casual - Batalha
# 188 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanBattleCasual::
# 189 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 190 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_NormanIntro, MSGBOX_DEFAULT
# 191 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 192 "data/maps/PetalburgCity_Gym/scripts.pory"
    trainerbattle_no_intro TRAINER_CALENDULA_CASUAL, PetalburgCity_Gym_Text_NormanDefeat  // Precisa criar TRAINER_NORMAN_CASUAL
# 193 "data/maps/PetalburgCity_Gym/scripts.pory"
    goto PetalburgCity_Gym_EventScript_NormanAfterBattle
# 194 "data/maps/PetalburgCity_Gym/scripts.pory"

# 195 "data/maps/PetalburgCity_Gym/scripts.pory"
// Modo Hard - Batalha
# 196 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanBattleHard::
# 197 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 198 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_NormanIntro, MSGBOX_DEFAULT
# 199 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 200 "data/maps/PetalburgCity_Gym/scripts.pory"
    trainerbattle_no_intro TRAINER_NORMAN_1, PetalburgCity_Gym_Text_NormanDefeat
# 201 "data/maps/PetalburgCity_Gym/scripts.pory"
    // Fall through para AfterBattle
# 202 "data/maps/PetalburgCity_Gym/scripts.pory"

# 203 "data/maps/PetalburgCity_Gym/scripts.pory"
// Pós-batalha 
# 204 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAfterBattle::
# 205 "data/maps/PetalburgCity_Gym/scripts.pory"
    message PetalburgCity_Gym_Text_ReceivedBalanceBadge
# 206 "data/maps/PetalburgCity_Gym/scripts.pory"
    waitmessage
# 207 "data/maps/PetalburgCity_Gym/scripts.pory"
    call Common_EventScript_PlayGymBadgeFanfare
# 208 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 209 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_ExplainBalanceBadgeTakeThis, MSGBOX_DEFAULT
# 210 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 211 "data/maps/PetalburgCity_Gym/scripts.pory"
    setflag FLAG_DEFEATED_PETALBURG_GYM
# 212 "data/maps/PetalburgCity_Gym/scripts.pory"
    setvar VAR_PETALBURG_GYM_STATE, 7
# 213 "data/maps/PetalburgCity_Gym/scripts.pory"
    setflag FLAG_BADGE05_GET
# 214 "data/maps/PetalburgCity_Gym/scripts.pory"
    special ResetHealLocationFromDewford
# 215 "data/maps/PetalburgCity_Gym/scripts.pory"
    call EventScript_HideMrBriney
# 216 "data/maps/PetalburgCity_Gym/scripts.pory"
    setflag FLAG_HIDE_MAUVILLE_GYM_WATTSON
# 217 "data/maps/PetalburgCity_Gym/scripts.pory"
    clearflag FLAG_HIDE_MAUVILLE_CITY_WATTSON
# 218 "data/maps/PetalburgCity_Gym/scripts.pory"
    setvar VAR_0x8008, 5
# 219 "data/maps/PetalburgCity_Gym/scripts.pory"
    call Common_EventScript_SetGymTrainers
# 220 "data/maps/PetalburgCity_Gym/scripts.pory"
    clearflag FLAG_HIDE_DEWFORD_HALL_SLUDGE_BOMB_MAN
# 221 "data/maps/PetalburgCity_Gym/scripts.pory"
    call PetalburgCity_Gym_EventScript_UnlockAllDoors
# 222 "data/maps/PetalburgCity_Gym/scripts.pory"
    special DrawWholeMapView
# 223 "data/maps/PetalburgCity_Gym/scripts.pory"
    call PetalburgCity_Gym_EventScript_GiveFacade
# 224 "data/maps/PetalburgCity_Gym/scripts.pory"
    delay 30
# 225 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 226 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_DadHappyAndSad, MSGBOX_DEFAULT
# 227 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 228 "data/maps/PetalburgCity_Gym/scripts.pory"
    closemessage
# 229 "data/maps/PetalburgCity_Gym/scripts.pory"
    delay 40
# 230 "data/maps/PetalburgCity_Gym/scripts.pory"
    playse SE_DOOR
# 231 "data/maps/PetalburgCity_Gym/scripts.pory"
    delay 10
# 232 "data/maps/PetalburgCity_Gym/scripts.pory"
    addobject LOCALID_PETALBURG_GYM_WALLYS_DAD
# 233 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_FACING
# 234 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_SOUTH, PetalburgCity_Gym_EventScript_WallysDadArrivesSouth
# 235 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_NORTH, PetalburgCity_Gym_EventScript_WallysDadArrivesNorth
# 236 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_WEST, PetalburgCity_Gym_EventScript_WallysDadArrivesWest
# 237 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_EAST, PetalburgCity_Gym_EventScript_WallysDadArrivesEast
# 238 "data/maps/PetalburgCity_Gym/scripts.pory"
    end
# 239 "data/maps/PetalburgCity_Gym/scripts.pory"

# 240 "data/maps/PetalburgCity_Gym/scripts.pory"
// Rematch 
# 241 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanRematch::
# 242 "data/maps/PetalburgCity_Gym/scripts.pory"
    trainerbattle_rematch_double TRAINER_NORMAN_1, PetalburgCity_Gym_Text_NormanPreRematch, PetalburgCity_Gym_Text_NormanRematchDefeat, PetalburgCity_Gym_Text_NormanRematchNeedTwoMons
# 243 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 244 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_NormanPostRematch, MSGBOX_AUTOCLOSE
# 245 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 246 "data/maps/PetalburgCity_Gym/scripts.pory"
    end
# 247 "data/maps/PetalburgCity_Gym/scripts.pory"

# 248 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorialSouth::
# 249 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 0
# 250 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_BeginWallyTutorial
# 251 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 252 "data/maps/PetalburgCity_Gym/scripts.pory"

# 253 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorialNorth::
# 254 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 255 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_BeginWallyTutorial
# 256 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 257 "data/maps/PetalburgCity_Gym/scripts.pory"

# 258 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorialWest::
# 259 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 2
# 260 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_BeginWallyTutorial
# 261 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 262 "data/maps/PetalburgCity_Gym/scripts.pory"

# 263 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorialEast::
# 264 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 3
# 265 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_BeginWallyTutorial
# 266 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 267 "data/maps/PetalburgCity_Gym/scripts.pory"

# 268 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorial::
# 269 "data/maps/PetalburgCity_Gym/scripts.pory"
	addobject LOCALID_PETALBURG_GYM_WALLY
# 270 "data/maps/PetalburgCity_Gym/scripts.pory"
	playse SE_DOOR
# 271 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_WallyArriveSouth
# 272 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_WallyArriveNorth
# 273 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_WallyArriveWestEast
# 274 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_WallyArriveWestEast
# 275 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 276 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyIdLikeAPokemon, MSGBOX_DEFAULT
# 277 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 278 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 279 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadOhYoureWallyRight, MSGBOX_DEFAULT
# 280 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 281 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 282 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyIveNeverCaughtAPokemon, MSGBOX_DEFAULT
# 283 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 284 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 285 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadHmISee, MSGBOX_DEFAULT
# 286 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 287 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_NormanAddressPlayerSouth
# 288 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_NormanAddressPlayerNorth
# 289 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_NormanAddressPlayerWest
# 290 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_NormanAddressPlayerEast
# 291 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadPlayerGoWithWally, MSGBOX_DEFAULT
# 292 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_NormanAddressWallySouth
# 293 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_NormanAddressWallyNorth
# 294 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_NormanAddressWallyWest
# 295 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_NormanAddressWallyEast
# 296 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_IllLoanYouMyZigzagoon, MSGBOX_DEFAULT
# 297 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 298 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyThankYouAndDadGivesPokeBall, MSGBOX_DEFAULT
# 299 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 300 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 301 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyOhWowThankYou, MSGBOX_DEFAULT
# 302 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 303 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_NormanFaceDoorSouth
# 304 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_NormanFaceDoorNorth
# 305 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_NormanFaceDoorWest
# 306 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_NormanFaceDoorEast
# 307 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_WallyFacePlayer
# 308 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_WallyFaceDown
# 309 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_WallyFacePlayer
# 310 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_WallyFacePlayer
# 311 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 312 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WouldYouReallyComeWithMe, MSGBOX_DEFAULT
# 313 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 314 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 315 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_DONT_TRANSITION_MUSIC
# 316 "data/maps/PetalburgCity_Gym/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 317 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_ExitGymWithWallySouth
# 318 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_ExitGymWithWallyNorth
# 319 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_ExitGymWithWallyWest
# 320 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_ExitGymWithWallyEast
# 321 "data/maps/PetalburgCity_Gym/scripts.pory"
	removeobject LOCALID_PETALBURG_GYM_WALLY
# 322 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_WALLYS_MOM
# 323 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_GYM_STATE, 1
# 324 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_CITY_STATE, 2
# 325 "data/maps/PetalburgCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_WALLY
# 326 "data/maps/PetalburgCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_GYM_WALLY
# 327 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_RIVAL
# 328 "data/maps/PetalburgCity_Gym/scripts.pory"
	special InitBirchState
# 329 "data/maps/PetalburgCity_Gym/scripts.pory"
	warp MAP_PETALBURG_CITY, 20, 7
# 330 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 331 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 332 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 333 "data/maps/PetalburgCity_Gym/scripts.pory"

# 334 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyArriveSouth::
# 335 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 336 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyArrive
# 337 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 338 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 339 "data/maps/PetalburgCity_Gym/scripts.pory"

# 340 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyArriveNorth::
# 341 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyArriveNorth
# 342 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 343 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterRight
# 344 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 345 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 346 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 347 "data/maps/PetalburgCity_Gym/scripts.pory"

# 348 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyArriveWestEast::
# 349 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 350 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 351 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyArrive
# 352 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 353 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 354 "data/maps/PetalburgCity_Gym/scripts.pory"

# 355 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallySouth::
# 356 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 357 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitSouthWest
# 358 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallySouth
# 359 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 360 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 361 "data/maps/PetalburgCity_Gym/scripts.pory"

# 362 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallyNorth::
# 363 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitNorth
# 364 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallyNorth
# 365 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 366 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 367 "data/maps/PetalburgCity_Gym/scripts.pory"

# 368 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallyWest::
# 369 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitSouthWest
# 370 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallyWest
# 371 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 372 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 373 "data/maps/PetalburgCity_Gym/scripts.pory"

# 374 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallyEast::
# 375 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitEast
# 376 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallyEast
# 377 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 378 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 379 "data/maps/PetalburgCity_Gym/scripts.pory"

# 380 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressPlayerSouth::
# 381 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterUp
# 382 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 383 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 384 "data/maps/PetalburgCity_Gym/scripts.pory"

# 385 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressPlayerNorth::
# 386 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 387 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 388 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 389 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 390 "data/maps/PetalburgCity_Gym/scripts.pory"

# 391 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressPlayerWest::
# 392 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterRight
# 393 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 394 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 395 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 396 "data/maps/PetalburgCity_Gym/scripts.pory"

# 397 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressPlayerEast::
# 398 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterLeft
# 399 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 400 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 401 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 402 "data/maps/PetalburgCity_Gym/scripts.pory"

# 403 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressWallySouth::
# 404 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 405 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 406 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 407 "data/maps/PetalburgCity_Gym/scripts.pory"

# 408 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressWallyNorth::
# 409 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterRight
# 410 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 411 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 412 "data/maps/PetalburgCity_Gym/scripts.pory"

# 413 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressWallyWest::
# 414 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 415 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 416 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 417 "data/maps/PetalburgCity_Gym/scripts.pory"

# 418 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressWallyEast::
# 419 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 420 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 421 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 422 "data/maps/PetalburgCity_Gym/scripts.pory"

# 423 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyFacePlayer::
# 424 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, Common_Movement_FacePlayer
# 425 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 426 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 427 "data/maps/PetalburgCity_Gym/scripts.pory"

# 428 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyFaceDown::
# 429 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, Common_Movement_WalkInPlaceFasterDown
# 430 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 431 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 432 "data/maps/PetalburgCity_Gym/scripts.pory"

# 433 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanNoBadges::
# 434 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 435 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_NormanGoToRustboro, MSGBOX_DEFAULT
# 436 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 437 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 438 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 439 "data/maps/PetalburgCity_Gym/scripts.pory"

# 440 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanOneBadge::
# 441 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 442 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_NormanGoToDewford, MSGBOX_DEFAULT
# 443 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 444 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 445 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 446 "data/maps/PetalburgCity_Gym/scripts.pory"

# 447 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanTwoBadges::
# 448 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 449 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_YouHaveGottenStronger, MSGBOX_DEFAULT
# 450 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 451 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 452 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 453 "data/maps/PetalburgCity_Gym/scripts.pory"

# 454 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanThreeBadges::
# 455 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 456 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_YouHaveGottenStronger, MSGBOX_DEFAULT
# 457 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 458 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 459 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 460 "data/maps/PetalburgCity_Gym/scripts.pory"

# 461 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanFaceDoorSouth::
# 462 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 463 "data/maps/PetalburgCity_Gym/scripts.pory"

# 464 "data/maps/PetalburgCity_Gym/scripts.pory"
@ For all other NormanFaceDoorX, Norman is already facing the door from NormanAddressWallyX
# 465 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanFaceDoorNorth::
# 466 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 467 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 468 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 469 "data/maps/PetalburgCity_Gym/scripts.pory"

# 470 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanFaceDoorWest::
# 471 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 472 "data/maps/PetalburgCity_Gym/scripts.pory"

# 473 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanFaceDoorEast::
# 474 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 475 "data/maps/PetalburgCity_Gym/scripts.pory"

# 476 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanPostBattle::
# 477 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_ShouldGiveEnigmaBerry
# 478 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_Gym_EventScript_GiveEnigmaBerry
# 479 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_unset FLAG_RECEIVED_TM_FACADE, PetalburgCity_Gym_EventScript_GiveFacade2
# 480 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, PetalburgCity_Gym_EventScript_NoAmountOfTrainingIsEnough
# 481 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 482 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadGoingToKeepTraining, MSGBOX_DEFAULT
# 483 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 484 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 485 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 486 "data/maps/PetalburgCity_Gym/scripts.pory"

# 487 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GiveFacade2::
# 488 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_GiveFacade
# 489 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 490 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 491 "data/maps/PetalburgCity_Gym/scripts.pory"

# 492 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ShouldGiveEnigmaBerry::
# 493 "data/maps/PetalburgCity_Gym/scripts.pory"
	specialvar VAR_RESULT, IsEnigmaBerryValid
# 494 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry
# 495 "data/maps/PetalburgCity_Gym/scripts.pory"
	checkitem ITEM_ENIGMA_BERRY_E_READER
# 496 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry
# 497 "data/maps/PetalburgCity_Gym/scripts.pory"
	checkpcitem ITEM_ENIGMA_BERRY_E_READER
# 498 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry
# 499 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_ENIGMA_BERRY_AVAILABLE, 0, PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry
# 500 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 501 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GiveEnigmaBerry, MSGBOX_DEFAULT
# 502 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 503 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_RESULT, TRUE
# 504 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 505 "data/maps/PetalburgCity_Gym/scripts.pory"

# 506 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry::
# 507 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_RESULT, FALSE
# 508 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 509 "data/maps/PetalburgCity_Gym/scripts.pory"

# 510 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GiveEnigmaBerry::
# 511 "data/maps/PetalburgCity_Gym/scripts.pory"
	giveitem ITEM_ENIGMA_BERRY_E_READER
# 512 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 513 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_ENIGMA_BERRY_AVAILABLE, 0
# 514 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 515 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 516 "data/maps/PetalburgCity_Gym/scripts.pory"

# 517 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GiveFacade::
# 518 "data/maps/PetalburgCity_Gym/scripts.pory"
	giveitem ITEM_TM_FACADE
# 519 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 520 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_FACADE
# 521 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 522 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ExplainFacade, MSGBOX_DEFAULT
# 523 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 524 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 525 "data/maps/PetalburgCity_Gym/scripts.pory"

# 526 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrivesNorth::
# 527 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 528 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_WallysDadArrives
# 529 "data/maps/PetalburgCity_Gym/scripts.pory"

# 530 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrivesEast::
# 531 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 2
# 532 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_WallysDadArrives
# 533 "data/maps/PetalburgCity_Gym/scripts.pory"

# 534 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrivesWest::
# 535 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 3
# 536 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_WallysDadArrives
# 537 "data/maps/PetalburgCity_Gym/scripts.pory"

# 538 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrivesSouth::
# 539 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 4
# 540 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_WallysDadArrives
# 541 "data/maps/PetalburgCity_Gym/scripts.pory"

# 542 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrives::
# 543 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadEnterGym
# 544 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 545 "data/maps/PetalburgCity_Gym/scripts.pory"
	playse SE_PIN
# 546 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_ExclamationMark
# 547 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 548 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_Delay48
# 549 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 550 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay 10
# 551 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_WallysDadApproachPlayerNorth
# 552 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_WallysDadApproachPlayerEast
# 553 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_WallysDadApproachPlayerWest
# 554 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 4, PetalburgCity_Gym_EventScript_WallysDadApproachPlayerSouth
# 555 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_PleaseComeWithMe, MSGBOX_DEFAULT
# 556 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_LetMeBorrowPlayer, MSGBOX_DEFAULT
# 557 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 558 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_LukasGrandparentsHaveSomethingToSay, MSGBOX_DEFAULT
# 559 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 560 "data/maps/PetalburgCity_Gym/scripts.pory"
	removeobject LOCALID_PETALBURG_GYM_WALLYS_DAD
# 561 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_CITY_STATE, 4
# 562 "data/maps/PetalburgCity_Gym/scripts.pory"
	warp MAP_PETALBURG_CITY_WALLYS_HOUSE, 2, 4
# 563 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 564 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 565 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 566 "data/maps/PetalburgCity_Gym/scripts.pory"

# 567 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadFaceNormanNorth::
# 568 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_WalkInPlaceFasterUp
# 569 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 570 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 571 "data/maps/PetalburgCity_Gym/scripts.pory"

# 572 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadFaceNormanEast::
# 573 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_WalkInPlaceFasterRight
# 574 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 575 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 576 "data/maps/PetalburgCity_Gym/scripts.pory"

# 577 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadFaceNormanWest::
# 578 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_WalkInPlaceFasterLeft
# 579 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 580 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 581 "data/maps/PetalburgCity_Gym/scripts.pory"

# 582 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerNorth::
# 583 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerNorth
# 584 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 585 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 586 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterLeft
# 587 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 588 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 589 "data/maps/PetalburgCity_Gym/scripts.pory"

# 590 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerEast::
# 591 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerEast
# 592 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 593 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 594 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 595 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 596 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 597 "data/maps/PetalburgCity_Gym/scripts.pory"

# 598 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerWest::
# 599 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerWest
# 600 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 601 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 602 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 603 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 604 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 605 "data/maps/PetalburgCity_Gym/scripts.pory"

# 606 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerSouth::
# 607 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerEast
# 608 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 609 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 610 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 611 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 612 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 613 "data/maps/PetalburgCity_Gym/scripts.pory"

# 614 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallysDadNorth::
# 615 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadExitNorth
# 616 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 617 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallysDadNorth
# 618 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 619 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 620 "data/maps/PetalburgCity_Gym/scripts.pory"

# 621 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallysDadEast::
# 622 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadExitEast
# 623 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallysDadEast
# 624 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 625 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 626 "data/maps/PetalburgCity_Gym/scripts.pory"

# 627 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallysDadWest::
# 628 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadExitWest
# 629 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallysDadWest
# 630 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 631 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 632 "data/maps/PetalburgCity_Gym/scripts.pory"

# 633 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadExitNorth:
# 634 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 635 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 636 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 637 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 638 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 639 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 640 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 641 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 642 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 643 "data/maps/PetalburgCity_Gym/scripts.pory"
	set_invisible
# 644 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 645 "data/maps/PetalburgCity_Gym/scripts.pory"

# 646 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadExitEast:
# 647 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 648 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 649 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 650 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 651 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 652 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 653 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 654 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 655 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 656 "data/maps/PetalburgCity_Gym/scripts.pory"
	set_invisible
# 657 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 658 "data/maps/PetalburgCity_Gym/scripts.pory"

# 659 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadExitWest:
# 660 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 661 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 662 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 663 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 664 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 665 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 666 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 667 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 668 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 669 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 670 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 671 "data/maps/PetalburgCity_Gym/scripts.pory"
	set_invisible
# 672 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 673 "data/maps/PetalburgCity_Gym/scripts.pory"

# 674 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallysDadNorth:
# 675 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 676 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 677 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 678 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 679 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 680 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 681 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 682 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 683 "data/maps/PetalburgCity_Gym/scripts.pory"

# 684 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallysDadEast:
# 685 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 686 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 687 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 688 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 689 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 690 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 691 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 692 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 693 "data/maps/PetalburgCity_Gym/scripts.pory"

# 694 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallysDadWest:
# 695 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 696 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 697 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 698 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 699 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 700 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 701 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 702 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 703 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 704 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 705 "data/maps/PetalburgCity_Gym/scripts.pory"

# 706 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadEnterGym:
# 707 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 708 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 709 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_right
# 710 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 711 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_left
# 712 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 713 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 714 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 715 "data/maps/PetalburgCity_Gym/scripts.pory"

# 716 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadApproachPlayerNorth:
# 717 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 718 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 719 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 720 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 721 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 722 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_right
# 723 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 724 "data/maps/PetalburgCity_Gym/scripts.pory"

# 725 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadApproachPlayerEast:
# 726 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 727 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 728 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 729 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 730 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 731 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 732 "data/maps/PetalburgCity_Gym/scripts.pory"

# 733 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadApproachPlayerWest:
# 734 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 735 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 736 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 737 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 738 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 739 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 740 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 741 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 742 "data/maps/PetalburgCity_Gym/scripts.pory"

# 743 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_Unused:
# 744 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 745 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 746 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 747 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 748 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 749 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 750 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 751 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_down
# 752 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 753 "data/maps/PetalburgCity_Gym/scripts.pory"

# 754 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyArriveNorth:
# 755 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 756 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 757 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 758 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 759 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 760 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 761 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 762 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 763 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_left
# 764 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 765 "data/maps/PetalburgCity_Gym/scripts.pory"

# 766 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyArrive:
# 767 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 768 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 769 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 770 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 771 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 772 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 773 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 774 "data/maps/PetalburgCity_Gym/scripts.pory"

# 775 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitNorth:
# 776 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 777 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 778 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 779 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 780 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 781 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 782 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 783 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 784 "data/maps/PetalburgCity_Gym/scripts.pory"

# 785 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitEast:
# 786 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 787 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 788 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 789 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 790 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 791 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 792 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 793 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 794 "data/maps/PetalburgCity_Gym/scripts.pory"

# 795 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitSouthWest:
# 796 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 797 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 798 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 799 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 800 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 801 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 802 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 803 "data/maps/PetalburgCity_Gym/scripts.pory"

# 804 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallyNorth:
# 805 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 806 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 807 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 808 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 809 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 810 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 811 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 812 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 813 "data/maps/PetalburgCity_Gym/scripts.pory"

# 814 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallySouth:
# 815 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 816 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 817 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 818 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 819 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 820 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 821 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 822 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 823 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 824 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 825 "data/maps/PetalburgCity_Gym/scripts.pory"

# 826 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallyWest:
# 827 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 828 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 829 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 830 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 831 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 832 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 833 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 834 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 835 "data/maps/PetalburgCity_Gym/scripts.pory"

# 836 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallyEast:
# 837 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_down
# 838 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 839 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 840 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 841 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 842 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 843 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 844 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 845 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 846 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 847 "data/maps/PetalburgCity_Gym/scripts.pory"

# 848 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NoAmountOfTrainingIsEnough::
# 849 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 850 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadNoAmountOfTrainingIsEnough, MSGBOX_DEFAULT
# 851 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 852 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 853 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 854 "data/maps/PetalburgCity_Gym/scripts.pory"

# 855 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SpeedRoomDoor::
# 856 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 857 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_lt VAR_PETALBURG_GYM_STATE, 6, PetalburgCity_Gym_EventScript_DoorLocked
# 858 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 859 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 85
# 860 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterSpeedRoom, MSGBOX_YESNO
# 861 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 862 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 863 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 864 "data/maps/PetalburgCity_Gym/scripts.pory"

# 865 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_EnterRoom::
# 866 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 867 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay 30
# 868 "data/maps/PetalburgCity_Gym/scripts.pory"
	warpdoor MAP_PETALBURG_CITY_GYM, VAR_0x8008, VAR_0x8009
# 869 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 870 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 871 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 872 "data/maps/PetalburgCity_Gym/scripts.pory"

# 873 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_DontEnterRoom::
# 874 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 875 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 876 "data/maps/PetalburgCity_Gym/scripts.pory"

# 877 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_DoorLocked::
# 878 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DoorAppearsLocked, MSGBOX_DEFAULT
# 879 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 880 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 881 "data/maps/PetalburgCity_Gym/scripts.pory"

# 882 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ConfusionRoomDoor::
# 883 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 884 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_RANDALL, PetalburgCity_Gym_EventScript_DoorLocked
# 885 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 886 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 46
# 887 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterConfusionRoom, MSGBOX_YESNO
# 888 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 889 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 890 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 891 "data/maps/PetalburgCity_Gym/scripts.pory"

# 892 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftDefenseRoomDoor::
# 893 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 894 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_RANDALL, PetalburgCity_Gym_EventScript_DoorLocked
# 895 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 896 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 59
# 897 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterDefenseRoom, MSGBOX_YESNO
# 898 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 899 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 900 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 901 "data/maps/PetalburgCity_Gym/scripts.pory"

# 902 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightDefenseRoomDoor::
# 903 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 904 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_MARY, PetalburgCity_Gym_EventScript_DoorLocked
# 905 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 906 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 59
# 907 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterDefenseRoom, MSGBOX_YESNO
# 908 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 909 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 910 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 911 "data/maps/PetalburgCity_Gym/scripts.pory"

# 912 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RecoveryRoomDoor::
# 913 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 914 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_MARY, PetalburgCity_Gym_EventScript_DoorLocked
# 915 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 916 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 72
# 917 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterRecoveryRoom, MSGBOX_YESNO
# 918 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 919 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 920 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 921 "data/maps/PetalburgCity_Gym/scripts.pory"

# 922 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftStrengthRoomDoor::
# 923 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 924 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_PARKER, PetalburgCity_Gym_EventScript_DoorLocked
# 925 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 926 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 20
# 927 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterStrengthRoom, MSGBOX_YESNO
# 928 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 929 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 930 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 931 "data/maps/PetalburgCity_Gym/scripts.pory"

# 932 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightStrengthRoomDoor::
# 933 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 934 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_ALEXIA, PetalburgCity_Gym_EventScript_DoorLocked
# 935 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 936 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 20
# 937 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterStrengthRoom, MSGBOX_YESNO
# 938 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 939 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 940 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 941 "data/maps/PetalburgCity_Gym/scripts.pory"

# 942 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftOHKORoomDoor::
# 943 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 944 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_ALEXIA, PetalburgCity_Gym_EventScript_DoorLocked
# 945 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 946 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 33
# 947 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterOHKORoom, MSGBOX_YESNO
# 948 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 949 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 950 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 951 "data/maps/PetalburgCity_Gym/scripts.pory"

# 952 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightOHKORoomDoor::
# 953 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 954 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_GEORGE, PetalburgCity_Gym_EventScript_DoorLocked
# 955 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 956 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 33
# 957 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterOHKORoom, MSGBOX_YESNO
# 958 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 959 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 960 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 961 "data/maps/PetalburgCity_Gym/scripts.pory"

# 962 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftGymLeadersRoomDoor::
# 963 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 964 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_JODY, PetalburgCity_Gym_EventScript_DoorLocked
# 965 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 966 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 7
# 967 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterGymLeadersRoom, MSGBOX_YESNO
# 968 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 969 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 970 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 971 "data/maps/PetalburgCity_Gym/scripts.pory"

# 972 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightGymLeadersRoomDoor::
# 973 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 974 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_BERKE, PetalburgCity_Gym_EventScript_DoorLocked
# 975 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 976 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 7
# 977 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterGymLeadersRoom, MSGBOX_YESNO
# 978 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 979 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 980 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 981 "data/maps/PetalburgCity_Gym/scripts.pory"

# 982 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LibraryEmptyBook::
# 983 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_LibraryEmptyBook, MSGBOX_SIGN
# 984 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 985 "data/maps/PetalburgCity_Gym/scripts.pory"

# 986 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LibraryTypesBook::
# 987 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_LibraryTypesBook, MSGBOX_SIGN
# 988 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 989 "data/maps/PetalburgCity_Gym/scripts.pory"

# 990 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Randall::
# 991 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_RANDALL, PetalburgCity_Gym_Text_RandallIntro, PetalburgCity_Gym_Text_RandallDefeat, PetalburgCity_Gym_EventScript_SlideOpenSpeedRoomDoors
# 992 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_RandallPostBadge
# 993 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_RandallPostBattle, MSGBOX_AUTOCLOSE
# 994 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 995 "data/maps/PetalburgCity_Gym/scripts.pory"

# 996 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenSpeedRoomDoors::
# 997 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 998 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 999 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1000 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RandallPostBadge::
# 1001 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_RandallPostBadge, MSGBOX_NPC
# 1002 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1003 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1004 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Parker::
# 1005 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1006 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1007 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_lt VAR_PETALBURG_GYM_STATE, 6, PetalburgCity_Gym_EventScript_ParkerNotEnoughBadges
# 1008 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_ParkerPostBadge
# 1009 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_0_CLEARED, PetalburgCity_Gym_EventScript_ParkerPostBattle
# 1010 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_PARKER, PetalburgCity_Gym_EventScript_ClearParkerGuard
# 1011 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerGymIntro, MSGBOX_DEFAULT
# 1012 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerQuestion, MSGBOX_DEFAULT
# 1013 "data/maps/PetalburgCity_Gym/scripts.pory"
	multichoice 20, 6, MULTI_TRUE_FALSE_LATER, FALSE
# 1014 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 0, PetalburgCity_Gym_EventScript_ParkerCorrectAnswer
# 1015 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 2, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1016 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, MULTI_B_PRESSED, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1017 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerWrongAnswer, MSGBOX_DEFAULT
# 1018 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_PARKER, PetalburgCity_Gym_Text_ParkerDefeat
# 1019 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearParkerGuard
# 1020 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1021 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1022 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ParkerNotEnoughBadges::
# 1023 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerNotEnoughBadges, MSGBOX_DEFAULT
# 1024 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1025 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1026 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1027 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ParkerCorrectAnswer::
# 1028 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerCorrectAnswer, MSGBOX_DEFAULT
# 1029 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearParkerGuard
# 1030 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1031 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearParkerGuard::
# 1032 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_0_CLEARED
# 1033 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1034 "data/maps/PetalburgCity_Gym/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 1035 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 3, PetalburgCity_Gym_EventScript_MoveParkerGuardDownFirst
# 1036 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveParkerGuardLeftFirst
# 1037 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1038 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveParkerGuardLeftFirst::
# 1039 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_PARKER, PetalburgCity_Gym_Movement_ParkerLeftDownDownLeftLeft
# 1040 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1041 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionParkerCleared
# 1042 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1043 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1044 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1045 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveParkerGuardDownFirst::
# 1046 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_PARKER, PetalburgCity_Gym_Movement_ParkerDownDownLeftLeftLeft
# 1047 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1048 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionParkerCleared
# 1049 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1050 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1051 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1052 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenConfusionRoomDoors::
# 1053 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearParkerGuard
# 1054 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1055 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ParkerPostBattle::
# 1056 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerPostBattle, MSGBOX_AUTOCLOSE
# 1057 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1058 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1059 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1060 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ParkerPostBadge::
# 1061 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerPostBadge, MSGBOX_NPC
# 1062 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1063 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1064 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1065 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Mary::
# 1066 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1067 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1068 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_MaryPostBadge
# 1069 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_1_CLEARED, PetalburgCity_Gym_EventScript_MaryPostBattle
# 1070 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_MARY, PetalburgCity_Gym_EventScript_ClearMaryGuard
# 1071 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_MaryQuestion, MSGBOX_DEFAULT
# 1072 "data/maps/PetalburgCity_Gym/scripts.pory"
	multichoice 20, 4, MULTI_PETALBURG_GYM_TYPES_QUESTION, FALSE
# 1073 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 2, PetalburgCity_Gym_EventScript_MaryCorrectAnswer
# 1074 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 4, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1075 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, MULTI_B_PRESSED, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1076 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_MaryWrongAnswer, MSGBOX_DEFAULT
# 1077 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_MARY, PetalburgCity_Gym_Text_MaryDefeat
# 1078 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearMaryGuard
# 1079 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1080 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1081 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MaryCorrectAnswer::
# 1082 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_MaryCorrectAnswer, MSGBOX_DEFAULT
# 1083 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearMaryGuard
# 1084 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1085 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearMaryGuard::
# 1086 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_1_CLEARED
# 1087 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1088 "data/maps/PetalburgCity_Gym/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 1089 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_ne VAR_TEMP_3, 80, PetalburgCity_Gym_EventScript_MoveMaryGuard
# 1090 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 3, PetalburgCity_Gym_EventScript_PushPlayerBeforeMaryGuard
# 1091 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 4, PetalburgCity_Gym_EventScript_PushPlayerBeforeMaryGuard
# 1092 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 5, PetalburgCity_Gym_EventScript_PushPlayerBeforeMaryGuard
# 1093 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveMaryGuard
# 1094 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1095 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PushPlayerBeforeMaryGuard::
# 1096 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkDown
# 1097 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1098 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveMaryGuard
# 1099 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1100 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveMaryGuard::
# 1101 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_MARY, PetalburgCity_Gym_Movement_GuardWalkLeft3
# 1102 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1103 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionMaryCleared
# 1104 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1105 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1106 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1107 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenAccuracyRoomDoors::
# 1108 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearMaryGuard
# 1109 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1110 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MaryPostBattle::
# 1111 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_MaryPostBattle, MSGBOX_AUTOCLOSE
# 1112 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1113 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1114 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1115 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MaryPostBadge::
# 1116 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_MaryPostBadge, MSGBOX_NPC
# 1117 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1118 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1119 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1120 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_George::
# 1121 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1122 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1123 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_GeorgePostBadge
# 1124 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_2_CLEARED, PetalburgCity_Gym_EventScript_GeorgePostBattle
# 1125 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_GEORGE, PetalburgCity_Gym_EventScript_ClearGeorgeGuard
# 1126 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GeorgeQuestion, MSGBOX_DEFAULT
# 1127 "data/maps/PetalburgCity_Gym/scripts.pory"
	multichoice 20, 6, MULTI_TRUE_FALSE_LATER, FALSE
# 1128 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 0, PetalburgCity_Gym_EventScript_GeorgeCorrectAnswer
# 1129 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 2, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1130 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, MULTI_B_PRESSED, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1131 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GeorgeWrongAnswer, MSGBOX_DEFAULT
# 1132 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_GEORGE, PetalburgCity_Gym_Text_GeorgeDefeat
# 1133 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearGeorgeGuard
# 1134 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1135 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1136 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GeorgeCorrectAnswer::
# 1137 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GeorgeCorrectAnswer, MSGBOX_DEFAULT
# 1138 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearGeorgeGuard
# 1139 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1140 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearGeorgeGuard::
# 1141 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_2_CLEARED
# 1142 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1143 "data/maps/PetalburgCity_Gym/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 1144 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_ne VAR_TEMP_3, 67, PetalburgCity_Gym_EventScript_MoveGeorgeGuard
# 1145 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 3, PetalburgCity_Gym_EventScript_PushPlayerBeforeGeorgeGuard
# 1146 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 4, PetalburgCity_Gym_EventScript_PushPlayerBeforeGeorgeGuard
# 1147 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 5, PetalburgCity_Gym_EventScript_PushPlayerBeforeGeorgeGuard
# 1148 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveGeorgeGuard
# 1149 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1150 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PushPlayerBeforeGeorgeGuard::
# 1151 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkDown
# 1152 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1153 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveGeorgeGuard
# 1154 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1155 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveGeorgeGuard::
# 1156 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_GEORGE, PetalburgCity_Gym_Movement_GuardWalkLeft3
# 1157 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1158 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionGeorgeCleared
# 1159 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1160 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1161 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1162 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenRecoveryRoomDoors::
# 1163 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearGeorgeGuard
# 1164 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1165 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GeorgePostBattle::
# 1166 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GeorgePostBattle, MSGBOX_AUTOCLOSE
# 1167 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1168 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1169 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1170 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GeorgePostBadge::
# 1171 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GeorgePostBadge, MSGBOX_NPC
# 1172 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1173 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1174 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1175 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Alexia::
# 1176 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1177 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1178 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_AlexiaPostBadge
# 1179 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_3_CLEARED, PetalburgCity_Gym_EventScript_AlexiaPostBattle
# 1180 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_ALEXIA, PetalburgCity_Gym_EventScript_ClearAlexiaGuard
# 1181 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_AlexiaQuestion, MSGBOX_DEFAULT
# 1182 "data/maps/PetalburgCity_Gym/scripts.pory"
	multichoice 20, 6, MULTI_TRUE_FALSE_LATER, FALSE
# 1183 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 1, PetalburgCity_Gym_EventScript_AlexiaCorrectAnswer
# 1184 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 2, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1185 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, MULTI_B_PRESSED, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1186 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_AlexiaWrongAnswer, MSGBOX_DEFAULT
# 1187 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_ALEXIA, PetalburgCity_Gym_Text_AlexiaDefeat
# 1188 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearAlexiaGuard
# 1189 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1190 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1191 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_AlexiaCorrectAnswer::
# 1192 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_AlexiaCorrectAnswer, MSGBOX_DEFAULT
# 1193 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearAlexiaGuard
# 1194 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1195 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearAlexiaGuard::
# 1196 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_3_CLEARED
# 1197 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1198 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_ALEXIA, PetalburgCity_Gym_Movement_GuardWalkRight2
# 1199 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1200 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionAlexiaCleared
# 1201 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1202 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1203 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1204 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenDefenseRoomDoors::
# 1205 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearAlexiaGuard
# 1206 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1207 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_AlexiaPostBattle::
# 1208 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_AlexiaPostBattle, MSGBOX_AUTOCLOSE
# 1209 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1210 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1211 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1212 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_AlexiaPostBadge::
# 1213 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_AlexiaPostBadge, MSGBOX_NPC
# 1214 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1215 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1216 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1217 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Berke::
# 1218 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1219 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1220 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_BerkePostBadge
# 1221 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_4_CLEARED, PetalburgCity_Gym_EventScript_BerkePostBattle
# 1222 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_BERKE, PetalburgCity_Gym_EventScript_ClearBerkeGuard
# 1223 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_BerkeQuestion, MSGBOX_DEFAULT
# 1224 "data/maps/PetalburgCity_Gym/scripts.pory"
	multichoice 20, 6, MULTI_TRUE_FALSE_LATER, FALSE
# 1225 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 0, PetalburgCity_Gym_EventScript_BerkeCorrectAnswer
# 1226 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 2, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1227 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, MULTI_B_PRESSED, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1228 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_BerkeWrongAnswer, MSGBOX_DEFAULT
# 1229 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_BERKE, PetalburgCity_Gym_Text_BerkeDefeat
# 1230 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearBerkeGuard
# 1231 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1232 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1233 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BerkeCorrectAnswer::
# 1234 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_BerkeCorrectAnswer, MSGBOX_DEFAULT
# 1235 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearBerkeGuard
# 1236 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1237 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearBerkeGuard::
# 1238 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_4_CLEARED
# 1239 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1240 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_BERKE, PetalburgCity_Gym_Movement_GuardWalkLeft2
# 1241 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1242 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionBerkeCleared
# 1243 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1244 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1245 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1246 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenOHKORoomDoors::
# 1247 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearBerkeGuard
# 1248 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1249 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BerkePostBattle::
# 1250 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_BerkePostBattle, MSGBOX_AUTOCLOSE
# 1251 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1252 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1253 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1254 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BerkePostBadge::
# 1255 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_BerkePostBadge, MSGBOX_NPC
# 1256 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1257 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1258 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1259 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Jody::
# 1260 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1261 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1262 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_JodyPostBadge
# 1263 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_5_CLEARED, PetalburgCity_Gym_EventScript_JodyPostBattle
# 1264 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_JODY, PetalburgCity_Gym_EventScript_ClearJodyGuard
# 1265 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_JodyQuestion, MSGBOX_DEFAULT
# 1266 "data/maps/PetalburgCity_Gym/scripts.pory"
	multichoice 20, 6, MULTI_TRUE_FALSE_LATER, FALSE
# 1267 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 1, PetalburgCity_Gym_EventScript_JodyCorrectAnswer
# 1268 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 2, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1269 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, MULTI_B_PRESSED, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1270 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_JodyWrongAnswer, MSGBOX_DEFAULT
# 1271 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_JODY, PetalburgCity_Gym_Text_JodyDefeat
# 1272 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearJodyGuard
# 1273 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1274 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1275 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_JodyCorrectAnswer::
# 1276 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_JodyCorrectAnswer, MSGBOX_DEFAULT
# 1277 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearJodyGuard
# 1278 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1279 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearJodyGuard::
# 1280 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_5_CLEARED
# 1281 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1282 "data/maps/PetalburgCity_Gym/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 1283 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_ne VAR_TEMP_2, 5, PetalburgCity_Gym_EventScript_MoveJodyGuardRightFirst
# 1284 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_3, 18, PetalburgCity_Gym_EventScript_MoveJodyGuardDownFirst
# 1285 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_3, 19, PetalburgCity_Gym_EventScript_MoveJodyGuardDownFirst
# 1286 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_3, 20, PetalburgCity_Gym_EventScript_MoveJodyGuardDownFirst
# 1287 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveJodyGuardRightFirst
# 1288 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1289 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveJodyGuardRightFirst::
# 1290 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_JODY, PetalburgCity_Gym_Movement_JodyRightDownDown
# 1291 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1292 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionJodyCleared
# 1293 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1294 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1295 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1296 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveJodyGuardDownFirst::
# 1297 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_JODY, PetalburgCity_Gym_Movement_JodyDownDownRight
# 1298 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1299 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionJodyCleared
# 1300 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1301 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1302 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1303 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenStrengthRoomDoors::
# 1304 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearJodyGuard
# 1305 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1306 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_JodyPostBattle::
# 1307 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_JodyPostBattle, MSGBOX_AUTOCLOSE
# 1308 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1309 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1310 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1311 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_JodyPostBadge::
# 1312 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_JodyPostBadge, MSGBOX_NPC
# 1313 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1314 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1315 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1316 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GuardAnswerLater::
# 1317 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GuardAnswerLater, MSGBOX_DEFAULT
# 1318 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1319 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1320 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1321 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionClearedGuards::
# 1322 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_0_CLEARED, PetalburgCity_Gym_EventScript_PositionParkerCleared
# 1323 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_PARKER, PetalburgCity_Gym_EventScript_PositionParkerCleared
# 1324 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_1_CLEARED, PetalburgCity_Gym_EventScript_PositionMaryCleared
# 1325 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_MARY, PetalburgCity_Gym_EventScript_PositionMaryCleared
# 1326 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_2_CLEARED, PetalburgCity_Gym_EventScript_PositionGeorgeCleared
# 1327 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_GEORGE, PetalburgCity_Gym_EventScript_PositionGeorgeCleared
# 1328 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_3_CLEARED, PetalburgCity_Gym_EventScript_PositionAlexiaCleared
# 1329 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_ALEXIA, PetalburgCity_Gym_EventScript_PositionAlexiaCleared
# 1330 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_4_CLEARED, PetalburgCity_Gym_EventScript_PositionBerkeCleared
# 1331 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_BERKE, PetalburgCity_Gym_EventScript_PositionBerkeCleared
# 1332 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_5_CLEARED, PetalburgCity_Gym_EventScript_PositionJodyCleared
# 1333 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_JODY, PetalburgCity_Gym_EventScript_PositionJodyCleared
# 1334 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1335 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1336 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionParkerCleared::
# 1337 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_PARKER, 1, 106
# 1338 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_PARKER, MOVEMENT_TYPE_FACE_LEFT
# 1339 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1340 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1341 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionMaryCleared::
# 1342 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_MARY, 3, 80
# 1343 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_MARY, MOVEMENT_TYPE_FACE_DOWN
# 1344 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1345 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1346 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionGeorgeCleared::
# 1347 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_GEORGE, 3, 67
# 1348 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_GEORGE, MOVEMENT_TYPE_FACE_DOWN
# 1349 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1350 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1351 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionAlexiaCleared::
# 1352 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_ALEXIA, 4, 48
# 1353 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_ALEXIA, MOVEMENT_TYPE_FACE_DOWN
# 1354 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1355 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1356 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionBerkeCleared::
# 1357 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_BERKE, 4, 31
# 1358 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_BERKE, MOVEMENT_TYPE_FACE_DOWN
# 1359 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1360 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1361 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionJodyCleared::
# 1362 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_JODY, 5, 20
# 1363 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_JODY, MOVEMENT_TYPE_FACE_DOWN
# 1364 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1365 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1366 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_ParkerLeftDownDownLeftLeft:
# 1367 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1368 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1369 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1370 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1371 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1372 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_left
# 1373 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1374 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1375 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_ParkerDownDownLeftLeftLeft:
# 1376 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1377 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1378 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1379 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1380 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1381 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_left
# 1382 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1383 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1384 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_GuardWalkLeft3:
# 1385 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1386 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1387 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1388 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_down
# 1389 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1390 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1391 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_GuardWalkLeft2:
# 1392 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1393 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1394 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_down
# 1395 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1396 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1397 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_GuardWalkRight2:
# 1398 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 1399 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 1400 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_down
# 1401 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1402 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1403 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_JodyRightDownDown:
# 1404 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 1405 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1406 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1407 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_down
# 1408 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1409 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1410 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_JodyDownDownRight:
# 1411 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1412 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1413 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 1414 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_down
# 1415 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1416 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1417 "data/maps/PetalburgCity_Gym/scripts.pory"
@ VAR_0x8004 below is the room number
# 1418 "data/maps/PetalburgCity_Gym/scripts.pory"
@ VAR_0x8005 below is 0 when the door should be slid open and 1 when it should be unlocked immediately
# 1419 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenGymEntranceDoors::
# 1420 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 1
# 1421 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1422 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1423 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetEntranceRoomDoorMetatiles
# 1424 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1425 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1426 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenSpeedRoomDoors::
# 1427 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 2
# 1428 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1429 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1430 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetSpeedRoomDoorMetatiles
# 1431 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1432 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1433 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenAccuracyRoomDoors::
# 1434 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 3
# 1435 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1436 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1437 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetAccuracyRoomDoorMetatiles
# 1438 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1439 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1440 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenConfusionRoomDoors::
# 1441 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 4
# 1442 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1443 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1444 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetConfusionRoomDoorMetatiles
# 1445 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1446 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1447 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenDefenseRoomDoors::
# 1448 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 5
# 1449 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1450 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1451 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetDefenseRoomDoorMetatiles
# 1452 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1453 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1454 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenRecoveryRoomDoors::
# 1455 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 6
# 1456 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1457 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1458 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetRecoveryRoomDoorMetatiles
# 1459 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1460 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1461 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenStrengthRoomDoors::
# 1462 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 7
# 1463 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1464 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1465 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetStrengthRoomDoorMetatiles
# 1466 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1467 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1468 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenOHKORoomDoors::
# 1469 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 8
# 1470 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1471 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1472 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetOHKORoomDoorMetatiles
# 1473 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1474 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1475 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetEntranceRoomDoorMetatiles::
# 1476 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 85, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1477 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 85, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1478 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 98, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1479 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 98, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1480 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1481 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1482 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetSpeedRoomDoorMetatiles::
# 1483 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 46, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1484 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 46, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1485 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 59, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1486 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 59, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1487 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1488 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1489 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetAccuracyRoomDoorMetatiles::
# 1490 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 59, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1491 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 59, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1492 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 72, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1493 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 72, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1494 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1495 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1496 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetConfusionRoomDoorMetatiles::
# 1497 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 20, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1498 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 20, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1499 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1500 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1501 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetDefenseRoomDoorMetatiles::
# 1502 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 20, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1503 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 20, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1504 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 33, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1505 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 33, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1506 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1507 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1508 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetRecoveryRoomDoorMetatiles::
# 1509 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 33, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1510 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 33, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1511 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1512 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1513 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetStrengthRoomDoorMetatiles::
# 1514 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 7, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1515 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 7, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1516 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1517 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1518 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetOHKORoomDoorMetatiles::
# 1519 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 7, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1520 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 7, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1521 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1522 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1523 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenRoomDoors::
# 1524 "data/maps/PetalburgCity_Gym/scripts.pory"
	special PetalburgGymSlideOpenRoomDoors
# 1525 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1526 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1527 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1528 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_UnlockRoomDoors::
# 1529 "data/maps/PetalburgCity_Gym/scripts.pory"
	special PetalburgGymUnlockRoomDoors
# 1530 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1531 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1532 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymGuide::
# 1533 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1534 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1535 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_GymGuidePostVictory
# 1536 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 1537 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1538 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1539 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1540 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymGuidePostVictory::
# 1541 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 1542 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1543 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1544 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1545 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftGymStatue::
# 1546 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 1547 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE05_GET, PetalburgCity_Gym_EventScript_GymStatueCertified
# 1548 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_GymStatue
# 1549 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1550 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1551 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightGymStatue::
# 1552 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 1553 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE05_GET, PetalburgCity_Gym_EventScript_GymStatueCertified
# 1554 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_GymStatue
# 1555 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1556 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1557 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymStatueCertified::
# 1558 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 1559 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 1560 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1561 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1562 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymStatue::
# 1563 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 1564 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 1565 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1566 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1567 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadYoureHereWithYourPokemon:
# 1568 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Oh?\n"
# 1569 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You must be {PLAYER}, right?\p"
# 1570 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "ACACIA said you would be arriving.\p"
# 1571 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "We met long ago, studying to become\n"
# 1572 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "POKéMON professors together.\p"
# 1573 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I chose the path of a full-time\n"
# 1574 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GYM LEADER, but ACACIA still guides\l"
# 1575 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "and inspires me.\p"
# 1576 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "And you…\n"
# 1577 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I sense something truly special.\p"
# 1578 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "If ACACIA believes in your potential,\n"
# 1579 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "then so do I.\p"
# 1580 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Welcome to the PETALBURG GYM,\n"
# 1581 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}. Your adventure as a TRAINER\l"
# 1582 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "truly begins here.$"
# 1583 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1584 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyIdLikeAPokemon:
# 1585 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Perfect timing!$"
# 1586 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1587 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadOhYoureWallyRight:
# 1588 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: {PLAYER}, meet LUKA.\n"
# 1589 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "He's my neighbor and a bold,\l"
# 1590 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "curious prodigy.\p"
# 1591 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Ever since he was a child,\n"
# 1592 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "he's had a special bond with POKéMON.\p"
# 1593 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "He's always chasing strange\n"
# 1594 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "mysteries in HOENN, like that\l"
# 1595 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "recent comet.$"
# 1596 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1597 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyIveNeverCaughtAPokemon:
# 1598 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: I'm heading to VERDANTURF soon.\p"
# 1599 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I need to explore HOENN and\n"
# 1600 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "investigate the strange comet\l"
# 1601 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "that passed over recently.\p"
# 1602 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "But before that, I want a real\n"
# 1603 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "battle, one worthy of a proper\l"
# 1604 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "sendoff.$"
# 1605 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1606 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadHmISee:
# 1607 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Hm… I see.\n"
# 1608 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You both arrived at the perfect time.$"
# 1609 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1610 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadPlayerGoWithWally:
# 1611 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, ACACIA has an eye\n"
# 1612 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "for talent… and so do I.\p"
# 1613 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA is sharp and fearless.\p"
# 1614 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Go to ROUTE 102 and battle him.\p"
# 1615 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Then come tell me the result.$"
# 1616 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1617 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_IllLoanYouMyZigzagoon:
# 1618 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Calendula: Luka, remember your training!$"
# 1619 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1620 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyThankYouAndDadGivesPokeBall:
# 1621 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: Don’t worry, CALENDULA.\n"
# 1622 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I’ve got everything I need.$"
# 1623 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1624 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyOhWowThankYou:
# 1625 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: I'll prove you were right to\n"
# 1626 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "believe in me.$"
# 1627 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1628 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WouldYouReallyComeWithMe:
# 1629 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: {PLAYER}, ready?\n"
# 1630 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Let's head to ROUTE 102 and\l"
# 1631 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "have a battle to remember!$"
# 1632 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1633 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadSoDidItWorkOut_LukaWon:
# 1634 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: So… LUKA came out on top?\n"
# 1635 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "That's fine.\p"
# 1636 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, a loss is not the end.\n"
# 1637 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "What matters is that you battled\l"
# 1638 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "with your full heart.\p"
# 1639 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Your bond with your POKéMON\n"
# 1640 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "was clear to see, even in defeat.$"
# 1641 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1642 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyThankYouBye_LukaWon:
# 1643 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: It was a real battle, {PLAYER}.\n"
# 1644 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I pushed hard, and so did you.\p"
# 1645 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I hope this makes you want to\n"
# 1646 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "grow even stronger.\p"
# 1647 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Keep chasing your goal.\n"
# 1648 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I'll be watching!\p"
# 1649 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Gotta go! That strange comet\n"
# 1650 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "in HOENN is on my mind.\p"
# 1651 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "See you soon, {PLAYER}!$"
# 1652 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1653 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadSoDidItWorkOut:
# 1654 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Excellent work!\n"
# 1655 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You both did great.\p"
# 1656 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, I am confident you'll be\n"
# 1657 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "safe in the woods if your bond with\l"
# 1658 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "your POKéMON is this strong.$"
# 1659 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1660 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyThankYouBye:
# 1661 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: That was a great battle!\n"
# 1662 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You pushed me, {PLAYER}.\p"
# 1663 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I lost, but I held back a bit.\n"
# 1664 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Next time, I’ll give my full strength.\p"
# 1665 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Gotta go! That strange comet\n"
# 1666 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "in HOENN is on my mind.\p"
# 1667 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I need to learn more.\n"
# 1668 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "See you soon, {PLAYER}!$"
# 1669 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1670 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadGoCollectBadges:
# 1671 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Now…\n"
# 1672 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, to become a real TRAINER,\l"
# 1673 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "listen carefully.\p"
# 1674 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "First, go to RUSTBORO CITY.\n"
# 1675 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Challenge TERRA, the ROCK-type\l"
# 1676 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "GYM LEADER.\p"
# 1677 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Defeat her, then continue across HOENN\n"
# 1678 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "and earn badges from other GYM LEADERS.\p"
# 1679 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "But be cautious.\n"
# 1680 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Strange events have been happening,\l"
# 1681 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "and that mysterious comet passed\l"
# 1682 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "recently...\p"
# 1683 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I have a bad feeling about it.\n"
# 1684 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Stay alert, {PLAYER}, and come back\l"
# 1685 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "stronger for our GYM battle.$"
# 1686 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1687 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanGoToRustboro:
# 1688 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Hm? Aren't you heading to\n"
# 1689 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "RUSTBORO CITY's POKéMON GYM?\p"
# 1690 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You still have much to learn.\p"
# 1691 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Keep exploring, {PLAYER}.\n"
# 1692 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I want to help you grow.\p"
# 1693 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Return after you earn 4 BADGES,\n"
# 1694 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "then challenge me!$"
# 1695 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1696 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1697 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanGoToDewford:
# 1698 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: I see… So, you've beaten\n"
# 1699 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the GYM LEADER in RUSTBORO CITY.\p"
# 1700 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But there are many more TRAINERS\n"
# 1701 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "who are stronger than you, {PLAYER}.\p"
# 1702 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Across the sea in DEWFORD TOWN is a\n"
# 1703 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GYM LEADER named RENTON.\p"
# 1704 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You should go challenge him.$"
# 1705 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1706 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_YouHaveGottenStronger:
# 1707 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: Hm… {PLAYER}, you have gotten\n"
# 1708 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "stronger.\p"
# 1709 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I can tell by the number of BADGES\n"
# 1710 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "that you've earned.$"
# 1711 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1712 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanIntro:
# 1713 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: Hm…\n"
# 1714 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "So, you did get four GYM BADGES.\p"
# 1715 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Fine, as I promised, we will have\n"
# 1716 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a POKéMON battle.\p"
# 1717 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}…\p"
# 1718 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'm so happy that I can have\n"
# 1719 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a real battle with my own student.\p"
# 1720 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But, a battle is a battle!\p"
# 1721 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I will do everything in my power as\n"
# 1722 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a GYM LEADER to win.\p"
# 1723 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}, you'd better give it your\n"
# 1724 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "best shot, too!$"
# 1725 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1726 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanDefeat:
# 1727 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "…\p"
# 1728 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I… I can't…\p"
# 1729 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I can't believe it. {PLAYER}…\p"
# 1730 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I lost to {PLAYER}?\p"
# 1731 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But, rules are rules!\n"
# 1732 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Here, take this.$"
# 1733 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1734 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ReceivedBalanceBadge:
# 1735 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER} received the BALANCE BADGE\n"
# 1736 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "from CALENDULA!$"
# 1737 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1738 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ExplainBalanceBadgeTakeThis:
# 1739 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: With that BADGE, the DEFENSE\n"
# 1740 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "of all your POKéMON will increase.\p"
# 1741 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "POKéMON that know the HM move SURF\n"
# 1742 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "will be able to travel over water.\p"
# 1743 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This is my gift to you. {PLAYER}, I'm\n"
# 1744 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "sure you can use it correctly.$"
# 1745 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1746 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ExplainFacade:
# 1747 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: TM42 contains FACADE.\p"
# 1748 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It doubles the power of moves if\n"
# 1749 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the POKéMON is poisoned, paralyzed,\l"
# 1750 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "or burned.\p"
# 1751 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It might be able to turn a bad\n"
# 1752 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "situation into an advantage.$"
# 1753 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1754 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadHappyAndSad:
# 1755 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: As the GYM LEADER, I can't\n"
# 1756 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "express how upset I am…\p"
# 1757 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But as a mentor, it makes me both\n"
# 1758 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "happy and a little sad. It's odd…$"
# 1759 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1760 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_PleaseComeWithMe:
# 1761 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Ah, there you are, {PLAYER}{KUN}!\p"
# 1762 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Please come with me.\n"
# 1763 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I have something I want you to have.$"
# 1764 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1765 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_LetMeBorrowPlayer:
# 1766 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA, you don't mind, do you?\p"
# 1767 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Let me borrow {PLAYER}{KUN} for\n"
# 1768 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a minute or two.$"
# 1769 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1770 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_LukasGrandparentsHaveSomethingToSay:
# 1771 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "LUKA's grandparents have something\n"
# 1772 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "to say to you at his house.$"
# 1773 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1774 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadGoingToKeepTraining:
# 1775 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}, I'm really proud\n"
# 1776 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "of how far you've come.\p"
# 1777 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Battles aren't about revenge.\n"
# 1778 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "They're about growth for both of us.\p"
# 1779 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'll continue training and learning,\n"
# 1780 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "so I can guide new trainers better.\p"
# 1781 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "And when you have the time,\n"
# 1782 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "go visit ACACIA.\p"
# 1783 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "She cares about you deeply,\n"
# 1784 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "and she's always cheering you on.$"
# 1785 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1786 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadNoAmountOfTrainingIsEnough:
# 1787 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}, how is your\n"
# 1788 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "journey going?\p"
# 1789 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The world of POKéMON is incredibly deep.\n"
# 1790 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "There is always something new to learn.\p"
# 1791 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Research, observation, and sharing\n"
# 1792 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "knowledge with young trainers -\l"
# 1793 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "that is what truly strengthens us.\p"
# 1794 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Battles are important, yes…\n"
# 1795 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "but understanding POKéMON is essential.$"
# 1796 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1797 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymGuideAdvice:
# 1798 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hey, how's it going, CHAMPION-\n"
# 1799 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "bound {PLAYER}?\p"
# 1800 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA's GYM is set up like\n"
# 1801 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a research lab.\p"
# 1802 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The researchers guarding each door\n"
# 1803 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "will ask you a question.\p"
# 1804 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Answer correctly, and they'll step\n"
# 1805 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "aside without a battle.\p"
# 1806 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Answer wrong, and you'll have to\n"
# 1807 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "battle your way through.\p"
# 1808 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "If you're unsure, look around the\n"
# 1809 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "rooms for clues before answering.\p"
# 1810 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA values knowledge and\n"
# 1811 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "strategy, so keep your eyes sharp!$"
# 1812 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1813 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymGuidePostVictory:
# 1814 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}! Whoa!\p"
# 1815 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You defeated CALENDULA?\n"
# 1816 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Even with all her knowledge?\p"
# 1817 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That's incredible!\n"
# 1818 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "What an unexpected outcome!$"
# 1819 "data/maps/PetalburgCity_Gym/scripts.pory"
	
# 1820 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_LibraryEmptyBook:
# 1821 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "There's nothing useful here.$"
# 1822 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1823 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_LibraryTypesBook:
# 1824 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It's a book about POKéMON types!\n"
# 1825 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "There are 18 different types.$"
# 1826 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1827 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallIntro:
# 1828 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Looking for a clue to MARY's\n"
# 1829 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "question?\p"
# 1830 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Beat me in battle, and I'll point\n"
# 1831 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "you to the right book.$"
# 1832 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1833 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallDefeat:
# 1834 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That was a magnificent battle!$"
# 1835 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1836 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallPostBattle:
# 1837 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Fine, here's your clue.\p"
# 1838 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The book you want is in the middle\n"
# 1839 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "row, second from the right.$"
# 1840 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1841 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallPostBadge:
# 1842 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Whomever you beat, and whomever you\n"
# 1843 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "may lose to, you never shirk from\l"
# 1844 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "training yourself and your POKéMON.\p"
# 1845 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That's what I think being a\n"
# 1846 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GYM LEADER is all about.$"
# 1847 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1848 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerIntro:
# 1849 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This is the CONFUSION ROOM.\p"
# 1850 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Let me see how well bonded you are\n"
# 1851 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with your POKéMON!$"
# 1852 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1853 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerDefeat:
# 1854 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I couldn't confuse your team enough…\n"
# 1855 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You share a strong bond together.$"
# 1856 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1857 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerPostBattle:
# 1858 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The first door is open.\p"
# 1859 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA's researchers will test\n"
# 1860 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "what you know as much as how you\l"
# 1861 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "battle, so keep your mind sharp.$"
# 1862 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1863 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerPostBadge:
# 1864 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "After you beat our LEADER, the\n"
# 1865 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "training has become a lot tougher.$"
# 1866 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1867 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerNotEnoughBadges:
# 1868 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You don't have enough badges to face\n"
# 1869 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA yet. Please come back once\l"
# 1870 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "you have four GYM BADGES.$"
# 1871 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1872 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerGymIntro:
# 1873 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Welcome to CALENDULA's research lab.\p"
# 1874 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Each researcher here will ask you\n"
# 1875 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a question.\p"
# 1876 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Answer correctly, and you may pass.\n"
# 1877 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Answer incorrectly, and you'll need\l"
# 1878 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "to prove yourself in battle.$"
# 1879 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1880 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerQuestion:
# 1881 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "True or false?\p"
# 1882 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA's first partner was\n"
# 1883 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "an EEVEE.$"
# 1884 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1885 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerCorrectAnswer:
# 1886 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Correct. EEVEE was the first POKEMON\n"
# 1887 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "to help CALENDULA with her research.\p"
# 1888 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You may proceed.$"
# 1889 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1890 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerWrongAnswer:
# 1891 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Incorrect. CALENDULA and EEVEE go\n"
# 1892 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "back farther than this lab itself.\p"
# 1893 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Let's see how you handle battle.$"
# 1894 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1895 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeIntro:
# 1896 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Just when you think you're going to\n"
# 1897 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "win, your opponent restores HP…\p"
# 1898 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Can you just imagine how awful that\n"
# 1899 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "must feel?\p"
# 1900 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'll show you exactly how awful it\n"
# 1901 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "feels!$"
# 1902 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1903 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeDefeat:
# 1904 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I couldn't restore HP enough…\n"
# 1905 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "What ATTACK power…$"
# 1906 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1907 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgePostBattle:
# 1908 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You may pass.\p"
# 1909 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "A good researcher keeps notes, but\n"
# 1910 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a great TRAINER remembers when\l"
# 1911 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "those notes matter.$"
# 1912 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1913 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgePostBadge:
# 1914 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'm going to keep training at GYMS.\n"
# 1915 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "One day, I'll become a LEADER.$"
# 1916 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1917 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeIntro:
# 1918 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'm not going to take it easy\n"
# 1919 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "just because you're her apprentice.\p"
# 1920 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'll show you how brutal it is\n"
# 1921 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "when a POKEMON takes a critical hit!$"
# 1922 "data/maps/PetalburgCity_Gym/scripts.pory"
	
# 1923 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeDefeat:
# 1924 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Your power…\n"
# 1925 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You're the real deal.$"
# 1926 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1927 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkePostBattle:
# 1928 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You're cleared to continue.\p"
# 1929 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Every question in this lab is here\n"
# 1930 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "because CALENDULA expects you to\l"
# 1931 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "think under pressure.$"
# 1932 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1933 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkePostBadge:
# 1934 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Since CALENDULA became our\n"
# 1935 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "LEADER, we've grown a lot.\p"
# 1936 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "We've learned so much about\n"
# 1937 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the POKEMON world\l"
# 1938 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "beyond just battling.\p"
# 1939 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Knowledge and strategy matter\n"
# 1940 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "just as much as strength now.$"
# 1941 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1942 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryIntro:
# 1943 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Giggle…\n"
# 1944 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This is the ACCURACY ROOM.\p"
# 1945 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It's pretty nasty when every attack\n"
# 1946 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "lands without fail.$"
# 1947 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1948 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryDefeat:
# 1949 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You were a cut above me…$"
# 1950 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1951 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryPostBattle:
# 1952 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The path is clear now.\p"
# 1953 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "There are answers tucked all around\n"
# 1954 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "this lab, if you know where to look.$"
# 1955 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1956 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryPostBadge:
# 1957 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you know what we're trying to\n"
# 1958 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "achieve as TRAINERS?\p"
# 1959 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "We're striving to become soul mates\n"
# 1960 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with our POKéMON.$"
# 1961 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1962 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaIntro:
# 1963 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The higher the DEFENSE, the more\n"
# 1964 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "reckless I can be in attack.$"
# 1965 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1966 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaDefeat:
# 1967 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Our defenses weren't enough…$"
# 1968 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1969 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaPostBattle:
# 1970 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Go ahead.\p"
# 1971 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA likes challengers who can\n"
# 1972 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "separate useful facts from noisy\l"
# 1973 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "ones.$"
# 1974 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1975 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaPostBadge:
# 1976 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hi! Have you tried using SURF?$"
# 1977 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1978 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyIntro:
# 1979 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA taught us to battle\n"
# 1980 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with focus and discipline.\p"
# 1981 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "So I'll face you seriously,\n"
# 1982 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "no holding back!$"
# 1983 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1984 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyDefeat:
# 1985 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But… I went all out!$"
# 1986 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1987 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyPostBattle:
# 1988 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That's the last check before\n"
# 1989 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA.\p"
# 1990 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Take a breath, review what you've\n"
# 1991 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "learned, and go show her.$"
# 1992 "data/maps/PetalburgCity_Gym/scripts.pory"
	
# 1993 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyPostBadge:
# 1994 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Sure, it's fine to make your POKéMON\n"
# 1995 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "stronger.\p"
# 1996 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But what decides the winner?\p"
# 1997 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Why, it's the feelings TRAINERS have\n"
# 1998 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "for their POKéMON.$"
# 1999 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2000 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryQuestion:
# 2001 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Research check! How many different\n"
# 2002 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "POKéMON types are currently known?$"
# 2003 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2004 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryCorrectAnswer:
# 2005 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Correct! There are 18 different\n"
# 2006 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "POKéMON types.\p"
# 2007 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You've earned your way through.$"
# 2008 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2009 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryWrongAnswer:
# 2010 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Not quite! If you want a hint,\n"
# 2011 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "look around the library.\p"
# 2012 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Let me show you why research\n"
# 2013 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "matters in battle.$"
# 2014 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2015 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeQuestion:
# 2016 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Recovery check! Can a held BERRY\n"
# 2017 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "restore HP without using up\l"
# 2018 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the POKEMON's turn?$"
# 2019 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2020 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeCorrectAnswer:
# 2021 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Correct. A well-timed held item\n"
# 2022 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "can save a battle all by itself.\p"
# 2023 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Go on through.$"
# 2024 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2025 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeWrongAnswer:
# 2026 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That's not right. If you overlook\n"
# 2027 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "held items, recovery will surprise you!$"
# 2028 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2029 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaQuestion:
# 2030 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Defense check! Does the DEFENSE\n"
# 2031 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "stat reduce damage from\l"
# 2032 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "special moves?$"
# 2033 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2034 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaCorrectAnswer:
# 2035 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Correct! DEFENSE handles physical\n"
# 2036 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "damage. Special moves test\l"
# 2037 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "SP. DEF instead. You may pass.$"
# 2038 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2039 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaWrongAnswer:
# 2040 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Wrong answer. A strong wall still\n"
# 2041 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "needs the right kind of defense!$"
# 2042 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2043 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeQuestion:
# 2044 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Critical-hit check! Can a critical\n"
# 2045 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "hit break through some stat changes\l"
# 2046 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "that would weaken its damage?$"
# 2047 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2048 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeCorrectAnswer:
# 2049 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Correct. Critical hits can cut\n"
# 2050 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "through more than just HP.\p"
# 2051 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You've got sharp instincts.$"
# 2052 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2053 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeWrongAnswer:
# 2054 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Careful! Critical hits don't play\n"
# 2055 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "by ordinary damage rules.$"
# 2056 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2057 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyQuestion:
# 2058 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Final check! Is the move with the\n"
# 2059 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "highest base power always the\l"
# 2060 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "best move to choose?$"
# 2061 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2062 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyCorrectAnswer:
# 2063 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Correct. Power matters, but timing,\n"
# 2064 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "accuracy, and strategy matter too.\p"
# 2065 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You're ready to continue.$"
# 2066 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2067 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyWrongAnswer:
# 2068 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Nope! Raw power alone won't carry\n"
# 2069 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "you through CALENDULA's battle.$"
# 2070 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2071 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GuardAnswerLater:
# 2072 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Okay. Come back when you're ready\n"
# 2073 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "to give your answer.$"
# 2074 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2075 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DoorAppearsLocked:
# 2076 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This door appears to be locked\n"
# 2077 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "right now…$"
# 2078 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2079 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterSpeedRoom:
# 2080 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“SPEED ROOM,” the sign says.\p"
# 2081 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2082 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2083 "data/maps/PetalburgCity_Gym/scripts.pory"
@ Unused
# 2084 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DoorAppearsLocked2:
# 2085 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This door appears to be locked\n"
# 2086 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "right now…$"
# 2087 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2088 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterConfusionRoom:
# 2089 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“CONFUSION ROOM,” the sign says.\p"
# 2090 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2091 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2092 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterDefenseRoom:
# 2093 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“DEFENSE ROOM,” the sign says.\p"
# 2094 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2095 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2096 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterRecoveryRoom:
# 2097 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“RECOVERY ROOM,” the sign says.\p"
# 2098 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2099 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2100 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterStrengthRoom:
# 2101 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“STRENGTH ROOM,” the sign says.\p"
# 2102 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2103 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2104 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterOHKORoom:
# 2105 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“ONE-HIT KO ROOM,” the sign says.\p"
# 2106 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2107 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2108 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterGymLeadersRoom:
# 2109 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“GYM LEADER'S ROOM\p"
# 2110 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“See for yourself what POKéMON await\n"
# 2111 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "you!” the sign says.\p"
# 2112 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2113 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2114 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymStatue:
# 2115 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM$"
# 2116 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2117 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymStatueCertified:
# 2118 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM\p"
# 2119 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA'S CERTIFIED TRAINERS:\n"
# 2120 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}$"
# 2121 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2122 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanPreRematch:
# 2123 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}…\n"
# 2124 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I had a feeling that you would come.\p"
# 2125 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I would never refuse to accept\n"
# 2126 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a challenge from you.\p"
# 2127 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You do understand, don't you?\p"
# 2128 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Inside a GYM, it doesn't matter that\n"
# 2129 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we are a student and mentor.\p"
# 2130 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "…No, because we are student and mentor,\n"
# 2131 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we owe it to each other to do the best\l"
# 2132 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we can. Isn't that right, {PLAYER}?$"
# 2133 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2134 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanRematchDefeat:
# 2135 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Uh… Haha…\n"
# 2136 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Maybe that was going too hard…$"
# 2137 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2138 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanPostRematch:
# 2139 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}…\n"
# 2140 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "What is your dream?\p"
# 2141 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "My dream…\n"
# 2142 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hahaha…\l"
# 2143 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It has already come true, actually.$"
# 2144 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2145 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanRematchNeedTwoMons:
# 2146 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}…\n"
# 2147 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I had a feeling that you would come.\p"
# 2148 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I would never refuse to accept\n"
# 2149 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a challenge from you.\p"
# 2150 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You do understand, don't you?\p"
# 2151 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Inside a GYM, it doesn't matter that\n"
# 2152 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we are a parent and child.\p"
# 2153 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hm? Wait a second, {PLAYER}.\p"
# 2154 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you only have one POKéMON that is\n"
# 2155 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "capable of battle?\p"
# 2156 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Sorry, but you'll have to come back\n"
# 2157 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with at least two POKéMON.$"
# 2158 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2159 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_CalendulaGaveEevee:
# 2160 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Oh, before you go...\p"
# 2161 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Since Acacia likes you, I can give\n"
# 2162 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "you something. She isn't the only one\l"
# 2163 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "who likes helping promising students!\p"
# 2164 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Take this little one.\n"
# 2165 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "It's an EEVEE.\p"
# 2166 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "My first partner was one, and I'd\n"
# 2167 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "love for you to start your path with\l"
# 2168 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "a loyal friend too.\p"
# 2169 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Ah! I almost forgot!\n"
# 2170 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Here's an EVERSTONE as well.\p"
# 2171 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "If you give this stone to EEVEE to\n"
# 2172 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "hold, it will prevent it from evolving.\p"
# 2173 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "That way, you can take your time\n"
# 2174 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "deciding which evolution is right for\l"
# 2175 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "your new partner!\p"
# 2176 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Just take the stone away when you're\n"
# 2177 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "ready for EEVEE to evolve.$"
