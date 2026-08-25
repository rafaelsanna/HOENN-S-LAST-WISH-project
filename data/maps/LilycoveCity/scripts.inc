# 1 "data/maps/LilycoveCity/scripts.pory"

# 2 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_MapScripts::
# 3 "data/maps/LilycoveCity/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, LilycoveCity_OnTransition
# 4 "data/maps/LilycoveCity/scripts.pory"
	map_script MAP_SCRIPT_ON_LOAD, LilycoveCity_OnLoad
# 5 "data/maps/LilycoveCity/scripts.pory"
	.byte 0
# 6 "data/maps/LilycoveCity/scripts.pory"

# 7 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_OnTransition:
# 8 "data/maps/LilycoveCity/scripts.pory"
	setflag FLAG_VISITED_LILYCOVE_CITY
# 9 "data/maps/LilycoveCity/scripts.pory"
	setvar VAR_CONTEST_HALL_STATE, 0
# 10 "data/maps/LilycoveCity/scripts.pory"
	setflag FLAG_HIDE_LILYCOVE_CONTEST_HALL_REPORTER
# 11 "data/maps/LilycoveCity/scripts.pory"
	call_if_set FLAG_SYS_WEATHER_CTRL, Common_EventScript_SetAbnormalWeather
# 12 "data/maps/LilycoveCity/scripts.pory"
	call Common_EventScript_SetupRivalGfxId
# 13 "data/maps/LilycoveCity/scripts.pory"
	end
# 14 "data/maps/LilycoveCity/scripts.pory"

# 15 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_OnLoad:
# 16 "data/maps/LilycoveCity/scripts.pory"
	call_if_unset FLAG_TEAM_AQUA_ESCAPED_IN_SUBMARINE, LilycoveCity_EventScript_SetWailmerMetatiles
# 17 "data/maps/LilycoveCity/scripts.pory"
	end
# 18 "data/maps/LilycoveCity/scripts.pory"

# 19 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_SetWailmerMetatiles::
# 20 "data/maps/LilycoveCity/scripts.pory"
	setmetatile 76, 12, METATILE_Lilycove_Wailmer0, TRUE
# 21 "data/maps/LilycoveCity/scripts.pory"
	setmetatile 77, 12, METATILE_Lilycove_Wailmer1, TRUE
# 22 "data/maps/LilycoveCity/scripts.pory"
	setmetatile 76, 13, METATILE_Lilycove_Wailmer2, TRUE
# 23 "data/maps/LilycoveCity/scripts.pory"
	setmetatile 77, 13, METATILE_Lilycove_Wailmer3, TRUE
# 24 "data/maps/LilycoveCity/scripts.pory"
	setmetatile 76, 14, METATILE_Lilycove_Wailmer0_Alt, TRUE
# 25 "data/maps/LilycoveCity/scripts.pory"
	setmetatile 77, 14, METATILE_Lilycove_Wailmer1_Alt, TRUE
# 26 "data/maps/LilycoveCity/scripts.pory"
	setmetatile 76, 15, METATILE_Lilycove_Wailmer2, TRUE
# 27 "data/maps/LilycoveCity/scripts.pory"
	setmetatile 77, 15, METATILE_Lilycove_Wailmer3, TRUE
# 28 "data/maps/LilycoveCity/scripts.pory"
	setmetatile 77, 16, METATILE_Lilycove_Wailmer0_Alt, TRUE
# 29 "data/maps/LilycoveCity/scripts.pory"
	setmetatile 78, 16, METATILE_Lilycove_Wailmer1_Alt, TRUE
# 30 "data/maps/LilycoveCity/scripts.pory"
	setmetatile 77, 17, METATILE_Lilycove_Wailmer2, TRUE
# 31 "data/maps/LilycoveCity/scripts.pory"
	setmetatile 78, 17, METATILE_Lilycove_Wailmer3, TRUE
# 32 "data/maps/LilycoveCity/scripts.pory"
	return
# 33 "data/maps/LilycoveCity/scripts.pory"

# 34 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BerryGentleman::
# 35 "data/maps/LilycoveCity/scripts.pory"
	lock
# 36 "data/maps/LilycoveCity/scripts.pory"
	faceplayer
# 37 "data/maps/LilycoveCity/scripts.pory"
	dotimebasedevents
# 38 "data/maps/LilycoveCity/scripts.pory"
	goto_if_set FLAG_DAILY_LILYCOVE_RECEIVED_BERRY, LilycoveCity_EventScript_ReceivedBerry
# 39 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BerrySuitsYou, MSGBOX_DEFAULT
# 40 "data/maps/LilycoveCity/scripts.pory"
	random 10
# 41 "data/maps/LilycoveCity/scripts.pory"
	addvar VAR_RESULT, FIRST_BERRY_INDEX
# 42 "data/maps/LilycoveCity/scripts.pory"
	giveitem VAR_RESULT
# 43 "data/maps/LilycoveCity/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 44 "data/maps/LilycoveCity/scripts.pory"
	setflag FLAG_DAILY_LILYCOVE_RECEIVED_BERRY
# 45 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BecauseYoureTrainer, MSGBOX_DEFAULT
# 46 "data/maps/LilycoveCity/scripts.pory"
	release
# 47 "data/maps/LilycoveCity/scripts.pory"
	end
# 48 "data/maps/LilycoveCity/scripts.pory"

# 49 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_ReceivedBerry::
# 50 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_PokeblocksSuitPokemon, MSGBOX_DEFAULT
# 51 "data/maps/LilycoveCity/scripts.pory"
	release
# 52 "data/maps/LilycoveCity/scripts.pory"
	end
# 53 "data/maps/LilycoveCity/scripts.pory"

# 54 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_Man3::
# 55 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_ContestHallInTown, MSGBOX_NPC
# 56 "data/maps/LilycoveCity/scripts.pory"
	end
# 57 "data/maps/LilycoveCity/scripts.pory"

# 58 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_Girl::
# 59 "data/maps/LilycoveCity/scripts.pory"
	lock
# 60 "data/maps/LilycoveCity/scripts.pory"
	faceplayer
# 61 "data/maps/LilycoveCity/scripts.pory"
	goto_if_set FLAG_BADGE07_GET, LilycoveCity_EventScript_GirlAquaGone
# 62 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_StrangeCaveInCove, MSGBOX_DEFAULT
# 63 "data/maps/LilycoveCity/scripts.pory"
	release
# 64 "data/maps/LilycoveCity/scripts.pory"
	end
# 65 "data/maps/LilycoveCity/scripts.pory"

# 66 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_GirlAquaGone::
# 67 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_GoingToMoveDeleterForHMs, MSGBOX_DEFAULT
# 68 "data/maps/LilycoveCity/scripts.pory"
	release
# 69 "data/maps/LilycoveCity/scripts.pory"
	end
# 70 "data/maps/LilycoveCity/scripts.pory"

# 71 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_RichBoy::
# 72 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_ImFromKanto, MSGBOX_NPC
# 73 "data/maps/LilycoveCity/scripts.pory"
	end
# 74 "data/maps/LilycoveCity/scripts.pory"

# 75 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_Sailor2::
# 76 "data/maps/LilycoveCity/scripts.pory"
	lock
# 77 "data/maps/LilycoveCity/scripts.pory"
	faceplayer
# 78 "data/maps/LilycoveCity/scripts.pory"
	goto_if_set FLAG_TEAM_AQUA_ESCAPED_IN_SUBMARINE, LilycoveCity_EventScript_Sailor2AquaGone
# 79 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_TeamAquaBeenTrainingWailmer, MSGBOX_DEFAULT
# 80 "data/maps/LilycoveCity/scripts.pory"
	release
# 81 "data/maps/LilycoveCity/scripts.pory"
	end
# 82 "data/maps/LilycoveCity/scripts.pory"

# 83 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_Sailor2AquaGone::
# 84 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_SomeonePuntedTeamAquaOut, MSGBOX_DEFAULT
# 85 "data/maps/LilycoveCity/scripts.pory"
	release
# 86 "data/maps/LilycoveCity/scripts.pory"
	end
# 87 "data/maps/LilycoveCity/scripts.pory"

# 88 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_Woman2::
# 89 "data/maps/LilycoveCity/scripts.pory"
	lock
# 90 "data/maps/LilycoveCity/scripts.pory"
	faceplayer
# 91 "data/maps/LilycoveCity/scripts.pory"
	goto_if_set FLAG_TEAM_AQUA_ESCAPED_IN_SUBMARINE, LilycoveCity_EventScript_Woman2AquaGone
# 92 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_SomeoneStoleMyPokemon, MSGBOX_DEFAULT
# 93 "data/maps/LilycoveCity/scripts.pory"
	release
# 94 "data/maps/LilycoveCity/scripts.pory"
	end
# 95 "data/maps/LilycoveCity/scripts.pory"

# 96 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_Woman2AquaGone::
# 97 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MissingPokemonCameBack, MSGBOX_DEFAULT
# 98 "data/maps/LilycoveCity/scripts.pory"
	release
# 99 "data/maps/LilycoveCity/scripts.pory"
	end
# 100 "data/maps/LilycoveCity/scripts.pory"

# 101 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_Man2::
# 102 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_ImArtDealer, MSGBOX_NPC
# 103 "data/maps/LilycoveCity/scripts.pory"
	end
# 104 "data/maps/LilycoveCity/scripts.pory"

# 105 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_ExpertM1::
# 106 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_SeaRemainsForeverYoung, MSGBOX_SIGN
# 107 "data/maps/LilycoveCity/scripts.pory"
	end
# 108 "data/maps/LilycoveCity/scripts.pory"

# 109 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_ExpertF::
# 110 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_SixtyYearsAgoHusbandProposed, MSGBOX_SIGN
# 111 "data/maps/LilycoveCity/scripts.pory"
	end
# 112 "data/maps/LilycoveCity/scripts.pory"

# 113 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_ExpertM2::
# 114 "data/maps/LilycoveCity/scripts.pory"
	lock
# 115 "data/maps/LilycoveCity/scripts.pory"
	faceplayer
# 116 "data/maps/LilycoveCity/scripts.pory"
	goto_if_set FLAG_BADGE07_GET, LilycoveCity_EventScript_ExpertM2AquaGone
