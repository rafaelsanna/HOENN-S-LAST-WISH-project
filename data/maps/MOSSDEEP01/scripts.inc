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
	call_if_unset FLAG_TALKED_TO_CELEBI, MOSSDEEP01_EventScript_CelebiIntroduction
# 272 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL
# 273 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiPower, MSGBOX_DEFAULT
# 274 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 275 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 276 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_HYPER_BEAM
# 277 "data/maps/MOSSDEEP01/scripts.pory"
	
# 278 "data/maps/MOSSDEEP01/scripts.pory"
	// Transform static Celebi into follower
# 279 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 280 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
# 281 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 282 "data/maps/MOSSDEEP01/scripts.pory"
	
# 283 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_CELEBI_RESCUED
# 284 "data/maps/MOSSDEEP01/scripts.pory"
	
# 285 "data/maps/MOSSDEEP01/scripts.pory"
	// Show Wailord path and set subpriority to walk over it
# 286 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WAILORD_PATH
# 287 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectsubpriority LOCALID_WAILORD_BLOCKER, MAP_MOSSDEEP01, 0xFF
# 288 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiCallsWailord, MSGBOX_DEFAULT
# 289 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 290 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 291 "data/maps/MOSSDEEP01/scripts.pory"

# 292 "data/maps/MOSSDEEP01/scripts.pory"
	// Set Celebi as follower
# 293 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 294 "data/maps/MOSSDEEP01/scripts.pory"
	setfollowernpc LOCALID_CELEBI_STATIC, FNPC_ALL, NULL, 0
# 295 "data/maps/MOSSDEEP01/scripts.pory"

# 296 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiCalmed, MSGBOX_DEFAULT
# 297 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 298 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 299 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 300 "data/maps/MOSSDEEP01/scripts.pory"

# 301 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiNeedGears::
# 302 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARAQUANID, 10, 3
# 303 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL
# 304 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiHelp, MSGBOX_DEFAULT
# 305 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 306 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 307 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_TALKED_TO_CELEBI
# 308 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 309 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 310 "data/maps/MOSSDEEP01/scripts.pory"

# 311 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiIntroduction::
# 312 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARAQUANID, 10, 3
# 313 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL
# 314 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiHelp, MSGBOX_DEFAULT
# 315 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 316 "data/maps/MOSSDEEP01/scripts.pory"
	waitmessage
# 317 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 318 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 319 "data/maps/MOSSDEEP01/scripts.pory"

# 320 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiAlreadyRescued::
# 321 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL
# 322 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiThanks, MSGBOX_DEFAULT
# 323 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 324 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 325 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 326 "data/maps/MOSSDEEP01/scripts.pory"

# 327 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 328 "data/maps/MOSSDEEP01/scripts.pory"
// MIGHTYENA ZONE TRIGGER
# 329 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 330 "data/maps/MOSSDEEP01/scripts.pory"

# 331 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaZone::
# 332 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 333 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_MightyenaZone_Safe
# 334 "data/maps/MOSSDEEP01/scripts.pory"
	
# 335 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_PIN
# 336 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_ExclamationMark
# 337 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 338 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 339 "data/maps/MOSSDEEP01/scripts.pory"
	
# 340 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_FindNearestMightyena
# 341 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_0x8008, Common_Movement_ExclamationMark
# 342 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 343 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_0x8008, Common_Movement_FacePlayer
# 344 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 345 "data/maps/MOSSDEEP01/scripts.pory"
	
# 346 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 347 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 348 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 349 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 350 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 351 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
# 352 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 353 "data/maps/MOSSDEEP01/scripts.pory"
	
# 354 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
# 355 "data/maps/MOSSDEEP01/scripts.pory"
	
# 356 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 357 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 14, 67
# 358 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 359 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 360 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 361 "data/maps/MOSSDEEP01/scripts.pory"

# 362 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_FindNearestMightyena::
# 363 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8008, 0
# 364 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 365 "data/maps/MOSSDEEP01/scripts.pory"

# 366 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_MightyenaZone_Safe::
# 367 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 368 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 369 "data/maps/MOSSDEEP01/scripts.pory"

# 370 "data/maps/MOSSDEEP01/scripts.pory"
// Wing Interaction
# 371 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wingull::
# 372 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 373 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 374 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_WINGULL, CRY_MODE_NORMAL
# 375 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 376 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 377 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 378 "data/maps/MOSSDEEP01/scripts.pory"

# 379 "data/maps/MOSSDEEP01/scripts.pory"

# 380 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 381 "data/maps/MOSSDEEP01/scripts.pory"
// MIGHTYENA NPC INTERACTION
# 382 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 383 "data/maps/MOSSDEEP01/scripts.pory"

# 384 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Mightyena::
# 385 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FacePlayer
# 386 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 387 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 388 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_MightyenaFriendly
# 389 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 390 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 391 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 392 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 393 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 394 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 395 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 396 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
# 397 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 398 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
# 399 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 400 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 11, 71
# 401 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 402 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 403 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 404 "data/maps/MOSSDEEP01/scripts.pory"

# 405 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaFriendly::
# 406 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 407 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 408 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 409 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_Mightyena_NotReady
# 410 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaFriendly, MSGBOX_DEFAULT
# 411 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 412 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 413 "data/maps/MOSSDEEP01/scripts.pory"

# 414 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Mightyena_NotReady::
# 415 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 416 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 417 "data/maps/MOSSDEEP01/scripts.pory"

# 418 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 419 "data/maps/MOSSDEEP01/scripts.pory"
// POKEMON NPC INTERACTIONS
# 420 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 421 "data/maps/MOSSDEEP01/scripts.pory"

# 422 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_PidgeotInitial::
# 423 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 424 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 425 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_PIDGEOT, CRY_MODE_NORMAL
# 426 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PidgeotGreeting, MSGBOX_DEFAULT
# 427 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 428 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 429 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 430 "data/maps/MOSSDEEP01/scripts.pory"

# 431 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Bulbasaur::
# 432 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 433 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 434 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_BULBASAUR, CRY_MODE_NORMAL
# 435 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 436 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 437 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 438 "data/maps/MOSSDEEP01/scripts.pory"

# 439 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Totodile::
# 440 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 441 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 442 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_TOTODILE, CRY_MODE_NORMAL
# 443 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 444 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 445 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 446 "data/maps/MOSSDEEP01/scripts.pory"

# 447 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Torchic::
# 448 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 449 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 450 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_TORCHIC, CRY_MODE_NORMAL
# 451 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 452 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 453 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 454 "data/maps/MOSSDEEP01/scripts.pory"

