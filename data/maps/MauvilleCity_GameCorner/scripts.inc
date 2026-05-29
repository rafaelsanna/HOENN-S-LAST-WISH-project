MauvilleCity_GameCorner_MapScripts::
	.byte 0

    @ Game Corner prices
	.set TM_DOUBLE_TEAM_COINS, 1500
	.set TM_PSYCHIC_COINS, 3500
	.set TM_FLAMETHROWER_COINS, 4000
	.set TM_THUNDERBOLT_COINS, 4000
	.set TM_ICE_BEAM_COINS, 4000
	.set DOLL_COINS, 1000
	.set MINT_COINS, 1000
	.set ABILITY_PATCH_COINS, 6000
	.set ABILITY_CAPSULE_COINS, 3000
	.set TRAINING_ITEM_COINS, 400
	.set EVOLUTION_ITEM_COINS, 1000
	.set VENDING_GUMMY_WURMPLES_PRICE, 450
	.set VENDING_SKITTIES_PRICE, 500
	.set VENDING_NUMEL_NOUGAT_PRICE, 550
	.set PRIZE_MENU_TMS, 1
	.set PRIZE_MENU_MINTS, 2
	.set PRIZE_MENU_TRAINING, 3
	.set PRIZE_MENU_EVOLUTION, 4

	.set COINS_PRICE_50,  1000
	.set COINS_PRICE_500, 10000
	.set COINS_PRICE_1000, 20000
	.set COINS_PRICE_5000, 100000
	.set SLOT_MACHINE_HIGH_STAKES_OFFSET, 6
	.set PINBALL_MEOWTH_COINS, 25
	.set PINBALL_DIGLETT_COINS, 50
	.set PINBALL_SEEL_COINS, 25
	.set PINBALL_GENGAR_COINS, 100
	.set FLAPPY_BIRD_COINS, 25
	.set SNAKE_COINS, 25
	.set BLOCK_STACKER_COINS, 25
	.set PACHINKO_COINS, 3
	.set VOLTORB_FLIP_COINS, 50
	.set DERBY_MIN_BET_COINS, 10
	.set GAME_CORNER_VAR_START_COINS, VAR_0x8008
	.set GAME_CORNER_VAR_CURRENT_COINS, VAR_0x8009
	.set GAME_CORNER_VAR_COIN_DELTA, VAR_0x800A

MauvilleCity_GameCorner_EventScript_CoinsClerk::
	lock
	msgbox MauvilleCity_GameCorner_Text_CoinExchangeATM, MSGBOX_DEFAULT
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NeedCoinCase
	message MauvilleCity_GameCorner_Text_SelectATMTransaction
	waitmessage
	showmoneybox 0, 0
	showcoinsbox 1, 6
	goto MauvilleCity_GameCorner_EventScript_ChooseATMTransaction

MauvilleCity_GameCorner_EventScript_ChooseATMTransaction::
	multichoicedefault 15, 0, MULTI_GAME_CORNER_ATM, 0, FALSE
	switch VAR_RESULT
	case 0, MauvilleCity_GameCorner_EventScript_ChooseCoinsDefault50
	case 1, MauvilleCity_GameCorner_EventScript_ChooseCashOutDefault50
	goto MauvilleCity_GameCorner_EventScript_CancelBuyCoins
	end

MauvilleCity_GameCorner_EventScript_ChooseCoinsDefault50::
	message MauvilleCity_GameCorner_Text_SelectCoinsToPurchase
	waitmessage
	multichoicedefault 15, 0, MULTI_GAME_CORNER_COINS, 0, FALSE
	switch VAR_RESULT
	case 0, MauvilleCity_GameCorner_EventScript_Buy50Coins
	case 1, MauvilleCity_GameCorner_EventScript_Buy500Coins
	case 2, MauvilleCity_GameCorner_EventScript_Buy1000Coins
	case 3, MauvilleCity_GameCorner_EventScript_Buy5000Coins
	goto MauvilleCity_GameCorner_EventScript_CancelBuyCoins
	end

@ Unused
MauvilleCity_GameCorner_EventScript_ChooseCoinsDefault500::
	message MauvilleCity_GameCorner_Text_SelectCoinsToPurchase
	waitmessage
	multichoicedefault 15, 0, MULTI_GAME_CORNER_COINS, 1, FALSE
	switch VAR_RESULT
	case 0, MauvilleCity_GameCorner_EventScript_Buy50Coins
	case 1, MauvilleCity_GameCorner_EventScript_Buy500Coins
	case 2, MauvilleCity_GameCorner_EventScript_Buy1000Coins
	case 3, MauvilleCity_GameCorner_EventScript_Buy5000Coins
	goto MauvilleCity_GameCorner_EventScript_CancelBuyCoins
	end

MauvilleCity_GameCorner_EventScript_ChooseCashOutDefault50::
	message MauvilleCity_GameCorner_Text_SelectCoinsToCashOut
	waitmessage
	multichoicedefault 15, 0, MULTI_GAME_CORNER_CASH_OUT, 0, FALSE
	switch VAR_RESULT
	case 0, MauvilleCity_GameCorner_EventScript_CashOut50Coins
	case 1, MauvilleCity_GameCorner_EventScript_CashOut500Coins
	case 2, MauvilleCity_GameCorner_EventScript_CashOut1000Coins
	case 3, MauvilleCity_GameCorner_EventScript_CashOut5000Coins
	goto MauvilleCity_GameCorner_EventScript_CancelBuyCoins
	end

MauvilleCity_GameCorner_EventScript_Buy50Coins::
	checkcoins VAR_TEMP_1
	goto_if_ge VAR_TEMP_1, (MAX_COINS + 1 - 50), MauvilleCity_GameCorner_EventScript_NoRoomForCoins
	checkmoney COINS_PRICE_50
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NotEnoughMoney
	addcoins 50
	removemoney COINS_PRICE_50
	updatemoneybox
	updatecoinsbox 1, 6
	playse SE_SHOP
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedCoins, MSGBOX_DEFAULT
	hidemoneybox
	hidecoinsbox 0, 5
	release
	end

MauvilleCity_GameCorner_EventScript_Buy500Coins::
	checkcoins VAR_TEMP_1
	goto_if_ge VAR_TEMP_1, (MAX_COINS + 1 - 500), MauvilleCity_GameCorner_EventScript_NoRoomForCoins
	checkmoney COINS_PRICE_500
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NotEnoughMoney
	addcoins 500
	removemoney COINS_PRICE_500
	updatemoneybox
	updatecoinsbox 1, 6
	playse SE_SHOP
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedCoins, MSGBOX_DEFAULT
	hidemoneybox
	hidecoinsbox 0, 5
	release
	end

MauvilleCity_GameCorner_EventScript_Buy1000Coins::
	checkcoins VAR_TEMP_1
	goto_if_ge VAR_TEMP_1, (MAX_COINS + 1 - 1000), MauvilleCity_GameCorner_EventScript_NoRoomForCoins
	checkmoney COINS_PRICE_1000
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NotEnoughMoney
	addcoins 1000
	removemoney COINS_PRICE_1000
	updatemoneybox
	updatecoinsbox 1, 6
	playse SE_SHOP
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedCoins, MSGBOX_DEFAULT
	hidemoneybox
	hidecoinsbox 0, 5
	release
	end

MauvilleCity_GameCorner_EventScript_Buy5000Coins::
	checkcoins VAR_TEMP_1
	goto_if_ge VAR_TEMP_1, (MAX_COINS + 1 - 5000), MauvilleCity_GameCorner_EventScript_NoRoomForCoins
	checkmoney COINS_PRICE_5000
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NotEnoughMoney
	addcoins 5000
	removemoney COINS_PRICE_5000
	updatemoneybox
	updatecoinsbox 1, 6
	playse SE_SHOP
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedCoins, MSGBOX_DEFAULT
	hidemoneybox
	hidecoinsbox 0, 5
	release
	end

MauvilleCity_GameCorner_EventScript_CashOut50Coins::
	checkcoins VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, 50, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsToCashOut
	removecoins 50
	addmoney COINS_PRICE_50, 0
	updatemoneybox
	updatecoinsbox 1, 6
	playse SE_SHOP
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedMoney, MSGBOX_DEFAULT
	hidemoneybox
	hidecoinsbox 0, 5
	release
	end

MauvilleCity_GameCorner_EventScript_CashOut500Coins::
	checkcoins VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, 500, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsToCashOut
	removecoins 500
	addmoney COINS_PRICE_500, 0
	updatemoneybox
	updatecoinsbox 1, 6
	playse SE_SHOP
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedMoney, MSGBOX_DEFAULT
	hidemoneybox
	hidecoinsbox 0, 5
	release
	end

