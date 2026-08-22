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
	goto_if_eq VAR_PETALBURG_GYM_STATE, 6, PetalburgCity_Gym_EventScript_OpenUnlockedDoors
# 11 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_ge VAR_PETALBURG_GYM_STATE, 7, PetalburgCity_Gym_EventScript_UnlockAllDoors
# 12 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 13 "data/maps/PetalburgCity_Gym/scripts.pory"

# 14 "data/maps/PetalburgCity_Gym/scripts.pory"
@ NOTE: Strength and OHKO rooms are misleading. Both are more accurately Critical-Hit
# 15 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenUnlockedDoors::
# 16 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8005, 1
# 17 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenGymEntranceDoors
# 18 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_RANDALL, PetalburgCity_Gym_EventScript_OpenSpeedRoomDoors
# 19 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_MARY, PetalburgCity_Gym_EventScript_OpenAccuracyRoomDoors
# 20 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_PARKER, PetalburgCity_Gym_EventScript_OpenConfusionRoomDoors
# 21 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_ALEXIA, PetalburgCity_Gym_EventScript_OpenDefenseRoomDoors
# 22 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_GEORGE, PetalburgCity_Gym_EventScript_OpenRecoveryRoomDoors
# 23 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_JODY, PetalburgCity_Gym_EventScript_OpenStrengthRoomDoors
# 24 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_defeated TRAINER_BERKE, PetalburgCity_Gym_EventScript_OpenOHKORoomDoors
# 25 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 26 "data/maps/PetalburgCity_Gym/scripts.pory"

# 27 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_UnlockAllDoors::
# 28 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8005, 1
# 29 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenGymEntranceDoors
# 30 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenSpeedRoomDoors
# 31 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenAccuracyRoomDoors
# 32 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenConfusionRoomDoors
# 33 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenDefenseRoomDoors
# 34 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenRecoveryRoomDoors
# 35 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenStrengthRoomDoors
# 36 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenOHKORoomDoors
# 37 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 38 "data/maps/PetalburgCity_Gym/scripts.pory"

# 39 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_OnTransition:
# 40 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_PETALBURG_GYM_STATE, 1, PetalburgCity_Gym_EventScript_MoveWallyToEntrance
# 41 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_lt VAR_PETALBURG_GYM_STATE, 6, PetalburgCity_Gym_EventScript_MoveNormanToEntrance
# 42 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_set FLAG_SYS_GAME_CLEAR, PetalburgCity_Gym_EventScript_CheckNormanForRematch
# 43 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 44 "data/maps/PetalburgCity_Gym/scripts.pory"

# 45 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveWallyToEntrance::
# 46 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_WALLY, 5, 108
# 47 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 48 "data/maps/PetalburgCity_Gym/scripts.pory"

# 49 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MoveNormanToEntrance::
# 50 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_NORMAN, 4, 107
# 51 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 52 "data/maps/PetalburgCity_Gym/scripts.pory"

# 53 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_CheckNormanForRematch::
# 54 "data/maps/PetalburgCity_Gym/scripts.pory"
	setorcopyvar VAR_TRAINER_BATTLE_OPPONENT_A, TRAINER_NORMAN_1
# 55 "data/maps/PetalburgCity_Gym/scripts.pory"
	specialvar VAR_RESULT, IsTrainerReadyForRematch
# 56 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_Gym_EventScript_DontMoveNormanToFront
# 57 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_PETALBURG_GYM_STATE, 8, PetalburgCity_Gym_EventScript_DontMoveNormanToFront
# 58 "data/maps/PetalburgCity_Gym/scripts.pory"
	setobjectxyperm LOCALID_PETALBURG_GYM_NORMAN, 4, 107
# 59 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 60 "data/maps/PetalburgCity_Gym/scripts.pory"

# 61 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_DontMoveNormanToFront::
# 62 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_GYM_STATE, 8
# 63 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 64 "data/maps/PetalburgCity_Gym/scripts.pory"

# 65 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_OnWarp:
# 66 "data/maps/PetalburgCity_Gym/scripts.pory"
	map_script_2 VAR_PETALBURG_GYM_STATE, 1, PetalburgCity_Gym_EventScript_TurnPlayerNorth
# 67 "data/maps/PetalburgCity_Gym/scripts.pory"
	.2byte 0
# 68 "data/maps/PetalburgCity_Gym/scripts.pory"

# 69 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_TurnPlayerNorth::
# 70 "data/maps/PetalburgCity_Gym/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_NORTH
# 71 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 72 "data/maps/PetalburgCity_Gym/scripts.pory"

# 73 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_OnFrame:
# 74 "data/maps/PetalburgCity_Gym/scripts.pory"
	map_script_2 VAR_PETALBURG_GYM_STATE, 1, PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial
# 75 "data/maps/PetalburgCity_Gym/scripts.pory"
	.2byte 0
# 76 "data/maps/PetalburgCity_Gym/scripts.pory"

# 77 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial::
# 78 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 79 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_WALLY_TUTORIAL_RESULT, 1, PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial_LukaWon
# 80 "data/maps/PetalburgCity_Gym/scripts.pory"
	@ --- Jogador VENCEU ---
# 81 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 82 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadSoDidItWorkOut, MSGBOX_DEFAULT
# 83 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 84 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 85 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyThankYouBye, MSGBOX_DEFAULT
# 86 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 87 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial_Shared
# 88 "data/maps/PetalburgCity_Gym/scripts.pory"

# 89 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial_LukaWon::
# 90 "data/maps/PetalburgCity_Gym/scripts.pory"
	@ --- Luka VENCEU, progresso continua igual ---
# 91 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 92 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadSoDidItWorkOut_LukaWon, MSGBOX_DEFAULT
# 93 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 94 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 95 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyThankYouBye_LukaWon, MSGBOX_DEFAULT
# 96 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 97 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_WALLY_TUTORIAL_RESULT, 0
# 98 "data/maps/PetalburgCity_Gym/scripts.pory"

# 99 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ReturnFromWallyTutorial_Shared::
# 100 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 101 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 102 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitGym
# 103 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 104 "data/maps/PetalburgCity_Gym/scripts.pory"
	playse SE_EXIT
# 105 "data/maps/PetalburgCity_Gym/scripts.pory"
	removeobject LOCALID_PETALBURG_GYM_WALLY
# 106 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_WALLY
# 107 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay 30
# 108 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 109 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 110 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 111 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadGoCollectBadges, MSGBOX_DEFAULT
# 112 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 113 "data/maps/PetalburgCity_Gym/scripts.pory"
	giveegg SPECIES_EEVEE
# 114 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_RecievedEgg, MSGBOX_DEFAULT
# 115 "data/maps/PetalburgCity_Gym/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 116 "data/maps/PetalburgCity_Gym/scripts.pory"
	giveitem ITEM_EVERSTONE
# 117 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_Everstone, MSGBOX_DEFAULT
# 118 "data/maps/PetalburgCity_Gym/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 119 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 120 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_CalendulaGaveEevee, MSGBOX_DEFAULT
# 121 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 122 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_GYM_STATE, 2
# 123 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 124 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 125 "data/maps/PetalburgCity_Gym/scripts.pory"

# 126 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RecievedEgg:
# 127 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER} recieved EEVEE egg!$"
# 128 "data/maps/PetalburgCity_Gym/scripts.pory"

# 129 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_Everstone:
# 130 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER} recieved an Everstone!$"	
# 131 "data/maps/PetalburgCity_Gym/scripts.pory"

# 132 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitGym:
# 133 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 134 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 135 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 136 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 137 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 138 "data/maps/PetalburgCity_Gym/scripts.pory"

