# 1 "data/maps/SeabreezeShipping1F/scripts.pory"

# 2 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_MapScripts::
# 3 "data/maps/SeabreezeShipping1F/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, SeabreezeShipping1F_OnTransition
# 4 "data/maps/SeabreezeShipping1F/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, SeabreezeShipping1F_OnFrame
# 5 "data/maps/SeabreezeShipping1F/scripts.pory"
	.byte 0
# 6 "data/maps/SeabreezeShipping1F/scripts.pory"

# 7 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_OnTransition:
# 8 "data/maps/SeabreezeShipping1F/scripts.pory"
	getplayerxy VAR_TEMP_2, VAR_TEMP_3
# 9 "data/maps/SeabreezeShipping1F/scripts.pory"
	goto_if_ne VAR_TEMP_2, 2, SeabreezeShipping1F_EventScript_CheckElevatorArrival
# 10 "data/maps/SeabreezeShipping1F/scripts.pory"
	goto_if_ne VAR_TEMP_3, 2, SeabreezeShipping1F_EventScript_CheckElevatorArrival
# 11 "data/maps/SeabreezeShipping1F/scripts.pory"
	setvar VAR_TEMP_1, 2
# 12 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 13 "data/maps/SeabreezeShipping1F/scripts.pory"

# 14 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_CheckElevatorArrival::
# 15 "data/maps/SeabreezeShipping1F/scripts.pory"
	goto_if_eq VAR_TEMP_0, 1, SeabreezeShipping1F_EventScript_SetFaceUpOnArrival
# 16 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 17 "data/maps/SeabreezeShipping1F/scripts.pory"

# 18 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_OnFrame:
# 19 "data/maps/SeabreezeShipping1F/scripts.pory"
	map_script_2 VAR_TEMP_1, 1, SeabreezeShipping1F_EventScript_FaceUpOnArrival
# 20 "data/maps/SeabreezeShipping1F/scripts.pory"
	map_script_2 VAR_TEMP_1, 2, SeabreezeShipping1F_EventScript_FaceDownOnArrival
# 21 "data/maps/SeabreezeShipping1F/scripts.pory"
	.2byte 0
# 22 "data/maps/SeabreezeShipping1F/scripts.pory"

# 23 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_SetFaceUpOnArrival::
# 24 "data/maps/SeabreezeShipping1F/scripts.pory"
	setvar VAR_TEMP_0, 0
# 25 "data/maps/SeabreezeShipping1F/scripts.pory"
	setvar VAR_TEMP_1, 1
# 26 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 27 "data/maps/SeabreezeShipping1F/scripts.pory"

# 28 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_FaceUpOnArrival::
# 29 "data/maps/SeabreezeShipping1F/scripts.pory"
	setvar VAR_TEMP_1, 0
# 30 "data/maps/SeabreezeShipping1F/scripts.pory"
	lockall
# 31 "data/maps/SeabreezeShipping1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceUp
# 32 "data/maps/SeabreezeShipping1F/scripts.pory"
	waitmovement 0
# 33 "data/maps/SeabreezeShipping1F/scripts.pory"
	releaseall
# 34 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 35 "data/maps/SeabreezeShipping1F/scripts.pory"

# 36 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_FaceDownOnArrival::
# 37 "data/maps/SeabreezeShipping1F/scripts.pory"
	setvar VAR_TEMP_1, 0
# 38 "data/maps/SeabreezeShipping1F/scripts.pory"
	lockall
# 39 "data/maps/SeabreezeShipping1F/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceDown
# 40 "data/maps/SeabreezeShipping1F/scripts.pory"
	waitmovement 0
# 41 "data/maps/SeabreezeShipping1F/scripts.pory"
	releaseall
# 42 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 43 "data/maps/SeabreezeShipping1F/scripts.pory"

# 44 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_Employee1::
# 45 "data/maps/SeabreezeShipping1F/scripts.pory"
	lock
# 46 "data/maps/SeabreezeShipping1F/scripts.pory"
	faceplayer
# 47 "data/maps/SeabreezeShipping1F/scripts.pory"
	msgbox SeabreezeShipping1F_Text_Employee1, MSGBOX_NPC
# 48 "data/maps/SeabreezeShipping1F/scripts.pory"
	release
# 49 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 50 "data/maps/SeabreezeShipping1F/scripts.pory"

# 51 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_Employee2::
# 52 "data/maps/SeabreezeShipping1F/scripts.pory"
	lock
# 53 "data/maps/SeabreezeShipping1F/scripts.pory"
	faceplayer
# 54 "data/maps/SeabreezeShipping1F/scripts.pory"
	msgbox SeabreezeShipping1F_Text_Employee2, MSGBOX_NPC
# 55 "data/maps/SeabreezeShipping1F/scripts.pory"
	release
