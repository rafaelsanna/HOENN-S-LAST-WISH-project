#!/usr/bin/env python3
from pathlib import Path
import json
import sys

root = Path.cwd()
map_path = root / "data/maps/MOSSDEEP01/map.json"
pory_path = root / "data/maps/MOSSDEEP01/scripts.pory"
ids_path = root / "include/constants/map_event_ids.h"

for p in (map_path, pory_path, ids_path):
    if not p.exists():
        raise SystemExit(f"ERRO: rode este script na raiz do pokeemerald-expansion. Não achei: {p}")

# Restore symbolic IDs in the constants header.
ids = ids_path.read_text(encoding="utf-8")
anchor = "#define LOCALID_MINER_WIFE 46"
if "LOCALID_LOST_FATHER" not in ids or "LOCALID_LOST_MOTHER" not in ids:
    if anchor not in ids:
        raise SystemExit("ERRO: não achei LOCALID_MINER_WIFE 46 em map_event_ids.h")
    insert = (
        anchor
        + "\n#define LOCALID_LOST_FATHER 47"
        + "\n#define LOCALID_LOST_MOTHER 48"
    )
    ids = ids.replace(anchor, insert, 1)
    ids_path.write_text(ids, encoding="utf-8")

# Restore the two map objects and their scripts.
data = json.loads(map_path.read_text(encoding="utf-8"))
father = mother = False
for obj in data.get("object_events", []):
    if obj.get("graphics_id") == "OBJ_EVENT_GFX_MAN_1" and obj.get("x") == 41 and obj.get("y") == 30:
        obj["local_id"] = "LOCALID_LOST_FATHER"
        obj["script"] = "MOSSDEEP01_EventScript_LostFather"
        father = True
    elif obj.get("graphics_id") == "OBJ_EVENT_GFX_WOMAN_2" and obj.get("x") == 40 and obj.get("y") == 30:
        obj["local_id"] = "LOCALID_LOST_MOTHER"
        obj["script"] = "MOSSDEEP01_EventScript_LostMother"
        mother = True

if not (father and mother):
    raise SystemExit("ERRO: não localizei os dois NPCs da família nas coordenadas esperadas (41,30) e (40,30).")

map_path.write_text(json.dumps(data, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")

# Make the mother's branch explicit (safe/idempotent).
pory = pory_path.read_text(encoding="utf-8")
needle = (
    "MOSSDEEP01_EventScript_LostMother::\n"
    "\tlockall\n"
    "\tgoto_if_set FLAG_MOSSDEEP_LOST_FAMILY_RESCUED, MOSSDEEP01_EventScript_LostMotherThanks\n"
    "\tfaceplayer\n"
    "\tmsgbox MOSSDEEP01_Text_LostMother, MSGBOX_DEFAULT\n"
    "\tclosemessage\n\n"
    "MOSSDEEP01_EventScript_RescueLostFamily::"
)
replacement = (
    "MOSSDEEP01_EventScript_LostMother::\n"
    "\tlockall\n"
    "\tgoto_if_set FLAG_MOSSDEEP_LOST_FAMILY_RESCUED, MOSSDEEP01_EventScript_LostMotherThanks\n"
    "\tfaceplayer\n"
    "\tmsgbox MOSSDEEP01_Text_LostMother, MSGBOX_DEFAULT\n"
    "\tclosemessage\n"
    "\tgoto MOSSDEEP01_EventScript_RescueLostFamily\n\n"
    "MOSSDEEP01_EventScript_RescueLostFamily::"
)
if needle in pory:
    pory = pory.replace(needle, replacement, 1)
    pory_path.write_text(pory, encoding="utf-8")

print("OK: MOSSDEEP01 Lost Family restaurada.")
print("Agora rode: make -j8")
