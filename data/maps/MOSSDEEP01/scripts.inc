// ====================================================================
// MOSSDEEP01 - TIME GEARS QUEST CELEBI + JIRACHI
// Simplified - Wailord Blocking Path (No Secret Plants)
// ====================================================================

// Local IDs

// ====================================================================
// MAP SCRIPTS
// ====================================================================

MOSSDEEP01_MapScripts::
	map_script MAP_SCRIPT_ON_FRAME_TABLE, MOSSDEEP01_OnFrame
	map_script MAP_SCRIPT_ON_TRANSITION, MOSSDEEP01_OnTransition
	map_script MAP_SCRIPT_ON_RESUME, MOSSDEEP01_OnResume
	.byte 0

MOSSDEEP01_OnFrame:
	map_script_2 VAR_TEMP_0, 0, MOSSDEEP01_EventScript_Prologue
	.2byte 0

MOSSDEEP01_OnTransition:
	setrespawn HEAL_LOCATION_MOSSDEEP_01
	goto_if_set FLAG_MOSSDEEP_PROLOGUE_COMPLETED, MOSSDEEP01_SkipPrologue
	setvar VAR_TEMP_0, 0
	goto MOSSDEEP01_ContinueTransition

MOSSDEEP01_SkipPrologue:
	setvar VAR_TEMP_0, 1

MOSSDEEP01_ContinueTransition:
	// Hide/show Celebi based on rescue status
	call_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideStaticCelebi
	call_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideFollowerCelebi
	
    // Wailord management: hide UNTIL Celebi is rescued
    call_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideWailord
    call_if_set   FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_ShowWailord
	
	// Hide comet initially
	call MOSSDEEP01_EventScript_HideComet
	
	// Hide collected items
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_HideItem1
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_HideItem2  
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_HideItem3
	
	// Keep Jirachi awake if already awoken
	call_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_EventScript_KeepJirachiAwake
	
	// Setup rival NPC (gender-based)
	call MOSSDEEP01_EventScript_SetupRivalNPC
	
	// Manage Wally and Pidgeot visibility
	call_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_HideInitialWally
	call_if_unset FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_ShowInitialWally
	call_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_ShowCloneWally
	call_if_unset FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_HideCloneWally
	
	end

MOSSDEEP01_OnResume:
	end

// ====================================================================
// PROLOGUE EVENT
// ====================================================================

MOSSDEEP01_EventScript_Prologue::
	setvar VAR_TEMP_0, 1
	lockall
	delay 120
	
	// Earthquake effects
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
	
	// Player exits tent
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_ExitTent
	waitmovement 0
	delay 60
	
	// Grandma dialogue
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
	
	// Give Shiny Charm
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

// ====================================================================
// UTILITY FUNCTIONS
// ====================================================================

MOSSDEEP01_EventScript_HideStaticCelebi::
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
	return

MOSSDEEP01_EventScript_HideFollowerCelebi::
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_FOLLOWER
	return

MOSSDEEP01_EventScript_HideWailord::
	setflag FLAG_HIDE_WAILORD_PATH
	return

MOSSDEEP01_EventScript_ShowWailord::
	clearflag FLAG_HIDE_WAILORD_PATH
	setobjectsubpriority LOCALID_WAILORD_BLOCKER, MAP_MOSSDEEP01, 0xFF
	return

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

MOSSDEEP01_EventScript_HideInitialWally::
	setflag FLAG_HIDE_WALLY_INITIAL
	setflag FLAG_HIDE_PIDGEOT_INITIAL
	return

MOSSDEEP01_EventScript_ShowInitialWally::
	clearflag FLAG_HIDE_WALLY_INITIAL
	clearflag FLAG_HIDE_PIDGEOT_INITIAL
	return

MOSSDEEP01_EventScript_ShowCloneWally::
	clearflag FLAG_HIDE_WALLY_CLONE
	clearflag FLAG_HIDE_PIDGEOT_CLONE
	return

MOSSDEEP01_EventScript_HideCloneWally::
	setflag FLAG_HIDE_WALLY_CLONE
	setflag FLAG_HIDE_PIDGEOT_CLONE
	return

MOSSDEEP01_EventScript_KeepJirachiAwake::
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_NORTH
	return

// ====================================================================
// TIME GEAR COLLECTION
// ====================================================================

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

// ====================================================================
// CELEBI RESCUE EVENT
// ====================================================================

