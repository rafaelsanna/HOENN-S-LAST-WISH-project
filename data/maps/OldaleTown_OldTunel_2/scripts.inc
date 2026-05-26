OldaleTown_OldTunel_2_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, OldaleTown_OldTunel_2_OnTransition
	.byte 0

OldaleTown_OldTunel_2_OnTransition:
	// Hide/show wild Sentret based on flags
	call_if_unset FLAG_SHINY_SENTRET, OldaleTown_OldTunel_2_ShowWildSentret
	call_if_set FLAG_SHINY_SENTRET, OldaleTown_OldTunel_2_HideWildSentret
	call_if_set FLAG_SHINY_SENTRET_END, OldaleTown_OldTunel_2_HideWildSentret
	end

OldaleTown_OldTunel_2_ShowWildSentret::
	clearflag FLAG_HIDE_SHINY_SENTRET_WILD
	return

OldaleTown_OldTunel_2_HideWildSentret::
	setflag FLAG_HIDE_SHINY_SENTRET_WILD
	return

// ====================================================================
// SHINY SENTRET WILD - Interact to make it follow you
// ====================================================================

OldaleTown_OldTunel_2_EventScript_ShinySentret::
	lock
	faceplayer
	
	// If quest is already complete or Sentret is already following
	goto_if_set FLAG_SHINY_SENTRET_END, OldaleTown_OldTunel_2_SentretAlreadyReturned
	goto_if_set FLAG_SHINY_SENTRET, OldaleTown_OldTunel_2_SentretAlreadyFollowing
	
	// Transform into follower
	msgbox OldaleTown_OldTunel_2_Text_SentretJoinsYou, MSGBOX_DEFAULT
	closemessage
	
	playse SE_M_HYPER_BEAM
	delay 20
	
	// Hide wild Sentret
	fadescreenswapbuffers FADE_TO_BLACK
	setflag FLAG_HIDE_SHINY_SENTRET_WILD
	fadescreenswapbuffers FADE_FROM_BLACK
	
	setflag FLAG_SHINY_SENTRET  // Set following flag
	
	// Set as follower
	destroyfollowernpc
	setfollowernpc 6, FNPC_ALL, NULL, 0
	
	msgbox OldaleTown_OldTunel_2_Text_SentretHappy, MSGBOX_DEFAULT
	playmoncry SPECIES_SENTRET, CRY_MODE_NORMAL
	waitmoncry
	
	release
	end

OldaleTown_OldTunel_2_SentretAlreadyFollowing::
	msgbox OldaleTown_OldTunel_2_Text_SentretLooksAtYou, MSGBOX_DEFAULT
	playmoncry SPECIES_SENTRET, CRY_MODE_NORMAL
	waitmoncry
	release
	end

OldaleTown_OldTunel_2_SentretAlreadyReturned::
	playmoncry SPECIES_SENTRET, CRY_MODE_NORMAL
	waitmoncry
	release
	end

// ====================================================================
// TEXT MESSAGES - OldaleTown_OldTunel_2
// ====================================================================

OldaleTown_OldTunel_2_Text_SentretJoinsYou:
	.string "SENTRET: Sent...?\n"
	.string "The SHINY SENTRET looks at you\n"
	.string "with trusting eyes.\p"
	.string "He decides to follow you!$"

OldaleTown_OldTunel_2_Text_SentretHappy:
	.string "SENTRET: Sent sent!$"

OldaleTown_OldTunel_2_Text_SentretLooksAtYou:
	.string "The SHINY SENTRET looks at you,\n"
	.string "waiting to be reunited with his trainer.$"