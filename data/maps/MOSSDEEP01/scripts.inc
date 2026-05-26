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
	msgbox MOSSDEEP01_Text_CelebiPower, MSGBOX_DEFAULT
# 273 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 274 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_HYPER_BEAM
# 275 "data/maps/MOSSDEEP01/scripts.pory"
	
# 276 "data/maps/MOSSDEEP01/scripts.pory"
	// Transform static Celebi into follower
# 277 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 278 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_CELEBI_STATIC
# 279 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 280 "data/maps/MOSSDEEP01/scripts.pory"
	
# 281 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_CELEBI_RESCUED
# 282 "data/maps/MOSSDEEP01/scripts.pory"
	
# 283 "data/maps/MOSSDEEP01/scripts.pory"
	// Show Wailord path and set subpriority to walk over it
# 284 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WAILORD_PATH
# 285 "data/maps/MOSSDEEP01/scripts.pory"
	setobjectsubpriority LOCALID_WAILORD_BLOCKER, MAP_MOSSDEEP01, 0xFF
# 286 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiCallsWailord, MSGBOX_DEFAULT
# 287 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 288 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 289 "data/maps/MOSSDEEP01/scripts.pory"

# 290 "data/maps/MOSSDEEP01/scripts.pory"
	// Set Celebi as follower
# 291 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 292 "data/maps/MOSSDEEP01/scripts.pory"
	setfollowernpc LOCALID_CELEBI_STATIC, FNPC_ALL, NULL, 0
# 293 "data/maps/MOSSDEEP01/scripts.pory"

# 294 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiCalmed, MSGBOX_DEFAULT
# 295 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 296 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 297 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 298 "data/maps/MOSSDEEP01/scripts.pory"

# 299 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiNeedGears::
# 300 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARAQUANID, 10, 3
# 301 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiHelp, MSGBOX_DEFAULT
# 302 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 303 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_TALKED_TO_CELEBI
# 304 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 305 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 306 "data/maps/MOSSDEEP01/scripts.pory"

# 307 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiIntroduction::
# 308 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARAQUANID, 10, 3
# 309 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiHelp, MSGBOX_DEFAULT
# 310 "data/maps/MOSSDEEP01/scripts.pory"
	waitmessage
# 311 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 312 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 313 "data/maps/MOSSDEEP01/scripts.pory"

# 314 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_CelebiAlreadyRescued::
# 315 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CelebiThanks, MSGBOX_DEFAULT
# 316 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 317 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 318 "data/maps/MOSSDEEP01/scripts.pory"

# 319 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 320 "data/maps/MOSSDEEP01/scripts.pory"
// MIGHTYENA ZONE TRIGGER
# 321 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 322 "data/maps/MOSSDEEP01/scripts.pory"

# 323 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaZone::
# 324 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 325 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_MightyenaZone_Safe
# 326 "data/maps/MOSSDEEP01/scripts.pory"
	
# 327 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_PIN
# 328 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_ExclamationMark
# 329 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 330 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 331 "data/maps/MOSSDEEP01/scripts.pory"
	
# 332 "data/maps/MOSSDEEP01/scripts.pory"
	call MOSSDEEP01_EventScript_FindNearestMightyena
# 333 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_0x8008, Common_Movement_ExclamationMark
# 334 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 335 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_0x8008, Common_Movement_FacePlayer
# 336 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 337 "data/maps/MOSSDEEP01/scripts.pory"
	
# 338 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 339 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 340 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 341 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 342 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 343 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
# 344 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 345 "data/maps/MOSSDEEP01/scripts.pory"
	
# 346 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
# 347 "data/maps/MOSSDEEP01/scripts.pory"
	
# 348 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 349 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 14, 67
# 350 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 351 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 352 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 353 "data/maps/MOSSDEEP01/scripts.pory"

# 354 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_FindNearestMightyena::
# 355 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_0x8008, 0
# 356 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 357 "data/maps/MOSSDEEP01/scripts.pory"

# 358 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_MightyenaZone_Safe::
# 359 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 360 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 361 "data/maps/MOSSDEEP01/scripts.pory"

# 362 "data/maps/MOSSDEEP01/scripts.pory"
// Wing Interaction
# 363 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wingull::
# 364 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 365 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 366 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_WINGULL, CRY_MODE_NORMAL
# 367 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 368 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 369 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 370 "data/maps/MOSSDEEP01/scripts.pory"

# 371 "data/maps/MOSSDEEP01/scripts.pory"

# 372 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 373 "data/maps/MOSSDEEP01/scripts.pory"
// MIGHTYENA NPC INTERACTION
# 374 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 375 "data/maps/MOSSDEEP01/scripts.pory"

# 376 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Mightyena::
# 377 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FacePlayer
# 378 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 379 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 380 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_MightyenaFriendly
# 381 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 382 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaAttack, MSGBOX_DEFAULT
# 383 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 384 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 385 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_BITE
# 386 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 387 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 388 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaBlackedOut, MSGBOX_DEFAULT
# 389 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 390 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_ATTACKED_BY_MIGHTYENA
# 391 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_MOSSDEEP_01
# 392 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 11, 71
# 393 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 394 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 395 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 396 "data/maps/MOSSDEEP01/scripts.pory"

# 397 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_MightyenaFriendly::
# 398 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 399 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 400 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_MIGHTYENA, CRY_MODE_NORMAL
# 401 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_Mightyena_NotReady
# 402 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_MightyenaFriendly, MSGBOX_DEFAULT
# 403 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 404 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 405 "data/maps/MOSSDEEP01/scripts.pory"

# 406 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Mightyena_NotReady::
# 407 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 408 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 409 "data/maps/MOSSDEEP01/scripts.pory"

# 410 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 411 "data/maps/MOSSDEEP01/scripts.pory"
// POKEMON NPC INTERACTIONS
# 412 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 413 "data/maps/MOSSDEEP01/scripts.pory"

# 414 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_PidgeotInitial::
# 415 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 416 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 417 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_PIDGEOT, CRY_MODE_NORMAL
# 418 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PidgeotGreeting, MSGBOX_DEFAULT
# 419 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 420 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 421 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 422 "data/maps/MOSSDEEP01/scripts.pory"

# 423 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Bulbasaur::
# 424 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 425 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 426 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_BULBASAUR, CRY_MODE_NORMAL
# 427 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 428 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 429 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 430 "data/maps/MOSSDEEP01/scripts.pory"

# 431 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Totodile::
# 432 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 433 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 434 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_TOTODILE, CRY_MODE_NORMAL
# 435 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 436 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 437 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 438 "data/maps/MOSSDEEP01/scripts.pory"

# 439 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Torchic::
# 440 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 441 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 442 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_TORCHIC, CRY_MODE_NORMAL
# 443 "data/maps/MOSSDEEP01/scripts.pory"
	waitmoncry
# 444 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 445 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 446 "data/maps/MOSSDEEP01/scripts.pory"

# 447 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 448 "data/maps/MOSSDEEP01/scripts.pory"
// WALLY NPC - SIMPLIFIED
# 449 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 450 "data/maps/MOSSDEEP01/scripts.pory"

# 451 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wally::
# 452 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 453 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 454 "data/maps/MOSSDEEP01/scripts.pory"

