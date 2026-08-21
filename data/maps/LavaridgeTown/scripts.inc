# 1 "data/maps/LavaridgeTown/scripts.pory"

# 2 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_MapScripts::
# 3 "data/maps/LavaridgeTown/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, LavaridgeTown_OnTransition
# 4 "data/maps/LavaridgeTown/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, LavaridgeTown_OnFrame
# 5 "data/maps/LavaridgeTown/scripts.pory"
	.byte 0
# 6 "data/maps/LavaridgeTown/scripts.pory"

# 7 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_OnTransition:
# 8 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_VISITED_LAVARIDGE_TOWN
# 9 "data/maps/LavaridgeTown/scripts.pory"
	call_if_set FLAG_WHITEOUT_TO_LAVARIDGE, LavaridgeTown_EventScript_ClearLavaridgeWhiteOut
# 10 "data/maps/LavaridgeTown/scripts.pory"
	call_if_set FLAG_DEFEATED_EVIL_TEAM_MT_CHIMNEY, LavaridgeTown_EventScript_ShowMtChimneyTrainers
# 11 "data/maps/LavaridgeTown/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 12 "data/maps/LavaridgeTown/scripts.pory"
	call Common_EventScript_SetupRivalOnBikeGfxId
# 13 "data/maps/LavaridgeTown/scripts.pory"
	call_if_eq VAR_LAVARIDGE_TOWN_STATE, 1, LavaridgeTown_EventScript_CheckSetRivalPos
# 14 "data/maps/LavaridgeTown/scripts.pory"
	call_if_eq VAR_LAVARIDGE_TOWN_STATE, 1, LavaridgeTown_EventScript_HideMapNamePopup
# 15 "data/maps/LavaridgeTown/scripts.pory"
	end
# 16 "data/maps/LavaridgeTown/scripts.pory"

# 17 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ClearLavaridgeWhiteOut::
# 18 "data/maps/LavaridgeTown/scripts.pory"
	clearflag FLAG_WHITEOUT_TO_LAVARIDGE
# 19 "data/maps/LavaridgeTown/scripts.pory"
	return
# 20 "data/maps/LavaridgeTown/scripts.pory"

# 21 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_CheckSetRivalPos::
# 22 "data/maps/LavaridgeTown/scripts.pory"
	getplayerxy VAR_0x8004, VAR_0x8005
# 23 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_0x8004, 7, LavaridgeTown_EventScript_SetRivalPos
# 24 "data/maps/LavaridgeTown/scripts.pory"
	return
# 25 "data/maps/LavaridgeTown/scripts.pory"

# 26 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_SetRivalPos::
# 27 "data/maps/LavaridgeTown/scripts.pory"
	setobjectxyperm LOCALID_LAVARIDGE_RIVAL, 8, 11
# 28 "data/maps/LavaridgeTown/scripts.pory"
	setobjectxyperm LOCALID_LAVARIDGE_RIVAL_ON_BIKE, 8, 11
# 29 "data/maps/LavaridgeTown/scripts.pory"
	setobjectmovementtype LOCALID_LAVARIDGE_RIVAL_ON_BIKE, MOVEMENT_TYPE_FACE_UP
# 30 "data/maps/LavaridgeTown/scripts.pory"
	clearflag FLAG_HIDE_LAVARIDGE_TOWN_RIVAL
# 31 "data/maps/LavaridgeTown/scripts.pory"
	return
# 32 "data/maps/LavaridgeTown/scripts.pory"

# 33 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ShowMtChimneyTrainers::
# 34 "data/maps/LavaridgeTown/scripts.pory"
	clearflag FLAG_HIDE_MT_CHIMNEY_TRAINERS
# 35 "data/maps/LavaridgeTown/scripts.pory"
	return
# 36 "data/maps/LavaridgeTown/scripts.pory"

# 37 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_HideMapNamePopup::
# 38 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 39 "data/maps/LavaridgeTown/scripts.pory"
	return
# 40 "data/maps/LavaridgeTown/scripts.pory"

