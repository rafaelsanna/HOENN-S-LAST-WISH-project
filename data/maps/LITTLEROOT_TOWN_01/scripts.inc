// ====================================================================
// DREAM HELM - pre game QOL skip
// ====================================================================

.equiv LOCALID_JIRACHI, 1
.equiv LOCALID_CELEBI,  2

LITTLEROOT_TOWN_01_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, LittlerootTown_01_OnTransition
	.byte 0

LittlerootTown_01_OnTransition:
	setflag FLAG_VISITED_LITTLEROOT_TOWN
	call Common_EventScript_SetupRivalGfxId
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 2, LittlerootTown_EventScript_MoveMomToMaysDoor
	call_if_unset FLAG_RESCUED_BIRCH, LittlerootTown_EventScript_SetTwinPos
	call_if_eq VAR_LITTLEROOT_TOWN_STATE, 3, LittlerootTown_EventScript_SetMomStandingInFrontOfDoorPos
	call_if_eq VAR_LITTLEROOT_HOUSES_STATE_MAY, 4, LittlerootTown_EventScript_SetExitedHouseAfterLatiSSTicketEvent
	call_if_eq VAR_LITTLEROOT_HOUSES_STATE_BRENDAN, 4, LittlerootTown_EventScript_SetExitedHouseAfterLatiSSTicketEvent
	call_if_eq VAR_OLDALE_RIVAL_STATE, 1, LittlerootTown_EventScript_MoveRivalFromOldale
	call_if_eq VAR_LITTLEROOT_RIVAL_STATE, 3, LittlerootTown_EventScript_SetRivalLeftForRoute103
	call_if_eq VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 1, LittlerootTown_EventScript_HideMapNamePopup
	call_if_eq VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 2, LittlerootTown_EventScript_LeftLabAfterDexUpgrade
	call_if_set FLAG_HIDE_LITTLEROOT_RESEARCH_ASSISTANT, LittlerootTown_EventScript_HideResearchAssistant
	
	end

LittlerootTown_EventScript_ShowGrandmaStory::
	lockall
	delay 20
	
	// Fade to black and silence music
	fadeoutbgm 0
	fadescreen FADE_TO_BLACK
	delay 40
	
	// 1. AEGISLASH - The beginning
	showmonpic SPECIES_AEGISLASH, 10, 3
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
	msgbox LittlerootTown_Text_GrandmaStory1, MSGBOX_DEFAULT
	hidemonpic
	delay 20
	
	// 2. ALOMOMOLA - The conflict began  
	showmonpic SPECIES_ALOMOMOLA, 10, 3
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
	msgbox LittlerootTown_Text_GrandmaStory2, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 3. AVALUGG - The great battle
	showmonpic SPECIES_AVALUGG, 10, 3
	playse SE_M_SURF
	playse SE_M_THUNDERBOLT
	msgbox LittlerootTown_Text_GrandmaStory3, MSGBOX_DEFAULT
	hidemonpic
	delay 20
	
	// 4. AMAURA - The tsunami
	showmonpic SPECIES_AMAURA, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory4, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 5. AROMATISSE - Volcanoes
	showmonpic SPECIES_AROMATISSE, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory5, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 6. ARROKUDA - Devastated land
	showmonpic SPECIES_ARROKUDA, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory6, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 7. AUDINO - Stormy oceans
	showmonpic SPECIES_AUDINO, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory7, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 8. AURORUS - Survivors
	showmonpic SPECIES_AURORUS, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory8, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 9. AMOONGUSS - Hope fading
	showmonpic SPECIES_AMOONGUSS, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory9, MSGBOX_DEFAULT
	hidemonpic
	delay 20
	
	// 10. APPLIN - A legend appears
	showmonpic SPECIES_APPLIN, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory10, MSGBOX_DEFAULT
	hidemonpic
	delay 20
	
	// 11. APPLETUN - The sky guardian
	showmonpic SPECIES_APPLETUN, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory11, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 12. AXEW - Peace restored
	showmonpic SPECIES_AXEW, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory12, MSGBOX_DEFAULT
	hidemonpic
	delay 20
	
	// 13. ARBOLIVA - The world today
	showmonpic SPECIES_ARBOLIVA, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory13, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// Final - encouragement message
	showmonpic SPECIES_ARCHEN, 10, 3
	msgbox LittlerootTown_Text_GrandmaEncouragement, MSGBOX_DEFAULT
	hidemonpic

	// Return to normal screen
	fadescreen FADE_FROM_BLACK
	delay 20
	
	// Restore ambient music
	fadeinbgm 0
	
	msgbox LittlerootTown_Text_WelcomeToNewWorld, MSGBOX_DEFAULT
	closemessage
	
	releaseall
	return	