# 455 "data/maps/MOSSDEEP01/scripts.pory"
	// PRIORIDADE MAXIMA (depois do Celebi)
# 456 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WallyAfterCelebi
# 457 "data/maps/MOSSDEEP01/scripts.pory"

# 458 "data/maps/MOSSDEEP01/scripts.pory"
	// fluxo normal
# 459 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_WALLY_INTRO_DONE, MOSSDEEP01_EventScript_WallyAfterIntro
# 460 "data/maps/MOSSDEEP01/scripts.pory"
	
# 461 "data/maps/MOSSDEEP01/scripts.pory"
	// Check if attacked by Mightyenas
# 462 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_WALLY_ATTACKED_BY_MIGHTYENA, MOSSDEEP01_EventScript_WallyNotReady
# 463 "data/maps/MOSSDEEP01/scripts.pory"
	
# 464 "data/maps/MOSSDEEP01/scripts.pory"
	// First conversation (after attack)
# 465 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyIntro, MSGBOX_DEFAULT
# 466 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 467 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_WALLY_INTRO_DONE
# 468 "data/maps/MOSSDEEP01/scripts.pory"
	
# 469 "data/maps/MOSSDEEP01/scripts.pory"
	// Hide initial Wally and Pidgeot
# 470 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_WALLY_INITIAL
# 471 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_PIDGEOT_INITIAL
# 472 "data/maps/MOSSDEEP01/scripts.pory"
	
# 473 "data/maps/MOSSDEEP01/scripts.pory"
	// Show Wally and Pidgeot at new position
# 474 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_WALLY_CLONE
# 475 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_PIDGEOT_CLONE
# 476 "data/maps/MOSSDEEP01/scripts.pory"
	
# 477 "data/maps/MOSSDEEP01/scripts.pory"
	// Teleport player
# 478 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_MOSSDEEP01, 47, 45
# 479 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 480 "data/maps/MOSSDEEP01/scripts.pory"

# 481 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyWarped, MSGBOX_DEFAULT
# 482 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 483 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 484 "data/maps/MOSSDEEP01/scripts.pory"

# 485 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyNotReady::
# 486 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 487 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 488 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WallyAfterCelebi
# 489 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyNotReady, MSGBOX_DEFAULT
# 490 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 491 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 492 "data/maps/MOSSDEEP01/scripts.pory"

# 493 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyAfterIntro::
# 494 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyAfterCelebi, MSGBOX_DEFAULT
# 495 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 496 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 497 "data/maps/MOSSDEEP01/scripts.pory"

# 498 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WallyAfterCelebi::
# 499 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WallyAfterCelebi, MSGBOX_DEFAULT
# 500 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 501 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 502 "data/maps/MOSSDEEP01/scripts.pory"

# 503 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 504 "data/maps/MOSSDEEP01/scripts.pory"
// SURVIVOR NPC
# 505 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 506 "data/maps/MOSSDEEP01/scripts.pory"

# 507 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Survivor::
# 508 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 509 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 510 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_SurvivorAfterCelebi
# 511 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorTrapped, MSGBOX_DEFAULT
# 512 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 513 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 514 "data/maps/MOSSDEEP01/scripts.pory"

# 515 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SurvivorAfterCelebi::
# 516 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_TEMP_14, MOSSDEEP01_EventScript_SurvivorMoved
# 517 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorAmazed, MSGBOX_DEFAULT
# 518 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 519 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorGoing, MSGBOX_DEFAULT
# 520 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 521 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_SURVIVOR, MOSSDEEP01_Movement_SurvivorGoUp
# 522 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 523 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_TEMP_14
# 524 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 525 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 526 "data/maps/MOSSDEEP01/scripts.pory"

# 527 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SurvivorMoved::
# 528 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_SurvivorHappy, MSGBOX_DEFAULT
# 529 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 530 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 531 "data/maps/MOSSDEEP01/scripts.pory"

# 532 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_SurvivorGoUp:
# 533 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 534 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 535 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 536 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 537 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 538 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 539 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 540 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 541 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 542 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 543 "data/maps/MOSSDEEP01/scripts.pory"

# 544 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 545 "data/maps/MOSSDEEP01/scripts.pory"
// HEALER NPC
# 546 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 547 "data/maps/MOSSDEEP01/scripts.pory"

# 548 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Healer::
# 549 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 550 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 551 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HealerWelcome, MSGBOX_DEFAULT
# 552 "data/maps/MOSSDEEP01/scripts.pory"
	playfanfare MUS_HEAL
# 553 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Healing, MSGBOX_DEFAULT
# 554 "data/maps/MOSSDEEP01/scripts.pory"
	waitfanfare
# 555 "data/maps/MOSSDEEP01/scripts.pory"
	special HealPlayerParty
# 556 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_HealedComplete, MSGBOX_DEFAULT
# 557 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 558 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 559 "data/maps/MOSSDEEP01/scripts.pory"

# 560 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 561 "data/maps/MOSSDEEP01/scripts.pory"
// GRANDMA EVENT WITH STORY //
# 562 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 563 "data/maps/MOSSDEEP01/scripts.pory"

# 564 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Grandma::
# 565 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 566 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 567 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandmaAfterFirstTalk
# 568 "data/maps/MOSSDEEP01/scripts.pory"
	
# 569 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAskStory, MSGBOX_YESNO
# 570 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, YES
# 571 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_TellStory
# 572 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaBeCareful, MSGBOX_DEFAULT
# 573 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
# 574 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 575 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 576 "data/maps/MOSSDEEP01/scripts.pory"

# 577 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_TellStory::
# 578 "data/maps/MOSSDEEP01/scripts.pory"
	fadeoutbgm 0
# 579 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_TO_BLACK
# 580 "data/maps/MOSSDEEP01/scripts.pory"
	
# 581 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AEGISLASH, 10, 3
# 582 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_KYOGRE, CRY_MODE_ENCOUNTER
# 583 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory1, MSGBOX_DEFAULT
# 584 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 585 "data/maps/MOSSDEEP01/scripts.pory"
	
# 586 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ALOMOMOLA, 10, 3
# 587 "data/maps/MOSSDEEP01/scripts.pory"
	playmoncry SPECIES_GROUDON, CRY_MODE_ENCOUNTER
# 588 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory2, MSGBOX_DEFAULT
# 589 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 590 "data/maps/MOSSDEEP01/scripts.pory"

# 591 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AVALUGG, 10, 3
# 592 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SURF
# 593 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_THUNDERBOLT
# 594 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory3, MSGBOX_DEFAULT
# 595 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 596 "data/maps/MOSSDEEP01/scripts.pory"
	
# 597 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AMAURA, 10, 3
# 598 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory4, MSGBOX_DEFAULT
# 599 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 600 "data/maps/MOSSDEEP01/scripts.pory"

# 601 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AROMATISSE, 10, 3
# 602 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory5, MSGBOX_DEFAULT
# 603 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 604 "data/maps/MOSSDEEP01/scripts.pory"

# 605 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARROKUDA, 10, 3
# 606 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory6, MSGBOX_DEFAULT
# 607 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 608 "data/maps/MOSSDEEP01/scripts.pory"

# 609 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AUDINO, 10, 3
# 610 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory7, MSGBOX_DEFAULT
# 611 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 612 "data/maps/MOSSDEEP01/scripts.pory"

