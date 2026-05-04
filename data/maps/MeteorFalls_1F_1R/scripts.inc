# 1 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 2 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_MapScripts::
# 3 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	map_script MAP_SCRIPT_ON_LOAD, MeteorFalls_1F_1R_OnLoad
# 4 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.byte 0
# 5 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 6 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_OnLoad:
# 7 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	call_if_set FLAG_SYS_GAME_CLEAR, MeteorFalls_1F_1R_EventScript_OpenStevensCave
# 8 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	end
# 9 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 10 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_EventScript_OpenStevensCave::
# 11 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	setmetatile 4, 1, METATILE_MeteorFalls_CaveEntrance_Top, TRUE
# 12 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	setmetatile 3, 2, METATILE_MeteorFalls_CaveEntrance_Left, TRUE
# 13 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	setmetatile 4, 2, METATILE_MeteorFalls_CaveEntrance_Bottom, FALSE
# 14 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	setmetatile 5, 2, METATILE_MeteorFalls_CaveEntrance_Right, TRUE
# 15 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	return
# 16 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 17 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_EventScript_MagmaStealsMeteoriteScene::
# 18 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	lockall
# 19 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	playbgm MUS_ENCOUNTER_MAGMA, FALSE
# 20 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_FaceDown
# 21 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	waitmovement 0
# 22 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	delay 30
# 23 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_MAGMA_GRUNT_1, Common_Movement_WalkInPlaceDown
# 24 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	waitmovement 0
# 25 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	msgbox MeteorFalls_1F_1R_Text_WithThisMeteorite, MSGBOX_DEFAULT
# 26 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	closemessage
# 27 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_MAGMA_GRUNT_1, Common_Movement_WalkInPlaceFasterUp
# 28 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_MAGMA_GRUNT_2, Common_Movement_WalkInPlaceFasterUp
# 29 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	waitmovement 0
# 30 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	playse SE_PIN
# 31 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_MAGMA_GRUNT_1, Common_Movement_ExclamationMark
# 32 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	waitmovement 0
# 33 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_MAGMA_GRUNT_1, Common_Movement_Delay48
# 34 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	waitmovement 0
# 35 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	msgbox MeteorFalls_1F_1R_Text_DontExpectMercyFromMagma, MSGBOX_DEFAULT
# 36 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	closemessage
# 37 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_MAGMA_GRUNT_1, MeteorFalls_1F_1R_Movement_MagmaGruntApproachPlayer
# 38 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	waitmovement 0
# 39 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	msgbox MeteorFalls_1F_1R_Text_HoldItRightThereMagma, MSGBOX_DEFAULT
# 40 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	closemessage
# 41 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 42 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_MAGMA_GRUNT_1, Common_Movement_WalkInPlaceFasterLeft
# 43 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_MAGMA_GRUNT_2, Common_Movement_WalkInPlaceFasterLeft
# 44 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	waitmovement 0
# 45 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	addobject LOCALID_METEOR_FALLS_ARCHIE
# 46 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	addobject LOCALID_METEOR_FALLS_AQUA_GRUNT_1
# 47 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	addobject LOCALID_METEOR_FALLS_AQUA_GRUNT_2
# 48 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	playbgm MUS_ENCOUNTER_AQUA, FALSE
# 49 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_ARCHIE, MeteorFalls_1F_1R_Movement_ArchieArrive
# 50 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_AQUA_GRUNT_1, MeteorFalls_1F_1R_Movement_AquaGrunt1Arrive
# 51 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_AQUA_GRUNT_2, MeteorFalls_1F_1R_Movement_AquaGrunt2Arrive
# 52 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	waitmovement 0
# 53 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_MAGMA_GRUNT_1, Common_Movement_WalkInPlaceFasterLeft
# 54 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_MAGMA_GRUNT_2, Common_Movement_WalkInPlaceFasterLeft
# 55 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	waitmovement 0
# 56 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	msgbox MeteorFalls_1F_1R_Text_BeSeeingYouTeamAqua, MSGBOX_DEFAULT
# 57 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	closemessage
# 58 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_PLAYER, MeteorFalls_1F_1R_Movement_PushPlayerOutOfWay
# 59 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_MAGMA_GRUNT_1, MeteorFalls_1F_1R_Movement_MagmaGrunt1Exit
# 60 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_MAGMA_GRUNT_2, MeteorFalls_1F_1R_Movement_MagmaGrunt2Exit
# 61 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	waitmovement 0
# 62 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	removeobject LOCALID_METEOR_FALLS_MAGMA_GRUNT_1
# 63 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	removeobject LOCALID_METEOR_FALLS_MAGMA_GRUNT_2
# 64 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_ARCHIE, MeteorFalls_1F_1R_Movement_ArchieApproachPlayer
# 65 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	waitmovement 0
# 66 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	msgbox MeteorFalls_1F_1R_Text_ArchieSeenYouBefore, MSGBOX_DEFAULT
# 67 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	closemessage
# 68 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_AQUA_GRUNT_1, MeteorFalls_1F_1R_Movement_AquaGrunt1ApproachArchie
# 69 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_AQUA_GRUNT_2, MeteorFalls_1F_1R_Movement_AquaGrunt2ApproachArchie
# 70 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	waitmovement 0
# 71 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	msgbox MeteorFalls_1F_1R_Text_BossWeShouldChaseMagma, MSGBOX_DEFAULT
# 72 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_ARCHIE, Common_Movement_WalkInPlaceFasterDown
# 73 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	waitmovement 0
# 74 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	msgbox MeteorFalls_1F_1R_Text_ArchieYesNoTellingWhatMagmaWillDo, MSGBOX_DEFAULT
# 75 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_ARCHIE, Common_Movement_WalkInPlaceFasterLeft
# 76 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	waitmovement 0
# 77 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	msgbox MeteorFalls_1F_1R_Text_ArchieFarewell, MSGBOX_DEFAULT
# 78 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	closemessage
# 79 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_ARCHIE, MeteorFalls_1F_1R_Movement_ArchieExit
# 80 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_AQUA_GRUNT_1, MeteorFalls_1F_1R_Movement_AquaGrunt1Exit
# 81 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	applymovement LOCALID_METEOR_FALLS_AQUA_GRUNT_2, MeteorFalls_1F_1R_Movement_AquaGrunt2Exit
# 82 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	waitmovement 0
# 83 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	fadedefaultbgm
# 84 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	removeobject LOCALID_METEOR_FALLS_ARCHIE
# 85 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	removeobject LOCALID_METEOR_FALLS_AQUA_GRUNT_1
# 86 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	removeobject LOCALID_METEOR_FALLS_AQUA_GRUNT_2
# 87 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	setflag FLAG_HIDE_ROUTE_112_TEAM_MAGMA
# 88 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	setflag FLAG_MET_ARCHIE_METEOR_FALLS
# 89 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	setflag FLAG_HIDE_FALLARBOR_TOWN_BATTLE_TENT_SCOTT
# 90 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	setvar VAR_METEOR_FALLS_STATE, 1
# 91 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	releaseall
# 92 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	end
# 93 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 94 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Movement_MagmaGruntApproachPlayer:
# 95 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 96 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 97 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_in_place_faster_up
# 98 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	step_end
# 99 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 100 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Movement_MagmaGrunt1Exit:
# 101 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_up
# 102 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_up
# 103 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_right
# 104 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_right
# 105 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_right
# 106 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_right
# 107 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_right
# 108 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_right
# 109 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_right
# 110 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	step_end
# 111 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 112 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Movement_MagmaGrunt2Exit:
# 113 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_up
# 114 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_up
# 115 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_up
# 116 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_right
# 117 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_right
# 118 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_right
# 119 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_right
# 120 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_right
# 121 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_right
# 122 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_fast_right
# 123 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	step_end
# 124 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 125 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Movement_ArchieArrive:
# 126 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 127 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 128 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 129 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 130 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 131 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 132 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	step_end
# 133 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 134 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Movement_AquaGrunt1Arrive:
# 135 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	delay_16
# 136 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	delay_16
# 137 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 138 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 139 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 140 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 141 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 142 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	step_end
# 143 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 144 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Movement_AquaGrunt2Arrive:
# 145 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	delay_16
# 146 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	delay_16
# 147 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 148 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 149 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 150 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 151 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 152 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	step_end
# 153 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 154 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Movement_ArchieExit:
# 155 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 156 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 157 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 158 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 159 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 160 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 161 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 162 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	step_end
# 163 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 164 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Movement_ArchieApproachPlayer:
# 165 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 166 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 167 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_up
# 168 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_up
# 169 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_in_place_faster_left
# 170 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	step_end
# 171 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 172 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Movement_AquaGrunt1Exit:
# 173 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_up
# 174 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_up
# 175 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 176 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 177 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 178 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 179 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 180 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 181 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 182 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	step_end
# 183 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 184 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Movement_AquaGrunt1ApproachArchie:
# 185 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 186 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 187 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 188 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_in_place_faster_up
# 189 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	step_end
# 190 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 191 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Movement_AquaGrunt2Exit:
# 192 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_up
# 193 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_up
# 194 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_up
# 195 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 196 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 197 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 198 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 199 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 200 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 201 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 202 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	step_end
# 203 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 204 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Movement_AquaGrunt2ApproachArchie:
# 205 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 206 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 207 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_right
# 208 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_in_place_faster_up
# 209 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	step_end
# 210 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 211 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Movement_PushPlayerOutOfWay:
# 212 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_in_place_faster_down
# 213 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	delay_4
# 214 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_in_place_faster_right
# 215 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	lock_facing_direction
# 216 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	walk_left
# 217 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	unlock_facing_direction
# 218 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	face_right
# 219 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	step_end
# 220 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 221 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_EventScript_ProfCozmo::
# 222 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	lock
# 223 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	faceplayer
# 224 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	goto_if_set FLAG_MET_PROF_COZMO, MeteorFalls_1F_1R_EventScript_MetCozmo
# 225 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	setflag FLAG_MET_PROF_COZMO
# 226 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	msgbox MeteorFalls_1F_1R_Text_MeetProfCozmo, MSGBOX_DEFAULT
# 227 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	release
# 228 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	end
# 229 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 230 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_EventScript_MetCozmo::
# 231 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	msgbox MeteorFalls_1F_1R_Text_WhatsTeamMagmaDoingAtMtChimney, MSGBOX_DEFAULT
# 232 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	release
# 233 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	end
# 234 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 235 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Text_WithThisMeteorite:
# 236 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Hehehe...\p"
# 237 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Strange, isn't it?\n"
# 238 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "How the sky sometimes trembles...\p"
# 239 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "This METEORITE fell with the\n"
# 240 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Millennium Comet.\p"
# 241 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Not just a rock.\n"
# 242 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Not just light.\p"
# 243 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "It hums... as if it remembers\n"
# 244 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "what this world has forgotten.\p"
# 245 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Our boss awaits at MT. CHIMNEY.\n"
# 246 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Everything will change there.\p"
# 247 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "When Hoenn is remade,\n"
# 248 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "the impure will not be spared.\p"
# 249 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Those who refuse to stand with us\n"
# 250 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "will be left behind.\p"
# 251 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "There is only one possible future.\n"
# 252 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "And we will bring it forth.$"
# 253 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	
# 254 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Text_DontExpectMercyFromMagma:
# 255 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Heh? What?\p"
# 256 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "I don't know who you are, but if you get\n"
# 257 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "in the way of TEAM MAGMA, don't\l"
# 258 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "expect any mercy! Get lost!$"
# 259 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 260 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Text_HoldItRightThereMagma:
# 261 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Hold it right there, TEAM MAGMA!\p"
# 262 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "You're badly mistaken if you think you\n"
# 263 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "can have your way with the world!$"
# 264 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 265 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Text_BeSeeingYouTeamAqua:
# 266 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "So... TEAM AQUA stands in our way.\p"
# 267 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "It does not matter.\p"
# 268 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "I am not here to argue ideals.\n"
# 269 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "I am here to fulfill my mission.\p"
# 270 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "The METEORITE fragments belong\n"
# 271 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "to our cause.\p"
# 272 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "There are many like me.\n"
# 273 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "I am only one among them.\p"
# 274 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Our leader sees a future\n"
# 275 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "greater than this fragile present.\p"
# 276 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "I believe in that vision.\n"
# 277 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Without doubt! You all should!\p"
# 278 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "I will deliver these fragments\n"
# 279 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "and the plan will advance.\p"
# 280 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "I cannot waste time here.$"
# 281 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 282 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Text_ArchieSeenYouBefore:
# 283 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "ARCHIE: Hm...\n"
# 284 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Kid with the strange outfit and cape...\p"
# 285 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "You're the one who faced\n"
# 286 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "our Captain Alejandro, aren't you?\p"
# 287 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "What is it that draws you so close\n"
# 288 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "to our affairs?\p"
# 289 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "No matter. I don't have time to\n"
# 290 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "deal with you now.\p"
# 291 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "You may not realize it yet...\n"
# 292 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "but TEAM MAGMA's ambition is ruin.\p"
# 293 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Hoenn is surrounded by volcanoes,\n"
# 294 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "sleeping giants beneath our feet.\p"
# 295 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "There are legends here...\n"
# 296 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "ancient forces of nature.\p"
# 297 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Power like that blinds men.\n"
# 298 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Be careful who you trust.\p"
# 299 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Our mission is different.\p"
# 300 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "To expand the seas with purpose.\n"
# 301 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "To shape a new, noble world.\p"
# 302 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "But I cannot say more.\n"
# 303 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Not yet.$"
# 304 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 305 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Text_BossWeShouldChaseMagma:
# 306 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "BOSS, we should give chase to\n"
# 307 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "TEAM MAGMA…$"
# 308 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 309 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Text_ArchieYesNoTellingWhatMagmaWillDo:
# 310 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "ARCHIE: Yes, yes, we must!\n"
# 311 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "We've got to hurry.\p"
# 312 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "There's no telling what TEAM MAGMA\n"
# 313 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "will do at MT. CHIMNEY!$"
# 314 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 315 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Text_ArchieFarewell:
# 316 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "ARCHIE: {PLAYER}...\p"
# 317 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "No matter how talented you are\n"
# 318 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "in life, some matters are beyond you.\p"
# 319 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "These are not League challenges\n"
# 320 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "or Gym trials.\p"
# 321 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "They shape the fate of Hoenn itself!\p"
# 322 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "I suggest you stay out of\n"
# 323 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "affairs this large.\p"
# 324 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Focus on your battles.\n"
# 325 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Leave the greater burdens to us.\p"
# 326 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "That would be... better for you.\p"
# 327 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Farewell.$"
# 328 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 329 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Text_MeetProfCozmo:
# 330 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "I... I'm COZMO...\n"
# 331 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "A PROFESSOR...\p"
# 332 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Ever since the Millennium Comet\n"
# 333 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "passed over Hoenn, I have been\l"
# 334 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "deeply intrigued.\p"
# 335 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "I was studying the METEORITE\n"
# 336 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "in secret.\p"
# 337 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "I never intended to help them.\n"
# 338 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "But they coerced me...\l"
# 339 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Threatened me...\p"
# 340 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "And then they took the METEORITE.\p"
# 341 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "I do not know what will happen\n"
# 342 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "at MT. CHIMNEY.\p"
# 343 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "What they seek is beyond\n"
# 344 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "ordinary science.\p"
# 345 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "It is a fusion of research\n"
# 346 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "and something... ancient.\p"
# 347 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "I can only speculate so much.\n"
# 348 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "There are mysteries here that feel\l"
# 349 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "almost esoteric.\p"
# 350 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Please... be careful.\n"
# 351 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "This is far more dangerous\l"
# 352 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "than it seems!$"
# 353 "data/maps/MeteorFalls_1F_1R/scripts.pory"

# 354 "data/maps/MeteorFalls_1F_1R/scripts.pory"
MeteorFalls_1F_1R_Text_WhatsTeamMagmaDoingAtMtChimney:
# 355 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "PROF. COZMO: But that TEAM MAGMA...\p"
# 356 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "What could they possibly intend\n"
# 357 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "to do with that METEORITE\l"
# 358 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "at MT. CHIMNEY?\p"
# 359 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "And to be honest...\n"
# 360 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "I am not certain we can trust\l"
# 361 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "TEAM AQUA either.\p"
# 362 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Whenever power and money are\n"
# 363 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "involved, men are easily corrupted.\p"
# 364 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "My research was driven only by\n"
# 365 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "a love of science.\p"
# 366 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "Please... be cautious.\n"
# 367 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "There is more at stake here\l"
# 368 "data/maps/MeteorFalls_1F_1R/scripts.pory"
	.string "than anyone admits!$"
