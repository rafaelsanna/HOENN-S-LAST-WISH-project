#!/usr/bin/env python3
"""
Corrige os TMs dados pelos líderes nos arquivos .pory.

Rode NA RAIZ do pokeemerald-expansion:

    python3 fix_gym_tm_pory.py

O script:
  1) procura todos os *.pory do projeto;
  2) troca os ITEM_TM_* antigos pelos novos;
  3) trata Mossdeep (dupla) como caso especial:
       - DAZZLING GLEAM
       - DARK PULSE
  4) atualiza os textos explicativos dos líderes;
  5) cria backup .bak_gym_tm antes de alterar cada arquivo;
  6) pode ser executado novamente sem duplicar DARK PULSE.

IMPORTANTE:
Os nomes antigos de FLAGS e LABELS (ex.: FLAG_RECEIVED_TM_CALM_MIND,
GiveCalmMind, ExplainCalmMind) são mantidos de propósito. Eles são IDs internos
já existentes no projeto e NÃO precisam ter o mesmo nome do novo TM.
"""

from pathlib import Path
import re
import shutil
import sys

ROOT = Path.cwd()

# Troca direta: o número/slot antigo do TM agora ensina o novo golpe.
ITEM_REPLACEMENTS = {
    "ITEM_TM_WATER_PULSE": "ITEM_TM_FLIP_TURN",
    "ITEM_TM_BULK_UP": "ITEM_TM_POWER_UP_PUNCH",
    "ITEM_TM_SHOCK_WAVE": "ITEM_TM_VOLT_SWITCH",
    "ITEM_TM_AERIAL_ACE": "ITEM_TM_ACROBATICS",
    "ITEM_TM_FACADE": "ITEM_TM_WISH",
    "ITEM_TM_OVERHEAT": "ITEM_TM_FIERY_DANCE",

    # Mossdeep é especial: CALM MIND -> DAZZLING GLEAM,
    # e o script também adiciona DARK PULSE como segundo prêmio.
    "ITEM_TM_CALM_MIND": "ITEM_TM_DAZZLING_GLEAM",
}

OLD_ITEM_NAMES = tuple(ITEM_REPLACEMENTS.keys())


def parse_tm_numbers():
    """Lê FOREACH_TM para usar os números reais do seu projeto nos textos."""
    header = ROOT / "include/constants/tms_hms.h"

    if not header.exists():
        print(f"[AVISO] Não achei {header}.")
        print("        Os itens serão corrigidos, mas os textos usarão números padrão.")
        return {
            "FLIP_TURN": 3,
            "DAZZLING_GLEAM": 4,
            "POWER_UP_PUNCH": 8,
            "VOLT_SWITCH": 34,
            "ACROBATICS": 40,
            "WISH": 42,
            "FIERY_DANCE": 50,
            "DARK_PULSE": 57,
        }

    text = header.read_text(encoding="utf-8", errors="replace")

    m = re.search(
        r"#define\s+FOREACH_TM\(F\)\s*\\\s*\n(?P<body>.*?)(?=\n\s*#define\s+FOREACH_HM\(F\))",
        text,
        flags=re.S,
    )
    if not m:
        print("[AVISO] Não consegui interpretar FOREACH_TM(F).")
        return {}

    moves = re.findall(r"\bF\(([A-Z0-9_]+)\)", m.group("body"))

    # Detecta duplicatas, porque elas voltariam a quebrar include/item.h.
    seen = {}
    duplicates = []
    for num, move in enumerate(moves, 1):
        if move in seen:
            duplicates.append((move, seen[move], num))
        else:
            seen[move] = num

    if duplicates:
        print("\n[ERRO] Ainda existem TMs repetidos em include/constants/tms_hms.h:")
        for move, a, b in duplicates:
            print(f"  {move}: TM{a:02d} e TM{b:02d}")
        print("\nCorrija as duplicatas antes de continuar.")
        sys.exit(1)

    needed = {
        "FLIP_TURN",
        "DAZZLING_GLEAM",
        "POWER_UP_PUNCH",
        "VOLT_SWITCH",
        "ACROBATICS",
        "WISH",
        "FIERY_DANCE",
        "DARK_PULSE",
    }

    missing = sorted(needed - set(moves))
    if missing:
        print("\n[ERRO] Estes golpes não estão em FOREACH_TM:")
        for move in missing:
            print(f"  {move}")
        sys.exit(1)

    return {move: moves.index(move) + 1 for move in needed}