# 455 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 456 "data/maps/MOSSDEEP01/scripts.pory"
// WALLY NPC - SIMPLIFIED
# 457 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 458 "data/maps/MOSSDEEP01/scripts.pory"

# 459 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wally::
# 460 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 461 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 462 "data/maps/MOSSDEEP01/scripts.pory"

# 463 "data/maps/MOSSDEEP01/scripts.pory"
	// PRIORIDADE MAXIMA (depois do Celebi)
# 464 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WallyAfterCelebi
# 465 "data/maps/MOSSDEEP01/scripts.pory"

# 466 "data/maps/MOSSDEEP01/scripts.pory"
	// fluxo normal
# 467 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_WallyAfterIntro
# 468 "data/maps/MOSSDEEP01/scripts.pory"
	
# 469 "data/maps/MOSSDEEP01/scripts.pory"
	// Check if attacked by Mightyenas
# 470 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_WALLY_ATTACKED_BY_MIGHTYENA, MOSSDEEP01_EventScript_WallyNotReady
# 471 "data/maps/MOSSDEEP01/scripts.pory"
	
# 472 "data/maps/MOSSDEEP01/scripts.pory"
	// First conversation (after attack)
# 473 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 474 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyIntro, MSGBOX_DEFAULT
# 475 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 476 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 477 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_INTRO_DONE
# 478 "data/maps/MOSSDEEP01/scripts.pory"
	
# 479 "data/maps/MOSSDEEP01/scripts.pory"
	// Hide initial Wally and Pidgeot
# 480 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_INITIAL
# 481 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_INITIAL
# 482 "data/maps/MOSSDEEP01/scripts.pory"
	
# 483 "data/maps/MOSSDEEP01/scripts.pory"
	// Show Wally and Pidgeot at new position
# 484 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_CLONE
# 485 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_CLONE
# 486 "data/maps/MOSSDEEP01/scripts.pory"
	
# 487 "data/maps/MOSSDEEP01/scripts.pory"
	// Teleport player
# 488 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 47, 45
# 489 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 490 "data/maps/MOSSDEEP01/scripts.pory"

# 491 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 492 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyWarped, MSGBOX_DEFAULT
# 493 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 494 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 495 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 496 "data/maps/MOSSDEEP01/scripts.pory"

# 497 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyNotReady::
# 498 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 499 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 500 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WallyAfterCelebi
# 501 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 502 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyNotReady, MSGBOX_DEFAULT
# 503 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 504 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 505 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 506 "data/maps/MOSSDEEP01/scripts.pory"

# 507 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyAfterIntro::
# 508 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 509 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyAfterCelebi, MSGBOX_DEFAULT
# 510 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 511 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 512 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 513 "data/maps/MOSSDEEP01/scripts.pory"

# 514 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyAfterCelebi::
# 515 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 516 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyAfterCelebi, MSGBOX_DEFAULT
# 517 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 518 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 519 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 520 "data/maps/MOSSDEEP01/scripts.pory"

# 521 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 522 "data/maps/MOSSDEEP01/scripts.pory"
// SURVIVOR NPC
# 523 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 524 "data/maps/MOSSDEEP01/scripts.pory"

# 525 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Survivor::
# 526 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 527 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 528 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_SurvivorAfterCelebi
# 529 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorTrapped, MSGBOX_DEFAULT
# 530 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 531 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 532 "data/maps/MOSSDEEP01/scripts.pory"

# 533 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SurvivorAfterCelebi::
# 534 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_TEMP_14, MOSSDEEP01_EventScript_SurvivorMoved
# 535 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorAmazed, MSGBOX_DEFAULT
# 536 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 537 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorGoing, MSGBOX_DEFAULT
# 538 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 539 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_SURVIVOR, MOSSDEEP01_Movement_SurvivorGoUp
# 540 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 541 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_TEMP_14
# 542 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 543 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 544 "data/maps/MOSSDEEP01/scripts.pory"

# 545 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SurvivorMoved::
# 546 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorHappy, MSGBOX_DEFAULT
# 547 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 548 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 549 "data/maps/MOSSDEEP01/scripts.pory"

# 550 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_SurvivorGoUp:
# 551 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 552 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 553 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 554 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 555 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 556 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 557 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 558 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 559 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 560 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 561 "data/maps/MOSSDEEP01/scripts.pory"

# 562 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 563 "data/maps/MOSSDEEP01/scripts.pory"
// HEALER NPC
# 564 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 565 "data/maps/MOSSDEEP01/scripts.pory"

# 566 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Healer::
# 567 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 568 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 569 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HealerWelcome, MSGBOX_DEFAULT
# 570 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_HEAL
# 571 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Healing, MSGBOX_DEFAULT
# 572 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 573 "data/maps/MOSSDEEP01/scripts.pory"
	special HealPlayerParty
# 574 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HealedComplete, MSGBOX_DEFAULT
# 575 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 576 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 577 "data/maps/MOSSDEEP01/scripts.pory"

# 578 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 579 "data/maps/MOSSDEEP01/scripts.pory"
// GRANDMA EVENT WITH STORY //
# 580 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 581 "data/maps/MOSSDEEP01/scripts.pory"

# 582 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Grandma::
# 583 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 584 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 585 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandmaAfterFirstTalk
# 586 "data/maps/MOSSDEEP01/scripts.pory"
	
# 587 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAskStory, MSGBOX_YESNO
# 588 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, YES
# 589 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_TellStory
# 590 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaBeCareful, MSGBOX_DEFAULT
# 591 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
# 592 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 593 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 594 "data/maps/MOSSDEEP01/scripts.pory"

# 595 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_TellStory::
# 596 "data/maps/MOSSDEEP01/scripts.pory"
	fadeoutbgm 0
# 597 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 598 "data/maps/MOSSDEEP01/scripts.pory"
	
# 599 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AEGISLASH, 10, 3
# 600 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 601 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory1, MSGBOX_DEFAULT
# 602 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 603 "data/maps/MOSSDEEP01/scripts.pory"
	
# 604 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ALOMOMOLA, 10, 3
# 605 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
# 606 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory2, MSGBOX_DEFAULT
# 607 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 608 "data/maps/MOSSDEEP01/scripts.pory"

# 609 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AVALUGG, 10, 3
# 610 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SURF
# 611 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_THUNDERBOLT
# 612 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory3, MSGBOX_DEFAULT
# 613 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 614 "data/maps/MOSSDEEP01/scripts.pory"
	
