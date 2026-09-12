#!/usr/bin/env python3
from pathlib import Path
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

c_path = repo / "src/field_specials.c"
specials_path = repo / "data/specials.inc"
pory_path = repo / "data/maps/LavaridgeTown/scripts.pory"

for p in (c_path, specials_path, pory_path):
    if not p.exists():
        sys.exit(f"ERRO: arquivo nao encontrado: {p.relative_to(repo)}")

def backup(path):
    dst = path.with_name(path.name + ".bak_make_it_rain_v3")
    if not dst.exists():
        shutil.copy2(path, dst)
        print("Backup:", dst.relative_to(repo))

for p in (c_path, specials_path, pory_path):
    backup(p)

text = c_path.read_text(errors="replace")

needed_includes = [
    '#include "field_weather.h"',
    '#include "task.h"',
    '#include "constants/weather.h"',
    '#include "constants/abilities.h"',
    '#include "constants/moves.h"',
    '#include "constants/map_event_ids.h"',
]

for inc in needed_includes:
    if inc not in text:
        includes = list(re.finditer(r'^#include .+$', text, re.M))
        if not includes:
            sys.exit("ERRO: nao achei bloco de #include em src/field_specials.c")
        pos = includes[-1].end()
        text = text[:pos] + "\n" + inc + text[pos:]
        print("Include adicionado:", inc)

def function_span(source, signature):
    start = source.find(signature)
    if start < 0:
        return None
    open_brace = source.find("{", start)
    if open_brace < 0:
        return None
    depth = 0
    for i in range(open_brace, len(source)):
        if source[i] == "{":
            depth += 1
        elif source[i] == "}":
            depth -= 1
            if depth == 0:
                return start, i + 1
    return None

strict_check = r'''
void Special_HasDrizzleOrRainDanceInParty(void)
{
    u8 partyIndex;
    u8 moveSlot;

    // ONLY the Pokemon currently in the player's party are checked.
    // No learnsets, TMs, tutors, PC boxes, possible abilities, or future moves.
    gSpecialVar_Result = FALSE;

    for (partyIndex = 0; partyIndex < PARTY_SIZE; partyIndex++)
    {
        struct Pokemon *mon = &gPlayerParty[partyIndex];
        u16 species = GetMonData(mon, MON_DATA_SPECIES);

        if (species == SPECIES_NONE)
            continue;

        if (GetMonData(mon, MON_DATA_IS_EGG))
            continue;

        // Exact CURRENT ability only.
        if (GetMonAbility(mon) == ABILITY_DRIZZLE)
        {
            gSpecialVar_Result = TRUE;
            return;
        }

        // Exact CURRENT move slots only.
        for (moveSlot = 0; moveSlot < MAX_MON_MOVES; moveSlot++)
        {
            u16 move = GetMonData(mon, MON_DATA_MOVE1 + moveSlot);

            if (move == MOVE_RAIN_DANCE)
            {
                gSpecialVar_Result = TRUE;
                return;
            }
        }
    }
}
'''.strip()

span = function_span(text, "void Special_HasDrizzleOrRainDanceInParty(void)")
if span:
    s, e = span
    text = text[:s] + strict_check + text[e:]
    print("Party check substituido pela versao STRICT.")
else:
    text = text.rstrip() + "\n\n" + strict_check + "\n"
    print("Party check STRICT adicionado.")

rain_code = r'''
#define tMakeItRainMapGroup data[0]
#define tMakeItRainMapNum   data[1]

static void Task_KeepLavaridgeMakeItRainBright(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    if (gSaveBlock1Ptr->location.mapGroup != task->tMakeItRainMapGroup
     || gSaveBlock1Ptr->location.mapNum != task->tMakeItRainMapNum)
    {
        DestroyTask(taskId);
        return;
    }

    // Still WEATHER_RAIN. Only neutralize its normal palette darkening
    // while this one Lavaridge event is active on this map.
    if (gWeatherPtr->currWeather == WEATHER_RAIN
     || gWeatherPtr->nextWeather == WEATHER_RAIN)
    {
        gWeatherPtr->targetColorMapIndex = 0;
        gWeatherPtr->colorMapStepDelay = 1;
    }
}

void Special_StartLavaridgeMakeItRainWeather(void)
{
    u8 taskId;

    // NORMAL rain. Never WEATHER_DARKNESS_RAIN.
    SetWeather(WEATHER_RAIN);

    if (FuncIsActiveTask(Task_KeepLavaridgeMakeItRainBright))
        return;

    taskId = CreateTask(Task_KeepLavaridgeMakeItRainBright, 80);
    gTasks[taskId].tMakeItRainMapGroup = gSaveBlock1Ptr->location.mapGroup;
    gTasks[taskId].tMakeItRainMapNum = gSaveBlock1Ptr->location.mapNum;
}

#undef tMakeItRainMapGroup
#undef tMakeItRainMapNum
'''.strip()

if "void Special_StartLavaridgeMakeItRainWeather(void)" not in text:
    text = text.rstrip() + "\n\n" + rain_code + "\n"
    print("Special de NORMAL rain claro adicionado.")
else:
    print("Special de rain ja existe; preservado.")

