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
	@ HLW_RENTON_METAL_QUEUE_EVENT_V2: Renton stays hidden until a METAL trigger starts.
# 16 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_HIDE_LAVARIDGE_METAL_RENTON
# 17 "data/maps/LavaridgeTown/scripts.pory"
	end
# 18 "data/maps/LavaridgeTown/scripts.pory"

# 19 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ClearLavaridgeWhiteOut::
# 20 "data/maps/LavaridgeTown/scripts.pory"
	clearflag FLAG_WHITEOUT_TO_LAVARIDGE
# 21 "data/maps/LavaridgeTown/scripts.pory"
	return
# 22 "data/maps/LavaridgeTown/scripts.pory"

# 23 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_CheckSetRivalPos::
# 24 "data/maps/LavaridgeTown/scripts.pory"
	getplayerxy VAR_0x8004, VAR_0x8005
# 25 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_0x8004, 7, LavaridgeTown_EventScript_SetRivalPos
# 26 "data/maps/LavaridgeTown/scripts.pory"
	return
# 27 "data/maps/LavaridgeTown/scripts.pory"

# 28 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_SetRivalPos::
# 29 "data/maps/LavaridgeTown/scripts.pory"
	setobjectxyperm LOCALID_LAVARIDGE_RIVAL, 8, 11
# 30 "data/maps/LavaridgeTown/scripts.pory"
	setobjectxyperm LOCALID_LAVARIDGE_RIVAL_ON_BIKE, 8, 11
# 31 "data/maps/LavaridgeTown/scripts.pory"
	setobjectmovementtype LOCALID_LAVARIDGE_RIVAL_ON_BIKE, MOVEMENT_TYPE_FACE_UP
# 32 "data/maps/LavaridgeTown/scripts.pory"
	clearflag FLAG_HIDE_LAVARIDGE_TOWN_RIVAL
# 33 "data/maps/LavaridgeTown/scripts.pory"
	return
# 34 "data/maps/LavaridgeTown/scripts.pory"

# 35 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ShowMtChimneyTrainers::
# 36 "data/maps/LavaridgeTown/scripts.pory"
	clearflag FLAG_HIDE_MT_CHIMNEY_TRAINERS
# 37 "data/maps/LavaridgeTown/scripts.pory"
	return
# 38 "data/maps/LavaridgeTown/scripts.pory"

# 39 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_HideMapNamePopup::
# 40 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_HIDE_MAP_NAME_POPUP
# 41 "data/maps/LavaridgeTown/scripts.pory"
	return
# 42 "data/maps/LavaridgeTown/scripts.pory"

# 43 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_OnFrame:
# 44 "data/maps/LavaridgeTown/scripts.pory"
	map_script_2 VAR_LAVARIDGE_TOWN_STATE, 1, LavaridgeTown_EventScript_RivalGiveGoGoggles
# 45 "data/maps/LavaridgeTown/scripts.pory"
	.2byte 0
# 46 "data/maps/LavaridgeTown/scripts.pory"

# 47 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalGiveGoGoggles::
# 48 "data/maps/LavaridgeTown/scripts.pory"
	lockall
# 49 "data/maps/LavaridgeTown/scripts.pory"
	getplayerxy VAR_0x8008, VAR_0x8009
# 50 "data/maps/LavaridgeTown/scripts.pory"
	call_if_eq VAR_0x8008, 7, LavaridgeTown_EventScript_RivalWalkToGym
# 51 "data/maps/LavaridgeTown/scripts.pory"
	call_if_ne VAR_0x8008, 7, LavaridgeTown_EventScript_RivalExitHerbShop
# 52 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_PIN
# 53 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_ExclamationMark
# 54 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 55 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_Delay48
# 56 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 57 "data/maps/LavaridgeTown/scripts.pory"
	delay 20
# 58 "data/maps/LavaridgeTown/scripts.pory"
	checkplayergender
# 59 "data/maps/LavaridgeTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LavaridgeTown_EventScript_PlayMayMusic
# 60 "data/maps/LavaridgeTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LavaridgeTown_EventScript_PlayBrendanMusic
# 61 "data/maps/LavaridgeTown/scripts.pory"
	checkplayergender
# 62 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LavaridgeTown_EventScript_MayGiveGoGoggles
# 63 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, LavaridgeTown_EventScript_BrendanGiveGoGoggles
# 64 "data/maps/LavaridgeTown/scripts.pory"
	end
# 65 "data/maps/LavaridgeTown/scripts.pory"

# 66 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalWalkToGym::
# 67 "data/maps/LavaridgeTown/scripts.pory"
	addobject LOCALID_LAVARIDGE_RIVAL
# 68 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, LavaridgeTown_Movement_RivalWalkToGym
# 69 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 70 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_WalkInPlaceFasterLeft
# 71 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 72 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 73 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 74 "data/maps/LavaridgeTown/scripts.pory"
	return
# 75 "data/maps/LavaridgeTown/scripts.pory"

# 76 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_MayGiveGoGoggles::
# 77 "data/maps/LavaridgeTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 78 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_MayNiceBadgesTakeThis, MSGBOX_DEFAULT
# 79 "data/maps/LavaridgeTown/scripts.pory"
	removefieldmugshot
# 80 "data/maps/LavaridgeTown/scripts.pory"
	giveitem ITEM_GO_GOGGLES
# 81 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_RECEIVED_GO_GOGGLES
# 82 "data/maps/LavaridgeTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 83 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_MayExplainGoGogglesChallengeDad, MSGBOX_DEFAULT
# 84 "data/maps/LavaridgeTown/scripts.pory"
	removefieldmugshot
# 85 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RivalExit
# 86 "data/maps/LavaridgeTown/scripts.pory"
	end
# 87 "data/maps/LavaridgeTown/scripts.pory"

# 88 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_BrendanGiveGoGoggles::
# 89 "data/maps/LavaridgeTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 90 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_BrendanNiceBadgesTakeThis, MSGBOX_DEFAULT
# 91 "data/maps/LavaridgeTown/scripts.pory"
	removefieldmugshot
# 92 "data/maps/LavaridgeTown/scripts.pory"
	giveitem ITEM_GO_GOGGLES
# 93 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_RECEIVED_GO_GOGGLES
# 94 "data/maps/LavaridgeTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 95 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_BrendanExplainGoGogglesChallengeDad, MSGBOX_DEFAULT
# 96 "data/maps/LavaridgeTown/scripts.pory"
	removefieldmugshot
# 97 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RivalExit
# 98 "data/maps/LavaridgeTown/scripts.pory"
	end
# 99 "data/maps/LavaridgeTown/scripts.pory"

# 100 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalExit::
# 101 "data/maps/LavaridgeTown/scripts.pory"
	closemessage
# 102 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RIVAL
# 103 "data/maps/LavaridgeTown/scripts.pory"
	setobjectxyperm LOCALID_LAVARIDGE_RIVAL_ON_BIKE, 8, 5
# 104 "data/maps/LavaridgeTown/scripts.pory"
	addobject LOCALID_LAVARIDGE_RIVAL_ON_BIKE
