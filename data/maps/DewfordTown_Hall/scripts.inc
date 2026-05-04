# 1 "data/maps/DewfordTown_Hall/scripts.pory"

# 2 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_MapScripts::
# 3 "data/maps/DewfordTown_Hall/scripts.pory"
	.byte 0
# 4 "data/maps/DewfordTown_Hall/scripts.pory"

# 5 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_Girl::
# 6 "data/maps/DewfordTown_Hall/scripts.pory"
	lock
# 7 "data/maps/DewfordTown_Hall/scripts.pory"
	faceplayer
# 8 "data/maps/DewfordTown_Hall/scripts.pory"
	call Common_EventScript_BufferTrendyPhrase
# 9 "data/maps/DewfordTown_Hall/scripts.pory"
	special IsTrendyPhraseBoring
# 10 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, DewfordTown_Hall_EventScript_GirlBoredOfTrend
# 11 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_CantImagineLifeWithoutTrend, MSGBOX_DEFAULT
# 12 "data/maps/DewfordTown_Hall/scripts.pory"
	release
# 13 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 14 "data/maps/DewfordTown_Hall/scripts.pory"

# 15 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_GirlBoredOfTrend::
# 16 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_GettingBoredOfTrend, MSGBOX_DEFAULT
# 17 "data/maps/DewfordTown_Hall/scripts.pory"
	release
# 18 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 19 "data/maps/DewfordTown_Hall/scripts.pory"

# 20 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_Woman::
# 21 "data/maps/DewfordTown_Hall/scripts.pory"
	lock
# 22 "data/maps/DewfordTown_Hall/scripts.pory"
	faceplayer
# 23 "data/maps/DewfordTown_Hall/scripts.pory"
	call Common_EventScript_BufferTrendyPhrase
# 24 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_set FLAG_DEFEATED_DEWFORD_HALL_WOMAN, DewfordTown_Hall_EventScript_WomanDefeated
# 25 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_WomanChallenge, MSGBOX_DEFAULT
# 26 "data/maps/DewfordTown_Hall/scripts.pory"
	trainerbattle_no_intro TRAINER_RITA, DewfordTown_Hall_Text_WomanDefeat
# 27 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_WomanPostBattle, MSGBOX_DEFAULT
# 28 "data/maps/DewfordTown_Hall/scripts.pory"
	setflag FLAG_DEFEATED_DEWFORD_HALL_WOMAN
# 29 "data/maps/DewfordTown_Hall/scripts.pory"
	release
# 30 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 31 "data/maps/DewfordTown_Hall/scripts.pory"

# 32 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_WomanDefeated::
# 33 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_WomanPostBattle, MSGBOX_DEFAULT
# 34 "data/maps/DewfordTown_Hall/scripts.pory"
	release
# 35 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 36 "data/maps/DewfordTown_Hall/scripts.pory"

# 37 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_Man::
# 38 "data/maps/DewfordTown_Hall/scripts.pory"
	lock
# 39 "data/maps/DewfordTown_Hall/scripts.pory"
	faceplayer
# 40 "data/maps/DewfordTown_Hall/scripts.pory"
	call Common_EventScript_BufferTrendyPhrase
# 41 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_set FLAG_DEFEATED_DEWFORD_HALL_MAN, DewfordTown_Hall_EventScript_ManDefeated
# 42 "data/maps/DewfordTown_Hall/scripts.pory"
	special BufferDeepLinkPhrase
# 43 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_ManChallenge, MSGBOX_YESNO
# 44 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_eq VAR_RESULT, NO, DewfordTown_Hall_EventScript_ManDecline
# 45 "data/maps/DewfordTown_Hall/scripts.pory"
	trainerbattle_no_intro TRAINER_MAYA, DewfordTown_Hall_Text_ManDefeat
# 46 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_ManPostBattle, MSGBOX_DEFAULT
# 47 "data/maps/DewfordTown_Hall/scripts.pory"
	setflag FLAG_DEFEATED_DEWFORD_HALL_MAN
# 48 "data/maps/DewfordTown_Hall/scripts.pory"
	release
# 49 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 50 "data/maps/DewfordTown_Hall/scripts.pory"

# 51 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_ManDecline::
# 52 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_NotEasyToKeepUp, MSGBOX_DEFAULT
# 53 "data/maps/DewfordTown_Hall/scripts.pory"
	release
# 54 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 55 "data/maps/DewfordTown_Hall/scripts.pory"

# 56 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_ManDefeated::
# 57 "data/maps/DewfordTown_Hall/scripts.pory"
	special BufferDeepLinkPhrase
