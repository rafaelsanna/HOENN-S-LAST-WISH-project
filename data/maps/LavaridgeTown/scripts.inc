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
	map_script_2 VAR_TEMP_1, 1, LavaridgeTown_EventScript_RentonMetalStartRight
# 46 "data/maps/LavaridgeTown/scripts.pory"
	map_script_2 VAR_TEMP_1, 2, LavaridgeTown_EventScript_RentonMetalStartLeft
# 47 "data/maps/LavaridgeTown/scripts.pory"
	.2byte 0
# 48 "data/maps/LavaridgeTown/scripts.pory"

# 49 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalGiveGoGoggles::
# 50 "data/maps/LavaridgeTown/scripts.pory"
	lockall
# 51 "data/maps/LavaridgeTown/scripts.pory"
	getplayerxy VAR_0x8008, VAR_0x8009
# 52 "data/maps/LavaridgeTown/scripts.pory"
	call_if_eq VAR_0x8008, 7, LavaridgeTown_EventScript_RivalWalkToGym
# 53 "data/maps/LavaridgeTown/scripts.pory"
	call_if_ne VAR_0x8008, 7, LavaridgeTown_EventScript_RivalExitHerbShop
# 54 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_PIN
# 55 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_ExclamationMark
# 56 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 57 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_Delay48
# 58 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 59 "data/maps/LavaridgeTown/scripts.pory"
	delay 20
# 60 "data/maps/LavaridgeTown/scripts.pory"
	checkplayergender
# 61 "data/maps/LavaridgeTown/scripts.pory"
	call_if_eq VAR_RESULT, MALE, LavaridgeTown_EventScript_PlayMayMusic
# 62 "data/maps/LavaridgeTown/scripts.pory"
	call_if_eq VAR_RESULT, FEMALE, LavaridgeTown_EventScript_PlayBrendanMusic
# 63 "data/maps/LavaridgeTown/scripts.pory"
	checkplayergender
# 64 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LavaridgeTown_EventScript_MayGiveGoGoggles
# 65 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, LavaridgeTown_EventScript_BrendanGiveGoGoggles
# 66 "data/maps/LavaridgeTown/scripts.pory"
	end
# 67 "data/maps/LavaridgeTown/scripts.pory"

# 68 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalWalkToGym::
# 69 "data/maps/LavaridgeTown/scripts.pory"
	addobject LOCALID_LAVARIDGE_RIVAL
# 70 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, LavaridgeTown_Movement_RivalWalkToGym
# 71 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 72 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_WalkInPlaceFasterLeft
# 73 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 74 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 75 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 76 "data/maps/LavaridgeTown/scripts.pory"
	return
# 77 "data/maps/LavaridgeTown/scripts.pory"

# 78 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_MayGiveGoGoggles::
# 79 "data/maps/LavaridgeTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 80 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_MayNiceBadgesTakeThis, MSGBOX_DEFAULT
# 81 "data/maps/LavaridgeTown/scripts.pory"
	removefieldmugshot
# 82 "data/maps/LavaridgeTown/scripts.pory"
	giveitem ITEM_GO_GOGGLES
# 83 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_RECEIVED_GO_GOGGLES
# 84 "data/maps/LavaridgeTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 85 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_MayExplainGoGogglesChallengeDad, MSGBOX_DEFAULT
# 86 "data/maps/LavaridgeTown/scripts.pory"
	removefieldmugshot
# 87 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RivalExit
# 88 "data/maps/LavaridgeTown/scripts.pory"
	end
# 89 "data/maps/LavaridgeTown/scripts.pory"

# 90 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_BrendanGiveGoGoggles::
# 91 "data/maps/LavaridgeTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 92 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_BrendanNiceBadgesTakeThis, MSGBOX_DEFAULT
# 93 "data/maps/LavaridgeTown/scripts.pory"
	removefieldmugshot
# 94 "data/maps/LavaridgeTown/scripts.pory"
	giveitem ITEM_GO_GOGGLES
# 95 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_RECEIVED_GO_GOGGLES
# 96 "data/maps/LavaridgeTown/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 97 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_BrendanExplainGoGogglesChallengeDad, MSGBOX_DEFAULT
# 98 "data/maps/LavaridgeTown/scripts.pory"
	removefieldmugshot
# 99 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RivalExit
# 100 "data/maps/LavaridgeTown/scripts.pory"
	end
# 101 "data/maps/LavaridgeTown/scripts.pory"

# 102 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalExit::
# 103 "data/maps/LavaridgeTown/scripts.pory"
	closemessage
# 104 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RIVAL
# 105 "data/maps/LavaridgeTown/scripts.pory"
	setobjectxyperm LOCALID_LAVARIDGE_RIVAL_ON_BIKE, 8, 5
# 106 "data/maps/LavaridgeTown/scripts.pory"
	addobject LOCALID_LAVARIDGE_RIVAL_ON_BIKE
# 107 "data/maps/LavaridgeTown/scripts.pory"
	delay 30
# 108 "data/maps/LavaridgeTown/scripts.pory"
	call_if_eq VAR_0x8008, 7, LavaridgeTown_EventScript_RivalExit1
# 109 "data/maps/LavaridgeTown/scripts.pory"
	call_if_ne VAR_0x8008, 7, LavaridgeTown_EventScript_RivalExit2
# 110 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RIVAL_ON_BIKE
# 111 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_LAVARIDGE_TOWN_STATE, 2
# 112 "data/maps/LavaridgeTown/scripts.pory"
	clearflag FLAG_HIDE_MAP_NAME_POPUP
# 113 "data/maps/LavaridgeTown/scripts.pory"
	savebgm MUS_DUMMY
# 114 "data/maps/LavaridgeTown/scripts.pory"
	fadedefaultbgm
# 115 "data/maps/LavaridgeTown/scripts.pory"
	releaseall
# 116 "data/maps/LavaridgeTown/scripts.pory"
	end
# 117 "data/maps/LavaridgeTown/scripts.pory"

# 118 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_PlayMayMusic::
# 119 "data/maps/LavaridgeTown/scripts.pory"
	playbgm MUS_ENCOUNTER_MAY, TRUE
# 120 "data/maps/LavaridgeTown/scripts.pory"
	return
# 121 "data/maps/LavaridgeTown/scripts.pory"

# 122 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_PlayBrendanMusic::
# 123 "data/maps/LavaridgeTown/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 124 "data/maps/LavaridgeTown/scripts.pory"
	return
# 125 "data/maps/LavaridgeTown/scripts.pory"

# 126 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalExitHerbShop::
# 127 "data/maps/LavaridgeTown/scripts.pory"
	opendoor 12, 15
# 128 "data/maps/LavaridgeTown/scripts.pory"
	waitdooranim
# 129 "data/maps/LavaridgeTown/scripts.pory"
	addobject LOCALID_LAVARIDGE_RIVAL
# 130 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, LavaridgeTown_Movement_RivalExitHerbShop
# 131 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 132 "data/maps/LavaridgeTown/scripts.pory"
	closedoor 12, 15
# 133 "data/maps/LavaridgeTown/scripts.pory"
	waitdooranim
