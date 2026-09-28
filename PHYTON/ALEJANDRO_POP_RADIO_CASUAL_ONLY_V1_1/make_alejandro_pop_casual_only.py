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

HARD_VALUE = 2  # DIFFICULTY_HARD in pokeemerald-expansion


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
    # Script_GetDifficulty is a native no-argument function that writes the
    # current difficulty to VAR_RESULT. Register it as a callable special.
    if "def_special Script_GetDifficulty" in text:
        return text, False

    if not text.endswith("\n"):
        text += "\n"
    text += "\tdef_special Script_GetDifficulty, requests_effects=1\n"
    return text, True


def patch_script(text):
    # This V1.1 is intentionally layered on top of the working Alejandro POP V1.
    if "SlateportCity_OceanicMuseum_2F_EventScript_AlejandroPopRadio::" not in text:
        raise SystemExit(
            "A ALEJANDRO_POP_RADIO_BATTLE_SKIP_V1 não parece estar aplicada. "
            "Aplique a V1 primeiro."
        )

    if "SlateportCity_OceanicMuseum_2F_EventScript_AlejandroBattleNormally::" in text:
        return text, False

    old = '''\tsetvar VAR_0x8004, 2 @ STATION_POP
\tspecial Special_IsRadioStationPlaying
\tgoto_if_eq VAR_RESULT, TRUE, SlateportCity_OceanicMuseum_2F_EventScript_AlejandroPopRadio
\ttrainerbattle_no_intro TRAINER_ALEJANDRO_1, SlateportCity_OceanicMuseum_2F_Text_AlejandroDefeat
'''

    new = f'''\t@ Radio mercy is CASUAL-only. HARD skips the radio check entirely.
\tspecial Script_GetDifficulty
\tgoto_if_eq VAR_RESULT, {HARD_VALUE}, SlateportCity_OceanicMuseum_2F_EventScript_AlejandroBattleNormally @ DIFFICULTY_HARD
\tsetvar VAR_0x8004, 2 @ STATION_POP
\tspecial Special_IsRadioStationPlaying
\tgoto_if_eq VAR_RESULT, TRUE, SlateportCity_OceanicMuseum_2F_EventScript_AlejandroPopRadio
SlateportCity_OceanicMuseum_2F_EventScript_AlejandroBattleNormally::
\ttrainerbattle_no_intro TRAINER_ALEJANDRO_1, SlateportCity_OceanicMuseum_2F_Text_AlejandroDefeat
'''

    if old not in text:
        raise SystemExit(
            "Não encontrei o bloco POP da V1 no formato esperado. "
            "Não alterei nada."
        )

    return text.replace(old, new, 1), True


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

    print("=== ALEJANDRO POP - CASUAL ONLY V1.1 ===")
    print("")
    print("CASUAL:")
    print("  checa POP; se POP estiver tocando, Alejandro poupa a batalha")
    print("HARD:")
    print("  ignora completamente o check da rádio e vai direto para a batalha")
    print("")
    print("scripts.pory:", "mudaria" if script_changed else "já aplicado")
    print("specials.inc:", "mudaria" if specials_changed else "já aplicado")

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
