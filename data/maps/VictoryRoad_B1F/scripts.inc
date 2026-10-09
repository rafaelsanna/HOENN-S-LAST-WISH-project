# 1 "data/maps/VictoryRoad_B1F/scripts.pory"

# 2 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_MapScripts::
# 3 "data/maps/VictoryRoad_B1F/scripts.pory"
	.byte 0
# 4 "data/maps/VictoryRoad_B1F/scripts.pory"

# 5 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_Samuel::
# 6 "data/maps/VictoryRoad_B1F/scripts.pory"
	trainerbattle_single TRAINER_SAMUEL, VictoryRoad_B1F_Text_SamuelIntro, VictoryRoad_B1F_Text_SamuelDefeat
# 7 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_SamuelPostBattle, MSGBOX_AUTOCLOSE
# 8 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 9 "data/maps/VictoryRoad_B1F/scripts.pory"

# 10 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_Shannon::
# 11 "data/maps/VictoryRoad_B1F/scripts.pory"
	trainerbattle_single TRAINER_SHANNON, VictoryRoad_B1F_Text_ShannonIntro, VictoryRoad_B1F_Text_ShannonDefeat
# 12 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_ShannonPostBattle, MSGBOX_AUTOCLOSE
# 13 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 14 "data/maps/VictoryRoad_B1F/scripts.pory"

# 15 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_Michelle::
# 16 "data/maps/VictoryRoad_B1F/scripts.pory"
	trainerbattle_single TRAINER_MICHELLE, VictoryRoad_B1F_Text_MichelleIntro, VictoryRoad_B1F_Text_MichelleDefeat
# 17 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_MichellePostBattle, MSGBOX_AUTOCLOSE
# 18 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 19 "data/maps/VictoryRoad_B1F/scripts.pory"

# 20 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_Mitchell::
# 21 "data/maps/VictoryRoad_B1F/scripts.pory"
	trainerbattle_single TRAINER_MITCHELL, VictoryRoad_B1F_Text_MitchellIntro, VictoryRoad_B1F_Text_MitchellDefeat
# 22 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_MitchellPostBattle, MSGBOX_AUTOCLOSE
# 23 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 24 "data/maps/VictoryRoad_B1F/scripts.pory"

# 25 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_Halle::
# 26 "data/maps/VictoryRoad_B1F/scripts.pory"
	trainerbattle_single TRAINER_HALLE, VictoryRoad_B1F_Text_HalleIntro, VictoryRoad_B1F_Text_HalleDefeat
# 27 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_HallePostBattle, MSGBOX_AUTOCLOSE
# 28 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 29 "data/maps/VictoryRoad_B1F/scripts.pory"

# 30 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_IcePunch::
# 31 "data/maps/VictoryRoad_B1F/scripts.pory"
	lock
# 32 "data/maps/VictoryRoad_B1F/scripts.pory"
	faceplayer
# 33 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto_if_set FLAG_MAMORU_ICE_PUNCH_REWARD, VictoryRoad_B1F_EventScript_MamoruAfterReward
# 34 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto_if_defeated TRAINER_MAMORU, VictoryRoad_B1F_EventScript_MamoruReward
# 35 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_MamoruChallenge, MSGBOX_YESNO
# 36 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto_if_eq VAR_RESULT, NO, VictoryRoad_B1F_EventScript_MamoruDecline
# 37 "data/maps/VictoryRoad_B1F/scripts.pory"
	closemessage
# 38 "data/maps/VictoryRoad_B1F/scripts.pory"
	trainerbattle_no_intro TRAINER_MAMORU, VictoryRoad_B1F_Text_MamoruDefeat
# 39 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto VictoryRoad_B1F_EventScript_MamoruReward
# 40 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 41 "data/maps/VictoryRoad_B1F/scripts.pory"

# 42 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_ThunderPunch::
# 43 "data/maps/VictoryRoad_B1F/scripts.pory"
	lock
# 44 "data/maps/VictoryRoad_B1F/scripts.pory"
	faceplayer
# 45 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto_if_set FLAG_RYO_THUNDER_PUNCH_REWARD, VictoryRoad_B1F_EventScript_RyoAfterReward
# 46 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto_if_defeated TRAINER_RYO, VictoryRoad_B1F_EventScript_RyoReward
# 47 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_RyoChallenge, MSGBOX_YESNO
# 48 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto_if_eq VAR_RESULT, NO, VictoryRoad_B1F_EventScript_RyoDecline
# 49 "data/maps/VictoryRoad_B1F/scripts.pory"
	closemessage
# 50 "data/maps/VictoryRoad_B1F/scripts.pory"
	trainerbattle_no_intro TRAINER_RYO, VictoryRoad_B1F_Text_RyoDefeat