# 613 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AURORUS, 10, 3
# 614 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory8, MSGBOX_DEFAULT
# 615 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 616 "data/maps/MOSSDEEP01/scripts.pory"

# 617 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AMOONGUSS, 10, 3
# 618 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory9, MSGBOX_DEFAULT
# 619 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 620 "data/maps/MOSSDEEP01/scripts.pory"
	
# 621 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_APPLIN, 10, 3
# 622 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory10, MSGBOX_DEFAULT
# 623 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 624 "data/maps/MOSSDEEP01/scripts.pory"
	
# 625 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_APPLETUN, 10, 3
# 626 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory11, MSGBOX_DEFAULT
# 627 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 628 "data/maps/MOSSDEEP01/scripts.pory"

# 629 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_AXEW, 10, 3
# 630 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory12, MSGBOX_DEFAULT
# 631 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 632 "data/maps/MOSSDEEP01/scripts.pory"
	
# 633 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARBOLIVA, 10, 3
# 634 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaStory13, MSGBOX_DEFAULT
# 635 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 636 "data/maps/MOSSDEEP01/scripts.pory"

# 637 "data/maps/MOSSDEEP01/scripts.pory"
	showmonpic SPECIES_ARCHEN, 10, 3
# 638 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 639 "data/maps/MOSSDEEP01/scripts.pory"
	hidemonpic
# 640 "data/maps/MOSSDEEP01/scripts.pory"

# 641 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 642 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_GRANDPA_DIALOGUE
# 643 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 644 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 645 "data/maps/MOSSDEEP01/scripts.pory"

# 646 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandmaAfterFirstTalk::
# 647 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaAskAgain, MSGBOX_YESNO
# 648 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, YES
# 649 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_TellStory
# 650 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandmaEncouragement, MSGBOX_DEFAULT
# 651 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 652 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 653 "data/maps/MOSSDEEP01/scripts.pory"

# 654 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Grandpa::
# 655 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 656 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 657 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_GRANDPA_DIALOGUE, MOSSDEEP01_EventScript_GrandpaAfter
# 658 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaFirstTalk, MSGBOX_DEFAULT
# 659 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 660 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 661 "data/maps/MOSSDEEP01/scripts.pory"

# 662 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_GrandpaAfter::
# 663 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_GrandpaAfterTalk, MSGBOX_DEFAULT
# 664 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 665 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 666 "data/maps/MOSSDEEP01/scripts.pory"

# 667 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 668 "data/maps/MOSSDEEP01/scripts.pory"
// RIVAL NPC (GENDER-BASED)
# 669 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 670 "data/maps/MOSSDEEP01/scripts.pory"

# 671 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_SetupRivalNPC::
# 672 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 673 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 674 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_EventScript_ShowFemaleRival
# 675 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
# 676 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
# 677 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 678 "data/maps/MOSSDEEP01/scripts.pory"

# 679 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_ShowFemaleRival::
# 680 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_RIVAL_MALE
# 681 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_RIVAL_FEMALE
# 682 "data/maps/MOSSDEEP01/scripts.pory"
	return
# 683 "data/maps/MOSSDEEP01/scripts.pory"

# 684 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalMale::
# 685 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 686 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 687 "data/maps/MOSSDEEP01/scripts.pory"
	random 4
# 688 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 0
# 689 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case0
# 690 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 1
# 691 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case1
# 692 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 2
# 693 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case2
# 694 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 3
# 695 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalMale_Case3
# 696 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 697 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 698 "data/maps/MOSSDEEP01/scripts.pory"

# 699 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case0::
# 700 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale01, MSGBOX_DEFAULT
# 701 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 702 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 703 "data/maps/MOSSDEEP01/scripts.pory"

# 704 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case1::
# 705 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale02, MSGBOX_DEFAULT
# 706 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 707 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 708 "data/maps/MOSSDEEP01/scripts.pory"

# 709 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case2::
# 710 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale03, MSGBOX_DEFAULT
# 711 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 712 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 713 "data/maps/MOSSDEEP01/scripts.pory"

# 714 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalMale_Case3::
# 715 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalMale04, MSGBOX_DEFAULT
# 716 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 717 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 718 "data/maps/MOSSDEEP01/scripts.pory"

# 719 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_RivalFemale::
# 720 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 721 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 722 "data/maps/MOSSDEEP01/scripts.pory"
	random 4
# 723 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 0
# 724 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case0
# 725 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 1
# 726 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case1
# 727 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 2
# 728 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case2
# 729 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, 3
# 730 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_RivalFemale_Case3
# 731 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 732 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 733 "data/maps/MOSSDEEP01/scripts.pory"

# 734 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case0::
# 735 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale01, MSGBOX_DEFAULT
# 736 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 737 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 738 "data/maps/MOSSDEEP01/scripts.pory"

# 739 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case1::
# 740 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale02, MSGBOX_DEFAULT
# 741 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 742 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 743 "data/maps/MOSSDEEP01/scripts.pory"

# 744 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case2::
# 745 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale03, MSGBOX_DEFAULT
# 746 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 747 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 748 "data/maps/MOSSDEEP01/scripts.pory"

# 749 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_RivalFemale_Case3::
# 750 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_RivalFemale04, MSGBOX_DEFAULT
# 751 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 752 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 753 "data/maps/MOSSDEEP01/scripts.pory"

# 754 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Child01::
# 755 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 756 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 757 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Child01, MSGBOX_DEFAULT
# 758 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 759 "data/maps/MOSSDEEP01/scripts.pory"
	end	
# 760 "data/maps/MOSSDEEP01/scripts.pory"

# 761 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Child02::
# 762 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 763 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 764 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_Child02, MSGBOX_DEFAULT
# 765 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 766 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 767 "data/maps/MOSSDEEP01/scripts.pory"

# 768 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 769 "data/maps/MOSSDEEP01/scripts.pory"
// WAILORD BLOCKER - Simple blocking system
# 770 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 771 "data/maps/MOSSDEEP01/scripts.pory"

# 772 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordBlocker::
# 773 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 774 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 775 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_EventScript_WailordGone
# 776 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_WailordBlocking, MSGBOX_DEFAULT
# 777 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 778 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 779 "data/maps/MOSSDEEP01/scripts.pory"

# 780 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordGone::
# 781 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_PathNowOpen, MSGBOX_DEFAULT
# 782 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 783 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 784 "data/maps/MOSSDEEP01/scripts.pory"

# 785 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordBlocksPath::
# 786 "data/maps/MOSSDEEP01/scripts.pory"
    lockall
# 787 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailordBlocks, MSGBOX_DEFAULT
# 788 "data/maps/MOSSDEEP01/scripts.pory"
    closemessage
# 789 "data/maps/MOSSDEEP01/scripts.pory"
    applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkDown
# 790 "data/maps/MOSSDEEP01/scripts.pory"
    waitmovement 0
# 791 "data/maps/MOSSDEEP01/scripts.pory"
    releaseall
# 792 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 793 "data/maps/MOSSDEEP01/scripts.pory"

# 794 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordPathClear::
# 795 "data/maps/MOSSDEEP01/scripts.pory"
    // Path is clear, do nothing
