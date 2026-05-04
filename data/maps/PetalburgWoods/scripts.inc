# 1 "data/maps/PetalburgWoods/scripts.pory"

# 2 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_MapScripts::
# 3 "data/maps/PetalburgWoods/scripts.pory"
	.byte 0
# 4 "data/maps/PetalburgWoods/scripts.pory"

# 5 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_DevonResearcherLeft::
# 6 "data/maps/PetalburgWoods/scripts.pory"
	lockall
# 7 "data/maps/PetalburgWoods/scripts.pory"
	call PetalburgWoods_EventScript_DevonResearcherIntro
# 8 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, PetalburgWoods_Movement_DevonResearcherApproachPlayerLeft
# 9 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 10 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_HaveYouSeenShroomish, MSGBOX_DEFAULT
# 11 "data/maps/PetalburgWoods/scripts.pory"
	closemessage
# 12 "data/maps/PetalburgWoods/scripts.pory"
	playbgm MUS_ENCOUNTER_AQUA, FALSE
# 13 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_GRUNT, PetalburgWoods_Movement_AquaEntrance
# 14 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_GRUNT_F, PetalburgWoods_Movement_AquaFEntrance
# 15 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 16 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_IWasGoingToAmbushYou, MSGBOX_DEFAULT
# 17 "data/maps/PetalburgWoods/scripts.pory"
	closemessage
# 18 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_GRUNT, PetalburgWoods_Movement_AquaApproachResearcherLeft
# 19 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_GRUNT_F, PetalburgWoods_Movement_AquaFApproachResearcherLeft
# 20 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 21 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterUp
# 22 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 23 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_HandOverThosePapers, MSGBOX_DEFAULT
# 24 "data/maps/PetalburgWoods/scripts.pory"
	closemessage
# 25 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, PetalburgWoods_Movement_DevonResearcherFleeToPlayerLeft
# 26 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 27 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_YouHaveToHelpMe, MSGBOX_DEFAULT
# 28 "data/maps/PetalburgWoods/scripts.pory"
	closemessage
# 29 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_GRUNT, PetalburgWoods_Movement_AquaApproachPlayer
# 30 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_GRUNT_F, PetalburgWoods_Movement_AquaFApproachPlayer
# 31 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 32 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_NoOneCrossesTeamAqua, MSGBOX_DEFAULT
# 33 "data/maps/PetalburgWoods/scripts.pory"
	trainerbattle_no_intro TRAINER_GRUNT_PETALBURG_WOODS, PetalburgWoods_Text_YoureKiddingMe
# 34 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_GRUNT, PetalburgWoods_Movement_AquaBackOff
# 35 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_GRUNT_F, PetalburgWoods_Movement_AquaFBackOff
# 36 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 37 "data/maps/PetalburgWoods/scripts.pory"
	call PetalburgWoods_EventScript_DevonResearcherPostBattle
# 38 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgWoods_Movement_WatchResearcherLeave
# 39 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, PetalburgWoods_Movement_DevonResearcherExitLeft
# 40 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 41 "data/maps/PetalburgWoods/scripts.pory"
	goto PetalburgWoods_EventScript_RemoveDevonResearcher
# 42 "data/maps/PetalburgWoods/scripts.pory"
	end
# 43 "data/maps/PetalburgWoods/scripts.pory"

# 44 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_DevonResearcherRight::
# 45 "data/maps/PetalburgWoods/scripts.pory"
	lockall
# 46 "data/maps/PetalburgWoods/scripts.pory"
	call PetalburgWoods_EventScript_DevonResearcherIntro
# 47 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, PetalburgWoods_Movement_DevonResearcherApproachPlayerRight
# 48 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 49 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 50 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 51 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_HaveYouSeenShroomish, MSGBOX_DEFAULT
# 52 "data/maps/PetalburgWoods/scripts.pory"
	closemessage
# 53 "data/maps/PetalburgWoods/scripts.pory"
	playbgm MUS_ENCOUNTER_AQUA, FALSE
# 54 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_GRUNT, PetalburgWoods_Movement_AquaEntrance
# 55 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_GRUNT_F, PetalburgWoods_Movement_AquaFEntrance
# 56 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 57 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_IWasGoingToAmbushYou, MSGBOX_DEFAULT
# 58 "data/maps/PetalburgWoods/scripts.pory"
	closemessage
# 59 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_GRUNT, PetalburgWoods_Movement_AquaApproachResearcherRight
# 60 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_GRUNT_F, PetalburgWoods_Movement_AquaFApproachResearcherRight
# 61 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 62 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, Common_Movement_WalkInPlaceFasterUp
# 63 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 64 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_HandOverThosePapers, MSGBOX_DEFAULT
# 65 "data/maps/PetalburgWoods/scripts.pory"
	closemessage
# 66 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, PetalburgWoods_Movement_DevonResearcherFleeToPlayerRight
# 67 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 68 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_YouHaveToHelpMe, MSGBOX_DEFAULT
# 69 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 70 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 71 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_NoOneCrossesTeamAqua, MSGBOX_DEFAULT
# 72 "data/maps/PetalburgWoods/scripts.pory"
	trainerbattle_no_intro TRAINER_GRUNT_PETALBURG_WOODS, PetalburgWoods_Text_YoureKiddingMe
# 73 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_GRUNT, PetalburgWoods_Movement_AquaBackOff
# 74 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_GRUNT_F, PetalburgWoods_Movement_AquaFBackOff
# 75 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 76 "data/maps/PetalburgWoods/scripts.pory"
	call PetalburgWoods_EventScript_DevonResearcherPostBattle
# 77 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PLAYER, PetalburgWoods_Movement_WatchResearcherLeave
# 78 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, PetalburgWoods_Movement_DevonResearcherExitRight
# 79 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 80 "data/maps/PetalburgWoods/scripts.pory"
	goto PetalburgWoods_EventScript_RemoveDevonResearcher
# 81 "data/maps/PetalburgWoods/scripts.pory"
	end
# 82 "data/maps/PetalburgWoods/scripts.pory"