# 134 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, LavaridgeTown_Movement_RivalWalkToGym
# 135 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 136 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_WalkInPlaceFasterLeft
# 137 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 138 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_PIN
# 139 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_ExclamationMark
# 140 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 141 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL, Common_Movement_Delay48
# 142 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 143 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 144 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 145 "data/maps/LavaridgeTown/scripts.pory"
	return
# 146 "data/maps/LavaridgeTown/scripts.pory"

# 147 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalExit1::
# 148 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_PLAYER, LavaridgeTown_Movement_PlayerWatchRivalExit
# 149 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL_ON_BIKE, LavaridgeTown_Movement_RivalExit1
# 150 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 151 "data/maps/LavaridgeTown/scripts.pory"
	return
# 152 "data/maps/LavaridgeTown/scripts.pory"

# 153 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RivalExit2::
# 154 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RIVAL_ON_BIKE, LavaridgeTown_Movement_RivalExit2
# 155 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 156 "data/maps/LavaridgeTown/scripts.pory"
	return
# 157 "data/maps/LavaridgeTown/scripts.pory"

# 158 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RivalWalkToGym:
# 159 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 160 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 161 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 162 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 163 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 164 "data/maps/LavaridgeTown/scripts.pory"
	walk_up
# 165 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 166 "data/maps/LavaridgeTown/scripts.pory"

# 167 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RivalExit2:
# 168 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 169 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 170 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 171 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 172 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 173 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 174 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 175 "data/maps/LavaridgeTown/scripts.pory"

# 176 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_PlayerWatchRivalExit:
# 177 "data/maps/LavaridgeTown/scripts.pory"
	delay_16
# 178 "data/maps/LavaridgeTown/scripts.pory"
	delay_8
# 179 "data/maps/LavaridgeTown/scripts.pory"
	walk_in_place_faster_down
# 180 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 181 "data/maps/LavaridgeTown/scripts.pory"

# 182 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RivalExit1:
# 183 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 184 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 185 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 186 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 187 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 188 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_down
# 189 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 190 "data/maps/LavaridgeTown/scripts.pory"

# 191 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RivalExitHerbShop:
# 192 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 193 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 194 "data/maps/LavaridgeTown/scripts.pory"

# 195 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_HotSpringsTrigger::
# 196 "data/maps/LavaridgeTown/scripts.pory"
	specialvar VAR_RESULT, GetPlayerFacingDirection
# 197 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, DIR_SOUTH, LavaridgeTown_EventScript_EnteredHotSprings
# 198 "data/maps/LavaridgeTown/scripts.pory"
	end
# 199 "data/maps/LavaridgeTown/scripts.pory"

# 200 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_EnteredHotSprings::
# 201 "data/maps/LavaridgeTown/scripts.pory"
	incrementgamestat GAME_STAT_ENTERED_HOT_SPRINGS
# 202 "data/maps/LavaridgeTown/scripts.pory"
	end
# 203 "data/maps/LavaridgeTown/scripts.pory"

# 204 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ExpertM::
# 205 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_HotSpringsNeverRunDry, MSGBOX_NPC
# 206 "data/maps/LavaridgeTown/scripts.pory"
	end
# 207 "data/maps/LavaridgeTown/scripts.pory"

# 208 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_OldMan::
# 209 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_PokemonNippedBackside, MSGBOX_SIGN
# 210 "data/maps/LavaridgeTown/scripts.pory"
	end
# 211 "data/maps/LavaridgeTown/scripts.pory"

# 212 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_Twin::
# 213 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_BatheInHotSpringsEveryDay, MSGBOX_NPC
# 214 "data/maps/LavaridgeTown/scripts.pory"
	end
# 215 "data/maps/LavaridgeTown/scripts.pory"

# 216 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_Boy::
# 217 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_Boy, MSGBOX_NPC
# 218 "data/maps/LavaridgeTown/scripts.pory"
	end
# 219 "data/maps/LavaridgeTown/scripts.pory"

# 220 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_HotSpringsOldWoman1::
# 221 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_IfPokemonInHotSprings, MSGBOX_NPC
# 222 "data/maps/LavaridgeTown/scripts.pory"
	end
# 223 "data/maps/LavaridgeTown/scripts.pory"

# 224 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_HotSpringsOldWoman2::
# 225 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_HotSpringsClaims, MSGBOX_NPC
# 226 "data/maps/LavaridgeTown/scripts.pory"
	end
# 227 "data/maps/LavaridgeTown/scripts.pory"

# 228 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ExpertF::
# 229 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_OhYouLikeHotSprings, MSGBOX_NPC
# 230 "data/maps/LavaridgeTown/scripts.pory"
	end
# 231 "data/maps/LavaridgeTown/scripts.pory"

# 232 "data/maps/LavaridgeTown/scripts.pory"

# 233 "data/maps/LavaridgeTown/scripts.pory"
// HLW_RENTON_METAL_QUEUE_EVENT_V3: BEGIN
# 234 "data/maps/LavaridgeTown/scripts.pory"
// Coord triggers run immediately; VAR_TEMP_1 only hands off to the real cutscene.
# 235 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_Renton_Likes_Metal_Right::
# 236 "data/maps/LavaridgeTown/scripts.pory"
	@ Immediate checker only: no wait/movement/cutscene here.
# 237 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_set FLAG_MAKE_IT_RAIN, LavaridgeTown_EventScript_RentonMetalNoAction
# 238 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_set FLAG_RENTON_LEFT, LavaridgeTown_EventScript_RentonMetalNoAction
# 239 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_0x8004, 8 @ STATION_ROCK_METAL
# 240 "data/maps/LavaridgeTown/scripts.pory"
	special Special_IsRadioStationPlaying
# 241 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, LavaridgeTown_EventScript_RentonMetalNoAction
# 242 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_TEMP_1, 1 @ handoff: player is on the right trigger
# 243 "data/maps/LavaridgeTown/scripts.pory"
	end
# 244 "data/maps/LavaridgeTown/scripts.pory"

# 245 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_Renton_Likes_Metal_Left::
# 246 "data/maps/LavaridgeTown/scripts.pory"
	@ Immediate checker only: no wait/movement/cutscene here.
# 247 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_set FLAG_MAKE_IT_RAIN, LavaridgeTown_EventScript_RentonMetalNoAction
# 248 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_set FLAG_RENTON_LEFT, LavaridgeTown_EventScript_RentonMetalNoAction
# 249 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_0x8004, 8 @ STATION_ROCK_METAL
# 250 "data/maps/LavaridgeTown/scripts.pory"
	special Special_IsRadioStationPlaying
# 251 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, LavaridgeTown_EventScript_RentonMetalNoAction
# 252 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_TEMP_1, 2 @ handoff: player is on the left trigger
# 253 "data/maps/LavaridgeTown/scripts.pory"
	end
# 254 "data/maps/LavaridgeTown/scripts.pory"

# 255 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonMetalStartRight::
# 256 "data/maps/LavaridgeTown/scripts.pory"
	@ Disable both coord triggers before entering the real global cutscene.
# 257 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_TEMP_1, 3
# 258 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_0x8007, 1
# 259 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RentonMetalBegin
# 260 "data/maps/LavaridgeTown/scripts.pory"
	end