# 58 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_ManPostBattle, MSGBOX_DEFAULT
# 59 "data/maps/DewfordTown_Hall/scripts.pory"
	release
# 60 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 61 "data/maps/DewfordTown_Hall/scripts.pory"

# 62 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_ExpertM::
# 63 "data/maps/DewfordTown_Hall/scripts.pory"
	lock
# 64 "data/maps/DewfordTown_Hall/scripts.pory"
	faceplayer
# 65 "data/maps/DewfordTown_Hall/scripts.pory"
	call Common_EventScript_BufferTrendyPhrase
# 66 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_TVShowAboutTrend, MSGBOX_DEFAULT
# 67 "data/maps/DewfordTown_Hall/scripts.pory"
	closemessage
# 68 "data/maps/DewfordTown_Hall/scripts.pory"
	applymovement LOCALID_DEWFORD_HALL_EXPERT_M, Common_Movement_WalkInPlaceFasterUp
# 69 "data/maps/DewfordTown_Hall/scripts.pory"
	waitmovement 0
# 70 "data/maps/DewfordTown_Hall/scripts.pory"
	release
# 71 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 72 "data/maps/DewfordTown_Hall/scripts.pory"

# 73 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_Twin::
# 74 "data/maps/DewfordTown_Hall/scripts.pory"
	lock
# 75 "data/maps/DewfordTown_Hall/scripts.pory"
	faceplayer
# 76 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_set FLAG_RECEIVED_DEWFORD_HALL_SUN_STONE, DewfordTown_Hall_EventScript_TwinAlreadyGave
# 77 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_unset FLAG_DEFEATED_DEWFORD_HALL_WOMAN, DewfordTown_Hall_EventScript_TwinNotYet
# 78 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_unset FLAG_DEFEATED_DEWFORD_HALL_MAN, DewfordTown_Hall_EventScript_TwinNotYet
# 79 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_unset FLAG_DEFEATED_DEWFORD_HALL_LITTLE_BOY, DewfordTown_Hall_EventScript_TwinNotYet
# 80 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_TwinGiveSunStone, MSGBOX_DEFAULT
# 81 "data/maps/DewfordTown_Hall/scripts.pory"
	giveitem ITEM_SUN_STONE
# 82 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 83 "data/maps/DewfordTown_Hall/scripts.pory"
	setflag FLAG_RECEIVED_DEWFORD_HALL_SUN_STONE
# 84 "data/maps/DewfordTown_Hall/scripts.pory"
	release
# 85 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 86 "data/maps/DewfordTown_Hall/scripts.pory"

# 87 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_TwinNotYet::
# 88 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_TwinNotYet, MSGBOX_DEFAULT
# 89 "data/maps/DewfordTown_Hall/scripts.pory"
	release
# 90 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 91 "data/maps/DewfordTown_Hall/scripts.pory"

# 92 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_TwinAlreadyGave::
# 93 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_TwinAlreadyGave, MSGBOX_DEFAULT
# 94 "data/maps/DewfordTown_Hall/scripts.pory"
	release
# 95 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 96 "data/maps/DewfordTown_Hall/scripts.pory"

# 97 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_LittleBoy::
# 98 "data/maps/DewfordTown_Hall/scripts.pory"
	lock
# 99 "data/maps/DewfordTown_Hall/scripts.pory"
	faceplayer
# 100 "data/maps/DewfordTown_Hall/scripts.pory"
	call Common_EventScript_BufferTrendyPhrase
# 101 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_set FLAG_DEFEATED_DEWFORD_HALL_LITTLE_BOY, DewfordTown_Hall_EventScript_LittleBoyDefeated
# 102 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_LittleBoyChallenge, MSGBOX_DEFAULT
# 103 "data/maps/DewfordTown_Hall/scripts.pory"
	trainerbattle_no_intro TRAINER_LEO, DewfordTown_Hall_Text_LittleBoyDefeat
# 104 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_LittleBoyPostBattle, MSGBOX_DEFAULT
# 105 "data/maps/DewfordTown_Hall/scripts.pory"
	setflag FLAG_DEFEATED_DEWFORD_HALL_LITTLE_BOY
# 106 "data/maps/DewfordTown_Hall/scripts.pory"
	release
# 107 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 108 "data/maps/DewfordTown_Hall/scripts.pory"

# 109 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_LittleBoyDefeated::
# 110 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_LittleBoyPostBattle, MSGBOX_DEFAULT
# 111 "data/maps/DewfordTown_Hall/scripts.pory"
	release
