#!/usr/bin/env python3
from pathlib import Path
import json
import re
import shutil
import sys

repo = Path.cwd()
if not (repo / ".git").exists():
    candidate = Path.home() / "pokeemerald-expansion"
    if (candidate / ".git").exists():
        repo = candidate
    else:
        sys.exit("ERRO: rode dentro de ~/pokeemerald-expansion")

map_path = repo / "data/maps/LavaridgeTown/map.json"
scripts_path = repo / "data/maps/LavaridgeTown/scripts.pory"
specials_path = repo / "data/specials.inc"
field_specials_path = repo / "src/field_specials.c"
map_ids_path = repo / "include/constants/map_event_ids.h"
flags_path = repo / "include/constants/flags.h"

required = [
    map_path,
    scripts_path,
    specials_path,
    field_specials_path,
    map_ids_path,
    flags_path,
]

for p in required:
    if not p.exists():
        sys.exit(f"ERRO: arquivo nao encontrado: {p.relative_to(repo)}")

def backup(path):
    dst = path.with_name(path.name + ".bak_make_it_rain")
    if not dst.exists():
        shutil.copy2(path, dst)
        print("Backup:", dst.relative_to(repo))

for p in required:
    backup(p)

flags_text = flags_path.read_text(errors="replace")
if not re.search(r'^\s*#define\s+FLAG_MAKE_IT_RAIN\s+0x4B5\b', flags_text, re.M):
    sys.exit(
        "ERRO: nao achei '#define FLAG_MAKE_IT_RAIN 0x4B5' "
        "em include/constants/flags.h"
    )

# ------------------------------------------------------------
# 1) Queue objects
# ------------------------------------------------------------
queue = [
    ("OBJ_EVENT_GFX_GIRL_1",      7, 6, "LOCALID_LAVARIDGE_RAIN_QUEUE_1", 30),
    ("OBJ_EVENT_GFX_GIRL_2",      7, 5, "LOCALID_LAVARIDGE_RAIN_QUEUE_2", 31),
    ("OBJ_EVENT_GFX_PUNKGIRL",    8, 9, "LOCALID_LAVARIDGE_RAIN_QUEUE_3", 32),
    ("OBJ_EVENT_GFX_MAN_3",       9, 8, "LOCALID_LAVARIDGE_RAIN_QUEUE_4", 33),
    ("OBJ_EVENT_GFX_MAN_4",       7, 9, "LOCALID_LAVARIDGE_RAIN_QUEUE_5", 34),
    ("OBJ_EVENT_GFX_ALEJANDRO",   7, 7, "LOCALID_LAVARIDGE_RAIN_QUEUE_6", 35),
    ("OBJ_EVENT_GFX_GIRL_3",      7, 8, "LOCALID_LAVARIDGE_RAIN_QUEUE_7", 36),
    ("OBJ_EVENT_GFX_MANIAC",      8, 8, "LOCALID_LAVARIDGE_RAIN_QUEUE_8", 37),
    ("OBJ_EVENT_GFX_RICH_BOY_2",  9, 9, "LOCALID_LAVARIDGE_RAIN_QUEUE_9", 38),
]

data = json.loads(map_path.read_text())
objects = data["object_events"]

for gfx, x, y, local_name, local_num in queue:
    matches = [
        obj for obj in objects
        if obj.get("graphics_id") == gfx
        and obj.get("x") == x
        and obj.get("y") == y
    ]
    if len(matches) != 1:
        sys.exit(
            f"ERRO: esperava 1 objeto {gfx} em ({x},{y}), achei {len(matches)}"
        )
    matches[0]["local_id"] = local_name
    matches[0]["flag"] = "FLAG_MAKE_IT_RAIN"

old_woman = [
    obj for obj in objects
    if obj.get("x") == 12
    and obj.get("y") == 7
    and obj.get("script") == "LavaridgeTown_EventScript_MakeItRain"
]
if len(old_woman) != 1:
    sys.exit("ERRO: nao achei a velha MakeItRain em (12,7).")
old_woman[0]["flag"] = "0"

map_path.write_text(json.dumps(data, indent=2) + "\n")
print("map.json: fila marcada com FLAG_MAKE_IT_RAIN.")