# 139 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Norman::
# 140 "data/maps/PetalburgCity_Gym/scripts.pory"
    lock
# 141 "data/maps/PetalburgCity_Gym/scripts.pory"
    faceplayer
# 142 "data/maps/PetalburgCity_Gym/scripts.pory"
    getdifficulty VAR_RESULT
# 143 "data/maps/PetalburgCity_Gym/scripts.pory"
    goto_if_eq VAR_RESULT, 1, PetalburgCity_Gym_EventScript_NormanHard
# 144 "data/maps/PetalburgCity_Gym/scripts.pory"
    goto PetalburgCity_Gym_EventScript_NormanCasual
# 145 "data/maps/PetalburgCity_Gym/scripts.pory"

# 146 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanCasual::
# 147 "data/maps/PetalburgCity_Gym/scripts.pory"
    // Modo Casual - 
# 148 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_PETALBURG_GYM_STATE
# 149 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 2, PetalburgCity_Gym_EventScript_NormanNoBadges
# 150 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 3, PetalburgCity_Gym_EventScript_NormanOneBadge
# 151 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 4, PetalburgCity_Gym_EventScript_NormanTwoBadges
# 152 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 5, PetalburgCity_Gym_EventScript_NormanThreeBadges
# 153 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 6, PetalburgCity_Gym_EventScript_NormanBattleCasual
# 154 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 7, PetalburgCity_Gym_EventScript_NormanPostBattle
# 155 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 8, PetalburgCity_Gym_EventScript_NormanRematch
# 156 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 157 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_DadYoureHereWithYourPokemon, MSGBOX_DEFAULT
# 158 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 159 "data/maps/PetalburgCity_Gym/scripts.pory"
    closemessage
# 160 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_FACING
# 161 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_SOUTH, PetalburgCity_Gym_EventScript_BeginWallyTutorialSouth
# 162 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_NORTH, PetalburgCity_Gym_EventScript_BeginWallyTutorialNorth
# 163 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_WEST, PetalburgCity_Gym_EventScript_BeginWallyTutorialWest
# 164 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_EAST, PetalburgCity_Gym_EventScript_BeginWallyTutorialEast
# 165 "data/maps/PetalburgCity_Gym/scripts.pory"
    end
# 166 "data/maps/PetalburgCity_Gym/scripts.pory"

# 167 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanHard::
# 168 "data/maps/PetalburgCity_Gym/scripts.pory"
    // Modo Hard
# 169 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_PETALBURG_GYM_STATE
# 170 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 2, PetalburgCity_Gym_EventScript_NormanNoBadges
# 171 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 3, PetalburgCity_Gym_EventScript_NormanOneBadge
# 172 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 4, PetalburgCity_Gym_EventScript_NormanTwoBadges
# 173 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 5, PetalburgCity_Gym_EventScript_NormanThreeBadges
# 174 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 6, PetalburgCity_Gym_EventScript_NormanBattleHard
# 175 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 7, PetalburgCity_Gym_EventScript_NormanPostBattle
# 176 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 8, PetalburgCity_Gym_EventScript_NormanRematch
# 177 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 178 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_DadYoureHereWithYourPokemon, MSGBOX_DEFAULT
# 179 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 180 "data/maps/PetalburgCity_Gym/scripts.pory"
    closemessage
# 181 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_FACING
# 182 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_SOUTH, PetalburgCity_Gym_EventScript_BeginWallyTutorialSouth
# 183 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_NORTH, PetalburgCity_Gym_EventScript_BeginWallyTutorialNorth
# 184 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_WEST, PetalburgCity_Gym_EventScript_BeginWallyTutorialWest
# 185 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_EAST, PetalburgCity_Gym_EventScript_BeginWallyTutorialEast
# 186 "data/maps/PetalburgCity_Gym/scripts.pory"
    end
# 187 "data/maps/PetalburgCity_Gym/scripts.pory"

# 188 "data/maps/PetalburgCity_Gym/scripts.pory"
// Modo Casual - Batalha
# 189 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanBattleCasual::
# 190 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 191 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_NormanIntro, MSGBOX_DEFAULT
# 192 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 193 "data/maps/PetalburgCity_Gym/scripts.pory"
    trainerbattle_no_intro TRAINER_CALENDULA_CASUAL, PetalburgCity_Gym_Text_NormanDefeat  // Precisa criar TRAINER_NORMAN_CASUAL
# 194 "data/maps/PetalburgCity_Gym/scripts.pory"
    goto PetalburgCity_Gym_EventScript_NormanAfterBattle
# 195 "data/maps/PetalburgCity_Gym/scripts.pory"

# 196 "data/maps/PetalburgCity_Gym/scripts.pory"
// Modo Hard - Batalha
# 197 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanBattleHard::
# 198 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 199 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_NormanIntro, MSGBOX_DEFAULT
# 200 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 201 "data/maps/PetalburgCity_Gym/scripts.pory"
    trainerbattle_no_intro TRAINER_NORMAN_1, PetalburgCity_Gym_Text_NormanDefeat
# 202 "data/maps/PetalburgCity_Gym/scripts.pory"
    // Fall through para AfterBattle
# 203 "data/maps/PetalburgCity_Gym/scripts.pory"

# 204 "data/maps/PetalburgCity_Gym/scripts.pory"
// Pós-batalha 
# 205 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAfterBattle::
# 206 "data/maps/PetalburgCity_Gym/scripts.pory"
    message PetalburgCity_Gym_Text_ReceivedBalanceBadge
# 207 "data/maps/PetalburgCity_Gym/scripts.pory"
    waitmessage
# 208 "data/maps/PetalburgCity_Gym/scripts.pory"
    call Common_EventScript_PlayGymBadgeFanfare
# 209 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 210 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_ExplainBalanceBadgeTakeThis, MSGBOX_DEFAULT
# 211 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 212 "data/maps/PetalburgCity_Gym/scripts.pory"
    setflag FLAG_DEFEATED_PETALBURG_GYM
# 213 "data/maps/PetalburgCity_Gym/scripts.pory"
    setvar VAR_PETALBURG_GYM_STATE, 7
# 214 "data/maps/PetalburgCity_Gym/scripts.pory"
    setflag FLAG_BADGE05_GET
# 215 "data/maps/PetalburgCity_Gym/scripts.pory"
    special ResetHealLocationFromDewford
# 216 "data/maps/PetalburgCity_Gym/scripts.pory"
    call EventScript_HideMrBriney
# 217 "data/maps/PetalburgCity_Gym/scripts.pory"
    setflag FLAG_HIDE_MAUVILLE_GYM_WATTSON
# 218 "data/maps/PetalburgCity_Gym/scripts.pory"
    clearflag FLAG_HIDE_MAUVILLE_CITY_WATTSON
# 219 "data/maps/PetalburgCity_Gym/scripts.pory"
    setvar VAR_0x8008, 5
# 220 "data/maps/PetalburgCity_Gym/scripts.pory"
    call Common_EventScript_SetGymTrainers
# 221 "data/maps/PetalburgCity_Gym/scripts.pory"
    clearflag FLAG_HIDE_DEWFORD_HALL_SLUDGE_BOMB_MAN
# 222 "data/maps/PetalburgCity_Gym/scripts.pory"
    call PetalburgCity_Gym_EventScript_UnlockAllDoors
# 223 "data/maps/PetalburgCity_Gym/scripts.pory"
    special DrawWholeMapView
# 224 "data/maps/PetalburgCity_Gym/scripts.pory"
    call PetalburgCity_Gym_EventScript_GiveFacade
