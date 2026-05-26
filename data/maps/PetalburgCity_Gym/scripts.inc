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
	msgbox PetalburgCity_Gym_Text_DadSoDidItWorkOut, MSGBOX_DEFAULT
# 80 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyThankYouBye, MSGBOX_DEFAULT
# 81 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 82 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 83 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitGym
# 84 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 85 "data/maps/PetalburgCity_Gym/scripts.pory"
	playse SE_EXIT
# 86 "data/maps/PetalburgCity_Gym/scripts.pory"
	removeobject LOCALID_PETALBURG_GYM_WALLY
# 87 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_WALLY
# 88 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay 30
# 89 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 90 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 91 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadGoCollectBadges, MSGBOX_DEFAULT
# 92 "data/maps/PetalburgCity_Gym/scripts.pory"
	giveegg SPECIES_EEVEE
# 93 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_RecievedEgg, MSGBOX_DEFAULT
# 94 "data/maps/PetalburgCity_Gym/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 95 "data/maps/PetalburgCity_Gym/scripts.pory"
	giveitem ITEM_EVERSTONE
# 96 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_Everstone, MSGBOX_DEFAULT
# 97 "data/maps/PetalburgCity_Gym/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 98 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_CalendulaGaveEevee, MSGBOX_DEFAULT
# 99 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_GYM_STATE, 2
# 100 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 101 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 102 "data/maps/PetalburgCity_Gym/scripts.pory"

# 103 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RecievedEgg:
# 104 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER} recieved EEVEE egg!$"
# 105 "data/maps/PetalburgCity_Gym/scripts.pory"

# 106 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_Everstone:
# 107 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER} recieved an Everstone!$"	
# 108 "data/maps/PetalburgCity_Gym/scripts.pory"

# 109 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitGym:
# 110 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 111 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 112 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 113 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 114 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 115 "data/maps/PetalburgCity_Gym/scripts.pory"

# 116 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Norman::
# 117 "data/maps/PetalburgCity_Gym/scripts.pory"
    lock
# 118 "data/maps/PetalburgCity_Gym/scripts.pory"
    faceplayer
# 119 "data/maps/PetalburgCity_Gym/scripts.pory"
    getdifficulty VAR_RESULT
# 120 "data/maps/PetalburgCity_Gym/scripts.pory"
    goto_if_eq VAR_RESULT, 1, PetalburgCity_Gym_EventScript_NormanHard
# 121 "data/maps/PetalburgCity_Gym/scripts.pory"
    goto PetalburgCity_Gym_EventScript_NormanCasual
# 122 "data/maps/PetalburgCity_Gym/scripts.pory"

# 123 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanCasual::
# 124 "data/maps/PetalburgCity_Gym/scripts.pory"
    // Modo Casual - 
# 125 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_PETALBURG_GYM_STATE
# 126 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 2, PetalburgCity_Gym_EventScript_NormanNoBadges
# 127 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 3, PetalburgCity_Gym_EventScript_NormanOneBadge
# 128 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 4, PetalburgCity_Gym_EventScript_NormanTwoBadges
# 129 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 5, PetalburgCity_Gym_EventScript_NormanThreeBadges
# 130 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 6, PetalburgCity_Gym_EventScript_NormanBattleCasual
# 131 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 7, PetalburgCity_Gym_EventScript_NormanPostBattle
# 132 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 8, PetalburgCity_Gym_EventScript_NormanRematch
# 133 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_DadYoureHereWithYourPokemon, MSGBOX_DEFAULT
# 134 "data/maps/PetalburgCity_Gym/scripts.pory"
    closemessage
# 135 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_FACING
# 136 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_SOUTH, PetalburgCity_Gym_EventScript_BeginWallyTutorialSouth
# 137 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_NORTH, PetalburgCity_Gym_EventScript_BeginWallyTutorialNorth
# 138 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_WEST, PetalburgCity_Gym_EventScript_BeginWallyTutorialWest
# 139 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_EAST, PetalburgCity_Gym_EventScript_BeginWallyTutorialEast
# 140 "data/maps/PetalburgCity_Gym/scripts.pory"
    end
# 141 "data/maps/PetalburgCity_Gym/scripts.pory"

# 142 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanHard::
# 143 "data/maps/PetalburgCity_Gym/scripts.pory"
    // Modo Hard
# 144 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_PETALBURG_GYM_STATE
# 145 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 2, PetalburgCity_Gym_EventScript_NormanNoBadges
# 146 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 3, PetalburgCity_Gym_EventScript_NormanOneBadge
# 147 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 4, PetalburgCity_Gym_EventScript_NormanTwoBadges
# 148 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 5, PetalburgCity_Gym_EventScript_NormanThreeBadges
# 149 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 6, PetalburgCity_Gym_EventScript_NormanBattleHard
# 150 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 7, PetalburgCity_Gym_EventScript_NormanPostBattle
# 151 "data/maps/PetalburgCity_Gym/scripts.pory"
    case 8, PetalburgCity_Gym_EventScript_NormanRematch
# 152 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_DadYoureHereWithYourPokemon, MSGBOX_DEFAULT
# 153 "data/maps/PetalburgCity_Gym/scripts.pory"
    closemessage
# 154 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_FACING
# 155 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_SOUTH, PetalburgCity_Gym_EventScript_BeginWallyTutorialSouth
# 156 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_NORTH, PetalburgCity_Gym_EventScript_BeginWallyTutorialNorth
# 157 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_WEST, PetalburgCity_Gym_EventScript_BeginWallyTutorialWest
# 158 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_EAST, PetalburgCity_Gym_EventScript_BeginWallyTutorialEast
# 159 "data/maps/PetalburgCity_Gym/scripts.pory"
    end
# 160 "data/maps/PetalburgCity_Gym/scripts.pory"

# 161 "data/maps/PetalburgCity_Gym/scripts.pory"
// Modo Casual - Batalha
# 162 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanBattleCasual::
# 163 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_NormanIntro, MSGBOX_DEFAULT
# 164 "data/maps/PetalburgCity_Gym/scripts.pory"
    trainerbattle_no_intro TRAINER_CALENDULA_CASUAL, PetalburgCity_Gym_Text_NormanDefeat  // Precisa criar TRAINER_NORMAN_CASUAL
# 165 "data/maps/PetalburgCity_Gym/scripts.pory"
    goto PetalburgCity_Gym_EventScript_NormanAfterBattle
# 166 "data/maps/PetalburgCity_Gym/scripts.pory"

# 167 "data/maps/PetalburgCity_Gym/scripts.pory"
// Modo Hard - Batalha
# 168 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanBattleHard::
# 169 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_NormanIntro, MSGBOX_DEFAULT
# 170 "data/maps/PetalburgCity_Gym/scripts.pory"
    trainerbattle_no_intro TRAINER_NORMAN_1, PetalburgCity_Gym_Text_NormanDefeat
# 171 "data/maps/PetalburgCity_Gym/scripts.pory"
    // Fall through para AfterBattle
# 172 "data/maps/PetalburgCity_Gym/scripts.pory"

# 173 "data/maps/PetalburgCity_Gym/scripts.pory"
// Pós-batalha 
# 174 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAfterBattle::
# 175 "data/maps/PetalburgCity_Gym/scripts.pory"
    message PetalburgCity_Gym_Text_ReceivedBalanceBadge
# 176 "data/maps/PetalburgCity_Gym/scripts.pory"
    waitmessage
# 177 "data/maps/PetalburgCity_Gym/scripts.pory"
    call Common_EventScript_PlayGymBadgeFanfare
# 178 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_ExplainBalanceBadgeTakeThis, MSGBOX_DEFAULT
# 179 "data/maps/PetalburgCity_Gym/scripts.pory"
    setflag FLAG_DEFEATED_PETALBURG_GYM
# 180 "data/maps/PetalburgCity_Gym/scripts.pory"
    setvar VAR_PETALBURG_GYM_STATE, 7
# 181 "data/maps/PetalburgCity_Gym/scripts.pory"
    setflag FLAG_BADGE05_GET
# 182 "data/maps/PetalburgCity_Gym/scripts.pory"
    special ResetHealLocationFromDewford
# 183 "data/maps/PetalburgCity_Gym/scripts.pory"
    call EventScript_HideMrBriney
# 184 "data/maps/PetalburgCity_Gym/scripts.pory"
    setflag FLAG_HIDE_MAUVILLE_GYM_WATTSON
# 185 "data/maps/PetalburgCity_Gym/scripts.pory"
    clearflag FLAG_HIDE_MAUVILLE_CITY_WATTSON
# 186 "data/maps/PetalburgCity_Gym/scripts.pory"
    setvar VAR_0x8008, 5
# 187 "data/maps/PetalburgCity_Gym/scripts.pory"
    call Common_EventScript_SetGymTrainers
