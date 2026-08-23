Std_RegisteredInMatchCall::
	buffertrainerclassname STR_VAR_1, VAR_0x8000
	buffertrainername STR_VAR_2, VAR_0x8000
	@ PokéNav removed closemessage
	@ PokéNav removed delay 30
	@ PokéNav removed playfanfare MUS_REGISTER_MATCH_CALL
	@ PokéNav removed msgbox gText_RegisteredTrainerinPokeNav, MSGBOX_DEFAULT
	@ PokéNav removed waitfanfare
	@ PokéNav removed closemessage
	@ PokéNav removed delay 30
	return

EventScript_TryGetTrainerScript::
	special ShouldTryGetTrainerScript
	goto_if_eq VAR_RESULT, TRUE, EventScript_GotoTrainerScript
	releaseall
	end

EventScript_GotoTrainerScript::
	gotobeatenscript
	releaseall
	end

EventScript_ObjectApproachPlayer::
	lock
	special DoTrainerApproach
	waitstate
	gotonative LoadTrainerObjectScript
