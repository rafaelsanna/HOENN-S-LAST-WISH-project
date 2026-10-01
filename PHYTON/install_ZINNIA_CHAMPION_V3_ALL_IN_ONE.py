#!/usr/bin/env python3
from pathlib import Path
import subprocess, sys

MAIN = "install_ZINNIA_CHAMPION_ORCHESTRAL_METAL_V3_FIXED.py"
RADIO = "install_ZINNIA_CHAMPION_V3_RADIO_POKEMON_GBA.py"
PACK = "ZINNIA_CHAMPION_ORCHESTRAL_METAL_V3.zip"

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def ensure_clean_python(path):
    data = path.read_bytes()
    if b"\x00" in data:
        die(f"{path.name} contem NULL bytes. Extraia novamente o bundle.")
    try:
        data.decode("utf-8")
    except UnicodeDecodeError:
        die(f"{path.name} nao esta em UTF-8 limpo.")

def run_py(path):
    print(f"\n>>> python3 {path}")
    subprocess.run([sys.executable, str(path)], check=True)

def main():
    root = Path.cwd()
    here = Path(__file__).resolve().parent

    # Must be run from pokeemerald-expansion root.
    if not (root / "include/constants/songs.h").exists():
        die("Rode este installer da raiz do pokeemerald-expansion.")

    main_inst = here / MAIN
    radio_inst = here / RADIO
    pack = here / PACK

    for p in (main_inst, radio_inst, pack):
        if not p.exists():
            die(f"Nao achei {p.name} ao lado deste installer em PHYTON/.")

    ensure_clean_python(main_inst)
    ensure_clean_python(radio_inst)

    print("\n============================================================")
    print("ZINNIA CHAMPION V3 - ALL IN ONE")
    print("============================================================")
    print("1) Instala/registra a musica do Champion V3")
    print("2) Aplica hook do ultimo Pokemon do Champion")
    print("3) Garante POKEMON GBA + ALL TRACKS na Radio")
    print("4) Nao chama make")
    print("")

    run_py(main_inst)
    run_py(radio_inst)

    songs_h = (root / "include/constants/songs.h").read_text(errors="ignore")
    radio_c = (root / "src/radio.c").read_text(errors="ignore")

    if "MUS_ZINNIA_CHAMPION_GRAND_EPIC" not in songs_h:
        die("A musica nao foi registrada em songs.h.")

    if "MUS_ZINNIA_CHAMPION_GRAND_EPIC" not in radio_c:
        die("A musica nao apareceu em src/radio.c.")

    print("\n============================================================")
    print("TUDO OK")
    print("============================================================")
    print("Champion V3 registrada + Radio POKEMON GBA garantida.")
    print("")
    print("Agora rode SOMENTE:")
    print("  make -j8")

if __name__ == "__main__":
    try:
        main()
    except subprocess.CalledProcessError as e:
        die(f"Um dos installers falhou com codigo {e.returncode}.")