# 796 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 797 "data/maps/MOSSDEEP01/scripts.pory"

# 798 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wailord::
# 799 "data/maps/MOSSDEEP01/scripts.pory"
    lock
# 800 "data/maps/MOSSDEEP01/scripts.pory"
    faceplayer
# 801 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailordIdle, MSGBOX_DEFAULT
# 802 "data/maps/MOSSDEEP01/scripts.pory"
    release
# 803 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 804 "data/maps/MOSSDEEP01/scripts.pory"

# 805 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Wailmer::
# 806 "data/maps/MOSSDEEP01/scripts.pory"
    lock
# 807 "data/maps/MOSSDEEP01/scripts.pory"
    faceplayer
# 808 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_WailmerIdle, MSGBOX_DEFAULT
# 809 "data/maps/MOSSDEEP01/scripts.pory"
    release
# 810 "data/maps/MOSSDEEP01/scripts.pory"
    end
# 811 "data/maps/MOSSDEEP01/scripts.pory"

# 812 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordJumpOver::
# 813 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 814 "data/maps/MOSSDEEP01/scripts.pory"
	setflag DN_FLAG_SEARCHING
# 815 "data/maps/MOSSDEEP01/scripts.pory"
	setflag DN_FLAG_DETECTOR_MODE
# 816 "data/maps/MOSSDEEP01/scripts.pory"
	
# 817 "data/maps/MOSSDEEP01/scripts.pory"
	// Player faz o pulo no lugar
# 818 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_JumpOverWailordUp
# 819 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 820 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_BIKE_HOP
# 821 "data/maps/MOSSDEEP01/scripts.pory"
	
# 822 "data/maps/MOSSDEEP01/scripts.pory"
	// Player e Celebi atravessam juntos (walk_up)
# 823 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, MOSSDEEP01_Movement_CrossWailordUp
# 824 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_FOLLOWER, MOSSDEEP01_Movement_CrossWailordUp
# 825 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 826 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_BIKE_HOP
# 827 "data/maps/MOSSDEEP01/scripts.pory"
	
# 828 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 829 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 830 "data/maps/MOSSDEEP01/scripts.pory"

# 831 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_JumpOverWailordUp:
# 832 "data/maps/MOSSDEEP01/scripts.pory"
	jump_in_place_up
# 833 "data/maps/MOSSDEEP01/scripts.pory"
	delay_4
# 834 "data/maps/MOSSDEEP01/scripts.pory"
	jump_in_place_up
# 835 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 836 "data/maps/MOSSDEEP01/scripts.pory"

# 837 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CrossWailordUp:
# 838 "data/maps/MOSSDEEP01/scripts.pory"
	walk_up
# 839 "data/maps/MOSSDEEP01/scripts.pory"
	step_end
# 840 "data/maps/MOSSDEEP01/scripts.pory"
	
# 841 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordJumpOverAfter::
# 842 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag DN_FLAG_SEARCHING
# 843 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag DN_FLAG_DETECTOR_MODE
# 844 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 845 "data/maps/MOSSDEEP01/scripts.pory"

# 846 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_WailordJumpOverAfter2::
# 847 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag DN_FLAG_SEARCHING
# 848 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag DN_FLAG_DETECTOR_MODE
# 849 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 850 "data/maps/MOSSDEEP01/scripts.pory"
    faceplayer
# 851 "data/maps/MOSSDEEP01/scripts.pory"
    msgbox MOSSDEEP01_Text_AfterTimeGears, MSGBOX_DEFAULT
# 852 "data/maps/MOSSDEEP01/scripts.pory"
    release
# 853 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 854 "data/maps/MOSSDEEP01/scripts.pory"

# 855 "data/maps/MOSSDEEP01/scripts.pory"

# 856 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 857 "data/maps/MOSSDEEP01/scripts.pory"
// JIRACHI WAKE EVENT - TRIGGER BASED
# 858 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 859 "data/maps/MOSSDEEP01/scripts.pory"

# 860 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_JirachiTrigger::
# 861 "data/maps/MOSSDEEP01/scripts.pory"
	lockall
# 862 "data/maps/MOSSDEEP01/scripts.pory"
	
# 863 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiAlreadyAwake
# 864 "data/maps/MOSSDEEP01/scripts.pory"
	
# 865 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiWaking, MSGBOX_DEFAULT
# 866 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 867 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 868 "data/maps/MOSSDEEP01/scripts.pory"
	
# 869 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 870 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_PSYBEAM
# 871 "data/maps/MOSSDEEP01/scripts.pory"
	delay 10
# 872 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 4
# 873 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 874 "data/maps/MOSSDEEP01/scripts.pory"
	
# 875 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_SOUTH
# 876 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_PSYBEAM
# 877 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 878 "data/maps/MOSSDEEP01/scripts.pory"
	
# 879 "data/maps/MOSSDEEP01/scripts.pory"
	turnobject LOCALID_MOSSDEEP_JIRACHI, DIR_NORTH
# 880 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SWIFT
# 881 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 882 "data/maps/MOSSDEEP01/scripts.pory"
	
# 883 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_JIRACHI_AWAKE
# 884 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiAwoken, MSGBOX_DEFAULT
# 885 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 886 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 887 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 888 "data/maps/MOSSDEEP01/scripts.pory"

# 889 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiAlreadyAwake::
# 890 "data/maps/MOSSDEEP01/scripts.pory"
	releaseall
# 891 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 892 "data/maps/MOSSDEEP01/scripts.pory"

# 893 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_Jirachi::
# 894 "data/maps/MOSSDEEP01/scripts.pory"
	lock
# 895 "data/maps/MOSSDEEP01/scripts.pory"
	faceplayer
# 896 "data/maps/MOSSDEEP01/scripts.pory"
	
# 897 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_JIRACHI_AWAKE, MOSSDEEP01_JirachiSleeping
# 898 "data/maps/MOSSDEEP01/scripts.pory"
	
# 899 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_CELEBI_RESCUED, MOSSDEEP01_JirachiNeedCelebi
# 900 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_1, MOSSDEEP01_JirachiNeedItems
# 901 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_2, MOSSDEEP01_JirachiNeedItems
# 902 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_COLLECTED_ITEM_3, MOSSDEEP01_JirachiNeedItems
# 903 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_QUEST_COMPLETED, MOSSDEEP01_JirachiAlreadyCompleted
# 904 "data/maps/MOSSDEEP01/scripts.pory"
	
# 905 "data/maps/MOSSDEEP01/scripts.pory"
	goto MOSSDEEP01_EventScript_QuestComplete
# 906 "data/maps/MOSSDEEP01/scripts.pory"

# 907 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiNeedCelebi::
# 908 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiNeedCelebi, MSGBOX_DEFAULT
# 909 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 910 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 911 "data/maps/MOSSDEEP01/scripts.pory"

# 912 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiNeedItems::
# 913 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiNeedItems, MSGBOX_DEFAULT
# 914 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 915 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 916 "data/maps/MOSSDEEP01/scripts.pory"

# 917 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiAlreadyCompleted::
# 918 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiCompleted, MSGBOX_DEFAULT
# 919 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 920 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 921 "data/maps/MOSSDEEP01/scripts.pory"

