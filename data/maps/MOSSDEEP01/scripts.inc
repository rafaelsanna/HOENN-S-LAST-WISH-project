// ====================================================================
// SISTEMA DE QUEST - COLETAR ITENS NO MAPA CUSTOM
// ====================================================================

MOSSDEEP01_MapScripts::
	.byte 0

// ====================================================================
// NPC PRINCIPAL - JIRACHI (COM VERIFICAÇÃO DE QUEST)
// ====================================================================

MOSSDEEP01_EventScript_DirectWarp::
	lock
	faceplayer
	
	// Verificar se já completou a quest
	goto_if_set FLAG_MOSSDEEP_QUEST_COMPLETED, MOSSDEEP01_EventScript_AlreadyCompleted
	
	// Verificar se coletou todos os itens
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_CheckItem2
	
	// Ainda precisa coletar itens
	msgbox MOSSDEEP01_Text_NeedItems, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_CheckItem2::
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_CheckItem3
	msgbox MOSSDEEP01_Text_NeedItems, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_CheckItem3::
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_QuestComplete
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
	
	// Configurar flags do jogo
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
	setflag FLAG_VISITED_LITTLEROOT_TOWN
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
	setflag FLAG_SET_WALL_CLOCK
	setflag FLAG_RESCUED_BIRCH
	setflag FLAG_ADVENTURE_STARTED
	
	setvar VAR_LITTLEROOT_INTRO_STATE, 6
	setvar VAR_LITTLEROOT_TOWN_STATE, 0
	
	fadescreen FADE_TO_BLACK
	delay 180
	
	checkplayergender
	compare VAR_RESULT, MALE
	goto_if_eq MOSSDEEP01_WarpMale
	
	// Female
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 7
	waitstate
	release
	end

MOSSDEEP01_WarpMale::
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 7
	waitstate
	release
	end

// ====================================================================
// ITENS COLECIONÁVEIS
// ====================================================================

MOSSDEEP01_EventScript_Item1::
	lock
	faceplayer
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_Item1_AlreadyCollected
	
	msgbox MOSSDEEP01_Text_FoundItem1, MSGBOX_DEFAULT
	playfanfare MUS_OBTAIN_ITEM
	waitfanfare
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_1
	removeobject VAR_LAST_TALKED
	release
	end

MOSSDEEP01_EventScript_Item1_AlreadyCollected::
	msgbox MOSSDEEP01_Text_AlreadyCollected, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_Item2::
	lock
	faceplayer
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_Item2_AlreadyCollected
	
	msgbox MOSSDEEP01_Text_FoundItem2, MSGBOX_DEFAULT
	playfanfare MUS_OBTAIN_ITEM
	waitfanfare
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_2
	removeobject VAR_LAST_TALKED
	release
	end

MOSSDEEP01_EventScript_Item2_AlreadyCollected::
	msgbox MOSSDEEP01_Text_AlreadyCollected, MSGBOX_DEFAULT
	release
	end

MOSSDEEP01_EventScript_Item3::
	lock
	faceplayer
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_Item3_AlreadyCollected
	
	msgbox MOSSDEEP01_Text_FoundItem3, MSGBOX_DEFAULT
	playfanfare MUS_OBTAIN_ITEM
	waitfanfare
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_3
	removeobject VAR_LAST_TALKED
	release
	end

MOSSDEEP01_EventScript_Item3_AlreadyCollected::
	msgbox MOSSDEEP01_Text_AlreadyCollected, MSGBOX_DEFAULT
	release
	end

// ====================================================================
// TEXTOS
// ====================================================================

MOSSDEEP01_Text_NeedItems:
	.string "JIRACHI: I need your help!\p"
	.string "Please find the 3 magical items\n"
	.string "scattered around this place.\p"
	.string "A CRYSTAL, a FEATHER, and a\n"
	.string "STAR PIECE.\p"
	.string "Bring them all to me!$"

MOSSDEEP01_Text_ThankYou:
	.string "JIRACHI: Thank you!\p"
	.string "You found all the items!\n"
	.string "Now you can wake up.$"

MOSSDEEP01_Text_AlreadyHelped:
	.string "JIRACHI: You already helped me!\n"
	.string "Thank you again!$"

MOSSDEEP01_Text_FoundItem1:
	.string "{PLAYER} found a mysterious CRYSTAL!$"

MOSSDEEP01_Text_FoundItem2:
	.string "{PLAYER} found a rainbow FEATHER!$"

MOSSDEEP01_Text_FoundItem3:
	.string "{PLAYER} found a shining STAR PIECE!$"

MOSSDEEP01_Text_AlreadyCollected:
	.string "Already collected.$"

	