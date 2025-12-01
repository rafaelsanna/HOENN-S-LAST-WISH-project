PetalburgCity_WallysHouse_MapScripts::
	map_script MAP_SCRIPT_ON_FRAME_TABLE, PetalburgCity_WallysHouse_OnFrame
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, PetalburgCity_WallysHouse_OnWarp
	.byte 0

PetalburgCity_WallysHouse_OnWarp:
	map_script_2 VAR_PETALBURG_CITY_STATE, 4, PetalburgCity_WallysHouse_EventScript_PlayerWallysDadFaceEachOther
	.2byte 0

PetalburgCity_WallysHouse_EventScript_PlayerWallysDadFaceEachOther::
	turnobject LOCALID_PLAYER, DIR_EAST
	turnobject LOCALID_WALLYS_HOUSE_WALLYS_DAD, DIR_WEST
	end

PetalburgCity_WallysHouse_OnFrame:
	map_script_2 VAR_PETALBURG_CITY_STATE, 4, PetalburgCity_WallysHouse_EventScript_GiveHMSurf
	.2byte 0

PetalburgCity_WallysHouse_EventScript_GiveHMSurf::
	lockall
	msgbox PetalburgCity_WallysHouse_Text_PleaseExcuseUs, MSGBOX_DEFAULT
	giveitem ITEM_HM_SURF
	setflag FLAG_RECEIVED_HM_SURF
	msgbox PetalburgCity_WallysHouse_Text_SurfGoAllSortsOfPlaces, MSGBOX_DEFAULT
	setvar VAR_PETALBURG_CITY_STATE, 5
	releaseall
	end

PetalburgCity_WallysHouse_EventScript_WallysDad::
	lock
	faceplayer
	goto_if_set FLAG_DEFEATED_WALLY_VICTORY_ROAD, PetalburgCity_WallysHouse_EventScript_DefeatedWallyInVictoryRoad
	goto_if_set FLAG_RECEIVED_HM_SURF, PetalburgCity_WallysHouse_EventScript_ReceievedHMSurf
	goto_if_set FLAG_THANKED_FOR_PLAYING_WITH_WALLY, PetalburgCity_WallysHouse_EventScript_PlayedWithWally
	msgbox PetalburgCity_WallysHouse_Text_ThanksForPlayingWithWally, MSGBOX_DEFAULT
	setflag FLAG_THANKED_FOR_PLAYING_WITH_WALLY
	release
	end

PetalburgCity_WallysHouse_EventScript_ReceievedHMSurf::
	msgbox PetalburgCity_WallysHouse_Text_WallyIsComingHomeSoon, MSGBOX_DEFAULT
	release
	end

PetalburgCity_WallysHouse_EventScript_DefeatedWallyInVictoryRoad::
	msgbox PetalburgCity_WallysHouse_Text_YouMetWallyInEverGrandeCity, MSGBOX_DEFAULT
	release
	end

PetalburgCity_WallysHouse_EventScript_PlayedWithWally::
	msgbox PetalburgCity_WallysHouse_Text_WonderHowWallyIsDoing, MSGBOX_DEFAULT
	release
	end

PetalburgCity_WallysHouse_EventScript_WallysMom::
	lock
	faceplayer
	goto_if_set FLAG_RECEIVED_HM_SURF, PetalburgCity_WallysHouse_EventScript_ReceivedHMSurf
	msgbox PetalburgCity_WallysHouse_Text_WallyWasReallyHappy, MSGBOX_DEFAULT
	release
	end

PetalburgCity_WallysHouse_EventScript_ReceivedHMSurf::
	msgbox PetalburgCity_WallysHouse_Text_WallyLeftWithoutTelling, MSGBOX_DEFAULT
	release
	end