# 261 "data/maps/LavaridgeTown/scripts.pory"

# 262 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonMetalStartLeft::
# 263 "data/maps/LavaridgeTown/scripts.pory"
	@ Disable both coord triggers before entering the real global cutscene.
# 264 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_TEMP_1, 3
# 265 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_0x8007, 2
# 266 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RentonMetalBegin
# 267 "data/maps/LavaridgeTown/scripts.pory"
	end
# 268 "data/maps/LavaridgeTown/scripts.pory"

# 269 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonMetalBegin::
# 270 "data/maps/LavaridgeTown/scripts.pory"
	lockall
# 271 "data/maps/LavaridgeTown/scripts.pory"
	hidefollower 1
# 272 "data/maps/LavaridgeTown/scripts.pory"

# 273 "data/maps/LavaridgeTown/scripts.pory"
	@ Spawn Renton inside the Gym and make him walk through the open door.
# 274 "data/maps/LavaridgeTown/scripts.pory"
	clearflag FLAG_HIDE_LAVARIDGE_METAL_RENTON
# 275 "data/maps/LavaridgeTown/scripts.pory"
	opendoor 7, 4
# 276 "data/maps/LavaridgeTown/scripts.pory"
	waitdooranim
# 277 "data/maps/LavaridgeTown/scripts.pory"
	addobject LOCALID_LAVARIDGE_METAL_RENTON
# 278 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonExitGym
# 279 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 280 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, Common_Movement_ExclamationMark
# 281 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 282 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_0x8007, 1, LavaridgeTown_EventScript_RentonPushQueueLeft
# 283 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RentonPushQueueRight
# 284 "data/maps/LavaridgeTown/scripts.pory"
	end
# 285 "data/maps/LavaridgeTown/scripts.pory"

# 286 "data/maps/LavaridgeTown/scripts.pory"
// The right trigger makes Renton push every queue member to the left.
# 287 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonPushQueueLeft::
# 288 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_1, Common_Movement_ExclamationMark
# 289 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 290 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 291 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 292 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_1, LavaridgeTown_Movement_MetalQueuePushLeft
# 293 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 294 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 295 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 296 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 297 "data/maps/LavaridgeTown/scripts.pory"
	closedoor 7, 4
# 298 "data/maps/LavaridgeTown/scripts.pory"
	waitdooranim
# 299 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_3, Common_Movement_ExclamationMark
# 300 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 301 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 302 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 303 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_3, LavaridgeTown_Movement_MetalQueuePushLeft
# 304 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 305 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 306 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 307 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 308 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_2, Common_Movement_ExclamationMark
# 309 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 310 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 311 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 312 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_2, LavaridgeTown_Movement_MetalQueuePushLeft
# 313 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 314 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 315 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 316 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 317 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_6, Common_Movement_ExclamationMark
# 318 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 319 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 320 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 321 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_6, LavaridgeTown_Movement_MetalQueuePushLeft
# 322 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 323 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 324 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 325 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 326 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_4, Common_Movement_ExclamationMark
# 327 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 328 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 329 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 330 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_4, LavaridgeTown_Movement_MetalQueuePushLeft
# 331 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 332 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 333 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 334 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 335 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_5, Common_Movement_ExclamationMark
# 336 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 337 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 338 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 339 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_5, LavaridgeTown_Movement_MetalQueuePushLeft
# 340 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 341 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 342 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 343 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 344 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RentonFinishedPushing
# 345 "data/maps/LavaridgeTown/scripts.pory"
	end
# 346 "data/maps/LavaridgeTown/scripts.pory"

# 347 "data/maps/LavaridgeTown/scripts.pory"
// The left trigger makes Renton push every queue member to the right.
# 348 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonPushQueueRight::
# 349 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_1, Common_Movement_ExclamationMark
# 350 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 351 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 352 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 353 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_1, LavaridgeTown_Movement_MetalQueuePushRight
# 354 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 355 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 356 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 357 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 358 "data/maps/LavaridgeTown/scripts.pory"
	closedoor 7, 4
# 359 "data/maps/LavaridgeTown/scripts.pory"
	waitdooranim
# 360 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_3, Common_Movement_ExclamationMark
# 361 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 362 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 363 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 364 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_3, LavaridgeTown_Movement_MetalQueuePushRight
# 365 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 366 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 367 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 368 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 369 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_2, Common_Movement_ExclamationMark
# 370 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 371 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 372 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 373 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_2, LavaridgeTown_Movement_MetalQueuePushRight
# 374 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 375 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 376 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 377 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 378 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_6, Common_Movement_ExclamationMark
# 379 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 380 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 381 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 382 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_6, LavaridgeTown_Movement_MetalQueuePushRight
# 383 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 384 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 385 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 386 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 387 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_4, Common_Movement_ExclamationMark
# 388 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 389 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 390 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 391 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_4, LavaridgeTown_Movement_MetalQueuePushRight
# 392 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 393 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 394 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 395 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 396 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_5, Common_Movement_ExclamationMark
# 397 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 398 "data/maps/LavaridgeTown/scripts.pory"
	delay 8
# 399 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_M_STRENGTH
# 400 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_5, LavaridgeTown_Movement_MetalQueuePushRight
# 401 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 402 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 403 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonAdvanceOne
# 404 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 405 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RentonFinishedPushing
# 406 "data/maps/LavaridgeTown/scripts.pory"
	end
# 407 "data/maps/LavaridgeTown/scripts.pory"

# 408 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonFinishedPushing::
# 409 "data/maps/LavaridgeTown/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 410 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_MAKE_IT_RAIN
# 411 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_RENTON_LEFT
# 412 "data/maps/LavaridgeTown/scripts.pory"

# 413 "data/maps/LavaridgeTown/scripts.pory"
	@ Remove the live objects explicitly before moving Renton. This prevents
# 414 "data/maps/LavaridgeTown/scripts.pory"
	@ the shifted queue from occupying his destination and locking the event.
# 415 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_1
# 416 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_3
# 417 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_2
# 418 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_6
# 419 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_4
# 420 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_5
# 421 "data/maps/LavaridgeTown/scripts.pory"
	setobjectxy LOCALID_LAVARIDGE_METAL_RENTON, 7, 6
# 422 "data/maps/LavaridgeTown/scripts.pory"
	delay 2
# 423 "data/maps/LavaridgeTown/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 424 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_0x8007, 1, LavaridgeTown_EventScript_RentonMeetFromRight
# 425 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RentonMeetFromLeft
# 426 "data/maps/LavaridgeTown/scripts.pory"
	end
# 427 "data/maps/LavaridgeTown/scripts.pory"

# 428 "data/maps/LavaridgeTown/scripts.pory"
// Player stands at (8,6): both actors turn toward each other horizontally.
# 429 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonMeetFromRight::
# 430 "data/maps/LavaridgeTown/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceLeft
# 431 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 432 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, Common_Movement_FaceRight
# 433 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 434 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RentonMetalDialogue
# 435 "data/maps/LavaridgeTown/scripts.pory"
	end
# 436 "data/maps/LavaridgeTown/scripts.pory"