# 83 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_DevonResearcherIntro::
# 84 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, PetalburgWoods_Movement_DevonResearcherLookAround
# 85 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 86 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_NotAOneToBeFound, MSGBOX_DEFAULT
# 87 "data/maps/PetalburgWoods/scripts.pory"
	closemessage
# 88 "data/maps/PetalburgWoods/scripts.pory"
	return
# 89 "data/maps/PetalburgWoods/scripts.pory"

# 90 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_DevonResearcherPostBattle::
# 91 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_YouveGotSomeNerve, MSGBOX_DEFAULT
# 92 "data/maps/PetalburgWoods/scripts.pory"
	closemessage
# 93 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_GRUNT, PetalburgWoods_Movement_AquaRunAway
# 94 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_GRUNT_F, PetalburgWoods_Movement_AquaFRunAway
# 95 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 96 "data/maps/PetalburgWoods/scripts.pory"
	removeobject LOCALID_PETALBURG_WOODS_GRUNT
# 97 "data/maps/PetalburgWoods/scripts.pory"
	removeobject LOCALID_PETALBURG_WOODS_GRUNT_F
# 98 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 99 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 100 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_ThatWasAwfullyClose, MSGBOX_DEFAULT
# 101 "data/maps/PetalburgWoods/scripts.pory"
	giveitem ITEM_ABILITY_PATCH
# 102 "data/maps/PetalburgWoods/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, PetalburgWoods_EventScript_BagFull
# 103 "data/maps/PetalburgWoods/scripts.pory"
	goto PetalburgWoods_EventScript_DevonResearcherFinish
# 104 "data/maps/PetalburgWoods/scripts.pory"
	end
# 105 "data/maps/PetalburgWoods/scripts.pory"

# 106 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_BagFull::
# 107 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_YoureLoadedWithItems, MSGBOX_DEFAULT
# 108 "data/maps/PetalburgWoods/scripts.pory"
	goto PetalburgWoods_EventScript_DevonResearcherFinish
# 109 "data/maps/PetalburgWoods/scripts.pory"
	end
# 110 "data/maps/PetalburgWoods/scripts.pory"

# 111 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_DevonResearcherFinish::
# 112 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_TeamAquaAfterSomethingInRustboro, MSGBOX_DEFAULT
# 113 "data/maps/PetalburgWoods/scripts.pory"
	applymovement LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE, PetalburgWoods_Movement_DevonResearcherStartExit
# 114 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 115 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_ICantBeWastingTime, MSGBOX_DEFAULT
# 116 "data/maps/PetalburgWoods/scripts.pory"
	closemessage
# 117 "data/maps/PetalburgWoods/scripts.pory"
	return
# 118 "data/maps/PetalburgWoods/scripts.pory"

# 119 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_RemoveDevonResearcher::
# 120 "data/maps/PetalburgWoods/scripts.pory"
	removeobject LOCALID_PETALBURG_WOODS_DEVON_EMPLOYEE
# 121 "data/maps/PetalburgWoods/scripts.pory"
	setvar VAR_PETALBURG_WOODS_STATE, 1
# 122 "data/maps/PetalburgWoods/scripts.pory"
	setflag FLAG_LEVELCAP9_AQUA_GRUNT_DEFEATED
# 123 "data/maps/PetalburgWoods/scripts.pory"
	releaseall
# 124 "data/maps/PetalburgWoods/scripts.pory"
	end
# 125 "data/maps/PetalburgWoods/scripts.pory"

# 126 "data/maps/PetalburgWoods/scripts.pory"
@ Movement scripts for Male Grunt
# 127 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_AquaEntrance:
# 128 "data/maps/PetalburgWoods/scripts.pory"
	walk_down
# 129 "data/maps/PetalburgWoods/scripts.pory"
	walk_down
# 130 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 131 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 132 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 133 "data/maps/PetalburgWoods/scripts.pory"

# 134 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_AquaApproachResearcherLeft:
# 135 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_down
# 136 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_down
# 137 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 138 "data/maps/PetalburgWoods/scripts.pory"

# 139 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_AquaApproachResearcherRight:
# 140 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_down
# 141 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_down
# 142 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_down
# 143 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 144 "data/maps/PetalburgWoods/scripts.pory"

# 145 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_AquaApproachPlayer:
# 146 "data/maps/PetalburgWoods/scripts.pory"
	walk_down
# 147 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 148 "data/maps/PetalburgWoods/scripts.pory"

# 149 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_AquaBackOff:
# 150 "data/maps/PetalburgWoods/scripts.pory"
	lock_facing_direction
# 151 "data/maps/PetalburgWoods/scripts.pory"
	walk_up
# 152 "data/maps/PetalburgWoods/scripts.pory"
	unlock_facing_direction
# 153 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 154 "data/maps/PetalburgWoods/scripts.pory"

# 155 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_AquaRunAway:
# 156 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 157 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 158 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 159 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 160 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 161 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 162 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 163 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 164 "data/maps/PetalburgWoods/scripts.pory"

# 165 "data/maps/PetalburgWoods/scripts.pory"
@ Movement scripts for Female Grunt (mirror/synchronized)
# 166 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_AquaFEntrance:
# 167 "data/maps/PetalburgWoods/scripts.pory"
	walk_down
# 168 "data/maps/PetalburgWoods/scripts.pory"
	walk_down
# 169 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 170 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 171 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 172 "data/maps/PetalburgWoods/scripts.pory"

# 173 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_AquaFApproachResearcherLeft:
# 174 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_down
# 175 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_down
# 176 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 177 "data/maps/PetalburgWoods/scripts.pory"

# 178 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_AquaFApproachResearcherRight:
# 179 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_down
# 180 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_down
# 181 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_down
# 182 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 183 "data/maps/PetalburgWoods/scripts.pory"

# 184 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_AquaFApproachPlayer:
# 185 "data/maps/PetalburgWoods/scripts.pory"
	walk_down
# 186 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 187 "data/maps/PetalburgWoods/scripts.pory"

# 188 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_AquaFBackOff:
# 189 "data/maps/PetalburgWoods/scripts.pory"
	lock_facing_direction
