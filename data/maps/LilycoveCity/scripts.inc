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
	msgbox LilycoveCity_Text_MayWontBeBeaten, MSGBOX_DEFAULT
# 244 "data/maps/LilycoveCity/scripts.pory"
	switch VAR_STARTER_MON
# 245 "data/maps/LilycoveCity/scripts.pory"
	case 0, LilycoveCity_EventScript_BattleMayTreecko
# 246 "data/maps/LilycoveCity/scripts.pory"
	case 1, LilycoveCity_EventScript_BattleMayTorchic
# 247 "data/maps/LilycoveCity/scripts.pory"
	case 2, LilycoveCity_EventScript_BattleMayMudkip
# 248 "data/maps/LilycoveCity/scripts.pory"
	end
# 249 "data/maps/LilycoveCity/scripts.pory"

# 250 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MayAskToBattleAgain::
# 251 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MayBattleMe, MSGBOX_YESNO
# 252 "data/maps/LilycoveCity/scripts.pory"
	return
# 253 "data/maps/LilycoveCity/scripts.pory"

# 254 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MayAskToBattle::
# 255 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MayShoppingLetsBattle, MSGBOX_YESNO
# 256 "data/maps/LilycoveCity/scripts.pory"
	return
# 257 "data/maps/LilycoveCity/scripts.pory"

# 258 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_DeclineMayBattle::
# 259 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MayNotRaisingPokemon, MSGBOX_YESNO
# 260 "data/maps/LilycoveCity/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LilycoveCity_EventScript_DeclineMayBattle
# 261 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MayWontBeBeaten, MSGBOX_DEFAULT
# 262 "data/maps/LilycoveCity/scripts.pory"
	switch VAR_STARTER_MON
# 263 "data/maps/LilycoveCity/scripts.pory"
	case 0, LilycoveCity_EventScript_BattleMayTreecko
# 264 "data/maps/LilycoveCity/scripts.pory"
	case 1, LilycoveCity_EventScript_BattleMayTorchic
# 265 "data/maps/LilycoveCity/scripts.pory"
	case 2, LilycoveCity_EventScript_BattleMayMudkip
# 266 "data/maps/LilycoveCity/scripts.pory"
	end
# 267 "data/maps/LilycoveCity/scripts.pory"

# 268 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_Brendan::
# 269 "data/maps/LilycoveCity/scripts.pory"
	playbgm MUS_ENCOUNTER_BRENDAN, TRUE
# 270 "data/maps/LilycoveCity/scripts.pory"
	call_if_set FLAG_DECLINED_RIVAL_BATTLE_LILYCOVE, LilycoveCity_EventScript_BrendanAskToBattleAgain
# 271 "data/maps/LilycoveCity/scripts.pory"
	call_if_unset FLAG_DECLINED_RIVAL_BATTLE_LILYCOVE, LilycoveCity_EventScript_BrendanAskToBattle
# 272 "data/maps/LilycoveCity/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LilycoveCity_EventScript_DeclineBrendanBattle
# 273 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanWontBeBeaten, MSGBOX_DEFAULT
# 274 "data/maps/LilycoveCity/scripts.pory"
	switch VAR_STARTER_MON
# 275 "data/maps/LilycoveCity/scripts.pory"
	case 0, LilycoveCity_EventScript_BattleBrendanTreecko
# 276 "data/maps/LilycoveCity/scripts.pory"
	case 1, LilycoveCity_EventScript_BattleBrendanTorchic
# 277 "data/maps/LilycoveCity/scripts.pory"
	case 2, LilycoveCity_EventScript_BattleBrendanMudkip
# 278 "data/maps/LilycoveCity/scripts.pory"
	end
# 279 "data/maps/LilycoveCity/scripts.pory"

# 280 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BrendanAskToBattleAgain::
# 281 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanBattleMe, MSGBOX_YESNO
# 282 "data/maps/LilycoveCity/scripts.pory"
	return
# 283 "data/maps/LilycoveCity/scripts.pory"

# 284 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BrendanAskToBattle::
# 285 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanShoppingLetsBattle, MSGBOX_YESNO
# 286 "data/maps/LilycoveCity/scripts.pory"
	return
# 287 "data/maps/LilycoveCity/scripts.pory"

# 288 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_DeclineBrendanBattle::
# 289 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanNoConfidence, MSGBOX_YESNO
# 290 "data/maps/LilycoveCity/scripts.pory"
	goto_if_eq VAR_RESULT, NO, LilycoveCity_EventScript_DeclineBrendanBattle
# 291 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanWontBeBeaten, MSGBOX_DEFAULT
# 292 "data/maps/LilycoveCity/scripts.pory"
	switch VAR_STARTER_MON
# 293 "data/maps/LilycoveCity/scripts.pory"
	case 0, LilycoveCity_EventScript_BattleBrendanTreecko
# 294 "data/maps/LilycoveCity/scripts.pory"
	case 1, LilycoveCity_EventScript_BattleBrendanTorchic
# 295 "data/maps/LilycoveCity/scripts.pory"
	case 2, LilycoveCity_EventScript_BattleBrendanMudkip
# 296 "data/maps/LilycoveCity/scripts.pory"
	end
# 297 "data/maps/LilycoveCity/scripts.pory"

# 298 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BattleMayTreecko::
# 299 "data/maps/LilycoveCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_LILYCOVE_TREECKO, LilycoveCity_Text_MayDefeat
# 300 "data/maps/LilycoveCity/scripts.pory"
	goto LilycoveCity_EventScript_DefeatedMay
# 301 "data/maps/LilycoveCity/scripts.pory"
	end
# 302 "data/maps/LilycoveCity/scripts.pory"

# 303 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BattleMayTorchic::
# 304 "data/maps/LilycoveCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_LILYCOVE_TORCHIC, LilycoveCity_Text_MayDefeat
# 305 "data/maps/LilycoveCity/scripts.pory"
	goto LilycoveCity_EventScript_DefeatedMay
# 306 "data/maps/LilycoveCity/scripts.pory"
	end
