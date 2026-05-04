# 1 "data/maps/MOSSDEEP01/scripts.pory"

# 2 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 3 "data/maps/MOSSDEEP01/scripts.pory"
// MOSSDEEP01 - TIME GEARS QUEST CELEBI + JIRACHI
# 4 "data/maps/MOSSDEEP01/scripts.pory"
// Simplified - Wailord Blocking Path (No Secret Plants)
# 5 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 6 "data/maps/MOSSDEEP01/scripts.pory"

# 7 "data/maps/MOSSDEEP01/scripts.pory"
// Local IDs
# 8 "data/maps/MOSSDEEP01/scripts.pory"

# 9 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 10 "data/maps/MOSSDEEP01/scripts.pory"
// MAP SCRIPTS
# 11 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 12 "data/maps/MOSSDEEP01/scripts.pory"

# 13 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_MapScripts::
# 14 "data/maps/MOSSDEEP01/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, MOSSDEEP01_OnFrame
# 15 "data/maps/MOSSDEEP01/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MOSSDEEP01_OnTransition
# 16 "data/maps/MOSSDEEP01/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, MOSSDEEP01_OnResume
# 17 "data/maps/MOSSDEEP01/scripts.pory"
	.byte 0
# 18 "data/maps/MOSSDEEP01/scripts.pory"

# 19 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_OnFrame:
# 20 "data/maps/MOSSDEEP01/scripts.pory"
	map_script_2 VAR_TEMP_0, 0, MOSSDEEP01_EventScript_Prologue
# 21 "data/maps/MOSSDEEP01/scripts.pory"
	.2byte 0
# 22 "data/maps/MOSSDEEP01/scripts.pory"

# 23 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_OnTransition:
# 24 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 25 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_PROLOGUE_COMPLETED, MOSSDEEP01_SkipPrologue
# 26 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 0
# 27 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_ContinueTransition
# 28 "data/maps/MOSSDEEP01/scripts.pory"

# 29 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_SkipPrologue:
# 30 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 1
# 31 "data/maps/MOSSDEEP01/scripts.pory"

# 32 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_ContinueTransition:
# 33 "data/maps/MOSSDEEP01/scripts.pory"
	// Hide/show Celebi based on rescue status
# 34 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideStaticCelebi
# 35 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideFollowerCelebi
# 36 "data/maps/MOSSDEEP01/scripts.pory"
	
# 37 "data/maps/MOSSDEEP01/scripts.pory"
    // Wailord management: hide UNTIL Celebi is rescued
# 38 "data/maps/MOSSDEEP01/scripts.pory"
    call_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_HideWailord
# 39 "data/maps/MOSSDEEP01/scripts.pory"
    call_if_set   FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_ShowWailord
# 40 "data/maps/MOSSDEEP01/scripts.pory"
	
# 41 "data/maps/MOSSDEEP01/scripts.pory"
	// Hide comet initially
# 42 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_HideComet
# 43 "data/maps/MOSSDEEP01/scripts.pory"
	
# 44 "data/maps/MOSSDEEP01/scripts.pory"
	// Hide collected items
# 45 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_HideItem1
# 46 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_HideItem2  
# 47 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_HideItem3
# 48 "data/maps/MOSSDEEP01/scripts.pory"
	
# 49 "data/maps/MOSSDEEP01/scripts.pory"
	// Keep Jirachi awake if already awoken
# 50 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_EventScript_KeepJirachiAwake
# 51 "data/maps/MOSSDEEP01/scripts.pory"
	
# 52 "data/maps/MOSSDEEP01/scripts.pory"
	// Setup rival NPC (gender-based)
# 53 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_SetupRivalNPC
# 54 "data/maps/MOSSDEEP01/scripts.pory"
	
# 55 "data/maps/MOSSDEEP01/scripts.pory"
	// Manage Wally and Pidgeot visibility
# 56 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_HideInitialWally
# 57 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_unset FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_ShowInitialWally
# 58 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_ShowCloneWally
# 59 "data/maps/MOSSDEEP01/scripts.pory"
	call_if_unset FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_HideCloneWally
# 60 "data/maps/MOSSDEEP01/scripts.pory"
	
# 61 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 62 "data/maps/MOSSDEEP01/scripts.pory"

# 63 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_OnResume:
# 64 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 65 "data/maps/MOSSDEEP01/scripts.pory"

# 66 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 67 "data/maps/MOSSDEEP01/scripts.pory"
// PROLOGUE EVENT
# 68 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 69 "data/maps/MOSSDEEP01/scripts.pory"

# 70 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Prologue::
# 71 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_TEMP_0, 1
# 72 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 73 "data/maps/MOSSDEEP01/scripts.pory"
	delay 120
# 74 "data/maps/MOSSDEEP01/scripts.pory"
	
# 75 "data/maps/MOSSDEEP01/scripts.pory"
	// Earthquake effects
# 76 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_ROCK_THROW
# 77 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 3
# 78 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 3
# 79 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 8
# 80 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 10
# 81 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 82 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 83 "data/maps/MOSSDEEP01/scripts.pory"
	delay 80
# 84 "data/maps/MOSSDEEP01/scripts.pory"
	
# 85 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_EARTHQUAKE
# 86 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 4
# 87 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 4
# 88 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 10
# 89 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 12
# 90 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 91 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 92 "data/maps/MOSSDEEP01/scripts.pory"
	delay 100
# 93 "data/maps/MOSSDEEP01/scripts.pory"
	
# 94 "data/maps/MOSSDEEP01/scripts.pory"
	// Player exits tent
# 95 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_ExitTent
# 96 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 97 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 98 "data/maps/MOSSDEEP01/scripts.pory"
	
# 99 "data/maps/MOSSDEEP01/scripts.pory"
	// Grandma dialogue
# 100 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_TEMP_1
# 101 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_GRANDMA_MOSSDEEP01, Common_Movement_FacePlayer
# 102 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 103 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaWelcome, MSGBOX_DEFAULT
# 104 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 105 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 106 "data/maps/MOSSDEEP01/scripts.pory"
	
# 107 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_EarthquakeWarning, MSGBOX_DEFAULT
# 108 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 2
# 109 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 2
# 110 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 5
# 111 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 8
# 112 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 113 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 114 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_ROCK_THROW
# 115 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 116 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 117 "data/maps/MOSSDEEP01/scripts.pory"
	
# 118 "data/maps/MOSSDEEP01/scripts.pory"
	// Give Shiny Charm
# 119 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaGivesCharm, MSGBOX_DEFAULT
# 120 "data/maps/MOSSDEEP01/scripts.pory"
	giveitem ITEM_SHINY_CHARM
# 121 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaCharmExplanation, MSGBOX_DEFAULT
# 122 "data/maps/MOSSDEEP01/scripts.pory"
	
# 123 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HoennDestroyed, MSGBOX_DEFAULT
# 124 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8004, 1
# 125 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8005, 1
# 126 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8006, 2
# 127 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8007, 5
# 128 "data/maps/MOSSDEEP01/scripts.pory"
	special ShakeCamera
# 129 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 130 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 131 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 132 "data/maps/MOSSDEEP01/scripts.pory"
	
# 133 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PlayerDecision, MSGBOX_DEFAULT
# 134 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 135 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 136 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GoodLuck, MSGBOX_DEFAULT
# 137 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 138 "data/maps/MOSSDEEP01/scripts.pory"
	
# 139 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_PROLOGUE_COMPLETED
# 140 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 141 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 142 "data/maps/MOSSDEEP01/scripts.pory"

# 143 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_ExitTent:
# 144 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 145 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 146 "data/maps/MOSSDEEP01/scripts.pory"
	walk_down
# 147 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 148 "data/maps/MOSSDEEP01/scripts.pory"

# 149 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 150 "data/maps/MOSSDEEP01/scripts.pory"
// UTILITY FUNCTIONS
# 151 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 152 "data/maps/MOSSDEEP01/scripts.pory"