# 190 "data/maps/PetalburgWoods/scripts.pory"
	walk_up
# 191 "data/maps/PetalburgWoods/scripts.pory"
	unlock_facing_direction
# 192 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 193 "data/maps/PetalburgWoods/scripts.pory"

# 194 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_AquaFRunAway:
# 195 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 196 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 197 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 198 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 199 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 200 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 201 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 202 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 203 "data/maps/PetalburgWoods/scripts.pory"

# 204 "data/maps/PetalburgWoods/scripts.pory"
@ Researcher movements (unchanged)
# 205 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_DevonResearcherLookAround:
# 206 "data/maps/PetalburgWoods/scripts.pory"
	face_up
# 207 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 208 "data/maps/PetalburgWoods/scripts.pory"
	delay_4
# 209 "data/maps/PetalburgWoods/scripts.pory"
	face_right
# 210 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 211 "data/maps/PetalburgWoods/scripts.pory"
	delay_8
# 212 "data/maps/PetalburgWoods/scripts.pory"
	face_left
# 213 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 214 "data/maps/PetalburgWoods/scripts.pory"
	delay_8
# 215 "data/maps/PetalburgWoods/scripts.pory"
	face_down
# 216 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 217 "data/maps/PetalburgWoods/scripts.pory"
	face_right
# 218 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 219 "data/maps/PetalburgWoods/scripts.pory"
	delay_8
# 220 "data/maps/PetalburgWoods/scripts.pory"
	face_up
# 221 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 222 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 223 "data/maps/PetalburgWoods/scripts.pory"

# 224 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_DevonResearcherApproachPlayerLeft:
# 225 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 226 "data/maps/PetalburgWoods/scripts.pory"
	face_player
# 227 "data/maps/PetalburgWoods/scripts.pory"
	walk_down
# 228 "data/maps/PetalburgWoods/scripts.pory"
	walk_down
# 229 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 230 "data/maps/PetalburgWoods/scripts.pory"

# 231 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_DevonResearcherApproachPlayerRight:
# 232 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 233 "data/maps/PetalburgWoods/scripts.pory"
	face_player
# 234 "data/maps/PetalburgWoods/scripts.pory"
	walk_down
# 235 "data/maps/PetalburgWoods/scripts.pory"
	walk_down
# 236 "data/maps/PetalburgWoods/scripts.pory"
	walk_down
# 237 "data/maps/PetalburgWoods/scripts.pory"
	walk_in_place_faster_right
# 238 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 239 "data/maps/PetalburgWoods/scripts.pory"

# 240 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_DevonResearcherFleeToPlayerLeft:
# 241 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_right
# 242 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_down
# 243 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_down
# 244 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_left
# 245 "data/maps/PetalburgWoods/scripts.pory"
	walk_in_place_faster_up
# 246 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 247 "data/maps/PetalburgWoods/scripts.pory"

# 248 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_DevonResearcherFleeToPlayerRight:
# 249 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_down
# 250 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_right
# 251 "data/maps/PetalburgWoods/scripts.pory"
	walk_in_place_faster_up
# 252 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 253 "data/maps/PetalburgWoods/scripts.pory"

# 254 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_DevonResearcherExitLeft:
# 255 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_right
# 256 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 257 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 258 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 259 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 260 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 261 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 262 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 263 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 264 "data/maps/PetalburgWoods/scripts.pory"

# 265 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_DevonResearcherExitRight:
# 266 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_left
# 267 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 268 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 269 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 270 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 271 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 272 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 273 "data/maps/PetalburgWoods/scripts.pory"
	walk_fast_up
# 274 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 275 "data/maps/PetalburgWoods/scripts.pory"

# 276 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_DevonResearcherStartExit:
# 277 "data/maps/PetalburgWoods/scripts.pory"
	walk_in_place_faster_down
# 278 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 279 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 280 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 281 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 282 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 283 "data/maps/PetalburgWoods/scripts.pory"
	face_up
# 284 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 285 "data/maps/PetalburgWoods/scripts.pory"

# 286 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Movement_WatchResearcherLeave:
# 287 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 288 "data/maps/PetalburgWoods/scripts.pory"
	delay_16
# 289 "data/maps/PetalburgWoods/scripts.pory"
	walk_in_place_faster_up
# 290 "data/maps/PetalburgWoods/scripts.pory"
	step_end
# 291 "data/maps/PetalburgWoods/scripts.pory"

# 292 "data/maps/PetalburgWoods/scripts.pory"
@ Dialog Text with both grunts talking
# 293 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_NotAOneToBeFound:
# 294 "data/maps/PetalburgWoods/scripts.pory"
	.string "Hmm…\n"
# 295 "data/maps/PetalburgWoods/scripts.pory"
	.string "Not a one to be found…$"
# 296 "data/maps/PetalburgWoods/scripts.pory"

# 297 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_HaveYouSeenShroomish:
# 298 "data/maps/PetalburgWoods/scripts.pory"
	.string "Hello, have you seen any POKÉMON\n"
# 299 "data/maps/PetalburgWoods/scripts.pory"
	.string "called SHROOMISH around here?\p"
# 300 "data/maps/PetalburgWoods/scripts.pory"
	.string "I really love that POKÉMON.$"
# 301 "data/maps/PetalburgWoods/scripts.pory"

# 302 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_IWasGoingToAmbushYou:
# 303 "data/maps/PetalburgWoods/scripts.pory"
	.string "MALE GRUNT: We were going to ambush\n"
# 304 "data/maps/PetalburgWoods/scripts.pory"
	.string "you, but you had to dawdle in\l"
# 305 "data/maps/PetalburgWoods/scripts.pory"
	.string "PETALBURG WOODS forever, didn't you?\p"
# 306 "data/maps/PetalburgWoods/scripts.pory"
	.string "FEMALE GRUNT: Yeah! We got sick of\n"
# 307 "data/maps/PetalburgWoods/scripts.pory"
	.string "waiting, so here we are!$"
# 308 "data/maps/PetalburgWoods/scripts.pory"

