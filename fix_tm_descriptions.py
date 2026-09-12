#!/usr/bin/env python3
"""
Atualiza SOMENTE as descrições dos TMs que foram trocados.

Rode na raiz do pokeemerald-expansion:

    python3 fix_tm_descriptions.py

Arquivo alterado:
    src/data/items.h

Backup criado:
    src/data/items.h.bak_tm_desc

As descrições foram condensadas para 3 linhas curtas, pensando no espaço
limitado da tela do GBA. O script procura o bloco pelo número do TM
(.name = ITEM_NAME("TMxx")), então não depende do nome interno ITEM_TM_*.

TM57 / DARK PULSE não é alterado porque ele já tinha descrição correta.
"""

from pathlib import Path
import shutil
import sys

ITEMS_FILE = Path("src/data/items.h")
MAX_VISIBLE_CHARS = 19

# Frases curtas baseadas no efeito oficial dos golpes.
# Cada linha foi mantida em no máximo 19 caracteres para evitar overflow visual.
DESCRIPTIONS = {
    3: (
        "FLIP TURN",
        [
            "Attacks the foe,",
            "then switches with",
            "a party Pokémon.",
        ],
    ),
    4: (
        "DAZZLING GLEAM",
        [
            "Damages all foes",
            "with a powerful",
            "flash of light.",
        ],
    ),
    8: (
        "POWER-UP PUNCH",
        [
            "Strikes the foe and",
            "raises the user's",
            "Attack.",
        ],
    ),
    34: (
        "VOLT SWITCH",
        [
            "Attacks the foe,",
            "then switches with",
            "a party Pokémon.",
        ],
    ),
    40: (
        "ACROBATICS",
        [
            "Deals more damage",
            "if the user holds",
            "no item.",
        ],
    ),
    42: (
        "WISH",
        [
            "Heals on the next",
            "turn, even if the",
            "user switches out.",
        ],
    ),
    50: (
        "FIERY DANCE",
        [
            "Attacks with fire",
            "and may raise the",
            "user's Sp. Atk.",
        ],
    ),
}


def validate_descriptions():
    for tm_num, (move_name, lines) in DESCRIPTIONS.items():
        if len(lines) != 3:
            raise RuntimeError(f"TM{tm_num:02d} {move_name}: esperado 3 linhas.")

        for line in lines:
            if len(line) > MAX_VISIBLE_CHARS:
                raise RuntimeError(
                    f'TM{tm_num:02d} {move_name}: linha longa demais '
                    f'({len(line)} chars): "{line}"'
                )


def find_tm_block(lines, tm_num):
    needle = f'.name = ITEM_NAME("TM{tm_num:02d}"),'

    name_index = None
    for i, line in enumerate(lines):
        if needle in line:
            name_index = i
            break

    if name_index is None:
        raise RuntimeError(f"Não achei TM{tm_num:02d} em {ITEMS_FILE}")

    # Início do initializer do item.
    block_start = name_index
    while block_start >= 0 and "[ITEM_" not in lines[block_start]:
        block_start -= 1

    if block_start < 0:
        raise RuntimeError(f"Não achei início do bloco de TM{tm_num:02d}")

    # Fim do initializer.
    block_end = name_index
    while block_end < len(lines) and not lines[block_end].lstrip().startswith("},"):
        block_end += 1

    if block_end >= len(lines):
        raise RuntimeError(f"Não achei fim do bloco de TM{tm_num:02d}")

    return block_start, block_end


def replace_description(lines, tm_num, new_lines):
    block_start, block_end = find_tm_block(lines, tm_num)

    desc_start = None
    for i in range(block_start, block_end + 1):
        if ".description = COMPOUND_STRING(" in lines[i]:
            desc_start = i
            break

    if desc_start is None:
        raise RuntimeError(f"TM{tm_num:02d}: não achei .description")

    # Procura o final do COMPOUND_STRING da descrição.
    desc_end = desc_start + 1
    while desc_end <= block_end:
        if lines[desc_end].rstrip().endswith("),"):
            break
        desc_end += 1

    if desc_end > block_end:
        raise RuntimeError(f"TM{tm_num:02d}: não achei fim da descrição")

    indent = lines[desc_start].split(".description", 1)[0]
    string_indent = indent + "    "

    replacement = [
        f"{indent}.description = COMPOUND_STRING(\n",
        f'{string_indent}"{new_lines[0]}\\n"\n',
        f'{string_indent}"{new_lines[1]}\\n"\n',
        f'{string_indent}"{new_lines[2]}"),\n',
    ]

    old_text = "".join(lines[desc_start:desc_end + 1])
    new_text = "".join(replacement)

    if old_text == new_text:
        return False

    lines[desc_start:desc_end + 1] = replacement
    return True


def main():
    validate_descriptions()

    if not ITEMS_FILE.exists():
        print(f"ERRO: não achei {ITEMS_FILE}")
        print("Rode este script na raiz do pokeemerald-expansion.")
        sys.exit(1)

    original = ITEMS_FILE.read_text(encoding="utf-8")
    lines = original.splitlines(keepends=True)

    changed = []

    # Faz do maior TM para o menor para que alterações de tamanho não afetem buscas.
    for tm_num in sorted(DESCRIPTIONS, reverse=True):
        move_name, desc_lines = DESCRIPTIONS[tm_num]
        if replace_description(lines, tm_num, desc_lines):
            changed.append((tm_num, move_name, desc_lines))

    result = "".join(lines)

    if result == original:
        print("Nenhuma alteração necessária: descrições já estão corretas.")
        return

    backup = ITEMS_FILE.with_name(ITEMS_FILE.name + ".bak_tm_desc")
    if not backup.exists():
        shutil.copy2(ITEMS_FILE, backup)

    ITEMS_FILE.write_text(result, encoding="utf-8")

    print("Descrições atualizadas:\n")
    for tm_num, move_name, desc_lines in sorted(changed):
        print(f"TM{tm_num:02d} - {move_name}")
        for line in desc_lines:
            print(f'  "{line}"  ({len(line)} chars)')
        print()

    print(f"Backup: {backup}")
    print("\nTM57 - DARK PULSE foi mantido intacto.")
    print("\nAgora rode:")
    print("  make -j8")


if __name__ == "__main__":
    main()