# 153 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideStaticCelebi::
# 154 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
# 155 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 156 "data/maps/MOSSDEEP01/scripts.pory"

# 157 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideFollowerCelebi::
# 158 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_FOLLOWER
# 159 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 160 "data/maps/MOSSDEEP01/scripts.pory"

# 161 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideWailord::
# 162 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WAILORD_PATH
# 163 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 164 "data/maps/MOSSDEEP01/scripts.pory"

# 165 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowWailord::
# 166 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WAILORD_PATH
# 167 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectsubpriority LOCALID_WAILORD_BLOCKER, MAP_MOSSDEEP01, 0xFF
# 168 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 169 "data/maps/MOSSDEEP01/scripts.pory"

# 170 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideComet::
# 171 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_COMET
# 172 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 173 "data/maps/MOSSDEEP01/scripts.pory"

# 174 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem1::
# 175 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_1
# 176 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 177 "data/maps/MOSSDEEP01/scripts.pory"

# 178 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem2::
# 179 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_2
# 180 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 181 "data/maps/MOSSDEEP01/scripts.pory"

# 182 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideItem3::
# 183 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_3
# 184 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 185 "data/maps/MOSSDEEP01/scripts.pory"

# 186 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideInitialWally::
# 187 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_INITIAL
# 188 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_INITIAL
# 189 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 190 "data/maps/MOSSDEEP01/scripts.pory"

# 191 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowInitialWally::
# 192 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_INITIAL
# 193 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_INITIAL
# 194 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 195 "data/maps/MOSSDEEP01/scripts.pory"

# 196 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowCloneWally::
# 197 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_CLONE
# 198 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_CLONE
# 199 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 200 "data/maps/MOSSDEEP01/scripts.pory"

# 201 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_HideCloneWally::
# 202 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_CLONE
# 203 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_CLONE
# 204 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 205 "data/maps/MOSSDEEP01/scripts.pory"

# 206 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_KeepJirachiAwake::
# 207 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_NORTH
# 208 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 209 "data/maps/MOSSDEEP01/scripts.pory"

# 210 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 211 "data/maps/MOSSDEEP01/scripts.pory"
// TIME GEAR COLLECTION
# 212 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 213 "data/maps/MOSSDEEP01/scripts.pory"

# 214 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item1::
# 215 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 216 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 217 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 218 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem1, MSGBOX_DEFAULT
# 219 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 220 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear1
# 221 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 222 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_1
# 223 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_1
# 224 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 225 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 226 "data/maps/MOSSDEEP01/scripts.pory"

# 227 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item2::
# 228 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 229 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 230 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 231 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem2, MSGBOX_DEFAULT
# 232 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 233 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear2
# 234 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 235 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_2
# 236 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_2
# 237 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 238 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 239 "data/maps/MOSSDEEP01/scripts.pory"

# 240 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item3::
# 241 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 242 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 243 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_Item_AlreadyCollected
# 244 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_FoundItem3, MSGBOX_DEFAULT
# 245 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 246 "data/maps/MOSSDEEP01/scripts.pory"
	message MOSSDEEP01_Text_ObtainedTimeGear3
# 247 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 248 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_COLLECTED_ITEM_3
# 249 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_TIME_GEAR_3
# 250 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 251 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 252 "data/maps/MOSSDEEP01/scripts.pory"

# 253 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Item_AlreadyCollected::
# 254 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_AlreadyCollected, MSGBOX_DEFAULT
# 255 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 256 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 257 "data/maps/MOSSDEEP01/scripts.pory"

# 258 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 259 "data/maps/MOSSDEEP01/scripts.pory"
// CELEBI RESCUE EVENT
# 260 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 261 "data/maps/MOSSDEEP01/scripts.pory"

# 262 "data/maps/MOSSDEEP01/scripts.pory"
// No evento de interação com Celebi, após mostrar o Wailord:
# 263 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Celebi::
# 264 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 265 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 266 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_CelebiAlreadyRescued
# 267 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_EventScript_CelebiNeedGears
# 268 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_EventScript_CelebiNeedGears
# 269 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_EventScript_CelebiNeedGears
# 270 "data/maps/MOSSDEEP01/scripts.pory"

# 271 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiPower, MSGBOX_DEFAULT
# 272 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 273 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_HYPER_BEAM
# 274 "data/maps/MOSSDEEP01/scripts.pory"
	
# 275 "data/maps/MOSSDEEP01/scripts.pory"
	// Transform static Celebi into follower
# 276 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 277 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
# 278 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 279 "data/maps/MOSSDEEP01/scripts.pory"
	
# 280 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_CELEBI_RESCUED
# 281 "data/maps/MOSSDEEP01/scripts.pory"
	
# 282 "data/maps/MOSSDEEP01/scripts.pory"
	// Show Wailord path and set subpriority to walk over it
# 283 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WAILORD_PATH
# 284 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectsubpriority LOCALID_WAILORD_BLOCKER, MAP_MOSSDEEP01, 0xFF
# 285 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiCallsWailord, MSGBOX_DEFAULT
# 286 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 287 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 288 "data/maps/MOSSDEEP01/scripts.pory"

# 289 "data/maps/MOSSDEEP01/scripts.pory"
	// Set Celebi as follower
# 290 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 291 "data/maps/MOSSDEEP01/scripts.pory"
	setfollowernpc LOCALID_CELEBI_STATIC, FNPC_ALL, NULL, 0
# 292 "data/maps/MOSSDEEP01/scripts.pory"

# 293 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiCalmed, MSGBOX_DEFAULT
# 294 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 295 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 296 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 297 "data/maps/MOSSDEEP01/scripts.pory"

# 298 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiNeedGears::
# 299 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARAQUANID, 10, 3
# 300 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiHelp, MSGBOX_DEFAULT
# 301 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 302 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 303 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 304 "data/maps/MOSSDEEP01/scripts.pory"

# 305 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiAlreadyRescued::
# 306 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiThanks, MSGBOX_DEFAULT
# 307 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 308 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 309 "data/maps/MOSSDEEP01/scripts.pory"

# 310 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 311 "data/maps/MOSSDEEP01/scripts.pory"
// MIGHTYENA ZONE TRIGGER
# 312 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 313 "data/maps/MOSSDEEP01/scripts.pory"

# 314 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaZone::
# 315 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 316 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_MightyenaZone_Safe
# 317 "data/maps/MOSSDEEP01/scripts.pory"
	
# 318 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_PIN
# 319 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_ExclamationMark
# 320 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 321 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 322 "data/maps/MOSSDEEP01/scripts.pory"
	
# 323 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_FindNearestMightyena
# 324 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_0x8008, Common_Movement_ExclamationMark
# 325 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 326 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_0x8008, Common_Movement_FacePlayer
# 327 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 328 "data/maps/MOSSDEEP01/scripts.pory"
	
# 329 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 330 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 331 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 332 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 333 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 334 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
# 335 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 336 "data/maps/MOSSDEEP01/scripts.pory"
	
# 337 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
# 338 "data/maps/MOSSDEEP01/scripts.pory"
	
# 339 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 340 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 14, 67
# 341 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 342 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 343 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 344 "data/maps/MOSSDEEP01/scripts.pory"

# 345 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_FindNearestMightyena::
# 346 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8008, 0
# 347 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 348 "data/maps/MOSSDEEP01/scripts.pory"

# 349 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_MightyenaZone_Safe::
# 350 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 351 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 352 "data/maps/MOSSDEEP01/scripts.pory"

# 353 "data/maps/MOSSDEEP01/scripts.pory"
// Wing Interaction
# 354 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wingull::
# 355 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 356 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 357 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_WINGULL, CRY_MODE_NORMAL
# 358 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 359 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 360 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 361 "data/maps/MOSSDEEP01/scripts.pory"

# 362 "data/maps/MOSSDEEP01/scripts.pory"

# 363 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 364 "data/maps/MOSSDEEP01/scripts.pory"
// MIGHTYENA NPC INTERACTION
# 365 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 366 "data/maps/MOSSDEEP01/scripts.pory"