# 225 "data/maps/PetalburgCity_Gym/scripts.pory"
    delay 30
# 226 "data/maps/PetalburgCity_Gym/scripts.pory"
    createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 227 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_DadHappyAndSad, MSGBOX_DEFAULT
# 228 "data/maps/PetalburgCity_Gym/scripts.pory"
    removefieldmugshot
# 229 "data/maps/PetalburgCity_Gym/scripts.pory"
    closemessage
# 230 "data/maps/PetalburgCity_Gym/scripts.pory"
    delay 40
# 231 "data/maps/PetalburgCity_Gym/scripts.pory"
    playse SE_DOOR
# 232 "data/maps/PetalburgCity_Gym/scripts.pory"
    delay 10
# 233 "data/maps/PetalburgCity_Gym/scripts.pory"
    addobject LOCALID_PETALBURG_GYM_WALLYS_DAD
# 234 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_FACING
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
PetalburgCity_Gym_EventScript_WallysDadArrives::
# 539 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadEnterGym
# 540 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 541 "data/maps/PetalburgCity_Gym/scripts.pory"
	playse SE_PIN
# 542 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_ExclamationMark
# 543 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 544 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_Delay48
# 545 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 546 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay 10
# 547 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_WallysDadApproachPlayerNorth
# 548 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_WallysDadApproachPlayerEast
# 549 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_WallysDadApproachPlayerWest
# 550 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_PleaseComeWithMe, MSGBOX_DEFAULT
# 551 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_LetMeBorrowPlayer, MSGBOX_DEFAULT
# 552 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 553 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_LukasGrandparentsHaveSomethingToSay, MSGBOX_DEFAULT
# 554 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 555 "data/maps/PetalburgCity_Gym/scripts.pory"
	removeobject LOCALID_PETALBURG_GYM_WALLYS_DAD
# 556 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_CITY_STATE, 4
# 557 "data/maps/PetalburgCity_Gym/scripts.pory"
	warp MAP_PETALBURG_CITY_WALLYS_HOUSE, 2, 4
# 558 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 559 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 560 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 561 "data/maps/PetalburgCity_Gym/scripts.pory"

# 562 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadFaceNormanNorth::
# 563 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_WalkInPlaceFasterUp
# 564 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 565 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 566 "data/maps/PetalburgCity_Gym/scripts.pory"

# 567 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadFaceNormanEast::
# 568 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_WalkInPlaceFasterRight
# 569 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 570 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 571 "data/maps/PetalburgCity_Gym/scripts.pory"

# 572 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadFaceNormanWest::
# 573 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_WalkInPlaceFasterLeft
# 574 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 575 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 576 "data/maps/PetalburgCity_Gym/scripts.pory"

# 577 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerNorth::
# 578 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerNorth
# 579 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 580 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 581 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterLeft
# 582 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 583 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 584 "data/maps/PetalburgCity_Gym/scripts.pory"

# 585 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerEast::
# 586 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerEast
# 587 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 588 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 589 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 590 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 591 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 592 "data/maps/PetalburgCity_Gym/scripts.pory"

# 593 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerWest::
# 594 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerWest
# 595 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 596 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 597 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 598 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 599 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 600 "data/maps/PetalburgCity_Gym/scripts.pory"

# 601 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallysDadNorth::
# 602 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadExitNorth
# 603 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 604 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallysDadNorth
# 605 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 606 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 607 "data/maps/PetalburgCity_Gym/scripts.pory"

# 608 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallysDadEast::
# 609 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadExitEast
# 610 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallysDadEast
# 611 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 612 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 613 "data/maps/PetalburgCity_Gym/scripts.pory"

# 614 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallysDadWest::
# 615 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadExitWest
# 616 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallysDadWest
# 617 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 618 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 619 "data/maps/PetalburgCity_Gym/scripts.pory"

# 620 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadExitNorth:
# 621 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 622 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 623 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 624 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 625 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 626 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 627 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 628 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 629 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 630 "data/maps/PetalburgCity_Gym/scripts.pory"
	set_invisible
# 631 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 632 "data/maps/PetalburgCity_Gym/scripts.pory"

# 633 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadExitEast:
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
PetalburgCity_Gym_Movement_WallysDadExitWest:
# 647 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 648 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 649 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 650 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 651 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 652 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 653 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 654 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 655 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 656 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 657 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 658 "data/maps/PetalburgCity_Gym/scripts.pory"
	set_invisible
# 659 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 660 "data/maps/PetalburgCity_Gym/scripts.pory"

# 661 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallysDadNorth:
# 662 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 663 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 664 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 665 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 666 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 667 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 668 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 669 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 670 "data/maps/PetalburgCity_Gym/scripts.pory"

# 671 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallysDadEast:
# 672 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 673 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 674 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 675 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 676 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 677 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 678 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 679 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 680 "data/maps/PetalburgCity_Gym/scripts.pory"

# 681 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallysDadWest:
# 682 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 683 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 684 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 685 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 686 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 687 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 688 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 689 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 690 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 691 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 692 "data/maps/PetalburgCity_Gym/scripts.pory"

# 693 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadEnterGym:
# 694 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 695 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 696 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_right
# 697 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 698 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_left
# 699 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 700 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 701 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 702 "data/maps/PetalburgCity_Gym/scripts.pory"

# 703 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadApproachPlayerNorth:
# 704 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 705 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 706 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 707 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 708 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 709 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_right
# 710 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 711 "data/maps/PetalburgCity_Gym/scripts.pory"

# 712 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadApproachPlayerEast:
# 713 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 714 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 715 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 716 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 717 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 718 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 719 "data/maps/PetalburgCity_Gym/scripts.pory"

# 720 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadApproachPlayerWest:
# 721 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 722 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 723 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 724 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 725 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 726 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 727 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 728 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 729 "data/maps/PetalburgCity_Gym/scripts.pory"

# 730 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_Unused:
# 731 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 732 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 733 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 734 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 735 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 736 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 737 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 738 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_down
# 739 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 740 "data/maps/PetalburgCity_Gym/scripts.pory"

# 741 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyArriveNorth:
# 742 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 743 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 744 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 745 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 746 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 747 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 748 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 749 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 750 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_left
# 751 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 752 "data/maps/PetalburgCity_Gym/scripts.pory"

# 753 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyArrive:
# 754 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 755 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 756 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 757 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 758 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 759 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 760 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 761 "data/maps/PetalburgCity_Gym/scripts.pory"

# 762 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitNorth:
# 763 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 764 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 765 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 766 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 767 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 768 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 769 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 770 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 771 "data/maps/PetalburgCity_Gym/scripts.pory"

# 772 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitEast:
# 773 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 774 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 775 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 776 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 777 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 778 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 779 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 780 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 781 "data/maps/PetalburgCity_Gym/scripts.pory"

# 782 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitSouthWest:
# 783 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 784 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 785 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 786 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 787 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 788 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 789 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 790 "data/maps/PetalburgCity_Gym/scripts.pory"

# 791 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallyNorth:
# 792 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 793 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 794 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 795 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 796 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 797 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 798 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 799 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 800 "data/maps/PetalburgCity_Gym/scripts.pory"

# 801 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallySouth:
# 802 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 803 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 804 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 805 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 806 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 807 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 808 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 809 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 810 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 811 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 812 "data/maps/PetalburgCity_Gym/scripts.pory"

# 813 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallyWest:
# 814 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 815 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 816 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 817 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 818 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 819 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 820 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 821 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 822 "data/maps/PetalburgCity_Gym/scripts.pory"

