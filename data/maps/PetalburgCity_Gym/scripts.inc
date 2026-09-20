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
    setflag FLAG_HIDE_MAUVILLE_GYM_WATTSON
# 216 "data/maps/PetalburgCity_Gym/scripts.pory"
    clearflag FLAG_HIDE_MAUVILLE_CITY_WATTSON
# 217 "data/maps/PetalburgCity_Gym/scripts.pory"
    setvar VAR_0x8008, 5
# 218 "data/maps/PetalburgCity_Gym/scripts.pory"
    call Common_EventScript_SetGymTrainers
# 219 "data/maps/PetalburgCity_Gym/scripts.pory"
    clearflag FLAG_HIDE_DEWFORD_HALL_SLUDGE_BOMB_MAN
# 220 "data/maps/PetalburgCity_Gym/scripts.pory"
    call PetalburgCity_Gym_EventScript_UnlockAllDoors
# 221 "data/maps/PetalburgCity_Gym/scripts.pory"
    special DrawWholeMapView
# 222 "data/maps/PetalburgCity_Gym/scripts.pory"
    call PetalburgCity_Gym_EventScript_GiveFacade
# 223 "data/maps/PetalburgCity_Gym/scripts.pory"
    delay 30
# 224 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 225 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_DadHappyAndSad, MSGBOX_DEFAULT
# 226 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 227 "data/maps/PetalburgCity_Gym/scripts.pory"
    closemessage
# 228 "data/maps/PetalburgCity_Gym/scripts.pory"
    delay 40
# 229 "data/maps/PetalburgCity_Gym/scripts.pory"
    playse SE_DOOR
# 230 "data/maps/PetalburgCity_Gym/scripts.pory"
    delay 10
# 231 "data/maps/PetalburgCity_Gym/scripts.pory"
    addobject LOCALID_PETALBURG_GYM_WALLYS_DAD
# 232 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_FACING
# 233 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_SOUTH, PetalburgCity_Gym_EventScript_WallysDadArrivesSouth
# 234 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_NORTH, PetalburgCity_Gym_EventScript_WallysDadArrivesNorth
# 235 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_WEST, PetalburgCity_Gym_EventScript_WallysDadArrivesWest
# 236 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_EAST, PetalburgCity_Gym_EventScript_WallysDadArrivesEast
# 237 "data/maps/PetalburgCity_Gym/scripts.pory"
    end
# 238 "data/maps/PetalburgCity_Gym/scripts.pory"

# 239 "data/maps/PetalburgCity_Gym/scripts.pory"
// Rematch 
# 240 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanRematch::
# 241 "data/maps/PetalburgCity_Gym/scripts.pory"
    trainerbattle_rematch_double TRAINER_NORMAN_1, PetalburgCity_Gym_Text_NormanPreRematch, PetalburgCity_Gym_Text_NormanRematchDefeat, PetalburgCity_Gym_Text_NormanRematchNeedTwoMons
# 242 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 243 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_NormanPostRematch, MSGBOX_AUTOCLOSE
# 244 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 245 "data/maps/PetalburgCity_Gym/scripts.pory"
    end
# 246 "data/maps/PetalburgCity_Gym/scripts.pory"

# 247 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorialSouth::
# 248 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 0
# 249 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_BeginWallyTutorial
# 250 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 251 "data/maps/PetalburgCity_Gym/scripts.pory"

# 252 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorialNorth::
# 253 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 254 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_BeginWallyTutorial
# 255 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 256 "data/maps/PetalburgCity_Gym/scripts.pory"

# 257 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorialWest::
# 258 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 2
# 259 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_BeginWallyTutorial
# 260 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 261 "data/maps/PetalburgCity_Gym/scripts.pory"

# 262 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorialEast::
# 263 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 3
# 264 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_BeginWallyTutorial
# 265 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 266 "data/maps/PetalburgCity_Gym/scripts.pory"

# 267 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorial::
# 268 "data/maps/PetalburgCity_Gym/scripts.pory"
	addobject LOCALID_PETALBURG_GYM_WALLY
# 269 "data/maps/PetalburgCity_Gym/scripts.pory"
	playse SE_DOOR
# 270 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_WallyArriveSouth
# 271 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_WallyArriveNorth
# 272 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_WallyArriveWestEast
# 273 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_WallyArriveWestEast
# 274 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 275 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyIdLikeAPokemon, MSGBOX_DEFAULT
# 276 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 277 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 278 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadOhYoureWallyRight, MSGBOX_DEFAULT
# 279 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 280 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 281 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyIveNeverCaughtAPokemon, MSGBOX_DEFAULT
# 282 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 283 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 284 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadHmISee, MSGBOX_DEFAULT
# 285 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 286 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_NormanAddressPlayerSouth
# 287 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_NormanAddressPlayerNorth
# 288 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_NormanAddressPlayerWest
# 289 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_NormanAddressPlayerEast
# 290 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadPlayerGoWithWally, MSGBOX_DEFAULT
# 291 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_NormanAddressWallySouth
# 292 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_NormanAddressWallyNorth
# 293 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_NormanAddressWallyWest
# 294 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_NormanAddressWallyEast
# 295 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_IllLoanYouMyZigzagoon, MSGBOX_DEFAULT
# 296 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 297 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyThankYouAndDadGivesPokeBall, MSGBOX_DEFAULT
# 298 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 299 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 300 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyOhWowThankYou, MSGBOX_DEFAULT
# 301 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 302 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_NormanFaceDoorSouth
# 303 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_NormanFaceDoorNorth
# 304 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_NormanFaceDoorWest
# 305 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_NormanFaceDoorEast
# 306 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_WallyFacePlayer
# 307 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_WallyFaceDown
# 308 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_WallyFacePlayer
# 309 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_WallyFacePlayer
# 310 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 311 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WouldYouReallyComeWithMe, MSGBOX_DEFAULT
# 312 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 313 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 314 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_DONT_TRANSITION_MUSIC
# 315 "data/maps/PetalburgCity_Gym/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 316 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_ExitGymWithWallySouth
# 317 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_ExitGymWithWallyNorth
# 318 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_ExitGymWithWallyWest
# 319 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_ExitGymWithWallyEast
# 320 "data/maps/PetalburgCity_Gym/scripts.pory"
	removeobject LOCALID_PETALBURG_GYM_WALLY
# 321 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_WALLYS_MOM
# 322 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_GYM_STATE, 1
# 323 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_CITY_STATE, 2
# 324 "data/maps/PetalburgCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_WALLY
# 325 "data/maps/PetalburgCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_GYM_WALLY
# 326 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_RIVAL
# 327 "data/maps/PetalburgCity_Gym/scripts.pory"
	special InitBirchState
# 328 "data/maps/PetalburgCity_Gym/scripts.pory"
	warp MAP_PETALBURG_CITY, 20, 7
# 329 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 330 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 331 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 332 "data/maps/PetalburgCity_Gym/scripts.pory"

# 333 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyArriveSouth::
# 334 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 335 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyArrive
# 336 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 337 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 338 "data/maps/PetalburgCity_Gym/scripts.pory"

# 339 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyArriveNorth::
# 340 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyArriveNorth
# 341 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 342 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterRight
# 343 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 344 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 345 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 346 "data/maps/PetalburgCity_Gym/scripts.pory"

# 347 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyArriveWestEast::
# 348 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 349 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 350 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyArrive
# 351 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 352 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 353 "data/maps/PetalburgCity_Gym/scripts.pory"

# 354 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallySouth::
# 355 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 356 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitSouthWest
# 357 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallySouth
# 358 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 359 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 360 "data/maps/PetalburgCity_Gym/scripts.pory"

# 361 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallyNorth::
# 362 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitNorth
# 363 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallyNorth
# 364 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 365 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 366 "data/maps/PetalburgCity_Gym/scripts.pory"

# 367 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallyWest::
# 368 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitSouthWest
# 369 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallyWest
# 370 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 371 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 372 "data/maps/PetalburgCity_Gym/scripts.pory"

# 373 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallyEast::
# 374 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitEast
# 375 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallyEast
# 376 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 377 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 378 "data/maps/PetalburgCity_Gym/scripts.pory"

# 379 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressPlayerSouth::
# 380 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterUp
# 381 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 382 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 383 "data/maps/PetalburgCity_Gym/scripts.pory"

# 384 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressPlayerNorth::
# 385 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 386 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 387 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 388 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 389 "data/maps/PetalburgCity_Gym/scripts.pory"

# 390 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressPlayerWest::
# 391 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterRight
# 392 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 393 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 394 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 395 "data/maps/PetalburgCity_Gym/scripts.pory"

# 396 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressPlayerEast::
# 397 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterLeft
# 398 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 399 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 400 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 401 "data/maps/PetalburgCity_Gym/scripts.pory"

# 402 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressWallySouth::
# 403 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 404 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 405 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 406 "data/maps/PetalburgCity_Gym/scripts.pory"

# 407 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressWallyNorth::
# 408 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterRight
# 409 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 410 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 411 "data/maps/PetalburgCity_Gym/scripts.pory"

# 412 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressWallyWest::
# 413 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 414 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 415 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 416 "data/maps/PetalburgCity_Gym/scripts.pory"

# 417 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressWallyEast::
# 418 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 419 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 420 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 421 "data/maps/PetalburgCity_Gym/scripts.pory"

# 422 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyFacePlayer::
# 423 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, Common_Movement_FacePlayer
# 424 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 425 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 426 "data/maps/PetalburgCity_Gym/scripts.pory"

