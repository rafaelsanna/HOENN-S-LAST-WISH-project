#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import datetime

PATCH_TAG = "HLW_BATTLE_RADIO_MEDIA_KEYS_V1_1"

EXTERNS = """\
// HLW_BATTLE_RADIO_MEDIA_KEYS_V1_1
extern bool8 RadioPriority_ShouldBlockBgmChange(void);
extern bool8 RadioPriority_NextTrack(void);
extern bool8 RadioPriority_PreviousTrack(void);
"""

HOOK = """\
    // HLW_BATTLE_RADIO_MEDIA_KEYS_V1_1
    // Only on the main Battle / Bag / Pokemon / Run command screen.
    //
    // Priority ON + radio playing:
    //   START  -> next radio track
    //   SELECT -> previous radio track
    //
    // Link / recorded battles are intentionally excluded in V1.1 to avoid
    // introducing local-only input changes into synchronized playback.
    if (!(gBattleTypeFlags & (BATTLE_TYPE_LINK | BATTLE_TYPE_RECORDED))
     && RadioPriority_ShouldBlockBgmChange())
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

def find_function_span(text):
    # Current expansion uses:
    #   static void HandleInputChooseAction(u32 battler)
    # Some branches/forks may use an enum type, so accept any single battler type.
    m = re.search(
        r'static\s+void\s+HandleInputChooseAction\s*\(\s*[^,\n\)]+\s+battler\s*\)\s*\{',
        text
    )
    if not m:
        return None

    brace = text.find("{", m.start())
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
                return m.start(), i + 1

        i += 1

    return None

def patch_controller(text):
    if PATCH_TAG in text:
        return text

    span = find_function_span(text)
    if span is None:
        die("Nao achei HandleInputChooseAction(...) em src/battle_controller_player.c.")

    fstart, fend = span
    func = text[fstart:fend]

    # Exact safety anchors from the user's current expansion file.
    for anchor in (
        "gActionSelectionCursor[battler]",
        "JOY_NEW(A_BUTTON)",
        "JOY_NEW(START_BUTTON)",
        "B_LAST_USED_BALL",
    ):
        if anchor not in func:
            die("HandleInputChooseAction tem formato inesperado; faltou: " + anchor)

    # Add declarations before the local static function prototype block.
    anchor = re.search(r'^static void PlayerHandleLoadMonSprite', text, re.M)
    if not anchor:
        die("Nao achei o bloco PlayerHandle* para inserir externs.")
    text = text[:anchor.start()] + EXTERNS + "\n" + text[anchor.start():]

    # Relocate function after insertion.
    span = find_function_span(text)
    if span is None:
        die("Falha ao relocalizar HandleInputChooseAction depois dos externs.")
    fstart, fend = span
    func = text[fstart:fend]

    # Important: put the hook AFTER the special Last Used Ball overlay logic.
    # In the user's current source, normal action input begins at A_BUTTON after
    # that block. This prevents START/SELECT from being stolen while that overlay
    # is actively handling its own input.
    a_anchor = func.find("    if (JOY_NEW(A_BUTTON))")
    if a_anchor < 0:
        die("Nao achei o inicio da cadeia normal de input (A_BUTTON).")

    insert_at = fstart + a_anchor
    return text[:insert_at] + HOOK + text[insert_at:]

def verify_radio(text):
    required = (
        "bool8 RadioPriority_ShouldBlockBgmChange(void)",
        "bool8 RadioPriority_NextTrack(void)",
        "bool8 RadioPriority_PreviousTrack(void)",
    )
    missing = [x for x in required if x not in text]
    if missing:
        die("src/radio.c nao tem a API esperada:\n  " + "\n  ".join(missing))

def verify_battle_main(text):
    if "RadioPriority_MaintainBgm();" not in text:
        die("src/battle_main.c nao possui RadioPriority_MaintainBgm();")

def main():
    root = Path.cwd()
    controller = root / "src/battle_controller_player.c"
    battle_main = root / "src/battle_main.c"
    radio = root / "src/radio.c"

    for p in (controller, battle_main, radio):
        if not p.exists():
            die(f"Nao achei {p}. Rode da raiz do pokeemerald-expansion.")

    old = controller.read_text()
    verify_radio(radio.read_text())
    verify_battle_main(battle_main.read_text())

    if PATCH_TAG in old:
        print("\nBATTLE RADIO MEDIA KEYS V1.1 ja instalado.")
        print("Nada foi alterado.")
        print("Rode: make -j8")
        return

    patched = patch_controller(old)

    # Final verification BEFORE writing.
    span = find_function_span(patched)
    if span is None:
        die("Verificacao final: HandleInputChooseAction sumiu.")
    func = patched[span[0]:span[1]]

    for token in (
        "RadioPriority_ShouldBlockBgmChange()",
        "RadioPriority_NextTrack();",
        "RadioPriority_PreviousTrack();",
        "JOY_NEW(START_BUTTON)",
        "JOY_NEW(SELECT_BUTTON)",
        "BATTLE_TYPE_LINK | BATTLE_TYPE_RECORDED",
    ):
        if token not in func:
            die("Verificacao final falhou; faltou: " + token)

    # Make sure our hook is before the game's original A/DPAD/START chain.
    hook_pos = func.find(PATCH_TAG)
    a_pos = func.find("if (JOY_NEW(A_BUTTON))")
    if hook_pos < 0 or a_pos < 0 or hook_pos > a_pos:
        die("Verificacao final: hook nao ficou antes do input normal.")

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"battle_radio_media_keys_v1_1_{stamp}"
    dst = bdir / "src/battle_controller_player.c"
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(controller, dst)

    controller.write_text(patched)

    # Only this C file needs recompilation.
    for rel in (
        "build/modern/src/battle_controller_player.o",
        "build/modern/src/battle_controller_player.d",
    ):
        p = root / rel
        if p.exists():
            print("rm", rel)
            p.unlink()

    print("\n============================================================")
    print("BATTLE RADIO MEDIA KEYS V1.1 INSTALADO")
    print("============================================================")
    print("Priority ON + radio tocando:")
    print("  START  -> proxima musica")
    print("  SELECT -> musica anterior")
    print("")
    print("Ativo somente na tela principal Battle / Bag / Pokemon / Run.")
    print("Nao atua em Fight/moves, target, Bag aberta ou Party aberta.")
    print("Singles e doubles locais usam o mesmo HandleInputChooseAction.")
    print("Link/Recorded battle ficam excluidas neste V1.1.")
    print("")
    print("Sem Priority ativa, START/SELECT mantem o comportamento normal.")
    print("Backup:", bdir)
    print("\nAgora rode SOMENTE:")
    print("  make -j8")

if __name__ == "__main__":
    main()
