# 1 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 2 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NIGHTMARE_REALM_1_MapScripts::
# 3 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    map_script MAP_SCRIPT_ON_TRANSITION, NightmareRealm1_OnTransition
# 4 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .byte 0
# 5 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 6 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_OnTransition::
# 7 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setflag FLAG_UNUSED_0x1AB
# 8 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setflag FLAG_UNUSED_0x27D
# 9 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setflag FLAG_UNUSED_0x27C
# 10 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 11 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 12 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Arrival::
# 13 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    lockall
# 14 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 15 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Jirachi's distress call - telepathic voice from within the rift
# 16 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_JirachiPleas, MSGBOX_DEFAULT
# 17 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 18 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 19 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 20 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Celebi's voice follows
# 21 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_CelebiPleas, MSGBOX_DEFAULT
# 22 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 23 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 24 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 25 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Environmental beat - shadows take shape
# 26 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_ShadowsRise, MSGBOX_DEFAULT
# 27 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 28 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 30
# 29 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 30 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    @ Forced double wild battle against Ducklett + Escavalier
# 31 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setwildbattle SPECIES_DUCKLETT, 45, ITEM_NONE, SPECIES_ESCAVALIER, 45, ITEM_NONE
# 32 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setvar VAR_0x8004, 1
# 33 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setvar VAR_0x8005, 22
# 34 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    dowildbattle
# 35 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 36 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    compare VAR_RESULT, 1
# 37 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    call_if_eq VAR_RESULT, 1, NightmareRealm1_OnVictory
# 38 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 39 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x1AB
# 40 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x27D
# 41 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x27C
# 42 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setvar VAR_0x8004, 0
# 43 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    releaseall
# 44 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 45 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 46 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_OnVictory::
# 47 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setvar VAR_NIGHTMARE_STATE, 1
# 48 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x1AB
# 49 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x27D
# 50 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    clearflag FLAG_UNUSED_0x27C
# 51 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    setvar VAR_0x8004, 0
# 52 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    msgbox NightmareRealm1_Text_VictoryLight, MSGBOX_DEFAULT
# 53 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    closemessage
# 54 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    delay 20
# 55 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    releaseall
# 56 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    end
# 57 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 58 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .align 2
# 59 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_JirachiPleas:
# 60 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "...Can you hear us...?\p"
# 61 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "We are JIRACHI and CELEBI...\p"
# 62 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Something terrible has reached\n"
# 63 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "into our realm...\p"
# 64 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The distortion that took the ORBS...\n"
# 65 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "it has torn open a rift.\p"
# 66 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Shadows now wear our forms...\n"
# 67 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Chosen one... please... fight them.$"
# 68 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 69 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_CelebiPleas:
# 70 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "We cannot move on our own...\n"
# 71 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The rift holds us here.\p"
# 72 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Only if you defeat those shadows\n"
# 73 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "will the boundary seal again.\p"
# 74 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They are born from the same warp\n"
# 75 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "that brought you here...\p"
# 76 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Dark echoes of what we once were.\n"
# 77 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Do not let them break free.$"
# 78 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 79 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_ShadowsRise:
# 80 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The air thickens.\n"
# 81 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Two shapes tear from the darkness...\p"
# 82 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They look like DUCKLETT and\n"
# 83 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "ESCAVALIER, yet their eyes\l"
# 84 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "hold nothing but void.\p"
# 85 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "They will not let you pass.$"
# 86 "data/maps/NIGHTMARE_REALM_1/scripts.pory"

# 87 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
NightmareRealm1_Text_VictoryLight:
# 88 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "The shadows dissolve into motes\n"
# 89 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "of cold light...\p"
# 90 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "A voice - both voices - whispers\n"
# 91 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "at the edge of hearing:\p"
# 92 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string "Thank you, chosen one.\n"
# 93 "data/maps/NIGHTMARE_REALM_1/scripts.pory"
    .string " The rift is sealing...$"
