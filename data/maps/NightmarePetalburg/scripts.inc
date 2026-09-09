NightmarePetalburg_MapScripts::
	.byte 0

NightmarePetalburg_EventScript_JaggedGlass::
	msgbox NightmarePetalburg_Text_JaggedGlass, MSGBOX_SIGN
	end

NightmarePetalburg_Text_JaggedGlass:
	.string "The glass is jagged and sharp.\n"
	.string "You would cut yourself if you\l"
	.string "tried to enter.$"

doorwontbudge::
	msgbox NightmarePetalburg_Text_DoorWontBudge, MSGBOX_SIGN
	end

whoswally::
	msgbox NightmarePetalburg_Text_WhosWally, MSGBOX_SIGN
	end

petalburgcity::
	msgbox NightmarePetalburg_Text_PetalburgCity, MSGBOX_SIGN
	end

norman::
	msgbox NightmarePetalburg_Text_Norman, MSGBOX_SIGN
	end


@ >>> HLW NIGHTMARE PETALBURG CAMERA SCENE BEGIN
@
@ Geometry read from map.json at install time:
@ trigger=(47,24)
@ DarkAura=(12,26)
@ horizontal delta=-35; vertical delta=2 ignored on purpose
@
NightmarePetalburg_Suicune::
    goto_if_set FLAG_DEFEATED_NIGHTMARE_PETALBURG_DARK_AURA, NightmarePetalburg_Suicune_AlreadyDone
    lockall
    setvar VAR_TEMP_0, 1
    applymovement LOCALID_PLAYER, Common_Movement_FaceLeft
    waitmovement 0
    playse SE_PIN
    applymovement LOCALID_PLAYER, Common_Movement_ExclamationMark
    waitmovement 0
    waitse
    @ SPECIES_SWANNA is the project's Dark Suicune slot and uses CRY_SUICUNE.
    playmoncry SPECIES_SWANNA, CRY_MODE_NORMAL
    waitmoncry
    special SpawnCameraObject
    applymovement LOCALID_CAMERA, NightmarePetalburg_Movement_CameraToDarkAura
    waitmovement 0
    delay 90
    fadescreenspeed FADE_TO_BLACK, 8
    special RemoveCameraObject
    delay 8
    special StartDarkSuicuneScene
    waitstate
    goto NightmarePetalburg_EventScript_DarkAuraBattle_AfterScene
    end

NightmarePetalburg_Suicune_AlreadyDone::
    setvar VAR_TEMP_0, 1
    end

NightmarePetalburg_Movement_CameraToDarkAura:
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    walk_left
    step_end
@ <<< HLW NIGHTMARE PETALBURG CAMERA SCENE END

NightmarePetalburg_EventScript_DarkAuraBattle::
	lock
	faceplayer
	special StartDarkSuicuneScene
	waitstate
NightmarePetalburg_EventScript_DarkAuraBattle_AfterScene::
    fadescreenspeed FADE_TO_BLACK, 1
	waitse
	playmoncry SPECIES_SWANNA, CRY_MODE_ENCOUNTER
	delay 40
	waitmoncry
	setvar VAR_LAST_TALKED, LOCALID_NIGHTMARE_PETALBURG_DARK_AURA
	setwildbattle SPECIES_SWANNA, 50
	special SetScriptedWildMonPerfectIVs
	setflag FLAG_SYS_CTRL_OBJ_DELETE
	special BattleSetup_StartDarkAuraBattle
	waitstate
	clearflag FLAG_SYS_CTRL_OBJ_DELETE
	specialvar VAR_RESULT, GetBattleOutcome
	goto_if_eq VAR_RESULT, B_OUTCOME_WON, NightmarePetalburg_EventScript_DefeatedDarkAura
	releaseall
	end

NightmarePetalburg_EventScript_DefeatedDarkAura::
	setflag FLAG_DEFEATED_NIGHTMARE_PETALBURG_DARK_AURA
	fadescreenswapbuffers FADE_TO_BLACK
	removeobject VAR_LAST_TALKED
	fadescreenswapbuffers FADE_FROM_BLACK
	msgbox NightmarePetalburg_Text_DarkAuraFades, MSGBOX_DEFAULT
	giveitem ITEM_COMET_SHARD
	releaseall
	end

NightmarePetalburg_EventScript_CorviknightExit::
	lock
	msgbox NightmarePetalburg_Text_TimeGearTurn, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, YES, NightmarePetalburg_EventScript_UseTimeGear
	release
	end

NightmarePetalburg_EventScript_UseTimeGear::
	closemessage
	setflag FLAG_PETALBURG_QUAKE_STORM_CLEARED
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_SCIENTIST
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_CALENDULA
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_LUKA
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_RIVAL
	setflag FLAG_HIDE_PETALBURG_CITY_QUAKE_PORTAL
	setvar VAR_PETALBURG_GYM_STATE, 6
	call Common_EventScript_ReadyPetalburgGymForBattle
	playse SE_WARP_OUT
	fadescreenspeed FADE_TO_WHITE, 4
	delay 20
	warp MAP_PETALBURG_CITY, 20, 10
	waitstate
	release
	end

NightmarePetalburg_Text_TimeGearTurn:
	.string "The TIME GEAR sits depleted and\n"
	.string "still. Turn it?$"

NightmarePetalburg_Text_DarkAuraFades:
	.string "The dark aura fades away.$"

NightmarePetalburg_Text_DoorWontBudge:
	.string "The door is shut tight. It won't\n"
	.string "even budge.$"

NightmarePetalburg_Text_WhosWally:
	.string "WALLY's house.\p"
	.string "...\p"
	.string "Who is WALLY?$"

NightmarePetalburg_Text_PetalburgCity:
	.string "PETALBURG CITY\n"
	.string "Where people mingle with nature.$"

NightmarePetalburg_Text_Norman:
	.string "PETALBURG GYM - LEADER: NORMAN\p"
	.string "NORMAN???$"