# 41 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_OnFrame:
# 42 "data/maps/LavaridgeTown/scripts.pory"
	map_script_2 VAR_LAVARIDGE_TOWN_STATE, 1, LavaridgeTown_EventScript_RivalGiveGoGoggles
# 43 "data/maps/LavaridgeTown/scripts.pory"
	.2byte 0
# 44 "data/maps/LavaridgeTown/scripts.pory"

# 45 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalGiveGoGoggles::
# 46 "data/maps/LavaridgeTown/scripts.pory"
	lockall
# 47 "data/maps/LavaridgeTown/scripts.pory"
	getplayerxy VAR_0x8008, VAR_0x8009
# 48 "data/maps/LavaridgeTown/scripts.pory"
	call_if_eq VAR_0x8008, 7, LavaridgeTown_EventScript_RivalWalkToGym
# 49 "data/maps/LavaridgeTown/scripts.pory"
	call_if_ne VAR_0x8008, 7, LavaridgeTown_EventScript_RivalExitHerbShop
# 50 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_PIN
# 51 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_ExclamationMark
# 52 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 53 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_Delay48
# 54 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 55 "data/maps/LavaridgeTown/scripts.pory"
	delay 20
# 56 "data/maps/LavaridgeTown/scripts.pory"
	checkplayergender
# 57 "data/maps/LavaridgeTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LavaridgeTown_EventScript_PlayMayMusic
# 58 "data/maps/LavaridgeTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LavaridgeTown_EventScript_PlayBrendanMusic
# 59 "data/maps/LavaridgeTown/scripts.pory"
	checkplayergender
# 60 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LavaridgeTown_EventScript_MayGiveGoGoggles
# 61 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, LavaridgeTown_EventScript_BrendanGiveGoGoggles
# 62 "data/maps/LavaridgeTown/scripts.pory"
	end
# 63 "data/maps/LavaridgeTown/scripts.pory"

# 64 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalWalkToGym::
# 65 "data/maps/LavaridgeTown/scripts.pory"
	addobject LOCALID_LAVARIDGE_RIVAL
# 66 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, LavaridgeTown_Movement_RivalWalkToGym
# 67 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 68 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_WalkInPlaceFasterLeft
# 69 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 70 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 71 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 72 "data/maps/LavaridgeTown/scripts.pory"
	return
# 73 "data/maps/LavaridgeTown/scripts.pory"

# 74 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_MayGiveGoGoggles::
# 75 "data/maps/LavaridgeTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 76 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_MayNiceBadgesTakeThis, MSGBOX_DEFAULT
# 77 "data/maps/LavaridgeTown/scripts.pory"
	removefieldmugshot
# 78 "data/maps/LavaridgeTown/scripts.pory"
	giveitem ITEM_GO_GOGGLES
# 79 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_RECEIVED_GO_GOGGLES
# 80 "data/maps/LavaridgeTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 81 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_MayExplainGoGogglesChallengeDad, MSGBOX_DEFAULT
# 82 "data/maps/LavaridgeTown/scripts.pory"
	removefieldmugshot
# 83 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RivalExit
# 84 "data/maps/LavaridgeTown/scripts.pory"
	end
# 85 "data/maps/LavaridgeTown/scripts.pory"

# 86 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_BrendanGiveGoGoggles::
# 87 "data/maps/LavaridgeTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 88 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_BrendanNiceBadgesTakeThis, MSGBOX_DEFAULT
# 89 "data/maps/LavaridgeTown/scripts.pory"
	removefieldmugshot
# 90 "data/maps/LavaridgeTown/scripts.pory"
	giveitem ITEM_GO_GOGGLES
# 91 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_RECEIVED_GO_GOGGLES
# 92 "data/maps/LavaridgeTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 93 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_BrendanExplainGoGogglesChallengeDad, MSGBOX_DEFAULT
# 94 "data/maps/LavaridgeTown/scripts.pory"
	removefieldmugshot
# 95 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RivalExit
# 96 "data/maps/LavaridgeTown/scripts.pory"
	end
# 97 "data/maps/LavaridgeTown/scripts.pory"

