#!/usr/bin/env python3
"""
Sincroniza as descrições dos TMs customizados com a ORDEM REAL de
include/constants/tms_hms.h.

Rode na raiz do pokeemerald-expansion:

    python3 fix_tm_descriptions_v2.py

O problema que este script resolve:
- quando um TM é removido/trocado em FOREACH_TM, os TMs seguintes mudam de
  posição;
- os blocos TM51, TM52, TM53... em src/data/items.h continuam com as
  descrições antigas;
- resultado: o menu mostra, por exemplo, SHADOW CLAW com descrição de
  DRAGON PULSE, SLASH com descrição de U-TURN etc.

Este script NÃO assume que TM52 é um golpe específico.
Ele lê FOREACH_TM(F), descobre qual golpe está em cada número atualmente e
escreve a descrição correta naquele bloco TMxx.

Todas as descrições abaixo têm:
- exatamente 3 linhas;
- no máximo 17 caracteres visíveis por linha;
- texto curto para caber com segurança no painel do GBA.

Backup:
    src/data/items.h.bak_tm_desc_v2
"""

from pathlib import Path
import re
import shutil
import sys

TM_HEADER = Path("include/constants/tms_hms.h")
ITEMS_FILE = Path("src/data/items.h")

SAFE_CHARS = 17

# Descrições curtas por MOVE, não por número de TM.
# Assim, se a ordem de FOREACH_TM mudar, o texto continua correto.
DESCRIPTIONS = {
    "FLIP_TURN": (
        "Attacks, then",
        "switches the user",
        "with an ally.",
    ),
    "DAZZLING_GLEAM": (
        "Damages nearby",
        "opponents with a",
        "bright flash.",
    ),
    "POWER_UP_PUNCH": (
        "Punches the foe",
        "and raises the",
        "user's Attack.",
    ),
    "VOLT_SWITCH": (
        "Attacks, then",
        "switches the user",
        "with an ally.",
    ),
    "ACROBATICS": (
        "Power doubles",
        "when the user",
        "holds no item.",
    ),
    "WISH": (
        "Makes a wish that",
        "restores HP on",
        "the next turn.",
    ),
    "FIERY_DANCE": (
        "Attacks with fire",
        "and may raise",
        "user's Sp. Atk.",
    ),

    # TMs customizados / parte final da lista
    "NIGHT_SHADE": (
        "Inflicts damage",
        "equal to the",
        "user's level.",
    ),
    "CALM_MIND": (
        "Focuses the mind",
        "to raise Sp. Atk",
        "and Sp. Def.",
    ),
    "DRAGON_PULSE": (
        "Fires a draconic",
        "shock wave at",
        "the target.",
    ),
    "SHADOW_CLAW": (
        "Slashes with a",
        "shadowy claw.",
        "High crit ratio.",
    ),
    "POISON_JAB": (
        "Stabs the foe.",
        "May also poison",
        "the target.",
    ),
    "ROCK_SLIDE": (
        "Hurls large rocks",
        "at foes. May",
        "cause flinching.",
    ),
    "DARK_PULSE": (
        "Releases a dark",
        "aura. May make",
        "the foe flinch.",
    ),
    "FLASH_CANNON": (
        "Fires a flash",
        "of light. May",
        "lower Sp. Def.",
    ),
    "X_SCISSOR": (
        "Crosses claws",
        "like scissors to",
        "slash the foe.",
    ),
    "AURA_SPHERE": (
        "Fires an aura",
        "blast that never",
        "misses.",
    ),
    "KNOCK_OFF": (
        "Hits the target",
        "and knocks off",
        "its held item.",
    ),
    "WILL_O_WISP": (
        "Sinister flames",
        "inflict a burn",
        "on the target.",
    ),
    "SHOCK_WAVE": (
        "Electric attack",
        "that never",
        "misses.",
    ),
    "U_TURN": (
        "Attacks, then",
        "switches the user",
        "with an ally.",
    ),
    "SLASH": (
        "Slashes the foe.",
        "Has a high",
        "crit-hit ratio.",
    ),
    "TRICK_ROOM": (
        "Slower Pokemon",
        "move first for",
        "five turns.",
    ),
    "FIRE_PUNCH": (
        "Punches with fire",
        "and may burn",
        "the target.",
    ),
    "THUNDER_PUNCH": (
        "Electric punch",
        "that may paralyze",
        "the target.",
    ),
    "ICE_PUNCH": (
        "Icy punch that",
        "may freeze",
        "the target.",
    ),
    "SLEEP_TALK": (
        "Uses a random",
        "move while the",
        "user is asleep.",
    ),
    "DREAM_EATER": (
        "Works on sleeping",
        "foes and restores",
        "half damage as HP",
    ),
    "THUNDER_WAVE": (
        "Weak shock that",
        "paralyzes",
        "the target.",
    ),
    "FREEZE_DRY": (
        "May freeze. It's",
        "super effective",
        "vs. Water types.",
    ),
    "SPIKES": (
        "Scatters spikes",
        "that hurt foes",
        "switching in.",
    ),
    "HEAL_BELL": (
        "Chimes cure all",
        "status problems",
        "in the party.",
    ),
    "HAZE": (
        "Resets all stat",
        "changes on active",
        "Pokemon.",
    ),
    "WOOD_HAMMER": (
        "Slams with a",
        "hard trunk. The",
        "user takes recoil",
    ),
    "DRAGON_TAIL": (
        "Knocks the foe",
        "away and forces",
        "it to switch.",
    ),
    "PSYCHO_CUT": (
        "Psychic blades",
        "slash the foe.",
        "High crit ratio.",
    ),
    "PLAY_ROUGH": (
        "Plays rough with",
        "the foe. May",
        "lower its Attack.",
    ),
    "FOUL_PLAY": (
        "Uses the target's",
        "Attack stat to",
        "deal damage.",
    ),
}