MauvilleCity_GameCorner_EventScript_CashOut1000Coins::
	checkcoins VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, 1000, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsToCashOut
	removecoins 1000
	addmoney COINS_PRICE_1000, 0
	updatemoneybox
	updatecoinsbox 1, 6
	playse SE_SHOP
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedMoney, MSGBOX_DEFAULT
	hidemoneybox
	hidecoinsbox 0, 5
	release
	end

MauvilleCity_GameCorner_EventScript_CashOut5000Coins::
	checkcoins VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, 5000, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsToCashOut
	removecoins 5000
	addmoney COINS_PRICE_5000, 0
	updatemoneybox
	updatecoinsbox 1, 6
	playse SE_SHOP
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedMoney, MSGBOX_DEFAULT
	hidemoneybox
	hidecoinsbox 0, 5
	release
	end

MauvilleCity_GameCorner_EventScript_NeedCoinCase::
	msgbox MauvilleCity_GameCorner_Text_NeedCoinCaseForCoins, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_NotEnoughMoney::
	msgbox MauvilleCity_GameCorner_Text_DontHaveEnoughMoney, MSGBOX_DEFAULT
	hidemoneybox
	hidecoinsbox 0, 5
	release
	end

MauvilleCity_GameCorner_EventScript_CancelBuyCoins::
	msgbox MauvilleCity_GameCorner_Text_DontNeedCoinsThen, MSGBOX_DEFAULT
	hidemoneybox
	hidecoinsbox 0, 5
	release
	end

MauvilleCity_GameCorner_EventScript_NoRoomForCoins::
	msgbox MauvilleCity_GameCorner_Text_CoinCaseIsFull, MSGBOX_DEFAULT
	hidemoneybox
	hidecoinsbox 0, 5
	release
	end

MauvilleCity_GameCorner_EventScript_NotEnoughCoinsToCashOut::
	msgbox MauvilleCity_GameCorner_Text_NotEnoughCoinsToCashOut, MSGBOX_DEFAULT
	hidemoneybox
	hidecoinsbox 0, 5
	release
	end

MauvilleCity_GameCorner_EventScript_PrizeCornerMints::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_ExchangeCoinsForPrizes, MSGBOX_DEFAULT
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_GameCorner_EventScript_OpenMintPrizeMenu
	release
	end

MauvilleCity_GameCorner_EventScript_PrizeCornerTraining::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_ExchangeCoinsForPrizes, MSGBOX_DEFAULT
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_GameCorner_EventScript_OpenTrainingPrizeMenu
	release
	end

MauvilleCity_GameCorner_EventScript_PrizeCornerEvolution::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_ExchangeCoinsForPrizes, MSGBOX_DEFAULT
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_GameCorner_EventScript_OpenEvolutionPrizeMenu
	release
	end

MauvilleCity_GameCorner_EventScript_PrizeCornerTMs::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_ExchangeCoinsForPrizes, MSGBOX_DEFAULT
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_GameCorner_EventScript_OpenTMPrizeMenu
	release
	end

MauvilleCity_GameCorner_EventScript_OpenTMPrizeMenu::
	message MauvilleCity_GameCorner_Text_WhichPrize
	waitmessage
	showcoinsbox 1, 1
	setvar VAR_TEMP_6, PRIZE_MENU_TMS
	setvar VAR_0x8004, SCROLL_MULTI_GAME_CORNER_TMS
	special ShowScrollableMultichoice
	waitstate
	switch VAR_RESULT
	case 0, MauvilleCity_GameCorner_EventScript_TMDoubleTeam
	case 1, MauvilleCity_GameCorner_EventScript_TMPsychic
	case 2, MauvilleCity_GameCorner_EventScript_TMFlamethrower
	case 3, MauvilleCity_GameCorner_EventScript_TMThunderbolt
	case 4, MauvilleCity_GameCorner_EventScript_TMIceBeam
	case 5, MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
	goto MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
	end

MauvilleCity_GameCorner_EventScript_TMDoubleTeam::
	setvar VAR_0x8004, ITEM_TM_DOUBLE_TEAM
	setvar VAR_0x8005, TM_DOUBLE_TEAM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_TMPsychic::
	setvar VAR_0x8004, ITEM_TM_PSYCHIC
	setvar VAR_0x8005, TM_PSYCHIC_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_TMFlamethrower::
	setvar VAR_0x8004, ITEM_TM_FLAMETHROWER
	setvar VAR_0x8005, TM_FLAMETHROWER_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_TMThunderbolt::
	setvar VAR_0x8004, ITEM_TM_THUNDERBOLT
	setvar VAR_0x8005, TM_THUNDERBOLT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_TMIceBeam::
	setvar VAR_0x8004, ITEM_TM_ICE_BEAM
	setvar VAR_0x8005, TM_ICE_BEAM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_OpenMintPrizeMenu::
	message MauvilleCity_GameCorner_Text_WhichPrize
	waitmessage
	showcoinsbox 1, 1
	setvar VAR_TEMP_6, PRIZE_MENU_MINTS
	setvar VAR_0x8004, SCROLL_MULTI_GAME_CORNER_MINTS
	special ShowScrollableMultichoice
	waitstate
	switch VAR_RESULT
	case 0, MauvilleCity_GameCorner_EventScript_PrizeLonelyMint
	case 1, MauvilleCity_GameCorner_EventScript_PrizeAdamantMint
	case 2, MauvilleCity_GameCorner_EventScript_PrizeNaughtyMint
	case 3, MauvilleCity_GameCorner_EventScript_PrizeBraveMint
	case 4, MauvilleCity_GameCorner_EventScript_PrizeBoldMint
	case 5, MauvilleCity_GameCorner_EventScript_PrizeImpishMint
	case 6, MauvilleCity_GameCorner_EventScript_PrizeLaxMint
	case 7, MauvilleCity_GameCorner_EventScript_PrizeRelaxedMint
	case 8, MauvilleCity_GameCorner_EventScript_PrizeModestMint
	case 9, MauvilleCity_GameCorner_EventScript_PrizeMildMint
	case 10, MauvilleCity_GameCorner_EventScript_PrizeRashMint
	case 11, MauvilleCity_GameCorner_EventScript_PrizeQuietMint
	case 12, MauvilleCity_GameCorner_EventScript_PrizeCalmMint
	case 13, MauvilleCity_GameCorner_EventScript_PrizeGentleMint
	case 14, MauvilleCity_GameCorner_EventScript_PrizeCarefulMint
	case 15, MauvilleCity_GameCorner_EventScript_PrizeSassyMint
	case 16, MauvilleCity_GameCorner_EventScript_PrizeTimidMint
	case 17, MauvilleCity_GameCorner_EventScript_PrizeHastyMint
	case 18, MauvilleCity_GameCorner_EventScript_PrizeJollyMint
	case 19, MauvilleCity_GameCorner_EventScript_PrizeNaiveMint
	case 20, MauvilleCity_GameCorner_EventScript_PrizeSeriousMint
	case 21, MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
	goto MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
	end

MauvilleCity_GameCorner_EventScript_OpenTrainingPrizeMenu::
	message MauvilleCity_GameCorner_Text_WhichPrize
	waitmessage
	showcoinsbox 1, 1
	setvar VAR_TEMP_6, PRIZE_MENU_TRAINING
	setvar VAR_0x8004, SCROLL_MULTI_GAME_CORNER_TRAINING
	special ShowScrollableMultichoice
	waitstate
	switch VAR_RESULT
	case 0, MauvilleCity_GameCorner_EventScript_PrizeAbilityPatch
	case 1, MauvilleCity_GameCorner_EventScript_PrizeAbilityCapsule
	case 2, MauvilleCity_GameCorner_EventScript_PrizeHpUp
	case 3, MauvilleCity_GameCorner_EventScript_PrizeProtein
	case 4, MauvilleCity_GameCorner_EventScript_PrizeIron
	case 5, MauvilleCity_GameCorner_EventScript_PrizeCalcium
	case 6, MauvilleCity_GameCorner_EventScript_PrizeZinc
	case 7, MauvilleCity_GameCorner_EventScript_PrizeCarbos
	case 8, MauvilleCity_GameCorner_EventScript_PrizePpUp
	case 9, MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
	goto MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
	end