# 615 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AMAURA, 10, 3
# 616 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory4, MSGBOX_DEFAULT
# 617 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 618 "data/maps/MOSSDEEP01/scripts.pory"

# 619 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AROMATISSE, 10, 3
# 620 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory5, MSGBOX_DEFAULT
# 621 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 622 "data/maps/MOSSDEEP01/scripts.pory"

# 623 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARROKUDA, 10, 3
# 624 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory6, MSGBOX_DEFAULT
# 625 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 626 "data/maps/MOSSDEEP01/scripts.pory"

# 627 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AUDINO, 10, 3
# 628 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory7, MSGBOX_DEFAULT
# 629 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 630 "data/maps/MOSSDEEP01/scripts.pory"

# 631 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AURORUS, 10, 3
# 632 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory8, MSGBOX_DEFAULT
# 633 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 634 "data/maps/MOSSDEEP01/scripts.pory"

# 635 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AMOONGUSS, 10, 3
# 636 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory9, MSGBOX_DEFAULT
# 637 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 638 "data/maps/MOSSDEEP01/scripts.pory"
	
# 639 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_APPLIN, 10, 3
# 640 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory10, MSGBOX_DEFAULT
# 641 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 642 "data/maps/MOSSDEEP01/scripts.pory"
	
# 643 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_APPLETUN, 10, 3
# 644 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory11, MSGBOX_DEFAULT
# 645 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 646 "data/maps/MOSSDEEP01/scripts.pory"

# 647 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AXEW, 10, 3
# 648 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory12, MSGBOX_DEFAULT
# 649 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 650 "data/maps/MOSSDEEP01/scripts.pory"
	
# 651 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARBOLIVA, 10, 3
# 652 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory13, MSGBOX_DEFAULT
# 653 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 654 "data/maps/MOSSDEEP01/scripts.pory"

# 655 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARCHEN, 10, 3
# 656 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 657 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 658 "data/maps/MOSSDEEP01/scripts.pory"

# 659 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 660 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
# 661 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 662 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 663 "data/maps/MOSSDEEP01/scripts.pory"

# 664 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandmaAfterFirstTalk::
# 665 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAskAgain, MSGBOX_YESNO
# 666 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, YES
# 667 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_TellStory
# 668 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 669 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 670 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 671 "data/maps/MOSSDEEP01/scripts.pory"

# 672 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Grandpa::
# 673 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 674 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 675 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandpaAfter
# 676 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaFirstTalk, MSGBOX_DEFAULT
# 677 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 678 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 679 "data/maps/MOSSDEEP01/scripts.pory"

# 680 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandpaAfter::
# 681 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaAfterTalk, MSGBOX_DEFAULT
# 682 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 683 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 684 "data/maps/MOSSDEEP01/scripts.pory"

# 685 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 686 "data/maps/MOSSDEEP01/scripts.pory"
// RIVAL NPC (GENDER-BASED)
# 687 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 688 "data/maps/MOSSDEEP01/scripts.pory"

# 689 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SetupRivalNPC::
# 690 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 691 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 692 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_ShowFemaleRival
# 693 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
# 694 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
# 695 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 696 "data/maps/MOSSDEEP01/scripts.pory"

# 697 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowFemaleRival::
# 698 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
# 699 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
# 700 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 701 "data/maps/MOSSDEEP01/scripts.pory"

# 702 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalMale::
# 703 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 704 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 705 "data/maps/MOSSDEEP01/scripts.pory"
	random 4
# 706 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 0
# 707 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case0
# 708 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 1
# 709 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case1
# 710 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 2
# 711 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case2
# 712 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 3
# 713 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case3
# 714 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 715 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 716 "data/maps/MOSSDEEP01/scripts.pory"

# 717 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case0::
# 718 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale01, MSGBOX_DEFAULT
# 719 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 720 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 721 "data/maps/MOSSDEEP01/scripts.pory"

# 722 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case1::
# 723 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale02, MSGBOX_DEFAULT
# 724 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 725 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 726 "data/maps/MOSSDEEP01/scripts.pory"

# 727 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case2::
# 728 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale03, MSGBOX_DEFAULT
# 729 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 730 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 731 "data/maps/MOSSDEEP01/scripts.pory"

# 732 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case3::
# 733 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale04, MSGBOX_DEFAULT
# 734 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 735 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 736 "data/maps/MOSSDEEP01/scripts.pory"

# 737 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalFemale::
# 738 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 739 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 740 "data/maps/MOSSDEEP01/scripts.pory"
	random 4
# 741 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 0
# 742 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case0
# 743 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 1
# 744 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case1
# 745 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 2
# 746 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case2
# 747 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 3
# 748 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case3
# 749 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 750 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 751 "data/maps/MOSSDEEP01/scripts.pory"

# 752 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case0::
# 753 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale01, MSGBOX_DEFAULT
# 754 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 755 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 756 "data/maps/MOSSDEEP01/scripts.pory"

# 757 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case1::
# 758 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale02, MSGBOX_DEFAULT
# 759 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 760 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 761 "data/maps/MOSSDEEP01/scripts.pory"

# 762 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case2::
# 763 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale03, MSGBOX_DEFAULT
# 764 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 765 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 766 "data/maps/MOSSDEEP01/scripts.pory"

# 767 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case3::
# 768 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale04, MSGBOX_DEFAULT
# 769 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 770 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 771 "data/maps/MOSSDEEP01/scripts.pory"

# 772 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Child01::
# 773 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 774 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 775 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Child01, MSGBOX_DEFAULT
# 776 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 777 "data/maps/MOSSDEEP01/scripts.pory"
	end	
# 778 "data/maps/MOSSDEEP01/scripts.pory"

# 779 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Child02::
# 780 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 781 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 782 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Child02, MSGBOX_DEFAULT
# 783 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 784 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 785 "data/maps/MOSSDEEP01/scripts.pory"

# 786 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 787 "data/maps/MOSSDEEP01/scripts.pory"
// WAILORD BLOCKER - Simple blocking system
# 788 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 789 "data/maps/MOSSDEEP01/scripts.pory"

# 790 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordBlocker::
# 791 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 792 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 793 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WailordGone
# 794 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WailordBlocking, MSGBOX_DEFAULT
# 795 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 796 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 797 "data/maps/MOSSDEEP01/scripts.pory"

# 798 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordGone::
# 799 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PathNowOpen, MSGBOX_DEFAULT
# 800 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 801 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 802 "data/maps/MOSSDEEP01/scripts.pory"

# 803 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordBlocksPath::
# 804 "data/maps/MOSSDEEP01/scripts.pory"
    lockall