LittlerootTown_01_EventScript_JirachiCelebi::
	lock
	faceplayer
	msgbox LittlerootTown_01_Text_JirachiIntro, MSGBOX_DEFAULT
	
	// JIRACHI CONTA A HISTÓRIA ANTES DE PERGUNTAR
	msgbox LittlerootTown_01_Text_JirachiCloseEyes, MSGBOX_DEFAULT
	
	// Fade to black
	fadeoutbgm 0
	fadescreen FADE_TO_BLACK
	delay 40
	
	// 1. AEGISLASH - The beginning
	showmonpic SPECIES_AEGISLASH, 10, 3
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
	msgbox LittlerootTown_Text_GrandmaStory1, MSGBOX_DEFAULT
	hidemonpic
	delay 20
	
	// 2. ALOMOMOLA - The conflict began  
	showmonpic SPECIES_ALOMOMOLA, 10, 3
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
	msgbox LittlerootTown_Text_GrandmaStory2, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 3. AVALUGG - The great battle
	showmonpic SPECIES_AVALUGG, 10, 3
	playse SE_M_SURF
	playse SE_M_THUNDERBOLT
	msgbox LittlerootTown_Text_GrandmaStory3, MSGBOX_DEFAULT
	hidemonpic
	delay 20
	
	// 4. AMAURA - The tsunami
	showmonpic SPECIES_AMAURA, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory4, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 5. AROMATISSE - Volcanoes
	showmonpic SPECIES_AROMATISSE, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory5, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 6. ARROKUDA - Devastated land
	showmonpic SPECIES_ARROKUDA, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory6, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 7. AUDINO - Stormy oceans
	showmonpic SPECIES_AUDINO, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory7, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 8. AURORUS - Survivors
	showmonpic SPECIES_AURORUS, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory8, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 9. AMOONGUSS - Hope fading
	showmonpic SPECIES_AMOONGUSS, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory9, MSGBOX_DEFAULT
	hidemonpic
	delay 20
	
	// 10. APPLIN - A legend appears
	showmonpic SPECIES_APPLIN, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory10, MSGBOX_DEFAULT
	hidemonpic
	delay 20
	
	// 11. APPLETUN - The sky guardian
	showmonpic SPECIES_APPLETUN, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory11, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 12. AXEW - Peace restored
	showmonpic SPECIES_AXEW, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory12, MSGBOX_DEFAULT
	hidemonpic
	delay 20
	
	// 13. ARBOLIVA - The world today
	showmonpic SPECIES_ARBOLIVA, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory13, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// Final - encouragement message
	showmonpic SPECIES_ARCHEN, 10, 3
	msgbox LittlerootTown_Text_GrandmaEncouragement, MSGBOX_DEFAULT
	hidemonpic

	// Return to normal screen
	fadescreen FADE_FROM_BLACK
	delay 20
	fadeinbgm 0
	
	// AGORA PERGUNTA SE QUER PULAR
	msgbox LittlerootTown_01_Text_Question, MSGBOX_YESNO
	compare VAR_RESULT, YES
	goto_if_eq LittlerootTown_01_JirachiWarp
	goto LittlerootTown_01_Stay

LittlerootTown_01_JirachiWarp::
	msgbox LittlerootTown_01_Text_JirachiTimeWarp, MSGBOX_DEFAULT
	closemessage
	
	// === JIRACHI EPIC CUTSCENE ===
	applymovement LOCALID_JIRACHI, LittlerootTown_Movement_JirachiCircleStart
	waitmovement LOCALID_JIRACHI
	
	playse SE_M_PSYBEAM
	fadescreenspeed FADE_FROM_WHITE, 12
	delay 20
	
	applymovement LOCALID_JIRACHI, LittlerootTown_Movement_JirachiCircleComplete
	waitmovement LOCALID_JIRACHI
	
	playse SE_M_MOONLIGHT
	delay 15
	playse SE_M_MORNING_SUN
	fadescreen FADE_TO_BLACK
	delay 60
	
	// === GAME PROGRESS SETUP ===
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
	goto_if_eq LittlerootTown_01_WarpMale
	goto LittlerootTown_01_WarpFemale

