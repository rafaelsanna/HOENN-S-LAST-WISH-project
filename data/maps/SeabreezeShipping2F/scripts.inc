# 1 "data/maps/SeabreezeShipping2F/scripts.pory"

# 2 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_MapScripts::
# 3 "data/maps/SeabreezeShipping2F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, SeabreezeShipping2F_OnTransition
# 4 "data/maps/SeabreezeShipping2F/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, SeabreezeShipping2F_OnFrame
# 5 "data/maps/SeabreezeShipping2F/scripts.pory"
	.byte 0
# 6 "data/maps/SeabreezeShipping2F/scripts.pory"

# 7 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_OnTransition:
# 8 "data/maps/SeabreezeShipping2F/scripts.pory"
	goto_if_set FLAG_SEABREEZE_SHIPPING_HQ_COMPLETE, SeabreezeShipping2F_EventScript_TransitionComplete
# 9 "data/maps/SeabreezeShipping2F/scripts.pory"
	setvar VAR_TEMP_0, 1
# 10 "data/maps/SeabreezeShipping2F/scripts.pory"
	end
# 11 "data/maps/SeabreezeShipping2F/scripts.pory"

# 12 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_EventScript_TransitionComplete::
# 13 "data/maps/SeabreezeShipping2F/scripts.pory"
	setvar VAR_TEMP_0, 0
# 14 "data/maps/SeabreezeShipping2F/scripts.pory"
	end
# 15 "data/maps/SeabreezeShipping2F/scripts.pory"

# 16 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_OnFrame:
# 17 "data/maps/SeabreezeShipping2F/scripts.pory"
	map_script_2 VAR_TEMP_0, 1, SeabreezeShipping2F_EventScript_IllegalBusinessScene
# 18 "data/maps/SeabreezeShipping2F/scripts.pory"
	.2byte 0
# 19 "data/maps/SeabreezeShipping2F/scripts.pory"

# 20 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_EventScript_IllegalBusinessScene::
# 21 "data/maps/SeabreezeShipping2F/scripts.pory"
	setvar VAR_TEMP_0, 0
# 22 "data/maps/SeabreezeShipping2F/scripts.pory"
	lockall
# 23 "data/maps/SeabreezeShipping2F/scripts.pory"
	applymovement LOCALID_PLAYER, SeabreezeShipping2F_Movement_PlayerListen
# 24 "data/maps/SeabreezeShipping2F/scripts.pory"
	waitmovement 0
# 25 "data/maps/SeabreezeShipping2F/scripts.pory"

# 26 "data/maps/SeabreezeShipping2F/scripts.pory"
	msgbox SeabreezeShipping2F_Text_PresidentBusiness, MSGBOX_DEFAULT
# 27 "data/maps/SeabreezeShipping2F/scripts.pory"
	msgbox SeabreezeShipping2F_Text_AlejandroBusiness, MSGBOX_DEFAULT
# 28 "data/maps/SeabreezeShipping2F/scripts.pory"
	msgbox SeabreezeShipping2F_Text_PresidentWarning, MSGBOX_DEFAULT
# 29 "data/maps/SeabreezeShipping2F/scripts.pory"

# 30 "data/maps/SeabreezeShipping2F/scripts.pory"
	playse SE_PIN
# 31 "data/maps/SeabreezeShipping2F/scripts.pory"
	applymovement LOCALID_SEABREEZE_SHIPPING2F_ALEJANDRO, Common_Movement_ExclamationMark
# 32 "data/maps/SeabreezeShipping2F/scripts.pory"
	applymovement LOCALID_SEABREEZE_SHIPPING2F_PRESIDENT, Common_Movement_ExclamationMark
# 33 "data/maps/SeabreezeShipping2F/scripts.pory"
	waitmovement 0
# 34 "data/maps/SeabreezeShipping2F/scripts.pory"
	applymovement LOCALID_SEABREEZE_SHIPPING2F_ALEJANDRO, Common_Movement_FaceLeft