# 805 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailordBlocks, MSGBOX_DEFAULT
# 806 "data/maps/MOSSDEEP01/scripts.pory"
    closemessage
# 807 "data/maps/MOSSDEEP01/scripts.pory"
    applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 808 "data/maps/MOSSDEEP01/scripts.pory"
    waitmovement 0
# 809 "data/maps/MOSSDEEP01/scripts.pory"
    releaseall
# 810 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 811 "data/maps/MOSSDEEP01/scripts.pory"

# 812 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordPathClear::
# 813 "data/maps/MOSSDEEP01/scripts.pory"
    // Path is clear, do nothing
# 814 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 815 "data/maps/MOSSDEEP01/scripts.pory"

# 816 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wailord::
# 817 "data/maps/MOSSDEEP01/scripts.pory"
    lock
# 818 "data/maps/MOSSDEEP01/scripts.pory"
    faceplayer
# 819 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailordIdle, MSGBOX_DEFAULT
# 820 "data/maps/MOSSDEEP01/scripts.pory"
    release
# 821 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 822 "data/maps/MOSSDEEP01/scripts.pory"

# 823 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wailmer::
# 824 "data/maps/MOSSDEEP01/scripts.pory"
    lock
# 825 "data/maps/MOSSDEEP01/scripts.pory"
    faceplayer
# 826 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailmerIdle, MSGBOX_DEFAULT
# 827 "data/maps/MOSSDEEP01/scripts.pory"
    release
# 828 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 829 "data/maps/MOSSDEEP01/scripts.pory"

# 830 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordJumpOver::
# 831 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 832 "data/maps/MOSSDEEP01/scripts.pory"
	setflag DN_FLAG_SEARCHING
# 833 "data/maps/MOSSDEEP01/scripts.pory"
	setflag DN_FLAG_DETECTOR_MODE
# 834 "data/maps/MOSSDEEP01/scripts.pory"
	
# 835 "data/maps/MOSSDEEP01/scripts.pory"
	// Player faz o pulo no lugar
# 836 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_JumpOverWailordUp
# 837 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 838 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_BIKE_HOP
# 839 "data/maps/MOSSDEEP01/scripts.pory"
	
# 840 "data/maps/MOSSDEEP01/scripts.pory"
	// Player e Celebi atravessam juntos (walk_up)
# 841 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_CrossWailordUp
# 842 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_FOLLOWER, MOSSDEEP01_Movement_CrossWailordUp
# 843 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 844 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_BIKE_HOP
# 845 "data/maps/MOSSDEEP01/scripts.pory"
	
# 846 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 847 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 848 "data/maps/MOSSDEEP01/scripts.pory"

# 849 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_JumpOverWailordUp:
# 850 "data/maps/MOSSDEEP01/scripts.pory"
	jump_in_place_up
# 851 "data/maps/MOSSDEEP01/scripts.pory"
	delay_4
# 852 "data/maps/MOSSDEEP01/scripts.pory"
	jump_in_place_up
# 853 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 854 "data/maps/MOSSDEEP01/scripts.pory"

# 855 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CrossWailordUp:
# 856 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 857 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 858 "data/maps/MOSSDEEP01/scripts.pory"
	
# 859 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordJumpOverAfter::
# 860 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag DN_FLAG_SEARCHING
# 861 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag DN_FLAG_DETECTOR_MODE
# 862 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 863 "data/maps/MOSSDEEP01/scripts.pory"

# 864 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordJumpOverAfter2::
# 865 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag DN_FLAG_SEARCHING
# 866 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag DN_FLAG_DETECTOR_MODE
# 867 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 868 "data/maps/MOSSDEEP01/scripts.pory"
    faceplayer
# 869 "data/maps/MOSSDEEP01/scripts.pory"
    createfieldmugshot MUGSHOT_CELEBI, EMOTE_NORMAL
# 870 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_AfterTimeGears, MSGBOX_DEFAULT
# 871 "data/maps/MOSSDEEP01/scripts.pory"
    removefieldmugshot
# 872 "data/maps/MOSSDEEP01/scripts.pory"
    release
# 873 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 874 "data/maps/MOSSDEEP01/scripts.pory"

# 875 "data/maps/MOSSDEEP01/scripts.pory"

# 876 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 877 "data/maps/MOSSDEEP01/scripts.pory"
// JIRACHI WAKE EVENT - TRIGGER BASED
# 878 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 879 "data/maps/MOSSDEEP01/scripts.pory"

# 880 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_JirachiTrigger::
# 881 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 882 "data/maps/MOSSDEEP01/scripts.pory"
	
# 883 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiAlreadyAwake
# 884 "data/maps/MOSSDEEP01/scripts.pory"
	
# 885 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiWaking, MSGBOX_DEFAULT
# 886 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 887 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 888 "data/maps/MOSSDEEP01/scripts.pory"
	
# 889 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 890 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_PSYBEAM
# 891 "data/maps/MOSSDEEP01/scripts.pory"
	delay 10
# 892 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 4
# 893 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 894 "data/maps/MOSSDEEP01/scripts.pory"
	
# 895 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_SOUTH
# 896 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_PSYBEAM
# 897 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 898 "data/maps/MOSSDEEP01/scripts.pory"
	
# 899 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_NORTH
# 900 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SWIFT
# 901 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 902 "data/maps/MOSSDEEP01/scripts.pory"
	
# 903 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_JIRACHI_AWAKE
# 904 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiAwoken, MSGBOX_DEFAULT
# 905 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 906 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 907 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 908 "data/maps/MOSSDEEP01/scripts.pory"

# 909 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiAlreadyAwake::
# 910 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 911 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 912 "data/maps/MOSSDEEP01/scripts.pory"

# 913 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Jirachi::
# 914 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 915 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 916 "data/maps/MOSSDEEP01/scripts.pory"
	
# 917 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiSleeping
# 918 "data/maps/MOSSDEEP01/scripts.pory"
	
# 919 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_JirachiNeedCelebi
# 920 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_JirachiNeedItems
# 921 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_JirachiNeedItems
# 922 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_JirachiNeedItems
# 923 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_QUEST_COMPLETED, MOSSDEEP01_JirachiAlreadyCompleted
# 924 "data/maps/MOSSDEEP01/scripts.pory"
	
# 925 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_EventScript_QuestComplete
# 926 "data/maps/MOSSDEEP01/scripts.pory"