# 823 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallyEast:
# 824 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_down
# 825 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 826 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 827 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 828 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 829 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 830 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 831 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 832 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 833 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 834 "data/maps/PetalburgCity_Gym/scripts.pory"

# 835 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NoAmountOfTrainingIsEnough::
# 836 "data/maps/PetalburgCity_Gym/scripts.pory"
	createfieldmugshot MUGSHOT_CALENDULA, EMOTE_NORMAL
# 837 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadNoAmountOfTrainingIsEnough, MSGBOX_DEFAULT
# 838 "data/maps/PetalburgCity_Gym/scripts.pory"
	removefieldmugshot
# 839 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 840 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 841 "data/maps/PetalburgCity_Gym/scripts.pory"

# 842 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SpeedRoomDoor::
# 843 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 844 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_lt VAR_PETALBURG_GYM_STATE, 6, PetalburgCity_Gym_EventScript_DoorLocked
# 845 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 846 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 85
# 847 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterSpeedRoom, MSGBOX_YESNO
# 848 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 849 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 850 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 851 "data/maps/PetalburgCity_Gym/scripts.pory"

# 852 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_EnterRoom::
# 853 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 854 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay 30
# 855 "data/maps/PetalburgCity_Gym/scripts.pory"
	warpdoor MAP_PETALBURG_CITY_GYM, VAR_0x8008, VAR_0x8009
# 856 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 857 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 858 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 859 "data/maps/PetalburgCity_Gym/scripts.pory"

# 860 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_DontEnterRoom::
# 861 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 862 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 863 "data/maps/PetalburgCity_Gym/scripts.pory"

# 864 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_DoorLocked::
# 865 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DoorAppearsLocked, MSGBOX_DEFAULT
# 866 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 867 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 868 "data/maps/PetalburgCity_Gym/scripts.pory"

# 869 "data/maps/PetalburgCity_Gym/scripts.pory"
@ VAR_0x8008 and VAR_0x8009 below are the x and y coordinates of the warp
# 870 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_AccuracyRoomDoor::
# 871 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 872 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_lt VAR_PETALBURG_GYM_STATE, 6, PetalburgCity_Gym_EventScript_DoorLocked
# 873 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 874 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 98
# 875 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterAccuracyRoom, MSGBOX_YESNO
# 876 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 877 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 878 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 879 "data/maps/PetalburgCity_Gym/scripts.pory"

# 880 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ConfusionRoomDoor::
# 881 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 882 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_RANDALL, PetalburgCity_Gym_EventScript_DoorLocked
# 883 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 884 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 46
# 885 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterConfusionRoom, MSGBOX_YESNO
# 886 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 887 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 888 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 889 "data/maps/PetalburgCity_Gym/scripts.pory"

# 890 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftDefenseRoomDoor::
# 891 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 892 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_RANDALL, PetalburgCity_Gym_EventScript_DoorLocked
# 893 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 894 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 59
# 895 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterDefenseRoom, MSGBOX_YESNO
# 896 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 897 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 898 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 899 "data/maps/PetalburgCity_Gym/scripts.pory"

# 900 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightDefenseRoomDoor::
# 901 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 902 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_MARY, PetalburgCity_Gym_EventScript_DoorLocked
# 903 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 904 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 59
# 905 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterDefenseRoom, MSGBOX_YESNO
# 906 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 907 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 908 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 909 "data/maps/PetalburgCity_Gym/scripts.pory"

# 910 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RecoveryRoomDoor::
# 911 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 912 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_MARY, PetalburgCity_Gym_EventScript_DoorLocked
# 913 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 914 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 72
# 915 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterRecoveryRoom, MSGBOX_YESNO
# 916 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 917 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 918 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 919 "data/maps/PetalburgCity_Gym/scripts.pory"

# 920 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftStrengthRoomDoor::
# 921 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 922 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_PARKER, PetalburgCity_Gym_EventScript_DoorLocked
# 923 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 924 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 20
# 925 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterStrengthRoom, MSGBOX_YESNO
# 926 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 927 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 928 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 929 "data/maps/PetalburgCity_Gym/scripts.pory"

# 930 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightStrengthRoomDoor::
# 931 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 932 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_ALEXIA, PetalburgCity_Gym_EventScript_DoorLocked
# 933 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 934 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 20
# 935 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterStrengthRoom, MSGBOX_YESNO
# 936 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 937 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 938 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 939 "data/maps/PetalburgCity_Gym/scripts.pory"

# 940 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftOHKORoomDoor::
# 941 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 942 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_ALEXIA, PetalburgCity_Gym_EventScript_DoorLocked
# 943 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 944 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 33
# 945 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterOHKORoom, MSGBOX_YESNO
# 946 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 947 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 948 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 949 "data/maps/PetalburgCity_Gym/scripts.pory"

# 950 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightOHKORoomDoor::
# 951 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 952 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_GEORGE, PetalburgCity_Gym_EventScript_DoorLocked
# 953 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 954 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 33
# 955 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterOHKORoom, MSGBOX_YESNO
# 956 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 957 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 958 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 959 "data/maps/PetalburgCity_Gym/scripts.pory"

# 960 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftGymLeadersRoomDoor::
# 961 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 962 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_JODY, PetalburgCity_Gym_EventScript_DoorLocked
# 963 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 964 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 7
# 965 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterGymLeadersRoom, MSGBOX_YESNO
# 966 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 967 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 968 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 969 "data/maps/PetalburgCity_Gym/scripts.pory"

# 970 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightGymLeadersRoomDoor::
# 971 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 972 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_BERKE, PetalburgCity_Gym_EventScript_DoorLocked
# 973 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 974 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 7
# 975 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterGymLeadersRoom, MSGBOX_YESNO
# 976 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 977 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 978 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 979 "data/maps/PetalburgCity_Gym/scripts.pory"

# 980 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Randall::
# 981 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_RANDALL, PetalburgCity_Gym_Text_RandallIntro, PetalburgCity_Gym_Text_RandallDefeat, PetalburgCity_Gym_EventScript_SlideOpenSpeedRoomDoors
# 982 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_RandallPostBadge
# 983 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_RandallPostBattle, MSGBOX_AUTOCLOSE
# 984 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 985 "data/maps/PetalburgCity_Gym/scripts.pory"

# 986 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenSpeedRoomDoors::
# 987 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8005, 0
# 988 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenSpeedRoomDoors
# 989 "data/maps/PetalburgCity_Gym/scripts.pory"
	special DrawWholeMapView
# 990 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 991 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 992 "data/maps/PetalburgCity_Gym/scripts.pory"

# 993 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RandallPostBadge::
# 994 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_RandallPostBadge, MSGBOX_NPC
# 995 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 996 "data/maps/PetalburgCity_Gym/scripts.pory"

# 997 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Parker::
# 998 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_PARKER, PetalburgCity_Gym_Text_ParkerIntro, PetalburgCity_Gym_Text_ParkerDefeat, PetalburgCity_Gym_EventScript_SlideOpenConfusionRoomDoors
# 999 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_ParkerPostBadge
# 1000 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerPostBattle, MSGBOX_AUTOCLOSE
# 1001 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1002 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1003 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenConfusionRoomDoors::
# 1004 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8005, 0
# 1005 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenConfusionRoomDoors
# 1006 "data/maps/PetalburgCity_Gym/scripts.pory"
	special DrawWholeMapView