// No evento de interação com Celebi, após mostrar o Wailord:
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
	
	// Transform static Celebi into follower
	fadescreenswapbuffers FADE_TO_BLACK
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
	fadescreenswapbuffers FADE_FROM_BLACK
	
	setflag FLAG_MOSSDEEP_CELEBI_RESCUED
	
	// Show Wailord path and set subpriority to walk over it
	clearflag FLAG_HIDE_WAILORD_PATH
	setobjectsubpriority LOCALID_WAILORD_BLOCKER, MAP_MOSSDEEP01, 0xFF
	msgbox MOSSDEEP01_Text_CelebiCallsWailord, MSGBOX_DEFAULT
	closemessage
	delay 20

	// Set Celebi as follower
	destroyfollowernpc
	setfollowernpc LOCALID_CELEBI_STATIC, FNPC_ALL, NULL, 0

	msgbox MOSSDEEP01_Text_CelebiCalmed, MSGBOX_DEFAULT
	closemessage
	release
	end

MOSSDEEP01_EventScript_CelebiNeedGears::
	showmonpic SPECIES_ARAQUANID, 10, 3
	msgbox MOSSDEEP01_Text_CelebiHelp, MSGBOX_DEFAULT
	hidemonpic
	release
	end

MOSSDEEP01_EventScript_CelebiAlreadyRescued::
	msgbox MOSSDEEP01_Text_CelebiThanks, MSGBOX_DEFAULT
	release
	end

// ====================================================================
// MIGHTYENA ZONE TRIGGER
// ====================================================================

MOSSDEEP01_EventScript_MightyenaZone::
	lockall
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_MightyenaZone_Safe
	
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_ExclamationMark
	waitmovement 0
	delay 20
	
	call MOSSDEEP01_EventScript_FindNearestMightyena
	applymovement VAR_0x8008, Common_Movement_ExclamationMark
	waitmovement 0
	applymovement VAR_0x8008, Common_Movement_FacePlayer
	waitmovement 0
	
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
	closemessage
	playse SE_M_BITE
	fadescreen FADE_TO_BLACK
	delay 60
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
	closemessage
	
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
	
	setrespawn HEAL_LOCATION_MOSSDEEP_01
	warp MAP_MOSSDEEP01, 14, 67
	waitstate
	releaseall
	end

MOSSDEEP01_EventScript_FindNearestMightyena::
	setvar VAR_0x8008, 0
	return

MOSSDEEP01_MightyenaZone_Safe::
	releaseall
	end

// Wing Interaction
MOSSDEEP01_EventScript_Wingull::
	lock
	faceplayer
	playmoncry SPECIES_WINGULL, CRY_MODE_NORMAL
	waitmoncry
	release
	end


// ====================================================================
// MIGHTYENA NPC INTERACTION
// ====================================================================

MOSSDEEP01_EventScript_Mightyena::
	applymovement VAR_LAST_TALKED, Common_Movement_FacePlayer
	waitmovement 0
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_MightyenaFriendly
	delay 20
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
	closemessage
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
	playse SE_M_BITE
	fadescreen FADE_TO_BLACK
	delay 60
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
	closemessage
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
	setrespawn HEAL_LOCATION_MOSSDEEP_01
	warp MAP_MOSSDEEP01, 11, 71
	waitstate
	releaseall
	end

MOSSDEEP01_EventScript_MightyenaFriendly::
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
	msgbox MOSSDEEP01_Text_MightyenaFriendly, MSGBOX_DEFAULT
	releaseall
	end

// ====================================================================
// POKEMON NPC INTERACTIONS
// ====================================================================

MOSSDEEP01_EventScript_PidgeotInitial::
	lock
	faceplayer
	playmoncry SPECIES_PIDGEOT, CRY_MODE_NORMAL
	msgbox MOSSDEEP01_Text_PidgeotGreeting, MSGBOX_DEFAULT
	waitmoncry
	release
	end

MOSSDEEP01_EventScript_Bulbasaur::
	lock
	faceplayer
	playmoncry SPECIES_BULBASAUR, CRY_MODE_NORMAL
	waitmoncry
	release
	end

MOSSDEEP01_EventScript_Totodile::
	lock
	faceplayer
	playmoncry SPECIES_TOTODILE, CRY_MODE_NORMAL
	waitmoncry
	release
	end

MOSSDEEP01_EventScript_Torchic::
	lock
	faceplayer
	playmoncry SPECIES_TORCHIC, CRY_MODE_NORMAL
	waitmoncry
	release
	end