# 309 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_HandOverThosePapers:
# 310 "data/maps/PetalburgWoods/scripts.pory"
	.string "MALE GRUNT: You! DEVON RESEARCHER!\p"
# 311 "data/maps/PetalburgWoods/scripts.pory"
	.string "FEMALE GRUNT: Hand over those papers!\n"
# 312 "data/maps/PetalburgWoods/scripts.pory"
	.string "Now!$"
# 313 "data/maps/PetalburgWoods/scripts.pory"

# 314 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_YouHaveToHelpMe:
# 315 "data/maps/PetalburgWoods/scripts.pory"
	.string "Aiyeeeh!\p"
# 316 "data/maps/PetalburgWoods/scripts.pory"
	.string "You with that funny outfit,\n"
# 317 "data/maps/PetalburgWoods/scripts.pory"
	.string "almost like a hero cape!\p"
# 318 "data/maps/PetalburgWoods/scripts.pory"
	.string "HELP ME! You must be a TRAINER,\n"
# 319 "data/maps/PetalburgWoods/scripts.pory"
	.string "there's no way a normal person\l"
# 320 "data/maps/PetalburgWoods/scripts.pory"
	.string "would wear clothes like that!\p"
# 321 "data/maps/PetalburgWoods/scripts.pory"
	.string "Give me a hand here!$"
# 322 "data/maps/PetalburgWoods/scripts.pory"

# 323 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_NoOneCrossesTeamAqua:
# 324 "data/maps/PetalburgWoods/scripts.pory"
	.string "FEMALE GRUNT: Hunh? What do you think\n"
# 325 "data/maps/PetalburgWoods/scripts.pory"
	.string "you're doing? Trying to play hero?\p"
# 326 "data/maps/PetalburgWoods/scripts.pory"
	.string "MALE GRUNT: And what's with that\n"
# 327 "data/maps/PetalburgWoods/scripts.pory"
	.string "ridiculous outfit you're draped in?\l"
# 328 "data/maps/PetalburgWoods/scripts.pory"
	.string "Some kind of costume party reject?\p"
# 329 "data/maps/PetalburgWoods/scripts.pory"
	.string "FEMALE GRUNT: Those colors! That cape!\n"
# 330 "data/maps/PetalburgWoods/scripts.pory"
	.string "Did you get dressed in the dark?\p"
# 331 "data/maps/PetalburgWoods/scripts.pory"
	.string "MALE GRUNT: No one who crosses TEAM\n"
# 332 "data/maps/PetalburgWoods/scripts.pory"
	.string "AQUA gets any mercy, fashion disaster!\p"
# 333 "data/maps/PetalburgWoods/scripts.pory"
	.string "BOTH: Come on and battle us!$"
# 334 "data/maps/PetalburgWoods/scripts.pory"

# 335 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_YoureKiddingMe:
# 336 "data/maps/PetalburgWoods/scripts.pory"
	.string "BOTH: You're kidding us! You're tough!$"
# 337 "data/maps/PetalburgWoods/scripts.pory"

# 338 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_YouveGotSomeNerve:
# 339 "data/maps/PetalburgWoods/scripts.pory"
	.string "MALE GRUNT: Grrr… You've got some\n"
# 340 "data/maps/PetalburgWoods/scripts.pory"
	.string "nerve meddling with TEAM AQUA!\p"
# 341 "data/maps/PetalburgWoods/scripts.pory"
	.string "FEMALE GRUNT: Don't think this is over!\n"
# 342 "data/maps/PetalburgWoods/scripts.pory"
	.string "We have business in RUSTBORO too.\p"
# 343 "data/maps/PetalburgWoods/scripts.pory"
	.string "MALE GRUNT: Consider this a temporary\n"
# 344 "data/maps/PetalburgWoods/scripts.pory"
	.string "retreat. We'll meet again!\p"
# 345 "data/maps/PetalburgWoods/scripts.pory"
	.string "FEMALE GRUNT: And maybe next time,\n"
# 346 "data/maps/PetalburgWoods/scripts.pory"
	.string "wear something less embarrassing!$"
# 347 "data/maps/PetalburgWoods/scripts.pory"

# 348 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_ThatWasAwfullyClose:
# 349 "data/maps/PetalburgWoods/scripts.pory"
	.string "Whew…\n"
# 350 "data/maps/PetalburgWoods/scripts.pory"
	.string "That was awfully close!\p"
# 351 "data/maps/PetalburgWoods/scripts.pory"
	.string "Thanks to you, they didn't rob me of\n"
# 352 "data/maps/PetalburgWoods/scripts.pory"
	.string "these important papers.\p"
# 353 "data/maps/PetalburgWoods/scripts.pory"
	.string "I know, I'll give you this ABILITY\n"
# 354 "data/maps/PetalburgWoods/scripts.pory"
	.string "PATCH as my thanks!\p"
# 355 "data/maps/PetalburgWoods/scripts.pory"
	.string "It can change a POKÉMON's ability\n"
# 356 "data/maps/PetalburgWoods/scripts.pory"
	.string "to its rare hidden ability!$"
# 357 "data/maps/PetalburgWoods/scripts.pory"

# 358 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_TeamAquaAfterSomethingInRustboro:
# 359 "data/maps/PetalburgWoods/scripts.pory"
	.string "Didn't those TEAM AQUA thugs say\n"
# 360 "data/maps/PetalburgWoods/scripts.pory"
	.string "they were after something in\l"
# 361 "data/maps/PetalburgWoods/scripts.pory"
	.string "RUSTBORO, too?$"
# 362 "data/maps/PetalburgWoods/scripts.pory"

# 363 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_ICantBeWastingTime:
# 364 "data/maps/PetalburgWoods/scripts.pory"
	.string "Uh-oh! It's a crisis!\n"
# 365 "data/maps/PetalburgWoods/scripts.pory"
	.string "I can't be wasting time!$"
# 366 "data/maps/PetalburgWoods/scripts.pory"

# 367 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_YoureLoadedWithItems:
# 368 "data/maps/PetalburgWoods/scripts.pory"
	.string "You're loaded with items.\n"
