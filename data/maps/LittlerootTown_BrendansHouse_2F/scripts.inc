// ====================================================================
// BRENDAN'S HOUSE 2F - SIMPLIFICADO SEM VARIÁVEIS EXTRAS
// ====================================================================

LittlerootTown_BrendansHouse_2F_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, LittlerootTown_BrendansHouse_2F_OnTransition
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, LittlerootTown_BrendansHouse_2F_OnWarp
	map_script MAP_SCRIPT_ON_FRAME_TABLE, LittlerootTown_BrendansHouse_2F_OnFrame
	.byte 0

LittlerootTown_BrendansHouse_2F_OnFrame:
	map_script_2 VAR_LITTLEROOT_INTRO_STATE, 6, LittlerootTown_BrendansHouse_2F_EventScript_WeirdDreamDialogue
	.2byte 0

LittlerootTown_BrendansHouse_2F_EventScript_WeirdDreamDialogue::
	lockall
	msgbox LittlerootTown_BrendansHouse_2F_Text_WeirdDream, MSGBOX_DEFAULT
	setvar VAR_LITTLEROOT_INTRO_STATE, 7
	releaseall
	end

LittlerootTown_BrendansHouse_2F_Text_WeirdDream:
	.string "{PLAYER}: What a weird dream...\p"
	.string "Was that JIRACHI and CELEBI?\n"
	.string "Maybe it wasn't a dream...\l"
	.string "Maybe it really happened...$"

LittlerootTown_BrendansHouse_2F_OnTransition:
	call_if_lt VAR_LITTLEROOT_RIVAL_STATE, 2, LittlerootTown_BrendansHouse_2F_EventScript_CheckSetReadyToMeetBrendan
	call_if_ge VAR_LITTLEROOT_RIVAL_STATE, 3, LittlerootTown_BrendansHouse_2F_EventScript_CheckShouldUpdateBrendanPos
	call_if_eq VAR_LITTLEROOT_INTRO_STATE, 4, PlayersHouse_2F_EventScript_BlockStairsUntilClockIsSet
	call SecretBase_EventScript_SetDecorationFlags
	setvar VAR_SECRET_BASE_INITIALIZED, 0
	end

LittlerootTown_BrendansHouse_2F_EventScript_CheckShouldUpdateBrendanPos::
	goto_if_set FLAG_MET_RIVAL_LILYCOVE, LittlerootTown_BrendansHouse_2F_EventScript_TryUpdateBrendanPos
	goto_if_ge VAR_BIRCH_LAB_STATE, 2, LittlerootTown_BrendansHouse_2F_EventScript_Ret
	goto LittlerootTown_BrendansHouse_2F_EventScript_TryUpdateBrendanPos

LittlerootTown_BrendansHouse_2F_EventScript_TryUpdateBrendanPos::
	checkplayergender
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_BrendansHouse_2F_EventScript_Ret
	goto_if_ge VAR_DEX_UPGRADE_JOHTO_STARTER_STATE, 2, LittlerootTown_BrendansHouse_2F_EventScript_Ret
	setobjectxyperm LOCALID_RIVALS_HOUSE_2F_RIVAL, 0, 2
	setobjectmovementtype LOCALID_RIVALS_HOUSE_2F_RIVAL, MOVEMENT_TYPE_FACE_UP
	return

LittlerootTown_BrendansHouse_2F_EventScript_Ret::
	return

LittlerootTown_BrendansHouse_2F_EventScript_CheckSetReadyToMeetBrendan::
	checkplayergender
	goto_if_eq VAR_RESULT, FEMALE, LittlerootTown_BrendansHouse_2F_EventScript_SetReadyToMeetBrendan
	return

LittlerootTown_BrendansHouse_2F_EventScript_SetReadyToMeetBrendan::
	setvar VAR_LITTLEROOT_RIVAL_STATE, 2
	return

LittlerootTown_BrendansHouse_2F_OnWarp:
	map_script_2 VAR_SECRET_BASE_INITIALIZED, 0, LittlerootTown_BrendansHouse_2F_EventScript_CheckInitDecor
	.2byte 0

