// ====================================================================
// SISTEMA DE QUEST - TIME GEARS (FRAGMENTOS DO TEMPO)
// ====================================================================

.equiv LOCALID_MOSSDEEP_JIRACHI, 1
.equiv LOCALID_MILLENNIUM_COMET, 5
.equiv LOCALID_TIME_GEAR_1, 2
.equiv LOCALID_TIME_GEAR_2, 3
.equiv LOCALID_TIME_GEAR_3, 4

MOSSDEEP01_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, MOSSDEEP01_OnTransition
	map_script MAP_SCRIPT_ON_RESUME, MOSSDEEP01_OnResume
	.byte 0

MOSSDEEP01_OnTransition:
	// FORÇAR RESPAWN - garantir que está setado
	setrespawn HEAL_LOCATION_MOSSDEEP_01
	
	// Resto do código normal
	call MOSSDEEP01_EventScript_HideComet
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_HideItem1
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_HideItem2  
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_HideItem3
	end

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
// NPC PRINCIPAL - JIRACHI (COM VERIFICAÇÃO DE QUEST)
// ====================================================================

MOSSDEEP01_EventScript_DirectWarp::
	lock
	faceplayer
	
	// PARA TESTE: Pular coleta de itens - REMOVER DEPOIS
	goto MOSSDEEP01_EventScript_QuestComplete

	// Verificar se já completou a quest
	goto_if_set FLAG_MOSSDEEP_QUEST_COMPLETED, MOSSDEEP01_EventScript_AlreadyCompleted
	
	// Verificar se coletou todos os itens
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_NeedMoreItems
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_NeedMoreItems
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_NeedMoreItems
	
	// Todos os itens coletados!
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
	
	// === CUTSCENE DO METEORO COM CAMERA ===
	msgbox MOSSDEEP01_Text_CometAppears, MSGBOX_DEFAULT
	closemessage
	
	// Player olha para cima
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceUp
	waitmovement 0
	
	// Aparecer o meteoro (bem longe à direita, fora da tela)
	clearflag FLAG_HIDE_MOSSDEEP_COMET
	addobject LOCALID_MILLENNIUM_COMET
	
	// Delay dramático
	delay 60
	
	// Som do meteoro chegando
	playse SE_M_SACRED_FIRE
	
	// ========== SISTEMA DE CAMERA ==========
	// Ativar objeto de camera
	special SpawnCameraObject
	
	// Camera acompanha o meteoro - MOVIMENTO LONGO PARA EFEITO DRAMÁTICO
	applymovement OBJ_EVENT_ID_CAMERA, MOSSDEEP01_Movement_CameraFollowComet
	applymovement LOCALID_MILLENNIUM_COMET, MOSSDEEP01_Movement_CometCrossingSky
	waitmovement 0
	
	// Remover objeto de camera (volta pro player)
	special RemoveCameraObject
	
	// ========================================
	
	// Efeito final explosivo
	playse SE_M_EXPLOSION
	fadescreenspeed FADE_TO_WHITE, 8
	delay 40
	fadescreenspeed FADE_FROM_WHITE, 8
	delay 20
	
	// Remove o meteoro
	removeobject LOCALID_MILLENNIUM_COMET
	setflag FLAG_HIDE_MOSSDEEP_COMET
	
	msgbox MOSSDEEP01_Text_TimeToWakeUp, MSGBOX_DEFAULT
	closemessage
	
	delay 30
	
	// Warp para Littleroot
	fadescreen FADE_TO_BLACK
	delay 60
	warp MAP_LITTLEROOT_TOWN, 10, 10
	waitstate
	release
	end

// ====================================================================
// MOVIMENTO DO METEORO E CÂMERA (VERSÃO LONGA - DRAMÁTICA)
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
	step_end

// ====================================================================
// ITENS COLECIONÁVEIS - TIME GEARS (FRAGMENTOS DO TEMPO)
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
// TEXTOS
// ====================================================================

MOSSDEEP01_Text_NeedItems:
	.string "JIRACHI: I need your help!\p"
	.string "The flow of time is broken!\p"
	.string "Please find the 3 TIME GEARS\n"
	.string "scattered around this place.\p"
	.string "Only then can the Millennium Comet\n"
	.string "restore the timeline!$"

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


// ====================================================================
// HEALER NPC SCRIPT
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

MOSSDEEP01_Text_HealerWelcome:
	.string "Survivor: You look tired!\n"
	.string "Let me heal your Pokémon.$"

MOSSDEEP01_Text_Healing:
	.string "Using residual energies from\n"
	.string "the meteor to heal...$"

MOSSDEEP01_Text_HealedComplete:
	.string "Done! Your Pokémon are\n"
	.string "fully recovered!$"