# 112 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 113 "data/maps/DewfordTown_Hall/scripts.pory"

# 114 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_Bookshelf::
# 115 "data/maps/DewfordTown_Hall/scripts.pory"
	lockall
# 116 "data/maps/DewfordTown_Hall/scripts.pory"
	call Common_EventScript_BufferTrendyPhrase
# 117 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_BooksAboutTrend, MSGBOX_DEFAULT
# 118 "data/maps/DewfordTown_Hall/scripts.pory"
	releaseall
# 119 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 120 "data/maps/DewfordTown_Hall/scripts.pory"

# 121 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_Painting::
# 122 "data/maps/DewfordTown_Hall/scripts.pory"
	lockall
# 123 "data/maps/DewfordTown_Hall/scripts.pory"
	call Common_EventScript_BufferTrendyPhrase
# 124 "data/maps/DewfordTown_Hall/scripts.pory"
	special GetDewfordHallPaintingNameIndex
# 125 "data/maps/DewfordTown_Hall/scripts.pory"
	switch VAR_RESULT
# 126 "data/maps/DewfordTown_Hall/scripts.pory"
	case 0, DewfordTown_Hall_EventScript_ScreamTitle
# 127 "data/maps/DewfordTown_Hall/scripts.pory"
	case 4, DewfordTown_Hall_EventScript_ScreamTitle
# 128 "data/maps/DewfordTown_Hall/scripts.pory"
	case 1, DewfordTown_Hall_EventScript_SmileTitle
# 129 "data/maps/DewfordTown_Hall/scripts.pory"
	case 5, DewfordTown_Hall_EventScript_ScreamTitle
# 130 "data/maps/DewfordTown_Hall/scripts.pory"
	case 2, DewfordTown_Hall_EventScript_LastTitle
# 131 "data/maps/DewfordTown_Hall/scripts.pory"
	case 6, DewfordTown_Hall_EventScript_LastTitle
# 132 "data/maps/DewfordTown_Hall/scripts.pory"
	case 3, DewfordTown_Hall_EventScript_BirthTitle
# 133 "data/maps/DewfordTown_Hall/scripts.pory"
	case 7, DewfordTown_Hall_EventScript_LastTitle
# 134 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 135 "data/maps/DewfordTown_Hall/scripts.pory"

# 136 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_ScreamTitle::
# 137 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_TrendsScream, MSGBOX_DEFAULT
# 138 "data/maps/DewfordTown_Hall/scripts.pory"
	releaseall
# 139 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 140 "data/maps/DewfordTown_Hall/scripts.pory"

# 141 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_SmileTitle::
# 142 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_TrendsSmile, MSGBOX_DEFAULT
# 143 "data/maps/DewfordTown_Hall/scripts.pory"
	releaseall
# 144 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 145 "data/maps/DewfordTown_Hall/scripts.pory"

# 146 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_LastTitle::
# 147 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_LastTrend, MSGBOX_DEFAULT
# 148 "data/maps/DewfordTown_Hall/scripts.pory"
	releaseall
# 149 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 150 "data/maps/DewfordTown_Hall/scripts.pory"

# 151 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_BirthTitle::
# 152 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_BirthOfTrend, MSGBOX_DEFAULT
# 153 "data/maps/DewfordTown_Hall/scripts.pory"
	releaseall
# 154 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 155 "data/maps/DewfordTown_Hall/scripts.pory"

# 156 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_SchoolKidM::
# 157 "data/maps/DewfordTown_Hall/scripts.pory"
	lockall
# 158 "data/maps/DewfordTown_Hall/scripts.pory"
	setvar VAR_0x8008, 0
# 159 "data/maps/DewfordTown_Hall/scripts.pory"
	goto DewfordTown_Hall_EventScript_DoTrendDebate
# 160 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 161 "data/maps/DewfordTown_Hall/scripts.pory"

# 162 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_PsychicM::
# 163 "data/maps/DewfordTown_Hall/scripts.pory"
	lockall
# 164 "data/maps/DewfordTown_Hall/scripts.pory"
	setvar VAR_0x8008, 1
# 165 "data/maps/DewfordTown_Hall/scripts.pory"
	goto DewfordTown_Hall_EventScript_DoTrendDebate
# 166 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 167 "data/maps/DewfordTown_Hall/scripts.pory"

# 168 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_DoTrendDebate::
# 169 "data/maps/DewfordTown_Hall/scripts.pory"
	call Common_EventScript_BufferTrendyPhrase
