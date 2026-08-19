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
	end
# 9 "data/maps/MagmaHideout_1F/scripts.pory"

# 10 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_Grunt1::
# 11 "data/maps/MagmaHideout_1F/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MAGMA_HIDEOUT_1, MagmaHideout_1F_Text_Grunt1Intro, MagmaHideout_1F_Text_Grunt1Defeat
# 12 "data/maps/MagmaHideout_1F/scripts.pory"
	msgbox MagmaHideout_1F_Text_Grunt1PostBattle, MSGBOX_AUTOCLOSE
# 13 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 14 "data/maps/MagmaHideout_1F/scripts.pory"

# 15 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_Grunt2::
# 16 "data/maps/MagmaHideout_1F/scripts.pory"
	trainerbattle_single TRAINER_GRUNT_MAGMA_HIDEOUT_2, MagmaHideout_1F_Text_Grunt2Intro, MagmaHideout_1F_Text_Grunt2Defeat
# 17 "data/maps/MagmaHideout_1F/scripts.pory"
	msgbox MagmaHideout_1F_Text_Grunt2PostBattle, MSGBOX_AUTOCLOSE
# 18 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 19 "data/maps/MagmaHideout_1F/scripts.pory"

# 20 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Text_Grunt1Intro:
# 21 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "When TEAM MAGMA has roll call, we get\n"
# 22 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "important guarding assignments in\l"
# 23 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "the order that we line up.\p"
# 24 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "That's why I'm stuck off in this corner.\n"
# 25 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "I'm always late to roll call!$"
# 26 "data/maps/MagmaHideout_1F/scripts.pory"

# 27 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Text_Grunt1Defeat:
# 28 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "I'm always late for training sessions,\n"
# 29 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "too!\p"
# 30 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "I hate to say it, but I'm wimpy…$"
# 31 "data/maps/MagmaHideout_1F/scripts.pory"

# 32 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Text_Grunt1PostBattle:
# 33 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "Okay, I'll try to put a little more\n"
# 34 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "effort into things from now on…$"
# 35 "data/maps/MagmaHideout_1F/scripts.pory"

# 36 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Text_Grunt2Intro:
# 37 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "Our leader told us to dig into\n"
# 38 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "MT. CHIMNEY, so we dug and dug.\p"
# 39 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "And in the course of digging, we came\n"
# 40 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "across something that blew our minds!\p"
# 41 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "What did we find?\p"
# 42 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "Fuhahaha!\n"
# 43 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "I'll tell you if you beat me!$"
# 44 "data/maps/MagmaHideout_1F/scripts.pory"

# 45 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Text_Grunt2Defeat:
# 46 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "Arrgh!\n"
# 47 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "Taken down!$"
# 48 "data/maps/MagmaHideout_1F/scripts.pory"

# 49 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Text_Grunt2PostBattle:
# 50 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "I won't tell you after all.\n"
# 51 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "You'll find out when you get there!\p"
# 52 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "It'd be better if you saved surprises\n"
# 53 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "to the end, don't you think?$"
# 54 "data/maps/MagmaHideout_1F/scripts.pory"

# 55 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStone2::
# 56 "data/maps/MagmaHideout_1F/scripts.pory"
	lock
# 57 "data/maps/MagmaHideout_1F/scripts.pory"
	goto_if_set FLAG_MR_STONE_LEFT, MagmaHideout_1F_EventScript_MrStoneAlreadyLeft
# 58 "data/maps/MagmaHideout_1F/scripts.pory"
	goto MagmaHideout_1F_EventScript_MrStoneTalk
# 59 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 60 "data/maps/MagmaHideout_1F/scripts.pory"

# 61 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneAlreadyLeft::
# 62 "data/maps/MagmaHideout_1F/scripts.pory"
	release
# 63 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 64 "data/maps/MagmaHideout_1F/scripts.pory"

# 65 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneExitUp::
# 66 "data/maps/MagmaHideout_1F/scripts.pory"
	goto_if_set FLAG_MR_STONE_LEFT, MagmaHideout_1F_EventScript_MrStoneNoOp
# 67 "data/maps/MagmaHideout_1F/scripts.pory"
	lockall
# 68 "data/maps/MagmaHideout_1F/scripts.pory"
	playse SE_PIN
# 69 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_ExclamationMark
# 70 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement LOCALID_PLAYER
# 71 "data/maps/MagmaHideout_1F/scripts.pory"
	addobject LOCALID_MR_STONE
# 72 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, MagmaHideout_1F_Movement_MrStoneApproachUp
# 73 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement LOCALID_MR_STONE
# 74 "data/maps/MagmaHideout_1F/scripts.pory"
	goto MagmaHideout_1F_EventScript_MrStoneTalkUp