# 35 "data/maps/SeabreezeShipping2F/scripts.pory"
	waitmovement 0
# 36 "data/maps/SeabreezeShipping2F/scripts.pory"
	msgbox SeabreezeShipping2F_Text_AlejandroOverheard, MSGBOX_DEFAULT
# 37 "data/maps/SeabreezeShipping2F/scripts.pory"

# 38 "data/maps/SeabreezeShipping2F/scripts.pory"
	@ Alejandro reaches the player's column, then the player steps aside before he passes.
# 39 "data/maps/SeabreezeShipping2F/scripts.pory"
	applymovement LOCALID_SEABREEZE_SHIPPING2F_ALEJANDRO, SeabreezeShipping2F_Movement_AlejandroToPlayerColumn
# 40 "data/maps/SeabreezeShipping2F/scripts.pory"
	waitmovement 0
# 41 "data/maps/SeabreezeShipping2F/scripts.pory"
	applymovement LOCALID_PLAYER, SeabreezeShipping2F_Movement_PlayerMoveAside
# 42 "data/maps/SeabreezeShipping2F/scripts.pory"
	waitmovement 0
# 43 "data/maps/SeabreezeShipping2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceRight
# 44 "data/maps/SeabreezeShipping2F/scripts.pory"
	waitmovement 0
# 45 "data/maps/SeabreezeShipping2F/scripts.pory"
	applymovement LOCALID_SEABREEZE_SHIPPING2F_ALEJANDRO, SeabreezeShipping2F_Movement_AlejandroToDoor
# 46 "data/maps/SeabreezeShipping2F/scripts.pory"
	waitmovement 0
# 47 "data/maps/SeabreezeShipping2F/scripts.pory"
	removeobject LOCALID_SEABREEZE_SHIPPING2F_ALEJANDRO
# 48 "data/maps/SeabreezeShipping2F/scripts.pory"

# 49 "data/maps/SeabreezeShipping2F/scripts.pory"
	playse SE_PIN
# 50 "data/maps/SeabreezeShipping2F/scripts.pory"
	applymovement LOCALID_SEABREEZE_SHIPPING2F_PRESIDENT, Common_Movement_ExclamationMark
# 51 "data/maps/SeabreezeShipping2F/scripts.pory"
	waitmovement 0
# 52 "data/maps/SeabreezeShipping2F/scripts.pory"
	msgbox SeabreezeShipping2F_Text_PresidentFlustered, MSGBOX_DEFAULT
# 53 "data/maps/SeabreezeShipping2F/scripts.pory"
	applymovement LOCALID_SEABREEZE_SHIPPING2F_PRESIDENT, SeabreezeShipping2F_Movement_PresidentToDoor
# 54 "data/maps/SeabreezeShipping2F/scripts.pory"
	waitmovement 0
# 55 "data/maps/SeabreezeShipping2F/scripts.pory"
	applymovement LOCALID_SEABREEZE_SHIPPING2F_PRESIDENT, Common_Movement_FaceDown
# 56 "data/maps/SeabreezeShipping2F/scripts.pory"
	waitmovement 0
# 57 "data/maps/SeabreezeShipping2F/scripts.pory"
	msgbox SeabreezeShipping2F_Text_PresidentDemand, MSGBOX_DEFAULT
# 58 "data/maps/SeabreezeShipping2F/scripts.pory"
	applymovement LOCALID_SEABREEZE_SHIPPING2F_PRESIDENT, SeabreezeShipping2F_Movement_PresidentExit
# 59 "data/maps/SeabreezeShipping2F/scripts.pory"
	waitmovement 0
# 60 "data/maps/SeabreezeShipping2F/scripts.pory"
	removeobject LOCALID_SEABREEZE_SHIPPING2F_PRESIDENT
# 61 "data/maps/SeabreezeShipping2F/scripts.pory"