# 170 "data/maps/DewfordTown_Hall/scripts.pory"
	special GetDewfordHallPaintingNameIndex
# 171 "data/maps/DewfordTown_Hall/scripts.pory"
	switch VAR_RESULT
# 172 "data/maps/DewfordTown_Hall/scripts.pory"
	case 0, DewfordTown_Hall_EventScript_TrendDebate1
# 173 "data/maps/DewfordTown_Hall/scripts.pory"
	case 1, DewfordTown_Hall_EventScript_TrendDebate1
# 174 "data/maps/DewfordTown_Hall/scripts.pory"
	case 2, DewfordTown_Hall_EventScript_TrendDebate2
# 175 "data/maps/DewfordTown_Hall/scripts.pory"
	case 3, DewfordTown_Hall_EventScript_TrendDebate2
# 176 "data/maps/DewfordTown_Hall/scripts.pory"
	case 4, DewfordTown_Hall_EventScript_TrendDebate3
# 177 "data/maps/DewfordTown_Hall/scripts.pory"
	case 5, DewfordTown_Hall_EventScript_TrendDebate3
# 178 "data/maps/DewfordTown_Hall/scripts.pory"
	case 6, DewfordTown_Hall_EventScript_TrendDebate4
# 179 "data/maps/DewfordTown_Hall/scripts.pory"
	case 7, DewfordTown_Hall_EventScript_TrendDebate5
# 180 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 181 "data/maps/DewfordTown_Hall/scripts.pory"

# 182 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_TrendDebate1::
# 183 "data/maps/DewfordTown_Hall/scripts.pory"
	call DewfordTown_Hall_EventScript_DebateReact1
# 184 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_SawTrendCoolestThing, MSGBOX_DEFAULT
# 185 "data/maps/DewfordTown_Hall/scripts.pory"
	call DewfordTown_Hall_EventScript_DebateReact2
# 186 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_AllegedTrendNotAuthentic, MSGBOX_DEFAULT
# 187 "data/maps/DewfordTown_Hall/scripts.pory"
	releaseall
# 188 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 189 "data/maps/DewfordTown_Hall/scripts.pory"

# 190 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_TrendDebate2::
# 191 "data/maps/DewfordTown_Hall/scripts.pory"
	call DewfordTown_Hall_EventScript_DebateReact1
# 192 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_ComposedTrendThemeSong, MSGBOX_DEFAULT
# 193 "data/maps/DewfordTown_Hall/scripts.pory"
	call DewfordTown_Hall_EventScript_DebateReact2
# 194 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_WorkOnYourSinging, MSGBOX_DEFAULT
# 195 "data/maps/DewfordTown_Hall/scripts.pory"
	releaseall
# 196 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 197 "data/maps/DewfordTown_Hall/scripts.pory"

# 198 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_TrendDebate3::
# 199 "data/maps/DewfordTown_Hall/scripts.pory"
	call DewfordTown_Hall_EventScript_DebateReact1
# 200 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_OrganizeTrendParty, MSGBOX_DEFAULT
# 201 "data/maps/DewfordTown_Hall/scripts.pory"
	call DewfordTown_Hall_EventScript_DebateReact2
# 202 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_BrilliantIndeed, MSGBOX_DEFAULT
# 203 "data/maps/DewfordTown_Hall/scripts.pory"
	releaseall
# 204 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 205 "data/maps/DewfordTown_Hall/scripts.pory"

# 206 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_TrendDebate4::
# 207 "data/maps/DewfordTown_Hall/scripts.pory"
	call DewfordTown_Hall_EventScript_DebateReact1
# 208 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_TrendHasBecomePartOfLife, MSGBOX_DEFAULT
# 209 "data/maps/DewfordTown_Hall/scripts.pory"
	call DewfordTown_Hall_EventScript_DebateReact2
# 210 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_TrendWeighsHeavilyOnMind, MSGBOX_DEFAULT
# 211 "data/maps/DewfordTown_Hall/scripts.pory"
	releaseall
# 212 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 213 "data/maps/DewfordTown_Hall/scripts.pory"

# 214 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_TrendDebate5::
# 215 "data/maps/DewfordTown_Hall/scripts.pory"
	call DewfordTown_Hall_EventScript_DebateReact1
# 216 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_IfWeTeamUpWellBeInvincible, MSGBOX_DEFAULT
# 217 "data/maps/DewfordTown_Hall/scripts.pory"
	call DewfordTown_Hall_EventScript_DebateReact2
# 218 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_WellBeTrendDuo, MSGBOX_DEFAULT
# 219 "data/maps/DewfordTown_Hall/scripts.pory"
	releaseall
