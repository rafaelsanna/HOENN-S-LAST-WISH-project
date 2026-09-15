# 1 "data/maps/MtPyre_2F/scripts.pory"

# 2 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_MapScripts::
# 3 "data/maps/MtPyre_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, CaveHole_CheckFallDownHole
# 4 "data/maps/MtPyre_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MtPyre_2F_OnTransition
# 5 "data/maps/MtPyre_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_RESUME, MtPyre_2F_SetHoleWarp
# 6 "data/maps/MtPyre_2F/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, MtPyre_2F_OnWarpIntoMap
# 7 "data/maps/MtPyre_2F/scripts.pory"
	.byte 0
# 8 "data/maps/MtPyre_2F/scripts.pory"

# 9 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_OnTransition::
# 10 "data/maps/MtPyre_2F/scripts.pory"
	copyvar VAR_ICE_STEP_COUNT, 1
# 11 "data/maps/MtPyre_2F/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 12 "data/maps/MtPyre_2F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MtPyre_2F_OnTransition_End
# 13 "data/maps/MtPyre_2F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MtPyre_2F_OnTransition_End
# 14 "data/maps/MtPyre_2F/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_DOLL_FOUND, MtPyre_2F_OnTransition_End
# 15 "data/maps/MtPyre_2F/scripts.pory"
	gettimeofday
# 16 "data/maps/MtPyre_2F/scripts.pory"
	goto_if_ne VAR_0x8000, TIME_NIGHT, MtPyre_2F_OnTransition_End
# 17 "data/maps/MtPyre_2F/scripts.pory"
	random 5
# 18 "data/maps/MtPyre_2F/scripts.pory"
	copyvar VAR_MOSSDEEP_TEDDIURSA_FLOOR, VAR_RESULT
# 19 "data/maps/MtPyre_2F/scripts.pory"
	goto_if_eq VAR_MOSSDEEP_TEDDIURSA_FLOOR, 1, MtPyre_2F_ShowTeddiursa
# 20 "data/maps/MtPyre_2F/scripts.pory"
	goto MtPyre_2F_OnTransition_End
# 21 "data/maps/MtPyre_2F/scripts.pory"

# 22 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_ShowTeddiursa:
# 23 "data/maps/MtPyre_2F/scripts.pory"
	clearflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 24 "data/maps/MtPyre_2F/scripts.pory"

# 25 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_OnTransition_End:
# 26 "data/maps/MtPyre_2F/scripts.pory"
	end
# 27 "data/maps/MtPyre_2F/scripts.pory"

# 28 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_SetHoleWarp:
# 29 "data/maps/MtPyre_2F/scripts.pory"
	setstepcallback STEP_CB_CRACKED_FLOOR
# 30 "data/maps/MtPyre_2F/scripts.pory"
	setholewarp MAP_MT_PYRE_1F
# 31 "data/maps/MtPyre_2F/scripts.pory"
	end
# 32 "data/maps/MtPyre_2F/scripts.pory"

# 33 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_OnWarpIntoMap:
# 34 "data/maps/MtPyre_2F/scripts.pory"
	map_script_2 VAR_TEMP_0, VAR_TEMP_0, MtPyre_2F_EventScript_UpdateTeddiursaVisibility
# 35 "data/maps/MtPyre_2F/scripts.pory"
	.2byte 0
# 36 "data/maps/MtPyre_2F/scripts.pory"

# 37 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_EventScript_UpdateTeddiursaVisibility:
# 38 "data/maps/MtPyre_2F/scripts.pory"
	setflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 39 "data/maps/MtPyre_2F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_QUEST_STARTED, MtPyre_2F_HideTeddiursa
# 40 "data/maps/MtPyre_2F/scripts.pory"
	goto_if_unset FLAG_MOSSDEEP_TEDDIURSA_HONEY_GIVEN, MtPyre_2F_HideTeddiursa
# 41 "data/maps/MtPyre_2F/scripts.pory"
	goto_if_set FLAG_MOSSDEEP_TEDDIURSA_DOLL_FOUND, MtPyre_2F_HideTeddiursa
# 42 "data/maps/MtPyre_2F/scripts.pory"
	gettimeofday
# 43 "data/maps/MtPyre_2F/scripts.pory"
	goto_if_ne VAR_0x8000, TIME_NIGHT, MtPyre_2F_HideTeddiursa
