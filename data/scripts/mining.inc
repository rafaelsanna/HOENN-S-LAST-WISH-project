EventScript_TryDailyMining::
	lockall
	goto_if_unset FLAG_LEARNED_MINING, EventScript_DailyMiningCancel
	special TryDailyMiningWall
	goto_if_eq VAR_RESULT, MINING_WALL_RESULT_LOCKED, EventScript_DailyMiningLocked
	goto_if_eq VAR_RESULT, MINING_WALL_RESULT_ALREADY_TRIED, EventScript_DailyMiningAlreadyTried
	goto_if_eq VAR_RESULT, MINING_WALL_RESULT_CAN_MINE, EventScript_DailyMiningCanMine
	goto_if_eq VAR_RESULT, MINING_WALL_RESULT_NO_ENERGY, EventScript_DailyMiningNoEnergy
	msgbox Text_DailyMiningEmpty, MSGBOX_DEFAULT
	releaseall
	end

EventScript_DailyMiningLocked::
	msgbox Text_DailyMiningLocked, MSGBOX_DEFAULT
	releaseall
	end

EventScript_DailyMiningAlreadyTried::
	msgbox Text_DailyMiningAlreadyTried, MSGBOX_DEFAULT
	releaseall
	end

EventScript_DailyMiningNoEnergy::
	msgbox Text_DailyMiningNoEnergy, MSGBOX_DEFAULT
	releaseall
	end

EventScript_DailyMiningCanMine::
	msgbox Text_DailyMiningPrompt, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, EventScript_DailyMiningCancel
	closemessage
	setvar VAR_0x8004, MINING_POOL_DEFAULT
	fadescreen FADE_TO_BLACK
	special StartMining
	end

EventScript_DailyMiningCancel::
	releaseall
	end

EventScript_Mining_TrySession::
	specialvar VAR_RESULT, TryMiningFreeSession
	goto_if_eq VAR_RESULT, MINING_SESSION_RESULT_FREE, EventScript_Mining_StartSession
	msgbox Text_Mining_PaidSessionOffer, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, EventScript_Mining_CancelSession
	checkmoney MINING_PAID_SESSION_COST
	goto_if_eq VAR_RESULT, FALSE, EventScript_Mining_NotEnoughMoney
	removemoney MINING_PAID_SESSION_COST
	playse SE_SHOP
	goto EventScript_Mining_StartSession

EventScript_Mining_StartSession::
	closemessage
	fadescreen FADE_TO_BLACK
	special StartMining
	end

EventScript_Mining_CancelSession::
	release
	end

EventScript_Mining_NotEnoughMoney::
	msgbox Text_Mining_NotEnoughMoney, MSGBOX_DEFAULT
	release
	end

Text_Mining_FreeSessionsPrompt:
	.string "You have {STR_VAR_1} free mining\n"
	.string "session(s) left here today.\p"
	.string "Would you like to try mining?$"

Text_Mining_FreeSessionsNotice:
	.string "You have {STR_VAR_1} free mining\n"
	.string "session(s) left here today.$"

Text_Mining_PaidSessionOffer:
	.string "You've used all 5 free sessions\n"
	.string "here today.\p"
	.string "You could persuade me with ¥2000.\n"
	.string "Pay for another session?$"

Text_Mining_NotEnoughMoney:
	.string "You need ¥2000 to mine again here\n"
	.string "today. Either pay up, or come back\n"
	.string "tomorrow for more free sessions.$"

Text_DailyMiningLocked:
	.string "The wall looks unusual,\n"
	.string "but you do not know how to mine it.$"

Text_DailyMiningEmpty:
	.string "You tap the wall...\p"
	.string "There is no response.$"

Text_DailyMiningAlreadyTried:
	.string "This spot has already been checked\n"
	.string "today.$"

Text_DailyMiningNoEnergy:
	.string "You're too tired to check any\n"
	.string "more walls today.$"