# 188 "data/maps/PetalburgCity_Gym/scripts.pory"
    clearflag FLAG_HIDE_DEWFORD_HALL_SLUDGE_BOMB_MAN
# 189 "data/maps/PetalburgCity_Gym/scripts.pory"
    call PetalburgCity_Gym_EventScript_UnlockAllDoors
# 190 "data/maps/PetalburgCity_Gym/scripts.pory"
    special DrawWholeMapView
# 191 "data/maps/PetalburgCity_Gym/scripts.pory"
    call PetalburgCity_Gym_EventScript_GiveFacade
# 192 "data/maps/PetalburgCity_Gym/scripts.pory"
    delay 30
# 193 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_DadHappyAndSad, MSGBOX_DEFAULT
# 194 "data/maps/PetalburgCity_Gym/scripts.pory"
    closemessage
# 195 "data/maps/PetalburgCity_Gym/scripts.pory"
    delay 40
# 196 "data/maps/PetalburgCity_Gym/scripts.pory"
    playse SE_DOOR
# 197 "data/maps/PetalburgCity_Gym/scripts.pory"
    delay 10
# 198 "data/maps/PetalburgCity_Gym/scripts.pory"
    addobject LOCALID_PETALBURG_GYM_WALLYS_DAD
# 199 "data/maps/PetalburgCity_Gym/scripts.pory"
    switch VAR_FACING
# 200 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_NORTH, PetalburgCity_Gym_EventScript_WallysDadArrivesNorth
# 201 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_WEST, PetalburgCity_Gym_EventScript_WallysDadArrivesWest
# 202 "data/maps/PetalburgCity_Gym/scripts.pory"
    case DIR_EAST, PetalburgCity_Gym_EventScript_WallysDadArrivesEast
# 203 "data/maps/PetalburgCity_Gym/scripts.pory"
    end
# 204 "data/maps/PetalburgCity_Gym/scripts.pory"

# 205 "data/maps/PetalburgCity_Gym/scripts.pory"
// Rematch 
# 206 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanRematch::
# 207 "data/maps/PetalburgCity_Gym/scripts.pory"
    trainerbattle_rematch_double TRAINER_NORMAN_1, PetalburgCity_Gym_Text_NormanPreRematch, PetalburgCity_Gym_Text_NormanRematchDefeat, PetalburgCity_Gym_Text_NormanRematchNeedTwoMons
# 208 "data/maps/PetalburgCity_Gym/scripts.pory"
    msgbox PetalburgCity_Gym_Text_NormanPostRematch, MSGBOX_AUTOCLOSE
# 209 "data/maps/PetalburgCity_Gym/scripts.pory"
    end
# 210 "data/maps/PetalburgCity_Gym/scripts.pory"

# 211 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorialSouth::
# 212 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 0
# 213 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_BeginWallyTutorial
# 214 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 215 "data/maps/PetalburgCity_Gym/scripts.pory"

# 216 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorialNorth::
# 217 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 218 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_BeginWallyTutorial
# 219 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 220 "data/maps/PetalburgCity_Gym/scripts.pory"

# 221 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorialWest::
# 222 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 2
# 223 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_BeginWallyTutorial
# 224 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 225 "data/maps/PetalburgCity_Gym/scripts.pory"

# 226 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorialEast::
# 227 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 3
# 228 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_BeginWallyTutorial
# 229 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 230 "data/maps/PetalburgCity_Gym/scripts.pory"

# 231 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BeginWallyTutorial::
# 232 "data/maps/PetalburgCity_Gym/scripts.pory"
	addobject LOCALID_PETALBURG_GYM_WALLY
# 233 "data/maps/PetalburgCity_Gym/scripts.pory"
	playse SE_DOOR
# 234 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_WallyArriveSouth
# 235 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_WallyArriveNorth
# 236 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_WallyArriveWestEast
# 237 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_WallyArriveWestEast
# 238 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyIdLikeAPokemon, MSGBOX_DEFAULT
# 239 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadOhYoureWallyRight, MSGBOX_DEFAULT
# 240 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyIveNeverCaughtAPokemon, MSGBOX_DEFAULT
# 241 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadHmISee, MSGBOX_DEFAULT
# 242 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_NormanAddressPlayerSouth
# 243 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_NormanAddressPlayerNorth
# 244 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_NormanAddressPlayerWest
# 245 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_NormanAddressPlayerEast
# 246 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadPlayerGoWithWally, MSGBOX_DEFAULT
# 247 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_NormanAddressWallySouth
# 248 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_NormanAddressWallyNorth
# 249 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_NormanAddressWallyWest
# 250 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_NormanAddressWallyEast
# 251 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_IllLoanYouMyZigzagoon, MSGBOX_DEFAULT
# 252 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyThankYouAndDadGivesPokeBall, MSGBOX_DEFAULT
# 253 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WallyOhWowThankYou, MSGBOX_DEFAULT
# 254 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_NormanFaceDoorSouth
# 255 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_NormanFaceDoorNorth
# 256 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_NormanFaceDoorWest
# 257 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_NormanFaceDoorEast
# 258 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_WallyFacePlayer
# 259 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_WallyFaceDown
# 260 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_WallyFacePlayer
# 261 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_WallyFacePlayer
# 262 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_WouldYouReallyComeWithMe, MSGBOX_DEFAULT
# 263 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 264 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_DONT_TRANSITION_MUSIC
# 265 "data/maps/PetalburgCity_Gym/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 266 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 0, PetalburgCity_Gym_EventScript_ExitGymWithWallySouth
# 267 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_ExitGymWithWallyNorth
# 268 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_ExitGymWithWallyWest
# 269 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_ExitGymWithWallyEast
# 270 "data/maps/PetalburgCity_Gym/scripts.pory"
	removeobject LOCALID_PETALBURG_GYM_WALLY
# 271 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_HIDE_PETALBURG_CITY_WALLYS_MOM
# 272 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_GYM_STATE, 1
# 273 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_CITY_STATE, 2
# 274 "data/maps/PetalburgCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_WALLY
# 275 "data/maps/PetalburgCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_GYM_WALLY
# 276 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BIRCHS_LAB_RIVAL
# 277 "data/maps/PetalburgCity_Gym/scripts.pory"
	special InitBirchState
# 278 "data/maps/PetalburgCity_Gym/scripts.pory"
	warp MAP_PETALBURG_CITY, 20, 7
# 279 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 280 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 281 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 282 "data/maps/PetalburgCity_Gym/scripts.pory"

# 283 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyArriveSouth::
# 284 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 285 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyArrive
# 286 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 287 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 288 "data/maps/PetalburgCity_Gym/scripts.pory"

# 289 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyArriveNorth::
# 290 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyArriveNorth
# 291 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 292 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterRight
# 293 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 294 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 295 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 296 "data/maps/PetalburgCity_Gym/scripts.pory"

# 297 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyArriveWestEast::
# 298 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 299 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 300 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyArrive
# 301 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 302 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 303 "data/maps/PetalburgCity_Gym/scripts.pory"

# 304 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallySouth::
# 305 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 306 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitSouthWest
# 307 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallySouth
# 308 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 309 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 310 "data/maps/PetalburgCity_Gym/scripts.pory"

# 311 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallyNorth::
# 312 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitNorth
# 313 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallyNorth
# 314 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 315 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 316 "data/maps/PetalburgCity_Gym/scripts.pory"

# 317 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallyWest::
# 318 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitSouthWest
# 319 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallyWest
# 320 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 321 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 322 "data/maps/PetalburgCity_Gym/scripts.pory"

# 323 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallyEast::
# 324 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, PetalburgCity_Gym_Movement_WallyExitEast
# 325 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallyEast
# 326 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 327 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 328 "data/maps/PetalburgCity_Gym/scripts.pory"

# 329 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressPlayerSouth::
# 330 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterUp
# 331 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 332 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 333 "data/maps/PetalburgCity_Gym/scripts.pory"

# 334 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressPlayerNorth::
# 335 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 336 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 337 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 338 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 339 "data/maps/PetalburgCity_Gym/scripts.pory"

# 340 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressPlayerWest::
# 341 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterRight
# 342 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 343 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 344 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 345 "data/maps/PetalburgCity_Gym/scripts.pory"

# 346 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressPlayerEast::
# 347 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterLeft
# 348 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 349 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 350 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 351 "data/maps/PetalburgCity_Gym/scripts.pory"

# 352 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressWallySouth::
# 353 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 354 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 355 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 356 "data/maps/PetalburgCity_Gym/scripts.pory"

# 357 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressWallyNorth::
# 358 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterRight
# 359 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 360 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 361 "data/maps/PetalburgCity_Gym/scripts.pory"

# 362 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressWallyWest::
# 363 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 364 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 365 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 366 "data/maps/PetalburgCity_Gym/scripts.pory"

# 367 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanAddressWallyEast::
# 368 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 369 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 370 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 371 "data/maps/PetalburgCity_Gym/scripts.pory"

