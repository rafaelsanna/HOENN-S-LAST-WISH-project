# 1 "data/maps/CargoShip/scripts.pory"

# 2 "data/maps/CargoShip/scripts.pory"
@ Event scripts for CargoShip
# 3 "data/maps/CargoShip/scripts.pory"
@
# 4 "data/maps/CargoShip/scripts.pory"
	.align 2
# 5 "data/maps/CargoShip/scripts.pory"

# 6 "data/maps/CargoShip/scripts.pory"
CargoShip_MapScripts::
# 7 "data/maps/CargoShip/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, CargoShip_OnTransition
# 8 "data/maps/CargoShip/scripts.pory"
	.byte 0
# 9 "data/maps/CargoShip/scripts.pory"

# 10 "data/maps/CargoShip/scripts.pory"
CargoShip_OnTransition:
# 11 "data/maps/CargoShip/scripts.pory"
	setflag FLAG_HIDE_CARGO_SHIP_PIDGEOT
# 12 "data/maps/CargoShip/scripts.pory"
	goto_if_unset FLAG_LUKA_SLATEPORT_CARGO_INTRO, CargoShip_EventScript_HideLuka
# 13 "data/maps/CargoShip/scripts.pory"
	goto_if_set FLAG_LUKA_CARGO_SHIP_ENCOUNTERED, CargoShip_EventScript_SetLukaAfterScene
# 14 "data/maps/CargoShip/scripts.pory"
	goto CargoShip_EventScript_HideLuka
# 15 "data/maps/CargoShip/scripts.pory"

# 16 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_HideLuka::
# 17 "data/maps/CargoShip/scripts.pory"
	setflag FLAG_HIDE_CARGO_SHIP_LUKA
# 18 "data/maps/CargoShip/scripts.pory"
	end
# 19 "data/maps/CargoShip/scripts.pory"

# 20 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_SetLukaAfterScene::
# 21 "data/maps/CargoShip/scripts.pory"
	setflag FLAG_HIDE_CARGO_SHIP_LUKA
# 22 "data/maps/CargoShip/scripts.pory"
	setobjectxyperm LOCALID_CARGO_SHIP_SAILOR, 3, 2
# 23 "data/maps/CargoShip/scripts.pory"
	setobjectmovementtype LOCALID_CARGO_SHIP_SAILOR, MOVEMENT_TYPE_LOOK_AROUND
# 24 "data/maps/CargoShip/scripts.pory"
	end
# 25 "data/maps/CargoShip/scripts.pory"

# 26 "data/maps/CargoShip/scripts.pory"
@ Called when Luka's upper-deck scene has been completed.
# 27 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_MarkLukaEncountered::
# 28 "data/maps/CargoShip/scripts.pory"
	setflag FLAG_LUKA_CARGO_SHIP_ENCOUNTERED
# 29 "data/maps/CargoShip/scripts.pory"
	return
# 30 "data/maps/CargoShip/scripts.pory"

# 31 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_Scientist1::
# 32 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_Scientist1_1, MSGBOX_NPC
# 33 "data/maps/CargoShip/scripts.pory"
	end
# 34 "data/maps/CargoShip/scripts.pory"

# 35 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_AquaMemberM::
# 36 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_AquaMemberM_1, MSGBOX_NPC
# 37 "data/maps/CargoShip/scripts.pory"
	end
# 38 "data/maps/CargoShip/scripts.pory"

# 39 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_AquaMemberM_Trainer::
# 40 "data/maps/CargoShip/scripts.pory"
	trainerbattle_single TRAINER_AQUA_MEMBER_CARGO_SHIP, CargoShip_Text_AquaMemberIntro, CargoShip_Text_AquaMemberDefeated
# 41 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_AquaMemberPostBattle, MSGBOX_AUTOCLOSE
# 42 "data/maps/CargoShip/scripts.pory"
	end
# 43 "data/maps/CargoShip/scripts.pory"

# 44 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_AquaMemberF::
# 45 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_AquaMemberF_1, MSGBOX_NPC
# 46 "data/maps/CargoShip/scripts.pory"
	end
# 47 "data/maps/CargoShip/scripts.pory"

# 48 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_Scientist2::
# 49 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_Scientist2_1, MSGBOX_NPC
# 50 "data/maps/CargoShip/scripts.pory"
	end
# 51 "data/maps/CargoShip/scripts.pory"

# 52 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_Sailor::
# 53 "data/maps/CargoShip/scripts.pory"
	lock
# 54 "data/maps/CargoShip/scripts.pory"
	faceplayer
# 55 "data/maps/CargoShip/scripts.pory"
	goto_if_unset FLAG_LUKA_SLATEPORT_CARGO_INTRO, CargoShip_EventScript_SailorBeforeLuka