# 307 "data/maps/LilycoveCity/scripts.pory"

# 308 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BattleMayMudkip::
# 309 "data/maps/LilycoveCity/scripts.pory"
	trainerbattle_no_intro TRAINER_MAY_LILYCOVE_MUDKIP, LilycoveCity_Text_MayDefeat
# 310 "data/maps/LilycoveCity/scripts.pory"
	goto LilycoveCity_EventScript_DefeatedMay
# 311 "data/maps/LilycoveCity/scripts.pory"
	end
# 312 "data/maps/LilycoveCity/scripts.pory"

# 313 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BattleBrendanTreecko::
# 314 "data/maps/LilycoveCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_LILYCOVE_TREECKO, LilycoveCity_Text_BrendanDefeat
# 315 "data/maps/LilycoveCity/scripts.pory"
	goto LilycoveCity_EventScript_DefeatedBrendan
# 316 "data/maps/LilycoveCity/scripts.pory"
	end
# 317 "data/maps/LilycoveCity/scripts.pory"

# 318 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BattleBrendanTorchic::
# 319 "data/maps/LilycoveCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_LILYCOVE_TORCHIC, LilycoveCity_Text_BrendanDefeat
# 320 "data/maps/LilycoveCity/scripts.pory"
	goto LilycoveCity_EventScript_DefeatedBrendan
# 321 "data/maps/LilycoveCity/scripts.pory"
	end
# 322 "data/maps/LilycoveCity/scripts.pory"

# 323 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BattleBrendanMudkip::
# 324 "data/maps/LilycoveCity/scripts.pory"
	trainerbattle_no_intro TRAINER_BRENDAN_LILYCOVE_MUDKIP, LilycoveCity_Text_BrendanDefeat
# 325 "data/maps/LilycoveCity/scripts.pory"
	goto LilycoveCity_EventScript_DefeatedBrendan
# 326 "data/maps/LilycoveCity/scripts.pory"
	end
# 327 "data/maps/LilycoveCity/scripts.pory"

# 328 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_DefeatedMay::
# 329 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MayGoingBackToLittleroot, MSGBOX_DEFAULT
# 330 "data/maps/LilycoveCity/scripts.pory"
	setvar VAR_RESULT, FALSE
# 331 "data/maps/LilycoveCity/scripts.pory"
	call_if_set FLAG_BADGE06_GET, LilycoveCity_EventScript_CheckFinalBadge
# 332 "data/maps/LilycoveCity/scripts.pory"
	call_if_eq VAR_RESULT, FALSE, LilycoveCity_EventScript_MayCollectBadges
# 333 "data/maps/LilycoveCity/scripts.pory"
	call_if_eq VAR_RESULT, TRUE, LilycoveCity_EventScript_MayPokemonLeague
# 334 "data/maps/LilycoveCity/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_RIVAL_BEDROOM
# 335 "data/maps/LilycoveCity/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_MAYS_HOUSE_2F_PICHU_DOLL
# 336 "data/maps/LilycoveCity/scripts.pory"
	goto LilycoveCity_EventScript_RivalFlyAway
# 337 "data/maps/LilycoveCity/scripts.pory"
	end
# 338 "data/maps/LilycoveCity/scripts.pory"

# 339 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_CheckFinalBadge::
# 340 "data/maps/LilycoveCity/scripts.pory"
	goto_if_set FLAG_BADGE08_GET, LilycoveCity_EventScript_HasFinalBadge
# 341 "data/maps/LilycoveCity/scripts.pory"
	return
# 342 "data/maps/LilycoveCity/scripts.pory"

# 343 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_HasFinalBadge::
# 344 "data/maps/LilycoveCity/scripts.pory"
	setvar VAR_RESULT, TRUE
# 345 "data/maps/LilycoveCity/scripts.pory"
	return
# 346 "data/maps/LilycoveCity/scripts.pory"

# 347 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MayCollectBadges::
# 348 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MayYouGoingToCollectBadges, MSGBOX_DEFAULT
# 349 "data/maps/LilycoveCity/scripts.pory"
	return
# 350 "data/maps/LilycoveCity/scripts.pory"

# 351 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MayPokemonLeague::
# 352 "data/maps/LilycoveCity/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, LilycoveCity_EventScript_MayBattleFrontier
# 353 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MayYouGoingToPokemonLeague, MSGBOX_DEFAULT
# 354 "data/maps/LilycoveCity/scripts.pory"
	return
# 355 "data/maps/LilycoveCity/scripts.pory"

# 356 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_MayBattleFrontier::
# 357 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_MayYouGoingToBattleFrontier, MSGBOX_DEFAULT
# 358 "data/maps/LilycoveCity/scripts.pory"
	return
# 359 "data/maps/LilycoveCity/scripts.pory"

# 360 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_DefeatedBrendan::
# 361 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanGoingBackToLittleroot, MSGBOX_DEFAULT
# 362 "data/maps/LilycoveCity/scripts.pory"
	setvar VAR_RESULT, FALSE
# 363 "data/maps/LilycoveCity/scripts.pory"
	call_if_set FLAG_BADGE06_GET, LilycoveCity_EventScript_CheckFinalBadge
# 364 "data/maps/LilycoveCity/scripts.pory"
	call_if_eq VAR_RESULT, FALSE, LilycoveCity_EventScript_BrendanCollectBadges
# 365 "data/maps/LilycoveCity/scripts.pory"
	call_if_eq VAR_RESULT, TRUE, LilycoveCity_EventScript_BrendanPokemonLeague
# 366 "data/maps/LilycoveCity/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_RIVAL_BEDROOM
# 367 "data/maps/LilycoveCity/scripts.pory"
	clearflag FLAG_HIDE_LITTLEROOT_TOWN_BRENDANS_HOUSE_2F_SWABLU_DOLL
# 368 "data/maps/LilycoveCity/scripts.pory"
	goto LilycoveCity_EventScript_RivalFlyAway
# 369 "data/maps/LilycoveCity/scripts.pory"
	end