# 427 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyFaceDown::
# 428 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, Common_Movement_WalkInPlaceFasterDown
# 429 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 430 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 431 "data/maps/PetalburgCity_Gym/scripts.pory"

# 432 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanNoBadges::
# 433 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 434 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_NormanGoToRustboro, MSGBOX_DEFAULT
# 435 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 436 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 437 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 438 "data/maps/PetalburgCity_Gym/scripts.pory"

# 439 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanOneBadge::
# 440 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 441 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_NormanGoToDewford, MSGBOX_DEFAULT
# 442 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 443 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 444 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 445 "data/maps/PetalburgCity_Gym/scripts.pory"

# 446 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanTwoBadges::
# 447 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 448 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_YouHaveGottenStronger, MSGBOX_DEFAULT
# 449 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 450 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 451 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 452 "data/maps/PetalburgCity_Gym/scripts.pory"

# 453 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanThreeBadges::
# 454 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 455 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_YouHaveGottenStronger, MSGBOX_DEFAULT
# 456 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 457 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 458 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 459 "data/maps/PetalburgCity_Gym/scripts.pory"

# 460 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanFaceDoorSouth::
# 461 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 462 "data/maps/PetalburgCity_Gym/scripts.pory"

# 463 "data/maps/PetalburgCity_Gym/scripts.pory"
@ For all other NormanFaceDoorX, Norman is already facing the door from NormanAddressWallyX
# 464 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanFaceDoorNorth::
# 465 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 466 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 467 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 468 "data/maps/PetalburgCity_Gym/scripts.pory"

# 469 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanFaceDoorWest::
# 470 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 471 "data/maps/PetalburgCity_Gym/scripts.pory"

# 472 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanFaceDoorEast::
# 473 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 474 "data/maps/PetalburgCity_Gym/scripts.pory"

# 475 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanPostBattle::
# 476 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_ShouldGiveEnigmaBerry
# 477 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_Gym_EventScript_GiveEnigmaBerry
# 478 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_unset FLAG_RECEIVED_TM_FACADE, PetalburgCity_Gym_EventScript_GiveFacade2
# 479 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, PetalburgCity_Gym_EventScript_NoAmountOfTrainingIsEnough
# 480 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 481 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadGoingToKeepTraining, MSGBOX_DEFAULT
# 482 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 483 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 484 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 485 "data/maps/PetalburgCity_Gym/scripts.pory"

# 486 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GiveFacade2::
# 487 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_GiveFacade
# 488 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 489 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 490 "data/maps/PetalburgCity_Gym/scripts.pory"

# 491 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ShouldGiveEnigmaBerry::
# 492 "data/maps/PetalburgCity_Gym/scripts.pory"
	specialvar VAR_RESULT, IsEnigmaBerryValid
# 493 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry
# 494 "data/maps/PetalburgCity_Gym/scripts.pory"
	checkitem ITEM_ENIGMA_BERRY_E_READER
# 495 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry
# 496 "data/maps/PetalburgCity_Gym/scripts.pory"
	checkpcitem ITEM_ENIGMA_BERRY_E_READER
# 497 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry
# 498 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_ENIGMA_BERRY_AVAILABLE, 0, PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry
# 499 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 500 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GiveEnigmaBerry, MSGBOX_DEFAULT
# 501 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 502 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_RESULT, TRUE
# 503 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 504 "data/maps/PetalburgCity_Gym/scripts.pory"

# 505 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry::
# 506 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_RESULT, FALSE
# 507 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 508 "data/maps/PetalburgCity_Gym/scripts.pory"

# 509 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GiveEnigmaBerry::
# 510 "data/maps/PetalburgCity_Gym/scripts.pory"
	giveitem ITEM_ENIGMA_BERRY_E_READER
# 511 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 512 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_ENIGMA_BERRY_AVAILABLE, 0
# 513 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 514 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 515 "data/maps/PetalburgCity_Gym/scripts.pory"

# 516 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GiveFacade::
# 517 "data/maps/PetalburgCity_Gym/scripts.pory"
	giveitem ITEM_TM_WISH
# 518 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 519 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_FACADE
# 520 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 521 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ExplainFacade, MSGBOX_DEFAULT
# 522 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 523 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 524 "data/maps/PetalburgCity_Gym/scripts.pory"

# 525 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrivesNorth::
# 526 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 527 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_WallysDadArrives
# 528 "data/maps/PetalburgCity_Gym/scripts.pory"

# 529 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrivesEast::
# 530 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 2
# 531 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_WallysDadArrives
# 532 "data/maps/PetalburgCity_Gym/scripts.pory"

# 533 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrivesWest::
# 534 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 3
# 535 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_WallysDadArrives
# 536 "data/maps/PetalburgCity_Gym/scripts.pory"

# 537 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrivesSouth::
# 538 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 4
# 539 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_WallysDadArrives
# 540 "data/maps/PetalburgCity_Gym/scripts.pory"

# 541 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrives::
# 542 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadEnterGym
# 543 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 544 "data/maps/PetalburgCity_Gym/scripts.pory"
	playse SE_PIN
# 545 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_ExclamationMark
# 546 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 547 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_Delay48
# 548 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 549 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay 10
# 550 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_WallysDadApproachGroup
# 551 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_PleaseComeWithMe, MSGBOX_DEFAULT
# 552 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_LetMeBorrowPlayer, MSGBOX_DEFAULT
# 553 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 554 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_LukasGrandparentsHaveSomethingToSay, MSGBOX_DEFAULT
# 555 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 556 "data/maps/PetalburgCity_Gym/scripts.pory"
	removeobject LOCALID_PETALBURG_GYM_WALLYS_DAD
# 557 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_CITY_STATE, 4
# 558 "data/maps/PetalburgCity_Gym/scripts.pory"
	warp MAP_PETALBURG_CITY_WALLYS_HOUSE, 2, 4
# 559 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 560 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 561 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 562 "data/maps/PetalburgCity_Gym/scripts.pory"

# 563 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachGroup::
# 564 "data/maps/PetalburgCity_Gym/scripts.pory"
	getplayerxy VAR_0x8004, VAR_0x8005
# 565 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_ne VAR_0x8004, 3, PetalburgCity_Gym_EventScript_WallysDadApproachGroupLeft
# 566 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_0x8005, 3, PetalburgCity_Gym_EventScript_WallysDadApproachGroupBelow
# 567 "data/maps/PetalburgCity_Gym/scripts.pory"

# 568 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachGroupLeft::
# 569 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadToGroupLeft
# 570 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement LOCALID_PETALBURG_GYM_WALLYS_DAD
# 571 "data/maps/PetalburgCity_Gym/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_WEST
# 572 "data/maps/PetalburgCity_Gym/scripts.pory"
	turnobject LOCALID_PETALBURG_GYM_NORMAN, DIR_WEST
# 573 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 574 "data/maps/PetalburgCity_Gym/scripts.pory"

# 575 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachGroupBelow::
# 576 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadToGroupBelow
# 577 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement LOCALID_PETALBURG_GYM_WALLYS_DAD
# 578 "data/maps/PetalburgCity_Gym/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_SOUTH
# 579 "data/maps/PetalburgCity_Gym/scripts.pory"
	turnobject LOCALID_PETALBURG_GYM_NORMAN, DIR_SOUTH
# 580 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 581 "data/maps/PetalburgCity_Gym/scripts.pory"

# 582 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadToGroupLeft:
# 583 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 584 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 585 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 586 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 587 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 588 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 589 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_right
# 590 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 591 "data/maps/PetalburgCity_Gym/scripts.pory"

# 592 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadToGroupBelow:
# 593 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 594 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 595 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 596 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 597 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 598 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 599 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_up
# 600 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 601 "data/maps/PetalburgCity_Gym/scripts.pory"

# 602 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadFaceNormanNorth::
# 603 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_WalkInPlaceFasterUp
# 604 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 605 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 606 "data/maps/PetalburgCity_Gym/scripts.pory"

# 607 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadFaceNormanEast::
# 608 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_WalkInPlaceFasterRight
# 609 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 610 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 611 "data/maps/PetalburgCity_Gym/scripts.pory"

# 612 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadFaceNormanWest::
# 613 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_WalkInPlaceFasterLeft
# 614 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 615 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 616 "data/maps/PetalburgCity_Gym/scripts.pory"

# 617 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerNorth::
# 618 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerNorth
# 619 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 620 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 621 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterLeft
# 622 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 623 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 624 "data/maps/PetalburgCity_Gym/scripts.pory"

# 625 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerEast::
# 626 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerEast
# 627 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 628 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 629 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 630 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 631 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 632 "data/maps/PetalburgCity_Gym/scripts.pory"

# 633 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerWest::
# 634 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerWest
# 635 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 636 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 637 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 638 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 639 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 640 "data/maps/PetalburgCity_Gym/scripts.pory"

# 641 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerSouth::
# 642 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerEast
# 643 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 644 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 645 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 646 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 647 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 648 "data/maps/PetalburgCity_Gym/scripts.pory"

# 649 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallysDadNorth::
# 650 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadExitNorth
# 651 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 652 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallysDadNorth
# 653 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 654 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 655 "data/maps/PetalburgCity_Gym/scripts.pory"

# 656 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallysDadEast::
# 657 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadExitEast
# 658 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallysDadEast
# 659 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 660 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 661 "data/maps/PetalburgCity_Gym/scripts.pory"