LittlerootTown_01_WarpMale::
	// MALE Player (Brendan)
	// Show ONLY player's mom in player's house
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_MOM
	// Hide rival mom in player's house
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
	// Hide rival's mom in rival's house
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_MOM
	
	// Hide the Pokeball in player's house
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
	
	// Set rival house state to trigger mom dialogue
	setvar VAR_LITTLEROOT_HOUSES_STATE_BRENDAN, 1
	
	// Set respawn in player's house
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
	
	// Warp to player's house 2F
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
	waitstate
	release
	end

LittlerootTown_01_WarpFemale::
	// FEMALE Player (May)
	// Show ONLY player's mom in player's house
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_MOM
	// Hide rival mom in player's house
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
	// Hide rival's mom in rival's house
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_MOM
	
	// Hide the Pokeball in player's house
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
	
	// Set rival house state to trigger mom dialogue
	setvar VAR_LITTLEROOT_HOUSES_STATE_MAY, 1
	
	// Set respawn in player's house
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
	
	// Warp to player's house 2F
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
	waitstate
	release
	end

LittlerootTown_01_Stay::
	msgbox LittlerootTown_01_Text_No, MSGBOX_DEFAULT
	closemessage

	// === RUNNING SHOES ===
	setflag FLAG_SYS_B_DASH
	setflag FLAG_RECEIVED_RUNNING_SHOES
	
	// === CRITICAL SETUP ===
	setrespawn HEAL_LOCATION_MOSSDEEP_01
	
	// Let the InsideOfTruck script handle the mom flags
	// Don't set any mom flags here to avoid conflicts
	
	setflag FLAG_VISITED_LITTLEROOT_TOWN
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
	setflag FLAG_SET_WALL_CLOCK
	setflag FLAG_RESCUED_BIRCH
	
	setvar VAR_LITTLEROOT_INTRO_STATE, 7
	setvar VAR_LITTLEROOT_TOWN_STATE, 0
	
	// === FADE TO BLACK (SLEEPING) ===
	fadescreen FADE_TO_BLACK
	delay 60
	
	// === WARP TO MOSSDEEP01 (INSIDE TENT) ===
	warp MAP_MOSSDEEP01, 11, 64
	waitstate
	
	// Continue black (still sleeping)
	delay 80
	
	release
	end

// Movements
LittlerootTown_Movement_JirachiCircleStart:
	walk_left
	walk_left
	walk_down
	walk_down
	step_end

LittlerootTown_Movement_JirachiCircleComplete:
	walk_right
	walk_right
	walk_up
	walk_up
	step_end

// Celebi Scripts
LittlerootTown_CelebiScript::
	lock
	faceplayer
	msgbox LittlerootTown_01_Text_CelebiWarning, MSGBOX_DEFAULT
	random 3
	switch VAR_RESULT
	case 0, LittlerootTown_Celebi_Case0
	case 1, LittlerootTown_Celebi_Case1
	case 2, LittlerootTown_Celebi_Case2
	release
	end

LittlerootTown_Celebi_Case0::
	msgbox LittlerootTown_01_Text_CelebiLost, MSGBOX_DEFAULT
	release
	end

LittlerootTown_Celebi_Case1::
	msgbox LittlerootTown_01_Text_CelebiHelp, MSGBOX_DEFAULT
	release
	end

LittlerootTown_Celebi_Case2::
	msgbox LittlerootTown_01_Text_CelebiForest, MSGBOX_DEFAULT
	release
	end

// Jirachi Scripts
LittlerootTown_JirachiScript::
	lock
	faceplayer
	random 3
	switch VAR_RESULT
	case 0, LittlerootTown_Jirachi_Case0
	case 1, LittlerootTown_Jirachi_Case1
	case 2, LittlerootTown_Jirachi_Case2
	release
	end

LittlerootTown_Jirachi_Case0::
	msgbox LittlerootTown_01_Text_JirachiWish, MSGBOX_DEFAULT
	release
	end

LittlerootTown_Jirachi_Case1::
	msgbox LittlerootTown_01_Text_JirachiSleep, MSGBOX_DEFAULT
	release
	end

LittlerootTown_Jirachi_Case2::
	msgbox LittlerootTown_01_Text_JirachiGrant, MSGBOX_DEFAULT
	release
	end