# ------------------------------------------------------------
# 2) Local IDs
# ------------------------------------------------------------
ids_text = map_ids_path.read_text(errors="replace")
marker = "// LAVARIDGE MAKE IT RAIN QUEUE LOCAL IDS"
block = '''
// LAVARIDGE MAKE IT RAIN QUEUE LOCAL IDS
#define LOCALID_LAVARIDGE_RAIN_QUEUE_1 30
#define LOCALID_LAVARIDGE_RAIN_QUEUE_2 31
#define LOCALID_LAVARIDGE_RAIN_QUEUE_3 32
#define LOCALID_LAVARIDGE_RAIN_QUEUE_4 33
#define LOCALID_LAVARIDGE_RAIN_QUEUE_5 34
#define LOCALID_LAVARIDGE_RAIN_QUEUE_6 35
#define LOCALID_LAVARIDGE_RAIN_QUEUE_7 36
#define LOCALID_LAVARIDGE_RAIN_QUEUE_8 37
#define LOCALID_LAVARIDGE_RAIN_QUEUE_9 38
'''

if marker not in ids_text:
    pos = ids_text.rfind("#endif")
    if pos >= 0:
        ids_text = ids_text[:pos] + block + "\n" + ids_text[pos:]
    else:
        ids_text = ids_text.rstrip() + "\n" + block
    map_ids_path.write_text(ids_text)
    print("map_event_ids.h: IDs 30..38 adicionados.")
else:
    print("map_event_ids.h: IDs ja existem.")

# ------------------------------------------------------------
# 3) C special
# ------------------------------------------------------------
c_text = field_specials_path.read_text(errors="replace")

for inc in ['#include "constants/abilities.h"', '#include "constants/moves.h"']:
    if inc not in c_text:
        includes = list(re.finditer(r'^#include .+$', c_text, re.M))
        if not includes:
            sys.exit("ERRO: nao achei bloco de includes em field_specials.c")
        pos = includes[-1].end()
        c_text = c_text[:pos] + "\n" + inc + c_text[pos:]

special_name = "Special_HasDrizzleOrRainDanceInParty"

if f"void {special_name}(void)" not in c_text:
    special_c = r'''
// Lavaridge "Make It Rain" queue event.
// VAR_RESULT = TRUE if a non-Egg party mon has Drizzle
// or knows Rain Dance.
void Special_HasDrizzleOrRainDanceInParty(void)
{
    u8 i;
    u8 moveSlot;

    gSpecialVar_Result = FALSE;

    for (i = 0; i < PARTY_SIZE; i++)
    {
        struct Pokemon *mon = &gPlayerParty[i];
        u16 species = GetMonData(mon, MON_DATA_SPECIES);

        if (species == SPECIES_NONE || GetMonData(mon, MON_DATA_IS_EGG))
            continue;

        if (GetMonAbility(mon) == ABILITY_DRIZZLE)
        {
            gSpecialVar_Result = TRUE;
            return;
        }

        for (moveSlot = 0; moveSlot < MAX_MON_MOVES; moveSlot++)
        {
            if (GetMonData(mon, MON_DATA_MOVE1 + moveSlot) == MOVE_RAIN_DANCE)
            {
                gSpecialVar_Result = TRUE;
                return;
            }
        }
    }
}
'''
    c_text = c_text.rstrip() + "\n\n" + special_c.strip() + "\n"
    print("field_specials.c: special adicionado.")
else:
    print("field_specials.c: special ja existe.")

field_specials_path.write_text(c_text)

# ------------------------------------------------------------
# 4) Register special
# ------------------------------------------------------------
specials_text = specials_path.read_text(errors="replace")
if not re.search(rf'\bdef_special\s+{re.escape(special_name)}\b', specials_text):
    specials_text = specials_text.rstrip() + f"\n\tdef_special {special_name}\n"
    specials_path.write_text(specials_text)
    print("data/specials.inc: special registrado.")
else:
    print("data/specials.inc: special ja registrado.")

# ------------------------------------------------------------
# 5) Script + dialogue
# ------------------------------------------------------------
script_text = scripts_path.read_text(errors="replace")

