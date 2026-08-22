# 1 "data/maps/VictoryRoad_1F/scripts.pory"

# 2 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_MapScripts::
# 3 "data/maps/VictoryRoad_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, VictoryRoad_1F_OnTransition
# 4 "data/maps/VictoryRoad_1F/scripts.pory"
	.byte 0
# 5 "data/maps/VictoryRoad_1F/scripts.pory"

# 6 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_OnTransition:
# 7 "data/maps/VictoryRoad_1F/scripts.pory"
	call_if_eq VAR_VICTORY_ROAD_1F_STATE, 1, VictoryRoad_1F_EventScript_SetEntranceWallyPos1
# 8 "data/maps/VictoryRoad_1F/scripts.pory"
	call_if_eq VAR_VICTORY_ROAD_1F_STATE, 2, VictoryRoad_1F_EventScript_SetEntranceWallyPos2
# 9 "data/maps/VictoryRoad_1F/scripts.pory"
	end
# 10 "data/maps/VictoryRoad_1F/scripts.pory"

# 11 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_EventScript_SetEntranceWallyPos1::
# 12 "data/maps/VictoryRoad_1F/scripts.pory"
	setobjectxyperm LOCALID_VICTORY_ROAD_ENTRANCE_WALLY, 2, 24
# 13 "data/maps/VictoryRoad_1F/scripts.pory"
	setobjectmovementtype LOCALID_VICTORY_ROAD_ENTRANCE_WALLY, MOVEMENT_TYPE_FACE_DOWN
# 14 "data/maps/VictoryRoad_1F/scripts.pory"
	return
# 15 "data/maps/VictoryRoad_1F/scripts.pory"

# 16 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_EventScript_SetEntranceWallyPos2::
# 17 "data/maps/VictoryRoad_1F/scripts.pory"
	setobjectxyperm LOCALID_VICTORY_ROAD_ENTRANCE_WALLY, 3, 24
# 18 "data/maps/VictoryRoad_1F/scripts.pory"
	setobjectmovementtype LOCALID_VICTORY_ROAD_ENTRANCE_WALLY, MOVEMENT_TYPE_FACE_DOWN
# 19 "data/maps/VictoryRoad_1F/scripts.pory"
	return
# 20 "data/maps/VictoryRoad_1F/scripts.pory"

# 21 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_EventScript_WallyBattleTrigger1::
# 22 "data/maps/VictoryRoad_1F/scripts.pory"
	lockall
# 23 "data/maps/VictoryRoad_1F/scripts.pory"
	setvar VAR_0x8008, 1
# 24 "data/maps/VictoryRoad_1F/scripts.pory"
	addobject LOCALID_VICTORY_ROAD_ENTRANCE_WALLY
# 25 "data/maps/VictoryRoad_1F/scripts.pory"
	applymovement LOCALID_VICTORY_ROAD_ENTRANCE_WALLY, VictoryRoad_1F_Movement_WallyApproachPlayer1
# 26 "data/maps/VictoryRoad_1F/scripts.pory"
	waitmovement 0
# 27 "data/maps/VictoryRoad_1F/scripts.pory"
	goto VictoryRoad_1F_EventScript_WallyEntranceBattle
# 28 "data/maps/VictoryRoad_1F/scripts.pory"
	end
# 29 "data/maps/VictoryRoad_1F/scripts.pory"

# 30 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_EventScript_WallyBattleTrigger2::
# 31 "data/maps/VictoryRoad_1F/scripts.pory"
	lockall
# 32 "data/maps/VictoryRoad_1F/scripts.pory"
	setvar VAR_0x8008, 2
# 33 "data/maps/VictoryRoad_1F/scripts.pory"
	addobject LOCALID_VICTORY_ROAD_ENTRANCE_WALLY
# 34 "data/maps/VictoryRoad_1F/scripts.pory"
	applymovement LOCALID_VICTORY_ROAD_ENTRANCE_WALLY, VictoryRoad_1F_Movement_WallyApproachPlayer2
# 35 "data/maps/VictoryRoad_1F/scripts.pory"
	waitmovement 0
# 36 "data/maps/VictoryRoad_1F/scripts.pory"
	goto VictoryRoad_1F_EventScript_WallyEntranceBattle
# 37 "data/maps/VictoryRoad_1F/scripts.pory"
	end
# 38 "data/maps/VictoryRoad_1F/scripts.pory"

# 39 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_EventScript_WallyEntranceBattle::
# 40 "data/maps/VictoryRoad_1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 41 "data/maps/VictoryRoad_1F/scripts.pory"
	waitmovement 0