# 105 "data/maps/LavaridgeTown/scripts.pory"
	delay 30
# 106 "data/maps/LavaridgeTown/scripts.pory"
	call_if_eq VAR_0x8008, 7, LavaridgeTown_EventScript_RivalExit1
# 107 "data/maps/LavaridgeTown/scripts.pory"
	call_if_ne VAR_0x8008, 7, LavaridgeTown_EventScript_RivalExit2
# 108 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RIVAL_ON_BIKE
# 109 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_LAVARIDGE_TOWN_STATE, 2
# 110 "data/maps/LavaridgeTown/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 111 "data/maps/LavaridgeTown/scripts.pory"
	savebgm MUS_DUMMY
# 112 "data/maps/LavaridgeTown/scripts.pory"
	fadedefaultbgm
# 113 "data/maps/LavaridgeTown/scripts.pory"
	releaseall
# 114 "data/maps/LavaridgeTown/scripts.pory"
	end
# 115 "data/maps/LavaridgeTown/scripts.pory"

# 116 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_PlayMayMusic::
# 117 "data/maps/LavaridgeTown/scripts.pory"
	playbgm MUS_ENCOUNTER_MAY, TRUE
# 118 "data/maps/LavaridgeTown/scripts.pory"
	return
# 119 "data/maps/LavaridgeTown/scripts.pory"

# 120 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_PlayBrendanMusic::
# 121 "data/maps/LavaridgeTown/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 122 "data/maps/LavaridgeTown/scripts.pory"
	return
# 123 "data/maps/LavaridgeTown/scripts.pory"

# 124 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalExitHerbShop::
# 125 "data/maps/LavaridgeTown/scripts.pory"
	opendoor 12, 15
# 126 "data/maps/LavaridgeTown/scripts.pory"
	waitdooranim
# 127 "data/maps/LavaridgeTown/scripts.pory"
	addobject LOCALID_LAVARIDGE_RIVAL
# 128 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, LavaridgeTown_Movement_RivalExitHerbShop
# 129 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 130 "data/maps/LavaridgeTown/scripts.pory"
	closedoor 12, 15
# 131 "data/maps/LavaridgeTown/scripts.pory"
	waitdooranim
# 132 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, LavaridgeTown_Movement_RivalWalkToGym
# 133 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 134 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_WalkInPlaceFasterLeft
# 135 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 136 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_PIN
# 137 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_ExclamationMark
# 138 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 139 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_Delay48
# 140 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 141 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 142 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 143 "data/maps/LavaridgeTown/scripts.pory"
	return
# 144 "data/maps/LavaridgeTown/scripts.pory"

# 145 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalExit1::
# 146 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_PLAYER, LavaridgeTown_Movement_PlayerWatchRivalExit
# 147 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL_ON_BIKE, LavaridgeTown_Movement_RivalExit1
# 148 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 149 "data/maps/LavaridgeTown/scripts.pory"
	return
# 150 "data/maps/LavaridgeTown/scripts.pory"

# 151 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalExit2::
# 152 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL_ON_BIKE, LavaridgeTown_Movement_RivalExit2
# 153 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 154 "data/maps/LavaridgeTown/scripts.pory"
	return
# 155 "data/maps/LavaridgeTown/scripts.pory"

# 156 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RivalWalkToGym:
# 157 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 158 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 159 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 160 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 161 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 162 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 163 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 164 "data/maps/LavaridgeTown/scripts.pory"

# 165 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RivalExit2:
# 166 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 167 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 168 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 169 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 170 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 171 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 172 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 173 "data/maps/LavaridgeTown/scripts.pory"

# 174 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_PlayerWatchRivalExit:
# 175 "data/maps/LavaridgeTown/scripts.pory"
	delay_16
# 176 "data/maps/LavaridgeTown/scripts.pory"
	delay_8
# 177 "data/maps/LavaridgeTown/scripts.pory"
	walk_in_place_faster_down
# 178 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 179 "data/maps/LavaridgeTown/scripts.pory"

# 180 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RivalExit1:
# 181 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 182 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 183 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 184 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 185 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 186 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 187 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 188 "data/maps/LavaridgeTown/scripts.pory"

# 189 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RivalExitHerbShop:
# 190 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 191 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 192 "data/maps/LavaridgeTown/scripts.pory"

# 193 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_HotSpringsTrigger::
# 194 "data/maps/LavaridgeTown/scripts.pory"
	specialvar VAR_RESULT, GetPlayerFacingDirection
# 195 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, DIR_SOUTH, LavaridgeTown_EventScript_EnteredHotSprings
# 196 "data/maps/LavaridgeTown/scripts.pory"
	end
# 197 "data/maps/LavaridgeTown/scripts.pory"

# 198 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_EnteredHotSprings::
# 199 "data/maps/LavaridgeTown/scripts.pory"
	incrementgamestat GAME_STAT_ENTERED_HOT_SPRINGS
# 200 "data/maps/LavaridgeTown/scripts.pory"
	end
# 201 "data/maps/LavaridgeTown/scripts.pory"

# 202 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ExpertM::
# 203 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_HotSpringsNeverRunDry, MSGBOX_NPC
# 204 "data/maps/LavaridgeTown/scripts.pory"
	end
# 205 "data/maps/LavaridgeTown/scripts.pory"

# 206 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_OldMan::
# 207 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_PokemonNippedBackside, MSGBOX_SIGN
# 208 "data/maps/LavaridgeTown/scripts.pory"
	end
# 209 "data/maps/LavaridgeTown/scripts.pory"

# 210 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_Twin::
# 211 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_BatheInHotSpringsEveryDay, MSGBOX_NPC
# 212 "data/maps/LavaridgeTown/scripts.pory"
	end
# 213 "data/maps/LavaridgeTown/scripts.pory"

# 214 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_Boy::
# 215 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_Boy, MSGBOX_NPC
# 216 "data/maps/LavaridgeTown/scripts.pory"
	end
# 217 "data/maps/LavaridgeTown/scripts.pory"

# 218 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_HotSpringsOldWoman1::
# 219 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_IfPokemonInHotSprings, MSGBOX_NPC
# 220 "data/maps/LavaridgeTown/scripts.pory"
	end
# 221 "data/maps/LavaridgeTown/scripts.pory"

# 222 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_HotSpringsOldWoman2::
# 223 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_HotSpringsClaims, MSGBOX_NPC
# 224 "data/maps/LavaridgeTown/scripts.pory"
	end
# 225 "data/maps/LavaridgeTown/scripts.pory"

# 226 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ExpertF::
# 227 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_OhYouLikeHotSprings, MSGBOX_NPC
# 228 "data/maps/LavaridgeTown/scripts.pory"
	end
# 229 "data/maps/LavaridgeTown/scripts.pory"

# 230 "data/maps/LavaridgeTown/scripts.pory"