# 662 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallysDadWest::
# 663 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadExitWest
# 664 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallysDadWest
# 665 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 666 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 667 "data/maps/PetalburgCity_Gym/scripts.pory"

# 668 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadExitNorth:
# 669 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 670 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 671 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 672 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 673 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 674 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 675 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 676 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 677 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 678 "data/maps/PetalburgCity_Gym/scripts.pory"
	set_invisible
# 679 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 680 "data/maps/PetalburgCity_Gym/scripts.pory"

# 681 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadExitEast:
# 682 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 683 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 684 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 685 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 686 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 687 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 688 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 689 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 690 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 691 "data/maps/PetalburgCity_Gym/scripts.pory"
	set_invisible
# 692 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 693 "data/maps/PetalburgCity_Gym/scripts.pory"

# 694 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadExitWest:
# 695 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 696 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 697 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 698 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 699 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 700 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 701 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 702 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 703 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 704 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 705 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 706 "data/maps/PetalburgCity_Gym/scripts.pory"
	set_invisible
# 707 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 708 "data/maps/PetalburgCity_Gym/scripts.pory"

# 709 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallysDadNorth:
# 710 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 711 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 712 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 713 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 714 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 715 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 716 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 717 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 718 "data/maps/PetalburgCity_Gym/scripts.pory"

# 719 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallysDadEast:
# 720 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 721 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 722 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 723 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 724 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 725 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 726 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 727 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 728 "data/maps/PetalburgCity_Gym/scripts.pory"

# 729 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallysDadWest:
# 730 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 731 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 732 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 733 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 734 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 735 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 736 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 737 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 738 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 739 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 740 "data/maps/PetalburgCity_Gym/scripts.pory"

# 741 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadEnterGym:
# 742 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 743 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 744 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_right
# 745 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 746 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_left
# 747 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 748 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 749 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 750 "data/maps/PetalburgCity_Gym/scripts.pory"

# 751 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadApproachPlayerNorth:
# 752 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 753 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 754 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 755 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 756 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 757 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_right
# 758 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 759 "data/maps/PetalburgCity_Gym/scripts.pory"

# 760 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadApproachPlayerEast:
# 761 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 762 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 763 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 764 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 765 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 766 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 767 "data/maps/PetalburgCity_Gym/scripts.pory"

# 768 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadApproachPlayerWest:
# 769 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 770 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 771 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 772 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 773 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 774 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 775 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 776 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 777 "data/maps/PetalburgCity_Gym/scripts.pory"

# 778 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_Unused:
# 779 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 780 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 781 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 782 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 783 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 784 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 785 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 786 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_down
# 787 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 788 "data/maps/PetalburgCity_Gym/scripts.pory"

# 789 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyArriveNorth:
# 790 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 791 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 792 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 793 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 794 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 795 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 796 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 797 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 798 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_left
# 799 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 800 "data/maps/PetalburgCity_Gym/scripts.pory"

# 801 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyArrive:
# 802 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 803 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 804 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 805 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 806 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 807 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 808 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 809 "data/maps/PetalburgCity_Gym/scripts.pory"

# 810 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitNorth:
# 811 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 812 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 813 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 814 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 815 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 816 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 817 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 818 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 819 "data/maps/PetalburgCity_Gym/scripts.pory"

# 820 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitEast:
# 821 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 822 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 823 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 824 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 825 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 826 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 827 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 828 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 829 "data/maps/PetalburgCity_Gym/scripts.pory"

# 830 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitSouthWest:
# 831 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 832 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 833 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 834 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 835 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 836 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 837 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 838 "data/maps/PetalburgCity_Gym/scripts.pory"

# 839 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallyNorth:
# 840 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 841 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 842 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 843 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 844 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 845 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 846 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 847 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 848 "data/maps/PetalburgCity_Gym/scripts.pory"

# 849 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallySouth:
# 850 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 851 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 852 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 853 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 854 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 855 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 856 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 857 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 858 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 859 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 860 "data/maps/PetalburgCity_Gym/scripts.pory"

# 861 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallyWest:
# 862 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 863 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 864 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 865 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 866 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 867 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 868 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 869 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 870 "data/maps/PetalburgCity_Gym/scripts.pory"

# 871 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallyEast:
# 872 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_down
# 873 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 874 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 875 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 876 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 877 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 878 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 879 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 880 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 881 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 882 "data/maps/PetalburgCity_Gym/scripts.pory"

# 883 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NoAmountOfTrainingIsEnough::
# 884 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 885 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadNoAmountOfTrainingIsEnough, MSGBOX_DEFAULT
# 886 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 887 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 888 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 889 "data/maps/PetalburgCity_Gym/scripts.pory"

# 890 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SpeedRoomDoor::
# 891 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 892 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_lt VAR_PETALBURG_GYM_STATE, 6, PetalburgCity_Gym_EventScript_DoorLocked
# 893 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 894 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 85
# 895 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterSpeedRoom, MSGBOX_YESNO
# 896 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 897 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 898 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 899 "data/maps/PetalburgCity_Gym/scripts.pory"

# 900 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_EnterRoom::
# 901 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 902 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay 30
# 903 "data/maps/PetalburgCity_Gym/scripts.pory"
	warpdoor MAP_PETALBURG_CITY_GYM, VAR_0x8008, VAR_0x8009
# 904 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 905 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 906 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 907 "data/maps/PetalburgCity_Gym/scripts.pory"

# 908 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_DontEnterRoom::
# 909 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 910 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 911 "data/maps/PetalburgCity_Gym/scripts.pory"

# 912 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_DoorLocked::
# 913 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DoorAppearsLocked, MSGBOX_DEFAULT
# 914 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 915 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 916 "data/maps/PetalburgCity_Gym/scripts.pory"

# 917 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ConfusionRoomDoor::
# 918 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 919 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_RANDALL, PetalburgCity_Gym_EventScript_DoorLocked
# 920 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 921 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 46
# 922 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterConfusionRoom, MSGBOX_YESNO
# 923 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 924 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 925 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 926 "data/maps/PetalburgCity_Gym/scripts.pory"

# 927 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftDefenseRoomDoor::
# 928 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 929 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_RANDALL, PetalburgCity_Gym_EventScript_DoorLocked
# 930 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 931 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 59
# 932 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterDefenseRoom, MSGBOX_YESNO
# 933 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 934 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 935 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 936 "data/maps/PetalburgCity_Gym/scripts.pory"

# 937 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightDefenseRoomDoor::
# 938 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 939 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_MARY, PetalburgCity_Gym_EventScript_DoorLocked
# 940 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 941 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 59
# 942 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterDefenseRoom, MSGBOX_YESNO
# 943 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 944 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 945 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 946 "data/maps/PetalburgCity_Gym/scripts.pory"

# 947 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RecoveryRoomDoor::
# 948 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 949 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_MARY, PetalburgCity_Gym_EventScript_DoorLocked
# 950 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 951 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 72
# 952 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterRecoveryRoom, MSGBOX_YESNO
# 953 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 954 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 955 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 956 "data/maps/PetalburgCity_Gym/scripts.pory"

# 957 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftStrengthRoomDoor::
# 958 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 959 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_PARKER, PetalburgCity_Gym_EventScript_DoorLocked
# 960 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 961 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 20
# 962 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterStrengthRoom, MSGBOX_YESNO
# 963 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 964 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 965 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 966 "data/maps/PetalburgCity_Gym/scripts.pory"

# 967 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightStrengthRoomDoor::
# 968 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 969 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_ALEXIA, PetalburgCity_Gym_EventScript_DoorLocked
# 970 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 971 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 20
# 972 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterStrengthRoom, MSGBOX_YESNO
# 973 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 974 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 975 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 976 "data/maps/PetalburgCity_Gym/scripts.pory"

# 977 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftOHKORoomDoor::
# 978 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 979 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_ALEXIA, PetalburgCity_Gym_EventScript_DoorLocked
# 980 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 981 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 33
# 982 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterOHKORoom, MSGBOX_YESNO
# 983 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 984 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 985 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 986 "data/maps/PetalburgCity_Gym/scripts.pory"

# 987 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightOHKORoomDoor::
# 988 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 989 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_GEORGE, PetalburgCity_Gym_EventScript_DoorLocked
# 990 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 991 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 33
# 992 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterOHKORoom, MSGBOX_YESNO
# 993 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 994 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 995 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 996 "data/maps/PetalburgCity_Gym/scripts.pory"

