# 1 "data/maps/MtPyre_1F/scripts.pory"

# 2 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_MapScripts::
# 3 "data/maps/MtPyre_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MtPyre_1F_OnTransition
# 4 "data/maps/MtPyre_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, MtPyre_1F_OnWarpIntoMap
# 5 "data/maps/MtPyre_1F/scripts.pory"
	.byte 0
# 6 "data/maps/MtPyre_1F/scripts.pory"

# 7 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_OnTransition::
# 8 "data/maps/MtPyre_1F/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 9 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MtPyre_1F_OnTransition_End
# 10 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MtPyre_1F_OnTransition_End
# 11 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_DOLL_FOUND, MtPyre_1F_OnTransition_End
# 12 "data/maps/MtPyre_1F/scripts.pory"
	gettimeofday
# 13 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_ne VAR_0x8000, TIME_NIGHT, MtPyre_1F_OnTransition_End
# 14 "data/maps/MtPyre_1F/scripts.pory"
	random 5
# 15 "data/maps/MtPyre_1F/scripts.pory"
	copyvar VAR_MOSSDEEP_TEDDIURSA_FLOOR, VAR_RESULT
# 16 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_eq VAR_MOSSDEEP_TEDDIURSA_FLOOR, 0, MtPyre_1F_ShowTeddiursa
# 17 "data/maps/MtPyre_1F/scripts.pory"
	goto MtPyre_1F_OnTransition_End
# 18 "data/maps/MtPyre_1F/scripts.pory"

# 19 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_ShowTeddiursa:
# 20 "data/maps/MtPyre_1F/scripts.pory"
	clearflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 21 "data/maps/MtPyre_1F/scripts.pory"

# 22 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_OnTransition_End:
# 23 "data/maps/MtPyre_1F/scripts.pory"
	end
# 24 "data/maps/MtPyre_1F/scripts.pory"

# 25 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_OnWarpIntoMap:
# 26 "data/maps/MtPyre_1F/scripts.pory"
	map_script_2 VAR_TEMP_0, VAR_TEMP_0, MtPyre_1F_EventScript_UpdateTeddiursaVisibility
# 27 "data/maps/MtPyre_1F/scripts.pory"
	.2byte 0
# 28 "data/maps/MtPyre_1F/scripts.pory"

# 29 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_UpdateTeddiursaVisibility:
# 30 "data/maps/MtPyre_1F/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 31 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MtPyre_1F_HideTeddiursa
# 32 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MtPyre_1F_HideTeddiursa
# 33 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_DOLL_FOUND, MtPyre_1F_HideTeddiursa
# 34 "data/maps/MtPyre_1F/scripts.pory"
	gettimeofday
# 35 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_ne VAR_0x8000, TIME_NIGHT, MtPyre_1F_HideTeddiursa
# 36 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_ne VAR_MOSSDEEP_TEDDIURSA_FLOOR, 0, MtPyre_1F_HideTeddiursa
# 37 "data/maps/MtPyre_1F/scripts.pory"
	clearflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 38 "data/maps/MtPyre_1F/scripts.pory"
	end
# 39 "data/maps/MtPyre_1F/scripts.pory"

# 40 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_HideTeddiursa:
# 41 "data/maps/MtPyre_1F/scripts.pory"
	removeobject LOCALID_MT_PYRE_1F_TEDDIURSA
# 42 "data/maps/MtPyre_1F/scripts.pory"
	end
# 43 "data/maps/MtPyre_1F/scripts.pory"

# 44 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_CleanseTagWoman::
# 45 "data/maps/MtPyre_1F/scripts.pory"
	lock
# 46 "data/maps/MtPyre_1F/scripts.pory"
	faceplayer
# 47 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_set FLAG_RECEIVED_CLEANSE_TAG, MtPyre_1F_EventScript_ReceivedCleanseTag
# 48 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_TakeThisForYourOwnGood, MSGBOX_DEFAULT
# 49 "data/maps/MtPyre_1F/scripts.pory"
	giveitem ITEM_CLEANSE_TAG
# 50 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 51 "data/maps/MtPyre_1F/scripts.pory"
	setflag FLAG_RECEIVED_CLEANSE_TAG