# 51 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto VictoryRoad_B1F_EventScript_RyoReward
# 52 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 53 "data/maps/VictoryRoad_B1F/scripts.pory"

# 54 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_FirePunch::
# 55 "data/maps/VictoryRoad_B1F/scripts.pory"
	lock
# 56 "data/maps/VictoryRoad_B1F/scripts.pory"
	faceplayer
# 57 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto_if_set FLAG_IPPO_FIRE_PUNCH_REWARD, VictoryRoad_B1F_EventScript_IppoAfterReward
# 58 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto_if_defeated TRAINER_IPPO, VictoryRoad_B1F_EventScript_IppoReward
# 59 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_IppoChallenge, MSGBOX_YESNO
# 60 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto_if_eq VAR_RESULT, NO, VictoryRoad_B1F_EventScript_IppoDecline
# 61 "data/maps/VictoryRoad_B1F/scripts.pory"
	closemessage
# 62 "data/maps/VictoryRoad_B1F/scripts.pory"
	trainerbattle_no_intro TRAINER_IPPO, VictoryRoad_B1F_Text_IppoDefeat
# 63 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto VictoryRoad_B1F_EventScript_IppoReward
# 64 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 65 "data/maps/VictoryRoad_B1F/scripts.pory"

# 66 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_IppoReward::
# 67 "data/maps/VictoryRoad_B1F/scripts.pory"
	checkitemspace ITEM_TM_FIRE_PUNCH, 1
# 68 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, VictoryRoad_B1F_EventScript_PunchDojoBagFull
# 69 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_IppoReward, MSGBOX_DEFAULT
# 70 "data/maps/VictoryRoad_B1F/scripts.pory"
	giveitem ITEM_TM_FIRE_PUNCH
# 71 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, VictoryRoad_B1F_EventScript_PunchDojoBagFull
# 72 "data/maps/VictoryRoad_B1F/scripts.pory"
	setflag FLAG_IPPO_FIRE_PUNCH_REWARD
# 73 "data/maps/VictoryRoad_B1F/scripts.pory"
	release
# 74 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 75 "data/maps/VictoryRoad_B1F/scripts.pory"

# 76 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_MamoruReward::
# 77 "data/maps/VictoryRoad_B1F/scripts.pory"
	checkitemspace ITEM_TM_ICE_PUNCH, 1
# 78 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, VictoryRoad_B1F_EventScript_PunchDojoBagFull
# 79 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_MamoruReward, MSGBOX_DEFAULT
# 80 "data/maps/VictoryRoad_B1F/scripts.pory"
	giveitem ITEM_TM_ICE_PUNCH
# 81 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, VictoryRoad_B1F_EventScript_PunchDojoBagFull
# 82 "data/maps/VictoryRoad_B1F/scripts.pory"
	setflag FLAG_MAMORU_ICE_PUNCH_REWARD
# 83 "data/maps/VictoryRoad_B1F/scripts.pory"
	release
# 84 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 85 "data/maps/VictoryRoad_B1F/scripts.pory"

# 86 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_RyoReward::
# 87 "data/maps/VictoryRoad_B1F/scripts.pory"
	checkitemspace ITEM_TM_THUNDER_PUNCH, 1
# 88 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, VictoryRoad_B1F_EventScript_PunchDojoBagFull
# 89 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_RyoReward, MSGBOX_DEFAULT
# 90 "data/maps/VictoryRoad_B1F/scripts.pory"
	giveitem ITEM_TM_THUNDER_PUNCH
# 91 "data/maps/VictoryRoad_B1F/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, VictoryRoad_B1F_EventScript_PunchDojoBagFull
# 92 "data/maps/VictoryRoad_B1F/scripts.pory"
	setflag FLAG_RYO_THUNDER_PUNCH_REWARD
# 93 "data/maps/VictoryRoad_B1F/scripts.pory"
	release
# 94 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 95 "data/maps/VictoryRoad_B1F/scripts.pory"

# 96 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_IppoDecline::
# 97 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_IppoDecline, MSGBOX_DEFAULT
# 98 "data/maps/VictoryRoad_B1F/scripts.pory"
	release
# 99 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 100 "data/maps/VictoryRoad_B1F/scripts.pory"

# 101 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_MamoruDecline::
# 102 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_MamoruDecline, MSGBOX_DEFAULT
# 103 "data/maps/VictoryRoad_B1F/scripts.pory"
	release
# 104 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 105 "data/maps/VictoryRoad_B1F/scripts.pory"

# 106 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_RyoDecline::
# 107 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_RyoDecline, MSGBOX_DEFAULT
# 108 "data/maps/VictoryRoad_B1F/scripts.pory"
	release