# 98 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalExit::
# 99 "data/maps/LavaridgeTown/scripts.pory"
	closemessage
# 100 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RIVAL
# 101 "data/maps/LavaridgeTown/scripts.pory"
	setobjectxyperm LOCALID_LAVARIDGE_RIVAL_ON_BIKE, 8, 5
# 102 "data/maps/LavaridgeTown/scripts.pory"
	addobject LOCALID_LAVARIDGE_RIVAL_ON_BIKE
# 103 "data/maps/LavaridgeTown/scripts.pory"
	delay 30
# 104 "data/maps/LavaridgeTown/scripts.pory"
	call_if_eq VAR_0x8008, 7, LavaridgeTown_EventScript_RivalExit1
# 105 "data/maps/LavaridgeTown/scripts.pory"
	call_if_ne VAR_0x8008, 7, LavaridgeTown_EventScript_RivalExit2
# 106 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RIVAL_ON_BIKE
# 107 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_LAVARIDGE_TOWN_STATE, 2
# 108 "data/maps/LavaridgeTown/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 109 "data/maps/LavaridgeTown/scripts.pory"
	savebgm MUS_DUMMY
# 110 "data/maps/LavaridgeTown/scripts.pory"
	fadedefaultbgm
# 111 "data/maps/LavaridgeTown/scripts.pory"
	releaseall
# 112 "data/maps/LavaridgeTown/scripts.pory"
	end
# 113 "data/maps/LavaridgeTown/scripts.pory"

# 114 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_PlayMayMusic::
# 115 "data/maps/LavaridgeTown/scripts.pory"
	playbgm MUS_ENCOUNTER_MAY, TRUE
# 116 "data/maps/LavaridgeTown/scripts.pory"
	return
# 117 "data/maps/LavaridgeTown/scripts.pory"

# 118 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_PlayBrendanMusic::
# 119 "data/maps/LavaridgeTown/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 120 "data/maps/LavaridgeTown/scripts.pory"
	return
# 121 "data/maps/LavaridgeTown/scripts.pory"

# 122 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalExitHerbShop::
# 123 "data/maps/LavaridgeTown/scripts.pory"
	opendoor 12, 15
# 124 "data/maps/LavaridgeTown/scripts.pory"
	waitdooranim
# 125 "data/maps/LavaridgeTown/scripts.pory"
	addobject LOCALID_LAVARIDGE_RIVAL
# 126 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, LavaridgeTown_Movement_RivalExitHerbShop
# 127 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 128 "data/maps/LavaridgeTown/scripts.pory"
	closedoor 12, 15
# 129 "data/maps/LavaridgeTown/scripts.pory"
	waitdooranim
# 130 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, LavaridgeTown_Movement_RivalWalkToGym
# 131 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 132 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_WalkInPlaceFasterLeft
# 133 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 134 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_PIN
# 135 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_ExclamationMark
# 136 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 137 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_Delay48
# 138 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 139 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 140 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 141 "data/maps/LavaridgeTown/scripts.pory"
	return
# 142 "data/maps/LavaridgeTown/scripts.pory"

# 143 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalExit1::
# 144 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_PLAYER, LavaridgeTown_Movement_PlayerWatchRivalExit
# 145 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL_ON_BIKE, LavaridgeTown_Movement_RivalExit1
# 146 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 147 "data/maps/LavaridgeTown/scripts.pory"
	return
# 148 "data/maps/LavaridgeTown/scripts.pory"

# 149 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalExit2::
# 150 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL_ON_BIKE, LavaridgeTown_Movement_RivalExit2
# 151 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 152 "data/maps/LavaridgeTown/scripts.pory"
	return
# 153 "data/maps/LavaridgeTown/scripts.pory"

# 154 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RivalWalkToGym:
# 155 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 156 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 157 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 158 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 159 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 160 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 161 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 162 "data/maps/LavaridgeTown/scripts.pory"

# 163 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RivalExit2:
# 164 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 165 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 166 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 167 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 168 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 169 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 170 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 171 "data/maps/LavaridgeTown/scripts.pory"

