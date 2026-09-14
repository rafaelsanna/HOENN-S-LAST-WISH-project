#!/usr/bin/env python3
from pathlib import Path
import datetime
import re
import shutil


PATCH_TAG = "HLW_RADIO_RESTORE_MAP_MUSIC_V1"
RADIO_PATH = "src/radio.c"
OVERWORLD_PATH = "src/overworld.c"
SOUND_PATH = "src/sound.c"


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


def validate_prerequisites(files):
    radio = files[RADIO_PATH]
    overworld = files[OVERWORLD_PATH]
    sound = files[SOUND_PATH]

    required_radio = (
        '#include "overworld.h"',
        '#include "sound.h"',
        "static EWRAM_DATA bool8        sRadioIsPlaying",
        "static void Radio_ClearNowPlayingPopupQueue(void)",
        "static void Task_RadioWaitFadeExit(u8 taskId)",
        "m4aSongNumStop(songId);",
        "sRadioIsPlaying = playing;",
    )
    for needle in required_radio:
        if needle not in radio:
            die(f"src/radio.c incompativel: {needle} ausente.")

    required_overworld = (
        "void Overworld_ResetMapMusic(void)",
        "void Overworld_PlaySpecialMapMusic(void)",
        "u16 GetCurrLocationDefaultMusic(void)",
    )
    for needle in required_overworld:
        if needle not in overworld:
            die(f"src/overworld.c incompativel: {needle} ausente.")

    required_sound = (
        "void ResetMapMusic(void)",
        "bool8 IsBGMPausedOrStopped(void)",
        "void PlayNewMapMusic(u16 songNum)",
    )
    for needle in required_sound:
        if needle not in sound:
            die(f"src/sound.c incompativel: {needle} ausente.")


def patch_radio(text):
    begin_marker = f"// {PATCH_TAG}: BEGIN"
    end_marker = f"// {PATCH_TAG}: END"
    helper_call = "        Radio_RestoreMapMusicOnExit();"

    if begin_marker in text:
        if text.count(begin_marker) != 1 or text.count(end_marker) != 1:
            die("O bloco de seguranca da radio esta duplicado ou incompleto.")
        if text.count(helper_call) == 1:
            return text
        if helper_call in text:
            die("A chamada de restauracao da musica esta duplicada.")
    elif helper_call in text:
        die("Existe uma chamada de restauracao sem o bloco identificado.")

    helper = f'''// {PATCH_TAG}: BEGIN
// Stopping a Radio track leaves the BGM player paused while the map-music
// state still claims that the old map song is active. Reset that stale state
// before requesting the correct music for the current map.
static void Radio_RestoreMapMusicOnExit(void)
{{
    if (!sRadioIsPlaying && IsBGMPausedOrStopped())
    {{
        Radio_ClearNowPlayingPopupQueue();
        Overworld_ResetMapMusic();
        Overworld_PlaySpecialMapMusic();
    }}
}}
// {PATCH_TAG}: END

'''

    function_anchor = "static void Task_RadioWaitFadeExit(u8 taskId)\n"
    if text.count(function_anchor) != 1:
        die("Nao encontrei exatamente uma Task_RadioWaitFadeExit.")
    if begin_marker not in text:
        text = text.replace(function_anchor, helper + function_anchor, 1)

    callback_anchor = (
        "        ResetBgsAndClearDma3BusyFlags(0);\n"
        "        SetMainCallback2(sRadioReturnCallback);"
    )
    if text.count(callback_anchor) != 1:
        die("Nao encontrei o ponto seguro de retorno ao overworld.")
    replacement = (
        "        ResetBgsAndClearDma3BusyFlags(0);\n"
        f"{helper_call}\n"
        "        SetMainCallback2(sRadioReturnCallback);"
    )
    return text.replace(callback_anchor, replacement, 1)


