#!/usr/bin/env python3
from pathlib import Path
import shutil

ROOT = Path.cwd()
target = ROOT / "src/radio.c"
replacement = ROOT / "radio_organized.c"

if not target.exists():
    raise SystemExit("ERRO: rode na raiz do pokeemerald-expansion")

if not replacement.exists():
    raise SystemExit(
        "ERRO: coloque radio_organized.c na raiz do repo junto deste Python"
    )

backup = ROOT / "src/radio.c.before_station_organization"
if not backup.exists():
    shutil.copy2(target, backup)
    print("[BACKUP]", backup)

shutil.copy2(replacement, target)
print("[OK] src/radio.c organizado")
print()
print("Estações:")
print("  ALL TRACKS")
print("  ANIME RADIO")
print("  OTHER-WORLD MUSIC")
print("  AMATERASU RADIO")
print()
print("Agora rode:")
print("  make -j8")
