#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import datetime

PATCH_TAG = "HLW_BATTLE_RADIO_MEDIA_KEYS_V1"

EXTERNS = """\
// HLW_BATTLE_RADIO_MEDIA_KEYS_V1
extern bool8 RadioPriority_ShouldBlockBgmChange(void);
extern bool8 RadioPriority_NextTrack(void);
extern bool8 RadioPriority_PreviousTrack(void);
"""

HOOK = """\
    // HLW_BATTLE_RADIO_MEDIA_KEYS_V1
    // Only active on the main Battle / Bag / Pokemon / Run command screen,
    // because HandleInputChooseAction is not used by move, target, bag or party menus.
    //
    // While Radio Priority is actively protecting a playing radio song:
    //   START  -> next radio track
    //   SELECT -> previous radio track
    //
    // The key is consumed even if the radio's short skip cooldown rejects a
    // second rapid press. This prevents START from falling through to HP-bar
    // display toggle or SELECT from falling through to the debug menu.
    if (RadioPriority_ShouldBlockBgmChange())
    {
        if (JOY_NEW(START_BUTTON))
        {
            RadioPriority_NextTrack();
            return;
        }
        else if (JOY_NEW(SELECT_BUTTON))
        {
            RadioPriority_PreviousTrack();
            return;
        }
    }

"""

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def find_function_span(text, signature):
    start = text.find(signature)
    if start < 0:
        return None

    brace = text.find("{", start)
    if brace < 0:
        return None

    depth = 0
    i = brace
    in_string = False
    in_char = False
    in_line_comment = False
    in_block_comment = False
    escaped = False

    while i < len(text):
        c = text[i]
        n = text[i + 1] if i + 1 < len(text) else ""

        if in_line_comment:
            if c == "\n":
                in_line_comment = False
            i += 1
            continue

        if in_block_comment:
            if c == "*" and n == "/":
                in_block_comment = False
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
            in_line_comment = True
            i += 2
            continue

        if c == "/" and n == "*":
            in_block_comment = True
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
                return start, i + 1, brace

        i += 1

    return None

def patch_controller(text):
    if PATCH_TAG in text:
        print("battle_controller_player.c: hook ja instalado.")
        return text

    sig = "static void HandleInputChooseAction(enum BattlerId battler)"
    span = find_function_span(text, sig)
    if span is None:
        die("Nao achei HandleInputChooseAction em src/battle_controller_player.c.")

    fstart, fend, brace = span
    func = text[fstart:fend]

    # Safety anchors: this must be the actual main command-menu handler.
    required = [
        "gActionSelectionCursor[battler]",
        "JOY_NEW(A_BUTTON)",
        "JOY_NEW(START_BUTTON)",
    ]
    missing = [x for x in required if x not in func]
    if missing:
        die("HandleInputChooseAction nao tem o formato esperado. Faltou: " + ", ".join(missing))

    # Insert externs after include block and before first function declarations.
    # Prefer immediately before the first "static void PlayerHandle..." line.
    extern_anchor = re.search(r'^static void PlayerHandle', text, re.M)
    if extern_anchor is None:
        die("Nao achei bloco de declaracoes PlayerHandle*.")

    text = text[:extern_anchor.start()] + EXTERNS + "\n" + text[extern_anchor.start():]

    # Function offsets changed after extern insertion: locate again.
    span = find_function_span(text, sig)
    if span is None:
        die("Falha interna ao relocalizar HandleInputChooseAction.")
    fstart, fend, brace = span
    func = text[fstart:fend]

    # Put the radio gate immediately before the first normal input-chain test.
    # This is deliberately before A/DPAD/B/START/SELECT handling, but after the
    # function's setup/bounce calls.
    input_anchor_rel = func.find("    if (JOY_REPEAT(DPAD_ANY)")
    if input_anchor_rel < 0:
        # Some versions may not have L=A dpad repeat handling. Fall back to A.
        input_anchor_rel = func.find("    if (JOY_NEW(A_BUTTON))")
    if input_anchor_rel < 0:
        die("Nao achei inicio seguro da cadeia de input em HandleInputChooseAction.")

    insert_at = fstart + input_anchor_rel
    text = text[:insert_at] + HOOK + text[insert_at:]

    return text

