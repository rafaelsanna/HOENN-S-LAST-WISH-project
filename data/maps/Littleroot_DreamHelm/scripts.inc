// ====================================================================
// DREAM HELM - New Complete Script System
// ====================================================================

.equiv LOCALID_JIRACHI, 1
.equiv LOCALID_CELEBI, 2

Littleroot_DreamHelm_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, Littleroot_DreamHelm_OnTransition
	map_script MAP_SCRIPT_ON_FRAME_TABLE, Littleroot_DreamHelm_OnFrame
	.byte 0

Littleroot_DreamHelm_OnTransition::
	// Setup inicial quando entra no mapa
	end

Littleroot_DreamHelm_OnFrame:
	map_script_2 VAR_TEMP_0, 0, Littleroot_DreamHelm_AutoStart
	.2byte 0

Littleroot_DreamHelm_AutoStart::
	setvar VAR_TEMP_0, 1
	call LittlerootTown_01_EventScript_JirachiCelebi
	end

// ====================================================================
// MAIN EVENT - JIRACHI & CELEBI STORY + CHOICE
// ====================================================================

// Nome compatível com o map.json
LittlerootTown_01_EventScript_JirachiCelebi::
	lockall
	msgbox LittlerootTown_Text_GentleIntroduction, MSGBOX_DEFAULT
	msgbox Littleroot_DreamHelm_Text_JirachiCloseEyes, MSGBOX_DEFAULT
	
	// Fade to black and silence music
	fadeoutbgm 0
	fadescreen FADE_TO_BLACK
	delay 40
	
	// === STORY SEQUENCE ===
	// 0. ARCTIBAX - forgotten age
	showmonpic SPECIES_ARCTIBAX, 10, 3
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
	msgbox LittlerootTown_Text_GrandmaStory1, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 0.1. ARCTOVISH - Hoenn was a paradise
	showmonpic SPECIES_ARCTOVISH, 10, 3
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
	msgbox LittlerootTown_Text_GrandmaStory2, MSGBOX_DEFAULT
	hidemonpic
	delay 20	

	// 0.2. ARCTOZOLT - People and Pokémon lived as one
	showmonpic SPECIES_ARCTOZOLT, 10, 3
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
	msgbox LittlerootTown_Text_GrandmaStory3, MSGBOX_DEFAULT
	hidemonpic
	delay 20	

	// 0.3. ARMAROUGE - the balance
	showmonpic SPECIES_ARMAROUGE, 10, 3
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
	msgbox LittlerootTown_Text_GrandmaStory4, MSGBOX_DEFAULT
	hidemonpic
	delay 20	

	// 1. AEGISLASH - KYOGRE
	showmonpic SPECIES_AEGISLASH, 10, 3
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
	msgbox LittlerootTown_Text_GrandmaStory5, MSGBOX_DEFAULT
	hidemonpic
	delay 20
	
	// 2. ALOMOMOLA - GROUDON
	showmonpic SPECIES_ALOMOMOLA, 10, 3
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
	msgbox LittlerootTown_Text_GrandmaStory6, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 3. AVALUGG - The great battle
	showmonpic SPECIES_AVALUGG, 10, 3
	playse SE_M_SURF
	playse SE_M_THUNDERBOLT
	msgbox LittlerootTown_Text_GrandmaStory7, MSGBOX_DEFAULT
	hidemonpic
	delay 20
	
	// 4. AMAURA - The FLOOD
	showmonpic SPECIES_AMAURA, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory8, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 5. AROMATISSE - TSUNAMI
	showmonpic SPECIES_AROMATISSE, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory9, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 6. ARROKUDA - VOLCANO
	showmonpic SPECIES_ARROKUDA, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory10, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 7. AUDINO - DESTROYED CITIES
	showmonpic SPECIES_AUDINO, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory11, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 8. AURORUS - FLOODED CITIES
	showmonpic SPECIES_AURORUS, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory12, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 9. AMOONGUSS - LAVA ON THE LANDS
	showmonpic SPECIES_AMOONGUSS, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory13, MSGBOX_DEFAULT
	hidemonpic
	delay 20
	
	// 10. APPLIN - A legend appears
	showmonpic SPECIES_APPLIN, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory14, MSGBOX_DEFAULT
	hidemonpic
	delay 20
	
	// 11. APPLETUN - The MAGIC SHRINE
	showmonpic SPECIES_APPLETUN, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory15, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// 12. AXEW - JIRACHI POWERS
	showmonpic SPECIES_AXEW, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory16, MSGBOX_DEFAULT
	hidemonpic
	delay 20
	
	// 13. ARBOLIVA - FINAL
	showmonpic SPECIES_ARBOLIVA, 10, 3
	msgbox LittlerootTown_Text_GrandmaStory17, MSGBOX_DEFAULT
	hidemonpic
	delay 20

	// Final - MILLENNIUM COMET
	showmonpic SPECIES_ARCHEN, 10, 3
	msgbox LittlerootTown_Text_GrandmaEncouragement, MSGBOX_DEFAULT
	hidemonpic

	// Return to normal screen
	fadescreen FADE_FROM_BLACK
	delay 20
	fadeinbgm 1
	
	// Story conclusion
	msgbox LittlerootTown_Text_StoryConclusion, MSGBOX_DEFAULT
	closemessage
	delay 20
	
	// === THE CHOICE ===
	msgbox Littleroot_DreamHelm_Text_Question, MSGBOX_YESNO
	compare VAR_RESULT, YES
	goto_if_eq Littleroot_DreamHelm_SkipPrologue
	goto Littleroot_DreamHelm_PlayPrologue

