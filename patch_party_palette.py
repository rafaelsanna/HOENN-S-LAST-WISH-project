from pathlib import Path

path = Path("graphics/party_menu/bg.gbapal")
if not path.exists():
    raise SystemExit("Palette file not found")

with path.open("rb") as f:
    data = bytearray(f.read())

words = [int.from_bytes(data[i:i+2], "little") for i in range(0, len(data), 2)]
print("Before:")
for idx in [49, 52, 53, 54, 55, 56, 57]:
    w = words[idx]
    r = w & 0x1F
    g = (w >> 5) & 0x1F
    b = (w >> 10) & 0x1F
    print(f"{idx}: {w:04x} -> ({r*8},{g*8},{b*8})")

replacements = {
    49: 0x7f3f,
    52: 0x7adc,
    53: 0x7adc,
    54: 0x6e19,
    55: 0x7f3f,
    56: 0x6e19,
    57: 0x7ebb,
}
for idx, val in replacements.items():
    data[idx * 2: idx * 2 + 2] = val.to_bytes(2, "little")

with path.open("wb") as f:
    f.write(data)

print("After:")
for idx in [49, 52, 53, 54, 55, 56, 57]:
    w = int.from_bytes(data[idx*2:idx*2+2], "little")
    r = w & 0x1F
    g = (w >> 5) & 0x1F
    b = (w >> 10) & 0x1F
    print(f"{idx}: {w:04x} -> ({r*8},{g*8},{b*8})")