# 117 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_TeamAquaRenovatedCavern, MSGBOX_DEFAULT
# 118 "data/maps/LilycoveCity/scripts.pory"
	release
# 119 "data/maps/LilycoveCity/scripts.pory"
	end
# 120 "data/maps/LilycoveCity/scripts.pory"

# 121 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_ExpertM2AquaGone::
# 122 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_TeamAquaLotGoneForGood, MSGBOX_DEFAULT
# 123 "data/maps/LilycoveCity/scripts.pory"
	release
# 124 "data/maps/LilycoveCity/scripts.pory"
	end
# 125 "data/maps/LilycoveCity/scripts.pory"

# 126 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_Sailor1::
# 127 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_HeardTowerCalledSkyPillar, MSGBOX_NPC
# 128 "data/maps/LilycoveCity/scripts.pory"
	end
# 129 "data/maps/LilycoveCity/scripts.pory"

# 130 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_FatMan::
# 131 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_SawTallTowerOnRoute131, MSGBOX_NPC
# 132 "data/maps/LilycoveCity/scripts.pory"
	end
# 133 "data/maps/LilycoveCity/scripts.pory"

# 134 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_Man1::
# 135 "data/maps/LilycoveCity/scripts.pory"
	lockall
# 136 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_JustArrivedAndSawRarePokemon, MSGBOX_NPC
# 137 "data/maps/LilycoveCity/scripts.pory"
	applymovement LOCALID_LILYCOVE_MAN_1, Common_Movement_FaceOriginalDirection
# 138 "data/maps/LilycoveCity/scripts.pory"
	end
# 139 "data/maps/LilycoveCity/scripts.pory"

# 140 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_Woman1::
# 141 "data/maps/LilycoveCity/scripts.pory"
	lockall
# 142 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_HoneymoonVowToSeeRarePokemon, MSGBOX_NPC
# 143 "data/maps/LilycoveCity/scripts.pory"
	applymovement LOCALID_LILYCOVE_WOMAN_1, Common_Movement_FaceOriginalDirection
# 144 "data/maps/LilycoveCity/scripts.pory"
	end
# 145 "data/maps/LilycoveCity/scripts.pory"

# 146 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_CitySign::
# 147 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_CitySign, MSGBOX_SIGN
# 148 "data/maps/LilycoveCity/scripts.pory"
	end
# 149 "data/maps/LilycoveCity/scripts.pory"

# 150 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_ContestHallSign::
# 151 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_ContestHallSign, MSGBOX_SIGN
# 152 "data/maps/LilycoveCity/scripts.pory"
	end
# 153 "data/maps/LilycoveCity/scripts.pory"

# 154 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MotelSign::
# 155 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MotelSign, MSGBOX_SIGN
# 156 "data/maps/LilycoveCity/scripts.pory"
	end
# 157 "data/maps/LilycoveCity/scripts.pory"

# 158 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MuseumSign::
# 159 "data/maps/LilycoveCity/scripts.pory"
	lockall
# 160 "data/maps/LilycoveCity/scripts.pory"
	specialvar VAR_0x8004, CountPlayerMuseumPaintings
# 161 "data/maps/LilycoveCity/scripts.pory"
	switch VAR_0x8004
# 162 "data/maps/LilycoveCity/scripts.pory"
	case 0, LilycoveCity_EventScript_MuseumSignNoPaintings
# 163 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MuseumSignPlayersExhibit, MSGBOX_DEFAULT
# 164 "data/maps/LilycoveCity/scripts.pory"
	releaseall
# 165 "data/maps/LilycoveCity/scripts.pory"
	end
# 166 "data/maps/LilycoveCity/scripts.pory"

# 167 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MuseumSignNoPaintings::
# 168 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MuseumSign, MSGBOX_DEFAULT
# 169 "data/maps/LilycoveCity/scripts.pory"
	releaseall
# 170 "data/maps/LilycoveCity/scripts.pory"
	end
# 171 "data/maps/LilycoveCity/scripts.pory"

# 172 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_HarborSign::
# 173 "data/maps/LilycoveCity/scripts.pory"
	lockall
# 174 "data/maps/LilycoveCity/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, LilycoveCity_EventScript_HarborSignFerryReady
# 175 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_HarborSignUnderConstruction, MSGBOX_DEFAULT
# 176 "data/maps/LilycoveCity/scripts.pory"
	releaseall
# 177 "data/maps/LilycoveCity/scripts.pory"
	end
# 178 "data/maps/LilycoveCity/scripts.pory"

# 179 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_HarborSignFerryReady::
# 180 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_HarborSign, MSGBOX_DEFAULT
# 181 "data/maps/LilycoveCity/scripts.pory"
	releaseall
# 182 "data/maps/LilycoveCity/scripts.pory"
	end
# 183 "data/maps/LilycoveCity/scripts.pory"

# 184 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_TrainerFanClubSign::
# 185 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_TrainerFanClubSign, MSGBOX_SIGN
# 186 "data/maps/LilycoveCity/scripts.pory"
	end
# 187 "data/maps/LilycoveCity/scripts.pory"

# 188 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_DepartmentStoreSign::
# 189 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_DepartmentStoreSign, MSGBOX_SIGN
# 190 "data/maps/LilycoveCity/scripts.pory"
	end
# 191 "data/maps/LilycoveCity/scripts.pory"

# 192 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MoveDeletersHouseSign::
# 193 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MoveDeletersHouseSign, MSGBOX_SIGN
# 194 "data/maps/LilycoveCity/scripts.pory"
	end
# 195 "data/maps/LilycoveCity/scripts.pory"

# 196 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_WailmerTrainerGrunt::
# 197 "data/maps/LilycoveCity/scripts.pory"
	lockall
# 198 "data/maps/LilycoveCity/scripts.pory"
	goto_if_set FLAG_MET_WAILMER_TRAINER, LilycoveCity_EventScript_MetWailmerTrainer
# 199 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_WailmerLeapOutOfWater, MSGBOX_DEFAULT
# 200 "data/maps/LilycoveCity/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FacePlayer
# 201 "data/maps/LilycoveCity/scripts.pory"
	waitmovement 0
# 202 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_GetLostMessingUpTraining, MSGBOX_DEFAULT
# 203 "data/maps/LilycoveCity/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_FaceOriginalDirection
# 204 "data/maps/LilycoveCity/scripts.pory"
	waitmovement 0
# 205 "data/maps/LilycoveCity/scripts.pory"
	setflag FLAG_MET_WAILMER_TRAINER
# 206 "data/maps/LilycoveCity/scripts.pory"
	releaseall
# 207 "data/maps/LilycoveCity/scripts.pory"
	end
# 208 "data/maps/LilycoveCity/scripts.pory"

# 209 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MetWailmerTrainer::
# 210 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_WailmerLeapOutOfWater, MSGBOX_DEFAULT
# 211 "data/maps/LilycoveCity/scripts.pory"
	releaseall
# 212 "data/maps/LilycoveCity/scripts.pory"
	end
# 213 "data/maps/LilycoveCity/scripts.pory"

# 214 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_AquaGrunt1::
# 215 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MovedLootIntoHideoutToday, MSGBOX_NPC
# 216 "data/maps/LilycoveCity/scripts.pory"
	end
# 217 "data/maps/LilycoveCity/scripts.pory"

# 218 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_AquaGrunt2::
# 219 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_ChanceToDoBigThings, MSGBOX_NPC
# 220 "data/maps/LilycoveCity/scripts.pory"
	end
# 221 "data/maps/LilycoveCity/scripts.pory"

# 222 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_AquaGrunt3::
# 223 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_DontGoNearCaveInCove, MSGBOX_NPC
# 224 "data/maps/LilycoveCity/scripts.pory"
	end
# 225 "data/maps/LilycoveCity/scripts.pory"

# 226 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_AquaGrunt4::
# 227 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_IfWorldBecomesOurs, MSGBOX_NPC
# 228 "data/maps/LilycoveCity/scripts.pory"
	end
# 229 "data/maps/LilycoveCity/scripts.pory"

# 230 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_Rival::
# 231 "data/maps/LilycoveCity/scripts.pory"
	lock
# 232 "data/maps/LilycoveCity/scripts.pory"
	faceplayer
# 233 "data/maps/LilycoveCity/scripts.pory"
	checkplayergender
# 234 "data/maps/LilycoveCity/scripts.pory"
	goto_if_eq VAR_RESULT, MALE, LilycoveCity_EventScript_May
# 235 "data/maps/LilycoveCity/scripts.pory"
	goto_if_eq VAR_RESULT, FEMALE, LilycoveCity_EventScript_Brendan
# 236 "data/maps/LilycoveCity/scripts.pory"
	end
# 237 "data/maps/LilycoveCity/scripts.pory"

# 238 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_May::
# 239 "data/maps/LilycoveCity/scripts.pory"
	playbgm MUS_ENCOUNTER_MAY, TRUE
# 240 "data/maps/LilycoveCity/scripts.pory"
	call_if_set FLAG_DECLINED_RIVAL_BATTLE_LILYCOVE, LilycoveCity_EventScript_MayAskToBattleAgain
# 241 "data/maps/LilycoveCity/scripts.pory"
	call_if_unset FLAG_DECLINED_RIVAL_BATTLE_LILYCOVE, LilycoveCity_EventScript_MayAskToBattle
# 242 "data/maps/LilycoveCity/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LilycoveCity_EventScript_DeclineMayBattle
# 243 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 244 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MayWontBeBeaten, MSGBOX_DEFAULT
# 245 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 246 "data/maps/LilycoveCity/scripts.pory"
	switch VAR_STARTER_MON
# 247 "data/maps/LilycoveCity/scripts.pory"
	case 0, LilycoveCity_EventScript_BattleMayTreecko
# 248 "data/maps/LilycoveCity/scripts.pory"
	case 1, LilycoveCity_EventScript_BattleMayTorchic
# 249 "data/maps/LilycoveCity/scripts.pory"
	case 2, LilycoveCity_EventScript_BattleMayMudkip
# 250 "data/maps/LilycoveCity/scripts.pory"
	end
# 251 "data/maps/LilycoveCity/scripts.pory"

# 252 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MayAskToBattleAgain::
# 253 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 254 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MayBattleMe, MSGBOX_YESNO
# 255 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 256 "data/maps/LilycoveCity/scripts.pory"
	return
