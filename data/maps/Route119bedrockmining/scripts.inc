# 1 "data/maps/Route119bedrockmining/scripts.pory"

# 2 "data/maps/Route119bedrockmining/scripts.pory"
Route119bedrockmining_MapScripts::
# 3 "data/maps/Route119bedrockmining/scripts.pory"
	.byte 0
# 4 "data/maps/Route119bedrockmining/scripts.pory"

# 5 "data/maps/Route119bedrockmining/scripts.pory"
@ NPC1: scientist at (22, 18)
# 6 "data/maps/Route119bedrockmining/scripts.pory"
Route119bedrockmining_EventScript_NPC1::
# 7 "data/maps/Route119bedrockmining/scripts.pory"
	msgbox Route119bedrockmining_Text_NPC1, MSGBOX_NPC
# 8 "data/maps/Route119bedrockmining/scripts.pory"
	end
# 9 "data/maps/Route119bedrockmining/scripts.pory"

# 10 "data/maps/Route119bedrockmining/scripts.pory"
@ NPC2: scientist at (18, 9)
# 11 "data/maps/Route119bedrockmining/scripts.pory"
Route119bedrockmining_EventScript_NPC2::
# 12 "data/maps/Route119bedrockmining/scripts.pory"
	msgbox Route119bedrockmining_Text_NPC2, MSGBOX_NPC
# 13 "data/maps/Route119bedrockmining/scripts.pory"
	end
# 14 "data/maps/Route119bedrockmining/scripts.pory"

# 15 "data/maps/Route119bedrockmining/scripts.pory"
@ NPC3: BLIPBUG graphic at (10, 22)
# 16 "data/maps/Route119bedrockmining/scripts.pory"
Route119bedrockmining_EventScript_NPC3::
# 17 "data/maps/Route119bedrockmining/scripts.pory"
	msgbox Route119bedrockmining_Text_NPC3, MSGBOX_NPC
# 18 "data/maps/Route119bedrockmining/scripts.pory"
	end
# 19 "data/maps/Route119bedrockmining/scripts.pory"

# 20 "data/maps/Route119bedrockmining/scripts.pory"
@ NPC4: scientist at (21, 18)
# 21 "data/maps/Route119bedrockmining/scripts.pory"
Route119bedrockmining_EventScript_NPC4::
# 22 "data/maps/Route119bedrockmining/scripts.pory"
	msgbox Route119bedrockmining_Text_NPC4, MSGBOX_NPC
# 23 "data/maps/Route119bedrockmining/scripts.pory"
	end
# 24 "data/maps/Route119bedrockmining/scripts.pory"

# 25 "data/maps/Route119bedrockmining/scripts.pory"
@ NPC5: BLIPBUG graphic at (11, 8)
# 26 "data/maps/Route119bedrockmining/scripts.pory"
Route119bedrockmining_EventScript_NPC5::
# 27 "data/maps/Route119bedrockmining/scripts.pory"
	msgbox Route119bedrockmining_Text_NPC5, MSGBOX_NPC
# 28 "data/maps/Route119bedrockmining/scripts.pory"
	end
# 29 "data/maps/Route119bedrockmining/scripts.pory"

# 30 "data/maps/Route119bedrockmining/scripts.pory"
@ Female MAGMA grunt at (15, 5): starts and ends facing left.
# 31 "data/maps/Route119bedrockmining/scripts.pory"
Route119bedrockmining_EventScript_MagmaGruntF::
# 32 "data/maps/Route119bedrockmining/scripts.pory"
	lock
# 33 "data/maps/Route119bedrockmining/scripts.pory"
	msgbox Route119bedrockmining_Text_MagmaGruntF_BeforeTurning, MSGBOX_DEFAULT
# 34 "data/maps/Route119bedrockmining/scripts.pory"
	closemessage
# 35 "data/maps/Route119bedrockmining/scripts.pory"
	faceplayer
# 36 "data/maps/Route119bedrockmining/scripts.pory"
	msgbox Route119bedrockmining_Text_MagmaGruntF_AfterTurning, MSGBOX_DEFAULT
# 37 "data/maps/Route119bedrockmining/scripts.pory"
	closemessage
