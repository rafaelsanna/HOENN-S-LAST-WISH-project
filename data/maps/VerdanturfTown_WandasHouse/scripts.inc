# 1 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 2 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_MapScripts::
# 3 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.byte 0
# 4 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 5 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_EventScript_Wally::
# 6 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	lock
# 7 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	faceplayer
# 8 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	goto_if_set FLAG_WALLY_SPEECH, VerdanturfTown_WandasHouse_EventScript_WallyShortSpeech
# 9 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 10 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	msgbox VerdanturfTown_WandasHouse_Text_StrongerSpeech, MSGBOX_DEFAULT
# 11 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	removefieldmugshot
# 12 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	setflag FLAG_WALLY_SPEECH
# 13 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	release
# 14 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	end
# 15 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 16 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_EventScript_WallyShortSpeech::
# 17 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	createfieldmugshot MUGSHOT_LUKA, EMOTE_NORMAL
# 18 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	msgbox VerdanturfTown_WandasHouse_Text_StrongerSpeechShort, MSGBOX_DEFAULT
# 19 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	removefieldmugshot
# 20 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	release
# 21 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	end
# 22 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 23 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_EventScript_WallysUncle::
# 24 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	lock
# 25 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	faceplayer
# 26 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	goto_if_set FLAG_DEFEATED_WALLY_VICTORY_ROAD, VerdanturfTown_WandasHouse_EventScript_WallysUncleEverGrande
# 27 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, VerdanturfTown_WandasHouse_EventScript_WallysUncleSlippedOff
# 28 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	msgbox VerdanturfTown_WandasHouse_Text_WallysNextDoor, MSGBOX_DEFAULT
# 29 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	release
# 30 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	end
# 31 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 32 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_EventScript_WallysUncleSlippedOff::
# 33 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	msgbox VerdanturfTown_WandasHouse_Text_WallySlippedOff, MSGBOX_DEFAULT
# 34 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	release
# 35 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	end
# 36 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 37 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_EventScript_WallysUncleEverGrande::
# 38 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	msgbox VerdanturfTown_WandasHouse_Text_WallyGoneThatFar, MSGBOX_DEFAULT
# 39 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	release
# 40 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	end
# 41 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 42 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_EventScript_WandasBoyfriend::
# 43 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	msgbox VerdanturfTown_WandasHouse_Text_CanSeeGirlfriendEveryDay, MSGBOX_NPC
# 44 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	end
# 45 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 46 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_EventScript_Wanda::
# 47 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	lock
# 48 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	faceplayer
# 49 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, VerdanturfTown_WandasHouse_EventScript_WandaDontWorry
# 50 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	goto_if_set FLAG_DEFEATED_WALLY_MAUVILLE, VerdanturfTown_WandasHouse_EventScript_MeetWanda
# 51 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	msgbox VerdanturfTown_WandasHouse_Text_DontWorryAboutWally, MSGBOX_DEFAULT
# 52 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	release
# 53 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	end
# 54 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 55 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_EventScript_MeetWanda::
# 56 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	msgbox VerdanturfTown_WandasHouse_Text_MeetWanda, MSGBOX_DEFAULT
# 57 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	release
# 58 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	end
# 59 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 60 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_EventScript_WandaDontWorry::
# 61 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	msgbox VerdanturfTown_WandasHouse_Text_DontWorryAboutWally, MSGBOX_DEFAULT
# 62 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	release
# 63 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	end
# 64 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 65 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_EventScript_WallysAunt::
# 66 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	lock
# 67 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	faceplayer
# 68 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	goto_if_set FLAG_DEFEATED_WALLY_VICTORY_ROAD, VerdanturfTown_WandasHouse_EventScript_WallysAuntEverGrande
# 69 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	goto_if_set FLAG_DEFEATED_LAVARIDGE_GYM, VerdanturfTown_WandasHouse_EventScript_WallysAuntAnythingHappened
# 70 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	goto_if_set FLAG_RUSTURF_TUNNEL_OPENED, VerdanturfTown_WandasHouse_EventScript_WallysAuntTunnelOpen
# 71 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	msgbox VerdanturfTown_WandasHouse_Text_DaughtersBoyfriendDriven, MSGBOX_DEFAULT
# 72 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	release
# 73 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	end
# 74 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 75 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_EventScript_WallysAuntTunnelOpen::
# 76 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	msgbox VerdanturfTown_WandasHouse_Text_DaughtersBoyfriendWasDigging, MSGBOX_DEFAULT
# 77 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	release
# 78 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	end
# 79 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 80 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_EventScript_WallysAuntAnythingHappened::
# 81 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	msgbox VerdanturfTown_WandasHouse_Text_IfAnythingHappenedToWally, MSGBOX_DEFAULT
# 82 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	release
# 83 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	end
# 84 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 85 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_EventScript_WallysAuntEverGrande::
# 86 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	msgbox VerdanturfTown_WandasHouse_Text_WallyWasInEverGrande, MSGBOX_DEFAULT
# 87 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	release
# 88 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	end
# 89 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 90 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_StrongerSpeech:
# 91 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "LUKA: I lost to you, {PLAYER}, but I'm\n"
# 92 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "not feeling down anymore.\p"
# 93 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "Because I have a new purpose in life.\n"
# 94 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "Together with my RALTS, I'm going\l"
# 95 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "to challenge POKéMON GYMS and become\l"
# 96 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "a great TRAINER.\p"
# 97 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "Please watch me, {PLAYER}.\n"
# 98 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "I'm going to be stronger than you.\p"
# 99 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "When I do, I'm going to challenge you\n"
# 100 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "to another battle.$"
# 101 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 102 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_StrongerSpeechShort:
# 103 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "LUKA: Please watch me, {PLAYER}.\n"
# 104 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "I'm going to get stronger than you.\p"
# 105 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "When I do, I'm going to challenge you\n"
# 106 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "to another battle.$"
# 107 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 108 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_WallysNextDoor:
# 109 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "UNCLE: Oh! {PLAYER}{KUN}!\n"
# 110 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "WALLY's next door.\p"
# 111 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "But, boy, there's something I have to\n"
# 112 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "tell you.\p"
# 113 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "This natural environment is doing\n"
# 114 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "wonders for WALLY's health.\p"
# 115 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "Maybe it's not just the environment.\n"
# 116 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "It could be POKéMON that are giving\l"
# 117 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "the boy hope.$"
# 118 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 119 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_WallySlippedOff:
# 120 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "WALLY's gone away…\n"
# 121 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "He slipped off on his own…$"
# 122 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 123 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_WallyGoneThatFar:
# 124 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "UNCLE: Is that right?\n"
# 125 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "WALLY's gone away that far all by\l"
# 126 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "himself…\p"
# 127 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "Well, I have to give him credit--he is\n"
# 128 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "my little brother's son.$"
# 129 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 130 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_MeetWanda:
# 131 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "WANDA: You are?\n"
# 132 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "Oh, right, I get it!\p"
# 133 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "You're the {PLAYER} who WALLY was\n"
# 134 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "telling me about.\p"
# 135 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "I'm WALLY's cousin.\n"
# 136 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "Glad to meet you!\p"
# 137 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "I think WALLY's become a lot more lively\n"
# 138 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "and healthy since he came here.$"
# 139 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 140 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_DontWorryAboutWally:
# 141 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "WANDA: Don't worry about WALLY.\n"
# 142 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "He'll be just fine.\p"
# 143 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "I know my little cousin, and he has\n"
# 144 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "POKéMON with him, too.$"
# 145 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 146 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_CanSeeGirlfriendEveryDay:
# 147 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "Thanks to you, I can see my girlfriend\n"
# 148 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "every day.\l"
# 149 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "Happy? You bet I am!$"
# 150 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 151 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_DaughtersBoyfriendDriven:
# 152 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "My daughter's boyfriend is a very\n"
# 153 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "driven and passionate sort of person.\p"
# 154 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "He's been digging a tunnel nonstop\n"
# 155 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "just so he can see my daughter.\p"
# 156 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "My daughter's a little concerned,\n"
# 157 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "so she goes out to the tunnel a lot.$"
# 158 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 159 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_DaughtersBoyfriendWasDigging:
# 160 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "It's amazing. My daughter's boyfriend\n"
# 161 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "was digging the tunnel by hand!\p"
# 162 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "It's so incredible!$"
# 163 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 164 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_IfAnythingHappenedToWally:
# 165 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "If anything were to happen to WALLY,\n"
# 166 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "I would never be able to look his\l"
# 167 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "parents in PETALBURG in the eye…$"
# 168 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 169 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_WallyWasInEverGrande:
# 170 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "WALLY was in EVER GRANDE?\p"
# 171 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "His parents in PETALBURG would be\n"
# 172 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "astonished to hear that!$"
