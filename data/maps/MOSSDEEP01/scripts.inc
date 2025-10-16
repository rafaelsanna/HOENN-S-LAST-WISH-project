// ====================================================================
// QUEST SYSTEM - TIME GEARS (TIME FRAGMENTS)
// ====================================================================

.equiv LOCALID_MOSSDEEP_JIRACHI, 1
.equiv LOCALID_MILLENNIUM_COMET, 5
.equiv LOCALID_TIME_GEAR_1, 2
.equiv LOCALID_TIME_GEAR_2, 3
.equiv LOCALID_TIME_GEAR_3, 4
.equiv LOCALID_CELEBI_STATIC, 8
.equiv LOCALID_CELEBI_FOLLOWER, 14
.equiv LOCALID_MIGHTYENA, 6
.equiv LOCALID_POOCHYENA, 7
.equiv LOCALID_ZIGZAGOON, 9
.equiv LOCALID_SURVIVOR, 15
.equiv LOCALID_GRANDMA_MOSSDEEP01, 16
.equiv LOCALID_RIVAL_MALE, 1
.equiv LOCALID_RIVAL_FEMALE, 18
.equiv LOCALID_SECRET_PATH_PLANT_1, 24
.equiv LOCALID_SECRET_PATH_PLANT_2, 25
.equiv LOCALID_SECRET_PATH_PLANT_1_FINAL, 26
.equiv LOCALID_SECRET_PATH_PLANT_2_FINAL, 27

MOSSDEEP01_MapScripts::
	map_script MAP_SCRIPT_ON_FRAME_TABLE, MOSSDEEP01_OnFrame
	map_script MAP_SCRIPT_ON_TRANSITION, MOSSDEEP01_OnTransition
	map_script MAP_SCRIPT_ON_RESUME, MOSSDEEP01_OnResume
	.byte 0

MOSSDEEP01_OnFrame:
	map_script_2 VAR_TEMP_0, 0, MOSSDEEP01_EventScript_Prologue
	.2byte 0

MOSSDEEP01_EventScript_Prologue::
	setvar VAR_TEMP_0, 1
	lockall
	delay 120
	playse SE_M_ROCK_THROW
	setvar VAR_0x8004, 3
	setvar VAR_0x8005, 3
	setvar VAR_0x8006, 8
	setvar VAR_0x8007, 10
	special ShakeCamera
	waitstate
	delay 80
	playse SE_M_EARTHQUAKE
	setvar VAR_0x8004, 4
	setvar VAR_0x8005, 4
	setvar VAR_0x8006, 10
	setvar VAR_0x8007, 12
	special ShakeCamera
	waitstate
	delay 100
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_ExitTent
	waitmovement 0
	delay 60
	setflag FLAG_TEMP_1
	applymovement LOCALID_GRANDMA_MOSSDEEP01, Common_Movement_FacePlayer
	waitmovement 0
	msgbox MOSSDEEP01_Text_GrandmaWelcome, MSGBOX_DEFAULT
	closemessage
	delay 20
	msgbox MOSSDEEP01_Text_EarthquakeWarning, MSGBOX_DEFAULT
	setvar VAR_0x8004, 2
	setvar VAR_0x8005, 2
	setvar VAR_0x8006, 5
	setvar VAR_0x8007, 8
	special ShakeCamera
	waitstate
	playse SE_M_ROCK_THROW
	closemessage
	delay 20
	
	msgbox MOSSDEEP01_Text_GrandmaGivesCharm, MSGBOX_DEFAULT
	giveitem ITEM_SHINY_CHARM
	msgbox MOSSDEEP01_Text_GrandmaCharmExplanation, MSGBOX_DEFAULT
	
	msgbox MOSSDEEP01_Text_HoennDestroyed, MSGBOX_DEFAULT
	setvar VAR_0x8004, 1
	setvar VAR_0x8005, 1
	setvar VAR_0x8006, 2
	setvar VAR_0x8007, 5
	special ShakeCamera
	waitstate
	closemessage
	delay 20
	msgbox MOSSDEEP01_Text_PlayerDecision, MSGBOX_DEFAULT
	closemessage
	delay 15
	msgbox MOSSDEEP01_Text_GoodLuck, MSGBOX_DEFAULT
	closemessage
	setflag FLAG_MOSSDEEP_PROLOGUE_COMPLETED
	releaseall
	end