# 75 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 76 "data/maps/MagmaHideout_1F/scripts.pory"

# 77 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneExitLeft::
# 78 "data/maps/MagmaHideout_1F/scripts.pory"
	goto_if_set FLAG_MR_STONE_LEFT, MagmaHideout_1F_EventScript_MrStoneNoOp
# 79 "data/maps/MagmaHideout_1F/scripts.pory"
	lockall
# 80 "data/maps/MagmaHideout_1F/scripts.pory"
	playse SE_PIN
# 81 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_ExclamationMark
# 82 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement LOCALID_PLAYER
# 83 "data/maps/MagmaHideout_1F/scripts.pory"
	addobject LOCALID_MR_STONE
# 84 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, MagmaHideout_1F_Movement_MrStoneApproachLeft
# 85 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement LOCALID_MR_STONE
# 86 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, Common_Movement_FaceLeft
# 87 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceRight
# 88 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement 0
# 89 "data/maps/MagmaHideout_1F/scripts.pory"
	goto MagmaHideout_1F_EventScript_MrStoneTalkLeft
# 90 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 91 "data/maps/MagmaHideout_1F/scripts.pory"

# 92 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneExitRight::
# 93 "data/maps/MagmaHideout_1F/scripts.pory"
	goto_if_set FLAG_MR_STONE_LEFT, MagmaHideout_1F_EventScript_MrStoneNoOp
# 94 "data/maps/MagmaHideout_1F/scripts.pory"
	lockall
# 95 "data/maps/MagmaHideout_1F/scripts.pory"
	playse SE_PIN
# 96 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_ExclamationMark
# 97 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement LOCALID_PLAYER
# 98 "data/maps/MagmaHideout_1F/scripts.pory"
	addobject LOCALID_MR_STONE
# 99 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, MagmaHideout_1F_Movement_MrStoneApproachRight
# 100 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement LOCALID_MR_STONE
# 101 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, Common_Movement_FaceRight
# 102 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceLeft
# 103 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement 0
# 104 "data/maps/MagmaHideout_1F/scripts.pory"
	goto MagmaHideout_1F_EventScript_MrStoneTalkRight
# 105 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 106 "data/maps/MagmaHideout_1F/scripts.pory"

# 107 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneNoOp::
# 108 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 109 "data/maps/MagmaHideout_1F/scripts.pory"

# 110 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneTalk::
# 111 "data/maps/MagmaHideout_1F/scripts.pory"
	faceplayer
# 112 "data/maps/MagmaHideout_1F/scripts.pory"
	msgbox MagmaHideout_1F_Text_MrStoneSuspicious, MSGBOX_DEFAULT
# 113 "data/maps/MagmaHideout_1F/scripts.pory"
	closemessage
# 114 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, MagmaHideout_1F_Movement_MrStoneLeave
# 115 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement 0
# 116 "data/maps/MagmaHideout_1F/scripts.pory"
	playse SE_EXIT
# 117 "data/maps/MagmaHideout_1F/scripts.pory"
	removeobject LOCALID_MR_STONE
# 118 "data/maps/MagmaHideout_1F/scripts.pory"
	setflag FLAG_MR_STONE_LEFT
# 119 "data/maps/MagmaHideout_1F/scripts.pory"
	release
# 120 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 121 "data/maps/MagmaHideout_1F/scripts.pory"

# 122 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneTalkUp::
# 123 "data/maps/MagmaHideout_1F/scripts.pory"
	faceplayer
# 124 "data/maps/MagmaHideout_1F/scripts.pory"
	msgbox MagmaHideout_1F_Text_MrStoneSuspicious, MSGBOX_DEFAULT
# 125 "data/maps/MagmaHideout_1F/scripts.pory"
	closemessage
# 126 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, MagmaHideout_1F_Movement_MrStoneLeaveUp
# 127 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement 0
# 128 "data/maps/MagmaHideout_1F/scripts.pory"
	playse SE_EXIT
# 129 "data/maps/MagmaHideout_1F/scripts.pory"
	removeobject LOCALID_MR_STONE
# 130 "data/maps/MagmaHideout_1F/scripts.pory"
	setflag FLAG_MR_STONE_LEFT
# 131 "data/maps/MagmaHideout_1F/scripts.pory"
	releaseall
# 132 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 133 "data/maps/MagmaHideout_1F/scripts.pory"

# 134 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneTalkLeft::
# 135 "data/maps/MagmaHideout_1F/scripts.pory"
	faceplayer
# 136 "data/maps/MagmaHideout_1F/scripts.pory"
	msgbox MagmaHideout_1F_Text_MrStoneSuspicious, MSGBOX_DEFAULT
