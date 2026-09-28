@
@ DO NOT MODIFY THIS FILE! It is auto-generated from data/maps/LavaridgeTown/map.json
@

	.align 2

LavaridgeTown_ObjectEvents:
	object_event 1, OBJ_EVENT_GFX_EXPERT_F, 22, 7, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, LavaridgeTown_EventScript_ExpertF, 0
	object_event 2, OBJ_EVENT_GFX_EXPERT_M, 19, 1, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, LavaridgeTown_EventScript_ExpertM, 0
	object_event 3, OBJ_EVENT_GFX_OLD_MAN, 5, 13, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, LavaridgeTown_EventScript_OldMan, 0
	object_event 4, OBJ_EVENT_GFX_TWIN, 23, 15, 3, MOVEMENT_TYPE_WANDER_UP_AND_DOWN, 0, 2, TRAINER_TYPE_NONE, 0, LavaridgeTown_EventScript_Twin, 0
	object_event 5, OBJ_EVENT_GFX_HOT_SPRINGS_OLD_WOMAN, 18, 4, 3, MOVEMENT_TYPE_FACE_DOWN_AND_RIGHT, 0, 0, TRAINER_TYPE_NONE, 0, LavaridgeTown_EventScript_HotSpringsOldWoman1, 0
	object_event 6, OBJ_EVENT_GFX_HOT_SPRINGS_OLD_WOMAN, 19, 4, 3, MOVEMENT_TYPE_FACE_DOWN_AND_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, LavaridgeTown_EventScript_HotSpringsOldWoman2, 0
	object_event 7, OBJ_EVENT_GFX_VAR_3, 8, 11, 3, MOVEMENT_TYPE_FACE_LEFT, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_LAVARIDGE_TOWN_RIVAL_ON_BIKE
	object_event 8, OBJ_EVENT_GFX_VAR_0, 26, 15, 0, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, 0x0, FLAG_HIDE_LAVARIDGE_TOWN_RIVAL
	object_event 9, OBJ_EVENT_GFX_EXPERT_F, 6, 15, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, LavaridgeTown_EventScript_EggWoman, 0
	object_event 10, OBJ_EVENT_GFX_SPECIES(BIBAREL), 18, 7, 0, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, NULL, 0
	object_event 11, OBJ_EVENT_GFX_SPECIES(GROWLITHE), 23, 18, 0, MOVEMENT_TYPE_LOOK_AROUND, 0, 0, TRAINER_TYPE_NONE, 0, EventScript_OverworldPokemonCry_GROWLITHE, 0
	object_event 12, OBJ_EVENT_GFX_LITTLE_BOY, 20, 10, 3, MOVEMENT_TYPE_WANDER_UP_AND_DOWN, 0, 2, TRAINER_TYPE_NONE, 0, LavaridgeTown_EventScript_Boy, 0
	object_event 13, OBJ_EVENT_GFX_GIRL_1, 7, 6, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, LavaridgeTown_EventScript_ShowQueue3, FLAG_MAKE_IT_RAIN
	object_event 14, OBJ_EVENT_GFX_GIRL_2, 7, 5, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, LavaridgeTown_EventScript_ShowQueue1, FLAG_MAKE_IT_RAIN
	object_event 15, OBJ_EVENT_GFX_MAN_4, 7, 10, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, LavaridgeTown_EventScript_ShowQueue5, FLAG_MAKE_IT_RAIN
	object_event 16, OBJ_EVENT_GFX_ALEJANDRO, 7, 7, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, LavaridgeTown_EventScript_ShowQueueAlejandro, FLAG_MAKE_IT_RAIN
	object_event 17, OBJ_EVENT_GFX_GIRL_3, 7, 9, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, LavaridgeTown_EventScript_ShowQueue4, FLAG_MAKE_IT_RAIN
	object_event 18, OBJ_EVENT_GFX_EXPERT_F, 12, 7, 3, MOVEMENT_TYPE_FACE_DOWN, 1, 1, TRAINER_TYPE_NONE, 0, LavaridgeTown_EventScript_MakeItRain, 0
	object_event 19, OBJ_EVENT_GFX_RICH_BOY_2, 7, 8, 3, MOVEMENT_TYPE_FACE_UP, 0, 0, TRAINER_TYPE_NONE, 0, LavaridgeTown_EventScript_ShowQueue6, FLAG_MAKE_IT_RAIN
	object_event 20, OBJ_EVENT_GFX_BRAWLY, 7, 3, 3, MOVEMENT_TYPE_FACE_DOWN, 0, 0, TRAINER_TYPE_NONE, 0, LavaridgeTown_EventScript_RentonMetalObject, FLAG_HIDE_LAVARIDGE_METAL_RENTON

LavaridgeTown_MapWarps:
	warp_def 26, 15, 0, 0, MAP_LAVARIDGE_TOWN_HERB_SHOP
	warp_def 7, 4, 0, 0, MAP_LAVARIDGE_TOWN_GYM_1F
	warp_def 29, 5, 0, 0, MAP_LAVARIDGE_TOWN_MART
	warp_def 23, 6, 0, 0, MAP_LAVARIDGE_TOWN_POKEMON_CENTER_1F
	warp_def 30, 15, 0, 0, MAP_LAVARIDGE_TOWN_HOUSE
	warp_def 23, 2, 3, 3, MAP_LAVARIDGE_TOWN_POKEMON_CENTER_1F
	warp_def 7, 17, 0, 0, MAP_FIERY_PATH_ENTRANCE
	warp_def 18, 16, 0, 0, MAP_LAVARIDGE_TOWNINCENSE

LavaridgeTown_MapCoordEvents:
	coord_event 20, 3, 3, TRIGGER_RUN_IMMEDIATELY, 0, LavaridgeTown_EventScript_HotSpringsTrigger
	coord_event 8, 6, 3, VAR_TEMP_1, 0, LavaridgeTown_EventScript_Renton_Likes_Metal_Right
	coord_event 6, 6, 3, VAR_TEMP_1, 0, LavaridgeTown_EventScript_Renton_Likes_Metal_Left

LavaridgeTown_MapBGEvents:
	bg_sign_event 28, 16, 0, BG_EVENT_PLAYER_FACING_ANY, LavaridgeTown_EventScript_HerbShopSign
	bg_sign_event 9, 4, 0, BG_EVENT_PLAYER_FACING_ANY, LavaridgeTown_EventScript_GymSign
	bg_sign_event 31, 5, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemartSign
	bg_sign_event 27, 8, 0, BG_EVENT_PLAYER_FACING_ANY, LavaridgeTown_EventScript_TownSign
	bg_sign_event 24, 6, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemonCenterSign
	bg_sign_event 30, 5, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemartSign
	bg_sign_event 25, 6, 0, BG_EVENT_PLAYER_FACING_NORTH, Common_EventScript_ShowPokemonCenterSign
	bg_hidden_item_event 14, 3, 3, ITEM_ICE_HEAL, FLAG_HIDDEN_ITEM_LAVARIDGE_TOWN_ICE_HEAL

LavaridgeTown_MapEvents::
	map_events LavaridgeTown_ObjectEvents, LavaridgeTown_MapWarps, LavaridgeTown_MapCoordEvents, LavaridgeTown_MapBGEvents