# 1007 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1008 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1009 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1010 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ParkerPostBadge::
# 1011 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerPostBadge, MSGBOX_NPC
# 1012 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1013 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1014 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_George::
# 1015 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_GEORGE, PetalburgCity_Gym_Text_GeorgeIntro, PetalburgCity_Gym_Text_GeorgeDefeat, PetalburgCity_Gym_EventScript_SlideOpenRecoveryRoomDoors
# 1016 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_GeorgePostBadge
# 1017 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GeorgePostBattle, MSGBOX_AUTOCLOSE
# 1018 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1019 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1020 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenRecoveryRoomDoors::
# 1021 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8005, 0
# 1022 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenRecoveryRoomDoors
# 1023 "data/maps/PetalburgCity_Gym/scripts.pory"
	special DrawWholeMapView
# 1024 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1025 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1026 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1027 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GeorgePostBadge::
# 1028 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GeorgePostBadge, MSGBOX_NPC
# 1029 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1030 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1031 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Berke::
# 1032 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_BERKE, PetalburgCity_Gym_Text_BerkeIntro, PetalburgCity_Gym_Text_BerkeDefeat, PetalburgCity_Gym_EventScript_SlideOpenOHKORoomDoors
# 1033 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_BerkePostBadge
# 1034 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_BerkePostBattle, MSGBOX_AUTOCLOSE
# 1035 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1036 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1037 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenOHKORoomDoors::
# 1038 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8005, 0
# 1039 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenOHKORoomDoors
# 1040 "data/maps/PetalburgCity_Gym/scripts.pory"
	special DrawWholeMapView
# 1041 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1042 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1043 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1044 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BerkePostBadge::
# 1045 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_BerkePostBadge, MSGBOX_NPC
# 1046 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1047 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1048 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Mary::
# 1049 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_MARY, PetalburgCity_Gym_Text_MaryIntro, PetalburgCity_Gym_Text_MaryDefeat, PetalburgCity_Gym_EventScript_SlideOpenAccuracyRoomDoors
# 1050 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_MaryPostBadge
# 1051 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_MaryPostBattle, MSGBOX_AUTOCLOSE
# 1052 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1053 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1054 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenAccuracyRoomDoors::
# 1055 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8005, 0
# 1056 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenAccuracyRoomDoors
# 1057 "data/maps/PetalburgCity_Gym/scripts.pory"
	special DrawWholeMapView
# 1058 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1059 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1060 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1061 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MaryPostBadge::
# 1062 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_MaryPostBadge, MSGBOX_NPC
# 1063 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1064 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1065 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Alexia::
# 1066 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_ALEXIA, PetalburgCity_Gym_Text_AlexiaIntro, PetalburgCity_Gym_Text_AlexiaDefeat, PetalburgCity_Gym_EventScript_SlideOpenDefenseRoomDoors
# 1067 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_AlexiaPostBadge
# 1068 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_AlexiaPostBattle, MSGBOX_AUTOCLOSE
# 1069 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1070 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1071 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenDefenseRoomDoors::
# 1072 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8005, 0
# 1073 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenDefenseRoomDoors
# 1074 "data/maps/PetalburgCity_Gym/scripts.pory"
	special DrawWholeMapView
# 1075 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1076 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1077 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1078 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_AlexiaPostBadge::
# 1079 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_AlexiaPostBadge, MSGBOX_NPC
# 1080 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1081 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1082 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Jody::
# 1083 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_JODY, PetalburgCity_Gym_Text_JodyIntro, PetalburgCity_Gym_Text_JodyDefeat, PetalburgCity_Gym_EventScript_SlideOpenStrengthRoomDoors
# 1084 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_JodyPostBadge
# 1085 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_JodyPostBattle, MSGBOX_AUTOCLOSE
# 1086 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1087 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1088 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenStrengthRoomDoors::
# 1089 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8005, 0
# 1090 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenStrengthRoomDoors
# 1091 "data/maps/PetalburgCity_Gym/scripts.pory"
	special DrawWholeMapView
# 1092 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1093 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1094 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1095 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_JodyPostBadge::
# 1096 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_JodyPostBadge, MSGBOX_NPC
# 1097 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1098 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1099 "data/maps/PetalburgCity_Gym/scripts.pory"
@ VAR_0x8004 below is the room number
# 1100 "data/maps/PetalburgCity_Gym/scripts.pory"
@ VAR_0x8005 below is 0 when the door should be slid open and 1 when it should be unlocked immediately
# 1101 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenGymEntranceDoors::
# 1102 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 1
# 1103 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1104 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1105 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetEntranceRoomDoorMetatiles
# 1106 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1107 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1108 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenSpeedRoomDoors::
# 1109 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 2
# 1110 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1111 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1112 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetSpeedRoomDoorMetatiles
# 1113 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1114 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1115 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenAccuracyRoomDoors::
# 1116 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 3
# 1117 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1118 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1119 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetAccuracyRoomDoorMetatiles
# 1120 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1121 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1122 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenConfusionRoomDoors::
# 1123 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 4
# 1124 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1125 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1126 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetConfusionRoomDoorMetatiles
# 1127 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1128 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1129 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenDefenseRoomDoors::
# 1130 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 5
# 1131 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1132 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1133 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetDefenseRoomDoorMetatiles
# 1134 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1135 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1136 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenRecoveryRoomDoors::
# 1137 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 6
# 1138 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1139 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1140 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetRecoveryRoomDoorMetatiles
# 1141 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1142 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1143 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenStrengthRoomDoors::
# 1144 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 7
# 1145 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1146 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1147 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetStrengthRoomDoorMetatiles
# 1148 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1149 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1150 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenOHKORoomDoors::
# 1151 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 8
# 1152 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1153 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1154 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetOHKORoomDoorMetatiles
# 1155 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1156 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1157 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetEntranceRoomDoorMetatiles::
# 1158 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 85, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1159 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 85, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1160 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 98, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1161 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 98, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1162 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1163 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1164 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetSpeedRoomDoorMetatiles::
# 1165 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 46, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1166 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 46, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1167 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 59, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1168 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 59, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1169 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1170 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1171 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetAccuracyRoomDoorMetatiles::
# 1172 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 59, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1173 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 59, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1174 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 72, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1175 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 72, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1176 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1177 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1178 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetConfusionRoomDoorMetatiles::
# 1179 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 20, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1180 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 20, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1181 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1182 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1183 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetDefenseRoomDoorMetatiles::
# 1184 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 20, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1185 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 20, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1186 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 33, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1187 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 33, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1188 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1189 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1190 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetRecoveryRoomDoorMetatiles::
# 1191 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 33, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1192 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 33, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1193 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1194 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1195 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetStrengthRoomDoorMetatiles::
# 1196 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 7, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1197 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 7, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1198 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1199 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1200 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetOHKORoomDoorMetatiles::
# 1201 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 7, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1202 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 7, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1203 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1204 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1205 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenRoomDoors::
# 1206 "data/maps/PetalburgCity_Gym/scripts.pory"
	special PetalburgGymSlideOpenRoomDoors
# 1207 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1208 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1209 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1210 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_UnlockRoomDoors::
# 1211 "data/maps/PetalburgCity_Gym/scripts.pory"
	special PetalburgGymUnlockRoomDoors
