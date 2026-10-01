#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from pathlib import Path
from datetime import datetime
import argparse
import re
import shutil
import subprocess

SCRIPT_DIR = Path(__file__).resolve().parent
TARGET_REL = Path("src/party_menu.c")

PROTO = "static void CB2_ReturnToPartyMenuUsingRareCandy(void);"

OLD_CALLBACK = '''static void CB2_ReturnToPartyMenuUsingRareCandy(void)
{
    gItemUseCB = ItemUseCB_RareCandy;
    SetMainCallback2(CB2_ShowPartyMenuForItemUse);
}
'''

NEW_CALLBACK = '''static void CB2_ReturnToPartyMenuUsingRareCandy(void)
{
    // EvolutionScene returns through gCB2_AfterEvolution without resetting
    // gMain.state. Party Menu initialization must restart at state 0.
    gMain.state = 0;
    gItemUseCB = ItemUseCB_RareCandy;
    SetMainCallback2(CB2_ShowPartyMenuForItemUse);
}
'''

OLD_DIRECT_EVO = '''            FreePartyPointers();
            gCB2_AfterEvolution = gPartyMenu.exitCallback;
            BeginEvolutionScene(mon, targetSpecies, canStopEvo, gPartyMenu.slotId);
            DestroyTask(taskId);
'''

NEW_DIRECT_EVO = '''            // Preserve continuous Rare/Infinite Candy use in this evolution path too.
            bool8 keepUsingLevelUpItem = CanKeepUsingLevelUpItem();

            FreePartyPointers();
            if (keepUsingLevelUpItem)
                gCB2_AfterEvolution = CB2_ReturnToPartyMenuUsingRareCandy;
            else
                gCB2_AfterEvolution = gPartyMenu.exitCallback;
            BeginEvolutionScene(mon, targetSpecies, canStopEvo, gPartyMenu.slotId);
            DestroyTask(taskId);
'''

def find_repo(explicit=None):
    if explicit:
        root = Path(explicit).expanduser().resolve()
        if not (root / TARGET_REL).is_file():
            raise SystemExit(f"Repo inválido: {root}")
        return root

    cur = Path.cwd().resolve()
    for root in [cur, *cur.parents]:
        if (root / TARGET_REL).is_file():
            return root
    raise SystemExit("Não encontrei a raiz do pokeemerald-expansion.")

def backup(path):
    outdir = SCRIPT_DIR / "backups"
    outdir.mkdir(parents=True, exist_ok=True)
    stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    out = outdir / f"party_menu_{stamp}.c"
    shutil.copy2(path, out)
    return out

def add_prototype(text):
    if PROTO in text:
        return text, False

    anchor = "static bool8 CanKeepUsingLevelUpItem(void);"
    if anchor not in text:
        raise SystemExit("Prototype de CanKeepUsingLevelUpItem não encontrado.")

    return text.replace(anchor, anchor + "\n" + PROTO, 1), True

def patch_callback(text):
    if NEW_CALLBACK in text:
        return text, False

    if OLD_CALLBACK in text:
        return text.replace(OLD_CALLBACK, NEW_CALLBACK, 1), True

    m = re.search(
        r'static void CB2_ReturnToPartyMenuUsingRareCandy\(void\)\n'
        r'\{\n(?P<body>.*?)\n\}',
        text,
        flags=re.S
    )
    if not m:
        raise SystemExit("CB2_ReturnToPartyMenuUsingRareCandy não encontrado.")

    if "gMain.state = 0;" in m.group("body"):
        return text, False

    raise SystemExit(
        "CB2_ReturnToPartyMenuUsingRareCandy existe, mas está customizado "
        "fora do formato esperado; não vou sobrescrever no escuro."
    )

def patch_direct_evolution_path(text):
    if NEW_DIRECT_EVO in text:
        return text, False

    if OLD_DIRECT_EVO in text:
        return text.replace(OLD_DIRECT_EVO, NEW_DIRECT_EVO, 1), True

    idx = text.find("void ItemUseCB_RareCandy")
    end = text.find("static void UpdateMonDisplayInfoAfterRareCandy", idx)
    if idx >= 0 and end > idx:
        chunk = text[idx:end]
        if "gCB2_AfterEvolution = CB2_ReturnToPartyMenuUsingRareCandy;" in chunk:
            return text, False

    raise SystemExit(
        "Caminho direto de evolução em ItemUseCB_RareCandy não encontrado "
        "no formato esperado."
    )

def validate(text):
    if text.count(PROTO) != 1:
        raise SystemExit("Prototype do callback ausente ou duplicado.")

    cb_start = text.find("static void CB2_ReturnToPartyMenuUsingRareCandy(void)\n{")
    evo_start = text.find("static void PartyMenuTryEvolution(u8 taskId)")
    if cb_start < 0 or evo_start <= cb_start:
        raise SystemExit("Validação falhou no callback de retorno.")

    if "gMain.state = 0;" not in text[cb_start:evo_start]:
        raise SystemExit("Validação falhou: gMain.state não é zerado.")

    if "gCB2_AfterEvolution = CB2_ReturnToPartyMenuUsingRareCandy;" not in text:
        raise SystemExit("Validação falhou: callback contínuo não ligado à evolução.")

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo")
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--compile", action="store_true")
    ap.add_argument("--jobs", type=int, default=8)
    args = ap.parse_args()

    repo = find_repo(args.repo)
    path = repo / TARGET_REL
    old = path.read_text(encoding="utf-8")

    new, ch1 = add_prototype(old)
    new, ch2 = patch_callback(new)
    new, ch3 = patch_direct_evolution_path(new)
    validate(new)

    print("=== INFINITE CANDY EVOLUTION RETURN FIX V1 ===")
    print("")
    print("Corrige o softlock preto ao voltar da Evolution Scene.")
    print("")
    print("Causa:")
    print(" - o retorno usa gCB2_AfterEvolution")
    print(" - gMain.state não era reiniciado")
    print(" - ShowPartyMenu depende de gMain.state começar em 0")
    print(" - com o estado antigo, a inicialização pode ser pulada")
    print("")
    print("Correção:")
    print(" - gMain.state = 0 antes de reabrir o Party Menu")
    print(" - mantém o Infinite Candy em uso contínuo")
    print(" - cobre também o segundo caminho de evolução do Rare Candy callback")
    print("")
    print("src/party_menu.c:", "mudaria" if (ch1 or ch2 or ch3) else "já corrigido")

    if args.dry_run:
        print("\nDRY-RUN OK.")
        return 0

    if new != old:
        print("Backup:", backup(path))
        path.write_text(new, encoding="utf-8", newline="\n")

    if args.compile:
        cmd = ["make", f"-j{max(1, args.jobs)}"]
        print("\nExecutando:", " ".join(cmd))
        return subprocess.call(cmd, cwd=repo)

    print("\nPatch aplicado.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