def validate_final(files):
    radio = files[RADIO_PATH]
    required = (
        f"// {PATCH_TAG}: BEGIN",
        "static void Radio_RestoreMapMusicOnExit(void)",
        "if (!sRadioIsPlaying && IsBGMPausedOrStopped())",
        "Radio_ClearNowPlayingPopupQueue();",
        "Overworld_ResetMapMusic();",
        "Overworld_PlaySpecialMapMusic();",
        "        Radio_RestoreMapMusicOnExit();",
        f"// {PATCH_TAG}: END",
    )
    for needle in required:
        if needle not in radio:
            die(f"Verificacao final falhou: {needle} ausente em src/radio.c.")

    if radio.count(f"// {PATCH_TAG}: BEGIN") != 1:
        die("Verificacao final falhou: bloco de seguranca duplicado.")
    if radio.count("        Radio_RestoreMapMusicOnExit();") != 1:
        die("Verificacao final falhou: chamada de restauracao duplicada.")

    wait_function = re.search(
        r"static void Task_RadioWaitFadeExit\(u8 taskId\)\n"
        r"\{.*?\n\}",
        radio,
        re.DOTALL,
    )
    if not wait_function:
        die("Verificacao final falhou: Task_RadioWaitFadeExit ausente.")

    body = wait_function.group(0)
    cleanup_pos = body.find("ResetBgsAndClearDma3BusyFlags(0);")
    restore_pos = body.find("Radio_RestoreMapMusicOnExit();")
    callback_pos = body.find("SetMainCallback2(sRadioReturnCallback);")
    if not (0 <= cleanup_pos < restore_pos < callback_pos):
        die("Verificacao final falhou: ordem insegura no retorno ao mapa.")


def main():
    root = Path.cwd().resolve()
    print("Verificando o desligamento da Radio e o retorno da musica do mapa...")

    paths = {
        RADIO_PATH: root / RADIO_PATH,
        OVERWORLD_PATH: root / OVERWORLD_PATH,
        SOUND_PATH: root / SOUND_PATH,
    }
    missing = [relative for relative, path in paths.items() if not path.is_file()]
    if missing:
        die(
            "Arquivos obrigatorios ausentes: " + ", ".join(missing)
            + ". Rode este repair na raiz do pokeemerald-expansion."
        )

    originals = {
        relative: path.read_text(encoding="utf-8")
        for relative, path in paths.items()
    }
    validate_prerequisites(originals)

    patched = dict(originals)
    patched[RADIO_PATH] = patch_radio(originals[RADIO_PATH])
    validate_final(patched)

    changed = [relative for relative in paths if patched[relative] != originals[relative]]
    if not changed:
        print("\nHLW RADIO RESTORE MAP MUSIC V1 ja esta aplicado.")
        print("Nada foi alterado.")
        print("Rode: make -j8")
        return

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_root = root / "PHYTON/backups" / f"hlw_radio_restore_map_music_v1_{stamp}"
    for relative in changed:
        backup_file(paths[relative], root, backup_root)

    written = []
    try:
        for relative in changed:
            atomic_write(paths[relative], patched[relative])
            written.append(relative)
    except Exception as error:
        for relative in written:
            atomic_write(paths[relative], originals[relative])
        die(f"Falha ao gravar; alteracoes revertidas: {error}")

    print("\n============================================================")
    print("HLW RADIO RESTORE MAP MUSIC V1 APLICADO")
    print("============================================================")
    print("- Pausar/desligar a Radio nao deixa mais o mapa sem BGM.")
    print("- O estado antigo da musica do mapa e zerado com seguranca.")
    print("- A musica correta do mapa e agendada antes do retorno ao jogo.")
    print("- Radio tocando continua tocando normalmente ao fechar a tela.")
    print("- Funciona com RADIO PRIORITY ligada ou desligada.")
    print("Arquivos alterados:")
    for relative in changed:
        print("  -", relative)
    print("Backup:", backup_root)
    print("\nO repair nao executa make e nao usa make -B.")
    print("Agora rode SOMENTE:")
    print("  make -j8")


if __name__ == "__main__":
    main()
