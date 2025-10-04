// ====================================================================
// SISTEMA DE QUEST - TIME GEARS (FRAGMENTOS DO TEMPO)
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

MOSSDEEP01_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, MOSSDEEP01_OnTransition
	map_script MAP_SCRIPT_ON_FRAME_TABLE, MOSSDEEP01_OnFrame
	map_script MAP_SCRIPT_ON_RESUME, MOSSDEEP01_OnResume
	.byte 0

// ====================================================================
// PRÓLOGO - DESPERTAR DENTRO DA BARRACA
// ====================================================================

MOSSDEEP01_OnFrame:
	map_script_2 VAR_TEMP_0, 0, MOSSDEEP01_EventScript_Prologue
	.2byte 0

MOSSDEEP01_EventScript_Prologue::
	setvar VAR_TEMP_0, 1
	lockall
	
	delay 120
	
	// === TREMORES (TELA PRETA) ===
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
	
	// === JOGADOR SAI DA BARRACA ===
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_ExitTent
	waitmovement 0
	
	delay 60
	setflag FLAG_TEMP_1
	
	// === AVÓ APARECE E FALA ===
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
	
	releaseall
	end

MOSSDEEP01_Movement_ExitTent:
	walk_down
	walk_down
	walk_down
	step_end

// ====================================================================
// ON TRANSITION
// ====================================================================

MOSSDEEP01_OnTransition:
	setrespawn HEAL_LOCATION_MOSSDEEP_01

	// === CELEBI CONTROL ===
	call_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideStaticCelebi
	call_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideFollowerCelebi
	call_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_DisableMightyenas
	
	// === METEORO SEMPRE ESCONDIDO (só aparece na cutscene) ===
	call MOSSDEEP01_EventScript_HideComet
	
	// === ITENS CONTROL ===
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_HideItem1
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_HideItem2  
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_HideItem3
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
	setflag FLAG_TEMP_11
	return

MOSSDEEP01_EventScript_HideItem2::
	setflag FLAG_TEMP_12
	return

MOSSDEEP01_EventScript_HideItem3::
	setflag FLAG_TEMP_13
	return

// ====================================================================
// NPC PRINCIPAL - JIRACHI (QUEST COMPLETA = CUTSCENE + TELEPORTE)
// ====================================================================

MOSSDEEP01_EventScript_DirectWarp::
	lock
	faceplayer
	
	// === DEBUG: Pressione R para auto-completar os itens ===
	checkitem ITEM_MACH_BIKE
	compare VAR_RESULT, TRUE
	goto_if_eq MOSSDEEP01_EventScript_DebugComplete
	
	// Verificar se já completou a quest
	goto_if_set FLAG_MOSSDEEP_QUEST_COMPLETED, MOSSDEEP01_EventScript_AlreadyCompleted
	
	// Verificar se coletou todos os itens
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_NeedMoreItems
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_NeedMoreItems
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_NeedMoreItems
	
	// === QUEST COMPLETA - EXECUTAR CUTSCENE COMPLETA ===
	goto MOSSDEEP01_EventScript_QuestComplete