def validate_description_table():
    for move, lines in DESCRIPTIONS.items():
        if len(lines) != 3:
            raise RuntimeError(f"{move}: descrição precisa ter exatamente 3 linhas.")

        for line in lines:
            if len(line) > SAFE_CHARS:
                raise RuntimeError(
                    f'{move}: "{line}" tem {len(line)} caracteres '
                    f"(máximo seguro = {SAFE_CHARS})."
                )


def parse_tm_order():
    if not TM_HEADER.exists():
        print(f"ERRO: não achei {TM_HEADER}")
        print("Rode este script na raiz do pokeemerald-expansion.")
        sys.exit(1)

    text = TM_HEADER.read_text(encoding="utf-8", errors="replace")

    m = re.search(
        r"#define\s+FOREACH_TM\(F\)\s*\\\s*\n"
        r"(?P<body>.*?)"
        r"(?=\n\s*#define\s+FOREACH_HM\(F\))",
        text,
        flags=re.S,
    )

    if not m:
        print("ERRO: não consegui localizar FOREACH_TM(F).")
        sys.exit(1)

    moves = re.findall(r"\bF\(([A-Z0-9_]+)\)", m.group("body"))

    if not moves:
        print("ERRO: FOREACH_TM(F) foi encontrado, mas nenhum TM foi lido.")
        sys.exit(1)

    # Duplicatas de MOVE dentro de FOREACH_TM quebram os enums.
    seen = {}
    duplicates = []
    for tm_num, move in enumerate(moves, 1):
        if move in seen:
            duplicates.append((move, seen[move], tm_num))
        else:
            seen[move] = tm_num

    if duplicates:
        print("ERRO: ainda existem golpes repetidos em FOREACH_TM:")
        for move, a, b in duplicates:
            print(f"  {move}: TM{a:02d} e TM{b:02d}")
        sys.exit(1)

    return moves


def find_tm_block(lines, tm_num):
    needle = f'.name = ITEM_NAME("TM{tm_num:02d}"),'

    name_idx = None
    for i, line in enumerate(lines):
        if needle in line:
            name_idx = i
            break

    if name_idx is None:
        return None

    # Busca o início do initializer.
    start = name_idx
    while start >= 0 and "[ITEM_" not in lines[start]:
        start -= 1

    if start < 0:
        raise RuntimeError(f"TM{tm_num:02d}: não achei início do bloco.")

    # Busca o fim do initializer.
    end = name_idx
    while end < len(lines):
        if lines[end].lstrip().startswith("},"):
            break
        end += 1

    if end >= len(lines):
        raise RuntimeError(f"TM{tm_num:02d}: não achei fim do bloco.")

    return start, end