MOSSDEEP01_Movement_ExitTent:
	walk_down
	walk_down
	walk_down
	step_end

MOSSDEEP01_OnTransition:
	setrespawn HEAL_LOCATION_MOSSDEEP_01
	goto_if_set FLAG_MOSSDEEP_PROLOGUE_COMPLETED, MOSSDEEP01_SkipPrologue
	setvar VAR_TEMP_0, 0
	goto MOSSDEEP01_ContinueTransition

MOSSDEEP01_SkipPrologue:
	setvar VAR_TEMP_0, 1

MOSSDEEP01_ContinueTransition:
	call_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideStaticCelebi
	call_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideFollowerCelebi
	call_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_DisableMightyenas
	call MOSSDEEP01_EventScript_HideComet
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_HideItem1
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_HideItem2  
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_HideItem3
	call MOSSDEEP01_EventScript_SetupSecretPath
	call_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_EventScript_KeepJirachiAwake
	call MOSSDEEP01_EventScript_SetupRivalNPC
	end

MOSSDEEP01_EventScript_HideSecretPathRight::
	setflag FLAG_HIDE_SECRET_RIGHT
	return

MOSSDEEP01_EventScript_HideSecretPathUp::
	setflag FLAG_HIDE_SECRET_UP
	return
	call MOSSDEEP01_EventScript_SetupRivalNPC
	end
	
MOSSDEEP01_EventScript_DisableMightyenas::
	setobjectmovementtype LOCALID_MIGHTYENA, MOVEMENT_TYPE_WANDER_AROUND
	setobjectmovementtype LOCALID_POOCHYENA, MOVEMENT_TYPE_WANDER_AROUND
	setobjectmovementtype LOCALID_ZIGZAGOON, MOVEMENT_TYPE_WANDER_AROUND
	return

MOSSDEEP01_EventScript_HideStaticCelebi::
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
	return

MOSSDEEP01_EventScript_HideFollowerCelebi::
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_FOLLOWER
	return

MOSSDEEP01_OnResume:
	end

MOSSDEEP01_EventScript_HideComet::
	setflag FLAG_HIDE_MOSSDEEP_COMET
	return

MOSSDEEP01_EventScript_HideItem1::
	removeobject LOCALID_TIME_GEAR_1
	return

MOSSDEEP01_EventScript_HideItem2::
	removeobject LOCALID_TIME_GEAR_2
	return

MOSSDEEP01_EventScript_HideItem3::
	removeobject LOCALID_TIME_GEAR_3
	return

MOSSDEEP01_EventScript_DirectWarp::
	lock
	faceplayer
	checkitem ITEM_MACH_BIKE
	compare VAR_RESULT, TRUE
	goto_if_eq MOSSDEEP01_EventScript_DebugComplete
	goto_if_set FLAG_MOSSDEEP_QUEST_COMPLETED, MOSSDEEP01_EventScript_AlreadyCompleted
	goto_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_NeedCelebi
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_NeedMoreItems
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_NeedMoreItems
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_NeedMoreItems
	goto MOSSDEEP01_EventScript_QuestComplete

MOSSDEEP01_EventScript_DebugComplete::
	msgbox MOSSDEEP01_Text_Debug, MSGBOX_DEFAULT
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_1
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_2
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_3
	setflag FLAG_MOSSDEEP_CELEBI_RESCUED
	goto MOSSDEEP01_EventScript_QuestComplete

