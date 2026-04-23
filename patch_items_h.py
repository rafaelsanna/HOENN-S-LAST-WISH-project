#!/usr/bin/env python3
"""
patch_items_h.py
Adiciona  .fieldUseFunc = ItemUseOutOfBattle_ChangePokeball,
em todas as 28 entradas de Pokébola do arquivo include/items.h.

Uso:
    python3 patch_items_h.py include/items.h

O arquivo original é sobrescrito. Faça backup antes se necessário.
"""

import sys
import re

def patch(path):
    with open(path, encoding="utf-8") as f:
        text = f.read()

    old = ".type = ITEM_USE_BAG_MENU,\n        .battleUsage = EFFECT_ITEM_THROW_BALL,"
    new = (
        ".type = ITEM_USE_BAG_MENU,\n"
        "        .fieldUseFunc = ItemUseOutOfBattle_ChangePokeball,\n"
        "        .battleUsage = EFFECT_ITEM_THROW_BALL,"
    )

    count = text.count(old)
    if count == 0:
        print("AVISO: Nenhuma ocorrência encontrada. Verifique a indentação do arquivo.")
        return

    patched = text.replace(old, new)

    with open(path, "w", encoding="utf-8") as f:
        f.write(patched)

    print(f"OK: {count} Pokébola(s) atualizadas em '{path}'.")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(f"Uso: python3 {sys.argv[0]} <caminho/para/items.h>")
        sys.exit(1)
    patch(sys.argv[1])