# 367 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Mightyena::
# 368 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FacePlayer
# 369 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 370 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 371 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_MightyenaFriendly
# 372 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 373 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 374 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 375 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 376 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 377 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 378 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 379 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
# 380 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 381 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
# 382 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 383 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 11, 71
# 384 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 385 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 386 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 387 "data/maps/MOSSDEEP01/scripts.pory"

# 388 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaFriendly::
# 389 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 390 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 391 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 392 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_Mightyena_NotReady
# 393 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaFriendly, MSGBOX_DEFAULT
# 394 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 395 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 396 "data/maps/MOSSDEEP01/scripts.pory"

# 397 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Mightyena_NotReady::
# 398 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 399 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 400 "data/maps/MOSSDEEP01/scripts.pory"

# 401 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 402 "data/maps/MOSSDEEP01/scripts.pory"
// POKEMON NPC INTERACTIONS
# 403 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 404 "data/maps/MOSSDEEP01/scripts.pory"

# 405 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_PidgeotInitial::
# 406 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 407 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 408 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_PIDGEOT, CRY_MODE_NORMAL
# 409 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PidgeotGreeting, MSGBOX_DEFAULT
# 410 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 411 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 412 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 413 "data/maps/MOSSDEEP01/scripts.pory"

# 414 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Bulbasaur::
# 415 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 416 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 417 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_BULBASAUR, CRY_MODE_NORMAL
# 418 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 419 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 420 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 421 "data/maps/MOSSDEEP01/scripts.pory"

# 422 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Totodile::
# 423 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 424 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 425 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_TOTODILE, CRY_MODE_NORMAL
# 426 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 427 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 428 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 429 "data/maps/MOSSDEEP01/scripts.pory"

# 430 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Torchic::
# 431 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 432 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 433 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_TORCHIC, CRY_MODE_NORMAL
# 434 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 435 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 436 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 437 "data/maps/MOSSDEEP01/scripts.pory"

# 438 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 439 "data/maps/MOSSDEEP01/scripts.pory"
// WALLY NPC - SIMPLIFIED
# 440 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 441 "data/maps/MOSSDEEP01/scripts.pory"

# 442 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wally::
# 443 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 444 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 445 "data/maps/MOSSDEEP01/scripts.pory"

# 446 "data/maps/MOSSDEEP01/scripts.pory"
	// PRIORIDADE MAXIMA (depois do Celebi)
# 447 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WallyAfterCelebi
# 448 "data/maps/MOSSDEEP01/scripts.pory"

# 449 "data/maps/MOSSDEEP01/scripts.pory"
	// fluxo normal
# 450 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_WallyAfterIntro
# 451 "data/maps/MOSSDEEP01/scripts.pory"
	
# 452 "data/maps/MOSSDEEP01/scripts.pory"
	// Check if attacked by Mightyenas
# 453 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_WALLY_ATTACKED_BY_MIGHTYENA, MOSSDEEP01_EventScript_WallyNotReady
# 454 "data/maps/MOSSDEEP01/scripts.pory"
	
# 455 "data/maps/MOSSDEEP01/scripts.pory"
	// First conversation (after attack)
# 456 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyIntro, MSGBOX_DEFAULT
# 457 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 458 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_INTRO_DONE
# 459 "data/maps/MOSSDEEP01/scripts.pory"
	
# 460 "data/maps/MOSSDEEP01/scripts.pory"
	// Hide initial Wally and Pidgeot
# 461 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_INITIAL
# 462 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_INITIAL
# 463 "data/maps/MOSSDEEP01/scripts.pory"
	
# 464 "data/maps/MOSSDEEP01/scripts.pory"
	// Show Wally and Pidgeot at new position
# 465 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_CLONE
# 466 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_CLONE
# 467 "data/maps/MOSSDEEP01/scripts.pory"
	
# 468 "data/maps/MOSSDEEP01/scripts.pory"
	// Teleport player
# 469 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 47, 45
# 470 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 471 "data/maps/MOSSDEEP01/scripts.pory"

# 472 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyWarped, MSGBOX_DEFAULT
# 473 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 474 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 475 "data/maps/MOSSDEEP01/scripts.pory"

# 476 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyNotReady::
# 477 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 478 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 479 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WallyAfterCelebi
# 480 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyNotReady, MSGBOX_DEFAULT
# 481 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 482 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 483 "data/maps/MOSSDEEP01/scripts.pory"

# 484 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyAfterIntro::
# 485 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyAfterCelebi, MSGBOX_DEFAULT
# 486 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 487 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 488 "data/maps/MOSSDEEP01/scripts.pory"

# 489 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyAfterCelebi::
# 490 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyAfterCelebi, MSGBOX_DEFAULT
# 491 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 492 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 493 "data/maps/MOSSDEEP01/scripts.pory"

# 494 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 495 "data/maps/MOSSDEEP01/scripts.pory"
// SURVIVOR NPC
# 496 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 497 "data/maps/MOSSDEEP01/scripts.pory"

# 498 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Survivor::
# 499 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 500 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 501 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_SurvivorAfterCelebi
# 502 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorTrapped, MSGBOX_DEFAULT
# 503 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 504 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 505 "data/maps/MOSSDEEP01/scripts.pory"

# 506 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SurvivorAfterCelebi::
# 507 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_TEMP_14, MOSSDEEP01_EventScript_SurvivorMoved
# 508 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorAmazed, MSGBOX_DEFAULT
# 509 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 510 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorGoing, MSGBOX_DEFAULT
# 511 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 512 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_SURVIVOR, MOSSDEEP01_Movement_SurvivorGoUp
# 513 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 514 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_TEMP_14
# 515 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 516 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 517 "data/maps/MOSSDEEP01/scripts.pory"

# 518 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SurvivorMoved::
# 519 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorHappy, MSGBOX_DEFAULT
# 520 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 521 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 522 "data/maps/MOSSDEEP01/scripts.pory"

# 523 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_SurvivorGoUp:
# 524 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 525 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 526 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 527 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 528 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 529 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 530 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 531 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 532 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 533 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 534 "data/maps/MOSSDEEP01/scripts.pory"

# 535 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 536 "data/maps/MOSSDEEP01/scripts.pory"
// HEALER NPC
# 537 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 538 "data/maps/MOSSDEEP01/scripts.pory"

# 539 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Healer::
# 540 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 541 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 542 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HealerWelcome, MSGBOX_DEFAULT
# 543 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_HEAL
# 544 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Healing, MSGBOX_DEFAULT
# 545 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 546 "data/maps/MOSSDEEP01/scripts.pory"
	special HealPlayerParty
# 547 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HealedComplete, MSGBOX_DEFAULT
# 548 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 549 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 550 "data/maps/MOSSDEEP01/scripts.pory"

# 551 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 552 "data/maps/MOSSDEEP01/scripts.pory"
// GRANDMA EVENT WITH STORY //
# 553 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 554 "data/maps/MOSSDEEP01/scripts.pory"

# 555 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Grandma::
# 556 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 557 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 558 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandmaAfterFirstTalk
# 559 "data/maps/MOSSDEEP01/scripts.pory"
	
# 560 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAskStory, MSGBOX_YESNO
# 561 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, YES
# 562 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_TellStory
# 563 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaBeCareful, MSGBOX_DEFAULT
# 564 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
# 565 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 566 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 567 "data/maps/MOSSDEEP01/scripts.pory"

# 568 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_TellStory::
# 569 "data/maps/MOSSDEEP01/scripts.pory"
	fadeoutbgm 0
# 570 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 571 "data/maps/MOSSDEEP01/scripts.pory"
	
# 572 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AEGISLASH, 10, 3
# 573 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 574 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory1, MSGBOX_DEFAULT
# 575 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 576 "data/maps/MOSSDEEP01/scripts.pory"
	
# 577 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ALOMOMOLA, 10, 3
# 578 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
# 579 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory2, MSGBOX_DEFAULT
# 580 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 581 "data/maps/MOSSDEEP01/scripts.pory"

