# 1 "data/maps/AURORAGROVE/scripts.pory"

# 2 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_MapScripts::
# 3 "data/maps/AURORAGROVE/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, AURORAGROVE_OnTransition
# 4 "data/maps/AURORAGROVE/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, AURORAGROVE_OnWarp
# 5 "data/maps/AURORAGROVE/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, AURORAGROVE_OnFrame
# 6 "data/maps/AURORAGROVE/scripts.pory"
	.byte 0
# 7 "data/maps/AURORAGROVE/scripts.pory"

# 8 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_OnTransition:
# 9 "data/maps/AURORAGROVE/scripts.pory"
	goto_if_unset FLAG_PETALBURG_QUAKE_PART1_CLEARED, AURORAGROVE_EventScript_HidePortal
# 10 "data/maps/AURORAGROVE/scripts.pory"
	clearflag FLAG_HIDE_AURORA_GROVE_PORTAL
# 11 "data/maps/AURORAGROVE/scripts.pory"
	return
# 12 "data/maps/AURORAGROVE/scripts.pory"

# 13 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_EventScript_HidePortal::
# 14 "data/maps/AURORAGROVE/scripts.pory"
	setflag FLAG_HIDE_AURORA_GROVE_PORTAL
# 15 "data/maps/AURORAGROVE/scripts.pory"
	return
# 16 "data/maps/AURORAGROVE/scripts.pory"

# 17 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_OnWarp:
# 18 "data/maps/AURORAGROVE/scripts.pory"
	map_script_2 VAR_TEMP_1, 0, AURORAGROVE_EventScript_FaceUpAtPortal
# 19 "data/maps/AURORAGROVE/scripts.pory"
	.2byte 0
# 20 "data/maps/AURORAGROVE/scripts.pory"

# 21 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_OnFrame:
# 22 "data/maps/AURORAGROVE/scripts.pory"
	map_script_2 VAR_TEMP_0, 1, AURORAGROVE_EventScript_PetalburgPart15Intro
# 23 "data/maps/AURORAGROVE/scripts.pory"
	.2byte 0
# 24 "data/maps/AURORAGROVE/scripts.pory"

# 25 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_EventScript_FaceUpAtPortal::
# 26 "data/maps/AURORAGROVE/scripts.pory"
	setvar VAR_TEMP_1, 1
# 27 "data/maps/AURORAGROVE/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 28 "data/maps/AURORAGROVE/scripts.pory"
	goto_if_ne VAR_TEMP_2, 14, AURORAGROVE_EventScript_EndFaceUpAtPortal
# 29 "data/maps/AURORAGROVE/scripts.pory"
	goto_if_ne VAR_TEMP_3, 24, AURORAGROVE_EventScript_EndFaceUpAtPortal
# 30 "data/maps/AURORAGROVE/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_NORTH
# 31 "data/maps/AURORAGROVE/scripts.pory"
	goto_if_unset FLAG_PETALBURG_QUAKE_PART1_CLEARED, AURORAGROVE_EventScript_EndFaceUpAtPortal
# 32 "data/maps/AURORAGROVE/scripts.pory"
	goto_if_set FLAG_PETALBURG_QUAKE_PART15_CLEARED, AURORAGROVE_EventScript_EndFaceUpAtPortal
# 33 "data/maps/AURORAGROVE/scripts.pory"
	setvar VAR_TEMP_0, 1
# 34 "data/maps/AURORAGROVE/scripts.pory"
	end
# 35 "data/maps/AURORAGROVE/scripts.pory"

# 36 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_EventScript_EndFaceUpAtPortal::
# 37 "data/maps/AURORAGROVE/scripts.pory"
	end
# 38 "data/maps/AURORAGROVE/scripts.pory"

# 39 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_MapScripts_MagicCrystal::
# 40 "data/maps/AURORAGROVE/scripts.pory"
	goto_if_unset FLAG_PETALBURG_QUAKE_PART1_CLEARED, AURORAGROVE_EventScript_InactivePortal