# 927 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiNeedCelebi::
# 928 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 929 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiNeedCelebi, MSGBOX_DEFAULT
# 930 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 931 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 932 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 933 "data/maps/MOSSDEEP01/scripts.pory"

# 934 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiNeedItems::
# 935 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 936 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiNeedItems, MSGBOX_DEFAULT
# 937 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 938 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 939 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 940 "data/maps/MOSSDEEP01/scripts.pory"

# 941 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiAlreadyCompleted::
# 942 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 943 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiCompleted, MSGBOX_DEFAULT
# 944 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 945 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 946 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 947 "data/maps/MOSSDEEP01/scripts.pory"

# 948 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiSleeping::
# 949 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiStillSleeping, MSGBOX_DEFAULT
# 950 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 951 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 952 "data/maps/MOSSDEEP01/scripts.pory"

# 953 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 954 "data/maps/MOSSDEEP01/scripts.pory"
// QUEST COMPLETION - JIRACHI SENDS PLAYER HOME
# 955 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 956 "data/maps/MOSSDEEP01/scripts.pory"

# 957 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_QuestComplete::
# 958 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 959 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_ThankYou, MSGBOX_DEFAULT
# 960 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 961 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 962 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_QUEST_COMPLETED
# 963 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CometAppears, MSGBOX_DEFAULT
# 964 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 965 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 8
# 966 "data/maps/MOSSDEEP01/scripts.pory"
	delay 40
# 967 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceUp
# 968 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 969 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_BLACK, 4
# 970 "data/maps/MOSSDEEP01/scripts.pory"
	delay 10
# 971 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_COMET
# 972 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_MILLENNIUM_COMET
# 973 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_SHINY
# 974 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 2
# 975 "data/maps/MOSSDEEP01/scripts.pory"
	delay 8
# 976 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 2
# 977 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 978 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_THUNDERSTORM
# 979 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 980 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SACRED_FIRE
# 981 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 982 "data/maps/MOSSDEEP01/scripts.pory"
	special SpawnCameraObject
# 983 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SWIFT
# 984 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MOSSDEEP01_Movement_CameraFollowComet
# 985 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_MILLENNIUM_COMET, MOSSDEEP01_Movement_CometCrossingSky
# 986 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 987 "data/maps/MOSSDEEP01/scripts.pory"
	special RemoveCameraObject
# 988 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 989 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_EXPLOSION
# 990 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 991 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 992 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 993 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SOLAR_BEAM
# 994 "data/maps/MOSSDEEP01/scripts.pory"
	delay 40
# 995 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 8
# 996 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 997 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_MILLENNIUM_COMET
# 998 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_COMET
# 999 "data/maps/MOSSDEEP01/scripts.pory"
	createfieldmugshot MUGSHOT_JIRACHI, EMOTE_NORMAL
# 1000 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_TimeToWakeUp, MSGBOX_DEFAULT
# 1001 "data/maps/MOSSDEEP01/scripts.pory"
	removefieldmugshot
# 1002 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 1003 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 1004 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_TELEPORT
# 1005 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 12
# 1006 "data/maps/MOSSDEEP01/scripts.pory"
	delay 80
# 1007 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 1008 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1009 "data/maps/MOSSDEEP01/scripts.pory"
	// Set flags for Littleroot Town start
# 1010 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_VISITED_LITTLEROOT_TOWN
# 1011 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
# 1012 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
# 1013 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SET_WALL_CLOCK
# 1014 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_RESCUED_BIRCH
# 1015 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 1016 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SYS_B_DASH
# 1017 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_RECEIVED_RUNNING_SHOES
# 1018 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 6
# 1019 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 4
# 1020 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1021 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 1022 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 1023 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_WarpMale
# 1024 "data/maps/MOSSDEEP01/scripts.pory"
	
# 1025 "data/maps/MOSSDEEP01/scripts.pory"
	// Female player
# 1026 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
# 1027 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 1028 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 1029 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
# 1030 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 1031 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
# 1032 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 1033 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1034 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1035 "data/maps/MOSSDEEP01/scripts.pory"

# 1036 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_WarpMale::
# 1037 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
# 1038 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 1039 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 1040 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
# 1041 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 1042 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
# 1043 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 1044 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1045 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1046 "data/maps/MOSSDEEP01/scripts.pory"

# 1047 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1048 "data/maps/MOSSDEEP01/scripts.pory"
// MOVEMENT SCRIPTS
# 1049 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1050 "data/maps/MOSSDEEP01/scripts.pory"

# 1051 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CameraFollowComet:
# 1052 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1053 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1054 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1055 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
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
	step_end
# 1093 "data/maps/MOSSDEEP01/scripts.pory"

# 1094 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CometCrossingSky:
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
	walk_fast_left
# 1137 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1138 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1139 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1140 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1141 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1142 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1143 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1144 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1145 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1146 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1147 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1148 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1149 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1150 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1151 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1152 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1153 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1154 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1155 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1156 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1157 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1158 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1159 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1160 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1161 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1162 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1163 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1164 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1165 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1166 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1167 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1168 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1169 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1170 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1171 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1172 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1173 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1174 "data/maps/MOSSDEEP01/scripts.pory"
	walk_fast_left
# 1175 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 1176 "data/maps/MOSSDEEP01/scripts.pory"

# 1177 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1178 "data/maps/MOSSDEEP01/scripts.pory"
// TEXT MESSAGES
# 1179 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1180 "data/maps/MOSSDEEP01/scripts.pory"

# 1181 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_NeedCelebiFirst:
# 1182 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: I sense something…\p"
# 1183 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The Guardian of the Forest,\n"
# 1184 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI, is in danger!\p"
# 1185 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please, help CELEBI first!\n"
# 1186 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I assist you.$"
# 1187 "data/maps/MOSSDEEP01/scripts.pory"

# 1188 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_NeedItems:
# 1189 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: Thank you for saving CELEBI!\p"
# 1190 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Unfortunately, the flow of time is broken.\p"
# 1191 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please find the three TIME GEARS\n"
# 1192 "data/maps/MOSSDEEP01/scripts.pory"
	.string "scattered around this place.\p"
# 1193 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I send you home!$"
# 1194 "data/maps/MOSSDEEP01/scripts.pory"

# 1195 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ThankYou:
# 1196 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You found all the TIME GEARS!\p"
# 1197 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The temporal flow is restoring…\n"
# 1198 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Look! The MILLENNIUM COMET!$"
# 1199 "data/maps/MOSSDEEP01/scripts.pory"

# 1200 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CometAppears:
# 1201 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The sky begins to glow!\p"
# 1202 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A brilliant comet streaks across\n"
# 1203 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the heavens!$"
# 1204 "data/maps/MOSSDEEP01/scripts.pory"