# 372 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyFacePlayer::
# 373 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, Common_Movement_FacePlayer
# 374 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 375 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 376 "data/maps/PetalburgCity_Gym/scripts.pory"

# 377 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallyFaceDown::
# 378 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLY, Common_Movement_WalkInPlaceFasterDown
# 379 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 380 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 381 "data/maps/PetalburgCity_Gym/scripts.pory"

# 382 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanNoBadges::
# 383 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_NormanGoToRustboro, MSGBOX_DEFAULT
# 384 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 385 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 386 "data/maps/PetalburgCity_Gym/scripts.pory"

# 387 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanOneBadge::
# 388 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_NormanGoToDewford, MSGBOX_DEFAULT
# 389 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 390 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 391 "data/maps/PetalburgCity_Gym/scripts.pory"

# 392 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanTwoBadges::
# 393 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_YouHaveGottenStronger, MSGBOX_DEFAULT
# 394 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 395 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 396 "data/maps/PetalburgCity_Gym/scripts.pory"

# 397 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanThreeBadges::
# 398 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_YouHaveGottenStronger, MSGBOX_DEFAULT
# 399 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 400 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 401 "data/maps/PetalburgCity_Gym/scripts.pory"

# 402 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanFaceDoorSouth::
# 403 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 404 "data/maps/PetalburgCity_Gym/scripts.pory"

# 405 "data/maps/PetalburgCity_Gym/scripts.pory"
@ For all other NormanFaceDoorX, Norman is already facing the door from NormanAddressWallyX
# 406 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanFaceDoorNorth::
# 407 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 408 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 409 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 410 "data/maps/PetalburgCity_Gym/scripts.pory"

# 411 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanFaceDoorWest::
# 412 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 413 "data/maps/PetalburgCity_Gym/scripts.pory"

# 414 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanFaceDoorEast::
# 415 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 416 "data/maps/PetalburgCity_Gym/scripts.pory"

# 417 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NormanPostBattle::
# 418 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_ShouldGiveEnigmaBerry
# 419 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_Gym_EventScript_GiveEnigmaBerry
# 420 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_unset FLAG_RECEIVED_TM_FACADE, PetalburgCity_Gym_EventScript_GiveFacade2
# 421 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, PetalburgCity_Gym_EventScript_NoAmountOfTrainingIsEnough
# 422 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadGoingToKeepTraining, MSGBOX_DEFAULT
# 423 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 424 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 425 "data/maps/PetalburgCity_Gym/scripts.pory"

# 426 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GiveFacade2::
# 427 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_GiveFacade
# 428 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 429 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 430 "data/maps/PetalburgCity_Gym/scripts.pory"

# 431 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ShouldGiveEnigmaBerry::
# 432 "data/maps/PetalburgCity_Gym/scripts.pory"
	specialvar VAR_RESULT, IsEnigmaBerryValid
# 433 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry
# 434 "data/maps/PetalburgCity_Gym/scripts.pory"
	checkitem ITEM_ENIGMA_BERRY_E_READER
# 435 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry
# 436 "data/maps/PetalburgCity_Gym/scripts.pory"
	checkpcitem ITEM_ENIGMA_BERRY_E_READER
# 437 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry
# 438 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_ENIGMA_BERRY_AVAILABLE, 0, PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry
# 439 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GiveEnigmaBerry, MSGBOX_DEFAULT
# 440 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_RESULT, TRUE
# 441 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 442 "data/maps/PetalburgCity_Gym/scripts.pory"

# 443 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_DontGiveEnigmaBerry::
# 444 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_RESULT, FALSE
# 445 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 446 "data/maps/PetalburgCity_Gym/scripts.pory"

# 447 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GiveEnigmaBerry::
# 448 "data/maps/PetalburgCity_Gym/scripts.pory"
	giveitem ITEM_ENIGMA_BERRY_E_READER
# 449 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 450 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_ENIGMA_BERRY_AVAILABLE, 0
# 451 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 452 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 453 "data/maps/PetalburgCity_Gym/scripts.pory"

# 454 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GiveFacade::
# 455 "data/maps/PetalburgCity_Gym/scripts.pory"
	giveitem ITEM_TM_FACADE
# 456 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_BagIsFull
# 457 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_RECEIVED_TM_FACADE
# 458 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ExplainFacade, MSGBOX_DEFAULT
# 459 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 460 "data/maps/PetalburgCity_Gym/scripts.pory"

# 461 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrivesNorth::
# 462 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 463 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_WallysDadArrives
# 464 "data/maps/PetalburgCity_Gym/scripts.pory"

# 465 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrivesEast::
# 466 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 2
# 467 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_WallysDadArrives
# 468 "data/maps/PetalburgCity_Gym/scripts.pory"

# 469 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrivesWest::
# 470 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 3
# 471 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_WallysDadArrives
# 472 "data/maps/PetalburgCity_Gym/scripts.pory"

# 473 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadArrives::
# 474 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadEnterGym
# 475 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 476 "data/maps/PetalburgCity_Gym/scripts.pory"
	playse SE_PIN
# 477 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_ExclamationMark
# 478 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 479 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_Delay48
# 480 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 481 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay 10
# 482 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_WallysDadApproachPlayerNorth
# 483 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_WallysDadApproachPlayerEast
# 484 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_WallysDadApproachPlayerWest
# 485 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_PleaseComeWithMe, MSGBOX_DEFAULT
# 486 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 487 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay 20
# 488 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_WallysDadFaceNormanNorth
# 489 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_WallysDadFaceNormanEast
# 490 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_WallysDadFaceNormanWest
# 491 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_LetMeBorrowPlayer, MSGBOX_DEFAULT
# 492 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 493 "data/maps/PetalburgCity_Gym/scripts.pory"
	setflag FLAG_DONT_TRANSITION_MUSIC
# 494 "data/maps/PetalburgCity_Gym/scripts.pory"
	playbgm MUS_FOLLOW_ME, FALSE
# 495 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 1, PetalburgCity_Gym_EventScript_ExitGymWithWallysDadNorth
# 496 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 2, PetalburgCity_Gym_EventScript_ExitGymWithWallysDadEast
# 497 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8008, 3, PetalburgCity_Gym_EventScript_ExitGymWithWallysDadWest
# 498 "data/maps/PetalburgCity_Gym/scripts.pory"
	removeobject LOCALID_PETALBURG_GYM_WALLYS_DAD
# 499 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_PETALBURG_CITY_STATE, 4
# 500 "data/maps/PetalburgCity_Gym/scripts.pory"
	clearflag FLAG_HIDE_PETALBURG_CITY_WALLYS_DAD
# 501 "data/maps/PetalburgCity_Gym/scripts.pory"
	warp MAP_PETALBURG_CITY, 17, 8
# 502 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 503 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 504 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 505 "data/maps/PetalburgCity_Gym/scripts.pory"

# 506 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadFaceNormanNorth::
# 507 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_WalkInPlaceFasterUp
# 508 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 509 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 510 "data/maps/PetalburgCity_Gym/scripts.pory"

# 511 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadFaceNormanEast::
# 512 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_WalkInPlaceFasterRight
# 513 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 514 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 515 "data/maps/PetalburgCity_Gym/scripts.pory"

# 516 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadFaceNormanWest::
# 517 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, Common_Movement_WalkInPlaceFasterLeft
# 518 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 519 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 520 "data/maps/PetalburgCity_Gym/scripts.pory"

# 521 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerNorth::
# 522 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerNorth
# 523 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 524 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 525 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterLeft
# 526 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 527 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 528 "data/maps/PetalburgCity_Gym/scripts.pory"

# 529 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerEast::
# 530 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerEast
# 531 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 532 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 533 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 534 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 535 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 536 "data/maps/PetalburgCity_Gym/scripts.pory"

# 537 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_WallysDadApproachPlayerWest::
# 538 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadApproachPlayerWest
# 539 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 540 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 541 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 542 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 543 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 544 "data/maps/PetalburgCity_Gym/scripts.pory"

# 545 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallysDadNorth::
# 546 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadExitNorth
# 547 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_NORMAN, Common_Movement_WalkInPlaceFasterDown
# 548 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallysDadNorth
# 549 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 550 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 551 "data/maps/PetalburgCity_Gym/scripts.pory"

# 552 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallysDadEast::
# 553 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadExitEast
# 554 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallysDadEast
# 555 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 556 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 557 "data/maps/PetalburgCity_Gym/scripts.pory"

# 558 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ExitGymWithWallysDadWest::
# 559 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PETALBURG_GYM_WALLYS_DAD, PetalburgCity_Gym_Movement_WallysDadExitWest
# 560 "data/maps/PetalburgCity_Gym/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgCity_Gym_Movement_PlayerExitWithWallysDadWest
# 561 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitmovement 0
# 562 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 563 "data/maps/PetalburgCity_Gym/scripts.pory"