// ====================================================================
// WALLY NPC - SIMPLIFIED
// ====================================================================

MOSSDEEP01_EventScript_Wally::
	lock
	faceplayer
	goto_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_WallyAfterIntro
	
	// Check if attacked by Mightyenas
	goto_if_unset FLAG_WALLY_ATTACKED_BY_MIGHTYENA, MOSSDEEP01_EventScript_WallyNotReady
	
	// First conversation (after attack)
	msgbox MOSSDEEP01_Text_WallyIntro, MSGBOX_DEFAULT
	closemessage
	setflag FLAG_WALLY_INTRO_DONE
	
	// Hide initial Wally and Pidgeot
	setflag FLAG_HIDE_WALLY_INITIAL
	setflag FLAG_HIDE_PIDGEOT_INITIAL
	
	// Show Wally and Pidgeot at new position
	clearflag FLAG_HIDE_WALLY_CLONE
	clearflag FLAG_HIDE_PIDGEOT_CLONE
	
	// Teleport player
	warp MAP_MOSSDEEP01, 47, 45
	waitstate

	msgbox MOSSDEEP01_Text_WallyWarped, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_WallyNotReady::
	msgbox MOSSDEEP01_Text_WallyNotReady, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_WallyAfterIntro::
	msgbox MOSSDEEP01_Text_WallyAfterCelebi, MSGBOX_DEFAULT
	release
	end

// ====================================================================
// SURVIVOR NPC
// ====================================================================

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

// ====================================================================
// HEALER NPC
// ====================================================================

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

// ====================================================================
// GRANDMA EVENT WITH STORY //
// ====================================================================

MOSSDEEP01_EventScript_Grandma::
	lock
	faceplayer
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandmaAfterFirstTalk
	
	msgbox MOSSDEEP01_Text_GrandmaAskStory, MSGBOX_YESNO
	compare VAR_RESULT, YES
	goto_if_eq MOSSDEEP01_EventScript_TellStory
	msgbox MOSSDEEP01_Text_GrandmaBeCareful, MSGBOX_DEFAULT
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
	release
	end

MOSSDEEP01_EventScript_TellStory::
	fadeoutbgm 0
	fadescreen FADE_TO_BLACK
	
	showmonpic SPECIES_AEGISLASH, 10, 3
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
	msgbox MOSSDEEP01_Text_GrandmaStory1, MSGBOX_DEFAULT
	hidemonpic
	
	showmonpic SPECIES_ALOMOMOLA, 10, 3
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
	msgbox MOSSDEEP01_Text_GrandmaStory2, MSGBOX_DEFAULT
	hidemonpic

	showmonpic SPECIES_AVALUGG, 10, 3
	playse SE_M_SURF
	playse SE_M_THUNDERBOLT
	msgbox MOSSDEEP01_Text_GrandmaStory3, MSGBOX_DEFAULT
	hidemonpic
	
	showmonpic SPECIES_AMAURA, 10, 3
	msgbox MOSSDEEP01_Text_GrandmaStory4, MSGBOX_DEFAULT
	hidemonpic

	showmonpic SPECIES_AROMATISSE, 10, 3
	msgbox MOSSDEEP01_Text_GrandmaStory5, MSGBOX_DEFAULT
	hidemonpic

	showmonpic SPECIES_ARROKUDA, 10, 3
	msgbox MOSSDEEP01_Text_GrandmaStory6, MSGBOX_DEFAULT
	hidemonpic

	showmonpic SPECIES_AUDINO, 10, 3
	msgbox MOSSDEEP01_Text_GrandmaStory7, MSGBOX_DEFAULT
	hidemonpic

	showmonpic SPECIES_AURORUS, 10, 3
	msgbox MOSSDEEP01_Text_GrandmaStory8, MSGBOX_DEFAULT
	hidemonpic

	showmonpic SPECIES_AMOONGUSS, 10, 3
	msgbox MOSSDEEP01_Text_GrandmaStory9, MSGBOX_DEFAULT
	hidemonpic
	
	showmonpic SPECIES_APPLIN, 10, 3
	msgbox MOSSDEEP01_Text_GrandmaStory10, MSGBOX_DEFAULT
	hidemonpic
	
	showmonpic SPECIES_APPLETUN, 10, 3
	msgbox MOSSDEEP01_Text_GrandmaStory11, MSGBOX_DEFAULT
	hidemonpic

	showmonpic SPECIES_AXEW, 10, 3
	msgbox MOSSDEEP01_Text_GrandmaStory12, MSGBOX_DEFAULT
	hidemonpic
	
	showmonpic SPECIES_ARBOLIVA, 10, 3
	msgbox MOSSDEEP01_Text_GrandmaStory13, MSGBOX_DEFAULT
	hidemonpic

	showmonpic SPECIES_ARCHEN, 10, 3
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
	hidemonpic

	fadescreen FADE_FROM_BLACK
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
	release
	end