MOSSDEEP01_EventScript_DebugComplete::
	msgbox MOSSDEEP01_Text_Debug, MSGBOX_DEFAULT
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_1
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_2
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_3
	goto MOSSDEEP01_EventScript_QuestComplete

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
	
	// Marcar quest como completa
	setflag FLAG_MOSSDEEP_QUEST_COMPLETED
	
	// ================================================================
	// CUTSCENE DO METEORO (CÓDIGO DO DOCUMENTO ANTIGO)
	// ================================================================
	
	msgbox MOSSDEEP01_Text_CometAppears, MSGBOX_DEFAULT
	closemessage
	
	// Player olha para cima
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceUp
	waitmovement 0
	
	delay 30
	
	// === REMOVER A FLAG QUE ESCONDE O METEORO ===
	clearflag FLAG_HIDE_MOSSDEEP_COMET
	
	// === APARECER O METEORO ===
	addobject LOCALID_MILLENNIUM_COMET
	
	delay 30
	
	// === EFEITOS VISUAIS - METEORO APARECENDO ===
	playse SE_M_SWIFT
	fadescreenspeed FADE_FROM_WHITE, 4
	delay 15
	playse SE_SHINY
	delay 20
	
	// === SOM DO METEORO ===
	playse SE_M_SACRED_FIRE
	
	// === CÂMERA ACOMPANHA METEORO (CÓDIGO EXATO DO DOCUMENTO 3) ===
	special SpawnCameraObject
	applymovement OBJ_EVENT_ID_CAMERA, MOSSDEEP01_Movement_CameraFollowComet
	applymovement LOCALID_MILLENNIUM_COMET, MOSSDEEP01_Movement_CometCrossingSky
	waitmovement 0
	special RemoveCameraObject
	
	delay 20
	
	// === EFEITO FINAL ===
	playse SE_M_EXPLOSION
	fadescreenspeed FADE_TO_WHITE, 8
	delay 40
	fadescreenspeed FADE_FROM_WHITE, 8
	delay 20
	
	// === REMOVE O METEORO ===
	removeobject LOCALID_MILLENNIUM_COMET
	setflag FLAG_HIDE_MOSSDEEP_COMET
	
	msgbox MOSSDEEP01_Text_TimeToWakeUp, MSGBOX_DEFAULT
	closemessage
	
	delay 30
	
	// === FADE TO BLACK (TRANSIÇÃO) ===
	fadescreen FADE_TO_BLACK
	delay 60
	
	// ================================================================
	// CONFIGURAÇÃO 100% IDÊNTICA AO CASO "YES" DO LITTLEROOT
	// (Copiado exatamente do LittlerootTown_01_JirachiWarp)
	// ================================================================
	
	// === FLAGS DE PROGRESSO ===
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
	
	// === VERIFICAR GÊNERO E WARPAR PARA O QUARTO CORRETO ===
	checkplayergender
	compare VAR_RESULT, MALE
	goto_if_eq MOSSDEEP01_WarpMale
	
	// === FEMALE (May's house) ===
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
	
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
	waitstate
	release
	end

MOSSDEEP01_WarpMale::
	// === MALE (Brendan's house) ===
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
	
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
	waitstate
	release
	end

// ====================================================================
// MOVIMENTO DO METEORO E CÂMERA (DO DOCUMENTO 3)
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

// ====================================================================
// ITENS COLECIONÁVEIS - TIME GEARS
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
	setflag FLAG_TEMP_11
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
	setflag FLAG_TEMP_12
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
	setflag FLAG_TEMP_13
	removeobject LOCALID_TIME_GEAR_3
	release
	end

MOSSDEEP01_EventScript_Item_AlreadyCollected::
	msgbox MOSSDEEP01_Text_AlreadyCollected, MSGBOX_DEFAULT
	release
	end

// ====================================================================
// CELEBI - DESATIVA MIGHTYENAS E SEGUE O PLAYER
// ====================================================================

MOSSDEEP01_EventScript_Celebi::
	lock
	faceplayer
	
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_CelebiAlreadyRescued
	
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_CelebiNeedGears
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_CelebiNeedGears
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_CelebiNeedGears
	
	msgbox MOSSDEEP01_Text_CelebiPower, MSGBOX_DEFAULT
	closemessage
	
	// FLASH BRANCO
	playse SE_M_HYPER_BEAM
	fadescreenspeed FADE_TO_WHITE, 4
	
	// Troca Celebis
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
	clearflag FLAG_HIDE_MOSSDEEP_CELEBI_FOLLOWER
	removeobject LOCALID_CELEBI_STATIC
	addobject LOCALID_CELEBI_FOLLOWER
	
	delay 30
	fadescreenspeed FADE_FROM_WHITE, 4
	
	setflag FLAG_MOSSDEEP_CELEBI_RESCUED
	
	// Desativar Mightyenas
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

// ====================================================================
// MIGHTYENAS - ATACAM OU FICAM CALMAS
// ====================================================================

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
	warp MAP_MOSSDEEP01, 28, 38
	waitstate
	releaseall
	end

MOSSDEEP01_EventScript_MightyenaDoNothing::
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
// GRANDMA NPC - DEPOIS DO PRÓLOGO
// ====================================================================

MOSSDEEP01_EventScript_Grandma::
	lock
	faceplayer
	msgbox MOSSDEEP01_Text_GrandmaReminder, MSGBOX_DEFAULT
	release
	end

// ====================================================================
// TEXTOS
// ====================================================================