def verify_radio(radio_text):
    required = [
        "bool8 RadioPriority_ShouldBlockBgmChange(void)",
        "bool8 RadioPriority_NextTrack(void)",
        "bool8 RadioPriority_PreviousTrack(void)",
        "void RadioPriority_MaintainBgm(void)",
    ]
    missing = [x for x in required if x not in radio_text]
    if missing:
        die(
            "Seu src/radio.c nao possui a API de Priority esperada:\n  "
            + "\n  ".join(missing)
        )

def verify_battle_main(text):
    # We do not edit battle_main.c. We only require the existing Priority hook,
    # because that is what keeps the radio alive during battle.
    if "RadioPriority_MaintainBgm();" not in text:
        die("battle_main.c nao possui RadioPriority_MaintainBgm();")

def main():
    root = Path.cwd()

    controller = root / "src/battle_controller_player.c"
    battle_main = root / "src/battle_main.c"
    radio = root / "src/radio.c"

    for p in (controller, battle_main, radio):
        if not p.exists():
            die(f"Nao achei {p}. Rode o installer na raiz do pokeemerald-expansion.")

    controller_text = controller.read_text()
    battle_main_text = battle_main.read_text()
    radio_text = radio.read_text()

    verify_radio(radio_text)
    verify_battle_main(battle_main_text)

    if PATCH_TAG in controller_text:
        print("\nO sistema ja esta instalado. Nada foi alterado.")
        print("Rode: make -j8")
        return

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_dir = root / "PHYTON/backups" / f"battle_radio_media_keys_{stamp}"
    backup_path = backup_dir / "src/battle_controller_player.c"
    backup_path.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(controller, backup_path)

    patched = patch_controller(controller_text)

    # Final structural verification before touching user's file.
    span = find_function_span(patched, "static void HandleInputChooseAction(enum BattlerId battler)")
    if span is None:
        die("Verificacao final falhou: HandleInputChooseAction.")

    func = patched[span[0]:span[1]]
    checks = [
        "RadioPriority_ShouldBlockBgmChange()",
        "RadioPriority_NextTrack();",
        "RadioPriority_PreviousTrack();",
        "JOY_NEW(START_BUTTON)",
        "JOY_NEW(SELECT_BUTTON)",
    ]
    missing = [x for x in checks if x not in func]
    if missing:
        die("Verificacao final falhou. Faltou: " + ", ".join(missing))

    controller.write_text(patched)

    # Remove ONLY this translation unit's stale build products.
    for rel in (
        "build/modern/src/battle_controller_player.o",
        "build/modern/src/battle_controller_player.d",
    ):
        p = root / rel
        if p.exists():
            print("rm", rel)
            p.unlink()

    print("\n============================================================")
    print("BATTLE RADIO MEDIA KEYS V1 INSTALADO")
    print("============================================================")
    print("Quando RADIO PRIORITY estiver ON + radio tocando:")
    print("  START  = proxima musica")
    print("  SELECT = musica anterior")
    print("")
    print("O hook existe SOMENTE em HandleInputChooseAction:")
    print("  - Battle / Bag / Pokemon / Run: SIM")
    print("  - lista de golpes: NAO")
    print("  - escolha de alvo: NAO")
    print("  - Bag aberta: NAO")
    print("  - Party aberta: NAO")
    print("")
    print("Singles e doubles usam o mesmo handler de comando principal.")
    print("Sem Priority ativa:")
    print("  - START continua com o comportamento normal da batalha")
    print("  - SELECT continua livre para o comportamento normal/debug")
    print("")
    print("Este V1 NAO adiciona o banner visual no topo ainda.")
    print("Primeiro objetivo: compilar e validar os controles sem quebrar batalha.")
    print("")
    print("Backup:", backup_dir)
    print("\nAgora rode SOMENTE:")
    print("  make -j8")

if __name__ == "__main__":
    main()
