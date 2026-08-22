# 1 "data/maps/EverGrandeCity/scripts.pory"

# 2 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_MapScripts::
# 3 "data/maps/EverGrandeCity/scripts.pory"
	map_script MAP_SCRIPT_ON_LOAD, EverGrandeCity_OnLoad
# 4 "data/maps/EverGrandeCity/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, EverGrandeCity_OnTransition
# 5 "data/maps/EverGrandeCity/scripts.pory"
	.byte 0
# 6 "data/maps/EverGrandeCity/scripts.pory"

# 7 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_OnLoad:
# 8 "data/maps/EverGrandeCity/scripts.pory"
	call_if_unset FLAG_DEFEATED_EVERGRANDE_RIVAL, EverGrandeCity_EventScript_HideRival
# 9 "data/maps/EverGrandeCity/scripts.pory"
	end
# 10 "data/maps/EverGrandeCity/scripts.pory"

# 11 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_OnTransition:
# 12 "data/maps/EverGrandeCity/scripts.pory"
	call_if_set FLAG_SYS_WEATHER_CTRL, Common_EventScript_SetAbnormalWeather
# 13 "data/maps/EverGrandeCity/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 14 "data/maps/EverGrandeCity/scripts.pory"
	setvar VAR_TEMP_2, 0
# 15 "data/maps/EverGrandeCity/scripts.pory"
	end
# 16 "data/maps/EverGrandeCity/scripts.pory"

# 17 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_HideRival::
# 18 "data/maps/EverGrandeCity/scripts.pory"
	setflag FLAG_HIDE_EVERGRANDE_RIVAL
# 19 "data/maps/EverGrandeCity/scripts.pory"
	return
# 20 "data/maps/EverGrandeCity/scripts.pory"

# 21 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_Rival::
# 22 "data/maps/EverGrandeCity/scripts.pory"
	goto EverGrandeCity_EventScript_RivalBeforeE4
# 23 "data/maps/EverGrandeCity/scripts.pory"
	end
# 24 "data/maps/EverGrandeCity/scripts.pory"

# 25 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_RivalBeforeE4::
# 26 "data/maps/EverGrandeCity/scripts.pory"
	goto_if_set FLAG_DEFEATED_EVERGRANDE_RIVAL, Common_EventScript_NopReturn
# 27 "data/maps/EverGrandeCity/scripts.pory"
	lockall
# 28 "data/maps/EverGrandeCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_SOUTH
# 29 "data/maps/EverGrandeCity/scripts.pory"
	clearflag FLAG_HIDE_EVERGRANDE_RIVAL
# 30 "data/maps/EverGrandeCity/scripts.pory"
	addobject LOCALID_EVER_GRANDE_RIVAL
# 31 "data/maps/EverGrandeCity/scripts.pory"
	setvar VAR_TEMP_2, 1
# 32 "data/maps/EverGrandeCity/scripts.pory"
	applymovement LOCALID_EVER_GRANDE_RIVAL, EverGrandeCity_Movement_RivalApproach
# 33 "data/maps/EverGrandeCity/scripts.pory"
	waitmovement 0
# 34 "data/maps/EverGrandeCity/scripts.pory"
	checkplayergender
# 35 "data/maps/EverGrandeCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, EverGrandeCity_EventScript_ZinniaPreBattle
# 36 "data/maps/EverGrandeCity/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, EverGrandeCity_EventScript_ZennoPreBattle
# 37 "data/maps/EverGrandeCity/scripts.pory"
	releaseall
# 38 "data/maps/EverGrandeCity/scripts.pory"
	end
# 39 "data/maps/EverGrandeCity/scripts.pory"

# 40 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_ZinniaPreBattle::
# 41 "data/maps/EverGrandeCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 42 "data/maps/EverGrandeCity/scripts.pory"
	msgbox EverGrandeCity_Text_ZinniaPreBattle, MSGBOX_DEFAULT
# 43 "data/maps/EverGrandeCity/scripts.pory"
	removefieldmugshot
# 44 "data/maps/EverGrandeCity/scripts.pory"
	goto EverGrandeCity_EventScript_MayBattle
# 45 "data/maps/EverGrandeCity/scripts.pory"
	end
# 46 "data/maps/EverGrandeCity/scripts.pory"

# 47 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_ZennoPreBattle::
# 48 "data/maps/EverGrandeCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 49 "data/maps/EverGrandeCity/scripts.pory"
	msgbox EverGrandeCity_Text_ZennoPreBattle, MSGBOX_DEFAULT