# 44 "data/maps/MtPyre_2F/scripts.pory"
	goto_if_ne VAR_MOSSDEEP_TEDDIURSA_FLOOR, 1, MtPyre_2F_HideTeddiursa
# 45 "data/maps/MtPyre_2F/scripts.pory"
	clearflag FLAG_MOSSDEEP_TEDDIURSA_OBJECT_HIDDEN
# 46 "data/maps/MtPyre_2F/scripts.pory"
	end
# 47 "data/maps/MtPyre_2F/scripts.pory"

# 48 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_HideTeddiursa:
# 49 "data/maps/MtPyre_2F/scripts.pory"
	removeobject LOCALID_MT_PYRE_2F_TEDDIURSA
# 50 "data/maps/MtPyre_2F/scripts.pory"
	end
# 51 "data/maps/MtPyre_2F/scripts.pory"

# 52 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_EventScript_Woman::
# 53 "data/maps/MtPyre_2F/scripts.pory"
	msgbox MtPyre_2F_Text_MemoriesOfSkitty, MSGBOX_NPC
# 54 "data/maps/MtPyre_2F/scripts.pory"
	end
# 55 "data/maps/MtPyre_2F/scripts.pory"

# 56 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_EventScript_PokefanM::
# 57 "data/maps/MtPyre_2F/scripts.pory"
	msgbox MtPyre_2F_Text_TumbledFromFloorAbove, MSGBOX_NPC
# 58 "data/maps/MtPyre_2F/scripts.pory"
	end
# 59 "data/maps/MtPyre_2F/scripts.pory"

# 60 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_EventScript_Mark::
# 61 "data/maps/MtPyre_2F/scripts.pory"
	trainerbattle_single TRAINER_MARK, MtPyre_2F_Text_MarkIntro, MtPyre_2F_Text_MarkDefeat
# 62 "data/maps/MtPyre_2F/scripts.pory"
	msgbox MtPyre_2F_Text_MarkPostBattle, MSGBOX_AUTOCLOSE
# 63 "data/maps/MtPyre_2F/scripts.pory"
	end
# 64 "data/maps/MtPyre_2F/scripts.pory"

# 65 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_EventScript_Luke::
# 66 "data/maps/MtPyre_2F/scripts.pory"
	trainerbattle_double TRAINER_DEZ_AND_LUKE, MtPyre_2F_Text_LukeIntro, MtPyre_2F_Text_LukeDefeat, MtPyre_2F_Text_LukeNotEnoughMons
# 67 "data/maps/MtPyre_2F/scripts.pory"
	msgbox MtPyre_2F_Text_LukePostBattle, MSGBOX_AUTOCLOSE
# 68 "data/maps/MtPyre_2F/scripts.pory"
	end
# 69 "data/maps/MtPyre_2F/scripts.pory"

# 70 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_EventScript_Dez::
# 71 "data/maps/MtPyre_2F/scripts.pory"
	trainerbattle_double TRAINER_DEZ_AND_LUKE, MtPyre_2F_Text_DezIntro, MtPyre_2F_Text_DezDefeat, MtPyre_2F_Text_DezNotEnoughMons
# 72 "data/maps/MtPyre_2F/scripts.pory"
	msgbox MtPyre_2F_Text_DezPostBattle, MSGBOX_AUTOCLOSE
# 73 "data/maps/MtPyre_2F/scripts.pory"
	end
# 74 "data/maps/MtPyre_2F/scripts.pory"

# 75 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_EventScript_Leah::
# 76 "data/maps/MtPyre_2F/scripts.pory"
	trainerbattle_single TRAINER_LEAH, MtPyre_2F_Text_LeahIntro, MtPyre_2F_Text_LeahDefeat
# 77 "data/maps/MtPyre_2F/scripts.pory"
	msgbox MtPyre_2F_Text_LeahPostBattle, MSGBOX_AUTOCLOSE
# 78 "data/maps/MtPyre_2F/scripts.pory"
	end
# 79 "data/maps/MtPyre_2F/scripts.pory"

# 80 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_EventScript_Zander::
# 81 "data/maps/MtPyre_2F/scripts.pory"
	trainerbattle_single TRAINER_ZANDER, MtPyre_2F_Text_ZanderIntro, MtPyre_2F_Text_ZanderDefeat