# 1212 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1213 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1214 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymGuide::
# 1215 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1216 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1217 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_GymGuidePostVictory
# 1218 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 1219 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1220 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1221 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1222 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymGuidePostVictory::
# 1223 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 1224 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1225 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1226 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1227 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftGymStatue::
# 1228 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 1229 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE05_GET, PetalburgCity_Gym_EventScript_GymStatueCertified
# 1230 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_GymStatue
# 1231 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1232 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1233 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightGymStatue::
# 1234 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 1235 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE05_GET, PetalburgCity_Gym_EventScript_GymStatueCertified
# 1236 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_GymStatue
# 1237 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1238 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1239 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymStatueCertified::
# 1240 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 1241 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 1242 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1243 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1244 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymStatue::
# 1245 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 1246 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 1247 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1248 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1249 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadYoureHereWithYourPokemon:
# 1250 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Oh?\n"
# 1251 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You must be {PLAYER}, right?\p"
# 1252 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "ACACIA said you would be arriving.\p"
# 1253 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "We met long ago, studying to become\n"
# 1254 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "POKéMON professors together.\p"
# 1255 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I chose the path of a full-time\n"
# 1256 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GYM LEADER, but ACACIA still guides\l"
# 1257 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "and inspires me.\p"
# 1258 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "And you…\n"
# 1259 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I sense something truly special.\p"
# 1260 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "If ACACIA believes in your potential,\n"
# 1261 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "then so do I.\p"
# 1262 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Welcome to the PETALBURG GYM,\n"
# 1263 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}. Your adventure as a TRAINER\l"
# 1264 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "truly begins here.$"
# 1265 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1266 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyIdLikeAPokemon:
# 1267 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Perfect timing!$"
# 1268 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1269 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadOhYoureWallyRight:
# 1270 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: {PLAYER}, meet LUKA.\n"
# 1271 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "He's my neighbor and a bold,\l"
# 1272 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "curious prodigy.\p"
# 1273 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Ever since he was a child,\n"
# 1274 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "he's had a special bond with POKéMON.\p"
# 1275 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "He's always chasing strange\n"
# 1276 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "mysteries in HOENN, like that\l"
# 1277 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "recent comet.$"
# 1278 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1279 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyIveNeverCaughtAPokemon:
# 1280 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: I'm heading to VERDANTURF soon.\p"
# 1281 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I need to explore HOENN and\n"
# 1282 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "investigate the strange comet\l"
# 1283 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "that passed over recently.\p"
# 1284 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "But before that, I want a real\n"
# 1285 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "battle, one worthy of a proper\l"
# 1286 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "sendoff.$"
# 1287 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1288 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadHmISee:
# 1289 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Hm… I see.\n"
# 1290 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You both arrived at the perfect time.$"
# 1291 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1292 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadPlayerGoWithWally:
# 1293 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, ACACIA has an eye\n"
# 1294 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "for talent… and so do I.\p"
# 1295 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA is sharp and fearless.\p"
# 1296 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Go to ROUTE 102 and battle him.\p"
# 1297 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Then come tell me the result.$"
# 1298 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1299 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_IllLoanYouMyZigzagoon:
# 1300 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Calendula: Luka, remember your training!$"
# 1301 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1302 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyThankYouAndDadGivesPokeBall:
# 1303 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: Don’t worry, CALENDULA.\n"
# 1304 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I’ve got everything I need.$"
# 1305 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1306 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyOhWowThankYou:
# 1307 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: I'll prove you were right to\n"
# 1308 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "believe in me.$"
# 1309 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1310 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WouldYouReallyComeWithMe:
# 1311 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: {PLAYER}, ready?\n"
# 1312 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Let's head to ROUTE 102 and\l"
# 1313 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "have a battle to remember!$"
# 1314 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1315 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadSoDidItWorkOut_LukaWon:
# 1316 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: So… LUKA came out on top?\n"
# 1317 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "That's fine.\p"
# 1318 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, a loss is not the end.\n"
# 1319 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "What matters is that you battled\l"
# 1320 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "with your full heart.\p"
# 1321 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Your bond with your POKéMON\n"
# 1322 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "was clear to see, even in defeat.$"
# 1323 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1324 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyThankYouBye_LukaWon:
# 1325 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: It was a real battle, {PLAYER}.\n"
# 1326 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I pushed hard, and so did you.\p"
# 1327 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I hope this makes you want to\n"
# 1328 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "grow even stronger.\p"
# 1329 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Keep chasing your goal.\n"
# 1330 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I'll be watching!\p"
# 1331 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Gotta go! That strange comet\n"
# 1332 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "in HOENN is on my mind.\p"
# 1333 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "See you soon, {PLAYER}!$"
# 1334 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1335 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadSoDidItWorkOut:
# 1336 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Excellent work!\n"
# 1337 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You both did great.\p"
# 1338 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, I am confident you'll be\n"
# 1339 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "safe in the woods if your bond with\l"
# 1340 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "your POKéMON is this strong.$"
# 1341 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1342 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyThankYouBye:
# 1343 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: That was a great battle!\n"
# 1344 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You pushed me, {PLAYER}.\p"
# 1345 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I lost, but I held back a bit.\n"
# 1346 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Next time, I’ll give my full strength.\p"
# 1347 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Gotta go! That strange comet\n"
# 1348 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "in HOENN is on my mind.\p"
# 1349 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I need to learn more.\n"
# 1350 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "See you soon, {PLAYER}!$"
# 1351 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1352 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadGoCollectBadges:
# 1353 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Now…\n"
# 1354 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, to become a real TRAINER,\l"
# 1355 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "listen carefully.\p"
# 1356 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "First, go to RUSTBORO CITY.\n"
# 1357 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Challenge TERRA, the ROCK-type\l"
# 1358 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "GYM LEADER.\p"
# 1359 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Defeat her, then continue across HOENN\n"
# 1360 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "and earn badges from other GYM LEADERS.\p"
# 1361 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "But be cautious.\n"
# 1362 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Strange events have been happening,\l"
# 1363 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "and that mysterious comet passed\l"
# 1364 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "recently...\p"
# 1365 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I have a bad feeling about it.\n"
# 1366 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Stay alert, {PLAYER}, and come back\l"
# 1367 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "stronger for our GYM battle.$"
# 1368 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1369 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanGoToRustboro:
# 1370 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Hm? Aren't you heading to\n"
# 1371 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "RUSTBORO CITY's POKéMON GYM?\p"
# 1372 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You still have much to learn.\p"
# 1373 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Keep exploring, {PLAYER}.\n"
# 1374 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I want to help you grow.\p"
# 1375 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Return after you earn 4 BADGES,\n"
# 1376 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "then challenge me!$"
# 1377 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1378 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1379 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanGoToDewford:
# 1380 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: I see… So, you've beaten\n"
# 1381 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the GYM LEADER in RUSTBORO CITY.\p"
# 1382 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But there are many more TRAINERS\n"
# 1383 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "who are stronger than you, {PLAYER}.\p"
# 1384 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Across the sea in DEWFORD TOWN is a\n"
# 1385 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GYM LEADER named RENTON.\p"
# 1386 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You should go challenge him.$"
# 1387 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1388 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_YouHaveGottenStronger:
# 1389 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: Hm… {PLAYER}, you have gotten\n"
# 1390 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "stronger.\p"
# 1391 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I can tell by the number of BADGES\n"
# 1392 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "that you've earned.$"
# 1393 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1394 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanIntro:
# 1395 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: Hm…\n"
# 1396 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "So, you did get four GYM BADGES.\p"
# 1397 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Fine, as I promised, we will have\n"
# 1398 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a POKéMON battle.\p"
# 1399 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}…\p"
# 1400 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'm so happy that I can have\n"
# 1401 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a real battle with my own student.\p"
# 1402 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But, a battle is a battle!\p"
# 1403 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I will do everything in my power as\n"
# 1404 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a GYM LEADER to win.\p"
# 1405 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}, you'd better give it your\n"
# 1406 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "best shot, too!$"
# 1407 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1408 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanDefeat:
# 1409 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "…\p"
# 1410 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I… I can't…\p"
# 1411 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I can't believe it. {PLAYER}…\p"
# 1412 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I lost to {PLAYER}?\p"
# 1413 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But, rules are rules!\n"
# 1414 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Here, take this.$"
# 1415 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1416 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ReceivedBalanceBadge:
# 1417 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER} received the BALANCE BADGE\n"
# 1418 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "from CALENDULA!$"
# 1419 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1420 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ExplainBalanceBadgeTakeThis:
# 1421 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: With that BADGE, the DEFENSE\n"
# 1422 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "of all your POKéMON will increase.\p"
# 1423 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "POKéMON that know the HM move SURF\n"
# 1424 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "will be able to travel over water.\p"
# 1425 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This is my gift to you. {PLAYER}, I'm\n"
# 1426 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "sure you can use it correctly.$"
# 1427 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1428 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ExplainFacade:
# 1429 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: TM42 contains FACADE.\p"
# 1430 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It doubles the power of moves if\n"
# 1431 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the POKéMON is poisoned, paralyzed,\l"
# 1432 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "or burned.\p"
# 1433 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It might be able to turn a bad\n"
# 1434 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "situation into an advantage.$"
# 1435 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1436 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadHappyAndSad:
# 1437 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: As the GYM LEADER, I can't\n"
# 1438 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "express how upset I am…\p"
# 1439 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But as a mentor, it makes me both\n"
# 1440 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "happy and a little sad. It's odd…$"
# 1441 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1442 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_PleaseComeWithMe:
# 1443 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Ah, there you are, {PLAYER}{KUN}!\p"
# 1444 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Please come with me.\n"
# 1445 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I have something I want you to have.$"
# 1446 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1447 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_LetMeBorrowPlayer:
# 1448 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA, you don't mind, do you?\p"
# 1449 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Let me borrow {PLAYER}{KUN} for\n"
# 1450 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a minute or two.$"
# 1451 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1452 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_LukasGrandparentsHaveSomethingToSay:
# 1453 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "LUKA's grandparents have something\n"
# 1454 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "to say to you at his house.$"
# 1455 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1456 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadGoingToKeepTraining:
# 1457 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}, I'm really proud\n"
# 1458 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "of how far you've come.\p"
# 1459 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Battles aren't about revenge.\n"
# 1460 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "They're about growth for both of us.\p"
# 1461 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'll continue training and learning,\n"
# 1462 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "so I can guide new trainers better.\p"
# 1463 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "And when you have the time,\n"
# 1464 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "go visit ACACIA.\p"
# 1465 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "She cares about you deeply,\n"
# 1466 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "and she's always cheering you on.$"
# 1467 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1468 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadNoAmountOfTrainingIsEnough:
# 1469 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}, how is your\n"
# 1470 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "journey going?\p"
# 1471 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The world of POKéMON is incredibly deep.\n"
# 1472 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "There is always something new to learn.\p"
# 1473 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Research, observation, and sharing\n"
# 1474 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "knowledge with young trainers -\l"
# 1475 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "that is what truly strengthens us.\p"
# 1476 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Battles are important, yes…\n"
# 1477 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "but understanding POKéMON is essential.$"
# 1478 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1479 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymGuideAdvice:
# 1480 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hey, how's it going, CHAMPION-\n"
# 1481 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "bound {PLAYER}?\p"
# 1482 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The doors in this GYM open when you\n"
# 1483 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "beat the awaiting TRAINERS.\p"
# 1484 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Whoops! The doors in this room are\n"
# 1485 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "already open, so don't attack me!\p"
# 1486 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The TRAINERS of PETALBURG GYM\n"
# 1487 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "use all kinds of items.\p"
# 1488 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The door at the left leads to\n"
# 1489 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the SPEED ROOM.\p"
# 1490 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The door at the right leads to\n"
# 1491 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the ACCURACY ROOM.\p"
# 1492 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The room's name will be on\n"
# 1493 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the door, so choose carefully.\p"
# 1494 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Once you've chosen the door…\n"
# 1495 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Well, hey, go for it!$"
# 1496 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1497 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymGuidePostVictory:
# 1498 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}! Whoa!\p"
# 1499 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You defeated CALENDULA?\n"
# 1500 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Even with all her knowledge?\p"
# 1501 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That's incredible!\n"
# 1502 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "What an unexpected outcome!$"
# 1503 "data/maps/PetalburgCity_Gym/scripts.pory"
	