remove_code = r'''
void Special_RemoveLavaridgeMakeItRainQueue(void)
{
    static const u8 sQueueLocalIds[] =
    {
        LOCALID_LAVARIDGE_RAIN_QUEUE_1,
        LOCALID_LAVARIDGE_RAIN_QUEUE_2,
        LOCALID_LAVARIDGE_RAIN_QUEUE_3,
        LOCALID_LAVARIDGE_RAIN_QUEUE_4,
        LOCALID_LAVARIDGE_RAIN_QUEUE_5,
        LOCALID_LAVARIDGE_RAIN_QUEUE_6,
        LOCALID_LAVARIDGE_RAIN_QUEUE_7,
        LOCALID_LAVARIDGE_RAIN_QUEUE_8,
        LOCALID_LAVARIDGE_RAIN_QUEUE_9,
    };
    u8 i;

    for (i = 0; i < ARRAY_COUNT(sQueueLocalIds); i++)
    {
        RemoveObjectEventByLocalIdAndMap(
            sQueueLocalIds[i],
            gSaveBlock1Ptr->location.mapNum,
            gSaveBlock1Ptr->location.mapGroup
        );
    }
}
'''.strip()

if "void Special_RemoveLavaridgeMakeItRainQueue(void)" not in text:
    text = text.rstrip() + "\n\n" + remove_code + "\n"
    print("Special de remocao IMEDIATA da fila adicionado.")
else:
    print("Special de remocao ja existe; preservado.")

c_path.write_text(text)

specials = specials_path.read_text(errors="replace")
for name in (
    "Special_HasDrizzleOrRainDanceInParty",
    "Special_StartLavaridgeMakeItRainWeather",
    "Special_RemoveLavaridgeMakeItRainQueue",
):
    if not re.search(rf'\bdef_special\s+{re.escape(name)}\b', specials):
        specials = specials.rstrip() + f"\n\tdef_special {name}\n"
        print("Registrado:", name)
specials_path.write_text(specials)

pory = pory_path.read_text(errors="replace")
raw_open = pory.find("raw `")
raw_close = pory.rfind("`")
if raw_open < 0 or raw_close <= raw_open:
    sys.exit("ERRO: nao achei o raw block de LavaridgeTown/scripts.pory")

prefix = pory[:raw_open + len("raw `")]
body = pory[raw_open + len("raw `"):raw_close]
suffix = pory[raw_close:]

old_checks = [
    '''specialvar VAR_RESULT, Special_HasDrizzleOrRainDanceInParty
	goto_if_eq VAR_RESULT, FALSE, LavaridgeTown_EventScript_MakeItRainNoRainmaker''',
    '''special Special_HasDrizzleOrRainDanceInParty
	goto_if_eq VAR_RESULT, FALSE, LavaridgeTown_EventScript_MakeItRainNoRainmaker''',
]

new_check = '''setvar VAR_RESULT, FALSE
	special Special_HasDrizzleOrRainDanceInParty
	goto_if_ne VAR_RESULT, TRUE, LavaridgeTown_EventScript_MakeItRainNoRainmaker'''

did_check = False
for old in old_checks:
    if old in body:
        body = body.replace(old, new_check, 1)
        did_check = True
        break

if did_check:
    print("Script: check agora aceita SOMENTE resultado TRUE.")
elif new_check in body:
    print("Script: check STRICT ja aplicado.")
else:
    sys.exit("ERRO: nao achei o bloco de party check.")

weather_patterns = [
    '''setweather WEATHER_RAIN
	doweather''',
    '''setweather WEATHER_DARKNESS_RAIN
	doweather''',
    '''setweather WEATHER_RAIN''',
    '''setweather WEATHER_DARKNESS_RAIN''',
]

did_weather = False
for old in weather_patterns:
    if old in body:
        body = body.replace(old, "special Special_StartLavaridgeMakeItRainWeather", 1)
        did_weather = True
        break

if did_weather:
    print("Script: weather -> special de NORMAL WEATHER_RAIN.")
elif "special Special_StartLavaridgeMakeItRainWeather" in body:
    print("Script: rain special ja aplicado.")
else:
    sys.exit("ERRO: nao achei o weather do evento.")

remove_lines = "\n".join(
    f"\tremoveobject LOCALID_LAVARIDGE_RAIN_QUEUE_{i}"
    for i in range(1, 10)
)

if remove_lines in body:
    body = body.replace(
        remove_lines,
        "\tspecial Special_RemoveLavaridgeMakeItRainQueue",
        1
    )
    print("Script: fila agora some imediatamente via C special.")
elif "special Special_RemoveLavaridgeMakeItRainQueue" in body:
    print("Script: remocao imediata ja aplicada.")
else:
    pattern = re.compile(
        r'(?:[ \t]*removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_[1-9][ \t]*\n){9}'
    )
    body2, n = pattern.subn(
        "\tspecial Special_RemoveLavaridgeMakeItRainQueue\n",
        body,
        count=1
    )
    if n != 1:
        sys.exit("ERRO: nao achei as 9 linhas removeobject.")
    body = body2
    print("Script: fila agora some imediatamente via C special.")

pory_path.write_text(prefix + body + suffix)

for rel in (
    "build/modern/src/field_specials.o",
    "build/modern/src/field_specials.d",
    "build/modern/data/event_scripts.o",
    "build/modern/data/event_scripts.d",
    "build/modern/data/map_events.o",
    "build/modern/data/map_events.d",
    "build/modern/data/maps.o",
    "build/modern/data/maps.d",
):
    path = repo / rel
    if path.exists():
        path.unlink()
        print("Rebuild:", rel)

print()
print("============================================================")
print("MAKE IT RAIN V3 aplicado.")
print("============================================================")
print("1) Check = somente Drizzle ATUAL ou Rain Dance nos moves ATUAIS.")
print("2) Rain = WEATHER_RAIN normal, nunca DARKNESS_RAIN.")
print("3) Tint escuro da chuva normal neutralizado somente neste evento.")
print("4) Fila removida imediatamente no fade, sem trocar de mapa.")
print("5) FLAG_MAKE_IT_RAIN continua cuidando da persistencia.")
print()
print("Agora rode:")
print("  make -j8")