# 38 "data/maps/Route119bedrockmining/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
# 39 "data/maps/Route119bedrockmining/scripts.pory"
	waitmovement 0
# 40 "data/maps/Route119bedrockmining/scripts.pory"
	release
# 41 "data/maps/Route119bedrockmining/scripts.pory"
	end
# 42 "data/maps/Route119bedrockmining/scripts.pory"

# 43 "data/maps/Route119bedrockmining/scripts.pory"
@ Male MAGMA grunt at (14, 5): starts and ends facing right.
# 44 "data/maps/Route119bedrockmining/scripts.pory"
Route119bedrockmining_EventScript_MagmaGruntM::
# 45 "data/maps/Route119bedrockmining/scripts.pory"
	lock
# 46 "data/maps/Route119bedrockmining/scripts.pory"
	msgbox Route119bedrockmining_Text_MagmaGruntM_BeforeTurning, MSGBOX_DEFAULT
# 47 "data/maps/Route119bedrockmining/scripts.pory"
	closemessage
# 48 "data/maps/Route119bedrockmining/scripts.pory"
	faceplayer
# 49 "data/maps/Route119bedrockmining/scripts.pory"
	msgbox Route119bedrockmining_Text_MagmaGruntM_AfterTurning, MSGBOX_DEFAULT
# 50 "data/maps/Route119bedrockmining/scripts.pory"
	closemessage
# 51 "data/maps/Route119bedrockmining/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
# 52 "data/maps/Route119bedrockmining/scripts.pory"
	waitmovement 0
# 53 "data/maps/Route119bedrockmining/scripts.pory"
	release
# 54 "data/maps/Route119bedrockmining/scripts.pory"
	end
# 55 "data/maps/Route119bedrockmining/scripts.pory"

# 56 "data/maps/Route119bedrockmining/scripts.pory"
Route119bedrockmining_Text_NPC1:
# 57 "data/maps/Route119bedrockmining/scripts.pory"
	.string "Don't you think it's strange?\p"
# 58 "data/maps/Route119bedrockmining/scripts.pory"
	.string "All of a sudden, we're moved to a new\n"
# 59 "data/maps/Route119bedrockmining/scripts.pory"
	.string "location with such little warning\l"
# 60 "data/maps/Route119bedrockmining/scripts.pory"
	.string "and then told to immediately start\l"
# 61 "data/maps/Route119bedrockmining/scripts.pory"
	.string "scanning for high heat signatures.\p"
# 62 "data/maps/Route119bedrockmining/scripts.pory"
	.string "What happened to our normal process?$"
# 63 "data/maps/Route119bedrockmining/scripts.pory"

# 64 "data/maps/Route119bedrockmining/scripts.pory"
Route119bedrockmining_Text_NPC2:
# 65 "data/maps/Route119bedrockmining/scripts.pory"
	.string "This machine is helping us find\n"
# 66 "data/maps/Route119bedrockmining/scripts.pory"
	.string "pockets of high heat in the ground.\p"
# 67 "data/maps/Route119bedrockmining/scripts.pory"
	.string "It makes no sense, though.\p"
# 68 "data/maps/Route119bedrockmining/scripts.pory"
	.string "Why would a mining company care\n"
# 69 "data/maps/Route119bedrockmining/scripts.pory"
	.string "about something like that?$"
# 70 "data/maps/Route119bedrockmining/scripts.pory"

# 71 "data/maps/Route119bedrockmining/scripts.pory"
Route119bedrockmining_Text_NPC3:
# 72 "data/maps/Route119bedrockmining/scripts.pory"
	.string "It's essential to maintain this\n"
# 73 "data/maps/Route119bedrockmining/scripts.pory"
	.string "equipment with the utmost care.\p"
# 74 "data/maps/Route119bedrockmining/scripts.pory"
	.string "I check every one of them twice\n"
# 75 "data/maps/Route119bedrockmining/scripts.pory"
	.string "a day!$"
# 76 "data/maps/Route119bedrockmining/scripts.pory"

# 77 "data/maps/Route119bedrockmining/scripts.pory"
Route119bedrockmining_Text_NPC4:
# 78 "data/maps/Route119bedrockmining/scripts.pory"
	.string "I've worked for this company for\n"