# 369 "data/maps/PetalburgWoods/scripts.pory"
	.string "I can't give you this ABILITY PATCH.$"
# 370 "data/maps/PetalburgWoods/scripts.pory"

# 371 "data/maps/PetalburgWoods/scripts.pory"
@ Other NPCs
# 372 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_BoyWantsHeadbutt::
# 373 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_BoyWantsHeadbutt, MSGBOX_NPC
# 374 "data/maps/PetalburgWoods/scripts.pory"
	end
# 375 "data/maps/PetalburgWoods/scripts.pory"

# 376 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_Boy1::
# 377 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_StayOutOfTallGrass, MSGBOX_NPC
# 378 "data/maps/PetalburgWoods/scripts.pory"
	end
# 379 "data/maps/PetalburgWoods/scripts.pory"

# 380 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_Boy2::
# 381 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_HiddenItemsExplanation, MSGBOX_NPC
# 382 "data/maps/PetalburgWoods/scripts.pory"
	end
# 383 "data/maps/PetalburgWoods/scripts.pory"

# 384 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_Girl::
# 385 "data/maps/PetalburgWoods/scripts.pory"
	lock
# 386 "data/maps/PetalburgWoods/scripts.pory"
	faceplayer
# 387 "data/maps/PetalburgWoods/scripts.pory"
	goto_if_set FLAG_RECEIVED_MIRACLE_SEED, PetalburgWoods_EventScript_ExplainMiracleSeed
# 388 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_TryUsingThisItem, MSGBOX_DEFAULT
# 389 "data/maps/PetalburgWoods/scripts.pory"
	giveitem ITEM_MIRACLE_SEED
# 390 "data/maps/PetalburgWoods/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
# 391 "data/maps/PetalburgWoods/scripts.pory"
	setflag FLAG_RECEIVED_MIRACLE_SEED
# 392 "data/maps/PetalburgWoods/scripts.pory"
	release
# 393 "data/maps/PetalburgWoods/scripts.pory"
	end
# 394 "data/maps/PetalburgWoods/scripts.pory"

# 395 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_ExplainMiracleSeed::
# 396 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_MiracleSeedExplanation, MSGBOX_DEFAULT
# 397 "data/maps/PetalburgWoods/scripts.pory"
	release
# 398 "data/maps/PetalburgWoods/scripts.pory"
	end
# 399 "data/maps/PetalburgWoods/scripts.pory"

# 400 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_Sign1::
# 401 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_TrainerTipsExperience, MSGBOX_SIGN
# 402 "data/maps/PetalburgWoods/scripts.pory"
	end
# 403 "data/maps/PetalburgWoods/scripts.pory"

# 404 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_Sign2::
# 405 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_TrainerTipsPP, MSGBOX_SIGN
# 406 "data/maps/PetalburgWoods/scripts.pory"
	end
# 407 "data/maps/PetalburgWoods/scripts.pory"

# 408 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_Lyle::
# 409 "data/maps/PetalburgWoods/scripts.pory"
	trainerbattle_single TRAINER_LYLE, PetalburgWoods_Text_GoBugPokemonTeam, PetalburgWoods_Text_ICouldntWin
# 410 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_ImOutOfPokeBalls, MSGBOX_AUTOCLOSE
# 411 "data/maps/PetalburgWoods/scripts.pory"
	end
# 412 "data/maps/PetalburgWoods/scripts.pory"

# 413 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_Lyla::
# 414 "data/maps/PetalburgWoods/scripts.pory"
	lock
# 415 "data/maps/PetalburgWoods/scripts.pory"
	faceplayer
# 416 "data/maps/PetalburgWoods/scripts.pory"
	trainerbattle_single TRAINER_LYLA, PetalburgWoods_Text_GoBugPokemonTeamF, PetalburgWoods_Text_ICouldntWinF
# 417 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_ImOutOfPokeBallsF, MSGBOX_AUTOCLOSE
# 418 "data/maps/PetalburgWoods/scripts.pory"
	release
# 419 "data/maps/PetalburgWoods/scripts.pory"
	end
# 420 "data/maps/PetalburgWoods/scripts.pory"

# 421 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_James::
# 422 "data/maps/PetalburgWoods/scripts.pory"
	trainerbattle_single TRAINER_JAMES_1, PetalburgWoods_Text_InstantlyPopularWithBugPokemon, PetalburgWoods_Text_CantBePopularIfILose
# 423 "data/maps/PetalburgWoods/scripts.pory"
	specialvar VAR_RESULT, ShouldTryRematchBattle
# 424 "data/maps/PetalburgWoods/scripts.pory"
	goto_if_eq VAR_RESULT, TRUE, PetalburgWoods_EventScript_JamesRematch
# 425 "data/maps/PetalburgWoods/scripts.pory"
	setvar VAR_0x8004, TRAINER_JAMES_1
# 426 "data/maps/PetalburgWoods/scripts.pory"
	specialvar VAR_RESULT, IsTrainerRegistered
# 427 "data/maps/PetalburgWoods/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, PetalburgWoods_EventScript_TryRegisterJames2
# 428 "data/maps/PetalburgWoods/scripts.pory"
	lock
# 429 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_PeopleRespectYou, MSGBOX_DEFAULT
# 430 "data/maps/PetalburgWoods/scripts.pory"
	release
# 431 "data/maps/PetalburgWoods/scripts.pory"
	end
# 432 "data/maps/PetalburgWoods/scripts.pory"

# 433 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_TryRegisterJames::
# 434 "data/maps/PetalburgWoods/scripts.pory"
	special PlayerFaceTrainerAfterBattle
# 435 "data/maps/PetalburgWoods/scripts.pory"
	waitmovement 0
# 436 "data/maps/PetalburgWoods/scripts.pory"
	goto_if_set FLAG_HAS_MATCH_CALL, PetalburgWoods_EventScript_RegisterJames
# 437 "data/maps/PetalburgWoods/scripts.pory"
	lock
# 438 "data/maps/PetalburgWoods/scripts.pory"
	release