MOSSDEEP01_EventScript_NeedCelebi::
	msgbox MOSSDEEP01_Text_NeedCelebiFirst, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_NeedMoreItems::
	msgbox MOSSDEEP01_Text_NeedItems, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_AlreadyCompleted::
	msgbox MOSSDEEP01_Text_AlreadyHelped, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_QuestComplete::
	msgbox MOSSDEEP01_Text_ThankYou, MSGBOX_DEFAULT
	closemessage
	setflag FLAG_MOSSDEEP_QUEST_COMPLETED
	msgbox MOSSDEEP01_Text_CometAppears, MSGBOX_DEFAULT
	closemessage
	fadescreenspeed FADE_TO_BLACK, 8
	delay 40
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceUp
	waitmovement 0
	fadescreenspeed FADE_FROM_BLACK, 4
	delay 10
	clearflag FLAG_HIDE_MOSSDEEP_COMET
	addobject LOCALID_MILLENNIUM_COMET
	playse SE_SHINY
	fadescreenspeed FADE_TO_WHITE, 2
	delay 8
	fadescreenspeed FADE_FROM_WHITE, 2
	delay 30
	playse SE_THUNDERSTORM
	delay 15
	playse SE_M_SACRED_FIRE
	delay 20
	special SpawnCameraObject
	playse SE_M_SWIFT
	applymovement OBJ_EVENT_ID_CAMERA, MOSSDEEP01_Movement_CameraFollowComet
	applymovement LOCALID_MILLENNIUM_COMET, MOSSDEEP01_Movement_CometCrossingSky
	waitmovement 0
	special RemoveCameraObject
	delay 20
	playse SE_M_EXPLOSION
	delay 15
	fadescreenspeed FADE_TO_WHITE, 4
	delay 30
	playse SE_M_SOLAR_BEAM
	delay 40
	fadescreenspeed FADE_FROM_WHITE, 8
	delay 20
	removeobject LOCALID_MILLENNIUM_COMET
	setflag FLAG_HIDE_MOSSDEEP_COMET
	msgbox MOSSDEEP01_Text_TimeToWakeUp, MSGBOX_DEFAULT
	closemessage
	delay 30
	playse SE_M_TELEPORT
	fadescreenspeed FADE_TO_BLACK, 12
	delay 80
	delay 60
	setflag FLAG_VISITED_LITTLEROOT_TOWN
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
	setflag FLAG_SET_WALL_CLOCK
	setflag FLAG_RESCUED_BIRCH
	setflag FLAG_ADVENTURE_STARTED
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
	setflag FLAG_SYS_B_DASH
	setflag FLAG_RECEIVED_RUNNING_SHOES
	setvar VAR_LITTLEROOT_INTRO_STATE, 6
	setvar VAR_LITTLEROOT_TOWN_STATE, 4
	checkplayergender
	compare VAR_RESULT, MALE
	goto_if_eq MOSSDEEP01_WarpMale
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
	waitstate
	release
	end

MOSSDEEP01_WarpMale::
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
	waitstate
	release
	end

MOSSDEEP01_Movement_CameraFollowComet:
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	step_end

MOSSDEEP01_Movement_CometCrossingSky:
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	walk_fast_left
	step_end

MOSSDEEP01_EventScript_Item1::
	lock
	faceplayer
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_Item_AlreadyCollected
	msgbox MOSSDEEP01_Text_FoundItem1, MSGBOX_DEFAULT
	playfanfare MUS_OBTAIN_ITEM
	message MOSSDEEP01_Text_ObtainedTimeGear1
	waitfanfare
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_1
	removeobject LOCALID_TIME_GEAR_1
	release
	end

MOSSDEEP01_EventScript_Item2::
	lock
	faceplayer
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_Item_AlreadyCollected
	msgbox MOSSDEEP01_Text_FoundItem2, MSGBOX_DEFAULT
	playfanfare MUS_OBTAIN_ITEM
	message MOSSDEEP01_Text_ObtainedTimeGear2
	waitfanfare
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_2
	removeobject LOCALID_TIME_GEAR_2
	release
	end

MOSSDEEP01_EventScript_Item3::
	lock
	faceplayer
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_Item_AlreadyCollected
	msgbox MOSSDEEP01_Text_FoundItem3, MSGBOX_DEFAULT
	playfanfare MUS_OBTAIN_ITEM
	message MOSSDEEP01_Text_ObtainedTimeGear3
	waitfanfare
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_3
	removeobject LOCALID_TIME_GEAR_3
	release
	end

MOSSDEEP01_EventScript_Item_AlreadyCollected::
	msgbox MOSSDEEP01_Text_AlreadyCollected, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_Celebi::
	lock
	faceplayer
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_CelebiAlreadyRescued
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_CelebiNeedGears
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_CelebiNeedGears
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_CelebiNeedGears
	msgbox MOSSDEEP01_Text_CelebiPower, MSGBOX_DEFAULT
	closemessage
	playse SE_M_HYPER_BEAM
	fadescreenspeed FADE_TO_WHITE, 4
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
	clearflag FLAG_HIDE_MOSSDEEP_CELEBI_FOLLOWER
	removeobject LOCALID_CELEBI_STATIC
	addobject LOCALID_CELEBI_FOLLOWER
	delay 30
	fadescreenspeed FADE_FROM_WHITE, 4
	setflag FLAG_MOSSDEEP_CELEBI_RESCUED
	setobjectmovementtype LOCALID_MIGHTYENA, MOVEMENT_TYPE_WANDER_AROUND
	setobjectmovementtype LOCALID_POOCHYENA, MOVEMENT_TYPE_WANDER_AROUND
	setobjectmovementtype LOCALID_ZIGZAGOON, MOVEMENT_TYPE_WANDER_AROUND
	msgbox MOSSDEEP01_Text_CelebiCalmed, MSGBOX_DEFAULT
	closemessage
	msgbox MOSSDEEP01_Text_CelebiFollows, MSGBOX_DEFAULT
	closemessage
	release
	end

