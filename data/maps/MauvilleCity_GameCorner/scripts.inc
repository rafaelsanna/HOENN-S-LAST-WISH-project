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
	.set VENDING_GUMMY_WURMPLES_PRICE, 450
# 18 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set VENDING_SKITTIES_PRICE, 500
# 19 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set VENDING_NUMEL_NOUGAT_PRICE, 550
# 20 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PRIZE_MENU_TMS, 1
# 21 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PRIZE_MENU_MINTS, 2
# 22 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PRIZE_MENU_TRAINING, 3
# 23 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PRIZE_MENU_EVOLUTION, 4
# 24 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 25 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set COINS_PRICE_50,  1000
# 26 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set COINS_PRICE_500, 10000
# 27 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set COINS_PRICE_1000, 20000
# 28 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set COINS_PRICE_5000, 100000
# 29 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set SLOT_MACHINE_HIGH_STAKES_OFFSET, 6
# 30 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PINBALL_MEOWTH_COINS, 25
# 31 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PINBALL_DIGLETT_COINS, 50
# 32 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PINBALL_SEEL_COINS, 25
# 33 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PINBALL_GENGAR_COINS, 100
# 34 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set FLAPPY_BIRD_COINS, 25
# 35 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set SNAKE_COINS, 25
# 36 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set BLOCK_STACKER_COINS, 25
# 37 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set PACHINKO_COINS, 3
# 38 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set VOLTORB_FLIP_COINS, 50
# 39 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set DERBY_MIN_BET_COINS, 10
# 40 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set GAME_CORNER_VAR_START_COINS, VAR_0x8008
# 41 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set GAME_CORNER_VAR_CURRENT_COINS, VAR_0x8009
# 42 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.set GAME_CORNER_VAR_COIN_DELTA, VAR_0x800A
# 43 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 44 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CoinsClerk::
# 45 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 46 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_CoinExchangeATM, MSGBOX_DEFAULT
# 47 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 48 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NeedCoinCase
# 49 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_SelectATMTransaction
# 50 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 51 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	showmoneybox 0, 0
# 52 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	showcoinsbox 1, 6
# 53 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ChooseATMTransaction
# 54 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 55 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ChooseATMTransaction::
# 56 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	multichoicedefault 15, 0, MULTI_GAME_CORNER_ATM, 0, FALSE
# 57 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 58 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_ChooseCoinsDefault50
# 59 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_ChooseCashOutDefault50
# 60 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelBuyCoins
# 61 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 62 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 63 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ChooseCoinsDefault50::
# 64 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_SelectCoinsToPurchase
# 65 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 66 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	multichoicedefault 15, 0, MULTI_GAME_CORNER_COINS, 0, FALSE
# 67 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 68 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_Buy50Coins
# 69 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_Buy500Coins
# 70 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_Buy1000Coins
# 71 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 3, MauvilleCity_GameCorner_EventScript_Buy5000Coins
# 72 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelBuyCoins
# 73 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 74 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 75 "data/maps/MauvilleCity_GameCorner/scripts.pory"
@ Unused
# 76 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ChooseCoinsDefault500::
# 77 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_SelectCoinsToPurchase
# 78 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 79 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	multichoicedefault 15, 0, MULTI_GAME_CORNER_COINS, 1, FALSE
# 80 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 81 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_Buy50Coins
# 82 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_Buy500Coins
# 83 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_Buy1000Coins
# 84 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 3, MauvilleCity_GameCorner_EventScript_Buy5000Coins
# 85 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelBuyCoins
# 86 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 87 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 88 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ChooseCashOutDefault50::
# 89 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_SelectCoinsToCashOut
# 90 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 91 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	multichoicedefault 15, 0, MULTI_GAME_CORNER_CASH_OUT, 0, FALSE
# 92 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 93 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_CashOut50Coins
# 94 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_CashOut500Coins
# 95 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_CashOut1000Coins
# 96 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 3, MauvilleCity_GameCorner_EventScript_CashOut5000Coins
# 97 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelBuyCoins
# 98 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 99 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 100 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Buy50Coins::
# 101 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 102 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_ge VAR_TEMP_1, (MAX_COINS + 1 - 50), MauvilleCity_GameCorner_EventScript_NoRoomForCoins
# 103 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkmoney COINS_PRICE_50
# 104 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NotEnoughMoney
# 105 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addcoins 50
# 106 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removemoney COINS_PRICE_50
# 107 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatemoneybox
# 108 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatecoinsbox 1, 6
# 109 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 110 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedCoins, MSGBOX_DEFAULT
# 111 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 112 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 113 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 114 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 115 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 116 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Buy500Coins::
# 117 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 118 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_ge VAR_TEMP_1, (MAX_COINS + 1 - 500), MauvilleCity_GameCorner_EventScript_NoRoomForCoins
# 119 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkmoney COINS_PRICE_500
# 120 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NotEnoughMoney
# 121 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addcoins 500
# 122 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removemoney COINS_PRICE_500
# 123 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatemoneybox
# 124 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatecoinsbox 1, 6
# 125 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 126 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedCoins, MSGBOX_DEFAULT
# 127 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 128 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 129 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 130 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 131 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 132 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Buy1000Coins::
# 133 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 134 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_ge VAR_TEMP_1, (MAX_COINS + 1 - 1000), MauvilleCity_GameCorner_EventScript_NoRoomForCoins
# 135 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkmoney COINS_PRICE_1000
# 136 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NotEnoughMoney
# 137 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addcoins 1000
# 138 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removemoney COINS_PRICE_1000
# 139 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatemoneybox
# 140 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatecoinsbox 1, 6
# 141 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 142 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedCoins, MSGBOX_DEFAULT
# 143 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 144 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 145 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 146 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 147 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 148 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Buy5000Coins::
# 149 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 150 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_ge VAR_TEMP_1, (MAX_COINS + 1 - 5000), MauvilleCity_GameCorner_EventScript_NoRoomForCoins
# 151 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkmoney COINS_PRICE_5000
# 152 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NotEnoughMoney
# 153 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addcoins 5000
# 154 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removemoney COINS_PRICE_5000
# 155 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatemoneybox
# 156 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatecoinsbox 1, 6
# 157 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 158 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedCoins, MSGBOX_DEFAULT
# 159 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 160 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 161 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 162 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 163 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 164 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CashOut50Coins::
# 165 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 166 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, 50, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsToCashOut
# 167 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins 50
# 168 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addmoney COINS_PRICE_50, 0
# 169 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatemoneybox
# 170 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatecoinsbox 1, 6
# 171 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 172 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedMoney, MSGBOX_DEFAULT
# 173 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 174 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 175 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 176 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 177 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 178 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CashOut500Coins::
# 179 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 180 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, 500, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsToCashOut
# 181 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins 500
# 182 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addmoney COINS_PRICE_500, 0
# 183 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatemoneybox
# 184 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatecoinsbox 1, 6
# 185 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 186 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedMoney, MSGBOX_DEFAULT
# 187 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 188 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 189 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 190 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 191 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 192 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CashOut1000Coins::
# 193 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 194 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, 1000, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsToCashOut
# 195 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins 1000
# 196 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addmoney COINS_PRICE_1000, 0
# 197 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatemoneybox
# 198 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatecoinsbox 1, 6
# 199 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 200 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedMoney, MSGBOX_DEFAULT
# 201 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 202 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 203 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 204 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 205 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 206 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CashOut5000Coins::
# 207 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 208 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, 5000, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsToCashOut
# 209 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins 5000
# 210 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addmoney COINS_PRICE_5000, 0
# 211 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatemoneybox
# 212 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatecoinsbox 1, 6
# 213 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 214 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ATMDispensedMoney, MSGBOX_DEFAULT
# 215 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 216 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 217 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 218 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 219 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 220 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NeedCoinCase::
# 221 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_NeedCoinCaseForCoins, MSGBOX_DEFAULT
# 222 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 223 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 224 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 225 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NotEnoughMoney::
# 226 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_DontHaveEnoughMoney, MSGBOX_DEFAULT
# 227 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 228 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 229 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 230 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 231 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 232 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CancelBuyCoins::
# 233 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_DontNeedCoinsThen, MSGBOX_DEFAULT
# 234 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 235 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 236 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 237 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 238 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 239 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NoRoomForCoins::
# 240 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_CoinCaseIsFull, MSGBOX_DEFAULT
# 241 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 242 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 243 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 244 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 245 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 246 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NotEnoughCoinsToCashOut::
# 247 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_NotEnoughCoinsToCashOut, MSGBOX_DEFAULT
# 248 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 249 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 5
# 250 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 251 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 252 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 253 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeCornerMints::
# 254 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 255 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 256 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ExchangeCoinsForPrizes, MSGBOX_DEFAULT
# 257 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 258 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_GameCorner_EventScript_OpenMintPrizeMenu
# 259 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 260 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 261 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 262 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeCornerTraining::
# 263 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 264 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 265 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ExchangeCoinsForPrizes, MSGBOX_DEFAULT
# 266 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 267 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_GameCorner_EventScript_OpenTrainingPrizeMenu
# 268 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 269 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 270 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 271 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeCornerEvolution::
# 272 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 273 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 274 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ExchangeCoinsForPrizes, MSGBOX_DEFAULT
# 275 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 276 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_GameCorner_EventScript_OpenEvolutionPrizeMenu
# 277 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 278 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 279 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 280 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeCornerTMs::
# 281 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 282 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 283 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ExchangeCoinsForPrizes, MSGBOX_DEFAULT
# 284 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 285 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_GameCorner_EventScript_OpenTMPrizeMenu
# 286 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 287 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 288 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 289 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_OpenTMPrizeMenu::
# 290 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_WhichPrize
# 291 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 292 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	showcoinsbox 1, 1
# 293 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_6, PRIZE_MENU_TMS
# 294 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, SCROLL_MULTI_GAME_CORNER_TMS
# 295 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special ShowScrollableMultichoice
# 296 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 297 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 298 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_TMDoubleTeam
# 299 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_TMPsychic
# 300 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_TMFlamethrower
# 301 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 3, MauvilleCity_GameCorner_EventScript_TMThunderbolt
# 302 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 4, MauvilleCity_GameCorner_EventScript_TMIceBeam
# 303 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 5, MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 304 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 305 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 306 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 307 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_TMDoubleTeam::
# 308 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_TM_DOUBLE_TEAM
# 309 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TM_DOUBLE_TEAM_COINS
# 310 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 311 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 312 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_TMPsychic::
# 313 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_TM_PSYCHIC
# 314 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TM_PSYCHIC_COINS
# 315 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 316 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 317 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_TMFlamethrower::
# 318 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_TM_FLAMETHROWER
# 319 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TM_FLAMETHROWER_COINS
# 320 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 321 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 322 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_TMThunderbolt::
# 323 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_TM_THUNDERBOLT
# 324 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TM_THUNDERBOLT_COINS
# 325 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 326 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 327 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_TMIceBeam::
# 328 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_TM_ICE_BEAM
# 329 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TM_ICE_BEAM_COINS
# 330 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 331 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 332 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_OpenMintPrizeMenu::
# 333 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_WhichPrize
# 334 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 335 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	showcoinsbox 1, 1
# 336 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_6, PRIZE_MENU_MINTS
# 337 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, SCROLL_MULTI_GAME_CORNER_MINTS
# 338 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special ShowScrollableMultichoice
# 339 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 340 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 341 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_PrizeLonelyMint
# 342 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_PrizeAdamantMint
# 343 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_PrizeNaughtyMint
# 344 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 3, MauvilleCity_GameCorner_EventScript_PrizeBraveMint
# 345 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 4, MauvilleCity_GameCorner_EventScript_PrizeBoldMint
# 346 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 5, MauvilleCity_GameCorner_EventScript_PrizeImpishMint
# 347 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 6, MauvilleCity_GameCorner_EventScript_PrizeLaxMint
# 348 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 7, MauvilleCity_GameCorner_EventScript_PrizeRelaxedMint
# 349 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 8, MauvilleCity_GameCorner_EventScript_PrizeModestMint
# 350 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 9, MauvilleCity_GameCorner_EventScript_PrizeMildMint
# 351 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 10, MauvilleCity_GameCorner_EventScript_PrizeRashMint
# 352 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 11, MauvilleCity_GameCorner_EventScript_PrizeQuietMint
# 353 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 12, MauvilleCity_GameCorner_EventScript_PrizeCalmMint
# 354 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 13, MauvilleCity_GameCorner_EventScript_PrizeGentleMint
# 355 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 14, MauvilleCity_GameCorner_EventScript_PrizeCarefulMint
# 356 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 15, MauvilleCity_GameCorner_EventScript_PrizeSassyMint
# 357 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 16, MauvilleCity_GameCorner_EventScript_PrizeTimidMint
# 358 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 17, MauvilleCity_GameCorner_EventScript_PrizeHastyMint
# 359 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 18, MauvilleCity_GameCorner_EventScript_PrizeJollyMint
# 360 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 19, MauvilleCity_GameCorner_EventScript_PrizeNaiveMint
# 361 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 20, MauvilleCity_GameCorner_EventScript_PrizeSeriousMint
# 362 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 21, MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 363 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 364 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 365 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 366 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_OpenTrainingPrizeMenu::
# 367 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_WhichPrize
# 368 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 369 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	showcoinsbox 1, 1
# 370 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_6, PRIZE_MENU_TRAINING
# 371 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, SCROLL_MULTI_GAME_CORNER_TRAINING
# 372 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special ShowScrollableMultichoice
# 373 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 374 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 375 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_PrizeAbilityPatch
# 376 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_PrizeAbilityCapsule
# 377 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_PrizeHpUp
# 378 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 3, MauvilleCity_GameCorner_EventScript_PrizeProtein
# 379 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 4, MauvilleCity_GameCorner_EventScript_PrizeIron
# 380 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 5, MauvilleCity_GameCorner_EventScript_PrizeCalcium
# 381 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 6, MauvilleCity_GameCorner_EventScript_PrizeZinc
# 382 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 7, MauvilleCity_GameCorner_EventScript_PrizeCarbos
# 383 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 8, MauvilleCity_GameCorner_EventScript_PrizePpUp
# 384 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 9, MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 385 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 386 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 387 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 388 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_OpenEvolutionPrizeMenu::
# 389 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_WhichPrize
# 390 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 391 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	showcoinsbox 1, 1
# 392 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_6, PRIZE_MENU_EVOLUTION
# 393 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, SCROLL_MULTI_GAME_CORNER_EVOLUTION
# 394 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special ShowScrollableMultichoice
# 395 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 396 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 397 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_PrizeDawnStone
# 398 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_PrizeDuskStone
# 399 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_PrizeIceStone
# 400 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 3, MauvilleCity_GameCorner_EventScript_PrizeLinkingCord
# 401 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 4, MauvilleCity_GameCorner_EventScript_PrizeReaperCloth
# 402 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 5, MauvilleCity_GameCorner_EventScript_PrizePeatBlock
# 403 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 6, MauvilleCity_GameCorner_EventScript_PrizeShinyStone
# 404 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 7, MauvilleCity_GameCorner_EventScript_PrizeBlackAugurite
# 405 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 8, MauvilleCity_GameCorner_EventScript_PrizeLoadedDice
# 406 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 9, MauvilleCity_GameCorner_EventScript_PrizeAmuletCoin
# 407 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 10, MauvilleCity_GameCorner_EventScript_PrizeRazorClaw
# 408 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 11, MauvilleCity_GameCorner_EventScript_PrizeRazorFang
# 409 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 12, MauvilleCity_GameCorner_EventScript_PrizeDestinyKnot
# 410 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 13, MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 411 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 412 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 413 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 414 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeLonelyMint::
# 415 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_LONELY_MINT
# 416 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 417 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 418 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 419 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeAdamantMint::
# 420 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_ADAMANT_MINT
# 421 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 422 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 423 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 424 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeNaughtyMint::
# 425 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_NAUGHTY_MINT
# 426 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 427 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 428 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 429 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeBraveMint::
# 430 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_BRAVE_MINT
# 431 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 432 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 433 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 434 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeBoldMint::
# 435 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_BOLD_MINT
# 436 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 437 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 438 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 439 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeImpishMint::
# 440 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_IMPISH_MINT
# 441 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 442 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 443 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 444 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeLaxMint::
# 445 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_LAX_MINT
# 446 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 447 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 448 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 449 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeRelaxedMint::
# 450 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_RELAXED_MINT
# 451 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 452 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 453 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 454 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeModestMint::
# 455 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_MODEST_MINT
# 456 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 457 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 458 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 459 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeMildMint::
# 460 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_MILD_MINT
# 461 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 462 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 463 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 464 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeRashMint::
# 465 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_RASH_MINT
# 466 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 467 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 468 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 469 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeQuietMint::
# 470 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_QUIET_MINT
# 471 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 472 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 473 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 474 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeCalmMint::
# 475 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_CALM_MINT
# 476 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 477 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 478 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 479 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeGentleMint::
# 480 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_GENTLE_MINT
# 481 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 482 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 483 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 484 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeCarefulMint::
# 485 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_CAREFUL_MINT
# 486 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 487 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 488 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 489 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeSassyMint::
# 490 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_SASSY_MINT
# 491 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 492 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 493 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 494 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeTimidMint::
# 495 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_TIMID_MINT
# 496 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 497 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 498 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 499 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeHastyMint::
# 500 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_HASTY_MINT
# 501 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 502 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 503 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 504 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeJollyMint::
# 505 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_JOLLY_MINT
# 506 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 507 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 508 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 509 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeNaiveMint::
# 510 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_NAIVE_MINT
# 511 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 512 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 513 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 514 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeSeriousMint::
# 515 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_SERIOUS_MINT
# 516 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, MINT_COINS
# 517 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 518 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 519 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeAbilityPatch::
# 520 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_ABILITY_PATCH
# 521 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, ABILITY_PATCH_COINS
# 522 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 523 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 524 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeAbilityCapsule::
# 525 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_ABILITY_CAPSULE
# 526 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, ABILITY_CAPSULE_COINS
# 527 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 528 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 529 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeHpUp::
# 530 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_HP_UP
# 531 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TRAINING_ITEM_COINS
# 532 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 533 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 534 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeProtein::
# 535 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_PROTEIN
# 536 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TRAINING_ITEM_COINS
# 537 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 538 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 539 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeIron::
# 540 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_IRON
# 541 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TRAINING_ITEM_COINS
# 542 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 543 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 544 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeCalcium::
# 545 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_CALCIUM
# 546 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TRAINING_ITEM_COINS
# 547 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 548 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 549 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeZinc::
# 550 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_ZINC
# 551 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TRAINING_ITEM_COINS
# 552 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 553 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 554 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeCarbos::
# 555 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_CARBOS
# 556 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TRAINING_ITEM_COINS
# 557 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 558 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 559 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizePpUp::
# 560 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_PP_UP
# 561 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, TRAINING_ITEM_COINS
# 562 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 563 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 564 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeDawnStone::
# 565 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_DAWN_STONE
# 566 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 567 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 568 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 569 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeDuskStone::
# 570 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_DUSK_STONE
# 571 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 572 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 573 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 574 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeIceStone::
# 575 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_ICE_STONE
# 576 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 577 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 578 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 579 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeLinkingCord::
# 580 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_LINKING_CORD
# 581 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 582 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 583 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 584 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeReaperCloth::
# 585 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_REAPER_CLOTH
# 586 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 587 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 588 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 589 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizePeatBlock::
# 590 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_PEAT_BLOCK
# 591 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 592 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 593 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 594 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeShinyStone::
# 595 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_SHINY_STONE
# 596 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 597 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 598 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 599 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeBlackAugurite::
# 600 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_BLACK_AUGURITE
# 601 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 602 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 603 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 604 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeLoadedDice::
# 605 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_LOADED_DICE
# 606 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 607 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 608 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 609 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeAmuletCoin::
# 610 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_AMULET_COIN
# 611 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 612 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 613 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 614 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeRazorClaw::
# 615 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_RAZOR_CLAW
# 616 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 617 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 618 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 619 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeRazorFang::
# 620 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_RAZOR_FANG
# 621 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 622 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 623 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 624 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PrizeDestinyKnot::
# 625 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, ITEM_DESTINY_KNOT
# 626 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8005, EVOLUTION_ITEM_COINS
# 627 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem
# 628 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 629 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ConfirmPrizeItem::
# 630 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	bufferitemname STR_VAR_1, VAR_0x8004
# 631 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	buffernumberstring STR_VAR_2, VAR_0x8005
# 632 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PrizeChoiceCost, MSGBOX_YESNO
# 633 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_ReturnToCurrentPrizePage
# 634 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 635 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	compare VAR_TEMP_2, VAR_0x8005
# 636 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForPrize
# 637 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitemspace VAR_0x8004, 1
# 638 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoRoomForPrize
# 639 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins VAR_0x8005
# 640 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	additem VAR_0x8004, 1
# 641 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatecoinsbox 1, 1
# 642 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 643 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_HereYouGo, MSGBOX_DEFAULT
# 644 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ReturnToCurrentPrizePage
# 645 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 646 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 647 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForPrize::
# 648 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_NotEnoughCoins, MSGBOX_DEFAULT
# 649 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ReturnToCurrentPrizePage
# 650 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 651 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 652 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NoRoomForPrize::
# 653 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call Common_EventScript_BagIsFull
# 654 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ReturnToCurrentPrizePage
# 655 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 656 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 657 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ReturnToCurrentPrizePage::
# 658 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_TEMP_6
# 659 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case PRIZE_MENU_TMS, MauvilleCity_GameCorner_EventScript_OpenTMPrizeMenu
# 660 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case PRIZE_MENU_MINTS, MauvilleCity_GameCorner_EventScript_OpenMintPrizeMenu
# 661 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case PRIZE_MENU_TRAINING, MauvilleCity_GameCorner_EventScript_OpenTrainingPrizeMenu
# 662 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case PRIZE_MENU_EVOLUTION, MauvilleCity_GameCorner_EventScript_OpenEvolutionPrizeMenu
# 663 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_CancelPrizeSelect
# 664 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 665 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 666 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CancelPrizeSelect::
# 667 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_OhIsThatSo, MSGBOX_DEFAULT
# 668 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidecoinsbox 0, 0
# 669 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 670 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 671 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 672 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Woman2::
# 673 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_CoinsAreNeededToPlay, MSGBOX_NPC
# 674 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 675 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 676 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_InfoClerk::
# 677 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 678 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 679 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_WelcomeToGameCorner, MSGBOX_DEFAULT
# 680 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_AskGameCornerInfo
# 681 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 682 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 683 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_AskGameCornerInfo::
# 684 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_WhatWouldYouLikeToKnow
# 685 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 686 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	multichoicedefault 16, 1, MULTI_GAME_CORNER_INFO, 0, FALSE
# 687 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_RESULT
# 688 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_ExplainPrizes
# 689 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_ExplainCoinExchange
# 690 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_ExplainGames
# 691 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 3, MauvilleCity_GameCorner_EventScript_ExplainLottery
# 692 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_EndInfo
# 693 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 694 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 695 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ExplainPrizes::
# 696 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_InfoPrizes, MSGBOX_DEFAULT
# 697 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_AskGameCornerInfo
# 698 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 699 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 700 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ExplainCoinExchange::
# 701 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_InfoCoinExchange, MSGBOX_DEFAULT
# 702 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_AskGameCornerInfo
# 703 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 704 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 705 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ExplainGames::
# 706 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_InfoGames, MSGBOX_DEFAULT
# 707 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_AskGameCornerInfo
# 708 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 709 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 710 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ExplainLottery::
# 711 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_InfoLottery, MSGBOX_DEFAULT
# 712 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_AskGameCornerInfo
# 713 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 714 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 715 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_EndInfo::
# 716 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ComeAgainForInfo, MSGBOX_DEFAULT
# 717 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 718 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 719 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 720 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Gentleman::
# 721 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_RouletteOnlyLuck, MSGBOX_NPC
# 722 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 723 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 724 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Girl::
# 725 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 726 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 727 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_set FLAG_RECEIVED_STARTER_DOLL, MauvilleCity_GameCorner_EventScript_ReceivedStarterDoll
# 728 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_GotTwoOfSameDollWantOne, MSGBOX_YESNO
# 729 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_DeclineStarterDoll
# 730 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_STARTER_MON
# 731 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_GiveTreeckoDoll
# 732 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_GiveTorchicDoll
# 733 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_GiveMudkipDoll
# 734 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 735 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 736 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_GiveTreeckoDoll::
# 737 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	bufferdecorationname STR_VAR_2, DECOR_TREECKO_DOLL
# 738 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkdecorspace DECOR_TREECKO_DOLL
# 739 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoRoomForStarterDoll
# 740 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_HereYouGo2, MSGBOX_DEFAULT
# 741 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	givedecoration DECOR_TREECKO_DOLL
# 742 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setflag FLAG_RECEIVED_STARTER_DOLL
# 743 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ReceivedStarterDoll
# 744 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 745 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 746 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_GiveTorchicDoll::
# 747 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	bufferdecorationname STR_VAR_2, DECOR_TORCHIC_DOLL
# 748 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkdecorspace DECOR_TORCHIC_DOLL
# 749 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoRoomForStarterDoll
# 750 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_HereYouGo2, MSGBOX_DEFAULT
# 751 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	givedecoration DECOR_TORCHIC_DOLL
# 752 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setflag FLAG_RECEIVED_STARTER_DOLL
# 753 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ReceivedStarterDoll
# 754 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 755 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 756 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_GiveMudkipDoll::
# 757 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	bufferdecorationname STR_VAR_2, DECOR_MUDKIP_DOLL
# 758 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkdecorspace DECOR_MUDKIP_DOLL
# 759 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoRoomForStarterDoll
# 760 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_HereYouGo2, MSGBOX_DEFAULT
# 761 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	givedecoration DECOR_MUDKIP_DOLL
# 762 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setflag FLAG_RECEIVED_STARTER_DOLL
# 763 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ReceivedStarterDoll
# 764 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 765 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 766 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NoRoomForStarterDoll::
# 767 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call Common_EventScript_NoRoomForDecor
# 768 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_YouWantItButNotNow, MSGBOX_DEFAULT
# 769 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 770 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 771 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 772 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DeclineStarterDoll::
# 773 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_DontBeNegative, MSGBOX_DEFAULT
# 774 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 775 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 776 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 777 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ReceivedStarterDoll::
# 778 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_CantWinJackpot, MSGBOX_DEFAULT
# 779 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 780 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 781 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 782 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PokefanM::
# 783 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 784 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 785 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 786 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, MauvilleCity_GameCorner_EventScript_TryGive20Coins
# 787 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_NeedCoinCaseGoNextDoor, MSGBOX_DEFAULT
# 788 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
# 789 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 790 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 791 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_TryGive20Coins::
# 792 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_set FLAG_RECEIVED_20_COINS, MauvilleCity_GameCorner_EventScript_PokefanMNormal
# 793 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 794 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_ge VAR_TEMP_1, 1, MauvilleCity_GameCorner_EventScript_PokefanMNormal @ Only give 20 coins if player has no coins
# 795 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setflag FLAG_RECEIVED_20_COINS
# 796 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addcoins 20
# 797 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_LuckOnlyLastSoLongTakeCoins, MSGBOX_DEFAULT
# 798 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 799 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_PokefanMNormal
# 800 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 801 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 802 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PokefanMNormal::
# 803 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_MauvilleSomethingForEveryone, MSGBOX_DEFAULT
# 804 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
# 805 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 806 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 807 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_OldMan::
# 808 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 809 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 810 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_RouletteTablesDifferentRates, MSGBOX_DEFAULT
# 811 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
# 812 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 813 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 814 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Cook::
# 815 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 816 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 817 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_EasyToLoseTrackOfTime, MSGBOX_DEFAULT
# 818 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
# 819 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 820 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 821 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Man::
# 822 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 823 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 824 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_UpTo3CoinsCanBeUsed, MSGBOX_DEFAULT
# 825 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
# 826 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 827 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 828 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NPCReturnToSlots::
# 829 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 830 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
# 831 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmovement 0
# 832 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 833 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 834 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 835 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Maniac::
# 836 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 837 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 838 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_DifficultToStopOn7, MSGBOX_DEFAULT
# 839 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
# 840 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 841 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 842 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Woman::
# 843 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 844 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 845 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_HeresSomeSlotsInfo, MSGBOX_DEFAULT
# 846 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_NPCReturnToSlots
# 847 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 848 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 849 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine0::
# 850 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 851 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 852 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 853 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 0
# 854 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 855 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addvar VAR_TEMP_1, SLOT_MACHINE_HIGH_STAKES_OFFSET
# 856 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 857 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 858 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager30, MSGBOX_YESNO
# 859 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 860 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 861 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 862 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 863 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 864 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 865 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine1::
# 866 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 867 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 868 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 869 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 1
# 870 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 871 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 872 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 873 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 874 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 875 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 876 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 877 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 878 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 879 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 880 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine2::
# 881 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 882 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 883 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 884 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 2
# 885 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 886 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 887 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 888 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 889 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 890 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 891 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 892 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 893 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 894 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 895 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine3::
# 896 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 897 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 898 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 899 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 3
# 900 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 901 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addvar VAR_TEMP_1, SLOT_MACHINE_HIGH_STAKES_OFFSET
# 902 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 903 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 904 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager30, MSGBOX_YESNO
# 905 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 906 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 907 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 908 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 909 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 910 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 911 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine4::
# 912 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 913 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 914 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 915 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 4
# 916 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 917 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 918 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 919 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 920 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 921 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 922 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 923 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 924 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 925 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 926 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine5::
# 927 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 928 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 929 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 930 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 5
# 931 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 932 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 933 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 934 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 935 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 936 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 937 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 938 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 939 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 940 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 941 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine6::
# 942 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 943 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 944 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 945 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 6
# 946 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 947 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 948 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 949 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 950 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 951 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 952 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 953 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 954 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 955 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 956 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine7::
# 957 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 958 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 959 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 960 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 7
# 961 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 962 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 963 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 964 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 965 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 966 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 967 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 968 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 969 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 970 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 971 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine8::
# 972 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 973 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 974 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 975 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 8
# 976 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 977 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 978 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 979 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 980 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 981 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 982 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 983 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 984 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 985 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 986 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine9::
# 987 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 988 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 989 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 990 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 9
# 991 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 992 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 993 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 994 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 995 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 996 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 997 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 998 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 999 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1000 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1001 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine10::
# 1002 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1003 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1004 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1005 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 10
# 1006 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 1007 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 1008 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 1009 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 1010 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 1011 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 1012 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1013 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1014 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1015 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1016 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SlotMachine11::
# 1017 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1018 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1019 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1020 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 11
# 1021 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	specialvar VAR_TEMP_1, GetSlotMachineId
# 1022 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_2
# 1023 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_2
# 1024 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SlotMinimumWager3, MSGBOX_YESNO
# 1025 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelSlotMachine
# 1026 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playslotmachine VAR_TEMP_1
# 1027 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1028 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1029 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1030 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1031 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NoCoinCase::
# 1032 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_CantPlayWithNoCoinCase, MSGBOX_DEFAULT
# 1033 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1034 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1035 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1036 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CancelSlotMachine::
# 1037 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1038 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1039 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1040 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_ThisIsMauvilleGameCorner:
# 1041 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "This is MAUVILLE GAME CORNER.$"
# 1042 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1043 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_CoinExchangeATM:
# 1044 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "MAUVILLE GAME CORNER\n"
# 1045 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "COIN EXCHANGE ATM.$"
# 1046 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1047 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_NeedCoinCaseForCoins:
# 1048 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "COIN CASE not detected.\p"
# 1049 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Please obtain a COIN CASE before\n"
# 1050 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "using this ATM.$"
# 1051 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1052 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_SelectATMTransaction:
# 1053 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Select a transaction.$"
# 1054 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1055 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_SelectCoinsToPurchase:
# 1056 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Select the amount of COINS\n"
# 1057 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "to purchase.$"
# 1058 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1059 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_SelectCoinsToCashOut:
# 1060 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Select the amount of COINS\n"
# 1061 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "to exchange for cash.$"
# 1062 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1063 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_ATMDispensedCoins:
# 1064 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Transaction complete.\n"
# 1065 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "COINS dispensed.$"
# 1066 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1067 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_ATMDispensedMoney:
# 1068 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Transaction complete.\n"
# 1069 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Cash dispensed.$"
# 1070 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1071 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_DontHaveEnoughMoney:
# 1072 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Insufficient funds.\p"
# 1073 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Please insert more money and\n"
# 1074 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "try again.$"
# 1075 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1076 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_CoinCaseIsFull:
# 1077 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "COIN CASE capacity reached.\p"
# 1078 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Please use some COINS and\n"
# 1079 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "try again.$"
# 1080 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1081 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_DontNeedCoinsThen:
# 1082 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Transaction canceled.$"
# 1083 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1084 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_NotEnoughCoinsToCashOut:
# 1085 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Insufficient COINS.\p"
# 1086 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You do not have enough COINS for\n"
# 1087 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "that exchange.$"
# 1088 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1089 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_ExchangeCoinsForPrizes:
# 1090 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Welcome.\p"
# 1091 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You can exchange your COINS for\n"
# 1092 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "prizes here.$"
# 1093 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1094 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_WhichPrize:
# 1095 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Which prize would you like?$"
# 1096 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1097 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PrizeChoiceCost:
# 1098 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "{STR_VAR_1} costs {STR_VAR_2}\n"
# 1099 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "COINS. Is that okay?$"
# 1100 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1101 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_SoYourChoiceIsTheTMX:
# 1102 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "So your choice is\n"
# 1103 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "the {STR_VAR_1} {STR_VAR_2}?$"
# 1104 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1105 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_SendToYourHomePC:
# 1106 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Thank you!\n"
# 1107 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "We'll send it to your PC at home.$"
# 1108 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1109 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_NotEnoughCoins:
# 1110 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You don't have enough COINS.$"
# 1111 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1112 "data/maps/MauvilleCity_GameCorner/scripts.pory"
@ Unused
# 1113 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_NoRoomForPlacingDecor:
# 1114 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "There isn't any room available for\n"
# 1115 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "placing {STR_VAR_1}.$"
# 1116 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1117 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_OhIsThatSo:
# 1118 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Enjoy your time at the\n"
# 1119 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "GAME CORNER!$"
# 1120 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1121 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_SoYourChoiceIsX:
# 1122 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "So your choice is {STR_VAR_1}?$"
# 1123 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1124 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_HereYouGo:
# 1125 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Here you go!$"
# 1126 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1127 "data/maps/MauvilleCity_GameCorner/scripts.pory"
@ Unused
# 1128 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_CantCarryAnyMore:
# 1129 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Oh, you can't carry any more than that.$"
# 1130 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1131 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_GotTwoOfSameDollWantOne:
# 1132 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I made a mistake and got two of\n"
# 1133 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "the same DOLLS.\p"
# 1134 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Would you like one of them?$"
# 1135 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1136 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_HereYouGo2:
# 1137 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Here you go!$"
# 1138 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1139 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_YouWantItButNotNow:
# 1140 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Huh?\n"
# 1141 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You want it, but not right now?$"
# 1142 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1143 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_DontBeNegative:
# 1144 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Oh, don't be so negative!\n"
# 1145 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You can have this!$"
# 1146 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1147 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_CantWinJackpot:
# 1148 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "There's a prize I want, but I can't win\n"
# 1149 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "the jackpot.$"
# 1150 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1151 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_NeedCoinCaseGoNextDoor:
# 1152 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Hey, kid, if you want to play here,\n"
# 1153 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "you need a COIN CASE.\p"
# 1154 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I think the young lady next door\n"
# 1155 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "had one. Go see her!$"
# 1156 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1157 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_LuckOnlyLastSoLongTakeCoins:
# 1158 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "My luck can only last so long.\n"
# 1159 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "This is too much for me.\l"
# 1160 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Here, take some COINS!$"
# 1161 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1162 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_MauvilleSomethingForEveryone:
# 1163 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "MAUVILLE has something for\n"
# 1164 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "everyone.\p"
# 1165 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "For me, it's the GAME CORNER.$"
# 1166 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1167 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_RouletteTablesDifferentRates:
# 1168 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The ROULETTE tables have different\n"
# 1169 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "rates.\p"
# 1170 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Check your COINS if you're going to\n"
# 1171 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "pick a table.$"
# 1172 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1173 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_EasyToLoseTrackOfTime:
# 1174 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Our food is top notch and dirt cheap!\p"
# 1175 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The casino makes so much money off\n"
# 1176 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "gamblers, it's worth it to lure them\l"
# 1177 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "in with great food.$"
# 1178 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1179 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_CoinsAreNeededToPlay:
# 1180 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "COINS are needed to play here\n"
# 1181 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "in the GAME CORNER.$"
# 1182 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1183 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_RouletteOnlyLuck:
# 1184 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "This ROULETTE thing…\n"
# 1185 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "It's rather demanding.\p"
# 1186 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Win or lose, it's only by luck.$"
# 1187 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1188 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_UpTo3CoinsCanBeUsed:
# 1189 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Up to three COINS can be used to play\n"
# 1190 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "these SLOTS. If you want to bet more,\l"
# 1191 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "you can try the red machines.\p"
# 1192 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Be careful, though. I've seen people\n"
# 1193 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "lose everything to those.$"
# 1194 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1195 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_DifficultToStopOn7:
# 1196 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "It's very difficult to make it stop\n"
# 1197 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "right on “7.”\p"
# 1198 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "If it stops on “7” during the REEL TIME\n"
# 1199 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "bonus game, you'll receive extra COINS.$"
# 1200 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1201 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_HeresSomeSlotsInfo:
# 1202 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Here's some information for you\n"
# 1203 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "about the SLOTS.\p"
# 1204 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The more lightning bolts you stock,\n"
# 1205 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "the more REEL TIME chances you get.\p"
# 1206 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "In a game with the maximum five\n"
# 1207 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "REEL TIME chances…\p"
# 1208 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "It is possible to receive four regular\n"
# 1209 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "bonuses, then a big bonus.\p"
# 1210 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "That would total 660 COINS, but it's\n"
# 1211 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "very difficult to get.$"
# 1212 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1213 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_CantPlayWithNoCoinCase:
# 1214 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You can't play if you don't have\n"
# 1215 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "a COIN CASE.$"
# 1216 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1217 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_SlotMinimumWager3:
# 1218 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The minimum wager at this machine\n"
# 1219 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "is 1 COIN. Do you want to play?$"
# 1220 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1221 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_SlotMinimumWager30:
# 1222 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The minimum wager at this machine\n"
# 1223 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "is 10 COINS. Do you want to play?$"
# 1224 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1225 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_WelcomeToGameCorner:
# 1226 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Welcome to the MAUVILLE\n"
# 1227 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "GAME CORNER!$"
# 1228 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1229 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_WhatWouldYouLikeToKnow:
# 1230 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "What would you like to know\n"
# 1231 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "about?$"
# 1232 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1233 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_InfoPrizes:
# 1234 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You can exchange your COINS for\n"
# 1235 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "prizes with the ladies behind the\l"
# 1236 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "counter.\p"
# 1237 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "They offer TMs, MINTS, training\n"
# 1238 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "items, and evolution items.$"
# 1239 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1240 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_InfoCoinExchange:
# 1241 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "If you need to exchange COINS or\n"
# 1242 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "money, use the ATMs to the right\l"
# 1243 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "of the entrance.$"
# 1244 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1245 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_InfoGames:
# 1246 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "We offer high and low stakes SLOTS\n"
# 1247 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "and ROULETTE, plus PINBALL,\p"
# 1248 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "arcade games, VOLTORB FLIP,\n"
# 1249 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "BLACKJACK, and the DERBY.$"
# 1250 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1251 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_InfoLottery:
# 1252 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The three LOTTERY machines are\n"
# 1253 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "behind the prize counter.\p"
# 1254 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "BASIC, GREAT, and ULTRA machines\n"
# 1255 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "have different wager tiers,\p"
# 1256 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "and each one can award COMMON,\n"
# 1257 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "UNCOMMON, RARE, or ULTRA-RARE\l"
# 1258 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "POKeMON.$"
# 1259 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1260 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_ComeAgainForInfo:
# 1261 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Please enjoy your time at the\n"
# 1262 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "GAME CORNER!$"
# 1263 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1264 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc1::
# 1265 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1266 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1267 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder1, MSGBOX_DEFAULT
# 1268 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	applymovement VAR_LAST_TALKED, MauvilleCity_GameCorner_Movement_PlaceholderFaceDown
# 1269 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmovement 0
# 1270 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1271 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1272 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1273 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc2::
# 1274 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1275 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1276 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder2, MSGBOX_DEFAULT
# 1277 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	applymovement VAR_LAST_TALKED, MauvilleCity_GameCorner_Movement_PlaceholderFaceDown
# 1278 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmovement 0
# 1279 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1280 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1281 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1282 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc3::
# 1283 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1284 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1285 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder3, MSGBOX_DEFAULT
# 1286 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1287 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1288 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1289 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc4::
# 1290 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1291 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1292 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder4, MSGBOX_DEFAULT
# 1293 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1294 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1295 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1296 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc5::
# 1297 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1298 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder5, MSGBOX_DEFAULT
# 1299 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1300 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1301 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1302 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Movement_PlaceholderFaceDown:
# 1303 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	face_down
# 1304 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	step_end
# 1305 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1306 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc6::
# 1307 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1308 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1309 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder6, MSGBOX_DEFAULT
# 1310 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1311 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1312 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1313 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc7::
# 1314 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1315 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1316 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder7, MSGBOX_DEFAULT
# 1317 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1318 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1319 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1320 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc8::
# 1321 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1322 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1323 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder8, MSGBOX_DEFAULT
# 1324 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1325 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1326 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1327 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc9::
# 1328 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1329 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1330 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder9, MSGBOX_DEFAULT
# 1331 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1332 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1333 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1334 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc10::
# 1335 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1336 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1337 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder10, MSGBOX_DEFAULT
# 1338 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1339 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1340 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1341 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc11::
# 1342 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1343 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1344 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder11, MSGBOX_DEFAULT
# 1345 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1346 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1347 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1348 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc12::
# 1349 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1350 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1351 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder12, MSGBOX_DEFAULT
# 1352 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1353 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1354 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1355 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc13::
# 1356 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1357 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1358 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder13, MSGBOX_DEFAULT
# 1359 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1360 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1361 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1362 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc14::
# 1363 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1364 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1365 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder14, MSGBOX_DEFAULT
# 1366 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1367 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1368 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1369 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc15::
# 1370 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1371 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1372 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder15, MSGBOX_DEFAULT
# 1373 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1374 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1375 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1376 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc16::
# 1377 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1378 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1379 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder16, MSGBOX_DEFAULT
# 1380 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1381 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1382 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1383 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderNpc17::
# 1384 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lock
# 1385 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	faceplayer
# 1386 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder17, MSGBOX_DEFAULT
# 1387 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	release
# 1388 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1389 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1390 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_PlaceholderSign1::
# 1391 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_Placeholder18, MSGBOX_SIGN
# 1392 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1393 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1394 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_VendingMachine::
# 1395 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1396 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_WhichSnackWouldYouLike
# 1397 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 1398 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	showmoneybox 0, 0
# 1399 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ChooseSnack
# 1400 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1401 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1402 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DrinkVendingMachine::
# 1403 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1404 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	message MauvilleCity_GameCorner_Text_WhichDrinkWouldYouLike
# 1405 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitmessage
# 1406 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	showmoneybox 0, 0
# 1407 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ChooseDrink
# 1408 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1409 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1410 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ChooseSnack::
# 1411 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	multichoice 15, 0, MULTI_GAME_CORNER_VENDING_MACHINE, FALSE
# 1412 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar VAR_TEMP_1, VAR_RESULT
# 1413 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_TEMP_1
# 1414 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_BuyGummyWurmples
# 1415 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_BuySkitties
# 1416 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_BuyNumelNougat
# 1417 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_DecidedAgainstSnack, MSGBOX_DEFAULT
# 1418 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ExitSnackMachine
# 1419 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1420 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1421 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_BuyGummyWurmples::
# 1422 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_0, ITEM_GUMMY_WURMPLES
# 1423 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_TryBuySnack
# 1424 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1425 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1426 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_BuySkitties::
# 1427 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_0, ITEM_SKITTIES
# 1428 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_TryBuySnack
# 1429 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1430 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1431 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_BuyNumelNougat::
# 1432 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_0, ITEM_NUMEL_NOUGAT
# 1433 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_TryBuySnack
# 1434 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1435 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1436 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CheckMoneyGummyWurmples::
# 1437 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkmoney VENDING_GUMMY_WURMPLES_PRICE
# 1438 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1439 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1440 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CheckMoneySkitties::
# 1441 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkmoney VENDING_SKITTIES_PRICE
# 1442 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1443 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1444 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CheckMoneyNumelNougat::
# 1445 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkmoney VENDING_NUMEL_NOUGAT_PRICE
# 1446 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1447 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1448 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_RemoveMoneyGummyWurmples::
# 1449 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removemoney VENDING_GUMMY_WURMPLES_PRICE
# 1450 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1451 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1452 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_RemoveMoneySkitties::
# 1453 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removemoney VENDING_SKITTIES_PRICE
# 1454 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1455 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1456 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_RemoveMoneyNumelNougat::
# 1457 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removemoney VENDING_NUMEL_NOUGAT_PRICE
# 1458 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1459 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1460 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_TryBuySnack::
# 1461 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call_if_eq VAR_TEMP_1, 0, MauvilleCity_GameCorner_EventScript_CheckMoneyGummyWurmples
# 1462 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call_if_eq VAR_TEMP_1, 1, MauvilleCity_GameCorner_EventScript_CheckMoneySkitties
# 1463 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call_if_eq VAR_TEMP_1, 2, MauvilleCity_GameCorner_EventScript_CheckMoneyNumelNougat
# 1464 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NotEnoughMoneyForSnack
# 1465 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitemspace VAR_TEMP_0
# 1466 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoRoomForSnack
# 1467 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call_if_eq VAR_TEMP_1, 0, MauvilleCity_GameCorner_EventScript_RemoveMoneyGummyWurmples
# 1468 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call_if_eq VAR_TEMP_1, 1, MauvilleCity_GameCorner_EventScript_RemoveMoneySkitties
# 1469 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call_if_eq VAR_TEMP_1, 2, MauvilleCity_GameCorner_EventScript_RemoveMoneyNumelNougat
# 1470 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatemoneybox
# 1471 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	bufferitemname STR_VAR_1, VAR_TEMP_0
# 1472 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_VEND
# 1473 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_SnackDroppedDown, MSGBOX_DEFAULT
# 1474 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	additem VAR_TEMP_0
# 1475 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	bufferitemname STR_VAR_2, VAR_TEMP_0
# 1476 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	bufferstdstring STR_VAR_3, STDSTRING_ITEMS
# 1477 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox gText_PutItemInPocket, MSGBOX_DEFAULT
# 1478 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ChooseSnack
# 1479 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1480 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1481 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NotEnoughMoneyForSnack::
# 1482 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_NotEnoughMoneyForSnack, MSGBOX_DEFAULT
# 1483 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ExitSnackMachine
# 1484 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1485 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1486 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NoRoomForSnack::
# 1487 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox gText_TheBagIsFull, MSGBOX_DEFAULT
# 1488 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ExitSnackMachine
# 1489 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1490 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1491 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ExitSnackMachine::
# 1492 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 1493 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1494 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1495 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1496 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ChooseDrink::
# 1497 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	multichoice 16, 0, MULTI_VENDING_MACHINE, FALSE
# 1498 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar VAR_TEMP_1, VAR_RESULT
# 1499 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	switch VAR_TEMP_1
# 1500 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 0, MauvilleCity_GameCorner_EventScript_FreshWater
# 1501 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 1, MauvilleCity_GameCorner_EventScript_SodaPop
# 1502 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	case 2, MauvilleCity_GameCorner_EventScript_Lemonade
# 1503 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_DecidedAgainstBuyingDrink, MSGBOX_DEFAULT
# 1504 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ExitDrinkVendingMachine
# 1505 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1506 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1507 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_FreshWater::
# 1508 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_0, ITEM_FRESH_WATER
# 1509 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_TryBuyDrink
# 1510 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1511 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1512 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_SodaPop::
# 1513 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_0, ITEM_SODA_POP
# 1514 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_TryBuyDrink
# 1515 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1516 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1517 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_Lemonade::
# 1518 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_0, ITEM_LEMONADE
# 1519 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_TryBuyDrink
# 1520 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1521 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1522 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CheckMoneyFreshWater::
# 1523 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkmoney 200
# 1524 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1525 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1526 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CheckMoneySodaPop::
# 1527 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkmoney 300
# 1528 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1529 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1530 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CheckMoneyLemonade::
# 1531 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkmoney 350
# 1532 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1533 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1534 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_RemoveMoneyFreshWater::
# 1535 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removemoney 200
# 1536 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1537 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1538 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_RemoveMoneySodaPop::
# 1539 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removemoney 300
# 1540 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1541 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1542 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_RemoveMoneyLemonade::
# 1543 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removemoney 350
# 1544 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1545 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1546 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_TryBuyDrink::
# 1547 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call_if_eq VAR_TEMP_1, 0, MauvilleCity_GameCorner_EventScript_CheckMoneyFreshWater
# 1548 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call_if_eq VAR_TEMP_1, 1, MauvilleCity_GameCorner_EventScript_CheckMoneySodaPop
# 1549 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call_if_eq VAR_TEMP_1, 2, MauvilleCity_GameCorner_EventScript_CheckMoneyLemonade
# 1550 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NotEnoughMoneyForDrink
# 1551 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitemspace VAR_TEMP_0
# 1552 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoRoomForDrink
# 1553 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call_if_eq VAR_TEMP_1, 0, MauvilleCity_GameCorner_EventScript_RemoveMoneyFreshWater
# 1554 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call_if_eq VAR_TEMP_1, 1, MauvilleCity_GameCorner_EventScript_RemoveMoneySodaPop
# 1555 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call_if_eq VAR_TEMP_1, 2, MauvilleCity_GameCorner_EventScript_RemoveMoneyLemonade
# 1556 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	updatemoneybox
# 1557 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	bufferitemname STR_VAR_1, VAR_TEMP_0
# 1558 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_VEND
# 1559 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_CanOfDrinkDroppedDown, MSGBOX_DEFAULT
# 1560 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	additem VAR_TEMP_0
# 1561 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	bufferitemname STR_VAR_2, VAR_TEMP_0
# 1562 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	bufferstdstring STR_VAR_3, STDSTRING_ITEMS
# 1563 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox gText_PutItemInPocket, MSGBOX_DEFAULT
# 1564 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ExitDrinkVendingMachine
# 1565 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1566 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1567 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NotEnoughMoneyForDrink::
# 1568 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_NotEnoughMoneyForDrink, MSGBOX_DEFAULT
# 1569 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ExitDrinkVendingMachine
# 1570 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1571 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1572 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NoRoomForDrink::
# 1573 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox gText_TheBagIsFull, MSGBOX_DEFAULT
# 1574 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_ExitDrinkVendingMachine
# 1575 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1576 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1577 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ExitDrinkVendingMachine::
# 1578 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	hidemoneybox
# 1579 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1580 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1581 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1582 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder1:
# 1583 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Hello! If you want to play blackjack,\n"
# 1584 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "please choose a spot at the table.$"
# 1585 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1586 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder2:
# 1587 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Hello! If you want to play blackjack,\n"
# 1588 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "please choose a spot at the table.$"
# 1589 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1590 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder3:
# 1591 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I'm a pro at this game!\p"
# 1592 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Bet you can't beat my high score!$"
# 1593 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1594 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder4:
# 1595 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The low stakes slots are a nice place\n"
# 1596 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "to spend an evening if you want a\l"
# 1597 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "little excitement without much risk.$"
# 1598 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1599 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder5:
# 1600 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The woman is rubbing and tapping the\n"
# 1601 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "screen as if performing a ritual.\p"
# 1602 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "She doesn't notice you at all.$"
# 1603 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1604 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder6:
# 1605 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "My mom says pinball is the only\n"
# 1606 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "game I'm allowed to play in here.\p"
# 1607 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Just once, though, I'd like to try\n"
# 1608 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "something more exciting!$"
# 1609 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1610 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder7:
# 1611 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I just come here for the pinball.\n"
# 1612 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You can't lose your entire savings\l"
# 1613 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "on pinball!$"
# 1614 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1615 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder8:
# 1616 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "My wife always paces around nervously\n"
# 1617 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "while I'm here.\p"
# 1618 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Just you wait. I'll make us rich!$"
# 1619 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1620 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder9:
# 1621 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I have enough money that losing here\n"
# 1622 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "doesn't bother me. I just like to\l"
# 1623 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "watch the races.$"
# 1624 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1625 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder10:
# 1626 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Uh... I really have no idea which\n"
# 1627 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Pokemon to bet on. Got any suggestions?$"
# 1628 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1629 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder11:
# 1630 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "My husband spends all day here betting\n"
# 1631 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "on races. We've just barely been\l"
# 1632 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "breaking even.\p"
# 1633 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Hopefully he doesn't lose our entire\n"
# 1634 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "retirement fund...$"
# 1635 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1636 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder12:
# 1637 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I brought my girlfriend here on a\n"
# 1638 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "date, but I didn't expect our luck to\l"
# 1639 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "be this good!\p"
# 1640 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Our next date will be on a cruise!$"
# 1641 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1642 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder13:
# 1643 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "My boyfriend is on a winning streak!$"
# 1644 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1645 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder14:
# 1646 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I've already spent so many credits\n"
# 1647 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "on the gacha machines here...\p"
# 1648 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Well, surely a little more won't hurt!$"
# 1649 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1650 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder15:
# 1651 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I lost everything...\p"
# 1652 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "I can't even afford a drink to\n"
# 1653 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "drown my sorrows.$"
# 1654 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1655 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder16:
# 1656 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "My husband and I come here for\n"
# 1657 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "date nights. The food is fantastic!$"
# 1658 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1659 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder17:
# 1660 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The food here is a great deal\n"
# 1661 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "because they expect to make money\l"
# 1662 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "off you in other ways.\p"
# 1663 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "The key is to not gamble!$"
# 1664 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1665 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_Placeholder18:
# 1666 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "It's a Pokemon race! Place your\n"
# 1667 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "bet at the terminals on either side.$"
# 1668 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1669 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1670 "data/maps/MauvilleCity_GameCorner/scripts.pory"
@ ============================================================
# 1671 "data/maps/MauvilleCity_GameCorner/scripts.pory"
@ DEBUG - acesso direto sem custo (remover antes do release)
# 1672 "data/maps/MauvilleCity_GameCorner/scripts.pory"
@ ============================================================
# 1673 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1674 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugGacha::
# 1675 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1676 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 1
# 1677 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special StartGacha
# 1678 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1679 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1680 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1681 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1682 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_GachaBasic::
# 1683 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1684 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1685 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1686 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1687 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, 100, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1688 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1689 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayGachaBasic, MSGBOX_YESNO
# 1690 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1691 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1692 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 1
# 1693 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special StartGacha
# 1694 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1695 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_HandleGachaResult
# 1696 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1697 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1698 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1699 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_GachaGreat::
# 1700 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1701 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1702 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1703 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1704 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, 500, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1705 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1706 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayGachaGreat, MSGBOX_YESNO
# 1707 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1708 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1709 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 2
# 1710 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special StartGacha
# 1711 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1712 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_HandleGachaResult
# 1713 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1714 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1715 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1716 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_GachaUltra::
# 1717 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1718 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1719 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1720 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1721 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, 2000, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1722 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1723 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayGachaUltra, MSGBOX_YESNO
# 1724 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1725 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1726 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_0x8004, 3
# 1727 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special StartGacha
# 1728 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1729 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_HandleGachaResult
# 1730 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1731 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1732 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1733 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugBlackjack::
# 1734 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1735 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1736 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1737 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1738 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1739 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayBlackjack, MSGBOX_YESNO
# 1740 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1741 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1742 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special StartBlackJack
# 1743 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1744 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1745 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1746 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1747 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1748 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugPinball::
# 1749 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1750 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1751 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1752 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1753 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, PINBALL_MEOWTH_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1754 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1755 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayPinballMeowth, MSGBOX_YESNO
# 1756 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1757 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1758 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins PINBALL_MEOWTH_COINS
# 1759 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 1760 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1761 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	callnative PlayMeowthPinballGame
# 1762 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1763 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
# 1764 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1765 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1766 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1767 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1768 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugPinballDiglett::
# 1769 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1770 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1771 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1772 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1773 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, PINBALL_DIGLETT_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1774 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1775 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayPinballDiglett, MSGBOX_YESNO
# 1776 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1777 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1778 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins PINBALL_DIGLETT_COINS
# 1779 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 1780 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1781 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	callnative PlayDiglettPinballGame
# 1782 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1783 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
# 1784 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1785 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1786 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1787 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1788 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugPinballSeel::
# 1789 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1790 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1791 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1792 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1793 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, PINBALL_SEEL_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1794 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1795 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayPinballSeel, MSGBOX_YESNO
# 1796 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1797 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1798 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins PINBALL_SEEL_COINS
# 1799 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 1800 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1801 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	callnative PlaySeelPinballGame
# 1802 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1803 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
# 1804 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1805 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1806 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1807 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1808 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugPinballGengar::
# 1809 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1810 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1811 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1812 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1813 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, PINBALL_GENGAR_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1814 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1815 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayPinballGengar, MSGBOX_YESNO
# 1816 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1817 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1818 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins PINBALL_GENGAR_COINS
# 1819 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 1820 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1821 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	callnative PlayGengarPinballGame
# 1822 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1823 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
# 1824 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1825 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1826 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1827 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1828 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugFlappy::
# 1829 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1830 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1831 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1832 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1833 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, FLAPPY_BIRD_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1834 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1835 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayFlappyBird, MSGBOX_YESNO
# 1836 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1837 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1838 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins FLAPPY_BIRD_COINS
# 1839 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 1840 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1841 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	callnative StartFlappyBird
# 1842 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1843 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
# 1844 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1845 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1846 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1847 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1848 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugSnake::
# 1849 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1850 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1851 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1852 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1853 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, SNAKE_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1854 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1855 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlaySnake, MSGBOX_YESNO
# 1856 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1857 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1858 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins SNAKE_COINS
# 1859 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 1860 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1861 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special StartSnake
# 1862 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1863 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
# 1864 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1865 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1866 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1867 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1868 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugBlockStacker::
# 1869 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1870 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1871 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1872 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1873 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, BLOCK_STACKER_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1874 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1875 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayBlockStacker, MSGBOX_YESNO
# 1876 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1877 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1878 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins BLOCK_STACKER_COINS
# 1879 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 1880 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1881 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special StartBlockStacker
# 1882 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1883 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
# 1884 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1885 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1886 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1887 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1888 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugPachinko::
# 1889 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1890 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1891 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1892 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1893 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, PACHINKO_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1894 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1895 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayPachinko, MSGBOX_YESNO
# 1896 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1897 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1898 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	callnative PlayPachinko
# 1899 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1900 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1901 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1902 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1903 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1904 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugVoltorbFlip::
# 1905 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1906 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1907 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1908 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1909 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, VOLTORB_FLIP_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1910 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1911 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayVoltorbFlip, MSGBOX_YESNO
# 1912 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1913 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1914 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	removecoins VOLTORB_FLIP_COINS
# 1915 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	playse SE_SHOP
# 1916 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1917 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special Special_ViewVoltorbFlip
# 1918 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1919 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipHandleResult
# 1920 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1921 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1922 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1923 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1924 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipHandleResult::
# 1925 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, 1, MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipKeepGoing
# 1926 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1927 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1928 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1929 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipKeepGoing::
# 1930 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	buffernumberstring STR_VAR_1, VAR_TEMP_4
# 1931 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_DebugVoltorbFlipKeepGoing, MSGBOX_YESNO
# 1932 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1933 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipCashOut
# 1934 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special Special_ViewVoltorbFlip
# 1935 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1936 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipHandleResult
# 1937 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1938 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugVoltorbFlipCashOut::
# 1939 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addcoins VAR_TEMP_4
# 1940 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1941 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1942 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1943 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_DebugDerby::
# 1944 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	lockall
# 1945 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkitem ITEM_COIN_CASE
# 1946 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, MauvilleCity_GameCorner_EventScript_NoCoinCase
# 1947 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins VAR_TEMP_1
# 1948 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_lt VAR_TEMP_1, DERBY_MIN_BET_COINS, MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame
# 1949 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_START_COINS, VAR_TEMP_1
# 1950 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_PlayDerby, MSGBOX_YESNO
# 1951 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	closemessage
# 1952 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_RESULT, NO, MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame
# 1953 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1954 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	special StartDerby
# 1955 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	waitstate
# 1956 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings
# 1957 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	call MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult
# 1958 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1959 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1960 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1961 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CancelArcadeMinigame::
# 1962 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1963 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1964 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1965 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_HandleGachaResult::
# 1966 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_TEMP_5, FALSE, MauvilleCity_GameCorner_EventScript_NoGachaRefundMessage
# 1967 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	buffernumberstring STR_VAR_1, VAR_TEMP_4
# 1968 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_GachaRefundExtraCoins, MSGBOX_DEFAULT
# 1969 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1970 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_5, FALSE
# 1971 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1972 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1973 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NoGachaRefundMessage::
# 1974 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1975 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1976 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NotEnoughCoinsForArcadeGame::
# 1977 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_NotEnoughCoins, MSGBOX_DEFAULT
# 1978 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	releaseall
# 1979 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	end
# 1980 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1981 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_CollectDebugMinigameWinnings::
# 1982 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq VAR_TEMP_4, 0, MauvilleCity_GameCorner_EventScript_NoDebugMinigameWinnings
# 1983 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	addcoins VAR_TEMP_4
# 1984 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	setvar VAR_TEMP_4, 0
# 1985 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1986 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1987 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_NoDebugMinigameWinnings::
# 1988 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 1989 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 1990 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ShowArcadeCoinResult::
# 1991 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	checkcoins GAME_CORNER_VAR_CURRENT_COINS
# 1992 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	compare GAME_CORNER_VAR_CURRENT_COINS, GAME_CORNER_VAR_START_COINS
# 1993 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_eq MauvilleCity_GameCorner_EventScript_ArcadeCoinResultEven
# 1994 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	goto_if_gt MauvilleCity_GameCorner_EventScript_ArcadeCoinResultWon
# 1995 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_COIN_DELTA, GAME_CORNER_VAR_START_COINS
# 1996 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	subvar GAME_CORNER_VAR_COIN_DELTA, GAME_CORNER_VAR_CURRENT_COINS
# 1997 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	buffernumberstring STR_VAR_1, GAME_CORNER_VAR_COIN_DELTA
# 1998 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ArcadeCoinsLost, MSGBOX_DEFAULT
# 1999 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 2000 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2001 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ArcadeCoinResultWon::
# 2002 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	copyvar GAME_CORNER_VAR_COIN_DELTA, GAME_CORNER_VAR_CURRENT_COINS
# 2003 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	subvar GAME_CORNER_VAR_COIN_DELTA, GAME_CORNER_VAR_START_COINS
# 2004 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	buffernumberstring STR_VAR_1, GAME_CORNER_VAR_COIN_DELTA
# 2005 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ArcadeCoinsWon, MSGBOX_DEFAULT
# 2006 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 2007 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2008 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_EventScript_ArcadeCoinResultEven::
# 2009 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	msgbox MauvilleCity_GameCorner_Text_ArcadeCoinsEven, MSGBOX_DEFAULT
# 2010 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	return
# 2011 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2012 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayPinballMeowth:
# 2013 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play MEOWTH PINBALL for\n"
# 2014 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "25 COINS?$"
# 2015 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2016 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayGachaBasic:
# 2017 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play BASIC GACHA for\n"
# 2018 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "100 COINS?$"
# 2019 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2020 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayGachaGreat:
# 2021 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play GREAT GACHA for\n"
# 2022 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "500 COINS?$"
# 2023 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2024 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayGachaUltra:
# 2025 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play ULTRA GACHA for\n"
# 2026 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "2000 COINS?$"
# 2027 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2028 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_GachaRefundExtraCoins:
# 2029 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You've already collected every\n"
# 2030 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "possible POKeMON from this machine.\p"
# 2031 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "We refunded the extra {STR_VAR_1}\n"
# 2032 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "COINS from your wager.$"
# 2033 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2034 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayPinballDiglett:
# 2035 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play DIGLETT PINBALL for\n"
# 2036 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "50 COINS?$"
# 2037 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2038 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayPinballSeel:
# 2039 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play SEEL PINBALL for\n"
# 2040 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "25 COINS?$"
# 2041 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2042 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayPinballGengar:
# 2043 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play GENGAR PINBALL for\n"
# 2044 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "100 COINS?$"
# 2045 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2046 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayFlappyBird:
# 2047 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play FLUTTERFREE for\n"
# 2048 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "25 COINS?$"
# 2049 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2050 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlaySnake:
# 2051 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play ONIX for\n"
# 2052 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "25 COINS?$"
# 2053 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2054 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayBlockStacker:
# 2055 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play BLOCK BUILDER for\n"
# 2056 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "25 COINS?$"
# 2057 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2058 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayPachinko:
# 2059 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play PACHINKO?\p"
# 2060 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Each drop costs 3 COINS.$"
# 2061 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2062 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_DebugVoltorbFlipKeepGoing:
# 2063 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Current winnings: {STR_VAR_1} COINS.\p"
# 2064 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Keep going?$"
# 2065 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2066 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayVoltorbFlip:
# 2067 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play VOLTORB FLIP for\n"
# 2068 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "50 COINS?$"
# 2069 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2070 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayDerby:
# 2071 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Enter the MAUVILLE DERBY?\p"
# 2072 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Bets start at 10 COINS.$"
# 2073 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2074 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_PlayBlackjack:
# 2075 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Play BLACKJACK?$"
# 2076 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2077 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_WhichSnackWouldYouLike:
# 2078 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "A vending machine full of snacks!\p"
# 2079 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Which one would you like?$"
# 2080 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2081 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_WhichDrinkWouldYouLike:
# 2082 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "It's a VENDING MACHINE.\n"
# 2083 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Which drink would you like?$"
# 2084 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2085 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_SnackDroppedDown:
# 2086 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Clunk!\p"
# 2087 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "{STR_VAR_1} dropped down.$"
# 2088 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2089 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_CanOfDrinkDroppedDown:
# 2090 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Clang!\p"
# 2091 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "A can of {STR_VAR_1} dropped down.$"
# 2092 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2093 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_NotEnoughMoneyForSnack:
# 2094 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You don't have enough money.$"
# 2095 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2096 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_NotEnoughMoneyForDrink:
# 2097 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You don't have enough money.$"
# 2098 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2099 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_DecidedAgainstSnack:
# 2100 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Maybe another time.$"
# 2101 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2102 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_DecidedAgainstBuyingDrink:
# 2103 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "Maybe another time.$"
# 2104 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2105 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_ArcadeCoinsWon:
# 2106 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You're up {STR_VAR_1} COINS!$"
# 2107 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2108 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_ArcadeCoinsLost:
# 2109 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You're down {STR_VAR_1} COINS!$"
# 2110 "data/maps/MauvilleCity_GameCorner/scripts.pory"

# 2111 "data/maps/MauvilleCity_GameCorner/scripts.pory"
MauvilleCity_GameCorner_Text_ArcadeCoinsEven:
# 2112 "data/maps/MauvilleCity_GameCorner/scripts.pory"
	.string "You're even on COINS.$"