# 231 "data/maps/LavaridgeTown/scripts.pory"
// HLW_RENTON_METAL_QUEUE_EVENT_V3: BEGIN
# 232 "data/maps/LavaridgeTown/scripts.pory"
// Both coordinate events use VAR_TEMP_1; flags are not valid trigger variables.
# 233 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_Renton_Likes_Metal_Right::
# 234 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_set FLAG_MAKE_IT_RAIN, LavaridgeTown_EventScript_RentonMetalNoAction
# 235 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_0x8007, 1 @ Player is at (8,6), to Renton's right
# 236 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RentonMetalCheckRadio
# 237 "data/maps/LavaridgeTown/scripts.pory"
	end
# 238 "data/maps/LavaridgeTown/scripts.pory"

# 239 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_Renton_Likes_Metal_Left::
# 240 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_set FLAG_MAKE_IT_RAIN, LavaridgeTown_EventScript_RentonMetalNoAction
# 241 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_0x8007, 2 @ Player is at (6,6), to Renton's left
# 242 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RentonMetalCheckRadio
# 243 "data/maps/LavaridgeTown/scripts.pory"
	end
# 244 "data/maps/LavaridgeTown/scripts.pory"

# 245 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonMetalCheckRadio::
# 246 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_set FLAG_RENTON_LEFT, LavaridgeTown_EventScript_RentonMetalNoAction
# 247 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_0x8004, 8 @ STATION_ROCK_METAL
# 248 "data/maps/LavaridgeTown/scripts.pory"
	special Special_IsRadioStationPlaying
# 249 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, LavaridgeTown_EventScript_RentonMetalNoAction
# 250 "data/maps/LavaridgeTown/scripts.pory"
	lockall
# 251 "data/maps/LavaridgeTown/scripts.pory"
	hidefollower 1
# 252 "data/maps/LavaridgeTown/scripts.pory"

# 253 "data/maps/LavaridgeTown/scripts.pory"
	@ Spawn Renton inside the Gym and make him walk through the open door.
# 254 "data/maps/LavaridgeTown/scripts.pory"
	clearflag FLAG_HIDE_LAVARIDGE_METAL_RENTON
# 255 "data/maps/LavaridgeTown/scripts.pory"
	opendoor 7, 4
# 256 "data/maps/LavaridgeTown/scripts.pory"
	waitdooranim
# 257 "data/maps/LavaridgeTown/scripts.pory"
	addobject LOCALID_LAVARIDGE_METAL_RENTON
# 258 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonExitGym
# 259 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 260 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, Common_Movement_ExclamationMark
# 261 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 262 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_0x8007, 1, LavaridgeTown_EventScript_RentonPushQueueLeft
# 263 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RentonPushQueueRight
# 264 "data/maps/LavaridgeTown/scripts.pory"
	end
# 265 "data/maps/LavaridgeTown/scripts.pory"

# 266 "data/maps/LavaridgeTown/scripts.pory"
// The right trigger makes Renton push every queue member to the left.
# 267 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonPushQueueLeft::
# 268 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_1, Common_Movement_ExclamationMark
# 269 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 270 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 271 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 272 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_1, LavaridgeTown_Movement_MetalQueuePushLeft
# 273 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 274 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 275 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 276 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 277 "data/maps/LavaridgeTown/scripts.pory"
	closedoor 7, 4
# 278 "data/maps/LavaridgeTown/scripts.pory"
	waitdooranim
# 279 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_3, Common_Movement_ExclamationMark
# 280 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 281 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 282 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 283 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_3, LavaridgeTown_Movement_MetalQueuePushLeft
# 284 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 285 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 286 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 287 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 288 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_2, Common_Movement_ExclamationMark
# 289 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 290 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 291 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 292 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_2, LavaridgeTown_Movement_MetalQueuePushLeft
# 293 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 294 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 295 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 296 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 297 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_6, Common_Movement_ExclamationMark
# 298 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 299 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 300 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 301 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_6, LavaridgeTown_Movement_MetalQueuePushLeft
# 302 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 303 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 304 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 305 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 306 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_4, Common_Movement_ExclamationMark
# 307 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 308 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 309 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 310 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_4, LavaridgeTown_Movement_MetalQueuePushLeft
# 311 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 312 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 313 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 314 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 315 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_5, Common_Movement_ExclamationMark
# 316 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 317 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 318 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 319 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_5, LavaridgeTown_Movement_MetalQueuePushLeft
# 320 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 321 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 322 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 323 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 324 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RentonFinishedPushing
# 325 "data/maps/LavaridgeTown/scripts.pory"
	end
# 326 "data/maps/LavaridgeTown/scripts.pory"

# 327 "data/maps/LavaridgeTown/scripts.pory"
// The left trigger makes Renton push every queue member to the right.
# 328 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonPushQueueRight::
# 329 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_1, Common_Movement_ExclamationMark
# 330 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 331 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 332 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 333 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_1, LavaridgeTown_Movement_MetalQueuePushRight
# 334 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 335 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 336 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 337 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 338 "data/maps/LavaridgeTown/scripts.pory"
	closedoor 7, 4
# 339 "data/maps/LavaridgeTown/scripts.pory"
	waitdooranim
# 340 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_3, Common_Movement_ExclamationMark
# 341 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 342 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 343 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 344 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_3, LavaridgeTown_Movement_MetalQueuePushRight
# 345 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 346 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 347 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 348 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 349 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_2, Common_Movement_ExclamationMark
# 350 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 351 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 352 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 353 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_2, LavaridgeTown_Movement_MetalQueuePushRight
# 354 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 355 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 356 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 357 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 358 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_6, Common_Movement_ExclamationMark
# 359 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 360 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 361 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 362 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_6, LavaridgeTown_Movement_MetalQueuePushRight
# 363 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 364 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 365 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 366 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 367 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_4, Common_Movement_ExclamationMark
# 368 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 369 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 370 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 371 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_4, LavaridgeTown_Movement_MetalQueuePushRight
# 372 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 373 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 374 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 375 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 376 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_5, Common_Movement_ExclamationMark
# 377 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 378 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 379 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 380 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_5, LavaridgeTown_Movement_MetalQueuePushRight
# 381 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 382 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 383 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 384 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 385 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RentonFinishedPushing
# 386 "data/maps/LavaridgeTown/scripts.pory"
	end
# 387 "data/maps/LavaridgeTown/scripts.pory"

# 388 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonFinishedPushing::
# 389 "data/maps/LavaridgeTown/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 390 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_MAKE_IT_RAIN
# 391 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_RENTON_LEFT
# 392 "data/maps/LavaridgeTown/scripts.pory"

# 393 "data/maps/LavaridgeTown/scripts.pory"
	@ Remove the live objects explicitly before moving Renton. This prevents
# 394 "data/maps/LavaridgeTown/scripts.pory"
	@ the shifted queue from occupying his destination and locking the event.
# 395 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_1
# 396 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_3
# 397 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_2
# 398 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_6
# 399 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_4
# 400 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_5
# 401 "data/maps/LavaridgeTown/scripts.pory"
	setobjectxy LOCALID_LAVARIDGE_METAL_RENTON, 7, 6