MOSSDEEP01_EventScript_CelebiNeedGears::
	msgbox MOSSDEEP01_Text_CelebiHelp, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_CelebiAlreadyRescued::
	msgbox MOSSDEEP01_Text_CelebiThanks, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_Mightyena::
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_MightyenaDoNothing
	lockall
	playse SE_PIN
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
	waitmovement 0
	applymovement VAR_LAST_TALKED, Common_Movement_FacePlayer
	waitmovement 0
	delay 20
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
	closemessage
	playse SE_M_BITE
	fadescreen FADE_TO_BLACK
	delay 60
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
	closemessage
	setrespawn HEAL_LOCATION_MOSSDEEP_01
	warp MAP_MOSSDEEP01, 11, 71
	waitstate
	releaseall
	end

MOSSDEEP01_EventScript_MightyenaDoNothing::
	end

MOSSDEEP01_EventScript_Survivor::
	lock
	faceplayer
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_SurvivorAfterCelebi
	msgbox MOSSDEEP01_Text_SurvivorTrapped, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_SurvivorAfterCelebi::
	goto_if_set FLAG_TEMP_14, MOSSDEEP01_EventScript_SurvivorMoved
	msgbox MOSSDEEP01_Text_SurvivorAmazed, MSGBOX_DEFAULT
	closemessage
	msgbox MOSSDEEP01_Text_SurvivorGoing, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_SURVIVOR, MOSSDEEP01_Movement_SurvivorGoUp
	waitmovement 0
	setflag FLAG_TEMP_14
	release
	end

MOSSDEEP01_EventScript_SurvivorMoved::
	msgbox MOSSDEEP01_Text_SurvivorHappy, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_Movement_SurvivorGoUp:
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	step_end

MOSSDEEP01_EventScript_Healer::
	lock
	faceplayer
	msgbox MOSSDEEP01_Text_HealerWelcome, MSGBOX_DEFAULT
	playfanfare MUS_HEAL
	msgbox MOSSDEEP01_Text_Healing, MSGBOX_DEFAULT
	waitfanfare
	special HealPlayerParty
	msgbox MOSSDEEP01_Text_HealedComplete, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_Grandma::
	lock
	faceplayer
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandmaAfterFirstTalk
	
	msgbox MOSSDEEP01_Text_GrandmaReminder, MSGBOX_DEFAULT
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
	release
	end

MOSSDEEP01_EventScript_GrandmaAfterFirstTalk::
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_Grandpa::
	lock
	faceplayer
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandpaAfter
	msgbox MOSSDEEP01_Text_GrandpaFirstTalk, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_GrandpaAfter::
	msgbox MOSSDEEP01_Text_GrandpaAfterTalk, MSGBOX_DEFAULT
	release
	end

// ====================================================================
// OPPOSITE GENDER RIVAL NPC
// ====================================================================

MOSSDEEP01_EventScript_SetupRivalNPC::
	checkplayergender
	compare VAR_RESULT, MALE
	goto_if_eq MOSSDEEP01_EventScript_ShowFemaleRival
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
	return

MOSSDEEP01_EventScript_ShowFemaleRival::
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
	return

MOSSDEEP01_EventScript_RivalMale::
	lock
	faceplayer
	random 4
	compare VAR_RESULT, 0
	goto_if_eq MOSSDEEP01_RivalMale_Case0
	compare VAR_RESULT, 1
	goto_if_eq MOSSDEEP01_RivalMale_Case1
	compare VAR_RESULT, 2
	goto_if_eq MOSSDEEP01_RivalMale_Case2
	compare VAR_RESULT, 3
	goto_if_eq MOSSDEEP01_RivalMale_Case3
	release
	end