# 922 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_JirachiSleeping::
# 923 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_JirachiStillSleeping, MSGBOX_DEFAULT
# 924 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 925 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 926 "data/maps/MOSSDEEP01/scripts.pory"

# 927 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 928 "data/maps/MOSSDEEP01/scripts.pory"
// QUEST COMPLETION - JIRACHI SENDS PLAYER HOME
# 929 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 930 "data/maps/MOSSDEEP01/scripts.pory"

# 931 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_EventScript_QuestComplete::
# 932 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_ThankYou, MSGBOX_DEFAULT
# 933 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 934 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_MOSSDEEP_QUEST_COMPLETED
# 935 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_CometAppears, MSGBOX_DEFAULT
# 936 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 937 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 8
# 938 "data/maps/MOSSDEEP01/scripts.pory"
	delay 40
# 939 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceUp
# 940 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 941 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_BLACK, 4
# 942 "data/maps/MOSSDEEP01/scripts.pory"
	delay 10
# 943 "data/maps/MOSSDEEP01/scripts.pory"
	clearflag FLAG_HIDE_MOSSDEEP_COMET
# 944 "data/maps/MOSSDEEP01/scripts.pory"
	addobject LOCALID_MILLENNIUM_COMET
# 945 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_SHINY
# 946 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 2
# 947 "data/maps/MOSSDEEP01/scripts.pory"
	delay 8
# 948 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 2
# 949 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 950 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_THUNDERSTORM
# 951 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 952 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SACRED_FIRE
# 953 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 954 "data/maps/MOSSDEEP01/scripts.pory"
	special SpawnCameraObject
# 955 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SWIFT
# 956 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement OBJ_EVENT_ID_CAMERA, MOSSDEEP01_Movement_CameraFollowComet
# 957 "data/maps/MOSSDEEP01/scripts.pory"
	applymovement LOCALID_MILLENNIUM_COMET, MOSSDEEP01_Movement_CometCrossingSky
# 958 "data/maps/MOSSDEEP01/scripts.pory"
	waitmovement 0
# 959 "data/maps/MOSSDEEP01/scripts.pory"
	special RemoveCameraObject
# 960 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 961 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_EXPLOSION
# 962 "data/maps/MOSSDEEP01/scripts.pory"
	delay 15
# 963 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 964 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 965 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_SOLAR_BEAM
# 966 "data/maps/MOSSDEEP01/scripts.pory"
	delay 40
# 967 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 8
# 968 "data/maps/MOSSDEEP01/scripts.pory"
	delay 20
# 969 "data/maps/MOSSDEEP01/scripts.pory"
	removeobject LOCALID_MILLENNIUM_COMET
# 970 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_MOSSDEEP_COMET
# 971 "data/maps/MOSSDEEP01/scripts.pory"
	msgbox MOSSDEEP01_Text_TimeToWakeUp, MSGBOX_DEFAULT
# 972 "data/maps/MOSSDEEP01/scripts.pory"
	closemessage
# 973 "data/maps/MOSSDEEP01/scripts.pory"
	delay 30
# 974 "data/maps/MOSSDEEP01/scripts.pory"
	playse SE_M_TELEPORT
# 975 "data/maps/MOSSDEEP01/scripts.pory"
	fadescreenspeed FADE_TO_BLACK, 12
# 976 "data/maps/MOSSDEEP01/scripts.pory"
	delay 80
# 977 "data/maps/MOSSDEEP01/scripts.pory"
	delay 60
# 978 "data/maps/MOSSDEEP01/scripts.pory"
	
# 979 "data/maps/MOSSDEEP01/scripts.pory"
	// Set flags for Littleroot Town start
# 980 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_VISITED_LITTLEROOT_TOWN
# 981 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_TRUCK
# 982 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_TRUCK
# 983 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SET_WALL_CLOCK
# 984 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_RESCUED_BIRCH
# 985 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MOM_OUTSIDE
# 986 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_SYS_B_DASH
# 987 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_RECEIVED_RUNNING_SHOES
# 988 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_LITTLEROOT_INTRO_STATE, 6
# 989 "data/maps/MOSSDEEP01/scripts.pory"
	setvar VAR_LITTLEROOT_TOWN_STATE, 4
# 990 "data/maps/MOSSDEEP01/scripts.pory"
	
# 991 "data/maps/MOSSDEEP01/scripts.pory"
	checkplayergender
# 992 "data/maps/MOSSDEEP01/scripts.pory"
	compare VAR_RESULT, MALE
# 993 "data/maps/MOSSDEEP01/scripts.pory"
	goto_if_eq MOSSDEEP01_WarpMale
# 994 "data/maps/MOSSDEEP01/scripts.pory"
	
# 995 "data/maps/MOSSDEEP01/scripts.pory"
	// Female player
# 996 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_POKE_BALL
# 997 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 998 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 999 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
# 1000 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 1001 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_MAYS_HOUSE_2F, 7, 4
# 1002 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 1003 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1004 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1005 "data/maps/MOSSDEEP01/scripts.pory"

# 1006 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_WarpMale::
# 1007 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
# 1008 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_MOM
# 1009 "data/maps/MOSSDEEP01/scripts.pory"
	setflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_MOM
# 1010 "data/maps/MOSSDEEP01/scripts.pory"
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_BRENDANS_HOUSE
# 1011 "data/maps/MOSSDEEP01/scripts.pory"
	destroyfollowernpc
# 1012 "data/maps/MOSSDEEP01/scripts.pory"
	warp MAP_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F, 1, 4
# 1013 "data/maps/MOSSDEEP01/scripts.pory"
	waitstate
# 1014 "data/maps/MOSSDEEP01/scripts.pory"
	release
# 1015 "data/maps/MOSSDEEP01/scripts.pory"
	end
# 1016 "data/maps/MOSSDEEP01/scripts.pory"

# 1017 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1018 "data/maps/MOSSDEEP01/scripts.pory"
// MOVEMENT SCRIPTS
# 1019 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1020 "data/maps/MOSSDEEP01/scripts.pory"

# 1021 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CameraFollowComet:
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
	step_end
# 1063 "data/maps/MOSSDEEP01/scripts.pory"

# 1064 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Movement_CometCrossingSky:
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
	step_end
# 1146 "data/maps/MOSSDEEP01/scripts.pory"

# 1147 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1148 "data/maps/MOSSDEEP01/scripts.pory"
// TEXT MESSAGES
# 1149 "data/maps/MOSSDEEP01/scripts.pory"
// ====================================================================
# 1150 "data/maps/MOSSDEEP01/scripts.pory"

# 1151 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_NeedCelebiFirst:
# 1152 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: I sense something…\p"
# 1153 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The Guardian of the Forest,\n"
# 1154 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI, is in danger!\p"
# 1155 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please, help CELEBI first!\n"
# 1156 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I assist you.$"
# 1157 "data/maps/MOSSDEEP01/scripts.pory"

# 1158 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_NeedItems:
# 1159 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: Thank you for saving CELEBI!\p"
# 1160 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Unfortunately, the flow of time is broken.\p"
# 1161 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please find the three TIME GEARS\n"
# 1162 "data/maps/MOSSDEEP01/scripts.pory"
	.string "scattered around this place.\p"
# 1163 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I send you home!$"
# 1164 "data/maps/MOSSDEEP01/scripts.pory"

