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
	call_if_set FLAG_DEFEATED_WALLY_MAUVILLE, PetalburgCity_Gym_EventScript_HideCalendulaDuringCafe
# 21 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 1, PetalburgCity_Gym_EventScript_MoveWallyToEntrance
# 22 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_ne VAR_PETALBURG_GYM_STATE, 6, PetalburgCity_Gym_EventScript_MoveNormanToEntrance
# 23 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 6, PetalburgCity_Gym_EventScript_MoveNormanToGymLeaderRoom
# 24 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_SYS_GAME_CLEAR, PetalburgCity_Gym_EventScript_CheckNormanForRematch
# 25 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionClearedGuards
# 26 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 27 "data/maps/PetalburgCity_Gym/scripts.pory"

# 28 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_HideCalendulaDuringCafe::
# 29 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_LUKA_VERDANTURF_CAFE_SCENE_COMPLETE, Common_EventScript_NopReturn
# 30 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_GYM_NORMAN
# 31 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 32 "data/maps/PetalburgCity_Gym/scripts.pory"

# 33 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveWallyToEntrance::
# 34 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_WALLY, 5, 108
# 35 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 36 "data/maps/PetalburgCity_Gym/scripts.pory"

# 37 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveNormanToEntrance::
# 38 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_NORMAN, 4, 107
# 39 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 40 "data/maps/PetalburgCity_Gym/scripts.pory"

# 41 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveNormanToGymLeaderRoom::
# 42 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_NORMAN, 4, 3
# 43 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_NORMAN, MOVEMENT_TYPE_FACE_DOWN
# 44 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 45 "data/maps/PetalburgCity_Gym/scripts.pory"

# 46 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_CheckNormanForRematch::
# 47 "data/maps/PetalburgCity_Gym/scripts.pory"
	setorcopyvar VAR_TRAINER_BATTLE_OPPONENT_A, TRAINER_NORMAN_1
# 48 "data/maps/PetalburgCity_Gym/scripts.pory"
	specialvar VAR_RESULT, IsTrainerReadyForRematch
# 49 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_Gym_EventScript_DontMoveNormanToFront
# 50 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_PETALBURG_GYM_STATE, 8, PetalburgCity_Gym_EventScript_DontMoveNormanToFront
# 51 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_NORMAN, 4, 107
# 52 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 53 "data/maps/PetalburgCity_Gym/scripts.pory"

# 54 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_DontMoveNormanToFront::
# 55 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_GYM_STATE, 8
# 56 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 57 "data/maps/PetalburgCity_Gym/scripts.pory"

# 58 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_OnWarp:
# 59 "data/maps/PetalburgCity_Gym/scripts.pory"
	map_script_2 VAR_TEMP_1, 0, PetalburgCity_Gym_EventScript_CheckWarpFacing
# 60 "data/maps/PetalburgCity_Gym/scripts.pory"
	.2byte 0
# 61 "data/maps/PetalburgCity_Gym/scripts.pory"

# 62 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_CheckWarpFacing::
# 63 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_TEMP_1, 1
# 64 "data/maps/PetalburgCity_Gym/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 65 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_ne VAR_TEMP_2, 4, PetalburgCity_Gym_EventScript_CheckWallyWarpFacing
# 66 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_ne VAR_TEMP_3, 104, PetalburgCity_Gym_EventScript_CheckWallyWarpFacing
# 67 "data/maps/PetalburgCity_Gym/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_SOUTH
# 68 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 69 "data/maps/PetalburgCity_Gym/scripts.pory"

# 70 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_CheckWallyWarpFacing::
# 71 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_PETALBURG_GYM_STATE, 1, PetalburgCity_Gym_EventScript_TurnPlayerNorth
# 72 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 73 "data/maps/PetalburgCity_Gym/scripts.pory"

# 74 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_TurnPlayerNorth::
# 75 "data/maps/PetalburgCity_Gym/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_NORTH
# 76 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 77 "data/maps/PetalburgCity_Gym/scripts.pory"

# 78 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_OnFrame:
# 79 "data/maps/PetalburgCity_Gym/scripts.pory"
	map_script_2 VAR_PETALBURG_GYM_STATE, 1, PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial
# 80 "data/maps/PetalburgCity_Gym/scripts.pory"
	.2byte 0
# 81 "data/maps/PetalburgCity_Gym/scripts.pory"

# 82 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial::
# 83 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 84 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_WALLY_TUTORIAL_RESULT, 1, PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial_LukaWon
# 85 "data/maps/PetalburgCity_Gym/scripts.pory"
	@ --- Jogador VENCEU ---
# 86 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 87 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadSoDidItWorkOut, MSGBOX_DEFAULT
# 88 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 89 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 90 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyThankYouBye, MSGBOX_DEFAULT
# 91 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 92 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial_Shared
# 93 "data/maps/PetalburgCity_Gym/scripts.pory"

# 94 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial_LukaWon::
# 95 "data/maps/PetalburgCity_Gym/scripts.pory"
	@ --- Luka VENCEU, progresso continua igual ---
# 96 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 97 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadSoDidItWorkOut_LukaWon, MSGBOX_DEFAULT
# 98 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 99 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 100 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyThankYouBye_LukaWon, MSGBOX_DEFAULT
# 101 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 102 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_WALLY_TUTORIAL_RESULT, 0
# 103 "data/maps/PetalburgCity_Gym/scripts.pory"

# 104 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial_Shared::
# 105 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 106 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 107 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitGym
# 108 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 109 "data/maps/PetalburgCity_Gym/scripts.pory"
	playse SE_EXIT
# 110 "data/maps/PetalburgCity_Gym/scripts.pory"
	removeobject LOCALID_PETALBURG_GYM_WALLY
# 111 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_WALLY
# 112 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay 30
# 113 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 114 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 115 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 116 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadGoCollectBadges, MSGBOX_DEFAULT
# 117 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 118 "data/maps/PetalburgCity_Gym/scripts.pory"
	giveegg SPECIES_EEVEE
# 119 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_RecievedEgg, MSGBOX_DEFAULT
# 120 "data/maps/PetalburgCity_Gym/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 121 "data/maps/PetalburgCity_Gym/scripts.pory"
	giveitem ITEM_EVERSTONE
# 122 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_Everstone, MSGBOX_DEFAULT
# 123 "data/maps/PetalburgCity_Gym/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 124 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 125 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_CalendulaGaveEevee, MSGBOX_DEFAULT
# 126 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 127 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_GYM_STATE, 2
# 128 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 129 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 130 "data/maps/PetalburgCity_Gym/scripts.pory"

# 131 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RecievedEgg:
# 132 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER} recieved EEVEE egg!$"
# 133 "data/maps/PetalburgCity_Gym/scripts.pory"

# 134 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_Everstone:
# 135 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER} recieved an Everstone!$"
# 136 "data/maps/PetalburgCity_Gym/scripts.pory"

# 137 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitGym:
# 138 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 139 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 140 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 141 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 142 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 143 "data/maps/PetalburgCity_Gym/scripts.pory"

# 144 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Norman::
# 145 "data/maps/PetalburgCity_Gym/scripts.pory"
    lock
# 146 "data/maps/PetalburgCity_Gym/scripts.pory"
    faceplayer
# 147 "data/maps/PetalburgCity_Gym/scripts.pory"
    getdifficulty VAR_RESULT
# 148 "data/maps/PetalburgCity_Gym/scripts.pory"
    goto_if_eq VAR_RESULT, 1, PetalburgCity_Gym_EventScript_NormanHard
# 149 "data/maps/PetalburgCity_Gym/scripts.pory"
    goto PetalburgCity_Gym_EventScript_NormanCasual
# 150 "data/maps/PetalburgCity_Gym/scripts.pory"

# 151 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanCasual::
# 152 "data/maps/PetalburgCity_Gym/scripts.pory"
    // Modo Casual -
# 153 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_PETALBURG_GYM_STATE
# 154 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 2, PetalburgCity_Gym_EventScript_NormanNoBadges
# 155 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 3, PetalburgCity_Gym_EventScript_NormanOneBadge
# 156 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 4, PetalburgCity_Gym_EventScript_NormanTwoBadges
# 157 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 5, PetalburgCity_Gym_EventScript_NormanThreeBadges
# 158 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 6, PetalburgCity_Gym_EventScript_NormanBattleCasual
# 159 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 7, PetalburgCity_Gym_EventScript_NormanPostBattle
# 160 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 8, PetalburgCity_Gym_EventScript_NormanRematch
# 161 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 162 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_DadYoureHereWithYourPokemon, MSGBOX_DEFAULT
# 163 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 164 "data/maps/PetalburgCity_Gym/scripts.pory"
    closemessage
# 165 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_FACING
# 166 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_SOUTH, PetalburgCity_Gym_EventScript_BeginWallyTutorialSouth
# 167 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_NORTH, PetalburgCity_Gym_EventScript_BeginWallyTutorialNorth
# 168 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_WEST, PetalburgCity_Gym_EventScript_BeginWallyTutorialWest
# 169 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_EAST, PetalburgCity_Gym_EventScript_BeginWallyTutorialEast
# 170 "data/maps/PetalburgCity_Gym/scripts.pory"
    end
# 171 "data/maps/PetalburgCity_Gym/scripts.pory"

# 172 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanHard::
# 173 "data/maps/PetalburgCity_Gym/scripts.pory"
    // Modo Hard
# 174 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_PETALBURG_GYM_STATE
# 175 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 2, PetalburgCity_Gym_EventScript_NormanNoBadges
# 176 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 3, PetalburgCity_Gym_EventScript_NormanOneBadge
# 177 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 4, PetalburgCity_Gym_EventScript_NormanTwoBadges
# 178 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 5, PetalburgCity_Gym_EventScript_NormanThreeBadges
# 179 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 6, PetalburgCity_Gym_EventScript_NormanBattleHard
# 180 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 7, PetalburgCity_Gym_EventScript_NormanPostBattle
# 181 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 8, PetalburgCity_Gym_EventScript_NormanRematch
# 182 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 183 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_DadYoureHereWithYourPokemon, MSGBOX_DEFAULT
# 184 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 185 "data/maps/PetalburgCity_Gym/scripts.pory"
    closemessage
# 186 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_FACING
# 187 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_SOUTH, PetalburgCity_Gym_EventScript_BeginWallyTutorialSouth
# 188 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_NORTH, PetalburgCity_Gym_EventScript_BeginWallyTutorialNorth
# 189 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_WEST, PetalburgCity_Gym_EventScript_BeginWallyTutorialWest
# 190 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_EAST, PetalburgCity_Gym_EventScript_BeginWallyTutorialEast
# 191 "data/maps/PetalburgCity_Gym/scripts.pory"
    end
# 192 "data/maps/PetalburgCity_Gym/scripts.pory"

# 193 "data/maps/PetalburgCity_Gym/scripts.pory"
// Modo Casual - Batalha
# 194 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanBattleCasual::
# 195 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 196 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_NormanIntro, MSGBOX_DEFAULT
# 197 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 198 "data/maps/PetalburgCity_Gym/scripts.pory"
    trainerbattle_no_intro TRAINER_CALENDULA_CASUAL, PetalburgCity_Gym_Text_NormanDefeat  // Precisa criar TRAINER_NORMAN_CASUAL