# 172 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_PlayerWatchRivalExit:
# 173 "data/maps/LavaridgeTown/scripts.pory"
	delay_16
# 174 "data/maps/LavaridgeTown/scripts.pory"
	delay_8
# 175 "data/maps/LavaridgeTown/scripts.pory"
	walk_in_place_faster_down
# 176 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 177 "data/maps/LavaridgeTown/scripts.pory"

# 178 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RivalExit1:
# 179 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 180 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 181 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 182 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 183 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 184 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 185 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 186 "data/maps/LavaridgeTown/scripts.pory"

# 187 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RivalExitHerbShop:
# 188 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 189 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 190 "data/maps/LavaridgeTown/scripts.pory"

# 191 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_HotSpringsTrigger::
# 192 "data/maps/LavaridgeTown/scripts.pory"
	specialvar VAR_RESULT, GetPlayerFacingDirection
# 193 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, DIR_SOUTH, LavaridgeTown_EventScript_EnteredHotSprings
# 194 "data/maps/LavaridgeTown/scripts.pory"
	end
# 195 "data/maps/LavaridgeTown/scripts.pory"

# 196 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_EnteredHotSprings::
# 197 "data/maps/LavaridgeTown/scripts.pory"
	incrementgamestat GAME_STAT_ENTERED_HOT_SPRINGS
# 198 "data/maps/LavaridgeTown/scripts.pory"
	end
# 199 "data/maps/LavaridgeTown/scripts.pory"

# 200 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ExpertM::
# 201 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_HotSpringsNeverRunDry, MSGBOX_NPC
# 202 "data/maps/LavaridgeTown/scripts.pory"
	end
# 203 "data/maps/LavaridgeTown/scripts.pory"

# 204 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_OldMan::
# 205 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_PokemonNippedBackside, MSGBOX_SIGN
# 206 "data/maps/LavaridgeTown/scripts.pory"
	end
# 207 "data/maps/LavaridgeTown/scripts.pory"

# 208 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_Twin::
# 209 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_BatheInHotSpringsEveryDay, MSGBOX_NPC
# 210 "data/maps/LavaridgeTown/scripts.pory"
	end
# 211 "data/maps/LavaridgeTown/scripts.pory"

# 212 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_Boy::
# 213 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_Boy, MSGBOX_NPC
# 214 "data/maps/LavaridgeTown/scripts.pory"
	end
# 215 "data/maps/LavaridgeTown/scripts.pory"

# 216 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_HotSpringsOldWoman1::
# 217 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_IfPokemonInHotSprings, MSGBOX_NPC
# 218 "data/maps/LavaridgeTown/scripts.pory"
	end
# 219 "data/maps/LavaridgeTown/scripts.pory"

# 220 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_HotSpringsOldWoman2::
# 221 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_HotSpringsClaims, MSGBOX_NPC
# 222 "data/maps/LavaridgeTown/scripts.pory"
	end
# 223 "data/maps/LavaridgeTown/scripts.pory"

# 224 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ExpertF::
# 225 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_OhYouLikeHotSprings, MSGBOX_NPC
# 226 "data/maps/LavaridgeTown/scripts.pory"
	end
# 227 "data/maps/LavaridgeTown/scripts.pory"

# 228 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_EggWoman::
# 229 "data/maps/LavaridgeTown/scripts.pory"
	lock
# 230 "data/maps/LavaridgeTown/scripts.pory"
	faceplayer
# 231 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_set FLAG_RECEIVED_LAVARIDGE_EGG, LavaridgeTown_EventScript_ReceivedEgg
# 232 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_HaveEggWillYouTakeIt, MSGBOX_YESNO
# 233 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LavaridgeTown_EventScript_DeclineEgg
# 234 "data/maps/LavaridgeTown/scripts.pory"
	getpartysize