# 402 "data/maps/LavaridgeTown/scripts.pory"
	delay 2
# 403 "data/maps/LavaridgeTown/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 404 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_0x8007, 1, LavaridgeTown_EventScript_RentonMeetFromRight
# 405 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RentonMeetFromLeft
# 406 "data/maps/LavaridgeTown/scripts.pory"
	end
# 407 "data/maps/LavaridgeTown/scripts.pory"

# 408 "data/maps/LavaridgeTown/scripts.pory"
// Player stands at (8,6): both actors turn toward each other horizontally.
# 409 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonMeetFromRight::
# 410 "data/maps/LavaridgeTown/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceLeft
# 411 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 412 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, Common_Movement_FaceRight
# 413 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 414 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RentonMetalDialogue
# 415 "data/maps/LavaridgeTown/scripts.pory"
	end
# 416 "data/maps/LavaridgeTown/scripts.pory"

# 417 "data/maps/LavaridgeTown/scripts.pory"
// Player stands at (6,6): both actors turn toward each other horizontally.
# 418 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonMeetFromLeft::
# 419 "data/maps/LavaridgeTown/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceRight
# 420 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 421 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, Common_Movement_FaceLeft
# 422 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 423 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RentonMetalDialogue
# 424 "data/maps/LavaridgeTown/scripts.pory"
	end
# 425 "data/maps/LavaridgeTown/scripts.pory"

# 426 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonMetalDialogue::
# 427 "data/maps/LavaridgeTown/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 428 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_RentonClearedQueue, MSGBOX_DEFAULT
# 429 "data/maps/LavaridgeTown/scripts.pory"
	removefieldmugshot
# 430 "data/maps/LavaridgeTown/scripts.pory"
	closemessage
# 431 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonLeaveSouth
# 432 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 433 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_METAL_RENTON
# 434 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_HIDE_LAVARIDGE_METAL_RENTON
# 435 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_0x8007, 0
# 436 "data/maps/LavaridgeTown/scripts.pory"
	releaseall
# 437 "data/maps/LavaridgeTown/scripts.pory"
	end
# 438 "data/maps/LavaridgeTown/scripts.pory"

# 439 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonMetalNoAction::
# 440 "data/maps/LavaridgeTown/scripts.pory"
	end
# 441 "data/maps/LavaridgeTown/scripts.pory"

# 442 "data/maps/LavaridgeTown/scripts.pory"
// Renton is normally hidden; this is only a safe interaction fallback.
# 443 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonMetalObject::
# 444 "data/maps/LavaridgeTown/scripts.pory"
	end
# 445 "data/maps/LavaridgeTown/scripts.pory"

# 446 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RentonExitGym:
# 447 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 448 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 449 "data/maps/LavaridgeTown/scripts.pory"

# 450 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RentonAdvanceOne:
# 451 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 452 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 453 "data/maps/LavaridgeTown/scripts.pory"

# 454 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_MetalQueuePushLeft:
# 455 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_left
# 456 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 457 "data/maps/LavaridgeTown/scripts.pory"

# 458 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_MetalQueuePushRight:
# 459 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_right
# 460 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 461 "data/maps/LavaridgeTown/scripts.pory"

# 462 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RentonLeaveSouth:
# 463 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 464 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 465 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 466 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 467 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 468 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 469 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 470 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 471 "data/maps/LavaridgeTown/scripts.pory"

# 472 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_RentonClearedQueue:
# 473 "data/maps/LavaridgeTown/scripts.pory"
	.string "Whoa... I don't even like POP\n"
# 474 "data/maps/LavaridgeTown/scripts.pory"
	.string "music, you know... Usually.\p"
# 475 "data/maps/LavaridgeTown/scripts.pory"
	.string "But since your taste is this good,\n"
# 476 "data/maps/LavaridgeTown/scripts.pory"
	.string "I guess I can tell you something.\p"
# 477 "data/maps/LavaridgeTown/scripts.pory"
	.string "That AMATERASU... Well...\n"
# 478 "data/maps/LavaridgeTown/scripts.pory"
	.string "I think she's kind of my type.\p"
# 479 "data/maps/LavaridgeTown/scripts.pory"
	.string "...HEY! WHY ARE YOU LAUGHING?!\n"
# 480 "data/maps/LavaridgeTown/scripts.pory"
	.string "Knock it off!\p"
# 481 "data/maps/LavaridgeTown/scripts.pory"
	.string "And... some of her songs are\n"
# 482 "data/maps/LavaridgeTown/scripts.pory"
	.string "actually pretty good, okay?\p"
# 483 "data/maps/LavaridgeTown/scripts.pory"
	.string "You only got away with this\n"
# 484 "data/maps/LavaridgeTown/scripts.pory"
	.string "because that RADIO station is\l"
# 485 "data/maps/LavaridgeTown/scripts.pory"
	.string "way too good!\p"
# 486 "data/maps/LavaridgeTown/scripts.pory"
	.string "Now get lost! We'll battle again\n"
# 487 "data/maps/LavaridgeTown/scripts.pory"
	.string "some other time! HAHAHA!$"
# 488 "data/maps/LavaridgeTown/scripts.pory"
// HLW_RENTON_METAL_QUEUE_EVENT_V3: END
# 489 "data/maps/LavaridgeTown/scripts.pory"

# 490 "data/maps/LavaridgeTown/scripts.pory"
// -----------------------------------------------------------------------------
# 491 "data/maps/LavaridgeTown/scripts.pory"
// MAKE IT RAIN - queue event
# 492 "data/maps/LavaridgeTown/scripts.pory"
// -----------------------------------------------------------------------------
# 493 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_MakeItRain::
# 494 "data/maps/LavaridgeTown/scripts.pory"
	lockall
# 495 "data/maps/LavaridgeTown/scripts.pory"
	faceplayer
# 496 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_set FLAG_MAKE_IT_RAIN, LavaridgeTown_EventScript_MakeItRainDone
# 497 "data/maps/LavaridgeTown/scripts.pory"

# 498 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_MakeItRainComplaint, MSGBOX_DEFAULT
# 499 "data/maps/LavaridgeTown/scripts.pory"

# 500 "data/maps/LavaridgeTown/scripts.pory"
	// Keep the strict checker that already works:
# 501 "data/maps/LavaridgeTown/scripts.pory"
	// only CURRENT Drizzle or CURRENT Rain Dance in the party.
# 502 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_RESULT, FALSE
# 503 "data/maps/LavaridgeTown/scripts.pory"
	special Special_HasDrizzleOrRainDanceInParty
# 504 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_ne VAR_RESULT, TRUE, LavaridgeTown_EventScript_MakeItRainNoRainmaker
# 505 "data/maps/LavaridgeTown/scripts.pory"

# 506 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_MakeItRainCanHelp, MSGBOX_DEFAULT
# 507 "data/maps/LavaridgeTown/scripts.pory"
	closemessage
# 508 "data/maps/LavaridgeTown/scripts.pory"

# 509 "data/maps/LavaridgeTown/scripts.pory"
	// STOCK normal rain sequence.