# 199 "data/maps/PetalburgCity_Gym/scripts.pory"
    goto PetalburgCity_Gym_EventScript_NormanAfterBattle
# 200 "data/maps/PetalburgCity_Gym/scripts.pory"

# 201 "data/maps/PetalburgCity_Gym/scripts.pory"
// Modo Hard - Batalha
# 202 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanBattleHard::
# 203 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 204 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_NormanIntro, MSGBOX_DEFAULT
# 205 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 206 "data/maps/PetalburgCity_Gym/scripts.pory"
    trainerbattle_no_intro TRAINER_NORMAN_1, PetalburgCity_Gym_Text_NormanDefeat
# 207 "data/maps/PetalburgCity_Gym/scripts.pory"
    // Fall through para AfterBattle
# 208 "data/maps/PetalburgCity_Gym/scripts.pory"

# 209 "data/maps/PetalburgCity_Gym/scripts.pory"
// Pós-batalha
# 210 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAfterBattle::
# 211 "data/maps/PetalburgCity_Gym/scripts.pory"
    message PetalburgCity_Gym_Text_ReceivedBalanceBadge
# 212 "data/maps/PetalburgCity_Gym/scripts.pory"
    waitmessage
# 213 "data/maps/PetalburgCity_Gym/scripts.pory"
    call Common_EventScript_PlayGymBadgeFanfare
# 214 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 215 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_ExplainBalanceBadgeTakeThis, MSGBOX_DEFAULT
# 216 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 217 "data/maps/PetalburgCity_Gym/scripts.pory"
    setflag FLAG_DEFEATED_PETALBURG_GYM
# 218 "data/maps/PetalburgCity_Gym/scripts.pory"
    setvar VAR_PETALBURG_GYM_STATE, 7
# 219 "data/maps/PetalburgCity_Gym/scripts.pory"
    setflag FLAG_BADGE05_GET
# 220 "data/maps/PetalburgCity_Gym/scripts.pory"
    special ResetHealLocationFromDewford
# 221 "data/maps/PetalburgCity_Gym/scripts.pory"
    setflag FLAG_HIDE_MAUVILLE_GYM_WATTSON
# 222 "data/maps/PetalburgCity_Gym/scripts.pory"
    clearflag FLAG_HIDE_MAUVILLE_CITY_WATTSON
# 223 "data/maps/PetalburgCity_Gym/scripts.pory"
    setvar VAR_0x8008, 5
# 224 "data/maps/PetalburgCity_Gym/scripts.pory"
    call Common_EventScript_SetGymTrainers
# 225 "data/maps/PetalburgCity_Gym/scripts.pory"
    clearflag FLAG_HIDE_DEWFORD_HALL_SLUDGE_BOMB_MAN
# 226 "data/maps/PetalburgCity_Gym/scripts.pory"
    call PetalburgCity_Gym_EventScript_UnlockAllDoors
# 227 "data/maps/PetalburgCity_Gym/scripts.pory"
    special DrawWholeMapView
# 228 "data/maps/PetalburgCity_Gym/scripts.pory"
    call PetalburgCity_Gym_EventScript_GiveFacade
# 229 "data/maps/PetalburgCity_Gym/scripts.pory"
    delay 30
# 230 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 231 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_DadHappyAndSad, MSGBOX_DEFAULT
# 232 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 233 "data/maps/PetalburgCity_Gym/scripts.pory"
    closemessage
# 234 "data/maps/PetalburgCity_Gym/scripts.pory"
    delay 40
# 235 "data/maps/PetalburgCity_Gym/scripts.pory"
    playse SE_DOOR
# 236 "data/maps/PetalburgCity_Gym/scripts.pory"
    delay 10
# 237 "data/maps/PetalburgCity_Gym/scripts.pory"
    addobject LOCALID_PETALBURG_GYM_WALLYS_DAD
# 238 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_FACING
# 239 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_SOUTH, PetalburgCity_Gym_EventScript_WallysDadArrivesSouth
# 240 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_NORTH, PetalburgCity_Gym_EventScript_WallysDadArrivesNorth
# 241 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_WEST, PetalburgCity_Gym_EventScript_WallysDadArrivesWest
# 242 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_EAST, PetalburgCity_Gym_EventScript_WallysDadArrivesEast
# 243 "data/maps/PetalburgCity_Gym/scripts.pory"
    end
# 244 "data/maps/PetalburgCity_Gym/scripts.pory"

# 245 "data/maps/PetalburgCity_Gym/scripts.pory"
// Rematch
# 246 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanRematch::
# 247 "data/maps/PetalburgCity_Gym/scripts.pory"
    trainerbattle_rematch_double TRAINER_NORMAN_1, PetalburgCity_Gym_Text_NormanPreRematch, PetalburgCity_Gym_Text_NormanRematchDefeat, PetalburgCity_Gym_Text_NormanRematchNeedTwoMons
# 248 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 249 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_NormanPostRematch, MSGBOX_AUTOCLOSE
# 250 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 251 "data/maps/PetalburgCity_Gym/scripts.pory"
    end
# 252 "data/maps/PetalburgCity_Gym/scripts.pory"

# 253 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorialSouth::
# 254 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 0
# 255 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_BeginWallyTutorial
# 256 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 257 "data/maps/PetalburgCity_Gym/scripts.pory"

# 258 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorialNorth::
# 259 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 260 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_BeginWallyTutorial
# 261 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 262 "data/maps/PetalburgCity_Gym/scripts.pory"

# 263 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorialWest::
# 264 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 2
# 265 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_BeginWallyTutorial
# 266 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 267 "data/maps/PetalburgCity_Gym/scripts.pory"

# 268 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorialEast::
# 269 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 3
# 270 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_BeginWallyTutorial
# 271 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 272 "data/maps/PetalburgCity_Gym/scripts.pory"

# 273 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorial::
# 274 "data/maps/PetalburgCity_Gym/scripts.pory"
	addobject LOCALID_PETALBURG_GYM_WALLY
# 275 "data/maps/PetalburgCity_Gym/scripts.pory"
	playse SE_DOOR
# 276 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_WallyArriveSouth
# 277 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_WallyArriveNorth
# 278 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_WallyArriveWestEast
# 279 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_WallyArriveWestEast
# 280 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 281 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyIdLikeAPokemon, MSGBOX_DEFAULT
# 282 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 283 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 284 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadOhYoureWallyRight, MSGBOX_DEFAULT
# 285 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 286 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 287 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyIveNeverCaughtAPokemon, MSGBOX_DEFAULT
# 288 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 289 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 290 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadHmISee, MSGBOX_DEFAULT
# 291 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 292 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_NormanAddressPlayerSouth
# 293 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_NormanAddressPlayerNorth
# 294 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_NormanAddressPlayerWest
# 295 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_NormanAddressPlayerEast
# 296 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadPlayerGoWithWally, MSGBOX_DEFAULT
# 297 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_NormanAddressWallySouth
# 298 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_NormanAddressWallyNorth
# 299 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_NormanAddressWallyWest
# 300 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_NormanAddressWallyEast
# 301 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_IllLoanYouMyZigzagoon, MSGBOX_DEFAULT
# 302 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 303 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyThankYouAndDadGivesPokeBall, MSGBOX_DEFAULT
# 304 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 305 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 306 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyOhWowThankYou, MSGBOX_DEFAULT
# 307 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 308 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_NormanFaceDoorSouth
# 309 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_NormanFaceDoorNorth
# 310 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_NormanFaceDoorWest
# 311 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_NormanFaceDoorEast
# 312 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_WallyFacePlayer
# 313 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_WallyFaceDown
# 314 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_WallyFacePlayer
# 315 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_WallyFacePlayer
# 316 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 317 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WouldYouReallyComeWithMe, MSGBOX_DEFAULT
# 318 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 319 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 320 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_DONT_TRANSITION_MUSIC
# 321 "data/maps/PetalburgCity_Gym/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 322 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_ExitGymWithWallySouth
# 323 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_ExitGymWithWallyNorth
# 324 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_ExitGymWithWallyWest
# 325 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_ExitGymWithWallyEast
# 326 "data/maps/PetalburgCity_Gym/scripts.pory"
	removeobject LOCALID_PETALBURG_GYM_WALLY
# 327 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_WALLYS_MOM
# 328 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_GYM_STATE, 1
# 329 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_CITY_STATE, 2
# 330 "data/maps/PetalburgCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_WALLY
# 331 "data/maps/PetalburgCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_GYM_WALLY
# 332 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_RIVAL
# 333 "data/maps/PetalburgCity_Gym/scripts.pory"
	special InitBirchState
# 334 "data/maps/PetalburgCity_Gym/scripts.pory"
	warp MAP_PETALBURG_CITY, 20, 7
# 335 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 336 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 337 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 338 "data/maps/PetalburgCity_Gym/scripts.pory"

# 339 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyArriveSouth::
# 340 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 341 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyArrive
# 342 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 343 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 344 "data/maps/PetalburgCity_Gym/scripts.pory"

# 345 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyArriveNorth::
# 346 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyArriveNorth
# 347 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 348 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterRight
# 349 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 350 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 351 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 352 "data/maps/PetalburgCity_Gym/scripts.pory"

# 353 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyArriveWestEast::
# 354 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 355 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 356 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyArrive
# 357 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 358 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 359 "data/maps/PetalburgCity_Gym/scripts.pory"

# 360 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallySouth::
# 361 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 362 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitSouthWest
# 363 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallySouth
# 364 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 365 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 366 "data/maps/PetalburgCity_Gym/scripts.pory"

# 367 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallyNorth::
# 368 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitNorth
# 369 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallyNorth
# 370 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 371 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 372 "data/maps/PetalburgCity_Gym/scripts.pory"

# 373 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallyWest::
# 374 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitSouthWest
# 375 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallyWest
# 376 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 377 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 378 "data/maps/PetalburgCity_Gym/scripts.pory"

# 379 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallyEast::
# 380 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitEast
# 381 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallyEast
# 382 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 383 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 384 "data/maps/PetalburgCity_Gym/scripts.pory"

# 385 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressPlayerSouth::
# 386 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterUp
# 387 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 388 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 389 "data/maps/PetalburgCity_Gym/scripts.pory"

# 390 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressPlayerNorth::
# 391 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 392 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 393 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 394 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 395 "data/maps/PetalburgCity_Gym/scripts.pory"

# 396 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressPlayerWest::
# 397 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterRight
# 398 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 399 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 400 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 401 "data/maps/PetalburgCity_Gym/scripts.pory"

# 402 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressPlayerEast::
# 403 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterLeft
# 404 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 405 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 406 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 407 "data/maps/PetalburgCity_Gym/scripts.pory"

# 408 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressWallySouth::
# 409 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 410 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 411 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 412 "data/maps/PetalburgCity_Gym/scripts.pory"