# 1165 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ThankYou:
# 1166 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You found all the TIME GEARS!\p"
# 1167 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The temporal flow is restoring…\n"
# 1168 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Look! The MILLENNIUM COMET!$"
# 1169 "data/maps/MOSSDEEP01/scripts.pory"

# 1170 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CometAppears:
# 1171 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The sky begins to glow!\p"
# 1172 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A brilliant comet streaks across\n"
# 1173 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the heavens!$"
# 1174 "data/maps/MOSSDEEP01/scripts.pory"

# 1175 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_TimeToWakeUp:
# 1176 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: The timeline is restored!\p"
# 1177 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It's time to wake up from this dream…$"
# 1178 "data/maps/MOSSDEEP01/scripts.pory"

# 1179 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AlreadyHelped:
# 1180 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You already helped restore\n"
# 1181 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the flow of time!\p"
# 1182 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you, time traveler!$"
# 1183 "data/maps/MOSSDEEP01/scripts.pory"

# 1184 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem1:
# 1185 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} found something shining\n"
# 1186 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the grass…$"
# 1187 "data/maps/MOSSDEEP01/scripts.pory"

# 1188 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear1:
# 1189 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1190 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the PAST!$"
# 1191 "data/maps/MOSSDEEP01/scripts.pory"

# 1192 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem2:
# 1193 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} discovered something glowing\n"
# 1194 "data/maps/MOSSDEEP01/scripts.pory"
	.string "among the rocks…$"
# 1195 "data/maps/MOSSDEEP01/scripts.pory"

# 1196 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear2:
# 1197 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1198 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the PRESENT!$"
# 1199 "data/maps/MOSSDEEP01/scripts.pory"

# 1200 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_FoundItem3:
# 1201 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} noticed something sparkling\n"
# 1202 "data/maps/MOSSDEEP01/scripts.pory"
	.string "in the water…$"
# 1203 "data/maps/MOSSDEEP01/scripts.pory"

# 1204 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_ObtainedTimeGear3:
# 1205 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} obtained the TIME GEAR\n"
# 1206 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of the FUTURE!$"
# 1207 "data/maps/MOSSDEEP01/scripts.pory"

# 1208 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AlreadyCollected:
# 1209 "data/maps/MOSSDEEP01/scripts.pory"
	.string "This place seems peaceful now.$"
# 1210 "data/maps/MOSSDEEP01/scripts.pory"

# 1211 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiHelp:
# 1212 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: … … …\p"
# 1213 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The flow of time is broken…\p"
# 1214 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please… find the three TIME GEARS…\n"
# 1215 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Only then can I be freed…$"
# 1216 "data/maps/MOSSDEEP01/scripts.pory"

# 1217 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiPower:
# 1218 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: You found all the TIME GEARS!\p"
# 1219 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Now I can use my power to restore\n"
# 1220 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the temporal flow!$"
# 1221 "data/maps/MOSSDEEP01/scripts.pory"

# 1222 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiCalmed:
# 1223 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild POKÉMON have calmed down!$"
# 1224 "data/maps/MOSSDEEP01/scripts.pory"

# 1225 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiThanks:
# 1226 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CELEBI: Thank you, {PLAYER}!\n"
# 1227 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Together we restored time!$"
# 1228 "data/maps/MOSSDEEP01/scripts.pory"

# 1229 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaAttack:
# 1230 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild MIGHTYENA attacks!$"
# 1231 "data/maps/MOSSDEEP01/scripts.pory"

# 1232 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaBlackedOut:
# 1233 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The wild POKÉMON are too aggressive!\n"
# 1234 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You blacked out!$"
# 1235 "data/maps/MOSSDEEP01/scripts.pory"

# 1236 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_MightyenaFriendly:
# 1237 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The MIGHTYENA looks calm and friendly.\n"
# 1238 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Amazing, they're so peaceful now!\p"
# 1239 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You can even pet them!$"
# 1240 "data/maps/MOSSDEEP01/scripts.pory"

# 1241 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorTrapped:
# 1242 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: Help! These wild POKÉMON\n"
# 1243 "data/maps/MOSSDEEP01/scripts.pory"
	.string "are too aggressive!\p"
# 1244 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I can't escape!$"
# 1245 "data/maps/MOSSDEEP01/scripts.pory"

# 1246 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorAmazed:
# 1247 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: Incredible! The POKÉMON\n"
# 1248 "data/maps/MOSSDEEP01/scripts.pory"
	.string "suddenly calmed down!\p"
# 1249 "data/maps/MOSSDEEP01/scripts.pory"
	.string "What happened?$"
# 1250 "data/maps/MOSSDEEP01/scripts.pory"

# 1251 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorGoing:
# 1252 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I'm going to find a safer\n"
# 1253 "data/maps/MOSSDEEP01/scripts.pory"
	.string "place. Thank you!$"
# 1254 "data/maps/MOSSDEEP01/scripts.pory"

# 1255 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_SurvivorHappy:
# 1256 "data/maps/MOSSDEEP01/scripts.pory"
	.string "SURVIVOR: I feel much safer now.\n"
# 1257 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you for your help!$"
# 1258 "data/maps/MOSSDEEP01/scripts.pory"

# 1259 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HealerWelcome:
# 1260 "data/maps/MOSSDEEP01/scripts.pory"
	.string "HEALER: Let me heal your POKÉMON.$"
# 1261 "data/maps/MOSSDEEP01/scripts.pory"

# 1262 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Healing:
# 1263 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Healing POKÉMON…$"
# 1264 "data/maps/MOSSDEEP01/scripts.pory"

# 1265 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HealedComplete:
# 1266 "data/maps/MOSSDEEP01/scripts.pory"
	.string "HEALER: Your POKÉMON are fully\n"
# 1267 "data/maps/MOSSDEEP01/scripts.pory"
	.string "healed! Good luck!$"
# 1268 "data/maps/MOSSDEEP01/scripts.pory"

# 1269 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaWelcome:
# 1270 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: {PLAYER}! You're awake!\p"
# 1271 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The earthquake was terrible…\n"
# 1272 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Many people are trapped…$"
# 1273 "data/maps/MOSSDEEP01/scripts.pory"

# 1274 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_EarthquakeWarning:
# 1275 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Another tremor!\n"
# 1276 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there!$"
# 1277 "data/maps/MOSSDEEP01/scripts.pory"

# 1278 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaGivesCharm:
# 1279 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Take this SHINY CHARM.\n"
# 1280 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It might bring you luck!$"
# 1281 "data/maps/MOSSDEEP01/scripts.pory"

# 1282 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaCharmExplanation:
# 1283 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: This charm increases your\n"
# 1284 "data/maps/MOSSDEEP01/scripts.pory"
	.string "chances of finding rare POKÉMON.\p"
# 1285 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Use it well!$"
# 1286 "data/maps/MOSSDEEP01/scripts.pory"

# 1287 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_HoennDestroyed:
# 1288 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: The HOENN region…\n"
# 1289 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It's been completely destroyed…\p"
# 1290 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But there are survivors who need\n"
# 1291 "data/maps/MOSSDEEP01/scripts.pory"
	.string "help. Please, {PLAYER}, help them!$"
