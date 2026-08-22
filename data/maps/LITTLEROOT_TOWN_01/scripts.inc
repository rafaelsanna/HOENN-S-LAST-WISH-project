# 1 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 2 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// ====================================================================
# 3 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// DREAM HELM - pre game QOL skip
# 4 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// ====================================================================
# 5 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 6 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
.equiv LOCALID_JIRACHI, 1
# 7 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
.equiv LOCALID_CELEBI,  2
# 8 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 9 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LITTLEROOT_TOWN_01_MapScripts::
# 10 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, LittlerootTown_01_OnTransition
# 11 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.byte 0
# 12 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 13 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_OnTransition:
# 14 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_VISITED_LITTLEROOT_TOWN
# 15 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 16 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 2, LittlerootTown_EventScript_MoveMomToMaysDoor
# 17 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_unset FLAG_RESCUED_BIRCH, LittlerootTown_EventScript_SetTwinPos
# 18 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_eq VAR_LITTLEROOT_TOWN_STATE, 3, LittlerootTown_EventScript_SetMomStandingInFrontOfDoorPos
# 19 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_eq VAR_LITTLEROOT_HOUSES_STATE_MAY, 4, LittlerootTown_EventScript_SetExitedHouseAfterLatiSSTicketEvent
# 20 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_eq VAR_LITTLEROOT_HOUSES_STATE_BRENDAN, 4, LittlerootTown_EventScript_SetExitedHouseAfterLatiSSTicketEvent
# 21 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_eq VAR_OLDALE_RIVAL_STATE, 1, LittlerootTown_EventScript_MoveRivalFromOldale
# 22 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_eq VAR_LITTLEROOT_RIVAL_STATE, 3, LittlerootTown_EventScript_SetRivalLeftForRoute103
# 23 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_eq VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 1, LittlerootTown_EventScript_HideMapNamePopup
# 24 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_eq VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 2, LittlerootTown_EventScript_LeftLabAfterDexUpgrade
# 25 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	call_if_set FLAG_HIDE_LITTLEROOT_RESEARCH_ASSISTANT, LittlerootTown_EventScript_HideResearchAssistant
# 26 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 27 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 28 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 29 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_EventScript_ShowGrandmaStory::
# 30 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	lockall
# 31 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 32 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 33 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Fade to black and silence music
# 34 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_PSYBEAM
# 35 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadeoutbgm 0
# 36 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 37 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 40
# 38 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 39 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0. ARCTIBAX - forgotten age
# 40 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCTIBAX, 10, 3
# 41 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 42 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory1, MSGBOX_DEFAULT
# 43 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 44 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 45 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 46 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0.1. ARCTOVISH - Hoenn was a paradise
# 47 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCTOVISH, 10, 3
# 48 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 49 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory1, MSGBOX_DEFAULT
# 50 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 51 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20	
# 52 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 53 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0.2. ARCTOZOLT - People and Pokémon lived as one
# 54 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCTOZOLT, 10, 3
# 55 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 56 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory1, MSGBOX_DEFAULT
# 57 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 58 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20	
# 59 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 60 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0.3. ARMAROUGE - the balance
# 61 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARMAROUGE, 10, 3
# 62 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 63 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory1, MSGBOX_DEFAULT
# 64 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 65 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20	
# 66 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 67 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 1. AEGISLASH - KYOGRE
# 68 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AEGISLASH, 10, 3
# 69 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 70 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory1, MSGBOX_DEFAULT
# 71 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 72 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 73 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 74 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 2. ALOMOMOLA - GROUNDON
# 75 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ALOMOMOLA, 10, 3
# 76 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
# 77 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory2, MSGBOX_DEFAULT
# 78 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 79 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 80 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 81 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 3. AVALUGG - The great battle
# 82 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AVALUGG, 10, 3
# 83 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_SURF
# 84 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_THUNDERBOLT
# 85 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory3, MSGBOX_DEFAULT
# 86 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 87 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 88 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 89 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 4. AMAURA - The FLOOD
# 90 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AMAURA, 10, 3
# 91 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory4, MSGBOX_DEFAULT
# 92 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 93 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 94 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 95 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 5. AROMATISSE - TSUNAMI
# 96 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AROMATISSE, 10, 3
# 97 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory5, MSGBOX_DEFAULT
# 98 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 99 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 100 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 101 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 6. ARROKUDA - VOLCANO
# 102 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARROKUDA, 10, 3
# 103 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory6, MSGBOX_DEFAULT
# 104 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 105 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 106 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 107 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 7. AUDINO - DESTROYED CITIES
# 108 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AUDINO, 10, 3
# 109 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory7, MSGBOX_DEFAULT
# 110 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 111 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 112 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 113 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 8. AURORUS - FLOODED CITIES
# 114 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AURORUS, 10, 3
# 115 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory8, MSGBOX_DEFAULT
# 116 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 117 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 118 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 119 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 9. AMOONGUSS - LAVA ON THE LANDS
# 120 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AMOONGUSS, 10, 3
# 121 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory9, MSGBOX_DEFAULT
# 122 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 123 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 124 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 125 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 10. APPLIN - A legend appears jirachi and celebi
# 126 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_APPLIN, 10, 3
# 127 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory10, MSGBOX_DEFAULT
# 128 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 129 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 130 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 131 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 11. APPLETUN - The MAGIC SHRINE
# 132 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_APPLETUN, 10, 3
# 133 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory11, MSGBOX_DEFAULT
# 134 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 135 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 136 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 137 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 12. AXEW - JIRACHI USING ITS POWERS TO GRANT A WISH
# 138 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AXEW, 10, 3
# 139 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory12, MSGBOX_DEFAULT
# 140 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 141 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 142 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 143 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 13. ARBOLIVA - JIRACHI USING ITS POWERS TO GRANT A WISH
# 144 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARBOLIVA, 10, 3
# 145 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory13, MSGBOX_DEFAULT
# 146 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 147 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 148 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 149 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Final - MILLENION COMMET
# 150 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCHEN, 10, 3
# 151 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 152 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 153 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 154 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Return to normal screen
# 155 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 156 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 157 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 158 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Restore ambient music
# 159 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadeinbgm 0
# 160 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 161 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_WelcomeToNewWorld, MSGBOX_DEFAULT
# 162 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	closemessage
# 163 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 164 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	releaseall
# 165 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	return	
# 166 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 167 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_EventScript_JirachiCelebi::
# 168 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	lockall
# 169 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL 
# 170 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GentleIntroduction, MSGBOX_DEFAULT
# 171 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot 
# 172 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL 
# 173 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_JirachiCloseEyes, MSGBOX_DEFAULT
# 174 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot 
# 175 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 176 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Fade to black and silence music
# 177 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadeoutbgm 0
# 178 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 179 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot 
# 180 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 40
# 181 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 182 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0. ARCTIBAX - forgotten age
# 183 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCTIBAX, 10, 3
# 184 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_LATIOS, CRY_MODE_ENCOUNTER
# 185 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory1, MSGBOX_DEFAULT
# 186 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 187 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 188 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 189 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0.1. ARCTOVISH - Hoenn was a paradise
# 190 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCTOVISH, 10, 3
# 191 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_SWAMPERT, CRY_MODE_ENCOUNTER
# 192 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory2, MSGBOX_DEFAULT
# 193 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 194 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20	
# 195 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 196 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0.2. ARCTOZOLT - People and Pokémon lived as one
# 197 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCTOZOLT, 10, 3
# 198 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_RAYQUAZA, CRY_MODE_ENCOUNTER
# 199 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory3, MSGBOX_DEFAULT
# 200 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 201 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20	
# 202 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 203 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 0.3. ARMAROUGE - the balance
# 204 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARMAROUGE, 10, 3
# 205 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_FLY
# 206 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory4, MSGBOX_DEFAULT
# 207 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 208 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20	
# 209 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 210 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 1. AEGISLASH - KYOGRE
# 211 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AEGISLASH, 10, 3
# 212 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 213 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory5, MSGBOX_DEFAULT
# 214 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 215 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 216 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 217 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 2. ALOMOMOLA - GROUNDON
# 218 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ALOMOMOLA, 10, 3
# 219 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
# 220 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory6, MSGBOX_DEFAULT
# 221 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 222 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 223 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 224 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 3. AVALUGG - The great battle
# 225 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AVALUGG, 10, 3
# 226 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_SURF
# 227 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_THUNDERBOLT
# 228 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory7, MSGBOX_DEFAULT
# 229 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 230 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 231 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 232 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 4. AMAURA - The FLOOD
# 233 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AMAURA, 10, 3
# 234 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_BUBBLE_BEAM
# 235 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory8, MSGBOX_DEFAULT
# 236 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 237 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 238 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 239 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 5. AROMATISSE - TSUNAMI
# 240 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AROMATISSE, 10, 3
# 241 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_SURF
# 242 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory9, MSGBOX_DEFAULT
# 243 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 244 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 245 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 246 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 6. ARROKUDA - VOLCANO
# 247 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARROKUDA, 10, 3
# 248 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_HEAT_WAVE
# 249 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory10, MSGBOX_DEFAULT
# 250 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 251 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 252 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 253 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 7. AUDINO - DESTROYED CITIES
# 254 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AUDINO, 10, 3
# 255 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_EARTHQUAKE
# 256 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory11, MSGBOX_DEFAULT
# 257 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 258 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 259 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 260 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 8. AURORUS - FLOODED CITIES
# 261 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AURORUS, 10, 3
# 262 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_SURF
# 263 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory12, MSGBOX_DEFAULT
# 264 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 265 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 266 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 267 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 9. AMOONGUSS - LAVA ON THE LANDS
# 268 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AMOONGUSS, 10, 3
# 269 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_HEAT_WAVE
# 270 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory13, MSGBOX_DEFAULT
# 271 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 272 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 273 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 274 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 10. APPLIN - A legend appears jirachi and celebi
# 275 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_APPLIN, 10, 3
# 276 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_CELEBI, CRY_MODE_ENCOUNTER
# 277 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory14, MSGBOX_DEFAULT
# 278 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 279 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 280 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 281 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 11. APPLETUN - The MAGIC SHRINE
# 282 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_APPLETUN, 10, 3
# 283 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_TELEPORT
# 284 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory15, MSGBOX_DEFAULT
# 285 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 286 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 287 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 288 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 12. AXEW - JIRACHI USING ITS POWERS TO GRANT A WISH
# 289 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_AXEW, 10, 3
# 290 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_HOOTHOOT, CRY_MODE_ENCOUNTER
# 291 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory16, MSGBOX_DEFAULT
# 292 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 293 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 294 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 295 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// 13. ARBOLIVA - JIRACHI USING ITS POWERS TO GRANT A WISH
# 296 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARBOLIVA, 10, 3
# 297 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playmoncry SPECIES_JIRACHI, CRY_MODE_ENCOUNTER
# 298 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaStory17, MSGBOX_DEFAULT
# 299 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 300 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 301 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 302 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Final - MILLENION COMMET
# 303 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	showmonpic SPECIES_ARCHEN, 10, 3
# 304 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_COSMIC_POWER
# 305 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 306 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	hidemonpic
# 307 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 308 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// Return to normal screen
# 309 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 310 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 311 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadeinbgm 1
# 312 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 313 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// TRANSIÇÃO SUAVE ANTES DA PERGUNTA
# 314 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_Text_StoryConclusion, MSGBOX_DEFAULT
# 315 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	closemessage
# 316 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 317 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 318 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// AGORA PERGUNTA SE QUER PULAR
# 319 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_Question, MSGBOX_YESNO
# 320 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	compare VAR_RESULT, YES
# 321 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	goto_if_eq LittlerootTown_01_JirachiWarp
# 322 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	goto LittlerootTown_01_Stay
# 323 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 324 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_JirachiWarp::
# 325 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 326 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_JirachiTimeWarp, MSGBOX_DEFAULT
# 327 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot
# 328 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	closemessage
# 329 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 330 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === JIRACHI EPIC CUTSCENE ===
# 331 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	applymovement LOCALID_JIRACHI, LittlerootTown_Movement_JirachiCircleStart
# 332 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	waitmovement LOCALID_JIRACHI
# 333 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 334 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_PSYBEAM
# 335 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 12
# 336 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 20
# 337 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 338 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	applymovement LOCALID_JIRACHI, LittlerootTown_Movement_JirachiCircleComplete
# 339 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	waitmovement LOCALID_JIRACHI
# 340 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 341 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_MOONLIGHT
# 342 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 15
# 343 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	playse SE_M_MORNING_SUN
# 344 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 345 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 60
# 346 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 347 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === GAME PROGRESS SETUP ===
# 348 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_VISITED_LITTLEROOT_TOWN
# 349 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
# 350 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
# 351 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_SET_WALL_CLOCK
# 352 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_RESCUED_BIRCH
# 353 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 354 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_SYS_B_DASH
# 355 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_RECEIVED_RUNNING_SHOES
# 356 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag 0x44   
# 357 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_PARTY_MENU_PC_ACCESS         
# 358 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 359 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 6
# 360 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 4
# 361 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 362 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	checkplayergender
# 363 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	compare VAR_RESULT, MALE
# 364 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	goto_if_eq LittlerootTown_01_WarpMale
# 365 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	goto LittlerootTown_01_WarpFemale
# 366 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 367 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_WarpMale::
# 368 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// MALE Player (Brendan)
# 369 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Show ONLY player's mom in player's house
# 370 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_MOM
# 371 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide rival mom in player's house
# 372 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 373 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide rival's mom in rival's house
# 374 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_MOM
# 375 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 376 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide the Pokeball in player's house
# 377 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
# 378 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 379 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Set rival house state to trigger mom dialogue
# 380 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_HOUSES_STATE_BRENDAN, 1
# 381 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 382 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Set respawn in player's house
# 383 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
# 384 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 385 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Warp to player's house 2F
# 386 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
# 387 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	waitstate
# 388 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 389 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 390 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 391 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_WarpFemale::
# 392 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// FEMALE Player (May)
# 393 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Show ONLY player's mom in player's house
# 394 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_MOM
# 395 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide rival mom in player's house
# 396 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 397 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide rival's mom in rival's house
# 398 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_MOM
# 399 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 400 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Hide the Pokeball in player's house
# 401 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
# 402 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 403 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Set rival house state to trigger mom dialogue
# 404 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_HOUSES_STATE_MAY, 1
# 405 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 406 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Set respawn in player's house
# 407 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
# 408 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 409 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Warp to player's house 2F
# 410 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
# 411 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	waitstate
# 412 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 413 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 414 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 415 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Stay::
# 416 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_No, MSGBOX_DEFAULT
# 417 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	closemessage
# 418 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 419 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === RUNNING SHOES ===
# 420 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_SYS_B_DASH
# 421 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_RECEIVED_RUNNING_SHOES
# 422 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 423 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === CRITICAL SETUP ===
# 424 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 425 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 426 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Let the InsideOfTruck script handle the mom flags
# 427 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Don't set any mom flags here to avoid conflicts
# 428 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 429 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_VISITED_LITTLEROOT_TOWN
# 430 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
# 431 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
# 432 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_SET_WALL_CLOCK
# 433 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setflag FLAG_RESCUED_BIRCH
# 434 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 435 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 7
# 436 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 0
# 437 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 438 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === FADE TO BLACK (SLEEPING) ===
# 439 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 440 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 60
# 441 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 442 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// === WARP TO MOSSDEEP01 (INSIDE TENT) ===
# 443 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	warp MAP_MOSSDEEP01, 14, 64
# 444 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	waitstate
# 445 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 446 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	// Continue black (still sleeping)
# 447 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	delay 80
# 448 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	
# 449 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 450 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 451 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 452 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// Movements
# 453 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Movement_JirachiCircleStart:
# 454 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_left
# 455 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_left
# 456 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_down
# 457 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_down
# 458 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	step_end
# 459 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 460 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Movement_JirachiCircleComplete:
# 461 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_right
# 462 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_right
# 463 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_up
# 464 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	walk_up
# 465 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	step_end
# 466 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 467 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// Celebi Scripts
# 468 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_CelebiScript::  
# 469 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    lockall
# 470 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    faceplayer
# 471 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL 
# 472 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    msgbox LittlerootTown_01_Text_CelebiWarning, MSGBOX_DEFAULT
# 473 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot
# 474 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    random 3
# 475 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    switch VAR_RESULT
# 476 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    case 0, LittlerootTown_Celebi_Case0
# 477 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    case 1, LittlerootTown_Celebi_Case1
# 478 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    case 2, LittlerootTown_Celebi_Case2
# 479 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    releaseall
# 480 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    end
# 481 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 482 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Celebi_Case0::
# 483 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    lockall
# 484 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    faceplayer
# 485 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL 
# 486 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    msgbox LittlerootTown_01_Text_CelebiLost, MSGBOX_DEFAULT
# 487 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot 
# 488 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    releaseall
# 489 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    end
# 490 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 491 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Celebi_Case1::
# 492 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    lockall
# 493 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    faceplayer
# 494 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL 
# 495 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    msgbox LittlerootTown_01_Text_CelebiHelp, MSGBOX_DEFAULT
# 496 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot 
# 497 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    releaseall
# 498 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    end
# 499 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 500 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Celebi_Case2::
# 501 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    lockall
# 502 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    faceplayer
# 503 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL 
# 504 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    msgbox LittlerootTown_01_Text_CelebiForest, MSGBOX_DEFAULT
# 505 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot 
# 506 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    releaseall
# 507 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
    end