# 413 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressWallyNorth::
# 414 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterRight
# 415 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 416 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 417 "data/maps/PetalburgCity_Gym/scripts.pory"

# 418 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressWallyWest::
# 419 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 420 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 421 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 422 "data/maps/PetalburgCity_Gym/scripts.pory"

# 423 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressWallyEast::
# 424 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 425 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 426 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 427 "data/maps/PetalburgCity_Gym/scripts.pory"

# 428 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyFacePlayer::
# 429 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, Common_Movement_FacePlayer
# 430 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 431 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 432 "data/maps/PetalburgCity_Gym/scripts.pory"

# 433 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyFaceDown::
# 434 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, Common_Movement_WalkInPlaceFasterDown
# 435 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 436 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 437 "data/maps/PetalburgCity_Gym/scripts.pory"

# 438 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanNoBadges::
# 439 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 440 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_NormanGoToRustboro, MSGBOX_DEFAULT
# 441 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 442 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 443 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 444 "data/maps/PetalburgCity_Gym/scripts.pory"

# 445 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanOneBadge::
# 446 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 447 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_NormanGoToDewford, MSGBOX_DEFAULT
# 448 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 449 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 450 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 451 "data/maps/PetalburgCity_Gym/scripts.pory"

# 452 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanTwoBadges::
# 453 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 454 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_YouHaveGottenStronger, MSGBOX_DEFAULT
# 455 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 456 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 457 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 458 "data/maps/PetalburgCity_Gym/scripts.pory"

# 459 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanThreeBadges::
# 460 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 461 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_YouHaveGottenStronger, MSGBOX_DEFAULT
# 462 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 463 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 464 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 465 "data/maps/PetalburgCity_Gym/scripts.pory"

# 466 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanFaceDoorSouth::
# 467 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 468 "data/maps/PetalburgCity_Gym/scripts.pory"

# 469 "data/maps/PetalburgCity_Gym/scripts.pory"
@ For all other NormanFaceDoorX, Norman is already facing the door from NormanAddressWallyX
# 470 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanFaceDoorNorth::
# 471 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 472 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 473 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 474 "data/maps/PetalburgCity_Gym/scripts.pory"

# 475 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanFaceDoorWest::
# 476 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 477 "data/maps/PetalburgCity_Gym/scripts.pory"

# 478 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanFaceDoorEast::
# 479 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 480 "data/maps/PetalburgCity_Gym/scripts.pory"

# 481 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanPostBattle::
# 482 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_ShouldGiveEnigmaBerry
# 483 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_Gym_EventScript_GiveEnigmaBerry
# 484 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_unset FLAG_RECEIVED_TM_FACADE, PetalburgCity_Gym_EventScript_GiveFacade2
# 485 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, PetalburgCity_Gym_EventScript_NoAmountOfTrainingIsEnough
# 486 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 487 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadGoingToKeepTraining, MSGBOX_DEFAULT
# 488 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 489 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 490 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 491 "data/maps/PetalburgCity_Gym/scripts.pory"

# 492 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GiveFacade2::
# 493 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_GiveFacade
# 494 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 495 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 496 "data/maps/PetalburgCity_Gym/scripts.pory"

# 497 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ShouldGiveEnigmaBerry::
# 498 "data/maps/PetalburgCity_Gym/scripts.pory"
	specialvar VAR_RESULT, IsEnigmaBerryValid
# 499 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry
# 500 "data/maps/PetalburgCity_Gym/scripts.pory"
	checkitem ITEM_ENIGMA_BERRY_E_READER
# 501 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry
# 502 "data/maps/PetalburgCity_Gym/scripts.pory"
	checkpcitem ITEM_ENIGMA_BERRY_E_READER
# 503 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry
# 504 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_ENIGMA_BERRY_AVAILABLE, 0, PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry
# 505 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 506 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GiveEnigmaBerry, MSGBOX_DEFAULT
# 507 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 508 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_RESULT, TRUE
# 509 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 510 "data/maps/PetalburgCity_Gym/scripts.pory"

# 511 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry::
# 512 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_RESULT, FALSE
# 513 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 514 "data/maps/PetalburgCity_Gym/scripts.pory"

# 515 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GiveEnigmaBerry::
# 516 "data/maps/PetalburgCity_Gym/scripts.pory"
	giveitem ITEM_ENIGMA_BERRY_E_READER
# 517 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 518 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_ENIGMA_BERRY_AVAILABLE, 0
# 519 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 520 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 521 "data/maps/PetalburgCity_Gym/scripts.pory"

# 522 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GiveFacade::
# 523 "data/maps/PetalburgCity_Gym/scripts.pory"
	giveitem ITEM_TM_WISH
# 524 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 525 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_FACADE
# 526 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 527 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ExplainFacade, MSGBOX_DEFAULT
# 528 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 529 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 530 "data/maps/PetalburgCity_Gym/scripts.pory"

# 531 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrivesNorth::
# 532 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 533 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_WallysDadArrives
# 534 "data/maps/PetalburgCity_Gym/scripts.pory"

# 535 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrivesEast::
# 536 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 2
# 537 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_WallysDadArrives
# 538 "data/maps/PetalburgCity_Gym/scripts.pory"

# 539 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrivesWest::
# 540 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 3
# 541 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_WallysDadArrives
# 542 "data/maps/PetalburgCity_Gym/scripts.pory"

# 543 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrivesSouth::
# 544 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 4
# 545 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_WallysDadArrives
# 546 "data/maps/PetalburgCity_Gym/scripts.pory"

# 547 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrives::
# 548 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadEnterGym
# 549 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 550 "data/maps/PetalburgCity_Gym/scripts.pory"
	playse SE_PIN
# 551 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_ExclamationMark
# 552 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 553 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_Delay48
# 554 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 555 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay 10
# 556 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_WallysDadApproachGroup
# 557 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_PleaseComeWithMe, MSGBOX_DEFAULT
# 558 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_LetMeBorrowPlayer, MSGBOX_DEFAULT
# 559 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 560 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_LukasGrandparentsHaveSomethingToSay, MSGBOX_DEFAULT
# 561 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 562 "data/maps/PetalburgCity_Gym/scripts.pory"
	removeobject LOCALID_PETALBURG_GYM_WALLYS_DAD
# 563 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_CITY_STATE, 4
# 564 "data/maps/PetalburgCity_Gym/scripts.pory"
	warp MAP_PETALBURG_CITY_WALLYS_HOUSE, 2, 4
# 565 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 566 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 567 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 568 "data/maps/PetalburgCity_Gym/scripts.pory"

# 569 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachGroup::
# 570 "data/maps/PetalburgCity_Gym/scripts.pory"
	getplayerxy VAR_0x8004, VAR_0x8005
# 571 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_ne VAR_0x8004, 3, PetalburgCity_Gym_EventScript_WallysDadApproachGroupLeft
# 572 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_0x8005, 3, PetalburgCity_Gym_EventScript_WallysDadApproachGroupBelow
# 573 "data/maps/PetalburgCity_Gym/scripts.pory"

# 574 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachGroupLeft::
# 575 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadToGroupLeft
# 576 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement LOCALID_PETALBURG_GYM_WALLYS_DAD
# 577 "data/maps/PetalburgCity_Gym/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_WEST
# 578 "data/maps/PetalburgCity_Gym/scripts.pory"
	turnobject LOCALID_PETALBURG_GYM_NORMAN, DIR_WEST
# 579 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 580 "data/maps/PetalburgCity_Gym/scripts.pory"

# 581 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachGroupBelow::
# 582 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadToGroupBelow
# 583 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement LOCALID_PETALBURG_GYM_WALLYS_DAD
# 584 "data/maps/PetalburgCity_Gym/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_SOUTH
# 585 "data/maps/PetalburgCity_Gym/scripts.pory"
	turnobject LOCALID_PETALBURG_GYM_NORMAN, DIR_SOUTH
# 586 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 587 "data/maps/PetalburgCity_Gym/scripts.pory"

# 588 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadToGroupLeft:
# 589 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 590 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 591 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 592 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 593 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 594 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 595 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_right
# 596 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 597 "data/maps/PetalburgCity_Gym/scripts.pory"

# 598 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadToGroupBelow:
# 599 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 600 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 601 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 602 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 603 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 604 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 605 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_up
# 606 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 607 "data/maps/PetalburgCity_Gym/scripts.pory"

# 608 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadFaceNormanNorth::
# 609 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_WalkInPlaceFasterUp
# 610 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 611 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 612 "data/maps/PetalburgCity_Gym/scripts.pory"

# 613 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadFaceNormanEast::
# 614 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_WalkInPlaceFasterRight
# 615 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 616 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 617 "data/maps/PetalburgCity_Gym/scripts.pory"

# 618 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadFaceNormanWest::
# 619 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_WalkInPlaceFasterLeft
# 620 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 621 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 622 "data/maps/PetalburgCity_Gym/scripts.pory"

# 623 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerNorth::
# 624 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerNorth
# 625 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 626 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 627 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterLeft
# 628 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 629 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 630 "data/maps/PetalburgCity_Gym/scripts.pory"

# 631 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerEast::
# 632 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerEast
# 633 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 634 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 635 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 636 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 637 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 638 "data/maps/PetalburgCity_Gym/scripts.pory"

# 639 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerWest::
# 640 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerWest
# 641 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 642 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 643 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 644 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 645 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 646 "data/maps/PetalburgCity_Gym/scripts.pory"

# 647 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerSouth::
# 648 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerEast
# 649 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 650 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 651 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 652 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 653 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 654 "data/maps/PetalburgCity_Gym/scripts.pory"

# 655 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallysDadNorth::
# 656 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadExitNorth
# 657 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 658 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallysDadNorth
# 659 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 660 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 661 "data/maps/PetalburgCity_Gym/scripts.pory"

# 662 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallysDadEast::
# 663 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadExitEast
# 664 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallysDadEast
# 665 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 666 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 667 "data/maps/PetalburgCity_Gym/scripts.pory"

# 668 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallysDadWest::
# 669 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadExitWest
# 670 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallysDadWest
# 671 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 672 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 673 "data/maps/PetalburgCity_Gym/scripts.pory"

# 674 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadExitNorth:
# 675 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 676 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 677 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 678 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 679 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 680 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 681 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 682 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 683 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 684 "data/maps/PetalburgCity_Gym/scripts.pory"
	set_invisible
# 685 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 686 "data/maps/PetalburgCity_Gym/scripts.pory"

# 687 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadExitEast:
# 688 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 689 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 690 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 691 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 692 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 693 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 694 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 695 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 696 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 697 "data/maps/PetalburgCity_Gym/scripts.pory"
	set_invisible
# 698 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 699 "data/maps/PetalburgCity_Gym/scripts.pory"

# 700 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadExitWest:
# 701 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 702 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 703 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 704 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 705 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 706 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 707 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 708 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 709 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 710 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 711 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 712 "data/maps/PetalburgCity_Gym/scripts.pory"
	set_invisible
# 713 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 714 "data/maps/PetalburgCity_Gym/scripts.pory"

