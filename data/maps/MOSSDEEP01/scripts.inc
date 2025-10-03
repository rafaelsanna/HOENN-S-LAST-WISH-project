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

MOSSDEEP01_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, MOSSDEEP01_OnTransition
	map_script MAP_SCRIPT_ON_RESUME, MOSSDEEP01_OnResume
	.byte 0

MOSSDEEP01_OnTransition:
	setrespawn HEAL_LOCATION_MOSSDEEP_01

	// === CELEBI STATIC/FOLLOWER CONTROL ===
	call_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideStaticCelebi
	call_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideFollowerCelebi
	
	// === DESATIVAR MIGHTYENAS SE CELEBI FOI RESGATADO ===
	call_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_DisableMightyenas
	
	// === METEORO - Sempre escondido no início, só aparece na cutscene ===
	call MOSSDEEP01_EventScript_HideComet
	
	// === ITENS CONTROL ===
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_HideItem1
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_HideItem2  
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_HideItem3
	end

MOSSDEEP01_EventScript_DisableMightyenas::
	// Remove o comportamento de trainer das Mightyenas
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
// NPC PRINCIPAL - JIRACHI (COM VERIFICAÇÃO DE QUEST)
// ====================================================================

MOSSDEEP01_EventScript_DirectWarp::
	lock
	faceplayer
	
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
	
	// === CUTSCENE DO METEORO ===
	msgbox MOSSDEEP01_Text_CometAppears, MSGBOX_DEFAULT
	closemessage
	
	// Player olha para cima
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceUp
	waitmovement 0
	
	// REMOVER A FLAG QUE ESCONDE O METEORO
	clearflag FLAG_HIDE_MOSSDEEP_COMET
	
	// Aparecer o meteoro
	addobject LOCALID_MILLENNIUM_COMET
	
	delay 60
	
	// Som do meteoro
	playse SE_M_SACRED_FIRE
	
	// Camera acompanha meteoro
	special SpawnCameraObject
	applymovement OBJ_EVENT_ID_CAMERA, MOSSDEEP01_Movement_CameraFollowComet
	applymovement LOCALID_MILLENNIUM_COMET, MOSSDEEP01_Movement_CometCrossingSky
	waitmovement 0
	special RemoveCameraObject
	
	// Efeito final
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
// MOVIMENTO DO METEORO E CÂMERA
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
	
	msgbox MOSSDEEP01_Text_CelebiHelp, MSGBOX_DEFAULT
	closemessage
	msgbox MOSSDEEP01_Text_CelebiPower, MSGBOX_DEFAULT
	closemessage
	
	// FLASH BRANCO
	playse SE_M_HYPER_BEAM
	fadescreenspeed FADE_TO_WHITE, 4
	
	// === TROCA CELEBIS ===
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
	clearflag FLAG_HIDE_MOSSDEEP_CELEBI_FOLLOWER
	
	// Remover o Celebi estático e adicionar o follower
	removeobject LOCALID_CELEBI_STATIC
	addobject LOCALID_CELEBI_FOLLOWER
	
	delay 30
	fadescreenspeed FADE_FROM_WHITE, 4
	
	setflag FLAG_MOSSDEEP_CELEBI_RESCUED
	
	// DESATIVAR COMPORTAMENTO DE TRAINER DAS MIGHTYENAS
	setobjectmovementtype LOCALID_MIGHTYENA, MOVEMENT_TYPE_WANDER_AROUND
	setobjectmovementtype LOCALID_POOCHYENA, MOVEMENT_TYPE_WANDER_AROUND
	setobjectmovementtype LOCALID_ZIGZAGOON, MOVEMENT_TYPE_WANDER_AROUND
	
	msgbox MOSSDEEP01_Text_CelebiCalmed, MSGBOX_DEFAULT
	closemessage
	msgbox MOSSDEEP01_Text_CelebiFollows, MSGBOX_DEFAULT
	closemessage
	
	release
	end

// ====================================================================
// MIGHTYENAS - ATACAM OU FICAM CALMAS
// ====================================================================

MOSSDEEP01_EventScript_Mightyena::
	// Se Celebi foi resgatado, não faz nada
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_MightyenaDoNothing
	
	// Sistema de detecção com exclamação
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
// SURVIVOR NPC - TRAPPED BY MIGHTYENAS
// ====================================================================

.equiv LOCALID_SURVIVOR, 15

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
	
	// Survivor caminha até perto dos Mightyenas
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

// ====================================================================
// SURVIVOR MOVEMENT - 9 tiles para cima
// ====================================================================

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

MOSSDEEP01_Text_CelebiHelp:
	.string "CELEBI: Help! Those Mightyena\n"
	.string "are hunting me!\p"
	.string "Please, help me escape!$"

MOSSDEEP01_Text_CelebiPower:
	.string "CELEBI: Let me use my powers\n"
	.string "to calm them down!$"

MOSSDEEP01_Text_CelebiCalmed:
	.string "The Mightyena have been calmed!\p"
	.string "They won't attack anymore...$"

MOSSDEEP01_Text_CelebiFollows:
	.string "CELEBI: Thank you!\n"
	.string "I'll follow you to safety!$"

MOSSDEEP01_Text_MightyenaAttack:
	.string "Wild MIGHTYENA used CRUNCH!\p"
	.string "It's super effective!$"

MOSSDEEP01_Text_MightyenaBlackedOut:
	.string "You blacked out!\p"
	.string "Returning to safety...$"

MOSSDEEP01_Text_MightyenaCalm:
	.string "Woof woof...\p"
	.string "I can even pet them now...$"

MOSSDEEP01_Text_HealerWelcome:
	.string "Survivor: You look tired!\n"
	.string "Let me heal your Pokémon.$"

MOSSDEEP01_Text_Healing:
	.string "Using residual energies from\n"
	.string "the meteor to heal...$"

MOSSDEEP01_Text_HealedComplete:
	.string "Done! Your Pokémon are\n"
	.string "fully recovered!$"

// ====================================================================
// SURVIVOR NPC TEXTS
// ====================================================================

MOSSDEEP01_Text_SurvivorTrapped:
	.string "Survivor: Watch out!\n"
	.string "Those Mightyena are attacking\l"
	.string "everyone who passes by!\p"
	.string "I've been trapped down here\n"
	.string "for days...\p"
	.string "I can't get back home!$"

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
	.string "I didn't know people could still\n"
	.string "be Pokémon trainers...\p"
	.string "Thank you so much!$"