# 437 "data/maps/LavaridgeTown/scripts.pory"
// Player stands at (6,6): both actors turn toward each other horizontally.
# 438 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonMeetFromLeft::
# 439 "data/maps/LavaridgeTown/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceRight
# 440 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 441 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, Common_Movement_FaceLeft
# 442 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 443 "data/maps/LavaridgeTown/scripts.pory"
	goto LavaridgeTown_EventScript_RentonMetalDialogue
# 444 "data/maps/LavaridgeTown/scripts.pory"
	end
# 445 "data/maps/LavaridgeTown/scripts.pory"

# 446 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonMetalDialogue::
# 447 "data/maps/LavaridgeTown/scripts.pory"
	createfieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
# 448 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_RentonClearedQueue, MSGBOX_DEFAULT
# 449 "data/maps/LavaridgeTown/scripts.pory"
	removefieldmugshot
# 450 "data/maps/LavaridgeTown/scripts.pory"
	closemessage
# 451 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_METAL_RENTON, LavaridgeTown_Movement_RentonLeaveSouth
# 452 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 453 "data/maps/LavaridgeTown/scripts.pory"
	removeobject LOCALID_LAVARIDGE_METAL_RENTON
# 454 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_HIDE_LAVARIDGE_METAL_RENTON
# 455 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_0x8007, 0
# 456 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_TEMP_1, 0
# 457 "data/maps/LavaridgeTown/scripts.pory"
	releaseall
# 458 "data/maps/LavaridgeTown/scripts.pory"
	end
# 459 "data/maps/LavaridgeTown/scripts.pory"

# 460 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonMetalNoAction::
# 461 "data/maps/LavaridgeTown/scripts.pory"
	end
# 462 "data/maps/LavaridgeTown/scripts.pory"

# 463 "data/maps/LavaridgeTown/scripts.pory"
// Renton is normally hidden; this is only a safe interaction fallback.
# 464 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_RentonMetalObject::
# 465 "data/maps/LavaridgeTown/scripts.pory"
	end
# 466 "data/maps/LavaridgeTown/scripts.pory"

# 467 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RentonExitGym:
# 468 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 469 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 470 "data/maps/LavaridgeTown/scripts.pory"

# 471 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RentonAdvanceOne:
# 472 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 473 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 474 "data/maps/LavaridgeTown/scripts.pory"

# 475 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_MetalQueuePushLeft:
# 476 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_left
# 477 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 478 "data/maps/LavaridgeTown/scripts.pory"

# 479 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_MetalQueuePushRight:
# 480 "data/maps/LavaridgeTown/scripts.pory"
	walk_fast_right
# 481 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 482 "data/maps/LavaridgeTown/scripts.pory"

# 483 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Movement_RentonLeaveSouth:
# 484 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 485 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 486 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 487 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 488 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 489 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 490 "data/maps/LavaridgeTown/scripts.pory"
	walk_down
# 491 "data/maps/LavaridgeTown/scripts.pory"
	step_end
# 492 "data/maps/LavaridgeTown/scripts.pory"

# 493 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_RentonClearedQueue:
# 494 "data/maps/LavaridgeTown/scripts.pory"
	.string "Whoa... I don't even like POP\n"
# 495 "data/maps/LavaridgeTown/scripts.pory"
	.string "music, you know... Usually.\p"
# 496 "data/maps/LavaridgeTown/scripts.pory"
	.string "But since your taste is this good,\n"
# 497 "data/maps/LavaridgeTown/scripts.pory"
	.string "I guess I can tell you something.\p"
# 498 "data/maps/LavaridgeTown/scripts.pory"
	.string "That AMATERASU... Well...\n"
# 499 "data/maps/LavaridgeTown/scripts.pory"
	.string "I think she's kind of my type.\p"
# 500 "data/maps/LavaridgeTown/scripts.pory"
	.string "...HEY! WHY ARE YOU LAUGHING?!\n"
# 501 "data/maps/LavaridgeTown/scripts.pory"
	.string "Knock it off!\p"
# 502 "data/maps/LavaridgeTown/scripts.pory"
	.string "And... some of her songs are\n"
# 503 "data/maps/LavaridgeTown/scripts.pory"
	.string "actually pretty good, okay?\p"
# 504 "data/maps/LavaridgeTown/scripts.pory"
	.string "You only got away with this\n"
# 505 "data/maps/LavaridgeTown/scripts.pory"
	.string "because that RADIO station is\l"
# 506 "data/maps/LavaridgeTown/scripts.pory"
	.string "way too good!\p"
# 507 "data/maps/LavaridgeTown/scripts.pory"
	.string "Now get lost! We'll battle again\n"
# 508 "data/maps/LavaridgeTown/scripts.pory"
	.string "some other time! HAHAHA!$"
# 509 "data/maps/LavaridgeTown/scripts.pory"
// HLW_RENTON_METAL_QUEUE_EVENT_V3: END
# 510 "data/maps/LavaridgeTown/scripts.pory"

# 511 "data/maps/LavaridgeTown/scripts.pory"
// -----------------------------------------------------------------------------
# 512 "data/maps/LavaridgeTown/scripts.pory"
// MAKE IT RAIN - queue event
# 513 "data/maps/LavaridgeTown/scripts.pory"
// -----------------------------------------------------------------------------
# 514 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_MakeItRain::
# 515 "data/maps/LavaridgeTown/scripts.pory"
	lockall
# 516 "data/maps/LavaridgeTown/scripts.pory"
	faceplayer
# 517 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_set FLAG_MAKE_IT_RAIN, LavaridgeTown_EventScript_MakeItRainDone
# 518 "data/maps/LavaridgeTown/scripts.pory"

# 519 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_MakeItRainComplaint, MSGBOX_DEFAULT
# 520 "data/maps/LavaridgeTown/scripts.pory"

# 521 "data/maps/LavaridgeTown/scripts.pory"
	// Keep the strict checker that already works:
# 522 "data/maps/LavaridgeTown/scripts.pory"
	// only CURRENT Drizzle or CURRENT Rain Dance in the party.
# 523 "data/maps/LavaridgeTown/scripts.pory"
	setvar VAR_RESULT, FALSE
# 524 "data/maps/LavaridgeTown/scripts.pory"
	special Special_HasDrizzleOrRainDanceInParty
# 525 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_ne VAR_RESULT, TRUE, LavaridgeTown_EventScript_MakeItRainNoRainmaker
# 526 "data/maps/LavaridgeTown/scripts.pory"

# 527 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_MakeItRainCanHelp, MSGBOX_DEFAULT
# 528 "data/maps/LavaridgeTown/scripts.pory"
	closemessage
# 529 "data/maps/LavaridgeTown/scripts.pory"

# 530 "data/maps/LavaridgeTown/scripts.pory"
	// STOCK normal rain sequence.
# 531 "data/maps/LavaridgeTown/scripts.pory"
	// Same structure used by the working weather scripts:
# 532 "data/maps/LavaridgeTown/scripts.pory"
	// setweather -> doweather -> WaitWeather -> waitstate.
# 533 "data/maps/LavaridgeTown/scripts.pory"
	setweather WEATHER_RAIN