// ====================================================================
// CHOICE: YES - SKIP TO LITTLEROOT HOUSE
// ====================================================================

Littleroot_DreamHelm_SkipPrologue::
	msgbox Littleroot_DreamHelm_Text_JirachiTimeWarp, MSGBOX_DEFAULT
	closemessage
	
	// === JIRACHI EPIC CUTSCENE ===
	applymovement LOCALID_JIRACHI, Littleroot_DreamHelm_Movement_JirachiCircleStart
	waitmovement LOCALID_JIRACHI
	
	playse SE_M_PSYBEAM
	fadescreenspeed FADE_TO_WHITE, 12
	delay 20
	
	applymovement LOCALID_JIRACHI, Littleroot_DreamHelm_Movement_JirachiCircleComplete
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
	goto_if_eq Littleroot_DreamHelm_WarpMale
	goto Littleroot_DreamHelm_WarpFemale

Littleroot_DreamHelm_WarpMale::
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_MOM
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_MOM
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
	setvar VAR_LITTLEROOT_HOUSES_STATE_BRENDAN, 1
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
	waitstate
	releaseall
	end

Littleroot_DreamHelm_WarpFemale::
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_MOM
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_MOM
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
	setvar VAR_LITTLEROOT_HOUSES_STATE_MAY, 1
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
	waitstate
	releaseall
	end

// ====================================================================
// CHOICE: NO - PLAY MOSSDEEP PROLOGUE
// ====================================================================

Littleroot_DreamHelm_PlayPrologue::
	msgbox Littleroot_DreamHelm_Text_No, MSGBOX_DEFAULT
	closemessage

	// === RUNNING SHOES ===
	setflag FLAG_SYS_B_DASH
	setflag FLAG_RECEIVED_RUNNING_SHOES
	
	// === SETUP FLAGS ===
	setrespawn HEAL_LOCATION_MOSSDEEP_01
	setflag FLAG_VISITED_LITTLEROOT_TOWN
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
	setflag FLAG_SET_WALL_CLOCK
	setflag FLAG_RESCUED_BIRCH
	
	// IMPORTANTE: Limpar flag do prólogo para ele acontecer
	clearflag FLAG_MOSSDEEP_PROLOGUE_COMPLETED
	
	setvar VAR_LITTLEROOT_INTRO_STATE, 7
	setvar VAR_LITTLEROOT_TOWN_STATE, 0
	setvar VAR_TEMP_0, 0  // Isso vai disparar o OnFrame do Mossdeep
	
	// === FADE TO BLACK (SLEEPING) ===
	fadescreen FADE_TO_BLACK
	delay 60
	
	// === WARP TO MOSSDEEP01 (INSIDE TENT) ===
	warp MAP_MOSSDEEP01, 14, 64
	waitstate
	releaseall
	end

// ====================================================================
// MOVEMENTS
// ====================================================================

Littleroot_DreamHelm_Movement_JirachiCircleStart:
	walk_left
	walk_left
	walk_down
	walk_down
	step_end

Littleroot_DreamHelm_Movement_JirachiCircleComplete:
	walk_right
	walk_right
	walk_up
	walk_up
	step_end

// ====================================================================
// NPC SCRIPTS (Compatible with map.json names)
// ====================================================================