# 79 "data/maps/Route119bedrockmining/scripts.pory"
	.string "decades, but never have we set up\l"
# 80 "data/maps/Route119bedrockmining/scripts.pory"
	.string "a new mining base this quickly.\p"
# 81 "data/maps/Route119bedrockmining/scripts.pory"
	.string "The executives won't tell us what's\n"
# 82 "data/maps/Route119bedrockmining/scripts.pory"
	.string "going on either, and I keep seeing\l"
# 83 "data/maps/Route119bedrockmining/scripts.pory"
	.string "strange people coming in and out.$"
# 84 "data/maps/Route119bedrockmining/scripts.pory"

# 85 "data/maps/Route119bedrockmining/scripts.pory"
Route119bedrockmining_Text_NPC5:
# 86 "data/maps/Route119bedrockmining/scripts.pory"
	.string "I've got a real passion for\n"
# 87 "data/maps/Route119bedrockmining/scripts.pory"
	.string "all things mining-related.\p"
# 88 "data/maps/Route119bedrockmining/scripts.pory"
	.string "However, strange people in weird\n"
# 89 "data/maps/Route119bedrockmining/scripts.pory"
	.string "red costumes have been coming by\l"
# 90 "data/maps/Route119bedrockmining/scripts.pory"
	.string "a lot lately to see the boss.\p"
# 91 "data/maps/Route119bedrockmining/scripts.pory"
	.string "They've been talking like they\n"
# 92 "data/maps/Route119bedrockmining/scripts.pory"
	.string "run the place!$"
# 93 "data/maps/Route119bedrockmining/scripts.pory"

# 94 "data/maps/Route119bedrockmining/scripts.pory"
@ Opening lines: the grunt keeps facing the other grunt.
# 95 "data/maps/Route119bedrockmining/scripts.pory"
Route119bedrockmining_Text_MagmaGruntF_BeforeTurning:
# 96 "data/maps/Route119bedrockmining/scripts.pory"
	.string "How long are we going to be\n"
# 97 "data/maps/Route119bedrockmining/scripts.pory"
	.string "assigned to such a boring place?\p"
# 98 "data/maps/Route119bedrockmining/scripts.pory"
	.string "I'm so sick of keeping watch over\n"
# 99 "data/maps/Route119bedrockmining/scripts.pory"
	.string "all these science nerds.$"
# 100 "data/maps/Route119bedrockmining/scripts.pory"

# 101 "data/maps/Route119bedrockmining/scripts.pory"
@ These lines appear after the grunt turns toward the player.
# 102 "data/maps/Route119bedrockmining/scripts.pory"
Route119bedrockmining_Text_MagmaGruntF_AfterTurning:
# 103 "data/maps/Route119bedrockmining/scripts.pory"
	.string "Hey! It's rude to eavesdrop, kid.\p"
# 104 "data/maps/Route119bedrockmining/scripts.pory"
	.string "Our presence here is none of your\n"
# 105 "data/maps/Route119bedrockmining/scripts.pory"
	.string "business.$"
# 106 "data/maps/Route119bedrockmining/scripts.pory"

# 107 "data/maps/Route119bedrockmining/scripts.pory"
Route119bedrockmining_Text_MagmaGruntM_BeforeTurning:
# 108 "data/maps/Route119bedrockmining/scripts.pory"
	.string "That company president was so\n"
# 109 "data/maps/Route119bedrockmining/scripts.pory"
	.string "easy to bribe. The guy would do\l"
# 110 "data/maps/Route119bedrockmining/scripts.pory"
	.string "anything for mining rights.\p"
# 111 "data/maps/Route119bedrockmining/scripts.pory"
	.string "Once we accomplish our goals, we'll\n"
# 112 "data/maps/Route119bedrockmining/scripts.pory"
	.string "own everything anyway.$"
# 113 "data/maps/Route119bedrockmining/scripts.pory"

# 114 "data/maps/Route119bedrockmining/scripts.pory"
Route119bedrockmining_Text_MagmaGruntM_AfterTurning:
# 115 "data/maps/Route119bedrockmining/scripts.pory"
	.string "What? What do you want? Get out\n"
# 116 "data/maps/Route119bedrockmining/scripts.pory"
	.string "of here before I make you.$"