MauvilleCity_GameCorner_EventScript_OpenEvolutionPrizeMenu::
	message MauvilleCity_GameCorner_Text_WhichPrize
	waitmessage
	showcoinsbox 1, 1
	setvar VAR_TEMP_6, PRIZE_MENU_EVOLUTION
	setvar VAR_0x8004, SCROLL_MULTI_GAME_CORNER_EVOLUTION
	special ShowScrollableMultichoice
	waitstate
	switch VAR_RESULT
	case 0, MauvilleCity_GameCorner_EventScript_PrizeDawnStone
	case 1, MauvilleCity_GameCorner_EventScript_PrizeDuskStone
	case 2, MauvilleCity_GameCorner_EventScript_PrizeIceStone
	case 3, MauvilleCity_GameCorner_EventScript_PrizeLinkingCord
	case 4, MauvilleCity_GameCorner_EventScript_PrizePrismScale
	case 5, MauvilleCity_GameCorner_EventScript_PrizeProtector
	case 6, MauvilleCity_GameCorner_EventScript_PrizeReaperCloth
	case 7, MauvilleCity_GameCorner_EventScript_PrizePeatBlock
	case 8, MauvilleCity_GameCorner_EventScript_PrizeShinyStone
	case 9, MauvilleCity_GameCorner_EventScript_PrizeBlackAugurite
	case 10, MauvilleCity_GameCorner_EventScript_PrizeLoadedDice
	case 11, MauvilleCity_GameCorner_EventScript_PrizeAmuletCoin
	case 12, MauvilleCity_GameCorner_EventScript_PrizeRazorClaw
	case 13, MauvilleCity_GameCorner_EventScript_PrizeRazorFang
	case 14, MauvilleCity_GameCorner_EventScript_PrizeDestinyKnot
	case 15, MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
	goto MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
	end

MauvilleCity_GameCorner_EventScript_PrizeLonelyMint::
	setvar VAR_0x8004, ITEM_LONELY_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeAdamantMint::
	setvar VAR_0x8004, ITEM_ADAMANT_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeNaughtyMint::
	setvar VAR_0x8004, ITEM_NAUGHTY_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeBraveMint::
	setvar VAR_0x8004, ITEM_BRAVE_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeBoldMint::
	setvar VAR_0x8004, ITEM_BOLD_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeImpishMint::
	setvar VAR_0x8004, ITEM_IMPISH_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeLaxMint::
	setvar VAR_0x8004, ITEM_LAX_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeRelaxedMint::
	setvar VAR_0x8004, ITEM_RELAXED_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeModestMint::
	setvar VAR_0x8004, ITEM_MODEST_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeMildMint::
	setvar VAR_0x8004, ITEM_MILD_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeRashMint::
	setvar VAR_0x8004, ITEM_RASH_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeQuietMint::
	setvar VAR_0x8004, ITEM_QUIET_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeCalmMint::
	setvar VAR_0x8004, ITEM_CALM_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeGentleMint::
	setvar VAR_0x8004, ITEM_GENTLE_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeCarefulMint::
	setvar VAR_0x8004, ITEM_CAREFUL_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeSassyMint::
	setvar VAR_0x8004, ITEM_SASSY_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeTimidMint::
	setvar VAR_0x8004, ITEM_TIMID_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeHastyMint::
	setvar VAR_0x8004, ITEM_HASTY_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeJollyMint::
	setvar VAR_0x8004, ITEM_JOLLY_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeNaiveMint::
	setvar VAR_0x8004, ITEM_NAIVE_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeSeriousMint::
	setvar VAR_0x8004, ITEM_SERIOUS_MINT
	setvar VAR_0x8005, MINT_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeAbilityPatch::
	setvar VAR_0x8004, ITEM_ABILITY_PATCH
	setvar VAR_0x8005, ABILITY_PATCH_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeAbilityCapsule::
	setvar VAR_0x8004, ITEM_ABILITY_CAPSULE
	setvar VAR_0x8005, ABILITY_CAPSULE_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeHpUp::
	setvar VAR_0x8004, ITEM_HP_UP
	setvar VAR_0x8005, TRAINING_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeProtein::
	setvar VAR_0x8004, ITEM_PROTEIN
	setvar VAR_0x8005, TRAINING_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeIron::
	setvar VAR_0x8004, ITEM_IRON
	setvar VAR_0x8005, TRAINING_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeCalcium::
	setvar VAR_0x8004, ITEM_CALCIUM
	setvar VAR_0x8005, TRAINING_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeZinc::
	setvar VAR_0x8004, ITEM_ZINC
	setvar VAR_0x8005, TRAINING_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeCarbos::
	setvar VAR_0x8004, ITEM_CARBOS
	setvar VAR_0x8005, TRAINING_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizePpUp::
	setvar VAR_0x8004, ITEM_PP_UP
	setvar VAR_0x8005, TRAINING_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeDawnStone::
	setvar VAR_0x8004, ITEM_DAWN_STONE
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeDuskStone::
	setvar VAR_0x8004, ITEM_DUSK_STONE
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeIceStone::
	setvar VAR_0x8004, ITEM_ICE_STONE
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeLinkingCord::
	setvar VAR_0x8004, ITEM_LINKING_CORD
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizePrismScale::
	setvar VAR_0x8004, ITEM_PRISM_SCALE
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeProtector::
	setvar VAR_0x8004, ITEM_PROTECTOR
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeReaperCloth::
	setvar VAR_0x8004, ITEM_REAPER_CLOTH
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizePeatBlock::
	setvar VAR_0x8004, ITEM_PEAT_BLOCK
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeShinyStone::
	setvar VAR_0x8004, ITEM_SHINY_STONE
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeBlackAugurite::
	setvar VAR_0x8004, ITEM_BLACK_AUGURITE
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeLoadedDice::
	setvar VAR_0x8004, ITEM_LOADED_DICE
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeAmuletCoin::
	setvar VAR_0x8004, ITEM_AMULET_COIN
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeRazorClaw::
	setvar VAR_0x8004, ITEM_RAZOR_CLAW
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeRazorFang::
	setvar VAR_0x8004, ITEM_RAZOR_FANG
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_PrizeDestinyKnot::
	setvar VAR_0x8004, ITEM_DESTINY_KNOT
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem

MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem::
	bufferitemname STR_VAR_1, VAR_0x8004
	buffernumberstring STR_VAR_2, VAR_0x8005
	msgbox MauvilleCity_GameCorner_Text_PrizeChoiceCost, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_ReturnToCurrentPrizePage
	checkcoins VAR_TEMP_2
	compare VAR_TEMP_2, VAR_0x8005
	goto_if_lt MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForPrize
	checkitemspace VAR_0x8004, 1
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoRoomForPrize
	removecoins VAR_0x8005
	additem VAR_0x8004, 1
	updatecoinsbox 1, 1
	playse SE_SHOP
	msgbox MauvilleCity_GameCorner_Text_HereYouGo, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_ReturnToCurrentPrizePage
	end

MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForPrize::
	msgbox MauvilleCity_GameCorner_Text_NotEnoughCoins, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_ReturnToCurrentPrizePage
	end

MauvilleCity_GameCorner_EventScript_NoRoomForPrize::
	call Common_EventScript_BagIsFull
	goto MauvilleCity_GameCorner_EventScript_ReturnToCurrentPrizePage
	end

MauvilleCity_GameCorner_EventScript_ReturnToCurrentPrizePage::
	switch VAR_TEMP_6
	case PRIZE_MENU_TMS, MauvilleCity_GameCorner_EventScript_OpenTMPrizeMenu
	case PRIZE_MENU_MINTS, MauvilleCity_GameCorner_EventScript_OpenMintPrizeMenu
	case PRIZE_MENU_TRAINING, MauvilleCity_GameCorner_EventScript_OpenTrainingPrizeMenu
	case PRIZE_MENU_EVOLUTION, MauvilleCity_GameCorner_EventScript_OpenEvolutionPrizeMenu
	goto MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
	end

MauvilleCity_GameCorner_EventScript_CancelPrizeSelect::
	msgbox MauvilleCity_GameCorner_Text_OhIsThatSo, MSGBOX_DEFAULT
	hidecoinsbox 0, 0
	release
	end

MauvilleCity_GameCorner_EventScript_Woman2::
	msgbox MauvilleCity_GameCorner_Text_CoinsAreNeededToPlay, MSGBOX_NPC
	end

MauvilleCity_GameCorner_EventScript_InfoClerk::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_WelcomeToGameCorner, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_AskGameCornerInfo
	end

MauvilleCity_GameCorner_EventScript_AskGameCornerInfo::
	message MauvilleCity_GameCorner_Text_WhatWouldYouLikeToKnow
	waitmessage
	multichoicedefault 16, 1, MULTI_GAME_CORNER_INFO, 0, FALSE
	switch VAR_RESULT
	case 0, MauvilleCity_GameCorner_EventScript_ExplainPrizes
	case 1, MauvilleCity_GameCorner_EventScript_ExplainCoinExchange
	case 2, MauvilleCity_GameCorner_EventScript_ExplainGames
	case 3, MauvilleCity_GameCorner_EventScript_ExplainLottery
	goto MauvilleCity_GameCorner_EventScript_EndInfo
	end

MauvilleCity_GameCorner_EventScript_ExplainPrizes::
	msgbox MauvilleCity_GameCorner_Text_InfoPrizes, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_AskGameCornerInfo
	end

MauvilleCity_GameCorner_EventScript_ExplainCoinExchange::
	msgbox MauvilleCity_GameCorner_Text_InfoCoinExchange, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_AskGameCornerInfo
	end