# 220 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 221 "data/maps/DewfordTown_Hall/scripts.pory"

# 222 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_DontMovePlayer1::
# 223 "data/maps/DewfordTown_Hall/scripts.pory"
	return
# 224 "data/maps/DewfordTown_Hall/scripts.pory"

# 225 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_DebateReact1::
# 226 "data/maps/DewfordTown_Hall/scripts.pory"
	applymovement LOCALID_DEWFORD_HALL_PSYCHIC_M, DewfordTown_Hall_Movement_PsychicWalkInPlaceLeft
# 227 "data/maps/DewfordTown_Hall/scripts.pory"
	waitmovement 0
# 228 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_eq VAR_0x8008, 0, DewfordTown_Hall_EventScript_PlayerReactWest
# 229 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_eq VAR_0x8008, 1, DewfordTown_Hall_EventScript_DontMovePlayer2
# 230 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 231 "data/maps/DewfordTown_Hall/scripts.pory"

# 232 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_PlayerReactWest::
# 233 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_eq VAR_FACING, DIR_EAST, DewfordTown_Hall_EventScript_DontMovePlayer1
# 234 "data/maps/DewfordTown_Hall/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 235 "data/maps/DewfordTown_Hall/scripts.pory"
	waitmovement 0
# 236 "data/maps/DewfordTown_Hall/scripts.pory"
	return
# 237 "data/maps/DewfordTown_Hall/scripts.pory"

# 238 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_DontMovePlayer2::
# 239 "data/maps/DewfordTown_Hall/scripts.pory"
	return
# 240 "data/maps/DewfordTown_Hall/scripts.pory"

# 241 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_DebateReact2::
# 242 "data/maps/DewfordTown_Hall/scripts.pory"
	applymovement LOCALID_DEWFORD_HALL_SCHOOL_KID_M, DewfordTown_Hall_Movement_SchoolKidWalkInPlaceRight
# 243 "data/maps/DewfordTown_Hall/scripts.pory"
	waitmovement 0
# 244 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_eq VAR_0x8008, 0, DewfordTown_Hall_EventScript_PlayerReactNorthSouth
# 245 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_eq VAR_0x8008, 1, DewfordTown_Hall_EventScript_PlayerReactEast
# 246 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 247 "data/maps/DewfordTown_Hall/scripts.pory"

# 248 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_PlayerReactNorthSouth::
# 249 "data/maps/DewfordTown_Hall/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, DewfordTown_Hall_EventScript_PlayerWalkInPlaceUp
# 250 "data/maps/DewfordTown_Hall/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, DewfordTown_Hall_EventScript_PlayerWalkInPlaceDown
# 251 "data/maps/DewfordTown_Hall/scripts.pory"
	return
# 252 "data/maps/DewfordTown_Hall/scripts.pory"

# 253 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_PlayerWalkInPlaceUp::
# 254 "data/maps/DewfordTown_Hall/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 255 "data/maps/DewfordTown_Hall/scripts.pory"
	waitmovement 0
# 256 "data/maps/DewfordTown_Hall/scripts.pory"
	return
# 257 "data/maps/DewfordTown_Hall/scripts.pory"

# 258 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_PlayerWalkInPlaceDown::
# 259 "data/maps/DewfordTown_Hall/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 260 "data/maps/DewfordTown_Hall/scripts.pory"
	waitmovement 0
# 261 "data/maps/DewfordTown_Hall/scripts.pory"
	return
# 262 "data/maps/DewfordTown_Hall/scripts.pory"

# 263 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_PlayerReactEast::
# 264 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_eq VAR_FACING, DIR_WEST, DewfordTown_Hall_EventScript_DontMovePlayer1
# 265 "data/maps/DewfordTown_Hall/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 266 "data/maps/DewfordTown_Hall/scripts.pory"
	waitmovement 0
# 267 "data/maps/DewfordTown_Hall/scripts.pory"
	return
# 268 "data/maps/DewfordTown_Hall/scripts.pory"

# 269 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Movement_PsychicWalkInPlaceLeft:
# 270 "data/maps/DewfordTown_Hall/scripts.pory"
	walk_in_place_left
# 271 "data/maps/DewfordTown_Hall/scripts.pory"
	step_end
# 272 "data/maps/DewfordTown_Hall/scripts.pory"

# 273 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Movement_SchoolKidWalkInPlaceRight:
# 274 "data/maps/DewfordTown_Hall/scripts.pory"
	walk_in_place_right