LittlerootTown_BrendansHouse_2F_EventScript_CheckInitDecor::
	checkplayergender
	goto_if_eq VAR_RESULT, MALE, SecretBase_EventScript_InitDecorations
	return

LittlerootTown_BrendansHouse_2F_EventScript_RivalsPokeBall::
	lockall
	goto_if_eq VAR_LITTLEROOT_RIVAL_STATE, 2, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendan
	msgbox RivalsHouse_2F_Text_ItsRivalsPokeBall, MSGBOX_DEFAULT
	releaseall
	end

LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendan::
	delay 10
	addobject LOCALID_RIVALS_HOUSE_2F_RIVAL
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanEnters
	waitmovement 0
	playse SE_PIN
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, Common_Movement_ExclamationMark
	waitmovement 0
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, Common_Movement_Delay48
	waitmovement 0
	delay 10
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
	call_if_eq VAR_FACING, DIR_NORTH, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanNorth
	call_if_eq VAR_FACING, DIR_SOUTH, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanSouth
	call_if_eq VAR_FACING, DIR_WEST, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanWest
	call_if_eq VAR_FACING, DIR_EAST, LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanEast
	setvar VAR_LITTLEROOT_RIVAL_STATE, 3
	setflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_POKE_BALL
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_BEDROOM
	setvar VAR_LITTLEROOT_TOWN_STATE, 1
	savebgm MUS_DUMMY
	fadedefaultbgm
	releaseall
	end

LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanNorth::
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerNorth
	waitmovement 0
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
	waitmovement 0
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanNorth
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCNorth
	waitmovement 0
	return

LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanSouth::
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerSouth
	waitmovement 0
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
	waitmovement 0
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanSouth
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCSouth
	waitmovement 0
	return

LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanWest::
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerWest
	waitmovement 0
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
	waitmovement 0
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_PLAYER, LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanWest
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCWest
	waitmovement 0
	return

LittlerootTown_BrendansHouse_2F_EventScript_MeetBrendanEast::
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerEast
	waitmovement 0
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
	waitmovement 0
	msgbox RivalsHouse_2F_Text_BrendanWhoAreYou, MSGBOX_DEFAULT
	closemessage
	applymovement LOCALID_RIVALS_HOUSE_2F_RIVAL, LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCEast
	waitmovement 0
	return

LittlerootTown_BrendansHouse_2F_Movement_BrendanEnters:
	walk_down
	walk_down
	walk_in_place_faster_left
	step_end

LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerNorth:
	walk_left
	walk_left
	walk_down
	walk_down
	walk_left
	step_end

LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCNorth:
	walk_up
	walk_up
	walk_up
	walk_left
	walk_left
	walk_left
	walk_left
	walk_in_place_faster_up
	step_end

LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanNorth:
	delay_16
	walk_in_place_faster_up
	delay_16
	delay_16
	delay_16
	delay_16
	walk_in_place_faster_left
	step_end

LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerSouth:
	walk_left
	walk_left
	walk_left
	step_end

LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCSouth:
	walk_up
	walk_left
	walk_left
	walk_left
	walk_left
	walk_in_place_faster_up
	step_end

LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanSouth:
	delay_16
	walk_in_place_faster_up
	delay_16
	delay_16
	walk_in_place_faster_left
	step_end

LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerWest:
	walk_left
	walk_left
	walk_down
	walk_in_place_faster_left
	step_end

LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCWest:
	walk_up
	walk_up
	walk_left
	walk_left
	walk_left
	walk_left
	walk_left
	walk_in_place_faster_up
	step_end

LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanWest:
	delay_8
	delay_16
	walk_in_place_faster_up
	delay_16
	delay_16
	walk_in_place_faster_left
	step_end

LittlerootTown_BrendansHouse_2F_Movement_BrendanApproachPlayerEast:
	walk_left
	walk_left
	walk_left
	walk_left
	walk_left
	walk_in_place_faster_down
	step_end

LittlerootTown_BrendansHouse_2F_Movement_BrendanWalkToPCEast:
	walk_up
	walk_left
	walk_left
	walk_in_place_faster_up
	step_end