# 56 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 57 "data/maps/SeabreezeShipping1F/scripts.pory"

# 58 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_Employee3::
# 59 "data/maps/SeabreezeShipping1F/scripts.pory"
	lock
# 60 "data/maps/SeabreezeShipping1F/scripts.pory"
	faceplayer
# 61 "data/maps/SeabreezeShipping1F/scripts.pory"
	msgbox SeabreezeShipping1F_Text_Employee3, MSGBOX_NPC
# 62 "data/maps/SeabreezeShipping1F/scripts.pory"
	release
# 63 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 64 "data/maps/SeabreezeShipping1F/scripts.pory"

# 65 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_Employee4::
# 66 "data/maps/SeabreezeShipping1F/scripts.pory"
	lock
# 67 "data/maps/SeabreezeShipping1F/scripts.pory"
	faceplayer
# 68 "data/maps/SeabreezeShipping1F/scripts.pory"
	msgbox SeabreezeShipping1F_Text_Employee4, MSGBOX_NPC
# 69 "data/maps/SeabreezeShipping1F/scripts.pory"
	release
# 70 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 71 "data/maps/SeabreezeShipping1F/scripts.pory"

# 72 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_Grunt1::
# 73 "data/maps/SeabreezeShipping1F/scripts.pory"
	trainerbattle_single TRAINER_SEABREEZE_SHIPPING1F_GRUNT_1, SeabreezeShipping1F_Text_Grunt1Intro, SeabreezeShipping1F_Text_Grunt1Defeat
# 74 "data/maps/SeabreezeShipping1F/scripts.pory"
	msgbox SeabreezeShipping1F_Text_Grunt1PostBattle, MSGBOX_AUTOCLOSE
# 75 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 76 "data/maps/SeabreezeShipping1F/scripts.pory"

# 77 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_Grunt2::
# 78 "data/maps/SeabreezeShipping1F/scripts.pory"
	trainerbattle_single TRAINER_SEABREEZE_SHIPPING1F_GRUNT_2, SeabreezeShipping1F_Text_Grunt2Intro, SeabreezeShipping1F_Text_Grunt2Defeat
# 79 "data/maps/SeabreezeShipping1F/scripts.pory"
	msgbox SeabreezeShipping1F_Text_Grunt2PostBattle, MSGBOX_AUTOCLOSE
# 80 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 81 "data/maps/SeabreezeShipping1F/scripts.pory"

# 82 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_Grunt3::
# 83 "data/maps/SeabreezeShipping1F/scripts.pory"
	trainerbattle_single TRAINER_SEABREEZE_SHIPPING1F_GRUNT_3, SeabreezeShipping1F_Text_Grunt3Intro, SeabreezeShipping1F_Text_Grunt3Defeat
# 84 "data/maps/SeabreezeShipping1F/scripts.pory"
	msgbox SeabreezeShipping1F_Text_Grunt3PostBattle, MSGBOX_AUTOCLOSE
# 85 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 86 "data/maps/SeabreezeShipping1F/scripts.pory"

# 87 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_Elevatorman::
# 88 "data/maps/SeabreezeShipping1F/scripts.pory"
	lock
# 89 "data/maps/SeabreezeShipping1F/scripts.pory"
	faceplayer
# 90 "data/maps/SeabreezeShipping1F/scripts.pory"
	goto_if_unset FLAG_CARGO_SHIP_EVENT_COMPLETE, SeabreezeShipping1F_EventScript_ElevatormanClosed
# 91 "data/maps/SeabreezeShipping1F/scripts.pory"
	goto_if_unset FLAG_SEABREEZE_SHIPPING_HQ_KEY_CARD_FOUND, SeabreezeShipping1F_EventScript_ElevatormanClosed
# 92 "data/maps/SeabreezeShipping1F/scripts.pory"
	msgbox SeabreezeShipping1F_Text_Elevatorman_GoDown, MSGBOX_YESNO
# 93 "data/maps/SeabreezeShipping1F/scripts.pory"
	goto_if_eq VAR_RESULT, YES, SeabreezeShipping1F_EventScript_ElevatormanGoDown
# 94 "data/maps/SeabreezeShipping1F/scripts.pory"
	release
# 95 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 96 "data/maps/SeabreezeShipping1F/scripts.pory"

# 97 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_ElevatormanClosed::
# 98 "data/maps/SeabreezeShipping1F/scripts.pory"
	msgbox SeabreezeShipping1F_Text_Elevatorman_Closed, MSGBOX_NPC
# 99 "data/maps/SeabreezeShipping1F/scripts.pory"
	release
# 100 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 101 "data/maps/SeabreezeShipping1F/scripts.pory"

# 102 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_EventScript_ElevatormanGoDown::
# 103 "data/maps/SeabreezeShipping1F/scripts.pory"
	setvar VAR_TEMP_0, 2