# 510 "data/maps/LavaridgeTown/scripts.pory"
	// Same structure used by the working weather scripts:
# 511 "data/maps/LavaridgeTown/scripts.pory"
	// setweather -> doweather -> WaitWeather -> waitstate.
# 512 "data/maps/LavaridgeTown/scripts.pory"
	setweather WEATHER_RAIN
# 513 "data/maps/LavaridgeTown/scripts.pory"
	doweather
# 514 "data/maps/LavaridgeTown/scripts.pory"
	special WaitWeather
# 515 "data/maps/LavaridgeTown/scripts.pory"
	waitstate
# 516 "data/maps/LavaridgeTown/scripts.pory"
	delay 20
# 517 "data/maps/LavaridgeTown/scripts.pory"

# 518 "data/maps/LavaridgeTown/scripts.pory"
	// The whole queue reacts at once.
# 519 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_PIN
# 520 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_1, Common_Movement_ExclamationMark
# 521 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_2, Common_Movement_ExclamationMark
# 522 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_3, Common_Movement_ExclamationMark
# 523 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_4, Common_Movement_ExclamationMark
# 524 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_5, Common_Movement_ExclamationMark
# 525 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_6, Common_Movement_ExclamationMark
# 526 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 527 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 528 "data/maps/LavaridgeTown/scripts.pory"
	delay 20
# 529 "data/maps/LavaridgeTown/scripts.pory"

# 530 "data/maps/LavaridgeTown/scripts.pory"
	// Use the exact stock-style fade/removal pattern.
# 531 "data/maps/LavaridgeTown/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 532 "data/maps/LavaridgeTown/scripts.pory"

# 533 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_MAKE_IT_RAIN
# 534 "data/maps/LavaridgeTown/scripts.pory"
	special Special_HideLavaridgeMakeItRainQueueNow
# 535 "data/maps/LavaridgeTown/scripts.pory"

# 536 "data/maps/LavaridgeTown/scripts.pory"
	// Same order as the working stock-style examples:
# 537 "data/maps/LavaridgeTown/scripts.pory"
	// set the hide flag FIRST, then remove the live objects.
# 538 "data/maps/LavaridgeTown/scripts.pory"
	// This prevents the current-map object templates from recreating them.
# 539 "data/maps/LavaridgeTown/scripts.pory"

# 540 "data/maps/LavaridgeTown/scripts.pory"

# 541 "data/maps/LavaridgeTown/scripts.pory"
	delay 2
# 542 "data/maps/LavaridgeTown/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 543 "data/maps/LavaridgeTown/scripts.pory"

# 544 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_MakeItRainSuccess, MSGBOX_DEFAULT
# 545 "data/maps/LavaridgeTown/scripts.pory"
	releaseall
# 546 "data/maps/LavaridgeTown/scripts.pory"
	end
# 547 "data/maps/LavaridgeTown/scripts.pory"

# 548 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_MakeItRainNoRainmaker::
# 549 "data/maps/LavaridgeTown/scripts.pory"
	releaseall
# 550 "data/maps/LavaridgeTown/scripts.pory"
	end
# 551 "data/maps/LavaridgeTown/scripts.pory"

# 552 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_MakeItRainDone::
# 553 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_MakeItRainDone, MSGBOX_DEFAULT
# 554 "data/maps/LavaridgeTown/scripts.pory"
	releaseall
# 555 "data/maps/LavaridgeTown/scripts.pory"
	end
# 556 "data/maps/LavaridgeTown/scripts.pory"

# 557 "data/maps/LavaridgeTown/scripts.pory"

# 558 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_EggWoman::
# 559 "data/maps/LavaridgeTown/scripts.pory"
	lock
# 560 "data/maps/LavaridgeTown/scripts.pory"
	faceplayer
# 561 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_set FLAG_RECEIVED_LAVARIDGE_EGG, LavaridgeTown_EventScript_ReceivedEgg
# 562 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_HaveEggWillYouTakeIt, MSGBOX_YESNO
# 563 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LavaridgeTown_EventScript_DeclineEgg
# 564 "data/maps/LavaridgeTown/scripts.pory"
	getpartysize
# 565 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, PARTY_SIZE, LavaridgeTown_EventScript_NoRoomForEgg
# 566 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_HopeYoullWalkPlentyWithEgg, MSGBOX_DEFAULT
# 567 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_RECEIVED_LAVARIDGE_EGG
# 568 "data/maps/LavaridgeTown/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 569 "data/maps/LavaridgeTown/scripts.pory"
	message LavaridgeTown_Text_ReceivedTheEgg
# 570 "data/maps/LavaridgeTown/scripts.pory"
	waitfanfare
# 571 "data/maps/LavaridgeTown/scripts.pory"
	giveegg SPECIES_WYNAUT
# 572 "data/maps/LavaridgeTown/scripts.pory"
	release
# 573 "data/maps/LavaridgeTown/scripts.pory"
	end
# 574 "data/maps/LavaridgeTown/scripts.pory"

# 575 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ReceivedEgg::
# 576 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_EverySoOftenEggFoundAtDayCare, MSGBOX_DEFAULT
# 577 "data/maps/LavaridgeTown/scripts.pory"
	release
# 578 "data/maps/LavaridgeTown/scripts.pory"
	end
# 579 "data/maps/LavaridgeTown/scripts.pory"

# 580 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_NoRoomForEgg::
# 581 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_NoRoomForThisEgg, MSGBOX_DEFAULT
# 582 "data/maps/LavaridgeTown/scripts.pory"
	release
# 583 "data/maps/LavaridgeTown/scripts.pory"
	end
# 584 "data/maps/LavaridgeTown/scripts.pory"

# 585 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_DeclineEgg::
# 586 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_AsYouWishThen, MSGBOX_DEFAULT
# 587 "data/maps/LavaridgeTown/scripts.pory"
	release
# 588 "data/maps/LavaridgeTown/scripts.pory"
	end
# 589 "data/maps/LavaridgeTown/scripts.pory"

# 590 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_TownSign::
# 591 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_TownSign, MSGBOX_SIGN
# 592 "data/maps/LavaridgeTown/scripts.pory"
	end
# 593 "data/maps/LavaridgeTown/scripts.pory"

# 594 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_GymSign::
# 595 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_GymSign, MSGBOX_SIGN
# 596 "data/maps/LavaridgeTown/scripts.pory"
	end
# 597 "data/maps/LavaridgeTown/scripts.pory"

# 598 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_HerbShopSign::
# 599 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_HerbShopSign, MSGBOX_SIGN
# 600 "data/maps/LavaridgeTown/scripts.pory"
	end
# 601 "data/maps/LavaridgeTown/scripts.pory"

# 602 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_MayNiceBadgesTakeThis:
# 603 "data/maps/LavaridgeTown/scripts.pory"
	.string "ZINNIA: {PLAYER}{KUN}! Long time no see!\p"
# 604 "data/maps/LavaridgeTown/scripts.pory"
	.string "Oh? While I visited the hot springs,\n"
