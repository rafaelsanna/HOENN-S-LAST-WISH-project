#!/usr/bin/env python3
from pathlib import Path
import subprocess, sys

CHAMP = "install_ZINNIA_CHAMPION_ORCHESTRAL_METAL_V3_1_FIXED.py"
RADIO = "install_ZINNIA_CHAMPION_V3_RADIO_POKEMON_GBA.py"
ROUTING = "install_ZINNIA_LAST_MON_ROUTING_DEFINITIVE_V1.py"
PACK = "ZINNIA_CHAMPION_ORCHESTRAL_METAL_V3.zip"

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def check_text_py(path):
    data = path.read_bytes()
    if b"\x00" in data:
        die(f"{path.name} contem NULL bytes.")
    try:
        data.decode("utf-8")
    except UnicodeDecodeError:
        die(f"{path.name} nao esta em UTF-8 limpo.")

def run(path):
    print(f"\n>>> python3 {path}")
    subprocess.run([sys.executable, str(path)], check=True)

def main():
    root = Path.cwd()
    here = Path(__file__).resolve().parent

    if not (root / "include/constants/opponents.h").exists():
        die("Rode da raiz do pokeemerald-expansion.")

    files = [here / CHAMP, here / RADIO, here / ROUTING, here / PACK]
    for p in files:
        if not p.exists():
            die(f"Nao achei {p.name} em PHYTON/.")

    for p in files[:3]:
        check_text_py(p)

    print("\n============================================================")
    print("HLW - ZINNIA LAST-MON FINAL SYSTEM V1")
    print("============================================================")
    print("1) Champion Orchestral V3.1")
    print("2) Champion na Radio POKEMON GBA + ALL TRACKS")
    print("3) Routing definitivo por IDs reais")
    print("4) Nao executa make")
    print("")

    run(here / CHAMP)
    run(here / RADIO)
    run(here / ROUTING)

    print("\n============================================================")
    print("TUDO OK")
    print("============================================================")
    print("Renton -> METAL")
    print("Amaterasu -> POP")
    print("Outros Leaders -> GBA")
    print("Elite Four -> EPIC")
    print("Stella -> ORCHESTRAL EPIC")
    print("")
    print("Agora rode SOMENTE:")
    print("  make -j8")

if __name__ == "__main__":
    try:
        main()
    except subprocess.CalledProcessError as e:
        die(f"Installer interno falhou com codigo {e.returncode}.")