# 715 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallysDadNorth:
# 716 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 717 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 718 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 719 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 720 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 721 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 722 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 723 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 724 "data/maps/PetalburgCity_Gym/scripts.pory"

# 725 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallysDadEast:
# 726 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 727 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 728 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 729 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 730 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 731 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 732 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 733 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 734 "data/maps/PetalburgCity_Gym/scripts.pory"

# 735 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallysDadWest:
# 736 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 737 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 738 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 739 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 740 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 741 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 742 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 743 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 744 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 745 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 746 "data/maps/PetalburgCity_Gym/scripts.pory"

# 747 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadEnterGym:
# 748 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 749 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 750 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_right
# 751 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 752 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_left
# 753 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 754 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 755 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 756 "data/maps/PetalburgCity_Gym/scripts.pory"

# 757 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadApproachPlayerNorth:
# 758 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 759 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 760 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 761 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 762 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 763 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_right
# 764 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 765 "data/maps/PetalburgCity_Gym/scripts.pory"

# 766 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadApproachPlayerEast:
# 767 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 768 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 769 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 770 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 771 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 772 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 773 "data/maps/PetalburgCity_Gym/scripts.pory"

# 774 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadApproachPlayerWest:
# 775 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 776 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 777 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 778 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 779 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 780 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 781 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 782 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 783 "data/maps/PetalburgCity_Gym/scripts.pory"

# 784 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_Unused:
# 785 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 786 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 787 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 788 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 789 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 790 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 791 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 792 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_down
# 793 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 794 "data/maps/PetalburgCity_Gym/scripts.pory"

# 795 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyArriveNorth:
# 796 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 797 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 798 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 799 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 800 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 801 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 802 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 803 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 804 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_left
# 805 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 806 "data/maps/PetalburgCity_Gym/scripts.pory"

# 807 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyArrive:
# 808 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 809 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 810 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 811 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 812 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 813 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 814 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 815 "data/maps/PetalburgCity_Gym/scripts.pory"

# 816 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitNorth:
# 817 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 818 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 819 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 820 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 821 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 822 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 823 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 824 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 825 "data/maps/PetalburgCity_Gym/scripts.pory"

# 826 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitEast:
# 827 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 828 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 829 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 830 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 831 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 832 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 833 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 834 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 835 "data/maps/PetalburgCity_Gym/scripts.pory"

# 836 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitSouthWest:
# 837 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 838 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 839 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 840 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 841 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 842 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 843 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 844 "data/maps/PetalburgCity_Gym/scripts.pory"

# 845 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallyNorth:
# 846 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 847 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 848 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 849 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 850 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 851 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 852 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 853 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 854 "data/maps/PetalburgCity_Gym/scripts.pory"

# 855 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallySouth:
# 856 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 857 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 858 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 859 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 860 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 861 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 862 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 863 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 864 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 865 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 866 "data/maps/PetalburgCity_Gym/scripts.pory"

# 867 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallyWest:
# 868 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 869 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 870 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 871 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 872 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 873 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 874 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 875 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 876 "data/maps/PetalburgCity_Gym/scripts.pory"

# 877 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallyEast:
# 878 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_down
# 879 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 880 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 881 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 882 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 883 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 884 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 885 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 886 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 887 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 888 "data/maps/PetalburgCity_Gym/scripts.pory"

# 889 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NoAmountOfTrainingIsEnough::
# 890 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 891 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadNoAmountOfTrainingIsEnough, MSGBOX_DEFAULT
# 892 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 893 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 894 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 895 "data/maps/PetalburgCity_Gym/scripts.pory"

# 896 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SpeedRoomDoor::
# 897 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 898 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_lt VAR_PETALBURG_GYM_STATE, 6, PetalburgCity_Gym_EventScript_DoorLocked
# 899 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 900 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 85
# 901 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterSpeedRoom, MSGBOX_YESNO
# 902 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 903 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 904 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 905 "data/maps/PetalburgCity_Gym/scripts.pory"

# 906 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_EnterRoom::
# 907 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 908 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay 30
# 909 "data/maps/PetalburgCity_Gym/scripts.pory"
	warpdoor MAP_PETALBURG_CITY_GYM, VAR_0x8008, VAR_0x8009
# 910 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 911 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 912 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 913 "data/maps/PetalburgCity_Gym/scripts.pory"

# 914 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_DontEnterRoom::
# 915 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 916 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 917 "data/maps/PetalburgCity_Gym/scripts.pory"

# 918 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_DoorLocked::
# 919 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DoorAppearsLocked, MSGBOX_DEFAULT
# 920 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 921 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 922 "data/maps/PetalburgCity_Gym/scripts.pory"

# 923 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ConfusionRoomDoor::
# 924 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 925 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_RANDALL, PetalburgCity_Gym_EventScript_DoorLocked
# 926 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 927 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 46
# 928 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterConfusionRoom, MSGBOX_YESNO
# 929 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 930 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 931 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 932 "data/maps/PetalburgCity_Gym/scripts.pory"

# 933 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftDefenseRoomDoor::
# 934 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 935 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_RANDALL, PetalburgCity_Gym_EventScript_DoorLocked
# 936 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 937 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 59
# 938 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterDefenseRoom, MSGBOX_YESNO
# 939 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 940 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 941 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 942 "data/maps/PetalburgCity_Gym/scripts.pory"

# 943 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightDefenseRoomDoor::
# 944 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 945 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_MARY, PetalburgCity_Gym_EventScript_DoorLocked
# 946 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 947 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 59
# 948 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterDefenseRoom, MSGBOX_YESNO
# 949 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 950 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 951 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 952 "data/maps/PetalburgCity_Gym/scripts.pory"

# 953 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RecoveryRoomDoor::
# 954 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 955 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_MARY, PetalburgCity_Gym_EventScript_DoorLocked
# 956 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 957 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 72
# 958 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterRecoveryRoom, MSGBOX_YESNO
# 959 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 960 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 961 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 962 "data/maps/PetalburgCity_Gym/scripts.pory"

# 963 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftStrengthRoomDoor::
# 964 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 965 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_PARKER, PetalburgCity_Gym_EventScript_DoorLocked
# 966 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 967 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 20
# 968 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterStrengthRoom, MSGBOX_YESNO
# 969 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 970 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 971 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 972 "data/maps/PetalburgCity_Gym/scripts.pory"

# 973 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightStrengthRoomDoor::
# 974 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 975 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_ALEXIA, PetalburgCity_Gym_EventScript_DoorLocked
# 976 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 977 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 20
# 978 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterStrengthRoom, MSGBOX_YESNO
# 979 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 980 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 981 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 982 "data/maps/PetalburgCity_Gym/scripts.pory"

# 983 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftOHKORoomDoor::
# 984 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 985 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_ALEXIA, PetalburgCity_Gym_EventScript_DoorLocked
# 986 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 987 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 33
# 988 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterOHKORoom, MSGBOX_YESNO
# 989 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 990 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 991 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 992 "data/maps/PetalburgCity_Gym/scripts.pory"