# 62 "data/maps/SeabreezeShipping2F/scripts.pory"
	applymovement LOCALID_SEABREEZE_SHIPPING2F_ACCOUNTANT, SeabreezeShipping2F_Movement_AccountantApproach
# 63 "data/maps/SeabreezeShipping2F/scripts.pory"
	waitmovement 0
# 64 "data/maps/SeabreezeShipping2F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceDown
# 65 "data/maps/SeabreezeShipping2F/scripts.pory"
	waitmovement 0
# 66 "data/maps/SeabreezeShipping2F/scripts.pory"
	msgbox SeabreezeShipping2F_Text_AccountantChallenge, MSGBOX_DEFAULT
# 67 "data/maps/SeabreezeShipping2F/scripts.pory"
	setflag FLAG_SEABREEZE_SHIPPING_HQ_COMPLETE
# 68 "data/maps/SeabreezeShipping2F/scripts.pory"
	trainerbattle_no_intro TRAINER_ACCOUNTANT_JUAN, SeabreezeShipping2F_Text_AccountantDefeat
# 69 "data/maps/SeabreezeShipping2F/scripts.pory"
	releaseall
# 70 "data/maps/SeabreezeShipping2F/scripts.pory"
	end
# 71 "data/maps/SeabreezeShipping2F/scripts.pory"

# 72 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_EventScript_Accountant::
# 73 "data/maps/SeabreezeShipping2F/scripts.pory"
	lock
# 74 "data/maps/SeabreezeShipping2F/scripts.pory"
	faceplayer
# 75 "data/maps/SeabreezeShipping2F/scripts.pory"
	goto_if_set FLAG_SEABREEZE_SHIPPING_HQ_COMPLETE, SeabreezeShipping2F_EventScript_AccountantAfterBattle
# 76 "data/maps/SeabreezeShipping2F/scripts.pory"
	msgbox SeabreezeShipping2F_Text_AccountantGrumbling, MSGBOX_DEFAULT
# 77 "data/maps/SeabreezeShipping2F/scripts.pory"
	release
# 78 "data/maps/SeabreezeShipping2F/scripts.pory"
	end
# 79 "data/maps/SeabreezeShipping2F/scripts.pory"

# 80 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_EventScript_AccountantAfterBattle::
# 81 "data/maps/SeabreezeShipping2F/scripts.pory"
	msgbox SeabreezeShipping2F_Text_AccountantAfterBattle, MSGBOX_DEFAULT
# 82 "data/maps/SeabreezeShipping2F/scripts.pory"
	release
# 83 "data/maps/SeabreezeShipping2F/scripts.pory"
	end
# 84 "data/maps/SeabreezeShipping2F/scripts.pory"

# 85 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_Movement_AlejandroToPlayerColumn:
# 86 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_left
# 87 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_left
# 88 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_left
# 89 "data/maps/SeabreezeShipping2F/scripts.pory"
	step_end
# 90 "data/maps/SeabreezeShipping2F/scripts.pory"

# 91 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_Movement_PlayerMoveAside:
# 92 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_left
# 93 "data/maps/SeabreezeShipping2F/scripts.pory"
	step_end
# 94 "data/maps/SeabreezeShipping2F/scripts.pory"

# 95 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_Movement_AlejandroToDoor:
# 96 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_up
# 97 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_up
# 98 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_up
# 99 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_up
# 100 "data/maps/SeabreezeShipping2F/scripts.pory"
	step_end
# 101 "data/maps/SeabreezeShipping2F/scripts.pory"

# 102 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_Movement_PlayerListen:
# 103 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_down
# 104 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_down
# 105 "data/maps/SeabreezeShipping2F/scripts.pory"
	face_right
# 106 "data/maps/SeabreezeShipping2F/scripts.pory"
	step_end
# 107 "data/maps/SeabreezeShipping2F/scripts.pory"

# 108 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_Movement_PresidentToDoor:
# 109 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_up
# 110 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_up
# 111 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_left
# 112 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_left
# 113 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_left
# 114 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_left
# 115 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_left
# 116 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_left
# 117 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_up
# 118 "data/maps/SeabreezeShipping2F/scripts.pory"
	step_end