# 137 "data/maps/MagmaHideout_1F/scripts.pory"
	closemessage
# 138 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, MagmaHideout_1F_Movement_MrStoneLeaveLeft
# 139 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement 0
# 140 "data/maps/MagmaHideout_1F/scripts.pory"
	playse SE_EXIT
# 141 "data/maps/MagmaHideout_1F/scripts.pory"
	removeobject LOCALID_MR_STONE
# 142 "data/maps/MagmaHideout_1F/scripts.pory"
	setflag FLAG_MR_STONE_LEFT
# 143 "data/maps/MagmaHideout_1F/scripts.pory"
	releaseall
# 144 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 145 "data/maps/MagmaHideout_1F/scripts.pory"

# 146 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_EventScript_MrStoneTalkRight::
# 147 "data/maps/MagmaHideout_1F/scripts.pory"
	faceplayer
# 148 "data/maps/MagmaHideout_1F/scripts.pory"
	msgbox MagmaHideout_1F_Text_MrStoneSuspicious, MSGBOX_DEFAULT
# 149 "data/maps/MagmaHideout_1F/scripts.pory"
	closemessage
# 150 "data/maps/MagmaHideout_1F/scripts.pory"
	applymovement LOCALID_MR_STONE, MagmaHideout_1F_Movement_MrStoneLeaveRight
# 151 "data/maps/MagmaHideout_1F/scripts.pory"
	waitmovement 0
# 152 "data/maps/MagmaHideout_1F/scripts.pory"
	playse SE_EXIT
# 153 "data/maps/MagmaHideout_1F/scripts.pory"
	removeobject LOCALID_MR_STONE
# 154 "data/maps/MagmaHideout_1F/scripts.pory"
	setflag FLAG_MR_STONE_LEFT
# 155 "data/maps/MagmaHideout_1F/scripts.pory"
	releaseall
# 156 "data/maps/MagmaHideout_1F/scripts.pory"
	end
# 157 "data/maps/MagmaHideout_1F/scripts.pory"

# 158 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Movement_MrStoneApproachUp:
# 159 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 160 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 161 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 162 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 163 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 164 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 165 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 166 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 167 "data/maps/MagmaHideout_1F/scripts.pory"
	step_end
# 168 "data/maps/MagmaHideout_1F/scripts.pory"

# 169 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Movement_MrStoneApproachLeft:
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
	walk_down
# 176 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 177 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 178 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 179 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 180 "data/maps/MagmaHideout_1F/scripts.pory"
	step_end
# 181 "data/maps/MagmaHideout_1F/scripts.pory"

# 182 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Movement_MrStoneApproachRight:
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
	walk_down
# 189 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 190 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 191 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 192 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 193 "data/maps/MagmaHideout_1F/scripts.pory"
	step_end
# 194 "data/maps/MagmaHideout_1F/scripts.pory"

# 195 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Movement_MrStoneLeave:
# 196 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 197 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 198 "data/maps/MagmaHideout_1F/scripts.pory"
	step_end
# 199 "data/maps/MagmaHideout_1F/scripts.pory"

# 200 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Movement_MrStoneLeaveUp:
# 201 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_right
# 202 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 203 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 204 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_left
# 205 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 206 "data/maps/MagmaHideout_1F/scripts.pory"
	step_end
# 207 "data/maps/MagmaHideout_1F/scripts.pory"

# 208 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Movement_MrStoneLeaveLeft:
# 209 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 210 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 211 "data/maps/MagmaHideout_1F/scripts.pory"
	step_end
# 212 "data/maps/MagmaHideout_1F/scripts.pory"

# 213 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Movement_MrStoneLeaveRight:
# 214 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 215 "data/maps/MagmaHideout_1F/scripts.pory"
	walk_down
# 216 "data/maps/MagmaHideout_1F/scripts.pory"
	step_end
# 217 "data/maps/MagmaHideout_1F/scripts.pory"

# 218 "data/maps/MagmaHideout_1F/scripts.pory"
MagmaHideout_1F_Text_MrStoneSuspicious:
# 219 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "{PLAYER}! What are you doing around\n"
# 220 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "here?\p"
# 221 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "It's not dangerous, don't worry…\n"
# 222 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "I only came to check on this mine.\p"
# 223 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "It used to belong to DEVON CORP.,\n"
# 224 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "and some of my workers operated it.\l"
# 225 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "But it seems it's been taken over…\p"
# 226 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "What a situation, huh?\p"
# 227 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "Anyway, be careful getting involved\n"
# 228 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "with those guys.\l"
# 229 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "TEAM MAGMA, was it?\p"
# 230 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "They seem dangerous, I think…\n"
# 231 "data/maps/MagmaHideout_1F/scripts.pory"
	.string "Be careful.$"