MauvilleCity_GameCorner_EventScript_ExplainGames::
	msgbox MauvilleCity_GameCorner_Text_InfoGames, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_AskGameCornerInfo
	end

MauvilleCity_GameCorner_EventScript_ExplainLottery::
	msgbox MauvilleCity_GameCorner_Text_InfoLottery, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_AskGameCornerInfo
	end

MauvilleCity_GameCorner_EventScript_EndInfo::
	msgbox MauvilleCity_GameCorner_Text_ComeAgainForInfo, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_Gentleman::
	msgbox MauvilleCity_GameCorner_Text_RouletteOnlyLuck, MSGBOX_NPC
	end

MauvilleCity_GameCorner_EventScript_Girl::
	lock
	faceplayer
	goto_if_set FLAG_RECEIVED_STARTER_DOLL, MauvilleCity_GameCorner_EventScript_ReceivedStarterDoll
	msgbox MauvilleCity_GameCorner_Text_GotTwoOfSameDollWantOne, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_DeclineStarterDoll
	switch VAR_STARTER_MON
	case 0, MauvilleCity_GameCorner_EventScript_GiveTreeckoDoll
	case 1, MauvilleCity_GameCorner_EventScript_GiveTorchicDoll
	case 2, MauvilleCity_GameCorner_EventScript_GiveMudkipDoll
	end

MauvilleCity_GameCorner_EventScript_GiveTreeckoDoll::
	bufferdecorationname STR_VAR_2, DECOR_TREECKO_DOLL
	checkdecorspace DECOR_TREECKO_DOLL
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoRoomForStarterDoll
	msgbox MauvilleCity_GameCorner_Text_HereYouGo2, MSGBOX_DEFAULT
	givedecoration DECOR_TREECKO_DOLL
	setflag FLAG_RECEIVED_STARTER_DOLL
	goto MauvilleCity_GameCorner_EventScript_ReceivedStarterDoll
	end

MauvilleCity_GameCorner_EventScript_GiveTorchicDoll::
	bufferdecorationname STR_VAR_2, DECOR_TORCHIC_DOLL
	checkdecorspace DECOR_TORCHIC_DOLL
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoRoomForStarterDoll
	msgbox MauvilleCity_GameCorner_Text_HereYouGo2, MSGBOX_DEFAULT
	givedecoration DECOR_TORCHIC_DOLL
	setflag FLAG_RECEIVED_STARTER_DOLL
	goto MauvilleCity_GameCorner_EventScript_ReceivedStarterDoll
	end

MauvilleCity_GameCorner_EventScript_GiveMudkipDoll::
	bufferdecorationname STR_VAR_2, DECOR_MUDKIP_DOLL
	checkdecorspace DECOR_MUDKIP_DOLL
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoRoomForStarterDoll
	msgbox MauvilleCity_GameCorner_Text_HereYouGo2, MSGBOX_DEFAULT
	givedecoration DECOR_MUDKIP_DOLL
	setflag FLAG_RECEIVED_STARTER_DOLL
	goto MauvilleCity_GameCorner_EventScript_ReceivedStarterDoll
	end

MauvilleCity_GameCorner_EventScript_NoRoomForStarterDoll::
	call Common_EventScript_NoRoomForDecor
	msgbox MauvilleCity_GameCorner_Text_YouWantItButNotNow, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_DeclineStarterDoll::
	msgbox MauvilleCity_GameCorner_Text_DontBeNegative, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_ReceivedStarterDoll::
	msgbox MauvilleCity_GameCorner_Text_CantWinJackpot, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_PokefanM::
	lock
	faceplayer
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_GameCorner_EventScript_TryGive20Coins
	msgbox MauvilleCity_GameCorner_Text_NeedCoinCaseGoNextDoor, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
	end

MauvilleCity_GameCorner_EventScript_TryGive20Coins::
	goto_if_set FLAG_RECEIVED_20_COINS, MauvilleCity_GameCorner_EventScript_PokefanMNormal
	checkcoins VAR_TEMP_1
	goto_if_ge VAR_TEMP_1, 1, MauvilleCity_GameCorner_EventScript_PokefanMNormal @ Only give 20 coins if player has no coins
	setflag FLAG_RECEIVED_20_COINS
	addcoins 20
	msgbox MauvilleCity_GameCorner_Text_LuckOnlyLastSoLongTakeCoins, MSGBOX_DEFAULT
	playse SE_SHOP
	goto MauvilleCity_GameCorner_EventScript_PokefanMNormal
	end

MauvilleCity_GameCorner_EventScript_PokefanMNormal::
	msgbox MauvilleCity_GameCorner_Text_MauvilleSomethingForEveryone, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
	end

MauvilleCity_GameCorner_EventScript_OldMan::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_RouletteTablesDifferentRates, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
	end

MauvilleCity_GameCorner_EventScript_Cook::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_EasyToLoseTrackOfTime, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
	end

MauvilleCity_GameCorner_EventScript_Man::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_UpTo3CoinsCanBeUsed, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
	end

MauvilleCity_GameCorner_EventScript_NPCReturnToSlots::
	closemessage
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
	waitmovement 0
	release
	end

MauvilleCity_GameCorner_EventScript_Maniac::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_DifficultToStopOn7, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
	end

MauvilleCity_GameCorner_EventScript_Woman::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_HeresSomeSlotsInfo, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
	end

MauvilleCity_GameCorner_EventScript_SlotMachine0::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 0
	specialvar VAR_TEMP_1, GetSlotMachineId
	addvar VAR_TEMP_1, SLOT_MACHINE_HIGH_STAKES_OFFSET
	checkcoins VAR_TEMP_2
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager30, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
	playslotmachine VAR_TEMP_1
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine1::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 1
	specialvar VAR_TEMP_1, GetSlotMachineId
	checkcoins VAR_TEMP_2
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
	playslotmachine VAR_TEMP_1
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine2::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 2
	specialvar VAR_TEMP_1, GetSlotMachineId
	checkcoins VAR_TEMP_2
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
	playslotmachine VAR_TEMP_1
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine3::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 3
	specialvar VAR_TEMP_1, GetSlotMachineId
	addvar VAR_TEMP_1, SLOT_MACHINE_HIGH_STAKES_OFFSET
	checkcoins VAR_TEMP_2
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager30, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
	playslotmachine VAR_TEMP_1
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine4::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 4
	specialvar VAR_TEMP_1, GetSlotMachineId
	checkcoins VAR_TEMP_2
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
	playslotmachine VAR_TEMP_1
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine5::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 5
	specialvar VAR_TEMP_1, GetSlotMachineId
	checkcoins VAR_TEMP_2
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
	playslotmachine VAR_TEMP_1
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine6::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 6
	specialvar VAR_TEMP_1, GetSlotMachineId
	checkcoins VAR_TEMP_2
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
	playslotmachine VAR_TEMP_1
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine7::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 7
	specialvar VAR_TEMP_1, GetSlotMachineId
	checkcoins VAR_TEMP_2
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
	playslotmachine VAR_TEMP_1
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine8::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 8
	specialvar VAR_TEMP_1, GetSlotMachineId
	checkcoins VAR_TEMP_2
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
	playslotmachine VAR_TEMP_1
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine9::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 9
	specialvar VAR_TEMP_1, GetSlotMachineId
	checkcoins VAR_TEMP_2
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
	playslotmachine VAR_TEMP_1
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine10::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 10
	specialvar VAR_TEMP_1, GetSlotMachineId
	checkcoins VAR_TEMP_2
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
	playslotmachine VAR_TEMP_1
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_SlotMachine11::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	setvar VAR_0x8004, 11
	specialvar VAR_TEMP_1, GetSlotMachineId
	checkcoins VAR_TEMP_2
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
	playslotmachine VAR_TEMP_1
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_NoCoinCase::
	msgbox MauvilleCity_GameCorner_Text_CantPlayWithNoCoinCase, MSGBOX_DEFAULT
	releaseall
	end

MauvilleCity_GameCorner_EventScript_CancelSlotMachine::
	releaseall
	end

MauvilleCity_GameCorner_Text_ThisIsMauvilleGameCorner:
	.string "This is MAUVILLE GAME CORNER.$"

MauvilleCity_GameCorner_Text_CoinExchangeATM:
	.string "MAUVILLE GAME CORNER\n"
	.string "COIN EXCHANGE ATM.$"

MauvilleCity_GameCorner_Text_NeedCoinCaseForCoins:
	.string "COIN CASE not detected.\p"
	.string "Please obtain a COIN CASE before\n"
	.string "using this ATM.$"

MauvilleCity_GameCorner_Text_SelectATMTransaction:
	.string "Select a transaction.$"

MauvilleCity_GameCorner_Text_SelectCoinsToPurchase:
	.string "Select the amount of COINS\n"
	.string "to purchase.$"

MauvilleCity_GameCorner_Text_SelectCoinsToCashOut:
	.string "Select the amount of COINS\n"
	.string "to exchange for cash.$"