# 42 "data/maps/VictoryRoad_1F/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 43 "data/maps/VictoryRoad_1F/scripts.pory"
	msgbox VictoryRoad_1F_Text_WallyNotGoingToLoseAnymore, MSGBOX_DEFAULT
# 44 "data/maps/VictoryRoad_1F/scripts.pory"
	removefieldmugshot
# 45 "data/maps/VictoryRoad_1F/scripts.pory"
	trainerbattle_no_intro TRAINER_WALLY_VR_1, VictoryRoad_1F_Text_WallyEntranceDefeat
# 46 "data/maps/VictoryRoad_1F/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 47 "data/maps/VictoryRoad_1F/scripts.pory"
	msgbox VictoryRoad_1F_Text_WallyPostEntranceBattle, MSGBOX_DEFAULT
# 48 "data/maps/VictoryRoad_1F/scripts.pory"
	removefieldmugshot
# 49 "data/maps/VictoryRoad_1F/scripts.pory"
	clearflag FLAG_HIDE_VICTORY_ROAD_ENTRANCE_WALLY
# 50 "data/maps/VictoryRoad_1F/scripts.pory"
	copyobjectxytoperm LOCALID_VICTORY_ROAD_ENTRANCE_WALLY
# 51 "data/maps/VictoryRoad_1F/scripts.pory"
	setflag FLAG_DEFEATED_WALLY_VICTORY_ROAD
# 52 "data/maps/VictoryRoad_1F/scripts.pory"
	copyvar VAR_VICTORY_ROAD_1F_STATE, VAR_0x8008
# 53 "data/maps/VictoryRoad_1F/scripts.pory"
	releaseall
# 54 "data/maps/VictoryRoad_1F/scripts.pory"
	end
# 55 "data/maps/VictoryRoad_1F/scripts.pory"

# 56 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Movement_WallyApproachPlayer1:
# 57 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 58 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 59 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 60 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 61 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 62 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 63 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 64 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 65 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 66 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 67 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_up
# 68 "data/maps/VictoryRoad_1F/scripts.pory"
	step_end
# 69 "data/maps/VictoryRoad_1F/scripts.pory"

# 70 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Movement_WallyApproachPlayer2:
# 71 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 72 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 73 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 74 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 75 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 76 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 77 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 78 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 79 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_left
# 80 "data/maps/VictoryRoad_1F/scripts.pory"
	walk_up
# 81 "data/maps/VictoryRoad_1F/scripts.pory"
	step_end
# 82 "data/maps/VictoryRoad_1F/scripts.pory"

# 83 "data/maps/VictoryRoad_1F/scripts.pory"
@ This Wally appears near the entrance once his battle is triggered and remains there until the Hall of Fame is entered
# 84 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_EventScript_EntranceWally::
# 85 "data/maps/VictoryRoad_1F/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 86 "data/maps/VictoryRoad_1F/scripts.pory"
	msgbox VictoryRoad_1F_Text_WallyPostEntranceBattle, MSGBOX_NPC
# 87 "data/maps/VictoryRoad_1F/scripts.pory"
	removefieldmugshot
# 88 "data/maps/VictoryRoad_1F/scripts.pory"
	end
# 89 "data/maps/VictoryRoad_1F/scripts.pory"

# 90 "data/maps/VictoryRoad_1F/scripts.pory"
@ This Wally appears and remains at the exit after the Hall of Fame is entered
# 91 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_EventScript_ExitWally::
# 92 "data/maps/VictoryRoad_1F/scripts.pory"
	trainerbattle_single TRAINER_WALLY_VR_2, VictoryRoad_1F_Text_WallyIntro, VictoryRoad_1F_Text_WallyDefeat
# 93 "data/maps/VictoryRoad_1F/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 94 "data/maps/VictoryRoad_1F/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, VictoryRoad_1F_EventScript_RematchWally
# 95 "data/maps/VictoryRoad_1F/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 96 "data/maps/VictoryRoad_1F/scripts.pory"
	msgbox VictoryRoad_1F_Text_WallyPostBattle, MSGBOX_AUTOCLOSE
# 97 "data/maps/VictoryRoad_1F/scripts.pory"
	removefieldmugshot
# 98 "data/maps/VictoryRoad_1F/scripts.pory"
	end
# 99 "data/maps/VictoryRoad_1F/scripts.pory"

# 100 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_EventScript_RematchWally::
# 101 "data/maps/VictoryRoad_1F/scripts.pory"
	trainerbattle_rematch TRAINER_WALLY_VR_2, VictoryRoad_1F_Text_WallyIntro, VictoryRoad_1F_Text_WallyDefeat