PetalburgCity_WallysHouse_Text_ThanksForPlayingWithWally:
    .string "You are...\n"
    .string "Ah, you must be {PLAYER}{KUN}, right?\p"
    .string "Thank you for spending time with LUKA\n"
    .string "earlier. Few people keep up with him.\p"
    .string "Unlike most kids, he has always had a\n"
    .string "brave and restless spirit.\p"
    .string "He bonds with POKEMON naturally, as if\n"
    .string "he understands them on some deep level.\p"
    .string "Lately he has been sleeping poorly... he\n"
    .string "keeps talking about strange dreams.\p"
    .string "Ever since that comet passed over HOENN,\n"
    .string "he has been unable to think about\n"
    .string "anything else.\p"
    .string "We are sending him to stay with our\n"
    .string "relatives in VERDANTURF TOWN.\p"
    .string "The air is calmer there, and maybe he\n"
    .string "can finally rest.\p"
    .string "What is that? Where is LUKA now?\n"
    .string "He already left.\p"
    .string "I wonder how far he has gotten\n"
    .string "by now...$"


PetalburgCity_WallysHouse_Text_WonderHowWallyIsDoing:
	.string "I wonder how our Lauka is doing?$"

PetalburgCity_WallysHouse_Text_PleaseExcuseUs:
    .string "{PLAYER}{KUN}! Please excuse us for\n"
    .string "calling you here so suddenly.\p"
    .string "Since LUKA went to VERDANTURF TOWN,\n"
    .string "he has been doing incredibly well.\p"
    .string "We believe you had a big part in that.\p"
    .string "When he left town, you helped him catch\n"
    .string "his first POKEMON, right?\p"
    .string "That moment meant a lot to him.\n"
    .string "Honestly, it meant a lot to us too.\p"
    .string "LUKA has always been brave, but lately\n"
    .string "he has been burdened by strange dreams\n"
    .string "and that comet he keeps talking about.\p"
    .string "Seeing him smile after meeting you...\n"
    .string "it gave us hope.\p"
    .string "We are grateful he has a friend like\n"
    .string "you by his side.\p"
    .string "This is not a bribe or anything, but...\n"
    .string "we would really like you to have this.$"

PetalburgCity_WallysHouse_Text_SurfGoAllSortsOfPlaces:
	.string "If your POKéMON can SURF, you'll be\n"
	.string "able to go to all sorts of places.$"

PetalburgCity_WallysHouse_Text_WallyIsComingHomeSoon:
	.string "LUKA's coming home soon.\n"
	.string "I'm looking forward to that.$"

PetalburgCity_WallysHouse_Text_YouMetWallyInEverGrandeCity:
    .string "Oh? You met LUKA in\n"
    .string "EVER GRANDE CITY?\p"
    .string "Well... knowing him, I suppose it is\n"
    .string "not impossible.\p"
    .string "LUKA has always had that fearless\n"
    .string "spirit, especially since the night he\n"
    .string "saw that strange comet.\p"
    .string "If something is calling to him, he will\n"
    .string "chase it, no matter how far it is.\p"
    .string "Still, it is a surprise...\n"
    .string "EVER GRANDE CITY is quite the journey.\p"
    .string "But if anyone would go that far on his\n"
    .string "own, it would be LUKA.$"

PetalburgCity_WallysHouse_Text_WallyWasReallyHappy:
    .string "LUKA was really happy when he told\n"
    .string "us he caught a POKEMON.\p"
    .string "He has always gotten along with\n"
    .string "POKéMON since he was little.\p"
    .string "Seeing him smile like that again...\n"
    .string "it felt completely natural.$"

PetalburgCity_WallysHouse_Text_WallyLeftWithoutTelling:
    .string "I want you to keep this a secret\n"
    .string "from my husband...\p"
    .string "LUKA left VERDANTURF TOWN without\n"
    .string "telling anyone.\p"
    .string "He has always been brave and\n"
    .string "restless, following his instincts.\p"
    .string "I worry, of course... but I know him.\n"
    .string "He always finds his way back.$"