# 52 "data/maps/MtPyre_1F/scripts.pory"
	release
# 53 "data/maps/MtPyre_1F/scripts.pory"
	end
# 54 "data/maps/MtPyre_1F/scripts.pory"

# 55 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_ReceivedCleanseTag::
# 56 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_ExplainCleanseTag, MSGBOX_DEFAULT
# 57 "data/maps/MtPyre_1F/scripts.pory"
	release
# 58 "data/maps/MtPyre_1F/scripts.pory"
	end
# 59 "data/maps/MtPyre_1F/scripts.pory"

# 60 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_PokefanF::
# 61 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_ComeToPayRespects, MSGBOX_NPC
# 62 "data/maps/MtPyre_1F/scripts.pory"
	end
# 63 "data/maps/MtPyre_1F/scripts.pory"

# 64 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_Man::
# 65 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_RestingPlaceOfZigzagoon, MSGBOX_NPC
# 66 "data/maps/MtPyre_1F/scripts.pory"
	end
# 67 "data/maps/MtPyre_1F/scripts.pory"

# 68 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_TeddiursaHideNSeek::
# 69 "data/maps/MtPyre_1F/scripts.pory"
	lockall
# 70 "data/maps/MtPyre_1F/scripts.pory"
	faceplayer
# 71 "data/maps/MtPyre_1F/scripts.pory"
	gettimeofday
# 72 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_ne VAR_0x8000, TIME_NIGHT, MtPyre_1F_EventScript_Teddiursa_Day
# 73 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MtPyre_1F_EventScript_Teddiursa_NotInterested
# 74 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MtPyre_1F_EventScript_Teddiursa_NotInterested
# 75 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_DOLL_FOUND, MtPyre_1F_EventScript_Teddiursa_Follower
# 76 "data/maps/MtPyre_1F/scripts.pory"
	checkitem ITEM_HONEY
# 77 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MtPyre_1F_EventScript_Teddiursa_NeedHoney
# 78 "data/maps/MtPyre_1F/scripts.pory"
	checkfollowernpc
# 79 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MtPyre_1F_EventScript_Teddiursa_BringAlone
# 80 "data/maps/MtPyre_1F/scripts.pory"
	playse SE_M_TELEPORT
# 81 "data/maps/MtPyre_1F/scripts.pory"
	addvar VAR_MOSSDEEP_TEDDIURSA_FOUND_COUNT, 1
# 82 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_ge VAR_MOSSDEEP_TEDDIURSA_FOUND_COUNT, 3, MtPyre_1F_EventScript_Teddiursa_FinalFind
# 83 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_Teddiursa_FoundAgain, MSGBOX_DEFAULT
# 84 "data/maps/MtPyre_1F/scripts.pory"
	closemessage
# 85 "data/maps/MtPyre_1F/scripts.pory"
	playse SE_M_TELEPORT
# 86 "data/maps/MtPyre_1F/scripts.pory"
	applymovement VAR_LAST_TALKED, MrButtons_Movement_Disappear
# 87 "data/maps/MtPyre_1F/scripts.pory"
	waitmovement 0
# 88 "data/maps/MtPyre_1F/scripts.pory"
	removeobject VAR_LAST_TALKED
# 89 "data/maps/MtPyre_1F/scripts.pory"
	releaseall
# 90 "data/maps/MtPyre_1F/scripts.pory"
	end
# 91 "data/maps/MtPyre_1F/scripts.pory"

# 92 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_Teddiursa_FinalFind:
# 93 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_Teddiursa_Found, MSGBOX_DEFAULT
# 94 "data/maps/MtPyre_1F/scripts.pory"
	closemessage
# 95 "data/maps/MtPyre_1F/scripts.pory"
	getobjectcurrentxy OBJ_EVENT_ID_PLAYER, CURRENT_POSITION, VAR_0x8005, VAR_0x8006
# 96 "data/maps/MtPyre_1F/scripts.pory"
	copyvar VAR_0x8004, VAR_LAST_TALKED
# 97 "data/maps/MtPyre_1F/scripts.pory"
	call MrButtons_EventScript_WalkToTarget
