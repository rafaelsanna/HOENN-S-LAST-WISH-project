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
	goto_if_set FLAG_DEFEATED_WALLY_VICTORY_ROAD, PetalburgCity_WallysHouse_EventScript_DefeatedWallyInVictoryRoad
# 42 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	goto_if_set FLAG_RECEIVED_HM_SURF, PetalburgCity_WallysHouse_EventScript_ReceievedHMSurf
# 43 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	goto_if_set FLAG_THANKED_FOR_PLAYING_WITH_WALLY, PetalburgCity_WallysHouse_EventScript_PlayedWithWally
# 44 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_ThanksForPlayingWithWally, MSGBOX_DEFAULT
# 45 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	setflag FLAG_THANKED_FOR_PLAYING_WITH_WALLY
# 46 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	release
# 47 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	end
# 48 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 49 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_EventScript_ReceievedHMSurf::
# 50 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_WallyIsComingHomeSoon, MSGBOX_DEFAULT
# 51 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	release
# 52 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	end
# 53 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 54 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_EventScript_DefeatedWallyInVictoryRoad::
# 55 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_YouMetWallyInEverGrandeCity, MSGBOX_DEFAULT
# 56 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	release
# 57 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	end
# 58 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 59 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_EventScript_PlayedWithWally::
# 60 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_WonderHowWallyIsDoing, MSGBOX_DEFAULT
# 61 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	release
# 62 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	end
# 63 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 64 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_EventScript_WallysMom::
# 65 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	lock
# 66 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	faceplayer
# 67 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	goto_if_set FLAG_RECEIVED_HM_SURF, PetalburgCity_WallysHouse_EventScript_ReceivedHMSurf
# 68 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_WallyWasReallyHappy, MSGBOX_DEFAULT
# 69 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	release
# 70 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	end
# 71 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 72 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_EventScript_ReceivedHMSurf::
# 73 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	msgbox PetalburgCity_WallysHouse_Text_WallyLeftWithoutTelling, MSGBOX_DEFAULT
# 74 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	release
# 75 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	end
# 76 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 77 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_ThanksForPlayingWithWally:
# 78 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "You are...\n"
# 79 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Ah, you must be {PLAYER}{KUN}, right?\p"
# 80 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Thank you for spending time with LUKA\n"
# 81 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "earlier. Few people keep up with him.\p"
# 82 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Unlike most kids, he has always had a\n"
# 83 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "brave and restless spirit.\p"
# 84 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "He bonds with POKEMON naturally, as if\n"
# 85 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "he understands them on some deep level.\p"
# 86 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Lately he has been sleeping poorly... he\n"
# 87 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "keeps talking about strange dreams.\p"
# 88 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Ever since that comet passed over HOENN,\n"
# 89 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "he has been unable to think about\l"
# 90 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "anything else.\p"
# 91 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "We are sending him to stay with our\n"
# 92 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "relatives in VERDANTURF TOWN.\p"
# 93 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "The air is calmer there, and maybe he\n"
# 94 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "can finally rest.\p"
# 95 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "What is that? Where is LUKA now?\n"
# 96 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "He already left.\p"
# 97 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "I wonder how far he has gotten\n"
# 98 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "by now...$"
# 99 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 100 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 101 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_WonderHowWallyIsDoing:
# 102 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "I wonder how our LUKA is doing?$"
# 103 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 104 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_PleaseExcuseUs:
# 105 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "{PLAYER}{KUN}! Please excuse us for\n"
# 106 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "calling you here so suddenly.\p"
# 107 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Since LUKA went to VERDANTURF TOWN,\n"
# 108 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "he has been doing incredibly well.\p"
# 109 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "We believe you had a big part in that.\p"
# 110 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "When he left town, you sent him off\n"
# 111 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "with a battle, right?\p"
# 112 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "That moment meant a lot to him.\n"
# 113 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Honestly, it meant a lot to us too.\p"
# 114 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "LUKA has always been brave, but lately\n"
# 115 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "he has been burdened by strange dreams\l"
# 116 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "and that comet he keeps talking about.\p"
# 117 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Seeing him smile after meeting you...\n"
# 118 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "it gave us hope.\p"
# 119 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "We are grateful he has a friend like\n"
# 120 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "you by his side.\p"
# 121 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "This is not a bribe or anything, but...\n"
# 122 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "we would really like you to have this.$"
# 123 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 124 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_SurfGoAllSortsOfPlaces:
# 125 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "If your POKéMON can SURF, you'll be\n"
# 126 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "able to go to all sorts of places.$"
# 127 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 128 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_TakeABreak:
# 129 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "Before you go, why don't you\n"
# 130 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "take a short break?$"
# 131 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 132 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_TakeCare:
# 133 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "Take care out there!$"
# 134 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 135 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_WallyIsComingHomeSoon:
# 136 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "LUKA's coming home soon.\n"
# 137 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
	.string "I'm looking forward to that.$"
# 138 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 139 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_YouMetWallyInEverGrandeCity:
# 140 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Oh? You met LUKA in\n"
# 141 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "EVER GRANDE CITY?\p"
# 142 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Well... knowing him, I suppose it is\n"
# 143 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "not impossible.\p"
# 144 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "LUKA has always had that fearless\n"
# 145 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "spirit, especially since the night he\l"
# 146 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "saw that strange comet.\p"
# 147 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "If something is calling to him, he will\n"
# 148 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "chase it, no matter how far it is.\p"
# 149 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Still, it is a surprise...\n"
# 150 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "EVER GRANDE CITY is quite the journey.\p"
# 151 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "But if anyone would go that far on his\n"
# 152 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "own, it would be LUKA.$"
# 153 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 154 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_WallyWasReallyHappy:
# 155 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "LUKA was really happy when he told\n"
# 156 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "us he befriended another strong TRAINER.\p"
# 157 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "He has always loved battling together\n"
# 158 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "with his POKéMON since he was little.\p"
# 159 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "Seeing him smile like that again...\n"
# 160 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "it felt completely natural.$"
# 161 "data/maps/PetalburgCity_WallysHouse/scripts.pory"

# 162 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
PetalburgCity_WallysHouse_Text_WallyLeftWithoutTelling:
# 163 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "I want you to keep this a secret\n"
# 164 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "from my husband...\p"
# 165 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "LUKA left VERDANTURF TOWN without\n"
# 166 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "telling anyone.\p"
# 167 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "He has always been brave and\n"
# 168 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "restless, following his instincts.\p"
# 169 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "I worry, of course... but I know him.\n"
# 170 "data/maps/PetalburgCity_WallysHouse/scripts.pory"
    .string "He always finds his way back.$"
