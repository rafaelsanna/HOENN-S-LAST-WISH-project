#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from pathlib import Path
from datetime import datetime
import argparse
import json
import re
import shutil
import subprocess

SCRIPT_DIR = Path(__file__).resolve().parent

RIGHT_SCRIPT = "LavaridgeTown_EventScript_Renton_Likes_Metal_Right"
LEFT_SCRIPT  = "LavaridgeTown_EventScript_Renton_Likes_Metal_Left"

def find_repo(explicit=None):
    if explicit:
        root = Path(explicit).expanduser().resolve()
        if not (root / "data/maps/LavaridgeTown/scripts.pory").is_file():
            raise SystemExit(f"Repo inválido: {root}")
        return root

    cur = Path.cwd().resolve()
    for root in [cur, *cur.parents]:
        if (root / "data/maps/LavaridgeTown/scripts.pory").is_file():
            return root
    raise SystemExit("Não encontrei a raiz do repo com data/maps/LavaridgeTown/scripts.pory")

def patch_scripts(text):
    changed = False

    old_onframe = '''LavaridgeTown_OnFrame:
\tmap_script_2 VAR_LAVARIDGE_TOWN_STATE, 1, LavaridgeTown_EventScript_RivalGiveGoGoggles
\t.2byte 0
'''
    new_onframe = '''LavaridgeTown_OnFrame:
\tmap_script_2 VAR_LAVARIDGE_TOWN_STATE, 1, LavaridgeTown_EventScript_RivalGiveGoGoggles
\tmap_script_2 VAR_TEMP_1, 1, LavaridgeTown_EventScript_RentonMetalStartRight
\tmap_script_2 VAR_TEMP_1, 2, LavaridgeTown_EventScript_RentonMetalStartLeft
\t.2byte 0
'''
    onframe_chunk = text.split("LavaridgeTown_OnFrame:", 1)[1].split(".2byte 0", 1)[0]
    if "LavaridgeTown_EventScript_RentonMetalStartRight" not in onframe_chunk:
        if old_onframe not in text:
            raise SystemExit("Não encontrei LavaridgeTown_OnFrame no formato esperado.")
        text = text.replace(old_onframe, new_onframe, 1)
        changed = True

    start = text.find("LavaridgeTown_EventScript_Renton_Likes_Metal_Right::")
    cutscene = text.find("\tlockall", start)
    if start < 0 or cutscene < 0:
        raise SystemExit("Não encontrei o bloco atual do evento Renton.")

    if "LavaridgeTown_EventScript_RentonMetalStartRight::" not in text[start:cutscene]:
        prefix = text[:start]
        suffix = text[cutscene:]

        new_trigger_block = r'''LavaridgeTown_EventScript_Renton_Likes_Metal_Right::
	@ Immediate checker only: no wait/movement/cutscene here.
	goto_if_set FLAG_MAKE_IT_RAIN, LavaridgeTown_EventScript_RentonMetalNoAction
	goto_if_set FLAG_RENTON_LEFT, LavaridgeTown_EventScript_RentonMetalNoAction
	setvar VAR_0x8004, 8 @ STATION_ROCK_METAL
	special Special_IsRadioStationPlaying
	goto_if_eq VAR_RESULT, FALSE, LavaridgeTown_EventScript_RentonMetalNoAction
	setvar VAR_TEMP_1, 1 @ handoff: player is on the right trigger
	end

LavaridgeTown_EventScript_Renton_Likes_Metal_Left::
	@ Immediate checker only: no wait/movement/cutscene here.
	goto_if_set FLAG_MAKE_IT_RAIN, LavaridgeTown_EventScript_RentonMetalNoAction
	goto_if_set FLAG_RENTON_LEFT, LavaridgeTown_EventScript_RentonMetalNoAction
	setvar VAR_0x8004, 8 @ STATION_ROCK_METAL
	special Special_IsRadioStationPlaying
	goto_if_eq VAR_RESULT, FALSE, LavaridgeTown_EventScript_RentonMetalNoAction
	setvar VAR_TEMP_1, 2 @ handoff: player is on the left trigger
	end

LavaridgeTown_EventScript_RentonMetalStartRight::
	@ Disable both coord triggers before entering the real global cutscene.
	setvar VAR_TEMP_1, 3
	setvar VAR_0x8007, 1
	goto LavaridgeTown_EventScript_RentonMetalBegin
	end

LavaridgeTown_EventScript_RentonMetalStartLeft::
	@ Disable both coord triggers before entering the real global cutscene.
	setvar VAR_TEMP_1, 3
	setvar VAR_0x8007, 2
	goto LavaridgeTown_EventScript_RentonMetalBegin
	end

LavaridgeTown_EventScript_RentonMetalBegin::
'''
        text = prefix + new_trigger_block + suffix
        changed = True

    dialogue_anchor = '''\tsetflag FLAG_HIDE_LAVARIDGE_METAL_RENTON
\tsetvar VAR_0x8007, 0
\treleaseall
'''
    dialogue_repl = '''\tsetflag FLAG_HIDE_LAVARIDGE_METAL_RENTON
\tsetvar VAR_0x8007, 0
\tsetvar VAR_TEMP_1, 0
\treleaseall
'''
    if dialogue_anchor in text and "\tsetvar VAR_TEMP_1, 0\n\treleaseall" not in text:
        text = text.replace(dialogue_anchor, dialogue_repl, 1)
        changed = True

    text = text.replace(
        "// Both coordinate events use VAR_TEMP_1; flags are not valid trigger variables.",
        "// Coord triggers run immediately; VAR_TEMP_1 only hands off to the real cutscene."
    )

    return text, changed