Text_DailyMiningPrompt:
	.string "You tap the wall...\p"
	.string "Something is buried here!\n"
	.string "Mine this spot?$"

GraniteCave_1F_EventScript_MinerNPC::
	lock
	faceplayer
	goto_if_set FLAG_LEARNED_MINING, GraniteCave_1F_EventScript_MinerNPC_AlreadyKnows
	msgbox JaggedPass_Text_MinerNPC_Teach
	closemessage
	setflag FLAG_LEARNED_MINING
	setvar VAR_0x8004, MINING_POOL_GRANITE_CAVE
	setvar VAR_0x8005, MINING_LOCATION_GRANITE_CAVE
	specialvar VAR_RESULT, GetMiningFreeSessionsRemaining
	buffernumberstring STR_VAR_1, VAR_RESULT
	msgbox Text_Mining_FreeSessionsNotice, MSGBOX_DEFAULT
	goto EventScript_Mining_TrySession

GraniteCave_1F_EventScript_MinerNPC_AlreadyKnows:
	setvar VAR_0x8005, MINING_LOCATION_GRANITE_CAVE
	setvar VAR_0x8004, MINING_POOL_GRANITE_CAVE
	specialvar VAR_RESULT, GetMiningFreeSessionsRemaining
	goto_if_eq VAR_RESULT, 0, GraniteCave_1F_EventScript_MinerNPC_NoFreeSessions
	buffernumberstring STR_VAR_1, VAR_RESULT
	msgbox GraniteCave_1F_Text_MinerNPC_Prompt, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, EventScript_Mining_CancelSession
	goto EventScript_Mining_TrySession

GraniteCave_1F_EventScript_MinerNPC_NoFreeSessions:
	msgbox GraniteCave_1F_Text_MinerNPC_Description, MSGBOX_DEFAULT
	goto EventScript_Mining_TrySession

GraniteCave_1F_EventScript_MinerNPC_Start:
	setvar VAR_0x8004, MINING_POOL_GRANITE_CAVE
	goto EventScript_Mining_TrySession

GraniteCave_1F_Text_MinerNPC_Prompt:
	.string "This cave contains a lot of rare\n"
	.string "stones.\p"
	.string "You have {STR_VAR_1} free mining\n"
	.string "session(s) left here today.\p"
	.string "Would you like to try mining?$"

GraniteCave_1F_Text_MinerNPC_Description:
	.string "This cave contains a lot of rare\n"
	.string "stones.$"

Route111_EventScript_MinerNPC::
	lock
	faceplayer
	goto_if_set FLAG_LEARNED_MINING, Route111_EventScript_MinerNPC_AlreadyKnows
	msgbox JaggedPass_Text_MinerNPC_Teach
	closemessage
	setflag FLAG_LEARNED_MINING
	setvar VAR_0x8004, MINING_POOL_ROUTE_111
	setvar VAR_0x8005, MINING_LOCATION_ROUTE_111
	specialvar VAR_RESULT, GetMiningFreeSessionsRemaining
	buffernumberstring STR_VAR_1, VAR_RESULT
	msgbox Text_Mining_FreeSessionsNotice, MSGBOX_DEFAULT
	goto EventScript_Mining_TrySession

Route111_EventScript_MinerNPC_AlreadyKnows:
	setvar VAR_0x8005, MINING_LOCATION_ROUTE_111
	setvar VAR_0x8004, MINING_POOL_ROUTE_111
	specialvar VAR_RESULT, GetMiningFreeSessionsRemaining
	goto_if_eq VAR_RESULT, 0, Route111_EventScript_MinerNPC_NoFreeSessions
	buffernumberstring STR_VAR_1, VAR_RESULT
	msgbox Route111_Text_MinerNPC_Prompt, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, EventScript_Mining_CancelSession
	goto EventScript_Mining_TrySession

