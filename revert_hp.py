from pathlib import Path

path = Path("graphics/party_menu/bg.gbapal")
with path.open("rb") as f:
    data = bytearray(f.read())

# Reverter apenas o índice 57 para o original verde
data[57 * 2: 57 * 2 + 2] = (0x57ee).to_bytes(2, "little")

with path.open("wb") as f:
    f.write(data)

print("Reverted HP bar to green")