def replace_label_text(text, label, new_body):
    """
    Substitui somente o bloco de texto de um label conhecido.
    Mantém o nome antigo do label para não precisar alterar referências.
    """
    pattern = re.compile(
        rf"(?ms)^({re.escape(label)}:\s*\n)"
        rf".*?"
        rf"(?=^[A-Za-z0-9_]+:\s*$|\Z)"
    )

    m = pattern.search(text)
    if not m:
        return text, False

    replacement = m.group(1) + new_body.rstrip() + "\n\n"
    if m.group(0) == replacement:
        return text, False

    return text[:m.start()] + replacement + text[m.end():], True


def insert_mossdeep_dark_pulse(text):
    """
    Em cada uma das duas rotas de entrega de Mossdeep:
      give Dazzling Gleam
      testa bag full
      give Dark Pulse
      testa bag full novamente

    É idempotente: se DARK_PULSE já estiver na função, não duplica.
    """
    specs = (
        (
            "MossdeepCity_Gym_EventScript_GiveCalmMind2::",
            "Common_EventScript_ShowBagIsFull",
        ),
        (
            "MossdeepCity_Gym_EventScript_GiveCalmMind::",
            "Common_EventScript_BagIsFull",
        ),
    )

    inserted = 0

    for label, bag_full_label in specs:
        lm = re.search(rf"(?m)^{re.escape(label)}\s*$", text)
        if not lm:
            continue

        body_start = lm.end()

        next_label = re.search(
            r"(?m)^[A-Za-z0-9_][A-Za-z0-9_]*:{1,2}\s*$",
            text[body_start:],
        )
        body_end = (
            body_start + next_label.start()
            if next_label
            else len(text)
        )

        body = text[body_start:body_end]

        # Já corrigido numa execução anterior.
        if "giveitem ITEM_TM_DARK_PULSE" in body:
            continue

        pattern = re.compile(
            rf"(?m)"
            rf"^(?P<indent>[ \t]*)giveitem ITEM_TM_DAZZLING_GLEAM\s*\n"
            rf"(?P=indent)goto_if_eq VAR_RESULT, FALSE, "
            rf"{re.escape(bag_full_label)}\s*$"
        )

        m = pattern.search(body)
        if not m:
            continue

        indent = m.group("indent")
        addition = (
            m.group(0)
            + f"\n{indent}giveitem ITEM_TM_DARK_PULSE"
            + f"\n{indent}goto_if_eq VAR_RESULT, FALSE, {bag_full_label}"
        )

        new_body = body[:m.start()] + addition + body[m.end():]
        text = text[:body_start] + new_body + text[body_end:]
        inserted += 1

    return text, inserted


def update_explanation_texts(text, tm):
    changed = 0

    def num(move, fallback):
        return tm.get(move, fallback)

    replacements = {
        "DewfordTown_Gym_Text_ExplainBulkUp":
            f'\t.string "That TM{num("POWER_UP_PUNCH", 8):02d} contains POWER-UP PUNCH.\\p"\n'
            '\t.string "Landing the punch raises the user\'s\\n"\n'
            '\t.string "ATTACK. Keep the pressure on!$"',

        "MauvilleCity_Gym_Text_ExplainShockWave":
            f'\t.string "That TM{num("VOLT_SWITCH", 34):02d} there contains VOLT SWITCH.\\p"\n'
            '\t.string "It attacks with electricity, then\\n"\n'
            '\t.string "lets the user switch out!$"',

        "FortreeCity_Gym_Text_ExplainAerialAce":
            f'\t.string "TM{num("ACROBATICS", 40):02d} contains ACROBATICS.\\p"\n'
            '\t.string "It becomes much stronger when the\\n"\n'
            '\t.string "user is not holding an item.$"',

        "PetalburgCity_Gym_Text_ExplainFacade":
            f'\t.string "CALENDULA: TM{num("WISH", 42):02d} contains WISH.\\p"\n'
            '\t.string "A wish made now restores HP at the\\n"\n'
            '\t.string "end of the next turn.$"',

        "LavaridgeTown_Gym_1F_Text_ExplainOverheat":
            f'\t.string "That TM{num("FIERY_DANCE", 50):02d} contains FIERY DANCE.\\p"\n'
            '\t.string "It attacks the foe with flames and\\n"\n'
            '\t.string "may also raise the user\'s SP. ATK.$"',

        "SootopolisCity_Gym_1F_Text_ExplainWaterPulse":
            f'\t.string "The TM I handed you is TM{num("FLIP_TURN", 3):02d},\\n"\n'
            '\t.string "and it contains FLIP TURN.\\p"\n'
            '\t.string "It attacks, then lets the user switch\\n"\n'
            '\t.string "with another party POKéMON.$"',

        # Caso especial: os dois líderes entregam dois TMs.
        "MossdeepCity_Gym_Text_ExplainCalmMind":
            f'\t.string "LUNA: TM{num("DAZZLING_GLEAM", 4):02d} contains…\\n"\n'
            '\t.string "SOUL: DAZZLING GLEAM!\\p"\n'
            f'\t.string "LUNA: And TM{num("DARK_PULSE", 57):02d} contains…\\n"\n'
            '\t.string "SOUL: DARK PULSE!\\p"\n'
            '\t.string "LUNA: Light and darkness…\\n"\n'
            '\t.string "SOUL: Two powers for one victory!$"',
    }

    for label, body in replacements.items():
        text, did_change = replace_label_text(text, label, body)
        changed += int(did_change)

    return text, changed