LittlerootTown_BrendansHouse_2F_Movement_PlayerWatchBrendanEast:
	delay_16
	delay_16
	walk_in_place_faster_left
	step_end

LittlerootTown_BrendansHouse_2F_EventScript_PC::
	lockall
	checkplayergender
	goto_if_eq VAR_RESULT, MALE, LittlerootTown_BrendansHouse_2F_EventScript_CheckPlayersPC
	goto_if_eq VAR_RESULT, FEMALE, LittlerootTown_BrendansHouse_2F_EventScript_CheckRivalsPC
	end

LittlerootTown_BrendansHouse_2F_EventScript_CheckPlayersPC::
	setvar VAR_0x8004, PC_LOCATION_BRENDANS_HOUSE
	special DoPCTurnOnEffect
	playse SE_PC_ON
	msgbox gText_PlayerHouseBootPC, MSGBOX_DEFAULT
	special BedroomPC
	waitstate
	releaseall
	end

LittlerootTown_BrendansHouse_2F_EventScript_TurnOffPlayerPC::
	setvar VAR_0x8004, PC_LOCATION_BRENDANS_HOUSE
	playse SE_PC_OFF
	special DoPCTurnOffEffect
	releaseall
	end

LittlerootTown_BrendansHouse_2F_EventScript_CheckRivalsPC::
	msgbox gText_PokemonTrainerSchoolEmail, MSGBOX_DEFAULT
	releaseall
	end

PlayersHouse_2F_EventScript_Notebook::
	lock
	faceplayer
	msgbox PlayersHouse_2F_Text_NotebookAskRead, MSGBOX_YESNO
	compare VAR_RESULT, YES
	goto_if_eq PlayersHouse_2F_EventScript_ReadNotebook
	msgbox PlayersHouse_2F_Text_NotebookMaybeLater, MSGBOX_DEFAULT
	release
	end

PlayersHouse_2F_EventScript_ReadNotebook::
	// 1. AEGISLASH - The Beginning
	showmonpic SPECIES_AEGISLASH, 10, 3
	msgbox PlayersHouse_2F_Text_NotebookStory1, MSGBOX_DEFAULT
	hidemonpic
	
	// 2. ALOMOMOLA - The Conflict
	showmonpic SPECIES_ALOMOMOLA, 10, 3
	msgbox PlayersHouse_2F_Text_NotebookStory2, MSGBOX_DEFAULT
	hidemonpic

	// 3. AVALUGG - Great Battle
	showmonpic SPECIES_AVALUGG, 10, 3
	playse SE_M_SURF
	playse SE_M_THUNDERBOLT
	msgbox PlayersHouse_2F_Text_NotebookStory3, MSGBOX_DEFAULT
	hidemonpic
	
	// 4. AMAURA - Tsunami
	showmonpic SPECIES_AMAURA, 10, 3
	msgbox PlayersHouse_2F_Text_NotebookStory4, MSGBOX_DEFAULT
	hidemonpic

	// 5. AROMATISSE - Volcano
	showmonpic SPECIES_AROMATISSE, 10, 3
	msgbox PlayersHouse_2F_Text_NotebookStory5, MSGBOX_DEFAULT
	hidemonpic

	// 6. ARROKUDA - Wasteland
	showmonpic SPECIES_ARROKUDA, 10, 3
	msgbox PlayersHouse_2F_Text_NotebookStory6, MSGBOX_DEFAULT
	hidemonpic

	// 7. AUDINO - Ocean Storms
	showmonpic SPECIES_AUDINO, 10, 3
	msgbox PlayersHouse_2F_Text_NotebookStory7, MSGBOX_DEFAULT
	hidemonpic

	// 8. AURORUS - Survivor Camps
	showmonpic SPECIES_AURORUS, 10, 3
	msgbox PlayersHouse_2F_Text_NotebookStory8, MSGBOX_DEFAULT
	hidemonpic

	// 9. AMOONGUSS - Hope Fades
	showmonpic SPECIES_AMOONGUSS, 10, 3
	msgbox PlayersHouse_2F_Text_NotebookStory9, MSGBOX_DEFAULT
	hidemonpic
	
	// 10. APPLIN - Legend Appears
	showmonpic SPECIES_APPLIN, 10, 3
	msgbox PlayersHouse_2F_Text_NotebookStory10, MSGBOX_DEFAULT
	hidemonpic
	
	// 11. APPLETUN - Sky Guardian
	showmonpic SPECIES_APPLETUN, 10, 3
	msgbox PlayersHouse_2F_Text_NotebookStory11, MSGBOX_DEFAULT
	hidemonpic

	// 12. AXEW - Peace Restored
	showmonpic SPECIES_AXEW, 10, 3
	msgbox PlayersHouse_2F_Text_NotebookStory12, MSGBOX_DEFAULT
	hidemonpic
	
	// 13. ARBOLIVA - World Today
	showmonpic SPECIES_ARBOLIVA, 10, 3
	msgbox PlayersHouse_2F_Text_NotebookStory13, MSGBOX_DEFAULT
	hidemonpic

	// Final message
	msgbox PlayersHouse_2F_Text_NotebookFinished, MSGBOX_DEFAULT
	release
	end

