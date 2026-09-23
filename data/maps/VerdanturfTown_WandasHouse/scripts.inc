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
	.string "You taught me there's more to life than\n"
# 94 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "always rushing toward the next goal.\p"
# 95 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "I'm still going to search for clues\n"
# 96 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "about the comet, don't worry.\p"
# 97 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "I'll just make sure to take some time\n"
# 98 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "to appreciate those who support me too.\p"
# 99 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "Next time I see you, let's rematch!\n"
# 100 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "I'll have tons of new things to show you.$"
# 101 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 102 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_StrongerSpeechShort:
# 103 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "LUKA: Just wait, {PLAYER}.\n"
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
	.string "How nice of you to visit.\p"
# 111 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "But, boy, there's something I have to\n"
# 112 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "tell you.\p"
# 113 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "LUKA has been a changed kid lately.\n"
# 114 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "The whole family is grateful to you.\p"
# 115 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "For a while there, he was so obsessed\n"
# 116 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "with the comet, it was as though we\l"
# 117 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "lost him entirely.\p"
# 118 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "We finally have him back.$"
# 119 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 120 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_WallySlippedOff:
# 121 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "LUKA's keeping in touch with us much\n"
# 122 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "more now. It's great to hear what\l"
# 123 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "he's up to.$"
# 124 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 125 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_WallyGoneThatFar:
# 126 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "UNCLE: Is that right?\n"
# 127 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "LUKA's gone away that far all by\l"
# 128 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "himself…\p"
# 129 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "Well, I have to give him credit--he is\n"
# 130 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "my little brother's son.$"
# 131 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 132 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_MeetWanda:
# 133 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "WANDA: You are?\n"
# 134 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "Oh, right, I get it!\p"
# 135 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "You're the {PLAYER} who LUKA was\n"
# 136 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "telling me about.\p"
# 137 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "I'm LUKA's cousin.\n"
# 138 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "Glad to meet you!\p"
# 139 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "I think LUKA's felt much more at peace\n"
# 140 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "and relaxed since he came here.$"
# 141 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 142 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_DontWorryAboutWally:
# 143 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "WANDA: Don't worry about LUKA.\n"
# 144 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "He'll be just fine.\p"
# 145 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "I know my little cousin, and he has\n"
# 146 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "never let a challenge get him down.$"
# 147 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 148 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_CanSeeGirlfriendEveryDay:
# 149 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "Thanks to you, I can see my girlfriend\n"
# 150 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "every day.\l"
# 151 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "Happy? You bet I am!$"
# 152 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 153 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_DaughtersBoyfriendDriven:
# 154 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "My daughter's boyfriend is a very\n"
# 155 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "driven and passionate sort of person.\p"
# 156 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "He's been digging a tunnel nonstop\n"
# 157 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "just so he can see my daughter.\p"
# 158 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "My daughter's a little concerned,\n"
# 159 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "so she goes out to the tunnel a lot.$"
# 160 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 161 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_DaughtersBoyfriendWasDigging:
# 162 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "It's amazing. My daughter's boyfriend\n"
# 163 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "was digging the tunnel by hand!\p"
# 164 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "It's so incredible!$"
# 165 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 166 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_IfAnythingHappenedToWally:
# 167 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "If anything were to happen to LUKA,\n"
# 168 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "I would never be able to look our\l"
# 169 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "family in PETALBURG in the eye…\p"
# 170 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "We all know how strong he is, but\n"
# 171 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "its natural for family to worry.$"
# 172 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"

# 173 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
VerdanturfTown_WandasHouse_Text_WallyWasInEverGrande:
# 174 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "LUKA was in EVER GRANDE?\p"
# 175 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "His family in PETALBURG would be\n"
# 176 "data/maps/VerdanturfTown_WandasHouse/scripts.pory"
	.string "entirely unsurprised to hear that!$"
