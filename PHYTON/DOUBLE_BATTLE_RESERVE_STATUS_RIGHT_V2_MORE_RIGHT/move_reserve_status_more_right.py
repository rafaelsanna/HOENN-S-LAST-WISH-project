#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from pathlib import Path
from datetime import datetime
import argparse
import shutil
import subprocess

SCRIPT_DIR = Path(__file__).resolve().parent

ORIGINAL = """static void CreatePartyMonStatusSprite(struct Pokemon *mon, struct PartyMenuBox *menuBox)
{
    if (GetMonData(mon, MON_DATA_SPECIES) != SPECIES_NONE)
    {
        menuBox->statusSpriteId = CreateSprite(&gSpriteTemplate_StatusIcons, menuBox->spriteCoords[4], menuBox->spriteCoords[5], 0);
        SetPartyMonAilmentGfx(mon, menuBox);
    }
}"""

V1 = """static void CreatePartyMonStatusSprite(struct Pokemon *mon, struct PartyMenuBox *menuBox)
{
    if (GetMonData(mon, MON_DATA_SPECIES) != SPECIES_NONE)
    {
        s16 statusX = menuBox->spriteCoords[4];

        // HLW DOUBLE BATTLE RESERVE STATUS RIGHT V1
        // Only in the in-battle DOUBLE party screen:
        // slots 0-1 are the two active/main Pokémon on the left;
        // slots 2-5 are reserve/non-main Pokémon on the right.
        //
        // Move ONLY reserve status badges to the right so BRN/PSN/PAR/etc.
        // stop covering the Lv text. No window/text/HP/icon geometry changes.
        if (IsBattleDoublePartyMenu())
        {
            u32 slot = menuBox - sPartyMenuBoxes;

            if (slot >= 2 && slot < PARTY_SIZE)
                statusX += 16;
        }

        menuBox->statusSpriteId = CreateSprite(&gSpriteTemplate_StatusIcons,
                                               statusX,
                                               menuBox->spriteCoords[5],
                                               0);
        SetPartyMonAilmentGfx(mon, menuBox);
    }
}"""

V2 = """static void CreatePartyMonStatusSprite(struct Pokemon *mon, struct PartyMenuBox *menuBox)
{
    if (GetMonData(mon, MON_DATA_SPECIES) != SPECIES_NONE)
    {
        s16 statusX = menuBox->spriteCoords[4];

        // HLW DOUBLE BATTLE RESERVE STATUS RIGHT V2
        // Same idea as V1, but push the reserve status badges even farther right
        // so they do not sit under the HP digits either.
        if (IsBattleDoublePartyMenu())
        {
            u32 slot = menuBox - sPartyMenuBoxes;

            if (slot >= 2 && slot < PARTY_SIZE)
                statusX += 32;
        }

        menuBox->statusSpriteId = CreateSprite(&gSpriteTemplate_StatusIcons,
                                               statusX,
                                               menuBox->spriteCoords[5],
                                               0);
        SetPartyMonAilmentGfx(mon, menuBox);
    }
}"""

def find_repo(explicit=None):
    if explicit:
        root = Path(explicit).expanduser().resolve()
        if not (root / "src/party_menu.c").is_file():
            raise SystemExit(f"Repo inválido: {root}")
        return root

    candidates = [Path.cwd().resolve(), SCRIPT_DIR.parent.resolve(), SCRIPT_DIR.parent.parent.resolve()]
    cur = Path.cwd().resolve()
    for _ in range(8):
        candidates.append(cur)
        if cur.parent == cur:
            break
        cur = cur.parent

    seen = set()
    for root in candidates:
        if root in seen:
            continue
        seen.add(root)
        if (root / "src/party_menu.c").is_file():
            return root

    raise SystemExit("Não encontrei a raiz do repo. Use --repo /caminho/do/repo.")

def patch_text(text):
    if "HLW DOUBLE BATTLE RESERVE STATUS RIGHT V2" in text:
        return text, False

    if V1 in text:
        return text.replace(V1, V2, 1), True

    if ORIGINAL in text:
        return text.replace(ORIGINAL, V2, 1), True

    raise SystemExit(
        "Não encontrei nem a função original nem a V1.\n"
        "Se quiser, me manda:\n"
        "  grep -n -A25 -B5 'CreatePartyMonStatusSprite(struct Pokemon' src/party_menu.c"
    )

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo")
    ap.add_argument("--compile", action="store_true")
    ap.add_argument("--jobs", type=int, default=8)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    repo = find_repo(args.repo)
    target = repo / "src/party_menu.c"
    text = target.read_text(encoding="utf-8")
    new_text, changed = patch_text(text)

    if args.dry_run:
        print("DRY-RUN OK.")
        print(" party_menu.c:", "mudaria" if changed else "já aplicado")
        print(" alteração única: status dos slots 2-5 em doubles -> +32 px no X")
        return 0

    if changed:
        backup_dir = SCRIPT_DIR / "backups"
        backup_dir.mkdir(parents=True, exist_ok=True)
        stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        backup = backup_dir / f"party_menu_{stamp}.c"
        shutil.copy2(target, backup)
        target.write_text(new_text, encoding="utf-8", newline="\n")
        target.touch()
        print("Fix V2 aplicado.")
        print("Backup:", backup)
    else:
        print("Fix V2 já parece aplicado.")

    print("")
    print("Mudança ÚNICA:")
    print(" - doubles battle party menu")
    print(" - slots principais 0-1: intocados")
    print(" - slots reserva 2-5: status +32 px para a direita")
    print(" - nenhuma mudança em nome/Lv/HP/barra/windows/sprites do Pokémon")

    if args.compile:
        cmd = ["make", f"-j{max(1, args.jobs)}"]
        print("\nExecutando:", " ".join(cmd))
        return subprocess.call(cmd, cwd=repo)

    print("\nCompile com:")
    print("  make -j8")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