# 102 "data/maps/VictoryRoad_1F/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 103 "data/maps/VictoryRoad_1F/scripts.pory"
	msgbox VictoryRoad_1F_Text_WallyPostBattle, MSGBOX_AUTOCLOSE
# 104 "data/maps/VictoryRoad_1F/scripts.pory"
	removefieldmugshot
# 105 "data/maps/VictoryRoad_1F/scripts.pory"
	end
# 106 "data/maps/VictoryRoad_1F/scripts.pory"

# 107 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_EventScript_Edgar::
# 108 "data/maps/VictoryRoad_1F/scripts.pory"
	trainerbattle_single TRAINER_EDGAR, VictoryRoad_1F_Text_EdgarIntro, VictoryRoad_1F_Text_EdgarDefeat
# 109 "data/maps/VictoryRoad_1F/scripts.pory"
	msgbox VictoryRoad_1F_Text_EdgarPostBattle, MSGBOX_AUTOCLOSE
# 110 "data/maps/VictoryRoad_1F/scripts.pory"
	end
# 111 "data/maps/VictoryRoad_1F/scripts.pory"

# 112 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_EventScript_Albert::
# 113 "data/maps/VictoryRoad_1F/scripts.pory"
	trainerbattle_single TRAINER_ALBERT, VictoryRoad_1F_Text_AlbertIntro, VictoryRoad_1F_Text_AlbertDefeat
# 114 "data/maps/VictoryRoad_1F/scripts.pory"
	msgbox VictoryRoad_1F_Text_AlbertPostBattle, MSGBOX_AUTOCLOSE
# 115 "data/maps/VictoryRoad_1F/scripts.pory"
	end
# 116 "data/maps/VictoryRoad_1F/scripts.pory"

# 117 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_EventScript_Hope::
# 118 "data/maps/VictoryRoad_1F/scripts.pory"
	trainerbattle_single TRAINER_HOPE, VictoryRoad_1F_Text_HopeIntro, VictoryRoad_1F_Text_HopeDefeat
# 119 "data/maps/VictoryRoad_1F/scripts.pory"
	msgbox VictoryRoad_1F_Text_HopePostBattle, MSGBOX_AUTOCLOSE
# 120 "data/maps/VictoryRoad_1F/scripts.pory"
	end
# 121 "data/maps/VictoryRoad_1F/scripts.pory"

# 122 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_EventScript_Quincy::
# 123 "data/maps/VictoryRoad_1F/scripts.pory"
	trainerbattle_single TRAINER_QUINCY, VictoryRoad_1F_Text_QuincyIntro, VictoryRoad_1F_Text_QuincyDefeat
# 124 "data/maps/VictoryRoad_1F/scripts.pory"
	msgbox VictoryRoad_1F_Text_QuincyPostBattle, MSGBOX_AUTOCLOSE
# 125 "data/maps/VictoryRoad_1F/scripts.pory"
	end
# 126 "data/maps/VictoryRoad_1F/scripts.pory"

# 127 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_EventScript_Katelynn::
# 128 "data/maps/VictoryRoad_1F/scripts.pory"
	trainerbattle_single TRAINER_KATELYNN, VictoryRoad_1F_Text_KatelynnIntro, VictoryRoad_1F_Text_KatelynnDefeat
# 129 "data/maps/VictoryRoad_1F/scripts.pory"
	msgbox VictoryRoad_1F_Text_KatelynnPostBattle, MSGBOX_AUTOCLOSE
# 130 "data/maps/VictoryRoad_1F/scripts.pory"
	end
# 131 "data/maps/VictoryRoad_1F/scripts.pory"

# 132 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_WallyNotGoingToLoseAnymore:
# 133 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "LUKA: Hi! {PLAYER}!\p"
# 134 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "I bet you're surprised to see me here!\p"
# 135 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "I made it all the way here, and it's\n"
# 136 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "all thanks to you!\p"
# 137 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "{PLAYER}, losing to you that time\n"
# 138 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "made me stronger!\p"
# 139 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "But I'm not going to lose anymore!\p"
# 140 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "I'm going to win! For the POKéMON who\n"
# 141 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "gave me courage and strength!\p"
# 142 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "Okay… Here I come!$"
# 143 "data/maps/VictoryRoad_1F/scripts.pory"

# 144 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_WallyEntranceDefeat:
# 145 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "Wow!\n"
# 146 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "{PLAYER}, you are strong, after all!$"
# 147 "data/maps/VictoryRoad_1F/scripts.pory"

