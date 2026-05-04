# 1 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 2 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_MapScripts::
# 3 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.byte 0
# 4 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 5 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_EventScript_Steven::
# 6 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	lock
# 7 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	faceplayer
# 8 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	msgbox GraniteCave_StevensRoom_Text_ImStevenLetterForMe, MSGBOX_DEFAULT
# 9 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	setvar VAR_0x8004, ITEM_LETTER
# 10 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	call Common_EventScript_PlayerHandedOverTheItem
# 11 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	setflag FLAG_DELIVERED_STEVEN_LETTER
# 12 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	msgbox GraniteCave_StevensRoom_Text_ThankYouTakeThis, MSGBOX_DEFAULT
# 13 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	giveitem ITEM_TM_STEEL_WING
# 14 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	call_if_eq VAR_RESULT, FALSE, GraniteCave_StevensRoom_EventScript_BagFull
# 15 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	msgbox GraniteCave_StevensRoom_Text_CouldBecomeChampionLetsRegister, MSGBOX_DEFAULT
# 16 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	closemessage
# 17 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	delay 30
# 18 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	playfanfare MUS_REGISTER_MATCH_CALL
# 19 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	msgbox GraniteCave_StevensRoom_Text_RegisteredSteven, MSGBOX_DEFAULT
# 20 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	waitfanfare
# 21 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	closemessage
# 22 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	delay 30
# 23 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	setflag FLAG_REGISTERED_STEVEN_POKENAV
# 24 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	msgbox GraniteCave_StevensRoom_Text_LookAnciantPainting, MSGBOX_DEFAULT
# 25 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	showpainting(PAINTING_1)
# 26 "data/maps/GraniteCave_StevensRoom/scripts.pory"
    waitstate
# 27 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	lock
# 28 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	faceplayer
# 29 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	msgbox GraniteCave_StevensRoom_Text_IveGotToHurryAlong, MSGBOX_DEFAULT
# 30 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	closemessage
# 31 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, GraniteCave_StevensRoom_EventScript_StevenExitNorth
# 32 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, GraniteCave_StevensRoom_EventScript_StevenExitSouth
# 33 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, GraniteCave_StevensRoom_EventScript_StevenExitWestEast
# 34 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, GraniteCave_StevensRoom_EventScript_StevenExitWestEast
# 35 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	playse SE_EXIT
# 36 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	removeobject LOCALID_GRANITE_CAVE_STEVEN
# 37 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	release
# 38 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	end
# 39 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 40 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_EventScript_StevenExitNorth::
# 41 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	applymovement LOCALID_GRANITE_CAVE_STEVEN, GraniteCave_StevensRoom_Movement_StevenExit
# 42 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	waitmovement 0
# 43 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	return
# 44 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 45 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_EventScript_StevenExitWestEast::
# 46 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	applymovement LOCALID_PLAYER, GraniteCave_StevensRoom_Movement_PlayerTurnTowardExit
# 47 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	applymovement LOCALID_GRANITE_CAVE_STEVEN, GraniteCave_StevensRoom_Movement_StevenExit
# 48 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	waitmovement 0
# 49 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	return
# 50 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 51 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_EventScript_StevenExitSouth::
# 52 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	applymovement LOCALID_PLAYER, GraniteCave_StevensRoom_Movement_PlayerTurnTowardExit
# 53 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	applymovement LOCALID_GRANITE_CAVE_STEVEN, GraniteCave_StevensRoom_Movement_StevenExitSouth
# 54 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	waitmovement 0
# 55 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	return
# 56 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 57 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_EventScript_BagFull::
# 58 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	msgbox GraniteCave_StevensRoom_Text_OhBagIsFull, MSGBOX_DEFAULT
# 59 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	return
# 60 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 61 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Movement_StevenExit:
# 62 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_left
# 63 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 64 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 65 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 66 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 67 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 68 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 69 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 70 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	delay_8
# 71 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	step_end
# 72 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 73 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Movement_PlayerTurnTowardExit:
# 74 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	delay_16
# 75 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	delay_16
# 76 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	delay_16
# 77 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_in_place_faster_up
# 78 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	step_end
# 79 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 80 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Movement_StevenExitSouth:
# 81 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_left
# 82 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 83 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 84 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 85 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 86 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 87 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 88 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 89 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	delay_8
# 90 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	step_end
# 91 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 92 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_EventScript_AncientPaiting::
# 93 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	lock
# 94 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	faceplayer
# 95 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	showpainting(PAINTING_1)
# 96 "data/maps/GraniteCave_StevensRoom/scripts.pory"
    waitstate
# 97 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	release
# 98 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	end
# 99 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 100 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_ImStevenLetterForMe:
# 101 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "My name is STELLA.\p"
# 102 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "What are you doing in this cave\n"
# 103 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "with such strange clothes?\p"
# 104 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Don't tell me you're with\n"
# 105 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "TEAM MAGMA...\p"
# 106 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Oh? You're just exploring?\n"
# 107 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Good. You startled me.\p"
# 108 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "A LETTER for me?\n"
# 109 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Really? Thank you.$"
# 110 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 111 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_ThankYouTakeThis:
# 112 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "STELLA: You beat two MAGMA grunts\n"
# 113 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "alone and still made it here...\p"
# 114 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Just to deliver this to me.\n"
# 115 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Thank you, weird friend!\p"
# 116 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Here, take this TM, STEEL WING.\n"
# 117 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "It's my favorite move.$"
# 118 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 119 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_CouldBecomeChampionLetsRegister:
# 120 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "STELLA: I don't know what MAGMA is\n"
# 121 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "after here... Rare ore? Energy?\p"
# 122 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Whatever it is, it's bad news,\n"
# 123 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "but you beat them easily.$"
# 124 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	
# 125 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_RegisteredSteven:
# 126 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "...$"
# 127 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 128 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_LookAnciantPainting:
# 129 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "STELLA: Now, take a look at this\n"
# 130 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "ancient painting on the wall.$"
# 131 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 132 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_IveGotToHurryAlong:
# 133 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "STELLA: I came to study this old\n"
# 134 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "painting. It must be thousands of\l"
# 135 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "years old. Maybe even more...\p"
# 136 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "It shows two titans - one of land,\n"
# 137 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "one of sea. Ancient guardians.\p"
# 138 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "That strange meteor in the sky made\n"
# 139 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "me wonder if it was connected.\p"
# 140 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Maybe Team MAGMA was looking for this,\n"
# 141 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "but good thing you stopped them.\p"
# 142 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "I should go. I think Team MAGMA may be\n"
# 143 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "exploring other caves in HOENN.\p"
# 144 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Good luck out there.$"
# 145 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 146 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_OhBagIsFull:
# 147 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Oh, your BAG is full…\n"
# 148 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "That's too bad, then.$"
