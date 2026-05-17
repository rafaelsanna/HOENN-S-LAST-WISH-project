from pathlib import Path
p = Path("graphics/party_menu/bg.gbapal")
if not p.exists():
    raise SystemExit("missing")
data = p.read_bytes()
vals = [int.from_bytes(data[i:i+2], "little") for i in range(0, len(data), 2)]
print(len(vals), "words")
for i, v in enumerate(vals):
    r = v & 0x1F
    g = (v >> 5) & 0x1F
    b = (v >> 10) & 0x1F
    print("%02d: %04x -> (%3d,%3d,%3d)" % (i, v, r * 8, g * 8, b * 8))

def bgr555(r, g, b):
    return (b >> 3) << 10 | (g >> 3) << 5 | (r >> 3)

print("\nCandidates:")
for rgb in [(224,176,240), (216,152,232), (200,128,216), (184,112,208), (248,200,248), (216,168,248)]:
    print(rgb, hex(bgr555(*rgb)))