MOSSDEEP01_RivalMale_Case0::
	msgbox MOSSDEEP01_Text_RivalMale01, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_RivalMale_Case1::
	msgbox MOSSDEEP01_Text_RivalMale02, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_RivalMale_Case2::
	msgbox MOSSDEEP01_Text_RivalMale03, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_RivalMale_Case3::
	msgbox MOSSDEEP01_Text_RivalMale04, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_RivalFemale::
	lock
	faceplayer
	random 4
	compare VAR_RESULT, 0
	goto_if_eq MOSSDEEP01_RivalFemale_Case0
	compare VAR_RESULT, 1
	goto_if_eq MOSSDEEP01_RivalFemale_Case1
	compare VAR_RESULT, 2
	goto_if_eq MOSSDEEP01_RivalFemale_Case2
	compare VAR_RESULT, 3
	goto_if_eq MOSSDEEP01_RivalFemale_Case3
	release
	end

MOSSDEEP01_RivalFemale_Case0::
	msgbox MOSSDEEP01_Text_RivalFemale01, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_RivalFemale_Case1::
	msgbox MOSSDEEP01_Text_RivalFemale02, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_RivalFemale_Case2::
	msgbox MOSSDEEP01_Text_RivalFemale03, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_RivalFemale_Case3::
	msgbox MOSSDEEP01_Text_RivalFemale04, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_Child01::
	lock
	faceplayer
	msgbox MOSSDEEP01_Text_Child01, MSGBOX_DEFAULT
	release
	end	

MOSSDEEP01_EventScript_Child02::
	lock
	faceplayer
	msgbox MOSSDEEP01_Text_Child02, MSGBOX_DEFAULT
	release
	end	

// ====================================================================
// ====================================================================
// SECRET PATH PLANTS - SIMPLE SOLUTION WITHOUT HOLES
// ====================================================================

MOSSDEEP01_EventScript_SecretPathPlant::
	end

// ====================================================================
// SETUP - SMALL PLANTS ALWAYS VISIBLE
// ====================================================================

MOSSDEEP01_EventScript_SetupSecretPath::
	// Small plants always visible
	addobject LOCALID_SECRET_PATH_PLANT_1
	addobject LOCALID_SECRET_PATH_PLANT_2
	
	// If already triggered, show big plants too
	goto_if_set FLAG_SECRET_PATH_TRIGGERED, MOSSDEEP01_PlantsFinalState
	
	// If NOT triggered, hide big plants
	setflag FLAG_HIDE_SECRET_PATH_FINAL
	return

MOSSDEEP01_PlantsFinalState::
	// Show big plants (overlay the small ones)
	clearflag FLAG_HIDE_SECRET_PATH_FINAL
	addobject LOCALID_SECRET_PATH_PLANT_1_FINAL
	addobject LOCALID_SECRET_PATH_PLANT_2_FINAL
	return

// ====================================================================
// TRIGGER - ACTIVATE BIG PLANTS WITHOUT HOLE
// ====================================================================

MOSSDEEP01_EventScript_SecretPathTrigger::
	lockall
	goto_if_set FLAG_SECRET_PATH_TRIGGERED, MOSSDEEP01_PathAlreadyOpen
	goto_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_PathBlocked
	
	// Initial message
	msgbox MOSSDEEP01_Text_CelebiSensesPath, MSGBOX_DEFAULT
	closemessage
	delay 15
	
	playse SE_M_HYPER_BEAM
	delay 20
	
	// Animation on SMALL plants (they continue to exist)
	turnobject LOCALID_SECRET_PATH_PLANT_1, DIR_NORTH
	playse SE_M_PSYBEAM
	turnobject LOCALID_SECRET_PATH_PLANT_2, DIR_NORTH
	delay 20
	
	turnobject LOCALID_SECRET_PATH_PLANT_1, DIR_WEST
	playse SE_M_SWIFT
	turnobject LOCALID_SECRET_PATH_PLANT_2, DIR_WEST
	delay 25
	
	// KEY: Add big plants BEFORE clearing flag
	// This makes them appear instantly over the small ones
	addobject LOCALID_SECRET_PATH_PLANT_1_FINAL
	addobject LOCALID_SECRET_PATH_PLANT_2_FINAL
	clearflag FLAG_HIDE_SECRET_PATH_FINAL
	
	// Success message
	msgbox MOSSDEEP01_Text_PathRevealed, MSGBOX_DEFAULT
	closemessage
	
	setflag FLAG_SECRET_PATH_TRIGGERED
	releaseall
	end

