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
	fadescreen FADE_TO_BLACK
	special StartMining
	end

EventScript_DailyMiningCancel::
	releaseall
	end

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