# 257 "data/maps/LilycoveCity/scripts.pory"

# 258 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MayAskToBattle::
# 259 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 260 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MayShoppingLetsBattle, MSGBOX_YESNO
# 261 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 262 "data/maps/LilycoveCity/scripts.pory"
	return
# 263 "data/maps/LilycoveCity/scripts.pory"

# 264 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_DeclineMayBattle::
# 265 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 266 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MayNotRaisingPokemon, MSGBOX_YESNO
# 267 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 268 "data/maps/LilycoveCity/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LilycoveCity_EventScript_DeclineMayBattle
# 269 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 270 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MayWontBeBeaten, MSGBOX_DEFAULT
# 271 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 272 "data/maps/LilycoveCity/scripts.pory"
	switch VAR_STARTER_MON
# 273 "data/maps/LilycoveCity/scripts.pory"
	case 0, LilycoveCity_EventScript_BattleMayTreecko
# 274 "data/maps/LilycoveCity/scripts.pory"
	case 1, LilycoveCity_EventScript_BattleMayTorchic
# 275 "data/maps/LilycoveCity/scripts.pory"
	case 2, LilycoveCity_EventScript_BattleMayMudkip
# 276 "data/maps/LilycoveCity/scripts.pory"
	end
# 277 "data/maps/LilycoveCity/scripts.pory"

# 278 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_Brendan::
# 279 "data/maps/LilycoveCity/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 280 "data/maps/LilycoveCity/scripts.pory"
	call_if_set FLAG_DECLINED_RIVAL_BATTLE_LILYCOVE, LilycoveCity_EventScript_BrendanAskToBattleAgain
# 281 "data/maps/LilycoveCity/scripts.pory"
	call_if_unset FLAG_DECLINED_RIVAL_BATTLE_LILYCOVE, LilycoveCity_EventScript_BrendanAskToBattle
# 282 "data/maps/LilycoveCity/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LilycoveCity_EventScript_DeclineBrendanBattle
# 283 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 284 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanWontBeBeaten, MSGBOX_DEFAULT
# 285 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 286 "data/maps/LilycoveCity/scripts.pory"
	switch VAR_STARTER_MON
# 287 "data/maps/LilycoveCity/scripts.pory"
	case 0, LilycoveCity_EventScript_BattleBrendanTreecko
# 288 "data/maps/LilycoveCity/scripts.pory"
	case 1, LilycoveCity_EventScript_BattleBrendanTorchic
# 289 "data/maps/LilycoveCity/scripts.pory"
	case 2, LilycoveCity_EventScript_BattleBrendanMudkip
# 290 "data/maps/LilycoveCity/scripts.pory"
	end
# 291 "data/maps/LilycoveCity/scripts.pory"

# 292 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BrendanAskToBattleAgain::
# 293 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 294 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanBattleMe, MSGBOX_YESNO
# 295 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 296 "data/maps/LilycoveCity/scripts.pory"
	return
# 297 "data/maps/LilycoveCity/scripts.pory"

# 298 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BrendanAskToBattle::
# 299 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 300 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanShoppingLetsBattle, MSGBOX_YESNO
# 301 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 302 "data/maps/LilycoveCity/scripts.pory"
	return
# 303 "data/maps/LilycoveCity/scripts.pory"

# 304 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_DeclineBrendanBattle::
# 305 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 306 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanNoConfidence, MSGBOX_YESNO
# 307 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 308 "data/maps/LilycoveCity/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LilycoveCity_EventScript_DeclineBrendanBattle
# 309 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 310 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanWontBeBeaten, MSGBOX_DEFAULT
# 311 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 312 "data/maps/LilycoveCity/scripts.pory"
	switch VAR_STARTER_MON
# 313 "data/maps/LilycoveCity/scripts.pory"
	case 0, LilycoveCity_EventScript_BattleBrendanTreecko
# 314 "data/maps/LilycoveCity/scripts.pory"
	case 1, LilycoveCity_EventScript_BattleBrendanTorchic
# 315 "data/maps/LilycoveCity/scripts.pory"
	case 2, LilycoveCity_EventScript_BattleBrendanMudkip
# 316 "data/maps/LilycoveCity/scripts.pory"
	end
# 317 "data/maps/LilycoveCity/scripts.pory"

# 318 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BattleMayTreecko::
# 319 "data/maps/LilycoveCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_LILYCOVE_TREECKO, LilycoveCity_Text_MayDefeat
# 320 "data/maps/LilycoveCity/scripts.pory"
	goto LilycoveCity_EventScript_DefeatedMay
# 321 "data/maps/LilycoveCity/scripts.pory"
	end
# 322 "data/maps/LilycoveCity/scripts.pory"

# 323 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BattleMayTorchic::
# 324 "data/maps/LilycoveCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_LILYCOVE_TORCHIC, LilycoveCity_Text_MayDefeat
# 325 "data/maps/LilycoveCity/scripts.pory"
	goto LilycoveCity_EventScript_DefeatedMay
# 326 "data/maps/LilycoveCity/scripts.pory"
	end
# 327 "data/maps/LilycoveCity/scripts.pory"

# 328 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BattleMayMudkip::
# 329 "data/maps/LilycoveCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_LILYCOVE_MUDKIP, LilycoveCity_Text_MayDefeat
# 330 "data/maps/LilycoveCity/scripts.pory"
	goto LilycoveCity_EventScript_DefeatedMay
# 331 "data/maps/LilycoveCity/scripts.pory"
	end
# 332 "data/maps/LilycoveCity/scripts.pory"

# 333 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BattleBrendanTreecko::
# 334 "data/maps/LilycoveCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_LILYCOVE_TREECKO, LilycoveCity_Text_BrendanDefeat
# 335 "data/maps/LilycoveCity/scripts.pory"
	goto LilycoveCity_EventScript_DefeatedBrendan
# 336 "data/maps/LilycoveCity/scripts.pory"
	end
# 337 "data/maps/LilycoveCity/scripts.pory"

# 338 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BattleBrendanTorchic::
# 339 "data/maps/LilycoveCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_LILYCOVE_TORCHIC, LilycoveCity_Text_BrendanDefeat
# 340 "data/maps/LilycoveCity/scripts.pory"
	goto LilycoveCity_EventScript_DefeatedBrendan
# 341 "data/maps/LilycoveCity/scripts.pory"
	end
# 342 "data/maps/LilycoveCity/scripts.pory"

# 343 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BattleBrendanMudkip::
# 344 "data/maps/LilycoveCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_LILYCOVE_MUDKIP, LilycoveCity_Text_BrendanDefeat
# 345 "data/maps/LilycoveCity/scripts.pory"
	goto LilycoveCity_EventScript_DefeatedBrendan
# 346 "data/maps/LilycoveCity/scripts.pory"
	end
# 347 "data/maps/LilycoveCity/scripts.pory"

# 348 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_DefeatedMay::
# 349 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZINNIA, EMOTE_NORMAL
# 350 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MayGoingBackToLittleroot, MSGBOX_DEFAULT
# 351 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 352 "data/maps/LilycoveCity/scripts.pory"
	setvar VAR_RESULT, FALSE
# 353 "data/maps/LilycoveCity/scripts.pory"
	call_if_set FLAG_BADGE06_GET, LilycoveCity_EventScript_CheckFinalBadge
# 354 "data/maps/LilycoveCity/scripts.pory"
	call_if_eq VAR_RESULT, FALSE, LilycoveCity_EventScript_MayCollectBadges
# 355 "data/maps/LilycoveCity/scripts.pory"
	call_if_eq VAR_RESULT, TRUE, LilycoveCity_EventScript_MayPokemonLeague
# 356 "data/maps/LilycoveCity/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_BEDROOM
# 357 "data/maps/LilycoveCity/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_PICHU_DOLL
# 358 "data/maps/LilycoveCity/scripts.pory"
	goto LilycoveCity_EventScript_RivalFlyAway
# 359 "data/maps/LilycoveCity/scripts.pory"
	end
# 360 "data/maps/LilycoveCity/scripts.pory"

# 361 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_CheckFinalBadge::
# 362 "data/maps/LilycoveCity/scripts.pory"
	goto_if_set FLAG_BADGE08_GET, LilycoveCity_EventScript_HasFinalBadge
# 363 "data/maps/LilycoveCity/scripts.pory"
	return
# 364 "data/maps/LilycoveCity/scripts.pory"

# 365 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_HasFinalBadge::
# 366 "data/maps/LilycoveCity/scripts.pory"
	setvar VAR_RESULT, TRUE
# 367 "data/maps/LilycoveCity/scripts.pory"
	return
# 368 "data/maps/LilycoveCity/scripts.pory"

# 369 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MayCollectBadges::
# 370 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MayYouGoingToCollectBadges, MSGBOX_DEFAULT
# 371 "data/maps/LilycoveCity/scripts.pory"
	return
# 372 "data/maps/LilycoveCity/scripts.pory"

# 373 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MayPokemonLeague::
# 374 "data/maps/LilycoveCity/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, LilycoveCity_EventScript_MayBattleFrontier
# 375 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MayYouGoingToPokemonLeague, MSGBOX_DEFAULT
# 376 "data/maps/LilycoveCity/scripts.pory"
	return
# 377 "data/maps/LilycoveCity/scripts.pory"

# 378 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MayBattleFrontier::
# 379 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MayYouGoingToBattleFrontier, MSGBOX_DEFAULT
# 380 "data/maps/LilycoveCity/scripts.pory"
	return
# 381 "data/maps/LilycoveCity/scripts.pory"

# 382 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_DefeatedBrendan::
# 383 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_ZENNO, EMOTE_NORMAL
# 384 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanGoingBackToLittleroot, MSGBOX_DEFAULT
# 385 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 386 "data/maps/LilycoveCity/scripts.pory"
	setvar VAR_RESULT, FALSE
# 387 "data/maps/LilycoveCity/scripts.pory"
	call_if_set FLAG_BADGE06_GET, LilycoveCity_EventScript_CheckFinalBadge
# 388 "data/maps/LilycoveCity/scripts.pory"
	call_if_eq VAR_RESULT, FALSE, LilycoveCity_EventScript_BrendanCollectBadges
