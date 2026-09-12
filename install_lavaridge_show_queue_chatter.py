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

for path in (map_path, pory_path):
    if not path.exists():
        sys.exit(f"ERRO: nao achei {path.relative_to(repo)}")

def backup(path):
    dst = path.with_name(path.name + ".bak_show_queue_dialogue")
    if not dst.exists():
        shutil.copy2(path, dst)
        print("Backup:", dst.relative_to(repo))

backup(map_path)
backup(pory_path)

# ------------------------------------------------------------
# 1) Detect the CURRENT queue by its stable local IDs.
#    This does not care whether there are 6, 7, 9, etc.
# ------------------------------------------------------------
data = json.loads(map_path.read_text())
objects = data.get("object_events", [])

queue_re = re.compile(r"^LOCALID_LAVARIDGE_RAIN_QUEUE_(\d+)$")
queue = []

for obj in objects:
    local_id = obj.get("local_id", "")
    m = queue_re.match(local_id)
    if m:
        queue.append((int(m.group(1)), obj))

queue.sort(key=lambda item: item[0])

if not queue:
    sys.exit(
        "ERRO: nao achei nenhum LOCALID_LAVARIDGE_RAIN_QUEUE_* no map.json.\n"
        "A V6 do evento precisa estar aplicada primeiro."
    )

print(f"Fila atual detectada: {len(queue)} NPC(s)")

alejandro = None
for num, obj in queue:
    gfx = obj.get("graphics_id")
    print(f"  NPC {num}: {gfx} @ ({obj.get('x')},{obj.get('y')})")
    if gfx == "OBJ_EVENT_GFX_ALEJANDRO":
        alejandro = (num, obj)

if alejandro is None:
    sys.exit(
        "ERRO: nao achei OBJ_EVENT_GFX_ALEJANDRO entre os NPCs da fila.\n"
        "Nao vou atribuir o dialogo especial ao NPC errado."
    )

if alejandro[0] != 2:
    print(
        f"AVISO: Alejandro esta como QUEUE_{alejandro[0]}, nao QUEUE_2.\n"
        "Vou dar o dialogo especial a ele pelo graphics_id, sem renumerar IDs."
    )
else:
    print("Alejandro confirmado como NPC 2.")

# We currently have six queue members in Rafael's debug/final layout.
# If the count changes later, extra members get a safe generic fan line.
normal_dialogues = {
    1: (
        "LavaridgeTown_Text_ShowQueue1",
        [
            "I love AMATERASU! I've been waiting\\n",
            "all day to see her perform!$",
        ],
    ),
    3: (
        "LavaridgeTown_Text_ShowQueue3",
        [
            "AMATERASU's songs are so good!\\n",
            "I hope she plays my favorite tonight!$",
        ],
    ),
    4: (
        "LavaridgeTown_Text_ShowQueue4",
        [
            "I heard AMATERASU is even better\\n",
            "live. This line is totally worth it!$",
        ],
    ),
    5: (
        "LavaridgeTown_Text_ShowQueue5",
        [
            "I've had AMATERASU's songs stuck\\n",
            "in my head all week. I can't wait!$",
        ],
    ),
    6: (
        "LavaridgeTown_Text_ShowQueue6",
        [
            "Almost there! I just hope I can get\\n",
            "close enough to the stage!$",
        ],
    ),
}

alejandro_text_label = "LavaridgeTown_Text_ShowQueueAlejandro"
alejandro_lines = [
    "Beat it! I'm off duty right now!\\p",
    "I can enjoy a show too, okay?\\p",
    "We'll settle things later...$",
]

# Assign one script to every current queue object.
# Alejandro always gets the unique script, regardless of local-id suffix.
script_entries = []
text_entries = []

for num, obj in queue:
    if obj.get("graphics_id") == "OBJ_EVENT_GFX_ALEJANDRO":
        script_label = "LavaridgeTown_EventScript_ShowQueueAlejandro"
        text_label = alejandro_text_label
        lines = alejandro_lines
    else:
        script_label = f"LavaridgeTown_EventScript_ShowQueue{num}"
        if num in normal_dialogues:
            text_label, lines = normal_dialogues[num]
        else:
            text_label = f"LavaridgeTown_Text_ShowQueue{num}"
            lines = [
                "I'm here for AMATERASU!\\n",
                "This show is going to be amazing!$",
            ]

    obj["script"] = script_label

    script_entries.append(
        f"""{script_label}::
\tmsgbox {text_label}, MSGBOX_NPC
\tend
"""
    )

    text_body = "\n".join(f'\t.string "{line}"' for line in lines)
    text_entries.append(f"""{text_label}:
{text_body}
""")

map_path.write_text(json.dumps(data, indent=2) + "\n")
print("map.json: scripts de conversa atribuidos aos NPCs da fila.")

# ------------------------------------------------------------
# 2) Add/replace the dialogue block INSIDE LavaridgeTown's raw block.
# ------------------------------------------------------------
pory = pory_path.read_text(errors="replace")

raw_open = pory.find("raw `")
raw_close = pory.rfind("`")
if raw_open < 0 or raw_close <= raw_open:
    sys.exit("ERRO: nao achei o grande bloco raw `...` em scripts.pory")

prefix = pory[:raw_open + len("raw `")]
body = pory[raw_open + len("raw `"):raw_close]
suffix = pory[raw_close:]

begin_marker = "// SHOW QUEUE CHATTER: BEGIN"
end_marker = "// SHOW QUEUE CHATTER: END"

new_block = (
    "\n"
    + begin_marker
    + "\n"
    + "// Short pre-show conversations for the Make It Rain queue.\n\n"
    + "\n".join(script_entries)
    + "\n"
    + "\n".join(text_entries)
    + "\n"
    + end_marker
    + "\n"
)

if begin_marker in body and end_marker in body:
    start = body.index(begin_marker)
    end = body.index(end_marker, start) + len(end_marker)
    body = body[:start] + new_block.strip("\n") + body[end:]
    print("scripts.pory: bloco de falas atualizado.")
else:
    body = body.rstrip() + "\n" + new_block
    print("scripts.pory: bloco de falas adicionado.")

pory_path.write_text(prefix + body + suffix)

# ------------------------------------------------------------
# 3) Force relevant map/script rebuild.
# ------------------------------------------------------------
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
print("============================================================")
print("SHOW QUEUE CHATTER instalado.")
print("============================================================")
print(f"NPCs com fala: {len(queue)}")
print(f"Alejandro: QUEUE_{alejandro[0]} / dialogo especial")
print()
print("Nao alterei:")
print("  - FLAG_MAKE_IT_RAIN")
print("  - checker de Drizzle/Rain Dance")
print("  - weather")
print("  - sistema que esconde a fila")
print("  - local IDs")
print()
print("Agora rode:")
print("  make -j8")