MOSSDEEP01_Text_Debug:
	.string "DEBUG: Auto-collecting all TIME GEARS!$"

MOSSDEEP01_Text_NeedItems:
	.string "JIRACHI: I need your help!\p"
	.string "The flow of time is broken!\p"
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
	.string "{PLAYER} noticed a strange light\n"
	.string "in the distance...$"

MOSSDEEP01_Text_ObtainedTimeGear3:
	.string "{PLAYER} obtained the TIME GEAR\n"
	.string "of the FUTURE!$"

MOSSDEEP01_Text_AlreadyCollected:
	.string "Nothing here anymore...$"

MOSSDEEP01_Text_CelebiHelp:
	.string "CELEBI: Help! Those Mightyena\n"
	.string "are hunting me!\p"
	.string "I'm trapped and can't escape!\n"
	.string "Please find the 3 TIME GEARS!\p"
	.string "Only with their power can I\n"
	.string "calm these wild creatures!$"

MOSSDEEP01_Text_CelebiPower:
	.string "CELEBI: You found them all!\p"
	.string "Now I can use my temporal powers\n"
	.string "to calm the Mightyena!$"

MOSSDEEP01_Text_CelebiCalmed:
	.string "The Mightyena have been calmed!\p"
	.string "They won't attack anymore...$"

MOSSDEEP01_Text_CelebiFollows:
	.string "CELEBI: Thank you!\n"
	.string "I'll follow you to safety!$"

MOSSDEEP01_Text_CelebiThanks:
	.string "CELEBI: Thank you for saving me!\p"
	.string "I'll stay with you for safety!$"

MOSSDEEP01_Text_MightyenaAttack:
	.string "Wild MIGHTYENA used CRUNCH!\p"
	.string "It's super effective!$"

MOSSDEEP01_Text_MightyenaBlackedOut:
	.string "You blacked out!\p"
	.string "Returning to safety...$"

MOSSDEEP01_Text_HealerWelcome:
	.string "Survivor: You look tired!\n"
	.string "Let me heal your Pokémon.$"

MOSSDEEP01_Text_Healing:
	.string "Using residual energies from\n"
	.string "the meteor to heal...$"

MOSSDEEP01_Text_HealedComplete:
	.string "Done! Your Pokémon are\n"
	.string "fully recovered!$"

MOSSDEEP01_Text_SurvivorTrapped:
	.string "Survivor: Watch out!\n"
	.string "Those Mightyena are attacking\l"
	.string "everyone who passes by!\p"
	.string "I've been trapped down here\n"
	.string "for days...$"

MOSSDEEP01_Text_SurvivorAmazed:
	.string "Survivor: What... what was that\n"
	.string "incredible light?!\p"
	.string "The Mightyena... they're friendly now!$"

MOSSDEEP01_Text_SurvivorGoing:
	.string "Survivor: I can finally go check on them!\n"
	.string "Let me see...$"

MOSSDEEP01_Text_SurvivorHappy:
	.string "Survivor: Amazing! I can even pet them!\p"
	.string "Was it that strange Pokémon\n"
	.string "following you?\p"
	.string "Thank you so much!$"

MOSSDEEP01_Text_GrandmaWelcome:
	.string "Grandma: Oh, you're awake!\p"
	.string "Thank goodness...\n"
	.string "You've been having nightmares.$"

MOSSDEEP01_Text_EarthquakeWarning:
	.string "Grandma: Wait... do you feel that?\p"
	.string "Not again!$"

MOSSDEEP01_Text_HoennDestroyed:
	.string "Grandma: Ever since the Great Disaster,\n"
	.string "these quakes won't stop...\p"
	.string "The land is tearing itself apart.\n"
	.string "Storms rage without end.\p"
	.string "Hoenn is dying, child.\n"
	.string "And no one knows why.$"

MOSSDEEP01_Text_PlayerDecision:
	.string "{PLAYER} feels a strange pull...\p"
	.string "Those recurring dreams...\n"
	.string "The ruined altar...\p"
	.string "There has to be a connection.$"

MOSSDEEP01_Text_GoodLuck:
	.string "Grandma: Please, be careful out there.\p"
	.string "The path to the ruins is treacherous.$"

MOSSDEEP01_Text_GrandmaReminder:
	.string "Grandma: Take care of yourself,\n"
	.string "and remember what I told you.$"

