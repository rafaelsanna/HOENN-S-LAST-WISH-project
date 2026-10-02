# 1 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 2 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_MapScripts::
# 3 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, PetalburgCity_WallysHouse_OnFrame
# 4 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, PetalburgCity_WallysHouse_OnWarp
# 5 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.byte 0
# 6 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 7 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_OnWarp:
# 8 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	map_script_2 VAR_PETALBURG_CITY_STATE, 4, PetalburgCity_WallysHouse_EventScript_PlayerWallysDadFaceEachOther
# 9 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.2byte 0
# 10 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 11 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_EventScript_PlayerWallysDadFaceEachOther::
# 12 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_EAST
# 13 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	turnobject LOCALID_WALLYS_HOUSE_WALLYS_DAD, DIR_WEST
# 14 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	end
# 15 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 16 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_OnFrame:
# 17 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	map_script_2 VAR_PETALBURG_CITY_STATE, 4, PetalburgCity_WallysHouse_EventScript_GiveHMSurf
# 18 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.2byte 0
# 19 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 20 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_EventScript_GiveHMSurf::
# 21 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	lockall
# 22 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_PleaseExcuseUs, MSGBOX_DEFAULT
# 23 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	giveitem ITEM_HM_SURF
# 24 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	setflag FLAG_RECEIVED_HM_SURF
# 25 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_SurfGoAllSortsOfPlaces, MSGBOX_DEFAULT
# 26 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_TakeABreak, MSGBOX_DEFAULT
# 27 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	closemessage
# 28 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	fadescreen FADE_TO_BLACK
# 29 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	special HealPlayerParty
# 30 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	playfanfare MUS_HEAL
# 31 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	waitfanfare
# 32 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	fadescreen FADE_FROM_BLACK
# 33 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_TakeCare, MSGBOX_DEFAULT
# 34 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	setvar VAR_PETALBURG_CITY_STATE, 5
# 35 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	releaseall
# 36 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	end
# 37 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 38 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_EventScript_WallysDad::
# 39 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	lock
# 40 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	faceplayer
# 41 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_EventScript_GrandfatherDialogue::
# 42 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	goto_if_set FLAG_DEFEATED_WALLY_VICTORY_ROAD, PetalburgCity_WallysHouse_EventScript_DefeatedWallyInVictoryRoad
# 43 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	goto_if_set FLAG_RECEIVED_HM_SURF, PetalburgCity_WallysHouse_EventScript_ReceievedHMSurf
# 44 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	goto_if_lt VAR_PETALBURG_GYM_STATE, 2, PetalburgCity_WallysHouse_EventScript_GrandfatherBeforeMeetingLuka
# 45 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	goto_if_set FLAG_THANKED_FOR_PLAYING_WITH_WALLY, PetalburgCity_WallysHouse_EventScript_PlayedWithWally
# 46 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_ThanksForPlayingWithWally, MSGBOX_DEFAULT
# 47 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	setflag FLAG_THANKED_FOR_PLAYING_WITH_WALLY
# 48 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	release
# 49 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	end
# 50 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 51 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_EventScript_GrandfatherBeforeMeetingLuka::
# 52 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_GrandfatherBeforeMeetingLuka, MSGBOX_DEFAULT
# 53 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	release
# 54 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	end
# 55 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 56 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_EventScript_ReceievedHMSurf::
# 57 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_WallyIsComingHomeSoon, MSGBOX_DEFAULT
# 58 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	release
# 59 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	end
# 60 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 61 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_EventScript_DefeatedWallyInVictoryRoad::
# 62 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_YouMetWallyInEverGrandeCity, MSGBOX_DEFAULT
# 63 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	release
# 64 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	end
# 65 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 66 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_EventScript_PlayedWithWally::
# 67 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_WonderHowWallyIsDoing, MSGBOX_DEFAULT
# 68 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	release
# 69 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	end
# 70 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 71 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_EventScript_WallysMom::
# 72 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	lock
# 73 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	faceplayer
# 74 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_EventScript_GrandmotherDialogue::
# 75 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	goto_if_set FLAG_RECEIVED_HM_SURF, PetalburgCity_WallysHouse_EventScript_ReceivedHMSurf
# 76 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	goto_if_lt VAR_PETALBURG_GYM_STATE, 2, PetalburgCity_WallysHouse_EventScript_GrandmotherBeforeMeetingLuka
# 77 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_WallyWasReallyHappy, MSGBOX_DEFAULT
# 78 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	release
# 79 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	end
# 80 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 81 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_EventScript_GrandmotherBeforeMeetingLuka::
# 82 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_GrandmotherBeforeMeetingLuka, MSGBOX_DEFAULT
# 83 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	release
# 84 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	end
# 85 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 86 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_EventScript_ReceivedHMSurf::
# 87 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_WallyLeftWithoutTelling, MSGBOX_DEFAULT
# 88 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	release
# 89 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	end
# 90 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 91 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
@ Placeholder dialogue: replace these with the final pre-meeting lines.
# 92 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_GrandfatherBeforeMeetingLuka::
# 93 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "Our grandson, LUKA, is insisting on\n"
# 94 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "leaving for VERDANTURF TOWN soon.\p"
# 95 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "Those dreams are really getting to him.$"
# 96 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 97 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_GrandmotherBeforeMeetingLuka::
# 98 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "Have you seen our grandson, LUKA?\p"
# 99 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "I hope he hasn't already left yet.\n"
# 100 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "He's always so headstrong and hasty.$"
# 101 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 102 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_ThanksForPlayingWithWally::
# 103 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "You are...\n"
# 104 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Ah, you must be {PLAYER}{KUN}, right?\p"
# 105 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Thank you for spending time with LUKA\n"
# 106 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "earlier. Few people keep up with him.\p"
# 107 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Unlike most kids, he has always had a\n"
# 108 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "brave and restless spirit.\p"
# 109 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "He bonds with POKEMON naturally, as if\n"
# 110 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "he understands them on some deep level.\p"
# 111 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Lately he has been sleeping poorly... he\n"
# 112 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "keeps talking about strange dreams.\p"
# 113 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Ever since that comet passed over HOENN,\n"
# 114 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "he has been unable to think about\l"
# 115 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "anything else.\p"
# 116 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "He's heading to visit our relatives in\n"
# 117 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "VERDANTURF TOWN before investigating\l"
# 118 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "other areas in the region that may have\l"
# 119 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "been affected by the comet.\p"
# 120 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Knowing him, he won't stay in VERDANTURF\n"
# 121 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "for long, but we hope he does finally\l"
# 122 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "calm down and rest a little.\p"
# 123 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "What is that? Where is LUKA now?\n"
# 124 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "He already left.\p"
# 125 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "I wonder how far he has gotten\n"
# 126 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "by now...$"
# 127 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 128 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 129 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_WonderHowWallyIsDoing::
# 130 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "I wonder how our LUKA is doing?$"
# 131 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 132 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_PleaseExcuseUs:
# 133 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "{PLAYER}{KUN}! Please excuse us for\n"
# 134 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "calling you here so suddenly.\p"
# 135 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Since LUKA took off on his adventure,\n"
# 136 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "he has been doing incredibly well.\p"
# 137 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "We believe you had a big part in that.\p"
# 138 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "When he left town, you sent him off\n"
# 139 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "with a battle, right?\p"
# 140 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "That moment meant a lot to him.\n"
# 141 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Honestly, it meant a lot to us too.\p"
# 142 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "LUKA has always been brave, but lately\n"
# 143 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "he has been burdened by strange dreams\l"
# 144 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "and that comet he keeps talking about.\p"
# 145 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Seeing him smile after meeting you...\n"
# 146 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "it gave us hope.\p"
# 147 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "We are grateful he has a friend like\n"
# 148 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "you by his side.\p"
# 149 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "This is not a bribe or anything, but...\n"
# 150 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "we would really like you to have this.$"
# 151 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 152 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_SurfGoAllSortsOfPlaces:
# 153 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "If your POKéMON can SURF, you'll be\n"
# 154 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "able to go to all sorts of places.$"
# 155 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 156 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_TakeABreak:
# 157 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "Before you go, why don't you\n"
# 158 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "take a short break?$"
# 159 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 160 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_TakeCare:
# 161 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "Take care out there!$"
# 162 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 163 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_WallyIsComingHomeSoon::
# 164 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "LUKA's coming home soon.\n"
# 165 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "I'm looking forward to that.$"
# 166 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 167 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_YouMetWallyInEverGrandeCity::
# 168 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Oh? You met LUKA in\n"
# 169 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "EVER GRANDE CITY?\p"
# 170 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Well... knowing him, I suppose it is\n"
# 171 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "not impossible.\p"
# 172 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "LUKA has always had that fearless\n"
# 173 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "spirit, especially since the night he\l"
# 174 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "saw that strange comet.\p"
# 175 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "If something is calling to him, he will\n"
# 176 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "chase it, no matter how far it is.\p"
# 177 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Still, it is impressive...\n"
# 178 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "EVER GRANDE CITY is quite the journey.\p"
# 179 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "But if anyone would go that far on his\n"
# 180 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "own, it would be LUKA.$"
# 181 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 182 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_WallyWasReallyHappy::
# 183 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "LUKA was really happy when he told\n"
# 184 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "us he befriended another strong TRAINER.\p"
# 185 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "He has always loved battling together\n"
# 186 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "with his POKéMON since he was little.\p"
# 187 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Seeing him smile like that again...\n"
# 188 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "it felt completely natural.$"
# 189 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 190 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_WallyLeftWithoutTelling::
# 191 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "I want you to keep this a secret\n"
# 192 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "from my husband...\p"
# 193 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "LUKA left VERDANTURF TOWN to chase\n"
# 194 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "information on that comet again.\p"
# 195 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "He has always been brave and\n"
# 196 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "restless, following his instincts.\p"
# 197 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "I worry, of course... but I know him.\n"
# 198 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "He always finds his way back.$"
