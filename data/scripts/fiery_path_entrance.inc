Fiery_Path_Entrance_EventScript_OldLadyLikesHot::
lock
faceplayer
msgbox Fiery_Path_Entrance_Text_OldLadyLikesHot, MSGBOX_YESNO
compare VAR_RESULT, YES
goto_if_eq Fiery_Path_Entrance_EventScript_DoMining
msgbox Fiery_Path_Entrance_Text_MaybeNextTime, MSGBOX_AUTOCLOSE
release
end

Fiery_Path_Entrance_EventScript_DoMining::
msgbox Fiery_Path_Entrance_Text_GoodLuck, MSGBOX_AUTOCLOSE
fadescreen FADE_TO_BLACK
special StartMining
release
end

Fiery_Path_Entrance_Text_MaybeNextTime:
.string "Oh well… Maybe next time you'll\n"
.string "be braver!$"

Fiery_Path_Entrance_Text_GoodLuck:
.string "That's the spirit, dearie!\n"
.string "Go on and dig!$"

Fiery_Path_Entrance_Text_OldLadyLikesHot:
.string "Whew… Feels like a sauna in here!\n"
.string "Just the way I like it.\p"
.string "But I swear it's been getting hotter\n"
.string "lately. Something's brewing deep\n"
.string "inside the FIERY PATH.\p"
.string "Not many folks dare to cross anymore.\n"
.string "Too hot, too dangerous, they say.\p"
.string "But the brave ones? They always\n"
.string "come back with amazing stories.\p"
.string "So, dearie… feeling brave today?$"