# 993 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightOHKORoomDoor::
# 994 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 995 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_GEORGE, PetalburgCity_Gym_EventScript_DoorLocked
# 996 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 997 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 33
# 998 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterOHKORoom, MSGBOX_YESNO
# 999 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 1000 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 1001 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1002 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1003 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftGymLeadersRoomDoor::
# 1004 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 1005 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_JODY, PetalburgCity_Gym_EventScript_DoorLocked
# 1006 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 1007 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 7
# 1008 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterGymLeadersRoom, MSGBOX_YESNO
# 1009 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 1010 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 1011 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1012 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1013 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightGymLeadersRoomDoor::
# 1014 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 1015 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_BERKE, PetalburgCity_Gym_EventScript_DoorLocked
# 1016 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 1017 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 7
# 1018 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterGymLeadersRoom, MSGBOX_YESNO
# 1019 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 1020 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 1021 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1022 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1023 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LibraryEmptyBook::
# 1024 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_LibraryEmptyBook, MSGBOX_SIGN
# 1025 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1026 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1027 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LibraryTypesBook::
# 1028 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 1029 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_TO_BLACK
# 1030 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_StartGymStudyBook
# 1031 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1032 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 1033 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 1034 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1035 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1036 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Randall::
# 1037 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_RANDALL, PetalburgCity_Gym_Text_RandallIntro, PetalburgCity_Gym_Text_RandallDefeat, PetalburgCity_Gym_EventScript_SlideOpenSpeedRoomDoors
# 1038 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_RandallPostBadge
# 1039 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_RandallPostBattle, MSGBOX_AUTOCLOSE
# 1040 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1041 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1042 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenSpeedRoomDoors::
# 1043 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1044 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1045 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1046 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RandallPostBadge::
# 1047 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_RandallPostBadge, MSGBOX_NPC
# 1048 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1049 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1050 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Parker::
# 1051 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1052 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1053 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_lt VAR_PETALBURG_GYM_STATE, 6, PetalburgCity_Gym_EventScript_ParkerNotEnoughBadges
# 1054 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_ParkerPostBadge
# 1055 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_0_CLEARED, PetalburgCity_Gym_EventScript_ParkerPostBattle
# 1056 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_PARKER, PetalburgCity_Gym_EventScript_ClearParkerGuard
# 1057 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerGymIntro, MSGBOX_DEFAULT
# 1058 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1059 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_TO_BLACK
# 1060 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_StartGymQuestionParker
# 1061 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1062 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 1063 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_GetGymQuestionResult
# 1064 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 0, PetalburgCity_Gym_EventScript_ParkerCorrectAnswer
# 1065 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 2, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1066 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerWrongAnswer, MSGBOX_DEFAULT
# 1067 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_PARKER, PetalburgCity_Gym_Text_ParkerDefeat
# 1068 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearParkerGuard
# 1069 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1070 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1071 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ParkerNotEnoughBadges::
# 1072 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerNotEnoughBadges, MSGBOX_DEFAULT
# 1073 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1074 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1075 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1076 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ParkerCorrectAnswer::
# 1077 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerCorrectAnswer, MSGBOX_DEFAULT
# 1078 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearParkerGuard
# 1079 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1080 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearParkerGuard::
# 1081 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_0_CLEARED
# 1082 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1083 "data/maps/PetalburgCity_Gym/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 1084 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 3, PetalburgCity_Gym_EventScript_MoveParkerGuardDownFirst
# 1085 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveParkerGuardLeftFirst
# 1086 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1087 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveParkerGuardLeftFirst::
# 1088 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_PARKER, PetalburgCity_Gym_Movement_ParkerLeftDownDownLeftLeft
# 1089 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1090 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionParkerCleared
# 1091 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1092 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1093 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1094 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveParkerGuardDownFirst::
# 1095 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_PARKER, PetalburgCity_Gym_Movement_ParkerDownDownLeftLeftLeft
# 1096 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1097 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionParkerCleared
# 1098 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1099 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1100 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1101 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenConfusionRoomDoors::
# 1102 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearParkerGuard
# 1103 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1104 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ParkerPostBattle::
# 1105 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerPostBattle, MSGBOX_AUTOCLOSE
# 1106 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1107 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1108 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1109 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ParkerPostBadge::
# 1110 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerPostBadge, MSGBOX_NPC
# 1111 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1112 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1113 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1114 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Mary::
# 1115 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1116 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1117 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_MaryPostBadge
# 1118 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_1_CLEARED, PetalburgCity_Gym_EventScript_MaryPostBattle
# 1119 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_MARY, PetalburgCity_Gym_EventScript_ClearMaryGuard
# 1120 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1121 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_TO_BLACK
# 1122 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_StartGymQuestionMary
# 1123 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1124 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 1125 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_GetGymQuestionResult
# 1126 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 2, PetalburgCity_Gym_EventScript_MaryCorrectAnswer
# 1127 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 4, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1128 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_MaryWrongAnswer, MSGBOX_DEFAULT
# 1129 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_MARY, PetalburgCity_Gym_Text_MaryDefeat
# 1130 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearMaryGuard
# 1131 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1132 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1133 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MaryCorrectAnswer::
# 1134 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_MaryCorrectAnswer, MSGBOX_DEFAULT
# 1135 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearMaryGuard
# 1136 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1137 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearMaryGuard::
# 1138 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_1_CLEARED
# 1139 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1140 "data/maps/PetalburgCity_Gym/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 1141 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_ne VAR_TEMP_3, 80, PetalburgCity_Gym_EventScript_MoveMaryGuard
# 1142 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 3, PetalburgCity_Gym_EventScript_PushPlayerBeforeMaryGuard
# 1143 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 4, PetalburgCity_Gym_EventScript_PushPlayerBeforeMaryGuard
# 1144 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 5, PetalburgCity_Gym_EventScript_PushPlayerBeforeMaryGuard
# 1145 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveMaryGuard
# 1146 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1147 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PushPlayerBeforeMaryGuard::
# 1148 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkDown
# 1149 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1150 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveMaryGuard
# 1151 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1152 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveMaryGuard::
# 1153 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_MARY, PetalburgCity_Gym_Movement_GuardWalkLeft3
# 1154 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1155 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionMaryCleared
# 1156 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1157 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1158 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1159 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenAccuracyRoomDoors::
# 1160 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearMaryGuard
# 1161 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1162 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MaryPostBattle::
# 1163 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_MaryPostBattle, MSGBOX_AUTOCLOSE
# 1164 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1165 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1166 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1167 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MaryPostBadge::
# 1168 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_MaryPostBadge, MSGBOX_NPC
# 1169 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1170 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1171 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1172 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_George::
# 1173 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1174 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1175 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_GeorgePostBadge
# 1176 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_2_CLEARED, PetalburgCity_Gym_EventScript_GeorgePostBattle
# 1177 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_GEORGE, PetalburgCity_Gym_EventScript_ClearGeorgeGuard
# 1178 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1179 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_TO_BLACK
# 1180 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_StartGymQuestionGeorge
# 1181 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1182 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 1183 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_GetGymQuestionResult
# 1184 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 0, PetalburgCity_Gym_EventScript_GeorgeCorrectAnswer
# 1185 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 4, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1186 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GeorgeWrongAnswer, MSGBOX_DEFAULT
# 1187 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_GEORGE, PetalburgCity_Gym_Text_GeorgeDefeat
# 1188 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearGeorgeGuard
# 1189 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1190 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1191 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GeorgeCorrectAnswer::
# 1192 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GeorgeCorrectAnswer, MSGBOX_DEFAULT
# 1193 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearGeorgeGuard
# 1194 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1195 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearGeorgeGuard::
# 1196 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_2_CLEARED
# 1197 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1198 "data/maps/PetalburgCity_Gym/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 1199 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_ne VAR_TEMP_3, 67, PetalburgCity_Gym_EventScript_MoveGeorgeGuard
# 1200 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 3, PetalburgCity_Gym_EventScript_PushPlayerBeforeGeorgeGuard
# 1201 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 4, PetalburgCity_Gym_EventScript_PushPlayerBeforeGeorgeGuard
# 1202 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_2, 5, PetalburgCity_Gym_EventScript_PushPlayerBeforeGeorgeGuard
# 1203 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveGeorgeGuard
# 1204 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1205 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PushPlayerBeforeGeorgeGuard::
# 1206 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkDown
# 1207 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1208 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveGeorgeGuard
# 1209 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1210 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveGeorgeGuard::
# 1211 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_GEORGE, PetalburgCity_Gym_Movement_GuardWalkLeft3
# 1212 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1213 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionGeorgeCleared
# 1214 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1215 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1216 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1217 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenRecoveryRoomDoors::
# 1218 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearGeorgeGuard
# 1219 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1220 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GeorgePostBattle::
# 1221 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GeorgePostBattle, MSGBOX_AUTOCLOSE
# 1222 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1223 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1224 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1225 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GeorgePostBadge::
# 1226 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GeorgePostBadge, MSGBOX_NPC
# 1227 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1228 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1229 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1230 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Alexia::
# 1231 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1232 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1233 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_AlexiaPostBadge
# 1234 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_3_CLEARED, PetalburgCity_Gym_EventScript_AlexiaPostBattle
# 1235 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_ALEXIA, PetalburgCity_Gym_EventScript_ClearAlexiaGuard
# 1236 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1237 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_TO_BLACK
# 1238 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_StartGymQuestionAlexia
# 1239 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1240 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 1241 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_GetGymQuestionResult
# 1242 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 1, PetalburgCity_Gym_EventScript_AlexiaCorrectAnswer
# 1243 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 4, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1244 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_AlexiaWrongAnswer, MSGBOX_DEFAULT
# 1245 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_ALEXIA, PetalburgCity_Gym_Text_AlexiaDefeat
# 1246 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearAlexiaGuard
# 1247 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1248 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1249 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_AlexiaCorrectAnswer::
# 1250 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_AlexiaCorrectAnswer, MSGBOX_DEFAULT
# 1251 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearAlexiaGuard
# 1252 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1253 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearAlexiaGuard::
# 1254 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_3_CLEARED
# 1255 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1256 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_ALEXIA, PetalburgCity_Gym_Movement_GuardWalkRight2
# 1257 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1258 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionAlexiaCleared
# 1259 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1260 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1261 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1262 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenDefenseRoomDoors::
# 1263 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearAlexiaGuard
# 1264 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1265 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_AlexiaPostBattle::
# 1266 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_AlexiaPostBattle, MSGBOX_AUTOCLOSE
# 1267 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1268 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1269 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1270 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_AlexiaPostBadge::
# 1271 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_AlexiaPostBadge, MSGBOX_NPC
# 1272 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1273 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1274 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1275 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Berke::
# 1276 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1277 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1278 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_BerkePostBadge
# 1279 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_4_CLEARED, PetalburgCity_Gym_EventScript_BerkePostBattle
# 1280 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_BERKE, PetalburgCity_Gym_EventScript_ClearBerkeGuard
# 1281 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1282 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_TO_BLACK
# 1283 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_StartGymQuestionBerke
# 1284 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1285 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 1286 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_GetGymQuestionResult
# 1287 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 2, PetalburgCity_Gym_EventScript_BerkeCorrectAnswer
# 1288 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 4, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1289 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_BerkeWrongAnswer, MSGBOX_DEFAULT
# 1290 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_BERKE, PetalburgCity_Gym_Text_BerkeDefeat
# 1291 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearBerkeGuard
# 1292 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1293 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1294 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BerkeCorrectAnswer::
# 1295 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_BerkeCorrectAnswer, MSGBOX_DEFAULT
# 1296 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearBerkeGuard
# 1297 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1298 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearBerkeGuard::
# 1299 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_4_CLEARED
# 1300 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1301 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_BERKE, PetalburgCity_Gym_Movement_GuardWalkLeft2
# 1302 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1303 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionBerkeCleared
# 1304 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1305 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1306 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1307 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenOHKORoomDoors::
# 1308 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearBerkeGuard
# 1309 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1310 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BerkePostBattle::
# 1311 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_BerkePostBattle, MSGBOX_AUTOCLOSE
# 1312 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1313 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1314 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1315 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BerkePostBadge::
# 1316 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_BerkePostBadge, MSGBOX_NPC
# 1317 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1318 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1319 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1320 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Jody::
# 1321 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1322 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1323 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_JodyPostBadge
# 1324 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_PETALBURG_GYM_GUARD_5_CLEARED, PetalburgCity_Gym_EventScript_JodyPostBattle
# 1325 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_defeated TRAINER_JODY, PetalburgCity_Gym_EventScript_ClearJodyGuard
# 1326 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1327 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_TO_BLACK
# 1328 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_StartGymQuestionJody
# 1329 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1330 "data/maps/PetalburgCity_Gym/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 1331 "data/maps/PetalburgCity_Gym/scripts.pory"
	callnative HLW_GetGymQuestionResult