# 41 "data/maps/AURORAGROVE/scripts.pory"
	lock
# 42 "data/maps/AURORAGROVE/scripts.pory"
	faceplayer
# 43 "data/maps/AURORAGROVE/scripts.pory"
	msgbox AURORAGROVE_Text_MagicCrystal, MSGBOX_YESNO
# 44 "data/maps/AURORAGROVE/scripts.pory"
	goto_if_eq VAR_RESULT, NO, AURORAGROVE_EventScript_LeavePortal
# 45 "data/maps/AURORAGROVE/scripts.pory"
	release
# 46 "data/maps/AURORAGROVE/scripts.pory"
	warpteleport MAP_PHOENIXCAVE, 1
# 47 "data/maps/AURORAGROVE/scripts.pory"
	waitstate
# 48 "data/maps/AURORAGROVE/scripts.pory"
	end
# 49 "data/maps/AURORAGROVE/scripts.pory"

# 50 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_EventScript_LeavePortal::
# 51 "data/maps/AURORAGROVE/scripts.pory"
	release
# 52 "data/maps/AURORAGROVE/scripts.pory"
	end
# 53 "data/maps/AURORAGROVE/scripts.pory"

# 54 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_EventScript_InactivePortal::
# 55 "data/maps/AURORAGROVE/scripts.pory"
	end
# 56 "data/maps/AURORAGROVE/scripts.pory"

# 57 "data/maps/AURORAGROVE/scripts.pory"

# 58 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_EventScript_Aurora::
# 59 "data/maps/AURORAGROVE/scripts.pory"
	lock
# 60 "data/maps/AURORAGROVE/scripts.pory"
	faceplayer
# 61 "data/maps/AURORAGROVE/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 62 "data/maps/AURORAGROVE/scripts.pory"
	msgbox AURORAGROVE_Text_AuroraAfterLesson, MSGBOX_DEFAULT
# 63 "data/maps/AURORAGROVE/scripts.pory"
	removefieldmugshot
# 64 "data/maps/AURORAGROVE/scripts.pory"
	release
# 65 "data/maps/AURORAGROVE/scripts.pory"
	end
# 66 "data/maps/AURORAGROVE/scripts.pory"

# 67 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_EventScript_PetalburgPart15Intro::
# 68 "data/maps/AURORAGROVE/scripts.pory"
	lockall
# 69 "data/maps/AURORAGROVE/scripts.pory"
	setvar VAR_TEMP_0, 0
# 70 "data/maps/AURORAGROVE/scripts.pory"
	applymovement LOCALID_PLAYER, AURORAGROVE_Movement_PlayerToAuroraHouse
# 71 "data/maps/AURORAGROVE/scripts.pory"
	waitmovement 0
# 72 "data/maps/AURORAGROVE/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 73 "data/maps/AURORAGROVE/scripts.pory"
	msgbox AURORAGROVE_Text_AuroraWelcome, MSGBOX_DEFAULT
# 74 "data/maps/AURORAGROVE/scripts.pory"
	removefieldmugshot
# 75 "data/maps/AURORAGROVE/scripts.pory"
	closemessage
# 76 "data/maps/AURORAGROVE/scripts.pory"
	applymovement LOCALID_AURORA_GROVE_AURORA, AURORAGROVE_Movement_AuroraLeadFirstSteps
# 77 "data/maps/AURORAGROVE/scripts.pory"
	waitmovement 0
# 78 "data/maps/AURORAGROVE/scripts.pory"
	applymovement LOCALID_AURORA_GROVE_AURORA, AURORAGROVE_Movement_AuroraLeadToRift
# 79 "data/maps/AURORAGROVE/scripts.pory"
	applymovement LOCALID_PLAYER, AURORAGROVE_Movement_PlayerFollowAuroraToRift
# 80 "data/maps/AURORAGROVE/scripts.pory"
	waitmovement 0
# 81 "data/maps/AURORAGROVE/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 82 "data/maps/AURORAGROVE/scripts.pory"
	msgbox AURORAGROVE_Text_AuroraBrokenWorld, MSGBOX_DEFAULT
