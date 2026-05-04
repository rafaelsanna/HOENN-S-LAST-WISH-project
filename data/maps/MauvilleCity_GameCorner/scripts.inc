# 1 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_MapScripts::
# 3 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.byte 0
# 4 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 5 "data/maps/MauvilleCity_GameCorner/scripts.pory"
    @ Game Corner prices
# 6 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set TM_DOUBLE_TEAM_COINS, 1500
# 7 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set TM_PSYCHIC_COINS, 3500
# 8 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set TM_FLAMETHROWER_COINS, 4000
# 9 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set TM_THUNDERBOLT_COINS, 4000
# 10 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set TM_ICE_BEAM_COINS, 4000
# 11 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set DOLL_COINS, 1000
# 12 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set MINT_COINS, 1000
# 13 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set ABILITY_PATCH_COINS, 6000
# 14 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set ABILITY_CAPSULE_COINS, 3000
# 15 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set TRAINING_ITEM_COINS, 400
# 16 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set EVOLUTION_ITEM_COINS, 1000
# 17 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PRIZE_MENU_TMS, 1
# 18 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PRIZE_MENU_MINTS, 2
# 19 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PRIZE_MENU_TRAINING, 3
# 20 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PRIZE_MENU_EVOLUTION, 4
# 21 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 22 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set COINS_PRICE_50,  1000
# 23 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set COINS_PRICE_500, 10000
# 24 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set COINS_PRICE_5000, 100000
# 25 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set SLOT_MACHINE_HIGH_STAKES_OFFSET, 6
# 26 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PINBALL_MEOWTH_COINS, 25
# 27 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PINBALL_DIGLETT_COINS, 50
# 28 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PINBALL_SEEL_COINS, 25
# 29 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PINBALL_GENGAR_COINS, 100
# 30 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set FLAPPY_BIRD_COINS, 25
# 31 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set SNAKE_COINS, 25
# 32 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set BLOCK_STACKER_COINS, 25
# 33 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PACHINKO_COINS, 3
# 34 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set VOLTORB_FLIP_COINS, 50
# 35 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set DERBY_MIN_BET_COINS, 10
# 36 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set GAME_CORNER_VAR_START_COINS, VAR_0x8008
# 37 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set GAME_CORNER_VAR_CURRENT_COINS, VAR_0x8009
# 38 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set GAME_CORNER_VAR_COIN_DELTA, VAR_0x800A
# 39 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 40 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CoinsClerk::
# 41 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 42 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_CoinExchangeATM, MSGBOX_DEFAULT
# 43 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 44 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NeedCoinCase
# 45 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_SelectATMTransaction
# 46 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 47 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	showmoneybox 0, 0
# 48 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	showcoinsbox 1, 6
# 49 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ChooseATMTransaction
# 50 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 51 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ChooseATMTransaction::
# 52 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	multichoicedefault 15, 0, MULTI_GAME_CORNER_ATM, 0, FALSE
# 53 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 54 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_ChooseCoinsDefault50
# 55 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_ChooseCashOutDefault50
# 56 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelBuyCoins
# 57 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 58 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 59 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ChooseCoinsDefault50::
# 60 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_SelectCoinsToPurchase
# 61 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 62 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	multichoicedefault 15, 0, MULTI_GAME_CORNER_COINS, 0, FALSE
# 63 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 64 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_Buy50Coins
# 65 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_Buy500Coins
# 66 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_Buy5000Coins
# 67 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelBuyCoins
# 68 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 69 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 70 "data/maps/MauvilleCity_GameCorner/scripts.pory"
@ Unused
# 71 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ChooseCoinsDefault500::
# 72 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_SelectCoinsToPurchase
# 73 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 74 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	multichoicedefault 15, 0, MULTI_GAME_CORNER_COINS, 1, FALSE
# 75 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 76 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_Buy50Coins
# 77 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_Buy500Coins
# 78 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_Buy5000Coins
# 79 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelBuyCoins
# 80 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 81 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 82 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ChooseCashOutDefault50::
# 83 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_SelectCoinsToCashOut
# 84 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 85 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	multichoicedefault 15, 0, MULTI_GAME_CORNER_CASH_OUT, 0, FALSE
# 86 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 87 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_CashOut50Coins
# 88 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_CashOut500Coins
# 89 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_CashOut5000Coins
# 90 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelBuyCoins
# 91 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 92 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 93 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Buy50Coins::
# 94 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 95 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_ge VAR_TEMP_1, (MAX_COINS + 1 - 50), MauvilleCity_GameCorner_EventScript_NoRoomForCoins
# 96 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkmoney COINS_PRICE_50
# 97 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NotEnoughMoney
# 98 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addcoins 50
# 99 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removemoney COINS_PRICE_50
# 100 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatemoneybox
# 101 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatecoinsbox 1, 6
# 102 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 103 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedCoins, MSGBOX_DEFAULT
# 104 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 105 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 106 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 107 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 108 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 109 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Buy500Coins::
# 110 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 111 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_ge VAR_TEMP_1, (MAX_COINS + 1 - 500), MauvilleCity_GameCorner_EventScript_NoRoomForCoins
# 112 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkmoney COINS_PRICE_500
# 113 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NotEnoughMoney
# 114 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addcoins 500
# 115 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removemoney COINS_PRICE_500
# 116 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatemoneybox
# 117 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatecoinsbox 1, 6
# 118 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 119 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedCoins, MSGBOX_DEFAULT
# 120 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 121 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 122 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 123 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 124 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 125 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Buy5000Coins::
# 126 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 127 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_ge VAR_TEMP_1, (MAX_COINS + 1 - 5000), MauvilleCity_GameCorner_EventScript_NoRoomForCoins
# 128 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkmoney COINS_PRICE_5000
# 129 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NotEnoughMoney
# 130 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addcoins 5000
# 131 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removemoney COINS_PRICE_5000
# 132 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatemoneybox
# 133 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatecoinsbox 1, 6
# 134 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 135 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedCoins, MSGBOX_DEFAULT
# 136 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 137 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 138 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 139 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 140 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 141 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CashOut50Coins::
# 142 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 143 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, 50, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsToCashOut
# 144 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins 50
# 145 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addmoney COINS_PRICE_50, 0
# 146 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatemoneybox
# 147 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatecoinsbox 1, 6
# 148 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 149 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedMoney, MSGBOX_DEFAULT
# 150 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 151 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 152 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 153 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 154 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 155 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CashOut500Coins::
# 156 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 157 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, 500, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsToCashOut
# 158 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins 500
# 159 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addmoney COINS_PRICE_500, 0
# 160 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatemoneybox
# 161 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatecoinsbox 1, 6
# 162 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 163 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedMoney, MSGBOX_DEFAULT
# 164 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 165 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 166 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 167 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 168 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 169 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CashOut5000Coins::
# 170 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 171 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, 5000, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsToCashOut
# 172 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins 5000
# 173 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addmoney COINS_PRICE_5000, 0
# 174 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatemoneybox
# 175 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatecoinsbox 1, 6
# 176 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 177 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedMoney, MSGBOX_DEFAULT
# 178 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 179 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 180 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 181 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 182 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 183 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NeedCoinCase::
# 184 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_NeedCoinCaseForCoins, MSGBOX_DEFAULT
# 185 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 186 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 187 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 188 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NotEnoughMoney::
# 189 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_DontHaveEnoughMoney, MSGBOX_DEFAULT
# 190 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 191 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 192 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 193 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 194 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 195 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CancelBuyCoins::
# 196 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_DontNeedCoinsThen, MSGBOX_DEFAULT
# 197 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 198 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 199 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 200 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 201 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 202 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NoRoomForCoins::
# 203 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_CoinCaseIsFull, MSGBOX_DEFAULT
# 204 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 205 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 206 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 207 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 208 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 209 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NotEnoughCoinsToCashOut::
# 210 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_NotEnoughCoinsToCashOut, MSGBOX_DEFAULT
# 211 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 212 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 213 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 214 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 215 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 216 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeCornerMints::
# 217 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 218 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 219 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ExchangeCoinsForPrizes, MSGBOX_DEFAULT
# 220 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 221 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_GameCorner_EventScript_OpenMintPrizeMenu
# 222 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 223 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 224 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 225 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeCornerTraining::
# 226 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 227 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 228 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ExchangeCoinsForPrizes, MSGBOX_DEFAULT
# 229 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 230 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_GameCorner_EventScript_OpenTrainingPrizeMenu
# 231 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 232 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 233 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 234 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeCornerEvolution::
# 235 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 236 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 237 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ExchangeCoinsForPrizes, MSGBOX_DEFAULT
# 238 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 239 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_GameCorner_EventScript_OpenEvolutionPrizeMenu
# 240 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 241 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 242 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 243 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeCornerTMs::
# 244 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 245 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 246 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ExchangeCoinsForPrizes, MSGBOX_DEFAULT
# 247 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 248 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_GameCorner_EventScript_OpenTMPrizeMenu
# 249 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 250 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 251 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 252 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_OpenTMPrizeMenu::
# 253 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_WhichPrize
# 254 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 255 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	showcoinsbox 1, 1
# 256 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_6, PRIZE_MENU_TMS
# 257 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, SCROLL_MULTI_GAME_CORNER_TMS
# 258 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special ShowScrollableMultichoice
# 259 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 260 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 261 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_TMDoubleTeam
# 262 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_TMPsychic
# 263 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_TMFlamethrower
# 264 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 3, MauvilleCity_GameCorner_EventScript_TMThunderbolt
# 265 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 4, MauvilleCity_GameCorner_EventScript_TMIceBeam
# 266 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 5, MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 267 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 268 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 269 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 270 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_TMDoubleTeam::
# 271 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_TM_DOUBLE_TEAM
# 272 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TM_DOUBLE_TEAM_COINS
# 273 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 274 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 275 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_TMPsychic::
# 276 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_TM_PSYCHIC
# 277 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TM_PSYCHIC_COINS
# 278 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 279 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 280 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_TMFlamethrower::
# 281 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_TM_FLAMETHROWER
# 282 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TM_FLAMETHROWER_COINS
# 283 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 284 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 285 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_TMThunderbolt::
# 286 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_TM_THUNDERBOLT
# 287 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TM_THUNDERBOLT_COINS
# 288 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 289 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 290 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_TMIceBeam::
# 291 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_TM_ICE_BEAM
# 292 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TM_ICE_BEAM_COINS
# 293 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 294 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 295 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_OpenMintPrizeMenu::
# 296 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_WhichPrize
# 297 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 298 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	showcoinsbox 1, 1
# 299 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_6, PRIZE_MENU_MINTS
# 300 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, SCROLL_MULTI_GAME_CORNER_MINTS
# 301 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special ShowScrollableMultichoice
# 302 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 303 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 304 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_PrizeLonelyMint
# 305 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_PrizeAdamantMint
# 306 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_PrizeNaughtyMint
# 307 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 3, MauvilleCity_GameCorner_EventScript_PrizeBraveMint
# 308 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 4, MauvilleCity_GameCorner_EventScript_PrizeBoldMint
# 309 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 5, MauvilleCity_GameCorner_EventScript_PrizeImpishMint
# 310 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 6, MauvilleCity_GameCorner_EventScript_PrizeLaxMint
# 311 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 7, MauvilleCity_GameCorner_EventScript_PrizeRelaxedMint
# 312 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 8, MauvilleCity_GameCorner_EventScript_PrizeModestMint
# 313 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 9, MauvilleCity_GameCorner_EventScript_PrizeMildMint
# 314 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 10, MauvilleCity_GameCorner_EventScript_PrizeRashMint
# 315 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 11, MauvilleCity_GameCorner_EventScript_PrizeQuietMint
# 316 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 12, MauvilleCity_GameCorner_EventScript_PrizeCalmMint
# 317 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 13, MauvilleCity_GameCorner_EventScript_PrizeGentleMint
# 318 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 14, MauvilleCity_GameCorner_EventScript_PrizeCarefulMint
# 319 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 15, MauvilleCity_GameCorner_EventScript_PrizeSassyMint
# 320 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 16, MauvilleCity_GameCorner_EventScript_PrizeTimidMint
# 321 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 17, MauvilleCity_GameCorner_EventScript_PrizeHastyMint
# 322 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 18, MauvilleCity_GameCorner_EventScript_PrizeJollyMint
# 323 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 19, MauvilleCity_GameCorner_EventScript_PrizeNaiveMint
# 324 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 20, MauvilleCity_GameCorner_EventScript_PrizeSeriousMint
# 325 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 21, MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 326 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 327 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 328 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 329 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_OpenTrainingPrizeMenu::
# 330 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_WhichPrize
# 331 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 332 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	showcoinsbox 1, 1
# 333 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_6, PRIZE_MENU_TRAINING
# 334 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, SCROLL_MULTI_GAME_CORNER_TRAINING
# 335 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special ShowScrollableMultichoice
# 336 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 337 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 338 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_PrizeAbilityPatch
# 339 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_PrizeAbilityCapsule
# 340 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_PrizeHpUp
# 341 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 3, MauvilleCity_GameCorner_EventScript_PrizeProtein
# 342 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 4, MauvilleCity_GameCorner_EventScript_PrizeIron
# 343 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 5, MauvilleCity_GameCorner_EventScript_PrizeCalcium
# 344 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 6, MauvilleCity_GameCorner_EventScript_PrizeZinc
# 345 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 7, MauvilleCity_GameCorner_EventScript_PrizeCarbos
# 346 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 8, MauvilleCity_GameCorner_EventScript_PrizePpUp
# 347 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 9, MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 348 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 349 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 350 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 351 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_OpenEvolutionPrizeMenu::
# 352 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_WhichPrize
# 353 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 354 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	showcoinsbox 1, 1
# 355 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_6, PRIZE_MENU_EVOLUTION
# 356 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, SCROLL_MULTI_GAME_CORNER_EVOLUTION
# 357 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special ShowScrollableMultichoice
# 358 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 359 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 360 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_PrizeDawnStone
# 361 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_PrizeDuskStone
# 362 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_PrizeIceStone
# 363 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 3, MauvilleCity_GameCorner_EventScript_PrizeLinkingCord
# 364 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 4, MauvilleCity_GameCorner_EventScript_PrizeReaperCloth
# 365 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 5, MauvilleCity_GameCorner_EventScript_PrizePeatBlock
# 366 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 6, MauvilleCity_GameCorner_EventScript_PrizeShinyStone
# 367 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 7, MauvilleCity_GameCorner_EventScript_PrizeBlackAugurite
# 368 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 8, MauvilleCity_GameCorner_EventScript_PrizeLoadedDice
# 369 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 9, MauvilleCity_GameCorner_EventScript_PrizeAmuletCoin
# 370 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 10, MauvilleCity_GameCorner_EventScript_PrizeRazorClaw
# 371 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 11, MauvilleCity_GameCorner_EventScript_PrizeRazorFang
# 372 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 12, MauvilleCity_GameCorner_EventScript_PrizeDestinyKnot
# 373 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 13, MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 374 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 375 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 376 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 377 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeLonelyMint::
# 378 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_LONELY_MINT
# 379 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 380 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 381 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 382 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeAdamantMint::
# 383 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_ADAMANT_MINT
# 384 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 385 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 386 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 387 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeNaughtyMint::
# 388 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_NAUGHTY_MINT
# 389 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 390 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 391 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 392 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeBraveMint::
# 393 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_BRAVE_MINT
# 394 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 395 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 396 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 397 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeBoldMint::
# 398 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_BOLD_MINT
# 399 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 400 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 401 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 402 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeImpishMint::
# 403 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_IMPISH_MINT
# 404 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 405 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 406 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 407 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeLaxMint::
# 408 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_LAX_MINT
# 409 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 410 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 411 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 412 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeRelaxedMint::
# 413 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_RELAXED_MINT
# 414 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 415 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 416 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 417 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeModestMint::
# 418 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_MODEST_MINT
# 419 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 420 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 421 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 422 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeMildMint::
# 423 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_MILD_MINT
# 424 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 425 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 426 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 427 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeRashMint::
# 428 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_RASH_MINT
# 429 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 430 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 431 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 432 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeQuietMint::
# 433 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_QUIET_MINT
# 434 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 435 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 436 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 437 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeCalmMint::
# 438 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_CALM_MINT
# 439 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 440 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 441 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 442 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeGentleMint::
# 443 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_GENTLE_MINT
# 444 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 445 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 446 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 447 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeCarefulMint::
# 448 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_CAREFUL_MINT
# 449 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 450 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 451 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 452 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeSassyMint::
# 453 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_SASSY_MINT
# 454 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 455 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 456 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 457 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeTimidMint::
# 458 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_TIMID_MINT
# 459 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 460 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 461 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 462 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeHastyMint::
# 463 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_HASTY_MINT
# 464 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 465 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 466 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 467 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeJollyMint::
# 468 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_JOLLY_MINT
# 469 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 470 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 471 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 472 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeNaiveMint::
# 473 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_NAIVE_MINT
# 474 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 475 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 476 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 477 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeSeriousMint::
# 478 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_SERIOUS_MINT
# 479 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 480 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 481 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 482 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeAbilityPatch::
# 483 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_ABILITY_PATCH
# 484 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, ABILITY_PATCH_COINS
# 485 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 486 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 487 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeAbilityCapsule::
# 488 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_ABILITY_CAPSULE
# 489 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, ABILITY_CAPSULE_COINS
# 490 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 491 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 492 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeHpUp::
# 493 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_HP_UP
# 494 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TRAINING_ITEM_COINS
# 495 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 496 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 497 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeProtein::
# 498 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_PROTEIN
# 499 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TRAINING_ITEM_COINS
# 500 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 501 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 502 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeIron::
# 503 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_IRON
# 504 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TRAINING_ITEM_COINS
# 505 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 506 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 507 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeCalcium::
# 508 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_CALCIUM
# 509 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TRAINING_ITEM_COINS
# 510 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 511 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 512 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeZinc::
# 513 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_ZINC
# 514 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TRAINING_ITEM_COINS
# 515 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 516 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 517 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeCarbos::
# 518 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_CARBOS
# 519 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TRAINING_ITEM_COINS
# 520 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 521 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 522 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizePpUp::
# 523 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_PP_UP
# 524 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TRAINING_ITEM_COINS
# 525 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 526 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 527 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeDawnStone::
# 528 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_DAWN_STONE
# 529 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 530 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 531 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 532 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeDuskStone::
# 533 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_DUSK_STONE
# 534 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 535 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 536 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 537 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeIceStone::
# 538 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_ICE_STONE
# 539 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 540 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 541 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 542 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeLinkingCord::
# 543 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_LINKING_CORD
# 544 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 545 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 546 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 547 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeReaperCloth::
# 548 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_REAPER_CLOTH
# 549 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 550 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 551 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 552 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizePeatBlock::
# 553 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_PEAT_BLOCK
# 554 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 555 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 556 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 557 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeShinyStone::
# 558 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_SHINY_STONE
# 559 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 560 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 561 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 562 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeBlackAugurite::
# 563 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_BLACK_AUGURITE
# 564 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 565 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 566 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 567 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeLoadedDice::
# 568 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_LOADED_DICE
# 569 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 570 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 571 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 572 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeAmuletCoin::
# 573 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_AMULET_COIN
# 574 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 575 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 576 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 577 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeRazorClaw::
# 578 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_RAZOR_CLAW
# 579 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 580 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 581 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 582 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeRazorFang::
# 583 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_RAZOR_FANG
# 584 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 585 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 586 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 587 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeDestinyKnot::
# 588 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_DESTINY_KNOT
# 589 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 590 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 591 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 592 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem::
# 593 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	bufferitemname STR_VAR_1, VAR_0x8004
# 594 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	buffernumberstring STR_VAR_2, VAR_0x8005
# 595 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PrizeChoiceCost, MSGBOX_YESNO
# 596 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_ReturnToCurrentPrizePage
# 597 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 598 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	compare VAR_TEMP_2, VAR_0x8005
# 599 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForPrize
# 600 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitemspace VAR_0x8004, 1
# 601 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoRoomForPrize
# 602 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins VAR_0x8005
# 603 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	additem VAR_0x8004, 1
# 604 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatecoinsbox 1, 1
# 605 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 606 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_HereYouGo, MSGBOX_DEFAULT
# 607 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ReturnToCurrentPrizePage
# 608 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 609 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 610 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForPrize::
# 611 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_NotEnoughCoins, MSGBOX_DEFAULT
# 612 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ReturnToCurrentPrizePage
# 613 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 614 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 615 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NoRoomForPrize::
# 616 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call Common_EventScript_BagIsFull
# 617 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ReturnToCurrentPrizePage
# 618 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 619 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 620 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ReturnToCurrentPrizePage::
# 621 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_TEMP_6
# 622 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case PRIZE_MENU_TMS, MauvilleCity_GameCorner_EventScript_OpenTMPrizeMenu
# 623 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case PRIZE_MENU_MINTS, MauvilleCity_GameCorner_EventScript_OpenMintPrizeMenu
# 624 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case PRIZE_MENU_TRAINING, MauvilleCity_GameCorner_EventScript_OpenTrainingPrizeMenu
# 625 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case PRIZE_MENU_EVOLUTION, MauvilleCity_GameCorner_EventScript_OpenEvolutionPrizeMenu
# 626 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 627 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 628 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 629 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CancelPrizeSelect::
# 630 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_OhIsThatSo, MSGBOX_DEFAULT
# 631 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 0
# 632 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 633 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 634 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 635 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Woman2::
# 636 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_CoinsAreNeededToPlay, MSGBOX_NPC
# 637 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 638 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 639 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_InfoClerk::
# 640 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 641 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 642 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_WelcomeToGameCorner, MSGBOX_DEFAULT
# 643 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_AskGameCornerInfo
# 644 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 645 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 646 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_AskGameCornerInfo::
# 647 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_WhatWouldYouLikeToKnow
# 648 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 649 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	multichoicedefault 16, 1, MULTI_GAME_CORNER_INFO, 0, FALSE
# 650 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 651 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_ExplainPrizes
# 652 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_ExplainCoinExchange
# 653 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_ExplainGames
# 654 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 3, MauvilleCity_GameCorner_EventScript_ExplainLottery
# 655 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_EndInfo
# 656 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 657 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 658 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ExplainPrizes::
# 659 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_InfoPrizes, MSGBOX_DEFAULT
# 660 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_AskGameCornerInfo
# 661 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 662 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 663 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ExplainCoinExchange::
# 664 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_InfoCoinExchange, MSGBOX_DEFAULT
# 665 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_AskGameCornerInfo
# 666 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 667 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 668 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ExplainGames::
# 669 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_InfoGames, MSGBOX_DEFAULT
# 670 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_AskGameCornerInfo
# 671 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 672 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 673 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ExplainLottery::
# 674 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_InfoLottery, MSGBOX_DEFAULT
# 675 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_AskGameCornerInfo
# 676 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 677 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 678 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_EndInfo::
# 679 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ComeAgainForInfo, MSGBOX_DEFAULT
# 680 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 681 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 682 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 683 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Gentleman::
# 684 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_RouletteOnlyLuck, MSGBOX_NPC
# 685 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 686 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 687 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Girl::
# 688 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 689 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 690 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_set FLAG_RECEIVED_STARTER_DOLL, MauvilleCity_GameCorner_EventScript_ReceivedStarterDoll
# 691 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_GotTwoOfSameDollWantOne, MSGBOX_YESNO
# 692 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_DeclineStarterDoll
# 693 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_STARTER_MON
# 694 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_GiveTreeckoDoll
# 695 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_GiveTorchicDoll
# 696 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_GiveMudkipDoll
# 697 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 698 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 699 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_GiveTreeckoDoll::
# 700 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	bufferdecorationname STR_VAR_2, DECOR_TREECKO_DOLL
# 701 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkdecorspace DECOR_TREECKO_DOLL
# 702 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoRoomForStarterDoll
# 703 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_HereYouGo2, MSGBOX_DEFAULT
# 704 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	givedecoration DECOR_TREECKO_DOLL
# 705 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setflag FLAG_RECEIVED_STARTER_DOLL
# 706 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ReceivedStarterDoll
# 707 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 708 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 709 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_GiveTorchicDoll::
# 710 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	bufferdecorationname STR_VAR_2, DECOR_TORCHIC_DOLL
# 711 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkdecorspace DECOR_TORCHIC_DOLL
# 712 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoRoomForStarterDoll
# 713 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_HereYouGo2, MSGBOX_DEFAULT
# 714 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	givedecoration DECOR_TORCHIC_DOLL
# 715 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setflag FLAG_RECEIVED_STARTER_DOLL
# 716 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ReceivedStarterDoll
# 717 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 718 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 719 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_GiveMudkipDoll::
# 720 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	bufferdecorationname STR_VAR_2, DECOR_MUDKIP_DOLL
# 721 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkdecorspace DECOR_MUDKIP_DOLL
# 722 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoRoomForStarterDoll
# 723 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_HereYouGo2, MSGBOX_DEFAULT
# 724 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	givedecoration DECOR_MUDKIP_DOLL
# 725 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setflag FLAG_RECEIVED_STARTER_DOLL
# 726 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ReceivedStarterDoll
# 727 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 728 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 729 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NoRoomForStarterDoll::
# 730 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call Common_EventScript_NoRoomForDecor
# 731 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_YouWantItButNotNow, MSGBOX_DEFAULT
# 732 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 733 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 734 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 735 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DeclineStarterDoll::
# 736 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_DontBeNegative, MSGBOX_DEFAULT
# 737 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 738 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 739 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 740 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ReceivedStarterDoll::
# 741 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_CantWinJackpot, MSGBOX_DEFAULT
# 742 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 743 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 744 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 745 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PokefanM::
# 746 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 747 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 748 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 749 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_GameCorner_EventScript_TryGive20Coins
# 750 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_NeedCoinCaseGoNextDoor, MSGBOX_DEFAULT
# 751 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
# 752 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 753 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 754 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_TryGive20Coins::
# 755 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_set FLAG_RECEIVED_20_COINS, MauvilleCity_GameCorner_EventScript_PokefanMNormal
# 756 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 757 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_ge VAR_TEMP_1, 1, MauvilleCity_GameCorner_EventScript_PokefanMNormal @ Only give 20 coins if player has no coins
# 758 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setflag FLAG_RECEIVED_20_COINS
# 759 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addcoins 20
# 760 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_LuckOnlyLastSoLongTakeCoins, MSGBOX_DEFAULT
# 761 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 762 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_PokefanMNormal
# 763 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 764 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 765 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PokefanMNormal::
# 766 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_MauvilleSomethingForEveryone, MSGBOX_DEFAULT
# 767 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
# 768 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 769 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 770 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_OldMan::
# 771 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 772 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 773 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_RouletteTablesDifferentRates, MSGBOX_DEFAULT
# 774 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
# 775 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 776 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 777 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Cook::
# 778 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 779 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 780 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_EasyToLoseTrackOfTime, MSGBOX_DEFAULT
# 781 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
# 782 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 783 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 784 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Man::
# 785 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 786 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 787 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_UpTo3CoinsCanBeUsed, MSGBOX_DEFAULT
# 788 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
# 789 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 790 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 791 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NPCReturnToSlots::
# 792 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 793 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
# 794 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmovement 0
# 795 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 796 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 797 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 798 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Maniac::
# 799 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 800 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 801 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_DifficultToStopOn7, MSGBOX_DEFAULT
# 802 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
# 803 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 804 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 805 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Woman::
# 806 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 807 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 808 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_HeresSomeSlotsInfo, MSGBOX_DEFAULT
# 809 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
# 810 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 811 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 812 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine0::
# 813 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 814 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 815 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 816 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 0
# 817 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 818 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addvar VAR_TEMP_1, SLOT_MACHINE_HIGH_STAKES_OFFSET
# 819 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 820 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 821 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager30, MSGBOX_YESNO
# 822 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 823 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 824 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 825 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 826 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 827 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 828 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine1::
# 829 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 830 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 831 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 832 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 1
# 833 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 834 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 835 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 836 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 837 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 838 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 839 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 840 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 841 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 842 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 843 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine2::
# 844 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 845 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 846 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 847 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 2
# 848 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 849 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 850 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 851 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 852 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 853 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 854 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 855 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 856 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 857 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 858 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine3::
# 859 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 860 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 861 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 862 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 3
# 863 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 864 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addvar VAR_TEMP_1, SLOT_MACHINE_HIGH_STAKES_OFFSET
# 865 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 866 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 867 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager30, MSGBOX_YESNO
# 868 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 869 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 870 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 871 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 872 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 873 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 874 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine4::
# 875 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 876 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 877 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 878 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 4
# 879 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 880 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 881 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 882 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 883 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 884 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 885 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 886 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 887 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 888 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 889 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine5::
# 890 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 891 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 892 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 893 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 5
# 894 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 895 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 896 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 897 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 898 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 899 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 900 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 901 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 902 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 903 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 904 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine6::
# 905 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 906 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 907 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 908 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 6
# 909 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 910 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 911 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 912 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 913 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 914 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 915 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 916 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 917 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 918 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 919 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine7::
# 920 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 921 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 922 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 923 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 7
# 924 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 925 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 926 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 927 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 928 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 929 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 930 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 931 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 932 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 933 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 934 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine8::
# 935 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 936 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 937 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 938 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 8
# 939 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 940 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 941 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 942 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 943 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 944 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 945 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 946 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 947 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 948 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 949 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine9::
# 950 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 951 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 952 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 953 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 9
# 954 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 955 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 956 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 957 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 958 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 959 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 960 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 961 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 962 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 963 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 964 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine10::
# 965 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 966 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 967 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 968 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 10
# 969 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 970 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 971 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 972 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 973 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 974 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 975 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 976 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 977 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 978 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 979 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine11::
# 980 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 981 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 982 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 983 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 11
# 984 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 985 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 986 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 987 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 988 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 989 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 990 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 991 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 992 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 993 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 994 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NoCoinCase::
# 995 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_CantPlayWithNoCoinCase, MSGBOX_DEFAULT
# 996 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 997 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 998 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 999 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CancelSlotMachine::
# 1000 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1001 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1002 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1003 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_ThisIsMauvilleGameCorner:
# 1004 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "This is MAUVILLE GAME CORNER.$"
# 1005 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1006 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_CoinExchangeATM:
# 1007 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "MAUVILLE GAME CORNER\n"
# 1008 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "COIN EXCHANGE ATM.$"
# 1009 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1010 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_NeedCoinCaseForCoins:
# 1011 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "COIN CASE not detected.\p"
# 1012 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Please obtain a COIN CASE before\n"
# 1013 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "using this ATM.$"
# 1014 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1015 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_SelectATMTransaction:
# 1016 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Select a transaction.$"
# 1017 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1018 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_SelectCoinsToPurchase:
# 1019 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Select the amount of COINS\n"
# 1020 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "to purchase.$"
# 1021 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1022 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_SelectCoinsToCashOut:
# 1023 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Select the amount of COINS\n"
# 1024 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "to exchange for cash.$"
# 1025 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1026 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_ATMDispensedCoins:
# 1027 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Transaction complete.\n"
# 1028 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "COINS dispensed.$"
# 1029 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1030 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_ATMDispensedMoney:
# 1031 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Transaction complete.\n"
# 1032 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Cash dispensed.$"
# 1033 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1034 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_DontHaveEnoughMoney:
# 1035 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Insufficient funds.\p"
# 1036 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Please insert more money and\n"
# 1037 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "try again.$"
# 1038 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1039 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_CoinCaseIsFull:
# 1040 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "COIN CASE capacity reached.\p"
# 1041 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Please use some COINS and\n"
# 1042 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "try again.$"
# 1043 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1044 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_DontNeedCoinsThen:
# 1045 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Transaction canceled.$"
# 1046 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1047 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_NotEnoughCoinsToCashOut:
# 1048 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Insufficient COINS.\p"
# 1049 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You do not have enough COINS for\n"
# 1050 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "that exchange.$"
# 1051 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1052 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_ExchangeCoinsForPrizes:
# 1053 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Welcome.\p"
# 1054 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You can exchange your COINS for\n"
# 1055 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "prizes here.$"
# 1056 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1057 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_WhichPrize:
# 1058 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Which prize would you like?$"
# 1059 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1060 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PrizeChoiceCost:
# 1061 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "{STR_VAR_1} costs {STR_VAR_2}\n"
# 1062 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "COINS. Is that okay?$"
# 1063 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1064 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_SoYourChoiceIsTheTMX:
# 1065 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "So your choice is\n"
# 1066 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "the {STR_VAR_1} {STR_VAR_2}?$"
# 1067 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1068 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_SendToYourHomePC:
# 1069 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Thank you!\n"
# 1070 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "We'll send it to your PC at home.$"
# 1071 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1072 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_NotEnoughCoins:
# 1073 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You don't have enough COINS.$"
# 1074 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1075 "data/maps/MauvilleCity_GameCorner/scripts.pory"
@ Unused
# 1076 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_NoRoomForPlacingDecor:
# 1077 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "There isn't any room available for\n"
# 1078 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "placing {STR_VAR_1}.$"
# 1079 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1080 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_OhIsThatSo:
# 1081 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Enjoy your time at the\n"
# 1082 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "GAME CORNER!$"
# 1083 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1084 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_SoYourChoiceIsX:
# 1085 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "So your choice is {STR_VAR_1}?$"
# 1086 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1087 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_HereYouGo:
# 1088 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Here you go!$"
# 1089 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1090 "data/maps/MauvilleCity_GameCorner/scripts.pory"
@ Unused
# 1091 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_CantCarryAnyMore:
# 1092 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Oh, you can't carry any more than that.$"
# 1093 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1094 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_GotTwoOfSameDollWantOne:
# 1095 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I made a mistake and got two of\n"
# 1096 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "the same DOLLS.\p"
# 1097 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Would you like one of them?$"
# 1098 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1099 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_HereYouGo2:
# 1100 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Here you go!$"
# 1101 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1102 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_YouWantItButNotNow:
# 1103 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Huh?\n"
# 1104 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You want it, but not right now?$"
# 1105 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1106 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_DontBeNegative:
# 1107 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Oh, don't be so negative!\n"
# 1108 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You can have this!$"
# 1109 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1110 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_CantWinJackpot:
# 1111 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "There's a prize I want, but I can't win\n"
# 1112 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "the jackpot.$"
# 1113 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1114 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_NeedCoinCaseGoNextDoor:
# 1115 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Hey, kid, if you want to play here,\n"
# 1116 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "you need a COIN CASE.\p"
# 1117 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I think the young lady next door\n"
# 1118 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "had one. Go see her!$"
# 1119 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1120 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_LuckOnlyLastSoLongTakeCoins:
# 1121 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "My luck can only last so long.\n"
# 1122 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "This is too much for me.\l"
# 1123 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Here, take some COINS!$"
# 1124 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1125 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_MauvilleSomethingForEveryone:
# 1126 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "MAUVILLE has something for\n"
# 1127 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "everyone.\p"
# 1128 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "For me, it's the GAME CORNER.$"
# 1129 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1130 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_RouletteTablesDifferentRates:
# 1131 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The ROULETTE tables have different\n"
# 1132 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "rates.\p"
# 1133 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Check your COINS if you're going to\n"
# 1134 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "pick a table.$"
# 1135 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1136 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_EasyToLoseTrackOfTime:
# 1137 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Our food is top notch and dirt cheap!\p"
# 1138 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The casino makes so much money off\n"
# 1139 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "gamblers, it's worth it to lure them\l"
# 1140 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "in with great food.$"
# 1141 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1142 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_CoinsAreNeededToPlay:
# 1143 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "COINS are needed to play here\n"
# 1144 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "in the GAME CORNER.$"
# 1145 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1146 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_RouletteOnlyLuck:
# 1147 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "This ROULETTE thing…\n"
# 1148 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "It's rather demanding.\p"
# 1149 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Win or lose, it's only by luck.$"
# 1150 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1151 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_UpTo3CoinsCanBeUsed:
# 1152 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Up to three COINS can be used to play\n"
# 1153 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "these SLOTS. If you want to bet more,\l"
# 1154 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "you can try the red machines.\p"
# 1155 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Be careful, though. I've seen people\n"
# 1156 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "lose everything to those.$"
# 1157 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1158 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_DifficultToStopOn7:
# 1159 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "It's very difficult to make it stop\n"
# 1160 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "right on “7.”\p"
# 1161 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "If it stops on “7” during the REEL TIME\n"
# 1162 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "bonus game, you'll receive extra COINS.$"
# 1163 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1164 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_HeresSomeSlotsInfo:
# 1165 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Here's some information for you\n"
# 1166 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "about the SLOTS.\p"
# 1167 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The more lightning bolts you stock,\n"
# 1168 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "the more REEL TIME chances you get.\p"
# 1169 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "In a game with the maximum five\n"
# 1170 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "REEL TIME chances…\p"
# 1171 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "It is possible to receive four regular\n"
# 1172 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "bonuses, then a big bonus.\p"
# 1173 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "That would total 660 COINS, but it's\n"
# 1174 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "very difficult to get.$"
# 1175 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1176 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_CantPlayWithNoCoinCase:
# 1177 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You can't play if you don't have\n"
# 1178 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "a COIN CASE.$"
# 1179 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1180 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_SlotMinimumWager3:
# 1181 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The minimum wager at this machine\n"
# 1182 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "is 1 COIN. Do you want to play?$"
# 1183 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1184 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_SlotMinimumWager30:
# 1185 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The minimum wager at this machine\n"
# 1186 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "is 10 COINS. Do you want to play?$"
# 1187 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1188 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_WelcomeToGameCorner:
# 1189 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Welcome to the MAUVILLE\n"
# 1190 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "GAME CORNER!$"
# 1191 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1192 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_WhatWouldYouLikeToKnow:
# 1193 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "What would you like to know\n"
# 1194 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "about?$"
# 1195 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1196 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_InfoPrizes:
# 1197 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You can exchange your COINS for\n"
# 1198 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "prizes with the ladies behind the\l"
# 1199 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "counter.\p"
# 1200 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "They offer TMs, MINTS, training\n"
# 1201 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "items, and evolution items.$"
# 1202 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1203 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_InfoCoinExchange:
# 1204 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "If you need to exchange COINS or\n"
# 1205 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "money, use the ATMs to the right\l"
# 1206 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "of the entrance.$"
# 1207 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1208 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_InfoGames:
# 1209 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "We offer high and low stakes SLOTS\n"
# 1210 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "and ROULETTE, plus PINBALL,\p"
# 1211 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "arcade games, VOLTORB FLIP,\n"
# 1212 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "BLACKJACK, and the DERBY.$"
# 1213 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1214 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_InfoLottery:
# 1215 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The three LOTTERY machines are\n"
# 1216 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "behind the prize counter.\p"
# 1217 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "BASIC, GREAT, and ULTRA machines\n"
# 1218 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "have different wager tiers,\p"
# 1219 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "and each one can award COMMON,\n"
# 1220 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "UNCOMMON, RARE, or ULTRA-RARE\l"
# 1221 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "POKeMON.$"
# 1222 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1223 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_ComeAgainForInfo:
# 1224 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Please enjoy your time at the\n"
# 1225 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "GAME CORNER!$"
# 1226 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1227 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc1::
# 1228 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1229 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1230 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder1, MSGBOX_DEFAULT
# 1231 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	applymovement VAR_LAST_TALKED, MauvilleCity_GameCorner_Movement_PlaceholderFaceDown
# 1232 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmovement 0
# 1233 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1234 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1235 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1236 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc2::
# 1237 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1238 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1239 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder2, MSGBOX_DEFAULT
# 1240 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	applymovement VAR_LAST_TALKED, MauvilleCity_GameCorner_Movement_PlaceholderFaceDown
# 1241 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmovement 0
# 1242 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1243 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1244 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1245 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc3::
# 1246 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1247 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1248 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder3, MSGBOX_DEFAULT
# 1249 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1250 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1251 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1252 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc4::
# 1253 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1254 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1255 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder4, MSGBOX_DEFAULT
# 1256 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1257 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1258 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1259 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc5::
# 1260 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1261 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder5, MSGBOX_DEFAULT
# 1262 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1263 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1264 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1265 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Movement_PlaceholderFaceDown:
# 1266 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	face_down
# 1267 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	step_end
# 1268 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1269 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc6::
# 1270 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1271 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1272 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder6, MSGBOX_DEFAULT
# 1273 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1274 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1275 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1276 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc7::
# 1277 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1278 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1279 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder7, MSGBOX_DEFAULT
# 1280 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1281 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1282 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1283 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc8::
# 1284 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1285 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1286 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder8, MSGBOX_DEFAULT
# 1287 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1288 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1289 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1290 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc9::
# 1291 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1292 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1293 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder9, MSGBOX_DEFAULT
# 1294 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1295 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1296 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1297 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc10::
# 1298 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1299 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1300 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder10, MSGBOX_DEFAULT
# 1301 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1302 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1303 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1304 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc11::
# 1305 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1306 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1307 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder11, MSGBOX_DEFAULT
# 1308 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1309 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1310 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1311 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc12::
# 1312 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1313 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1314 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder12, MSGBOX_DEFAULT
# 1315 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1316 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1317 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1318 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc13::
# 1319 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1320 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1321 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder13, MSGBOX_DEFAULT
# 1322 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1323 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1324 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1325 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc14::
# 1326 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1327 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1328 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder14, MSGBOX_DEFAULT
# 1329 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1330 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1331 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1332 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc15::
# 1333 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1334 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1335 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder15, MSGBOX_DEFAULT
# 1336 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1337 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1338 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1339 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc16::
# 1340 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1341 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1342 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder16, MSGBOX_DEFAULT
# 1343 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1344 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1345 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1346 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc17::
# 1347 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1348 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1349 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder17, MSGBOX_DEFAULT
# 1350 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1351 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1352 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1353 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderSign1::
# 1354 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder18, MSGBOX_SIGN
# 1355 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1356 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1357 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder1:
# 1358 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Hello! If you want to play blackjack,\n"
# 1359 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "please choose a spot at the table.$"
# 1360 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1361 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder2:
# 1362 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Hello! If you want to play blackjack,\n"
# 1363 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "please choose a spot at the table.$"
# 1364 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1365 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder3:
# 1366 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I'm a pro at this game!\p"
# 1367 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Bet you can't beat my high score!$"
# 1368 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1369 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder4:
# 1370 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The low stakes slots are a nice place\n"
# 1371 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "to spend an evening if you want a\l"
# 1372 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "little excitement without much risk.$"
# 1373 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1374 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder5:
# 1375 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The woman is rubbing and tapping the\n"
# 1376 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "screen as if performing a ritual.\p"
# 1377 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "She doesn't notice you at all.$"
# 1378 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1379 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder6:
# 1380 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "My mom says pinball is the only\n"
# 1381 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "game I'm allowed to play in here.\p"
# 1382 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Just once, though, I'd like to try\n"
# 1383 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "something more exciting!$"
# 1384 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1385 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder7:
# 1386 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I just come here for the pinball.\n"
# 1387 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You can't lose your entire savings\l"
# 1388 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "on pinball!$"
# 1389 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1390 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder8:
# 1391 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "My wife always paces around nervously\n"
# 1392 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "while I'm here.\p"
# 1393 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Just you wait. I'll make us rich!$"
# 1394 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1395 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder9:
# 1396 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I have enough money that losing here\n"
# 1397 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "doesn't bother me. I just like to\l"
# 1398 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "watch the races.$"
# 1399 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1400 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder10:
# 1401 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Uh... I really have no idea which\n"
# 1402 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Pokemon to bet on. Got any suggestions?$"
# 1403 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1404 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder11:
# 1405 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "My husband spends all day here betting\n"
# 1406 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "on races. We've just barely been\l"
# 1407 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "breaking even.\p"
# 1408 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Hopefully he doesn't lose our entire\n"
# 1409 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "retirement fund...$"
# 1410 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1411 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder12:
# 1412 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I brought my girlfriend here on a\n"
# 1413 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "date, but I didn't expect our luck to\l"
# 1414 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "be this good!\p"
# 1415 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Our next date will be on a cruise!$"
# 1416 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1417 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder13:
# 1418 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "My boyfriend is on a winning streak!$"
# 1419 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1420 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder14:
# 1421 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I've already spent so many credits\n"
# 1422 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "on the gacha machines here...\p"
# 1423 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Well, surely a little more won't hurt!$"
# 1424 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1425 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder15:
# 1426 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I lost everything...\p"
# 1427 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I can't even afford a drink to\n"
# 1428 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "drown my sorrows.$"
# 1429 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1430 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder16:
# 1431 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "My husband and I come here for\n"
# 1432 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "date nights. The food is fantastic!$"
# 1433 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1434 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder17:
# 1435 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The food here is a great deal\n"
# 1436 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "because they expect to make money\l"
# 1437 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "off you in other ways.\p"
# 1438 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The key is to not gamble!$"
# 1439 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1440 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder18:
# 1441 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "It's a Pokemon race! Place your\n"
# 1442 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "bet at the terminals on either side.$"
# 1443 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1444 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1445 "data/maps/MauvilleCity_GameCorner/scripts.pory"
@ ============================================================
# 1446 "data/maps/MauvilleCity_GameCorner/scripts.pory"
@ DEBUG - acesso direto sem custo (remover antes do release)
# 1447 "data/maps/MauvilleCity_GameCorner/scripts.pory"
@ ============================================================
# 1448 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1449 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugGacha::
# 1450 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1451 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 1
# 1452 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special StartGacha
# 1453 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1454 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1455 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1456 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1457 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_GachaBasic::
# 1458 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1459 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1460 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1461 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1462 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, 100, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1463 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1464 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayGachaBasic, MSGBOX_YESNO
# 1465 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1466 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1467 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 1
# 1468 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special StartGacha
# 1469 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1470 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_HandleGachaResult
# 1471 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1472 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1473 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1474 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_GachaGreat::
# 1475 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1476 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1477 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1478 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1479 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, 500, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1480 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1481 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayGachaGreat, MSGBOX_YESNO
# 1482 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1483 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1484 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 2
# 1485 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special StartGacha
# 1486 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1487 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_HandleGachaResult
# 1488 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1489 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1490 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1491 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_GachaUltra::
# 1492 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1493 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1494 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1495 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1496 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, 2000, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1497 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1498 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayGachaUltra, MSGBOX_YESNO
# 1499 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1500 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1501 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 3
# 1502 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special StartGacha
# 1503 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1504 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_HandleGachaResult
# 1505 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1506 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1507 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1508 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugBlackjack::
# 1509 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1510 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1511 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1512 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1513 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1514 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayBlackjack, MSGBOX_YESNO
# 1515 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1516 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1517 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special StartBlackJack
# 1518 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1519 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1520 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1521 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1522 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1523 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugPinball::
# 1524 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1525 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1526 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1527 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1528 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, PINBALL_MEOWTH_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1529 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1530 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayPinballMeowth, MSGBOX_YESNO
# 1531 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1532 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1533 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins PINBALL_MEOWTH_COINS
# 1534 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 1535 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1536 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	callnative PlayMeowthPinballGame
# 1537 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1538 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
# 1539 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1540 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1541 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1542 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1543 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugPinballDiglett::
# 1544 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1545 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1546 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1547 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1548 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, PINBALL_DIGLETT_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1549 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1550 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayPinballDiglett, MSGBOX_YESNO
# 1551 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1552 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1553 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins PINBALL_DIGLETT_COINS
# 1554 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 1555 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1556 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	callnative PlayDiglettPinballGame
# 1557 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1558 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
# 1559 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1560 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1561 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1562 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1563 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugPinballSeel::
# 1564 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1565 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1566 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1567 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1568 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, PINBALL_SEEL_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1569 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1570 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayPinballSeel, MSGBOX_YESNO
# 1571 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1572 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1573 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins PINBALL_SEEL_COINS
# 1574 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 1575 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1576 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	callnative PlaySeelPinballGame
# 1577 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1578 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
# 1579 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1580 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1581 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1582 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1583 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugPinballGengar::
# 1584 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1585 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1586 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1587 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1588 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, PINBALL_GENGAR_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1589 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1590 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayPinballGengar, MSGBOX_YESNO
# 1591 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1592 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1593 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins PINBALL_GENGAR_COINS
# 1594 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 1595 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1596 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	callnative PlayGengarPinballGame
# 1597 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1598 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
# 1599 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1600 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1601 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1602 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1603 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugFlappy::
# 1604 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1605 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1606 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1607 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1608 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, FLAPPY_BIRD_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1609 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1610 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayFlappyBird, MSGBOX_YESNO
# 1611 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1612 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1613 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins FLAPPY_BIRD_COINS
# 1614 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 1615 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1616 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	callnative StartFlappyBird
# 1617 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1618 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
# 1619 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1620 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1621 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1622 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1623 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugSnake::
# 1624 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1625 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1626 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1627 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1628 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, SNAKE_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1629 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1630 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlaySnake, MSGBOX_YESNO
# 1631 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1632 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1633 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins SNAKE_COINS
# 1634 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 1635 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1636 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special StartSnake
# 1637 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1638 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
# 1639 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1640 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1641 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1642 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1643 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugBlockStacker::
# 1644 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1645 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1646 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1647 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1648 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, BLOCK_STACKER_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1649 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1650 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayBlockStacker, MSGBOX_YESNO
# 1651 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1652 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1653 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins BLOCK_STACKER_COINS
# 1654 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 1655 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1656 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special StartBlockStacker
# 1657 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1658 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
# 1659 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1660 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1661 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1662 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1663 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugPachinko::
# 1664 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1665 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1666 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1667 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1668 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, PACHINKO_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1669 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1670 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayPachinko, MSGBOX_YESNO
# 1671 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1672 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1673 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	callnative PlayPachinko
# 1674 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1675 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1676 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1677 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1678 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1679 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugVoltorbFlip::
# 1680 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1681 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1682 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1683 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1684 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, VOLTORB_FLIP_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1685 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1686 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayVoltorbFlip, MSGBOX_YESNO
# 1687 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1688 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1689 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins VOLTORB_FLIP_COINS
# 1690 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 1691 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1692 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special Special_ViewVoltorbFlip
# 1693 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1694 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipHandleResult
# 1695 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1696 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1697 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1698 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1699 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipHandleResult::
# 1700 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, 1, MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipKeepGoing
# 1701 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1702 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1703 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1704 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipKeepGoing::
# 1705 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	buffernumberstring STR_VAR_1, VAR_TEMP_4
# 1706 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_DebugVoltorbFlipKeepGoing, MSGBOX_YESNO
# 1707 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1708 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipCashOut
# 1709 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special Special_ViewVoltorbFlip
# 1710 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1711 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipHandleResult
# 1712 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1713 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipCashOut::
# 1714 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addcoins VAR_TEMP_4
# 1715 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1716 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1717 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1718 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugDerby::
# 1719 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1720 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1721 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1722 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1723 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, DERBY_MIN_BET_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1724 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1725 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayDerby, MSGBOX_YESNO
# 1726 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1727 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1728 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1729 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special StartDerby
# 1730 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1731 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
# 1732 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1733 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1734 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1735 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1736 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame::
# 1737 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1738 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1739 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1740 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_HandleGachaResult::
# 1741 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_TEMP_5, FALSE, MauvilleCity_GameCorner_EventScript_NoGachaRefundMessage
# 1742 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	buffernumberstring STR_VAR_1, VAR_TEMP_4
# 1743 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_GachaRefundExtraCoins, MSGBOX_DEFAULT
# 1744 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1745 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_5, FALSE
# 1746 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1747 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1748 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NoGachaRefundMessage::
# 1749 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1750 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1751 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame::
# 1752 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_NotEnoughCoins, MSGBOX_DEFAULT
# 1753 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1754 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1755 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1756 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings::
# 1757 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_TEMP_4, 0, MauvilleCity_GameCorner_EventScript_NoDebugMinigameWinnings
# 1758 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addcoins VAR_TEMP_4
# 1759 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1760 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1761 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1762 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NoDebugMinigameWinnings::
# 1763 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1764 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1765 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult::
# 1766 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins GAME_CORNER_VAR_CURRENT_COINS
# 1767 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	compare GAME_CORNER_VAR_CURRENT_COINS, GAME_CORNER_VAR_START_COINS
# 1768 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq MauvilleCity_GameCorner_EventScript_ArcadeCoinResultEven
# 1769 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_gt MauvilleCity_GameCorner_EventScript_ArcadeCoinResultWon
# 1770 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_COIN_DELTA, GAME_CORNER_VAR_START_COINS
# 1771 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	subvar GAME_CORNER_VAR_COIN_DELTA, GAME_CORNER_VAR_CURRENT_COINS
# 1772 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	buffernumberstring STR_VAR_1, GAME_CORNER_VAR_COIN_DELTA
# 1773 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ArcadeCoinsLost, MSGBOX_DEFAULT
# 1774 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1775 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1776 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ArcadeCoinResultWon::
# 1777 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_COIN_DELTA, GAME_CORNER_VAR_CURRENT_COINS
# 1778 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	subvar GAME_CORNER_VAR_COIN_DELTA, GAME_CORNER_VAR_START_COINS
# 1779 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	buffernumberstring STR_VAR_1, GAME_CORNER_VAR_COIN_DELTA
# 1780 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ArcadeCoinsWon, MSGBOX_DEFAULT
# 1781 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1782 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1783 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ArcadeCoinResultEven::
# 1784 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ArcadeCoinsEven, MSGBOX_DEFAULT
# 1785 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1786 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1787 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayPinballMeowth:
# 1788 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play MEOWTH PINBALL for\n"
# 1789 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "25 COINS?$"
# 1790 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1791 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayGachaBasic:
# 1792 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play BASIC GACHA for\n"
# 1793 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "100 COINS?$"
# 1794 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1795 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayGachaGreat:
# 1796 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play GREAT GACHA for\n"
# 1797 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "500 COINS?$"
# 1798 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1799 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayGachaUltra:
# 1800 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play ULTRA GACHA for\n"
# 1801 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "2000 COINS?$"
# 1802 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1803 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_GachaRefundExtraCoins:
# 1804 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You've already collected every\n"
# 1805 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "possible POKeMON from this machine.\p"
# 1806 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "We refunded the extra {STR_VAR_1}\n"
# 1807 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "COINS from your wager.$"
# 1808 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1809 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayPinballDiglett:
# 1810 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play DIGLETT PINBALL for\n"
# 1811 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "50 COINS?$"
# 1812 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1813 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayPinballSeel:
# 1814 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play SEEL PINBALL for\n"
# 1815 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "25 COINS?$"
# 1816 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1817 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayPinballGengar:
# 1818 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play GENGAR PINBALL for\n"
# 1819 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "100 COINS?$"
# 1820 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1821 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayFlappyBird:
# 1822 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play FLUTTERFREE for\n"
# 1823 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "25 COINS?$"
# 1824 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1825 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlaySnake:
# 1826 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play ONIX for\n"
# 1827 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "25 COINS?$"
# 1828 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1829 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayBlockStacker:
# 1830 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play BLOCK BUILDER for\n"
# 1831 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "25 COINS?$"
# 1832 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1833 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayPachinko:
# 1834 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play PACHINKO?\p"
# 1835 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Each drop costs 3 COINS.$"
# 1836 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1837 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_DebugVoltorbFlipKeepGoing:
# 1838 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Current winnings: {STR_VAR_1} COINS.\p"
# 1839 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Keep going?$"
# 1840 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1841 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayVoltorbFlip:
# 1842 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play VOLTORB FLIP for\n"
# 1843 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "50 COINS?$"
# 1844 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1845 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayDerby:
# 1846 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Enter the MAUVILLE DERBY?\p"
# 1847 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Bets start at 10 COINS.$"
# 1848 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1849 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayBlackjack:
# 1850 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play BLACKJACK?$"
# 1851 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1852 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_ArcadeCoinsWon:
# 1853 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You're up {STR_VAR_1} COINS!$"
# 1854 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1855 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_ArcadeCoinsLost:
# 1856 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You're down {STR_VAR_1} COINS!$"
# 1857 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1858 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_ArcadeCoinsEven:
# 1859 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You're even on COINS.$"