# 997 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftGymLeadersRoomDoor::
# 998 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 999 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_JODY, PetalburgCity_Gym_EventScript_DoorLocked
# 1000 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 1001 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 7
# 1002 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterGymLeadersRoom, MSGBOX_YESNO
# 1003 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 1004 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 1005 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1006 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1007 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightGymLeadersRoomDoor::
# 1008 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 1009 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_BERKE, PetalburgCity_Gym_EventScript_DoorLocked
# 1010 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 1011 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 7
# 1012 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterGymLeadersRoom, MSGBOX_YESNO
# 1013 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 1014 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 1015 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1016 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1017 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LibraryEmptyBook::
# 1018 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_LibraryEmptyBook, MSGBOX_SIGN
# 1019 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1020 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1021 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LibraryTypesBook::
# 1022 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 1023 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_TO_BLACK
# 1024 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_StartGymStudyBook
# 1025 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1026 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 1027 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 1028 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1029 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1030 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Randall::
# 1031 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_RANDALL, PetalburgCity_Gym_Text_RandallIntro, PetalburgCity_Gym_Text_RandallDefeat, PetalburgCity_Gym_EventScript_SlideOpenSpeedRoomDoors
# 1032 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_RandallPostBadge
# 1033 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_RandallPostBattle, MSGBOX_AUTOCLOSE
# 1034 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1035 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1036 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenSpeedRoomDoors::
# 1037 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1038 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1039 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1040 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RandallPostBadge::
# 1041 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_RandallPostBadge, MSGBOX_NPC
# 1042 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1043 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1044 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Parker::
# 1045 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1046 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1047 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_lt VAR_PETALBURG_GYM_STATE, 6, PetalburgCity_Gym_EventScript_ParkerNotEnoughBadges
# 1048 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_ParkerPostBadge
# 1049 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_0_CLEARED, PetalburgCity_Gym_EventScript_ParkerPostBattle
# 1050 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_PARKER, PetalburgCity_Gym_EventScript_ClearParkerGuard
# 1051 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerGymIntro, MSGBOX_DEFAULT
# 1052 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1053 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_TO_BLACK
# 1054 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_StartGymQuestionParker
# 1055 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1056 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 1057 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_GetGymQuestionResult
# 1058 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 0, PetalburgCity_Gym_EventScript_ParkerCorrectAnswer
# 1059 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 2, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1060 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerWrongAnswer, MSGBOX_DEFAULT
# 1061 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_PARKER, PetalburgCity_Gym_Text_ParkerDefeat
# 1062 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearParkerGuard
# 1063 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1064 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1065 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ParkerNotEnoughBadges::
# 1066 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerNotEnoughBadges, MSGBOX_DEFAULT
# 1067 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1068 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1069 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1070 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ParkerCorrectAnswer::
# 1071 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerCorrectAnswer, MSGBOX_DEFAULT
# 1072 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearParkerGuard
# 1073 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1074 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearParkerGuard::
# 1075 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_0_CLEARED
# 1076 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1077 "data/maps/PetalburgCity_Gym/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 1078 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 3, PetalburgCity_Gym_EventScript_MoveParkerGuardDownFirst
# 1079 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveParkerGuardLeftFirst
# 1080 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1081 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveParkerGuardLeftFirst::
# 1082 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_PARKER, PetalburgCity_Gym_Movement_ParkerLeftDownDownLeftLeft
# 1083 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1084 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionParkerCleared
# 1085 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1086 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1087 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1088 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveParkerGuardDownFirst::
# 1089 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_PARKER, PetalburgCity_Gym_Movement_ParkerDownDownLeftLeftLeft
# 1090 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1091 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionParkerCleared
# 1092 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1093 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1094 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1095 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenConfusionRoomDoors::
# 1096 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearParkerGuard
# 1097 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1098 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ParkerPostBattle::
# 1099 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerPostBattle, MSGBOX_AUTOCLOSE
# 1100 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1101 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1102 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1103 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ParkerPostBadge::
# 1104 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerPostBadge, MSGBOX_NPC
# 1105 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1106 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1107 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1108 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Mary::
# 1109 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1110 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1111 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_MaryPostBadge
# 1112 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_1_CLEARED, PetalburgCity_Gym_EventScript_MaryPostBattle
# 1113 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_MARY, PetalburgCity_Gym_EventScript_ClearMaryGuard
# 1114 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1115 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_TO_BLACK
# 1116 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_StartGymQuestionMary
# 1117 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1118 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 1119 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_GetGymQuestionResult
# 1120 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 2, PetalburgCity_Gym_EventScript_MaryCorrectAnswer
# 1121 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 4, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1122 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_MaryWrongAnswer, MSGBOX_DEFAULT
# 1123 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_MARY, PetalburgCity_Gym_Text_MaryDefeat
# 1124 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearMaryGuard
# 1125 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1126 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1127 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MaryCorrectAnswer::
# 1128 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_MaryCorrectAnswer, MSGBOX_DEFAULT
# 1129 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearMaryGuard
# 1130 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1131 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearMaryGuard::
# 1132 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_1_CLEARED
# 1133 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1134 "data/maps/PetalburgCity_Gym/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 1135 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_ne VAR_TEMP_3, 80, PetalburgCity_Gym_EventScript_MoveMaryGuard
# 1136 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 3, PetalburgCity_Gym_EventScript_PushPlayerBeforeMaryGuard
# 1137 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 4, PetalburgCity_Gym_EventScript_PushPlayerBeforeMaryGuard
# 1138 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 5, PetalburgCity_Gym_EventScript_PushPlayerBeforeMaryGuard
# 1139 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveMaryGuard
# 1140 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1141 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PushPlayerBeforeMaryGuard::
# 1142 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkDown
# 1143 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1144 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveMaryGuard
# 1145 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1146 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveMaryGuard::
# 1147 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_MARY, PetalburgCity_Gym_Movement_GuardWalkLeft3
# 1148 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1149 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionMaryCleared
# 1150 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1151 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1152 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1153 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenAccuracyRoomDoors::
# 1154 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearMaryGuard
# 1155 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1156 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MaryPostBattle::
# 1157 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_MaryPostBattle, MSGBOX_AUTOCLOSE
# 1158 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1159 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1160 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1161 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MaryPostBadge::
# 1162 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_MaryPostBadge, MSGBOX_NPC
# 1163 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1164 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1165 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1166 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_George::
# 1167 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1168 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1169 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_GeorgePostBadge
# 1170 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_2_CLEARED, PetalburgCity_Gym_EventScript_GeorgePostBattle
# 1171 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_GEORGE, PetalburgCity_Gym_EventScript_ClearGeorgeGuard
# 1172 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1173 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_TO_BLACK
# 1174 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_StartGymQuestionGeorge
# 1175 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1176 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 1177 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_GetGymQuestionResult
# 1178 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 0, PetalburgCity_Gym_EventScript_GeorgeCorrectAnswer
# 1179 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 4, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1180 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GeorgeWrongAnswer, MSGBOX_DEFAULT
# 1181 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_GEORGE, PetalburgCity_Gym_Text_GeorgeDefeat
# 1182 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearGeorgeGuard
# 1183 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1184 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1185 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GeorgeCorrectAnswer::
# 1186 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GeorgeCorrectAnswer, MSGBOX_DEFAULT
# 1187 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearGeorgeGuard
# 1188 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1189 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearGeorgeGuard::
# 1190 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_2_CLEARED
# 1191 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1192 "data/maps/PetalburgCity_Gym/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 1193 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_ne VAR_TEMP_3, 67, PetalburgCity_Gym_EventScript_MoveGeorgeGuard
# 1194 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 3, PetalburgCity_Gym_EventScript_PushPlayerBeforeGeorgeGuard
# 1195 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 4, PetalburgCity_Gym_EventScript_PushPlayerBeforeGeorgeGuard
# 1196 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 5, PetalburgCity_Gym_EventScript_PushPlayerBeforeGeorgeGuard
# 1197 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveGeorgeGuard
# 1198 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1199 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PushPlayerBeforeGeorgeGuard::
# 1200 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkDown
# 1201 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1202 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveGeorgeGuard
# 1203 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1204 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveGeorgeGuard::
# 1205 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_GEORGE, PetalburgCity_Gym_Movement_GuardWalkLeft3
# 1206 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1207 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionGeorgeCleared
# 1208 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1209 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1210 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1211 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenRecoveryRoomDoors::
# 1212 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearGeorgeGuard
# 1213 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1214 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GeorgePostBattle::
# 1215 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GeorgePostBattle, MSGBOX_AUTOCLOSE
# 1216 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1217 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1218 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1219 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GeorgePostBadge::
# 1220 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GeorgePostBadge, MSGBOX_NPC
# 1221 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1222 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1223 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1224 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Alexia::
# 1225 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1226 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1227 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_AlexiaPostBadge
# 1228 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_3_CLEARED, PetalburgCity_Gym_EventScript_AlexiaPostBattle
# 1229 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_ALEXIA, PetalburgCity_Gym_EventScript_ClearAlexiaGuard
# 1230 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1231 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_TO_BLACK
# 1232 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_StartGymQuestionAlexia
# 1233 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1234 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 1235 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_GetGymQuestionResult
# 1236 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 1, PetalburgCity_Gym_EventScript_AlexiaCorrectAnswer
# 1237 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 4, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1238 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_AlexiaWrongAnswer, MSGBOX_DEFAULT
# 1239 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_ALEXIA, PetalburgCity_Gym_Text_AlexiaDefeat
# 1240 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearAlexiaGuard
# 1241 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1242 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1243 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_AlexiaCorrectAnswer::
# 1244 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_AlexiaCorrectAnswer, MSGBOX_DEFAULT
# 1245 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearAlexiaGuard
# 1246 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1247 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearAlexiaGuard::
# 1248 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_3_CLEARED
# 1249 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1250 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_ALEXIA, PetalburgCity_Gym_Movement_GuardWalkRight2
# 1251 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1252 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionAlexiaCleared
# 1253 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1254 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1255 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1256 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenDefenseRoomDoors::
# 1257 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearAlexiaGuard
# 1258 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1259 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_AlexiaPostBattle::
# 1260 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_AlexiaPostBattle, MSGBOX_AUTOCLOSE
# 1261 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1262 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1263 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1264 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_AlexiaPostBadge::
# 1265 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_AlexiaPostBadge, MSGBOX_NPC
# 1266 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1267 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1268 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1269 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Berke::
# 1270 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1271 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1272 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_BerkePostBadge
# 1273 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_4_CLEARED, PetalburgCity_Gym_EventScript_BerkePostBattle
# 1274 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_BERKE, PetalburgCity_Gym_EventScript_ClearBerkeGuard
# 1275 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1276 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_TO_BLACK
# 1277 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_StartGymQuestionBerke
# 1278 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1279 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 1280 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_GetGymQuestionResult
# 1281 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 2, PetalburgCity_Gym_EventScript_BerkeCorrectAnswer
# 1282 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 4, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1283 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_BerkeWrongAnswer, MSGBOX_DEFAULT
# 1284 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_BERKE, PetalburgCity_Gym_Text_BerkeDefeat
# 1285 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearBerkeGuard
# 1286 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1287 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1288 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BerkeCorrectAnswer::
# 1289 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_BerkeCorrectAnswer, MSGBOX_DEFAULT
# 1290 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearBerkeGuard
# 1291 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1292 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearBerkeGuard::
# 1293 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_4_CLEARED
# 1294 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1295 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_BERKE, PetalburgCity_Gym_Movement_GuardWalkLeft2
# 1296 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1297 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionBerkeCleared
# 1298 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1299 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1300 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1301 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenOHKORoomDoors::
# 1302 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearBerkeGuard
# 1303 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1304 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BerkePostBattle::
# 1305 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_BerkePostBattle, MSGBOX_AUTOCLOSE
# 1306 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1307 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1308 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1309 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BerkePostBadge::
# 1310 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_BerkePostBadge, MSGBOX_NPC
# 1311 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1312 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1313 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1314 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Jody::
# 1315 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1316 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1317 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_JodyPostBadge
# 1318 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_5_CLEARED, PetalburgCity_Gym_EventScript_JodyPostBattle
# 1319 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_JODY, PetalburgCity_Gym_EventScript_ClearJodyGuard
# 1320 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1321 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_TO_BLACK
# 1322 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_StartGymQuestionJody
# 1323 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1324 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 1325 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_GetGymQuestionResult
# 1326 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 3, PetalburgCity_Gym_EventScript_JodyCorrectAnswer
# 1327 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 4, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1328 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_JodyWrongAnswer, MSGBOX_DEFAULT
# 1329 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_JODY, PetalburgCity_Gym_Text_JodyDefeat
# 1330 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearJodyGuard
# 1331 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1332 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1333 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_JodyCorrectAnswer::
# 1334 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_JodyCorrectAnswer, MSGBOX_DEFAULT
# 1335 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearJodyGuard
# 1336 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1337 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearJodyGuard::
# 1338 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_5_CLEARED
# 1339 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1340 "data/maps/PetalburgCity_Gym/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 1341 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_ne VAR_TEMP_2, 5, PetalburgCity_Gym_EventScript_MoveJodyGuardRightFirst
# 1342 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_3, 18, PetalburgCity_Gym_EventScript_MoveJodyGuardDownFirst
# 1343 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_3, 19, PetalburgCity_Gym_EventScript_MoveJodyGuardDownFirst
# 1344 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_3, 20, PetalburgCity_Gym_EventScript_MoveJodyGuardDownFirst
# 1345 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveJodyGuardRightFirst
# 1346 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1347 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveJodyGuardRightFirst::
# 1348 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_JODY, PetalburgCity_Gym_Movement_JodyRightDownDown
# 1349 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1350 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionJodyCleared
# 1351 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1352 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1353 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1354 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveJodyGuardDownFirst::
# 1355 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_JODY, PetalburgCity_Gym_Movement_JodyDownDownRight
# 1356 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1357 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionJodyCleared
# 1358 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1359 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1360 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1361 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenStrengthRoomDoors::
# 1362 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearJodyGuard
# 1363 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1364 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_JodyPostBattle::
# 1365 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_JodyPostBattle, MSGBOX_AUTOCLOSE
# 1366 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1367 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1368 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1369 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_JodyPostBadge::
# 1370 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_JodyPostBadge, MSGBOX_NPC
# 1371 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1372 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1373 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1374 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GuardAnswerLater::
# 1375 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GuardAnswerLater, MSGBOX_DEFAULT
# 1376 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1377 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1378 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1379 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionClearedGuards::
# 1380 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_0_CLEARED, PetalburgCity_Gym_EventScript_PositionParkerCleared
# 1381 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_PARKER, PetalburgCity_Gym_EventScript_PositionParkerCleared
# 1382 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_1_CLEARED, PetalburgCity_Gym_EventScript_PositionMaryCleared
# 1383 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_MARY, PetalburgCity_Gym_EventScript_PositionMaryCleared
# 1384 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_2_CLEARED, PetalburgCity_Gym_EventScript_PositionGeorgeCleared
# 1385 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_GEORGE, PetalburgCity_Gym_EventScript_PositionGeorgeCleared
# 1386 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_3_CLEARED, PetalburgCity_Gym_EventScript_PositionAlexiaCleared
# 1387 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_ALEXIA, PetalburgCity_Gym_EventScript_PositionAlexiaCleared
# 1388 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_4_CLEARED, PetalburgCity_Gym_EventScript_PositionBerkeCleared
# 1389 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_BERKE, PetalburgCity_Gym_EventScript_PositionBerkeCleared
# 1390 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_5_CLEARED, PetalburgCity_Gym_EventScript_PositionJodyCleared
# 1391 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_JODY, PetalburgCity_Gym_EventScript_PositionJodyCleared
# 1392 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1393 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1394 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionParkerCleared::
# 1395 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_PARKER, 1, 106
# 1396 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_PARKER, MOVEMENT_TYPE_FACE_LEFT
# 1397 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1398 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1399 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionMaryCleared::
# 1400 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_MARY, 3, 80
# 1401 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_MARY, MOVEMENT_TYPE_FACE_DOWN
# 1402 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1403 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1404 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionGeorgeCleared::
# 1405 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_GEORGE, 3, 67
# 1406 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_GEORGE, MOVEMENT_TYPE_FACE_DOWN
# 1407 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1408 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1409 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionAlexiaCleared::
# 1410 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_ALEXIA, 4, 48
# 1411 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_ALEXIA, MOVEMENT_TYPE_FACE_DOWN
# 1412 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1413 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1414 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionBerkeCleared::
# 1415 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_BERKE, 4, 31
# 1416 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_BERKE, MOVEMENT_TYPE_FACE_DOWN
# 1417 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1418 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1419 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionJodyCleared::
# 1420 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_JODY, 5, 20
# 1421 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_JODY, MOVEMENT_TYPE_FACE_DOWN
# 1422 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1423 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1424 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_ParkerLeftDownDownLeftLeft:
# 1425 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1426 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1427 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1428 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1429 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1430 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_left
# 1431 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1432 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1433 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_ParkerDownDownLeftLeftLeft:
# 1434 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1435 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1436 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1437 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1438 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1439 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_left
# 1440 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1441 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1442 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_GuardWalkLeft3:
# 1443 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1444 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1445 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1446 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_down
# 1447 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1448 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1449 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_GuardWalkLeft2:
# 1450 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1451 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1452 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_down
# 1453 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1454 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1455 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_GuardWalkRight2:
# 1456 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 1457 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 1458 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_down
# 1459 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1460 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1461 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_JodyRightDownDown:
# 1462 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 1463 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1464 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1465 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_down
# 1466 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1467 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1468 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_JodyDownDownRight:
# 1469 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1470 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1471 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 1472 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_down
# 1473 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1474 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1475 "data/maps/PetalburgCity_Gym/scripts.pory"
@ VAR_0x8004 below is the room number
# 1476 "data/maps/PetalburgCity_Gym/scripts.pory"
@ VAR_0x8005 below is 0 when the door should be slid open and 1 when it should be unlocked immediately
# 1477 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenGymEntranceDoors::
# 1478 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 1
# 1479 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1480 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1481 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetEntranceRoomDoorMetatiles
# 1482 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1483 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1484 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenSpeedRoomDoors::
# 1485 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 2
# 1486 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1487 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1488 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetSpeedRoomDoorMetatiles
# 1489 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1490 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1491 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenAccuracyRoomDoors::
# 1492 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 3
# 1493 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1494 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1495 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetAccuracyRoomDoorMetatiles
# 1496 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1497 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1498 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenConfusionRoomDoors::
# 1499 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 4
# 1500 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1501 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1502 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetConfusionRoomDoorMetatiles
# 1503 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1504 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1505 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenDefenseRoomDoors::
# 1506 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 5
# 1507 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1508 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1509 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetDefenseRoomDoorMetatiles
# 1510 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1511 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1512 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenRecoveryRoomDoors::
# 1513 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 6
# 1514 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1515 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1516 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetRecoveryRoomDoorMetatiles
# 1517 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1518 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1519 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenStrengthRoomDoors::
# 1520 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 7
# 1521 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1522 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1523 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetStrengthRoomDoorMetatiles
# 1524 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1525 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1526 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenOHKORoomDoors::
# 1527 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 8
# 1528 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1529 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1530 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetOHKORoomDoorMetatiles
# 1531 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1532 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1533 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetEntranceRoomDoorMetatiles::
# 1534 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 85, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1535 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 85, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1536 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 98, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1537 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 98, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1538 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1539 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1540 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetSpeedRoomDoorMetatiles::
# 1541 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 46, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1542 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 46, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1543 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 59, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1544 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 59, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1545 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1546 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1547 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetAccuracyRoomDoorMetatiles::
# 1548 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 59, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1549 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 59, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1550 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 72, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1551 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 72, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1552 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1553 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1554 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetConfusionRoomDoorMetatiles::
# 1555 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 20, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1556 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 20, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1557 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1558 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1559 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetDefenseRoomDoorMetatiles::
# 1560 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 20, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1561 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 20, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1562 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 33, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1563 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 33, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1564 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1565 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1566 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetRecoveryRoomDoorMetatiles::
# 1567 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 33, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1568 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 33, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1569 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1570 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1571 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetStrengthRoomDoorMetatiles::
# 1572 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 7, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1573 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 7, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1574 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1575 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1576 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetOHKORoomDoorMetatiles::
# 1577 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 7, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1578 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 7, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1579 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1580 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1581 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenRoomDoors::
# 1582 "data/maps/PetalburgCity_Gym/scripts.pory"
	special PetalburgGymSlideOpenRoomDoors