# 605 "data/maps/LavaridgeTown/scripts.pory"
	.string "you got the LAVARIDGE GYM BADGE.\p"
# 606 "data/maps/LavaridgeTown/scripts.pory"
	.string "You must have collected\n"
# 607 "data/maps/LavaridgeTown/scripts.pory"
	.string "good POKéMON…\l"
# 608 "data/maps/LavaridgeTown/scripts.pory"
	.string "No, I believe you raised some.\p"
# 609 "data/maps/LavaridgeTown/scripts.pory"
	.string "I guess it would be okay for you to\n"
# 610 "data/maps/LavaridgeTown/scripts.pory"
	.string "have this.$"
# 611 "data/maps/LavaridgeTown/scripts.pory"

# 612 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_MayExplainGoGogglesChallengeDad:
# 613 "data/maps/LavaridgeTown/scripts.pory"
	.string "ZINNIA: With those GO-GOGGLES, you'll\n"
# 614 "data/maps/LavaridgeTown/scripts.pory"
	.string "have no trouble getting through the\l"
# 615 "data/maps/LavaridgeTown/scripts.pory"
	.string "desert near ROUTE 111.\p"
# 616 "data/maps/LavaridgeTown/scripts.pory"
	.string "But, wow, {PLAYER}{KUN}…\n"
# 617 "data/maps/LavaridgeTown/scripts.pory"
	.string "Challenging GYMS…\p"
# 618 "data/maps/LavaridgeTown/scripts.pory"
	.string "You're trying hard because you don't\n"
# 619 "data/maps/LavaridgeTown/scripts.pory"
	.string "want to lose to me, I bet!\p"
# 620 "data/maps/LavaridgeTown/scripts.pory"
	.string "{PLAYER}{KUN}, I actually got a call\n"
# 621 "data/maps/LavaridgeTown/scripts.pory"
	.string "from Professor ACACIA recently.\p"
# 622 "data/maps/LavaridgeTown/scripts.pory"
	.string "Apparently there have been unusual\n"
# 623 "data/maps/LavaridgeTown/scripts.pory"
	.string "readings coming from PETALBURG.\p"
# 624 "data/maps/LavaridgeTown/scripts.pory"
	.string "She said the data is similar to other\n"
# 625 "data/maps/LavaridgeTown/scripts.pory"
	.string "locations that had links to the comet.\p"
# 626 "data/maps/LavaridgeTown/scripts.pory"
	.string "I'm going to go check it out.\n"
# 627 "data/maps/LavaridgeTown/scripts.pory"
	.string "See you again!$"
# 628 "data/maps/LavaridgeTown/scripts.pory"
	
# 629 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_BrendanNiceBadgesTakeThis:
# 630 "data/maps/LavaridgeTown/scripts.pory"
	.string "ZENNO: {PLAYER}, hey, it's been a while.\n"
# 631 "data/maps/LavaridgeTown/scripts.pory"
	.string "How's it going?\p"
# 632 "data/maps/LavaridgeTown/scripts.pory"
	.string "Hmm…\n"
# 633 "data/maps/LavaridgeTown/scripts.pory"
	.string "That's a decent collection of BADGES.\p"
# 634 "data/maps/LavaridgeTown/scripts.pory"
	.string "All right, then.\n"
# 635 "data/maps/LavaridgeTown/scripts.pory"
	.string "You may as well have this.$"
# 636 "data/maps/LavaridgeTown/scripts.pory"

# 637 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_BrendanExplainGoGogglesChallengeDad:
# 638 "data/maps/LavaridgeTown/scripts.pory"
	.string "ZENNO: Keep those with you if you're\n"
# 639 "data/maps/LavaridgeTown/scripts.pory"
	.string "planning on going into that desert near\l"
# 640 "data/maps/LavaridgeTown/scripts.pory"
	.string "ROUTE 111.\p"
# 641 "data/maps/LavaridgeTown/scripts.pory"
	.string "There should be some POKéMON that\n"
# 642 "data/maps/LavaridgeTown/scripts.pory"
	.string "are exclusively desert-dwellers.\l"
# 643 "data/maps/LavaridgeTown/scripts.pory"
	.string "You might look around for those.\p"
# 644 "data/maps/LavaridgeTown/scripts.pory"
	.string "As for me… I actually got a call\n"
# 645 "data/maps/LavaridgeTown/scripts.pory"
	.string "from Professor ACACIA recently.\p"
# 646 "data/maps/LavaridgeTown/scripts.pory"
	.string "Apparently there have been unusual\n"
# 647 "data/maps/LavaridgeTown/scripts.pory"
	.string "readings coming from PETALBURG.\p"
# 648 "data/maps/LavaridgeTown/scripts.pory"
	.string "She said the data is similar to other\n"
# 649 "data/maps/LavaridgeTown/scripts.pory"
	.string "locations that had links to the comet.\p"
# 650 "data/maps/LavaridgeTown/scripts.pory"
	.string "I'm going to go check it out.\n"
# 651 "data/maps/LavaridgeTown/scripts.pory"
	.string "See you around!$"
# 652 "data/maps/LavaridgeTown/scripts.pory"

# 653 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_HaveEggWillYouTakeIt:
# 654 "data/maps/LavaridgeTown/scripts.pory"
	.string "I have here an EGG.\p"
# 655 "data/maps/LavaridgeTown/scripts.pory"
	.string "I'd hoped to hatch it by covering it in\n"
# 656 "data/maps/LavaridgeTown/scripts.pory"
	.string "hot sand by the hot springs.\l"
# 657 "data/maps/LavaridgeTown/scripts.pory"
	.string "But that doesn't seem to be enough…\p"
# 658 "data/maps/LavaridgeTown/scripts.pory"
	.string "I've heard it would be best if it were\n"
# 659 "data/maps/LavaridgeTown/scripts.pory"
	.string "kept together with POKéMON and\l"
# 660 "data/maps/LavaridgeTown/scripts.pory"
	.string "carried about.\p"
# 661 "data/maps/LavaridgeTown/scripts.pory"
	.string "You are a TRAINER, yes?\n"
# 662 "data/maps/LavaridgeTown/scripts.pory"
	.string "And your POKéMON radiate vitality.\p"
# 663 "data/maps/LavaridgeTown/scripts.pory"
	.string "So, what say you?\n"
# 664 "data/maps/LavaridgeTown/scripts.pory"
	.string "Will you take this EGG to hatch?$"
# 665 "data/maps/LavaridgeTown/scripts.pory"

# 666 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_HopeYoullWalkPlentyWithEgg:
# 667 "data/maps/LavaridgeTown/scripts.pory"
	.string "Good! I hope you'll walk plenty with\n"
# 668 "data/maps/LavaridgeTown/scripts.pory"
	.string "this here EGG!$"
# 669 "data/maps/LavaridgeTown/scripts.pory"

# 670 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_ReceivedTheEgg:
# 671 "data/maps/LavaridgeTown/scripts.pory"
	.string "{PLAYER} received the EGG.$"
# 672 "data/maps/LavaridgeTown/scripts.pory"