# 370 "data/maps/LilycoveCity/scripts.pory"

# 371 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BrendanCollectBadges::
# 372 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanYouGoingToCollectBadges, MSGBOX_DEFAULT
# 373 "data/maps/LilycoveCity/scripts.pory"
	return
# 374 "data/maps/LilycoveCity/scripts.pory"

# 375 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BrendanPokemonLeague::
# 376 "data/maps/LilycoveCity/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, LilycoveCity_EventScript_BrendanBattleFrontier
# 377 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanYouGoingToPokemonLeague, MSGBOX_DEFAULT
# 378 "data/maps/LilycoveCity/scripts.pory"
	return
# 379 "data/maps/LilycoveCity/scripts.pory"

# 380 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_BrendanBattleFrontier::
# 381 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_BrendanYouGoingToBattleFrontier, MSGBOX_DEFAULT
# 382 "data/maps/LilycoveCity/scripts.pory"
	return
# 383 "data/maps/LilycoveCity/scripts.pory"

# 384 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_RivalFlyAway::
# 385 "data/maps/LilycoveCity/scripts.pory"
	closemessage
# 386 "data/maps/LilycoveCity/scripts.pory"
	applymovement VAR_LAST_TALKED, Common_Movement_WalkInPlaceFasterDown
# 387 "data/maps/LilycoveCity/scripts.pory"
	waitmovement 0
# 388 "data/maps/LilycoveCity/scripts.pory"
	delay 50
# 389 "data/maps/LilycoveCity/scripts.pory"
	setfieldeffectargument 0, 1
# 390 "data/maps/LilycoveCity/scripts.pory"
	dofieldeffect FLDEFF_NPCFLY_OUT
# 391 "data/maps/LilycoveCity/scripts.pory"
	delay 15
# 392 "data/maps/LilycoveCity/scripts.pory"
	removeobject VAR_LAST_TALKED
# 393 "data/maps/LilycoveCity/scripts.pory"
	waitfieldeffect FLDEFF_NPCFLY_OUT
# 394 "data/maps/LilycoveCity/scripts.pory"
	savebgm MUS_DUMMY
# 395 "data/maps/LilycoveCity/scripts.pory"
	fadedefaultbgm
# 396 "data/maps/LilycoveCity/scripts.pory"
	setflag FLAG_MET_RIVAL_LILYCOVE
# 397 "data/maps/LilycoveCity/scripts.pory"
	release
# 398 "data/maps/LilycoveCity/scripts.pory"
	end
# 399 "data/maps/LilycoveCity/scripts.pory"

# 400 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_SchoolKidM::
# 401 "data/maps/LilycoveCity/scripts.pory"
	lock
# 402 "data/maps/LilycoveCity/scripts.pory"
	faceplayer
# 403 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_DoYouKnowAboutBerryBlender, MSGBOX_YESNO
# 404 "data/maps/LilycoveCity/scripts.pory"
	call_if_eq VAR_RESULT, YES, LilycoveCity_EventScript_KnowAboutBerryBlender
# 405 "data/maps/LilycoveCity/scripts.pory"
	call_if_eq VAR_RESULT, NO, LilycoveCity_EventScript_DontKnowAboutBerryBlender
# 406 "data/maps/LilycoveCity/scripts.pory"
	release
# 407 "data/maps/LilycoveCity/scripts.pory"
	end
# 408 "data/maps/LilycoveCity/scripts.pory"

# 409 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_KnowAboutBerryBlender::
# 410 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_FasterSpinBetterPokeblocks, MSGBOX_DEFAULT
# 411 "data/maps/LilycoveCity/scripts.pory"
	return
# 412 "data/maps/LilycoveCity/scripts.pory"

# 413 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_EventScript_DontKnowAboutBerryBlender::
# 414 "data/maps/LilycoveCity/scripts.pory"
	msgbox LilycoveCity_Text_ExplainBerryBlender, MSGBOX_DEFAULT
# 415 "data/maps/LilycoveCity/scripts.pory"
	return
# 416 "data/maps/LilycoveCity/scripts.pory"

# 417 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayShoppingLetsBattle:
# 418 "data/maps/LilycoveCity/scripts.pory"
	.string "ZINNIA: Hi {PLAYER}{KUN}!\p"
# 419 "data/maps/LilycoveCity/scripts.pory"
	.string "I had a feeling you'd show up here.\p"
# 420 "data/maps/LilycoveCity/scripts.pory"
	.string "If something worth finding is in stock,\n"
# 421 "data/maps/LilycoveCity/scripts.pory"
	.string "the best trainers come looking, right?\p"
# 422 "data/maps/LilycoveCity/scripts.pory"
	.string "But honestly… I was waiting for you.\p"
# 423 "data/maps/LilycoveCity/scripts.pory"
	.string "Word's been spreading.\n"
# 424 "data/maps/LilycoveCity/scripts.pory"
	.string "You've been making a name out there.\p"
# 425 "data/maps/LilycoveCity/scripts.pory"
	.string "I want to see it for myself!\n"
# 426 "data/maps/LilycoveCity/scripts.pory"
	.string "You ready?$"
# 427 "data/maps/LilycoveCity/scripts.pory"

# 428 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayNotRaisingPokemon:
# 429 "data/maps/LilycoveCity/scripts.pory"
	.string "ZINNIA: Huh? Don't be shy!\p"
# 430 "data/maps/LilycoveCity/scripts.pory"
	.string "You're turning down a battle.\n"
# 431 "data/maps/LilycoveCity/scripts.pory"
	.string "After everything you've been through.\p"
# 432 "data/maps/LilycoveCity/scripts.pory"
	.string "That's almost funny.\p"
# 433 "data/maps/LilycoveCity/scripts.pory"
	.string "Almost. So. Are we doing this or not?$"
# 434 "data/maps/LilycoveCity/scripts.pory"

# 435 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayBattleMe:
# 436 "data/maps/LilycoveCity/scripts.pory"
	.string "ZINNIA: I'm still here. You're still\n"