MauvilleCity_GameCorner_Text_ATMDispensedCoins:
	.string "Transaction complete.\n"
	.string "COINS dispensed.$"

MauvilleCity_GameCorner_Text_ATMDispensedMoney:
	.string "Transaction complete.\n"
	.string "Cash dispensed.$"

MauvilleCity_GameCorner_Text_DontHaveEnoughMoney:
	.string "Insufficient funds.\p"
	.string "Please insert more money and\n"
	.string "try again.$"

MauvilleCity_GameCorner_Text_CoinCaseIsFull:
	.string "COIN CASE capacity reached.\p"
	.string "Please use some COINS and\n"
	.string "try again.$"

MauvilleCity_GameCorner_Text_DontNeedCoinsThen:
	.string "Transaction canceled.$"

MauvilleCity_GameCorner_Text_NotEnoughCoinsToCashOut:
	.string "Insufficient COINS.\p"
	.string "You do not have enough COINS for\n"
	.string "that exchange.$"

MauvilleCity_GameCorner_Text_ExchangeCoinsForPrizes:
	.string "Welcome.\p"
	.string "You can exchange your COINS for\n"
	.string "prizes here.$"

MauvilleCity_GameCorner_Text_WhichPrize:
	.string "Which prize would you like?$"

MauvilleCity_GameCorner_Text_PrizeChoiceCost:
	.string "{STR_VAR_1} costs {STR_VAR_2}\n"
	.string "COINS. Is that okay?$"

MauvilleCity_GameCorner_Text_SoYourChoiceIsTheTMX:
	.string "So your choice is\n"
	.string "the {STR_VAR_1} {STR_VAR_2}?$"

MauvilleCity_GameCorner_Text_SendToYourHomePC:
	.string "Thank you!\n"
	.string "We'll send it to your PC at home.$"

MauvilleCity_GameCorner_Text_NotEnoughCoins:
	.string "You don't have enough COINS.$"

@ Unused
MauvilleCity_GameCorner_Text_NoRoomForPlacingDecor:
	.string "There isn't any room available for\n"
	.string "placing {STR_VAR_1}.$"

MauvilleCity_GameCorner_Text_OhIsThatSo:
	.string "Enjoy your time at the\n"
	.string "GAME CORNER!$"

MauvilleCity_GameCorner_Text_SoYourChoiceIsX:
	.string "So your choice is {STR_VAR_1}?$"

MauvilleCity_GameCorner_Text_HereYouGo:
	.string "Here you go!$"

@ Unused
MauvilleCity_GameCorner_Text_CantCarryAnyMore:
	.string "Oh, you can't carry any more than that.$"

MauvilleCity_GameCorner_Text_GotTwoOfSameDollWantOne:
	.string "I made a mistake and got two of\n"
	.string "the same DOLLS.\p"
	.string "Would you like one of them?$"

MauvilleCity_GameCorner_Text_HereYouGo2:
	.string "Here you go!$"

MauvilleCity_GameCorner_Text_YouWantItButNotNow:
	.string "Huh?\n"
	.string "You want it, but not right now?$"

MauvilleCity_GameCorner_Text_DontBeNegative:
	.string "Oh, don't be so negative!\n"
	.string "You can have this!$"

MauvilleCity_GameCorner_Text_CantWinJackpot:
	.string "There's a prize I want, but I can't win\n"
	.string "the jackpot.$"

MauvilleCity_GameCorner_Text_NeedCoinCaseGoNextDoor:
	.string "Hey, kid, if you want to play here,\n"
	.string "you need a COIN CASE.\p"
	.string "I think the young lady next door\n"
	.string "had one. Go see her!$"

MauvilleCity_GameCorner_Text_LuckOnlyLastSoLongTakeCoins:
	.string "My luck can only last so long.\n"
	.string "This is too much for me.\l"
	.string "Here, take some COINS!$"

MauvilleCity_GameCorner_Text_MauvilleSomethingForEveryone:
	.string "MAUVILLE has something for\n"
	.string "everyone.\p"
	.string "For me, it's the GAME CORNER.$"

MauvilleCity_GameCorner_Text_RouletteTablesDifferentRates:
	.string "The ROULETTE tables have different\n"
	.string "rates.\p"
	.string "Check your COINS if you're going to\n"
	.string "pick a table.$"

MauvilleCity_GameCorner_Text_EasyToLoseTrackOfTime:
	.string "Our food is top notch and dirt cheap!\p"
	.string "The casino makes so much money off\n"
	.string "gamblers, it's worth it to lure them\l"
	.string "in with great food.$"

MauvilleCity_GameCorner_Text_CoinsAreNeededToPlay:
	.string "COINS are needed to play here\n"
	.string "in the GAME CORNER.$"

MauvilleCity_GameCorner_Text_RouletteOnlyLuck:
	.string "This ROULETTE thing…\n"
	.string "It's rather demanding.\p"
	.string "Win or lose, it's only by luck.$"

MauvilleCity_GameCorner_Text_UpTo3CoinsCanBeUsed:
	.string "Up to three COINS can be used to play\n"
	.string "these SLOTS. If you want to bet more,\l"
	.string "you can try the red machines.\p"
	.string "Be careful, though. I've seen people\n"
	.string "lose everything to those.$"

MauvilleCity_GameCorner_Text_DifficultToStopOn7:
	.string "It's very difficult to make it stop\n"
	.string "right on “7.”\p"
	.string "If it stops on “7” during the REEL TIME\n"
	.string "bonus game, you'll receive extra COINS.$"

MauvilleCity_GameCorner_Text_HeresSomeSlotsInfo:
	.string "Here's some information for you\n"
	.string "about the SLOTS.\p"
	.string "The more lightning bolts you stock,\n"
	.string "the more REEL TIME chances you get.\p"
	.string "In a game with the maximum five\n"
	.string "REEL TIME chances…\p"
	.string "It is possible to receive four regular\n"
	.string "bonuses, then a big bonus.\p"
	.string "That would total 660 COINS, but it's\n"
	.string "very difficult to get.$"

MauvilleCity_GameCorner_Text_CantPlayWithNoCoinCase:
	.string "You can't play if you don't have\n"
	.string "a COIN CASE.$"

MauvilleCity_GameCorner_Text_SlotMinimumWager3:
	.string "The minimum wager at this machine\n"
	.string "is 1 COIN. Do you want to play?$"

MauvilleCity_GameCorner_Text_SlotMinimumWager30:
	.string "The minimum wager at this machine\n"
	.string "is 10 COINS. Do you want to play?$"

MauvilleCity_GameCorner_Text_WelcomeToGameCorner:
	.string "Welcome to the MAUVILLE\n"
	.string "GAME CORNER!$"

MauvilleCity_GameCorner_Text_WhatWouldYouLikeToKnow:
	.string "What would you like to know\n"
	.string "about?$"

MauvilleCity_GameCorner_Text_InfoPrizes:
	.string "You can exchange your COINS for\n"
	.string "prizes with the ladies behind the\l"
	.string "counter.\p"
	.string "They offer TMs, MINTS, training\n"
	.string "items, and evolution items.$"

MauvilleCity_GameCorner_Text_InfoCoinExchange:
	.string "If you need to exchange COINS or\n"
	.string "money, use the ATMs to the right\l"
	.string "of the entrance.$"

MauvilleCity_GameCorner_Text_InfoGames:
	.string "We offer high and low stakes SLOTS\n"
	.string "and ROULETTE, plus PINBALL,\p"
	.string "various arcade games, VOLTORB FLIP,\n"
	.string "BLACKJACK, and the DERBY.$"

MauvilleCity_GameCorner_Text_InfoLottery:
	.string "The three LOTTERY machines are\n"
	.string "behind the prize counter.\p"
	.string "BASIC, GREAT, and ULTRA machines\n"
	.string "have different wager tiers, and each\l"
	.string "one can award COMMON,UNCOMMON, RARE,\l"
	.string "or ULTRA-RARE POKeMON.\p"
	.string "Each machine has different POKeMON,\n"
	.string "and between the three machines,\l"
	.string "you can obtain every POKeMON in the\l"
	.string "region aside from mythical or\l"
	.string "legendary POKeMON.\p"
	.string "You can wager extra coins to increase\n"
	.string "your chance of winning a POKeMON you\l"
	.string "haven't seen before.$"

MauvilleCity_GameCorner_Text_ComeAgainForInfo:
	.string "Please enjoy your time at the\n"
	.string "GAME CORNER!$"

MauvilleCity_GameCorner_EventScript_PlaceholderNpc1::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_Placeholder1, MSGBOX_DEFAULT
	applymovement VAR_LAST_TALKED, MauvilleCity_GameCorner_Movement_PlaceholderFaceDown
	waitmovement 0
	release
	end

