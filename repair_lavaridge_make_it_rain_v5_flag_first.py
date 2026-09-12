#!/usr/bin/env python3
from pathlib import Path
import shutil
import sys

repo = Path.cwd()
if not (repo / ".git").exists():
    candidate = Path.home() / "pokeemerald-expansion"
    if (candidate / ".git").exists():
        repo = candidate
    else:
        sys.exit("ERRO: rode dentro de ~/pokeemerald-expansion")

pory = repo / "data/maps/LavaridgeTown/scripts.pory"
if not pory.exists():
    sys.exit("ERRO: nao achei data/maps/LavaridgeTown/scripts.pory")

backup = pory.with_name(pory.name + ".bak_make_it_rain_v5")
if not backup.exists():
    shutil.copy2(pory, backup)
    print("Backup:", backup.relative_to(repo))

text = pory.read_text(errors="replace")

old = r'''	fadescreenspeed FADE_TO_BLACK, 8

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

	fadescreenspeed FADE_FROM_BLACK, 8'''

new = r'''	fadescreenspeed FADE_TO_BLACK, 8

	// Same order as the working stock-style examples:
	// set the hide flag FIRST, then remove the live objects.
	// This prevents the current-map object templates from recreating them.
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

	delay 2
	fadescreenspeed FADE_FROM_BLACK, 8'''

if old in text:
    text = text.replace(old, new, 1)
    print("Ordem corrigida: setflag -> removeobject x9.")
elif new in text:
    print("V5 ja estava aplicada.")
else:
    # More tolerant fallback: patch just the relevant event region.
    start = text.find("LavaridgeTown_EventScript_MakeItRain::")
    end = text.find("LavaridgeTown_EventScript_MakeItRainNoRainmaker::", start)
    if start < 0 or end < 0:
        sys.exit("ERRO: nao achei o evento MakeItRain.")

    block = text[start:end]

    # Remove any existing completion flag line from inside success path.
    block = block.replace("\tsetflag FLAG_MAKE_IT_RAIN\n", "")

    anchor = "\tfadescreenspeed FADE_TO_BLACK, 8\n"
    pos = block.find(anchor)
    if pos < 0:
        sys.exit("ERRO: nao achei fadescreenspeed FADE_TO_BLACK, 8.")

    insert_at = pos + len(anchor)
    block = (
        block[:insert_at]
        + "\n\t// Flag first, exactly like the working disappearance events.\n"
        + "\tsetflag FLAG_MAKE_IT_RAIN\n"
        + block[insert_at:]
    )

    # Add a tiny black-screen settle after the final removeobject if absent.
    last_remove = "\tremoveobject LOCALID_LAVARIDGE_RAIN_QUEUE_9\n"
    if last_remove in block and "\tdelay 2\n\tfadescreenspeed FADE_FROM_BLACK, 8" not in block:
        block = block.replace(
            last_remove,
            last_remove + "\n\tdelay 2\n",
            1,
        )

    text = text[:start] + block + text[end:]
    print("V5 aplicada via fallback no bloco MakeItRain.")

pory.write_text(text)

# Force script rebuild.
for rel in (
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
print("OK — V5 aplicada.")
print()
print("Agora a ordem e:")
print("  fadescreenspeed FADE_TO_BLACK, 8")
print("  setflag FLAG_MAKE_IT_RAIN")
print("  removeobject x9")
print("  delay 2")
print("  fadescreenspeed FADE_FROM_BLACK, 8")
print()
print("Nao mexi em:")
print("  - checagem Drizzle/Rain Dance")
print("  - WEATHER_RAIN")
print("  - dialogos")
print()
print("Agora rode:")
print("  make -j8")
