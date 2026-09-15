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
	lock
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
	addvar VAR_MOSSDEEP_TEDDIURSA_FOUND_COUNT, 1
# 79 "data/maps/MtPyre_1F/scripts.pory"
	removeobject VAR_LAST_TALKED
# 80 "data/maps/MtPyre_1F/scripts.pory"
	goto_if_ge VAR_MOSSDEEP_TEDDIURSA_FOUND_COUNT, 3, MtPyre_1F_EventScript_Teddiursa_FinalFind
# 81 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_Teddiursa_FoundAgain, MSGBOX_DEFAULT
# 82 "data/maps/MtPyre_1F/scripts.pory"
	release
# 83 "data/maps/MtPyre_1F/scripts.pory"
	end
# 84 "data/maps/MtPyre_1F/scripts.pory"

# 85 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_Teddiursa_FinalFind:
# 86 "data/maps/MtPyre_1F/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_DOLL_FOUND
# 87 "data/maps/MtPyre_1F/scripts.pory"
	createfollowernpc OBJ_EVENT_GFX_SPECIES(TEDDIURSA), FNPC_ALL_LAND, MtPyre_1F_EventScript_Teddiursa_Follower
# 88 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_Teddiursa_Found, MSGBOX_DEFAULT
# 89 "data/maps/MtPyre_1F/scripts.pory"
	release
# 90 "data/maps/MtPyre_1F/scripts.pory"
	end
# 91 "data/maps/MtPyre_1F/scripts.pory"

# 92 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_Teddiursa_Follower::
# 93 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_Teddiursa_Follower, MSGBOX_DEFAULT
# 94 "data/maps/MtPyre_1F/scripts.pory"
	release
# 95 "data/maps/MtPyre_1F/scripts.pory"
	end
# 96 "data/maps/MtPyre_1F/scripts.pory"

# 97 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_Teddiursa_Day::
# 98 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_Teddiursa_Day, MSGBOX_NPC
# 99 "data/maps/MtPyre_1F/scripts.pory"
	release
# 100 "data/maps/MtPyre_1F/scripts.pory"
	end
# 101 "data/maps/MtPyre_1F/scripts.pory"

# 102 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_Teddiursa_NotInterested::
# 103 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_Teddiursa_NotInterested, MSGBOX_NPC
# 104 "data/maps/MtPyre_1F/scripts.pory"
	release
# 105 "data/maps/MtPyre_1F/scripts.pory"
	end
# 106 "data/maps/MtPyre_1F/scripts.pory"

# 107 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_EventScript_Teddiursa_NeedHoney::
# 108 "data/maps/MtPyre_1F/scripts.pory"
	msgbox MtPyre_1F_Text_Teddiursa_NeedHoney, MSGBOX_NPC
# 109 "data/maps/MtPyre_1F/scripts.pory"
	release
# 110 "data/maps/MtPyre_1F/scripts.pory"
	end
# 111 "data/maps/MtPyre_1F/scripts.pory"

# 112 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_Text_TakeThisForYourOwnGood:
# 113 "data/maps/MtPyre_1F/scripts.pory"
	.string "All sorts of beings wander the slopes\n"
# 114 "data/maps/MtPyre_1F/scripts.pory"
	.string "of MT. PYRE…\p"
# 115 "data/maps/MtPyre_1F/scripts.pory"
	.string "There is no telling what may happen.\n"
# 116 "data/maps/MtPyre_1F/scripts.pory"
	.string "Take this. It's for your own good.$"
# 117 "data/maps/MtPyre_1F/scripts.pory"

# 118 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_Text_ExplainCleanseTag:
# 119 "data/maps/MtPyre_1F/scripts.pory"
	.string "Have a POKéMON hold that\n"
# 120 "data/maps/MtPyre_1F/scripts.pory"
	.string "CLEANSE TAG.\p"
# 121 "data/maps/MtPyre_1F/scripts.pory"
	.string "It will help ward off wild POKéMON.$"
