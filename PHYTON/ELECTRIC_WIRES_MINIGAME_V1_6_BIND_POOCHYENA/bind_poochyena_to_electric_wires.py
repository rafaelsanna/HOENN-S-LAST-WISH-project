#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from pathlib import Path
from datetime import datetime
import argparse
import json
import shutil
import subprocess

SCRIPT_DIR = Path(__file__).resolve().parent

TARGET_GFX = "OBJ_EVENT_GFX_SPECIES(POOCHYENA)"
OLD_SCRIPT = "EventScript_OverworldPokemonCry_POOCHYENA"
NEW_SCRIPT = "LittlerootTown_EventScript_Poochyena"

def find_repo(explicit=None):
    if explicit:
        root = Path(explicit).expanduser().resolve()
        if not (root / "data/maps/LittlerootTown/map.json").is_file():
            raise SystemExit(f"Repo inválido: {root}")
        return root

    cur = Path.cwd().resolve()
    candidates = [cur, *cur.parents, SCRIPT_DIR.parent.resolve(), SCRIPT_DIR.parent.parent.resolve()]
    seen = set()
    for root in candidates:
        root = root.resolve()
        if root in seen:
            continue
        seen.add(root)
        if (root / "data/maps/LittlerootTown/map.json").is_file():
            return root

    raise SystemExit("Não encontrei a raiz do repo.")

def find_target_object(data):
    matches = []
    for i, obj in enumerate(data.get("object_events", [])):
        if obj.get("graphics_id") == TARGET_GFX:
            matches.append((i, obj))

    if len(matches) != 1:
        raise SystemExit(
            f"Esperava exatamente 1 Poochyena em LittlerootTown, encontrei {len(matches)}."
        )
    return matches[0]

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo")
    ap.add_argument("--compile", action="store_true")
    ap.add_argument("--jobs", type=int, default=8)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    repo = find_repo(args.repo)
    map_path = repo / "data/maps/LittlerootTown/map.json"
    pory_path = repo / "data/maps/LittlerootTown/scripts.pory"

    data = json.loads(map_path.read_text(encoding="utf-8"))
    index, obj = find_target_object(data)

    current = obj.get("script")
    if current == NEW_SCRIPT:
        changed = False
    elif current == OLD_SCRIPT:
        changed = True
    else:
        raise SystemExit(
            "O Poochyena foi encontrado, mas o script atual é inesperado:\n"
            f"  index={index}\n"
            f"  script={current}\n"
            "Não vou sobrescrever automaticamente."
        )

    if NEW_SCRIPT not in pory_path.read_text(encoding="utf-8"):
        raise SystemExit(
            f"Não encontrei {NEW_SCRIPT} em scripts.pory.\n"
            "O bloco do minigame precisa existir antes do binding."
        )

    print("=== POOCHYENA BINDING FIX ===")
    print(f"object index: {index}")
    print(f"gfx: {obj.get('graphics_id')}")
    print(f"pos: ({obj.get('x')},{obj.get('y')})")
    print(f"script atual: {current}")
    print(f"script novo:  {NEW_SCRIPT}")

    if args.dry_run:
        print("")
        print("DRY-RUN OK.")
        print(" map.json:", "mudaria" if changed else "já correto")
        return 0

    if changed:
        backup_dir = SCRIPT_DIR / "backups"
        backup_dir.mkdir(parents=True, exist_ok=True)
        stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        backup = backup_dir / f"LittlerootTown_map_{stamp}.json"
        shutil.copy2(map_path, backup)

        data["object_events"][index]["script"] = NEW_SCRIPT
        map_path.write_text(
            json.dumps(data, indent=2, ensure_ascii=False) + "\n",
            encoding="utf-8",
            newline="\n",
        )
        map_path.touch()

        print("")
        print("Binding aplicado.")
        print("Backup:", backup)
    else:
        print("")
        print("Binding já estava aplicado.")

    print("")
    print("Agora falar com o Poochyena em LittlerootTown chama:")
    print("  LittlerootTown_EventScript_Poochyena")
    print("que já está com:")
    print("  callnative StartElectricWiresGame")
    print("  waitstate")

    if args.compile:
        cmd = ["make", f"-j{max(1, args.jobs)}"]
        print("\nExecutando:", " ".join(cmd))
        return subprocess.call(cmd, cwd=repo)

    print("\nCompile com:")
    print("  make -j8")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