# 56 "data/maps/CargoShip/scripts.pory"
	goto_if_set FLAG_LUKA_CARGO_SHIP_ENCOUNTERED, CargoShip_EventScript_SailorAfterLuka
# 57 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_Sailor_1, MSGBOX_NPC
# 58 "data/maps/CargoShip/scripts.pory"
	closemessage
# 59 "data/maps/CargoShip/scripts.pory"
	goto CargoShip_EventScript_LukaCargoShipIntro
# 60 "data/maps/CargoShip/scripts.pory"

# 61 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_SailorBeforeLuka::
# 62 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_Sailor_1, MSGBOX_NPC
# 63 "data/maps/CargoShip/scripts.pory"
	release
# 64 "data/maps/CargoShip/scripts.pory"
	end
# 65 "data/maps/CargoShip/scripts.pory"

# 66 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_SailorAfterLuka::
# 67 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_SailorConfused, MSGBOX_NPC
# 68 "data/maps/CargoShip/scripts.pory"
	release
# 69 "data/maps/CargoShip/scripts.pory"
	end
# 70 "data/maps/CargoShip/scripts.pory"

# 71 "data/maps/CargoShip/scripts.pory"
CargoShip_EventScript_LukaCargoShipIntro::
# 72 "data/maps/CargoShip/scripts.pory"
	lockall
# 73 "data/maps/CargoShip/scripts.pory"
	clearflag FLAG_HIDE_CARGO_SHIP_LUKA
# 74 "data/maps/CargoShip/scripts.pory"
	setobjectxyperm LOCALID_CARGO_SHIP_LUKA, 10, 1
# 75 "data/maps/CargoShip/scripts.pory"
	addobject LOCALID_CARGO_SHIP_LUKA
# 76 "data/maps/CargoShip/scripts.pory"
	applymovement LOCALID_CARGO_SHIP_LUKA, CargoShip_Movement_LukaEnter
# 77 "data/maps/CargoShip/scripts.pory"
	waitmovement 0
# 78 "data/maps/CargoShip/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FacePlayer
# 79 "data/maps/CargoShip/scripts.pory"
	waitmovement 0
# 80 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_LukaCargoShipIntro, MSGBOX_DEFAULT
# 81 "data/maps/CargoShip/scripts.pory"
	applymovement LOCALID_PLAYER, CargoShip_Movement_PlayerMoveAside
# 82 "data/maps/CargoShip/scripts.pory"
	waitmovement 0
# 83 "data/maps/CargoShip/scripts.pory"
	playse SE_BALL_THROW
# 84 "data/maps/CargoShip/scripts.pory"
	clearflag FLAG_HIDE_CARGO_SHIP_PIDGEOT
# 85 "data/maps/CargoShip/scripts.pory"
	setobjectxyperm LOCALID_CARGO_SHIP_PIDGEOT, 4, 3
# 86 "data/maps/CargoShip/scripts.pory"
	addobject LOCALID_CARGO_SHIP_PIDGEOT
# 87 "data/maps/CargoShip/scripts.pory"
	waitse
# 88 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_LukaUseConfusion, MSGBOX_DEFAULT
# 89 "data/maps/CargoShip/scripts.pory"
	playmoncry SPECIES_PIDGEOT, CRY_MODE_NORMAL
# 90 "data/maps/CargoShip/scripts.pory"
	waitmoncry
# 91 "data/maps/CargoShip/scripts.pory"
	playse SE_PIN
# 92 "data/maps/CargoShip/scripts.pory"
	applymovement LOCALID_CARGO_SHIP_SAILOR, Common_Movement_ExclamationMark
# 93 "data/maps/CargoShip/scripts.pory"
	waitmovement 0
# 94 "data/maps/CargoShip/scripts.pory"
	waitse
# 95 "data/maps/CargoShip/scripts.pory"
	applymovement LOCALID_CARGO_SHIP_SAILOR, CargoShip_Movement_SailorSpin
# 96 "data/maps/CargoShip/scripts.pory"
	waitmovement 0
# 97 "data/maps/CargoShip/scripts.pory"
	delay 30
# 98 "data/maps/CargoShip/scripts.pory"
	fadescreen FADE_TO_BLACK
# 99 "data/maps/CargoShip/scripts.pory"
	removeobject LOCALID_CARGO_SHIP_PIDGEOT
# 100 "data/maps/CargoShip/scripts.pory"
	setflag FLAG_HIDE_CARGO_SHIP_PIDGEOT
# 101 "data/maps/CargoShip/scripts.pory"
	removeobject LOCALID_CARGO_SHIP_SAILOR
# 102 "data/maps/CargoShip/scripts.pory"
	setobjectxyperm LOCALID_CARGO_SHIP_SAILOR, 3, 2
# 103 "data/maps/CargoShip/scripts.pory"
	setobjectmovementtype LOCALID_CARGO_SHIP_SAILOR, MOVEMENT_TYPE_LOOK_AROUND