# 437 "data/maps/LilycoveCity/scripts.pory"
	.string "here.\p"
# 438 "data/maps/LilycoveCity/scripts.pory"
	.string "Let's not waste this.\n"
# 439 "data/maps/LilycoveCity/scripts.pory"
	.string "Battle me.$"
# 440 "data/maps/LilycoveCity/scripts.pory"

# 441 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayWontBeBeaten:
# 442 "data/maps/LilycoveCity/scripts.pory"
	.string "ZINNIA: I've been training hard\n"
# 443 "data/maps/LilycoveCity/scripts.pory"
	.string "for this moment, {PLAYER}{KUN}.\p"
# 444 "data/maps/LilycoveCity/scripts.pory"
	.string "Don't hold back.$"
# 445 "data/maps/LilycoveCity/scripts.pory"

# 446 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayDefeat:
# 447 "data/maps/LilycoveCity/scripts.pory"
	.string "… … … … … …\p"
# 448 "data/maps/LilycoveCity/scripts.pory"
	.string "You're genuinely strong.\n"
# 449 "data/maps/LilycoveCity/scripts.pory"
	.string "I won't pretend otherwise.\p"
# 450 "data/maps/LilycoveCity/scripts.pory"
	.string "But I'm not done, {PLAYER}{KUN}.\n"
# 451 "data/maps/LilycoveCity/scripts.pory"
	.string "Not even close.$"
# 452 "data/maps/LilycoveCity/scripts.pory"

# 453 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayGoingBackToLittleroot:
# 454 "data/maps/LilycoveCity/scripts.pory"
	.string "ZINNIA: You've grown a lot.\n"
# 455 "data/maps/LilycoveCity/scripts.pory"
	.string "I'll say that honestly.\p"
# 456 "data/maps/LilycoveCity/scripts.pory"
	.string "I'm heading back to LITTLEROOT\n"
# 457 "data/maps/LilycoveCity/scripts.pory"
	.string "to keep training.\p"
# 458 "data/maps/LilycoveCity/scripts.pory"
	.string "Next time we meet, the result\n"
# 459 "data/maps/LilycoveCity/scripts.pory"
	.string "will be different.$"
# 460 "data/maps/LilycoveCity/scripts.pory"

# 461 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayYouGoingToCollectBadges:
# 462 "data/maps/LilycoveCity/scripts.pory"
	.string "Still BADGES to collect, {PLAYER}{KUN}?\p"
# 463 "data/maps/LilycoveCity/scripts.pory"
	.string "Then keep moving.\p"
# 464 "data/maps/LilycoveCity/scripts.pory"
	.string "I'll be training while you do.\n"
# 465 "data/maps/LilycoveCity/scripts.pory"
	.string "See you at the top.$"
# 466 "data/maps/LilycoveCity/scripts.pory"

# 467 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayYouGoingToPokemonLeague:
# 468 "data/maps/LilycoveCity/scripts.pory"
	.string "The POKéMON LEAGUE.\n"
# 469 "data/maps/LilycoveCity/scripts.pory"
	.string "Of course that's where you're headed.\p"
# 470 "data/maps/LilycoveCity/scripts.pory"
	.string "Go. You've earned the right\n"
# 471 "data/maps/LilycoveCity/scripts.pory"
	.string "to challenge it.\p"
# 472 "data/maps/LilycoveCity/scripts.pory"
	.string "I'll catch up to you.\n"
# 473 "data/maps/LilycoveCity/scripts.pory"
	.string "That's a promise.$"
# 474 "data/maps/LilycoveCity/scripts.pory"

# 475 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MayYouGoingToBattleFrontier:
# 476 "data/maps/LilycoveCity/scripts.pory"
	.string "BATTLE FRONTIER next?\p"
# 477 "data/maps/LilycoveCity/scripts.pory"
	.string "You really don't stop.\p"
# 478 "data/maps/LilycoveCity/scripts.pory"
	.string "Good. Neither will I.\n"
# 479 "data/maps/LilycoveCity/scripts.pory"
	.string "See you out there, {PLAYER}{KUN}.$"
# 480 "data/maps/LilycoveCity/scripts.pory"

# 481 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanShoppingLetsBattle:
# 482 "data/maps/LilycoveCity/scripts.pory"
	.string "ZENNO: {PLAYER}.\p"
# 483 "data/maps/LilycoveCity/scripts.pory"
	.string "Knew you'd show up eventually.\p"
# 484 "data/maps/LilycoveCity/scripts.pory"
	.string "Somewhere with good gear, good\n"
# 485 "data/maps/LilycoveCity/scripts.pory"
	.string "trainers follow.\l"
# 486 "data/maps/LilycoveCity/scripts.pory"
	.string "I got here first!\p"
# 487 "data/maps/LilycoveCity/scripts.pory"
	.string "Been hearing your name out there.\n"
# 488 "data/maps/LilycoveCity/scripts.pory"
	.string "You've been doing real work.\p"
# 489 "data/maps/LilycoveCity/scripts.pory"
	.string "Let's find out how real.\n"
# 490 "data/maps/LilycoveCity/scripts.pory"
	.string "Will you Battle me?$"
# 491 "data/maps/LilycoveCity/scripts.pory"

# 492 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanNoConfidence:
# 493 "data/maps/LilycoveCity/scripts.pory"
	.string "ZENNO: No time to be scared!\p"
# 494 "data/maps/LilycoveCity/scripts.pory"
	.string "You're not going to say no.\n"
# 495 "data/maps/LilycoveCity/scripts.pory"
	.string "After all that!\p"
# 496 "data/maps/LilycoveCity/scripts.pory"
	.string "I'll pretend I didn't hear that.\p"
# 497 "data/maps/LilycoveCity/scripts.pory"
	.string "So. Are we doing this or not?$"
# 498 "data/maps/LilycoveCity/scripts.pory"

# 499 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanBattleMe:
# 500 "data/maps/LilycoveCity/scripts.pory"
	.string "ZENNO: Still here. So are you.\p"