# 82 "data/maps/MtPyre_2F/scripts.pory"
	msgbox MtPyre_2F_Text_ZanderPostBattle, MSGBOX_AUTOCLOSE
# 83 "data/maps/MtPyre_2F/scripts.pory"
	end
# 84 "data/maps/MtPyre_2F/scripts.pory"

# 85 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_MemoriesOfSkitty:
# 86 "data/maps/MtPyre_2F/scripts.pory"
	.string "Memories of my darling SKITTY…\n"
# 87 "data/maps/MtPyre_2F/scripts.pory"
	.string "My eyes overflow thinking about it.$"
# 88 "data/maps/MtPyre_2F/scripts.pory"

# 89 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_TumbledFromFloorAbove:
# 90 "data/maps/MtPyre_2F/scripts.pory"
	.string "Ooch, ouch… There are holes in the\n"
# 91 "data/maps/MtPyre_2F/scripts.pory"
	.string "ground here and there.\p"
# 92 "data/maps/MtPyre_2F/scripts.pory"
	.string "I didn't notice and took a tumble from\n"
# 93 "data/maps/MtPyre_2F/scripts.pory"
	.string "the floor above.$"
# 94 "data/maps/MtPyre_2F/scripts.pory"

# 95 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_MarkIntro:
# 96 "data/maps/MtPyre_2F/scripts.pory"
	.string "Hey! Are you searching for POKéMON?\n"
# 97 "data/maps/MtPyre_2F/scripts.pory"
	.string "You came along after me! You're rude!$"
# 98 "data/maps/MtPyre_2F/scripts.pory"

# 99 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_MarkDefeat:
# 100 "data/maps/MtPyre_2F/scripts.pory"
	.string "Ayieeeeh!\n"
# 101 "data/maps/MtPyre_2F/scripts.pory"
	.string "I'm sorry, forgive me, please!$"
# 102 "data/maps/MtPyre_2F/scripts.pory"

# 103 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_MarkPostBattle:
# 104 "data/maps/MtPyre_2F/scripts.pory"
	.string "People don't come here often, so\n"
# 105 "data/maps/MtPyre_2F/scripts.pory"
	.string "I thought there'd be rare POKéMON.$"
# 106 "data/maps/MtPyre_2F/scripts.pory"

# 107 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_LukeIntro:
# 108 "data/maps/MtPyre_2F/scripts.pory"
	.string "LUKE: We're here on a dare.\p"
# 109 "data/maps/MtPyre_2F/scripts.pory"
	.string "Heheh, if I show her how cool I am,\n"
# 110 "data/maps/MtPyre_2F/scripts.pory"
	.string "she'll fall for me. I know it!\p"
# 111 "data/maps/MtPyre_2F/scripts.pory"
	.string "I know! I'll cream you and show her\n"
# 112 "data/maps/MtPyre_2F/scripts.pory"
	.string "how cool I am!$"
# 113 "data/maps/MtPyre_2F/scripts.pory"

# 114 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_LukeDefeat:
# 115 "data/maps/MtPyre_2F/scripts.pory"
	.string "LUKE: Whoopsie!$"
# 116 "data/maps/MtPyre_2F/scripts.pory"

# 117 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_LukePostBattle:
# 118 "data/maps/MtPyre_2F/scripts.pory"
	.string "LUKE: Well, we lost but that's okay!\n"
# 119 "data/maps/MtPyre_2F/scripts.pory"
	.string "I'm right here by your side.\l"
# 120 "data/maps/MtPyre_2F/scripts.pory"
	.string "We'll make it through this dare!$"
# 121 "data/maps/MtPyre_2F/scripts.pory"

# 122 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_LukeNotEnoughMons:
# 123 "data/maps/MtPyre_2F/scripts.pory"
	.string "LUKE: If you want to take me on,\n"
# 124 "data/maps/MtPyre_2F/scripts.pory"
	.string "bring some more POKéMON.\p"
# 125 "data/maps/MtPyre_2F/scripts.pory"
	.string "If you don't, I won't be able to show\n"
# 126 "data/maps/MtPyre_2F/scripts.pory"
	.string "off to my girl how cool I am!$"