# 564 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadExitNorth:
# 565 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 566 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 567 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 568 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 569 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 570 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 571 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 572 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 573 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 574 "data/maps/PetalburgCity_Gym/scripts.pory"
	set_invisible
# 575 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 576 "data/maps/PetalburgCity_Gym/scripts.pory"

# 577 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadExitEast:
# 578 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 579 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 580 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 581 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 582 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 583 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 584 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 585 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 586 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 587 "data/maps/PetalburgCity_Gym/scripts.pory"
	set_invisible
# 588 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 589 "data/maps/PetalburgCity_Gym/scripts.pory"

# 590 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadExitWest:
# 591 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 592 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 593 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 594 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 595 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 596 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 597 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 598 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 599 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 600 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 601 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 602 "data/maps/PetalburgCity_Gym/scripts.pory"
	set_invisible
# 603 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 604 "data/maps/PetalburgCity_Gym/scripts.pory"

# 605 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallysDadNorth:
# 606 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 607 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 608 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 609 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 610 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 611 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 612 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 613 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 614 "data/maps/PetalburgCity_Gym/scripts.pory"

# 615 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallysDadEast:
# 616 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 617 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 618 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 619 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 620 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 621 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 622 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 623 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 624 "data/maps/PetalburgCity_Gym/scripts.pory"

# 625 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallysDadWest:
# 626 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 627 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 628 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 629 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 630 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 631 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 632 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_left
# 633 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 634 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 635 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 636 "data/maps/PetalburgCity_Gym/scripts.pory"

# 637 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadEnterGym:
# 638 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 639 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 640 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_right
# 641 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 642 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_left
# 643 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 644 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 645 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 646 "data/maps/PetalburgCity_Gym/scripts.pory"

# 647 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadApproachPlayerNorth:
# 648 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 649 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 650 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 651 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 652 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 653 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_right
# 654 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 655 "data/maps/PetalburgCity_Gym/scripts.pory"

# 656 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadApproachPlayerEast:
# 657 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 658 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 659 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 660 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 661 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 662 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 663 "data/maps/PetalburgCity_Gym/scripts.pory"

# 664 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallysDadApproachPlayerWest:
# 665 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 666 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 667 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 668 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 669 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 670 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 671 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 672 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 673 "data/maps/PetalburgCity_Gym/scripts.pory"

# 674 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_Unused:
# 675 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 676 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 677 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 678 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 679 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 680 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 681 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 682 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_down
# 683 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 684 "data/maps/PetalburgCity_Gym/scripts.pory"

# 685 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyArriveNorth:
# 686 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 687 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 688 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 689 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 690 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 691 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 692 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 693 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 694 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_left
# 695 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 696 "data/maps/PetalburgCity_Gym/scripts.pory"

# 697 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyArrive:
# 698 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 699 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 700 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 701 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 702 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 703 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_up
# 704 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 705 "data/maps/PetalburgCity_Gym/scripts.pory"

# 706 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitNorth:
# 707 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 708 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 709 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 710 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 711 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 712 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 713 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 714 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 715 "data/maps/PetalburgCity_Gym/scripts.pory"

# 716 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitEast:
# 717 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 718 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 719 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 720 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 721 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 722 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 723 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 724 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 725 "data/maps/PetalburgCity_Gym/scripts.pory"

# 726 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_WallyExitSouthWest:
# 727 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 728 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 729 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 730 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_up
# 731 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 732 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_down
# 733 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 734 "data/maps/PetalburgCity_Gym/scripts.pory"

# 735 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallyNorth:
# 736 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 737 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 738 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 739 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 740 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 741 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 742 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 743 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 744 "data/maps/PetalburgCity_Gym/scripts.pory"

# 745 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallySouth:
# 746 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 747 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 748 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 749 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 750 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 751 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 752 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 753 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 754 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 755 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 756 "data/maps/PetalburgCity_Gym/scripts.pory"

# 757 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallyWest:
# 758 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 759 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 760 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 761 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 762 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 763 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 764 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 765 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 766 "data/maps/PetalburgCity_Gym/scripts.pory"

# 767 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Movement_PlayerExitWithWallyEast:
# 768 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_in_place_faster_down
# 769 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 770 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_16
# 771 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 772 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 773 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 774 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_right
# 775 "data/maps/PetalburgCity_Gym/scripts.pory"
	walk_down
# 776 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay_8
# 777 "data/maps/PetalburgCity_Gym/scripts.pory"
	step_end
# 778 "data/maps/PetalburgCity_Gym/scripts.pory"

# 779 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_NoAmountOfTrainingIsEnough::
# 780 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DadNoAmountOfTrainingIsEnough, MSGBOX_DEFAULT
# 781 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 782 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 783 "data/maps/PetalburgCity_Gym/scripts.pory"

# 784 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SpeedRoomDoor::
# 785 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 786 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_lt VAR_PETALBURG_GYM_STATE, 6, PetalburgCity_Gym_EventScript_DoorLocked
# 787 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 788 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 85
# 789 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterSpeedRoom, MSGBOX_YESNO
# 790 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 791 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 792 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 793 "data/maps/PetalburgCity_Gym/scripts.pory"

# 794 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_EnterRoom::
# 795 "data/maps/PetalburgCity_Gym/scripts.pory"
	closemessage
# 796 "data/maps/PetalburgCity_Gym/scripts.pory"
	delay 30
# 797 "data/maps/PetalburgCity_Gym/scripts.pory"
	warpdoor MAP_PETALBURG_CITY_GYM, VAR_0x8008, VAR_0x8009
# 798 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 799 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 800 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 801 "data/maps/PetalburgCity_Gym/scripts.pory"

# 802 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_DontEnterRoom::
# 803 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 804 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 805 "data/maps/PetalburgCity_Gym/scripts.pory"

# 806 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_DoorLocked::
# 807 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_DoorAppearsLocked, MSGBOX_DEFAULT
# 808 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 809 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 810 "data/maps/PetalburgCity_Gym/scripts.pory"

# 811 "data/maps/PetalburgCity_Gym/scripts.pory"
@ VAR_0x8008 and VAR_0x8009 below are the x and y coordinates of the warp
# 812 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_AccuracyRoomDoor::
# 813 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 814 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_lt VAR_PETALBURG_GYM_STATE, 6, PetalburgCity_Gym_EventScript_DoorLocked
# 815 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 816 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 98
# 817 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterAccuracyRoom, MSGBOX_YESNO
# 818 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 819 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 820 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 821 "data/maps/PetalburgCity_Gym/scripts.pory"

# 822 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ConfusionRoomDoor::
# 823 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 824 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_RANDALL, PetalburgCity_Gym_EventScript_DoorLocked
# 825 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 826 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 46
# 827 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterConfusionRoom, MSGBOX_YESNO
# 828 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 829 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 830 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 831 "data/maps/PetalburgCity_Gym/scripts.pory"

# 832 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftDefenseRoomDoor::
# 833 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 834 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_RANDALL, PetalburgCity_Gym_EventScript_DoorLocked
# 835 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 836 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 59
# 837 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterDefenseRoom, MSGBOX_YESNO
# 838 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 839 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 840 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 841 "data/maps/PetalburgCity_Gym/scripts.pory"

# 842 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightDefenseRoomDoor::
# 843 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 844 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_MARY, PetalburgCity_Gym_EventScript_DoorLocked
# 845 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 846 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 59
# 847 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterDefenseRoom, MSGBOX_YESNO
# 848 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 849 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 850 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 851 "data/maps/PetalburgCity_Gym/scripts.pory"

# 852 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RecoveryRoomDoor::
# 853 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 854 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_MARY, PetalburgCity_Gym_EventScript_DoorLocked
# 855 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 856 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 72
# 857 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterRecoveryRoom, MSGBOX_YESNO
# 858 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 859 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 860 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 861 "data/maps/PetalburgCity_Gym/scripts.pory"

# 862 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftStrengthRoomDoor::
# 863 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 864 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_PARKER, PetalburgCity_Gym_EventScript_DoorLocked
# 865 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 866 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 20
# 867 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterStrengthRoom, MSGBOX_YESNO
# 868 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 869 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 870 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 871 "data/maps/PetalburgCity_Gym/scripts.pory"

# 872 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightStrengthRoomDoor::
# 873 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 874 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_ALEXIA, PetalburgCity_Gym_EventScript_DoorLocked
# 875 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 876 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 20
# 877 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterStrengthRoom, MSGBOX_YESNO
# 878 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 879 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 880 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 881 "data/maps/PetalburgCity_Gym/scripts.pory"

# 882 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftOHKORoomDoor::
# 883 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 884 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_ALEXIA, PetalburgCity_Gym_EventScript_DoorLocked
# 885 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 886 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 33
# 887 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterOHKORoom, MSGBOX_YESNO
# 888 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 889 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 890 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 891 "data/maps/PetalburgCity_Gym/scripts.pory"