def replace_description(lines, tm_num, move, desc_lines):
    block = find_tm_block(lines, tm_num)
    if block is None:
        return False, "bloco TM não existe"

    start, end = block

    desc_start = None
    for i in range(start, end + 1):
        if ".description = COMPOUND_STRING(" in lines[i]:
            desc_start = i
            break

    if desc_start is None:
        return False, "sem COMPOUND_STRING"

    desc_end = desc_start + 1
    while desc_end <= end:
        if lines[desc_end].rstrip().endswith("),"):
            break
        desc_end += 1

    if desc_end > end:
        raise RuntimeError(f"TM{tm_num:02d}: fim da descrição não encontrado.")

    indent = lines[desc_start].split(".description", 1)[0]
    s_indent = indent + "    "

    replacement = [
        f"{indent}.description = COMPOUND_STRING(\n",
        f'{s_indent}"{desc_lines[0]}\\n"\n',
        f'{s_indent}"{desc_lines[1]}\\n"\n',
        f'{s_indent}"{desc_lines[2]}"),\n',
    ]

    old_text = "".join(lines[desc_start:desc_end + 1])
    new_text = "".join(replacement)

    if old_text == new_text:
        return False, "já correto"

    lines[desc_start:desc_end + 1] = replacement
    return True, "alterado"


def main():
    validate_description_table()

    if not ITEMS_FILE.exists():
        print(f"ERRO: não achei {ITEMS_FILE}")
        print("Rode este script na raiz do pokeemerald-expansion.")
        sys.exit(1)

    tm_moves = parse_tm_order()

    print(f"FOREACH_TM atual: {len(tm_moves)} TMs")
    print("A descrição será associada ao MOVE real de cada posição.\n")

    original = ITEMS_FILE.read_text(encoding="utf-8")
    lines = original.splitlines(keepends=True)

    changed = []
    missing_blocks = []

    # Vai do fim para o começo para que mudanças no tamanho do arquivo
    # não atrapalhem os números/localizações dos próximos blocos.
    jobs = []
    for tm_num, move in enumerate(tm_moves, 1):
        if move in DESCRIPTIONS:
            jobs.append((tm_num, move))

    for tm_num, move in reversed(jobs):
        did_change, status = replace_description(
            lines,
            tm_num,
            move,
            DESCRIPTIONS[move],
        )

        if did_change:
            changed.append((tm_num, move))
        elif status == "bloco TM não existe":
            missing_blocks.append((tm_num, move))

    result = "".join(lines)

    if result != original:
        backup = ITEMS_FILE.with_name(ITEMS_FILE.name + ".bak_tm_desc_v2")
        if not backup.exists():
            shutil.copy2(ITEMS_FILE, backup)

        ITEMS_FILE.write_text(result, encoding="utf-8")
        print(f"Backup criado: {backup}\n")
    else:
        print("Nenhuma mudança de texto foi necessária.\n")

    print("Descrições sincronizadas:")
    for tm_num, move in sorted(changed):
        a, b, c = DESCRIPTIONS[move]
        print(f"\nTM{tm_num:02d} - {move}")
        print(f'  "{a}" ({len(a)})')
        print(f'  "{b}" ({len(b)})')
        print(f'  "{c}" ({len(c)})')

    if missing_blocks:
        print("\nAVISO: estes TMs existem em FOREACH_TM, mas não têm bloco TMxx em items.h:")
        for tm_num, move in missing_blocks:
            print(f"  TM{tm_num:02d} - {move}")

    print("\nOK.")
    print(f"Nenhuma linha gerada passa de {SAFE_CHARS} caracteres.")
    print("Agora compile:")
    print("  make -j8")


if __name__ == "__main__":
    main()