# 1504 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallIntro:
# 1505 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The ability to attack before the\n"
# 1506 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "opponent…\p"
# 1507 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Just that alone puts me at a great\n"
# 1508 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "advantage, don't you agree?$"
# 1509 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1510 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallDefeat:
# 1511 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That was a magnificent battle!$"
# 1512 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1513 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallPostBattle:
# 1514 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Go on to the next room where a new\n"
# 1515 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "challenge awaits you.\p"
# 1516 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "At the left is the CONFUSION ROOM.\p"
# 1517 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The right door leads to the DEFENSE\n"
# 1518 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "ROOM.$"
# 1519 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1520 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallPostBadge:
# 1521 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Whomever you beat, and whomever you\n"
# 1522 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "may lose to, you never shirk from\l"
# 1523 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "training yourself and your POKéMON.\p"
# 1524 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That's what I think being a\n"
# 1525 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GYM LEADER is all about.$"
# 1526 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1527 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerIntro:
# 1528 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This is the CONFUSION ROOM.\p"
# 1529 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Let me see how well bonded you are\n"
# 1530 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with your POKéMON!$"
# 1531 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1532 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerDefeat:
# 1533 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I couldn't confuse your team enough…\n"
# 1534 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You share a strong bond together.$"
# 1535 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1536 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerPostBattle:
# 1537 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The next room is the STRENGTH ROOM.\n"
# 1538 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Can you withstand brute force?$"
# 1539 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1540 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerPostBadge:
# 1541 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "After you beat our LEADER, the\n"
# 1542 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "training has become a lot tougher.$"
# 1543 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1544 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeIntro:
# 1545 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Just when you think you're going to\n"
# 1546 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "win, your opponent restores HP…\p"
# 1547 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Can you just imagine how awful that\n"
# 1548 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "must feel?\p"
# 1549 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'll show you exactly how awful it\n"
# 1550 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "feels!$"
# 1551 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1552 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeDefeat:
# 1553 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I couldn't restore HP enough…\n"
# 1554 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "What ATTACK power…$"
# 1555 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1556 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgePostBattle:
# 1557 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I shouldn't be surprised.\p"
# 1558 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Anyone who challenges CALENDULA\n"
# 1559 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "must have real determination.\p"
# 1560 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "No, wait! A TRAINER's strength\n"
# 1561 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "is earned through study and effort.\p"
# 1562 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I lost because I still have more\n"
# 1563 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "to learn.\p"
# 1564 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Go on! The ONE-HIT KO ROOM is next.$"
# 1565 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1566 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgePostBadge:
# 1567 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'm going to keep training at GYMS.\n"
# 1568 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "One day, I'll become a LEADER.$"
# 1569 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1570 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeIntro:
# 1571 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'm not going to take it easy\n"
# 1572 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "just because you're her apprentice.\p"
# 1573 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'll show you how brutal it is\n"
# 1574 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "when a POKEMON takes a critical hit!$"
# 1575 "data/maps/PetalburgCity_Gym/scripts.pory"
	