LittlerootTown_CelebiScript::
	lock
	faceplayer
	msgbox Littleroot_DreamHelm_Text_CelebiWarning, MSGBOX_DEFAULT
	release
	end

Littleroot_DreamHelm_JirachiScript::
	lock
	faceplayer
	msgbox Littleroot_DreamHelm_Text_JirachiWish, MSGBOX_DEFAULT
	release
	end

// ====================================================================
// TEXT MESSAGES
// ====================================================================

LittlerootTown_Text_GentleIntroduction:
	.string "Do not be alarmed...\n"
	.string "You are in the dream realm.\p"
	.string "I will tell you the story of HOENN...\n"
	.string "The story that shaped our world...$"

Littleroot_DreamHelm_Text_JirachiCloseEyes:
	.string "Close your eyes and remember...\n"
	.string "Remember how it all happened...$"

Littleroot_DreamHelm_Text_Question:
	.string "Skip prologue?$"

Littleroot_DreamHelm_Text_JirachiTimeWarp:
	.string "JIRACHI: Your wish is my command!\n"
	.string "TIME WARP - ACTIVATE!$"

Littleroot_DreamHelm_Text_No:
	.string "Alright, start the journey.$"

Littleroot_DreamHelm_Text_CelebiWarning:
	.string "CELEBI: Greetings, traveler of time...\p"
	.string "Your journey begins soon!$"

Littleroot_DreamHelm_Text_JirachiWish:
	.string "JIRACHI: I am the Wish Pokémon!\n"
	.string "Make a wish!$"

// ====================================================================
// STORY TEXTS (Reused from original)
// ====================================================================

LittlerootTown_Text_GrandmaStory1:
	.string "In a forgotten age,\n"
	.string "before the great calamity...$"

LittlerootTown_Text_GrandmaStory2:
	.string "HOENN was a paradise divided\n"
	.string "between sea and land...$"

LittlerootTown_Text_GrandmaStory3:
	.string "People and Pokémon lived as one,\n"
	.string "their hearts beating in harmony...$"

LittlerootTown_Text_GrandmaStory4:
	.string "A delicate balance maintained\n"
	.string "by ancient forces...$"

LittlerootTown_Text_GrandmaStory5:
	.string "KYOGRE, deity of the ocean depths,\n"
	.string "keeper of the seas...$"

LittlerootTown_Text_GrandmaStory6:
	.string "GROUDON, titan of the land,\n"
	.string "master of the continents...$"

LittlerootTown_Text_GrandmaStory7:
	.string "Their eternal conflict erupted\n"
	.string "into a world-shattering battle...$"

LittlerootTown_Text_GrandmaStory8:
	.string "The seas rose with terrifying floods,\n"
	.string "swallowing coastal cities...$"

LittlerootTown_Text_GrandmaStory9:
	.string "Colossal tsunamis swept across\n"
	.string "what remained of the land...$"

LittlerootTown_Text_GrandmaStory10:
	.string "Volcanoes erupted in response,\n"
	.string "scorching the earth with fire...$"

LittlerootTown_Text_GrandmaStory11:
	.string "Cities crumbled to dust and ruins\n"
	.string "under nature's wrath...$"

LittlerootTown_Text_GrandmaStory12:
	.string "The land became submerged,\n"
	.string "an archipelago of memories...$"

LittlerootTown_Text_GrandmaStory13:
	.string "Rivers of lava flowed where\n"
	.string "forests once stood...$"

LittlerootTown_Text_GrandmaStory14:
	.string "In despair, they turned to legends\n"
	.string "of time-travel and wish-granting...$"

LittlerootTown_Text_GrandmaStory15:
	.string "Ancient shrines were built\n"
	.string "to mythical guardians...$"

LittlerootTown_Text_GrandmaStory16:
	.string "JIRACHI awakened to grant\n"
	.string "a desperate wish for salvation...$"

LittlerootTown_Text_GrandmaStory17:
	.string "The millennium comet appeared,\n"
	.string "a celestial beacon of hope...$"

LittlerootTown_Text_GrandmaEncouragement:
	.string "This is the world we inherited.\n"
	.string "Your journey begins where hope remains...$"

LittlerootTown_Text_StoryConclusion:
	.string "This is the story of all that happened\n"
	.string "in HOENN...\p"
	.string "And now, only the chosen one can help\n"
	.string "change destiny and alter the past,\l"
	.string "so the future may be prosperous again...$"