if "LavaridgeTown_EventScript_MakeItRain::" not in script_text:
    anchor = "LavaridgeTown_EventScript_EggWoman::"
    pos = script_text.find(anchor)
    if pos < 0:
        sys.exit("ERRO: nao achei LavaridgeTown_EventScript_EggWoman::")

    event_code = r'''// -----------------------------------------------------------------------------
// MAKE IT RAIN - queue event
// -----------------------------------------------------------------------------
LavaridgeTown_EventScript_MakeItRain::
	lockall
	faceplayer
	goto_if_set FLAG_MAKE_IT_RAIN, LavaridgeTown_EventScript_MakeItRainDone

	msgbox LavaridgeTown_Text_MakeItRainComplaint, MSGBOX_DEFAULT

	specialvar VAR_RESULT, Special_HasDrizzleOrRainDanceInParty
	goto_if_eq VAR_RESULT, FALSE, LavaridgeTown_EventScript_MakeItRainNoRainmaker

	msgbox LavaridgeTown_Text_MakeItRainCanHelp, MSGBOX_DEFAULT
	closemessage

	// Temporary rain. The map header remains WEATHER_SUNNY,
	// so the next map restores its own weather normally.
	setweather WEATHER_RAIN
	doweather
	delay 30

	playse SE_PIN
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_1, Common_Movement_ExclamationMark
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_2, Common_Movement_ExclamationMark
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_3, Common_Movement_ExclamationMark
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_4, Common_Movement_ExclamationMark
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_5, Common_Movement_ExclamationMark
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_6, Common_Movement_ExclamationMark
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_7, Common_Movement_ExclamationMark
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_8, Common_Movement_ExclamationMark
	applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_9, Common_Movement_ExclamationMark
	waitmovement 0
	delay 30

	fadescreen FADE_TO_BLACK
	setflag FLAG_MAKE_IT_RAIN
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_1
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_2
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_3
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_4
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_5
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_6
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_7
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_8
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_9
	delay 20
	fadescreen FADE_FROM_BLACK

	msgbox LavaridgeTown_Text_MakeItRainSuccess, MSGBOX_DEFAULT
	releaseall
	end

LavaridgeTown_EventScript_MakeItRainNoRainmaker::
	msgbox LavaridgeTown_Text_MakeItRainNoRainmaker, MSGBOX_DEFAULT
	releaseall
	end

LavaridgeTown_EventScript_MakeItRainDone::
	msgbox LavaridgeTown_Text_MakeItRainDone, MSGBOX_DEFAULT
	releaseall
	end

'''
    script_text = script_text[:pos] + event_code + script_text[pos:]
    print("scripts.pory: evento adicionado.")
else:
    print("scripts.pory: evento ja existe.")

if "LavaridgeTown_Text_MakeItRainComplaint:" not in script_text:
    text_block = r'''
// MAKE IT RAIN dialogue
LavaridgeTown_Text_MakeItRainComplaint:
	.string "Honestly! Look at this ridiculous\n"
	.string "line! Everyone is roasting out here.\p"
	.string "No shade, no breeze, not even a\n"
	.string "single cloud in the sky!\p"
	.string "If only somebody had a POKéMON\n"
	.string "that could bring us some rain…$"

LavaridgeTown_Text_MakeItRainNoRainmaker:
	.string "Hmm… No luck.\p"
	.string "Come back with a POKéMON that has\n"
	.string "DRIZZLE, or one that knows\l"
	.string "RAIN DANCE.\p"
	.string "This crowd isn't going anywhere\n"
	.string "until somebody cools them off!$"

LavaridgeTown_Text_MakeItRainCanHelp:
	.string "Oh! Wait a moment!\p"
	.string "One of your POKéMON can actually\n"
	.string "make it rain?\p"
	.string "Well, don't just stand there!\n"
	.string "Let's see what it can do!$"

LavaridgeTown_Text_MakeItRainSuccess:
	.string "HA! Would you look at that!\p"
	.string "The whole line vanished the moment\n"
	.string "the rain started!\p"
	.string "A little weather works better than\n"
	.string "any crowd control I've ever seen.$"

LavaridgeTown_Text_MakeItRainDone:
	.string "Ah, my little rainmaker!\p"
	.string "The crowd still hasn't come back.\n"
	.string "Peace and quiet at last!$"
'''
    script_text = script_text.rstrip() + "\n\n" + text_block.strip() + "\n"
    print("scripts.pory: dialogos adicionados.")
else:
    print("scripts.pory: dialogos ja existem.")

scripts_path.write_text(script_text)

print()
print("==============================================")
print("MAKE IT RAIN instalado.")
print("==============================================")
print("Fila: 9 NPCs")
print("Velha: permanece visivel")
print("Condicao: DRIZZLE ou RAIN DANCE")
print("Flag final: FLAG_MAKE_IT_RAIN (0x4B5)")
print("Weather: chuva temporaria ate trocar de mapa")
print()
print("Agora rode:")
print("  make -j8")