# 1205 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_TimeToWakeUp:
# 1206 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: The timeline is restored!\p"
# 1207 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It's time to wake up from this dream…$"
# 1208 "data/maps/MOSSDEEP01/scripts.pory"

# 1209 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AlreadyHelped:
# 1210 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You already helped restore\n"
# 1211 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the flow of time!\p"
# 1212 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you, time traveler!$"
# 1213 "data/maps/MOSSDEEP01/scripts.pory"

# 1214 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem1:
# 1215 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} found something shining\n"
# 1216 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the grass…$"
# 1217 "data/maps/MOSSDEEP01/scripts.pory"

# 1218 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear1:
# 1219 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1220 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the PAST!$"
# 1221 "data/maps/MOSSDEEP01/scripts.pory"

# 1222 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem2:
# 1223 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} discovered something glowing\n"
# 1224 "data/maps/MOSSDEEP01/scripts.pory"
	.string "among the rocks…$"
# 1225 "data/maps/MOSSDEEP01/scripts.pory"

# 1226 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear2:
# 1227 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1228 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the PRESENT!$"
# 1229 "data/maps/MOSSDEEP01/scripts.pory"

# 1230 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem3:
# 1231 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} noticed something sparkling\n"
# 1232 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the water…$"
# 1233 "data/maps/MOSSDEEP01/scripts.pory"

# 1234 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear3:
# 1235 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1236 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the FUTURE!$"
# 1237 "data/maps/MOSSDEEP01/scripts.pory"

# 1238 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AlreadyCollected:
# 1239 "data/maps/MOSSDEEP01/scripts.pory"
	.string "This place seems peaceful now.$"
# 1240 "data/maps/MOSSDEEP01/scripts.pory"

# 1241 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiHelp:
# 1242 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: … … …\p"
# 1243 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The flow of time is broken…\p"
# 1244 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please… find the three TIME GEARS…\n"
# 1245 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I be freed…$"
# 1246 "data/maps/MOSSDEEP01/scripts.pory"

# 1247 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiPower:
# 1248 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: You found all the TIME GEARS!\p"
# 1249 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Now I can use my power to restore\n"
# 1250 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the temporal flow!$"
# 1251 "data/maps/MOSSDEEP01/scripts.pory"

# 1252 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiCalmed:
# 1253 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild POKÉMON have calmed down!$"
# 1254 "data/maps/MOSSDEEP01/scripts.pory"

# 1255 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiThanks:
# 1256 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: Thank you, {PLAYER}!\n"
# 1257 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Together we restored time!$"
# 1258 "data/maps/MOSSDEEP01/scripts.pory"

# 1259 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaAttack:
# 1260 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild MIGHTYENA attacks!$"
# 1261 "data/maps/MOSSDEEP01/scripts.pory"

# 1262 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaBlackedOut:
# 1263 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild POKÉMON are too aggressive!\n"
# 1264 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You blacked out!$"
# 1265 "data/maps/MOSSDEEP01/scripts.pory"

# 1266 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaFriendly:
# 1267 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The MIGHTYENA looks calm and friendly.\n"
# 1268 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Amazing, they're so peaceful now!\p"
# 1269 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You can even pet them!$"
# 1270 "data/maps/MOSSDEEP01/scripts.pory"

# 1271 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorTrapped:
# 1272 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: Help! These wild POKÉMON\n"
# 1273 "data/maps/MOSSDEEP01/scripts.pory"
	.string "are too aggressive!\p"
# 1274 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I can't escape!$"
# 1275 "data/maps/MOSSDEEP01/scripts.pory"

# 1276 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorAmazed:
# 1277 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: Incredible! The POKÉMON\n"
# 1278 "data/maps/MOSSDEEP01/scripts.pory"
	.string "suddenly calmed down!\p"
# 1279 "data/maps/MOSSDEEP01/scripts.pory"
	.string "What happened?$"
# 1280 "data/maps/MOSSDEEP01/scripts.pory"

# 1281 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorGoing:
# 1282 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I'm going to find a safer\n"
# 1283 "data/maps/MOSSDEEP01/scripts.pory"
	.string "place. Thank you!$"
# 1284 "data/maps/MOSSDEEP01/scripts.pory"

# 1285 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorHappy:
# 1286 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: I feel much safer now.\n"
# 1287 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you for your help!$"
# 1288 "data/maps/MOSSDEEP01/scripts.pory"

# 1289 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HealerWelcome:
# 1290 "data/maps/MOSSDEEP01/scripts.pory"
	.string "HEALER: Let me heal your POKÉMON.$"
# 1291 "data/maps/MOSSDEEP01/scripts.pory"

# 1292 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Healing:
# 1293 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Healing POKÉMON…$"
# 1294 "data/maps/MOSSDEEP01/scripts.pory"

# 1295 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HealedComplete:
# 1296 "data/maps/MOSSDEEP01/scripts.pory"
	.string "HEALER: Your POKÉMON are fully\n"
# 1297 "data/maps/MOSSDEEP01/scripts.pory"
	.string "healed! Good luck!$"
# 1298 "data/maps/MOSSDEEP01/scripts.pory"

# 1299 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaWelcome:
# 1300 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: {PLAYER}! You're awake!\p"
# 1301 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The earthquake was terrible…\n"
# 1302 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Many people are trapped…$"
# 1303 "data/maps/MOSSDEEP01/scripts.pory"

# 1304 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_EarthquakeWarning:
# 1305 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Another tremor!\n"
# 1306 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there!$"
# 1307 "data/maps/MOSSDEEP01/scripts.pory"

# 1308 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaGivesCharm:
# 1309 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Take this SHINY CHARM.\n"
# 1310 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It might bring you luck!$"
# 1311 "data/maps/MOSSDEEP01/scripts.pory"

# 1312 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaCharmExplanation:
# 1313 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: This charm increases your\n"
# 1314 "data/maps/MOSSDEEP01/scripts.pory"
	.string "chances of finding rare POKÉMON.\p"
# 1315 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Use it well!$"
# 1316 "data/maps/MOSSDEEP01/scripts.pory"

# 1317 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HoennDestroyed:
# 1318 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The HOENN region…\n"
# 1319 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It's been completely destroyed…\p"
# 1320 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But there are survivors who need\n"
# 1321 "data/maps/MOSSDEEP01/scripts.pory"
	.string "help. Please, {PLAYER}, help them!$"
# 1322 "data/maps/MOSSDEEP01/scripts.pory"

