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
        sys.exit(f"ERRO: nao achei {p.relative_to(repo)}")

def backup(path):
    dst = path.with_name(path.name + ".bak_make_it_rain_v7_bright")
    if not dst.exists():
        shutil.copy2(path, dst)
        print("Backup:", dst.relative_to(repo))

for p in (c_path, specials_path, pory_path):
    backup(p)

# ============================================================
# 1) Add an event-only "bright normal rain" keeper.
#
# WHY:
# In this project normal WEATHER_RAIN intentionally uses
# targetColorMapIndex = 3, and the rain fade-in reapplies color map 3.
# That is why the map stays very dark after the queue event.
#
# We keep real WEATHER_RAIN sprites/sound, but force only this event's
# palette color map back to 0 while the player remains on this map.
# ============================================================
c_text = c_path.read_text(errors="replace")

needed_includes = [
    '#include "field_weather.h"',
    '#include "palette.h"',
    '#include "task.h"',
    '#include "constants/weather.h"',
]

for inc in needed_includes:
    if inc not in c_text:
        includes = list(re.finditer(r'^#include .+$', c_text, re.M))
        if not includes:
            sys.exit("ERRO: nao achei bloco de includes em field_specials.c")
        pos = includes[-1].end()
        c_text = c_text[:pos] + "\n" + inc + c_text[pos:]
        print("Include adicionado:", inc)

def function_span(source, signature):
    start = source.find(signature)
    if start < 0:
        return None
    brace = source.find("{", start)
    if brace < 0:
        return None
    depth = 0
    for i in range(brace, len(source)):
        if source[i] == "{":
            depth += 1
        elif source[i] == "}":
            depth -= 1
            if depth == 0:
                return start, i + 1
    return None

bright_code = r'''
#define tLavaridgeRainMapGroup data[0]
#define tLavaridgeRainMapNum   data[1]

static void LavaridgeMakeItRain_ApplyBrightPalette(void)
{
    // Keep the REAL normal rain, but remove its stock dark color-map grade.
    if (gWeatherPtr->currWeather != WEATHER_RAIN
     && gWeatherPtr->nextWeather != WEATHER_RAIN)
        return;

    gWeatherPtr->targetColorMapIndex = 0;
    gWeatherPtr->colorMapStepDelay = 0;

    // During a screen/weather fade the weather engine owns the palette.
    // As soon as it becomes idle, restore the normal/time-of-day palette.
    if (!gPaletteFade.active
     && gWeatherPtr->palProcessingState == WEATHER_PAL_STATE_IDLE)
    {
        ApplyWeatherColorMapIfIdle(0);
    }
}

static void Task_KeepLavaridgeMakeItRainBrightV7(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    // This effect is intentionally temporary. Leaving Lavaridge destroys
    // the keeper and the next map's own weather behaves normally.
    if (gSaveBlock1Ptr->location.mapGroup != task->tLavaridgeRainMapGroup
     || gSaveBlock1Ptr->location.mapNum != task->tLavaridgeRainMapNum)
    {
        DestroyTask(taskId);
        return;
    }

    LavaridgeMakeItRain_ApplyBrightPalette();
}

void Special_StartLavaridgeMakeItRainBrightPalette(void)
{
    u8 taskId;

    // Apply immediately if the weather/fade is already idle.
    LavaridgeMakeItRain_ApplyBrightPalette();

    if (FuncIsActiveTask(Task_KeepLavaridgeMakeItRainBrightV7))
        return;

    taskId = CreateTask(Task_KeepLavaridgeMakeItRainBrightV7, 80);
    gTasks[taskId].tLavaridgeRainMapGroup = gSaveBlock1Ptr->location.mapGroup;
    gTasks[taskId].tLavaridgeRainMapNum = gSaveBlock1Ptr->location.mapNum;
}

#undef tLavaridgeRainMapGroup
#undef tLavaridgeRainMapNum
'''.strip()

# Replace a previous V7 block if rerun.
span = function_span(c_text, "void Special_StartLavaridgeMakeItRainBrightPalette(void)")
if span:
    # Need remove helper/task preceding it too; locate marker define.
    marker = c_text.rfind("#define tLavaridgeRainMapGroup", 0, span[0])
    end = span[1]
    undef_end = c_text.find("#undef tLavaridgeRainMapNum", end)
    if marker >= 0 and undef_end >= 0:
        undef_end = c_text.find("\n", undef_end)
        if undef_end < 0:
            undef_end = len(c_text)
        c_text = c_text[:marker] + bright_code + c_text[undef_end:]
        print("field_specials.c: bright-rain V7 atualizado.")
    else:
        sys.exit("ERRO: achei Special_Start... mas nao consegui localizar bloco V7 inteiro.")