# 534 "data/maps/LavaridgeTown/scripts.pory"
	doweather
# 535 "data/maps/LavaridgeTown/scripts.pory"
	special WaitWeather
# 536 "data/maps/LavaridgeTown/scripts.pory"
	waitstate
# 537 "data/maps/LavaridgeTown/scripts.pory"
	delay 20
# 538 "data/maps/LavaridgeTown/scripts.pory"

# 539 "data/maps/LavaridgeTown/scripts.pory"
	// The whole queue reacts at once.
# 540 "data/maps/LavaridgeTown/scripts.pory"
	playse SE_PIN
# 541 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_1, Common_Movement_ExclamationMark
# 542 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_2, Common_Movement_ExclamationMark
# 543 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_3, Common_Movement_ExclamationMark
# 544 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_4, Common_Movement_ExclamationMark
# 545 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_5, Common_Movement_ExclamationMark
# 546 "data/maps/LavaridgeTown/scripts.pory"
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_6, Common_Movement_ExclamationMark
# 547 "data/maps/LavaridgeTown/scripts.pory"
	waitmovement 0
# 548 "data/maps/LavaridgeTown/scripts.pory"
	waitse
# 549 "data/maps/LavaridgeTown/scripts.pory"
	delay 20
# 550 "data/maps/LavaridgeTown/scripts.pory"

# 551 "data/maps/LavaridgeTown/scripts.pory"
	// Use the exact stock-style fade/removal pattern.
# 552 "data/maps/LavaridgeTown/scripts.pory"
	fadescreenswapbuffers FADE_TO_BLACK
# 553 "data/maps/LavaridgeTown/scripts.pory"

# 554 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_MAKE_IT_RAIN
# 555 "data/maps/LavaridgeTown/scripts.pory"
	special Special_HideLavaridgeMakeItRainQueueNow
# 556 "data/maps/LavaridgeTown/scripts.pory"

# 557 "data/maps/LavaridgeTown/scripts.pory"
	// Same order as the working stock-style examples:
# 558 "data/maps/LavaridgeTown/scripts.pory"
	// set the hide flag FIRST, then remove the live objects.
# 559 "data/maps/LavaridgeTown/scripts.pory"
	// This prevents the current-map object templates from recreating them.
# 560 "data/maps/LavaridgeTown/scripts.pory"

# 561 "data/maps/LavaridgeTown/scripts.pory"

# 562 "data/maps/LavaridgeTown/scripts.pory"
	delay 2
# 563 "data/maps/LavaridgeTown/scripts.pory"
	fadescreenswapbuffers FADE_FROM_BLACK
# 564 "data/maps/LavaridgeTown/scripts.pory"

# 565 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_MakeItRainSuccess, MSGBOX_DEFAULT
# 566 "data/maps/LavaridgeTown/scripts.pory"
	releaseall
# 567 "data/maps/LavaridgeTown/scripts.pory"
	end
# 568 "data/maps/LavaridgeTown/scripts.pory"

# 569 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_MakeItRainNoRainmaker::
# 570 "data/maps/LavaridgeTown/scripts.pory"
	releaseall
# 571 "data/maps/LavaridgeTown/scripts.pory"
	end
# 572 "data/maps/LavaridgeTown/scripts.pory"

# 573 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_MakeItRainDone::
# 574 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_MakeItRainDone, MSGBOX_DEFAULT
# 575 "data/maps/LavaridgeTown/scripts.pory"
	releaseall
# 576 "data/maps/LavaridgeTown/scripts.pory"
	end
# 577 "data/maps/LavaridgeTown/scripts.pory"

# 578 "data/maps/LavaridgeTown/scripts.pory"

# 579 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_EggWoman::
# 580 "data/maps/LavaridgeTown/scripts.pory"
	lock
# 581 "data/maps/LavaridgeTown/scripts.pory"
	faceplayer
# 582 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_set FLAG_RECEIVED_LAVARIDGE_EGG, LavaridgeTown_EventScript_ReceivedEgg
# 583 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_HaveEggWillYouTakeIt, MSGBOX_YESNO
# 584 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LavaridgeTown_EventScript_DeclineEgg
# 585 "data/maps/LavaridgeTown/scripts.pory"
	getpartysize
# 586 "data/maps/LavaridgeTown/scripts.pory"
	goto_if_eq VAR_RESULT, PARTY_SIZE, LavaridgeTown_EventScript_NoRoomForEgg
# 587 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_HopeYoullWalkPlentyWithEgg, MSGBOX_DEFAULT
# 588 "data/maps/LavaridgeTown/scripts.pory"
	setflag FLAG_RECEIVED_LAVARIDGE_EGG
# 589 "data/maps/LavaridgeTown/scripts.pory"
	playfanfare MUS_OBTAIN_ITEM
# 590 "data/maps/LavaridgeTown/scripts.pory"
	message LavaridgeTown_Text_ReceivedTheEgg
# 591 "data/maps/LavaridgeTown/scripts.pory"
	waitfanfare
# 592 "data/maps/LavaridgeTown/scripts.pory"
	giveegg SPECIES_WYNAUT
# 593 "data/maps/LavaridgeTown/scripts.pory"
	release
# 594 "data/maps/LavaridgeTown/scripts.pory"
	end
# 595 "data/maps/LavaridgeTown/scripts.pory"

# 596 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ReceivedEgg::
# 597 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_EverySoOftenEggFoundAtDayCare, MSGBOX_DEFAULT
# 598 "data/maps/LavaridgeTown/scripts.pory"
	release
# 599 "data/maps/LavaridgeTown/scripts.pory"
	end
# 600 "data/maps/LavaridgeTown/scripts.pory"

# 601 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_NoRoomForEgg::
# 602 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_NoRoomForThisEgg, MSGBOX_DEFAULT
# 603 "data/maps/LavaridgeTown/scripts.pory"
	release
# 604 "data/maps/LavaridgeTown/scripts.pory"
	end
# 605 "data/maps/LavaridgeTown/scripts.pory"

# 606 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_DeclineEgg::
# 607 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_AsYouWishThen, MSGBOX_DEFAULT
# 608 "data/maps/LavaridgeTown/scripts.pory"
	release
# 609 "data/maps/LavaridgeTown/scripts.pory"
	end
# 610 "data/maps/LavaridgeTown/scripts.pory"

# 611 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_TownSign::
# 612 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_TownSign, MSGBOX_SIGN
# 613 "data/maps/LavaridgeTown/scripts.pory"
	end
# 614 "data/maps/LavaridgeTown/scripts.pory"

# 615 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_GymSign::
# 616 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_GymSign, MSGBOX_SIGN
# 617 "data/maps/LavaridgeTown/scripts.pory"
	end
# 618 "data/maps/LavaridgeTown/scripts.pory"

# 619 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_HerbShopSign::
# 620 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_HerbShopSign, MSGBOX_SIGN
# 621 "data/maps/LavaridgeTown/scripts.pory"
	end
# 622 "data/maps/LavaridgeTown/scripts.pory"

# 623 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_MayNiceBadgesTakeThis:
# 624 "data/maps/LavaridgeTown/scripts.pory"
	.string "ZINNIA: {PLAYER}{KUN}! Long time no see!\p"