# 389 "data/maps/LilycoveCity/scripts.pory"
	call_if_eq VAR_RESULT, TRUE, LilycoveCity_EventScript_BrendanPokemonLeague
# 390 "data/maps/LilycoveCity/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_BEDROOM
# 391 "data/maps/LilycoveCity/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_SWABLU_DOLL
# 392 "data/maps/LilycoveCity/scripts.pory"
	goto LilycoveCity_EventScript_RivalFlyAway
# 393 "data/maps/LilycoveCity/scripts.pory"
	end
# 394 "data/maps/LilycoveCity/scripts.pory"

# 395 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BrendanCollectBadges::
# 396 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanYouGoingToCollectBadges, MSGBOX_DEFAULT
# 397 "data/maps/LilycoveCity/scripts.pory"
	return
# 398 "data/maps/LilycoveCity/scripts.pory"

# 399 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BrendanPokemonLeague::
# 400 "data/maps/LilycoveCity/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, LilycoveCity_EventScript_BrendanBattleFrontier
# 401 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanYouGoingToPokemonLeague, MSGBOX_DEFAULT
# 402 "data/maps/LilycoveCity/scripts.pory"
	return
# 403 "data/maps/LilycoveCity/scripts.pory"

# 404 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BrendanBattleFrontier::
# 405 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanYouGoingToBattleFrontier, MSGBOX_DEFAULT
# 406 "data/maps/LilycoveCity/scripts.pory"
	return
# 407 "data/maps/LilycoveCity/scripts.pory"

# 408 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_RivalFlyAway::
# 409 "data/maps/LilycoveCity/scripts.pory"
	closemessage
# 410 "data/maps/LilycoveCity/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_WalkInPlaceFasterDown
# 411 "data/maps/LilycoveCity/scripts.pory"
	waitmovement 0
# 412 "data/maps/LilycoveCity/scripts.pory"
	delay 50
# 413 "data/maps/LilycoveCity/scripts.pory"
	setfieldeffectargument 0, 1
# 414 "data/maps/LilycoveCity/scripts.pory"
	dofieldeffect FLDEFF_NPCFLY_OUT
# 415 "data/maps/LilycoveCity/scripts.pory"
	delay 15
# 416 "data/maps/LilycoveCity/scripts.pory"
	removeobject VAR_LAST_TALKED
# 417 "data/maps/LilycoveCity/scripts.pory"
	waitfieldeffect FLDEFF_NPCFLY_OUT
# 418 "data/maps/LilycoveCity/scripts.pory"
	savebgm MUS_DUMMY
# 419 "data/maps/LilycoveCity/scripts.pory"
	fadedefaultbgm
# 420 "data/maps/LilycoveCity/scripts.pory"
	setflag FLAG_MET_RIVAL_LILYCOVE
# 421 "data/maps/LilycoveCity/scripts.pory"
	release
# 422 "data/maps/LilycoveCity/scripts.pory"
	end
# 423 "data/maps/LilycoveCity/scripts.pory"

# 424 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_SchoolKidM::
# 425 "data/maps/LilycoveCity/scripts.pory"
	lock
# 426 "data/maps/LilycoveCity/scripts.pory"
	faceplayer
# 427 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_DoYouKnowAboutBerryBlender, MSGBOX_YESNO
# 428 "data/maps/LilycoveCity/scripts.pory"
	call_if_eq VAR_RESULT, YES, LilycoveCity_EventScript_KnowAboutBerryBlender
# 429 "data/maps/LilycoveCity/scripts.pory"
	call_if_eq VAR_RESULT, NO, LilycoveCity_EventScript_DontKnowAboutBerryBlender
# 430 "data/maps/LilycoveCity/scripts.pory"
	release
# 431 "data/maps/LilycoveCity/scripts.pory"
	end
# 432 "data/maps/LilycoveCity/scripts.pory"

# 433 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_KnowAboutBerryBlender::
# 434 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_FasterSpinBetterPokeblocks, MSGBOX_DEFAULT
# 435 "data/maps/LilycoveCity/scripts.pory"
	return
# 436 "data/maps/LilycoveCity/scripts.pory"

# 437 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_DontKnowAboutBerryBlender::
# 438 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_ExplainBerryBlender, MSGBOX_DEFAULT
# 439 "data/maps/LilycoveCity/scripts.pory"
	return
# 440 "data/maps/LilycoveCity/scripts.pory"

# 441 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayShoppingLetsBattle:
# 442 "data/maps/LilycoveCity/scripts.pory"
	.string "ZINNIA: Hi {PLAYER}{KUN}!\p"
# 443 "data/maps/LilycoveCity/scripts.pory"
	.string "I had a feeling you'd show up here.\p"
# 444 "data/maps/LilycoveCity/scripts.pory"
	.string "If something worth finding is in stock,\n"
# 445 "data/maps/LilycoveCity/scripts.pory"
	.string "the best trainers come looking, right?\p"
# 446 "data/maps/LilycoveCity/scripts.pory"
	.string "But honestly… I was waiting for you.\p"
# 447 "data/maps/LilycoveCity/scripts.pory"
	.string "Word's been spreading.\n"
# 448 "data/maps/LilycoveCity/scripts.pory"
	.string "You've been making a name out there.\p"
# 449 "data/maps/LilycoveCity/scripts.pory"
	.string "I want to see it for myself!\n"
# 450 "data/maps/LilycoveCity/scripts.pory"
	.string "You ready?$"
# 451 "data/maps/LilycoveCity/scripts.pory"

# 452 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayNotRaisingPokemon:
# 453 "data/maps/LilycoveCity/scripts.pory"
	.string "ZINNIA: Huh? Don't be shy!\p"
# 454 "data/maps/LilycoveCity/scripts.pory"
	.string "You're turning down a battle.\n"
# 455 "data/maps/LilycoveCity/scripts.pory"
	.string "After everything you've been through.\p"
# 456 "data/maps/LilycoveCity/scripts.pory"
	.string "That's almost funny.\p"
# 457 "data/maps/LilycoveCity/scripts.pory"
	.string "Almost. So. Are we doing this or not?$"
# 458 "data/maps/LilycoveCity/scripts.pory"

# 459 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayBattleMe:
# 460 "data/maps/LilycoveCity/scripts.pory"
	.string "ZINNIA: I'm still here. You're still\n"
# 461 "data/maps/LilycoveCity/scripts.pory"
	.string "here.\p"
# 462 "data/maps/LilycoveCity/scripts.pory"
	.string "Let's not waste this.\n"
# 463 "data/maps/LilycoveCity/scripts.pory"
	.string "Battle me.$"
# 464 "data/maps/LilycoveCity/scripts.pory"

# 465 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayWontBeBeaten:
# 466 "data/maps/LilycoveCity/scripts.pory"
	.string "ZINNIA: I've been training hard\n"
# 467 "data/maps/LilycoveCity/scripts.pory"
	.string "for this moment, {PLAYER}{KUN}.\p"
# 468 "data/maps/LilycoveCity/scripts.pory"
	.string "Don't hold back.$"
# 469 "data/maps/LilycoveCity/scripts.pory"

# 470 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayDefeat:
# 471 "data/maps/LilycoveCity/scripts.pory"
	.string "… … … … … …\p"
# 472 "data/maps/LilycoveCity/scripts.pory"
	.string "You're genuinely strong.\n"
# 473 "data/maps/LilycoveCity/scripts.pory"
	.string "I won't pretend otherwise.\p"
# 474 "data/maps/LilycoveCity/scripts.pory"
	.string "But I'm not done, {PLAYER}{KUN}.\n"
# 475 "data/maps/LilycoveCity/scripts.pory"
	.string "Not even close.$"
# 476 "data/maps/LilycoveCity/scripts.pory"

# 477 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayGoingBackToLittleroot:
# 478 "data/maps/LilycoveCity/scripts.pory"
	.string "ZINNIA: You've grown a lot.\n"
# 479 "data/maps/LilycoveCity/scripts.pory"
	.string "I'll say that honestly.\p"
# 480 "data/maps/LilycoveCity/scripts.pory"
	.string "I'm heading back to LITTLEROOT\n"
# 481 "data/maps/LilycoveCity/scripts.pory"
	.string "to keep training.\p"
# 482 "data/maps/LilycoveCity/scripts.pory"
	.string "Next time we meet, the result\n"
# 483 "data/maps/LilycoveCity/scripts.pory"
	.string "will be different.$"
# 484 "data/maps/LilycoveCity/scripts.pory"

# 485 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayYouGoingToCollectBadges:
# 486 "data/maps/LilycoveCity/scripts.pory"
	.string "Still BADGES to collect, {PLAYER}{KUN}?\p"
# 487 "data/maps/LilycoveCity/scripts.pory"
	.string "Then keep moving.\p"
# 488 "data/maps/LilycoveCity/scripts.pory"
	.string "I'll be training while you do.\n"
# 489 "data/maps/LilycoveCity/scripts.pory"
	.string "See you at the top.$"
# 490 "data/maps/LilycoveCity/scripts.pory"

# 491 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayYouGoingToPokemonLeague:
# 492 "data/maps/LilycoveCity/scripts.pory"
	.string "The POKéMON LEAGUE.\n"
# 493 "data/maps/LilycoveCity/scripts.pory"
	.string "Of course that's where you're headed.\p"
# 494 "data/maps/LilycoveCity/scripts.pory"
	.string "Go. You've earned the right\n"
# 495 "data/maps/LilycoveCity/scripts.pory"
	.string "to challenge it.\p"
# 496 "data/maps/LilycoveCity/scripts.pory"
	.string "I'll catch up to you.\n"
# 497 "data/maps/LilycoveCity/scripts.pory"
	.string "That's a promise.$"
# 498 "data/maps/LilycoveCity/scripts.pory"

# 499 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayYouGoingToBattleFrontier:
# 500 "data/maps/LilycoveCity/scripts.pory"
	.string "BATTLE FRONTIER next?\p"
# 501 "data/maps/LilycoveCity/scripts.pory"
	.string "You really don't stop.\p"
# 502 "data/maps/LilycoveCity/scripts.pory"
	.string "Good. Neither will I.\n"
# 503 "data/maps/LilycoveCity/scripts.pory"
	.string "See you out there, {PLAYER}{KUN}.$"