# 582 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AVALUGG, 10, 3
# 583 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SURF
# 584 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_THUNDERBOLT
# 585 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory3, MSGBOX_DEFAULT
# 586 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 587 "data/maps/MOSSDEEP01/scripts.pory"
	
# 588 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AMAURA, 10, 3
# 589 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory4, MSGBOX_DEFAULT
# 590 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 591 "data/maps/MOSSDEEP01/scripts.pory"

# 592 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AROMATISSE, 10, 3
# 593 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory5, MSGBOX_DEFAULT
# 594 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 595 "data/maps/MOSSDEEP01/scripts.pory"

# 596 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARROKUDA, 10, 3
# 597 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory6, MSGBOX_DEFAULT
# 598 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 599 "data/maps/MOSSDEEP01/scripts.pory"

# 600 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AUDINO, 10, 3
# 601 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory7, MSGBOX_DEFAULT
# 602 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 603 "data/maps/MOSSDEEP01/scripts.pory"

# 604 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AURORUS, 10, 3
# 605 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory8, MSGBOX_DEFAULT
# 606 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 607 "data/maps/MOSSDEEP01/scripts.pory"

# 608 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AMOONGUSS, 10, 3
# 609 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory9, MSGBOX_DEFAULT
# 610 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 611 "data/maps/MOSSDEEP01/scripts.pory"
	
# 612 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_APPLIN, 10, 3
# 613 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory10, MSGBOX_DEFAULT
# 614 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 615 "data/maps/MOSSDEEP01/scripts.pory"
	
# 616 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_APPLETUN, 10, 3
# 617 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory11, MSGBOX_DEFAULT
# 618 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 619 "data/maps/MOSSDEEP01/scripts.pory"

# 620 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AXEW, 10, 3
# 621 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory12, MSGBOX_DEFAULT
# 622 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 623 "data/maps/MOSSDEEP01/scripts.pory"
	
# 624 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARBOLIVA, 10, 3
# 625 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory13, MSGBOX_DEFAULT
# 626 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 627 "data/maps/MOSSDEEP01/scripts.pory"

# 628 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARCHEN, 10, 3
# 629 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 630 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 631 "data/maps/MOSSDEEP01/scripts.pory"

# 632 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 633 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
# 634 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 635 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 636 "data/maps/MOSSDEEP01/scripts.pory"

# 637 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandmaAfterFirstTalk::
# 638 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAskAgain, MSGBOX_YESNO
# 639 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, YES
# 640 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_TellStory
# 641 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 642 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 643 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 644 "data/maps/MOSSDEEP01/scripts.pory"

# 645 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Grandpa::
# 646 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 647 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 648 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandpaAfter
# 649 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaFirstTalk, MSGBOX_DEFAULT
# 650 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 651 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 652 "data/maps/MOSSDEEP01/scripts.pory"

# 653 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandpaAfter::
# 654 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaAfterTalk, MSGBOX_DEFAULT
# 655 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 656 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 657 "data/maps/MOSSDEEP01/scripts.pory"

# 658 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 659 "data/maps/MOSSDEEP01/scripts.pory"
// RIVAL NPC (GENDER-BASED)
# 660 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 661 "data/maps/MOSSDEEP01/scripts.pory"

# 662 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SetupRivalNPC::
# 663 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 664 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 665 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_ShowFemaleRival
# 666 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
# 667 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
# 668 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 669 "data/maps/MOSSDEEP01/scripts.pory"

# 670 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowFemaleRival::
# 671 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
# 672 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
# 673 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 674 "data/maps/MOSSDEEP01/scripts.pory"

# 675 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalMale::
# 676 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 677 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 678 "data/maps/MOSSDEEP01/scripts.pory"
	random 4
# 679 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 0
# 680 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case0
# 681 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 1
# 682 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case1
# 683 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 2
# 684 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case2
# 685 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 3
# 686 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case3
# 687 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 688 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 689 "data/maps/MOSSDEEP01/scripts.pory"

# 690 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case0::
# 691 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale01, MSGBOX_DEFAULT
# 692 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 693 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 694 "data/maps/MOSSDEEP01/scripts.pory"

# 695 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case1::
# 696 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale02, MSGBOX_DEFAULT
# 697 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 698 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 699 "data/maps/MOSSDEEP01/scripts.pory"

# 700 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case2::
# 701 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale03, MSGBOX_DEFAULT
# 702 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 703 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 704 "data/maps/MOSSDEEP01/scripts.pory"

# 705 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case3::
# 706 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale04, MSGBOX_DEFAULT
# 707 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 708 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 709 "data/maps/MOSSDEEP01/scripts.pory"

# 710 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalFemale::
# 711 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 712 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 713 "data/maps/MOSSDEEP01/scripts.pory"
	random 4
# 714 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 0
# 715 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case0
# 716 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 1
# 717 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case1
# 718 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 2
# 719 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case2
# 720 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 3
# 721 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case3
# 722 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 723 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 724 "data/maps/MOSSDEEP01/scripts.pory"

# 725 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case0::
# 726 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale01, MSGBOX_DEFAULT
# 727 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 728 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 729 "data/maps/MOSSDEEP01/scripts.pory"

# 730 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case1::
# 731 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale02, MSGBOX_DEFAULT
# 732 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 733 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 734 "data/maps/MOSSDEEP01/scripts.pory"

# 735 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case2::
# 736 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale03, MSGBOX_DEFAULT
# 737 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 738 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 739 "data/maps/MOSSDEEP01/scripts.pory"

# 740 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case3::
# 741 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale04, MSGBOX_DEFAULT
# 742 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 743 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 744 "data/maps/MOSSDEEP01/scripts.pory"

# 745 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Child01::
# 746 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 747 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 748 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Child01, MSGBOX_DEFAULT
# 749 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 750 "data/maps/MOSSDEEP01/scripts.pory"
	end	
# 751 "data/maps/MOSSDEEP01/scripts.pory"

# 752 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Child02::
# 753 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 754 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 755 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Child02, MSGBOX_DEFAULT
# 756 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 757 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 758 "data/maps/MOSSDEEP01/scripts.pory"

# 759 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 760 "data/maps/MOSSDEEP01/scripts.pory"
// WAILORD BLOCKER - Simple blocking system
# 761 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 762 "data/maps/MOSSDEEP01/scripts.pory"

# 763 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordBlocker::
# 764 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 765 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 766 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WailordGone
# 767 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WailordBlocking, MSGBOX_DEFAULT
# 768 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 769 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 770 "data/maps/MOSSDEEP01/scripts.pory"

# 771 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordGone::
# 772 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PathNowOpen, MSGBOX_DEFAULT
# 773 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 774 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 775 "data/maps/MOSSDEEP01/scripts.pory"

# 776 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordBlocksPath::
# 777 "data/maps/MOSSDEEP01/scripts.pory"
    lockall
# 778 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailordBlocks, MSGBOX_DEFAULT
# 779 "data/maps/MOSSDEEP01/scripts.pory"
    closemessage
# 780 "data/maps/MOSSDEEP01/scripts.pory"
    applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 781 "data/maps/MOSSDEEP01/scripts.pory"
    waitmovement 0
# 782 "data/maps/MOSSDEEP01/scripts.pory"
    releaseall
# 783 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 784 "data/maps/MOSSDEEP01/scripts.pory"

# 785 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordPathClear::
# 786 "data/maps/MOSSDEEP01/scripts.pory"
    // Path is clear, do nothing
# 787 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 788 "data/maps/MOSSDEEP01/scripts.pory"

# 789 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wailord::
# 790 "data/maps/MOSSDEEP01/scripts.pory"
    lock
# 791 "data/maps/MOSSDEEP01/scripts.pory"
    faceplayer
# 792 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailordIdle, MSGBOX_DEFAULT
# 793 "data/maps/MOSSDEEP01/scripts.pory"
    release
