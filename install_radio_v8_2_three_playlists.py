#!/usr/bin/env python3
from pathlib import Path
import shutil
import subprocess
import sys

ROOT = Path.cwd()
PKG = ROOT / "radio_v8_2_three_playlists"
SRC_RADIO = PKG / "radio.c"
DST_RADIO = ROOT / "src/radio.c"
PATCHER = ROOT / "patch_hlw_save_abi_v2_three_playlists.py"

for path in (SRC_RADIO, DST_RADIO, PATCHER):
    if not path.exists():
        raise SystemExit(f"ERRO: não achei {path}")

subprocess.run([sys.executable, str(PATCHER)], check=True)

backup = DST_RADIO.with_name("radio.c.before_v8_2_three_playlists")
if not backup.exists():
    shutil.copyfile(DST_RADIO, backup)
    backup.touch()
    print("[BACKUP]", backup)

shutil.copyfile(SRC_RADIO, DST_RADIO)
DST_RADIO.touch()

print("[COPY]", SRC_RADIO, "->", DST_RADIO)
print()
print("[OK] Radio V8.2 - 3 playlists instalado")
print("     Favorites             : 32 músicas")
print("     Playlist 1            : 20 músicas")
print("     Playlist 2            : 20 músicas")
print("     Playlist 3            : 20 músicas")
print("     Save ABI              : 512 bytes (inalterado)")
print("     RadioSaveData         : 152 bytes (inalterado)")
print("     future[] usado novo   : 56 bytes")
print("     future[] ainda livre  : 296 bytes")
print()
print("Migração V8.1:")
print("  - músicas 1..20 da playlist antiga -> PLAYLIST 1")
print("  - músicas 21..32 da playlist antiga -> PLAYLIST 2")
print("  - PLAYLIST 3 começa vazia")
print()
print("Agora rode:")
print("  make -j9")