# 50 "data/maps/EverGrandeCity/scripts.pory"
	removefieldmugshot
# 51 "data/maps/EverGrandeCity/scripts.pory"
	goto EverGrandeCity_EventScript_BrendanBattle
# 52 "data/maps/EverGrandeCity/scripts.pory"
	end
# 53 "data/maps/EverGrandeCity/scripts.pory"

# 54 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_Movement_RivalApproach:
# 55 "data/maps/EverGrandeCity/scripts.pory"
	walk_up
# 56 "data/maps/EverGrandeCity/scripts.pory"
	walk_up
# 57 "data/maps/EverGrandeCity/scripts.pory"
	walk_up
# 58 "data/maps/EverGrandeCity/scripts.pory"
	walk_up
# 59 "data/maps/EverGrandeCity/scripts.pory"
	walk_up
# 60 "data/maps/EverGrandeCity/scripts.pory"
	walk_up
# 61 "data/maps/EverGrandeCity/scripts.pory"
	step_end
# 62 "data/maps/EverGrandeCity/scripts.pory"

# 63 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_MayBattle::
# 64 "data/maps/EverGrandeCity/scripts.pory"
	switch VAR_EVER_GRANDE_CITY_STATE
# 65 "data/maps/EverGrandeCity/scripts.pory"
	case 1, EverGrandeCity_EventScript_MayBattleHard
# 66 "data/maps/EverGrandeCity/scripts.pory"
	switch VAR_STARTER_MON
# 67 "data/maps/EverGrandeCity/scripts.pory"
	case 0, EverGrandeCity_EventScript_MayBattleTreecko
# 68 "data/maps/EverGrandeCity/scripts.pory"
	case 1, EverGrandeCity_EventScript_MayBattleTorchic
# 69 "data/maps/EverGrandeCity/scripts.pory"
	case 2, EverGrandeCity_EventScript_MayBattleMudkip
# 70 "data/maps/EverGrandeCity/scripts.pory"
	releaseall
# 71 "data/maps/EverGrandeCity/scripts.pory"
	end
# 72 "data/maps/EverGrandeCity/scripts.pory"

# 73 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_MayBattleHard::
# 74 "data/maps/EverGrandeCity/scripts.pory"
	switch VAR_STARTER_MON
# 75 "data/maps/EverGrandeCity/scripts.pory"
	case 0, EverGrandeCity_EventScript_MayBattleTreeckoHard
# 76 "data/maps/EverGrandeCity/scripts.pory"
	case 1, EverGrandeCity_EventScript_MayBattleTorchicHard
# 77 "data/maps/EverGrandeCity/scripts.pory"
	case 2, EverGrandeCity_EventScript_MayBattleMudkipHard
# 78 "data/maps/EverGrandeCity/scripts.pory"
	releaseall
# 79 "data/maps/EverGrandeCity/scripts.pory"
	end
# 80 "data/maps/EverGrandeCity/scripts.pory"

# 81 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_BrendanBattle::
# 82 "data/maps/EverGrandeCity/scripts.pory"
	switch VAR_EVER_GRANDE_CITY_STATE
# 83 "data/maps/EverGrandeCity/scripts.pory"
	case 1, EverGrandeCity_EventScript_BrendanBattleHard
# 84 "data/maps/EverGrandeCity/scripts.pory"
	switch VAR_STARTER_MON
# 85 "data/maps/EverGrandeCity/scripts.pory"
	case 0, EverGrandeCity_EventScript_BrendanBattleTreecko
# 86 "data/maps/EverGrandeCity/scripts.pory"
	case 1, EverGrandeCity_EventScript_BrendanBattleTorchic
# 87 "data/maps/EverGrandeCity/scripts.pory"
	case 2, EverGrandeCity_EventScript_BrendanBattleMudkip
# 88 "data/maps/EverGrandeCity/scripts.pory"
	releaseall
# 89 "data/maps/EverGrandeCity/scripts.pory"
	end
# 90 "data/maps/EverGrandeCity/scripts.pory"

# 91 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_BrendanBattleHard::
# 92 "data/maps/EverGrandeCity/scripts.pory"
	switch VAR_STARTER_MON
# 93 "data/maps/EverGrandeCity/scripts.pory"
	case 0, EverGrandeCity_EventScript_BrendanBattleTreeckoHard
# 94 "data/maps/EverGrandeCity/scripts.pory"
	case 1, EverGrandeCity_EventScript_BrendanBattleTorchicHard
