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
pory_path = repo / "data/maps/LavaridgeTown/scripts.pory"
c_path = repo / "src/field_specials.c"
specials_path = repo / "data/specials.inc"

for p in (map_path, pory_path, c_path, specials_path):
    if not p.exists():
        sys.exit(f"ERRO: nao achei {p.relative_to(repo)}")

def backup(path):
    dst = path.with_name(path.name + ".bak_make_it_rain_v6")
    if not dst.exists():
        shutil.copy2(path, dst)
        print("Backup:", dst.relative_to(repo))

for p in (map_path, pory_path, c_path, specials_path):
    backup(p)

# ============================================================
# 1) Discover current queue directly from map.json.
# ============================================================
data = json.loads(map_path.read_text())
objects = data.get("object_events", [])

queue = []
for obj in objects:
    if obj.get("flag") == "FLAG_MAKE_IT_RAIN":
        local_id = obj.get("local_id")
        if not local_id:
            sys.exit("ERRO: achei NPC da fila sem local_id.")
        queue.append(
            (
                local_id,
                obj.get("graphics_id"),
                obj.get("x"),
                obj.get("y"),
            )
        )

if not queue:
    sys.exit(
        "ERRO: nao achei nenhum object_event com flag FLAG_MAKE_IT_RAIN.\n"
        "Marque os NPCs da fila com essa flag no Porymap."
    )

def queue_num(item):
    m = re.search(r'_QUEUE_(\d+)$', item[0])
    return int(m.group(1)) if m else 999

queue.sort(key=queue_num)
local_ids = [x[0] for x in queue]

print()
print(f"Fila atual detectada: {len(queue)} NPC(s)")
for local_id, gfx, x, y in queue:
    print(f"  {local_id:38s} {gfx} @ ({x},{y})")

if len(queue) != 6:
    print()
    print(f"AVISO: detectei {len(queue)} NPCs, nao 6.")
    print("Vou usar EXATAMENTE o que estiver marcado com FLAG_MAKE_IT_RAIN.")

# ============================================================
# 2) Add/update C special that hides LIVE sprites immediately
#    and then removes the ObjectEvents.
# ============================================================
c_text = c_path.read_text(errors="replace")

needed = [
    '#include "event_object_movement.h"',
    '#include "sprite.h"',
    '#include "constants/map_event_ids.h"',
]

for inc in needed:
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

array_lines = "\n".join(f"        {lid}," for lid in local_ids)

hide_func = f'''void Special_HideLavaridgeMakeItRainQueueNow(void)
{{
    static const u8 sQueueLocalIds[] =
    {{
{array_lines}
    }};
    u8 i;

    for (i = 0; i < ARRAY_COUNT(sQueueLocalIds); i++)
    {{
        u8 objectEventId;

        if (!TryGetObjectEventIdByLocalIdAndMap(
                sQueueLocalIds[i],
                gSaveBlock1Ptr->location.mapNum,
                gSaveBlock1Ptr->location.mapGroup,
                &objectEventId))
        {{
            struct ObjectEvent *objectEvent = &gObjectEvents[objectEventId];

            // Force the currently loaded sprite invisible immediately.
            objectEvent->invisible = TRUE;

            if (objectEvent->spriteId < MAX_SPRITES)
                gSprites[objectEvent->spriteId].invisible = TRUE;
        }}

        // Then remove the live ObjectEvent itself.
        RemoveObjectEventByLocalIdAndMap(
            sQueueLocalIds[i],
            gSaveBlock1Ptr->location.mapNum,
            gSaveBlock1Ptr->location.mapGroup
        );
    }}
}}'''

span = function_span(c_text, "void Special_HideLavaridgeMakeItRainQueueNow(void)")
if span:
    s, e = span
    c_text = c_text[:s] + hide_func + c_text[e:]
    print("field_specials.c: hide/removal special atualizado para fila atual.")
else:
    c_text = c_text.rstrip() + "\n\n" + hide_func + "\n"
    print("field_specials.c: hide/removal special adicionado.")

c_path.write_text(c_text)

# ============================================================
# 3) Register special.
# ============================================================
specials = specials_path.read_text(errors="replace")
special_name = "Special_HideLavaridgeMakeItRainQueueNow"

if not re.search(rf'\bdef_special\s+{re.escape(special_name)}\b', specials):
    specials = specials.rstrip() + f"\n\tdef_special {special_name}\n"
    specials_path.write_text(specials)
    print("data/specials.inc: special registrado.")
else:
    print("data/specials.inc: special ja registrado.")

# ============================================================
# 4) Rewrite only the queue-dependent lines in MakeItRain.
#    Checker, weather, dialogue remain untouched.
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
    sys.exit("ERRO: nao achei o bloco principal MakeItRain.")

block = body[start:end]

# Remove old exclamation references, including obsolete 7/8/9.
block = re.sub(
    r'^[ \t]*applymovement LOCALID_LAVARIDGE_RAIN_QUEUE_\d+, Common_Movement_ExclamationMark[ \t]*\n',
    '',
    block,
    flags=re.M,
)

exclaims = "\n".join(
    f"\tapplymovement {lid}, Common_Movement_ExclamationMark"
    for lid in local_ids
)

playse = "\tplayse SE_PIN\n"
if playse not in block:
    sys.exit("ERRO: nao achei playse SE_PIN no evento.")
block = block.replace(playse, playse + exclaims + "\n", 1)

# Remove all old queue removals/custom queue specials.
block = re.sub(
    r'^[ \t]*removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_\d+[ \t]*\n',
    '',
    block,
    flags=re.M,
)
block = re.sub(
    r'^[ \t]*special Special_RemoveLavaridgeMakeItRainQueue[ \t]*\n',
    '',
    block,
    flags=re.M,
)
block = re.sub(
    r'^[ \t]*special Special_HideLavaridgeMakeItRainQueueNow[ \t]*\n',
    '',
    block,
    flags=re.M,
)

flag_line = "\tsetflag FLAG_MAKE_IT_RAIN\n"

# Normalize to exactly one flag in this success block.
block = block.replace(flag_line, "")
fade = "\tfadescreenspeed FADE_TO_BLACK, 8\n"
if fade not in block:
    sys.exit("ERRO: nao achei fadescreenspeed FADE_TO_BLACK, 8.")

replacement = (
    fade
    + "\n"
    + flag_line
    + "\tspecial Special_HideLavaridgeMakeItRainQueueNow\n"
)
block = block.replace(fade, replacement, 1)

body = body[:start] + block + body[end:]
pory_path.write_text(prefix + body + suffix)

print("scripts.pory:")
print(f"  exclamacoes atuais: {len(local_ids)}")
print("  queue_7/8/9 obsoletas: removidas se nao existem")
print("  setflag -> hide live sprite -> RemoveObjectEvent: OK")

# ============================================================
# 5) Force rebuild.
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
    p = repo / rel
    if p.exists():
        p.unlink()
        print("Rebuild:", rel)

print()
print("============================================================")
print("MAKE IT RAIN V6 aplicado.")
print("============================================================")
print(f"Fila detectada automaticamente: {len(local_ids)} NPCs")
print()
print("Resolve:")
print("  1) build nao referencia mais NPCs removidos da fila")
print("  2) sprites da fila somem IMEDIATAMENTE no mapa atual")
print("  3) ObjectEvents sao removidos logo depois")
print("  4) FLAG_MAKE_IT_RAIN preserva o estado ao recarregar o mapa")
print()
print("Nao alterei:")
print("  - checker Drizzle/Rain Dance")
print("  - weather")
print("  - dialogos")
print()
print("Agora rode:")
print("  make -j8")