# 148 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_WallyPostEntranceBattle:
# 149 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "LUKA: I couldn't beat you today,\n"
# 150 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "{PLAYER}, but one of these days, I'll\l"
# 151 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "catch up to you!$"
# 152 "data/maps/VictoryRoad_1F/scripts.pory"

# 153 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_WallyIntro:
# 154 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "LUKA: Hi! {PLAYER}!\p"
# 155 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "I've gotten stronger since that last\n"
# 156 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "time! I wanted to show you, {PLAYER}!\p"
# 157 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "Okay… Here I come!$"
# 158 "data/maps/VictoryRoad_1F/scripts.pory"

# 159 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_WallyDefeat:
# 160 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "Wow!\n"
# 161 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "{PLAYER}, you are strong, after all!$"
# 162 "data/maps/VictoryRoad_1F/scripts.pory"

# 163 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_WallyPostBattle:
# 164 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "LUKA: I couldn't beat you this time,\n"
# 165 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "too… But one of these days, {PLAYER},\l"
# 166 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "I'm going to catch up to you…\p"
# 167 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "And challenge the POKéMON LEAGUE!$"
# 168 "data/maps/VictoryRoad_1F/scripts.pory"

# 169 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_EdgarIntro:
# 170 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "I've made it this far a couple times,\n"
# 171 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "but the last stretch is so long…$"
# 172 "data/maps/VictoryRoad_1F/scripts.pory"

# 173 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_EdgarDefeat:
# 174 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "My dream ends here again…$"
# 175 "data/maps/VictoryRoad_1F/scripts.pory"

# 176 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_EdgarPostBattle:
# 177 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "You've made it this far. Keep the\n"
# 178 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "momentum going and become the\l"
# 179 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "CHAMPION! If anyone can, it's you!$"
# 180 "data/maps/VictoryRoad_1F/scripts.pory"

# 181 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_AlbertIntro:
# 182 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "I didn't come all this way to lose now.\n"
# 183 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "That possibility doesn't exist!$"
# 184 "data/maps/VictoryRoad_1F/scripts.pory"

# 185 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_AlbertDefeat:
# 186 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "Impossible…\n"
# 187 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "I lost?$"
# 188 "data/maps/VictoryRoad_1F/scripts.pory"

# 189 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_AlbertPostBattle:
# 190 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "I lost here…\p"
# 191 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "That means I lack the qualifications\n"
# 192 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "to become the CHAMPION…$"
# 193 "data/maps/VictoryRoad_1F/scripts.pory"

# 194 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_HopeIntro:
# 195 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "This seemingly infinite and harsh road\n"
# 196 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "lives up to its name of VICTORY.$"
# 197 "data/maps/VictoryRoad_1F/scripts.pory"

# 198 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_HopeDefeat:
# 199 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "Your battle style is fantastic…$"
# 200 "data/maps/VictoryRoad_1F/scripts.pory"

# 201 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_HopePostBattle:
# 202 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "You seem to have the potential for\n"
# 203 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "becoming the CHAMPION.$"
# 204 "data/maps/VictoryRoad_1F/scripts.pory"

# 205 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_QuincyIntro:
# 206 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "What is the VICTORY ROAD?\n"
# 207 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "I'll tell you if you win!$"
# 208 "data/maps/VictoryRoad_1F/scripts.pory"

# 209 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_QuincyDefeat:
# 210 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "Okay!\n"
# 211 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "Well done!$"
# 212 "data/maps/VictoryRoad_1F/scripts.pory"

# 213 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_QuincyPostBattle:
# 214 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "Getting through here safely--that's\n"
# 215 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "the final test for any TRAINER aiming\l"
# 216 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "to become the POKéMON CHAMPION.\p"
# 217 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "That's why it's called the VICTORY\n"
# 218 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "ROAD.$"
# 219 "data/maps/VictoryRoad_1F/scripts.pory"

# 220 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_KatelynnIntro:
# 221 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "I have nothing to say to anyone\n"
# 222 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "that's come this far. Come on!$"
# 223 "data/maps/VictoryRoad_1F/scripts.pory"

# 224 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_KatelynnDefeat:
# 225 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "This is a disgrace…$"
# 226 "data/maps/VictoryRoad_1F/scripts.pory"

# 227 "data/maps/VictoryRoad_1F/scripts.pory"
VictoryRoad_1F_Text_KatelynnPostBattle:
# 228 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "Humph, go right on ahead.\n"
# 229 "data/maps/VictoryRoad_1F/scripts.pory"
	.string "See if I care.$"
