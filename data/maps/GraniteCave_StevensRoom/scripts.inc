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
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 13 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	msgbox GraniteCave_StevensRoom_Text_ThankYouTakeThis, MSGBOX_DEFAULT
# 14 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	removefieldmugshot
# 15 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	giveitem ITEM_TM_STEEL_WING
# 16 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	call_if_eq VAR_RESULT, FALSE, GraniteCave_StevensRoom_EventScript_BagFull
# 17 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 18 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed msgbox GraniteCave_StevensRoom_Text_CouldBecomeChampionLetsRegister, MSGBOX_DEFAULT
# 19 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	removefieldmugshot
# 20 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed closemessage
# 21 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed delay 30
# 22 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed playfanfare MUS_REGISTER_MATCH_CALL
# 23 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed msgbox GraniteCave_StevensRoom_Text_RegisteredSteven, MSGBOX_DEFAULT
# 24 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed waitfanfare
# 25 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed closemessage
# 26 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed delay 30
# 27 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed setflag FLAG_REGISTERED_STEVEN_POKENAV
# 28 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 29 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	msgbox GraniteCave_StevensRoom_Text_LookAnciantPainting, MSGBOX_DEFAULT
# 30 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	removefieldmugshot
# 31 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	showpainting(PAINTING_1)
# 32 "data/maps/GraniteCave_StevensRoom/scripts.pory"
    waitstate
# 33 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	lock
# 34 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	faceplayer
# 35 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 36 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	msgbox GraniteCave_StevensRoom_Text_IveGotToHurryAlong, MSGBOX_DEFAULT
# 37 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	removefieldmugshot
# 38 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	closemessage
# 39 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, GraniteCave_StevensRoom_EventScript_StevenExitNorth
# 40 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, GraniteCave_StevensRoom_EventScript_StevenExitSouth
# 41 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, GraniteCave_StevensRoom_EventScript_StevenExitWestEast
# 42 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, GraniteCave_StevensRoom_EventScript_StevenExitWestEast
# 43 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	playse SE_EXIT
# 44 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	removeobject LOCALID_GRANITE_CAVE_STEVEN
# 45 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	release
# 46 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	end
# 47 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 48 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_EventScript_StevenExitNorth::
# 49 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	applymovement LOCALID_GRANITE_CAVE_STEVEN, GraniteCave_StevensRoom_Movement_StevenExit
# 50 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	waitmovement 0
# 51 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	return
# 52 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 53 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_EventScript_StevenExitWestEast::
# 54 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	applymovement LOCALID_PLAYER, GraniteCave_StevensRoom_Movement_PlayerTurnTowardExit
# 55 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	applymovement LOCALID_GRANITE_CAVE_STEVEN, GraniteCave_StevensRoom_Movement_StevenExit
# 56 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	waitmovement 0
# 57 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	return
# 58 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 59 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_EventScript_StevenExitSouth::
# 60 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	applymovement LOCALID_PLAYER, GraniteCave_StevensRoom_Movement_PlayerTurnTowardExit
# 61 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	applymovement LOCALID_GRANITE_CAVE_STEVEN, GraniteCave_StevensRoom_Movement_StevenExitSouth
# 62 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	waitmovement 0
# 63 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	return
# 64 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 65 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_EventScript_BagFull::
# 66 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	msgbox GraniteCave_StevensRoom_Text_OhBagIsFull, MSGBOX_DEFAULT
# 67 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	return
# 68 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 69 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Movement_StevenExit:
# 70 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_left
# 71 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 72 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 73 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 74 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 75 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 76 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 77 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 78 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	delay_8
# 79 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	step_end
# 80 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 81 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Movement_PlayerTurnTowardExit:
# 82 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	delay_16
# 83 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	delay_16
# 84 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	delay_16
# 85 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_in_place_faster_up
# 86 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	step_end
# 87 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 88 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Movement_StevenExitSouth:
# 89 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_left
# 90 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 91 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 92 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 93 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 94 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 95 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 96 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 97 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	delay_8
# 98 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	step_end
# 99 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 100 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_EventScript_AncientPaiting::
# 101 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	lock
# 102 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	faceplayer
# 103 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	showpainting(PAINTING_1)
# 104 "data/maps/GraniteCave_StevensRoom/scripts.pory"
    waitstate
# 105 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	release
# 106 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	end
# 107 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 108 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_ImStevenLetterForMe:
# 109 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "My name is STELLA.\p"
# 110 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "What are you doing in this cave\n"
# 111 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "with such strange clothes?\p"
# 112 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Don't tell me you're with\n"
# 113 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "TEAM MAGMA...\p"
# 114 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Oh? You're just exploring?\n"
# 115 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Good. You startled me.\p"
# 116 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "A LETTER for me?\n"
# 117 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Really? Thank you.$"
# 118 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 119 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_ThankYouTakeThis:
# 120 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "STELLA: You beat two MAGMA grunts\n"
# 121 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "alone and still made it here...\p"
# 122 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Just to deliver this to me.\n"
# 123 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Thank you, weird friend!\p"
# 124 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Here, take this TM, STEEL WING.\n"
# 125 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "It's my favorite move.$"
# 126 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 127 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_CouldBecomeChampionLetsRegister:
# 128 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "STELLA: I don't know what MAGMA is\n"
# 129 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "after here... Rare ore? Energy?\p"
# 130 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Whatever it is, it's bad news,\n"
# 131 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "but you beat them easily.$"
# 132 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	
# 133 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_RegisteredSteven:
# 134 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "...$"
# 135 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 136 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_LookAnciantPainting:
# 137 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "STELLA: Now, take a look at this\n"
# 138 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "ancient painting on the wall.$"
# 139 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 140 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_IveGotToHurryAlong:
# 141 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "STELLA: I came to study this old\n"
# 142 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "painting. It must be thousands of\l"
# 143 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "years old. Maybe even more...\p"
# 144 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "It shows two titans - one of land,\n"
# 145 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "one of sea. Ancient guardians.\p"
# 146 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "That strange meteor in the sky made\n"
# 147 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "me wonder if it was connected.\p"
# 148 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Maybe Team MAGMA was looking for this,\n"
# 149 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "but good thing you stopped them.\p"
# 150 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "I should go. I think Team MAGMA may be\n"
# 151 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "exploring other caves in HOENN.\p"
# 152 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Good luck out there.$"
# 153 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 154 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_OhBagIsFull:
# 155 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Oh, your BAG is full…\n"
# 156 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "That's too bad, then.$"