# 1332 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 3, PetalburgCity_Gym_EventScript_JodyCorrectAnswer
# 1333 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, 4, PetalburgCity_Gym_EventScript_GuardAnswerLater
# 1334 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_JodyWrongAnswer, MSGBOX_DEFAULT
# 1335 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_no_intro TRAINER_JODY, PetalburgCity_Gym_Text_JodyDefeat
# 1336 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearJodyGuard
# 1337 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1338 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1339 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_JodyCorrectAnswer::
# 1340 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_JodyCorrectAnswer, MSGBOX_DEFAULT
# 1341 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearJodyGuard
# 1342 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1343 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ClearJodyGuard::
# 1344 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_PETALBURG_GYM_GUARD_5_CLEARED
# 1345 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 1346 "data/maps/PetalburgCity_Gym/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 1347 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_ne VAR_TEMP_2, 5, PetalburgCity_Gym_EventScript_MoveJodyGuardRightFirst
# 1348 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_3, 18, PetalburgCity_Gym_EventScript_MoveJodyGuardDownFirst
# 1349 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_3, 19, PetalburgCity_Gym_EventScript_MoveJodyGuardDownFirst
# 1350 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_TEMP_3, 20, PetalburgCity_Gym_EventScript_MoveJodyGuardDownFirst
# 1351 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_MoveJodyGuardRightFirst
# 1352 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1353 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveJodyGuardRightFirst::
# 1354 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_JODY, PetalburgCity_Gym_Movement_JodyRightDownDown
# 1355 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1356 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionJodyCleared
# 1357 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1358 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1359 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1360 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveJodyGuardDownFirst::
# 1361 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_JODY, PetalburgCity_Gym_Movement_JodyDownDownRight
# 1362 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 1363 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_PositionJodyCleared
# 1364 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1365 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1366 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1367 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenStrengthRoomDoors::
# 1368 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ClearJodyGuard
# 1369 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1370 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_JodyPostBattle::
# 1371 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_JodyPostBattle, MSGBOX_AUTOCLOSE
# 1372 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1373 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1374 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1375 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_JodyPostBadge::
# 1376 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_JodyPostBadge, MSGBOX_NPC
# 1377 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1378 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1379 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1380 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GuardAnswerLater::
# 1381 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GuardAnswerLater, MSGBOX_DEFAULT
# 1382 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1383 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1384 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1385 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionClearedGuards::
# 1386 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_0_CLEARED, PetalburgCity_Gym_EventScript_PositionParkerCleared
# 1387 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_PARKER, PetalburgCity_Gym_EventScript_PositionParkerCleared
# 1388 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_1_CLEARED, PetalburgCity_Gym_EventScript_PositionMaryCleared
# 1389 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_MARY, PetalburgCity_Gym_EventScript_PositionMaryCleared
# 1390 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_2_CLEARED, PetalburgCity_Gym_EventScript_PositionGeorgeCleared
# 1391 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_GEORGE, PetalburgCity_Gym_EventScript_PositionGeorgeCleared
# 1392 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_3_CLEARED, PetalburgCity_Gym_EventScript_PositionAlexiaCleared
# 1393 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_ALEXIA, PetalburgCity_Gym_EventScript_PositionAlexiaCleared
# 1394 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_4_CLEARED, PetalburgCity_Gym_EventScript_PositionBerkeCleared
# 1395 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_BERKE, PetalburgCity_Gym_EventScript_PositionBerkeCleared
# 1396 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_PETALBURG_GYM_GUARD_5_CLEARED, PetalburgCity_Gym_EventScript_PositionJodyCleared
# 1397 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_JODY, PetalburgCity_Gym_EventScript_PositionJodyCleared
# 1398 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1399 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1400 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionParkerCleared::
# 1401 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_PARKER, 1, 106
# 1402 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_PARKER, MOVEMENT_TYPE_FACE_LEFT
# 1403 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1404 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1405 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionMaryCleared::
# 1406 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_MARY, 3, 80
# 1407 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_MARY, MOVEMENT_TYPE_FACE_DOWN
# 1408 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1409 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1410 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionGeorgeCleared::
# 1411 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_GEORGE, 3, 67
# 1412 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_GEORGE, MOVEMENT_TYPE_FACE_DOWN
# 1413 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1414 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1415 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionAlexiaCleared::
# 1416 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_ALEXIA, 4, 48
# 1417 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_ALEXIA, MOVEMENT_TYPE_FACE_DOWN
# 1418 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1419 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1420 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionBerkeCleared::
# 1421 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_BERKE, 4, 31
# 1422 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_BERKE, MOVEMENT_TYPE_FACE_DOWN
# 1423 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1424 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1425 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_PositionJodyCleared::
# 1426 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_JODY, 5, 20
# 1427 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectmovementtype LOCALID_PETALBURG_GYM_JODY, MOVEMENT_TYPE_FACE_DOWN
# 1428 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1429 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1430 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_ParkerLeftDownDownLeftLeft:
# 1431 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1432 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1433 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1434 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1435 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1436 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_left
# 1437 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1438 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1439 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_ParkerDownDownLeftLeftLeft:
# 1440 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1441 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1442 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1443 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1444 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1445 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_left
# 1446 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1447 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1448 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_GuardWalkLeft3:
# 1449 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
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
PetalburgCity_Gym_Movement_GuardWalkLeft2:
# 1456 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1457 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 1458 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_down
# 1459 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1460 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1461 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_GuardWalkRight2:
# 1462 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 1463 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 1464 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_down
# 1465 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1466 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1467 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_JodyRightDownDown:
# 1468 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 1469 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1470 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1471 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_down
# 1472 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1473 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1474 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_JodyDownDownRight:
# 1475 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1476 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 1477 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 1478 "data/maps/PetalburgCity_Gym/scripts.pory"
	face_down
# 1479 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 1480 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1481 "data/maps/PetalburgCity_Gym/scripts.pory"
@ VAR_0x8004 below is the room number
# 1482 "data/maps/PetalburgCity_Gym/scripts.pory"
@ VAR_0x8005 below is 0 when the door should be slid open and 1 when it should be unlocked immediately
# 1483 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenGymEntranceDoors::
# 1484 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 1
# 1485 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1486 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1487 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetEntranceRoomDoorMetatiles
# 1488 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1489 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1490 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenSpeedRoomDoors::
# 1491 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 2
# 1492 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1493 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1494 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetSpeedRoomDoorMetatiles
# 1495 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1496 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1497 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenAccuracyRoomDoors::
# 1498 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 3
# 1499 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1500 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1501 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetAccuracyRoomDoorMetatiles
# 1502 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1503 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1504 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenConfusionRoomDoors::
# 1505 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 4
# 1506 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1507 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1508 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetConfusionRoomDoorMetatiles
# 1509 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1510 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1511 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenDefenseRoomDoors::
# 1512 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 5
# 1513 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1514 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1515 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetDefenseRoomDoorMetatiles
# 1516 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1517 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1518 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenRecoveryRoomDoors::
# 1519 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 6
# 1520 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1521 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1522 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetRecoveryRoomDoorMetatiles
# 1523 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1524 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1525 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenStrengthRoomDoors::
# 1526 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 7
# 1527 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1528 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1529 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetStrengthRoomDoorMetatiles
# 1530 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1531 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1532 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenOHKORoomDoors::
# 1533 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 8
# 1534 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1535 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1536 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetOHKORoomDoorMetatiles
# 1537 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1538 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1539 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetEntranceRoomDoorMetatiles::
# 1540 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 85, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1541 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 85, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1542 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 98, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1543 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 98, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1544 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1545 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1546 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetSpeedRoomDoorMetatiles::
# 1547 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 46, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1548 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 46, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1549 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 59, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1550 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 59, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1551 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1552 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1553 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetAccuracyRoomDoorMetatiles::
# 1554 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 59, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1555 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 59, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1556 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 72, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1557 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 72, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1558 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1559 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1560 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetConfusionRoomDoorMetatiles::
# 1561 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 20, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1562 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 20, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1563 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1564 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1565 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetDefenseRoomDoorMetatiles::
# 1566 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 20, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1567 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 20, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1568 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 33, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1569 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 33, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1570 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1571 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1572 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetRecoveryRoomDoorMetatiles::
# 1573 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 33, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1574 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 33, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1575 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1576 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1577 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetStrengthRoomDoorMetatiles::
# 1578 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 7, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1579 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 7, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1580 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1581 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1582 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetOHKORoomDoorMetatiles::
# 1583 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 7, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1584 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 7, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1585 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1586 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1587 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenRoomDoors::
# 1588 "data/maps/PetalburgCity_Gym/scripts.pory"
	special PetalburgGymSlideOpenRoomDoors
# 1589 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1590 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1591 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1592 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_UnlockRoomDoors::
# 1593 "data/maps/PetalburgCity_Gym/scripts.pory"
	special PetalburgGymUnlockRoomDoors