# 109 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 110 "data/maps/VictoryRoad_B1F/scripts.pory"

# 111 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_IppoAfterReward::
# 112 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_IppoAfterReward, MSGBOX_DEFAULT
# 113 "data/maps/VictoryRoad_B1F/scripts.pory"
	release
# 114 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 115 "data/maps/VictoryRoad_B1F/scripts.pory"

# 116 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_MamoruAfterReward::
# 117 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_MamoruAfterReward, MSGBOX_DEFAULT
# 118 "data/maps/VictoryRoad_B1F/scripts.pory"
	release
# 119 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 120 "data/maps/VictoryRoad_B1F/scripts.pory"

# 121 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_RyoAfterReward::
# 122 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_RyoAfterReward, MSGBOX_DEFAULT
# 123 "data/maps/VictoryRoad_B1F/scripts.pory"
	release
# 124 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 125 "data/maps/VictoryRoad_B1F/scripts.pory"

# 126 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_EventScript_PunchDojoBagFull::
# 127 "data/maps/VictoryRoad_B1F/scripts.pory"
	msgbox VictoryRoad_B1F_Text_PunchDojoBagFull, MSGBOX_DEFAULT
# 128 "data/maps/VictoryRoad_B1F/scripts.pory"
	release
# 129 "data/maps/VictoryRoad_B1F/scripts.pory"
	end
# 130 "data/maps/VictoryRoad_B1F/scripts.pory"

# 131 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_IppoChallenge:
# 132 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "IPPO: MAMORU, RYO, and I\n"
# 133 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "trained at the same dojo.\p"
# 134 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Our SENSEI taught us that a fist\n"
# 135 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "needs more than raw strength.\p"
# 136 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "I chose the path of FIRE.\n"
# 137 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "One clean strike, full of spirit!\p"
# 138 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Want to test your style against\n"
# 139 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "my FIRE PUNCH?$"
# 140 "data/maps/VictoryRoad_B1F/scripts.pory"

# 141 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_IppoDefeat:
# 142 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "IPPO: Your spirit burned\n"
# 143 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "brighter than mine!$"
# 144 "data/maps/VictoryRoad_B1F/scripts.pory"

# 145 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_IppoReward:
# 146 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "IPPO: You earned this.\n"
# 147 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Take the FIRE PUNCH TM.\p"
# 148 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Carry our dojo's fire with you.$"
# 149 "data/maps/VictoryRoad_B1F/scripts.pory"

# 150 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_IppoDecline:
# 151 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "IPPO: No shame in that.\n"
# 152 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "The flame can wait.$"
# 153 "data/maps/VictoryRoad_B1F/scripts.pory"

# 154 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_IppoAfterReward:
# 155 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "IPPO: Keep that fire alive.\n"
# 156 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Our SENSEI would approve.$"
# 157 "data/maps/VictoryRoad_B1F/scripts.pory"

# 158 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_MamoruChallenge:
# 159 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "MAMORU: IPPO, RYO, and I\n"
# 160 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "trained under the same SENSEI.\p"
# 161 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Where IPPO chose flame, I chose\n"
# 162 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "cold focus and perfect control.\p"
# 163 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "A steady fist can freeze even\n"
# 164 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "the fiercest momentum.\p"
# 165 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Will you face my ICE PUNCH?$"
# 166 "data/maps/VictoryRoad_B1F/scripts.pory"

# 167 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_MamoruDefeat:
# 168 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "MAMORU: Even ice can crack…\n"
# 169 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Well fought.$"
# 170 "data/maps/VictoryRoad_B1F/scripts.pory"

# 171 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_MamoruReward:
# 172 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "MAMORU: Your focus was sharper.\n"
# 173 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Take the ICE PUNCH TM.\p"
# 174 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Use it with discipline.$"
# 175 "data/maps/VictoryRoad_B1F/scripts.pory"

# 176 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_MamoruDecline:
# 177 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "MAMORU: A calm decision.\n"
# 178 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Perhaps another time.$"
# 179 "data/maps/VictoryRoad_B1F/scripts.pory"

# 180 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_MamoruAfterReward:
# 181 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "MAMORU: Strength without control\n"
# 182 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "is only wasted motion.$"
# 183 "data/maps/VictoryRoad_B1F/scripts.pory"

# 184 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_RyoChallenge:
# 185 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "RYO: IPPO, MAMORU, and I\n"
# 186 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "trained in the same dojo.\p"
# 187 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Our SENSEI made us choose a path.\n"
# 188 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Mine was speed, pure lightning.\p"
# 189 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "A punch should land before your\n"
# 190 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "opponent sees it coming.\p"
# 191 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Think you can handle my\n"
# 192 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "THUNDER PUNCH?$"
# 193 "data/maps/VictoryRoad_B1F/scripts.pory"

