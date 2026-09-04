#!/usr/bin/env python3
from pathlib import Path

p = Path("src/party_menu.c")
s = p.read_text()

old = """static const u8 sBasicFieldPartySpriteCoords[PARTY_SIZE][4 * 2] =
{
    { 24,  30,  38,  49, 105,  49,  24,  34},
    {136,  30, 150,  49, 217,  49, 136,  34},
    { 24,  70,  38,  89, 105,  89,  24,  74},
    {136,  70, 150,  89, 217,  89, 136,  74},
    { 24, 110,  38, 129, 105, 129,  24, 114},
    {136, 110, 150, 129, 217, 129, 136, 114},
};"""

new = """static const u8 sBasicFieldPartySpriteCoords[PARTY_SIZE][4 * 2] =
{
    { 24,  30,  38,  49,  89,  35,  24,  34},
    {136,  30, 150,  49, 201,  35, 136,  34},
    { 24,  70,  38,  89,  89,  75,  24,  74},
    {136,  70, 150,  89, 201,  75, 136,  74},
    { 24, 110,  38, 129,  89, 115,  24, 114},
    {136, 110, 150, 129, 201, 115, 136, 114},
};"""

if old not in s:
    raise SystemExit("ERRO: bloco esperado nao encontrado; nenhum arquivo foi alterado.")

backup = p.with_suffix(".c.bak_before_status_move")
backup.write_text(s)
p.write_text(s.replace(old, new, 1))

print("OK: status movidos 16px para esquerda e 14px para cima no Basic Field Party Menu.")
print(f"Backup: {backup}")