# 235 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, PARTY_SIZE, LavaridgeTown_EventScript_NoRoomForEgg
# 236 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_HopeYoullWalkPlentyWithEgg, MSGBOX_DEFAULT
# 237 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_RECEIVED_LAVARIDGE_EGG
# 238 "data/maps/LavaridgeTown/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 239 "data/maps/LavaridgeTown/scripts.pory"
	message LavaridgeTown_Text_ReceivedTheEgg
# 240 "data/maps/LavaridgeTown/scripts.pory"
	waitfanfare
# 241 "data/maps/LavaridgeTown/scripts.pory"
	giveegg SPECIES_WYNAUT
# 242 "data/maps/LavaridgeTown/scripts.pory"
	release
# 243 "data/maps/LavaridgeTown/scripts.pory"
	end
# 244 "data/maps/LavaridgeTown/scripts.pory"

# 245 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ReceivedEgg::
# 246 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_EverySoOftenEggFoundAtDayCare, MSGBOX_DEFAULT
# 247 "data/maps/LavaridgeTown/scripts.pory"
	release
# 248 "data/maps/LavaridgeTown/scripts.pory"
	end
# 249 "data/maps/LavaridgeTown/scripts.pory"

# 250 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_NoRoomForEgg::
# 251 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_NoRoomForThisEgg, MSGBOX_DEFAULT
# 252 "data/maps/LavaridgeTown/scripts.pory"
	release
# 253 "data/maps/LavaridgeTown/scripts.pory"
	end
# 254 "data/maps/LavaridgeTown/scripts.pory"

# 255 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_DeclineEgg::
# 256 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_AsYouWishThen, MSGBOX_DEFAULT
# 257 "data/maps/LavaridgeTown/scripts.pory"
	release
# 258 "data/maps/LavaridgeTown/scripts.pory"
	end
# 259 "data/maps/LavaridgeTown/scripts.pory"

# 260 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_TownSign::
# 261 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_TownSign, MSGBOX_SIGN
# 262 "data/maps/LavaridgeTown/scripts.pory"
	end
# 263 "data/maps/LavaridgeTown/scripts.pory"

# 264 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_GymSign::
# 265 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_GymSign, MSGBOX_SIGN
# 266 "data/maps/LavaridgeTown/scripts.pory"
	end
# 267 "data/maps/LavaridgeTown/scripts.pory"

# 268 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_HerbShopSign::
# 269 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_HerbShopSign, MSGBOX_SIGN
# 270 "data/maps/LavaridgeTown/scripts.pory"
	end
# 271 "data/maps/LavaridgeTown/scripts.pory"

# 272 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_MayNiceBadgesTakeThis:
# 273 "data/maps/LavaridgeTown/scripts.pory"
	.string "ZINNIA: {PLAYER}{KUN}! Long time no see!\p"
# 274 "data/maps/LavaridgeTown/scripts.pory"
	.string "Oh? While I visited the hot springs,\n"
# 275 "data/maps/LavaridgeTown/scripts.pory"
	.string "you got the LAVARIDGE GYM BADGE.\p"
# 276 "data/maps/LavaridgeTown/scripts.pory"
	.string "You must have collected\n"
# 277 "data/maps/LavaridgeTown/scripts.pory"
	.string "good POKéMON…\l"
# 278 "data/maps/LavaridgeTown/scripts.pory"
	.string "No, I believe you raised some.\p"
# 279 "data/maps/LavaridgeTown/scripts.pory"
	.string "I guess it would be okay for you to\n"
# 280 "data/maps/LavaridgeTown/scripts.pory"
	.string "have this.$"
# 281 "data/maps/LavaridgeTown/scripts.pory"

# 282 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_MayExplainGoGogglesChallengeDad:
# 283 "data/maps/LavaridgeTown/scripts.pory"
	.string "ZINNIA: With those GO-GOGGLES, you'll\n"
# 284 "data/maps/LavaridgeTown/scripts.pory"
	.string "have no trouble getting through the\l"
# 285 "data/maps/LavaridgeTown/scripts.pory"
	.string "desert near ROUTE 111.\p"
# 286 "data/maps/LavaridgeTown/scripts.pory"
	.string "But, wow, {PLAYER}{KUN}…\n"
