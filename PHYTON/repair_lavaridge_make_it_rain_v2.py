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

for p in (map_path, scripts_path, specials_path, field_specials_path, map_ids_path, flags_path):
    if not p.exists():
        sys.exit(f"ERRO: arquivo nao encontrado: {p.relative_to(repo)}")

def backup(path):
    dst = path.with_name(path.name + ".bak_make_it_rain_v2")
    if not dst.exists():
        shutil.copy2(path, dst)
        print("Backup:", dst.relative_to(repo))

for p in (map_path, scripts_path, specials_path, field_specials_path, map_ids_path):
    backup(p)

flags_text = flags_path.read_text(errors="replace")
if not re.search(r'^\s*#define\s+FLAG_MAKE_IT_RAIN\s+0x4B5\b', flags_text, re.M):
    sys.exit("ERRO: FLAG_MAKE_IT_RAIN 0x4B5 nao encontrada em flags.h")

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
objects = data.get("object_events", [])

for gfx, x, y, local_name, local_num in queue:
    matches = [
        o for o in objects
        if o.get("graphics_id") == gfx and o.get("x") == x and o.get("y") == y
    ]
    if len(matches) != 1:
        sys.exit(f"ERRO: {gfx} em ({x},{y}): achei {len(matches)} objetos")
    matches[0]["local_id"] = local_name
    matches[0]["flag"] = "FLAG_MAKE_IT_RAIN"

old_woman = [
    o for o in objects
    if o.get("x") == 12
    and o.get("y") == 7
    and o.get("script") == "LavaridgeTown_EventScript_MakeItRain"
]
if len(old_woman) != 1:
    sys.exit("ERRO: nao achei a velha MakeItRain em (12,7)")
old_woman[0]["flag"] = "0"

map_path.write_text(json.dumps(data, indent=2) + "\n")
print("map.json: fila configurada; velha preservada.")

ids_text = map_ids_path.read_text(errors="replace")
ids_marker = "// LAVARIDGE MAKE IT RAIN QUEUE LOCAL IDS"
ids_block = '''
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
if ids_marker not in ids_text:
    pos = ids_text.rfind("#endif")
    if pos >= 0:
        ids_text = ids_text[:pos] + ids_block + "\n" + ids_text[pos:]
    else:
        ids_text = ids_text.rstrip() + "\n" + ids_block
    map_ids_path.write_text(ids_text)
    print("map_event_ids.h: IDs adicionados.")

c_text = field_specials_path.read_text(errors="replace")

for inc in ('#include "constants/abilities.h"', '#include "constants/moves.h"'):
    if inc not in c_text:
        includes = list(re.finditer(r'^#include .+$', c_text, re.M))
        if not includes:
            sys.exit("ERRO: bloco de includes nao encontrado em field_specials.c")
        pos = includes[-1].end()
        c_text = c_text[:pos] + "\n" + inc + c_text[pos:]

special_name = "Special_HasDrizzleOrRainDanceInParty"
if f"void {special_name}(void)" not in c_text:
    special_c = r'''
// Lavaridge "Make It Rain" queue event.
// VAR_RESULT = TRUE if any non-Egg party Pokemon has Drizzle
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
    print("field_specials.c: party-check special adicionado.")

field_specials_path.write_text(c_text)

specials_text = specials_path.read_text(errors="replace")
if not re.search(rf'\bdef_special\s+{re.escape(special_name)}\b', specials_text):
    specials_text = specials_text.rstrip() + f"\n\tdef_special {special_name}\n"
    specials_path.write_text(specials_text)
    print("data/specials.inc: special registrado.")

pory = scripts_path.read_text(errors="replace")

raw_open = pory.find("raw `")
if raw_open < 0:
    sys.exit("ERRO: scripts.pory nao tem o bloco 'raw `' esperado")

raw_close = pory.rfind("`")
if raw_close <= raw_open + 4:
    sys.exit("ERRO: nao achei o fechamento do bloco raw em scripts.pory")

prefix = pory[:raw_open + len("raw `")]
body = pory[raw_open + len("raw `"):raw_close]
suffix = pory[raw_close:]

event_label = "LavaridgeTown_EventScript_MakeItRain::"
event_code = r'''
// -----------------------------------------------------------------------------
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

if event_label not in body:
    anchor = "LavaridgeTown_EventScript_EggWoman::"
    pos = body.find(anchor)
    if pos < 0:
        sys.exit("ERRO: EggWoman nao encontrada dentro do raw block")
    body = body[:pos] + event_code + body[pos:]
    print("scripts.pory: EventScript_MakeItRain inserido DENTRO do raw block.")
else:
    print("scripts.pory: EventScript_MakeItRain ja existe dentro do raw block.")

dialog_marker = "LavaridgeTown_Text_MakeItRainComplaint:"
dialog_code = r'''
// MAKE IT RAIN dialogue
LavaridgeTown_Text_MakeItRainComplaint:
	.string "Honestly! Look at this ridiculous\n"
	.string "line! Everyone is roasting out here.\p"
	.string "No shade, no breeze, not even a\n"
	.string "single cloud in the sky!\p"
	.string "If only somebody had a POKéMON\n"
	.string "that could bring us some rain...$"

LavaridgeTown_Text_MakeItRainNoRainmaker:
	.string "Hmm... No luck.\p"
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

if dialog_marker not in body:
    body = body.rstrip() + "\n\n" + dialog_code.strip() + "\n"
    print("scripts.pory: dialogos inseridos DENTRO do raw block.")
else:
    print("scripts.pory: dialogos ja existem dentro do raw block.")

if "LavaridgeTown_EventScript_MakeItRain" in suffix[1:] or "LavaridgeTown_Text_MakeItRain" in suffix[1:]:
    print("AVISO: descartando copia MakeItRain fora do raw block.")
    suffix = "`\n"

scripts_path.write_text(prefix + body + suffix)

generated_candidates = [
    repo / "data/maps/LavaridgeTown/scripts.inc",
    repo / "build/modern/data/event_scripts.o",
    repo / "build/modern/data/event_scripts.d",
    repo / "build/modern/data/map_events.o",
    repo / "build/modern/data/map_events.d",
    repo / "build/modern/data/maps.o",
    repo / "build/modern/data/maps.d",
]

for path in generated_candidates:
    if path.exists():
        path.unlink()
        print("Removido para rebuild:", path.relative_to(repo))

scripts_path.touch()

print()
print("============================================================")
print("MAKE IT RAIN V2 reparado.")
print("============================================================")
print("O label agora esta dentro do raw block de scripts.pory.")
print()
print("CONFIRA:")
print("  grep -n -A8 -B3 'LavaridgeTown_EventScript_MakeItRain::' data/maps/LavaridgeTown/scripts.pory")
print()
print("DEPOIS:")
print("  make -j8")