# 95 "data/maps/EverGrandeCity/scripts.pory"
	case 2, EverGrandeCity_EventScript_BrendanBattleMudkipHard
# 96 "data/maps/EverGrandeCity/scripts.pory"
	releaseall
# 97 "data/maps/EverGrandeCity/scripts.pory"
	end
# 98 "data/maps/EverGrandeCity/scripts.pory"

# 99 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_MayBattleTreecko::
# 100 "data/maps/EverGrandeCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_EVERGRANDE_TREECKO, EverGrandeCity_Text_RivalDefeated
# 101 "data/maps/EverGrandeCity/scripts.pory"
	goto EverGrandeCity_EventScript_RivalAfterBattle
# 102 "data/maps/EverGrandeCity/scripts.pory"

# 103 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_MayBattleTorchic::
# 104 "data/maps/EverGrandeCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_EVERGRANDE_TORCHIC, EverGrandeCity_Text_RivalDefeated
# 105 "data/maps/EverGrandeCity/scripts.pory"
	goto EverGrandeCity_EventScript_RivalAfterBattle
# 106 "data/maps/EverGrandeCity/scripts.pory"

# 107 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_MayBattleMudkip::
# 108 "data/maps/EverGrandeCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_EVERGRANDE_MUDKIP, EverGrandeCity_Text_RivalDefeated
# 109 "data/maps/EverGrandeCity/scripts.pory"
	goto EverGrandeCity_EventScript_RivalAfterBattle
# 110 "data/maps/EverGrandeCity/scripts.pory"

# 111 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_MayBattleTreeckoHard::
# 112 "data/maps/EverGrandeCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_EVERGRANDE_TREECKO_HARD, EverGrandeCity_Text_RivalDefeated
# 113 "data/maps/EverGrandeCity/scripts.pory"
	goto EverGrandeCity_EventScript_RivalAfterBattle
# 114 "data/maps/EverGrandeCity/scripts.pory"

# 115 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_MayBattleTorchicHard::
# 116 "data/maps/EverGrandeCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_EVERGRANDE_TORCHIC_HARD, EverGrandeCity_Text_RivalDefeated
# 117 "data/maps/EverGrandeCity/scripts.pory"
	goto EverGrandeCity_EventScript_RivalAfterBattle
# 118 "data/maps/EverGrandeCity/scripts.pory"

# 119 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_MayBattleMudkipHard::
# 120 "data/maps/EverGrandeCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_EVERGRANDE_MUDKIP_HARD, EverGrandeCity_Text_RivalDefeated
# 121 "data/maps/EverGrandeCity/scripts.pory"
	goto EverGrandeCity_EventScript_RivalAfterBattle
# 122 "data/maps/EverGrandeCity/scripts.pory"

# 123 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_BrendanBattleTreecko::
# 124 "data/maps/EverGrandeCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_EVERGRANDE_TREECKO, EverGrandeCity_Text_RivalDefeated
# 125 "data/maps/EverGrandeCity/scripts.pory"
	goto EverGrandeCity_EventScript_RivalAfterBattle
# 126 "data/maps/EverGrandeCity/scripts.pory"

# 127 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_BrendanBattleTorchic::
# 128 "data/maps/EverGrandeCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_EVERGRANDE_TORCHIC, EverGrandeCity_Text_RivalDefeated
# 129 "data/maps/EverGrandeCity/scripts.pory"
	goto EverGrandeCity_EventScript_RivalAfterBattle
# 130 "data/maps/EverGrandeCity/scripts.pory"

# 131 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_BrendanBattleMudkip::
# 132 "data/maps/EverGrandeCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_EVERGRANDE_MUDKIP, EverGrandeCity_Text_RivalDefeated
# 133 "data/maps/EverGrandeCity/scripts.pory"
	goto EverGrandeCity_EventScript_RivalAfterBattle
# 134 "data/maps/EverGrandeCity/scripts.pory"

# 135 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_BrendanBattleTreeckoHard::
# 136 "data/maps/EverGrandeCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_EVERGRANDE_TREECKO_HARD, EverGrandeCity_Text_RivalDefeated
# 137 "data/maps/EverGrandeCity/scripts.pory"
	goto EverGrandeCity_EventScript_RivalAfterBattle
# 138 "data/maps/EverGrandeCity/scripts.pory"