# 504 "data/maps/LilycoveCity/scripts.pory"

# 505 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanShoppingLetsBattle:
# 506 "data/maps/LilycoveCity/scripts.pory"
	.string "ZENNO: {PLAYER}.\p"
# 507 "data/maps/LilycoveCity/scripts.pory"
	.string "Knew you'd show up eventually.\p"
# 508 "data/maps/LilycoveCity/scripts.pory"
	.string "Somewhere with good gear, good\n"
# 509 "data/maps/LilycoveCity/scripts.pory"
	.string "trainers follow.\l"
# 510 "data/maps/LilycoveCity/scripts.pory"
	.string "I got here first!\p"
# 511 "data/maps/LilycoveCity/scripts.pory"
	.string "Been hearing your name out there.\n"
# 512 "data/maps/LilycoveCity/scripts.pory"
	.string "You've been doing real work.\p"
# 513 "data/maps/LilycoveCity/scripts.pory"
	.string "Let's find out how real.\n"
# 514 "data/maps/LilycoveCity/scripts.pory"
	.string "Will you Battle me?$"
# 515 "data/maps/LilycoveCity/scripts.pory"

# 516 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanNoConfidence:
# 517 "data/maps/LilycoveCity/scripts.pory"
	.string "ZENNO: No time to be scared!\p"
# 518 "data/maps/LilycoveCity/scripts.pory"
	.string "You're not going to say no.\n"
# 519 "data/maps/LilycoveCity/scripts.pory"
	.string "After all that!\p"
# 520 "data/maps/LilycoveCity/scripts.pory"
	.string "I'll pretend I didn't hear that.\p"
# 521 "data/maps/LilycoveCity/scripts.pory"
	.string "So. Are we doing this or not?$"
# 522 "data/maps/LilycoveCity/scripts.pory"

# 523 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanBattleMe:
# 524 "data/maps/LilycoveCity/scripts.pory"
	.string "ZENNO: Still here. So are you.\p"
# 525 "data/maps/LilycoveCity/scripts.pory"
	.string "No more excuses.\n"
# 526 "data/maps/LilycoveCity/scripts.pory"
	.string "Battle me.$"
# 527 "data/maps/LilycoveCity/scripts.pory"

# 528 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanWontBeBeaten:
# 529 "data/maps/LilycoveCity/scripts.pory"
	.string "ZENNO: I've been putting in the work\n"
# 530 "data/maps/LilycoveCity/scripts.pory"
	.string "for this, {PLAYER}.\p"
# 531 "data/maps/LilycoveCity/scripts.pory"
	.string "Give me everything you've got.$"
# 532 "data/maps/LilycoveCity/scripts.pory"

# 533 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanDefeat:
# 534 "data/maps/LilycoveCity/scripts.pory"
	.string "…\p"
# 535 "data/maps/LilycoveCity/scripts.pory"
	.string "You're strong. For real.\p"
# 536 "data/maps/LilycoveCity/scripts.pory"
	.string "I'm not going to stand here and\n"
# 537 "data/maps/LilycoveCity/scripts.pory"
	.string "pretend that wasn't a real loss.\p"
# 538 "data/maps/LilycoveCity/scripts.pory"
	.string "But I'm far from finished, {PLAYER}.$"
# 539 "data/maps/LilycoveCity/scripts.pory"

# 540 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanGoingBackToLittleroot:
# 541 "data/maps/LilycoveCity/scripts.pory"
	.string "ZENNO: You've gotten strong, {PLAYER}.\n"
# 542 "data/maps/LilycoveCity/scripts.pory"
	.string "I mean it! And I respect that.\p"
# 543 "data/maps/LilycoveCity/scripts.pory"
	.string "I'm heading back to LITTLEROOT\n"
# 544 "data/maps/LilycoveCity/scripts.pory"
	.string "to train even harder.\p"
# 545 "data/maps/LilycoveCity/scripts.pory"
	.string "Next time will be different.\n"
# 546 "data/maps/LilycoveCity/scripts.pory"
	.string "Count on it. It's a promise!$"
# 547 "data/maps/LilycoveCity/scripts.pory"

# 548 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanYouGoingToCollectBadges:
# 549 "data/maps/LilycoveCity/scripts.pory"
	.string "Still BADGES left, {PLAYER}?\p"
# 550 "data/maps/LilycoveCity/scripts.pory"
	.string "Then keep at it.\p"
# 551 "data/maps/LilycoveCity/scripts.pory"
	.string "I'll be training in the meantime.\n"
# 552 "data/maps/LilycoveCity/scripts.pory"
	.string "See you.$"
# 553 "data/maps/LilycoveCity/scripts.pory"

# 554 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanYouGoingToPokemonLeague:
# 555 "data/maps/LilycoveCity/scripts.pory"
	.string "POKéMON LEAGUE. Right.\n"
# 556 "data/maps/LilycoveCity/scripts.pory"
	.string "That's exactly where you belong.\p"
# 557 "data/maps/LilycoveCity/scripts.pory"
	.string "Go take it on.\p"
# 558 "data/maps/LilycoveCity/scripts.pory"
	.string "I'll be right behind you.\n"
# 559 "data/maps/LilycoveCity/scripts.pory"
	.string "That's not a threat. It's a fact.$"
# 560 "data/maps/LilycoveCity/scripts.pory"

# 561 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanYouGoingToBattleFrontier:
# 562 "data/maps/LilycoveCity/scripts.pory"
	.string "BATTLE FRONTIER.\n"
# 563 "data/maps/LilycoveCity/scripts.pory"
	.string "You really don't slow down.\p"
# 564 "data/maps/LilycoveCity/scripts.pory"
	.string "Good. I'll meet you there someday.\n"
# 565 "data/maps/LilycoveCity/scripts.pory"
	.string "Keep going, {PLAYER}.$"
# 566 "data/maps/LilycoveCity/scripts.pory"

# 567 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MovedLootIntoHideoutToday:
# 568 "data/maps/LilycoveCity/scripts.pory"
	.string "Fufufu…\p"
# 569 "data/maps/LilycoveCity/scripts.pory"
	.string "We moved more loot into our secret\n"
# 570 "data/maps/LilycoveCity/scripts.pory"
	.string "HIDEOUT today…\p"
# 571 "data/maps/LilycoveCity/scripts.pory"
	.string "Wh-who are you?!\n"
# 572 "data/maps/LilycoveCity/scripts.pory"
	.string "I was just talking to myself!$"
# 573 "data/maps/LilycoveCity/scripts.pory"

# 574 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_ChanceToDoBigThings:
# 575 "data/maps/LilycoveCity/scripts.pory"
	.string "I'm just a GRUNT, so I don't know what\n"
# 576 "data/maps/LilycoveCity/scripts.pory"
	.string "the BOSS is thinking…\p"
# 577 "data/maps/LilycoveCity/scripts.pory"
	.string "But being on TEAM AQUA, I know I'll get\n"
# 578 "data/maps/LilycoveCity/scripts.pory"
	.string "the chance to do big things!\p"
# 579 "data/maps/LilycoveCity/scripts.pory"
	.string "Wh-who are you?!\n"
# 580 "data/maps/LilycoveCity/scripts.pory"
	.string "I was just talking to myself!$"
# 581 "data/maps/LilycoveCity/scripts.pory"

# 582 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_DontGoNearCaveInCove:
# 583 "data/maps/LilycoveCity/scripts.pory"
	.string "Hey, you!\p"
# 584 "data/maps/LilycoveCity/scripts.pory"
	.string "Don't go near the cave in the cove!\p"
# 585 "data/maps/LilycoveCity/scripts.pory"
	.string "Why? You don't need a reason why!\n"
# 586 "data/maps/LilycoveCity/scripts.pory"
	.string "I'm an adult, so you just listen to me!$"
# 587 "data/maps/LilycoveCity/scripts.pory"

# 588 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_IfWorldBecomesOurs:
# 589 "data/maps/LilycoveCity/scripts.pory"
	.string "If this whole wide world becomes ours,\n"
# 590 "data/maps/LilycoveCity/scripts.pory"
	.string "TEAM AQUA's, it will be a happier\l"
# 591 "data/maps/LilycoveCity/scripts.pory"
	.string "place for POKéMON, too.$"
# 592 "data/maps/LilycoveCity/scripts.pory"

# 593 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_WailmerLeapOutOfWater:
# 594 "data/maps/LilycoveCity/scripts.pory"
	.string "There! WAILMER!\n"
# 595 "data/maps/LilycoveCity/scripts.pory"
	.string "Leap out of the water now!$"
# 596 "data/maps/LilycoveCity/scripts.pory"

# 597 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_GetLostMessingUpTraining:
# 598 "data/maps/LilycoveCity/scripts.pory"
	.string "Hunh? What do you want?\p"
# 599 "data/maps/LilycoveCity/scripts.pory"
	.string "You're messing up our training,\n"
# 600 "data/maps/LilycoveCity/scripts.pory"
	.string "so can you, like, get lost?$"
# 601 "data/maps/LilycoveCity/scripts.pory"

# 602 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_ContestHallInTown:
# 603 "data/maps/LilycoveCity/scripts.pory"
	.string "There's a POKéMON CONTEST HALL\n"
# 604 "data/maps/LilycoveCity/scripts.pory"
	.string "right in this here town. \p"
# 605 "data/maps/LilycoveCity/scripts.pory"
	.string "That means well-raised POKéMON will\n"
# 606 "data/maps/LilycoveCity/scripts.pory"
	.string "come from all over the country.\p"
# 607 "data/maps/LilycoveCity/scripts.pory"
	.string "My heart swells with excitement!$"
# 608 "data/maps/LilycoveCity/scripts.pory"

# 609 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_StrangeCaveInCove:
# 610 "data/maps/LilycoveCity/scripts.pory"
	.string "Have you seen that strange cave in\n"
# 611 "data/maps/LilycoveCity/scripts.pory"
	.string "the cove at the edge of town?$"
# 612 "data/maps/LilycoveCity/scripts.pory"

# 613 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_GoingToMoveDeleterForHMs:
# 614 "data/maps/LilycoveCity/scripts.pory"
	.string "I'm going to teach my POKéMON some new\n"
# 615 "data/maps/LilycoveCity/scripts.pory"
	.string "moves for entering a CONTEST.\p"