# 287 "data/maps/LavaridgeTown/scripts.pory"
	.string "Challenging GYMS…\p"
# 288 "data/maps/LavaridgeTown/scripts.pory"
	.string "You're trying hard because you don't\n"
# 289 "data/maps/LavaridgeTown/scripts.pory"
	.string "want to lose to me, I bet!\p"
# 290 "data/maps/LavaridgeTown/scripts.pory"
	.string "{PLAYER}{KUN}, I think I should challenge\n"
# 291 "data/maps/LavaridgeTown/scripts.pory"
	.string "Professor CALENDULA at the PETALBURG GYM.\p"
# 292 "data/maps/LavaridgeTown/scripts.pory"
	.string "See you again!$"
# 293 "data/maps/LavaridgeTown/scripts.pory"
	
# 294 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_BrendanNiceBadgesTakeThis:
# 295 "data/maps/LavaridgeTown/scripts.pory"
	.string "ZENNO: {PLAYER}, hey, it's been a while.\n"
# 296 "data/maps/LavaridgeTown/scripts.pory"
	.string "How's it going?\p"
# 297 "data/maps/LavaridgeTown/scripts.pory"
	.string "Hmm…\n"
# 298 "data/maps/LavaridgeTown/scripts.pory"
	.string "That's a decent collection of BADGES.\p"
# 299 "data/maps/LavaridgeTown/scripts.pory"
	.string "All right, then.\n"
# 300 "data/maps/LavaridgeTown/scripts.pory"
	.string "You may as well have this.$"
# 301 "data/maps/LavaridgeTown/scripts.pory"

# 302 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_BrendanExplainGoGogglesChallengeDad:
# 303 "data/maps/LavaridgeTown/scripts.pory"
	.string "ZENNO: Keep those with you if you're\n"
# 304 "data/maps/LavaridgeTown/scripts.pory"
	.string "planning on going into that desert near\l"
# 305 "data/maps/LavaridgeTown/scripts.pory"
	.string "ROUTE 111.\p"
# 306 "data/maps/LavaridgeTown/scripts.pory"
	.string "There should be some POKéMON that\n"
# 307 "data/maps/LavaridgeTown/scripts.pory"
	.string "are exclusively desert-dwellers.\l"
# 308 "data/maps/LavaridgeTown/scripts.pory"
	.string "You might look around for those.\p"
# 309 "data/maps/LavaridgeTown/scripts.pory"
	.string "As for me…\n"
# 310 "data/maps/LavaridgeTown/scripts.pory"
	.string "I'm thinking... are we ready to face\l"
# 311 "data/maps/LavaridgeTown/scripts.pory"
	.string "Professor CALENDULA at the GYM?\p"
# 312 "data/maps/LavaridgeTown/scripts.pory"
	.string "Hmm... I think I'll try anyway!\n"
# 313 "data/maps/LavaridgeTown/scripts.pory"
	.string "See you around!$"
# 314 "data/maps/LavaridgeTown/scripts.pory"

# 315 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_HaveEggWillYouTakeIt:
# 316 "data/maps/LavaridgeTown/scripts.pory"
	.string "I have here an EGG.\p"
# 317 "data/maps/LavaridgeTown/scripts.pory"
	.string "I'd hoped to hatch it by covering it in\n"
# 318 "data/maps/LavaridgeTown/scripts.pory"
	.string "hot sand by the hot springs.\l"
# 319 "data/maps/LavaridgeTown/scripts.pory"
	.string "But that doesn't seem to be enough…\p"
# 320 "data/maps/LavaridgeTown/scripts.pory"
	.string "I've heard it would be best if it were\n"
# 321 "data/maps/LavaridgeTown/scripts.pory"
	.string "kept together with POKéMON and\l"
# 322 "data/maps/LavaridgeTown/scripts.pory"
	.string "carried about.\p"
# 323 "data/maps/LavaridgeTown/scripts.pory"
	.string "You are a TRAINER, yes?\n"
# 324 "data/maps/LavaridgeTown/scripts.pory"
	.string "And your POKéMON radiate vitality.\p"