# 139 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_BrendanBattleTorchicHard::
# 140 "data/maps/EverGrandeCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_EVERGRANDE_TORCHIC_HARD, EverGrandeCity_Text_RivalDefeated
# 141 "data/maps/EverGrandeCity/scripts.pory"
	goto EverGrandeCity_EventScript_RivalAfterBattle
# 142 "data/maps/EverGrandeCity/scripts.pory"

# 143 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_BrendanBattleMudkipHard::
# 144 "data/maps/EverGrandeCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_EVERGRANDE_MUDKIP_HARD, EverGrandeCity_Text_RivalDefeated
# 145 "data/maps/EverGrandeCity/scripts.pory"
	goto EverGrandeCity_EventScript_RivalAfterBattle
# 146 "data/maps/EverGrandeCity/scripts.pory"

# 147 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_RivalAfterBattle::
# 148 "data/maps/EverGrandeCity/scripts.pory"
	checkplayergender
# 149 "data/maps/EverGrandeCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, EverGrandeCity_EventScript_ZinniaFarewell
# 150 "data/maps/EverGrandeCity/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, EverGrandeCity_EventScript_ZennoFarewell
# 151 "data/maps/EverGrandeCity/scripts.pory"
	releaseall
# 152 "data/maps/EverGrandeCity/scripts.pory"
	end
# 153 "data/maps/EverGrandeCity/scripts.pory"

# 154 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_ZinniaFarewell::
# 155 "data/maps/EverGrandeCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 156 "data/maps/EverGrandeCity/scripts.pory"
	msgbox EverGrandeCity_Text_ZinniaFarewell, MSGBOX_DEFAULT
# 157 "data/maps/EverGrandeCity/scripts.pory"
	removefieldmugshot
# 158 "data/maps/EverGrandeCity/scripts.pory"
	goto EverGrandeCity_EventScript_RivalLeave
# 159 "data/maps/EverGrandeCity/scripts.pory"
	end
# 160 "data/maps/EverGrandeCity/scripts.pory"

# 161 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_ZennoFarewell::
# 162 "data/maps/EverGrandeCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 163 "data/maps/EverGrandeCity/scripts.pory"
	msgbox EverGrandeCity_Text_ZennoFarewell, MSGBOX_DEFAULT
# 164 "data/maps/EverGrandeCity/scripts.pory"
	removefieldmugshot
# 165 "data/maps/EverGrandeCity/scripts.pory"
	goto EverGrandeCity_EventScript_RivalLeave
# 166 "data/maps/EverGrandeCity/scripts.pory"
	end
# 167 "data/maps/EverGrandeCity/scripts.pory"

# 168 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_RivalLeave::
# 169 "data/maps/EverGrandeCity/scripts.pory"
	closemessage
# 170 "data/maps/EverGrandeCity/scripts.pory"
	applymovement LOCALID_EVER_GRANDE_RIVAL, EverGrandeCity_Movement_RivalLeave
# 171 "data/maps/EverGrandeCity/scripts.pory"
	waitmovement 0
# 172 "data/maps/EverGrandeCity/scripts.pory"
	setflag FLAG_HIDE_EVERGRANDE_RIVAL
# 173 "data/maps/EverGrandeCity/scripts.pory"
	setflag FLAG_DEFEATED_EVERGRANDE_RIVAL
# 174 "data/maps/EverGrandeCity/scripts.pory"
	removeobject LOCALID_EVER_GRANDE_RIVAL
# 175 "data/maps/EverGrandeCity/scripts.pory"
	releaseall
# 176 "data/maps/EverGrandeCity/scripts.pory"
	end
# 177 "data/maps/EverGrandeCity/scripts.pory"

# 178 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_Movement_RivalLeave:
# 179 "data/maps/EverGrandeCity/scripts.pory"
	walk_down
# 180 "data/maps/EverGrandeCity/scripts.pory"
	walk_down
# 181 "data/maps/EverGrandeCity/scripts.pory"
	walk_down
# 182 "data/maps/EverGrandeCity/scripts.pory"
	walk_down
# 183 "data/maps/EverGrandeCity/scripts.pory"
	walk_down
# 184 "data/maps/EverGrandeCity/scripts.pory"
	walk_down
# 185 "data/maps/EverGrandeCity/scripts.pory"
	walk_down
# 186 "data/maps/EverGrandeCity/scripts.pory"
	step_end
# 187 "data/maps/EverGrandeCity/scripts.pory"

