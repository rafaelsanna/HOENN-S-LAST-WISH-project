#!/usr/bin/env python3
from pathlib import Path
import shutil
import datetime

PATCH_TAG = "HLW_BATTLE_RADIO_PRIORITY_LOCK_V2_2"

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def patch_radio(text):
    if PATCH_TAG in text:
        print("Priority lock V2.2 ja instalado.")
        return text

    horizontal_old = '''            case RADIO_MENU_PRIORITY:
                PlaySE(SE_SELECT);
                sRadioPriorityEnabled = !sRadioPriorityEnabled;

                if (sRadioPriorityEnabled && playing)
                    Radio_QueueNowPlayingPopup(songId);
                else if (!sRadioPriorityEnabled)
                    Radio_ClearNowPlayingPopupQueue();

                Radio_SavePersistentState();
                Radio_DrawMenu(songId);
                return;
'''

    horizontal_new = '''            case RADIO_MENU_PRIORITY:
                PlaySE(SE_SELECT);

                // HLW_BATTLE_RADIO_PRIORITY_LOCK_V2_2
                // Mid-battle, Priority may be turned ON but never OFF.
                if (gMain.inBattle && sRadioPriorityEnabled)
                {
                    Radio_DrawMenu(songId);
                    return;
                }

                sRadioPriorityEnabled = !sRadioPriorityEnabled;

                if (sRadioPriorityEnabled && playing)
                    Radio_QueueNowPlayingPopup(songId);
                else if (!sRadioPriorityEnabled)
                    Radio_ClearNowPlayingPopupQueue();

                Radio_SavePersistentState();
                Radio_DrawMenu(songId);
                return;
'''

    a_old = '''            case RADIO_MENU_PRIORITY:
                sRadioPriorityEnabled = !sRadioPriorityEnabled;

                if (sRadioPriorityEnabled && playing)
                    Radio_QueueNowPlayingPopup(songId);
                else if (!sRadioPriorityEnabled)
                    Radio_ClearNowPlayingPopupQueue();

                Radio_SavePersistentState();
                Radio_DrawMenu(songId);
                break;
'''

    a_new = '''            case RADIO_MENU_PRIORITY:
                // HLW_BATTLE_RADIO_PRIORITY_LOCK_V2_2
                // Same rule on A: battle + ON stays ON; OFF may still be enabled.
                if (gMain.inBattle && sRadioPriorityEnabled)
                {
                    Radio_DrawMenu(songId);
                    break;
                }

                sRadioPriorityEnabled = !sRadioPriorityEnabled;

                if (sRadioPriorityEnabled && playing)
                    Radio_QueueNowPlayingPopup(songId);
                else if (!sRadioPriorityEnabled)
                    Radio_ClearNowPlayingPopupQueue();

                Radio_SavePersistentState();
                Radio_DrawMenu(songId);
                break;
'''

    hc = text.count(horizontal_old)
    ac = text.count(a_old)

    if hc != 1:
        die(f"Nao achei exatamente o bloco PRIORITY de LEFT/RIGHT esperado (matches={hc}).")
    if ac != 1:
        die(f"Nao achei exatamente o bloco PRIORITY do botao A esperado (matches={ac}).")

    text = text.replace(horizontal_old, horizontal_new, 1)
    text = text.replace(a_old, a_new, 1)

    if text.count(PATCH_TAG) != 2:
        die("Verificacao final: esperava 2 guards de Priority.")
    if text.count("if (gMain.inBattle && sRadioPriorityEnabled)") != 2:
        die("Verificacao final: guards gMain.inBattle ausentes.")

    return text

def main():
    root = Path.cwd()
    radio = root / "src/radio.c"

    if not radio.exists():
        die("Nao achei src/radio.c. Rode da raiz do pokeemerald-expansion.")

    old = radio.read_text()

    if PATCH_TAG in old:
        print("\nBATTLE RADIO PRIORITY LOCK V2.2 ja esta instalado.")
        print("Nada foi alterado.")
        print("Rode: make -j8")
        return

    patched = patch_radio(old)

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"battle_radio_priority_lock_v2_2_{stamp}"
    dst = bdir / "src/radio.c"
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(radio, dst)

    radio.write_text(patched)

    for rel in (
        "build/modern/src/radio.o",
        "build/modern/src/radio.d",
    ):
        p = root / rel
        if p.exists():
            print("rm", rel)
            p.unlink()

    print("\n============================================================")
    print("BATTLE RADIO PRIORITY LOCK V2.2 INSTALADO")
    print("============================================================")
    print("Durante batalha:")
    print("  Priority ON  -> fica travado em ON")
    print("  Priority OFF -> ainda pode ser ligado")
    print("")
    print("Fora da batalha:")
    print("  Priority continua podendo alternar ON/OFF normalmente")
    print("")
    print("START/SELECT, L, retorno da batalha e radiodisplay nao foram alterados.")
    print("Nao chama make e nao usa make -B.")
    print("Backup:", bdir)
    print("\nAgora rode SOMENTE:")
    print("  make -j8")

if __name__ == "__main__":
    main()