MOSSDEEP01_PathAlreadyOpen::
	releaseall
	end

MOSSDEEP01_PathBlocked::
	msgbox MOSSDEEP01_Text_PathBlocked, MSGBOX_DEFAULT
	closemessage
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
	waitmovement 0
	releaseall
	end

// ====================================================================
// JIRACHI WAKE EVENT - TRIGGER BASED (NOT NPC TALK)
// ====================================================================

MOSSDEEP01_EventScript_JirachiObject::
	end

// ====================================================================
// JIRACHI WAKE TRIGGER - STEP ON IT TO WAKE JIRACHI
// ====================================================================

MOSSDEEP01_EventScript_JirachiTrigger::
	lockall
	
	// If already awake, do nothing
	goto_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiAlreadyAwake
	
	// First time - wake up Jirachi
	msgbox MOSSDEEP01_Text_JirachiWaking, MSGBOX_DEFAULT
	closemessage
	delay 15
	
	// White flash effect
	fadescreenspeed FADE_TO_WHITE, 4
	playse SE_M_PSYBEAM
	delay 10
	fadescreenspeed FADE_FROM_WHITE, 4
	delay 15
	
	// Jirachi middle frame (waking up)
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_SOUTH
	playse SE_M_PSYBEAM
	delay 20
	
	// Jirachi front frame (fully awake)
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_NORTH
	playse SE_M_SWIFT
	delay 20
	
	setflag FLAG_JIRACHI_AWAKE
	msgbox MOSSDEEP01_Text_JirachiAwoken, MSGBOX_DEFAULT
	closemessage
	releaseall
	end

MOSSDEEP01_JirachiAlreadyAwake::
	releaseall
	end

// ====================================================================
// ON TRANSITION - KEEP JIRACHI AWAKE STATE
// ====================================================================

// Add this to your MOSSDEEP01_ContinueTransition:
// call_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_EventScript_KeepJirachiAwake

MOSSDEEP01_EventScript_KeepJirachiAwake::
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_NORTH
	return

MOSSDEEP01_EventScript_Jirachi::
	lock
	faceplayer
	
	// If not awake yet, tell player to approach trigger first
	goto_if_unset FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiSleeping
	
	// Check if all conditions are met for meteor event
	goto_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_JirachiNeedCelebi
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_JirachiNeedItems
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_JirachiNeedItems
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_JirachiNeedItems
	goto_if_set FLAG_MOSSDEEP_QUEST_COMPLETED, MOSSDEEP01_JirachiAlreadyCompleted
	
	// All conditions met - trigger meteor event
	goto MOSSDEEP01_EventScript_DirectWarp

MOSSDEEP01_JirachiNeedCelebi::
	msgbox MOSSDEEP01_Text_JirachiNeedCelebi, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_JirachiNeedItems::
	msgbox MOSSDEEP01_Text_JirachiNeedItems, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_JirachiAlreadyCompleted::
	msgbox MOSSDEEP01_Text_JirachiCompleted, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_JirachiSleeping::
	msgbox MOSSDEEP01_Text_JirachiStillSleeping, MSGBOX_DEFAULT
	release
	end	

// ====================================================================
// TEXTS
// ====================================================================

MOSSDEEP01_Text_Debug:
	.string "DEBUG: Auto-collecting all TIME GEARS\n"
	.string "and rescuing CELEBI!$"

MOSSDEEP01_Text_NeedCelebiFirst:
	.string "JIRACHI: I sense something...\p"
	.string "The Guardian of the Forest,\n"
	.string "CELEBI, is in danger!\p"
	.string "Please, help CELEBI first!\n"
	.string "Only then can I assist you.$"

MOSSDEEP01_Text_NeedItems:
	.string "JIRACHI: Thank you for saving CELEBI!\p"
	.string "Now, the flow of time is broken!\p"
	.string "Please find the 3 TIME GEARS\n"
	.string "scattered around this place.\p"
	.string "Only then can I send you home!$"

MOSSDEEP01_Text_ThankYou:
	.string "JIRACHI: You found all the TIME GEARS!\p"
	.string "The temporal flow is restoring...\n"
	.string "Look! The Millennium Comet!$"

MOSSDEEP01_Text_CometAppears:
	.string "The sky begins to glow!\p"
	.string "A brilliant comet streaks across\n"
	.string "the heavens!$"