# 83 "data/maps/AURORAGROVE/scripts.pory"
	removefieldmugshot
# 84 "data/maps/AURORAGROVE/scripts.pory"
	closemessage
# 85 "data/maps/AURORAGROVE/scripts.pory"
	applymovement LOCALID_AURORA_GROVE_AURORA, Common_Movement_FaceLeft
# 86 "data/maps/AURORAGROVE/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceRight
# 87 "data/maps/AURORAGROVE/scripts.pory"
	waitmovement 0
# 88 "data/maps/AURORAGROVE/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 89 "data/maps/AURORAGROVE/scripts.pory"
	msgbox AURORAGROVE_Text_AuroraImbueKnowledge, MSGBOX_DEFAULT
# 90 "data/maps/AURORAGROVE/scripts.pory"
	removefieldmugshot
# 91 "data/maps/AURORAGROVE/scripts.pory"
	closemessage
# 92 "data/maps/AURORAGROVE/scripts.pory"
	fadescreenspeed FADE_TO_WHITE, 4
# 93 "data/maps/AURORAGROVE/scripts.pory"
	delay 20
# 94 "data/maps/AURORAGROVE/scripts.pory"
	delay 40
# 95 "data/maps/AURORAGROVE/scripts.pory"
	fadescreenspeed FADE_FROM_WHITE, 4
# 96 "data/maps/AURORAGROVE/scripts.pory"
	delay 20
# 97 "data/maps/AURORAGROVE/scripts.pory"
	createfieldmugshot MUGSHOT_AURORA, EMOTE_NORMAL
# 98 "data/maps/AURORAGROVE/scripts.pory"
	msgbox AURORAGROVE_Text_AuroraMemoryWarning, MSGBOX_DEFAULT
# 99 "data/maps/AURORAGROVE/scripts.pory"
	msgbox AURORAGROVE_Text_AuroraGoNow, MSGBOX_DEFAULT
# 100 "data/maps/AURORAGROVE/scripts.pory"
	removefieldmugshot
# 101 "data/maps/AURORAGROVE/scripts.pory"
	closemessage
# 102 "data/maps/AURORAGROVE/scripts.pory"
	applymovement LOCALID_AURORA_GROVE_AURORA, AURORAGROVE_Movement_AuroraExitSouth
# 103 "data/maps/AURORAGROVE/scripts.pory"
	waitmovement 0
# 104 "data/maps/AURORAGROVE/scripts.pory"
	setobjectxy LOCALID_AURORA_GROVE_AURORA, 14, 18
# 105 "data/maps/AURORAGROVE/scripts.pory"
	turnobject LOCALID_AURORA_GROVE_AURORA, DIR_SOUTH
# 106 "data/maps/AURORAGROVE/scripts.pory"
	setflag FLAG_PETALBURG_QUAKE_PART15_CLEARED
# 107 "data/maps/AURORAGROVE/scripts.pory"
	releaseall
# 108 "data/maps/AURORAGROVE/scripts.pory"
	end
# 109 "data/maps/AURORAGROVE/scripts.pory"

# 110 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_Movement_PlayerToAuroraHouse:
# 111 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 112 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 113 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 114 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 115 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 116 "data/maps/AURORAGROVE/scripts.pory"
	face_up
# 117 "data/maps/AURORAGROVE/scripts.pory"
	step_end
# 118 "data/maps/AURORAGROVE/scripts.pory"

# 119 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_Movement_AuroraLeadFirstSteps:
# 120 "data/maps/AURORAGROVE/scripts.pory"
	walk_right
# 121 "data/maps/AURORAGROVE/scripts.pory"
	walk_down
# 122 "data/maps/AURORAGROVE/scripts.pory"
	walk_right
# 123 "data/maps/AURORAGROVE/scripts.pory"
	step_end
# 124 "data/maps/AURORAGROVE/scripts.pory"