# 119 "data/maps/SeabreezeShipping2F/scripts.pory"

# 120 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_Movement_PresidentExit:
# 121 "data/maps/SeabreezeShipping2F/scripts.pory"
	face_up
# 122 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_up
# 123 "data/maps/SeabreezeShipping2F/scripts.pory"
	step_end
# 124 "data/maps/SeabreezeShipping2F/scripts.pory"

# 125 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_Movement_AccountantApproach:
# 126 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_right
# 127 "data/maps/SeabreezeShipping2F/scripts.pory"
	walk_right
# 128 "data/maps/SeabreezeShipping2F/scripts.pory"
	face_up
# 129 "data/maps/SeabreezeShipping2F/scripts.pory"
	step_end
# 130 "data/maps/SeabreezeShipping2F/scripts.pory"

# 131 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_Text_PresidentBusiness:
# 132 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "PRESIDENT: The shipment is ready.\p"
# 133 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "Once the paperwork is filed, nobody\n"
# 134 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "will know where the cargo really came\l"
# 135 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "from.$"
# 136 "data/maps/SeabreezeShipping2F/scripts.pory"

# 137 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_Text_AlejandroBusiness:
# 138 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "ALEJANDRO: Excellent.\p"
# 139 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "TEAM AQUA will have no trouble\n"
# 140 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "moving it through the port.$"
# 141 "data/maps/SeabreezeShipping2F/scripts.pory"

# 142 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_Text_PresidentWarning:
# 143 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "PRESIDENT: If anyone learns\n"
# 144 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "what this company is involved in...$"
# 145 "data/maps/SeabreezeShipping2F/scripts.pory"

# 146 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_Text_AlejandroOverheard:
# 147 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "ALEJANDRO: Well, well. I didn't expect\n"
# 148 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "you to show up here. It doesn't\l"
# 149 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "matter, though. Nothing can stop this\l"
# 150 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "operation now.$"
# 151 "data/maps/SeabreezeShipping2F/scripts.pory"

# 152 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_Text_PresidentFlustered:
# 153 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "This isn't what it looks like! I have no\n"
# 154 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "affiliation with TEAM AQUA!$"
# 155 "data/maps/SeabreezeShipping2F/scripts.pory"

# 156 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_Text_PresidentDemand:
# 157 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "I was assured there would be no risk if\n"
# 158 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "I took on this role!\p"
# 159 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "JUAN! You have POKéMON, don't you?\n"
# 160 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "Battle that brat and buy me some time!$"
# 161 "data/maps/SeabreezeShipping2F/scripts.pory"

# 162 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_Text_AccountantChallenge:
# 163 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "Seriously? I don't have enough work?\p"
# 164 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "Not to mention that this is not even\n"
# 165 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "remotely part of my job description.\p"
# 166 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "You know what? Fine. I need to blow off\n"
# 167 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "some steam anyway.$"
# 168 "data/maps/SeabreezeShipping2F/scripts.pory"

# 169 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_Text_AccountantDefeat:
# 170 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "Well, at least I got to vent my\n"
# 171 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "frustration. Back to work.$"
# 172 "data/maps/SeabreezeShipping2F/scripts.pory"

# 173 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_Text_AccountantGrumbling:
# 174 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "I have too much accounting work to do\n"
# 175 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "already. Why am I being dragged into\l"
# 176 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "this as well?$"
# 177 "data/maps/SeabreezeShipping2F/scripts.pory"

# 178 "data/maps/SeabreezeShipping2F/scripts.pory"
SeabreezeShipping2F_Text_AccountantAfterBattle:
# 179 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "What? It's not like our battle was\n"
# 180 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "personal, kid. Shouldn't you be chasing\l"
# 181 "data/maps/SeabreezeShipping2F/scripts.pory"
	.string "after those AQUA guys? I have work to do.$"