# 501 "data/maps/LilycoveCity/scripts.pory"
	.string "No more excuses.\n"
# 502 "data/maps/LilycoveCity/scripts.pory"
	.string "Battle me.$"
# 503 "data/maps/LilycoveCity/scripts.pory"

# 504 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanWontBeBeaten:
# 505 "data/maps/LilycoveCity/scripts.pory"
	.string "ZENNO: I've been putting in the work\n"
# 506 "data/maps/LilycoveCity/scripts.pory"
	.string "for this, {PLAYER}.\p"
# 507 "data/maps/LilycoveCity/scripts.pory"
	.string "Give me everything you've got.$"
# 508 "data/maps/LilycoveCity/scripts.pory"

# 509 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanDefeat:
# 510 "data/maps/LilycoveCity/scripts.pory"
	.string "…\p"
# 511 "data/maps/LilycoveCity/scripts.pory"
	.string "You're strong. For real.\p"
# 512 "data/maps/LilycoveCity/scripts.pory"
	.string "I'm not going to stand here and\n"
# 513 "data/maps/LilycoveCity/scripts.pory"
	.string "pretend that wasn't a real loss.\p"
# 514 "data/maps/LilycoveCity/scripts.pory"
	.string "But I'm far from finished, {PLAYER}.$"
# 515 "data/maps/LilycoveCity/scripts.pory"

# 516 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanGoingBackToLittleroot:
# 517 "data/maps/LilycoveCity/scripts.pory"
	.string "ZENNO: You've gotten strong, {PLAYER}.\n"
# 518 "data/maps/LilycoveCity/scripts.pory"
	.string "I mean it! And I respect that.\p"
# 519 "data/maps/LilycoveCity/scripts.pory"
	.string "I'm heading back to LITTLEROOT\n"
# 520 "data/maps/LilycoveCity/scripts.pory"
	.string "to train even harder.\p"
# 521 "data/maps/LilycoveCity/scripts.pory"
	.string "Next time will be different.\n"
# 522 "data/maps/LilycoveCity/scripts.pory"
	.string "Count on it. It's a promise!$"
# 523 "data/maps/LilycoveCity/scripts.pory"

# 524 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanYouGoingToCollectBadges:
# 525 "data/maps/LilycoveCity/scripts.pory"
	.string "Still BADGES left, {PLAYER}?\p"
# 526 "data/maps/LilycoveCity/scripts.pory"
	.string "Then keep at it.\p"
# 527 "data/maps/LilycoveCity/scripts.pory"
	.string "I'll be training in the meantime.\n"
# 528 "data/maps/LilycoveCity/scripts.pory"
	.string "See you.$"
# 529 "data/maps/LilycoveCity/scripts.pory"

# 530 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanYouGoingToPokemonLeague:
# 531 "data/maps/LilycoveCity/scripts.pory"
	.string "POKéMON LEAGUE. Right.\n"
# 532 "data/maps/LilycoveCity/scripts.pory"
	.string "That's exactly where you belong.\p"
# 533 "data/maps/LilycoveCity/scripts.pory"
	.string "Go take it on.\p"
# 534 "data/maps/LilycoveCity/scripts.pory"
	.string "I'll be right behind you.\n"
# 535 "data/maps/LilycoveCity/scripts.pory"
	.string "That's not a threat. It's a fact.$"
# 536 "data/maps/LilycoveCity/scripts.pory"

# 537 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_BrendanYouGoingToBattleFrontier:
# 538 "data/maps/LilycoveCity/scripts.pory"
	.string "BATTLE FRONTIER.\n"
# 539 "data/maps/LilycoveCity/scripts.pory"
	.string "You really don't slow down.\p"
# 540 "data/maps/LilycoveCity/scripts.pory"
	.string "Good. I'll meet you there someday.\n"
# 541 "data/maps/LilycoveCity/scripts.pory"
	.string "Keep going, {PLAYER}.$"
# 542 "data/maps/LilycoveCity/scripts.pory"

# 543 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MovedLootIntoHideoutToday:
# 544 "data/maps/LilycoveCity/scripts.pory"
	.string "Fufufu…\p"
# 545 "data/maps/LilycoveCity/scripts.pory"
	.string "We moved more loot into our secret\n"
# 546 "data/maps/LilycoveCity/scripts.pory"
	.string "HIDEOUT today…\p"
# 547 "data/maps/LilycoveCity/scripts.pory"
	.string "Wh-who are you?!\n"
# 548 "data/maps/LilycoveCity/scripts.pory"
	.string "I was just talking to myself!$"
# 549 "data/maps/LilycoveCity/scripts.pory"

# 550 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_ChanceToDoBigThings:
# 551 "data/maps/LilycoveCity/scripts.pory"
	.string "I'm just a GRUNT, so I don't know what\n"
# 552 "data/maps/LilycoveCity/scripts.pory"
	.string "the BOSS is thinking…\p"
# 553 "data/maps/LilycoveCity/scripts.pory"
	.string "But being on TEAM AQUA, I know I'll get\n"
# 554 "data/maps/LilycoveCity/scripts.pory"
	.string "the chance to do big things!\p"
# 555 "data/maps/LilycoveCity/scripts.pory"
	.string "Wh-who are you?!\n"
# 556 "data/maps/LilycoveCity/scripts.pory"
	.string "I was just talking to myself!$"
# 557 "data/maps/LilycoveCity/scripts.pory"

# 558 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_DontGoNearCaveInCove:
# 559 "data/maps/LilycoveCity/scripts.pory"
	.string "Hey, you!\p"
# 560 "data/maps/LilycoveCity/scripts.pory"
	.string "Don't go near the cave in the cove!\p"
# 561 "data/maps/LilycoveCity/scripts.pory"
	.string "Why? You don't need a reason why!\n"
# 562 "data/maps/LilycoveCity/scripts.pory"
	.string "I'm an adult, so you just listen to me!$"
# 563 "data/maps/LilycoveCity/scripts.pory"