# 275 "data/maps/DewfordTown_Hall/scripts.pory"
	step_end
# 276 "data/maps/DewfordTown_Hall/scripts.pory"

# 277 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_SludgeBombMan::
# 278 "data/maps/DewfordTown_Hall/scripts.pory"
	lock
# 279 "data/maps/DewfordTown_Hall/scripts.pory"
	faceplayer
# 280 "data/maps/DewfordTown_Hall/scripts.pory"
	call Common_EventScript_BufferTrendyPhrase
# 281 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_set FLAG_RECEIVED_TM_SLUDGE_BOMB, DewfordTown_Hall_EventScript_ReceivedSludgeBomb
# 282 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_GiveYouSludgeBomb, MSGBOX_DEFAULT
# 283 "data/maps/DewfordTown_Hall/scripts.pory"
	giveitem ITEM_TM_SLUDGE_BOMB
# 284 "data/maps/DewfordTown_Hall/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 285 "data/maps/DewfordTown_Hall/scripts.pory"
	setflag FLAG_RECEIVED_TM_SLUDGE_BOMB
# 286 "data/maps/DewfordTown_Hall/scripts.pory"
	release
# 287 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 288 "data/maps/DewfordTown_Hall/scripts.pory"

# 289 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_EventScript_ReceivedSludgeBomb::
# 290 "data/maps/DewfordTown_Hall/scripts.pory"
	msgbox DewfordTown_Hall_Text_LoveSludgeBombButTrendInToo, MSGBOX_DEFAULT
# 291 "data/maps/DewfordTown_Hall/scripts.pory"
	release
# 292 "data/maps/DewfordTown_Hall/scripts.pory"
	end
# 293 "data/maps/DewfordTown_Hall/scripts.pory"

# 294 "data/maps/DewfordTown_Hall/scripts.pory"
@ New Trainer Battle Texts
# 295 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_WomanChallenge:
# 296 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "This RENTON guy came in like\n"
# 297 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "a hurricane, disrupting everything!\p"
# 298 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "We artists don't accept his\n"
# 299 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "violent attitude!\p"
# 300 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "I'll show you that true strength\n"
# 301 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "comes from art, not from street fights!$"
# 302 "data/maps/DewfordTown_Hall/scripts.pory"

# 303 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_WomanDefeat:
# 304 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Even in defeat, we maintain\n"
# 305 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "our elegance!$"
# 306 "data/maps/DewfordTown_Hall/scripts.pory"

# 307 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_WomanPostBattle:
# 308 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "RENTON may have beaten the old\n"
# 309 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Gym Leader, but he'll never understand\l"
# 310 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Dewford's refined culture.\p"
# 311 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Here we value art and trends,\n"
# 312 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "not brute force!$"
# 313 "data/maps/DewfordTown_Hall/scripts.pory"

# 314 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_ManChallenge:
# 315 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "RENTON's thuggish behavior is\n"
# 316 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "killing our island's creative spirit!\p"
# 317 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "We used to discuss art and trends,\n"
# 318 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "now everyone talks about his brawls.\p"
# 319 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Let me show you what real\n"
# 320 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Dewford culture is about!$"
# 321 "data/maps/DewfordTown_Hall/scripts.pory"

# 322 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_ManDefeat:
# 323 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Alas! Our artistic ways are\n"
# 324 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "losing to brute force...$"
# 325 "data/maps/DewfordTown_Hall/scripts.pory"

# 326 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_ManPostBattle:
# 327 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Before RENTON, this hall was filled\n"
# 328 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "with poets and artists discussing\l"
# 329 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "the latest trends.\p"
# 330 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Now it's all about who he beat up\n"
# 331 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "last night. What has our town become?$"
# 332 "data/maps/DewfordTown_Hall/scripts.pory"

# 333 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_LittleBoyChallenge:
# 334 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "RENTON ruined everything!\n"
# 335 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "He made fun of my paintings!\p"
# 336 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "He said real artists don't paint\n"
# 337 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "flowers and rainbows...\p"
# 338 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Well, my Pokémon and I will show him\n"
# 339 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "that art can be powerful too!$"
# 340 "data/maps/DewfordTown_Hall/scripts.pory"

# 341 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_LittleBoyDefeat:
# 342 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "My art wasn't strong enough...$"
# 343 "data/maps/DewfordTown_Hall/scripts.pory"

# 344 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_LittleBoyPostBattle:
# 345 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Maybe RENTON was right...\n"
# 346 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Maybe I need to make my art tougher.\p"
# 347 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "But I'll never give up painting!\n"
# 348 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "I'll just paint angrier flowers!$"
# 349 "data/maps/DewfordTown_Hall/scripts.pory"

