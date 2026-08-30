#!/usr/bin/env python3
from pathlib import Path
import shutil

ROOT = Path.cwd()
PKG = ROOT / "radio_priority_v6_3_popup_skip_stable"

pairs = [
    (PKG / "radio.c", ROOT / "src/radio.c"),
    (PKG / "overworld.c", ROOT / "src/overworld.c"),
    (PKG / "dexnav.c", ROOT / "src/dexnav.c"),
    (PKG / "achievements_popup.c", ROOT / "src/achievements_popup.c"),
]

for src, dst in pairs:
    if not src.exists():
        raise SystemExit(f"ERRO: não achei {src}")
    if not dst.exists():
        raise SystemExit(f"ERRO: não achei {dst}")

for src, dst in pairs:
    backup = dst.with_name(dst.name + ".before_radio_priority_v6_3")
    if not backup.exists():
        shutil.copyfile(dst, backup)
        backup.touch()
        print("[BACKUP]", backup)

    shutil.copyfile(src, dst)
    dst.touch()
    print("[COPY]", src, "->", dst)

print()
print("[OK] RADIO PRIORITY V6.3 instalada.")
print(" - popup não cria mais fila de popups antigos")
print(" - popup visível muda de nome em tempo real se R/L for usado de novo")
print(" - R/L overworld tem debounce de 12 frames")
print(" - auto-next não pode disputar com popup/manual skip")
print(" - fim de música exige wraps simultâneos das tracks, sem acumular falsos loops")
print()
print("Agora rode:")
print("  make -j9")