# 439 "data/maps/PetalburgWoods/scripts.pory"
	end
# 440 "data/maps/PetalburgWoods/scripts.pory"

# 441 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_RegisterJames::
# 442 "data/maps/PetalburgWoods/scripts.pory"
	lock
# 443 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_IWantRematch1, MSGBOX_DEFAULT
# 444 "data/maps/PetalburgWoods/scripts.pory"
	register_matchcall TRAINER_JAMES_1
# 445 "data/maps/PetalburgWoods/scripts.pory"
	release
# 446 "data/maps/PetalburgWoods/scripts.pory"
	end
# 447 "data/maps/PetalburgWoods/scripts.pory"

# 448 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_TryRegisterJames2::
# 449 "data/maps/PetalburgWoods/scripts.pory"
	goto_if_set FLAG_HAS_MATCH_CALL, PetalburgWoods_EventScript_RegisterJames2
# 450 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_PeopleRespectYou, MSGBOX_DEFAULT
# 451 "data/maps/PetalburgWoods/scripts.pory"
	release
# 452 "data/maps/PetalburgWoods/scripts.pory"
	end
# 453 "data/maps/PetalburgWoods/scripts.pory"

# 454 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_RegisterJames2::
# 455 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_IWantRematch2, MSGBOX_DEFAULT
# 456 "data/maps/PetalburgWoods/scripts.pory"
	register_matchcall TRAINER_JAMES_1
# 457 "data/maps/PetalburgWoods/scripts.pory"
	release
# 458 "data/maps/PetalburgWoods/scripts.pory"
	end
# 459 "data/maps/PetalburgWoods/scripts.pory"

# 460 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_JamesRematch::
# 461 "data/maps/PetalburgWoods/scripts.pory"
	trainerbattle_rematch TRAINER_JAMES_1, PetalburgWoods_Text_MyPokemonHaveGrown, PetalburgWoods_Text_CantBePopularIfLose
# 462 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_IveBeenTrainingHard, MSGBOX_AUTOCLOSE
# 463 "data/maps/PetalburgWoods/scripts.pory"
	end
# 464 "data/maps/PetalburgWoods/scripts.pory"

# 465 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_WURMPLEpw::
# 466 "data/maps/PetalburgWoods/scripts.pory"
	lock
# 467 "data/maps/PetalburgWoods/scripts.pory"
	faceplayer
# 468 "data/maps/PetalburgWoods/scripts.pory"
	playmoncry SPECIES_WURMPLE, CRY_MODE_NORMAL
# 469 "data/maps/PetalburgWoods/scripts.pory"
	waitmoncry
# 470 "data/maps/PetalburgWoods/scripts.pory"
	release
# 471 "data/maps/PetalburgWoods/scripts.pory"
	end
# 472 "data/maps/PetalburgWoods/scripts.pory"

# 473 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_SHROOMISHpw::
# 474 "data/maps/PetalburgWoods/scripts.pory"
	lock
# 475 "data/maps/PetalburgWoods/scripts.pory"
	faceplayer
# 476 "data/maps/PetalburgWoods/scripts.pory"
	playmoncry SPECIES_SHROOMISH, CRY_MODE_NORMAL
# 477 "data/maps/PetalburgWoods/scripts.pory"
	waitmoncry
# 478 "data/maps/PetalburgWoods/scripts.pory"
	release
# 479 "data/maps/PetalburgWoods/scripts.pory"
	end
# 480 "data/maps/PetalburgWoods/scripts.pory"

# 481 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_EventScript_Herbalistpw::
# 482 "data/maps/PetalburgWoods/scripts.pory"
	lock
# 483 "data/maps/PetalburgWoods/scripts.pory"
	faceplayer
# 484 "data/maps/PetalburgWoods/scripts.pory"
	msgbox PetalburgWoods_Text_Herbalistpw, MSGBOX_AUTOCLOSE
# 485 "data/maps/PetalburgWoods/scripts.pory"
	release
# 486 "data/maps/PetalburgWoods/scripts.pory"
	end
# 487 "data/maps/PetalburgWoods/scripts.pory"
@ Remaining text strings (keeping your custom ones)
# 488 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_GoBugPokemonTeam:
# 489 "data/maps/PetalburgWoods/scripts.pory"
	.string "I caught a whole bunch of POKÉMON!\p"
# 490 "data/maps/PetalburgWoods/scripts.pory"
	.string "Go, go, go!\n"
# 491 "data/maps/PetalburgWoods/scripts.pory"
	.string "My BUG POKÉMON team!$"
# 492 "data/maps/PetalburgWoods/scripts.pory"

# 493 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_ICouldntWin:
# 494 "data/maps/PetalburgWoods/scripts.pory"
	.string "I have all these POKÉMON,\n"
# 495 "data/maps/PetalburgWoods/scripts.pory"
	.string "but I couldn't win…$"
# 496 "data/maps/PetalburgWoods/scripts.pory"

# 497 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_ImOutOfPokeBalls:
# 498 "data/maps/PetalburgWoods/scripts.pory"
	.string "I came here last night searching for\n"
# 499 "data/maps/PetalburgWoods/scripts.pory"
	.string "rare POKÉMON…\p"
# 500 "data/maps/PetalburgWoods/scripts.pory"
	.string "And I found something terrifying -\n"
# 501 "data/maps/PetalburgWoods/scripts.pory"
	.string "a black, masked insect POKÉMON.\p"
# 502 "data/maps/PetalburgWoods/scripts.pory"
	.string "It looked like some twisted form of\n"
# 503 "data/maps/PetalburgWoods/scripts.pory"
	.string "beetle… so unsettling…\p"
# 504 "data/maps/PetalburgWoods/scripts.pory"
	.string "I threw all my POKÉ BALLS at it,\n"
# 505 "data/maps/PetalburgWoods/scripts.pory"
	.string "but none could contain it.$"
# 506 "data/maps/PetalburgWoods/scripts.pory"

