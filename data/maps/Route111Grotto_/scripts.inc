# 1 "data/maps/Route111Grotto_/scripts.pory"

# 2 "data/maps/Route111Grotto_/scripts.pory"
Route111Grotto__MapScripts::
# 3 "data/maps/Route111Grotto_/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, Route111Grotto__OnTransition
# 4 "data/maps/Route111Grotto_/scripts.pory"
	.byte 0
# 5 "data/maps/Route111Grotto_/scripts.pory"

# 6 "data/maps/Route111Grotto_/scripts.pory"
Route111Grotto__OnTransition:
# 7 "data/maps/Route111Grotto_/scripts.pory"
	setflag FLAG_TEMP_5
# 8 "data/maps/Route111Grotto_/scripts.pory"
	setflag FLAG_TEMP_6
# 9 "data/maps/Route111Grotto_/scripts.pory"
	special HiddenGrotto_InitializeCurrent
# 10 "data/maps/Route111Grotto_/scripts.pory"
	special HiddenGrotto_GetCurrentContentType
# 11 "data/maps/Route111Grotto_/scripts.pory"
	call_if_eq VAR_RESULT, 2, Route111Grotto__EventScript_ShowPokemon
# 12 "data/maps/Route111Grotto_/scripts.pory"
	call_if_eq VAR_RESULT, 3, Route111Grotto__EventScript_ShowVisibleItem
# 13 "data/maps/Route111Grotto_/scripts.pory"
	end
# 14 "data/maps/Route111Grotto_/scripts.pory"

# 15 "data/maps/Route111Grotto_/scripts.pory"
Route111Grotto__EventScript_ShowPokemon::
# 16 "data/maps/Route111Grotto_/scripts.pory"
	clearflag FLAG_TEMP_5
# 17 "data/maps/Route111Grotto_/scripts.pory"
	return
# 18 "data/maps/Route111Grotto_/scripts.pory"

# 19 "data/maps/Route111Grotto_/scripts.pory"
Route111Grotto__EventScript_ShowVisibleItem::
# 20 "data/maps/Route111Grotto_/scripts.pory"
	clearflag FLAG_TEMP_6
# 21 "data/maps/Route111Grotto_/scripts.pory"
	return
# 22 "data/maps/Route111Grotto_/scripts.pory"

# 23 "data/maps/Route111Grotto_/scripts.pory"
Route111Grotto__EventScript_Pokemon::
# 24 "data/maps/Route111Grotto_/scripts.pory"
	lock
# 25 "data/maps/Route111Grotto_/scripts.pory"
	faceplayer
# 26 "data/maps/Route111Grotto_/scripts.pory"
	special HiddenGrotto_CreateCurrentMon
# 27 "data/maps/Route111Grotto_/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Route111Grotto__EventScript_NoPokemon
# 28 "data/maps/Route111Grotto_/scripts.pory"
	dowildbattle
# 29 "data/maps/Route111Grotto_/scripts.pory"
	specialvar VAR_RESULT, GetBattleOutcome
# 30 "data/maps/Route111Grotto_/scripts.pory"
	goto_if_eq VAR_RESULT, B_OUTCOME_WON, Route111Grotto__EventScript_ClearPokemon
# 31 "data/maps/Route111Grotto_/scripts.pory"
	goto_if_eq VAR_RESULT, B_OUTCOME_RAN, Route111Grotto__EventScript_ClearPokemon
# 32 "data/maps/Route111Grotto_/scripts.pory"
	goto_if_eq VAR_RESULT, B_OUTCOME_PLAYER_TELEPORTED, Route111Grotto__EventScript_ClearPokemon
# 33 "data/maps/Route111Grotto_/scripts.pory"
	goto_if_eq VAR_RESULT, B_OUTCOME_CAUGHT, Route111Grotto__EventScript_ClearPokemon
# 34 "data/maps/Route111Grotto_/scripts.pory"
	release