# 1292 "data/maps/MOSSDEEP01/scripts.pory"

# 1293 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PlayerDecision:
# 1294 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER} decides to help the survivors\n"
# 1295 "data/maps/MOSSDEEP01/scripts.pory"
	.string "and explore the devastated area.$"
# 1296 "data/maps/MOSSDEEP01/scripts.pory"

# 1297 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GoodLuck:
# 1298 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Good luck, {PLAYER}!\n"
# 1299 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be very careful!$"
# 1300 "data/maps/MOSSDEEP01/scripts.pory"

# 1301 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaEncouragement:
# 1302 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You're doing great, {PLAYER}!\n"
# 1303 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Keep helping people!$"
# 1304 "data/maps/MOSSDEEP01/scripts.pory"

# 1305 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaFirstTalk:
# 1306 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: The world has changed…\n"
# 1307 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Everything is so different now…$"
# 1308 "data/maps/MOSSDEEP01/scripts.pory"

# 1309 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandpaAfterTalk:
# 1310 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDPA: Thank you for helping\n"
# 1311 "data/maps/MOSSDEEP01/scripts.pory"
	.string "everyone, {PLAYER}. You're a hero!$"
# 1312 "data/maps/MOSSDEEP01/scripts.pory"

# 1313 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory1:
# 1314 "data/maps/MOSSDEEP01/scripts.pory"
	.string "This was the beginning…$"
# 1315 "data/maps/MOSSDEEP01/scripts.pory"

# 1316 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory2:
# 1317 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Then the conflict started…$"
# 1318 "data/maps/MOSSDEEP01/scripts.pory"

# 1319 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory3:
# 1320 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The great battle between land and\n"
# 1321 "data/maps/MOSSDEEP01/scripts.pory"
	.string "sea…$"
# 1322 "data/maps/MOSSDEEP01/scripts.pory"

# 1323 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory4:
# 1324 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The tsunami devastated everything…$"
# 1325 "data/maps/MOSSDEEP01/scripts.pory"

# 1326 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory5:
# 1327 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Volcanoes erupted across the land…$"
# 1328 "data/maps/MOSSDEEP01/scripts.pory"

# 1329 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory6:
# 1330 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The land became a barren wasteland…$"
# 1331 "data/maps/MOSSDEEP01/scripts.pory"

# 1332 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory7:
# 1333 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The oceans raged with unending\n"
# 1334 "data/maps/MOSSDEEP01/scripts.pory"
	.string "storms…$"
# 1335 "data/maps/MOSSDEEP01/scripts.pory"

# 1336 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory8:
# 1337 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Survivors gathered in camps…$"
# 1338 "data/maps/MOSSDEEP01/scripts.pory"

# 1339 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory9:
# 1340 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Hope began to fade…$"
# 1341 "data/maps/MOSSDEEP01/scripts.pory"

# 1342 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory10:
# 1343 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But then a legend appeared…$"
# 1344 "data/maps/MOSSDEEP01/scripts.pory"

# 1345 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory11:
# 1346 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The sky guardian descended from\n"
# 1347 "data/maps/MOSSDEEP01/scripts.pory"
	.string "above…$"
# 1348 "data/maps/MOSSDEEP01/scripts.pory"

# 1349 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory12:
# 1350 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Peace was restored, but at a cost…$"
# 1351 "data/maps/MOSSDEEP01/scripts.pory"

# 1352 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaStory13:
# 1353 "data/maps/MOSSDEEP01/scripts.pory"
	.string "And this is how our world became what it\n"
# 1354 "data/maps/MOSSDEEP01/scripts.pory"
	.string "is today…$"
# 1355 "data/maps/MOSSDEEP01/scripts.pory"

# 1356 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAskStory:
# 1357 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Hi, {PLAYER}.\p"
# 1358 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Would you like to hear the stories\n"
# 1359 "data/maps/MOSSDEEP01/scripts.pory"
	.string "of how HOENN became what it is now?$"
# 1360 "data/maps/MOSSDEEP01/scripts.pory"

# 1361 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaBeCareful:
# 1362 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I understand.\p"
# 1363 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please be very careful when exploring\n"
# 1364 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the MOSSDEEP ruins.\p"
# 1365 "data/maps/MOSSDEEP01/scripts.pory"
	.string "There are many dangers out there…$"
# 1366 "data/maps/MOSSDEEP01/scripts.pory"

# 1367 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_GrandmaAskAgain:
# 1368 "data/maps/MOSSDEEP01/scripts.pory"
	.string "GRANDMA: Would you like to hear\n"
# 1369 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the stories of HOENN again?$"
# 1370 "data/maps/MOSSDEEP01/scripts.pory"

# 1371 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale01:
# 1372 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: Hey {PLAYER}! I'm helping\n"
# 1373 "data/maps/MOSSDEEP01/scripts.pory"
	.string "the survivors too!\p"
# 1374 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's work together!$"
# 1375 "data/maps/MOSSDEEP01/scripts.pory"

# 1376 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale02:
# 1377 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: These wild POKÉMON are\n"
# 1378 "data/maps/MOSSDEEP01/scripts.pory"
	.string "really aggressive!\p"
# 1379 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there!$"
# 1380 "data/maps/MOSSDEEP01/scripts.pory"

# 1381 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale03:
# 1382 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: I heard there's a special\n"
# 1383 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON that can help us.\p"
# 1384 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's find it!$"
# 1385 "data/maps/MOSSDEEP01/scripts.pory"

# 1386 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalMale04:
# 1387 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: We can do this, {PLAYER}!\n"
# 1388 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Together we'll save everyone!$"
# 1389 "data/maps/MOSSDEEP01/scripts.pory"

# 1390 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale01:
# 1391 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: {PLAYER}! I'm so glad you're safe!\p"
# 1392 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Let's help the survivors together!$"
# 1393 "data/maps/MOSSDEEP01/scripts.pory"

# 1394 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale02:
# 1395 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: The wild POKÉMON are\n"
# 1396 "data/maps/MOSSDEEP01/scripts.pory"
	.string "acting so strange…\p"
# 1397 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Something must be wrong!$"
# 1398 "data/maps/MOSSDEEP01/scripts.pory"

# 1399 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale03:
# 1400 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: I heard about a legendary\n"
# 1401 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON that controls time.\p"
# 1402 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe it can help us!$"
# 1403 "data/maps/MOSSDEEP01/scripts.pory"

# 1404 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_RivalFemale04:
# 1405 "data/maps/MOSSDEEP01/scripts.pory"
	.string "RIVAL: We make a great team,\n"
# 1406 "data/maps/MOSSDEEP01/scripts.pory"
	.string "{PLAYER}! Let's keep going!$"
# 1407 "data/maps/MOSSDEEP01/scripts.pory"

# 1408 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Child01:
# 1409 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CHILD: I'm scared…\n"
# 1410 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Where are my parents?$"
# 1411 "data/maps/MOSSDEEP01/scripts.pory"

# 1412 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_Child02:
# 1413 "data/maps/MOSSDEEP01/scripts.pory"
	.string "CHILD: The ground shook really hard…\n"
# 1414 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Then everything changed…$"
# 1415 "data/maps/MOSSDEEP01/scripts.pory"