# 1323 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PlayerDecision:
# 1324 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} decides to help the survivors\n"
# 1325 "data/maps/MOSSDEEP01/scripts.pory"
	.string "and explore the devastated area.$"
# 1326 "data/maps/MOSSDEEP01/scripts.pory"

# 1327 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GoodLuck:
# 1328 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Good luck, {PLAYER}!\n"
# 1329 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be very careful!$"
# 1330 "data/maps/MOSSDEEP01/scripts.pory"

# 1331 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaEncouragement:
# 1332 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You're doing great, {PLAYER}!\n"
# 1333 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Keep helping people!$"
# 1334 "data/maps/MOSSDEEP01/scripts.pory"

# 1335 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaFirstTalk:
# 1336 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: The world has changed…\n"
# 1337 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Everything is so different now…$"
# 1338 "data/maps/MOSSDEEP01/scripts.pory"

# 1339 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaAfterTalk:
# 1340 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: Thank you for helping\n"
# 1341 "data/maps/MOSSDEEP01/scripts.pory"
	.string "everyone, {PLAYER}. You're a hero!$"
# 1342 "data/maps/MOSSDEEP01/scripts.pory"

# 1343 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory1:
# 1344 "data/maps/MOSSDEEP01/scripts.pory"
	.string "This was the beginning…$"
# 1345 "data/maps/MOSSDEEP01/scripts.pory"

# 1346 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory2:
# 1347 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Then the conflict started…$"
# 1348 "data/maps/MOSSDEEP01/scripts.pory"

# 1349 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory3:
# 1350 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The great battle between land and\n"
# 1351 "data/maps/MOSSDEEP01/scripts.pory"
	.string "sea…$"
# 1352 "data/maps/MOSSDEEP01/scripts.pory"

# 1353 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory4:
# 1354 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The tsunami devastated everything…$"
# 1355 "data/maps/MOSSDEEP01/scripts.pory"

# 1356 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory5:
# 1357 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Volcanoes erupted across the land…$"
# 1358 "data/maps/MOSSDEEP01/scripts.pory"

# 1359 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory6:
# 1360 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The land became a barren wasteland…$"
# 1361 "data/maps/MOSSDEEP01/scripts.pory"

# 1362 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory7:
# 1363 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The oceans raged with unending\n"
# 1364 "data/maps/MOSSDEEP01/scripts.pory"
	.string "storms…$"
# 1365 "data/maps/MOSSDEEP01/scripts.pory"

# 1366 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory8:
# 1367 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Survivors gathered in camps…$"
# 1368 "data/maps/MOSSDEEP01/scripts.pory"

# 1369 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory9:
# 1370 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Hope began to fade…$"
# 1371 "data/maps/MOSSDEEP01/scripts.pory"

# 1372 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory10:
# 1373 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But then a legend appeared…$"
# 1374 "data/maps/MOSSDEEP01/scripts.pory"

# 1375 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory11:
# 1376 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The sky guardian descended from\n"
# 1377 "data/maps/MOSSDEEP01/scripts.pory"
	.string "above…$"
# 1378 "data/maps/MOSSDEEP01/scripts.pory"

# 1379 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory12:
# 1380 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Peace was restored, but at a cost…$"
# 1381 "data/maps/MOSSDEEP01/scripts.pory"

# 1382 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory13:
# 1383 "data/maps/MOSSDEEP01/scripts.pory"
	.string "And this is how our world became what it\n"
# 1384 "data/maps/MOSSDEEP01/scripts.pory"
	.string "is today…$"
# 1385 "data/maps/MOSSDEEP01/scripts.pory"

# 1386 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAskStory:
# 1387 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Hi, {PLAYER}.\p"
# 1388 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Would you like to hear the stories\n"
# 1389 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of how HOENN became what it is now?$"
# 1390 "data/maps/MOSSDEEP01/scripts.pory"

# 1391 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaBeCareful:
# 1392 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I understand.\p"
# 1393 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please be very careful when exploring\n"
# 1394 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the MOSSDEEP ruins.\p"
# 1395 "data/maps/MOSSDEEP01/scripts.pory"
	.string "There are many dangers out there…$"
# 1396 "data/maps/MOSSDEEP01/scripts.pory"

# 1397 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAskAgain:
# 1398 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Would you like to hear\n"
# 1399 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the stories of HOENN again?$"
# 1400 "data/maps/MOSSDEEP01/scripts.pory"

# 1401 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale01:
# 1402 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: Hey {PLAYER}! I'm helping\n"
# 1403 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the survivors too!\p"
# 1404 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's work together!$"
# 1405 "data/maps/MOSSDEEP01/scripts.pory"

# 1406 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale02:
# 1407 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: These wild POKÉMON are\n"
# 1408 "data/maps/MOSSDEEP01/scripts.pory"
	.string "really aggressive!\p"
# 1409 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there!$"
# 1410 "data/maps/MOSSDEEP01/scripts.pory"

# 1411 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale03:
# 1412 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: I heard there's a special\n"
# 1413 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON that can help us.\p"
# 1414 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's find it!$"
# 1415 "data/maps/MOSSDEEP01/scripts.pory"

# 1416 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale04:
# 1417 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: We can do this, {PLAYER}!\n"
# 1418 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Together we'll save everyone!$"
# 1419 "data/maps/MOSSDEEP01/scripts.pory"

# 1420 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale01:
# 1421 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: {PLAYER}! I'm so glad you're safe!\p"
# 1422 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's help the survivors together!$"
# 1423 "data/maps/MOSSDEEP01/scripts.pory"

# 1424 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale02:
# 1425 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: The wild POKÉMON are\n"
# 1426 "data/maps/MOSSDEEP01/scripts.pory"
	.string "acting so strange…\p"
# 1427 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Something must be wrong!$"
# 1428 "data/maps/MOSSDEEP01/scripts.pory"

# 1429 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale03:
# 1430 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: I heard about a legendary\n"
# 1431 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON that controls time.\p"
# 1432 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe it can help us!$"
# 1433 "data/maps/MOSSDEEP01/scripts.pory"

# 1434 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale04:
# 1435 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: We make a great team,\n"
# 1436 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER}! Let's keep going!$"
# 1437 "data/maps/MOSSDEEP01/scripts.pory"

# 1438 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Child01:
# 1439 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CHILD: I'm scared…\n"
# 1440 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Where are my parents?$"
# 1441 "data/maps/MOSSDEEP01/scripts.pory"