MauvilleCity_GameCorner_EventScript_PlaceholderNpc2::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_Placeholder2, MSGBOX_DEFAULT
	applymovement VAR_LAST_TALKED, MauvilleCity_GameCorner_Movement_PlaceholderFaceDown
	waitmovement 0
	release
	end

MauvilleCity_GameCorner_EventScript_PlaceholderNpc3::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_Placeholder3, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_PlaceholderNpc4::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_Placeholder4, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_PlaceholderNpc5::
	lock
	msgbox MauvilleCity_GameCorner_Text_Placeholder5, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_Movement_PlaceholderFaceDown:
	face_down
	step_end

MauvilleCity_GameCorner_EventScript_PlaceholderNpc6::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_Placeholder6, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_PlaceholderNpc7::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_Placeholder7, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_PlaceholderNpc8::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_Placeholder8, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_PlaceholderNpc9::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_Placeholder9, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_PlaceholderNpc10::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_Placeholder10, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_PlaceholderNpc11::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_Placeholder11, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_PlaceholderNpc12::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_Placeholder12, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_PlaceholderNpc13::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_Placeholder13, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_PlaceholderNpc14::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_Placeholder14, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_PlaceholderNpc15::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_Placeholder15, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_PlaceholderNpc16::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_Placeholder16, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_PlaceholderNpc17::
	lock
	faceplayer
	msgbox MauvilleCity_GameCorner_Text_Placeholder17, MSGBOX_DEFAULT
	release
	end

MauvilleCity_GameCorner_EventScript_PlaceholderSign1::
	msgbox MauvilleCity_GameCorner_Text_Placeholder18, MSGBOX_SIGN
	end

MauvilleCity_GameCorner_EventScript_VendingMachine::
	lockall
	message MauvilleCity_GameCorner_Text_WhichSnackWouldYouLike
	waitmessage
	showmoneybox 0, 0
	goto MauvilleCity_GameCorner_EventScript_ChooseSnack
	end

MauvilleCity_GameCorner_EventScript_DrinkVendingMachine::
	lockall
	message MauvilleCity_GameCorner_Text_WhichDrinkWouldYouLike
	waitmessage
	showmoneybox 0, 0
	goto MauvilleCity_GameCorner_EventScript_ChooseDrink
	end

MauvilleCity_GameCorner_EventScript_ChooseSnack::
	multichoice 15, 0, MULTI_GAME_CORNER_VENDING_MACHINE, FALSE
	copyvar VAR_TEMP_1, VAR_RESULT
	switch VAR_TEMP_1
	case 0, MauvilleCity_GameCorner_EventScript_BuyGummyWurmples
	case 1, MauvilleCity_GameCorner_EventScript_BuySkitties
	case 2, MauvilleCity_GameCorner_EventScript_BuyNumelNougat
	msgbox MauvilleCity_GameCorner_Text_DecidedAgainstSnack, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_ExitSnackMachine
	end

MauvilleCity_GameCorner_EventScript_BuySkitties::
	setvar VAR_TEMP_0, ITEM_SKITTIES
	goto MauvilleCity_GameCorner_EventScript_TryBuySnack
	end

MauvilleCity_GameCorner_EventScript_BuyGummyWurmples::
	setvar VAR_TEMP_0, ITEM_GUMMY_WURMPLES
	goto MauvilleCity_GameCorner_EventScript_TryBuySnack
	end

MauvilleCity_GameCorner_EventScript_BuyNumelNougat::
	setvar VAR_TEMP_0, ITEM_NUMEL_NOUGAT
	goto MauvilleCity_GameCorner_EventScript_TryBuySnack
	end

MauvilleCity_GameCorner_EventScript_CheckMoneyGummyWurmples::
	checkmoney VENDING_GUMMY_WURMPLES_PRICE
	return

MauvilleCity_GameCorner_EventScript_CheckMoneySkitties::
	checkmoney VENDING_SKITTIES_PRICE
	return

MauvilleCity_GameCorner_EventScript_CheckMoneyNumelNougat::
	checkmoney VENDING_NUMEL_NOUGAT_PRICE
	return

MauvilleCity_GameCorner_EventScript_RemoveMoneyGummyWurmples::
	removemoney VENDING_GUMMY_WURMPLES_PRICE
	return

MauvilleCity_GameCorner_EventScript_RemoveMoneySkitties::
	removemoney VENDING_SKITTIES_PRICE
	return

MauvilleCity_GameCorner_EventScript_RemoveMoneyNumelNougat::
	removemoney VENDING_NUMEL_NOUGAT_PRICE
	return

MauvilleCity_GameCorner_EventScript_TryBuySnack::
	call_if_eq VAR_TEMP_1, 0, MauvilleCity_GameCorner_EventScript_CheckMoneyGummyWurmples
	call_if_eq VAR_TEMP_1, 1, MauvilleCity_GameCorner_EventScript_CheckMoneySkitties
	call_if_eq VAR_TEMP_1, 2, MauvilleCity_GameCorner_EventScript_CheckMoneyNumelNougat
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NotEnoughMoneyForSnack
	checkitemspace VAR_TEMP_0
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoRoomForSnack
	call_if_eq VAR_TEMP_1, 0, MauvilleCity_GameCorner_EventScript_RemoveMoneyGummyWurmples
	call_if_eq VAR_TEMP_1, 1, MauvilleCity_GameCorner_EventScript_RemoveMoneySkitties
	call_if_eq VAR_TEMP_1, 2, MauvilleCity_GameCorner_EventScript_RemoveMoneyNumelNougat
	updatemoneybox
	bufferitemname STR_VAR_1, VAR_TEMP_0
	playse SE_VEND
	msgbox MauvilleCity_GameCorner_Text_SnackDroppedDown, MSGBOX_DEFAULT
	additem VAR_TEMP_0
	bufferitemname STR_VAR_2, VAR_TEMP_0
	bufferstdstring STR_VAR_3, STDSTRING_ITEMS
	msgbox gText_PutItemInPocket, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_ChooseSnack
	end

MauvilleCity_GameCorner_EventScript_NotEnoughMoneyForSnack::
	msgbox MauvilleCity_GameCorner_Text_NotEnoughMoneyForSnack, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_ExitSnackMachine
	end

MauvilleCity_GameCorner_EventScript_NoRoomForSnack::
	msgbox gText_TheBagIsFull, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_ExitSnackMachine
	end

MauvilleCity_GameCorner_EventScript_ExitSnackMachine::
	hidemoneybox
	releaseall
	end

MauvilleCity_GameCorner_EventScript_ChooseDrink::
	multichoice 16, 0, MULTI_VENDING_MACHINE, FALSE
	copyvar VAR_TEMP_1, VAR_RESULT
	switch VAR_TEMP_1
	case 0, MauvilleCity_GameCorner_EventScript_FreshWater
	case 1, MauvilleCity_GameCorner_EventScript_SodaPop
	case 2, MauvilleCity_GameCorner_EventScript_Lemonade
	msgbox MauvilleCity_GameCorner_Text_DecidedAgainstBuyingDrink, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_ExitDrinkVendingMachine
	end

MauvilleCity_GameCorner_EventScript_FreshWater::
	setvar VAR_TEMP_0, ITEM_FRESH_WATER
	goto MauvilleCity_GameCorner_EventScript_TryBuyDrink
	end

MauvilleCity_GameCorner_EventScript_SodaPop::
	setvar VAR_TEMP_0, ITEM_SODA_POP
	goto MauvilleCity_GameCorner_EventScript_TryBuyDrink
	end

MauvilleCity_GameCorner_EventScript_Lemonade::
	setvar VAR_TEMP_0, ITEM_LEMONADE
	goto MauvilleCity_GameCorner_EventScript_TryBuyDrink
	end

MauvilleCity_GameCorner_EventScript_CheckMoneyFreshWater::
	checkmoney 200
	return

MauvilleCity_GameCorner_EventScript_CheckMoneySodaPop::
	checkmoney 300
	return

MauvilleCity_GameCorner_EventScript_CheckMoneyLemonade::
	checkmoney 350
	return

MauvilleCity_GameCorner_EventScript_RemoveMoneyFreshWater::
	removemoney 200
	return

MauvilleCity_GameCorner_EventScript_RemoveMoneySodaPop::
	removemoney 300
	return

MauvilleCity_GameCorner_EventScript_RemoveMoneyLemonade::
	removemoney 350
	return