# 507 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_GoBugPokemonTeamF:
# 508 "data/maps/PetalburgWoods/scripts.pory"
	.string "I’ve been gathering BUG POKéMON\n"
# 509 "data/maps/PetalburgWoods/scripts.pory"
	.string "all morning!\p"
# 510 "data/maps/PetalburgWoods/scripts.pory"
	.string "Come on, let’s see what my tiny\n"
# 511 "data/maps/PetalburgWoods/scripts.pory"
	.string "partners can do!$"
# 512 "data/maps/PetalburgWoods/scripts.pory"

# 513 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_ICouldntWinF:
# 514 "data/maps/PetalburgWoods/scripts.pory"
	.string "Aww… even with all my BUG POKéMON,\n"
# 515 "data/maps/PetalburgWoods/scripts.pory"
	.string "I still couldn't win.$"
# 516 "data/maps/PetalburgWoods/scripts.pory"

# 517 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_ImOutOfPokeBallsF:
# 518 "data/maps/PetalburgWoods/scripts.pory"
	.string "I came here looking for mushrooms\n"
# 519 "data/maps/PetalburgWoods/scripts.pory"
	.string "for my BUG POKéMON!\p"
# 520 "data/maps/PetalburgWoods/scripts.pory"
	.string "This forest is so peaceful during the\n"
# 521 "data/maps/PetalburgWoods/scripts.pory"
	.string "day… almost magical.\p"
# 522 "data/maps/PetalburgWoods/scripts.pory"
	.string "But at night?\n"
# 523 "data/maps/PetalburgWoods/scripts.pory"
	.string "I get this strange chill, like the whole\l"
# 524 "data/maps/PetalburgWoods/scripts.pory"
	.string "woods are holding their breath.\p"
# 525 "data/maps/PetalburgWoods/scripts.pory"
	.string "If you're exploring after sunset,\n"
# 526 "data/maps/PetalburgWoods/scripts.pory"
	.string "be careful, okay?$"
# 527 "data/maps/PetalburgWoods/scripts.pory"

# 528 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_InstantlyPopularWithBugPokemon:
# 529 "data/maps/PetalburgWoods/scripts.pory"
	.string "If you take BUG POKÉMON to school,\n"
# 530 "data/maps/PetalburgWoods/scripts.pory"
	.string "you get to be instantly popular!$"
# 531 "data/maps/PetalburgWoods/scripts.pory"

# 532 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_CantBePopularIfILose:
# 533 "data/maps/PetalburgWoods/scripts.pory"
	.string "I can't be popular if I lose.$"
# 534 "data/maps/PetalburgWoods/scripts.pory"

# 535 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_PeopleRespectYou:
# 536 "data/maps/PetalburgWoods/scripts.pory"
	.string "This forest has grown more sinister\n"
# 537 "data/maps/PetalburgWoods/scripts.pory"
	.string "in recent years…\p"
# 538 "data/maps/PetalburgWoods/scripts.pory"
	.string "Lately, people tell frightening\n"
# 539 "data/maps/PetalburgWoods/scripts.pory"
	.string "legends about shadowy figures\l"
# 540 "data/maps/PetalburgWoods/scripts.pory"
	.string "moving between the trees at night.\p"
# 541 "data/maps/PetalburgWoods/scripts.pory"
	.string "Some say the woods themselves\n"
# 542 "data/maps/PetalburgWoods/scripts.pory"
	.string "have become alive and watchful…$"
# 543 "data/maps/PetalburgWoods/scripts.pory"

# 544 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_IWantRematch1:
# 545 "data/maps/PetalburgWoods/scripts.pory"
	.string "I want a rematch when my BUG\n"
# 546 "data/maps/PetalburgWoods/scripts.pory"
	.string "POKÉMON grow up!\p"
# 547 "data/maps/PetalburgWoods/scripts.pory"
	.string "I'm registering you in my POKÉNAV!$"
# 548 "data/maps/PetalburgWoods/scripts.pory"

# 549 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_IWantRematch2:
# 550 "data/maps/PetalburgWoods/scripts.pory"
	.string "I want a rematch when my BUG \n"
# 551 "data/maps/PetalburgWoods/scripts.pory"
	.string "POKÉMON grow up!\p"
# 552 "data/maps/PetalburgWoods/scripts.pory"
	.string "I'm registering you in my POKÉNAV!$"
# 553 "data/maps/PetalburgWoods/scripts.pory"

# 554 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_MyPokemonHaveGrown:
# 555 "data/maps/PetalburgWoods/scripts.pory"
	.string "My BUG POKÉMON have grown.\n"
# 556 "data/maps/PetalburgWoods/scripts.pory"
	.string "I'll be popular again.$"
# 557 "data/maps/PetalburgWoods/scripts.pory"

# 558 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_CantBePopularIfLose:
# 559 "data/maps/PetalburgWoods/scripts.pory"
	.string "I can't be popular if I lose.$"
# 560 "data/maps/PetalburgWoods/scripts.pory"

# 561 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_IveBeenTrainingHard:
# 562 "data/maps/PetalburgWoods/scripts.pory"
	.string "You get to be popular if you have\n"
# 563 "data/maps/PetalburgWoods/scripts.pory"
	.string "strong POKÉMON, right?\l"
# 564 "data/maps/PetalburgWoods/scripts.pory"
	.string "So, I've been training hard.$"
# 565 "data/maps/PetalburgWoods/scripts.pory"

# 566 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_StayOutOfTallGrass:
# 567 "data/maps/PetalburgWoods/scripts.pory"
	.string "You know, despite all the rumors\n"
# 568 "data/maps/PetalburgWoods/scripts.pory"
	.string "and legends about this forest…\p"
# 569 "data/maps/PetalburgWoods/scripts.pory"
	.string "I'm not afraid to come here.\n"
# 570 "data/maps/PetalburgWoods/scripts.pory"
	.string "In fact, I find it peaceful.\p"
# 571 "data/maps/PetalburgWoods/scripts.pory"
	.string "Being surrounded by nature like this…\n"
# 572 "data/maps/PetalburgWoods/scripts.pory"
	.string "It's so relaxing and tranquil.\p"