# 1442 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Child02:
# 1443 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CHILD: The ground shook really hard…\n"
# 1444 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Then everything changed…$"
# 1445 "data/maps/MOSSDEEP01/scripts.pory"

# 1446 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordBlocking:
# 1447 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A massive WAILORD blocks the path!\p"
# 1448 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems agitated by the chaos…\n"
# 1449 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You can't get through.$"
# 1450 "data/maps/MOSSDEEP01/scripts.pory"

# 1451 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PathNowOpen:
# 1452 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The WAILORD has calmed down and\n"
# 1453 "data/maps/MOSSDEEP01/scripts.pory"
	.string "moved away. The path is clear!$"
# 1454 "data/maps/MOSSDEEP01/scripts.pory"

# 1455 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiWaking:
# 1456 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A mysterious POKÉMON is sleeping\n"
# 1457 "data/maps/MOSSDEEP01/scripts.pory"
	.string "near the rocks…\p"
# 1458 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems to be waking up!$"
# 1459 "data/maps/MOSSDEEP01/scripts.pory"

# 1460 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiAwoken:
# 1461 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI has awoken!$"
# 1462 "data/maps/MOSSDEEP01/scripts.pory"

# 1463 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiNeedCelebi:
# 1464 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: I sense temporal disturbance…\n"
# 1465 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The forest guardian needs help!\p"
# 1466 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please rescue CELEBI first!$"
# 1467 "data/maps/MOSSDEEP01/scripts.pory"

# 1468 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiNeedItems:
# 1469 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: Thank you for saving CELEBI!\n"
# 1470 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But time is still broken…\p"
# 1471 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please find the three TIME GEARS\n"
# 1472 "data/maps/MOSSDEEP01/scripts.pory"
	.string "to restore temporal flow!$"
# 1473 "data/maps/MOSSDEEP01/scripts.pory"

# 1474 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiCompleted:
# 1475 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You restored the timeline!\n"
# 1476 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you, time traveler!$"
# 1477 "data/maps/MOSSDEEP01/scripts.pory"

# 1478 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiStillSleeping:
# 1479 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI is sleeping peacefully…\n"
# 1480 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe you should approach it?$"
# 1481 "data/maps/MOSSDEEP01/scripts.pory"

# 1482 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyIntro:
# 1483 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: Hello, {PLAYER}!\p"
# 1484 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Did you know that in the past people\n"
# 1485 "data/maps/MOSSDEEP01/scripts.pory"
	.string "could train POKÉMON normally?\p"
# 1486 "data/maps/MOSSDEEP01/scripts.pory"
	.string "There were POKÉ BALLS, devices that\n"
# 1487 "data/maps/MOSSDEEP01/scripts.pory"
	.string "captured and stored POKÉMON.\p"
# 1488 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But now… they don't make them anymore.\n"
# 1489 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The technology was lost.\p"
# 1490 "data/maps/MOSSDEEP01/scripts.pory"
	.string "That's why the connection with POKÉMON\n"
# 1491 "data/maps/MOSSDEEP01/scripts.pory"
	.string "has to be made in another way…\p"
# 1492 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A more natural, pure connection, like\n"
# 1493 "data/maps/MOSSDEEP01/scripts.pory"
	.string "what I have with PIDGEOT.\p"
# 1494 "data/maps/MOSSDEEP01/scripts.pory"
	.string "If wild POKÉMON are giving you trouble,\n"
# 1495 "data/maps/MOSSDEEP01/scripts.pory"
	.string "PIDGEOT and I will help.$"
# 1496 "data/maps/MOSSDEEP01/scripts.pory"

# 1497 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyAfterCelebi:
# 1498 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: Wow… What is that Pokemon\n"
# 1499 "data/maps/MOSSDEEP01/scripts.pory"
	.string "following you?\p"
# 1500 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It feels so magical…\n"
# 1501 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I have never seen anything like it.\p"
# 1502 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It reminds me of the old legends\n"
# 1503 "data/maps/MOSSDEEP01/scripts.pory"
	.string "our grandparents used to tell…\p"
# 1504 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe those dreams you had…\n"
# 1505 "data/maps/MOSSDEEP01/scripts.pory"
	.string "they were real after all.$"
# 1506 "data/maps/MOSSDEEP01/scripts.pory"

# 1507 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyWarped:
# 1508 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: I'll head there first!\p"
# 1509 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Meet me ahead, {PLAYER}!$"
# 1510 "data/maps/MOSSDEEP01/scripts.pory"

# 1511 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyNotReady:
# 1512 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: Hello, {PLAYER}!\p"
# 1513 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there! The wild\n"
# 1514 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON are very aggressive.\p"
# 1515 "data/maps/MOSSDEEP01/scripts.pory"
	.string "If you get into trouble, come\n"
# 1516 "data/maps/MOSSDEEP01/scripts.pory"
	.string "talk to me!$"
# 1517 "data/maps/MOSSDEEP01/scripts.pory"

# 1518 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PidgeotGreeting:
# 1519 "data/maps/MOSSDEEP01/scripts.pory"
	.string "PIDGEOT: Piiidgeoo!$"
# 1520 "data/maps/MOSSDEEP01/scripts.pory"

# 1521 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordBlocks:
# 1522 "data/maps/MOSSDEEP01/scripts.pory"
    .string "There's only water ahead!\p"
# 1523 "data/maps/MOSSDEEP01/scripts.pory"
    .string "You can't cross without help…$"
# 1524 "data/maps/MOSSDEEP01/scripts.pory"

# 1525 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordIdle:
# 1526 "data/maps/MOSSDEEP01/scripts.pory"
    .string "WAILORD is calmly floating on the water.$"
# 1527 "data/maps/MOSSDEEP01/scripts.pory"

# 1528 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailmerIdle:
# 1529 "data/maps/MOSSDEEP01/scripts.pory"
    .string "The WAILMER are splashing playfully!$"
# 1530 "data/maps/MOSSDEEP01/scripts.pory"

# 1531 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiCallsWailord:
# 1532 "data/maps/MOSSDEEP01/scripts.pory"
    .string "CELEBI calls out to the ocean!\p"
# 1533 "data/maps/MOSSDEEP01/scripts.pory"
    .string "A massive WAILORD appears and\n"
# 1534 "data/maps/MOSSDEEP01/scripts.pory"
    .string "creates a path across the water!$"
# 1535 "data/maps/MOSSDEEP01/scripts.pory"

# 1536 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AfterTimeGears:
# 1537 "data/maps/MOSSDEEP01/scripts.pory"
    .string "CELEBI: We are close, I can feel it…$"