MOSSDEEP01_EventScript_GrandmaAfterFirstTalk::
	msgbox MOSSDEEP01_Text_GrandmaAskAgain, MSGBOX_YESNO
	compare VAR_RESULT, YES
	goto_if_eq MOSSDEEP01_EventScript_TellStory
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
// RIVAL NPC (GENDER-BASED)
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
// WAILORD BLOCKER - Simple blocking system
// ====================================================================

MOSSDEEP01_EventScript_WailordBlocker::
	lock
	faceplayer
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WailordGone
	msgbox MOSSDEEP01_Text_WailordBlocking, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_WailordGone::
	msgbox MOSSDEEP01_Text_PathNowOpen, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_WailordBlocksPath::
    lockall
    msgbox MOSSDEEP01_Text_WailordBlocks, MSGBOX_DEFAULT
    closemessage
    applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
    waitmovement 0
    releaseall
    end

MOSSDEEP01_EventScript_WailordPathClear::
    // Path is clear, do nothing
    end

MOSSDEEP01_EventScript_Wailord::
    lock
    faceplayer
    msgbox MOSSDEEP01_Text_WailordIdle, MSGBOX_DEFAULT
    release
    end

MOSSDEEP01_EventScript_Wailmer::
    lock
    faceplayer
    msgbox MOSSDEEP01_Text_WailmerIdle, MSGBOX_DEFAULT
    release
    end

MOSSDEEP01_EventScript_WailordJumpOver::
	lockall
	// Pula no lugar virado para cima
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_JumpOverWailordUp
	waitmovement 0
	playse SE_BIKE_HOP
	
	// Move o jogador para o outro lado (atravessa o Wailord)
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_CrossWailordUp
	waitmovement 0
	playse SE_BIKE_HOP
	releaseall
	end

MOSSDEEP01_Movement_JumpOverWailordUp:
	jump_in_place_up     // EXISTE - pulo no lugar virado para cima
	delay_4
	jump_in_place_up     // Segundo pulo para efeito
	step_end

MOSSDEEP01_Movement_CrossWailordUp:
	walk_up              // Atravessa o Wailord
	walk_up
	walk_up  
	step_end	

// ====================================================================
// JIRACHI WAKE EVENT - TRIGGER BASED
// ====================================================================

MOSSDEEP01_EventScript_JirachiTrigger::
	lockall
	
	goto_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiAlreadyAwake
	
	msgbox MOSSDEEP01_Text_JirachiWaking, MSGBOX_DEFAULT
	closemessage
	delay 15
	
	fadescreenspeed FADE_TO_WHITE, 4
	playse SE_M_PSYBEAM
	delay 10
	fadescreenspeed FADE_FROM_WHITE, 4
	delay 15
	
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_SOUTH
	playse SE_M_PSYBEAM
	delay 20
	
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

MOSSDEEP01_EventScript_Jirachi::
	lock
	faceplayer
	
	goto_if_unset FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiSleeping
	
	goto_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_JirachiNeedCelebi
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_JirachiNeedItems
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_JirachiNeedItems
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_JirachiNeedItems
	goto_if_set FLAG_MOSSDEEP_QUEST_COMPLETED, MOSSDEEP01_JirachiAlreadyCompleted
	
	goto MOSSDEEP01_EventScript_QuestComplete

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
// QUEST COMPLETION - JIRACHI SENDS PLAYER HOME
// ====================================================================

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
	
	// Set flags for Littleroot Town start
	setflag FLAG_VISITED_LITTLEROOT_TOWN
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
	setflag FLAG_SET_WALL_CLOCK
	setflag FLAG_RESCUED_BIRCH
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
	setflag FLAG_SYS_B_DASH
	setflag FLAG_RECEIVED_RUNNING_SHOES
	setvar VAR_LITTLEROOT_INTRO_STATE, 6
	setvar VAR_LITTLEROOT_TOWN_STATE, 4
	
	checkplayergender
	compare VAR_RESULT, MALE
	goto_if_eq MOSSDEEP01_WarpMale
	
	// Female player
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
	destroyfollowernpc
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
	waitstate
	release
	end

