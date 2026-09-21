# 1 "data/maps/MagmaHideout_1F/scripts.pory"

# 2 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_MapScripts::
# 3 "data/maps/MagmaHideout_1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, MagmaHideout_1F_OnTransition
# 4 "data/maps/MagmaHideout_1F/scripts.pory"
	.byte 0
# 5 "data/maps/MagmaHideout_1F/scripts.pory"

# 6 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_OnTransition:
# 7 "data/maps/MagmaHideout_1F/scripts.pory"
	setvar VAR_JAGGED_PASS_ASH_WEATHER, 0
# 8 "data/maps/MagmaHideout_1F/scripts.pory"
	call_if_set FLAG_MR_STONE_LEFT, MagmaHideout_1F_EventScript_DisableMrStoneTriggers
# 9 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 10 "data/maps/MagmaHideout_1F/scripts.pory"

# 11 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_DisableMrStoneTriggers::
# 12 "data/maps/MagmaHideout_1F/scripts.pory"
	setvar VAR_TEMP_0, 1
# 13 "data/maps/MagmaHideout_1F/scripts.pory"
	return
# 14 "data/maps/MagmaHideout_1F/scripts.pory"

# 15 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_Grunt1::
# 16 "data/maps/MagmaHideout_1F/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MAGMA_HIDEOUT_1, MagmaHideout_1F_Text_Grunt1Intro, MagmaHideout_1F_Text_Grunt1Defeat
# 17 "data/maps/MagmaHideout_1F/scripts.pory"
	msgbox MagmaHideout_1F_Text_Grunt1PostBattle, MSGBOX_AUTOCLOSE
# 18 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 19 "data/maps/MagmaHideout_1F/scripts.pory"

# 20 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_Grunt2::
# 21 "data/maps/MagmaHideout_1F/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MAGMA_HIDEOUT_2, MagmaHideout_1F_Text_Grunt2Intro, MagmaHideout_1F_Text_Grunt2Defeat
# 22 "data/maps/MagmaHideout_1F/scripts.pory"
	msgbox MagmaHideout_1F_Text_Grunt2PostBattle, MSGBOX_AUTOCLOSE
# 23 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 24 "data/maps/MagmaHideout_1F/scripts.pory"

# 25 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Text_Grunt1Intro:
# 26 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "When TEAM MAGMA has roll call, we get\n"
# 27 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "important guarding assignments in\l"
# 28 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "the order that we line up.\p"
# 29 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "That's why I'm stuck off in this corner.\n"
# 30 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "I'm always late to roll call!$"
# 31 "data/maps/MagmaHideout_1F/scripts.pory"

# 32 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Text_Grunt1Defeat:
# 33 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "I'm always late for training sessions,\n"
# 34 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "too!\p"
# 35 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "I hate to say it, but I'm wimpy…$"
# 36 "data/maps/MagmaHideout_1F/scripts.pory"

# 37 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Text_Grunt1PostBattle:
# 38 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "Okay, I'll try to put a little more\n"
# 39 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "effort into things from now on…$"
# 40 "data/maps/MagmaHideout_1F/scripts.pory"

# 41 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Text_Grunt2Intro:
# 42 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "Our leader told us to dig into\n"
# 43 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "MT. CHIMNEY, so we dug and dug.\p"
# 44 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "And in the course of digging, we came\n"
# 45 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "across something that blew our minds!\p"
# 46 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "What did we find?\p"
# 47 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "Fuhahaha!\n"
# 48 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "I'll tell you if you beat me!$"
# 49 "data/maps/MagmaHideout_1F/scripts.pory"

# 50 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Text_Grunt2Defeat:
# 51 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "Arrgh!\n"
# 52 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "Taken down!$"
# 53 "data/maps/MagmaHideout_1F/scripts.pory"

# 54 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Text_Grunt2PostBattle:
# 55 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "I won't tell you after all.\n"
# 56 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "You'll find out when you get there!\p"
# 57 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "It'd be better if you saved surprises\n"
# 58 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "to the end, don't you think?$"
# 59 "data/maps/MagmaHideout_1F/scripts.pory"

# 60 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStone2::
# 61 "data/maps/MagmaHideout_1F/scripts.pory"
	lock
# 62 "data/maps/MagmaHideout_1F/scripts.pory"
	goto_if_set FLAG_MR_STONE_LEFT, MagmaHideout_1F_EventScript_MrStoneAlreadyLeft
# 63 "data/maps/MagmaHideout_1F/scripts.pory"
	goto MagmaHideout_1F_EventScript_MrStoneTalk
# 64 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 65 "data/maps/MagmaHideout_1F/scripts.pory"

# 66 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneAlreadyLeft::
# 67 "data/maps/MagmaHideout_1F/scripts.pory"
	release
# 68 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 69 "data/maps/MagmaHideout_1F/scripts.pory"

# 70 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneExitUp::
# 71 "data/maps/MagmaHideout_1F/scripts.pory"
	goto_if_set FLAG_MR_STONE_LEFT, MagmaHideout_1F_EventScript_MrStoneNoOp
# 72 "data/maps/MagmaHideout_1F/scripts.pory"
	lockall
