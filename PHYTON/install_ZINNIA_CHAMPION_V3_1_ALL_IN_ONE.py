#!/usr/bin/env python3
from pathlib import Path
import subprocess, sys

MAIN = "install_ZINNIA_CHAMPION_ORCHESTRAL_METAL_V3_1_FIXED.py"
RADIO = "install_ZINNIA_CHAMPION_V3_RADIO_POKEMON_GBA.py"
PACK = "ZINNIA_CHAMPION_ORCHESTRAL_METAL_V3.zip"

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def clean_python(path):
    data = path.read_bytes()
    if b"\x00" in data:
        die(f"{path.name} contem NULL bytes.")
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

    if not (root / "include/constants/songs.h").exists():
        die("Rode este installer da raiz do pokeemerald-expansion.")

    main_inst = here / MAIN
    radio_inst = here / RADIO
    pack = here / PACK

    for p in (main_inst, radio_inst, pack):
        if not p.exists():
            die(f"Nao achei {p.name} em PHYTON/.")

    clean_python(main_inst)
    clean_python(radio_inst)

    print("\n============================================================")
    print("ZINNIA CHAMPION V3.1 - ALL IN ONE")
    print("============================================================")
    print("Corrige o matching ROLE_VIOLIN_I / ROLE_VIOLIN_II.")
    print("Depois garante POKEMON GBA + ALL TRACKS na Radio.")
    print("Nao chama make.")
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
    print("Champion V3.1 registrada + Radio POKEMON GBA garantida.")
    print("")
    print("Agora rode SOMENTE:")
    print("  make -j8")

if __name__ == "__main__":
    try:
        main()
    except subprocess.CalledProcessError as e:
        die(f"Um dos installers falhou com codigo {e.returncode}.")