# 125 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_Movement_AuroraLeadToRift:
# 126 "data/maps/AURORAGROVE/scripts.pory"
	walk_right
# 127 "data/maps/AURORAGROVE/scripts.pory"
	walk_right
# 128 "data/maps/AURORAGROVE/scripts.pory"
	walk_right
# 129 "data/maps/AURORAGROVE/scripts.pory"
	walk_right
# 130 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 131 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 132 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 133 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 134 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 135 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 136 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 137 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 138 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 139 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 140 "data/maps/AURORAGROVE/scripts.pory"
	face_up
# 141 "data/maps/AURORAGROVE/scripts.pory"
	step_end
# 142 "data/maps/AURORAGROVE/scripts.pory"

# 143 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_Movement_PlayerFollowAuroraToRift:
# 144 "data/maps/AURORAGROVE/scripts.pory"
	walk_right
# 145 "data/maps/AURORAGROVE/scripts.pory"
	walk_right
# 146 "data/maps/AURORAGROVE/scripts.pory"
	walk_right
# 147 "data/maps/AURORAGROVE/scripts.pory"
	walk_right
# 148 "data/maps/AURORAGROVE/scripts.pory"
	walk_right
# 149 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 150 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 151 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 152 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 153 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 154 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 155 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 156 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 157 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 158 "data/maps/AURORAGROVE/scripts.pory"
	walk_up
# 159 "data/maps/AURORAGROVE/scripts.pory"
	face_up
# 160 "data/maps/AURORAGROVE/scripts.pory"
	step_end
# 161 "data/maps/AURORAGROVE/scripts.pory"

# 162 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_Movement_AuroraExitSouth:
# 163 "data/maps/AURORAGROVE/scripts.pory"
	walk_down
# 164 "data/maps/AURORAGROVE/scripts.pory"
	walk_down
# 165 "data/maps/AURORAGROVE/scripts.pory"
	walk_down
# 166 "data/maps/AURORAGROVE/scripts.pory"
	walk_down
# 167 "data/maps/AURORAGROVE/scripts.pory"
	walk_down
# 168 "data/maps/AURORAGROVE/scripts.pory"
	walk_down
# 169 "data/maps/AURORAGROVE/scripts.pory"
	walk_down
# 170 "data/maps/AURORAGROVE/scripts.pory"
	walk_down
# 171 "data/maps/AURORAGROVE/scripts.pory"
	walk_down
# 172 "data/maps/AURORAGROVE/scripts.pory"
	walk_down
# 173 "data/maps/AURORAGROVE/scripts.pory"
	walk_down
# 174 "data/maps/AURORAGROVE/scripts.pory"
	walk_down
# 175 "data/maps/AURORAGROVE/scripts.pory"
	walk_down
# 176 "data/maps/AURORAGROVE/scripts.pory"
	walk_down
# 177 "data/maps/AURORAGROVE/scripts.pory"
	walk_down
# 178 "data/maps/AURORAGROVE/scripts.pory"
	step_end
# 179 "data/maps/AURORAGROVE/scripts.pory"

# 180 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_Text_MagicCrystal:
# 181 "data/maps/AURORAGROVE/scripts.pory"
	.string "The portal pulses with a mysterious\n"
# 182 "data/maps/AURORAGROVE/scripts.pory"
	.string "energy.\p"
# 183 "data/maps/AURORAGROVE/scripts.pory"
	.string "Reach your hand in?$"
# 184 "data/maps/AURORAGROVE/scripts.pory"

# 185 "data/maps/AURORAGROVE/scripts.pory"

# 186 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_Text_AuroraAfterLesson:
# 187 "data/maps/AURORAGROVE/scripts.pory"
	.string "AURORA: Use what I have shown you\n"
# 188 "data/maps/AURORAGROVE/scripts.pory"
	.string "to heal the rift.$"
# 189 "data/maps/AURORAGROVE/scripts.pory"

# 190 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_Text_AuroraWelcome:
# 191 "data/maps/AURORAGROVE/scripts.pory"
	.string "AURORA: Welcome. This is a space\n"
