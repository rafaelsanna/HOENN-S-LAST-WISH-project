#!/usr/bin/env python3
from pathlib import Path
import datetime
import re
import shutil


PATCH_TAG_V1 = "HLW_BATTLE_RADIO_L_PRIORITY_GUARD_V1"
PATCH_TAG_V2 = "HLW_BATTLE_RADIO_L_PRIORITY_GUARD_V2"
BATTLE_PATH = "src/battle_controller_player.c"
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


def validate_prerequisites(files):
    battle = files[BATTLE_PATH]
    radio = files[RADIO_PATH]

    required_battle = (
        "static void HandleInputChooseAction(u32 battler)",
        "extern bool8 RadioPriority_ShouldBlockBgmChange(void);",
        "extern void Radio_Open(MainCallback returnCallback);",
        "if (gMain.newKeysRaw & L_BUTTON)",
        "BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);",
        "gBattlerControllerFuncs[battler] = OpenRadioFromBattle;",
        "Radio_Open(ReshowBattleScreenAfterMenu);",
    )

    already_patched = (
        "if ((gMain.newKeysRaw & L_BUTTON) && RadioPriority_IsEnabled())"
        in battle
    )
    for needle in required_battle:
        if needle == "if (gMain.newKeysRaw & L_BUTTON)" and already_patched:
            continue
        if needle not in battle:
            die(f"{BATTLE_PATH} incompativel: {needle} ausente.")

    required_radio = (
        "bool8 RadioPriority_IsEnabled(void)",
        "return sRadioPriorityEnabled;",
        "void Radio_Open(MainCallback returnCallback)",
        "Radio_LoadPersistentState();",
    )
    for needle in required_radio:
        if needle not in radio:
            die(f"{RADIO_PATH} incompativel: {needle} ausente.")


def remove_v1_radio_guard(text):
    begin_tag = f"// {PATCH_TAG_V1}: BEGIN"
    end_tag = f"// {PATCH_TAG_V1}: END"

    begin_count = text.count(begin_tag)
    end_count = text.count(end_tag)
    if begin_count == 0 and end_count == 0:
        return text
    if begin_count != 1 or end_count != 1:
        die("A trava V1 esta incompleta ou duplicada em src/radio.c.")

    pattern = re.compile(
        rf"\n[ \t]*// {PATCH_TAG_V1}: BEGIN\n"
        rf".*?"
        rf"[ \t]*// {PATCH_TAG_V1}: END\n",
        re.DOTALL,
    )
    patched, count = pattern.subn("\n", text, count=1)
    if count != 1:
        die("Nao consegui remover com seguranca a trava V1 de src/radio.c.")
    return patched


def patch_battle_controller(text):
    declaration = "extern bool8 RadioPriority_IsEnabled(void);"
    if declaration not in text:
        anchor = "extern bool8 RadioPriority_ShouldBlockBgmChange(void);\n"
        if text.count(anchor) != 1:
            die("Nao encontrei exatamente o bloco da API Radio Priority.")
        text = text.replace(anchor, anchor + declaration + "\n", 1)
    elif text.count(declaration) != 1:
        die("A declaracao RadioPriority_IsEnabled esta duplicada.")

    old_condition = "        if (gMain.newKeysRaw & L_BUTTON)"
    new_condition = (
        "        // " + PATCH_TAG_V2 + "\n"
        "        // Check Priority before starting the fade or changing battle callbacks.\n"
        "        if ((gMain.newKeysRaw & L_BUTTON) && RadioPriority_IsEnabled())"
    )

    if new_condition in text:
        if text.count(new_condition) != 1:
            die("A trava V2 esta duplicada em battle_controller_player.c.")
        return text

    if text.count(old_condition) != 1:
        die("Nao encontrei exatamente a condicao original do L em batalha.")
    return text.replace(old_condition, new_condition, 1)


def validate_final(files):
    battle = files[BATTLE_PATH]
    radio = files[RADIO_PATH]

    forbidden_radio = (
        f"// {PATCH_TAG_V1}: BEGIN",
        f"// {PATCH_TAG_V1}: END",
        "if (gMain.inBattle && !sRadioPriorityEnabled)",
    )
    for needle in forbidden_radio:
        if needle in radio:
            die(f"Verificacao final falhou: trava tardia ainda presente: {needle}")

    declaration = "extern bool8 RadioPriority_IsEnabled(void);"
    condition = (
        "if ((gMain.newKeysRaw & L_BUTTON) && RadioPriority_IsEnabled())"
    )
    if battle.count(declaration) != 1:
        die("Verificacao final falhou: declaracao da API ausente ou duplicada.")
    if battle.count(f"// {PATCH_TAG_V2}") != 1:
        die("Verificacao final falhou: marcador V2 ausente ou duplicado.")
    if battle.count(condition) != 1:
        die("Verificacao final falhou: condicao V2 ausente ou duplicada.")
    if "        if (gMain.newKeysRaw & L_BUTTON)" in battle:
        die("Verificacao final falhou: condicao antiga do L ainda existe.")

    input_function = re.search(
        r"static void HandleInputChooseAction\(u32 battler\)\n"
        r"\{(?P<body>.*?)\n\}",
        battle,
        re.DOTALL,
    )
    if not input_function:
        die("Verificacao final falhou: HandleInputChooseAction ausente.")

    body = input_function.group("body")
    condition_pos = body.find(condition)
    fade_pos = body.find(
        "BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 16, RGB_BLACK);"
    )
    callback_pos = body.find(
        "gBattlerControllerFuncs[battler] = OpenRadioFromBattle;"
    )
    if min(condition_pos, fade_pos, callback_pos) < 0:
        die("Verificacao final falhou: fluxo de abertura incompleto.")
    if not (condition_pos < fade_pos < callback_pos):
        die("Verificacao final falhou: Priority precisa ser testada antes do fade.")


def main():
    root = Path.cwd().resolve()
    print("Corrigindo o atalho L da Radio antes do fade da batalha...")

    paths = {
        BATTLE_PATH: root / BATTLE_PATH,
        RADIO_PATH: root / RADIO_PATH,
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
    patched[RADIO_PATH] = remove_v1_radio_guard(originals[RADIO_PATH])
    patched[BATTLE_PATH] = patch_battle_controller(originals[BATTLE_PATH])
    validate_final(patched)

    changed = [
        relative
        for relative in paths
        if patched[relative] != originals[relative]
    ]
    if not changed:
        print("\nHLW BATTLE RADIO L PRIORITY GUARD V2 ja esta aplicado.")
        print("Nada foi alterado.")
        print("Rode: make -j8")
        return

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_root = (
        root
        / "PHYTON/backups"
        / f"hlw_battle_radio_l_priority_guard_v2_{stamp}"
    )
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
    print("HLW BATTLE RADIO L PRIORITY GUARD V2 APLICADO")
    print("============================================================")
    print("- Remove a trava V1 tardia que deixava a tela preta.")
    print("- RADIO PRIORITY OFF: L nao inicia fade nem abre a Radio.")
    print("- RADIO PRIORITY ON: L abre a Radio normalmente.")
    print("- A abertura pelo item fora da batalha continua inalterada.")
    print("Arquivos alterados:")
    for relative in changed:
        print("  -", relative)
    print("Backup:", backup_root)
    print("\nO repair nao executa make e nao usa make -B.")
    print("Agora rode SOMENTE:")
    print("  make -j8")


if __name__ == "__main__":
    main()