# 127 "data/maps/MtPyre_2F/scripts.pory"

# 128 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_DezIntro:
# 129 "data/maps/MtPyre_2F/scripts.pory"
	.string "DEZ: I came here on a dare with my\n"
# 130 "data/maps/MtPyre_2F/scripts.pory"
	.string "boyfriend.\p"
# 131 "data/maps/MtPyre_2F/scripts.pory"
	.string "It's really scary, but I'm with my\n"
# 132 "data/maps/MtPyre_2F/scripts.pory"
	.string "boyfriend. It's okay.\p"
# 133 "data/maps/MtPyre_2F/scripts.pory"
	.string "I know! I'll get my boyfriend to look\n"
# 134 "data/maps/MtPyre_2F/scripts.pory"
	.string "cool by beating you!$"
# 135 "data/maps/MtPyre_2F/scripts.pory"

# 136 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_DezDefeat:
# 137 "data/maps/MtPyre_2F/scripts.pory"
	.string "DEZ: Waaaah! I'm scared!$"
# 138 "data/maps/MtPyre_2F/scripts.pory"

# 139 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_DezPostBattle:
# 140 "data/maps/MtPyre_2F/scripts.pory"
	.string "DEZ: We're lovey-dovey, so we don't\n"
# 141 "data/maps/MtPyre_2F/scripts.pory"
	.string "care if we lose!$"
# 142 "data/maps/MtPyre_2F/scripts.pory"

# 143 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_DezNotEnoughMons:
# 144 "data/maps/MtPyre_2F/scripts.pory"
	.string "DEZ: If you want to challenge us, you\n"
# 145 "data/maps/MtPyre_2F/scripts.pory"
	.string "should bring at least two POKéMON.\p"
# 146 "data/maps/MtPyre_2F/scripts.pory"
	.string "My boyfriend's strong.\n"
# 147 "data/maps/MtPyre_2F/scripts.pory"
	.string "Just one POKéMON won't do at all.$"
# 148 "data/maps/MtPyre_2F/scripts.pory"

# 149 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_LeahIntro:
# 150 "data/maps/MtPyre_2F/scripts.pory"
	.string "You are an unfamiliar sight…\n"
# 151 "data/maps/MtPyre_2F/scripts.pory"
	.string "Depart before anything befalls you!$"
# 152 "data/maps/MtPyre_2F/scripts.pory"

# 153 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_LeahDefeat:
# 154 "data/maps/MtPyre_2F/scripts.pory"
	.string "Hmm…\n"
# 155 "data/maps/MtPyre_2F/scripts.pory"
	.string "You're durable.$"
# 156 "data/maps/MtPyre_2F/scripts.pory"

# 157 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_LeahPostBattle:
# 158 "data/maps/MtPyre_2F/scripts.pory"
	.string "Our family has been TRAINERS here\n"
# 159 "data/maps/MtPyre_2F/scripts.pory"
	.string "since my great-grandmother's time…\p"
# 160 "data/maps/MtPyre_2F/scripts.pory"
	.string "It is my duty to protect this\n"
# 161 "data/maps/MtPyre_2F/scripts.pory"
	.string "mountain…$"
# 162 "data/maps/MtPyre_2F/scripts.pory"

# 163 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_ZanderIntro:
# 164 "data/maps/MtPyre_2F/scripts.pory"
	.string "Kiyaaaaah!\n"
# 165 "data/maps/MtPyre_2F/scripts.pory"
	.string "I'm terrified!$"
# 166 "data/maps/MtPyre_2F/scripts.pory"

# 167 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_ZanderDefeat:
# 168 "data/maps/MtPyre_2F/scripts.pory"
	.string "Nooooooo!\n"
# 169 "data/maps/MtPyre_2F/scripts.pory"
	.string "I lost my wits!$"
# 170 "data/maps/MtPyre_2F/scripts.pory"

# 171 "data/maps/MtPyre_2F/scripts.pory"
MtPyre_2F_Text_ZanderPostBattle:
# 172 "data/maps/MtPyre_2F/scripts.pory"
	.string "I get freaked out every time I see\n"
# 173 "data/maps/MtPyre_2F/scripts.pory"
	.string "anything move…\p"
# 174 "data/maps/MtPyre_2F/scripts.pory"
	.string "I shouldn't have come here to train…$"