# 794 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 795 "data/maps/MOSSDEEP01/scripts.pory"

# 796 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wailmer::
# 797 "data/maps/MOSSDEEP01/scripts.pory"
    lock
# 798 "data/maps/MOSSDEEP01/scripts.pory"
    faceplayer
# 799 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailmerIdle, MSGBOX_DEFAULT
# 800 "data/maps/MOSSDEEP01/scripts.pory"
    release
# 801 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 802 "data/maps/MOSSDEEP01/scripts.pory"

# 803 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordJumpOver::
# 804 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 805 "data/maps/MOSSDEEP01/scripts.pory"
	setflag DN_FLAG_SEARCHING
# 806 "data/maps/MOSSDEEP01/scripts.pory"
	setflag DN_FLAG_DETECTOR_MODE
# 807 "data/maps/MOSSDEEP01/scripts.pory"
	
# 808 "data/maps/MOSSDEEP01/scripts.pory"
	// Player faz o pulo no lugar
# 809 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_JumpOverWailordUp
# 810 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 811 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_BIKE_HOP
# 812 "data/maps/MOSSDEEP01/scripts.pory"
	
# 813 "data/maps/MOSSDEEP01/scripts.pory"
	// Player e Celebi atravessam juntos (walk_up)
# 814 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_CrossWailordUp
# 815 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_FOLLOWER, MOSSDEEP01_Movement_CrossWailordUp
# 816 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 817 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_BIKE_HOP
# 818 "data/maps/MOSSDEEP01/scripts.pory"
	
# 819 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 820 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 821 "data/maps/MOSSDEEP01/scripts.pory"

# 822 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_JumpOverWailordUp:
# 823 "data/maps/MOSSDEEP01/scripts.pory"
	jump_in_place_up
# 824 "data/maps/MOSSDEEP01/scripts.pory"
	delay_4
# 825 "data/maps/MOSSDEEP01/scripts.pory"
	jump_in_place_up
# 826 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 827 "data/maps/MOSSDEEP01/scripts.pory"

# 828 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CrossWailordUp:
# 829 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 830 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 831 "data/maps/MOSSDEEP01/scripts.pory"
	
# 832 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordJumpOverAfter::
# 833 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag DN_FLAG_SEARCHING
# 834 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag DN_FLAG_DETECTOR_MODE
# 835 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 836 "data/maps/MOSSDEEP01/scripts.pory"

# 837 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordJumpOverAfter2::
# 838 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag DN_FLAG_SEARCHING
# 839 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag DN_FLAG_DETECTOR_MODE
# 840 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 841 "data/maps/MOSSDEEP01/scripts.pory"
    faceplayer
# 842 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_AfterTimeGears, MSGBOX_DEFAULT
# 843 "data/maps/MOSSDEEP01/scripts.pory"
    release
# 844 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 845 "data/maps/MOSSDEEP01/scripts.pory"

# 846 "data/maps/MOSSDEEP01/scripts.pory"

# 847 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 848 "data/maps/MOSSDEEP01/scripts.pory"
// JIRACHI WAKE EVENT - TRIGGER BASED
# 849 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 850 "data/maps/MOSSDEEP01/scripts.pory"

# 851 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_JirachiTrigger::
# 852 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 853 "data/maps/MOSSDEEP01/scripts.pory"
	
# 854 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiAlreadyAwake
# 855 "data/maps/MOSSDEEP01/scripts.pory"
	
# 856 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiWaking, MSGBOX_DEFAULT
# 857 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 858 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 859 "data/maps/MOSSDEEP01/scripts.pory"
	
# 860 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 861 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_PSYBEAM
# 862 "data/maps/MOSSDEEP01/scripts.pory"
	delay 10
# 863 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 4
# 864 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 865 "data/maps/MOSSDEEP01/scripts.pory"
	
# 866 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_SOUTH
# 867 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_PSYBEAM
# 868 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 869 "data/maps/MOSSDEEP01/scripts.pory"
	
# 870 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_NORTH
# 871 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SWIFT
# 872 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 873 "data/maps/MOSSDEEP01/scripts.pory"
	
# 874 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_JIRACHI_AWAKE
# 875 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiAwoken, MSGBOX_DEFAULT
# 876 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 877 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 878 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 879 "data/maps/MOSSDEEP01/scripts.pory"

# 880 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiAlreadyAwake::
# 881 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 882 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 883 "data/maps/MOSSDEEP01/scripts.pory"

# 884 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Jirachi::
# 885 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 886 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 887 "data/maps/MOSSDEEP01/scripts.pory"
	
# 888 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiSleeping
# 889 "data/maps/MOSSDEEP01/scripts.pory"
	
# 890 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_JirachiNeedCelebi
# 891 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_JirachiNeedItems
# 892 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_JirachiNeedItems
# 893 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_JirachiNeedItems
# 894 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_QUEST_COMPLETED, MOSSDEEP01_JirachiAlreadyCompleted
# 895 "data/maps/MOSSDEEP01/scripts.pory"
	
# 896 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_EventScript_QuestComplete
# 897 "data/maps/MOSSDEEP01/scripts.pory"

# 898 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiNeedCelebi::
# 899 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiNeedCelebi, MSGBOX_DEFAULT
# 900 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 901 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 902 "data/maps/MOSSDEEP01/scripts.pory"

# 903 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiNeedItems::
# 904 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiNeedItems, MSGBOX_DEFAULT
# 905 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 906 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 907 "data/maps/MOSSDEEP01/scripts.pory"

# 908 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiAlreadyCompleted::
# 909 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiCompleted, MSGBOX_DEFAULT
# 910 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 911 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 912 "data/maps/MOSSDEEP01/scripts.pory"

# 913 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiSleeping::
# 914 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiStillSleeping, MSGBOX_DEFAULT
# 915 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 916 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 917 "data/maps/MOSSDEEP01/scripts.pory"

# 918 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 919 "data/maps/MOSSDEEP01/scripts.pory"
// QUEST COMPLETION - JIRACHI SENDS PLAYER HOME
# 920 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 921 "data/maps/MOSSDEEP01/scripts.pory"

# 922 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_QuestComplete::
# 923 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_ThankYou, MSGBOX_DEFAULT
# 924 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 925 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_QUEST_COMPLETED
# 926 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CometAppears, MSGBOX_DEFAULT
# 927 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 928 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 8
# 929 "data/maps/MOSSDEEP01/scripts.pory"
	delay 40
# 930 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceUp
# 931 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 932 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_BLACK, 4
# 933 "data/maps/MOSSDEEP01/scripts.pory"
	delay 10
# 934 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_COMET
# 935 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_MILLENNIUM_COMET
# 936 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_SHINY
# 937 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 2
# 938 "data/maps/MOSSDEEP01/scripts.pory"
	delay 8
# 939 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 2
# 940 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 941 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_THUNDERSTORM
# 942 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 943 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SACRED_FIRE
# 944 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 945 "data/maps/MOSSDEEP01/scripts.pory"
	special SpawnCameraObject
# 946 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SWIFT
# 947 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MOSSDEEP01_Movement_CameraFollowComet
# 948 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_MILLENNIUM_COMET, MOSSDEEP01_Movement_CometCrossingSky
# 949 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 950 "data/maps/MOSSDEEP01/scripts.pory"
	special RemoveCameraObject
# 951 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 952 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_EXPLOSION
# 953 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 954 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 955 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 956 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SOLAR_BEAM
# 957 "data/maps/MOSSDEEP01/scripts.pory"
	delay 40
# 958 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 8
# 959 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 960 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_MILLENNIUM_COMET
# 961 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_COMET
# 962 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_TimeToWakeUp, MSGBOX_DEFAULT
# 963 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 964 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 965 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_TELEPORT
# 966 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 12
# 967 "data/maps/MOSSDEEP01/scripts.pory"
	delay 80
# 968 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 969 "data/maps/MOSSDEEP01/scripts.pory"
	