def patch_map_json_text(text):
    data = json.loads(text)
    changed = False
    found = set()

    for ev in data.get("coord_events", []):
        script = ev.get("script")
        if script in (RIGHT_SCRIPT, LEFT_SCRIPT):
            found.add(script)
            if ev.get("var") != "TRIGGER_RUN_IMMEDIATELY":
                changed = True

    missing = {RIGHT_SCRIPT, LEFT_SCRIPT} - found
    if missing:
        raise SystemExit("Coord events do Renton não encontrados no map.json: " + ", ".join(sorted(missing)))

    if not changed:
        return text, False

    for script in (RIGHT_SCRIPT, LEFT_SCRIPT):
        pat = re.compile(
            r'(\{\s*"type"\s*:\s*"trigger".*?"var"\s*:\s*")VAR_TEMP_1(".*?"var_value"\s*:\s*"0".*?"script"\s*:\s*"'
            + re.escape(script) + r'"\s*\})',
            re.S
        )
        text2, n = pat.subn(r'\1TRIGGER_RUN_IMMEDIATELY\2', text, count=1)
        if n != 1:
            raise SystemExit(f"Não consegui alterar com segurança o coord event {script} no map.json.")
        text = text2

    return text, True

def patch_events_inc(text):
    changed = False
    replacements = [
        (
            "coord_event 8, 6, 3, VAR_TEMP_1, 0, " + RIGHT_SCRIPT,
            "coord_event 8, 6, 3, TRIGGER_RUN_IMMEDIATELY, 0, " + RIGHT_SCRIPT
        ),
        (
            "coord_event 6, 6, 3, VAR_TEMP_1, 0, " + LEFT_SCRIPT,
            "coord_event 6, 6, 3, TRIGGER_RUN_IMMEDIATELY, 0, " + LEFT_SCRIPT
        ),
    ]
    for old, new in replacements:
        if new in text:
            continue
        if old not in text:
            raise SystemExit("Não encontrei em events.inc: " + old)
        text = text.replace(old, new, 1)
        changed = True
    return text, changed

def backup_file(path):
    backup_dir = SCRIPT_DIR / "backups"
    backup_dir.mkdir(parents=True, exist_ok=True)
    stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    out = backup_dir / f"{path.stem}_{stamp}{path.suffix}"
    shutil.copy2(path, out)
    return out

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo")
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--compile", action="store_true")
    ap.add_argument("--jobs", type=int, default=8)
    args = ap.parse_args()

    repo = find_repo(args.repo)
    map_dir = repo / "data/maps/LavaridgeTown"
    scripts_path = map_dir / "scripts.pory"
    map_path = map_dir / "map.json"
    events_path = map_dir / "events.inc"

    scripts_old = scripts_path.read_text(encoding="utf-8")
    map_old = map_path.read_text(encoding="utf-8")

    scripts_new, scripts_changed = patch_scripts(scripts_old)
    map_new, map_changed = patch_map_json_text(map_old)

    events_old = events_new = None
    events_changed = False
    if events_path.is_file():
        events_old = events_path.read_text(encoding="utf-8")
        events_new, events_changed = patch_events_inc(events_old)

    print("=== LAVARIDGE RENTON TRIGGER SOFTLOCK FIX V1 ===")
    print("")
    print("Sem ROCK/METAL:")
    print("  coord trigger roda imediatamente -> check -> END -> jogador continua livre")
    print("")
    print("Com ROCK/METAL:")
    print("  coord trigger seta VAR_TEMP_1=1/2")
    print("  OnFrame inicia a cutscene normal")
    print("  cutscene seta VAR_TEMP_1=3 antes de lock/waits")
    print("")
    print("scripts.pory:", "mudaria" if scripts_changed else "já corrigido")
    print("map.json:    ", "mudaria" if map_changed else "já corrigido")
    if events_path.is_file():
        print("events.inc:  ", "mudaria" if events_changed else "já corrigido")

    if args.dry_run:
        print("\nDRY-RUN OK.")
        return 0

    for path, old, new, changed in [
        (scripts_path, scripts_old, scripts_new, scripts_changed),
        (map_path, map_old, map_new, map_changed),
    ]:
        if changed:
            print("Backup:", backup_file(path))
            path.write_text(new, encoding="utf-8", newline="\n")

    if events_path.is_file() and events_changed:
        print("Backup:", backup_file(events_path))
        events_path.write_text(events_new, encoding="utf-8", newline="\n")

    if args.compile:
        cmd = ["make", f"-j{max(1, args.jobs)}"]
        print("\nExecutando:", " ".join(cmd))
        return subprocess.call(cmd, cwd=repo)

    print("\nPatch aplicado.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