# 1583 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1584 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1585 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1586 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_UnlockRoomDoors::
# 1587 "data/maps/PetalburgCity_Gym/scripts.pory"
	special PetalburgGymUnlockRoomDoors
# 1588 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1589 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1590 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymGuide::
# 1591 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1592 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1593 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_GymGuidePostVictory
# 1594 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 1595 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1596 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1597 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1598 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymGuidePostVictory::
# 1599 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 1600 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1601 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1602 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1603 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftGymStatue::
# 1604 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 1605 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE05_GET, PetalburgCity_Gym_EventScript_GymStatueCertified
# 1606 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_GymStatue
# 1607 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1608 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1609 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightGymStatue::
# 1610 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 1611 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE05_GET, PetalburgCity_Gym_EventScript_GymStatueCertified
# 1612 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_GymStatue
# 1613 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1614 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1615 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymStatueCertified::
# 1616 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 1617 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 1618 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1619 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1620 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymStatue::
# 1621 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 1622 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 1623 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1624 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1625 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadYoureHereWithYourPokemon:
# 1626 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Oh?\n"
# 1627 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You must be {PLAYER}, right?\p"
# 1628 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "ACACIA said you would be arriving.\p"
# 1629 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "We met long ago, studying to become\n"
# 1630 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "POKéMON professors together.\p"
# 1631 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I chose the path of a full-time\n"
# 1632 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GYM LEADER, but ACACIA still guides\l"
# 1633 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "and inspires me.\p"
# 1634 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "And you…\n"
# 1635 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I sense something truly special.\p"
# 1636 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "If ACACIA believes in your potential,\n"
# 1637 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "then so do I.\p"
# 1638 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Welcome to the PETALBURG GYM,\n"
# 1639 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}. Your adventure as a TRAINER\l"
# 1640 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "truly begins here.$"
# 1641 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1642 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyIdLikeAPokemon:
# 1643 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Perfect timing!$"
# 1644 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1645 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadOhYoureWallyRight:
# 1646 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: {PLAYER}, meet LUKA.\n"
# 1647 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "He's my neighbor and a bold,\l"
# 1648 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "curious prodigy.\p"
# 1649 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Ever since he was a child,\n"
# 1650 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "he's had a special bond with POKéMON.\p"
# 1651 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "He's always chasing strange\n"
# 1652 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "mysteries in HOENN, like that\l"
# 1653 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "recent comet.$"
# 1654 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1655 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyIveNeverCaughtAPokemon:
# 1656 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: I'm heading to VERDANTURF soon.\p"
# 1657 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I need to explore HOENN and\n"
# 1658 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "investigate the strange comet\l"
# 1659 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "that passed over recently.\p"
# 1660 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "But before that, I want a real\n"
# 1661 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "battle, one worthy of a proper\l"
# 1662 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "sendoff.$"
# 1663 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1664 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadHmISee:
# 1665 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Hm… I see.\n"
# 1666 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You both arrived at the perfect time.$"
# 1667 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1668 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadPlayerGoWithWally:
# 1669 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, ACACIA has an eye\n"
# 1670 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "for talent… and so do I.\p"
# 1671 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA is sharp and fearless.\p"
# 1672 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Go to ROUTE 102 and battle him.\p"
# 1673 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Then come tell me the result.$"
# 1674 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1675 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_IllLoanYouMyZigzagoon:
# 1676 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Calendula: Luka, remember your training!$"
# 1677 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1678 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyThankYouAndDadGivesPokeBall:
# 1679 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: Don’t worry, CALENDULA.\n"
# 1680 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I’ve got everything I need.$"
# 1681 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1682 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyOhWowThankYou:
# 1683 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: I'll prove you were right to\n"
# 1684 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "believe in me.$"
# 1685 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1686 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WouldYouReallyComeWithMe:
# 1687 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: {PLAYER}, you know,\n"
# 1688 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I get a strange sense of familiarity\l"
# 1689 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "when I look at you.\p"
# 1690 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Perhaps it was fate for us to meet.\n"
# 1691 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Now, let's head to ROUTE 102 and\l"
# 1692 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "have a battle to remember!$"
# 1693 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1694 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadSoDidItWorkOut_LukaWon:
# 1695 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: So… LUKA came out on top?\n"
# 1696 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "That's fine.\p"
# 1697 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, a loss is not the end.\n"
# 1698 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "What matters is that you battled\l"
# 1699 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "with your full heart.\p"
# 1700 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Your bond with your POKéMON\n"
# 1701 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "was clear to see, even in defeat.$"
# 1702 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1703 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyThankYouBye_LukaWon:
# 1704 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: It was a real battle, {PLAYER}.\n"
# 1705 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I pushed hard, and so did you.\p"
# 1706 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I hope this makes you want to\n"
# 1707 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "grow even stronger.\p"
# 1708 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Keep chasing your goal.\n"
# 1709 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I'll be watching!\p"
# 1710 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Gotta go! That strange comet\n"
# 1711 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "in HOENN is on my mind.\p"
# 1712 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "See you soon, {PLAYER}!$"
# 1713 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1714 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadSoDidItWorkOut:
# 1715 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Excellent work!\n"
# 1716 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You both did great.\p"
# 1717 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, I am confident you'll be\n"
# 1718 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "safe in the woods if your bond with\l"
# 1719 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "your POKéMON is this strong.$"
# 1720 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1721 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyThankYouBye:
# 1722 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: That was a great battle!\n"
# 1723 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You pushed me, {PLAYER}.\p"
# 1724 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I lost, but I held back a bit.\n"
# 1725 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Next time, I’ll give my full strength.\p"
# 1726 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Gotta go! That strange comet\n"
# 1727 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "in HOENN is on my mind.\p"
# 1728 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I need to learn more.\n"
# 1729 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "See you soon, {PLAYER}!$"
# 1730 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1731 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadGoCollectBadges:
# 1732 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Now…\n"
# 1733 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, to become a real TRAINER,\l"
# 1734 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "listen carefully.\p"
# 1735 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "First, go to RUSTBORO CITY.\n"
# 1736 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Challenge TERRA, the ROCK-type\l"
# 1737 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "GYM LEADER.\p"
# 1738 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Defeat her, then continue across HOENN\n"
# 1739 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "and earn badges from other GYM LEADERS.\p"
# 1740 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "But be cautious.\n"
# 1741 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Strange events have been happening,\l"
# 1742 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "and that mysterious comet passed\l"
# 1743 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "recently...\p"
# 1744 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I have a bad feeling about it.\n"
# 1745 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Stay alert, {PLAYER}, and come back\l"
# 1746 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "stronger for our GYM battle.$"
# 1747 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1748 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanGoToRustboro:
# 1749 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Hm? Aren't you heading to\n"
# 1750 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "RUSTBORO CITY's POKéMON GYM?\p"
# 1751 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You still have much to learn.\p"
# 1752 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Keep exploring, {PLAYER}.\n"
# 1753 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I want to help you grow.\p"
# 1754 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Return after you earn 4 BADGES,\n"
# 1755 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "then challenge me!$"
# 1756 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1757 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1758 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanGoToDewford:
# 1759 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: I see… So, you've beaten\n"
# 1760 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the GYM LEADER in RUSTBORO CITY.\p"
# 1761 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But there are many more TRAINERS\n"
# 1762 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "who are stronger than you, {PLAYER}.\p"
# 1763 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Across the sea in DEWFORD TOWN is a\n"
# 1764 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GYM LEADER named RENTON.\p"
# 1765 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You should go challenge him.$"
# 1766 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1767 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_YouHaveGottenStronger:
# 1768 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: Hm… {PLAYER}, you have gotten\n"
# 1769 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "stronger.\p"
# 1770 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I can tell by the number of BADGES\n"
# 1771 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "that you've earned.$"
# 1772 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1773 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanIntro:
# 1774 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: Hm…\n"
# 1775 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "So, you did get four GYM BADGES.\p"
# 1776 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Fine, as I promised, we will have\n"
# 1777 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a POKéMON battle.\p"
# 1778 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}…\p"
# 1779 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'm so happy that I can have\n"
# 1780 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a real battle with my own student.\p"
# 1781 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But, a battle is a battle!\p"
# 1782 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I will do everything in my power as\n"
# 1783 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a GYM LEADER to win.\p"
# 1784 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}, you'd better give it your\n"
# 1785 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "best shot, too!$"
# 1786 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1787 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanDefeat:
# 1788 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "…\p"
# 1789 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I… I can't…\p"
# 1790 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I can't believe it. {PLAYER}…\p"
# 1791 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I lost to {PLAYER}?\p"
# 1792 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But, rules are rules!\n"
# 1793 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Here, take this.$"
# 1794 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1795 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ReceivedBalanceBadge:
# 1796 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER} received the BALANCE BADGE\n"
# 1797 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "from CALENDULA!$"
# 1798 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1799 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ExplainBalanceBadgeTakeThis:
# 1800 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: With that BADGE, the DEFENSE\n"
# 1801 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "of all your POKéMON will increase.\p"
# 1802 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "POKéMON that know the HM move SURF\n"
# 1803 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "will be able to travel over water.\p"
# 1804 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This is my gift to you. {PLAYER}, I'm\n"
# 1805 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "sure you can use it correctly.$"
# 1806 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1807 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ExplainFacade:
# 1808 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: TM42 contains WISH.\p"
# 1809 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "A wish made now restores HP at the\n"
# 1810 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "end of the next turn.$"
# 1811 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1812 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadHappyAndSad:
# 1813 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: As the GYM LEADER, I can't\n"
# 1814 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "express how upset I am…\p"
# 1815 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But as a mentor, it makes me both\n"
# 1816 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "happy and a little sad. It's odd…$"
# 1817 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1818 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_PleaseComeWithMe:
# 1819 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Ah, there you are, {PLAYER}{KUN}!\p"
# 1820 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Please come with me.\n"
# 1821 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I have something I want you to have.$"
# 1822 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1823 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_LetMeBorrowPlayer:
# 1824 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA, you don't mind, do you?\p"
# 1825 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Let me borrow {PLAYER}{KUN} for\n"
# 1826 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a minute or two.$"
# 1827 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1828 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_LukasGrandparentsHaveSomethingToSay:
# 1829 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "LUKA's grandparents have something\n"
# 1830 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "to say to you at his house.$"
# 1831 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1832 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadGoingToKeepTraining:
# 1833 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}, I'm really proud\n"
# 1834 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "of how far you've come.\p"
# 1835 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Battles aren't about revenge.\n"
# 1836 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "They're about growth for both of us.\p"
# 1837 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'll continue training and learning,\n"
# 1838 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "so I can guide new trainers better.\p"
# 1839 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "And when you have the time,\n"
# 1840 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "go visit ACACIA.\p"
# 1841 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "She cares about you deeply,\n"
# 1842 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "and she's always cheering you on.$"
# 1843 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1844 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadNoAmountOfTrainingIsEnough:
# 1845 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}, how is your\n"
# 1846 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "journey going?\p"
# 1847 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The world of POKéMON is incredibly deep.\n"
# 1848 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "There is always something new to learn.\p"
# 1849 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Research, observation, and sharing\n"
# 1850 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "knowledge with young trainers -\l"
# 1851 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "that is what truly strengthens us.\p"
# 1852 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Battles are important, yes…\n"
# 1853 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "but understanding POKéMON is essential.$"
# 1854 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1855 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymGuideAdvice:
# 1856 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hey, how's it going, CHAMPION-\n"
# 1857 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "bound {PLAYER}?\p"
# 1858 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA's GYM is set up like\n"
# 1859 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a research lab.\p"
# 1860 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The researchers guarding each door\n"
# 1861 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "will ask you a question.\p"
# 1862 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Answer correctly, and they'll step\n"
# 1863 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "aside without a battle.\p"
# 1864 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Answer wrong, and you'll have to\n"
# 1865 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "battle your way through.\p"
# 1866 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "If you're unsure, look around the\n"
# 1867 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "rooms for clues before answering.\p"
# 1868 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA values knowledge and\n"
# 1869 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "strategy, so keep your eyes sharp!$"
# 1870 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1871 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymGuidePostVictory:
# 1872 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}! Whoa!\p"
# 1873 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You defeated CALENDULA?\n"
# 1874 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Even with all her knowledge?\p"
# 1875 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That's incredible!\n"
# 1876 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "What an unexpected outcome!$"
# 1877 "data/maps/PetalburgCity_Gym/scripts.pory"
	