# 350 "data/maps/DewfordTown_Hall/scripts.pory"
@ Original Texts (kept for reference)
# 351 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_CantImagineLifeWithoutTrend:
# 352 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "What's in vogue? Why, it has to be\n"
# 353 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}!\p"
# 354 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "I can't imagine what life would be like\n"
# 355 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "without {STR_VAR_1}!$"
# 356 "data/maps/DewfordTown_Hall/scripts.pory"

# 357 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_GettingBoredOfTrend:
# 358 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "What's in vogue? Why, it has to be\n"
# 359 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}!\p"
# 360 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "But I'm getting kind of bored with it.\p"
# 361 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "I should look for the next big thing.$"
# 362 "data/maps/DewfordTown_Hall/scripts.pory"

# 363 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_NotEasyToKeepUp:
# 364 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "What?!\n"
# 365 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Is that so?!\p"
# 366 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "It's not easy for an older fellow like\n"
# 367 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "me to keep up with trends!$"
# 368 "data/maps/DewfordTown_Hall/scripts.pory"

# 369 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_TVShowAboutTrend:
# 370 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "This whole business about\n"
# 371 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}…\l"
# 372 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Isn't there a TV show on it?$"
# 373 "data/maps/DewfordTown_Hall/scripts.pory"

# 374 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_IsTrendMorePopularAcrossSea:
# 375 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Across the sea…\p"
# 376 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Is {STR_VAR_1}\n"
# 377 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "even more popular?$"
# 378 "data/maps/DewfordTown_Hall/scripts.pory"

# 379 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_BooksAboutTrend:
# 380 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "IDENTIFYING GOOD\n"
# 381 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1} &\l"
# 382 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "BAD {STR_VAR_1}…\p"
# 383 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "THE LINK BETWEEN\n"
# 384 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1} AND\l"
# 385 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "POKéMON…\p"
# 386 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "USEFUL\n"
# 387 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}…\p"
# 388 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "It's neatly jammed with books about\n"
# 389 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}.$"
# 390 "data/maps/DewfordTown_Hall/scripts.pory"

# 391 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_TrendsScream:
# 392 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}'S\n"
# 393 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "SCREAM is the title.$"
# 394 "data/maps/DewfordTown_Hall/scripts.pory"

# 395 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_TrendsSmile:
# 396 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}'S\n"
# 397 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "SMILE is the title.$"
# 398 "data/maps/DewfordTown_Hall/scripts.pory"

# 399 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_LastTrend:
# 400 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "It's titled THE LAST\n"
# 401 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}.$"
# 402 "data/maps/DewfordTown_Hall/scripts.pory"

# 403 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_BirthOfTrend:
# 404 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "It's titled THE BIRTH OF\n"
# 405 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}.$"
# 406 "data/maps/DewfordTown_Hall/scripts.pory"
	
# 407 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_SawTrendCoolestThing:
# 408 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "I saw {STR_VAR_1}!\n"
# 409 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Cool, huh?\p"
# 410 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "It's, like, the coolest thing going!\p"
# 411 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "It was awesome!\n"
# 412 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "It was the real thing, oh yeah!$"
# 413 "data/maps/DewfordTown_Hall/scripts.pory"

# 414 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_AllegedTrendNotAuthentic:
# 415 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Oh, no, no, no.\p"
# 416 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "That alleged\n"
# 417 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}\l"
# 418 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "you claim to have seen--it's not.\p"
# 419 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "The authentic article is much…\n"
# 420 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "How should I say it?\l"
# 421 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Sharper, yet more mellow!\p"
# 422 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Ah, no matter. It's astonishing!$"
# 423 "data/maps/DewfordTown_Hall/scripts.pory"

# 424 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_ComposedTrendThemeSong:
# 425 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Hey, listen, I composed a theme song\n"
# 426 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "for {STR_VAR_1}.\p"
# 427 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}\n"
# 428 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "is really popular right now.\p"
# 429 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Okay, listen!\n"
# 430 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "… …\p"
# 431 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Oh!\n"
# 432 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}!\p"
# 433 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Wonderful\n"
# 434 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}!$"
# 435 "data/maps/DewfordTown_Hall/scripts.pory"

# 436 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_WorkOnYourSinging:
# 437 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "… …\p"
# 438 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "I dare say, chap, it would pay for you\n"
# 439 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "to work on your singing before you\l"
# 440 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "trifle yourself with\l"
# 441 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}.$"
# 442 "data/maps/DewfordTown_Hall/scripts.pory"

