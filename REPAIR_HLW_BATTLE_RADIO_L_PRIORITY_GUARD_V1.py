#!/usr/bin/env python3
from pathlib import Path
import datetime
import re
import shutil


PATCH_TAG = "HLW_BATTLE_RADIO_L_PRIORITY_GUARD_V1"
RADIO_PATH = "src/radio.c"


def die(message):
    print("\n[ERRO]", message)
    raise SystemExit(1)


def atomic_write(path, text):
    temporary = path.with_name(path.name + ".hlw_tmp")
    temporary.write_text(text, encoding="utf-8")
    temporary.replace(path)


def backup_file(path, root, backup_root):
    destination = backup_root / path.relative_to(root)
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, destination)


def validate_prerequisites(text):
    required = (
        '#include "main.h"',
        "static EWRAM_DATA bool8 sRadioPriorityEnabled;",
        "static void Radio_LoadPersistentState(void)",
        "void Radio_Open(MainCallback returnCallback)",
        "sRadioReturnCallback = returnCallback;",
        "Radio_LoadPersistentState();",
        "SetMainCallback2(CB2_LoadRadio);",
    )
    for needle in required:
        if needle not in text:
            die(f"src/radio.c incompativel: {needle} ausente.")


def build_guard():
    return f'''    // {PATCH_TAG}: BEGIN
    // Radio Priority OFF means the Radio does not own battle input or BGM.
    // Refuse the battle entry before the Radio changes callbacks or UI state.
    if (gMain.inBattle && !sRadioPriorityEnabled)
        return;
    // {PATCH_TAG}: END
'''


def patch_radio(text):
    begin_tag = f"// {PATCH_TAG}: BEGIN"
    end_tag = f"// {PATCH_TAG}: END"

    if begin_tag in text or end_tag in text:
        if text.count(begin_tag) != 1 or text.count(end_tag) != 1:
            die("O bloco de protecao esta incompleto ou duplicado em src/radio.c.")
        return text

    anchor = "    Radio_LoadPersistentState();\n"
    if text.count(anchor) != 1:
        die("Nao encontrei exatamente uma chamada Radio_LoadPersistentState().")

    return text.replace(anchor, anchor + "\n" + build_guard(), 1)


def validate_final(text):
    begin_tag = f"// {PATCH_TAG}: BEGIN"
    end_tag = f"// {PATCH_TAG}: END"

    if text.count(begin_tag) != 1 or text.count(end_tag) != 1:
        die("Verificacao final falhou: bloco ausente ou duplicado.")

    radio_open = re.search(
        r"void Radio_Open\(MainCallback returnCallback\)\n"
        r"\{(?P<body>.*?)\n\}",
        text,
        re.DOTALL,
    )
    if not radio_open:
        die("Verificacao final falhou: Radio_Open nao foi localizada.")

    body = radio_open.group("body")
    load_pos = body.find("Radio_LoadPersistentState();")
    guard_pos = body.find("if (gMain.inBattle && !sRadioPriorityEnabled)")
    state_pos = body.find("sRadioUiMode = RADIO_UI_MAIN;")
    callback_pos = body.find("SetMainCallback2(CB2_LoadRadio);")

    if min(load_pos, guard_pos, state_pos, callback_pos) < 0:
        die("Verificacao final falhou: ordem obrigatoria incompleta em Radio_Open.")
    if not (load_pos < guard_pos < state_pos < callback_pos):
        die("Verificacao final falhou: a trava nao ficou antes da abertura da Radio.")

    guard_pattern = re.compile(
        r"if \(gMain\.inBattle && !sRadioPriorityEnabled\)\n"
        r"\s+return;"
    )
    if len(guard_pattern.findall(body)) != 1:
        die("Verificacao final falhou: condicao da trava invalida ou duplicada.")


def main():
    root = Path.cwd().resolve()
    print("Aplicando a trava do L da Radio em batalha por Radio Priority...")

    radio_path = root / RADIO_PATH
    if not radio_path.is_file():
        die(
            "src/radio.c nao encontrado. "
            "Rode este repair na raiz do pokeemerald-expansion."
        )

    original = radio_path.read_text(encoding="utf-8")
    validate_prerequisites(original)
    patched = patch_radio(original)
    validate_final(patched)

    if patched == original:
        print("\nHLW BATTLE RADIO L PRIORITY GUARD V1 ja esta aplicado.")
        print("Nada foi alterado.")
        print("Rode: make -j8")
        return

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_root = (
        root
        / "PHYTON/backups"
        / f"hlw_battle_radio_l_priority_guard_v1_{stamp}"
    )
    backup_file(radio_path, root, backup_root)

    try:
        atomic_write(radio_path, patched)
    except Exception as error:
        atomic_write(radio_path, original)
        die(f"Falha ao gravar; alteracao revertida: {error}")

    print("\n============================================================")
    print("HLW BATTLE RADIO L PRIORITY GUARD V1 APLICADO")
    print("============================================================")
    print("- Em batalha + RADIO PRIORITY OFF: a Radio nao abre.")
    print("- Em batalha + RADIO PRIORITY ON: o atalho continua funcionando.")
    print("- Fora de batalha: o comportamento da Radio nao foi alterado.")
    print("Arquivo alterado:")
    print("  -", RADIO_PATH)
    print("Backup:", backup_root)
    print("\nO repair nao executa make e nao usa make -B.")
    print("Agora rode SOMENTE:")
    print("  make -j8")


if __name__ == "__main__":
    main()