MOSSDEEP01_Text_TimeToWakeUp:
	.string "JIRACHI: The timeline is restored!\p"
	.string "It's time to wake up from this dream...$"

MOSSDEEP01_Text_AlreadyHelped:
	.string "JIRACHI: You already helped restore\n"
	.string "the flow of time!\p"
	.string "Thank you, time traveler!$"

MOSSDEEP01_Text_FoundItem1:
	.string "{PLAYER} found something shining\n"
	.string "in the sand...$"

MOSSDEEP01_Text_ObtainedTimeGear1:
	.string "{PLAYER} obtained the TIME GEAR\n"
	.string "of the PAST!$"

MOSSDEEP01_Text_FoundItem2:
	.string "{PLAYER} discovered something glowing\n"
	.string "among the rocks...$"

MOSSDEEP01_Text_ObtainedTimeGear2:
	.string "{PLAYER} obtained the TIME GEAR\n"
	.string "of the PRESENT!$"

MOSSDEEP01_Text_FoundItem3:
	.string "{PLAYER} noticed something sparkling\n"
	.string "in the water...$"

MOSSDEEP01_Text_ObtainedTimeGear3:
	.string "{PLAYER} obtained the TIME GEAR\n"
	.string "of the FUTURE!$"

MOSSDEEP01_Text_AlreadyCollected:
	.string "This place seems peaceful now.$"

MOSSDEEP01_Text_CelebiHelp:
	.string "CELEBI: ... ... ...\p"
	.string "The flow of time is broken...\p"
	.string "Please... find the 3 TIME GEARS...\n"
	.string "Only then can I be freed...$"

MOSSDEEP01_Text_CelebiPower:
	.string "CELEBI: You found all the TIME GEARS!\p"
	.string "Now I can use my power to restore\n"
	.string "the temporal flow!$"

MOSSDEEP01_Text_CelebiCalmed:
	.string "The wild POKéMON have calmed down!$"

MOSSDEEP01_Text_CelebiFollows:
	.string "CELEBI: Thank you for saving me!\n"
	.string "I will accompany you on your journey.$"

MOSSDEEP01_Text_CelebiThanks:
	.string "CELEBI: Thank you, {PLAYER}!\n"
	.string "Together we restored time!$"

MOSSDEEP01_Text_MightyenaAttack:
	.string "The wild MIGHTYENA attacks!$"

MOSSDEEP01_Text_MightyenaBlackedOut:
	.string "The wild POKéMON are too aggressive!\n"
	.string "You blacked out!$"

MOSSDEEP01_Text_SurvivorTrapped:
	.string "SURVIVOR: Help! These wild POKéMON\n"
	.string "are too aggressive!\p"
	.string "I can't escape!$"

MOSSDEEP01_Text_SurvivorAmazed:
	.string "SURVIVOR: Incredible! The POKéMON\n"
	.string "suddenly calmed down!\p"
	.string "What happened?$"

MOSSDEEP01_Text_SurvivorGoing:
	.string "SURVIVOR: I'm going to find a safer\n"
	.string "place. Thank you!$"

MOSSDEEP01_Text_SurvivorHappy:
	.string "SURVIVOR: I feel much safer now.\n"
	.string "Thank you for your help!$"

MOSSDEEP01_Text_HealerWelcome:
	.string "HEALER: Let me heal your POKéMON.$"

MOSSDEEP01_Text_Healing:
	.string "Healing POKéMON...$"

MOSSDEEP01_Text_HealedComplete:
	.string "HEALER: Your POKéMON are fully\n"
	.string "healed! Good luck!$"

MOSSDEEP01_Text_GrandmaWelcome:
	.string "GRANDMA: {PLAYER}! You're awake!\p"
	.string "The earthquake was terrible...\n"
	.string "Many people are trapped...$"

MOSSDEEP01_Text_EarthquakeWarning:
	.string "GRANDMA: Another tremor!\n"
	.string "Be careful out there!$"

MOSSDEEP01_Text_GrandmaGivesCharm:
	.string "GRANDMA: Take this SHINY CHARM.\n"
	.string "It might bring you luck!$"

MOSSDEEP01_Text_GrandmaCharmExplanation:
	.string "GRANDMA: This charm increases your\n"
	.string "chances of finding rare POKéMON.\p"
	.string "Use it well!$"