# 73 "data/maps/MagmaHideout_1F/scripts.pory"
	setvar VAR_TEMP_0, 1
# 74 "data/maps/MagmaHideout_1F/scripts.pory"
	playse SE_PIN
# 75 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_ExclamationMark
# 76 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement LOCALID_PLAYER
# 77 "data/maps/MagmaHideout_1F/scripts.pory"
	addobject LOCALID_MR_STONE
# 78 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, MagmaHideout_1F_Movement_MrStoneApproachUp
# 79 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement LOCALID_MR_STONE
# 80 "data/maps/MagmaHideout_1F/scripts.pory"
	turnobject LOCALID_MR_STONE, DIR_SOUTH
# 81 "data/maps/MagmaHideout_1F/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_NORTH
# 82 "data/maps/MagmaHideout_1F/scripts.pory"
	goto MagmaHideout_1F_EventScript_MrStoneTalkUp
# 83 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 84 "data/maps/MagmaHideout_1F/scripts.pory"

# 85 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneExitLeft::
# 86 "data/maps/MagmaHideout_1F/scripts.pory"
	goto_if_set FLAG_MR_STONE_LEFT, MagmaHideout_1F_EventScript_MrStoneNoOp
# 87 "data/maps/MagmaHideout_1F/scripts.pory"
	lockall
# 88 "data/maps/MagmaHideout_1F/scripts.pory"
	setvar VAR_TEMP_0, 1
# 89 "data/maps/MagmaHideout_1F/scripts.pory"
	playse SE_PIN
# 90 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_ExclamationMark
# 91 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement LOCALID_PLAYER
# 92 "data/maps/MagmaHideout_1F/scripts.pory"
	addobject LOCALID_MR_STONE
# 93 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, MagmaHideout_1F_Movement_MrStoneApproachLeft
# 94 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement LOCALID_MR_STONE
# 95 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, Common_Movement_FaceLeft
# 96 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceRight
# 97 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement 0
# 98 "data/maps/MagmaHideout_1F/scripts.pory"
	goto MagmaHideout_1F_EventScript_MrStoneTalkLeft
# 99 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 100 "data/maps/MagmaHideout_1F/scripts.pory"

# 101 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneExitRight::
# 102 "data/maps/MagmaHideout_1F/scripts.pory"
	goto_if_set FLAG_MR_STONE_LEFT, MagmaHideout_1F_EventScript_MrStoneNoOp
# 103 "data/maps/MagmaHideout_1F/scripts.pory"
	lockall
# 104 "data/maps/MagmaHideout_1F/scripts.pory"
	setvar VAR_TEMP_0, 1
# 105 "data/maps/MagmaHideout_1F/scripts.pory"
	playse SE_PIN
# 106 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_ExclamationMark
# 107 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement LOCALID_PLAYER
# 108 "data/maps/MagmaHideout_1F/scripts.pory"
	addobject LOCALID_MR_STONE
# 109 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, MagmaHideout_1F_Movement_MrStoneApproachRight
# 110 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement LOCALID_MR_STONE
# 111 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, Common_Movement_FaceRight
# 112 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceLeft
# 113 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement 0
# 114 "data/maps/MagmaHideout_1F/scripts.pory"
	goto MagmaHideout_1F_EventScript_MrStoneTalkRight
# 115 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 116 "data/maps/MagmaHideout_1F/scripts.pory"

# 117 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneNoOp::
# 118 "data/maps/MagmaHideout_1F/scripts.pory"
	setvar VAR_TEMP_0, 1
# 119 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 120 "data/maps/MagmaHideout_1F/scripts.pory"

# 121 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneTalk::
# 122 "data/maps/MagmaHideout_1F/scripts.pory"
	faceplayer
# 123 "data/maps/MagmaHideout_1F/scripts.pory"
	msgbox MagmaHideout_1F_Text_MrStoneSuspicious, MSGBOX_DEFAULT
# 124 "data/maps/MagmaHideout_1F/scripts.pory"
	closemessage
# 125 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, MagmaHideout_1F_Movement_MrStoneLeave
# 126 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement 0
# 127 "data/maps/MagmaHideout_1F/scripts.pory"
	playse SE_EXIT
# 128 "data/maps/MagmaHideout_1F/scripts.pory"
	removeobject LOCALID_MR_STONE
# 129 "data/maps/MagmaHideout_1F/scripts.pory"
	setflag FLAG_MR_STONE_LEFT
# 130 "data/maps/MagmaHideout_1F/scripts.pory"
	release
# 131 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 132 "data/maps/MagmaHideout_1F/scripts.pory"

# 133 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneTalkUp::
# 134 "data/maps/MagmaHideout_1F/scripts.pory"
	msgbox MagmaHideout_1F_Text_MrStoneSuspicious, MSGBOX_DEFAULT
# 135 "data/maps/MagmaHideout_1F/scripts.pory"
	closemessage
# 136 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, MagmaHideout_1F_Movement_MrStoneLeaveUp
# 137 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement 0
# 138 "data/maps/MagmaHideout_1F/scripts.pory"
	playse SE_EXIT