# 1594 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1595 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1596 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymGuide::
# 1597 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1598 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1599 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_GymGuidePostVictory
# 1600 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 1601 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1602 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1603 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1604 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymGuidePostVictory::
# 1605 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 1606 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1607 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1608 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1609 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftGymStatue::
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
PetalburgCity_Gym_EventScript_RightGymStatue::
# 1616 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 1617 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE05_GET, PetalburgCity_Gym_EventScript_GymStatueCertified
# 1618 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_GymStatue
# 1619 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1620 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1621 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymStatueCertified::
# 1622 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 1623 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 1624 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1625 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1626 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymStatue::
# 1627 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 1628 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 1629 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1630 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1631 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadYoureHereWithYourPokemon:
# 1632 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Oh?\n"
# 1633 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You must be {PLAYER}, right?\p"
# 1634 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "ACACIA said you would be arriving.\p"
# 1635 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "We met long ago, studying to become\n"
# 1636 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "POKéMON professors together.\p"
# 1637 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I chose the path of a full-time\n"
# 1638 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GYM LEADER, but ACACIA still guides\l"
# 1639 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "and inspires me.\p"
# 1640 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "And you…\n"
# 1641 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I sense something truly special.\p"
# 1642 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "If ACACIA believes in your potential,\n"
# 1643 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "then so do I.\p"
# 1644 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Welcome to the PETALBURG GYM,\n"
# 1645 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}. Your adventure as a TRAINER\l"
# 1646 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "truly begins here.$"
# 1647 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1648 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyIdLikeAPokemon:
# 1649 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Perfect timing!$"
# 1650 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1651 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadOhYoureWallyRight:
# 1652 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: {PLAYER}, meet LUKA.\n"
# 1653 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "He's my neighbor and a bold,\l"
# 1654 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "curious prodigy.\p"
# 1655 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Ever since he was a child,\n"
# 1656 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "he's had a special bond with POKéMON.\p"
# 1657 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "He's always chasing strange\n"
# 1658 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "mysteries in HOENN, like that\l"
# 1659 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "recent comet.$"
# 1660 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1661 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyIveNeverCaughtAPokemon:
# 1662 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: I'm heading to VERDANTURF soon.\p"
# 1663 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I need to explore HOENN and\n"
# 1664 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "investigate the strange comet\l"
# 1665 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "that passed over recently.\p"
# 1666 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "But before that, I want a real\n"
# 1667 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "battle, one worthy of a proper\l"
# 1668 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "sendoff.$"
# 1669 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1670 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadHmISee:
# 1671 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Hm… I see.\n"
# 1672 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You both arrived at the perfect time.$"
# 1673 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1674 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadPlayerGoWithWally:
# 1675 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, ACACIA has an eye\n"
# 1676 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "for talent… and so do I.\p"
# 1677 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA is sharp and fearless.\p"
# 1678 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Go to ROUTE 102 and battle him.\p"
# 1679 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Then come tell me the result.$"
# 1680 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1681 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_IllLoanYouMyZigzagoon:
# 1682 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Calendula: Luka, remember your training!$"
# 1683 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1684 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyThankYouAndDadGivesPokeBall:
# 1685 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: Don’t worry, CALENDULA.\n"
# 1686 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I’ve got everything I need.$"
# 1687 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1688 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyOhWowThankYou:
# 1689 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: I'll prove you were right to\n"
# 1690 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "believe in me.$"
# 1691 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1692 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WouldYouReallyComeWithMe:
# 1693 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: {PLAYER}, you know,\n"
# 1694 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I get a strange sense of familiarity\l"
# 1695 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "when I look at you.\p"
# 1696 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Perhaps it was fate for us to meet.\n"
# 1697 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Now, let's head to ROUTE 102 and\l"
# 1698 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "have a battle to remember!$"
# 1699 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1700 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadSoDidItWorkOut_LukaWon:
# 1701 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: So… LUKA came out on top?\n"
# 1702 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "That's fine.\p"
# 1703 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, a loss is not the end.\n"
# 1704 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "What matters is that you battled\l"
# 1705 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "with your full heart.\p"
# 1706 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Your bond with your POKéMON\n"
# 1707 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "was clear to see, even in defeat.$"
# 1708 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1709 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyThankYouBye_LukaWon:
# 1710 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: It was a real battle, {PLAYER}.\n"
# 1711 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I pushed hard, and so did you.\p"
# 1712 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I hope this makes you want to\n"
# 1713 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "grow even stronger.\p"
# 1714 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Keep chasing your goal.\n"
# 1715 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I'll be watching!\p"
# 1716 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Gotta go! That strange comet\n"
# 1717 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "in HOENN is on my mind.\p"
# 1718 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "See you soon, {PLAYER}!$"
# 1719 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1720 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadSoDidItWorkOut:
# 1721 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Excellent work!\n"
# 1722 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You both did great.\p"
# 1723 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, I am confident you'll be\n"
# 1724 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "safe in the woods if your bond with\l"
# 1725 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "your POKéMON is this strong.$"
# 1726 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1727 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyThankYouBye:
# 1728 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: That was a great battle!\n"
# 1729 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You pushed me, {PLAYER}.\p"
# 1730 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I lost, but I held back a bit.\n"
# 1731 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Next time, I’ll give my full strength.\p"
# 1732 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Gotta go! That strange comet\n"
# 1733 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "in HOENN is on my mind.\p"
# 1734 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I need to learn more.\n"
# 1735 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "See you soon, {PLAYER}!$"
# 1736 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1737 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadGoCollectBadges:
# 1738 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Now…\n"
# 1739 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, to become a real TRAINER,\l"
# 1740 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "listen carefully.\p"
# 1741 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "First, go to RUSTBORO CITY.\n"
# 1742 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Challenge TERRA, the ROCK-type\l"
# 1743 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "GYM LEADER.\p"
# 1744 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Defeat her, then continue across HOENN\n"
# 1745 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "and earn badges from other GYM LEADERS.\p"
# 1746 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "But be cautious.\n"
# 1747 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Strange events have been happening,\l"
# 1748 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "and that mysterious comet passed\l"
# 1749 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "recently...\p"
# 1750 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I have a bad feeling about it.\n"
# 1751 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Stay alert, {PLAYER}, and come back\l"
# 1752 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "stronger for our GYM battle.$"
# 1753 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1754 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanGoToRustboro:
# 1755 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Hm? Aren't you heading to\n"
# 1756 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "RUSTBORO CITY's POKéMON GYM?\p"
# 1757 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You still have much to learn.\p"
# 1758 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Keep exploring, {PLAYER}.\n"
# 1759 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I want to help you grow.\p"
# 1760 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Return after you earn 4 BADGES,\n"
# 1761 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "then challenge me!$"
# 1762 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1763 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1764 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanGoToDewford:
# 1765 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: I see… So, you've beaten\n"
# 1766 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the GYM LEADER in RUSTBORO CITY.\p"
# 1767 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But there are many more TRAINERS\n"
# 1768 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "who are stronger than you, {PLAYER}.\p"
# 1769 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Across the sea in DEWFORD TOWN is a\n"
# 1770 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GYM LEADER named RENTON.\p"
# 1771 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You should go challenge him.$"
# 1772 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1773 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_YouHaveGottenStronger:
# 1774 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: Hm… {PLAYER}, you have gotten\n"
# 1775 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "stronger.\p"
# 1776 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I can tell by the number of BADGES\n"
# 1777 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "that you've earned.$"
# 1778 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1779 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanIntro:
# 1780 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: Hm…\n"
# 1781 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "So, you did get four GYM BADGES.\p"
# 1782 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Fine, as I promised, we will have\n"
# 1783 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a POKéMON battle.\p"
# 1784 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}…\p"
# 1785 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'm so happy that I can have\n"
# 1786 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a real battle with my own student.\p"
# 1787 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But, a battle is a battle!\p"
# 1788 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I will do everything in my power as\n"
# 1789 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a GYM LEADER to win.\p"
# 1790 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}, you'd better give it your\n"
# 1791 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "best shot, too!$"
# 1792 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1793 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanDefeat:
# 1794 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "…\p"
# 1795 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I… I can't…\p"
# 1796 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I can't believe it. {PLAYER}…\p"
# 1797 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I lost to {PLAYER}?\p"
# 1798 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But, rules are rules!\n"
# 1799 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Here, take this.$"
# 1800 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1801 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ReceivedBalanceBadge:
# 1802 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER} received the BALANCE BADGE\n"
# 1803 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "from CALENDULA!$"
# 1804 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1805 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ExplainBalanceBadgeTakeThis:
# 1806 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: With that BADGE, the DEFENSE\n"
# 1807 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "of all your POKéMON will increase.\p"
# 1808 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "POKéMON that know the HM move SURF\n"
# 1809 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "will be able to travel over water.\p"
# 1810 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This is my gift to you. {PLAYER}, I'm\n"
# 1811 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "sure you can use it correctly.$"
# 1812 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1813 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ExplainFacade:
# 1814 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: TM42 contains WISH.\p"
# 1815 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "A wish made now restores HP at the\n"
# 1816 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "end of the next turn.$"
# 1817 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1818 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadHappyAndSad:
# 1819 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: As the GYM LEADER, I can't\n"
# 1820 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "express how upset I am…\p"
# 1821 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But as a mentor, it makes me both\n"
# 1822 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "happy and a little sad. It's odd…$"
# 1823 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1824 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_PleaseComeWithMe:
# 1825 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Ah, there you are, {PLAYER}{KUN}!\p"
# 1826 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Please come with me.\n"
# 1827 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I have something I want you to have.$"
# 1828 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1829 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_LetMeBorrowPlayer:
# 1830 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA, you don't mind, do you?\p"
# 1831 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Let me borrow {PLAYER}{KUN} for\n"
# 1832 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a minute or two.$"
# 1833 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1834 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_LukasGrandparentsHaveSomethingToSay:
# 1835 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "LUKA's grandparents have something\n"
# 1836 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "to say to you at his house.$"
# 1837 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1838 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadGoingToKeepTraining:
# 1839 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}, I'm really proud\n"
# 1840 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "of how far you've come.\p"
# 1841 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Battles aren't about revenge.\n"
# 1842 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "They're about growth for both of us.\p"
# 1843 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'll continue training and learning,\n"
# 1844 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "so I can guide new trainers better.\p"
# 1845 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "And when you have the time,\n"
# 1846 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "go visit ACACIA.\p"
# 1847 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "She cares about you deeply,\n"
# 1848 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "and she's always cheering you on.$"
# 1849 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1850 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadNoAmountOfTrainingIsEnough:
# 1851 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}, how is your\n"
# 1852 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "journey going?\p"
# 1853 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The world of POKéMON is incredibly deep.\n"
# 1854 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "There is always something new to learn.\p"
# 1855 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Research, observation, and sharing\n"
# 1856 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "knowledge with young trainers -\l"
# 1857 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "that is what truly strengthens us.\p"
# 1858 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Battles are important, yes…\n"
# 1859 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "but understanding POKéMON is essential.$"
# 1860 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1861 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymGuideAdvice:
# 1862 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hey, how's it going, CHAMPION-\n"
# 1863 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "bound {PLAYER}?\p"
# 1864 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA's GYM is set up like\n"
# 1865 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a research lab.\p"
# 1866 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The researchers guarding each door\n"
# 1867 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "will ask you a question.\p"
# 1868 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Answer correctly, and they'll step\n"
# 1869 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "aside without a battle.\p"
# 1870 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Answer wrong, and you'll have to\n"
# 1871 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "battle your way through.\p"
# 1872 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "If you're unsure, look around the\n"
# 1873 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "rooms for clues before answering.\p"
# 1874 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA values knowledge and\n"
# 1875 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "strategy, so keep your eyes sharp!$"
# 1876 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1877 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymGuidePostVictory:
# 1878 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}! Whoa!\p"
# 1879 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You defeated CALENDULA?\n"
# 1880 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Even with all her knowledge?\p"
# 1881 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That's incredible!\n"
# 1882 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "What an unexpected outcome!$"
# 1883 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1884 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_LibraryEmptyBook:
# 1885 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "There's nothing useful here.$"
# 1886 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1887 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_LibraryTypesBook:
# 1888 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It's a book about POKéMON types!\n"
# 1889 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "There are 18 different types.$"
# 1890 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1891 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallIntro:
# 1892 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Looking for a clue to MARY's\n"
# 1893 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "question?\p"
# 1894 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Beat me in battle, and I'll point\n"
# 1895 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "you to the right book.$"
# 1896 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1897 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallDefeat:
# 1898 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That was a magnificent battle!$"
# 1899 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1900 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallPostBattle:
# 1901 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Fine, here's your clue.\p"
# 1902 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The book you want is in the middle\n"
# 1903 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "row, second from the right.$"
# 1904 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1905 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallPostBadge:
# 1906 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Whomever you beat, and whomever you\n"
# 1907 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "may lose to, you never shirk from\l"
# 1908 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "training yourself and your POKéMON.\p"
# 1909 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That's what I think being a\n"
# 1910 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GYM LEADER is all about.$"
# 1911 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1912 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerIntro:
# 1913 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This is the CONFUSION ROOM.\p"
# 1914 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Let me see how well bonded you are\n"
# 1915 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with your POKéMON!$"
# 1916 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1917 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerDefeat:
# 1918 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I couldn't confuse your team enough…\n"
# 1919 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You share a strong bond together.$"
# 1920 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1921 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerPostBattle:
# 1922 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The first door is open.\p"
# 1923 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA's researchers will test\n"
# 1924 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "what you know as much as how you\l"
# 1925 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "battle, so keep your mind sharp.$"
# 1926 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1927 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerPostBadge:
# 1928 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "After you beat our LEADER, the\n"
# 1929 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "training has become a lot tougher.$"
# 1930 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1931 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerNotEnoughBadges:
# 1932 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You don't have enough badges to face\n"
# 1933 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA yet. Please come back once\l"
# 1934 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "you have four GYM BADGES.$"
# 1935 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1936 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerGymIntro:
# 1937 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Welcome to CALENDULA's research lab.\p"
# 1938 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Each researcher here will ask you\n"
# 1939 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a question.\p"
# 1940 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Answer correctly, and you may pass.\n"
# 1941 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Answer incorrectly, and you'll need\l"
# 1942 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "to prove yourself in battle.$"
# 1943 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1944 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerQuestion:
# 1945 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "True or false?\p"
# 1946 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA's first partner was\n"
# 1947 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "an EEVEE.$"
# 1948 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1949 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerCorrectAnswer:
# 1950 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Correct! EEVEE was CALENDULA's first\n"
# 1951 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "partner and helped begin her research.\p"
# 1952 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You may proceed.$"
# 1953 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1954 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerWrongAnswer:
# 1955 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Incorrect. CALENDULA's first partner\n"
# 1956 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "was EEVEE.\p"
# 1957 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Let's see how you handle battle.$"
# 1958 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1959 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeIntro:
# 1960 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Just when you think you're going to\n"
# 1961 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "win, your opponent restores HP…\p"
# 1962 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Can you just imagine how awful that\n"
# 1963 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "must feel?\p"
# 1964 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'll show you exactly how awful it\n"
# 1965 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "feels!$"
# 1966 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1967 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeDefeat:
# 1968 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I couldn't restore HP enough…\n"
# 1969 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "What ATTACK power…$"
# 1970 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1971 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgePostBattle:
# 1972 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You may pass.\p"
# 1973 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "A good researcher keeps notes, but\n"
# 1974 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a great TRAINER remembers when\l"
# 1975 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "those notes matter.$"
# 1976 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1977 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgePostBadge:
# 1978 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'm going to keep training at GYMS.\n"
# 1979 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "One day, I'll become a LEADER.$"
# 1980 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1981 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeIntro:
# 1982 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'm not going to take it easy\n"
# 1983 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "just because you're her apprentice.\p"
# 1984 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'll show you how brutal it is\n"
# 1985 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "when a POKEMON takes a critical hit!$"
# 1986 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1987 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeDefeat:
# 1988 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Your power…\n"
# 1989 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You're the real deal.$"
# 1990 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1991 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkePostBattle:
# 1992 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You're cleared to continue.\p"
# 1993 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Every question in this lab is here\n"
# 1994 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "because CALENDULA expects you to\l"
# 1995 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "think under pressure.$"
# 1996 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1997 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkePostBadge:
# 1998 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Since CALENDULA became our\n"
# 1999 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "LEADER, we've grown a lot.\p"
# 2000 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "We've learned so much about\n"
# 2001 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the POKEMON world\l"
# 2002 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "beyond just battling.\p"
# 2003 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Knowledge and strategy matter\n"
# 2004 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "just as much as strength now.$"
# 2005 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2006 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryIntro:
# 2007 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Giggle…\n"
# 2008 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This is the ACCURACY ROOM.\p"
# 2009 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It's pretty nasty when every attack\n"
# 2010 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "lands without fail.$"
# 2011 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2012 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryDefeat:
# 2013 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You were a cut above me…$"
# 2014 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2015 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryPostBattle:
# 2016 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The path is clear now.\p"
# 2017 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "There are answers tucked all around\n"
# 2018 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "this lab, if you know where to look.$"
# 2019 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2020 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryPostBadge:
# 2021 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you know what we're trying to\n"
# 2022 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "achieve as TRAINERS?\p"
# 2023 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "We're striving to become soul mates\n"
# 2024 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with our POKéMON.$"
# 2025 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2026 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaIntro:
# 2027 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The higher the DEFENSE, the more\n"
# 2028 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "reckless I can be in attack.$"
# 2029 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2030 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaDefeat:
# 2031 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Our defenses weren't enough…$"
# 2032 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2033 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaPostBattle:
# 2034 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Go ahead.\p"
# 2035 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA likes challengers who can\n"
# 2036 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "separate useful facts from noisy\l"
# 2037 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "ones.$"
# 2038 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2039 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaPostBadge:
# 2040 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hi! Have you tried using SURF?$"
# 2041 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2042 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyIntro:
# 2043 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA taught us to battle\n"
# 2044 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with focus and discipline.\p"
# 2045 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "So I'll face you seriously,\n"
# 2046 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "no holding back!$"
# 2047 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2048 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyDefeat:
# 2049 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But… I went all out!$"
# 2050 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2051 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyPostBattle:
# 2052 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That's the last check before\n"
# 2053 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA.\p"
# 2054 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Take a breath, review what you've\n"
# 2055 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "learned, and go show her.$"
# 2056 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2057 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyPostBadge:
# 2058 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Sure, it's fine to make your POKéMON\n"
# 2059 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "stronger.\p"
# 2060 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But what decides the winner?\p"
# 2061 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Why, it's the feelings TRAINERS have\n"
# 2062 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "for their POKéMON.$"
# 2063 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2064 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryQuestion:
# 2065 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Research check! How many different\n"
# 2066 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "POKéMON types are known today?$"
# 2067 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2068 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryCorrectAnswer:
# 2069 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Correct! There are 18 different\n"
# 2070 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "POKéMON types.\p"
# 2071 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You've earned your way through.$"
# 2072 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2073 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryWrongAnswer:
# 2074 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Not quite. The answer is 18 types.\p"
# 2075 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "A good Trainer should know the\n"
# 2076 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "type chart before a serious battle.$"
# 2077 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2078 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeQuestion:
# 2079 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Ignoring abilities and immunities,\n"
# 2080 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "which STEEL dual type resists the\l"
# 2081 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "greatest number of attack types?$"
# 2082 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2083 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeCorrectAnswer:
# 2084 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Correct! ELECTRIC/STEEL resists 11\n"
# 2085 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "different attacking types.\p"
# 2086 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Its POISON immunity is not counted\n"
# 2087 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "as a resistance. Go on through.$"
# 2088 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2089 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeWrongAnswer:
# 2090 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Not quite. ELECTRIC/STEEL has the\n"
# 2091 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "most resistances among those choices:\l"
# 2092 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "11, without counting immunities.$"
# 2093 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2094 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaQuestion:
# 2095 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Ignoring abilities, how many attacking\n"
# 2096 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "types are super effective against\l"
# 2097 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "SHEDINJA's BUG/GHOST typing?$"
# 2098 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2099 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaCorrectAnswer:
# 2100 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Correct! There are five: FIRE, FLYING,\n"
# 2101 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "ROCK, GHOST, and DARK.\p"
# 2102 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "WONDER GUARD was ignored for the quiz.$"
# 2103 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2104 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaWrongAnswer:
# 2105 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Not quite. BUG/GHOST has five type\n"
# 2106 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "weaknesses: FIRE, FLYING, ROCK,\l"
# 2107 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GHOST, and DARK.$"
# 2108 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2109 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeQuestion:
# 2110 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Ignoring abilities, which dual typing\n"
# 2111 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "has the most attack-type immunities?$"
# 2112 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2113 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeCorrectAnswer:
# 2114 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Correct! NORMAL/GHOST has three:\n"
# 2115 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "NORMAL, FIGHTING, and GHOST.\p"
# 2116 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Every other choice has only two.$"
# 2117 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2118 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeWrongAnswer:
# 2119 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Not quite. NORMAL/GHOST has three\n"
# 2120 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "immunities: NORMAL, FIGHTING,\l"
# 2121 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "and GHOST.$"
# 2122 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2123 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyQuestion:
# 2124 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You face a CHANSEY holding EVIOLITE.\n"
# 2125 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Which move would you choose?$"
# 2126 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2127 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyCorrectAnswer:
# 2128 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Yes! PSYSHOCK is the right choice.\p"
# 2129 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Unlike the other special moves listed,\n"
# 2130 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "PSYSHOCK calculates damage using the\l"
# 2131 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "target's physical DEFENSE.\p"
# 2132 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That targets CHANSEY's weaker\n"
# 2133 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "defensive side.$"
# 2134 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2135 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyWrongAnswer:
# 2136 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Not quite. BLIZZARD, FIRE BLAST, and\n"
# 2137 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "THUNDER all calculate damage against\l"
# 2138 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "SP. DEF.\p"
# 2139 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "PSYSHOCK is special, but it uses the\n"
# 2140 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "target's physical DEFENSE instead.$"
# 2141 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2142 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GuardAnswerLater:
# 2143 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Okay. Come back when you're ready\n"
# 2144 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "to give your answer.$"
# 2145 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2146 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DoorAppearsLocked:
# 2147 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This door appears to be locked\n"
# 2148 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "right now…$"
# 2149 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2150 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterSpeedRoom:
# 2151 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“SPEED ROOM,” the sign says.\p"
# 2152 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2153 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2154 "data/maps/PetalburgCity_Gym/scripts.pory"
@ Unused
# 2155 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DoorAppearsLocked2:
# 2156 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This door appears to be locked\n"
# 2157 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "right now…$"
# 2158 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2159 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterConfusionRoom:
# 2160 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“CONFUSION ROOM,” the sign says.\p"
# 2161 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2162 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2163 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterDefenseRoom:
# 2164 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“DEFENSE ROOM,” the sign says.\p"
# 2165 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2166 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2167 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterRecoveryRoom:
# 2168 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“RECOVERY ROOM,” the sign says.\p"
# 2169 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2170 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2171 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterStrengthRoom:
# 2172 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“STRENGTH ROOM,” the sign says.\p"
# 2173 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2174 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2175 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterOHKORoom:
# 2176 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“ONE-HIT KO ROOM,” the sign says.\p"
# 2177 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2178 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2179 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterGymLeadersRoom:
# 2180 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“GYM LEADER'S ROOM\p"
# 2181 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“See for yourself what POKéMON await\n"
# 2182 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "you!” the sign says.\p"
# 2183 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 2184 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2185 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymStatue:
# 2186 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM$"
# 2187 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2188 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymStatueCertified:
# 2189 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM\p"
# 2190 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA'S CERTIFIED TRAINERS:\n"
# 2191 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}$"
# 2192 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2193 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanPreRematch:
# 2194 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}…\n"
# 2195 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I had a feeling that you would come.\p"
# 2196 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I would never refuse to accept\n"
# 2197 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a challenge from you.\p"
# 2198 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You do understand, don't you?\p"
# 2199 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Inside a GYM, it doesn't matter that\n"
# 2200 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we are a student and mentor.\p"
# 2201 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "…No, because we are student and mentor,\n"
# 2202 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we owe it to each other to do the best\l"
# 2203 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we can. Isn't that right, {PLAYER}?$"
# 2204 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2205 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanRematchDefeat:
# 2206 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Uh… Haha…\n"
# 2207 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Maybe that was going too hard…$"
# 2208 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2209 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanPostRematch:
# 2210 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}…\n"
# 2211 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "What is your dream?\p"
# 2212 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "My dream…\n"
# 2213 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hahaha…\l"
# 2214 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It has already come true, actually.$"
# 2215 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2216 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanRematchNeedTwoMons:
# 2217 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}…\n"
# 2218 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I had a feeling that you would come.\p"
# 2219 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I would never refuse to accept\n"
# 2220 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a challenge from you.\p"
# 2221 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You do understand, don't you?\p"
# 2222 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Inside a GYM, it doesn't matter that\n"
# 2223 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we are a parent and child.\p"
# 2224 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hm? Wait a second, {PLAYER}.\p"
# 2225 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you only have one POKéMON that is\n"
# 2226 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "capable of battle?\p"
# 2227 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Sorry, but you'll have to come back\n"
# 2228 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with at least two POKéMON.$"
# 2229 "data/maps/PetalburgCity_Gym/scripts.pory"

# 2230 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_CalendulaGaveEevee:
# 2231 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Oh, before you go...\p"
# 2232 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Since Acacia likes you, I can give\n"
# 2233 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "you something. She isn't the only one\l"
# 2234 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "who likes helping promising students!\p"
# 2235 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Take this little one.\n"
# 2236 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "It's an EEVEE.\p"
# 2237 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "My first partner was one, and I'd\n"
# 2238 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "love for you to start your path with\l"
# 2239 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "a loyal friend too.\p"
# 2240 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Ah! I almost forgot!\n"
# 2241 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Here's an EVERSTONE as well.\p"
# 2242 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "If you give this stone to EEVEE to\n"
# 2243 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "hold, it will prevent it from evolving.\p"
# 2244 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "That way, you can take your time\n"
# 2245 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "deciding which evolution is right for\l"
# 2246 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "your new partner!\p"
# 2247 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Just take the stone away when you're\n"
# 2248 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "ready for EEVEE to evolve.$"