# 892 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightOHKORoomDoor::
# 893 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 894 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_GEORGE, PetalburgCity_Gym_EventScript_DoorLocked
# 895 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 896 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 33
# 897 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterOHKORoom, MSGBOX_YESNO
# 898 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 899 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 900 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 901 "data/maps/PetalburgCity_Gym/scripts.pory"

# 902 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftGymLeadersRoomDoor::
# 903 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 904 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_JODY, PetalburgCity_Gym_EventScript_DoorLocked
# 905 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 1
# 906 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 7
# 907 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterGymLeadersRoom, MSGBOX_YESNO
# 908 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 909 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 910 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 911 "data/maps/PetalburgCity_Gym/scripts.pory"

# 912 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightGymLeadersRoomDoor::
# 913 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 914 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_not_defeated TRAINER_BERKE, PetalburgCity_Gym_EventScript_DoorLocked
# 915 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8008, 7
# 916 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8009, 7
# 917 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_EnterGymLeadersRoom, MSGBOX_YESNO
# 918 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PetalburgCity_Gym_EventScript_EnterRoom
# 919 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PetalburgCity_Gym_EventScript_DontEnterRoom
# 920 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 921 "data/maps/PetalburgCity_Gym/scripts.pory"

# 922 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Randall::
# 923 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_RANDALL, PetalburgCity_Gym_Text_RandallIntro, PetalburgCity_Gym_Text_RandallDefeat, PetalburgCity_Gym_EventScript_SlideOpenSpeedRoomDoors
# 924 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_RandallPostBadge
# 925 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_RandallPostBattle, MSGBOX_AUTOCLOSE
# 926 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 927 "data/maps/PetalburgCity_Gym/scripts.pory"

# 928 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenSpeedRoomDoors::
# 929 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8005, 0
# 930 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenSpeedRoomDoors
# 931 "data/maps/PetalburgCity_Gym/scripts.pory"
	special DrawWholeMapView
# 932 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 933 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 934 "data/maps/PetalburgCity_Gym/scripts.pory"

# 935 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RandallPostBadge::
# 936 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_RandallPostBadge, MSGBOX_NPC
# 937 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 938 "data/maps/PetalburgCity_Gym/scripts.pory"

# 939 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Parker::
# 940 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_PARKER, PetalburgCity_Gym_Text_ParkerIntro, PetalburgCity_Gym_Text_ParkerDefeat, PetalburgCity_Gym_EventScript_SlideOpenConfusionRoomDoors
# 941 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_ParkerPostBadge
# 942 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerPostBattle, MSGBOX_AUTOCLOSE
# 943 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 944 "data/maps/PetalburgCity_Gym/scripts.pory"

# 945 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenConfusionRoomDoors::
# 946 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8005, 0
# 947 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenConfusionRoomDoors
# 948 "data/maps/PetalburgCity_Gym/scripts.pory"
	special DrawWholeMapView
# 949 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 950 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 951 "data/maps/PetalburgCity_Gym/scripts.pory"

# 952 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_ParkerPostBadge::
# 953 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_ParkerPostBadge, MSGBOX_NPC
# 954 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 955 "data/maps/PetalburgCity_Gym/scripts.pory"

# 956 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_George::
# 957 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_GEORGE, PetalburgCity_Gym_Text_GeorgeIntro, PetalburgCity_Gym_Text_GeorgeDefeat, PetalburgCity_Gym_EventScript_SlideOpenRecoveryRoomDoors
# 958 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_GeorgePostBadge
# 959 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GeorgePostBattle, MSGBOX_AUTOCLOSE
# 960 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 961 "data/maps/PetalburgCity_Gym/scripts.pory"

# 962 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenRecoveryRoomDoors::
# 963 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8005, 0
# 964 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenRecoveryRoomDoors
# 965 "data/maps/PetalburgCity_Gym/scripts.pory"
	special DrawWholeMapView
# 966 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 967 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 968 "data/maps/PetalburgCity_Gym/scripts.pory"

# 969 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GeorgePostBadge::
# 970 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GeorgePostBadge, MSGBOX_NPC
# 971 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 972 "data/maps/PetalburgCity_Gym/scripts.pory"

# 973 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Berke::
# 974 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_BERKE, PetalburgCity_Gym_Text_BerkeIntro, PetalburgCity_Gym_Text_BerkeDefeat, PetalburgCity_Gym_EventScript_SlideOpenOHKORoomDoors
# 975 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_BerkePostBadge
# 976 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_BerkePostBattle, MSGBOX_AUTOCLOSE
# 977 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 978 "data/maps/PetalburgCity_Gym/scripts.pory"

# 979 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenOHKORoomDoors::
# 980 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8005, 0
# 981 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenOHKORoomDoors
# 982 "data/maps/PetalburgCity_Gym/scripts.pory"
	special DrawWholeMapView
# 983 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 984 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 985 "data/maps/PetalburgCity_Gym/scripts.pory"

# 986 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_BerkePostBadge::
# 987 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_BerkePostBadge, MSGBOX_NPC
# 988 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 989 "data/maps/PetalburgCity_Gym/scripts.pory"

# 990 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Mary::
# 991 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_MARY, PetalburgCity_Gym_Text_MaryIntro, PetalburgCity_Gym_Text_MaryDefeat, PetalburgCity_Gym_EventScript_SlideOpenAccuracyRoomDoors
# 992 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_MaryPostBadge
# 993 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_MaryPostBattle, MSGBOX_AUTOCLOSE
# 994 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 995 "data/maps/PetalburgCity_Gym/scripts.pory"

# 996 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenAccuracyRoomDoors::
# 997 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8005, 0
# 998 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenAccuracyRoomDoors
# 999 "data/maps/PetalburgCity_Gym/scripts.pory"
	special DrawWholeMapView
# 1000 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1001 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1002 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1003 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_MaryPostBadge::
# 1004 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_MaryPostBadge, MSGBOX_NPC
# 1005 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1006 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1007 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Alexia::
# 1008 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_ALEXIA, PetalburgCity_Gym_Text_AlexiaIntro, PetalburgCity_Gym_Text_AlexiaDefeat, PetalburgCity_Gym_EventScript_SlideOpenDefenseRoomDoors
# 1009 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_AlexiaPostBadge
# 1010 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_AlexiaPostBattle, MSGBOX_AUTOCLOSE
# 1011 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1012 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1013 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenDefenseRoomDoors::
# 1014 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8005, 0
# 1015 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenDefenseRoomDoors
# 1016 "data/maps/PetalburgCity_Gym/scripts.pory"
	special DrawWholeMapView
# 1017 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1018 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1019 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1020 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_AlexiaPostBadge::
# 1021 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_AlexiaPostBadge, MSGBOX_NPC
# 1022 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1023 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1024 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_Jody::
# 1025 "data/maps/PetalburgCity_Gym/scripts.pory"
	trainerbattle_single TRAINER_JODY, PetalburgCity_Gym_Text_JodyIntro, PetalburgCity_Gym_Text_JodyDefeat, PetalburgCity_Gym_EventScript_SlideOpenStrengthRoomDoors
# 1026 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_JodyPostBadge
# 1027 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_JodyPostBattle, MSGBOX_AUTOCLOSE
# 1028 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1029 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1030 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenStrengthRoomDoors::
# 1031 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8005, 0
# 1032 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_OpenStrengthRoomDoors
# 1033 "data/maps/PetalburgCity_Gym/scripts.pory"
	special DrawWholeMapView
# 1034 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1035 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1036 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1037 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_JodyPostBadge::
# 1038 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_JodyPostBadge, MSGBOX_NPC
# 1039 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1040 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1041 "data/maps/PetalburgCity_Gym/scripts.pory"
@ VAR_0x8004 below is the room number
# 1042 "data/maps/PetalburgCity_Gym/scripts.pory"
@ VAR_0x8005 below is 0 when the door should be slid open and 1 when it should be unlocked immediately
# 1043 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenGymEntranceDoors::
# 1044 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 1
# 1045 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1046 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1047 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetEntranceRoomDoorMetatiles
# 1048 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1049 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1050 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenSpeedRoomDoors::
# 1051 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 2
# 1052 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1053 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1054 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetSpeedRoomDoorMetatiles
# 1055 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1056 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1057 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenAccuracyRoomDoors::
# 1058 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 3
# 1059 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1060 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1061 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetAccuracyRoomDoorMetatiles
# 1062 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1063 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1064 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenConfusionRoomDoors::
# 1065 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 4
# 1066 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1067 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1068 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetConfusionRoomDoorMetatiles
# 1069 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1070 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1071 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenDefenseRoomDoors::
# 1072 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 5
# 1073 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1074 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1075 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetDefenseRoomDoorMetatiles
# 1076 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1077 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1078 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenRecoveryRoomDoors::
# 1079 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 6
# 1080 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1081 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1082 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetRecoveryRoomDoorMetatiles
# 1083 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1084 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1085 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenStrengthRoomDoors::
# 1086 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 7
# 1087 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1088 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1089 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetStrengthRoomDoorMetatiles
# 1090 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1091 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1092 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_OpenOHKORoomDoors::
# 1093 "data/maps/PetalburgCity_Gym/scripts.pory"
	setvar VAR_0x8004, 8