# 192 "data/maps/AURORAGROVE/scripts.pory"
	.string "that exists between dreams and\l"
# 193 "data/maps/AURORAGROVE/scripts.pory"
	.string "reality.\p"
# 194 "data/maps/AURORAGROVE/scripts.pory"
	.string "The fact that you were able to\n"
# 195 "data/maps/AURORAGROVE/scripts.pory"
	.string "enter proves that you have the\l"
# 196 "data/maps/AURORAGROVE/scripts.pory"
	.string "ability to heal the timeline.\p"
# 197 "data/maps/AURORAGROVE/scripts.pory"
	.string "Come with me.$"
# 198 "data/maps/AURORAGROVE/scripts.pory"

# 199 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_Text_AuroraBrokenWorld:
# 200 "data/maps/AURORAGROVE/scripts.pory"
	.string "AURORA: This world has been broken\n"
# 201 "data/maps/AURORAGROVE/scripts.pory"
	.string "before.\p"
# 202 "data/maps/AURORAGROVE/scripts.pory"
	.string "These two POKEMON combined their\n"
# 203 "data/maps/AURORAGROVE/scripts.pory"
	.string "power to restore it, but they are\l"
# 204 "data/maps/AURORAGROVE/scripts.pory"
	.string "not all-powerful.\p"
# 205 "data/maps/AURORAGROVE/scripts.pory"
	.string "This fragile timeline is hanging\n"
# 206 "data/maps/AURORAGROVE/scripts.pory"
	.string "on by a thread and ripping open\l"
# 207 "data/maps/AURORAGROVE/scripts.pory"
	.string "at the seams.$"
# 208 "data/maps/AURORAGROVE/scripts.pory"

# 209 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_Text_AuroraImbueKnowledge:
# 210 "data/maps/AURORAGROVE/scripts.pory"
	.string "AURORA: I will imbue you with the\n"
# 211 "data/maps/AURORAGROVE/scripts.pory"
	.string "knowledge to borrow these two\l"
# 212 "data/maps/AURORAGROVE/scripts.pory"
	.string "POKEMON's power and use it to\l"
# 213 "data/maps/AURORAGROVE/scripts.pory"
	.string "open a portal to the nightmare\l"
# 214 "data/maps/AURORAGROVE/scripts.pory"
	.string "leaking through.\p"
# 215 "data/maps/AURORAGROVE/scripts.pory"
	.string "There, you can find a way to\n"
# 216 "data/maps/AURORAGROVE/scripts.pory"
	.string "purify it and sever the\l"
# 217 "data/maps/AURORAGROVE/scripts.pory"
	.string "connection.$"
# 218 "data/maps/AURORAGROVE/scripts.pory"

# 219 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_Text_AuroraMemoryWarning:
# 220 "data/maps/AURORAGROVE/scripts.pory"
	.string "AURORA: Be warned, once you heal\n"
# 221 "data/maps/AURORAGROVE/scripts.pory"
	.string "the timeline, it will be as if\l"
# 222 "data/maps/AURORAGROVE/scripts.pory"
	.string "nothing ever happened.\p"
# 223 "data/maps/AURORAGROVE/scripts.pory"
	.string "Those without the gift will\n"
# 224 "data/maps/AURORAGROVE/scripts.pory"
	.string "remember nothing.$"
# 225 "data/maps/AURORAGROVE/scripts.pory"

# 226 "data/maps/AURORAGROVE/scripts.pory"
AURORAGROVE_Text_AuroraGoNow:
# 227 "data/maps/AURORAGROVE/scripts.pory"
	.string "AURORA: Go now. Use this power to\n"
# 228 "data/maps/AURORAGROVE/scripts.pory"
	.string "heal the rift, but know that\l"
# 229 "data/maps/AURORAGROVE/scripts.pory"
	.string "there will be more.\p"
# 230 "data/maps/AURORAGROVE/scripts.pory"
	.string "Good luck.$"