# 673 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_NoRoomForThisEgg:
# 674 "data/maps/LavaridgeTown/scripts.pory"
	.string "Oh? You've too many POKéMON.\n"
# 675 "data/maps/LavaridgeTown/scripts.pory"
	.string "There's no room for this EGG…$"
# 676 "data/maps/LavaridgeTown/scripts.pory"

# 677 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_AsYouWishThen:
# 678 "data/maps/LavaridgeTown/scripts.pory"
	.string "As you wish, then…\p"
# 679 "data/maps/LavaridgeTown/scripts.pory"
	.string "If you have a change of heart about\n"
# 680 "data/maps/LavaridgeTown/scripts.pory"
	.string "hatching this EGG, I will be here.$"
# 681 "data/maps/LavaridgeTown/scripts.pory"

# 682 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_EverySoOftenEggFoundAtDayCare:
# 683 "data/maps/LavaridgeTown/scripts.pory"
	.string "Every so often, an EGG will be found at\n"
# 684 "data/maps/LavaridgeTown/scripts.pory"
	.string "the POKéMON DAY CARE.\p"
# 685 "data/maps/LavaridgeTown/scripts.pory"
	.string "Or at least that's how the rumor goes.$"
# 686 "data/maps/LavaridgeTown/scripts.pory"

# 687 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_HotSpringsNeverRunDry:
# 688 "data/maps/LavaridgeTown/scripts.pory"
	.string "We draw as much hot water as we need,\n"
# 689 "data/maps/LavaridgeTown/scripts.pory"
	.string "and yet the hot springs never run dry.\p"
# 690 "data/maps/LavaridgeTown/scripts.pory"
	.string "Isn't it magical?\p"
# 691 "data/maps/LavaridgeTown/scripts.pory"
	.string "These hot springs appear near active\n"
# 692 "data/maps/LavaridgeTown/scripts.pory"
	.string "volcanoes. Veins of water under the\l"
# 693 "data/maps/LavaridgeTown/scripts.pory"
	.string "ground are heated by magma to well up\l"
# 694 "data/maps/LavaridgeTown/scripts.pory"
	.string "as hot springs.$"
# 695 "data/maps/LavaridgeTown/scripts.pory"

# 696 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_PokemonNippedBackside:
# 697 "data/maps/LavaridgeTown/scripts.pory"
	.string "Being buried in this hot sand is…\n"
# 698 "data/maps/LavaridgeTown/scripts.pory"
	.string "Sigh…\p"
# 699 "data/maps/LavaridgeTown/scripts.pory"
	.string "So warm and heavenly…\p"
# 700 "data/maps/LavaridgeTown/scripts.pory"
	.string "Eh? Gyaah! Ouch!\p"
# 701 "data/maps/LavaridgeTown/scripts.pory"
	.string "A POKéMON nipped my backside!$"
# 702 "data/maps/LavaridgeTown/scripts.pory"

# 703 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_OhYouLikeHotSprings:
# 704 "data/maps/LavaridgeTown/scripts.pory"
	.string "Oh, you like hot springs, do you?\p"
# 705 "data/maps/LavaridgeTown/scripts.pory"
	.string "That's surprising for one as young\n"
# 706 "data/maps/LavaridgeTown/scripts.pory"
	.string "as you.$"
# 707 "data/maps/LavaridgeTown/scripts.pory"

# 708 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_BatheInHotSpringsEveryDay:
# 709 "data/maps/LavaridgeTown/scripts.pory"
	.string "I bathe in the hot springs every day.\p"
# 710 "data/maps/LavaridgeTown/scripts.pory"
	.string "I want to become a beautiful and strong\n"
# 711 "data/maps/LavaridgeTown/scripts.pory"
	.string "GYM LEADER like FLANNERY.$"
# 712 "data/maps/LavaridgeTown/scripts.pory"

# 713 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_IfPokemonInHotSprings:
# 714 "data/maps/LavaridgeTown/scripts.pory"
	.string "If people put POKéMON in hot springs,\n"
# 715 "data/maps/LavaridgeTown/scripts.pory"
	.string "it might be seriously strange.\p"
# 716 "data/maps/LavaridgeTown/scripts.pory"
	.string "Why, it might be an electric bath, or\n"
# 717 "data/maps/LavaridgeTown/scripts.pory"
	.string "a bubble bath, or even a lava bath…$"
# 718 "data/maps/LavaridgeTown/scripts.pory"

# 719 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_HotSpringsClaims:
# 720 "data/maps/LavaridgeTown/scripts.pory"
	.string "They're claiming that these hot springs\n"
# 721 "data/maps/LavaridgeTown/scripts.pory"
	.string "are good for calming nervous tension,\l"
# 722 "data/maps/LavaridgeTown/scripts.pory"
	.string "relieving aching muscles, solving\l"
# 723 "data/maps/LavaridgeTown/scripts.pory"
	.string "romantic problems, and attracting\l"
# 724 "data/maps/LavaridgeTown/scripts.pory"
	.string "money…$"
# 725 "data/maps/LavaridgeTown/scripts.pory"

# 726 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_TownSign:
# 727 "data/maps/LavaridgeTown/scripts.pory"
	.string "LAVARIDGE TOWN\p"
# 728 "data/maps/LavaridgeTown/scripts.pory"
	.string "“POKéMON CENTER HOT SPRINGS\n"
# 729 "data/maps/LavaridgeTown/scripts.pory"
	.string "An excellent place for relaxing!”$"
# 730 "data/maps/LavaridgeTown/scripts.pory"

# 731 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_GymSign:
# 732 "data/maps/LavaridgeTown/scripts.pory"
	.string "LAVARIDGE TOWN POKéMON GYM\n"
# 733 "data/maps/LavaridgeTown/scripts.pory"
	.string "LEADER: FLANNERY\l"
# 734 "data/maps/LavaridgeTown/scripts.pory"
	.string "“One with a fiery passion that burns!”$"
# 735 "data/maps/LavaridgeTown/scripts.pory"

# 736 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_HerbShopSign:
# 737 "data/maps/LavaridgeTown/scripts.pory"
	.string "POKéMON HERB SHOP\n"
# 738 "data/maps/LavaridgeTown/scripts.pory"
	.string "“Bitter taste--better cure!”$"
# 739 "data/maps/LavaridgeTown/scripts.pory"

# 740 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_Boy:
# 741 "data/maps/LavaridgeTown/scripts.pory"
    .string "Yo! My grandpa says\n"
# 742 "data/maps/LavaridgeTown/scripts.pory"
    .string "it wasn't this hot before here.\p"
# 743 "data/maps/LavaridgeTown/scripts.pory"
    .string "Something must've changed\n"
# 744 "data/maps/LavaridgeTown/scripts.pory"
    .string "deep in the mountain...\p"
# 745 "data/maps/LavaridgeTown/scripts.pory"
    .string "When I grow up, I'm going\n"
# 746 "data/maps/LavaridgeTown/scripts.pory"
    .string "to check out FIERY PATH\l"