MOSSDEEP01_WarpMale::
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
	destroyfollowernpc
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
	waitstate
	release
	end

// ====================================================================
// MOVEMENT SCRIPTS
// ====================================================================

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

// ====================================================================
// TEXT MESSAGES
// ====================================================================

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
	.string "in the grass...$"

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
	.string "The wild POKÉMON have calmed down!$"

MOSSDEEP01_Text_CelebiThanks:
	.string "CELEBI: Thank you, {PLAYER}!\n"
	.string "Together we restored time!$"

MOSSDEEP01_Text_MightyenaAttack:
	.string "The wild MIGHTYENA attacks!$"

MOSSDEEP01_Text_MightyenaBlackedOut:
	.string "The wild POKÉMON are too aggressive!\n"
	.string "You blacked out!$"

MOSSDEEP01_Text_MightyenaFriendly:
	.string "The MIGHTYENA looks calm and friendly.\n"
	.string "Amazing, they're so peaceful now!\p"
	.string "You can even pet them!$"

MOSSDEEP01_Text_SurvivorTrapped:
	.string "SURVIVOR: Help! These wild POKÉMON\n"
	.string "are too aggressive!\p"
	.string "I can't escape!$"

MOSSDEEP01_Text_SurvivorAmazed:
	.string "SURVIVOR: Incredible! The POKÉMON\n"
	.string "suddenly calmed down!\p"
	.string "What happened?$"

MOSSDEEP01_Text_SurvivorGoing:
	.string "SURVIVOR: I'm going to find a safer\n"
	.string "place. Thank you!$"

MOSSDEEP01_Text_SurvivorHappy:
	.string "SURVIVOR: I feel much safer now.\n"
	.string "Thank you for your help!$"

MOSSDEEP01_Text_HealerWelcome:
	.string "HEALER: Let me heal your POKÉMON.$"

MOSSDEEP01_Text_Healing:
	.string "Healing POKÉMON...$"

MOSSDEEP01_Text_HealedComplete:
	.string "HEALER: Your POKÉMON are fully\n"
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
	.string "chances of finding rare POKÉMON.\p"
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

MOSSDEEP01_Text_GrandmaEncouragement:
	.string "GRANDMA: You're doing great, {PLAYER}!\n"
	.string "Keep helping people!$"

MOSSDEEP01_Text_GrandpaFirstTalk:
	.string "GRANDPA: The world has changed...\n"
	.string "Everything is so different now...$"

MOSSDEEP01_Text_GrandpaAfterTalk:
	.string "GRANDPA: Thank you for helping\n"
	.string "everyone, {PLAYER}. You're a hero!$"

MOSSDEEP01_Text_GrandmaStory1:
	.string "GRANDMA: This was the beginning...$"

MOSSDEEP01_Text_GrandmaStory2:
	.string "GRANDMA: Then the conflict started...$"

MOSSDEEP01_Text_GrandmaStory3:
	.string "GRANDMA: The great battle between\n"
	.string "land and sea...$"

MOSSDEEP01_Text_GrandmaStory4:
	.string "GRANDMA: The tsunami devastated\n"
	.string "everything...$"

MOSSDEEP01_Text_GrandmaStory5:
	.string "GRANDMA: Volcanoes erupted across\n"
	.string "the land...$"

MOSSDEEP01_Text_GrandmaStory6:
	.string "GRANDMA: The land became a barren\n"
	.string "wasteland...$"

MOSSDEEP01_Text_GrandmaStory7:
	.string "GRANDMA: The oceans raged with\n"
	.string "unending storms...$"

MOSSDEEP01_Text_GrandmaStory8:
	.string "GRANDMA: Survivors gathered in\n"
	.string "camps...$"

MOSSDEEP01_Text_GrandmaStory9:
	.string "GRANDMA: Hope began to fade...$"

MOSSDEEP01_Text_GrandmaStory10:
	.string "GRANDMA: But then a legend\n"
	.string "appeared...$"

MOSSDEEP01_Text_GrandmaStory11:
	.string "GRANDMA: The sky guardian descended\n"
	.string "from above...$"

MOSSDEEP01_Text_GrandmaStory12:
	.string "GRANDMA: Peace was restored,\n"
	.string "but at a cost...$"

MOSSDEEP01_Text_GrandmaStory13:
	.string "GRANDMA: And this is how our world\n"
	.string "became what it is today...$"