# 564 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_IfWorldBecomesOurs:
# 565 "data/maps/LilycoveCity/scripts.pory"
	.string "If this whole wide world becomes ours,\n"
# 566 "data/maps/LilycoveCity/scripts.pory"
	.string "TEAM AQUA's, it will be a happier\l"
# 567 "data/maps/LilycoveCity/scripts.pory"
	.string "place for POKéMON, too.$"
# 568 "data/maps/LilycoveCity/scripts.pory"

# 569 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_WailmerLeapOutOfWater:
# 570 "data/maps/LilycoveCity/scripts.pory"
	.string "There! WAILMER!\n"
# 571 "data/maps/LilycoveCity/scripts.pory"
	.string "Leap out of the water now!$"
# 572 "data/maps/LilycoveCity/scripts.pory"

# 573 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_GetLostMessingUpTraining:
# 574 "data/maps/LilycoveCity/scripts.pory"
	.string "Hunh? What do you want?\p"
# 575 "data/maps/LilycoveCity/scripts.pory"
	.string "You're messing up our training,\n"
# 576 "data/maps/LilycoveCity/scripts.pory"
	.string "so can you, like, get lost?$"
# 577 "data/maps/LilycoveCity/scripts.pory"

# 578 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_ContestHallInTown:
# 579 "data/maps/LilycoveCity/scripts.pory"
	.string "There's a POKéMON CONTEST HALL\n"
# 580 "data/maps/LilycoveCity/scripts.pory"
	.string "right in this here town. \p"
# 581 "data/maps/LilycoveCity/scripts.pory"
	.string "That means well-raised POKéMON will\n"
# 582 "data/maps/LilycoveCity/scripts.pory"
	.string "come from all over the country.\p"
# 583 "data/maps/LilycoveCity/scripts.pory"
	.string "My heart swells with excitement!$"
# 584 "data/maps/LilycoveCity/scripts.pory"

# 585 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_StrangeCaveInCove:
# 586 "data/maps/LilycoveCity/scripts.pory"
	.string "Have you seen that strange cave in\n"
# 587 "data/maps/LilycoveCity/scripts.pory"
	.string "the cove at the edge of town?$"
# 588 "data/maps/LilycoveCity/scripts.pory"

# 589 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_GoingToMoveDeleterForHMs:
# 590 "data/maps/LilycoveCity/scripts.pory"
	.string "I'm going to teach my POKéMON some new\n"
# 591 "data/maps/LilycoveCity/scripts.pory"
	.string "moves for entering a CONTEST.\p"
# 592 "data/maps/LilycoveCity/scripts.pory"
	.string "So, I'm going to see the MOVE DELETER\n"
# 593 "data/maps/LilycoveCity/scripts.pory"
	.string "and make it forget HM moves.$"
# 594 "data/maps/LilycoveCity/scripts.pory"

# 595 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_ImFromKanto:
# 596 "data/maps/LilycoveCity/scripts.pory"
	.string "I came from KANTO.\p"
# 597 "data/maps/LilycoveCity/scripts.pory"
	.string "The HOENN region is beautiful with\n"
# 598 "data/maps/LilycoveCity/scripts.pory"
	.string "all its water and verdant nature.\p"
# 599 "data/maps/LilycoveCity/scripts.pory"
	.string "Hunh? Wait a second…\p"
# 600 "data/maps/LilycoveCity/scripts.pory"
	.string "Could there be rare POKéMON that live\n"
# 601 "data/maps/LilycoveCity/scripts.pory"
	.string "only in this area?$"
# 602 "data/maps/LilycoveCity/scripts.pory"

# 603 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_TeamAquaBeenTrainingWailmer:
# 604 "data/maps/LilycoveCity/scripts.pory"
	.string "TEAM AQUA's been training their\n"
# 605 "data/maps/LilycoveCity/scripts.pory"
	.string "WAILMER in the cove.\p"
# 606 "data/maps/LilycoveCity/scripts.pory"
	.string "We SAILORS can't get our boats out\n"
# 607 "data/maps/LilycoveCity/scripts.pory"
	.string "to sea with them in the way!$"
# 608 "data/maps/LilycoveCity/scripts.pory"

# 609 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_SomeonePuntedTeamAquaOut:
# 610 "data/maps/LilycoveCity/scripts.pory"
	.string "Ahoy, did you know?\p"
# 611 "data/maps/LilycoveCity/scripts.pory"
	.string "Someone punted TEAM AQUA out of\n"
# 612 "data/maps/LilycoveCity/scripts.pory"
	.string "the way for us!\p"
# 613 "data/maps/LilycoveCity/scripts.pory"
	.string "That got the WAILMER out of the cove,\n"
# 614 "data/maps/LilycoveCity/scripts.pory"
	.string "so we can get our boats out again.$"
# 615 "data/maps/LilycoveCity/scripts.pory"

# 616 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_SomeoneStoleMyPokemon:
# 617 "data/maps/LilycoveCity/scripts.pory"
	.string "I was taking a relaxing snooze at the\n"
# 618 "data/maps/LilycoveCity/scripts.pory"
	.string "seaside inn to the sound of waves…\p"
# 619 "data/maps/LilycoveCity/scripts.pory"
	.string "When someone stole my POKéMON!\p"
# 620 "data/maps/LilycoveCity/scripts.pory"
	.string "Who's the abductor?\n"
# 621 "data/maps/LilycoveCity/scripts.pory"
	.string "TEAM AQUA? Is it TEAM AQUA?$"
# 622 "data/maps/LilycoveCity/scripts.pory"

# 623 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MissingPokemonCameBack:
# 624 "data/maps/LilycoveCity/scripts.pory"
	.string "My missing POKéMON…\n"
# 625 "data/maps/LilycoveCity/scripts.pory"
	.string "It came back without me noticing!$"
# 626 "data/maps/LilycoveCity/scripts.pory"

# 627 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_ImArtDealer:
# 628 "data/maps/LilycoveCity/scripts.pory"
	.string "I'm an ART DEALER.\p"
# 629 "data/maps/LilycoveCity/scripts.pory"
	.string "I am a buyer and seller of fine art,\n"