# 970 "data/maps/MOSSDEEP01/scripts.pory"
	// Set flags for Littleroot Town start
# 971 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_VISITED_LITTLEROOT_TOWN
# 972 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
# 973 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
# 974 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SET_WALL_CLOCK
# 975 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_RESCUED_BIRCH
# 976 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 977 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SYS_B_DASH
# 978 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_RECEIVED_RUNNING_SHOES
# 979 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 6
# 980 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 4
# 981 "data/maps/MOSSDEEP01/scripts.pory"
	
# 982 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 983 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 984 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_WarpMale
# 985 "data/maps/MOSSDEEP01/scripts.pory"
	
# 986 "data/maps/MOSSDEEP01/scripts.pory"
	// Female player
# 987 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
# 988 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 989 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 990 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
# 991 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 992 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
# 993 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 994 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 995 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 996 "data/maps/MOSSDEEP01/scripts.pory"

# 997 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_WarpMale::
# 998 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
# 999 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 1000 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 1001 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
# 1002 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 1003 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
# 1004 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 1005 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1006 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1007 "data/maps/MOSSDEEP01/scripts.pory"

# 1008 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1009 "data/maps/MOSSDEEP01/scripts.pory"
// MOVEMENT SCRIPTS
# 1010 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1011 "data/maps/MOSSDEEP01/scripts.pory"

# 1012 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CameraFollowComet:
# 1013 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1014 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1015 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1016 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1017 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1018 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1019 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1020 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1021 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1022 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1023 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1024 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1025 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1026 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1027 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1028 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1029 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1030 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1031 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1032 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1033 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1034 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1035 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1036 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1037 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1038 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1039 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1040 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1041 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1042 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1043 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1044 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1045 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1046 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1047 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1048 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1049 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1050 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1051 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1052 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1053 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 1054 "data/maps/MOSSDEEP01/scripts.pory"

# 1055 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CometCrossingSky:
# 1056 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1057 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1058 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1059 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1060 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1061 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1062 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1063 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1064 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1065 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1066 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1067 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1068 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1069 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1070 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1071 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1072 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1073 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1074 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1075 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1076 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1077 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1078 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1079 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1080 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1081 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1082 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1083 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1084 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1085 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1086 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1087 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1088 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1089 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1090 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1091 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1092 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1093 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1094 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1095 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1096 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1097 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1098 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1099 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1100 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1101 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1102 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1103 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1104 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1105 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1106 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1107 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1108 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1109 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1110 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1111 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1112 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1113 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1114 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1115 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1116 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1117 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1118 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1119 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1120 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1121 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1122 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1123 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1124 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1125 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1126 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1127 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1128 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1129 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1130 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1131 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1132 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1133 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1134 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1135 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1136 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 1137 "data/maps/MOSSDEEP01/scripts.pory"

# 1138 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1139 "data/maps/MOSSDEEP01/scripts.pory"
// TEXT MESSAGES
# 1140 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1141 "data/maps/MOSSDEEP01/scripts.pory"

# 1142 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_NeedCelebiFirst:
# 1143 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: I sense something…\p"
# 1144 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The Guardian of the Forest,\n"
# 1145 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI, is in danger!\p"
# 1146 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please, help CELEBI first!\n"
# 1147 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I assist you.$"
# 1148 "data/maps/MOSSDEEP01/scripts.pory"

# 1149 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_NeedItems:
# 1150 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: Thank you for saving CELEBI!\p"
# 1151 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Unfortunately, the flow of time is broken.\p"
# 1152 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please find the 3 TIME GEARS\n"
# 1153 "data/maps/MOSSDEEP01/scripts.pory"
	.string "scattered around this place.\p"
# 1154 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I send you home!$"
# 1155 "data/maps/MOSSDEEP01/scripts.pory"

# 1156 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ThankYou:
# 1157 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You found all the TIME GEARS!\p"
# 1158 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The temporal flow is restoring…\n"
# 1159 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Look! The Millennium Comet!$"
# 1160 "data/maps/MOSSDEEP01/scripts.pory"

# 1161 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CometAppears:
# 1162 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The sky begins to glow!\p"
# 1163 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A brilliant comet streaks across\n"
# 1164 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the heavens!$"
# 1165 "data/maps/MOSSDEEP01/scripts.pory"

# 1166 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_TimeToWakeUp:
# 1167 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: The timeline is restored!\p"
# 1168 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It's time to wake up from this dream…$"
# 1169 "data/maps/MOSSDEEP01/scripts.pory"

# 1170 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AlreadyHelped:
# 1171 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You already helped restore\n"
# 1172 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the flow of time!\p"
# 1173 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you, time traveler!$"
# 1174 "data/maps/MOSSDEEP01/scripts.pory"

# 1175 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem1:
# 1176 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} found something shining\n"
# 1177 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the grass…$"
# 1178 "data/maps/MOSSDEEP01/scripts.pory"

# 1179 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear1:
# 1180 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1181 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the PAST!$"
# 1182 "data/maps/MOSSDEEP01/scripts.pory"

# 1183 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem2:
# 1184 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} discovered something glowing\n"
# 1185 "data/maps/MOSSDEEP01/scripts.pory"
	.string "among the rocks…$"
# 1186 "data/maps/MOSSDEEP01/scripts.pory"

# 1187 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear2:
# 1188 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1189 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the PRESENT!$"
# 1190 "data/maps/MOSSDEEP01/scripts.pory"

# 1191 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem3:
# 1192 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} noticed something sparkling\n"
# 1193 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the water…$"
# 1194 "data/maps/MOSSDEEP01/scripts.pory"

# 1195 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear3:
# 1196 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1197 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the FUTURE!$"
# 1198 "data/maps/MOSSDEEP01/scripts.pory"

# 1199 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AlreadyCollected:
# 1200 "data/maps/MOSSDEEP01/scripts.pory"
	.string "This place seems peaceful now.$"
# 1201 "data/maps/MOSSDEEP01/scripts.pory"

# 1202 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiHelp:
# 1203 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: … … …\p"
# 1204 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The flow of time is broken…\p"
# 1205 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please... find the 3 TIME GEARS…\n"
# 1206 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I be freed…$"
# 1207 "data/maps/MOSSDEEP01/scripts.pory"

# 1208 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiPower:
# 1209 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: You found all the TIME GEARS!\p"
# 1210 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Now I can use my power to restore\n"
# 1211 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the temporal flow!$"
# 1212 "data/maps/MOSSDEEP01/scripts.pory"

# 1213 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiCalmed:
# 1214 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild POKÉMON have calmed down!$"
# 1215 "data/maps/MOSSDEEP01/scripts.pory"

# 1216 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiThanks:
# 1217 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: Thank you, {PLAYER}!\n"
# 1218 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Together we restored time!$"
# 1219 "data/maps/MOSSDEEP01/scripts.pory"

# 1220 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaAttack:
# 1221 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild MIGHTYENA attacks!$"
# 1222 "data/maps/MOSSDEEP01/scripts.pory"

# 1223 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaBlackedOut:
# 1224 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild POKÉMON are too aggressive!\n"
# 1225 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You blacked out!$"
# 1226 "data/maps/MOSSDEEP01/scripts.pory"

# 1227 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaFriendly:
# 1228 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The MIGHTYENA looks calm and friendly.\n"
# 1229 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Amazing, they're so peaceful now!\p"
# 1230 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You can even pet them!$"
# 1231 "data/maps/MOSSDEEP01/scripts.pory"

# 1232 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorTrapped:
# 1233 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: Help! These wild POKÉMON\n"
# 1234 "data/maps/MOSSDEEP01/scripts.pory"
	.string "are too aggressive!\p"
# 1235 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I can't escape!$"
# 1236 "data/maps/MOSSDEEP01/scripts.pory"

# 1237 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorAmazed:
# 1238 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: Incredible! The POKÉMON\n"
# 1239 "data/maps/MOSSDEEP01/scripts.pory"
	.string "suddenly calmed down!\p"
