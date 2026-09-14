#!/usr/bin/env python3
from pathlib import Path
import datetime
import re
import shutil


PATCH_TAG_V1 = "HLW_RADIO_RESTORE_MAP_MUSIC_V1"
PATCH_TAG_V2 = "HLW_RADIO_RESTORE_CONTEXT_MUSIC_V2"
RADIO_PATH = "src/radio.c"
POKEMON_SOURCE_PATH = "src/pokemon.c"
POKEMON_HEADER_PATH = "include/pokemon.h"


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
    pokemon_source = files[POKEMON_SOURCE_PATH]
    pokemon_header = files[POKEMON_HEADER_PATH]

    required_radio = (
        '#include "main.h"',
        '#include "overworld.h"',
        '#include "sound.h"',
        "static EWRAM_DATA bool8        sRadioIsPlaying",
        "static void Radio_ClearNowPlayingPopupQueue(void)",
        "static void Task_RadioWaitFadeExit(u8 taskId)",
        f"// {PATCH_TAG_V1}: BEGIN",
        "static void Radio_RestoreMapMusicOnExit(void)",
        "Radio_RestoreMapMusicOnExit();",
    )
    if f"// {PATCH_TAG_V2}: BEGIN" not in radio:
        for needle in required_radio:
            if needle not in radio:
                die(f"src/radio.c incompativel: {needle} ausente.")

    required_pokemon_source = (
        "u16 GetBattleBGM(void)",
        "void PlayBattleBGM(void)",
        "PlayBGM(GetBattleBGM());",
    )
    for needle in required_pokemon_source:
        if needle not in pokemon_source:
            die(f"src/pokemon.c incompativel: {needle} ausente.")

    required_pokemon_header = (
        "u16 GetBattleBGM(void);",
        "void PlayBattleBGM(void);",
    )
    for needle in required_pokemon_header:
        if needle not in pokemon_header:
            die(f"include/pokemon.h incompativel: {needle} ausente.")


def add_pokemon_include(text):
    include_line = '#include "pokemon.h"\n'
    if include_line in text:
        return text

    anchor = '#include "palette.h"\n'
    if text.count(anchor) != 1:
        die('Nao encontrei exatamente um #include "palette.h" em src/radio.c.')
    return text.replace(anchor, anchor + include_line, 1)


def build_v2_block():
    return f'''// {PATCH_TAG_V2}: BEGIN
// A stopped Radio track must restore the active audio context. Battles own
// their own BGM selection, while every other screen returns to map music.
static void Radio_RestoreContextMusicOnExit(void)
{{
    if (!sRadioIsPlaying && IsBGMPausedOrStopped())
    {{
        Radio_ClearNowPlayingPopupQueue();

        if (gMain.inBattle)
        {{
            // This selects the correct wild, trainer, leader, rival, legendary,
            // Frontier, or other battle theme from the current battle state.
            PlayBattleBGM();
        }}
        else
        {{
            // Reset stale map-music bookkeeping before requesting the current
            // map, surfing, underwater, weather, or saved special music.
            Overworld_ResetMapMusic();
            Overworld_PlaySpecialMapMusic();
        }}
    }}
}}
// {PATCH_TAG_V2}: END
'''


def patch_restore_block(text):
    if f"// {PATCH_TAG_V2}: BEGIN" in text:
        if text.count(f"// {PATCH_TAG_V2}: BEGIN") != 1:
            die("O bloco V2 esta duplicado em src/radio.c.")
        return text

    pattern = re.compile(
        rf"// {PATCH_TAG_V1}: BEGIN\n.*?// {PATCH_TAG_V1}: END",
        re.DOTALL,
    )
    matches = list(pattern.finditer(text))
    if len(matches) != 1:
        die("Nao encontrei exatamente o bloco V1 de restauracao da musica.")
    return pattern.sub(lambda _match: build_v2_block(), text, count=1)


def patch_restore_call(text):
    old_call = "        Radio_RestoreMapMusicOnExit();"
    new_call = "        Radio_RestoreContextMusicOnExit();"

    if new_call in text:
        if text.count(new_call) != 1:
            die("A chamada V2 de restauracao esta duplicada.")
        return text

    if text.count(old_call) != 1:
        die("Nao encontrei exatamente a chamada V1 de restauracao.")
    return text.replace(old_call, new_call, 1)


def patch_radio(text):
    text = add_pokemon_include(text)
    text = patch_restore_block(text)
    text = patch_restore_call(text)
    return text


def validate_final(files):
    radio = files[RADIO_PATH]
    required = (
        '#include "pokemon.h"',
        f"// {PATCH_TAG_V2}: BEGIN",
        "static void Radio_RestoreContextMusicOnExit(void)",
        "if (!sRadioIsPlaying && IsBGMPausedOrStopped())",
        "if (gMain.inBattle)",
        "PlayBattleBGM();",
        "Overworld_ResetMapMusic();",
        "Overworld_PlaySpecialMapMusic();",
        "        Radio_RestoreContextMusicOnExit();",
        f"// {PATCH_TAG_V2}: END",
    )
    for needle in required:
        if needle not in radio:
            die(f"Verificacao final falhou: {needle} ausente em src/radio.c.")

    forbidden = (
        f"// {PATCH_TAG_V1}: BEGIN",
        "static void Radio_RestoreMapMusicOnExit(void)",
        "Radio_RestoreMapMusicOnExit();",
    )
    for needle in forbidden:
        if needle in radio:
            die(f"Verificacao final falhou: trecho antigo ainda existe: {needle}.")

    if radio.count(f"// {PATCH_TAG_V2}: BEGIN") != 1:
        die("Verificacao final falhou: bloco V2 duplicado.")
    if radio.count("        Radio_RestoreContextMusicOnExit();") != 1:
        die("Verificacao final falhou: chamada V2 duplicada.")

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
    restore_pos = body.find("Radio_RestoreContextMusicOnExit();")
    callback_pos = body.find("SetMainCallback2(sRadioReturnCallback);")
    if not (0 <= cleanup_pos < restore_pos < callback_pos):
        die("Verificacao final falhou: ordem insegura no retorno da Radio.")


def main():
    root = Path.cwd().resolve()
    print("Reparando a restauracao de musica da Radio dentro e fora de batalha...")

    paths = {
        RADIO_PATH: root / RADIO_PATH,
        POKEMON_SOURCE_PATH: root / POKEMON_SOURCE_PATH,
        POKEMON_HEADER_PATH: root / POKEMON_HEADER_PATH,
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
        print("\nHLW RADIO RESTORE CONTEXT MUSIC V2 ja esta aplicado.")
        print("Nada foi alterado.")
        print("Rode: make -j8")
        return

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_root = root / "PHYTON/backups" / f"hlw_radio_restore_context_music_v2_{stamp}"
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
    print("HLW RADIO RESTORE CONTEXT MUSIC V2 APLICADO")
    print("============================================================")
    print("- Fora de batalha, pausar a Radio restaura a musica do mapa.")
    print("- Em batalha, pausar a Radio restaura o tema da batalha.")
    print("- GetBattleBGM escolhe o tema correto para o combate atual.")
    print("- Fechar a tela com a Radio tocando mantem a Radio normalmente.")
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
