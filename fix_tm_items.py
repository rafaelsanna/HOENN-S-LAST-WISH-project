#!/usr/bin/env python3
"""
Atualiza os índices [ITEM_TM_*] de src/data/items.h para bater com a ordem
atual de include/constants/tms_hms.h.

Uso (na raiz do pokeemerald-expansion):
    python3 fix_tm_items.py

O script:
- lê FOREACH_TM(F) em include/constants/tms_hms.h;
- usa o número escrito em .name = ITEM_NAME("TMxx") de cada bloco;
- troca apenas o índice [ITEM_TM_ANTIGO] pelo MOVE correspondente àquele TM;
- cria backup src/data/items.h.bak;
- valida duplicatas em FOREACH_TM e mostra tudo que mudou.

Ele NÃO mexe nas descrições dos TMs.
"""

from pathlib import Path
import re
import shutil
import sys

TM_HEADER = Path("include/constants/tms_hms.h")
ITEMS_FILE = Path("src/data/items.h")


def read_tm_order(path: Path):
    text = path.read_text(encoding="utf-8")

    m = re.search(
        r"#define\s+FOREACH_TM\(F\)\s*\\\s*\n(?P<body>.*?)(?=\n\s*#define\s+FOREACH_HM\(F\))",
        text,
        flags=re.S,
    )
    if not m:
        raise RuntimeError(f"Não achei FOREACH_TM(F) em {path}")

    moves = re.findall(r"\bF\(([A-Z0-9_]+)\)", m.group("body"))
    if not moves:
        raise RuntimeError(f"Nenhum TM encontrado em {path}")

    # Nomes repetidos quebram ITEM_TM_* / ENUM_TM_HM_*.
    seen = {}
    duplicates = []
    for i, move in enumerate(moves, 1):
        if move in seen:
            duplicates.append((move, seen[move], i))
        else:
            seen[move] = i

    if duplicates:
        print("ERRO: ainda existem TMs repetidos em tms_hms.h:")
        for move, first, second in duplicates:
            print(f"  {move}: TM{first:02d} e TM{second:02d}")
        sys.exit(1)

    return moves


def patch_items(path: Path, tm_moves):
    lines = path.read_text(encoding="utf-8").splitlines(keepends=True)
    changes = []

    item_index_re = re.compile(
        r"^(?P<indent>\s*)\[ITEM_TM_(?P<move>[A-Z0-9_]+)\](?P<rest>\s*=\s*)$"
    )
    tm_name_re = re.compile(r'\.name\s*=\s*ITEM_NAME\("TM(?P<num>\d+)"\)')

    i = 0
    while i < len(lines):
        raw = lines[i].rstrip("\r\n")
        m = item_index_re.match(raw)
        if not m:
            i += 1
            continue

        old_move = m.group("move")

        # Procura o .name = ITEM_NAME("TMxx") dentro deste bloco.
        tm_num = None
        j = i + 1
        while j < len(lines):
            line = lines[j]

            # Se chegamos a outro initializer antes do nome, algo está estranho.
            if j > i + 1 and re.match(r"^\s*\[ITEM_", line):
                break

            n = tm_name_re.search(line)
            if n:
                tm_num = int(n.group("num"))
                break

            # Limite de segurança; os blocos TM normais são bem menores que isso.
            if j - i > 80:
                break
            j += 1

        if tm_num is None:
            i += 1
            continue

        if tm_num < 1 or tm_num > len(tm_moves):
            raise RuntimeError(
                f"{path}:{i+1}: TM{tm_num:02d} não existe em FOREACH_TM "
                f"(há {len(tm_moves)} TMs)"
            )

        new_move = tm_moves[tm_num - 1]

        if old_move != new_move:
            newline = "\n"
            if lines[i].endswith("\r\n"):
                newline = "\r\n"
            elif not lines[i].endswith("\n"):
                newline = ""

            lines[i] = (
                f'{m.group("indent")}[ITEM_TM_{new_move}]{m.group("rest")}{newline}'
            )
            changes.append((tm_num, old_move, new_move, i + 1))

        i += 1

    if not changes:
        print("Nenhuma troca necessária: items.h já está sincronizado.")
        return []

    backup = path.with_suffix(path.suffix + ".bak")
    shutil.copy2(path, backup)
    path.write_text("".join(lines), encoding="utf-8")

    return changes


def verify(path: Path, tm_moves):
    text = path.read_text(encoding="utf-8")
    lines = text.splitlines()

    item_index_re = re.compile(r"^\s*\[ITEM_TM_([A-Z0-9_]+)\]\s*=")
    tm_name_re = re.compile(r'\.name\s*=\s*ITEM_NAME\("TM(\d+)"\)')

    problems = []

    for i, line in enumerate(lines):
        m = item_index_re.match(line)
        if not m:
            continue

        move = m.group(1)
        tm_num = None

        for j in range(i + 1, min(i + 82, len(lines))):
            n = tm_name_re.search(lines[j])
            if n:
                tm_num = int(n.group(1))
                break
            if j > i + 1 and re.match(r"^\s*\[ITEM_", lines[j]):
                break

        if tm_num is None or tm_num > len(tm_moves):
            continue

        expected = tm_moves[tm_num - 1]
        if move != expected:
            problems.append((i + 1, tm_num, move, expected))

    return problems


def main():
    if not TM_HEADER.exists():
        print(f"ERRO: não achei {TM_HEADER}")
        print("Rode este script na raiz do pokeemerald-expansion.")
        sys.exit(1)

    if not ITEMS_FILE.exists():
        print(f"ERRO: não achei {ITEMS_FILE}")
        print("Rode este script na raiz do pokeemerald-expansion.")
        sys.exit(1)

    tm_moves = read_tm_order(TM_HEADER)
    print(f"FOREACH_TM: {len(tm_moves)} TMs, sem duplicatas.")

    changes = patch_items(ITEMS_FILE, tm_moves)

    if changes:
        print("\nTrocas feitas em src/data/items.h:")
        for tm_num, old, new, line in changes:
            print(
                f"  linha {line}: TM{tm_num:02d} "
                f"ITEM_TM_{old} -> ITEM_TM_{new}"
            )

        print(f"\nBackup: {ITEMS_FILE}.bak")

    problems = verify(ITEMS_FILE, tm_moves)
    if problems:
        print("\nERRO: ainda há blocos TM fora de sincronia:")
        for line, tm_num, found, expected in problems:
            print(
                f"  linha {line}: TM{tm_num:02d}: "
                f"ITEM_TM_{found}, esperado ITEM_TM_{expected}"
            )
        sys.exit(1)

    print("\nOK: os blocos de TM de items.h agora batem com tms_hms.h.")
    print("Agora rode: make -j8")


if __name__ == "__main__":
    main()