# 616 "data/maps/LilycoveCity/scripts.pory"
	.string "So, I'm going to see the MOVE DELETER\n"
# 617 "data/maps/LilycoveCity/scripts.pory"
	.string "and make it forget HM moves.$"
# 618 "data/maps/LilycoveCity/scripts.pory"

# 619 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_ImFromKanto:
# 620 "data/maps/LilycoveCity/scripts.pory"
	.string "I came from KANTO.\p"
# 621 "data/maps/LilycoveCity/scripts.pory"
	.string "The HOENN region is beautiful with\n"
# 622 "data/maps/LilycoveCity/scripts.pory"
	.string "all its water and verdant nature.\p"
# 623 "data/maps/LilycoveCity/scripts.pory"
	.string "Hunh? Wait a second…\p"
# 624 "data/maps/LilycoveCity/scripts.pory"
	.string "Could there be rare POKéMON that live\n"
# 625 "data/maps/LilycoveCity/scripts.pory"
	.string "only in this area?$"
# 626 "data/maps/LilycoveCity/scripts.pory"

# 627 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_TeamAquaBeenTrainingWailmer:
# 628 "data/maps/LilycoveCity/scripts.pory"
	.string "TEAM AQUA's been training their\n"
# 629 "data/maps/LilycoveCity/scripts.pory"
	.string "WAILMER in the cove.\p"
# 630 "data/maps/LilycoveCity/scripts.pory"
	.string "We SAILORS can't get our boats out\n"
# 631 "data/maps/LilycoveCity/scripts.pory"
	.string "to sea with them in the way!$"
# 632 "data/maps/LilycoveCity/scripts.pory"

# 633 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_SomeonePuntedTeamAquaOut:
# 634 "data/maps/LilycoveCity/scripts.pory"
	.string "Ahoy, did you know?\p"
# 635 "data/maps/LilycoveCity/scripts.pory"
	.string "Someone punted TEAM AQUA out of\n"
# 636 "data/maps/LilycoveCity/scripts.pory"
	.string "the way for us!\p"
# 637 "data/maps/LilycoveCity/scripts.pory"
	.string "That got the WAILMER out of the cove,\n"
# 638 "data/maps/LilycoveCity/scripts.pory"
	.string "so we can get our boats out again.$"
# 639 "data/maps/LilycoveCity/scripts.pory"

# 640 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_SomeoneStoleMyPokemon:
# 641 "data/maps/LilycoveCity/scripts.pory"
	.string "I was taking a relaxing snooze at the\n"
# 642 "data/maps/LilycoveCity/scripts.pory"
	.string "seaside inn to the sound of waves…\p"
# 643 "data/maps/LilycoveCity/scripts.pory"
	.string "When someone stole my POKéMON!\p"
# 644 "data/maps/LilycoveCity/scripts.pory"
	.string "Who's the abductor?\n"
# 645 "data/maps/LilycoveCity/scripts.pory"
	.string "TEAM AQUA? Is it TEAM AQUA?$"
# 646 "data/maps/LilycoveCity/scripts.pory"

# 647 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MissingPokemonCameBack:
# 648 "data/maps/LilycoveCity/scripts.pory"
	.string "My missing POKéMON…\n"
# 649 "data/maps/LilycoveCity/scripts.pory"
	.string "It came back without me noticing!$"
# 650 "data/maps/LilycoveCity/scripts.pory"

# 651 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_ImArtDealer:
# 652 "data/maps/LilycoveCity/scripts.pory"
	.string "I'm an ART DEALER.\p"
# 653 "data/maps/LilycoveCity/scripts.pory"
	.string "I am a buyer and seller of fine art,\n"
# 654 "data/maps/LilycoveCity/scripts.pory"
	.string "especially paintings.\p"
# 655 "data/maps/LilycoveCity/scripts.pory"
	.string "I've heard that the MUSEUM here has\n"
# 656 "data/maps/LilycoveCity/scripts.pory"
	.string "magnificent works on exhibit…$"
# 657 "data/maps/LilycoveCity/scripts.pory"

# 658 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_SeaRemainsForeverYoung:
# 659 "data/maps/LilycoveCity/scripts.pory"
	.string "Even as we grow old and wrinkled,\n"
# 660 "data/maps/LilycoveCity/scripts.pory"
	.string "the sea remains forever young with\l"
# 661 "data/maps/LilycoveCity/scripts.pory"
	.string "the vivid brilliance of life…\p"
# 662 "data/maps/LilycoveCity/scripts.pory"
	.string "Fwohoho fwohohohoho…$"
# 663 "data/maps/LilycoveCity/scripts.pory"

# 664 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_SixtyYearsAgoHusbandProposed:
# 665 "data/maps/LilycoveCity/scripts.pory"
	.string "It was sixty years ago that my husband\n"
# 666 "data/maps/LilycoveCity/scripts.pory"
	.string "proposed to me here.\l"
# 667 "data/maps/LilycoveCity/scripts.pory"
	.string "The sea remains as beautiful as ever.\p"
# 668 "data/maps/LilycoveCity/scripts.pory"
	.string "Mufufufu mufufufufufu…$"
# 669 "data/maps/LilycoveCity/scripts.pory"

# 670 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_TeamAquaRenovatedCavern:
# 671 "data/maps/LilycoveCity/scripts.pory"
	.string "Hm, you know of the peculiar cavern\n"
# 672 "data/maps/LilycoveCity/scripts.pory"
	.string "in this cove?\p"
# 673 "data/maps/LilycoveCity/scripts.pory"
	.string "That had been a natural formation,\n"
# 674 "data/maps/LilycoveCity/scripts.pory"
	.string "but then that TEAM AQUA lot came\l"
# 675 "data/maps/LilycoveCity/scripts.pory"
	.string "along and made their renovations.\p"
# 676 "data/maps/LilycoveCity/scripts.pory"
	.string "They call themselves\n"
# 677 "data/maps/LilycoveCity/scripts.pory"
	.string "the “nature-loving TEAM AQUA”!\p"
# 678 "data/maps/LilycoveCity/scripts.pory"
	.string "But what they do and what they say\n"
# 679 "data/maps/LilycoveCity/scripts.pory"
	.string "don't match at all!$"
# 680 "data/maps/LilycoveCity/scripts.pory"

# 681 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_TeamAquaLotGoneForGood:
# 682 "data/maps/LilycoveCity/scripts.pory"
	.string "That cave in the cove…\p"
# 683 "data/maps/LilycoveCity/scripts.pory"
	.string "I didn't notice it right away,\n"
# 684 "data/maps/LilycoveCity/scripts.pory"
	.string "but it's completely empty now.\p"
# 685 "data/maps/LilycoveCity/scripts.pory"
	.string "That TEAM AQUA lot, they must\n"
# 686 "data/maps/LilycoveCity/scripts.pory"
	.string "have gone away for good.$"
# 687 "data/maps/LilycoveCity/scripts.pory"

# 688 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_CitySign:
# 689 "data/maps/LilycoveCity/scripts.pory"
	.string "LILYCOVE CITY\p"
# 690 "data/maps/LilycoveCity/scripts.pory"
	.string "“Where the land ends and the\n"
# 691 "data/maps/LilycoveCity/scripts.pory"
	.string "sea begins.”$"
# 692 "data/maps/LilycoveCity/scripts.pory"

# 693 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_ContestHallSign:
# 694 "data/maps/LilycoveCity/scripts.pory"
	.string "POKéMON CONTEST HALL\n"
# 695 "data/maps/LilycoveCity/scripts.pory"
	.string "“The gathering place for TRAINERS!”$"
# 696 "data/maps/LilycoveCity/scripts.pory"

# 697 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MotelSign:
# 698 "data/maps/LilycoveCity/scripts.pory"
	.string "COVE LILY MOTEL\p"
# 699 "data/maps/LilycoveCity/scripts.pory"
	.string "“Remember us as COVE LILY of\n"
# 700 "data/maps/LilycoveCity/scripts.pory"
	.string "LILYCOVE.”$"
# 701 "data/maps/LilycoveCity/scripts.pory"

# 702 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MuseumSign:
# 703 "data/maps/LilycoveCity/scripts.pory"
	.string "LILYCOVE MUSEUM\p"
# 704 "data/maps/LilycoveCity/scripts.pory"
	.string "“POKéMON Masterpiece Collection\n"
# 705 "data/maps/LilycoveCity/scripts.pory"
	.string "on exhibit!”$"
# 706 "data/maps/LilycoveCity/scripts.pory"

# 707 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MuseumSignPlayersExhibit:
# 708 "data/maps/LilycoveCity/scripts.pory"
	.string "LILYCOVE MUSEUM\p"
# 709 "data/maps/LilycoveCity/scripts.pory"
	.string "“{PLAYER}'s POKéMON Collection\n"
# 710 "data/maps/LilycoveCity/scripts.pory"
	.string "on exhibit!”$"
# 711 "data/maps/LilycoveCity/scripts.pory"

# 712 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_HarborSignUnderConstruction:
# 713 "data/maps/LilycoveCity/scripts.pory"
	.string "LILYCOVE CITY HARBOR\p"
# 714 "data/maps/LilycoveCity/scripts.pory"
	.string "“The ferry S.S. TIDAL is under\n"
# 715 "data/maps/LilycoveCity/scripts.pory"
	.string "construction in SLATEPORT CITY.\p"
# 716 "data/maps/LilycoveCity/scripts.pory"
	.string "“Service is scheduled to begin\n"
# 717 "data/maps/LilycoveCity/scripts.pory"
	.string "shortly.”$"
# 718 "data/maps/LilycoveCity/scripts.pory"

# 719 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_HarborSign:
# 720 "data/maps/LilycoveCity/scripts.pory"
	.string "LILYCOVE CITY HARBOR\p"
# 721 "data/maps/LilycoveCity/scripts.pory"
	.string "“Enjoy a delightful cruise on\n"
# 722 "data/maps/LilycoveCity/scripts.pory"
	.string "the ferry S.S. TIDAL.”$"
# 723 "data/maps/LilycoveCity/scripts.pory"

# 724 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_TrainerFanClubSign:
# 725 "data/maps/LilycoveCity/scripts.pory"
	.string "POKéMON TRAINER FAN CLUB\p"