# 625 "data/maps/LavaridgeTown/scripts.pory"
	.string "Oh? While I visited the hot springs,\n"
# 626 "data/maps/LavaridgeTown/scripts.pory"
	.string "you got the LAVARIDGE GYM BADGE.\p"
# 627 "data/maps/LavaridgeTown/scripts.pory"
	.string "You must have collected\n"
# 628 "data/maps/LavaridgeTown/scripts.pory"
	.string "good POKéMON…\l"
# 629 "data/maps/LavaridgeTown/scripts.pory"
	.string "No, I believe you raised some.\p"
# 630 "data/maps/LavaridgeTown/scripts.pory"
	.string "I guess it would be okay for you to\n"
# 631 "data/maps/LavaridgeTown/scripts.pory"
	.string "have this.$"
# 632 "data/maps/LavaridgeTown/scripts.pory"

# 633 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_MayExplainGoGogglesChallengeDad:
# 634 "data/maps/LavaridgeTown/scripts.pory"
	.string "ZINNIA: With those GO-GOGGLES, you'll\n"
# 635 "data/maps/LavaridgeTown/scripts.pory"
	.string "have no trouble getting through the\l"
# 636 "data/maps/LavaridgeTown/scripts.pory"
	.string "desert near ROUTE 111.\p"
# 637 "data/maps/LavaridgeTown/scripts.pory"
	.string "But, wow, {PLAYER}{KUN}…\n"
# 638 "data/maps/LavaridgeTown/scripts.pory"
	.string "Challenging GYMS…\p"
# 639 "data/maps/LavaridgeTown/scripts.pory"
	.string "You're trying hard because you don't\n"
# 640 "data/maps/LavaridgeTown/scripts.pory"
	.string "want to lose to me, I bet!\p"
# 641 "data/maps/LavaridgeTown/scripts.pory"
	.string "{PLAYER}{KUN}, I actually got a call\n"
# 642 "data/maps/LavaridgeTown/scripts.pory"
	.string "from Professor ACACIA recently.\p"
# 643 "data/maps/LavaridgeTown/scripts.pory"
	.string "Apparently there have been unusual\n"
# 644 "data/maps/LavaridgeTown/scripts.pory"
	.string "readings coming from PETALBURG.\p"
# 645 "data/maps/LavaridgeTown/scripts.pory"
	.string "She said the data is similar to other\n"
# 646 "data/maps/LavaridgeTown/scripts.pory"
	.string "locations that had links to the comet.\p"
# 647 "data/maps/LavaridgeTown/scripts.pory"
	.string "I'm going to go check it out.\n"
# 648 "data/maps/LavaridgeTown/scripts.pory"
	.string "See you again!$"
# 649 "data/maps/LavaridgeTown/scripts.pory"
	
# 650 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_BrendanNiceBadgesTakeThis:
# 651 "data/maps/LavaridgeTown/scripts.pory"
	.string "ZENNO: {PLAYER}, hey, it's been a while.\n"
# 652 "data/maps/LavaridgeTown/scripts.pory"
	.string "How's it going?\p"
# 653 "data/maps/LavaridgeTown/scripts.pory"
	.string "Hmm…\n"
# 654 "data/maps/LavaridgeTown/scripts.pory"
	.string "That's a decent collection of BADGES.\p"
# 655 "data/maps/LavaridgeTown/scripts.pory"
	.string "All right, then.\n"
# 656 "data/maps/LavaridgeTown/scripts.pory"
	.string "You may as well have this.$"
# 657 "data/maps/LavaridgeTown/scripts.pory"

# 658 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_BrendanExplainGoGogglesChallengeDad:
# 659 "data/maps/LavaridgeTown/scripts.pory"
	.string "ZENNO: Keep those with you if you're\n"
# 660 "data/maps/LavaridgeTown/scripts.pory"
	.string "planning on going into that desert near\l"
# 661 "data/maps/LavaridgeTown/scripts.pory"
	.string "ROUTE 111.\p"
# 662 "data/maps/LavaridgeTown/scripts.pory"
	.string "There should be some POKéMON that\n"
# 663 "data/maps/LavaridgeTown/scripts.pory"
	.string "are exclusively desert-dwellers.\l"
# 664 "data/maps/LavaridgeTown/scripts.pory"
	.string "You might look around for those.\p"
# 665 "data/maps/LavaridgeTown/scripts.pory"
	.string "As for me… I actually got a call\n"
# 666 "data/maps/LavaridgeTown/scripts.pory"
	.string "from Professor ACACIA recently.\p"
# 667 "data/maps/LavaridgeTown/scripts.pory"
	.string "Apparently there have been unusual\n"
# 668 "data/maps/LavaridgeTown/scripts.pory"
	.string "readings coming from PETALBURG.\p"
# 669 "data/maps/LavaridgeTown/scripts.pory"
	.string "She said the data is similar to other\n"
# 670 "data/maps/LavaridgeTown/scripts.pory"
	.string "locations that had links to the comet.\p"
# 671 "data/maps/LavaridgeTown/scripts.pory"
	.string "I'm going to go check it out.\n"
# 672 "data/maps/LavaridgeTown/scripts.pory"
	.string "See you around!$"
# 673 "data/maps/LavaridgeTown/scripts.pory"

# 674 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_HaveEggWillYouTakeIt:
# 675 "data/maps/LavaridgeTown/scripts.pory"
	.string "I have here an EGG.\p"
# 676 "data/maps/LavaridgeTown/scripts.pory"
	.string "I'd hoped to hatch it by covering it in\n"
# 677 "data/maps/LavaridgeTown/scripts.pory"
	.string "hot sand by the hot springs.\l"
# 678 "data/maps/LavaridgeTown/scripts.pory"
	.string "But that doesn't seem to be enough…\p"
# 679 "data/maps/LavaridgeTown/scripts.pory"
	.string "I've heard it would be best if it were\n"
# 680 "data/maps/LavaridgeTown/scripts.pory"
	.string "kept together with POKéMON and\l"
# 681 "data/maps/LavaridgeTown/scripts.pory"
	.string "carried about.\p"
# 682 "data/maps/LavaridgeTown/scripts.pory"
	.string "You are a TRAINER, yes?\n"
# 683 "data/maps/LavaridgeTown/scripts.pory"
	.string "And your POKéMON radiate vitality.\p"
# 684 "data/maps/LavaridgeTown/scripts.pory"
	.string "So, what say you?\n"
# 685 "data/maps/LavaridgeTown/scripts.pory"
	.string "Will you take this EGG to hatch?$"
# 686 "data/maps/LavaridgeTown/scripts.pory"

# 687 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_HopeYoullWalkPlentyWithEgg:
# 688 "data/maps/LavaridgeTown/scripts.pory"
	.string "Good! I hope you'll walk plenty with\n"
# 689 "data/maps/LavaridgeTown/scripts.pory"
	.string "this here EGG!$"
# 690 "data/maps/LavaridgeTown/scripts.pory"

# 691 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_ReceivedTheEgg:
# 692 "data/maps/LavaridgeTown/scripts.pory"
	.string "{PLAYER} received the EGG.$"