PlayersHouse_2F_EventScript_GameCube::
	msgbox PlayersHouse_2F_Text_ItsAGameCube, MSGBOX_SIGN
	end

PlayersHouse_2F_Text_ClockIsStopped:
	.string "The clock is stopped…\p"
	.string "Better set it and start it!$"

PlayersHouse_2F_Text_HowDoYouLikeYourRoom:
	.string "MOM: {PLAYER}, how do you like your\n"
	.string "new room?\p"
	.string "Good! Everything's put away neatly!\p"
	.string "They finished moving everything in\n"
	.string "downstairs, too.\p"
	.string "POKéMON movers are so convenient!\p"
	.string "Oh, you should make sure that\n"
	.string "everything's all there on your desk.$"

PlayersHouse_2F_Text_NotebookAskRead:
	.string "A notebook with ancient drawings\nand writings.\p"
	.string "Would you like to read it?$"

PlayersHouse_2F_Text_NotebookMaybeLater:
	.string "You leave the notebook for later.$"

PlayersHouse_2F_Text_NotebookStory1:
	.string "Page 1: This was the beginning\nof it all...$"

PlayersHouse_2F_Text_NotebookStory2:
	.string "Page 2: Then the great conflict\nstarted...$"

PlayersHouse_2F_Text_NotebookStory3:
	.string "Page 3: The epic battle between land\nand sea shook Hoenn...$"

PlayersHouse_2F_Text_NotebookStory4:
	.string "Page 4: Massive tsunamis devastated\nthe coastal regions...$"

PlayersHouse_2F_Text_NotebookStory5:
	.string "Page 5: Volcanoes erupted across\nthe land...$"

PlayersHouse_2F_Text_NotebookStory6:
	.string "Page 6: The land became a barren\nwasteland...$"

PlayersHouse_2F_Text_NotebookStory7:
	.string "Page 7: The oceans raged with\nunending storms...$"

PlayersHouse_2F_Text_NotebookStory8:
	.string "Page 8: Survivors gathered in\ncamps...$"

PlayersHouse_2F_Text_NotebookStory9:
	.string "Page 9: Hope began to fade...$"

PlayersHouse_2F_Text_NotebookStory10:
	.string "Page 10: But then a legend\nappeared...$"

PlayersHouse_2F_Text_NotebookStory11:
	.string "Page 11: The sky guardian descended\nfrom above...$"

PlayersHouse_2F_Text_NotebookStory12:
	.string "Page 12: Peace was restored,\nbut at a cost...$"

PlayersHouse_2F_Text_NotebookStory13:
	.string "Page 13: This is how our world\nbecame what it is today...$"

PlayersHouse_2F_Text_NotebookFinished:
	.string "You close the notebook, filled with\nwonder about Hoenn's ancient past.$"

Common_Text_LookCloserAtMap:
	.string "{PLAYER} took a closer look at the\n"
	.string "HOENN region map.$"

PlayersHouse_2F_Text_ItsAGameCube:
	.string "It's a Nintendo GameCube.\p"
	.string "A Game Boy Advance is connected to\n"
	.string "serve as the Controller.$"