# 1878 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_LibraryEmptyBook:
# 1879 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "There's nothing useful here.$"
# 1880 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1881 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_LibraryTypesBook:
# 1882 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It's a book about POKéMON types!\n"
# 1883 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "There are 18 different types.$"
# 1884 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1885 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallIntro:
# 1886 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Looking for a clue to MARY's\n"
# 1887 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "question?\p"
# 1888 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Beat me in battle, and I'll point\n"
# 1889 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "you to the right book.$"
# 1890 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1891 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallDefeat:
# 1892 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That was a magnificent battle!$"
# 1893 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1894 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallPostBattle:
# 1895 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Fine, here's your clue.\p"
# 1896 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The book you want is in the middle\n"
# 1897 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "row, second from the right.$"
# 1898 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1899 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallPostBadge:
# 1900 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Whomever you beat, and whomever you\n"
# 1901 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "may lose to, you never shirk from\l"
# 1902 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "training yourself and your POKéMON.\p"
# 1903 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That's what I think being a\n"
# 1904 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GYM LEADER is all about.$"
# 1905 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1906 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerIntro:
# 1907 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This is the CONFUSION ROOM.\p"
# 1908 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Let me see how well bonded you are\n"
# 1909 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with your POKéMON!$"
# 1910 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1911 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerDefeat:
# 1912 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I couldn't confuse your team enough…\n"
# 1913 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You share a strong bond together.$"
# 1914 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1915 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerPostBattle:
# 1916 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The first door is open.\p"
# 1917 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA's researchers will test\n"
# 1918 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "what you know as much as how you\l"
# 1919 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "battle, so keep your mind sharp.$"
# 1920 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1921 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerPostBadge:
# 1922 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "After you beat our LEADER, the\n"
# 1923 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "training has become a lot tougher.$"
# 1924 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1925 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerNotEnoughBadges:
# 1926 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You don't have enough badges to face\n"
# 1927 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA yet. Please come back once\l"
# 1928 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "you have four GYM BADGES.$"
# 1929 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1930 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerGymIntro:
# 1931 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Welcome to CALENDULA's research lab.\p"
# 1932 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Each researcher here will ask you\n"
# 1933 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a question.\p"
# 1934 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Answer correctly, and you may pass.\n"
# 1935 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Answer incorrectly, and you'll need\l"
# 1936 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "to prove yourself in battle.$"
# 1937 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1938 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerQuestion:
# 1939 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "True or false?\p"
# 1940 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA's first partner was\n"
# 1941 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "an EEVEE.$"
# 1942 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1943 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerCorrectAnswer:
# 1944 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Correct! EEVEE was CALENDULA's first\n"
# 1945 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "partner and helped begin her research.\p"
# 1946 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You may proceed.$"
# 1947 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1948 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerWrongAnswer:
# 1949 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Incorrect. CALENDULA's first partner\n"
# 1950 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "was EEVEE.\p"
# 1951 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Let's see how you handle battle.$"
# 1952 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1953 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeIntro:
# 1954 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Just when you think you're going to\n"
# 1955 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "win, your opponent restores HP…\p"
# 1956 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Can you just imagine how awful that\n"
# 1957 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "must feel?\p"
# 1958 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'll show you exactly how awful it\n"
# 1959 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "feels!$"
# 1960 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1961 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeDefeat:
# 1962 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I couldn't restore HP enough…\n"
# 1963 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "What ATTACK power…$"
# 1964 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1965 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgePostBattle:
# 1966 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You may pass.\p"
# 1967 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "A good researcher keeps notes, but\n"
# 1968 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a great TRAINER remembers when\l"
# 1969 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "those notes matter.$"
# 1970 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1971 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgePostBadge:
# 1972 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'm going to keep training at GYMS.\n"
# 1973 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "One day, I'll become a LEADER.$"
# 1974 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1975 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeIntro:
# 1976 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'm not going to take it easy\n"
# 1977 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "just because you're her apprentice.\p"
# 1978 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'll show you how brutal it is\n"
# 1979 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "when a POKEMON takes a critical hit!$"
# 1980 "data/maps/PetalburgCity_Gym/scripts.pory"
	