# 325 "data/maps/LavaridgeTown/scripts.pory"
	.string "So, what say you?\n"
# 326 "data/maps/LavaridgeTown/scripts.pory"
	.string "Will you take this EGG to hatch?$"
# 327 "data/maps/LavaridgeTown/scripts.pory"

# 328 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_HopeYoullWalkPlentyWithEgg:
# 329 "data/maps/LavaridgeTown/scripts.pory"
	.string "Good! I hope you'll walk plenty with\n"
# 330 "data/maps/LavaridgeTown/scripts.pory"
	.string "this here EGG!$"
# 331 "data/maps/LavaridgeTown/scripts.pory"

# 332 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_ReceivedTheEgg:
# 333 "data/maps/LavaridgeTown/scripts.pory"
	.string "{PLAYER} received the EGG.$"
# 334 "data/maps/LavaridgeTown/scripts.pory"

# 335 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_NoRoomForThisEgg:
# 336 "data/maps/LavaridgeTown/scripts.pory"
	.string "Oh? You've too many POKéMON.\n"
# 337 "data/maps/LavaridgeTown/scripts.pory"
	.string "There's no room for this EGG…$"
# 338 "data/maps/LavaridgeTown/scripts.pory"

# 339 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_AsYouWishThen:
# 340 "data/maps/LavaridgeTown/scripts.pory"
	.string "As you wish, then…\p"
# 341 "data/maps/LavaridgeTown/scripts.pory"
	.string "If you have a change of heart about\n"
# 342 "data/maps/LavaridgeTown/scripts.pory"
	.string "hatching this EGG, I will be here.$"
# 343 "data/maps/LavaridgeTown/scripts.pory"

# 344 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_EverySoOftenEggFoundAtDayCare:
# 345 "data/maps/LavaridgeTown/scripts.pory"
	.string "Every so often, an EGG will be found at\n"
# 346 "data/maps/LavaridgeTown/scripts.pory"
	.string "the POKéMON DAY CARE.\p"
# 347 "data/maps/LavaridgeTown/scripts.pory"
	.string "Or at least that's how the rumor goes.$"
# 348 "data/maps/LavaridgeTown/scripts.pory"

# 349 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_HotSpringsNeverRunDry:
# 350 "data/maps/LavaridgeTown/scripts.pory"
	.string "We draw as much hot water as we need,\n"
# 351 "data/maps/LavaridgeTown/scripts.pory"
	.string "and yet the hot springs never run dry.\p"
# 352 "data/maps/LavaridgeTown/scripts.pory"
	.string "Isn't it magical?\p"
# 353 "data/maps/LavaridgeTown/scripts.pory"
	.string "These hot springs appear near active\n"
# 354 "data/maps/LavaridgeTown/scripts.pory"
	.string "volcanoes. Veins of water under the\l"
# 355 "data/maps/LavaridgeTown/scripts.pory"
	.string "ground are heated by magma to well up\l"
# 356 "data/maps/LavaridgeTown/scripts.pory"
	.string "as hot springs.$"
# 357 "data/maps/LavaridgeTown/scripts.pory"

# 358 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_PokemonNippedBackside:
# 359 "data/maps/LavaridgeTown/scripts.pory"
	.string "Being buried in this hot sand is…\n"
# 360 "data/maps/LavaridgeTown/scripts.pory"
	.string "Sigh…\p"
# 361 "data/maps/LavaridgeTown/scripts.pory"
	.string "So warm and heavenly…\p"
# 362 "data/maps/LavaridgeTown/scripts.pory"
	.string "Eh? Gyaah! Ouch!\p"
# 363 "data/maps/LavaridgeTown/scripts.pory"
	.string "A POKéMON nipped my backside!$"
# 364 "data/maps/LavaridgeTown/scripts.pory"

# 365 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_OhYouLikeHotSprings:
# 366 "data/maps/LavaridgeTown/scripts.pory"
	.string "Oh, you like hot springs, do you?\p"
# 367 "data/maps/LavaridgeTown/scripts.pory"
	.string "That's surprising for one as young\n"