# 194 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_RyoDefeat:
# 195 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "RYO: You were faster than\n"
# 196 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "my lightning!$"
# 197 "data/maps/VictoryRoad_B1F/scripts.pory"

# 198 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_RyoReward:
# 199 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "RYO: That speed was no fluke.\n"
# 200 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Take the THUNDER PUNCH TM.\p"
# 201 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Strike before they can react.$"
# 202 "data/maps/VictoryRoad_B1F/scripts.pory"

# 203 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_RyoDecline:
# 204 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "RYO: Heh. Too fast for you?\n"
# 205 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "I'll be right here.$"
# 206 "data/maps/VictoryRoad_B1F/scripts.pory"

# 207 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_RyoAfterReward:
# 208 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "RYO: Don't hesitate.\n"
# 209 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Speed means committing first.$"
# 210 "data/maps/VictoryRoad_B1F/scripts.pory"

# 211 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_PunchDojoBagFull:
# 212 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Your BAG is full.\n"
# 213 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Make room and come back.$"
# 214 "data/maps/VictoryRoad_B1F/scripts.pory"

# 215 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_SamuelIntro:
# 216 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "The thought that I'm getting closer to\n"
# 217 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "the POKéMON LEAGUE…\p"
# 218 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "I'm getting stage fright…$"
# 219 "data/maps/VictoryRoad_B1F/scripts.pory"

# 220 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_SamuelDefeat:
# 221 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "I couldn't do a thing…$"
# 222 "data/maps/VictoryRoad_B1F/scripts.pory"

# 223 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_SamuelPostBattle:
# 224 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "The POKéMON LEAGUE became distant\n"
# 225 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "again… What a letdown…$"
# 226 "data/maps/VictoryRoad_B1F/scripts.pory"

# 227 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_ShannonIntro:
# 228 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "To win your way through the POKéMON\n"
# 229 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "LEAGUE, you need the trust of your\l"
# 230 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "POKéMON.$"
# 231 "data/maps/VictoryRoad_B1F/scripts.pory"

# 232 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_ShannonDefeat:
# 233 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Your relationship is based on\n"
# 234 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "solid trust.$"
# 235 "data/maps/VictoryRoad_B1F/scripts.pory"

# 236 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_ShannonPostBattle:
# 237 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "By being together all the time, trust\n"
# 238 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "grows between POKéMON and TRAINERS.$"
# 239 "data/maps/VictoryRoad_B1F/scripts.pory"

# 240 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_MichelleIntro:
# 241 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "This isn't the goal. It's only a place\n"
# 242 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "on the way to the POKéMON LEAGUE.$"
# 243 "data/maps/VictoryRoad_B1F/scripts.pory"

# 244 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_MichelleDefeat:
# 245 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "That's the way!$"
# 246 "data/maps/VictoryRoad_B1F/scripts.pory"

# 247 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_MichellePostBattle:
# 248 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "You'll do fine, for sure!\n"
# 249 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Your POKéMON are all eager to go!$"
# 250 "data/maps/VictoryRoad_B1F/scripts.pory"

# 251 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_MitchellIntro:
# 252 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "My POKéMON are cosmically\n"
# 253 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "awe inspiring!$"
# 254 "data/maps/VictoryRoad_B1F/scripts.pory"

# 255 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_MitchellDefeat:
# 256 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "I've never met anyone like you before.$"
# 257 "data/maps/VictoryRoad_B1F/scripts.pory"

# 258 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_MitchellPostBattle:
# 259 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Even outside of battle, I sense\n"
# 260 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "incredible power emanating from you\l"
# 261 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "and your POKéMON.$"
# 262 "data/maps/VictoryRoad_B1F/scripts.pory"

# 263 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_HalleIntro:
# 264 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Okay, no need to get your back up!\n"
# 265 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Relax, let's take it easy!$"
# 266 "data/maps/VictoryRoad_B1F/scripts.pory"

# 267 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_HalleDefeat:
# 268 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Whoa!\n"
# 269 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Wonderful!$"
# 270 "data/maps/VictoryRoad_B1F/scripts.pory"

# 271 "data/maps/VictoryRoad_B1F/scripts.pory"
VictoryRoad_B1F_Text_HallePostBattle:
# 272 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Sure, this is VICTORY ROAD.\p"
# 273 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "But it's not all that different from\n"
# 274 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "the path you've taken so far.\p"
# 275 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "Try to enjoy things the rest of\n"
# 276 "data/maps/VictoryRoad_B1F/scripts.pory"
	.string "the way!$"