# 726 "data/maps/LilycoveCity/scripts.pory"
	.string "The names of TRAINERS are scribbled\n"
# 727 "data/maps/LilycoveCity/scripts.pory"
	.string "all over the sign…$"
# 728 "data/maps/LilycoveCity/scripts.pory"

# 729 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_DepartmentStoreSign:
# 730 "data/maps/LilycoveCity/scripts.pory"
	.string "LILYCOVE DEPARTMENT STORE\p"
# 731 "data/maps/LilycoveCity/scripts.pory"
	.string "“Overflowing with great merchandise\n"
# 732 "data/maps/LilycoveCity/scripts.pory"
	.string "and excitement!\p"
# 733 "data/maps/LilycoveCity/scripts.pory"
	.string "“A great place to find that something\n"
# 734 "data/maps/LilycoveCity/scripts.pory"
	.string "you need!”$"
# 735 "data/maps/LilycoveCity/scripts.pory"

# 736 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MoveDeletersHouseSign:
# 737 "data/maps/LilycoveCity/scripts.pory"
	.string "MOVE DELETER'S HOUSE\p"
# 738 "data/maps/LilycoveCity/scripts.pory"
	.string "“Unwanted POKéMON moves deleted.”$"
# 739 "data/maps/LilycoveCity/scripts.pory"

# 740 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_DoYouKnowAboutBerryBlender:
# 741 "data/maps/LilycoveCity/scripts.pory"
	.string "Do you know about the machine\n"
# 742 "data/maps/LilycoveCity/scripts.pory"
	.string "BERRY BLENDER?$"
# 743 "data/maps/LilycoveCity/scripts.pory"

# 744 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_FasterSpinBetterPokeblocks:
# 745 "data/maps/LilycoveCity/scripts.pory"
	.string "People have to work together to get it\n"
# 746 "data/maps/LilycoveCity/scripts.pory"
	.string "to spin faster.\p"
# 747 "data/maps/LilycoveCity/scripts.pory"
	.string "The faster you can make it spin, the\n"
# 748 "data/maps/LilycoveCity/scripts.pory"
	.string "better {POKEBLOCK}S you can get, I've heard.$"
# 749 "data/maps/LilycoveCity/scripts.pory"

# 750 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_ExplainBerryBlender:
# 751 "data/maps/LilycoveCity/scripts.pory"
	.string "It's used for making a kind of candy\n"
# 752 "data/maps/LilycoveCity/scripts.pory"
	.string "called a {POKEBLOCK}.\p"
# 753 "data/maps/LilycoveCity/scripts.pory"
	.string "If you give a good {POKEBLOCK} to a POKéMON,\n"
# 754 "data/maps/LilycoveCity/scripts.pory"
	.string "its condition will improve by a lot.$"
# 755 "data/maps/LilycoveCity/scripts.pory"

# 756 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_HeardTowerCalledSkyPillar:
# 757 "data/maps/LilycoveCity/scripts.pory"
	.string "I heard there's a tower somewhere out\n"
# 758 "data/maps/LilycoveCity/scripts.pory"
	.string "on the sea routes.\p"
# 759 "data/maps/LilycoveCity/scripts.pory"
	.string "It's called the SKY PILLAR, I hear.$"
# 760 "data/maps/LilycoveCity/scripts.pory"

# 761 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_SawTallTowerOnRoute131:
# 762 "data/maps/LilycoveCity/scripts.pory"
	.string "I saw this tall tower somewhere\n"
# 763 "data/maps/LilycoveCity/scripts.pory"
	.string "around ROUTE 131.\p"
# 764 "data/maps/LilycoveCity/scripts.pory"
	.string "Could that possibly be…?$"
# 765 "data/maps/LilycoveCity/scripts.pory"

# 766 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_JustArrivedAndSawRarePokemon:
# 767 "data/maps/LilycoveCity/scripts.pory"
	.string "We just arrived here on our\n"
# 768 "data/maps/LilycoveCity/scripts.pory"
	.string "honeymoon vacation.\p"
# 769 "data/maps/LilycoveCity/scripts.pory"
	.string "We happened to see a DRAGON-type\n"
# 770 "data/maps/LilycoveCity/scripts.pory"
	.string "POKéMON flying way up in the sky.\p"
# 771 "data/maps/LilycoveCity/scripts.pory"
	.string "Do cool POKéMON like that live in\n"
# 772 "data/maps/LilycoveCity/scripts.pory"
	.string "the HOENN region?$"
# 773 "data/maps/LilycoveCity/scripts.pory"

# 774 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_HoneymoonVowToSeeRarePokemon:
# 775 "data/maps/LilycoveCity/scripts.pory"
	.string "On our honeymoon, we vowed to see as\n"
# 776 "data/maps/LilycoveCity/scripts.pory"
	.string "many rare POKéMON as we can.\p"
# 777 "data/maps/LilycoveCity/scripts.pory"
	.string "So we were delighted to see a rare\n"
# 778 "data/maps/LilycoveCity/scripts.pory"
	.string "POKéMON as soon as we arrived.\p"
# 779 "data/maps/LilycoveCity/scripts.pory"
	.string "I mean, we are totally happy!$"
# 780 "data/maps/LilycoveCity/scripts.pory"

# 781 "data/maps/LilycoveCity/scripts.pory"
@ ============================================================
# 782 "data/maps/LilycoveCity/scripts.pory"
@ MAR & RIO — father and son, passing through Lilycove while
# 783 "data/maps/LilycoveCity/scripts.pory"
@ investigating Team Aqua. Simple flag-gated conversation, no
# 784 "data/maps/LilycoveCity/scripts.pory"
@ approach/hide choreography needed like the Rustboro scene.
# 785 "data/maps/LilycoveCity/scripts.pory"
@ ============================================================
# 786 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_LookingForClues::
# 787 "data/maps/LilycoveCity/scripts.pory"
	lockall
# 788 "data/maps/LilycoveCity/scripts.pory"
	goto_if_set FLAG_HIDE_MAR_LILI_VISIBILITY, LilycoveCity_EventScript_LookingForClues_Done
# 789 "data/maps/LilycoveCity/scripts.pory"
	call LilycoveCity_EventScript_MarRio_NoticesPlayer
# 790 "data/maps/LilycoveCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_WEST
# 791 "data/maps/LilycoveCity/scripts.pory"
	call LilycoveCity_EventScript_MarRio_FacePlayer
# 792 "data/maps/LilycoveCity/scripts.pory"
	call LilycoveCity_EventScript_MarRio_Scene
# 793 "data/maps/LilycoveCity/scripts.pory"
	call LilycoveCity_EventScript_MarRio_LeaveNorth
# 794 "data/maps/LilycoveCity/scripts.pory"
	releaseall
# 795 "data/maps/LilycoveCity/scripts.pory"
	end
# 796 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_LookingForClues_Done::
# 797 "data/maps/LilycoveCity/scripts.pory"
	releaseall
# 798 "data/maps/LilycoveCity/scripts.pory"
	end
# 799 "data/maps/LilycoveCity/scripts.pory"

# 800 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_LookingForCluesAbove::
# 801 "data/maps/LilycoveCity/scripts.pory"
	lockall
# 802 "data/maps/LilycoveCity/scripts.pory"
	goto_if_set FLAG_HIDE_MAR_LILI_VISIBILITY, LilycoveCity_EventScript_LookingForClues_Done
# 803 "data/maps/LilycoveCity/scripts.pory"
	call LilycoveCity_EventScript_MarRio_NoticesPlayer
# 804 "data/maps/LilycoveCity/scripts.pory"
	turnobject LOCALID_PLAYER, DIR_SOUTH
# 805 "data/maps/LilycoveCity/scripts.pory"
	call LilycoveCity_EventScript_MarRio_FacePlayer
# 806 "data/maps/LilycoveCity/scripts.pory"
	call LilycoveCity_EventScript_MarRio_Scene
# 807 "data/maps/LilycoveCity/scripts.pory"
	call LilycoveCity_EventScript_MarRio_LeaveRightUp
# 808 "data/maps/LilycoveCity/scripts.pory"
	releaseall
# 809 "data/maps/LilycoveCity/scripts.pory"
	end
# 810 "data/maps/LilycoveCity/scripts.pory"

# 811 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_Mar::
# 812 "data/maps/LilycoveCity/scripts.pory"
	lockall
# 813 "data/maps/LilycoveCity/scripts.pory"
	goto_if_set FLAG_HIDE_MAR_LILI_VISIBILITY, LilycoveCity_EventScript_Mar_Done
# 814 "data/maps/LilycoveCity/scripts.pory"
	call LilycoveCity_EventScript_MarRio_FacePlayer
# 815 "data/maps/LilycoveCity/scripts.pory"
	call LilycoveCity_EventScript_MarRio_Scene
# 816 "data/maps/LilycoveCity/scripts.pory"
	call LilycoveCity_EventScript_MarRio_LeaveNorth
# 817 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_Mar_Done::
# 818 "data/maps/LilycoveCity/scripts.pory"
	releaseall
# 819 "data/maps/LilycoveCity/scripts.pory"
	end
# 820 "data/maps/LilycoveCity/scripts.pory"

# 821 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_Rio::
# 822 "data/maps/LilycoveCity/scripts.pory"
	lockall
# 823 "data/maps/LilycoveCity/scripts.pory"
	goto_if_set FLAG_HIDE_MAR_LILI_VISIBILITY, LilycoveCity_EventScript_Rio_Done
# 824 "data/maps/LilycoveCity/scripts.pory"
	call LilycoveCity_EventScript_MarRio_FacePlayer
# 825 "data/maps/LilycoveCity/scripts.pory"
	call LilycoveCity_EventScript_MarRio_Scene
# 826 "data/maps/LilycoveCity/scripts.pory"
	call LilycoveCity_EventScript_MarRio_LeaveNorth
# 827 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_Rio_Done::
# 828 "data/maps/LilycoveCity/scripts.pory"
	releaseall
# 829 "data/maps/LilycoveCity/scripts.pory"
	end
# 830 "data/maps/LilycoveCity/scripts.pory"

# 831 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MarRio_FacePlayer::
# 832 "data/maps/LilycoveCity/scripts.pory"
	applymovement LOCALID_LILYCOVE_MAR, Common_Movement_FacePlayer