# 35 "data/maps/Route111Grotto_/scripts.pory"
	end
# 36 "data/maps/Route111Grotto_/scripts.pory"

# 37 "data/maps/Route111Grotto_/scripts.pory"
Route111Grotto__EventScript_ClearPokemon::
# 38 "data/maps/Route111Grotto_/scripts.pory"
	special HiddenGrotto_EmptyCurrent
# 39 "data/maps/Route111Grotto_/scripts.pory"
	removeobject VAR_LAST_TALKED
# 40 "data/maps/Route111Grotto_/scripts.pory"
	release
# 41 "data/maps/Route111Grotto_/scripts.pory"
	end
# 42 "data/maps/Route111Grotto_/scripts.pory"

# 43 "data/maps/Route111Grotto_/scripts.pory"
Route111Grotto__EventScript_NoPokemon::
# 44 "data/maps/Route111Grotto_/scripts.pory"
	release
# 45 "data/maps/Route111Grotto_/scripts.pory"
	end
# 46 "data/maps/Route111Grotto_/scripts.pory"

# 47 "data/maps/Route111Grotto_/scripts.pory"
Route111Grotto__EventScript_VisibleItem::
# 48 "data/maps/Route111Grotto_/scripts.pory"
	lock
# 49 "data/maps/Route111Grotto_/scripts.pory"
	special HiddenGrotto_GetCurrentContentId
# 50 "data/maps/Route111Grotto_/scripts.pory"
	giveitem VAR_RESULT
# 51 "data/maps/Route111Grotto_/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 52 "data/maps/Route111Grotto_/scripts.pory"
	special HiddenGrotto_EmptyCurrent
# 53 "data/maps/Route111Grotto_/scripts.pory"
	removeobject VAR_LAST_TALKED
# 54 "data/maps/Route111Grotto_/scripts.pory"
	release
# 55 "data/maps/Route111Grotto_/scripts.pory"
	end
# 56 "data/maps/Route111Grotto_/scripts.pory"

# 57 "data/maps/Route111Grotto_/scripts.pory"
Route111Grotto__EventScript_HiddenItem::
# 58 "data/maps/Route111Grotto_/scripts.pory"
	special HiddenGrotto_GetCurrentContentType
# 59 "data/maps/Route111Grotto_/scripts.pory"
	goto_if_ne VAR_RESULT, 4, Route111Grotto__EventScript_NoHiddenItem
# 60 "data/maps/Route111Grotto_/scripts.pory"
	lockall
# 61 "data/maps/Route111Grotto_/scripts.pory"
	special HiddenGrotto_GetCurrentContentId
# 62 "data/maps/Route111Grotto_/scripts.pory"
	giveitem VAR_RESULT
# 63 "data/maps/Route111Grotto_/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Route111Grotto__EventScript_HiddenBagFull
# 64 "data/maps/Route111Grotto_/scripts.pory"
	special HiddenGrotto_EmptyCurrent
# 65 "data/maps/Route111Grotto_/scripts.pory"
	releaseall
# 66 "data/maps/Route111Grotto_/scripts.pory"
	end
# 67 "data/maps/Route111Grotto_/scripts.pory"

# 68 "data/maps/Route111Grotto_/scripts.pory"
Route111Grotto__EventScript_HiddenBagFull::
# 69 "data/maps/Route111Grotto_/scripts.pory"
	msgbox gText_TooBadBagIsFull, MSGBOX_DEFAULT
# 70 "data/maps/Route111Grotto_/scripts.pory"
	releaseall
# 71 "data/maps/Route111Grotto_/scripts.pory"
	end
# 72 "data/maps/Route111Grotto_/scripts.pory"

# 73 "data/maps/Route111Grotto_/scripts.pory"
Route111Grotto__EventScript_NoHiddenItem::
# 74 "data/maps/Route111Grotto_/scripts.pory"
	end
