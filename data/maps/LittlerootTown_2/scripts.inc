LittlerootTown_2_MapScripts::
	.byte 0

LittlerootTown_2_EventScript_MoonStoneResearcher::
	lock
	faceplayer
	goto_if_set FLAG_RECEIVED_MOON_STONE_LITTLEROOT, LittlerootTown_2_EventScript_DefaultDialogue
	
	msgbox LittlerootTown_2_Text_CheckForNidoran, MSGBOX_DEFAULT
	
	// Verificação usando CalculatePlayerPartyCount (que existe)
	specialvar VAR_TEMP_2, CalculatePlayerPartyCount
	
	// Verificação manual do party
	setvar VAR_TEMP_0, 0  // Flag para Nidoran♂
	setvar VAR_TEMP_1, 0  // Flag para Nidoran♀
	setvar VAR_TEMP_3, 0  // Índice do Pokémon
	
LittlerootTown_2_CheckPartyLoop::
	compare VAR_TEMP_3, VAR_TEMP_2
	goto_if_ge LittlerootTown_2_CheckResults
	
	// Obter espécie do Pokémon atual
	copyvar VAR_0x8004, VAR_TEMP_3
	specialvar VAR_RESULT, ScriptGetPartyMonSpecies
	compare VAR_RESULT, SPECIES_NIDORAN_M
	call_if_eq LittlerootTown_2_FoundMale
	compare VAR_RESULT, SPECIES_NIDORAN_F
	call_if_eq LittlerootTown_2_FoundFemale
	
	addvar VAR_TEMP_3, 1
	goto LittlerootTown_2_CheckPartyLoop

LittlerootTown_2_FoundMale::
	setvar VAR_TEMP_0, 1
	return

LittlerootTown_2_FoundFemale::
	setvar VAR_TEMP_1, 1
	return

LittlerootTown_2_CheckResults::
	compare VAR_TEMP_0, 1
	goto_if_ne LittlerootTown_2_EventScript_NoMaleNidoran
	compare VAR_TEMP_1, 1
	goto_if_ne LittlerootTown_2_EventScript_NoFemaleNidoran
	
	// Se chegou aqui, tem ambos!
	goto LittlerootTown_2_EventScript_GiveMoonStone

// NOVO: Quando não tem NENHUM dos dois
LittlerootTown_2_EventScript_NoNidoran::
	// Mostra Nidoran♂
	showmonpic SPECIES_NIDORAN_M, 10, 3
	playmoncry SPECIES_NIDORAN_M, CRY_MODE_NORMAL
	waitmoncry
	msgbox LittlerootTown_2_Text_ThisIsMaleNidoran, MSGBOX_DEFAULT
	hidemonpic
	
	// Mostra Nidoran♀
	showmonpic SPECIES_NIDORAN_F, 10, 3
	playmoncry SPECIES_NIDORAN_F, CRY_MODE_NORMAL
	waitmoncry
	msgbox LittlerootTown_2_Text_ThisIsFemaleNidoran, MSGBOX_DEFAULT
	hidemonpic
	
	msgbox LittlerootTown_2_Text_NeedBothNidoran, MSGBOX_DEFAULT
	release
	end

LittlerootTown_2_EventScript_NoMaleNidoran::
	// Verifica se também não tem a fêmea
	compare VAR_TEMP_1, 0
	goto_if_eq LittlerootTown_2_EventScript_NoNidoran
	
	// Só falta o macho
	showmonpic SPECIES_NIDORAN_M, 10, 3
	playmoncry SPECIES_NIDORAN_M, CRY_MODE_NORMAL
	waitmoncry
	msgbox LittlerootTown_2_Text_NoMaleNidoran, MSGBOX_DEFAULT
	hidemonpic
	release
	end

LittlerootTown_2_EventScript_NoFemaleNidoran::
	// Verifica se também não tem o macho
	compare VAR_TEMP_0, 0
	goto_if_eq LittlerootTown_2_EventScript_NoNidoran
	
	// Só falta a fêmea
	showmonpic SPECIES_NIDORAN_F, 10, 3
	playmoncry SPECIES_NIDORAN_F, CRY_MODE_NORMAL
	waitmoncry
	msgbox LittlerootTown_2_Text_NoFemaleNidoran, MSGBOX_DEFAULT
	hidemonpic
	release
	end

LittlerootTown_2_EventScript_GiveMoonStone::
	msgbox LittlerootTown_2_Text_YouHaveBothNidoran, MSGBOX_DEFAULT
	giveitem ITEM_MOON_STONE
	setflag FLAG_RECEIVED_MOON_STONE_LITTLEROOT
	msgbox LittlerootTown_2_Text_UseMoonStoneToEvolve, MSGBOX_DEFAULT
	release
	end

LittlerootTown_2_EventScript_DefaultDialogue::
	msgbox LittlerootTown_2_Text_DefaultDialogue, MSGBOX_DEFAULT
	release
	end
	
// Textos 
LittlerootTown_2_Text_CheckForNidoran:
	.string "I'm researching Moon Stones!\p"
	.string "If you have both a male and female\n"
	.string "Nidoran in your party, I'll give you\l"
	.string "a Moon Stone!$"

LittlerootTown_2_Text_YouHaveBothNidoran:
	.string "Amazing! You have both a male and\n"
	.string "female Nidoran!\p"
	.string "Here's a Moon Stone as promised!$"

LittlerootTown_2_Text_UseMoonStoneToEvolve:
	.string "Moon Stones can evolve certain\n"
	.string "Pokémon like Nidorina and Nidorino!$"

LittlerootTown_2_Text_ThisIsMaleNidoran:
	.string "This is a male Nidoran!$"

LittlerootTown_2_Text_ThisIsFemaleNidoran:
	.string "This is a female Nidoran!$"

LittlerootTown_2_Text_NeedBothNidoran:
	.string "You need both a male and female\n"
	.string "Nidoran in your party!\p"
	.string "Come back when you have them both!$"

LittlerootTown_2_Text_NoMaleNidoran:
	.string "This is a male Nidoran!\p"
	.string "Hmm... I don't see one in your party.\n"
	.string "You still need this one!$"

LittlerootTown_2_Text_NoFemaleNidoran:
	.string "This is a female Nidoran!\p"
	.string "Hmm... I don't see one in your party.\n"
	.string "You still need this one!$"

LittlerootTown_2_Text_DefaultDialogue:
	.string "Moon Stones are fascinating!\n"
	.string "They trigger evolution in some Pokémon.$"