MOSSDEEP01_Text_HoennDestroyed:
	.string "GRANDMA: The HOENN region...\n"
	.string "It's been completely destroyed...\p"
	.string "But there are survivors who need\n"
	.string "help. Please, {PLAYER}, help them!$"

MOSSDEEP01_Text_PlayerDecision:
	.string "{PLAYER} decides to help the survivors\n"
	.string "and explore the devastated area.$"

MOSSDEEP01_Text_GoodLuck:
	.string "GRANDMA: Good luck, {PLAYER}!\n"
	.string "Be very careful!$"

MOSSDEEP01_Text_GrandmaReminder:
	.string "GRANDMA: Please help the survivors!\n"
	.string "And be careful with the wild POKéMON.$"

MOSSDEEP01_Text_GrandmaEncouragement:
	.string "GRANDMA: You're doing great, {PLAYER}!\n"
	.string "Keep helping people!$"

MOSSDEEP01_Text_GrandpaFirstTalk:
	.string "GRANDPA: The world has changed...\n"
	.string "Everything is so different now...$"

MOSSDEEP01_Text_GrandpaAfterTalk:
	.string "GRANDPA: Thank you for helping\n"
	.string "everyone, {PLAYER}. You're a hero!$"

MOSSDEEP01_Text_RivalMale01:
	.string "RIVAL: Hey {PLAYER}! I'm helping\n"
	.string "the survivors too!\p"
	.string "Let's work together!$"

MOSSDEEP01_Text_RivalMale02:
	.string "RIVAL: These wild POKéMON are\n"
	.string "really aggressive!\p"
	.string "Be careful out there!$"

MOSSDEEP01_Text_RivalMale03:
	.string "RIVAL: I heard there's a special\n"
	.string "POKéMON that can help us.\p"
	.string "Let's find it!$"

MOSSDEEP01_Text_RivalMale04:
	.string "RIVAL: We can do this, {PLAYER}!\n"
	.string "Together we'll save everyone!$"

MOSSDEEP01_Text_RivalFemale01:
	.string "RIVAL: {PLAYER}! I'm so glad\n"
	.string "you're safe!\p"
	.string "Let's help the survivors together!$"

MOSSDEEP01_Text_RivalFemale02:
	.string "RIVAL: The wild POKéMON are\n"
	.string "acting so strange...\p"
	.string "Something must be wrong!$"

MOSSDEEP01_Text_RivalFemale03:
	.string "RIVAL: I heard about a legendary\n"
	.string "POKéMON that controls time.\p"
	.string "Maybe it can help us!$"

MOSSDEEP01_Text_RivalFemale04:
	.string "RIVAL: We make a great team,\n"
	.string "{PLAYER}! Let's keep going!$"

MOSSDEEP01_Text_Child01:
	.string "CHILD: I'm scared...\n"
	.string "Where are my parents?$"

MOSSDEEP01_Text_Child02:
	.string "CHILD: The ground shook really hard...\n"
	.string "Then everything changed...$"

MOSSDEEP01_Text_CelebiSensesPath:
	.string "CELEBI senses something hidden\n"
	.string "in this area...$"

MOSSDEEP01_Text_PathRevealed:
	.string "CELEBI's power reveals a hidden path!$"

MOSSDEEP01_Text_PathBlocked:
	.string "The path is blocked by strange plants.\n"
	.string "You cannot pass.$"

MOSSDEEP01_Text_JirachiWaking:
	.string "A mysterious POKéMON is sleeping\n"
	.string "near the rocks...\p"
	.string "It seems to be waking up!$"

MOSSDEEP01_Text_JirachiAwoken:
	.string "JIRACHI has awoken!$"

MOSSDEEP01_Text_JirachiNeedCelebi:
	.string "JIRACHI: I sense temporal disturbance...\n"
	.string "The forest guardian needs help!\p"
	.string "Please rescue CELEBI first!$"

MOSSDEEP01_Text_JirachiNeedItems:
	.string "JIRACHI: Thank you for saving CELEBI!\n"
	.string "But time is still broken...\p"
	.string "Please find the 3 TIME GEARS\n"
	.string "to restore temporal flow!$"

MOSSDEEP01_Text_JirachiCompleted:
	.string "JIRACHI: You restored the timeline!\n"
	.string "Thank you, time traveler!$"

MOSSDEEP01_Text_JirachiStillSleeping:
	.string "JIRACHI is sleeping peacefully...\n"
	.string "Maybe you should approach it?$"