# 1981 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeDefeat:
# 1982 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Your power…\n"
# 1983 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You're the real deal.$"
# 1984 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1985 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkePostBattle:
# 1986 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You're cleared to continue.\p"
# 1987 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Every question in this lab is here\n"
# 1988 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "because CALENDULA expects you to\l"
# 1989 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "think under pressure.$"
# 1990 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1991 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkePostBadge:
# 1992 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Since CALENDULA became our\n"
# 1993 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "LEADER, we've grown a lot.\p"
# 1994 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "We've learned so much about\n"
# 1995 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the POKEMON world\l"
# 1996 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "beyond just battling.\p"
# 1997 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Knowledge and strategy matter\n"
# 1998 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "just as much as strength now.$"
# 1999 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2000 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryIntro:
# 2001 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Giggle…\n"
# 2002 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This is the ACCURACY ROOM.\p"
# 2003 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It's pretty nasty when every attack\n"
# 2004 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "lands without fail.$"
# 2005 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2006 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryDefeat:
# 2007 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You were a cut above me…$"
# 2008 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2009 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryPostBattle:
# 2010 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The path is clear now.\p"
# 2011 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "There are answers tucked all around\n"
# 2012 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "this lab, if you know where to look.$"
# 2013 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2014 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryPostBadge:
# 2015 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you know what we're trying to\n"
# 2016 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "achieve as TRAINERS?\p"
# 2017 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "We're striving to become soul mates\n"
# 2018 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with our POKéMON.$"
# 2019 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2020 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaIntro:
# 2021 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The higher the DEFENSE, the more\n"
# 2022 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "reckless I can be in attack.$"
# 2023 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2024 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaDefeat:
# 2025 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Our defenses weren't enough…$"
# 2026 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2027 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaPostBattle:
# 2028 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Go ahead.\p"
# 2029 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA likes challengers who can\n"
# 2030 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "separate useful facts from noisy\l"
# 2031 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "ones.$"
# 2032 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2033 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaPostBadge:
# 2034 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hi! Have you tried using SURF?$"
# 2035 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2036 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyIntro:
# 2037 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA taught us to battle\n"
# 2038 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with focus and discipline.\p"
# 2039 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "So I'll face you seriously,\n"
# 2040 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "no holding back!$"
# 2041 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2042 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyDefeat:
# 2043 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But… I went all out!$"
# 2044 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2045 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyPostBattle:
# 2046 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That's the last check before\n"
# 2047 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA.\p"
# 2048 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Take a breath, review what you've\n"
# 2049 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "learned, and go show her.$"
# 2050 "data/maps/PetalburgCity_Gym/scripts.pory"
	