MOSSDEEP01_Text_GrandmaAskStory:
	.string "GRANDMA: Hello, {PLAYER}!\p"
	.string "Would you like to hear the legends\n"
	.string "and stories of how HOENN arrived\l"
	.string "in the state it is now?$"

MOSSDEEP01_Text_GrandmaBeCareful:
	.string "GRANDMA: I understand.\p"
	.string "Please be very careful when exploring\n"
	.string "the MOSSDEEP ruins.\p"
	.string "There are many dangers out there...$"

MOSSDEEP01_Text_GrandmaAskAgain:
	.string "GRANDMA: Would you like to hear\n"
	.string "the stories of HOENN again?$"

MOSSDEEP01_Text_RivalMale01:
	.string "RIVAL: Hey {PLAYER}! I'm helping\n"
	.string "the survivors too!\p"
	.string "Let's work together!$"

MOSSDEEP01_Text_RivalMale02:
	.string "RIVAL: These wild POKÉMON are\n"
	.string "really aggressive!\p"
	.string "Be careful out there!$"

MOSSDEEP01_Text_RivalMale03:
	.string "RIVAL: I heard there's a special\n"
	.string "POKÉMON that can help us.\p"
	.string "Let's find it!$"

MOSSDEEP01_Text_RivalMale04:
	.string "RIVAL: We can do this, {PLAYER}!\n"
	.string "Together we'll save everyone!$"

MOSSDEEP01_Text_RivalFemale01:
	.string "RIVAL: {PLAYER}! I'm so glad\n"
	.string "you're safe!\p"
	.string "Let's help the survivors together!$"

MOSSDEEP01_Text_RivalFemale02:
	.string "RIVAL: The wild POKÉMON are\n"
	.string "acting so strange...\p"
	.string "Something must be wrong!$"

MOSSDEEP01_Text_RivalFemale03:
	.string "RIVAL: I heard about a legendary\n"
	.string "POKÉMON that controls time.\p"
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

MOSSDEEP01_Text_WailordBlocking:
	.string "A massive WAILORD blocks the path!\p"
	.string "It seems agitated by the chaos...\n"
	.string "You can't get through.$"

MOSSDEEP01_Text_PathNowOpen:
	.string "The WAILORD has calmed down and\n"
	.string "moved away. The path is clear!$"

MOSSDEEP01_Text_JirachiWaking:
	.string "A mysterious POKÉMON is sleeping\n"
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

MOSSDEEP01_Text_WallyIntro:
	.string "LUKA: Hello, {PLAYER}!\p"
	.string "Did you know that in the past people\n"
	.string "could train POKÉMON normally?\p"
	.string "There were POKÉ BALLS, devices that\n"
	.string "captured and stored POKÉMON.\p"
	.string "But now... they don't make them anymore.\n"
	.string "The technology was lost.\p"
	.string "That's why the connection with POKÉMON\n"
	.string "has to be made in another way...\p"
	.string "A more natural, purer connection.$"

MOSSDEEP01_Text_WallyAfterCelebi:
	.string "LUKA: {PLAYER}, you did it!\p"
	.string "CELEBI calmed all the wild POKÉMON.\n"
	.string "Amazing!\p"
	.string "The connection between POKÉMON and\n"
	.string "humans is being restored!$"

MOSSDEEP01_Text_WallyWarped:
	.string "LUKA: I'll head there first!\p"
	.string "Meet me ahead, {PLAYER}!$"

MOSSDEEP01_Text_WallyNotReady:
	.string "LUKA: Hello, {PLAYER}!\p"
	.string "Be careful out there! The wild\n"
	.string "POKÉMON are very aggressive.\p"
	.string "If you get into trouble, come\n"
	.string "talk to me!$"

MOSSDEEP01_Text_PidgeotGreeting:
	.string "Pidgeot: Piiidgeoo!$"

MOSSDEEP01_Text_WailordBlocks:
    .string "There's only water ahead!\p"
    .string "You can't cross without help...$"

MOSSDEEP01_Text_WailordIdle:
    .string "WAILORD is calmly floating on the water.$"

MOSSDEEP01_Text_WailmerIdle:
    .string "The WAILMER are splashing playfully!$"

MOSSDEEP01_Text_CelebiCallsWailord:
    .string "CELEBI calls out to the ocean!\p"
    .string "A massive WAILORD appears and\n"
    .string "creates a path across the water!$"