# 188 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_VictoryRoadSign::
# 189 "data/maps/EverGrandeCity/scripts.pory"
	msgbox EverGrandeCity_Text_EnteringVictoryRoad, MSGBOX_SIGN
# 190 "data/maps/EverGrandeCity/scripts.pory"
	end
# 191 "data/maps/EverGrandeCity/scripts.pory"

# 192 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_CitySign::
# 193 "data/maps/EverGrandeCity/scripts.pory"
	msgbox EverGrandeCity_Text_CitySign, MSGBOX_SIGN
# 194 "data/maps/EverGrandeCity/scripts.pory"
	end
# 195 "data/maps/EverGrandeCity/scripts.pory"

# 196 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_PokemonLeagueSign::
# 197 "data/maps/EverGrandeCity/scripts.pory"
	msgbox EverGrandeCity_Text_EnteringPokemonLeague, MSGBOX_SIGN
# 198 "data/maps/EverGrandeCity/scripts.pory"
	end
# 199 "data/maps/EverGrandeCity/scripts.pory"

# 200 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_EventScript_SetVisitedEverGrande::
# 201 "data/maps/EverGrandeCity/scripts.pory"
	setflag FLAG_VISITED_EVER_GRANDE_CITY
# 202 "data/maps/EverGrandeCity/scripts.pory"
	setvar VAR_TEMP_1, 1
# 203 "data/maps/EverGrandeCity/scripts.pory"
	end
# 204 "data/maps/EverGrandeCity/scripts.pory"

# 205 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_Text_EnteringVictoryRoad:
# 206 "data/maps/EverGrandeCity/scripts.pory"
	.string "ENTERING VICTORY ROAD$"
# 207 "data/maps/EverGrandeCity/scripts.pory"

# 208 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_Text_EnteringPokemonLeague:
# 209 "data/maps/EverGrandeCity/scripts.pory"
	.string "ENTERING POKéMON LEAGUE\n"
# 210 "data/maps/EverGrandeCity/scripts.pory"
	.string "CENTER GATE$"
# 211 "data/maps/EverGrandeCity/scripts.pory"

# 212 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_Text_CitySign:
# 213 "data/maps/EverGrandeCity/scripts.pory"
	.string "EVER GRANDE CITY\p"
# 214 "data/maps/EverGrandeCity/scripts.pory"
	.string "“The paradise of flowers, the sea,\n"
# 215 "data/maps/EverGrandeCity/scripts.pory"
	.string "and POKéMON.”$"
# 216 "data/maps/EverGrandeCity/scripts.pory"

# 217 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_Text_RivalDefeated:
# 218 "data/maps/EverGrandeCity/scripts.pory"
	.string "I knew you would make it this far,\n"
# 219 "data/maps/EverGrandeCity/scripts.pory"
	.string "but I still wanted to test you.$"
# 220 "data/maps/EverGrandeCity/scripts.pory"

# 221 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_Text_ZinniaPreBattle:
# 222 "data/maps/EverGrandeCity/scripts.pory"
	.string "ZINNIA: {PLAYER}{KUN}!\p"
# 223 "data/maps/EverGrandeCity/scripts.pory"
	.string "I honestly didn't think I'd catch up\n"
# 224 "data/maps/EverGrandeCity/scripts.pory"
	.string "to you all the way out here…\p"
# 225 "data/maps/EverGrandeCity/scripts.pory"
	.string "EVER GRANDE CITY. The edge of the\n"
# 226 "data/maps/EverGrandeCity/scripts.pory"
	.string "region, and the POKéMON LEAGUE's\l"
# 227 "data/maps/EverGrandeCity/scripts.pory"
	.string "front door.\p"
# 228 "data/maps/EverGrandeCity/scripts.pory"
	.string "Every ROUTE, every GYM, every mess\n"
# 229 "data/maps/EverGrandeCity/scripts.pory"
	.string "this region threw at us… and you\l"
# 230 "data/maps/EverGrandeCity/scripts.pory"
	.string "just kept going.\p"
# 231 "data/maps/EverGrandeCity/scripts.pory"
	.string "There's one more thing I need to\n"
# 232 "data/maps/EverGrandeCity/scripts.pory"
	.string "know before you walk in there.\p"
# 233 "data/maps/EverGrandeCity/scripts.pory"
	.string "How strong you really are.\n"
# 234 "data/maps/EverGrandeCity/scripts.pory"
	.string "Right here. Right now.$"
# 235 "data/maps/EverGrandeCity/scripts.pory"