def should_skip(path):
    blocked = {".git", "build", ".venv", "venv"}
    return any(part in blocked for part in path.parts)


def main():
    tm_numbers = parse_tm_numbers()

    pory_files = [
        p for p in ROOT.rglob("*.pory")
        if not should_skip(p)
    ]

    if not pory_files:
        print("Nenhum arquivo .pory encontrado.")
        print("Rode o script na raiz do pokeemerald-expansion.")
        sys.exit(1)

    modified_files = 0
    total_direct = 0
    total_mossdeep_insertions = 0
    total_text_blocks = 0

    print(f"Encontrados {len(pory_files)} arquivos .pory.\n")

    for path in pory_files:
        original = path.read_text(encoding="utf-8", errors="replace")
        text = original

        file_direct = 0

        # 1. Trocas diretas dos item constants.
        for old, new in ITEM_REPLACEMENTS.items():
            count = text.count(old)
            if count:
                text = text.replace(old, new)
                file_direct += count

        # 2. Mossdeep recebe também DARK PULSE.
        text, mossdeep_insertions = insert_mossdeep_dark_pulse(text)

        # 3. Atualiza os textos dos líderes.
        text, text_blocks = update_explanation_texts(text, tm_numbers)

        if text == original:
            continue

        backup = path.with_name(path.name + ".bak_gym_tm")
        if not backup.exists():
            shutil.copy2(path, backup)

        path.write_text(text, encoding="utf-8")

        modified_files += 1
        total_direct += file_direct
        total_mossdeep_insertions += mossdeep_insertions
        total_text_blocks += text_blocks

        print(f"[OK] {path}")
        if file_direct:
            print(f"     {file_direct} referência(s) ITEM_TM trocada(s)")
        if mossdeep_insertions:
            print(
                f"     Mossdeep: DARK PULSE adicionado em "
                f"{mossdeep_insertions} rota(s) de entrega"
            )
        if text_blocks:
            print(f"     {text_blocks} texto(s) explicativo(s) atualizado(s)")

    # Validação final: os ITEM_TM antigos não podem permanecer em nenhum .pory.
    leftovers = []
    for path in pory_files:
        text = path.read_text(encoding="utf-8", errors="replace")
        for old in OLD_ITEM_NAMES:
            if old in text:
                leftovers.append((path, old))

    print("\n" + "=" * 68)

    if leftovers:
        print("[ERRO] Ainda sobraram referências antigas:")
        for path, old in leftovers:
            print(f"  {path}: {old}")
        sys.exit(1)

    print("CORREÇÃO CONCLUÍDA")
    print(f"Arquivos modificados: {modified_files}")
    print(f"Referências ITEM_TM trocadas: {total_direct}")
    print(f"Rotas de Mossdeep com DARK PULSE adicionado: {total_mossdeep_insertions}")
    print(f"Blocos de texto atualizados: {total_text_blocks}")
    print("\nOs backups têm extensão: .bak_gym_tm")
    print("\nAgora compile novamente:")
    print("  make -j8")


if __name__ == "__main__":
    main()