# 443 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_OrganizeTrendParty:
# 444 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Anyway, as I was saying earlier, we\n"
# 445 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "should get together and organize a\l"
# 446 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1} party\l"
# 447 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "on the island.$"
# 448 "data/maps/DewfordTown_Hall/scripts.pory"

# 449 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_BrilliantIndeed:
# 450 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Oh, a smashing good idea!\p"
# 451 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "It will settle once and for all\n"
# 452 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "who is the best at\l"
# 453 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}.\l"
# 454 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Brilliant, indeed!\p"
# 455 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Starting today, our lives will revolve\n"
# 456 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "around {STR_VAR_1}!$"
# 457 "data/maps/DewfordTown_Hall/scripts.pory"

# 458 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_TrendHasBecomePartOfLife:
# 459 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "I was thinking, though…\p"
# 460 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Wouldn't you agree that\n"
# 461 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1} has\l"
# 462 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "grown from being something trendy to\l"
# 463 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "being a part of our daily lives?$"
# 464 "data/maps/DewfordTown_Hall/scripts.pory"

# 465 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_TrendWeighsHeavilyOnMind:
# 466 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Beg pardon?\n"
# 467 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "That much, what?\p"
# 468 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "However, it's true that\n"
# 469 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}\l"
# 470 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "weighs heavily on your mind, whether\l"
# 471 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "you're awake or asleep.\p"
# 472 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Absolutely, you're the\n"
# 473 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}\l"
# 474 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "PROFESSOR, old sport!$"
# 475 "data/maps/DewfordTown_Hall/scripts.pory"

# 476 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_IfWeTeamUpWellBeInvincible:
# 477 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "If you and me team up as a combo,\n"
# 478 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "we'll be invincible when it comes to all\l"
# 479 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "things {STR_VAR_1}!$"
# 480 "data/maps/DewfordTown_Hall/scripts.pory"

# 481 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_WellBeTrendDuo:
# 482 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Spot on, my friend!\p"
# 483 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "We shall be the\n"
# 484 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1} DUO!\p"
# 485 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Isn't that a ripe image?\n"
# 486 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Hahahah!$"
# 487 "data/maps/DewfordTown_Hall/scripts.pory"

# 488 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_GiveYouSludgeBomb:
# 489 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "For me, SLUDGE BOMB is at the peak\n"
# 490 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "of popularity. It's the one.\p"
# 491 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "Hunh? You're telling me that you don't\n"
# 492 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "know about SLUDGE BOMB?\p"
# 493 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "That's outright pitiful.\n"
# 494 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "I'll give you one.$"
# 495 "data/maps/DewfordTown_Hall/scripts.pory"

# 496 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_LoveSludgeBombButTrendInToo:
# 497 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "I love SLUDGE BOMB.\p"
# 498 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "But POKéMON with the move\n"
# 499 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "{STR_VAR_1}\l"
# 500 "data/maps/DewfordTown_Hall/scripts.pory"
	.string "are in, too.$"
# 501 "data/maps/DewfordTown_Hall/scripts.pory"

# 502 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_TwinGiveSunStone:
# 503 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "You defeated all of them!\n"
# 504 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "Your battles were incredible...\p"
# 505 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "You even inspired me to paint\n"
# 506 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "a brand new picture! Hihihi...\p"
# 507 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "Here, you deserve this\n"
# 508 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "SUN STONE!$"
# 509 "data/maps/DewfordTown_Hall/scripts.pory"

# 510 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_TwinNotYet:
# 511 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "Here in Dewford, us artists\n"
# 512 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "really treasure the SUN...\p"
# 513 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "The island where the sun\n"
# 514 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "shines the brightest!\p"
# 515 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "My grandpa gave me this stone!\n"
# 516 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "You seem cool...\p"
# 517 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "Let's make a deal! Defeat all\n"
# 518 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "the artists in this room\p"
# 519 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "and I'll give it to you!$"
# 520 "data/maps/DewfordTown_Hall/scripts.pory"

# 521 "data/maps/DewfordTown_Hall/scripts.pory"
DewfordTown_Hall_Text_TwinAlreadyGave:
# 522 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "When I grow up I'll be an\n"
# 523 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "amazing artist, for sure!\p"
# 524 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "I just love painting the Sun...\p"
# 525 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "Your battles inspired me to\n"
# 526 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "paint a brand new picture!\n"
# 527 "data/maps/DewfordTown_Hall/scripts.pory"
    .string "Hihihi...$"