# 573 "data/maps/PetalburgWoods/scripts.pory"
	.string "Isn't it wonderful?$"
# 574 "data/maps/PetalburgWoods/scripts.pory"

# 575 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_HiddenItemsExplanation:
# 576 "data/maps/PetalburgWoods/scripts.pory"
	.string "Sometimes, there are things on the\n"
# 577 "data/maps/PetalburgWoods/scripts.pory"
	.string "ground even if you can't see them.\p"
# 578 "data/maps/PetalburgWoods/scripts.pory"
	.string "That's why I always check where I'm\n"
# 579 "data/maps/PetalburgWoods/scripts.pory"
	.string "walking.$"
# 580 "data/maps/PetalburgWoods/scripts.pory"

# 581 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_TryUsingThisItem:
# 582 "data/maps/PetalburgWoods/scripts.pory"
	.string "Oh, neat!\n"
# 583 "data/maps/PetalburgWoods/scripts.pory"
	.string "That's the BADGE from RUSTBORO GYM!\p"
# 584 "data/maps/PetalburgWoods/scripts.pory"
	.string "You must be a TRAINER.\n"
# 585 "data/maps/PetalburgWoods/scripts.pory"
	.string "You should try using this item.$"
# 586 "data/maps/PetalburgWoods/scripts.pory"

# 587 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_MiracleSeedExplanation:
# 588 "data/maps/PetalburgWoods/scripts.pory"
	.string "It's a MIRACLE SEED.\n"
# 589 "data/maps/PetalburgWoods/scripts.pory"
	.string "If a POKÉMON holds that item, its\l"
# 590 "data/maps/PetalburgWoods/scripts.pory"
	.string "GRASS-type moves become stronger.\p"
# 591 "data/maps/PetalburgWoods/scripts.pory"
	.string "Besides MIRACLE SEED, I think there are\n"
# 592 "data/maps/PetalburgWoods/scripts.pory"
	.string "other convenient items for POKÉMON\l"
# 593 "data/maps/PetalburgWoods/scripts.pory"
	.string "to hold.$"
# 594 "data/maps/PetalburgWoods/scripts.pory"

# 595 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_TrainerTipsExperience:
# 596 "data/maps/PetalburgWoods/scripts.pory"
	.string "FOREST WHISPERS\p"
# 597 "data/maps/PetalburgWoods/scripts.pory"
	.string "They say this forest remembers every\n"
# 598 "data/maps/PetalburgWoods/scripts.pory"
	.string "step taken within its shadowy depths.\p"
# 599 "data/maps/PetalburgWoods/scripts.pory"
	.string "Ancient tales speak of travelers who\n"
# 600 "data/maps/PetalburgWoods/scripts.pory"
	.string "entered and emerged changed…\p"
# 601 "data/maps/PetalburgWoods/scripts.pory"
	.string "Their eyes holding secrets the woods\n"
# 602 "data/maps/PetalburgWoods/scripts.pory"
	.string "had whispered to them in the dark.$"
# 603 "data/maps/PetalburgWoods/scripts.pory"

# 604 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_TrainerTipsPP:
# 605 "data/maps/PetalburgWoods/scripts.pory"
	.string "FOREST LEGENDS\p"
# 606 "data/maps/PetalburgWoods/scripts.pory"
	.string "Local folklore tells of a time when\n"
# 607 "data/maps/PetalburgWoods/scripts.pory"
	.string "the trees themselves would move,\p"
# 608 "data/maps/PetalburgWoods/scripts.pory"
	.string "shifting paths to lead wanderers\n"
# 609 "data/maps/PetalburgWoods/scripts.pory"
	.string "toward hidden clearings where rare\l"
# 610 "data/maps/PetalburgWoods/scripts.pory"
	.string "POKÉMON gathered under moonlight.\p"
# 611 "data/maps/PetalburgWoods/scripts.pory"
	.string "Some say the forest still tests those\n"
# 612 "data/maps/PetalburgWoods/scripts.pory"
	.string "who walk its tangled paths today.$"
# 613 "data/maps/PetalburgWoods/scripts.pory"

# 614 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_Herbalistpw:
# 615 "data/maps/PetalburgWoods/scripts.pory"
	.string "I come here often to look for herbs\n"
# 616 "data/maps/PetalburgWoods/scripts.pory"
	.string "and ingredients for potions.\p"
# 617 "data/maps/PetalburgWoods/scripts.pory"
	.string "I feel safe in this forest… except\n"
# 618 "data/maps/PetalburgWoods/scripts.pory"
	.string "at night.\p"
# 619 "data/maps/PetalburgWoods/scripts.pory"
	.string "Strange POKéMON appear then, and\n"
# 620 "data/maps/PetalburgWoods/scripts.pory"
	.string "some of them are really scary…$"
# 621 "data/maps/PetalburgWoods/scripts.pory"

# 622 "data/maps/PetalburgWoods/scripts.pory"
PetalburgWoods_Text_BoyWantsHeadbutt:
# 623 "data/maps/PetalburgWoods/scripts.pory"
	.string "I really wish I had a POKéMON that\n"
# 624 "data/maps/PetalburgWoods/scripts.pory"
	.string "knows HEADBUTT... My WURMPLE just\l"
# 625 "data/maps/PetalburgWoods/scripts.pory"
	.string "can't learn it no matter what!\p"
# 626 "data/maps/PetalburgWoods/scripts.pory"
	.string "They say some huge trees around HOENN\n"
# 627 "data/maps/PetalburgWoods/scripts.pory"
	.string "hide rare POKéMON inside them.\p"
# 628 "data/maps/PetalburgWoods/scripts.pory"
	.string "And if you shake them hard enough with\n"
# 629 "data/maps/PetalburgWoods/scripts.pory"
	.string "HEADBUTT, items might fall out too!\p"
# 630 "data/maps/PetalburgWoods/scripts.pory"
	.string "Isn't that amazing? I need to find a\n"
# 631 "data/maps/PetalburgWoods/scripts.pory"
	.string "POKÉMON that knows that move…$"