# 630 "data/maps/LilycoveCity/scripts.pory"
	.string "especially paintings.\p"
# 631 "data/maps/LilycoveCity/scripts.pory"
	.string "I've heard that the MUSEUM here has\n"
# 632 "data/maps/LilycoveCity/scripts.pory"
	.string "magnificent works on exhibit…$"
# 633 "data/maps/LilycoveCity/scripts.pory"

# 634 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_SeaRemainsForeverYoung:
# 635 "data/maps/LilycoveCity/scripts.pory"
	.string "Even as we grow old and wrinkled,\n"
# 636 "data/maps/LilycoveCity/scripts.pory"
	.string "the sea remains forever young with\l"
# 637 "data/maps/LilycoveCity/scripts.pory"
	.string "the vivid brilliance of life…\p"
# 638 "data/maps/LilycoveCity/scripts.pory"
	.string "Fwohoho fwohohohoho…$"
# 639 "data/maps/LilycoveCity/scripts.pory"

# 640 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_SixtyYearsAgoHusbandProposed:
# 641 "data/maps/LilycoveCity/scripts.pory"
	.string "It was sixty years ago that my husband\n"
# 642 "data/maps/LilycoveCity/scripts.pory"
	.string "proposed to me here.\l"
# 643 "data/maps/LilycoveCity/scripts.pory"
	.string "The sea remains as beautiful as ever.\p"
# 644 "data/maps/LilycoveCity/scripts.pory"
	.string "Mufufufu mufufufufufu…$"
# 645 "data/maps/LilycoveCity/scripts.pory"

# 646 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_TeamAquaRenovatedCavern:
# 647 "data/maps/LilycoveCity/scripts.pory"
	.string "Hm, you know of the peculiar cavern\n"
# 648 "data/maps/LilycoveCity/scripts.pory"
	.string "in this cove?\p"
# 649 "data/maps/LilycoveCity/scripts.pory"
	.string "That had been a natural formation,\n"
# 650 "data/maps/LilycoveCity/scripts.pory"
	.string "but then that TEAM AQUA lot came\l"
# 651 "data/maps/LilycoveCity/scripts.pory"
	.string "along and made their renovations.\p"
# 652 "data/maps/LilycoveCity/scripts.pory"
	.string "They call themselves\n"
# 653 "data/maps/LilycoveCity/scripts.pory"
	.string "the “nature-loving TEAM AQUA”!\p"
# 654 "data/maps/LilycoveCity/scripts.pory"
	.string "But what they do and what they say\n"
# 655 "data/maps/LilycoveCity/scripts.pory"
	.string "don't match at all!$"
# 656 "data/maps/LilycoveCity/scripts.pory"

# 657 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_TeamAquaLotGoneForGood:
# 658 "data/maps/LilycoveCity/scripts.pory"
	.string "That cave in the cove…\p"
# 659 "data/maps/LilycoveCity/scripts.pory"
	.string "I didn't notice it right away,\n"
# 660 "data/maps/LilycoveCity/scripts.pory"
	.string "but it's completely empty now.\p"
# 661 "data/maps/LilycoveCity/scripts.pory"
	.string "That TEAM AQUA lot, they must\n"
# 662 "data/maps/LilycoveCity/scripts.pory"
	.string "have gone away for good.$"
# 663 "data/maps/LilycoveCity/scripts.pory"

# 664 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_CitySign:
# 665 "data/maps/LilycoveCity/scripts.pory"
	.string "LILYCOVE CITY\p"
# 666 "data/maps/LilycoveCity/scripts.pory"
	.string "“Where the land ends and the\n"
# 667 "data/maps/LilycoveCity/scripts.pory"
	.string "sea begins.”$"
# 668 "data/maps/LilycoveCity/scripts.pory"

# 669 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_ContestHallSign:
# 670 "data/maps/LilycoveCity/scripts.pory"
	.string "POKéMON CONTEST HALL\n"
# 671 "data/maps/LilycoveCity/scripts.pory"
	.string "“The gathering place for TRAINERS!”$"
# 672 "data/maps/LilycoveCity/scripts.pory"

# 673 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MotelSign:
# 674 "data/maps/LilycoveCity/scripts.pory"
	.string "COVE LILY MOTEL\p"
# 675 "data/maps/LilycoveCity/scripts.pory"
	.string "“Remember us as COVE LILY of\n"
# 676 "data/maps/LilycoveCity/scripts.pory"
	.string "LILYCOVE.”$"
# 677 "data/maps/LilycoveCity/scripts.pory"

# 678 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MuseumSign:
# 679 "data/maps/LilycoveCity/scripts.pory"
	.string "LILYCOVE MUSEUM\p"
# 680 "data/maps/LilycoveCity/scripts.pory"
	.string "“POKéMON Masterpiece Collection\n"
# 681 "data/maps/LilycoveCity/scripts.pory"
	.string "on exhibit!”$"
# 682 "data/maps/LilycoveCity/scripts.pory"

# 683 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MuseumSignPlayersExhibit:
# 684 "data/maps/LilycoveCity/scripts.pory"
	.string "LILYCOVE MUSEUM\p"
# 685 "data/maps/LilycoveCity/scripts.pory"
	.string "“{PLAYER}'s POKéMON Collection\n"
# 686 "data/maps/LilycoveCity/scripts.pory"
	.string "on exhibit!”$"
# 687 "data/maps/LilycoveCity/scripts.pory"

# 688 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_HarborSignUnderConstruction:
# 689 "data/maps/LilycoveCity/scripts.pory"
	.string "LILYCOVE CITY HARBOR\p"
# 690 "data/maps/LilycoveCity/scripts.pory"
	.string "“The ferry S.S. TIDAL is under\n"
# 691 "data/maps/LilycoveCity/scripts.pory"
	.string "construction in SLATEPORT CITY.\p"
# 692 "data/maps/LilycoveCity/scripts.pory"
	.string "“Service is scheduled to begin\n"