else:
    c_text = c_text.rstrip() + "\n\n" + bright_code + "\n"
    print("field_specials.c: bright-rain V7 adicionado.")

c_path.write_text(c_text)

# ============================================================
# 2) Register the special.
# ============================================================
specials = specials_path.read_text(errors="replace")
special_name = "Special_StartLavaridgeMakeItRainBrightPalette"

if not re.search(rf'\bdef_special\s+{re.escape(special_name)}\b', specials):
    specials = specials.rstrip() + f"\n\tdef_special {special_name}\n"
    specials_path.write_text(specials)
    print("data/specials.inc: special registrado.")
else:
    print("data/specials.inc: special ja registrado.")

# ============================================================
# 3) Call it in TWO safe places:
#    A) after WaitWeather, so rain starts bright
#    B) after FADE_FROM_BLACK, because normal rain fade-in forcibly
#       reapplies color map 3
#
# Do not touch the resolved 6-NPC live-hide logic.
# ============================================================
pory = pory_path.read_text(errors="replace")

raw_open = pory.find("raw `")
raw_close = pory.rfind("`")
if raw_open < 0 or raw_close <= raw_open:
    sys.exit("ERRO: nao achei raw block em LavaridgeTown/scripts.pory")

prefix = pory[:raw_open + len("raw `")]
body = pory[raw_open + len("raw `"):raw_close]
suffix = pory[raw_close:]

start = body.find("LavaridgeTown_EventScript_MakeItRain::")
end = body.find("LavaridgeTown_EventScript_MakeItRainNoRainmaker::", start)
if start < 0 or end < 0:
    sys.exit("ERRO: nao achei bloco MakeItRain.")

block = body[start:end]

# Remove old V7 calls to make reruns idempotent.
block = re.sub(
    r'^[ \t]*special Special_StartLavaridgeMakeItRainBrightPalette[ \t]*\n',
    '',
    block,
    flags=re.M
)

# A) After weather fully changes.
weather_anchor = "\tspecial WaitWeather\n\twaitstate\n"
if weather_anchor not in block:
    sys.exit("ERRO: nao achei 'special WaitWeather / waitstate' no MakeItRain.")
block = block.replace(
    weather_anchor,
    weather_anchor + "\tspecial Special_StartLavaridgeMakeItRainBrightPalette\n",
    1
)

# B) After fade-in completes. This immediately removes the rain shade again,
# and the task keeps it bright afterward.
fade_anchor = "\tfadescreenspeed FADE_FROM_BLACK, 8\n"
if fade_anchor not in block:
    sys.exit("ERRO: nao achei FADE_FROM_BLACK no MakeItRain.")
block = block.replace(
    fade_anchor,
    fade_anchor + "\tspecial Special_StartLavaridgeMakeItRainBrightPalette\n",
    1
)

body = body[:start] + block + body[end:]
pory_path.write_text(prefix + body + suffix)

print("scripts.pory:")
print("  bright palette apos WaitWeather: OK")
print("  bright palette apos FADE_FROM_BLACK: OK")
print("  fila/live-hide: NAO alterado")
print("  checker Drizzle/Rain Dance: NAO alterado")

# ============================================================
# 4) Force rebuild.
# ============================================================
for rel in (
    "build/modern/src/field_specials.o",
    "build/modern/src/field_specials.d",
    "build/modern/data/event_scripts.o",
    "build/modern/data/event_scripts.d",
):
    p = repo / rel
    if p.exists():
        p.unlink()
        print("Rebuild:", rel)

print()
print("============================================================")
print("MAKE IT RAIN V7 BRIGHT aplicado.")
print("============================================================")
print("Weather continua sendo WEATHER_RAIN normal.")
print("Som/sprites de chuva continuam normais.")
print("Somente o color-map escuro stock da chuva e neutralizado neste evento.")
print("Ao trocar de mapa, o task morre sozinho.")
print()
print("Agora rode:")
print("  make -j8")