# 98 "data/maps/MtPyre_1F/scripts.pory"
	playse SE_M_TELEPORT
# 99 "data/maps/MtPyre_1F/scripts.pory"
	applymovement VAR_LAST_TALKED, MrButtons_Movement_Disappear
# 100 "data/maps/MtPyre_1F/scripts.pory"
	waitmovement 0
# 101 "data/maps/MtPyre_1F/scripts.pory"
	removeobject VAR_LAST_TALKED
# 102 "data/maps/MtPyre_1F/scripts.pory"
	createfollowernpc OBJ_EVENT_GFX_SPECIES(TEDDIURSA), FNPC_ALL_LAND | FNPC_SURF | FNPC_HIDE_WHILE_SURFING, MtPyre_1F_EventScript_Teddiursa_Follower
# 103 "data/maps/MtPyre_1F/scripts.pory"
	checkfollowernpc
# 104 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MtPyre_1F_EventScript_Teddiursa_Retry
# 105 "data/maps/MtPyre_1F/scripts.pory"
	setvar VAR_MOSSDEEP_TEDDIURSA_FOUND_COUNT, 3
# 106 "data/maps/MtPyre_1F/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_DOLL_FOUND
# 107 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_Teddiursa_ComingHome, MSGBOX_DEFAULT
# 108 "data/maps/MtPyre_1F/scripts.pory"
	releaseall
# 109 "data/maps/MtPyre_1F/scripts.pory"
	end
# 110 "data/maps/MtPyre_1F/scripts.pory"

# 111 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_Teddiursa_Retry:
# 112 "data/maps/MtPyre_1F/scripts.pory"
	setvar VAR_MOSSDEEP_TEDDIURSA_FOUND_COUNT, 2
# 113 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_Teddiursa_BringAlone, MSGBOX_DEFAULT
# 114 "data/maps/MtPyre_1F/scripts.pory"
	releaseall
# 115 "data/maps/MtPyre_1F/scripts.pory"
	end
# 116 "data/maps/MtPyre_1F/scripts.pory"

# 117 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_Teddiursa_Follower::
# 118 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_Teddiursa_Follower, MSGBOX_DEFAULT
# 119 "data/maps/MtPyre_1F/scripts.pory"
	releaseall
# 120 "data/maps/MtPyre_1F/scripts.pory"
	end
# 121 "data/maps/MtPyre_1F/scripts.pory"

# 122 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_Teddiursa_Day::
# 123 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_Teddiursa_Day, MSGBOX_NPC
# 124 "data/maps/MtPyre_1F/scripts.pory"
	releaseall
# 125 "data/maps/MtPyre_1F/scripts.pory"
	end
# 126 "data/maps/MtPyre_1F/scripts.pory"

# 127 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_Teddiursa_NotInterested::
# 128 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_Teddiursa_NotInterested, MSGBOX_NPC
# 129 "data/maps/MtPyre_1F/scripts.pory"
	releaseall
# 130 "data/maps/MtPyre_1F/scripts.pory"
	end
# 131 "data/maps/MtPyre_1F/scripts.pory"

# 132 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_Teddiursa_NeedHoney::
# 133 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_Teddiursa_NeedHoney, MSGBOX_NPC
# 134 "data/maps/MtPyre_1F/scripts.pory"
	releaseall
# 135 "data/maps/MtPyre_1F/scripts.pory"
	end
# 136 "data/maps/MtPyre_1F/scripts.pory"

# 137 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_Teddiursa_BringAlone:
# 138 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_Teddiursa_BringAlone, MSGBOX_DEFAULT
# 139 "data/maps/MtPyre_1F/scripts.pory"
	releaseall
# 140 "data/maps/MtPyre_1F/scripts.pory"
	end
# 141 "data/maps/MtPyre_1F/scripts.pory"

# 142 "data/maps/MtPyre_1F/scripts.pory"
@ Shared by the last find and the reunion. Scripted ghost steps can cross walls.
# 143 "data/maps/MtPyre_1F/scripts.pory"
@ 8004 = actor local ID; 8005/8006 = target map coordinates.
# 144 "data/maps/MtPyre_1F/scripts.pory"
MrButtons_EventScript_WalkToTarget::
# 145 "data/maps/MtPyre_1F/scripts.pory"
	getobjectcurrentxy VAR_0x8004, CURRENT_POSITION, VAR_0x8007, VAR_0x8008