# 104 "data/maps/CargoShip/scripts.pory"
	addobject LOCALID_CARGO_SHIP_SAILOR
# 105 "data/maps/CargoShip/scripts.pory"
	setobjectxyperm LOCALID_CARGO_SHIP_LUKA, 6, 3
# 106 "data/maps/CargoShip/scripts.pory"
	setobjectxy LOCALID_CARGO_SHIP_LUKA, 6, 3
# 107 "data/maps/CargoShip/scripts.pory"
	setobjectxy LOCALID_PLAYER, 5, 3
# 108 "data/maps/CargoShip/scripts.pory"
	applymovement LOCALID_CARGO_SHIP_LUKA, Common_Movement_FaceLeft
# 109 "data/maps/CargoShip/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceRight
# 110 "data/maps/CargoShip/scripts.pory"
	waitmovement 0
# 111 "data/maps/CargoShip/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 112 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_SailorConfused, MSGBOX_DEFAULT
# 113 "data/maps/CargoShip/scripts.pory"
	msgbox CargoShip_Text_LukaThatTakesCareOfHim, MSGBOX_DEFAULT
# 114 "data/maps/CargoShip/scripts.pory"
	closemessage
# 115 "data/maps/CargoShip/scripts.pory"
	applymovement LOCALID_PLAYER, CargoShip_Movement_PlayerEnterHold
# 116 "data/maps/CargoShip/scripts.pory"
	waitmovement 0
# 117 "data/maps/CargoShip/scripts.pory"
	hideobjectat LOCALID_PLAYER, MAP_CARGO_SHIP
# 118 "data/maps/CargoShip/scripts.pory"
	applymovement LOCALID_CARGO_SHIP_LUKA, CargoShip_Movement_LukaEnterHold
# 119 "data/maps/CargoShip/scripts.pory"
	waitmovement 0
# 120 "data/maps/CargoShip/scripts.pory"
	removeobject LOCALID_CARGO_SHIP_LUKA
# 121 "data/maps/CargoShip/scripts.pory"
	call CargoShip_EventScript_MarkLukaEncountered
# 122 "data/maps/CargoShip/scripts.pory"
	warp MAP_CARGO_SHIP_B1FHOLD, 20, 0
# 123 "data/maps/CargoShip/scripts.pory"
	waitstate
# 124 "data/maps/CargoShip/scripts.pory"
	releaseall
# 125 "data/maps/CargoShip/scripts.pory"
	end
# 126 "data/maps/CargoShip/scripts.pory"

# 127 "data/maps/CargoShip/scripts.pory"
CargoShip_Movement_LukaEnter:
# 128 "data/maps/CargoShip/scripts.pory"
	walk_down
# 129 "data/maps/CargoShip/scripts.pory"
	walk_down
# 130 "data/maps/CargoShip/scripts.pory"
	walk_left
# 131 "data/maps/CargoShip/scripts.pory"
	walk_left
# 132 "data/maps/CargoShip/scripts.pory"
	walk_left
# 133 "data/maps/CargoShip/scripts.pory"
	walk_left
# 134 "data/maps/CargoShip/scripts.pory"
	walk_left
# 135 "data/maps/CargoShip/scripts.pory"
	face_player
# 136 "data/maps/CargoShip/scripts.pory"
	step_end
# 137 "data/maps/CargoShip/scripts.pory"

# 138 "data/maps/CargoShip/scripts.pory"
CargoShip_Movement_PlayerMoveAside:
# 139 "data/maps/CargoShip/scripts.pory"
	walk_up
# 140 "data/maps/CargoShip/scripts.pory"
	walk_right
# 141 "data/maps/CargoShip/scripts.pory"
	walk_right
# 142 "data/maps/CargoShip/scripts.pory"
	face_left
# 143 "data/maps/CargoShip/scripts.pory"
	step_end
# 144 "data/maps/CargoShip/scripts.pory"

# 145 "data/maps/CargoShip/scripts.pory"
CargoShip_Movement_SailorSpin:
# 146 "data/maps/CargoShip/scripts.pory"
	face_right
# 147 "data/maps/CargoShip/scripts.pory"
	face_down
# 148 "data/maps/CargoShip/scripts.pory"
	face_left
# 149 "data/maps/CargoShip/scripts.pory"
	face_up
# 150 "data/maps/CargoShip/scripts.pory"
	face_right
# 151 "data/maps/CargoShip/scripts.pory"
	face_down
# 152 "data/maps/CargoShip/scripts.pory"
	face_left
# 153 "data/maps/CargoShip/scripts.pory"
	face_up
# 154 "data/maps/CargoShip/scripts.pory"
	face_right
# 155 "data/maps/CargoShip/scripts.pory"
	face_down