Route111_EventScript_MinerNPC_NoFreeSessions:
	msgbox Route111_Text_MinerNPC_Description, MSGBOX_DEFAULT
	goto EventScript_Mining_TrySession

Route111_EventScript_MinerNPC_Start:
	setvar VAR_0x8004, MINING_POOL_ROUTE_111
	goto EventScript_Mining_TrySession

Route111_Text_MinerNPC_Prompt:
	.string "The desert is a great location for\n"
	.string "fossils.\p"
	.string "You have {STR_VAR_1} free mining\n"
	.string "session(s) left here today.\p"
	.string "Would you like to try mining?$"

Route111_Text_MinerNPC_Description:
	.string "The desert is a great location for\n"
	.string "fossils.$"

VictoryRoad_1F_EventScript_MinerNPC::
	lock
	faceplayer
	goto_if_set FLAG_LEARNED_MINING, VictoryRoad_1F_EventScript_MinerNPC_AlreadyKnows
	msgbox JaggedPass_Text_MinerNPC_Teach
	closemessage
	setflag FLAG_LEARNED_MINING
	setvar VAR_0x8004, MINING_POOL_VICTORY_ROAD
	setvar VAR_0x8005, MINING_LOCATION_VICTORY_ROAD
	specialvar VAR_RESULT, GetMiningFreeSessionsRemaining
	buffernumberstring STR_VAR_1, VAR_RESULT
	msgbox Text_Mining_FreeSessionsNotice, MSGBOX_DEFAULT
	goto EventScript_Mining_TrySession

VictoryRoad_1F_EventScript_MinerNPC_AlreadyKnows:
	setvar VAR_0x8005, MINING_LOCATION_VICTORY_ROAD
	setvar VAR_0x8004, MINING_POOL_VICTORY_ROAD
	specialvar VAR_RESULT, GetMiningFreeSessionsRemaining
	goto_if_eq VAR_RESULT, 0, VictoryRoad_1F_EventScript_MinerNPC_NoFreeSessions
	buffernumberstring STR_VAR_1, VAR_RESULT
	msgbox VictoryRoad_1F_Text_MinerNPC_Prompt, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, EventScript_Mining_CancelSession
	goto EventScript_Mining_TrySession

VictoryRoad_1F_EventScript_MinerNPC_NoFreeSessions:
	msgbox VictoryRoad_1F_Text_MinerNPC_Description, MSGBOX_DEFAULT
	goto EventScript_Mining_TrySession

VictoryRoad_1F_EventScript_MinerNPC_Start:
	setvar VAR_0x8004, MINING_POOL_VICTORY_ROAD
	goto EventScript_Mining_TrySession

VictoryRoad_1F_Text_MinerNPC_Prompt:
	.string "This location is rich in minerals\n"
	.string "that help boost certain moves and\n"
	.string "abilities.\p"
	.string "You have {STR_VAR_1} free mining\n"
	.string "session(s) left here today.\p"
	.string "Would you like to try mining?$"

VictoryRoad_1F_Text_MinerNPC_Description:
	.string "This location is rich in minerals\n"
	.string "that help boost certain moves and\n"
	.string "abilities.$"

Mossdeepcave_EventScript_MinerNPC::
	lock
	faceplayer
	goto_if_set FLAG_LEARNED_MINING, Mossdeepcave_EventScript_MinerNPC_AlreadyKnows
	msgbox JaggedPass_Text_MinerNPC_Teach
	closemessage
	setflag FLAG_LEARNED_MINING
	setvar VAR_0x8004, MINING_POOL_MOSSDEEP_CAVE
	setvar VAR_0x8005, MINING_LOCATION_MOSSDEEP_CAVE
	specialvar VAR_RESULT, GetMiningFreeSessionsRemaining
	buffernumberstring STR_VAR_1, VAR_RESULT
	msgbox Text_Mining_FreeSessionsNotice, MSGBOX_DEFAULT
	goto EventScript_Mining_TrySession