# 139 "data/maps/MagmaHideout_1F/scripts.pory"
	removeobject LOCALID_MR_STONE
# 140 "data/maps/MagmaHideout_1F/scripts.pory"
	setflag FLAG_MR_STONE_LEFT
# 141 "data/maps/MagmaHideout_1F/scripts.pory"
	releaseall
# 142 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 143 "data/maps/MagmaHideout_1F/scripts.pory"

# 144 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneTalkLeft::
# 145 "data/maps/MagmaHideout_1F/scripts.pory"
	msgbox MagmaHideout_1F_Text_MrStoneSuspicious, MSGBOX_DEFAULT
# 146 "data/maps/MagmaHideout_1F/scripts.pory"
	closemessage
# 147 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, MagmaHideout_1F_Movement_MrStoneLeaveLeft
# 148 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement 0
# 149 "data/maps/MagmaHideout_1F/scripts.pory"
	playse SE_EXIT
# 150 "data/maps/MagmaHideout_1F/scripts.pory"
	removeobject LOCALID_MR_STONE
# 151 "data/maps/MagmaHideout_1F/scripts.pory"
	setflag FLAG_MR_STONE_LEFT
# 152 "data/maps/MagmaHideout_1F/scripts.pory"
	releaseall
# 153 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 154 "data/maps/MagmaHideout_1F/scripts.pory"

# 155 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneTalkRight::
# 156 "data/maps/MagmaHideout_1F/scripts.pory"
	msgbox MagmaHideout_1F_Text_MrStoneSuspicious, MSGBOX_DEFAULT
# 157 "data/maps/MagmaHideout_1F/scripts.pory"
	closemessage
# 158 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, MagmaHideout_1F_Movement_MrStoneLeaveRight
# 159 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement 0
# 160 "data/maps/MagmaHideout_1F/scripts.pory"
	playse SE_EXIT
# 161 "data/maps/MagmaHideout_1F/scripts.pory"
	removeobject LOCALID_MR_STONE
# 162 "data/maps/MagmaHideout_1F/scripts.pory"
	setflag FLAG_MR_STONE_LEFT
# 163 "data/maps/MagmaHideout_1F/scripts.pory"
	releaseall
# 164 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 165 "data/maps/MagmaHideout_1F/scripts.pory"

# 166 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Movement_MrStoneApproachUp:
# 167 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 168 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 169 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 170 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 171 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 172 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 173 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 174 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 175 "data/maps/MagmaHideout_1F/scripts.pory"
	step_end
# 176 "data/maps/MagmaHideout_1F/scripts.pory"

# 177 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Movement_MrStoneApproachLeft:
# 178 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 179 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 180 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 181 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 182 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 183 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 184 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 185 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 186 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 187 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 188 "data/maps/MagmaHideout_1F/scripts.pory"
	step_end
# 189 "data/maps/MagmaHideout_1F/scripts.pory"

# 190 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Movement_MrStoneApproachRight:
# 191 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 192 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 193 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 194 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 195 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 196 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 197 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 198 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 199 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 200 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 201 "data/maps/MagmaHideout_1F/scripts.pory"
	step_end
# 202 "data/maps/MagmaHideout_1F/scripts.pory"

# 203 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Movement_MrStoneLeave:
# 204 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 205 "data/maps/MagmaHideout_1F/scripts.pory"
	step_end
# 206 "data/maps/MagmaHideout_1F/scripts.pory"

# 207 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Movement_MrStoneLeaveUp:
# 208 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_right
# 209 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 210 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 211 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_left
# 212 "data/maps/MagmaHideout_1F/scripts.pory"
	face_down
# 213 "data/maps/MagmaHideout_1F/scripts.pory"
	step_end
# 214 "data/maps/MagmaHideout_1F/scripts.pory"

# 215 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Movement_MrStoneLeaveLeft:
# 216 "data/maps/MagmaHideout_1F/scripts.pory"
	face_down
# 217 "data/maps/MagmaHideout_1F/scripts.pory"
	step_end
# 218 "data/maps/MagmaHideout_1F/scripts.pory"

# 219 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Movement_MrStoneLeaveRight:
# 220 "data/maps/MagmaHideout_1F/scripts.pory"
	face_down
# 221 "data/maps/MagmaHideout_1F/scripts.pory"
	step_end
# 222 "data/maps/MagmaHideout_1F/scripts.pory"

# 223 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Text_MrStoneSuspicious:
# 224 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "{PLAYER}! What are you doing around\n"
# 225 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "here?\p"
# 226 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "It's not dangerous, don't worry…\n"
# 227 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "I only came to check on this mine.\p"
# 228 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "It used to belong to DEVON CORP.,\n"
# 229 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "and some of my workers operated it.\l"
# 230 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "But it seems it's been taken over…\p"
# 231 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "What a situation, huh?\p"
# 232 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "Anyway, be careful getting involved\n"
# 233 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "with those guys.\l"
# 234 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "TEAM MAGMA, was it?\p"
# 235 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "They seem dangerous, I think…\n"
# 236 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "Be careful.$"