# 1094 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 0, PetalburgCity_Gym_EventScript_SlideOpenRoomDoors
# 1095 "data/maps/PetalburgCity_Gym/scripts.pory"
	call_if_eq VAR_0x8005, 1, PetalburgCity_Gym_EventScript_UnlockRoomDoors
# 1096 "data/maps/PetalburgCity_Gym/scripts.pory"
	call PetalburgCity_Gym_EventScript_SetOHKORoomDoorMetatiles
# 1097 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1098 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1099 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetEntranceRoomDoorMetatiles::
# 1100 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 85, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1101 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 85, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1102 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 98, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1103 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 98, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1104 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1105 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1106 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetSpeedRoomDoorMetatiles::
# 1107 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 46, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1108 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 46, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1109 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 59, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1110 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 59, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1111 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1112 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1113 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetAccuracyRoomDoorMetatiles::
# 1114 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 59, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1115 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 59, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1116 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 72, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1117 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 72, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1118 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1119 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1120 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetConfusionRoomDoorMetatiles::
# 1121 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 20, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1122 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 20, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1123 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1124 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1125 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetDefenseRoomDoorMetatiles::
# 1126 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 20, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1127 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 20, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1128 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 33, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1129 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 33, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1130 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1131 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1132 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetRecoveryRoomDoorMetatiles::
# 1133 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 33, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1134 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 33, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1135 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1136 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1137 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetStrengthRoomDoorMetatiles::
# 1138 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 1, 7, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1139 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 2, 7, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1140 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1141 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1142 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SetOHKORoomDoorMetatiles::
# 1143 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 6, 7, METATILE_PetalburgGym_RoomEntrance_Left, FALSE
# 1144 "data/maps/PetalburgCity_Gym/scripts.pory"
	setmetatile 7, 7, METATILE_PetalburgGym_RoomEntrance_Right, FALSE
# 1145 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1146 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1147 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_SlideOpenRoomDoors::
# 1148 "data/maps/PetalburgCity_Gym/scripts.pory"
	special PetalburgGymSlideOpenRoomDoors
# 1149 "data/maps/PetalburgCity_Gym/scripts.pory"
	waitstate
# 1150 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1151 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1152 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_UnlockRoomDoors::
# 1153 "data/maps/PetalburgCity_Gym/scripts.pory"
	special PetalburgGymUnlockRoomDoors
# 1154 "data/maps/PetalburgCity_Gym/scripts.pory"
	return
# 1155 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1156 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymGuide::
# 1157 "data/maps/PetalburgCity_Gym/scripts.pory"
	lock
# 1158 "data/maps/PetalburgCity_Gym/scripts.pory"
	faceplayer
# 1159 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_DEFEATED_PETALBURG_GYM, PetalburgCity_Gym_EventScript_GymGuidePostVictory
# 1160 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymGuideAdvice, MSGBOX_DEFAULT
# 1161 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1162 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1163 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1164 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymGuidePostVictory::
# 1165 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymGuidePostVictory, MSGBOX_DEFAULT
# 1166 "data/maps/PetalburgCity_Gym/scripts.pory"
	release
# 1167 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1168 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1169 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_LeftGymStatue::
# 1170 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 1171 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE05_GET, PetalburgCity_Gym_EventScript_GymStatueCertified
# 1172 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_GymStatue
# 1173 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1174 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1175 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_RightGymStatue::
# 1176 "data/maps/PetalburgCity_Gym/scripts.pory"
	lockall
# 1177 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto_if_set FLAG_BADGE05_GET, PetalburgCity_Gym_EventScript_GymStatueCertified
# 1178 "data/maps/PetalburgCity_Gym/scripts.pory"
	goto PetalburgCity_Gym_EventScript_GymStatue
# 1179 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1180 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1181 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymStatueCertified::
# 1182 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymStatueCertified, MSGBOX_DEFAULT
# 1183 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 1184 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1185 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1186 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_EventScript_GymStatue::
# 1187 "data/maps/PetalburgCity_Gym/scripts.pory"
	msgbox PetalburgCity_Gym_Text_GymStatue, MSGBOX_DEFAULT
# 1188 "data/maps/PetalburgCity_Gym/scripts.pory"
	releaseall
# 1189 "data/maps/PetalburgCity_Gym/scripts.pory"
	end