# 368 "data/maps/LavaridgeTown/scripts.pory"
	.string "as you.$"
# 369 "data/maps/LavaridgeTown/scripts.pory"

# 370 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_BatheInHotSpringsEveryDay:
# 371 "data/maps/LavaridgeTown/scripts.pory"
	.string "I bathe in the hot springs every day.\p"
# 372 "data/maps/LavaridgeTown/scripts.pory"
	.string "I want to become a beautiful and strong\n"
# 373 "data/maps/LavaridgeTown/scripts.pory"
	.string "GYM LEADER like FLANNERY.$"
# 374 "data/maps/LavaridgeTown/scripts.pory"

# 375 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_IfPokemonInHotSprings:
# 376 "data/maps/LavaridgeTown/scripts.pory"
	.string "If people put POKéMON in hot springs,\n"
# 377 "data/maps/LavaridgeTown/scripts.pory"
	.string "it might be seriously strange.\p"
# 378 "data/maps/LavaridgeTown/scripts.pory"
	.string "Why, it might be an electric bath, or\n"
# 379 "data/maps/LavaridgeTown/scripts.pory"
	.string "a bubble bath, or even a lava bath…$"
# 380 "data/maps/LavaridgeTown/scripts.pory"

# 381 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_HotSpringsClaims:
# 382 "data/maps/LavaridgeTown/scripts.pory"
	.string "They're claiming that these hot springs\n"
# 383 "data/maps/LavaridgeTown/scripts.pory"
	.string "are good for calming nervous tension,\l"
# 384 "data/maps/LavaridgeTown/scripts.pory"
	.string "relieving aching muscles, solving\l"
# 385 "data/maps/LavaridgeTown/scripts.pory"
	.string "romantic problems, and attracting\l"
# 386 "data/maps/LavaridgeTown/scripts.pory"
	.string "money…$"
# 387 "data/maps/LavaridgeTown/scripts.pory"

# 388 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_TownSign:
# 389 "data/maps/LavaridgeTown/scripts.pory"
	.string "LAVARIDGE TOWN\p"
# 390 "data/maps/LavaridgeTown/scripts.pory"
	.string "“POKéMON CENTER HOT SPRINGS\n"
# 391 "data/maps/LavaridgeTown/scripts.pory"
	.string "An excellent place for relaxing!”$"
# 392 "data/maps/LavaridgeTown/scripts.pory"

# 393 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_GymSign:
# 394 "data/maps/LavaridgeTown/scripts.pory"
	.string "LAVARIDGE TOWN POKéMON GYM\n"
# 395 "data/maps/LavaridgeTown/scripts.pory"
	.string "LEADER: FLANNERY\l"
# 396 "data/maps/LavaridgeTown/scripts.pory"
	.string "“One with a fiery passion that burns!”$"
# 397 "data/maps/LavaridgeTown/scripts.pory"

# 398 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_HerbShopSign:
# 399 "data/maps/LavaridgeTown/scripts.pory"
	.string "POKéMON HERB SHOP\n"
# 400 "data/maps/LavaridgeTown/scripts.pory"
	.string "“Bitter taste--better cure!”$"
# 401 "data/maps/LavaridgeTown/scripts.pory"

# 402 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_Boy:
# 403 "data/maps/LavaridgeTown/scripts.pory"
    .string "Yo! My grandpa says\n"
# 404 "data/maps/LavaridgeTown/scripts.pory"
    .string "it wasn't this hot before here.\p"
# 405 "data/maps/LavaridgeTown/scripts.pory"
    .string "Something must've changed\n"
# 406 "data/maps/LavaridgeTown/scripts.pory"
    .string "deep in the mountain...\p"
# 407 "data/maps/LavaridgeTown/scripts.pory"
    .string "When I grow up, I'm going\n"
# 408 "data/maps/LavaridgeTown/scripts.pory"
    .string "to check out FIERY PATH\l"
# 409 "data/maps/LavaridgeTown/scripts.pory"
    .string "and find rare POKéMON!$"