# 1416 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordBlocking:
# 1417 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A massive WAILORD blocks the path!\p"
# 1418 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems agitated by the chaos…\n"
# 1419 "data/maps/MOSSDEEP01/scripts.pory"
	.string "You can't get through.$"
# 1420 "data/maps/MOSSDEEP01/scripts.pory"

# 1421 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PathNowOpen:
# 1422 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The WAILORD has calmed down and\n"
# 1423 "data/maps/MOSSDEEP01/scripts.pory"
	.string "moved away. The path is clear!$"
# 1424 "data/maps/MOSSDEEP01/scripts.pory"

# 1425 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiWaking:
# 1426 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A mysterious POKÉMON is sleeping\n"
# 1427 "data/maps/MOSSDEEP01/scripts.pory"
	.string "near the rocks…\p"
# 1428 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It seems to be waking up!$"
# 1429 "data/maps/MOSSDEEP01/scripts.pory"

# 1430 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiAwoken:
# 1431 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI has awoken!$"
# 1432 "data/maps/MOSSDEEP01/scripts.pory"

# 1433 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiNeedCelebi:
# 1434 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: I sense temporal disturbance…\n"
# 1435 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The forest guardian needs help!\p"
# 1436 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please rescue CELEBI first!$"
# 1437 "data/maps/MOSSDEEP01/scripts.pory"

# 1438 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiNeedItems:
# 1439 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: Thank you for saving CELEBI!\n"
# 1440 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But time is still broken…\p"
# 1441 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Please find the three TIME GEARS\n"
# 1442 "data/maps/MOSSDEEP01/scripts.pory"
	.string "to restore temporal flow!$"
# 1443 "data/maps/MOSSDEEP01/scripts.pory"

# 1444 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiCompleted:
# 1445 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI: You restored the timeline!\n"
# 1446 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Thank you, time traveler!$"
# 1447 "data/maps/MOSSDEEP01/scripts.pory"

# 1448 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_JirachiStillSleeping:
# 1449 "data/maps/MOSSDEEP01/scripts.pory"
	.string "JIRACHI is sleeping peacefully…\n"
# 1450 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe you should approach it?$"
# 1451 "data/maps/MOSSDEEP01/scripts.pory"

# 1452 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyIntro:
# 1453 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: Hello, {PLAYER}!\p"
# 1454 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Did you know that in the past people\n"
# 1455 "data/maps/MOSSDEEP01/scripts.pory"
	.string "could train POKÉMON normally?\p"
# 1456 "data/maps/MOSSDEEP01/scripts.pory"
	.string "There were POKÉ BALLS, devices that\n"
# 1457 "data/maps/MOSSDEEP01/scripts.pory"
	.string "captured and stored POKÉMON.\p"
# 1458 "data/maps/MOSSDEEP01/scripts.pory"
	.string "But now… they don't make them anymore.\n"
# 1459 "data/maps/MOSSDEEP01/scripts.pory"
	.string "The technology was lost.\p"
# 1460 "data/maps/MOSSDEEP01/scripts.pory"
	.string "That's why the connection with POKÉMON\n"
# 1461 "data/maps/MOSSDEEP01/scripts.pory"
	.string "has to be made in another way…\p"
# 1462 "data/maps/MOSSDEEP01/scripts.pory"
	.string "A more natural, pure connection, like\n"
# 1463 "data/maps/MOSSDEEP01/scripts.pory"
	.string "what I have with PIDGEOT.\p"
# 1464 "data/maps/MOSSDEEP01/scripts.pory"
	.string "If wild POKÉMON are giving you trouble,\n"
# 1465 "data/maps/MOSSDEEP01/scripts.pory"
	.string "PIDGEOT and I will help.$"
# 1466 "data/maps/MOSSDEEP01/scripts.pory"

# 1467 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyAfterCelebi:
# 1468 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: Wow… What is that Pokemon\n"
# 1469 "data/maps/MOSSDEEP01/scripts.pory"
	.string "following you?\p"
# 1470 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It feels so magical…\n"
# 1471 "data/maps/MOSSDEEP01/scripts.pory"
	.string "I have never seen anything like it.\p"
# 1472 "data/maps/MOSSDEEP01/scripts.pory"
	.string "It reminds me of the old legends\n"
# 1473 "data/maps/MOSSDEEP01/scripts.pory"
	.string "our grandparents used to tell…\p"
# 1474 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Maybe those dreams you had…\n"
# 1475 "data/maps/MOSSDEEP01/scripts.pory"
	.string "they were real after all.$"
# 1476 "data/maps/MOSSDEEP01/scripts.pory"

# 1477 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyWarped:
# 1478 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: I'll head there first!\p"
# 1479 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Meet me ahead, {PLAYER}!$"
# 1480 "data/maps/MOSSDEEP01/scripts.pory"

# 1481 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WallyNotReady:
# 1482 "data/maps/MOSSDEEP01/scripts.pory"
	.string "LUKA: Hello, {PLAYER}!\p"
# 1483 "data/maps/MOSSDEEP01/scripts.pory"
	.string "Be careful out there! The wild\n"
# 1484 "data/maps/MOSSDEEP01/scripts.pory"
	.string "POKÉMON are very aggressive.\p"
# 1485 "data/maps/MOSSDEEP01/scripts.pory"
	.string "If you get into trouble, come\n"
# 1486 "data/maps/MOSSDEEP01/scripts.pory"
	.string "talk to me!$"
# 1487 "data/maps/MOSSDEEP01/scripts.pory"

# 1488 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_PidgeotGreeting:
# 1489 "data/maps/MOSSDEEP01/scripts.pory"
	.string "PIDGEOT: Piiidgeoo!$"
# 1490 "data/maps/MOSSDEEP01/scripts.pory"

# 1491 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordBlocks:
# 1492 "data/maps/MOSSDEEP01/scripts.pory"
    .string "There's only water ahead!\p"
# 1493 "data/maps/MOSSDEEP01/scripts.pory"
    .string "You can't cross without help…$"
# 1494 "data/maps/MOSSDEEP01/scripts.pory"

# 1495 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailordIdle:
# 1496 "data/maps/MOSSDEEP01/scripts.pory"
    .string "WAILORD is calmly floating on the water.$"
# 1497 "data/maps/MOSSDEEP01/scripts.pory"

# 1498 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_WailmerIdle:
# 1499 "data/maps/MOSSDEEP01/scripts.pory"
    .string "The WAILMER are splashing playfully!$"
# 1500 "data/maps/MOSSDEEP01/scripts.pory"

# 1501 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_CelebiCallsWailord:
# 1502 "data/maps/MOSSDEEP01/scripts.pory"
    .string "CELEBI calls out to the ocean!\p"
# 1503 "data/maps/MOSSDEEP01/scripts.pory"
    .string "A massive WAILORD appears and\n"
# 1504 "data/maps/MOSSDEEP01/scripts.pory"
    .string "creates a path across the water!$"
# 1505 "data/maps/MOSSDEEP01/scripts.pory"

# 1506 "data/maps/MOSSDEEP01/scripts.pory"
MOSSDEEP01_Text_AfterTimeGears:
# 1507 "data/maps/MOSSDEEP01/scripts.pory"
    .string "CELEBI: We are close, I can feel it…$"