# 1190 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1191 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadYoureHereWithYourPokemon:
# 1192 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Oh?\n"
# 1193 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You must be {PLAYER}, right?\p"
# 1194 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "ACACIA said you would be arriving.\p"
# 1195 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "We met long ago, studying to become\n"
# 1196 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "POKéMON professors together.\p"
# 1197 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I chose the path of a full-time\n"
# 1198 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GYM LEADER, but ACACIA still guides\l"
# 1199 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "and inspires me.\p"
# 1200 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "And you…\n"
# 1201 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I sense something truly special.\p"
# 1202 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "If ACACIA believes in your potential,\n"
# 1203 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "then so do I.\p"
# 1204 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Welcome to the PETALBURG GYM,\n"
# 1205 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}. Your adventure as a TRAINER\l"
# 1206 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "truly begins here.$"
# 1207 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1208 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyIdLikeAPokemon:
# 1209 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Perfect timing!$"
# 1210 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1211 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadOhYoureWallyRight:
# 1212 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: {PLAYER}, meet LUKA.\n"
# 1213 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "He's my neighbor and a bold,\l"
# 1214 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "curious prodigy.\p"
# 1215 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Ever since he was a child,\n"
# 1216 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "he's had a special bond with POKéMON.\p"
# 1217 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "He's always chasing strange\n"
# 1218 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "mysteries in HOENN, like that\l"
# 1219 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "recent comet.$"
# 1220 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1221 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyIveNeverCaughtAPokemon:
# 1222 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: I'm heading to VERDANTURF soon.\p"
# 1223 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I need to explore HOENN and\n"
# 1224 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "investigate the strange comet\l"
# 1225 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "that passed over recently.\p"
# 1226 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "But before that, I want a real\n"
# 1227 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "battle, one worthy of a proper\l"
# 1228 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "sendoff.$"
# 1229 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1230 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadHmISee:
# 1231 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Hm… I see.\n"
# 1232 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You both arrived at the perfect time.$"
# 1233 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1234 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadPlayerGoWithWally:
# 1235 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, ACACIA has an eye\n"
# 1236 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "for talent… and so do I.\p"
# 1237 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA is sharp and fearless.\p"
# 1238 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Go to ROUTE 102 and battle him.\p"
# 1239 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Then come tell me the result.$"
# 1240 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1241 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_IllLoanYouMyZigzagoon:
# 1242 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Calendula: Luka, remember your training!$"
# 1243 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1244 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyThankYouAndDadGivesPokeBall:
# 1245 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: Don’t worry, CALENDULA.\n"
# 1246 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I’ve got everything I need.$"
# 1247 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1248 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyOhWowThankYou:
# 1249 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: I'll prove you were right to\n"
# 1250 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "believe in me.$"
# 1251 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1252 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WouldYouReallyComeWithMe:
# 1253 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: {PLAYER}, ready?\n"
# 1254 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Let's head to ROUTE 102 and\l"
# 1255 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "have a battle to remember!$"
# 1256 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1257 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadSoDidItWorkOut:
# 1258 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Excellent work!\n"
# 1259 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You both did great.\p"
# 1260 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, I am confident you'll be\n"
# 1261 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "safe in the woods if your bond with\l"
# 1262 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "your POKéMON is this strong.$"
# 1263 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1264 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_WallyThankYouBye:
# 1265 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "LUKA: That was a great battle!\n"
# 1266 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You pushed me, {PLAYER}.\p"
# 1267 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I lost, but I held back a bit.\n"
# 1268 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Next time, I’ll give my full strength.\p"
# 1269 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Gotta go! That strange comet\n"
# 1270 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "in HOENN is on my mind.\p"
# 1271 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I need to learn more.\n"
# 1272 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "See you soon, {PLAYER}!$"
# 1273 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1274 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadGoCollectBadges:
# 1275 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Now…\n"
# 1276 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "{PLAYER}, to become a real TRAINER,\l"
# 1277 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "listen carefully.\p"
# 1278 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "First, go to RUSTBORO CITY.\n"
# 1279 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Challenge TERRA, the ROCK-type\l"
# 1280 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "GYM LEADER.\p"
# 1281 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Defeat her, then continue across HOENN\n"
# 1282 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "and earn badges from other GYM LEADERS.\p"
# 1283 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "But be cautious.\n"
# 1284 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Strange events have been happening,\l"
# 1285 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "and that mysterious comet passed\l"
# 1286 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "recently...\p"
# 1287 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I have a bad feeling about it.\n"
# 1288 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Stay alert, {PLAYER}, and come back\l"
# 1289 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "stronger for our GYM battle.$"
# 1290 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1291 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanGoToRustboro:
# 1292 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Hm? Aren't you heading to\n"
# 1293 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "RUSTBORO CITY's POKéMON GYM?\p"
# 1294 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "You still have much to learn.\p"
# 1295 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Keep exploring, {PLAYER}.\n"
# 1296 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "I want to help you grow.\p"
# 1297 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Return after you earn 4 BADGES,\n"
# 1298 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "then challenge me!$"
# 1299 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1300 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1301 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanGoToDewford:
# 1302 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: I see… So, you've beaten\n"
# 1303 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the GYM LEADER in RUSTBORO CITY.\p"
# 1304 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But there are many more TRAINERS\n"
# 1305 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "who are stronger than you, {PLAYER}.\p"
# 1306 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Across the sea in DEWFORD TOWN is a\n"
# 1307 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GYM LEADER named RENTON.\p"
# 1308 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You should go challenge him.$"
# 1309 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1310 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_YouHaveGottenStronger:
# 1311 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: Hm… {PLAYER}, you have gotten\n"
# 1312 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "stronger.\p"
# 1313 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I can tell by the number of BADGES\n"
# 1314 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "that you've earned.$"
# 1315 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1316 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanIntro:
# 1317 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: Hm…\n"
# 1318 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "So, you did get four GYM BADGES.\p"
# 1319 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Fine, as I promised, we will have\n"
# 1320 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a POKéMON battle.\p"
# 1321 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}…\p"
# 1322 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'm so happy that I can have\n"
# 1323 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a real battle with my own student.\p"
# 1324 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But, a battle is a battle!\p"
# 1325 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I will do everything in my power as\n"
# 1326 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a GYM LEADER to win.\p"
# 1327 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}, you'd better give it your\n"
# 1328 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "best shot, too!$"
# 1329 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1330 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanDefeat:
# 1331 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "…\p"
# 1332 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I… I can't…\p"
# 1333 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I can't believe it. {PLAYER}…\p"
# 1334 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I lost to {PLAYER}?\p"
# 1335 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But, rules are rules!\n"
# 1336 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Here, take this.$"
# 1337 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1338 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ReceivedBalanceBadge:
# 1339 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER} received the BALANCE BADGE\n"
# 1340 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "from CALENDULA!$"
# 1341 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1342 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ExplainBalanceBadgeTakeThis:
# 1343 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: With that BADGE, the DEFENSE\n"
# 1344 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "of all your POKéMON will increase.\p"
# 1345 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "POKéMON that know the HM move SURF\n"
# 1346 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "will be able to travel over water.\p"
# 1347 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This is my gift to you. {PLAYER}, I'm\n"
# 1348 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "sure you can use it correctly.$"
# 1349 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1350 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ExplainFacade:
# 1351 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: TM42 contains FACADE.\p"
# 1352 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It doubles the power of moves if\n"
# 1353 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the POKéMON is poisoned, paralyzed,\l"
# 1354 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "or burned.\p"
# 1355 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It might be able to turn a bad\n"
# 1356 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "situation into an advantage.$"
# 1357 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1358 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadHappyAndSad:
# 1359 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: As the GYM LEADER, I can't\n"
# 1360 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "express how upset I am…\p"
# 1361 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But as a mentor, it makes me both\n"
# 1362 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "happy and a little sad. It's odd…$"
# 1363 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1364 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_PleaseComeWithMe:
# 1365 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Ah, there you are, {PLAYER}{KUN}!\p"
# 1366 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Please come with me.\n"
# 1367 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I have something I want you to have.$"
# 1368 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1369 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_LetMeBorrowPlayer:
# 1370 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA, you don't mind, do you?\p"
# 1371 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Let me borrow {PLAYER}{KUN} for\n"
# 1372 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a minute or two.$"
# 1373 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1374 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadGoingToKeepTraining:
# 1375 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}, I'm really proud\n"
# 1376 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "of how far you've come.\p"
# 1377 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Battles aren't about revenge.\n"
# 1378 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "They're about growth for both of us.\p"
# 1379 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'll continue training and learning,\n"
# 1380 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "so I can guide new trainers better.\p"
# 1381 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "And when you have the time,\n"
# 1382 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "go visit ACACIA.\p"
# 1383 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "She cares about you deeply,\n"
# 1384 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "and she's always cheering you on.$"
# 1385 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1386 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DadNoAmountOfTrainingIsEnough:
# 1387 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}, how is your\n"
# 1388 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "journey going?\p"
# 1389 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The world of POKéMON is incredibly deep.\n"
# 1390 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "There is always something new to learn.\p"
# 1391 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Research, observation, and sharing\n"
# 1392 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "knowledge with young trainers -\l"
# 1393 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "that is what truly strengthens us.\p"
# 1394 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Battles are important, yes…\n"
# 1395 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "but understanding POKéMON is essential.$"
# 1396 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1397 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymGuideAdvice:
# 1398 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hey, how's it going, CHAMPION-\n"
# 1399 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "bound {PLAYER}?\p"
# 1400 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The doors in this GYM open when you\n"
# 1401 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "beat the awaiting TRAINERS.\p"
# 1402 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Whoops! The doors in this room are\n"
# 1403 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "already open, so don't attack me!\p"
# 1404 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The TRAINERS of PETALBURG GYM\n"
# 1405 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "use all kinds of items.\p"
# 1406 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The door at the left leads to\n"
# 1407 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the SPEED ROOM.\p"
# 1408 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The door at the right leads to\n"
# 1409 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the ACCURACY ROOM.\p"
# 1410 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The room's name will be on\n"
# 1411 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the door, so choose carefully.\p"
# 1412 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Once you've chosen the door…\n"
# 1413 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Well, hey, go for it!$"
# 1414 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1415 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymGuidePostVictory:
# 1416 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}! Whoa!\p"
# 1417 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You defeated CALENDULA?\n"
# 1418 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Even with all her knowledge?\p"
# 1419 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That's incredible!\n"
# 1420 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "What an unexpected outcome!$"
# 1421 "data/maps/PetalburgCity_Gym/scripts.pory"
	
# 1422 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallIntro:
# 1423 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The ability to attack before the\n"
# 1424 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "opponent…\p"
# 1425 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Just that alone puts me at a great\n"
# 1426 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "advantage, don't you agree?$"
# 1427 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1428 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallDefeat:
# 1429 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That was a magnificent battle!$"
# 1430 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1431 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallPostBattle:
# 1432 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Go on to the next room where a new\n"
# 1433 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "challenge awaits you.\p"
# 1434 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "At the left is the CONFUSION ROOM.\p"
# 1435 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The right door leads to the DEFENSE\n"
# 1436 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "ROOM.$"
# 1437 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1438 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_RandallPostBadge:
# 1439 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Whomever you beat, and whomever you\n"
# 1440 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "may lose to, you never shirk from\l"
# 1441 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "training yourself and your POKéMON.\p"
# 1442 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "That's what I think being a\n"
# 1443 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GYM LEADER is all about.$"
# 1444 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1445 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerIntro:
# 1446 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This is the CONFUSION ROOM.\p"
# 1447 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Let me see how well bonded you are\n"
# 1448 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with your POKéMON!$"
# 1449 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1450 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerDefeat:
# 1451 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I couldn't confuse your team enough…\n"
# 1452 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You share a strong bond together.$"
# 1453 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1454 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerPostBattle:
# 1455 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The next room is the STRENGTH ROOM.\n"
# 1456 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Can you withstand brute force?$"
# 1457 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1458 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_ParkerPostBadge:
# 1459 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "After you beat our LEADER, the\n"
# 1460 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "training has become a lot tougher.$"
# 1461 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1462 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeIntro:
# 1463 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Just when you think you're going to\n"
# 1464 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "win, your opponent restores HP…\p"
# 1465 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Can you just imagine how awful that\n"
# 1466 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "must feel?\p"
# 1467 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'll show you exactly how awful it\n"
# 1468 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "feels!$"
# 1469 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1470 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgeDefeat:
# 1471 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I couldn't restore HP enough…\n"
# 1472 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "What ATTACK power…$"
# 1473 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1474 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgePostBattle:
# 1475 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I shouldn't be surprised.\p"
# 1476 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Anyone who challenges CALENDULA\n"
# 1477 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "must have real determination.\p"
# 1478 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "No, wait! A TRAINER's strength\n"
# 1479 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "is earned through study and effort.\p"
# 1480 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I lost because I still have more\n"
# 1481 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "to learn.\p"
# 1482 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Go on! The ONE-HIT KO ROOM is next.$"
# 1483 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1484 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GeorgePostBadge:
# 1485 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'm going to keep training at GYMS.\n"
# 1486 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "One day, I'll become a LEADER.$"
# 1487 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1488 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeIntro:
# 1489 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'm not going to take it easy\n"
# 1490 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "just because you're her apprentice.\p"
# 1491 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I'll show you how brutal it is\n"
# 1492 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "when a POKEMON takes a critical hit!$"
# 1493 "data/maps/PetalburgCity_Gym/scripts.pory"
	