// ====================================================================
// TEXTS
// ====================================================================

LittlerootTown_01_Text_JirachiIntro:
	.string "Jirachi: I am the wish Pokemon!\n"
	.string "I can warp time and space!\p"
	.string "Before we begin...$"

LittlerootTown_01_Text_JirachiCloseEyes:
	.string "Close your eyes and remember...\n"
	.string "Remember how it all happened...$"

LittlerootTown_01_Text_Question:
	.string "Skip prologue?$"

LittlerootTown_01_Text_JirachiTimeWarp:
	.string "Jirachi: Your wish is my command!\n"
	.string "TIME WARP - ACTIVATE!$"

LittlerootTown_01_Text_No:
	.string "Alright, start the journey.$"

LittlerootTown_01_Text_CelebiWarning:
	.string "Celebi: Greetings, traveler of time...\p"
	.string "I have witnessed centuries pass\n"
	.string "and seen Hoenn's beauty flourish.\p"
	.string "Your journey ahead is filled with\n"
	.string "wonder and discovery.\p"
	.string "Cherish each moment, for every\n"
	.string "step shapes your legend!$"

LittlerootTown_01_Text_CelebiLost:
	.string "Celebi: The forests whisper tales\n"
	.string "of trainers who became legends.\p"
	.string "Your path is yours to create - \n"
	.string "make it memorable!$"

LittlerootTown_01_Text_CelebiHelp:
	.string "Celebi: Every great champion\n"
	.string "started with a single step.\p"
	.string "Your adventure begins today -\n"
	.string "where will it lead you?$"

LittlerootTown_01_Text_CelebiForest:
	.string "Celebi: Time flows like a river,\n"
	.string "and your journey is about to begin.\p"
	.string "The memories you'll create...\n"
	.string "they will last forever!$"

LittlerootTown_01_Text_JirachiWish:
	.string "Jirachi: I am the Wish Pokemon!\nMake a wish and I might grant it!$"

LittlerootTown_01_Text_JirachiSleep:
	.string "Jirachi: Hello! I've been sleeping\nfor 1000 years... what year is it?$"

LittlerootTown_01_Text_JirachiGrant:
	.string "Jirachi: They say I can grant any wish!\nWhat would you wish for?$"

// ====================================================================
// STORY TEXTS (English)
// ====================================================================

LittlerootTown_Text_GrandmaStory1:
	.string "Once upon a time, there was a\n"
	.string "prosperous land called HOENN...$"

LittlerootTown_Text_GrandmaStory2:
	.string "Then the conflict began between\n"
	.string "the forces of nature...$"

LittlerootTown_Text_GrandmaStory3:
	.string "The great battle between land\n"
	.string "and sea devastated the region...$"

LittlerootTown_Text_GrandmaStory4:
	.string "A tsunami swept away everything\n"
	.string "in its path...$"

LittlerootTown_Text_GrandmaStory5:
	.string "Volcanoes erupted across\n"
	.string "the entire land...$"

LittlerootTown_Text_GrandmaStory6:
	.string "The land became a barren\n"
	.string "and arid desert...$"

LittlerootTown_Text_GrandmaStory7:
	.string "The oceans roared with storms\n"
	.string "that never ended...$"

LittlerootTown_Text_GrandmaStory8:
	.string "The survivors gathered in\n"
	.string "makeshift camps...$"

LittlerootTown_Text_GrandmaStory9:
	.string "Hope began to fade from\n"
	.string "the hearts of the people...$"

LittlerootTown_Text_GrandmaStory10:
	.string "But then an ancient legend\n"
	.string "resurfaced from memories...$"

LittlerootTown_Text_GrandmaStory11:
	.string "The celestial guardian descended\n"
	.string "from the heavens to bring balance...$"

LittlerootTown_Text_GrandmaStory12:
	.string "Peace was restored, but at\n"
	.string "a very high cost...$"

LittlerootTown_Text_GrandmaStory13:
	.string "And that is how our world\n"
	.string "became what it is today...$"

LittlerootTown_Text_GrandmaEncouragement:
	.string "Now it is your turn to write\n"
	.string "a new chapter in this story!\p"
	.string "May your journey be filled\n"
	.string "with hope and courage!$"

LittlerootTown_Text_WelcomeToNewWorld:
	.string "Welcome to your new world,\n"
	.string "{PLAYER}!\p"
	.string "A new adventure awaits you!$"