# 1240 "data/maps/MOSSDEEP01/scripts.pory"
	.string "What happened?$"
# 1241 "data/maps/MOSSDEEP01/scripts.pory"

# 1242 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorGoing:
# 1243 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: I'm going to find a safer\n"
# 1244 "data/maps/MOSSDEEP01/scripts.pory"
	.string "place. Thank you!$"
# 1245 "data/maps/MOSSDEEP01/scripts.pory"

# 1246 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorHappy:
# 1247 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: I feel much safer now.\n"
# 1248 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you for your help!$"
# 1249 "data/maps/MOSSDEEP01/scripts.pory"

# 1250 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HealerWelcome:
# 1251 "data/maps/MOSSDEEP01/scripts.pory"
	.string "HEALER: Let me heal your POKÉMON.$"
# 1252 "data/maps/MOSSDEEP01/scripts.pory"

# 1253 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Healing:
# 1254 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Healing POKÉMON…$"
# 1255 "data/maps/MOSSDEEP01/scripts.pory"

# 1256 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HealedComplete:
# 1257 "data/maps/MOSSDEEP01/scripts.pory"
	.string "HEALER: Your POKÉMON are fully\n"
# 1258 "data/maps/MOSSDEEP01/scripts.pory"
	.string "healed! Good luck!$"
# 1259 "data/maps/MOSSDEEP01/scripts.pory"

# 1260 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaWelcome:
# 1261 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: {PLAYER}! You're awake!\p"
# 1262 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The earthquake was terrible…\n"
# 1263 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Many people are trapped…$"
# 1264 "data/maps/MOSSDEEP01/scripts.pory"

# 1265 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_EarthquakeWarning:
# 1266 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Another tremor!\n"
# 1267 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there!$"
# 1268 "data/maps/MOSSDEEP01/scripts.pory"

# 1269 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaGivesCharm:
# 1270 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Take this SHINY CHARM.\n"
# 1271 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It might bring you luck!$"
# 1272 "data/maps/MOSSDEEP01/scripts.pory"

# 1273 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaCharmExplanation:
# 1274 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: This charm increases your\n"
# 1275 "data/maps/MOSSDEEP01/scripts.pory"
	.string "chances of finding rare POKÉMON.\p"
# 1276 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Use it well!$"
# 1277 "data/maps/MOSSDEEP01/scripts.pory"

# 1278 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HoennDestroyed:
# 1279 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The HOENN region…\n"
# 1280 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It's been completely destroyed…\p"
# 1281 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But there are survivors who need\n"
# 1282 "data/maps/MOSSDEEP01/scripts.pory"
	.string "help. Please, {PLAYER}, help them!$"
# 1283 "data/maps/MOSSDEEP01/scripts.pory"

# 1284 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PlayerDecision:
# 1285 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} decides to help the survivors\n"
# 1286 "data/maps/MOSSDEEP01/scripts.pory"
	.string "and explore the devastated area.$"
# 1287 "data/maps/MOSSDEEP01/scripts.pory"

# 1288 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GoodLuck:
# 1289 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Good luck, {PLAYER}!\n"
# 1290 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be very careful!$"
# 1291 "data/maps/MOSSDEEP01/scripts.pory"

# 1292 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaEncouragement:
# 1293 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: You're doing great, {PLAYER}!\n"
# 1294 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Keep helping people!$"
# 1295 "data/maps/MOSSDEEP01/scripts.pory"

# 1296 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaFirstTalk:
# 1297 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: The world has changed…\n"
# 1298 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Everything is so different now…$"
# 1299 "data/maps/MOSSDEEP01/scripts.pory"

# 1300 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaAfterTalk:
# 1301 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: Thank you for helping\n"
# 1302 "data/maps/MOSSDEEP01/scripts.pory"
	.string "everyone, {PLAYER}. You're a hero!$"
# 1303 "data/maps/MOSSDEEP01/scripts.pory"

# 1304 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory1:
# 1305 "data/maps/MOSSDEEP01/scripts.pory"
	.string "This was the beginning…$"
# 1306 "data/maps/MOSSDEEP01/scripts.pory"

# 1307 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory2:
# 1308 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Then the conflict started…$"
# 1309 "data/maps/MOSSDEEP01/scripts.pory"

# 1310 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory3:
# 1311 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The great battle between land and\n"
# 1312 "data/maps/MOSSDEEP01/scripts.pory"
	.string "sea…$"
# 1313 "data/maps/MOSSDEEP01/scripts.pory"

# 1314 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory4:
# 1315 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The tsunami devastated everything…$"
# 1316 "data/maps/MOSSDEEP01/scripts.pory"

# 1317 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory5:
# 1318 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Volcanoes erupted across the land…$"
# 1319 "data/maps/MOSSDEEP01/scripts.pory"

# 1320 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory6:
# 1321 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The land became a barren wasteland…$"
# 1322 "data/maps/MOSSDEEP01/scripts.pory"

# 1323 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory7:
# 1324 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The oceans raged with unending\n"
# 1325 "data/maps/MOSSDEEP01/scripts.pory"
	.string "storms…$"
# 1326 "data/maps/MOSSDEEP01/scripts.pory"

# 1327 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory8:
# 1328 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Survivors gathered in camps…$"
# 1329 "data/maps/MOSSDEEP01/scripts.pory"

# 1330 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory9:
# 1331 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Hope began to fade…$"
# 1332 "data/maps/MOSSDEEP01/scripts.pory"

# 1333 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory10:
# 1334 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But then a legend appeared…$"
# 1335 "data/maps/MOSSDEEP01/scripts.pory"

# 1336 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory11:
# 1337 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The sky guardian descended from\n"
# 1338 "data/maps/MOSSDEEP01/scripts.pory"
	.string "above…$"
# 1339 "data/maps/MOSSDEEP01/scripts.pory"

# 1340 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory12:
# 1341 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Peace was restored, but at a cost…$"
# 1342 "data/maps/MOSSDEEP01/scripts.pory"

# 1343 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory13:
# 1344 "data/maps/MOSSDEEP01/scripts.pory"
	.string "And this is how our world became what it\n"
# 1345 "data/maps/MOSSDEEP01/scripts.pory"
	.string "is today…$"
# 1346 "data/maps/MOSSDEEP01/scripts.pory"

# 1347 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAskStory:
# 1348 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Hi, {PLAYER}.\p"
# 1349 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Would you like to hear the legends\n"
# 1350 "data/maps/MOSSDEEP01/scripts.pory"
	.string "and stories of how HOENN arrived\l"
# 1351 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the state it is now?$"
# 1352 "data/maps/MOSSDEEP01/scripts.pory"

# 1353 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaBeCareful:
# 1354 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I understand.\p"
# 1355 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please be very careful when exploring\n"
# 1356 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the MOSSDEEP ruins.\p"
# 1357 "data/maps/MOSSDEEP01/scripts.pory"
	.string "There are many dangers out there…$"
# 1358 "data/maps/MOSSDEEP01/scripts.pory"

# 1359 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAskAgain:
# 1360 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Would you like to hear\n"
# 1361 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the stories of HOENN again?$"
# 1362 "data/maps/MOSSDEEP01/scripts.pory"

# 1363 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale01:
# 1364 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: Hey {PLAYER}! I'm helping\n"
# 1365 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the survivors too!\p"
# 1366 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's work together!$"
# 1367 "data/maps/MOSSDEEP01/scripts.pory"

# 1368 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale02:
# 1369 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: These wild POKÉMON are\n"
# 1370 "data/maps/MOSSDEEP01/scripts.pory"
	.string "really aggressive!\p"
# 1371 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there!$"
# 1372 "data/maps/MOSSDEEP01/scripts.pory"

# 1373 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale03:
# 1374 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: I heard there's a special\n"
# 1375 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON that can help us.\p"
# 1376 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's find it!$"
# 1377 "data/maps/MOSSDEEP01/scripts.pory"

