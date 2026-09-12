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

pory_path = repo / "data/maps/LavaridgeTown/scripts.pory"
c_path = repo / "src/field_specials.c"
specials_path = repo / "data/specials.inc"

for p in (pory_path, c_path, specials_path):
    if not p.exists():
        sys.exit(f"ERRO: nao encontrei {p.relative_to(repo)}")

def backup(path):
    dst = path.with_name(path.name + ".bak_make_it_rain_v4")
    if not dst.exists():
        shutil.copy2(path, dst)
        print("Backup:", dst.relative_to(repo))

for p in (pory_path, c_path, specials_path):
    backup(p)

# ============================================================
# 1) REMOVE the V3 custom weather/removal helpers.
#    We keep ONLY the strict party checker, which is working.
# ============================================================
c_text = c_path.read_text(errors="replace")

# Remove the event-specific weather task/helper installed by V3.
weather_block = re.compile(
    r'\n?#define tMakeItRainMapGroup data\[0\]\s*'
    r'#define tMakeItRainMapNum\s+data\[1\].*?'
    r'#undef tMakeItRainMapGroup\s*'
    r'#undef tMakeItRainMapNum\s*\n?',
    re.S,
)
c_text, n_weather = weather_block.subn("\n", c_text, count=1)

def remove_c_function(source, signature):
    start = source.find(signature)
    if start < 0:
        return source, False

    # Include immediately preceding comment-only blank area only minimally.
    open_brace = source.find("{", start)
    if open_brace < 0:
        return source, False

    depth = 0
    end = None
    for i in range(open_brace, len(source)):
        ch = source[i]
        if ch == "{":
            depth += 1
        elif ch == "}":
            depth -= 1
            if depth == 0:
                end = i + 1
                break

    if end is None:
        return source, False

    # Eat trailing blank lines, but no following code.
    while end < len(source) and source[end] in " \t":
        end += 1
    if end < len(source) and source[end] == "\n":
        end += 1
    if end < len(source) and source[end] == "\n":
        end += 1

    return source[:start] + source[end:], True

c_text, removed_remove_helper = remove_c_function(
    c_text,
    "void Special_RemoveLavaridgeMakeItRainQueue(void)"
)

# In case a slightly different V3 left the weather public helper outside
# the macro block, remove it too.
c_text, removed_weather_helper = remove_c_function(
    c_text,
    "void Special_StartLavaridgeMakeItRainWeather(void)"
)

c_path.write_text(c_text)

print("field_specials.c:")
print("  custom weather task removido:", bool(n_weather or removed_weather_helper))
print("  custom C queue remover removido:", removed_remove_helper)
print("  strict Drizzle/Rain Dance checker: PRESERVADO")

# Remove unused V3 registrations, preserve party checker registration.
specials = specials_path.read_text(errors="replace")
for name in (
    "Special_StartLavaridgeMakeItRainWeather",
    "Special_RemoveLavaridgeMakeItRainQueue",
):
    specials, count = re.subn(
        rf'^[ \t]*def_special[ \t]+{re.escape(name)}[ \t]*\n?',
        '',
        specials,
        flags=re.M,
    )
    if count:
        print("data/specials.inc: removido", name)

specials_path.write_text(specials)

# ============================================================
# 2) Replace ONLY the MakeItRain event with stock script commands.
#
# Based directly on the user's working examples:
#   - setweather + doweather + Special WaitWeather + waitstate
#   - fadescreenspeed
#   - removeobject directly in script
#
# No special C weather code.
# No custom palette manipulation.
# No custom C object removal.
# ============================================================
pory = pory_path.read_text(errors="replace")

raw_open = pory.find("raw `")
raw_close = pory.rfind("`")
if raw_open < 0 or raw_close <= raw_open:
    sys.exit("ERRO: nao achei o raw block em LavaridgeTown/scripts.pory")

prefix = pory[:raw_open + len("raw `")]
body = pory[raw_open + len("raw `"):raw_close]
suffix = pory[raw_close:]

start_label = "LavaridgeTown_EventScript_MakeItRain::"
next_label = "LavaridgeTown_EventScript_EggWoman::"

start = body.find(start_label)
end = body.find(next_label, start if start >= 0 else 0)

if start < 0:
    sys.exit("ERRO: nao achei LavaridgeTown_EventScript_MakeItRain::")
if end < 0:
    sys.exit("ERRO: nao achei LavaridgeTown_EventScript_EggWoman:: depois do evento")

new_event = r'''LavaridgeTown_EventScript_MakeItRain::
	lockall
	faceplayer
	goto_if_set FLAG_MAKE_IT_RAIN, LavaridgeTown_EventScript_MakeItRainDone

	msgbox LavaridgeTown_Text_MakeItRainComplaint, MSGBOX_DEFAULT

	// Keep the strict checker that already works:
	// only CURRENT Drizzle or CURRENT Rain Dance in the party.
	setvar VAR_RESULT, FALSE
	special Special_HasDrizzleOrRainDanceInParty
	goto_if_ne VAR_RESULT, TRUE, LavaridgeTown_EventScript_MakeItRainNoRainmaker

	msgbox LavaridgeTown_Text_MakeItRainCanHelp, MSGBOX_DEFAULT
	closemessage

	// STOCK normal rain sequence.
	// Same structure used by the working weather scripts:
	// setweather -> doweather -> WaitWeather -> waitstate.
	setweather WEATHER_RAIN
	doweather
	special WaitWeather
	waitstate
	delay 20

	// The whole queue reacts at once.
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
	waitse
	delay 20

	// Use the exact stock-style fade/removal pattern.
	fadescreenspeed FADE_TO_BLACK, 8

	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_1
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_2
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_3
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_4
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_5
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_6
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_7
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_8
	removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_9

	// Set the persistence flag AFTER removing the live objects.
	setflag FLAG_MAKE_IT_RAIN

	fadescreenspeed FADE_FROM_BLACK, 8

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

body = body[:start] + new_event + body[end:]
pory_path.write_text(prefix + body + suffix)

print("scripts.pory:")
print("  WEATHER_RAIN stock: OK")
print("  doweather + WaitWeather + waitstate: OK")
print("  fadescreenspeed stock: OK")
print("  9x removeobject direto no script: OK")
print("  FLAG_MAKE_IT_RAIN setada depois da remocao: OK")

# ============================================================
# 3) Force only relevant rebuilds.
# ============================================================
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
print("MAKE IT RAIN V4 instalado.")
print("============================================================")
print("Esta versao NAO inventa sistema de weather/remocao.")
print("Ela copia a estrutura dos eventos stock que voce enviou:")
print()
print("  setweather WEATHER_RAIN")
print("  doweather")
print("  special WaitWeather")
print("  waitstate")
print("  ...")
print("  fadescreenspeed FADE_TO_BLACK, 8")
print("  removeobject x9")
print("  setflag FLAG_MAKE_IT_RAIN")
print("  fadescreenspeed FADE_FROM_BLACK, 8")
print()
print("O checker correto da V3 foi mantido.")
print()
print("Agora rode:")
print("  make -j8")