# 146 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_lt VAR_0x8007, VAR_0x8005, MrButtons_WalkRight
# 147 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_gt VAR_0x8007, VAR_0x8005, MrButtons_WalkLeft
# 148 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_lt VAR_0x8008, VAR_0x8006, MrButtons_WalkDown
# 149 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_gt VAR_0x8008, VAR_0x8006, MrButtons_WalkUp
# 150 "data/maps/MtPyre_1F/scripts.pory"
	return
# 151 "data/maps/MtPyre_1F/scripts.pory"
MrButtons_WalkRight:
# 152 "data/maps/MtPyre_1F/scripts.pory"
	applymovement VAR_0x8004, MrButtons_Movement_WalkRight
# 153 "data/maps/MtPyre_1F/scripts.pory"
	waitmovement 0
# 154 "data/maps/MtPyre_1F/scripts.pory"
	goto MrButtons_EventScript_WalkToTarget
# 155 "data/maps/MtPyre_1F/scripts.pory"
MrButtons_WalkLeft:
# 156 "data/maps/MtPyre_1F/scripts.pory"
	applymovement VAR_0x8004, MrButtons_Movement_WalkLeft
# 157 "data/maps/MtPyre_1F/scripts.pory"
	waitmovement 0
# 158 "data/maps/MtPyre_1F/scripts.pory"
	goto MrButtons_EventScript_WalkToTarget
# 159 "data/maps/MtPyre_1F/scripts.pory"
MrButtons_WalkDown:
# 160 "data/maps/MtPyre_1F/scripts.pory"
	applymovement VAR_0x8004, MrButtons_Movement_WalkDown
# 161 "data/maps/MtPyre_1F/scripts.pory"
	waitmovement 0
# 162 "data/maps/MtPyre_1F/scripts.pory"
	goto MrButtons_EventScript_WalkToTarget
# 163 "data/maps/MtPyre_1F/scripts.pory"
MrButtons_WalkUp:
# 164 "data/maps/MtPyre_1F/scripts.pory"
	applymovement VAR_0x8004, MrButtons_Movement_WalkUp
# 165 "data/maps/MtPyre_1F/scripts.pory"
	waitmovement 0
# 166 "data/maps/MtPyre_1F/scripts.pory"
	goto MrButtons_EventScript_WalkToTarget
# 167 "data/maps/MtPyre_1F/scripts.pory"
MrButtons_Movement_WalkRight:
# 168 "data/maps/MtPyre_1F/scripts.pory"
	walk_right
# 169 "data/maps/MtPyre_1F/scripts.pory"
	step_end
# 170 "data/maps/MtPyre_1F/scripts.pory"
MrButtons_Movement_WalkLeft:
# 171 "data/maps/MtPyre_1F/scripts.pory"
	walk_left
# 172 "data/maps/MtPyre_1F/scripts.pory"
	step_end
# 173 "data/maps/MtPyre_1F/scripts.pory"
MrButtons_Movement_WalkDown:
# 174 "data/maps/MtPyre_1F/scripts.pory"
	walk_down
# 175 "data/maps/MtPyre_1F/scripts.pory"
	step_end
# 176 "data/maps/MtPyre_1F/scripts.pory"
MrButtons_Movement_WalkUp:
# 177 "data/maps/MtPyre_1F/scripts.pory"
	walk_up
# 178 "data/maps/MtPyre_1F/scripts.pory"
	step_end
# 179 "data/maps/MtPyre_1F/scripts.pory"
MrButtons_Movement_Disappear::
# 180 "data/maps/MtPyre_1F/scripts.pory"
	set_invisible
# 181 "data/maps/MtPyre_1F/scripts.pory"
	step_end
# 182 "data/maps/MtPyre_1F/scripts.pory"

# 183 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_Text_TakeThisForYourOwnGood:
# 184 "data/maps/MtPyre_1F/scripts.pory"
	.string "All sorts of beings wander the slopes\n"