# 104 "data/maps/SeabreezeShipping1F/scripts.pory"
	closemessage
# 105 "data/maps/SeabreezeShipping1F/scripts.pory"
	fadescreen FADE_TO_BLACK
# 106 "data/maps/SeabreezeShipping1F/scripts.pory"
	playse SE_ELEVATOR
# 107 "data/maps/SeabreezeShipping1F/scripts.pory"
	waitse
# 108 "data/maps/SeabreezeShipping1F/scripts.pory"
	warp MAP_SEABREEZE_SHIPPING, 12, 4
# 109 "data/maps/SeabreezeShipping1F/scripts.pory"
	waitstate
# 110 "data/maps/SeabreezeShipping1F/scripts.pory"
	end
# 111 "data/maps/SeabreezeShipping1F/scripts.pory"

# 112 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_Text_Elevatorman_Closed:
# 113 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "Sorry, kid, the building is\n"
# 114 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "closed.$"
# 115 "data/maps/SeabreezeShipping1F/scripts.pory"

# 116 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_Text_Elevatorman_GoDown:
# 117 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "Would you like to go down?$"
# 118 "data/maps/SeabreezeShipping1F/scripts.pory"

# 119 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_Text_Employee1:
# 120 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "Something about these new orders\n"
# 121 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "doesn't feel right. I've been asked to\l"
# 122 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "change the cargo records, but I never\l"
# 123 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "saw the shipments myself.$"
# 124 "data/maps/SeabreezeShipping1F/scripts.pory"

# 125 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_Text_Employee2:
# 126 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "Those AQUA members have been watching\n"
# 127 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "us all day. Is the PRESIDENT really\l"
# 128 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "okay with this?$"
# 129 "data/maps/SeabreezeShipping1F/scripts.pory"

# 130 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_Text_Employee3:
# 131 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "The president says everything is\n"
# 132 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "legitimate, but why are we changing the\l"
# 133 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "destinations after the cargo is loaded?\p"
# 134 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "I really don't get paid enough for this.$"
# 135 "data/maps/SeabreezeShipping1F/scripts.pory"

# 136 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_Text_Employee4:
# 137 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "I thought I worked for a shipping\n"
# 138 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "company, not a smuggling operation.\p"
# 139 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "Please don't tell them I said that.$"
# 140 "data/maps/SeabreezeShipping1F/scripts.pory"

# 141 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_Text_Grunt1Intro:
# 142 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "Hey! No one is supposed to go upstairs\n"
# 143 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "while the boss is having his meeting.\p"
# 144 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "Your trespassing ends here, kid!$"
# 145 "data/maps/SeabreezeShipping1F/scripts.pory"

# 146 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_Text_Grunt1Defeat:
# 147 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "What? How did I lose to someone who\n"
# 148 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "looks so ridiculous?$"
# 149 "data/maps/SeabreezeShipping1F/scripts.pory"

# 150 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_Text_Grunt1PostBattle:
# 151 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "We were told this would be an easy\n"
# 152 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "assignment. No one told me I'd have\l"
# 153 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "to fight some crazy strong kid\l"
# 154 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "wearing RPG cosplay!$"
# 155 "data/maps/SeabreezeShipping1F/scripts.pory"

# 156 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_Text_Grunt2Intro:
# 157 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "The workers have their orders, and we're\n"
# 158 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "here to make sure they follow them.$"
# 159 "data/maps/SeabreezeShipping1F/scripts.pory"

# 160 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_Text_Grunt2Defeat:
# 161 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "Hey! You embarrassed me in front of\n"
# 162 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "all these minimum wage losers!$"
# 163 "data/maps/SeabreezeShipping1F/scripts.pory"

# 164 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_Text_Grunt2PostBattle:
# 165 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "The workers will keep quiet if they know\n"
# 166 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "what's good for them.$"
# 167 "data/maps/SeabreezeShipping1F/scripts.pory"

# 168 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_Text_Grunt3Intro:
# 169 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "This shipping company is under TEAM\n"
# 170 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "AQUA's protection. You don't have\l"
# 171 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "permission to interfere!$"
# 172 "data/maps/SeabreezeShipping1F/scripts.pory"

# 173 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_Text_Grunt3Defeat:
# 174 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "The boss won't be happy about\n"
# 175 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "this...$"
# 176 "data/maps/SeabreezeShipping1F/scripts.pory"

# 177 "data/maps/SeabreezeShipping1F/scripts.pory"
SeabreezeShipping1F_Text_Grunt3PostBattle:
# 178 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "Want to know a secret?\p"
# 179 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "This company's PRESIDENT is really\n"
# 180 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "just a puppet planted by TEAM AQUA.\p"
# 181 "data/maps/SeabreezeShipping1F/scripts.pory"
	.string "That's the level of power we command.$"