# 1494 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkeDefeat:
# 1495 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Your power…\n"
# 1496 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You're the real deal.$"
# 1497 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1498 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkePostBattle:
# 1499 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA is more than a\n"
# 1500 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "GYM LEADER.\p"
# 1501 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Her knowledge of the POKEMON\n"
# 1502 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "world is incredibly vast.\p"
# 1503 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Battling her means facing\n"
# 1504 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "both strength and wisdom.\p"
# 1505 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "If you keep growing,\n"
# 1506 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "you may shine just as brightly.$"
# 1507 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1508 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_BerkePostBadge:
# 1509 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Since CALENDULA became our\n"
# 1510 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "LEADER, we've grown a lot.\p"
# 1511 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "We've learned so much about\n"
# 1512 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the POKEMON world\l"
# 1513 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "beyond just battling.\p"
# 1514 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Knowledge and strategy matter\n"
# 1515 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "just as much as strength now.$"
# 1516 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1517 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryIntro:
# 1518 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Giggle…\n"
# 1519 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This is the ACCURACY ROOM.\p"
# 1520 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It's pretty nasty when every attack\n"
# 1521 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "lands without fail.$"
# 1522 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1523 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryDefeat:
# 1524 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You were a cut above me…$"
# 1525 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1526 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryPostBattle:
# 1527 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "There are some even stronger\n"
# 1528 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "TRAINERS waiting for you.\p"
# 1529 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The left is the DEFENSE ROOM, and\n"
# 1530 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the right is the RECOVERY ROOM.\p"
# 1531 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Your POKéMON's ATTACK power will be\n"
# 1532 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "on trial either way.$"
# 1533 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1534 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_MaryPostBadge:
# 1535 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you know what we're trying to\n"
# 1536 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "achieve as TRAINERS?\p"
# 1537 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "We're striving to become soul mates\n"
# 1538 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with our POKéMON.$"
# 1539 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1540 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaIntro:
# 1541 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The higher the DEFENSE, the more\n"
# 1542 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "reckless I can be in attack.$"
# 1543 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1544 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaDefeat:
# 1545 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Our defenses weren't enough…$"
# 1546 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1547 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaPostBattle:
# 1548 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I think you've taught me a valuable\n"
# 1549 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "lesson here.\p"
# 1550 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Now, go on! The left door goes to\n"
# 1551 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the STRENGTH ROOM.\p"
# 1552 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The right door opens to\n"
# 1553 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "the ONE-HIT KO ROOM.\p"
# 1554 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Both of them have TRAINERS who are\n"
# 1555 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "skilled at offense.$"
# 1556 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1557 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_AlexiaPostBadge:
# 1558 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hi! Have you tried using SURF?$"
# 1559 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1560 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyIntro:
# 1561 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA taught us to battle\n"
# 1562 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with focus and discipline.\p"
# 1563 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "So I'll face you seriously,\n"
# 1564 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "no holding back!$"
# 1565 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1566 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyDefeat:
# 1567 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But… I went all out!$"
# 1568 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1569 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyPostBattle:
# 1570 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "The way you battle…\n"
# 1571 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It's all strategy and control.\p"
# 1572 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It almost reminds me of\n"
# 1573 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA's style.\p"
# 1574 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You're a real prodigy.\n"
# 1575 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Go on ahead!$"
# 1576 "data/maps/PetalburgCity_Gym/scripts.pory"
	
# 1577 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_JodyPostBadge:
# 1578 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Sure, it's fine to make your POKéMON\n"
# 1579 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "stronger.\p"
# 1580 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "But what decides the winner?\p"
# 1581 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Why, it's the feelings TRAINERS have\n"
# 1582 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "for their POKéMON.$"
# 1583 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1584 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DoorAppearsLocked:
# 1585 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This door appears to be locked\n"
# 1586 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "right now…$"
# 1587 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1588 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterSpeedRoom:
# 1589 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“SPEED ROOM,” the sign says.\p"
# 1590 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 1591 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1592 "data/maps/PetalburgCity_Gym/scripts.pory"
@ Unused
# 1593 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_DoorAppearsLocked2:
# 1594 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "This door appears to be locked\n"
# 1595 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "right now…$"
# 1596 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1597 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterAccuracyRoom:
# 1598 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“ACCURACY ROOM,” the sign says.\p"
# 1599 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 1600 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1601 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterConfusionRoom:
# 1602 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“CONFUSION ROOM,” the sign says.\p"
# 1603 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 1604 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1605 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterDefenseRoom:
# 1606 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“DEFENSE ROOM,” the sign says.\p"
# 1607 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 1608 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1609 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterRecoveryRoom:
# 1610 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“RECOVERY ROOM,” the sign says.\p"
# 1611 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 1612 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1613 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterStrengthRoom:
# 1614 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“STRENGTH ROOM,” the sign says.\p"
# 1615 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 1616 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1617 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterOHKORoom:
# 1618 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“ONE-HIT KO ROOM,” the sign says.\p"
# 1619 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 1620 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1621 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_EnterGymLeadersRoom:
# 1622 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“GYM LEADER'S ROOM\p"
# 1623 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "“See for yourself what POKéMON await\n"
# 1624 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "you!” the sign says.\p"
# 1625 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you want to go through?$"
# 1626 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1627 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymStatue:
# 1628 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM$"
# 1629 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1630 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_GymStatueCertified:
# 1631 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "PETALBURG CITY POKéMON GYM\p"
# 1632 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA'S CERTIFIED TRAINERS:\n"
# 1633 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "{PLAYER}$"
# 1634 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1635 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanPreRematch:
# 1636 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}…\n"
# 1637 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I had a feeling that you would come.\p"
# 1638 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I would never refuse to accept\n"
# 1639 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a challenge from you.\p"
# 1640 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You do understand, don't you?\p"
# 1641 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Inside a GYM, it doesn't matter that\n"
# 1642 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we are a student and mentor.\p"
# 1643 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "…No, because we are student and mentor,\n"
# 1644 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we owe it to each other to do the best\l"
# 1645 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we can. Isn't that right, {PLAYER}?$"
# 1646 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1647 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanRematchDefeat:
# 1648 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Uh… Haha…\n"
# 1649 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Maybe that was going too hard…$"
# 1650 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1651 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanPostRematch:
# 1652 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}…\n"
# 1653 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "What is your dream?\p"
# 1654 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "My dream…\n"
# 1655 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hahaha…\l"
# 1656 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "It has already come true, actually.$"
# 1657 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1658 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_NormanRematchNeedTwoMons:
# 1659 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "CALENDULA: {PLAYER}…\n"
# 1660 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I had a feeling that you would come.\p"
# 1661 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "I would never refuse to accept\n"
# 1662 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "a challenge from you.\p"
# 1663 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "You do understand, don't you?\p"
# 1664 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Inside a GYM, it doesn't matter that\n"
# 1665 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "we are a parent and child.\p"
# 1666 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Hm? Wait a second, {PLAYER}.\p"
# 1667 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Do you only have one POKéMON that is\n"
# 1668 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "capable of battle?\p"
# 1669 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "Sorry, but you'll have to come back\n"
# 1670 "data/maps/PetalburgCity_Gym/scripts.pory"
	.string "with at least two POKéMON.$"
# 1671 "data/maps/PetalburgCity_Gym/scripts.pory"

# 1672 "data/maps/PetalburgCity_Gym/scripts.pory"
PetalburgCity_Gym_Text_CalendulaGaveEevee:
# 1673 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "CALENDULA: Oh, before you go...\p"
# 1674 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Since Acacia likes you, I can give\n"
# 1675 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "you something. She isn't the only one\l"
# 1676 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "who likes helping promising students!\p"
# 1677 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Take this little one.\n"
# 1678 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "It's an EEVEE.\p"
# 1679 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "My first partner was one, and I'd\n"
# 1680 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "love for you to start your path with\l"
# 1681 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "a loyal friend too.\p"
# 1682 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Ah! I almost forgot!\n"
# 1683 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Here's an EVERSTONE as well.\p"
# 1684 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "If you give this stone to EEVEE to\n"
# 1685 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "hold, it will prevent it from evolving.\p"
# 1686 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "That way, you can take your time\n"
# 1687 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "deciding which evolution is right for\l"
# 1688 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "your new partner!\p"
# 1689 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "Just take the stone away when you're\n"
# 1690 "data/maps/PetalburgCity_Gym/scripts.pory"
    .string "ready for EEVEE to evolve.$"