# 156 "data/maps/CargoShip/scripts.pory"
	face_left
# 157 "data/maps/CargoShip/scripts.pory"
	face_up
# 158 "data/maps/CargoShip/scripts.pory"
	step_end
# 159 "data/maps/CargoShip/scripts.pory"

# 160 "data/maps/CargoShip/scripts.pory"
CargoShip_Movement_PlayerEnterHold:
# 161 "data/maps/CargoShip/scripts.pory"
	walk_left
# 162 "data/maps/CargoShip/scripts.pory"
	walk_down
# 163 "data/maps/CargoShip/scripts.pory"
	walk_down
# 164 "data/maps/CargoShip/scripts.pory"
	step_end
# 165 "data/maps/CargoShip/scripts.pory"

# 166 "data/maps/CargoShip/scripts.pory"
CargoShip_Movement_LukaEnterHold:
# 167 "data/maps/CargoShip/scripts.pory"
	walk_left
# 168 "data/maps/CargoShip/scripts.pory"
	walk_left
# 169 "data/maps/CargoShip/scripts.pory"
	walk_down
# 170 "data/maps/CargoShip/scripts.pory"
	walk_down
# 171 "data/maps/CargoShip/scripts.pory"
	step_end
# 172 "data/maps/CargoShip/scripts.pory"

# 173 "data/maps/CargoShip/scripts.pory"
CargoShip_Text_Scientist1_1:
# 174 "data/maps/CargoShip/scripts.pory"
	.string "My coworkers are the shady sort, but\nthe research potential is unbeatable!$"
# 175 "data/maps/CargoShip/scripts.pory"

# 176 "data/maps/CargoShip/scripts.pory"
CargoShip_Text_AquaMemberM_1:
# 177 "data/maps/CargoShip/scripts.pory"
	.string "We're transporting something important\nhere.\pKeep away from the cargo, kid!$"
# 178 "data/maps/CargoShip/scripts.pory"

# 179 "data/maps/CargoShip/scripts.pory"
CargoShip_Text_AquaMemberF_1:
# 180 "data/maps/CargoShip/scripts.pory"
	.string "How did a kid get in here?\pWhatever. I don't get paid enough\nto care.\pJust don't touch anything.$"
# 181 "data/maps/CargoShip/scripts.pory"

# 182 "data/maps/CargoShip/scripts.pory"
CargoShip_Text_Scientist2_1:
# 183 "data/maps/CargoShip/scripts.pory"
	.string "This ship could really use a better\nengine.\pIf everything goes well, we should\nbe able to afford one soon.$"
# 184 "data/maps/CargoShip/scripts.pory"

# 185 "data/maps/CargoShip/scripts.pory"
CargoShip_Text_Sailor_1:
# 186 "data/maps/CargoShip/scripts.pory"
	.string "You want to battle me?\n"
# 187 "data/maps/CargoShip/scripts.pory"
	.string "To get through here?\p"
# 188 "data/maps/CargoShip/scripts.pory"
	.string "Sorry, kid. I have more sense than\n"
# 189 "data/maps/CargoShip/scripts.pory"
	.string "the loser you fought at the door.\p"
# 190 "data/maps/CargoShip/scripts.pory"
	.string "Scram.$"
# 191 "data/maps/CargoShip/scripts.pory"

# 192 "data/maps/CargoShip/scripts.pory"
CargoShip_Text_LukaCargoShipIntro:
# 193 "data/maps/CargoShip/scripts.pory"
	.string "LUKA: Looks like we were right to check\n"
# 194 "data/maps/CargoShip/scripts.pory"
	.string "things out. There's definitely something\l"
# 195 "data/maps/CargoShip/scripts.pory"
	.string "going on here.\p"
# 196 "data/maps/CargoShip/scripts.pory"
	.string "This guy won't let you\n"
# 197 "data/maps/CargoShip/scripts.pory"
	.string "through? I'll take care of that.$"
# 198 "data/maps/CargoShip/scripts.pory"

# 199 "data/maps/CargoShip/scripts.pory"
CargoShip_Text_LukaUseConfusion:
# 200 "data/maps/CargoShip/scripts.pory"
	.string "LUKA: PIDGEOT, use CONFUSION!$"
# 201 "data/maps/CargoShip/scripts.pory"

# 202 "data/maps/CargoShip/scripts.pory"
CargoShip_Text_SailorConfused:
# 203 "data/maps/CargoShip/scripts.pory"
	.string "What...? Who...?$"
# 204 "data/maps/CargoShip/scripts.pory"

# 205 "data/maps/CargoShip/scripts.pory"
CargoShip_Text_LukaThatTakesCareOfHim:
# 206 "data/maps/CargoShip/scripts.pory"
	.string "LUKA: That takes care of him. Let's get\n"
# 207 "data/maps/CargoShip/scripts.pory"
	.string "going.$"
