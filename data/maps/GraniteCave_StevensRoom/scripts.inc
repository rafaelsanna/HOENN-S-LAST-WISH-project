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
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 9 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	msgbox GraniteCave_StevensRoom_Text_ImStevenLetterForMe, MSGBOX_DEFAULT
# 10 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	removefieldmugshot
# 11 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	setvar VAR_0x8004, ITEM_LETTER
# 12 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	call Common_EventScript_PlayerHandedOverTheItem
# 13 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	setflag FLAG_DELIVERED_STEVEN_LETTER
# 14 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 15 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	msgbox GraniteCave_StevensRoom_Text_ThankYouTakeThis, MSGBOX_DEFAULT
# 16 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	removefieldmugshot
# 17 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	giveitem ITEM_TM_STEEL_WING
# 18 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	call_if_eq VAR_RESULT, FALSE, GraniteCave_StevensRoom_EventScript_BagFull
# 19 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 20 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed msgbox GraniteCave_StevensRoom_Text_CouldBecomeChampionLetsRegister, MSGBOX_DEFAULT
# 21 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	removefieldmugshot
# 22 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed closemessage
# 23 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed delay 30
# 24 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed playfanfare MUS_REGISTER_MATCH_CALL
# 25 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed msgbox GraniteCave_StevensRoom_Text_RegisteredSteven, MSGBOX_DEFAULT
# 26 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed waitfanfare
# 27 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed closemessage
# 28 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed delay 30
# 29 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	@ PokéNav removed setflag FLAG_REGISTERED_STEVEN_POKENAV
# 30 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 31 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	msgbox GraniteCave_StevensRoom_Text_LookAnciantPainting, MSGBOX_DEFAULT
# 32 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	removefieldmugshot
# 33 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	callnative HLW_StartPrimalScrollPainting
# 34 "data/maps/GraniteCave_StevensRoom/scripts.pory"
    waitstate
# 35 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	lock
# 36 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	faceplayer
# 37 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 38 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	msgbox GraniteCave_StevensRoom_Text_IveGotToHurryAlong, MSGBOX_DEFAULT
# 39 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	removefieldmugshot
# 40 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	closemessage
# 41 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, GraniteCave_StevensRoom_EventScript_StevenExitNorth
# 42 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, GraniteCave_StevensRoom_EventScript_StevenExitSouth
# 43 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, GraniteCave_StevensRoom_EventScript_StevenExitWestEast
# 44 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, GraniteCave_StevensRoom_EventScript_StevenExitWestEast
# 45 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	playse SE_EXIT
# 46 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	removeobject LOCALID_GRANITE_CAVE_STEVEN
# 47 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	release
# 48 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	end
# 49 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 50 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_EventScript_StevenExitNorth::
# 51 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	applymovement LOCALID_GRANITE_CAVE_STEVEN, GraniteCave_StevensRoom_Movement_StevenExit
# 52 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	waitmovement 0
# 53 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	return
# 54 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 55 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_EventScript_StevenExitWestEast::
# 56 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	applymovement LOCALID_PLAYER, GraniteCave_StevensRoom_Movement_PlayerTurnTowardExit
# 57 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	applymovement LOCALID_GRANITE_CAVE_STEVEN, GraniteCave_StevensRoom_Movement_StevenExit
# 58 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	waitmovement 0
# 59 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	return
# 60 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 61 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_EventScript_StevenExitSouth::
# 62 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	applymovement LOCALID_PLAYER, GraniteCave_StevensRoom_Movement_PlayerTurnTowardExit
# 63 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	applymovement LOCALID_GRANITE_CAVE_STEVEN, GraniteCave_StevensRoom_Movement_StevenExitSouth
# 64 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	waitmovement 0
# 65 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	return
# 66 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 67 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_EventScript_BagFull::
# 68 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	createfieldmugshot MUGSHOT_STELLA, EMOTE_NORMAL
# 69 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	msgbox GraniteCave_StevensRoom_Text_OhBagIsFull, MSGBOX_DEFAULT
# 70 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	removefieldmugshot
# 71 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	return
# 72 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 73 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Movement_StevenExit:
# 74 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_left
# 75 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 76 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 77 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 78 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 79 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 80 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 81 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 82 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	delay_8
# 83 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	step_end
# 84 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 85 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Movement_PlayerTurnTowardExit:
# 86 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	delay_16
# 87 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	delay_16
# 88 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	delay_16
# 89 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_in_place_faster_up
# 90 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	step_end
# 91 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 92 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Movement_StevenExitSouth:
# 93 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_left
# 94 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 95 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 96 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 97 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 98 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 99 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 100 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	walk_up
# 101 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	delay_8
# 102 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	step_end
# 103 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 104 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_EventScript_AncientPaiting::
# 105 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	lock
# 106 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	faceplayer
# 107 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	callnative HLW_StartPrimalScrollPainting
# 108 "data/maps/GraniteCave_StevensRoom/scripts.pory"
    waitstate
# 109 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	release
# 110 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	end
# 111 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 112 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_ImStevenLetterForMe:
# 113 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "My name is STELLA.\p"
# 114 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "What are you doing in this cave with\n"
# 115 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "such strange clothes?\p"
# 116 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Don't tell me you're with TEAM MAGMA...\p"
# 117 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Oh? You're just exploring? Good. You\n"
# 118 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "startled me.\p"
# 119 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "A LETTER for me? Really? Thank you.\p"
# 120 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "...\n"
# 121 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "...\p"
# 122 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Why does Grandfather want me to...?\p"
# 123 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Oh! I'm sorry, I got distracted by\n"
# 124 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "this LETTER. How rude of me.$"
# 125 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 126 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_ThankYouTakeThis:
# 127 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "STELLA: You beat two MAGMA grunts\n"
# 128 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "alone and still made it here...\p"
# 129 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Just to deliver this to me. Thank you,\n"
# 130 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "weird friend!\p"
# 131 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Here, take this TM, STEEL WING. It's my\n"
# 132 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "favorite move.$"
# 133 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 134 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_CouldBecomeChampionLetsRegister:
# 135 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "STELLA: I don't know what MAGMA is\n"
# 136 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "after here... Rare ore? Energy?\p"
# 137 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Whatever it is, it's bad news, but you\n"
# 138 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "beat them easily.$"
# 139 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 140 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_RegisteredSteven:
# 141 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "...$"
# 142 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 143 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_LookAnciantPainting:
# 144 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "STELLA: Now, take a look at this\n"
# 145 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "ancient painting on the wall.$"
# 146 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 147 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_IveGotToHurryAlong:
# 148 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "STELLA: I came to study this old\n"
# 149 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "painting. It must be thousands of\l"
# 150 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "years old. Maybe even more...\p"
# 151 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "It shows two titans, one of land, one\n"
# 152 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "of sea. Ancient guardians.\p"
# 153 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "That strange meteor in the sky made\n"
# 154 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "me wonder if it was connected.\p"
# 155 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Maybe Team MAGMA was looking for\n"
# 156 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "this, but good thing you stopped\l"
# 157 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "them.\p"
# 158 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "I should go. I think Team MAGMA may be\n"
# 159 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "exploring other caves in HOENN.\p"
# 160 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Good luck out there.$"
# 161 "data/maps/GraniteCave_StevensRoom/scripts.pory"

# 162 "data/maps/GraniteCave_StevensRoom/scripts.pory"
GraniteCave_StevensRoom_Text_OhBagIsFull:
# 163 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "Oh, your BAG is full… That's too bad,\n"
# 164 "data/maps/GraniteCave_StevensRoom/scripts.pory"
	.string "then.$"