Mossdeepcave_EventScript_MinerNPC_AlreadyKnows:
	setvar VAR_0x8005, MINING_LOCATION_MOSSDEEP_CAVE
	setvar VAR_0x8004, MINING_POOL_MOSSDEEP_CAVE
	specialvar VAR_RESULT, GetMiningFreeSessionsRemaining
	goto_if_eq VAR_RESULT, 0, Mossdeepcave_EventScript_MinerNPC_NoFreeSessions
	buffernumberstring STR_VAR_1, VAR_RESULT
	msgbox Mossdeepcave_Text_MinerNPC_Prompt, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, EventScript_Mining_CancelSession
	goto EventScript_Mining_TrySession

Mossdeepcave_EventScript_MinerNPC_NoFreeSessions:
	msgbox Mossdeepcave_Text_MinerNPC_Description, MSGBOX_DEFAULT
	goto EventScript_Mining_TrySession

Mossdeepcave_EventScript_MinerNPC_Start:
	setvar VAR_0x8004, MINING_POOL_MOSSDEEP_CAVE
	goto EventScript_Mining_TrySession

Mossdeepcave_Text_MinerNPC_Prompt:
	.string "Rare treasures fill this cave.\n"
	.string "Some are valuable; others help\n"
	.string "POKéMON in battle or evolution.\p"
	.string "You have {STR_VAR_1} free mining\n"
	.string "session(s) left here today.\p"
	.string "Would you like to try mining?$"

Mossdeepcave_Text_MinerNPC_Description:
	.string "Rare treasures fill this cave.\n"
	.string "Some are valuable; others help\n"
	.string "POKéMON in battle or evolution.$"

MagmaHideout_EventScript_MinerNPC::
	lock
	faceplayer
	goto_if_set FLAG_LEARNED_MINING, MagmaHideout_EventScript_MinerNPC_AlreadyKnows
	msgbox JaggedPass_Text_MinerNPC_Teach
	closemessage
	setflag FLAG_LEARNED_MINING
	setvar VAR_0x8004, MINING_POOL_JAGGED_PASS
	setvar VAR_0x8005, MINING_LOCATION_JAGGED_PASS
	specialvar VAR_RESULT, GetMiningFreeSessionsRemaining
	buffernumberstring STR_VAR_1, VAR_RESULT
	msgbox Text_Mining_FreeSessionsNotice, MSGBOX_DEFAULT
	goto EventScript_Mining_TrySession

MagmaHideout_EventScript_MinerNPC_AlreadyKnows:
	setvar VAR_0x8005, MINING_LOCATION_JAGGED_PASS
	setvar VAR_0x8004, MINING_POOL_JAGGED_PASS
	specialvar VAR_RESULT, GetMiningFreeSessionsRemaining
	goto_if_eq VAR_RESULT, MagmaHideout_EventScript_MinerNPC_NoFreeSessions
	buffernumberstring STR_VAR_1, VAR_RESULT
	msgbox MagmaHideout_Text_MinerNPC_Prompt, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, EventScript_Mining_CancelSession
	goto EventScript_Mining_TrySession

MagmaHideout_EventScript_MinerNPC_NoFreeSessions:
	msgbox MagmaHideout_Text_MinerNPC_Description, MSGBOX_DEFAULT
	goto EventScript_Mining_TrySession

MagmaHideout_EventScript_MinerNPC_Start:
	setvar VAR_0x8004, MINING_POOL_JAGGED_PASS
	goto EventScript_Mining_TrySession

MagmaHideout_Text_MinerNPC_Prompt:
	.string "These tunnels contain a little bit\n"
	.string "of everything.\p"
	.string "You have {STR_VAR_1} free mining\n"
	.string "session(s) left here today.\p"
	.string "Would you like to try mining?$"

MagmaHideout_Text_MinerNPC_Description:
	.string "These tunnels contain a little bit\n"
	.string "of everything.$"