# 236 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_Text_ZennoPreBattle:
# 237 "data/maps/EverGrandeCity/scripts.pory"
	.string "ZENNO: {PLAYER}.\p"
# 238 "data/maps/EverGrandeCity/scripts.pory"
	.string "You actually made it. All the way\n"
# 239 "data/maps/EverGrandeCity/scripts.pory"
	.string "to EVER GRANDE CITY.\p"
# 240 "data/maps/EverGrandeCity/scripts.pory"
	.string "I've been chasing your trail since\n"
# 241 "data/maps/EverGrandeCity/scripts.pory"
	.string "LITTLEROOT, and every time I catch\l"
# 242 "data/maps/EverGrandeCity/scripts.pory"
	.string "up, you're already gone again.\p"
# 243 "data/maps/EverGrandeCity/scripts.pory"
	.string "Every GYM, every crisis this region\n"
# 244 "data/maps/EverGrandeCity/scripts.pory"
	.string "threw at us… you kept moving forward.\p"
# 245 "data/maps/EverGrandeCity/scripts.pory"
	.string "So before you walk into that\n"
# 246 "data/maps/EverGrandeCity/scripts.pory"
	.string "POKéMON LEAGUE, I need one last\l"
# 247 "data/maps/EverGrandeCity/scripts.pory"
	.string "look at how far you've come.\p"
# 248 "data/maps/EverGrandeCity/scripts.pory"
	.string "Battle me, {PLAYER}.\n"
# 249 "data/maps/EverGrandeCity/scripts.pory"
	.string "One more time.$"
# 250 "data/maps/EverGrandeCity/scripts.pory"

# 251 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_Text_ZinniaFarewell:
# 252 "data/maps/EverGrandeCity/scripts.pory"
	.string "ZINNIA: … … …\p"
# 253 "data/maps/EverGrandeCity/scripts.pory"
	.string "Yeah. That settles it.\p"
# 254 "data/maps/EverGrandeCity/scripts.pory"
	.string "I'm not ready for the ELITE FOUR yet.\n"
# 255 "data/maps/EverGrandeCity/scripts.pory"
	.string "Not like this.\p"
# 256 "data/maps/EverGrandeCity/scripts.pory"
	.string "But I'm not giving up either.\n"
# 257 "data/maps/EverGrandeCity/scripts.pory"
	.string "I'm going to keep training, keep\l"
# 258 "data/maps/EverGrandeCity/scripts.pory"
	.string "studying POKéMON, and figure out\l"
# 259 "data/maps/EverGrandeCity/scripts.pory"
	.string "exactly what I'm still missing.\p"
# 260 "data/maps/EverGrandeCity/scripts.pory"
	.string "Go on, {PLAYER}{KUN}.\n"
# 261 "data/maps/EverGrandeCity/scripts.pory"
	.string "This is your moment.\p"
# 262 "data/maps/EverGrandeCity/scripts.pory"
	.string "I'll be right behind you.\n"
# 263 "data/maps/EverGrandeCity/scripts.pory"
	.string "Someday.$"
# 264 "data/maps/EverGrandeCity/scripts.pory"

# 265 "data/maps/EverGrandeCity/scripts.pory"
EverGrandeCity_Text_ZennoFarewell:
# 266 "data/maps/EverGrandeCity/scripts.pory"
	.string "ZENNO: …\p"
# 267 "data/maps/EverGrandeCity/scripts.pory"
	.string "Yeah, I figured.\p"
# 268 "data/maps/EverGrandeCity/scripts.pory"
	.string "I'm not at ELITE FOUR level yet.\n"
# 269 "data/maps/EverGrandeCity/scripts.pory"
	.string "I can admit that much.\p"
# 270 "data/maps/EverGrandeCity/scripts.pory"
	.string "But this isn't me quitting. I'm\n"
# 271 "data/maps/EverGrandeCity/scripts.pory"
	.string "going back to training, back to\l"
# 272 "data/maps/EverGrandeCity/scripts.pory"
	.string "studying POKéMON, until I actually\l"
# 273 "data/maps/EverGrandeCity/scripts.pory"
	.string "deserve to stand up there.\p"
# 274 "data/maps/EverGrandeCity/scripts.pory"
	.string "Go get 'em, {PLAYER}.\p"
# 275 "data/maps/EverGrandeCity/scripts.pory"
	.string "I'll catch up eventually.\n"
# 276 "data/maps/EverGrandeCity/scripts.pory"
	.string "Count on it.$"