# 693 "data/maps/LilycoveCity/scripts.pory"
	.string "shortly.”$"
# 694 "data/maps/LilycoveCity/scripts.pory"

# 695 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_HarborSign:
# 696 "data/maps/LilycoveCity/scripts.pory"
	.string "LILYCOVE CITY HARBOR\p"
# 697 "data/maps/LilycoveCity/scripts.pory"
	.string "“Enjoy a delightful cruise on\n"
# 698 "data/maps/LilycoveCity/scripts.pory"
	.string "the ferry S.S. TIDAL.”$"
# 699 "data/maps/LilycoveCity/scripts.pory"

# 700 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_TrainerFanClubSign:
# 701 "data/maps/LilycoveCity/scripts.pory"
	.string "POKéMON TRAINER FAN CLUB\p"
# 702 "data/maps/LilycoveCity/scripts.pory"
	.string "The names of TRAINERS are scribbled\n"
# 703 "data/maps/LilycoveCity/scripts.pory"
	.string "all over the sign…$"
# 704 "data/maps/LilycoveCity/scripts.pory"

# 705 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_DepartmentStoreSign:
# 706 "data/maps/LilycoveCity/scripts.pory"
	.string "LILYCOVE DEPARTMENT STORE\p"
# 707 "data/maps/LilycoveCity/scripts.pory"
	.string "“Overflowing with great merchandise\n"
# 708 "data/maps/LilycoveCity/scripts.pory"
	.string "and excitement!\p"
# 709 "data/maps/LilycoveCity/scripts.pory"
	.string "“A great place to find that something\n"
# 710 "data/maps/LilycoveCity/scripts.pory"
	.string "you need!”$"
# 711 "data/maps/LilycoveCity/scripts.pory"

# 712 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_MoveDeletersHouseSign:
# 713 "data/maps/LilycoveCity/scripts.pory"
	.string "MOVE DELETER'S HOUSE\p"
# 714 "data/maps/LilycoveCity/scripts.pory"
	.string "“Unwanted POKéMON moves deleted.”$"
# 715 "data/maps/LilycoveCity/scripts.pory"

# 716 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_DoYouKnowAboutBerryBlender:
# 717 "data/maps/LilycoveCity/scripts.pory"
	.string "Do you know about the machine\n"
# 718 "data/maps/LilycoveCity/scripts.pory"
	.string "BERRY BLENDER?$"
# 719 "data/maps/LilycoveCity/scripts.pory"

# 720 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_FasterSpinBetterPokeblocks:
# 721 "data/maps/LilycoveCity/scripts.pory"
	.string "People have to work together to get it\n"
# 722 "data/maps/LilycoveCity/scripts.pory"
	.string "to spin faster.\p"
# 723 "data/maps/LilycoveCity/scripts.pory"
	.string "The faster you can make it spin, the\n"
# 724 "data/maps/LilycoveCity/scripts.pory"
	.string "better {POKEBLOCK}S you can get, I've heard.$"
# 725 "data/maps/LilycoveCity/scripts.pory"

# 726 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_ExplainBerryBlender:
# 727 "data/maps/LilycoveCity/scripts.pory"
	.string "It's used for making a kind of candy\n"
# 728 "data/maps/LilycoveCity/scripts.pory"
	.string "called a {POKEBLOCK}.\p"
# 729 "data/maps/LilycoveCity/scripts.pory"
	.string "If you give a good {POKEBLOCK} to a POKéMON,\n"
# 730 "data/maps/LilycoveCity/scripts.pory"
	.string "its condition will improve by a lot.$"
# 731 "data/maps/LilycoveCity/scripts.pory"

# 732 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_HeardTowerCalledSkyPillar:
# 733 "data/maps/LilycoveCity/scripts.pory"
	.string "I heard there's a tower somewhere out\n"
# 734 "data/maps/LilycoveCity/scripts.pory"
	.string "on the sea routes.\p"
# 735 "data/maps/LilycoveCity/scripts.pory"
	.string "It's called the SKY PILLAR, I hear.$"
# 736 "data/maps/LilycoveCity/scripts.pory"

# 737 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_SawTallTowerOnRoute131:
# 738 "data/maps/LilycoveCity/scripts.pory"
	.string "I saw this tall tower somewhere\n"
# 739 "data/maps/LilycoveCity/scripts.pory"
	.string "around ROUTE 131.\p"
# 740 "data/maps/LilycoveCity/scripts.pory"
	.string "Could that possibly be…?$"
# 741 "data/maps/LilycoveCity/scripts.pory"

# 742 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_JustArrivedAndSawRarePokemon:
# 743 "data/maps/LilycoveCity/scripts.pory"
	.string "We just arrived here on our\n"
# 744 "data/maps/LilycoveCity/scripts.pory"
	.string "honeymoon vacation.\p"
# 745 "data/maps/LilycoveCity/scripts.pory"
	.string "We happened to see a DRAGON-type\n"
# 746 "data/maps/LilycoveCity/scripts.pory"
	.string "POKéMON flying way up in the sky.\p"
# 747 "data/maps/LilycoveCity/scripts.pory"
	.string "Do cool POKéMON like that live in\n"
# 748 "data/maps/LilycoveCity/scripts.pory"
	.string "the HOENN region?$"
# 749 "data/maps/LilycoveCity/scripts.pory"

# 750 "data/maps/LilycoveCity/scripts.pory"
LilycoveCity_Text_HoneymoonVowToSeeRarePokemon:
# 751 "data/maps/LilycoveCity/scripts.pory"
	.string "On our honeymoon, we vowed to see as\n"
# 752 "data/maps/LilycoveCity/scripts.pory"
	.string "many rare POKéMON as we can.\p"
# 753 "data/maps/LilycoveCity/scripts.pory"
	.string "So we were delighted to see a rare\n"
# 754 "data/maps/LilycoveCity/scripts.pory"
	.string "POKéMON as soon as we arrived.\p"
# 755 "data/maps/LilycoveCity/scripts.pory"
	.string "I mean, we are totally happy!$"