# 2051 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyPostBadge:
# 2052 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Sure, it's fine to make your POKéMON\n"
# 2053 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "stronger.\p"
# 2054 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But what decides the winner?\p"
# 2055 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Why, it's the feelings TRAINERS have\n"
# 2056 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "for their POKéMON.$"
# 2057 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2058 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryQuestion:
# 2059 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Research check! How many different\n"
# 2060 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "POKéMON types are known today?$"
# 2061 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2062 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryCorrectAnswer:
# 2063 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Correct! There are 18 different\n"
# 2064 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "POKéMON types.\p"
# 2065 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You've earned your way through.$"
# 2066 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2067 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryWrongAnswer:
# 2068 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Not quite. The answer is 18 types.\p"
# 2069 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "A good Trainer should know the\n"
# 2070 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "type chart before a serious battle.$"
# 2071 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2072 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeQuestion:
# 2073 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Ignoring abilities and immunities,\n"
# 2074 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "which STEEL dual type resists the\l"
# 2075 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "greatest number of attack types?$"
# 2076 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2077 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeCorrectAnswer:
# 2078 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Correct! ELECTRIC/STEEL resists 11\n"
# 2079 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "different attacking types.\p"
# 2080 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Its POISON immunity is not counted\n"
# 2081 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "as a resistance. Go on through.$"
# 2082 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2083 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeWrongAnswer:
# 2084 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Not quite. ELECTRIC/STEEL has the\n"
# 2085 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "most resistances among those choices:\l"
# 2086 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "11, without counting immunities.$"
# 2087 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2088 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaQuestion:
# 2089 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Ignoring abilities, how many attacking\n"
# 2090 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "types are super effective against\l"
# 2091 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "SHEDINJA's BUG/GHOST typing?$"
# 2092 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2093 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaCorrectAnswer:
# 2094 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Correct! There are five: FIRE, FLYING,\n"
# 2095 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "ROCK, GHOST, and DARK.\p"
# 2096 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "WONDER GUARD was ignored for the quiz.$"
# 2097 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2098 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaWrongAnswer:
# 2099 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Not quite. BUG/GHOST has five type\n"
# 2100 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "weaknesses: FIRE, FLYING, ROCK,\l"
# 2101 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GHOST, and DARK.$"
# 2102 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2103 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeQuestion:
# 2104 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Ignoring abilities, which dual typing\n"
# 2105 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "has the most attack-type immunities?$"
# 2106 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2107 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeCorrectAnswer:
# 2108 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Correct! NORMAL/GHOST has three:\n"
# 2109 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "NORMAL, FIGHTING, and GHOST.\p"
# 2110 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Every other choice has only two.$"
# 2111 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2112 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeWrongAnswer:
# 2113 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Not quite. NORMAL/GHOST has three\n"
# 2114 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "immunities: NORMAL, FIGHTING,\l"
# 2115 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "and GHOST.$"
# 2116 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2117 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyQuestion:
# 2118 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You face a CHANSEY holding EVIOLITE.\n"
# 2119 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Which move would you choose?$"
# 2120 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2121 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyCorrectAnswer:
# 2122 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Yes! PSYSHOCK is the right choice.\p"
# 2123 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Unlike the other special moves listed,\n"
# 2124 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "PSYSHOCK calculates damage using the\l"
# 2125 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "target's physical DEFENSE.\p"
# 2126 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That targets CHANSEY's weaker\n"
# 2127 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "defensive side.$"
# 2128 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2129 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyWrongAnswer:
# 2130 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Not quite. BLIZZARD, FIRE BLAST, and\n"
# 2131 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "THUNDER all calculate damage against\l"
# 2132 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "SP. DEF.\p"
# 2133 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "PSYSHOCK is special, but it uses the\n"
# 2134 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "target's physical DEFENSE instead.$"
# 2135 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2136 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GuardAnswerLater:
# 2137 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Okay. Come back when you're ready\n"
# 2138 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "to give your answer.$"
# 2139 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2140 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DoorAppearsLocked:
# 2141 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This door appears to be locked\n"
# 2142 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "right now…$"
# 2143 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2144 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterSpeedRoom:
# 2145 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“SPEED ROOM,” the sign says.\p"
# 2146 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2147 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2148 "data/maps/PetalburgCity_Gym/scripts.pory"
@ Unused
# 2149 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DoorAppearsLocked2:
# 2150 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This door appears to be locked\n"
# 2151 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "right now…$"
# 2152 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2153 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterConfusionRoom:
# 2154 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“CONFUSION ROOM,” the sign says.\p"
# 2155 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2156 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2157 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterDefenseRoom:
# 2158 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“DEFENSE ROOM,” the sign says.\p"
# 2159 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2160 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2161 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterRecoveryRoom:
# 2162 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“RECOVERY ROOM,” the sign says.\p"
# 2163 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2164 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2165 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterStrengthRoom:
# 2166 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“STRENGTH ROOM,” the sign says.\p"
# 2167 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2168 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2169 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterOHKORoom:
# 2170 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“ONE-HIT KO ROOM,” the sign says.\p"
# 2171 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2172 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2173 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterGymLeadersRoom:
# 2174 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“GYM LEADER'S ROOM\p"
# 2175 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“See for yourself what POKéMON await\n"
# 2176 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "you!” the sign says.\p"
# 2177 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2178 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2179 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymStatue:
# 2180 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM$"
# 2181 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2182 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymStatueCertified:
# 2183 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM\p"
# 2184 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA'S CERTIFIED TRAINERS:\n"
# 2185 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}$"
# 2186 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2187 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanPreRematch:
# 2188 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}…\n"
# 2189 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I had a feeling that you would come.\p"
# 2190 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I would never refuse to accept\n"
# 2191 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a challenge from you.\p"
# 2192 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You do understand, don't you?\p"
# 2193 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Inside a GYM, it doesn't matter that\n"
# 2194 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we are a student and mentor.\p"
# 2195 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "…No, because we are student and mentor,\n"
# 2196 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we owe it to each other to do the best\l"
# 2197 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we can. Isn't that right, {PLAYER}?$"
# 2198 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2199 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanRematchDefeat:
# 2200 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Uh… Haha…\n"
# 2201 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Maybe that was going too hard…$"
# 2202 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2203 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanPostRematch:
# 2204 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}…\n"
# 2205 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "What is your dream?\p"
# 2206 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "My dream…\n"
# 2207 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hahaha…\l"
# 2208 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It has already come true, actually.$"
# 2209 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2210 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanRematchNeedTwoMons:
# 2211 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}…\n"
# 2212 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I had a feeling that you would come.\p"
# 2213 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I would never refuse to accept\n"
# 2214 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a challenge from you.\p"
# 2215 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You do understand, don't you?\p"
# 2216 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Inside a GYM, it doesn't matter that\n"
# 2217 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we are a parent and child.\p"
# 2218 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hm? Wait a second, {PLAYER}.\p"
# 2219 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you only have one POKéMON that is\n"
# 2220 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "capable of battle?\p"
# 2221 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Sorry, but you'll have to come back\n"
# 2222 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with at least two POKéMON.$"
# 2223 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2224 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_CalendulaGaveEevee:
# 2225 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Oh, before you go...\p"
# 2226 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Since Acacia likes you, I can give\n"
# 2227 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "you something. She isn't the only one\l"
# 2228 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "who likes helping promising students!\p"
# 2229 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Take this little one.\n"
# 2230 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "It's an EEVEE.\p"
# 2231 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "My first partner was one, and I'd\n"
# 2232 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "love for you to start your path with\l"
# 2233 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "a loyal friend too.\p"
# 2234 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Ah! I almost forgot!\n"
# 2235 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Here's an EVERSTONE as well.\p"
# 2236 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "If you give this stone to EEVEE to\n"
# 2237 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "hold, it will prevent it from evolving.\p"
# 2238 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "That way, you can take your time\n"
# 2239 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "deciding which evolution is right for\l"
# 2240 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "your new partner!\p"
# 2241 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Just take the stone away when you're\n"
# 2242 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "ready for EEVEE to evolve.$"
