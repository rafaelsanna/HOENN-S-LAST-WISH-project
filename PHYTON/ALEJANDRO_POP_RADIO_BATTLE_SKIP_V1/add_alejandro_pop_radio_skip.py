#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from pathlib import Path
from datetime import datetime
import argparse
import shutil
import subprocess

SCRIPT_DIR = Path(__file__).resolve().parent
SCRIPT_REL = Path("data/maps/SlateportCity_OceanicMuseum_2F/scripts.pory")
SPECIALS_REL = Path("data/specials.inc")

def find_repo(explicit=None):
    if explicit:
        root = Path(explicit).expanduser().resolve()
        if not (root / SCRIPT_REL).is_file():
            raise SystemExit(f"Repo inválido: {root}")
        return root
    cur = Path.cwd().resolve()
    for root in [cur, *cur.parents]:
        if (root / SCRIPT_REL).is_file():
            return root
    raise SystemExit("Não encontrei a raiz do repo.")

def backup(path):
    outdir = SCRIPT_DIR / "backups"
    outdir.mkdir(parents=True, exist_ok=True)
    stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    out = outdir / f"{path.stem}_{stamp}{path.suffix}"
    shutil.copy2(path, out)
    return out

def patch_specials(text):
    if "def_special Special_IsRadioStationPlaying" in text:
        return text, False
    if not text.endswith("\n"):
        text += "\n"
    text += "\tdef_special Special_IsRadioStationPlaying\n"
    return text, True

def patch_script(text):
    changed = False

    old = '''\tapplymovement LOCALID_OCEANIC_MUSEUM_2F_ARCHIE, SlateportCity_OceanicMuseum_2F_Movement_ArchieApproachPlayer
\twaitmovement 0
\ttrainerbattle_no_intro TRAINER_ALEJANDRO_1, SlateportCity_OceanicMuseum_2F_Text_AlejandroDefeat
\tmsgbox SlateportCity_OceanicMuseum_2F_Text_AlejandroAfterBattle, MSGBOX_DEFAULT
\tclosemessage
\tsavebgm MUS_DUMMY
'''

    new = '''\tapplymovement LOCALID_OCEANIC_MUSEUM_2F_ARCHIE, SlateportCity_OceanicMuseum_2F_Movement_ArchieApproachPlayer
\twaitmovement 0
\tsetvar VAR_0x8004, 2 @ STATION_POP
\tspecial Special_IsRadioStationPlaying
\tgoto_if_eq VAR_RESULT, TRUE, SlateportCity_OceanicMuseum_2F_EventScript_AlejandroPopRadio
\ttrainerbattle_no_intro TRAINER_ALEJANDRO_1, SlateportCity_OceanicMuseum_2F_Text_AlejandroDefeat
\tmsgbox SlateportCity_OceanicMuseum_2F_Text_AlejandroAfterBattle, MSGBOX_DEFAULT
\tclosemessage
SlateportCity_OceanicMuseum_2F_EventScript_AlejandroContinue::
\tsavebgm MUS_DUMMY
'''

    if "goto_if_eq VAR_RESULT, TRUE, SlateportCity_OceanicMuseum_2F_EventScript_AlejandroPopRadio" not in text:
        if old not in text:
            raise SystemExit("Não encontrei o bloco exato da batalha do Alejandro.")
        text = text.replace(old, new, 1)
        changed = True

    if "SlateportCity_OceanicMuseum_2F_EventScript_AlejandroPopRadio::" not in text:
        anchor = "SlateportCity_OceanicMuseum_2F_EventScript_ReadyRegisterBirch::\n"
        if anchor not in text:
            raise SystemExit("Não encontrei ReadyRegisterBirch.")
        helper = '''SlateportCity_OceanicMuseum_2F_EventScript_AlejandroPopRadio::
\tmsgbox SlateportCity_OceanicMuseum_2F_Text_AlejandroLovesPop, MSGBOX_DEFAULT
\tclosemessage
\tgoto SlateportCity_OceanicMuseum_2F_EventScript_AlejandroContinue
\tend

'''
        text = text.replace(anchor, helper + anchor, 1)
        changed = True

    if "SlateportCity_OceanicMuseum_2F_Text_AlejandroLovesPop:" not in text:
        anchor = "///////////// ALEJANDRO PART\n\n"
        if anchor not in text:
            raise SystemExit("Não encontrei a seção ALEJANDRO PART.")
        dialogue = '''SlateportCity_OceanicMuseum_2F_Text_AlejandroLovesPop:
\t.string "ALEJANDRO: Wait... Is that POP\\n"
\t.string "you're listening to?\\p"
\t.string "Heh, I love POP.\\n"
\t.string "You've got really good taste.\\p"
\t.string "All right. Just this once,\\n"
\t.string "I'll let you off.$"

'''
        text = text.replace(anchor, anchor + dialogue, 1)
        changed = True

    return text, changed

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo")
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--compile", action="store_true")
    ap.add_argument("--jobs", type=int, default=8)
    args = ap.parse_args()

    repo = find_repo(args.repo)
    script_path = repo / SCRIPT_REL
    specials_path = repo / SPECIALS_REL

    if not specials_path.is_file():
        raise SystemExit(f"Não encontrei {SPECIALS_REL}")

    script_old = script_path.read_text(encoding="utf-8")
    specials_old = specials_path.read_text(encoding="utf-8")

    script_new, script_changed = patch_script(script_old)
    specials_new, specials_changed = patch_specials(specials_old)

    print("=== ALEJANDRO POP RADIO BATTLE SKIP V1 ===")
    print("Antes da batalha:")
    print(" - checa STATION_POP (ID 2)")
    print(" - POP tocando -> pula batalha e mostra fala especial")
    print(" - POP não tocando -> batalha e pós-batalha originais seguem iguais")
    print("")
    print("scripts.pory:", "mudaria" if script_changed else "já aplicado")
    print("specials.inc:", "mudaria" if specials_changed else "já aplicado")
    print("map.json/events.inc: não são alterados")

    if args.dry_run:
        print("\nDRY-RUN OK.")
        return 0

    if script_changed:
        print("Backup:", backup(script_path))
        script_path.write_text(script_new, encoding="utf-8", newline="\n")

    if specials_changed:
        print("Backup:", backup(specials_path))
        specials_path.write_text(specials_new, encoding="utf-8", newline="\n")

    if args.compile:
        cmd = ["make", f"-j{max(1, args.jobs)}"]
        print("\nExecutando:", " ".join(cmd))
        return subprocess.call(cmd, cwd=repo)

    print("\nPatch aplicado.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