# 693 "data/maps/LavaridgeTown/scripts.pory"

# 694 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_NoRoomForThisEgg:
# 695 "data/maps/LavaridgeTown/scripts.pory"
	.string "Oh? You've too many POKéMON.\n"
# 696 "data/maps/LavaridgeTown/scripts.pory"
	.string "There's no room for this EGG…$"
# 697 "data/maps/LavaridgeTown/scripts.pory"

# 698 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_AsYouWishThen:
# 699 "data/maps/LavaridgeTown/scripts.pory"
	.string "As you wish, then…\p"
# 700 "data/maps/LavaridgeTown/scripts.pory"
	.string "If you have a change of heart about\n"
# 701 "data/maps/LavaridgeTown/scripts.pory"
	.string "hatching this EGG, I will be here.$"
# 702 "data/maps/LavaridgeTown/scripts.pory"

# 703 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_EverySoOftenEggFoundAtDayCare:
# 704 "data/maps/LavaridgeTown/scripts.pory"
	.string "Every so often, an EGG will be found at\n"
# 705 "data/maps/LavaridgeTown/scripts.pory"
	.string "the POKéMON DAY CARE.\p"
# 706 "data/maps/LavaridgeTown/scripts.pory"
	.string "Or at least that's how the rumor goes.$"
# 707 "data/maps/LavaridgeTown/scripts.pory"

# 708 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_HotSpringsNeverRunDry:
# 709 "data/maps/LavaridgeTown/scripts.pory"
	.string "We draw as much hot water as we need,\n"
# 710 "data/maps/LavaridgeTown/scripts.pory"
	.string "and yet the hot springs never run dry.\p"
# 711 "data/maps/LavaridgeTown/scripts.pory"
	.string "Isn't it magical?\p"
# 712 "data/maps/LavaridgeTown/scripts.pory"
	.string "These hot springs appear near active\n"
# 713 "data/maps/LavaridgeTown/scripts.pory"
	.string "volcanoes. Veins of water under the\l"
# 714 "data/maps/LavaridgeTown/scripts.pory"
	.string "ground are heated by magma to well up\l"
# 715 "data/maps/LavaridgeTown/scripts.pory"
	.string "as hot springs.$"
# 716 "data/maps/LavaridgeTown/scripts.pory"

# 717 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_PokemonNippedBackside:
# 718 "data/maps/LavaridgeTown/scripts.pory"
	.string "Being buried in this hot sand is…\n"
# 719 "data/maps/LavaridgeTown/scripts.pory"
	.string "Sigh…\p"
# 720 "data/maps/LavaridgeTown/scripts.pory"
	.string "So warm and heavenly…\p"
# 721 "data/maps/LavaridgeTown/scripts.pory"
	.string "Eh? Gyaah! Ouch!\p"
# 722 "data/maps/LavaridgeTown/scripts.pory"
	.string "A POKéMON nipped my backside!$"
# 723 "data/maps/LavaridgeTown/scripts.pory"

# 724 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_OhYouLikeHotSprings:
# 725 "data/maps/LavaridgeTown/scripts.pory"
	.string "Oh, you like hot springs, do you?\p"
# 726 "data/maps/LavaridgeTown/scripts.pory"
	.string "That's surprising for one as young\n"
# 727 "data/maps/LavaridgeTown/scripts.pory"
	.string "as you.$"
# 728 "data/maps/LavaridgeTown/scripts.pory"

# 729 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_BatheInHotSpringsEveryDay:
# 730 "data/maps/LavaridgeTown/scripts.pory"
	.string "I bathe in the hot springs every day.\p"
# 731 "data/maps/LavaridgeTown/scripts.pory"
	.string "I want to become a beautiful and strong\n"
# 732 "data/maps/LavaridgeTown/scripts.pory"
	.string "GYM LEADER like AMATERASU.$"
# 733 "data/maps/LavaridgeTown/scripts.pory"

# 734 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_IfPokemonInHotSprings:
# 735 "data/maps/LavaridgeTown/scripts.pory"
	.string "If people put POKéMON in hot springs,\n"
# 736 "data/maps/LavaridgeTown/scripts.pory"
	.string "it might be seriously strange.\p"
# 737 "data/maps/LavaridgeTown/scripts.pory"
	.string "Why, it might be an electric bath, or\n"
# 738 "data/maps/LavaridgeTown/scripts.pory"
	.string "a bubble bath, or even a lava bath…$"
# 739 "data/maps/LavaridgeTown/scripts.pory"

# 740 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_HotSpringsClaims:
# 741 "data/maps/LavaridgeTown/scripts.pory"
	.string "They're claiming that these hot springs\n"
# 742 "data/maps/LavaridgeTown/scripts.pory"
	.string "are good for calming nervous tension,\l"
# 743 "data/maps/LavaridgeTown/scripts.pory"
	.string "relieving aching muscles, solving\l"
# 744 "data/maps/LavaridgeTown/scripts.pory"
	.string "romantic problems, and attracting\l"
# 745 "data/maps/LavaridgeTown/scripts.pory"
	.string "money…$"
# 746 "data/maps/LavaridgeTown/scripts.pory"

# 747 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_TownSign:
# 748 "data/maps/LavaridgeTown/scripts.pory"
	.string "LAVARIDGE TOWN\p"
# 749 "data/maps/LavaridgeTown/scripts.pory"
	.string "“POKéMON CENTER HOT SPRINGS\n"
# 750 "data/maps/LavaridgeTown/scripts.pory"
	.string "An excellent place for relaxing!”$"
# 751 "data/maps/LavaridgeTown/scripts.pory"

# 752 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_GymSign:
# 753 "data/maps/LavaridgeTown/scripts.pory"
	.string "LAVARIDGE TOWN POKéMON GYM\n"
# 754 "data/maps/LavaridgeTown/scripts.pory"
	.string "LEADER: AMATERASU\l"
# 755 "data/maps/LavaridgeTown/scripts.pory"
	.string "“One with a fiery passion that burns!”$"
# 756 "data/maps/LavaridgeTown/scripts.pory"

# 757 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_HerbShopSign:
# 758 "data/maps/LavaridgeTown/scripts.pory"
	.string "POKéMON HERB SHOP\n"
# 759 "data/maps/LavaridgeTown/scripts.pory"
	.string "“Bitter taste--better cure!”$"
# 760 "data/maps/LavaridgeTown/scripts.pory"

# 761 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_Boy:
# 762 "data/maps/LavaridgeTown/scripts.pory"
    .string "Yo! My grandpa says\n"
# 763 "data/maps/LavaridgeTown/scripts.pory"
    .string "it wasn't this hot before here.\p"
# 764 "data/maps/LavaridgeTown/scripts.pory"
    .string "Something must've changed\n"
# 765 "data/maps/LavaridgeTown/scripts.pory"
    .string "deep in the mountain...\p"
# 766 "data/maps/LavaridgeTown/scripts.pory"
    .string "When I grow up, I'm going\n"
# 767 "data/maps/LavaridgeTown/scripts.pory"
    .string "to check out FIERY PATH\l"
# 768 "data/maps/LavaridgeTown/scripts.pory"
    .string "and find rare POKéMON!$"