# 1378 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale04:
# 1379 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: We can do this, {PLAYER}!\n"
# 1380 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Together we'll save everyone!$"
# 1381 "data/maps/MOSSDEEP01/scripts.pory"

# 1382 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale01:
# 1383 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: {PLAYER}! I'm so glad\n"
# 1384 "data/maps/MOSSDEEP01/scripts.pory"
	.string "you're safe!\p"
# 1385 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's help the survivors together!$"
# 1386 "data/maps/MOSSDEEP01/scripts.pory"

# 1387 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale02:
# 1388 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: The wild POKÉMON are\n"
# 1389 "data/maps/MOSSDEEP01/scripts.pory"
	.string "acting so strange…\p"
# 1390 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Something must be wrong!$"
# 1391 "data/maps/MOSSDEEP01/scripts.pory"

# 1392 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale03:
# 1393 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: I heard about a legendary\n"
# 1394 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON that controls time.\p"
# 1395 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe it can help us!$"
# 1396 "data/maps/MOSSDEEP01/scripts.pory"

# 1397 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale04:
# 1398 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: We make a great team,\n"
# 1399 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER}! Let's keep going!$"
# 1400 "data/maps/MOSSDEEP01/scripts.pory"

# 1401 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Child01:
# 1402 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CHILD: I'm scared…\n"
# 1403 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Where are my parents?$"
# 1404 "data/maps/MOSSDEEP01/scripts.pory"

# 1405 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Child02:
# 1406 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CHILD: The ground shook really hard…\n"
# 1407 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Then everything changed…$"
# 1408 "data/maps/MOSSDEEP01/scripts.pory"

# 1409 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordBlocking:
# 1410 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A massive WAILORD blocks the path!\p"
# 1411 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems agitated by the chaos…\n"
# 1412 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You can't get through.$"
# 1413 "data/maps/MOSSDEEP01/scripts.pory"

# 1414 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PathNowOpen:
# 1415 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The WAILORD has calmed down and\n"
# 1416 "data/maps/MOSSDEEP01/scripts.pory"
	.string "moved away. The path is clear!$"
# 1417 "data/maps/MOSSDEEP01/scripts.pory"

# 1418 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiWaking:
# 1419 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A mysterious POKÉMON is sleeping\n"
# 1420 "data/maps/MOSSDEEP01/scripts.pory"
	.string "near the rocks…\p"
# 1421 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems to be waking up!$"
# 1422 "data/maps/MOSSDEEP01/scripts.pory"

# 1423 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiAwoken:
# 1424 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI has awoken!$"
# 1425 "data/maps/MOSSDEEP01/scripts.pory"

# 1426 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiNeedCelebi:
# 1427 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: I sense temporal disturbance…\n"
# 1428 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The forest guardian needs help!\p"
# 1429 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please rescue CELEBI first!$"
# 1430 "data/maps/MOSSDEEP01/scripts.pory"

# 1431 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiNeedItems:
# 1432 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: Thank you for saving CELEBI!\n"
# 1433 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But time is still broken…\p"
# 1434 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please find the 3 TIME GEARS\n"
# 1435 "data/maps/MOSSDEEP01/scripts.pory"
	.string "to restore temporal flow!$"
# 1436 "data/maps/MOSSDEEP01/scripts.pory"

# 1437 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiCompleted:
# 1438 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You restored the timeline!\n"
# 1439 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you, time traveler!$"
# 1440 "data/maps/MOSSDEEP01/scripts.pory"

# 1441 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiStillSleeping:
# 1442 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI is sleeping peacefully…\n"
# 1443 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe you should approach it?$"
# 1444 "data/maps/MOSSDEEP01/scripts.pory"

# 1445 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyIntro:
# 1446 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: Hello, {PLAYER}!\p"
# 1447 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Did you know that in the past people\n"
# 1448 "data/maps/MOSSDEEP01/scripts.pory"
	.string "could train POKÉMON normally?\p"
# 1449 "data/maps/MOSSDEEP01/scripts.pory"
	.string "There were POKÉ BALLS, devices that\n"
# 1450 "data/maps/MOSSDEEP01/scripts.pory"
	.string "captured and stored POKÉMON.\p"
# 1451 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But now… they don't make them anymore.\n"
# 1452 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The technology was lost.\p"
# 1453 "data/maps/MOSSDEEP01/scripts.pory"
	.string "That's why the connection with POKÉMON\n"
# 1454 "data/maps/MOSSDEEP01/scripts.pory"
	.string "has to be made in another way…\p"
# 1455 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A more natural, pure connection\n"
# 1456 "data/maps/MOSSDEEP01/scripts.pory"
	.string "like what I have with PIDGEOT.\p"
# 1457 "data/maps/MOSSDEEP01/scripts.pory"
	.string "If wild POKÉMON are giving you\n"
# 1458 "data/maps/MOSSDEEP01/scripts.pory"
	.string "trouble, PIDGEOT and I will help.$"
# 1459 "data/maps/MOSSDEEP01/scripts.pory"

# 1460 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyAfterCelebi:
# 1461 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: Wow… what is that Pokemon\n"
# 1462 "data/maps/MOSSDEEP01/scripts.pory"
	.string "following you?\p"
# 1463 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It feels so magical…\n"
# 1464 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I have never seen anything like it.\p"
# 1465 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It reminds me of the old legends\n"
# 1466 "data/maps/MOSSDEEP01/scripts.pory"
	.string "our grandparents used to tell…\p"
# 1467 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe those dreams you had…\n"
# 1468 "data/maps/MOSSDEEP01/scripts.pory"
	.string "they were real after all.$"
# 1469 "data/maps/MOSSDEEP01/scripts.pory"

# 1470 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyWarped:
# 1471 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: I'll head there first!\p"
# 1472 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Meet me ahead, {PLAYER}!$"
# 1473 "data/maps/MOSSDEEP01/scripts.pory"

# 1474 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyNotReady:
# 1475 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: Hello, {PLAYER}!\p"
# 1476 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there! The wild\n"
# 1477 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON are very aggressive.\p"
# 1478 "data/maps/MOSSDEEP01/scripts.pory"
	.string "If you get into trouble, come\n"
# 1479 "data/maps/MOSSDEEP01/scripts.pory"
	.string "talk to me!$"
# 1480 "data/maps/MOSSDEEP01/scripts.pory"

# 1481 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PidgeotGreeting:
# 1482 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Pidgeot: Piiidgeoo!$"
# 1483 "data/maps/MOSSDEEP01/scripts.pory"

# 1484 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordBlocks:
# 1485 "data/maps/MOSSDEEP01/scripts.pory"
    .string "There's only water ahead!\p"
# 1486 "data/maps/MOSSDEEP01/scripts.pory"
    .string "You can't cross without help…$"
# 1487 "data/maps/MOSSDEEP01/scripts.pory"

# 1488 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordIdle:
# 1489 "data/maps/MOSSDEEP01/scripts.pory"
    .string "WAILORD is calmly floating on the water.$"
# 1490 "data/maps/MOSSDEEP01/scripts.pory"

# 1491 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailmerIdle:
# 1492 "data/maps/MOSSDEEP01/scripts.pory"
    .string "The WAILMER are splashing playfully!$"
# 1493 "data/maps/MOSSDEEP01/scripts.pory"

# 1494 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiCallsWailord:
# 1495 "data/maps/MOSSDEEP01/scripts.pory"
    .string "CELEBI calls out to the ocean!\p"
# 1496 "data/maps/MOSSDEEP01/scripts.pory"
    .string "A massive WAILORD appears and\n"
# 1497 "data/maps/MOSSDEEP01/scripts.pory"
    .string "creates a path across the water!$"
# 1498 "data/maps/MOSSDEEP01/scripts.pory"

# 1499 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AfterTimeGears:
# 1500 "data/maps/MOSSDEEP01/scripts.pory"
    .string "CELEBI: We are close, I can feel it…$"
