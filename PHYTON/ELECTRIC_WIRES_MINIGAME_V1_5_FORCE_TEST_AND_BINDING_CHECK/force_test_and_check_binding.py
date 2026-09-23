#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from pathlib import Path
from datetime import datetime
import argparse, json, shutil, subprocess, sys

SCRIPT_DIR = Path(__file__).resolve().parent

BROKEN_SPECIAL = "def_special StartElectricWiresGame, waitstate=1"
PLAIN_SPECIAL  = "def_special StartElectricWiresGame"

OLD_BLOCK = """LittlerootTown_EventScript_Poochyena::
\tlock
\tfaceplayer
\tspecial StartElectricWiresGame
\tplaymoncry SPECIES_EEVEE, CRY_MODE_NORMAL
\twaitmoncry
\trelease
\tend"""

NEW_BLOCK = """LittlerootTown_EventScript_Poochyena::
\tlock
\tfaceplayer
\tcallnative StartElectricWiresGame
\twaitstate
\trelease
\tend"""

def find_repo(explicit=None):
    if explicit:
        root = Path(explicit).expanduser().resolve()
        if not (root / "data/maps/LittlerootTown/scripts.pory").is_file():
            raise SystemExit(f"Repo inválido: {root}")
        return root

    cur = Path.cwd().resolve()
    candidates = [cur, *cur.parents, SCRIPT_DIR.parent, SCRIPT_DIR.parent.parent]
    seen = set()
    for root in candidates:
        root = root.resolve()
        if root in seen:
            continue
        seen.add(root)
        if (root / "data/maps/LittlerootTown/scripts.pory").is_file():
            return root
    raise SystemExit("Não encontrei a raiz do repo.")

def object_summary(map_json):
    try:
        data = json.loads(map_json.read_text(encoding="utf-8"))
    except Exception as e:
        raise SystemExit(f"Falha lendo {map_json}: {e}")

    objs = data.get("object_events", [])
    rows = []
    for i, obj in enumerate(objs):
        rows.append({
            "index": i,
            "local_id": obj.get("local_id", "-"),
            "gfx": obj.get("graphics_id", "-"),
            "x": obj.get("x", "?"),
            "y": obj.get("y", "?"),
            "script": obj.get("script", "0x0"),
        })
    return rows

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo")
    ap.add_argument("--compile", action="store_true")
    ap.add_argument("--jobs", type=int, default=8)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    repo = find_repo(args.repo)
    specials = repo / "data/specials.inc"
    pory = repo / "data/maps/LittlerootTown/scripts.pory"
    map_json = repo / "data/maps/LittlerootTown/map.json"

    if not specials.is_file():
        raise SystemExit(f"Não encontrei {specials}")
    if not map_json.is_file():
        raise SystemExit(f"Não encontrei {map_json}")

    sp = specials.read_text(encoding="utf-8")
    po = pory.read_text(encoding="utf-8")

    sp_changed = False
    if BROKEN_SPECIAL in sp:
        sp = sp.replace(BROKEN_SPECIAL, PLAIN_SPECIAL, 1)
        sp_changed = True
    elif PLAIN_SPECIAL not in sp:
        raise SystemExit("StartElectricWiresGame não está registrado em data/specials.inc")

    pory_changed = False
    if NEW_BLOCK in po:
        pass
    elif OLD_BLOCK in po:
        po = po.replace(OLD_BLOCK, NEW_BLOCK, 1)
        pory_changed = True
    else:
        raise SystemExit(
            "Não encontrei o bloco Poochyena esperado.\n"
            "Rode:\n"
            "  grep -n -A10 -B2 'LittlerootTown_EventScript_Poochyena' data/maps/LittlerootTown/scripts.pory"
        )

    rows = object_summary(map_json)
    bound = [r for r in rows if r["script"] == "LittlerootTown_EventScript_Poochyena"]

    print("=== ELECTRIC WIRES TEST CHECK ===")
    print("specials.inc:", "corrigir waitstate=1" if sp_changed else "OK")
    print("scripts.pory:", "trocar special -> callnative" if pory_changed else "OK")
    print("")
    print("Objetos ligados a LittlerootTown_EventScript_Poochyena:", len(bound))

    if bound:
        for r in bound:
            print(f'  index={r["index"]} local_id={r["local_id"]} gfx={r["gfx"]} pos=({r["x"]},{r["y"]})')
    else:
        print("")
        print("ERRO DE BINDING: nenhum object_event do map.json usa esse script.")
        print("Então falar com o NPC NÃO TEM COMO chamar o minigame.")
        print("")
        print("Object events atuais de LittlerootTown:")
        for r in rows:
            print(f'  [{r["index"]}] local_id={r["local_id"]} gfx={r["gfx"]} pos=({r["x"]},{r["y"]}) -> {r["script"]}')
        print("")
        print("Escolha qual é o NPC de teste e mude o campo \"script\" dele no map.json para:")
        print('  "LittlerootTown_EventScript_Poochyena"')
        print("")
        print("Não vou alterar um NPC aleatório automaticamente.")
        return 2

    if args.dry_run:
        print("")
        print("DRY-RUN OK: o NPC está realmente apontando para o script de teste.")
        print("O script de teste ficará:")
        print(NEW_BLOCK)
        return 0

    backup_dir = SCRIPT_DIR / "backups"
    backup_dir.mkdir(parents=True, exist_ok=True)
    stamp = datetime.now().strftime("%Y%m%d_%H%M%S")

    if sp_changed:
        b = backup_dir / f"specials_{stamp}.inc"
        shutil.copy2(specials, b)
        specials.write_text(sp, encoding="utf-8", newline="\n")
        specials.touch()
        print("specials.inc corrigido. Backup:", b)

    if pory_changed:
        b = backup_dir / f"LittlerootTown_scripts_{stamp}.pory"
        shutil.copy2(pory, b)
        pory.write_text(po, encoding="utf-8", newline="\n")
        pory.touch()
        print("scripts.pory corrigido. Backup:", b)

    print("")
    print("Binding confirmado. NPC realmente chama LittlerootTown_EventScript_Poochyena.")
    print("Teste usa callnative + waitstate.")

    if args.compile:
        cmd = ["make", f"-j{max(1,args.jobs)}"]
        print("\nExecutando:", " ".join(cmd))
        return subprocess.call(cmd, cwd=repo)

    print("\nCompile com: make -j8")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