# 1576 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeDefeat:
# 1577 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Your power…\n"
# 1578 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You're the real deal.$"
# 1579 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1580 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkePostBattle:
# 1581 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA is more than a\n"
# 1582 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GYM LEADER.\p"
# 1583 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Her knowledge of the POKEMON\n"
# 1584 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "world is incredibly vast.\p"
# 1585 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Battling her means facing\n"
# 1586 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "both strength and wisdom.\p"
# 1587 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "If you keep growing,\n"
# 1588 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "you may shine just as brightly.$"
# 1589 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1590 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkePostBadge:
# 1591 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Since CALENDULA became our\n"
# 1592 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "LEADER, we've grown a lot.\p"
# 1593 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "We've learned so much about\n"
# 1594 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the POKEMON world\l"
# 1595 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "beyond just battling.\p"
# 1596 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Knowledge and strategy matter\n"
# 1597 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "just as much as strength now.$"
# 1598 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1599 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryIntro:
# 1600 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Giggle…\n"
# 1601 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This is the ACCURACY ROOM.\p"
# 1602 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It's pretty nasty when every attack\n"
# 1603 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "lands without fail.$"
# 1604 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1605 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryDefeat:
# 1606 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You were a cut above me…$"
# 1607 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1608 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryPostBattle:
# 1609 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "There are some even stronger\n"
# 1610 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "TRAINERS waiting for you.\p"
# 1611 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The left is the DEFENSE ROOM, and\n"
# 1612 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the right is the RECOVERY ROOM.\p"
# 1613 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Your POKéMON's ATTACK power will be\n"
# 1614 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "on trial either way.$"
# 1615 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1616 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryPostBadge:
# 1617 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you know what we're trying to\n"
# 1618 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "achieve as TRAINERS?\p"
# 1619 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "We're striving to become soul mates\n"
# 1620 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with our POKéMON.$"
# 1621 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1622 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaIntro:
# 1623 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The higher the DEFENSE, the more\n"
# 1624 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "reckless I can be in attack.$"
# 1625 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1626 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaDefeat:
# 1627 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Our defenses weren't enough…$"
# 1628 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1629 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaPostBattle:
# 1630 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I think you've taught me a valuable\n"
# 1631 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "lesson here.\p"
# 1632 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Now, go on! The left door goes to\n"
# 1633 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the STRENGTH ROOM.\p"
# 1634 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The right door opens to\n"
# 1635 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the ONE-HIT KO ROOM.\p"
# 1636 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Both of them have TRAINERS who are\n"
# 1637 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "skilled at offense.$"
# 1638 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1639 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaPostBadge:
# 1640 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hi! Have you tried using SURF?$"
# 1641 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1642 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyIntro:
# 1643 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA taught us to battle\n"
# 1644 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with focus and discipline.\p"
# 1645 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "So I'll face you seriously,\n"
# 1646 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "no holding back!$"
# 1647 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1648 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyDefeat:
# 1649 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But… I went all out!$"
# 1650 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1651 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyPostBattle:
# 1652 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The way you battle…\n"
# 1653 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It's all strategy and control.\p"
# 1654 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It almost reminds me of\n"
# 1655 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA's style.\p"
# 1656 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You're a real prodigy.\n"
# 1657 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Go on ahead!$"
# 1658 "data/maps/PetalburgCity_Gym/scripts.pory"
	
# 1659 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyPostBadge:
# 1660 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Sure, it's fine to make your POKéMON\n"
# 1661 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "stronger.\p"
# 1662 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But what decides the winner?\p"
# 1663 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Why, it's the feelings TRAINERS have\n"
# 1664 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "for their POKéMON.$"
# 1665 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1666 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DoorAppearsLocked:
# 1667 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This door appears to be locked\n"
# 1668 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "right now…$"
# 1669 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1670 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterSpeedRoom:
# 1671 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“SPEED ROOM,” the sign says.\p"
# 1672 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 1673 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1674 "data/maps/PetalburgCity_Gym/scripts.pory"
@ Unused
# 1675 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DoorAppearsLocked2:
# 1676 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This door appears to be locked\n"
# 1677 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "right now…$"
# 1678 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1679 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterAccuracyRoom:
# 1680 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“ACCURACY ROOM,” the sign says.\p"
# 1681 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 1682 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1683 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterConfusionRoom:
# 1684 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“CONFUSION ROOM,” the sign says.\p"
# 1685 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 1686 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1687 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterDefenseRoom:
# 1688 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“DEFENSE ROOM,” the sign says.\p"
# 1689 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 1690 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1691 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterRecoveryRoom:
# 1692 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“RECOVERY ROOM,” the sign says.\p"
# 1693 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 1694 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1695 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterStrengthRoom:
# 1696 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“STRENGTH ROOM,” the sign says.\p"
# 1697 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 1698 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1699 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterOHKORoom:
# 1700 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“ONE-HIT KO ROOM,” the sign says.\p"
# 1701 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 1702 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1703 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterGymLeadersRoom:
# 1704 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“GYM LEADER'S ROOM\p"
# 1705 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“See for yourself what POKéMON await\n"
# 1706 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "you!” the sign says.\p"
# 1707 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 1708 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1709 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymStatue:
# 1710 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM$"
# 1711 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1712 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymStatueCertified:
# 1713 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM\p"
# 1714 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA'S CERTIFIED TRAINERS:\n"
# 1715 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}$"
# 1716 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1717 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanPreRematch:
# 1718 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}…\n"
# 1719 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I had a feeling that you would come.\p"
# 1720 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I would never refuse to accept\n"
# 1721 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a challenge from you.\p"
# 1722 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You do understand, don't you?\p"
# 1723 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Inside a GYM, it doesn't matter that\n"
# 1724 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we are a student and mentor.\p"
# 1725 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "…No, because we are student and mentor,\n"
# 1726 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we owe it to each other to do the best\l"
# 1727 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we can. Isn't that right, {PLAYER}?$"
# 1728 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1729 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanRematchDefeat:
# 1730 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Uh… Haha…\n"
# 1731 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Maybe that was going too hard…$"
# 1732 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1733 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanPostRematch:
# 1734 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}…\n"
# 1735 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "What is your dream?\p"
# 1736 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "My dream…\n"
# 1737 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hahaha…\l"
# 1738 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It has already come true, actually.$"
# 1739 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1740 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanRematchNeedTwoMons:
# 1741 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}…\n"
# 1742 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I had a feeling that you would come.\p"
# 1743 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I would never refuse to accept\n"
# 1744 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a challenge from you.\p"
# 1745 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You do understand, don't you?\p"
# 1746 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Inside a GYM, it doesn't matter that\n"
# 1747 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we are a parent and child.\p"
# 1748 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hm? Wait a second, {PLAYER}.\p"
# 1749 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you only have one POKéMON that is\n"
# 1750 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "capable of battle?\p"
# 1751 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Sorry, but you'll have to come back\n"
# 1752 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with at least two POKéMON.$"
# 1753 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1754 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_CalendulaGaveEevee:
# 1755 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Oh, before you go...\p"
# 1756 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Since Acacia likes you, I can give\n"
# 1757 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "you something. She isn't the only one\l"
# 1758 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "who likes helping promising students!\p"
# 1759 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Take this little one.\n"
# 1760 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "It's an EEVEE.\p"
# 1761 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "My first partner was one, and I'd\n"
# 1762 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "love for you to start your path with\l"
# 1763 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "a loyal friend too.\p"
# 1764 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Ah! I almost forgot!\n"
# 1765 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Here's an EVERSTONE as well.\p"
# 1766 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "If you give this stone to EEVEE to\n"
# 1767 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "hold, it will prevent it from evolving.\p"
# 1768 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "That way, you can take your time\n"
# 1769 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "deciding which evolution is right for\l"
# 1770 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "your new partner!\p"
# 1771 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Just take the stone away when you're\n"
# 1772 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "ready for EEVEE to evolve.$"