# 185 "data/maps/MtPyre_1F/scripts.pory"
	.string "of MT. PYRE…\p"
# 186 "data/maps/MtPyre_1F/scripts.pory"
	.string "There is no telling what may happen.\n"
# 187 "data/maps/MtPyre_1F/scripts.pory"
	.string "Take this. It's for your own good.$"
# 188 "data/maps/MtPyre_1F/scripts.pory"

# 189 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_Text_ExplainCleanseTag:
# 190 "data/maps/MtPyre_1F/scripts.pory"
	.string "Have a POKéMON hold that\n"
# 191 "data/maps/MtPyre_1F/scripts.pory"
	.string "CLEANSE TAG.\p"
# 192 "data/maps/MtPyre_1F/scripts.pory"
	.string "It will help ward off wild POKéMON.$"
# 193 "data/maps/MtPyre_1F/scripts.pory"

# 194 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_Text_ComeToPayRespects:
# 195 "data/maps/MtPyre_1F/scripts.pory"
	.string "Did you come to pay your respect\n"
# 196 "data/maps/MtPyre_1F/scripts.pory"
	.string "to the spirits of departed POKéMON?\p"
# 197 "data/maps/MtPyre_1F/scripts.pory"
	.string "You must care for your POKéMON a lot.$"
# 198 "data/maps/MtPyre_1F/scripts.pory"

# 199 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_Text_RestingPlaceOfZigzagoon:
# 200 "data/maps/MtPyre_1F/scripts.pory"
	.string "This is the final resting place of my\n"
# 201 "data/maps/MtPyre_1F/scripts.pory"
	.string "ZIGZAGOON. I cherished it…$"

MtPyre_1F_Text_Teddiursa_Found::
# 205 "data/maps/MtPyre_1F/scripts.pory"
	.string "There he is again… A little bear, sewn\n"
	.string "with crooked stitches and love.\p"
	.string "This time, he doesn't turn away.\p"
	.string "He reaches for you with one small paw.\n"
	.string "Perhaps he's tired of hiding.$"

MtPyre_1F_Text_Teddiursa_ComingHome::
# 208 "data/maps/MtPyre_1F/scripts.pory"
	.string "Mr. Buttons stays close behind you. His\n"
	.string "little paws make no sound at all.\p"
	.string "It's time to take him home to Esther.$"

MtPyre_1F_Text_Teddiursa_FoundAgain::
# 211 "data/maps/MtPyre_1F/scripts.pory"
	.string "The scent of HONEY hangs in the cool\n"
	.string "air…\p"
	.string "A little patched bear peeks out at you.\n"
	.string "For a moment, you can see the wall\l"
	.string "through him.\p"
	.string "Then he gives a shy little wave…\p"
	.string "Is he asking you to play\n"
	.string "hide-and-seek?$"

MtPyre_1F_Text_Teddiursa_Follower::
# 214 "data/maps/MtPyre_1F/scripts.pory"
	.string "Mr. Buttons tilts his head. He seems to\n"
	.string "be listening for a familiar voice.\p"
	.string "His little paw brushes yours, light as a\n"
	.string "whisper.$"

MtPyre_1F_Text_Teddiursa_Day::
# 217 "data/maps/MtPyre_1F/scripts.pory"
	.string "The mountain is quiet in the daylight.\p"
	.string "Perhaps a little friend is waiting for\n"
	.string "nightfall.$"

MtPyre_1F_Text_Teddiursa_NotInterested::
# 220 "data/maps/MtPyre_1F/scripts.pory"
	.string "The little bear watches you from a\n"
	.string "distance.\p"
	.string "He doesn't seem ready to come closer.$"

MtPyre_1F_Text_Teddiursa_NeedHoney::
# 223 "data/maps/MtPyre_1F/scripts.pory"
	.string "The little bear sniffs the air, then\n"
	.string "looks away.\p"
	.string "Something sweet might earn his trust.$"

MtPyre_1F_Text_Teddiursa_BringAlone::
# 226 "data/maps/MtPyre_1F/scripts.pory"
	.string "The little bear hangs back, shy of your\n"
	.string "traveling companion.\p"
	.string "Perhaps you should bring them home\n"
	.string "before asking him to follow.$"