# 122 "data/maps/MtPyre_1F/scripts.pory"

# 123 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_Text_ComeToPayRespects:
# 124 "data/maps/MtPyre_1F/scripts.pory"
	.string "Did you come to pay your respect\n"
# 125 "data/maps/MtPyre_1F/scripts.pory"
	.string "to the spirits of departed POKéMON?\p"
# 126 "data/maps/MtPyre_1F/scripts.pory"
	.string "You must care for your POKéMON a lot.$"
# 127 "data/maps/MtPyre_1F/scripts.pory"

# 128 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_Text_RestingPlaceOfZigzagoon:
# 129 "data/maps/MtPyre_1F/scripts.pory"
	.string "This is the final resting place of my\n"
# 130 "data/maps/MtPyre_1F/scripts.pory"
	.string "ZIGZAGOON. I cherished it…$"
# 131 "data/maps/MtPyre_1F/scripts.pory"

# 132 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_Text_Teddiursa_Found:
# 133 "data/maps/MtPyre_1F/scripts.pory"
	.string "The HONEY's scent drifts through the\n"
# 134 "data/maps/MtPyre_1F/scripts.pory"
	.string "still mountain air…\p"
# 135 "data/maps/MtPyre_1F/scripts.pory"
	.string "A small TEDDIURSA steps from the shadows.\n"
# 136 "data/maps/MtPyre_1F/scripts.pory"
	.string "It looks at you, then at the path ahead.\p"
# 137 "data/maps/MtPyre_1F/scripts.pory"
	.string "The little bear follows you.$"
# 138 "data/maps/MtPyre_1F/scripts.pory"

# 139 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_Text_Teddiursa_FoundAgain:
# 140 "data/maps/MtPyre_1F/scripts.pory"
	.string "The HONEY's scent drifts through the\n"
# 141 "data/maps/MtPyre_1F/scripts.pory"
	.string "still mountain air…\p"
# 142 "data/maps/MtPyre_1F/scripts.pory"
	.string "A small TEDDIURSA peeks from the shadows,\n"
# 143 "data/maps/MtPyre_1F/scripts.pory"
	.string "then disappears before you can reach it.\p"
# 144 "data/maps/MtPyre_1F/scripts.pory"
	.string "It seems you'll have to find it again.$"
# 145 "data/maps/MtPyre_1F/scripts.pory"

# 146 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_Text_Teddiursa_Follower:
# 147 "data/maps/MtPyre_1F/scripts.pory"
	.string "TEDDIURSA stays close behind you.\n"
# 148 "data/maps/MtPyre_1F/scripts.pory"
	.string "Its tiny paws make almost no sound.$"
# 149 "data/maps/MtPyre_1F/scripts.pory"

# 150 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_Text_Teddiursa_Day:
# 151 "data/maps/MtPyre_1F/scripts.pory"
	.string "The mountain is quiet in the daylight.\n"
# 152 "data/maps/MtPyre_1F/scripts.pory"
	.string "Whatever you were looking for is hiding.$"
# 153 "data/maps/MtPyre_1F/scripts.pory"

# 154 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_Text_Teddiursa_NotInterested:
# 155 "data/maps/MtPyre_1F/scripts.pory"
	.string "The TEDDIURSA watches you from a distance.\n"
# 156 "data/maps/MtPyre_1F/scripts.pory"
	.string "It doesn't seem ready to come closer.$"
# 157 "data/maps/MtPyre_1F/scripts.pory"

# 158 "data/maps/MtPyre_1F/scripts.pory"
MtPyre_1F_Text_Teddiursa_NeedHoney:
# 159 "data/maps/MtPyre_1F/scripts.pory"
	.string "The TEDDIURSA sniffs the air, then turns\n"
# 160 "data/maps/MtPyre_1F/scripts.pory"
	.string "away. Something sweet might bring it out.$"