# 508 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 509 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 510 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// Jirachi Scripts
# 511 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_JirachiScript::
# 512 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	lock
# 513 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	faceplayer
# 514 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	random 3
# 515 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	switch VAR_RESULT
# 516 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	case 0, LittlerootTown_Jirachi_Case0
# 517 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	case 1, LittlerootTown_Jirachi_Case1
# 518 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	case 2, LittlerootTown_Jirachi_Case2
# 519 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 520 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 521 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 522 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Jirachi_Case0::
# 523 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 524 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_JirachiWish, MSGBOX_DEFAULT
# 525 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot
# 526 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 527 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 528 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 529 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Jirachi_Case1::
# 530 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 531 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_JirachiSleep, MSGBOX_DEFAULT
# 532 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot
# 533 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 534 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 535 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 536 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Jirachi_Case2::
# 537 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 538 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	msgbox LittlerootTown_01_Text_JirachiGrant, MSGBOX_DEFAULT
# 539 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	removefieldmugshot
# 540 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	release
# 541 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	end
# 542 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 543 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// ====================================================================
# 544 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// TEXTS
# 545 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// ====================================================================
# 546 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 547 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GentleIntroduction:
# 548 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "JIRACHI: Do not be alarmed…\n"
# 549 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "You are in the DREAM REALM.\p"
# 550 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "I will tell you the story of HOENN…\n"
# 551 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "The story that shaped our world.$"
# 552 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 553 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiIntro:
# 554 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "JIRACHI: I am the wish POKéMON!\n"
# 555 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "I can warp time and space!\p"
# 556 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Before we begin…$"
# 557 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 558 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiCloseEyes:
# 559 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Close your eyes and remember…\n"
# 560 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Remember how it all happened…$"
# 561 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 562 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_Question:
# 563 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Skip prologue?$"
# 564 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 565 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiTimeWarp:
# 566 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "JIRACHI: Your wish is my command!\n"
# 567 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "TIME WARP - ACTIVATE!$"
# 568 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 569 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_No:
# 570 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Then, start the journey.$"
# 571 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 572 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_CelebiWarning:
# 573 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "CELEBI: {PLAYER}{KUN}…\p"
# 574 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Do not fear this place.\n"
# 575 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "What you see is only a dream…\p"
# 576 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "A fragment of a future that must\n"
# 577 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "never be allowed to happen.\p"
# 578 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Walk carefully, traveler.\n"
# 579 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "HOENN's fate is already shifting.$"
# 580 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 581 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_CelebiLost:
# 582 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "The forests whisper tales\n"
# 583 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "The winds of time are trembling…\p"
# 584 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "I have seen a HOENN drowned in fire\n"
# 585 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "and swallowed by ancient storms.\p"
# 586 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "But that future is not final.\n"
# 587 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Your choices can rewrite it.$"
# 588 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 589 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 590 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_CelebiHelp:
# 591 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Dreams with the voices of those\n"
# 592 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "who still believe in hope…\p"
# 593 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "You were called because the world\n"
# 594 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "cannot heal itself alone.\p"
# 595 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Walk forward.\n"
# 596 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "HOENN is waiting for you.$"
# 597 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 598 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_CelebiForest:
# 599 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "CELEBI: Time flows like a river,\n"
# 600 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "but it flows strangely here…\l"
# 601 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "As if past and future overlap.\p"
# 602 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Follow the path you feel within.\p"
# 603 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Your soul remembers the truth,\n"
# 604 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "even if your mind does not.$"
# 605 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 606 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiWish:
# 607 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "JIRACHI: I am the Wish POKéMON!\nMake a wish and I might grant it!$"
# 608 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 609 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiSleep:
# 610 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "JIRACHI: Hello! I've been sleeping\nfor 1000 years... what year is it?$"
# 611 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 612 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_01_Text_JirachiGrant:
# 613 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "JIRACHI: They say I can grant any wish!\nWhat would you wish for?$"
# 614 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 615 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 616 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// ====================================================================
# 617 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// OPTIMIZED STORY TEXTS (English - Coherent with All Images)
# 618 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
// ====================================================================
# 619 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 620 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory1:
# 621 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "In a forgotten age,\n"
# 622 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "before the great calamity…$"
# 623 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 624 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory2:
# 625 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "HOENN was a paradise divided\n"
# 626 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "between sea and land…$"
# 627 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 628 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory3:
# 629 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "People and POKéMON lived as one,\n"
# 630 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "their hearts beating in harmony…$"
# 631 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 632 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory4:
# 633 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "A delicate balance maintained\n"
# 634 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "by ancient forces…$"
# 635 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 636 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory5:
# 637 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "KYOGRE, deity of the ocean depths,\n"
# 638 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "keeper of the seas…$"
# 639 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 640 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory6:
# 641 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "GROUDON, titan of the land,\n"
# 642 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "master of the continents…$"
# 643 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 644 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory7:
# 645 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Their eternal conflict erupted\n"
# 646 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "into a world-shattering battle…$"
# 647 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 648 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory8:
# 649 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "The seas rose with terrifying floods,\n"
# 650 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "swallowing coastal cities…$"
# 651 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 652 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory9:
# 653 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Colossal tsunamis swept across\n"
# 654 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "what remained of the land…$"
# 655 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 656 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory10:
# 657 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Volcanoes erupted in response,\n"
# 658 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "scorching the earth with fire…$"
# 659 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 660 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory11:
# 661 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Cities crumbled to dust and ruins\n"
# 662 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "under nature's wrath…$"
# 663 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 664 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory12:
# 665 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "The land became submerged,\n"
# 666 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "an archipelago of memories…$"
# 667 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 668 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory13:
# 669 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Rivers of lava flowed where\n"
# 670 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "forests once stood…$"
# 671 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 672 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory14:
# 673 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "In despair, they turned to legends\n"
# 674 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "of time-travel and wish-granting…$"
# 675 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 676 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory15:
# 677 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Ancient shrines were built\n"
# 678 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "to mythical guardians…$"
# 679 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 680 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory16:
# 681 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "JIRACHI awakened to grant\n"
# 682 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "a desperate wish for salvation…$"
# 683 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 684 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaStory17:
# 685 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "The MILLENNIUM COMET appeared,\n"
# 686 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "a celestial beacon of hope…$"
# 687 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 688 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_GrandmaEncouragement:
# 689 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "This is the world we inherited.\n"
# 690 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Your journey begins where hope remains…$"
# 691 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 692 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 693 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
//////////////////////////////// TALE END ////////////////////////
# 694 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 695 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_StoryConclusion:
# 696 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "This is the story of all that happened\n"
# 697 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "in HOENN…\p"
# 698 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "And now, only the chosen one can help\n"
# 699 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "change destiny and alter the past,\l"
# 700 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "so the future may be prosperous again…$"
# 701 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 702 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_WelcomeToNewWorld:
# 703 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Welcome to your new world,\n"
# 704 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "{PLAYER}!\p"
# 705 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "A new adventure awaits you!$"
# 706 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"

# 707 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
LittlerootTown_Text_JirachiContinue:
# 708 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "JIRACHI: Then let us continue…\n"
# 709 "data/maps/LITTLEROOT_TOWN_01/scripts.pory"
	.string "Your adventure awaits!$"