MauvilleCity_GameCorner_EventScript_TryBuyDrink::
	call_if_eq VAR_TEMP_1, 0, MauvilleCity_GameCorner_EventScript_CheckMoneyFreshWater
	call_if_eq VAR_TEMP_1, 1, MauvilleCity_GameCorner_EventScript_CheckMoneySodaPop
	call_if_eq VAR_TEMP_1, 2, MauvilleCity_GameCorner_EventScript_CheckMoneyLemonade
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NotEnoughMoneyForDrink
	checkitemspace VAR_TEMP_0
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoRoomForDrink
	call_if_eq VAR_TEMP_1, 0, MauvilleCity_GameCorner_EventScript_RemoveMoneyFreshWater
	call_if_eq VAR_TEMP_1, 1, MauvilleCity_GameCorner_EventScript_RemoveMoneySodaPop
	call_if_eq VAR_TEMP_1, 2, MauvilleCity_GameCorner_EventScript_RemoveMoneyLemonade
	updatemoneybox
	bufferitemname STR_VAR_1, VAR_TEMP_0
	playse SE_VEND
	msgbox MauvilleCity_GameCorner_Text_CanOfDrinkDroppedDown, MSGBOX_DEFAULT
	additem VAR_TEMP_0
	bufferitemname STR_VAR_2, VAR_TEMP_0
	bufferstdstring STR_VAR_3, STDSTRING_ITEMS
	msgbox gText_PutItemInPocket, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_ExitDrinkVendingMachine
	end

MauvilleCity_GameCorner_EventScript_NotEnoughMoneyForDrink::
	msgbox MauvilleCity_GameCorner_Text_NotEnoughMoneyForDrink, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_ExitDrinkVendingMachine
	end

MauvilleCity_GameCorner_EventScript_NoRoomForDrink::
	msgbox gText_TheBagIsFull, MSGBOX_DEFAULT
	goto MauvilleCity_GameCorner_EventScript_ExitDrinkVendingMachine
	end

MauvilleCity_GameCorner_EventScript_ExitDrinkVendingMachine::
	hidemoneybox
	releaseall
	end

MauvilleCity_GameCorner_Text_Placeholder1:
	.string "Hello! If you want to play blackjack,\n"
	.string "please choose a spot at the table.$"

MauvilleCity_GameCorner_Text_Placeholder2:
	.string "Hello! If you want to play blackjack,\n"
	.string "please choose a spot at the table.$"

MauvilleCity_GameCorner_Text_Placeholder3:
	.string "I'm a pro at this game!\p"
	.string "Bet you can't beat my high score!$"

MauvilleCity_GameCorner_Text_Placeholder4:
	.string "The low stakes slots are a nice place\n"
	.string "to spend an evening if you want a\l"
	.string "little excitement without much risk.$"

MauvilleCity_GameCorner_Text_Placeholder5:
	.string "The woman is rubbing and tapping the\n"
	.string "screen as if performing a ritual.\p"
	.string "She doesn't notice you at all.$"

MauvilleCity_GameCorner_Text_Placeholder6:
	.string "My mom says pinball is the only\n"
	.string "game I'm allowed to play in here.\p"
	.string "Just once, though, I'd like to try\n"
	.string "something more exciting!$"

MauvilleCity_GameCorner_Text_Placeholder7:
	.string "I just come here for the pinball.\n"
	.string "You can't lose your entire savings\l"
	.string "on pinball!$"

MauvilleCity_GameCorner_Text_Placeholder8:
	.string "My wife always paces around nervously\n"
	.string "while I'm here.\p"
	.string "Just you wait. I'll make us rich!$"

MauvilleCity_GameCorner_Text_Placeholder9:
	.string "I have enough money that losing here\n"
	.string "doesn't bother me. I just like to\l"
	.string "watch the races.$"

MauvilleCity_GameCorner_Text_Placeholder10:
	.string "Uh... I really have no idea which\n"
	.string "Pokemon to bet on. Got any suggestions?$"

MauvilleCity_GameCorner_Text_Placeholder11:
	.string "My husband spends all day here betting\n"
	.string "on races. We've just barely been\l"
	.string "breaking even.\p"
	.string "Hopefully he doesn't lose our entire\n"
	.string "retirement fund...$"

MauvilleCity_GameCorner_Text_Placeholder12:
	.string "I brought my girlfriend here on a\n"
	.string "date, but I didn't expect our luck to\l"
	.string "be this good!\p"
	.string "Our next date will be on a cruise!$"

MauvilleCity_GameCorner_Text_Placeholder13:
	.string "My boyfriend is on a winning streak!$"

MauvilleCity_GameCorner_Text_Placeholder14:
	.string "I've already spent so many credits\n"
	.string "on the gacha machines here...\p"
	.string "Well, surely a little more won't hurt!$"

MauvilleCity_GameCorner_Text_Placeholder15:
	.string "I lost everything...\p"
	.string "I can't even afford a drink to\n"
	.string "drown my sorrows.$"

MauvilleCity_GameCorner_Text_Placeholder16:
	.string "My husband and I come here for\n"
	.string "date nights. The food is fantastic!$"

MauvilleCity_GameCorner_Text_Placeholder17:
	.string "The food here is a great deal\n"
	.string "because they expect to make money\l"
	.string "off you in other ways.\p"
	.string "The key is to not gamble!$"

MauvilleCity_GameCorner_Text_Placeholder18:
	.string "It's a Pokemon race! Place your\n"
	.string "bet at the terminals on either side.$"


@ ============================================================
@ DEBUG - acesso direto sem custo (remover antes do release)
@ ============================================================

MauvilleCity_GameCorner_EventScript_DebugGacha::
	lockall
	setvar VAR_0x8004, 1
	special StartGacha
	waitstate
	releaseall
	end

MauvilleCity_GameCorner_EventScript_GachaBasic::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	checkcoins VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, 100, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
	msgbox MauvilleCity_GameCorner_Text_PlayGachaBasic, MSGBOX_YESNO
	closemessage
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
	setvar VAR_0x8004, 1
	special StartGacha
	waitstate
	call MauvilleCity_GameCorner_EventScript_HandleGachaResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_GachaGreat::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	checkcoins VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, 500, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
	msgbox MauvilleCity_GameCorner_Text_PlayGachaGreat, MSGBOX_YESNO
	closemessage
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
	setvar VAR_0x8004, 2
	special StartGacha
	waitstate
	call MauvilleCity_GameCorner_EventScript_HandleGachaResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_GachaUltra::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	checkcoins VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, 2000, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
	msgbox MauvilleCity_GameCorner_Text_PlayGachaUltra, MSGBOX_YESNO
	closemessage
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
	setvar VAR_0x8004, 3
	special StartGacha
	waitstate
	call MauvilleCity_GameCorner_EventScript_HandleGachaResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_DebugBlackjack::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	checkcoins VAR_TEMP_1
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
	msgbox MauvilleCity_GameCorner_Text_PlayBlackjack, MSGBOX_YESNO
	closemessage
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
	special StartBlackJack
	waitstate
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_DebugPinball::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	checkcoins VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, PINBALL_MEOWTH_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
	msgbox MauvilleCity_GameCorner_Text_PlayPinballMeowth, MSGBOX_YESNO
	closemessage
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
	removecoins PINBALL_MEOWTH_COINS
	playse SE_SHOP
	setvar VAR_TEMP_4, 0
	callnative PlayMeowthPinballGame
	waitstate
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_DebugPinballDiglett::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	checkcoins VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, PINBALL_DIGLETT_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
	msgbox MauvilleCity_GameCorner_Text_PlayPinballDiglett, MSGBOX_YESNO
	closemessage
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
	removecoins PINBALL_DIGLETT_COINS
	playse SE_SHOP
	setvar VAR_TEMP_4, 0
	callnative PlayDiglettPinballGame
	waitstate
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_DebugPinballSeel::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	checkcoins VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, PINBALL_SEEL_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
	msgbox MauvilleCity_GameCorner_Text_PlayPinballSeel, MSGBOX_YESNO
	closemessage
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
	removecoins PINBALL_SEEL_COINS
	playse SE_SHOP
	setvar VAR_TEMP_4, 0
	callnative PlaySeelPinballGame
	waitstate
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_DebugPinballGengar::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	checkcoins VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, PINBALL_GENGAR_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
	msgbox MauvilleCity_GameCorner_Text_PlayPinballGengar, MSGBOX_YESNO
	closemessage
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
	removecoins PINBALL_GENGAR_COINS
	playse SE_SHOP
	setvar VAR_TEMP_4, 0
	callnative PlayGengarPinballGame
	waitstate
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_DebugFlappy::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	checkcoins VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, FLAPPY_BIRD_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
	msgbox MauvilleCity_GameCorner_Text_PlayFlappyBird, MSGBOX_YESNO
	closemessage
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
	removecoins FLAPPY_BIRD_COINS
	playse SE_SHOP
	setvar VAR_TEMP_4, 0
	callnative StartFlappyBird
	waitstate
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_DebugSnake::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	checkcoins VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, SNAKE_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
	msgbox MauvilleCity_GameCorner_Text_PlaySnake, MSGBOX_YESNO
	closemessage
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
	removecoins SNAKE_COINS
	playse SE_SHOP
	setvar VAR_TEMP_4, 0
	special StartSnake
	waitstate
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_DebugBlockStacker::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	checkcoins VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, BLOCK_STACKER_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
	msgbox MauvilleCity_GameCorner_Text_PlayBlockStacker, MSGBOX_YESNO
	closemessage
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
	removecoins BLOCK_STACKER_COINS
	playse SE_SHOP
	setvar VAR_TEMP_4, 0
	special StartBlockStacker
	waitstate
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_DebugPachinko::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	checkcoins VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, PACHINKO_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
	msgbox MauvilleCity_GameCorner_Text_PlayPachinko, MSGBOX_YESNO
	closemessage
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
	callnative PlayPachinko
	waitstate
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_DebugVoltorbFlip::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	checkcoins VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, VOLTORB_FLIP_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
	msgbox MauvilleCity_GameCorner_Text_PlayVoltorbFlip, MSGBOX_YESNO
	closemessage
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
	removecoins VOLTORB_FLIP_COINS
	playse SE_SHOP
	setvar VAR_TEMP_4, 0
	special Special_ViewVoltorbFlip
	waitstate
	call MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipHandleResult
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipHandleResult::
	goto_if_eq VAR_RESULT, 1, MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipKeepGoing
	setvar VAR_TEMP_4, 0
	return

MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipKeepGoing::
	buffernumberstring STR_VAR_1, VAR_TEMP_4
	msgbox MauvilleCity_GameCorner_Text_DebugVoltorbFlipKeepGoing, MSGBOX_YESNO
	closemessage
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipCashOut
	special Special_ViewVoltorbFlip
	waitstate
	goto MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipHandleResult

MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipCashOut::
	addcoins VAR_TEMP_4
	setvar VAR_TEMP_4, 0
	return

MauvilleCity_GameCorner_EventScript_DebugDerby::
	lockall
	checkitem ITEM_COIN_CASE
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
	checkcoins VAR_TEMP_1
	goto_if_lt VAR_TEMP_1, DERBY_MIN_BET_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
	msgbox MauvilleCity_GameCorner_Text_PlayDerby, MSGBOX_YESNO
	closemessage
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
	setvar VAR_TEMP_4, 0
	special StartDerby
	waitstate
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
	releaseall
	end

MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame::
	releaseall
	end

MauvilleCity_GameCorner_EventScript_HandleGachaResult::
	goto_if_eq VAR_TEMP_5, FALSE, MauvilleCity_GameCorner_EventScript_NoGachaRefundMessage
	buffernumberstring STR_VAR_1, VAR_TEMP_4
	msgbox MauvilleCity_GameCorner_Text_GachaRefundExtraCoins, MSGBOX_DEFAULT
	setvar VAR_TEMP_4, 0
	setvar VAR_TEMP_5, FALSE
	return

MauvilleCity_GameCorner_EventScript_NoGachaRefundMessage::
	return

MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame::
	msgbox MauvilleCity_GameCorner_Text_NotEnoughCoins, MSGBOX_DEFAULT
	releaseall
	end

MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings::
	goto_if_eq VAR_TEMP_4, 0, MauvilleCity_GameCorner_EventScript_NoDebugMinigameWinnings
	addcoins VAR_TEMP_4
	setvar VAR_TEMP_4, 0
	return

MauvilleCity_GameCorner_EventScript_NoDebugMinigameWinnings::
	return

MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult::
	checkcoins GAME_CORNER_VAR_CURRENT_COINS
	compare GAME_CORNER_VAR_CURRENT_COINS, GAME_CORNER_VAR_START_COINS
	goto_if_eq MauvilleCity_GameCorner_EventScript_ArcadeCoinResultEven
	goto_if_gt MauvilleCity_GameCorner_EventScript_ArcadeCoinResultWon
	copyvar GAME_CORNER_VAR_COIN_DELTA, GAME_CORNER_VAR_START_COINS
	subvar GAME_CORNER_VAR_COIN_DELTA, GAME_CORNER_VAR_CURRENT_COINS
	buffernumberstring STR_VAR_1, GAME_CORNER_VAR_COIN_DELTA
	msgbox MauvilleCity_GameCorner_Text_ArcadeCoinsLost, MSGBOX_DEFAULT
	return

MauvilleCity_GameCorner_EventScript_ArcadeCoinResultWon::
	copyvar GAME_CORNER_VAR_COIN_DELTA, GAME_CORNER_VAR_CURRENT_COINS
	subvar GAME_CORNER_VAR_COIN_DELTA, GAME_CORNER_VAR_START_COINS
	buffernumberstring STR_VAR_1, GAME_CORNER_VAR_COIN_DELTA
	msgbox MauvilleCity_GameCorner_Text_ArcadeCoinsWon, MSGBOX_DEFAULT
	return

MauvilleCity_GameCorner_EventScript_ArcadeCoinResultEven::
	msgbox MauvilleCity_GameCorner_Text_ArcadeCoinsEven, MSGBOX_DEFAULT
	return

MauvilleCity_GameCorner_Text_PlayPinballMeowth:
	.string "Play MEOWTH PINBALL for\n"
	.string "25 COINS?$"

MauvilleCity_GameCorner_Text_PlayGachaBasic:
	.string "Play BASIC GACHA for\n"
	.string "100 COINS?$"

MauvilleCity_GameCorner_Text_PlayGachaGreat:
	.string "Play GREAT GACHA for\n"
	.string "500 COINS?$"

MauvilleCity_GameCorner_Text_PlayGachaUltra:
	.string "Play ULTRA GACHA for\n"
	.string "2000 COINS?$"

MauvilleCity_GameCorner_Text_GachaRefundExtraCoins:
	.string "You've already collected every\n"
	.string "possible POKeMON from this machine.\p"
	.string "We refunded the extra {STR_VAR_1}\n"
	.string "COINS from your wager.$"

MauvilleCity_GameCorner_Text_PlayPinballDiglett:
	.string "Play DIGLETT PINBALL for\n"
	.string "50 COINS?$"

MauvilleCity_GameCorner_Text_PlayPinballSeel:
	.string "Play SEEL PINBALL for\n"
	.string "25 COINS?$"

MauvilleCity_GameCorner_Text_PlayPinballGengar:
	.string "Play GENGAR PINBALL for\n"
	.string "100 COINS?$"

MauvilleCity_GameCorner_Text_PlayFlappyBird:
	.string "Play FLUTTERFREE for\n"
	.string "25 COINS?$"

MauvilleCity_GameCorner_Text_PlaySnake:
	.string "Play ONIX for\n"
	.string "25 COINS?$"

MauvilleCity_GameCorner_Text_PlayBlockStacker:
	.string "Play BLOCK BUILDER for\n"
	.string "25 COINS?$"

MauvilleCity_GameCorner_Text_PlayPachinko:
	.string "Play PACHINKO?\p"
	.string "Each drop costs 3 COINS.$"

MauvilleCity_GameCorner_Text_DebugVoltorbFlipKeepGoing:
	.string "Current winnings: {STR_VAR_1} COINS.\p"
	.string "Keep going?$"

MauvilleCity_GameCorner_Text_PlayVoltorbFlip:
	.string "Play VOLTORB FLIP for\n"
	.string "50 COINS?$"

MauvilleCity_GameCorner_Text_PlayDerby:
	.string "Enter the MAUVILLE DERBY?\p"
	.string "Bets start at 10 COINS.$"

MauvilleCity_GameCorner_Text_PlayBlackjack:
	.string "Play BLACKJACK?$"

MauvilleCity_GameCorner_Text_WhichSnackWouldYouLike:
	.string "A vending machine full of snacks!\p"
	.string "Which one would you like?$"

MauvilleCity_GameCorner_Text_WhichDrinkWouldYouLike:
	.string "It's a VENDING MACHINE.\n"
	.string "Which drink would you like?$"

MauvilleCity_GameCorner_Text_SnackDroppedDown:
	.string "Clunk!\p"
	.string "{STR_VAR_1} dropped down.$"

MauvilleCity_GameCorner_Text_CanOfDrinkDroppedDown:
	.string "Clang!\p"
	.string "A can of {STR_VAR_1} dropped down.$"

MauvilleCity_GameCorner_Text_NotEnoughMoneyForSnack:
	.string "You don't have enough money.$"

MauvilleCity_GameCorner_Text_NotEnoughMoneyForDrink:
	.string "You don't have enough money.$"

MauvilleCity_GameCorner_Text_DecidedAgainstSnack:
	.string "Maybe another time.$"

MauvilleCity_GameCorner_Text_DecidedAgainstBuyingDrink:
	.string "Maybe another time.$"

MauvilleCity_GameCorner_Text_ArcadeCoinsWon:
	.string "You're up {STR_VAR_1} COINS!$"

MauvilleCity_GameCorner_Text_ArcadeCoinsLost:
	.string "You're down {STR_VAR_1} COINS!$"

MauvilleCity_GameCorner_Text_ArcadeCoinsEven:
	.string "You're even on COINS.$"