# 769 "data/maps/LavaridgeTown/scripts.pory"

# 770 "data/maps/LavaridgeTown/scripts.pory"
// MAKE IT RAIN dialogue
# 771 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_MakeItRainComplaint:
# 772 "data/maps/LavaridgeTown/scripts.pory"
	.string "Honestly... all this noise is ruining\n"
# 773 "data/maps/LavaridgeTown/scripts.pory"
	.string "the peace and quiet of LAVARIDGE!\p"
# 774 "data/maps/LavaridgeTown/scripts.pory"
	.string "People shouting, laughing, lining up\n"
# 775 "data/maps/LavaridgeTown/scripts.pory"
	.string "all day... What a nuisance.\p"
# 776 "data/maps/LavaridgeTown/scripts.pory"
	.string "A good downpour would send them all\n"
# 777 "data/maps/LavaridgeTown/scripts.pory"
	.string "running for cover.\p"
# 778 "data/maps/LavaridgeTown/scripts.pory"
	.string "If only I had a POKéMON that could\n"
# 779 "data/maps/LavaridgeTown/scripts.pory"
	.string "make it rain...$"
# 780 "data/maps/LavaridgeTown/scripts.pory"

# 781 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_MakeItRainCanHelp:
# 782 "data/maps/LavaridgeTown/scripts.pory"
	.string "Hmm... Wait a moment.\p"
# 783 "data/maps/LavaridgeTown/scripts.pory"
	.string "There's something unusual about one\n"
# 784 "data/maps/LavaridgeTown/scripts.pory"
	.string "of your POKéMON...\p"
# 785 "data/maps/LavaridgeTown/scripts.pory"
	.string "Don't tell me... You can actually\n"
# 786 "data/maps/LavaridgeTown/scripts.pory"
	.string "bring the rain?$"
# 787 "data/maps/LavaridgeTown/scripts.pory"

# 788 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_MakeItRainSuccess:
# 789 "data/maps/LavaridgeTown/scripts.pory"
	.string "HA! Look at them run!\p"
# 790 "data/maps/LavaridgeTown/scripts.pory"
	.string "So much for that noisy little crowd!\p"
# 791 "data/maps/LavaridgeTown/scripts.pory"
	.string "Now this is the peaceful LAVARIDGE\n"
# 792 "data/maps/LavaridgeTown/scripts.pory"
	.string "I remember.$"
# 793 "data/maps/LavaridgeTown/scripts.pory"

# 794 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_MakeItRainDone:
# 795 "data/maps/LavaridgeTown/scripts.pory"
	.string "Now that that noisy crowd is gone,\n"
# 796 "data/maps/LavaridgeTown/scripts.pory"
	.string "LAVARIDGE feels so much calmer.\p"
# 797 "data/maps/LavaridgeTown/scripts.pory"
	.string "This is how our town should be.$"
# 798 "data/maps/LavaridgeTown/scripts.pory"

# 799 "data/maps/LavaridgeTown/scripts.pory"
// SHOW QUEUE CHATTER: BEGIN
# 800 "data/maps/LavaridgeTown/scripts.pory"
// Short pre-show conversations for the Make It Rain queue.
# 801 "data/maps/LavaridgeTown/scripts.pory"

# 802 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ShowQueue1::
# 803 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_ShowQueue1, MSGBOX_NPC
# 804 "data/maps/LavaridgeTown/scripts.pory"
	end
# 805 "data/maps/LavaridgeTown/scripts.pory"

# 806 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ShowQueueAlejandro::
# 807 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_ShowQueueAlejandro, MSGBOX_NPC
# 808 "data/maps/LavaridgeTown/scripts.pory"
	end
# 809 "data/maps/LavaridgeTown/scripts.pory"

# 810 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ShowQueue3::
# 811 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_ShowQueue3, MSGBOX_NPC
# 812 "data/maps/LavaridgeTown/scripts.pory"
	end
# 813 "data/maps/LavaridgeTown/scripts.pory"

# 814 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ShowQueue4::
# 815 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_ShowQueue4, MSGBOX_NPC
# 816 "data/maps/LavaridgeTown/scripts.pory"
	end
# 817 "data/maps/LavaridgeTown/scripts.pory"

# 818 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ShowQueue5::
# 819 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_ShowQueue5, MSGBOX_NPC
# 820 "data/maps/LavaridgeTown/scripts.pory"
	end
# 821 "data/maps/LavaridgeTown/scripts.pory"

# 822 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_EventScript_ShowQueue6::
# 823 "data/maps/LavaridgeTown/scripts.pory"
	msgbox LavaridgeTown_Text_ShowQueue6, MSGBOX_NPC
# 824 "data/maps/LavaridgeTown/scripts.pory"
	end
# 825 "data/maps/LavaridgeTown/scripts.pory"

# 826 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_ShowQueue1:
# 827 "data/maps/LavaridgeTown/scripts.pory"
	.string "I love AMATERASU! I've been waiting\n"
# 828 "data/maps/LavaridgeTown/scripts.pory"
	.string "all day to see her perform!$"
# 829 "data/maps/LavaridgeTown/scripts.pory"

# 830 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_ShowQueueAlejandro:
# 831 "data/maps/LavaridgeTown/scripts.pory"
	.string "ALEJANDRO: I'm off duty right now!\p"
# 832 "data/maps/LavaridgeTown/scripts.pory"
	.string "I can enjoy a show too, okay?\p"
# 833 "data/maps/LavaridgeTown/scripts.pory"
	.string "We'll settle things later...$"
# 834 "data/maps/LavaridgeTown/scripts.pory"

# 835 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_ShowQueue3:
# 836 "data/maps/LavaridgeTown/scripts.pory"
	.string "AMATERASU's songs are so good!\n"
# 837 "data/maps/LavaridgeTown/scripts.pory"
	.string "I hope she plays my favorite tonight!$"
# 838 "data/maps/LavaridgeTown/scripts.pory"

# 839 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_ShowQueue4:
# 840 "data/maps/LavaridgeTown/scripts.pory"
	.string "I heard AMATERASU is even better\n"
# 841 "data/maps/LavaridgeTown/scripts.pory"
	.string "live. This line is totally worth it!$"
# 842 "data/maps/LavaridgeTown/scripts.pory"

# 843 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_ShowQueue5:
# 844 "data/maps/LavaridgeTown/scripts.pory"
	.string "I've had AMATERASU's songs stuck\n"
# 845 "data/maps/LavaridgeTown/scripts.pory"
	.string "in my head all week. I can't wait!$"
# 846 "data/maps/LavaridgeTown/scripts.pory"

# 847 "data/maps/LavaridgeTown/scripts.pory"
LavaridgeTown_Text_ShowQueue6:
# 848 "data/maps/LavaridgeTown/scripts.pory"
	.string "Almost there! I just hope I can get\n"
# 849 "data/maps/LavaridgeTown/scripts.pory"
	.string "close enough to the stage!$"
# 850 "data/maps/LavaridgeTown/scripts.pory"

# 851 "data/maps/LavaridgeTown/scripts.pory"
// SHOW QUEUE CHATTER: END
