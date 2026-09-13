#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import datetime

PATCH_TAG_V2 = "HLW_BATTLE_RADIO_UI_AND_L_OPEN_V2"
PATCH_TAG_FIX = "HLW_BATTLE_RADIO_RETURN_FIX_V2_1"

WAIT_DECL = "static void WaitForBattleRadioReturn(u32 battler);"

WAIT_FUNC = r'''
// HLW_BATTLE_RADIO_RETURN_FIX_V2_1
// BattleMainCB1 keeps running while full-screen battle submenus are open.
// Therefore the player controller MUST stay in a wait function until:
//   1) the Radio has closed,
//   2) ReshowBattleScreenAfterMenu has rebuilt battle graphics/windows/sprites,
//   3) the return palette fade is finished.
//
// This mirrors the existing Bag/Party controller pattern and prevents
// PlayerHandleChooseAction from running against the Radio's windows/BGs.
static void WaitForBattleRadioReturn(u32 battler)
{
    if (gMain.callback2 == BattleMainCB2 && !gPaletteFade.active)
        gBattlerControllerFuncs[battler] = PlayerHandleChooseAction;
}

'''

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def find_function_span(text, name):
    m = re.search(
        r'static\s+void\s+' + re.escape(name) + r'\s*\([^\)]*\)\s*\{',
        text
    )
    if not m:
        return None

    brace = text.find("{", m.start())
    depth = 0
    i = brace
    in_string = in_char = in_line = in_block = False
    escaped = False

    while i < len(text):
        c = text[i]
        n = text[i + 1] if i + 1 < len(text) else ""

        if in_line:
            if c == "\n":
                in_line = False
            i += 1
            continue

        if in_block:
            if c == "*" and n == "/":
                in_block = False
                i += 2
            else:
                i += 1
            continue

        if in_string:
            if escaped:
                escaped = False
            elif c == "\\":
                escaped = True
            elif c == '"':
                in_string = False
            i += 1
            continue

        if in_char:
            if escaped:
                escaped = False
            elif c == "\\":
                escaped = True
            elif c == "'":
                in_char = False
            i += 1
            continue

        if c == "/" and n == "/":
            in_line = True
            i += 2
            continue

        if c == "/" and n == "*":
            in_block = True
            i += 2
            continue

        if c == '"':
            in_string = True
            i += 1
            continue

        if c == "'":
            in_char = True
            i += 1
            continue

        if c == "{":
            depth += 1
        elif c == "}":
            depth -= 1
            if depth == 0:
                return m.start(), i + 1

        i += 1

    return None

def patch_controller(text):
    if PATCH_TAG_V2 not in text:
        die(
            "Nao achei o V2 (HLW_BATTLE_RADIO_UI_AND_L_OPEN_V2). "
            "Este Python e somente o hotfix para quem ja instalou o V2."
        )

    if PATCH_TAG_FIX in text:
        print("V2.1 ja instalado; nada para alterar.")
        return text

    if WAIT_DECL not in text:
        anchor = "static void OpenRadioFromBattle(u32 battler);"
        if anchor not in text:
            die("Nao achei OpenRadioFromBattle forward declaration do V2.")
        text = text.replace(anchor, anchor + "\n" + WAIT_DECL, 1)

    span = find_function_span(text, "OpenRadioFromBattle")
    if span is None:
        die("Nao achei OpenRadioFromBattle do V2.")

    fstart, fend = span
    func = text[fstart:fend]

    old = "gBattlerControllerFuncs[battler] = PlayerHandleChooseAction;"
    new = "gBattlerControllerFuncs[battler] = WaitForBattleRadioReturn;"

    if old not in func:
        if new in func:
            print("OpenRadioFromBattle ja usa o wait seguro.")
        else:
            die("OpenRadioFromBattle nao tem a atribuicao esperada.")
    else:
        func = func.replace(old, new, 1)
        text = text[:fstart] + func + text[fend:]

    if "static void WaitForBattleRadioReturn(u32 battler)\n{" not in text:
        open_pos = text.find("static void OpenRadioFromBattle(u32 battler)")
        if open_pos < 0:
            die("Nao consegui localizar OpenRadioFromBattle para inserir wait.")
        text = text[:open_pos] + WAIT_FUNC + text[open_pos:]

    for token in (
        PATCH_TAG_FIX,
        "gMain.callback2 == BattleMainCB2",
        "!gPaletteFade.active",
        "gBattlerControllerFuncs[battler] = WaitForBattleRadioReturn;",
        "gBattlerControllerFuncs[battler] = PlayerHandleChooseAction;",
        "Radio_Open(ReshowBattleScreenAfterMenu);",
    ):
        if token not in text:
            die("Verificacao final falhou; faltou: " + token)

    span = find_function_span(text, "OpenRadioFromBattle")
    func = text[span[0]:span[1]]
    if "gBattlerControllerFuncs[battler] = PlayerHandleChooseAction;" in func:
        die("OpenRadioFromBattle ainda retoma PlayerHandleChooseAction cedo demais.")

    return text

def main():
    root = Path.cwd()
    controller = root / "src/battle_controller_player.c"

    if not controller.exists():
        die("Nao achei src/battle_controller_player.c. Rode da raiz do projeto.")

    old = controller.read_text()

    if PATCH_TAG_FIX in old:
        print("\nBATTLE RADIO RETURN FIX V2.1 ja esta instalado.")
        print("Rode apenas: make -j8")
        return

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"battle_radio_return_fix_v2_1_{stamp}"
    dst = bdir / "src/battle_controller_player.c"
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(controller, dst)

    patched = patch_controller(old)
    controller.write_text(patched)

    for rel in (
        "build/modern/src/battle_controller_player.o",
        "build/modern/src/battle_controller_player.d",
    ):
        p = root / rel
        if p.exists():
            print("rm", rel)
            p.unlink()

    print("\n============================================================")
    print("BATTLE RADIO RETURN FIX V2.1 INSTALADO")
    print("============================================================")
    print("Corrigido:")
    print("  L -> Radio continua igual")
    print("  B -> volta para batalha e ESPERA o Reshow terminar")
    print("  menu Battle/Bag/Pokemon/Run so e redesenhado depois")
    print("  controller nao roda contra as janelas do Radio durante o retorno")
    print("")
    print("START/SELECT e a barrinha radiodisplay NAO foram alterados.")
    print("Nao mexe em radio.c.")
    print("Nao chama make e nao usa make -B.")
    print("Backup:", bdir)
    print("\nAgora rode SOMENTE:")
    print("  make -j8")

if __name__ == "__main__":
    main()