# 747 "data/maps/LavaridgeTown/scripts.pory"
    .string "and find rare POKéMON!$"
# 748 "data/maps/LavaridgeTown/scripts.pory"

# 749 "data/maps/LavaridgeTown/scripts.pory"
// MAKE IT RAIN dialogue
# 750 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_MakeItRainComplaint:
# 751 "data/maps/LavaridgeTown/scripts.pory"
	.string "Honestly... all this noise is ruining\n"
# 752 "data/maps/LavaridgeTown/scripts.pory"
	.string "the peace and quiet of LAVARIDGE!\p"
# 753 "data/maps/LavaridgeTown/scripts.pory"
	.string "People shouting, laughing, lining up\n"
# 754 "data/maps/LavaridgeTown/scripts.pory"
	.string "all day... What a nuisance.\p"
# 755 "data/maps/LavaridgeTown/scripts.pory"
	.string "A good downpour would send them all\n"
# 756 "data/maps/LavaridgeTown/scripts.pory"
	.string "running for cover.\p"
# 757 "data/maps/LavaridgeTown/scripts.pory"
	.string "If only I had a POKéMON that could\n"
# 758 "data/maps/LavaridgeTown/scripts.pory"
	.string "make it rain...$"
# 759 "data/maps/LavaridgeTown/scripts.pory"

# 760 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_MakeItRainCanHelp:
# 761 "data/maps/LavaridgeTown/scripts.pory"
	.string "Hmm... Wait a moment.\p"
# 762 "data/maps/LavaridgeTown/scripts.pory"
	.string "There's something unusual about one\n"
# 763 "data/maps/LavaridgeTown/scripts.pory"
	.string "of your POKéMON...\p"
# 764 "data/maps/LavaridgeTown/scripts.pory"
	.string "Don't tell me... You can actually\n"
# 765 "data/maps/LavaridgeTown/scripts.pory"
	.string "bring the rain?$"
# 766 "data/maps/LavaridgeTown/scripts.pory"

# 767 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_MakeItRainSuccess:
# 768 "data/maps/LavaridgeTown/scripts.pory"
	.string "HA! Look at them run!\p"
# 769 "data/maps/LavaridgeTown/scripts.pory"
	.string "So much for that noisy little crowd!\p"
# 770 "data/maps/LavaridgeTown/scripts.pory"
	.string "Now this is the peaceful LAVARIDGE\n"
# 771 "data/maps/LavaridgeTown/scripts.pory"
	.string "I remember.$"
# 772 "data/maps/LavaridgeTown/scripts.pory"

# 773 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_MakeItRainDone:
# 774 "data/maps/LavaridgeTown/scripts.pory"
	.string "Now that that noisy crowd is gone,\n"
# 775 "data/maps/LavaridgeTown/scripts.pory"
	.string "LAVARIDGE feels so much calmer.\p"
# 776 "data/maps/LavaridgeTown/scripts.pory"
	.string "This is how our town should be.$"
# 777 "data/maps/LavaridgeTown/scripts.pory"

# 778 "data/maps/LavaridgeTown/scripts.pory"
// SHOW QUEUE CHATTER: BEGIN
# 779 "data/maps/LavaridgeTown/scripts.pory"
// Short pre-show conversations for the Make It Rain queue.
# 780 "data/maps/LavaridgeTown/scripts.pory"

# 781 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ShowQueue1::
# 782 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_ShowQueue1, MSGBOX_NPC
# 783 "data/maps/LavaridgeTown/scripts.pory"
	end
# 784 "data/maps/LavaridgeTown/scripts.pory"

# 785 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ShowQueueAlejandro::
# 786 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_ShowQueueAlejandro, MSGBOX_NPC
# 787 "data/maps/LavaridgeTown/scripts.pory"
	end
# 788 "data/maps/LavaridgeTown/scripts.pory"

# 789 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ShowQueue3::
# 790 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_ShowQueue3, MSGBOX_NPC
# 791 "data/maps/LavaridgeTown/scripts.pory"
	end
# 792 "data/maps/LavaridgeTown/scripts.pory"

# 793 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ShowQueue4::
# 794 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_ShowQueue4, MSGBOX_NPC
# 795 "data/maps/LavaridgeTown/scripts.pory"
	end
# 796 "data/maps/LavaridgeTown/scripts.pory"

# 797 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ShowQueue5::
# 798 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_ShowQueue5, MSGBOX_NPC
# 799 "data/maps/LavaridgeTown/scripts.pory"
	end
# 800 "data/maps/LavaridgeTown/scripts.pory"

# 801 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ShowQueue6::
# 802 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_ShowQueue6, MSGBOX_NPC
# 803 "data/maps/LavaridgeTown/scripts.pory"
	end
# 804 "data/maps/LavaridgeTown/scripts.pory"

# 805 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_ShowQueue1:
# 806 "data/maps/LavaridgeTown/scripts.pory"
	.string "I love AMATERASU! I've been waiting\n"
# 807 "data/maps/LavaridgeTown/scripts.pory"
	.string "all day to see her perform!$"
# 808 "data/maps/LavaridgeTown/scripts.pory"

# 809 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_ShowQueueAlejandro:
# 810 "data/maps/LavaridgeTown/scripts.pory"
	.string "ALEJANDRO: I'm off duty right now!\p"
# 811 "data/maps/LavaridgeTown/scripts.pory"
	.string "I can enjoy a show too, okay?\p"
# 812 "data/maps/LavaridgeTown/scripts.pory"
	.string "We'll settle things later...$"
# 813 "data/maps/LavaridgeTown/scripts.pory"

# 814 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_ShowQueue3:
# 815 "data/maps/LavaridgeTown/scripts.pory"
	.string "AMATERASU's songs are so good!\n"
# 816 "data/maps/LavaridgeTown/scripts.pory"
	.string "I hope she plays my favorite tonight!$"
# 817 "data/maps/LavaridgeTown/scripts.pory"

# 818 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_ShowQueue4:
# 819 "data/maps/LavaridgeTown/scripts.pory"
	.string "I heard AMATERASU is even better\n"
# 820 "data/maps/LavaridgeTown/scripts.pory"
	.string "live. This line is totally worth it!$"
# 821 "data/maps/LavaridgeTown/scripts.pory"

# 822 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_ShowQueue5:
# 823 "data/maps/LavaridgeTown/scripts.pory"
	.string "I've had AMATERASU's songs stuck\n"
# 824 "data/maps/LavaridgeTown/scripts.pory"
	.string "in my head all week. I can't wait!$"
# 825 "data/maps/LavaridgeTown/scripts.pory"

# 826 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_ShowQueue6:
# 827 "data/maps/LavaridgeTown/scripts.pory"
	.string "Almost there! I just hope I can get\n"
# 828 "data/maps/LavaridgeTown/scripts.pory"
	.string "close enough to the stage!$"
# 829 "data/maps/LavaridgeTown/scripts.pory"

# 830 "data/maps/LavaridgeTown/scripts.pory"
// SHOW QUEUE CHATTER: END