# 833 "data/maps/LilycoveCity/scripts.pory"
	applymovement LOCALID_LILYCOVE_RIO, Common_Movement_FacePlayer
# 834 "data/maps/LilycoveCity/scripts.pory"
	waitmovement 0
# 835 "data/maps/LilycoveCity/scripts.pory"
	return
# 836 "data/maps/LilycoveCity/scripts.pory"

# 837 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MarRio_NoticesPlayer::
# 838 "data/maps/LilycoveCity/scripts.pory"
	playse SE_PIN
# 839 "data/maps/LilycoveCity/scripts.pory"
	applymovement LOCALID_LILYCOVE_MAR, Common_Movement_ExclamationMark
# 840 "data/maps/LilycoveCity/scripts.pory"
	applymovement LOCALID_LILYCOVE_RIO, Common_Movement_ExclamationMark
# 841 "data/maps/LilycoveCity/scripts.pory"
	waitmovement 0
# 842 "data/maps/LilycoveCity/scripts.pory"
	return
# 843 "data/maps/LilycoveCity/scripts.pory"

# 844 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MarRio_Scene::
# 845 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_MAR, EMOTE_NORMAL
# 846 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MarRecognizesPlayer, MSGBOX_DEFAULT
# 847 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 848 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_RIO, EMOTE_NORMAL
# 849 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_RioIntroduces, MSGBOX_DEFAULT
# 850 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 851 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_MAR, EMOTE_NORMAL
# 852 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MarOldLeader, MSGBOX_DEFAULT
# 853 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 854 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_RIO, EMOTE_NORMAL
# 855 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_RioTougherThanDad, MSGBOX_DEFAULT
# 856 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 857 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_MAR, EMOTE_NORMAL
# 858 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MarBusyWithImportantThings, MSGBOX_DEFAULT
# 859 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 860 "data/maps/LilycoveCity/scripts.pory"
	createfieldmugshot MUGSHOT_RIO, EMOTE_NORMAL
# 861 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_RioTeamAquaClues, MSGBOX_DEFAULT
# 862 "data/maps/LilycoveCity/scripts.pory"
	removefieldmugshot
# 863 "data/maps/LilycoveCity/scripts.pory"
	closemessage
# 864 "data/maps/LilycoveCity/scripts.pory"
	return
# 865 "data/maps/LilycoveCity/scripts.pory"

# 866 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MarRio_LeaveNorth::
# 867 "data/maps/LilycoveCity/scripts.pory"
	delay 30
# 868 "data/maps/LilycoveCity/scripts.pory"
	applymovement LOCALID_LILYCOVE_MAR, LilycoveCity_Movement_MarRioWalkAway
# 869 "data/maps/LilycoveCity/scripts.pory"
	applymovement LOCALID_LILYCOVE_RIO, LilycoveCity_Movement_MarRioWalkAway
# 870 "data/maps/LilycoveCity/scripts.pory"
	waitmovement 0
# 871 "data/maps/LilycoveCity/scripts.pory"
	removeobject LOCALID_LILYCOVE_MAR
# 872 "data/maps/LilycoveCity/scripts.pory"
	removeobject LOCALID_LILYCOVE_RIO
# 873 "data/maps/LilycoveCity/scripts.pory"
	setflag FLAG_HIDE_MAR_LILI_VISIBILITY
# 874 "data/maps/LilycoveCity/scripts.pory"
	return
# 875 "data/maps/LilycoveCity/scripts.pory"

# 876 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MarRio_LeaveRightUp::
# 877 "data/maps/LilycoveCity/scripts.pory"
	delay 30
# 878 "data/maps/LilycoveCity/scripts.pory"
	applymovement LOCALID_LILYCOVE_MAR, LilycoveCity_Movement_MarRioWalkRightUp
# 879 "data/maps/LilycoveCity/scripts.pory"
	applymovement LOCALID_LILYCOVE_RIO, LilycoveCity_Movement_MarRioWalkRightUp
# 880 "data/maps/LilycoveCity/scripts.pory"
	waitmovement 0
# 881 "data/maps/LilycoveCity/scripts.pory"
	removeobject LOCALID_LILYCOVE_MAR
# 882 "data/maps/LilycoveCity/scripts.pory"
	removeobject LOCALID_LILYCOVE_RIO
# 883 "data/maps/LilycoveCity/scripts.pory"
	setflag FLAG_HIDE_MAR_LILI_VISIBILITY
# 884 "data/maps/LilycoveCity/scripts.pory"
	return
# 885 "data/maps/LilycoveCity/scripts.pory"

# 886 "data/maps/LilycoveCity/scripts.pory"
@ The right-side trigger uses this original northbound exit.
# 887 "data/maps/LilycoveCity/scripts.pory"

# 888 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Movement_MarRioWalkAway:
# 889 "data/maps/LilycoveCity/scripts.pory"
	walk_up
# 890 "data/maps/LilycoveCity/scripts.pory"
	walk_up
# 891 "data/maps/LilycoveCity/scripts.pory"
	walk_up
# 892 "data/maps/LilycoveCity/scripts.pory"
	walk_up
# 893 "data/maps/LilycoveCity/scripts.pory"
	walk_up
# 894 "data/maps/LilycoveCity/scripts.pory"
	walk_up
# 895 "data/maps/LilycoveCity/scripts.pory"
	walk_up
# 896 "data/maps/LilycoveCity/scripts.pory"
	step_end
# 897 "data/maps/LilycoveCity/scripts.pory"

# 898 "data/maps/LilycoveCity/scripts.pory"
@ The upper trigger is occupied by the player, so step right before heading north.
# 899 "data/maps/LilycoveCity/scripts.pory"

# 900 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Movement_MarRioWalkRightUp:
# 901 "data/maps/LilycoveCity/scripts.pory"
	walk_right
# 902 "data/maps/LilycoveCity/scripts.pory"
	walk_up
# 903 "data/maps/LilycoveCity/scripts.pory"
	walk_up
# 904 "data/maps/LilycoveCity/scripts.pory"
	walk_up
# 905 "data/maps/LilycoveCity/scripts.pory"
	walk_up
# 906 "data/maps/LilycoveCity/scripts.pory"
	walk_up
# 907 "data/maps/LilycoveCity/scripts.pory"
	walk_up
# 908 "data/maps/LilycoveCity/scripts.pory"
	walk_up
# 909 "data/maps/LilycoveCity/scripts.pory"
	walk_up
# 910 "data/maps/LilycoveCity/scripts.pory"
	step_end
# 911 "data/maps/LilycoveCity/scripts.pory"

# 912 "data/maps/LilycoveCity/scripts.pory"
@ ---- Text ----
# 913 "data/maps/LilycoveCity/scripts.pory"

# 914 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MarRecognizesPlayer:
# 915 "data/maps/LilycoveCity/scripts.pory"
	.string "MAR: Hey, I know that face!\p"
# 916 "data/maps/LilycoveCity/scripts.pory"
	.string "We crossed paths back in RUSTBORO,\n"
# 917 "data/maps/LilycoveCity/scripts.pory"
	.string "didn't we?\p"
# 918 "data/maps/LilycoveCity/scripts.pory"
	.string "Word travels fast around here.\n"
# 919 "data/maps/LilycoveCity/scripts.pory"
	.string "I heard you beat my daughter TERRA\l"
# 920 "data/maps/LilycoveCity/scripts.pory"
	.string "in a GYM battle.\p"
# 921 "data/maps/LilycoveCity/scripts.pory"
	.string "Not bad at all.$"
# 922 "data/maps/LilycoveCity/scripts.pory"

# 923 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_RioIntroduces:
# 924 "data/maps/LilycoveCity/scripts.pory"
	.string "RIO: Nice to meet you, {PLAYER}.\p"
# 925 "data/maps/LilycoveCity/scripts.pory"
	.string "I'm RIO, the GYM LEADER over in\n"
# 926 "data/maps/LilycoveCity/scripts.pory"
	.string "SOOTOPOLIS. TERRA's my sibling.$"
# 927 "data/maps/LilycoveCity/scripts.pory"

# 928 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MarOldLeader:
# 929 "data/maps/LilycoveCity/scripts.pory"
	.string "MAR: That's right. I used to hold\n"
# 930 "data/maps/LilycoveCity/scripts.pory"
	.string "that GYM myself, way back when.\p"
# 931 "data/maps/LilycoveCity/scripts.pory"
	.string "Passed the torch to RIO a while ago.$"
# 932 "data/maps/LilycoveCity/scripts.pory"

# 933 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_RioTougherThanDad:
# 934 "data/maps/LilycoveCity/scripts.pory"
	.string "RIO: Don't let him fool you, though.\n"
# 935 "data/maps/LilycoveCity/scripts.pory"
	.string "I'm way tougher than he ever was.\p"
# 936 "data/maps/LilycoveCity/scripts.pory"
	.string "HAHAHA, just kidding... mostly.$"
# 937 "data/maps/LilycoveCity/scripts.pory"

# 938 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MarBusyWithImportantThings:
# 939 "data/maps/LilycoveCity/scripts.pory"
	.string "MAR: Truth is, neither of us has had\n"
# 940 "data/maps/LilycoveCity/scripts.pory"
	.string "much time for GYM business lately.\p"
# 941 "data/maps/LilycoveCity/scripts.pory"
	.string "We've got something bigger on\n"
# 942 "data/maps/LilycoveCity/scripts.pory"
	.string "our hands these days.$"
# 943 "data/maps/LilycoveCity/scripts.pory"

# 944 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_RioTeamAquaClues:
# 945 "data/maps/LilycoveCity/scripts.pory"
	.string "RIO: We left SOOTOPOLIS to look into\n"
# 946 "data/maps/LilycoveCity/scripts.pory"
	.string "TEAM AQUA's movements.\p"
# 947 "data/maps/LilycoveCity/scripts.pory"
	.string "There's still more to dig up, so\n"
# 948 "data/maps/LilycoveCity/scripts.pory"
	.string "we're not sticking around here\l"
# 949 "data/maps/LilycoveCity/scripts.pory"
	.string "either.\p"
# 950 "data/maps/LilycoveCity/scripts.pory"
	.string "See you around, {PLAYER}.$"
