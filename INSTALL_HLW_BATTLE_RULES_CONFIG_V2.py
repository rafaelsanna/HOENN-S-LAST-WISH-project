#!/usr/bin/env python3
from pathlib import Path
import datetime
import shutil


PATCH_TAG = "HLW_BATTLE_RULES_CONFIG_V2"
V1_TAG = "HLW_SHOW_TYPES_OPTION_V1"


def die(message):
    print("\n[ERRO]", message)
    raise SystemExit(1)


def replace_once(text, old, new, label):
    matches = text.count(old)
    if matches != 1:
        die(f"Nao achei exatamente o trecho esperado em {label} (matches={matches}).")
    return text.replace(old, new, 1)


def place_inverse_before_wish_menu(text):
    inverse_line = "    MENUITEM_DIF_INVERSE_BATTLE,\n"
    wish_line = "    MENUITEM_DIF_DEBUGMENU,\n"

    if text.count(inverse_line) != 1:
        die("Nao achei exatamente uma entrada INVERSE BTL no enum do menu.")
    if text.count(wish_line) != 1:
        die("Nao achei exatamente uma entrada WISH MENU no enum do menu.")

    # The enum order controls the visible option order.
    text = text.replace(inverse_line, "", 1)
    return text.replace(wish_line, inverse_line + wish_line, 1)


def patch_flags(text):
    old = """#define FLAG_UNUSED_0x4B8                                           0x4B8 // Unused Flag
#define FLAG_UNUSED_0x4B9                                           0x4B9 // Unused Flag
"""
    new = """#define FLAG_HARD_MODE_SLEEP_CLAUSE                                 0x4B8 // HLW_BATTLE_RULES_CONFIG_V2: enabled only by Hard mode
#define FLAG_INVERSE_BATTLE_OPTION                                  0x4B9 // HLW_BATTLE_RULES_CONFIG_V2: persistent Casual option
"""
    return replace_once(text, old, new, "include/constants/flags.h")


def patch_battle_config(text):
    text = replace_once(
        text,
        "#define B_FLAG_INVERSE_BATTLE       0     // If this flag is set, the battle's type effectiveness are inversed. For example, fire is super effective against water.\n",
        "#define B_FLAG_INVERSE_BATTLE       FLAG_INVERSE_BATTLE_OPTION // HLW_BATTLE_RULES_CONFIG_V2: Casual option; Hard forces it off.\n",
        "include/config/battle.h (Inverse Battle)",
    )
    text = replace_once(
        text,
        "#define B_FLAG_SLEEP_CLAUSE         0     // If this flag is set, sleep clause is enabled; if the player / AI has already put a Pokémon on the opponent's side to sleep and it is still sleeping, another one can't be put to sleep. AI requires AI_FLAG_CHECK_BAD_MOVE to understand.\n",
        "#define B_FLAG_SLEEP_CLAUSE         FLAG_HARD_MODE_SLEEP_CLAUSE // HLW_BATTLE_RULES_CONFIG_V2: synchronized automatically with Hard mode.\n",
        "include/config/battle.h (Sleep Clause)",
    )
    return text


def patch_option_menu(text):
    replacements = [
        (
            """    MENUITEM_DIF_RANDOMIZER_T,
    MENUITEM_DIF_DEBUGMENU,
""",
            """    MENUITEM_DIF_RANDOMIZER_T,
    MENUITEM_DIF_INVERSE_BATTLE,
    MENUITEM_DIF_DEBUGMENU,
""",
            "difficulty enum",
        ),
        (
            """static void DrawChoices_ShowTypes(int selection, int y);
static void DrawChoices_Nuzlocke(int selection, int y);
""",
            """static void DrawChoices_ShowTypes(int selection, int y);
static void DrawChoices_InverseBattle(int selection, int y);
static void DrawChoices_Nuzlocke(int selection, int y);
""",
            "draw prototype",
        ),
        (
            """    [MENUITEM_DIF_SHOW_TYPES]     = {DrawChoices_ShowTypes,   ProcessInput_Options_Two},
    [MENUITEM_DIF_NUZLOCKE]       = {DrawChoices_Nuzlocke,    ProcessInput_Options_Three},
""",
            """    [MENUITEM_DIF_SHOW_TYPES]     = {DrawChoices_ShowTypes,   ProcessInput_Options_Two},
    [MENUITEM_DIF_INVERSE_BATTLE] = {DrawChoices_InverseBattle, ProcessInput_Options_Two},
    [MENUITEM_DIF_NUZLOCKE]       = {DrawChoices_Nuzlocke,    ProcessInput_Options_Three},
""",
            "difficulty function table",
        ),
        (
            """static const u8 sText_ShowTypes[]       = _(\"SHOW TYPES\");
static const u8 sText_Nuzlocke[]        = _(\"NUZLOCKE\");
""",
            """static const u8 sText_ShowTypes[]       = _(\"SHOW TYPES\");
static const u8 sText_InverseBattle[]   = _(\"INVERSE BTL\");
static const u8 sText_Nuzlocke[]        = _(\"NUZLOCKE\");
""",
            "menu label",
        ),
        (
            """    [MENUITEM_DIF_SHOW_TYPES]     = sText_ShowTypes,
    [MENUITEM_DIF_NUZLOCKE]       = sText_Nuzlocke,
""",
            """    [MENUITEM_DIF_SHOW_TYPES]     = sText_ShowTypes,
    [MENUITEM_DIF_INVERSE_BATTLE] = sText_InverseBattle,
    [MENUITEM_DIF_NUZLOCKE]       = sText_Nuzlocke,
""",
            "difficulty names table",
        ),
        (
            """static void EnforceHardNpcTeamsRules(void)
{
    if (!IsHardNpcTeamsSelected())
        return;

    sOptions->sel_difficulty[MENUITEM_DIF_BATTLEITEMS]  = OPTIONS_BATTLEITEMS_OFF;
""",
            """static void EnforceHardNpcTeamsRules(void)
{
    // HLW_BATTLE_RULES_CONFIG_V2
    // Sleep Clause follows the current mode silently and has no menu entry.
    if (!IsHardNpcTeamsSelected())
    {
        FlagClear(FLAG_HARD_MODE_SLEEP_CLAUSE);
        return;
    }

    FlagSet(FLAG_HARD_MODE_SLEEP_CLAUSE);
    sOptions->sel_difficulty[MENUITEM_DIF_BATTLEITEMS]  = OPTIONS_BATTLEITEMS_OFF;
""",
            "Sleep Clause synchronization",
        ),
        (
            """    sOptions->sel_difficulty[MENUITEM_DIF_SHOW_TYPES]   = FALSE;
    sOptions->sel_difficulty[MENUITEM_DIF_RANDOMIZER_T] = FALSE;
""",
            """    sOptions->sel_difficulty[MENUITEM_DIF_SHOW_TYPES]   = FALSE;
    sOptions->sel_difficulty[MENUITEM_DIF_INVERSE_BATTLE] = FALSE;
    sOptions->sel_difficulty[MENUITEM_DIF_RANDOMIZER_T] = FALSE;
""",
            "Hard mode Inverse Battle enforcement",
        ),
        (
            """        case MENUITEM_DIF_SHOW_TYPES:       return !IsHardNpcTeamsSelected();
        case MENUITEM_DIF_NUZLOCKE:         return TRUE;
""",
            """        case MENUITEM_DIF_SHOW_TYPES:       return !IsHardNpcTeamsSelected();
        case MENUITEM_DIF_INVERSE_BATTLE:   return !IsHardNpcTeamsSelected();
        case MENUITEM_DIF_NUZLOCKE:         return TRUE;
""",
            "Hard mode Inverse Battle lock",
        ),
        (
            """static const u8 sText_Desc_ShowTypesOff[]       = _(\"Hide type indicators while choosing\\na move in battle.\");
static const u8 sText_Desc_ShowTypesOn[]        = _(\"Show type indicators while choosing\\na move in battle.\");
""",
            """static const u8 sText_Desc_ShowTypesOff[]       = _(\"Hide the opposing POKéMON's types\\nduring battle.\");
static const u8 sText_Desc_ShowTypesOn[]        = _(\"Show the opposing POKéMON's types\\nduring battle.\");
static const u8 sText_Desc_InverseBattleOff[]   = _(\"Use normal type matchups in battle.\");
static const u8 sText_Desc_InverseBattleOn[]    = _(\"Invert type matchups in battle.\");
""",
            "Show Types correction and Inverse descriptions",
        ),
        (
            """    [MENUITEM_DIF_SHOW_TYPES]   = {sText_Desc_ShowTypesOff,        sText_Desc_ShowTypesOn,    sText_Empty},
    [MENUITEM_DIF_NUZLOCKE]     = {sText_Desc_NuzlockeOff,         sText_Desc_NuzlockeNormal, sText_Desc_NuzlockeHard},
""",
            """    [MENUITEM_DIF_SHOW_TYPES]   = {sText_Desc_ShowTypesOff,        sText_Desc_ShowTypesOn,    sText_Empty},
    [MENUITEM_DIF_INVERSE_BATTLE] = {sText_Desc_InverseBattleOff,  sText_Desc_InverseBattleOn, sText_Empty},
    [MENUITEM_DIF_NUZLOCKE]     = {sText_Desc_NuzlockeOff,         sText_Desc_NuzlockeNormal, sText_Desc_NuzlockeHard},
""",
            "difficulty descriptions table",
        ),
        (
            """    [MENUITEM_DIF_SHOW_TYPES]   = sText_Desc_HardLocked,
    [MENUITEM_DIF_NUZLOCKE]     = sText_Empty,
""",
            """    [MENUITEM_DIF_SHOW_TYPES]   = sText_Desc_HardLocked,
    [MENUITEM_DIF_INVERSE_BATTLE] = sText_Desc_HardLocked,
    [MENUITEM_DIF_NUZLOCKE]     = sText_Empty,
""",
            "disabled descriptions table",
        ),
        (
            """        case MENUITEM_DIF_SHOW_TYPES:
            if (!CheckConditions(MENUITEM_DIF_SHOW_TYPES))
                return sOptionMenuItemDescriptionsDisabledDifficulty[MENUITEM_DIF_SHOW_TYPES];
            return sOptionMenuItemDescriptionsDifficulty[MENUITEM_DIF_SHOW_TYPES][sOptions->sel_difficulty[MENUITEM_DIF_SHOW_TYPES]];
        case MENUITEM_DIF_NUZLOCKE:
""",
            """        case MENUITEM_DIF_SHOW_TYPES:
            if (!CheckConditions(MENUITEM_DIF_SHOW_TYPES))
                return sOptionMenuItemDescriptionsDisabledDifficulty[MENUITEM_DIF_SHOW_TYPES];
            return sOptionMenuItemDescriptionsDifficulty[MENUITEM_DIF_SHOW_TYPES][sOptions->sel_difficulty[MENUITEM_DIF_SHOW_TYPES]];
        case MENUITEM_DIF_INVERSE_BATTLE:
            if (!CheckConditions(MENUITEM_DIF_INVERSE_BATTLE))
                return sOptionMenuItemDescriptionsDisabledDifficulty[MENUITEM_DIF_INVERSE_BATTLE];
            return sOptionMenuItemDescriptionsDifficulty[MENUITEM_DIF_INVERSE_BATTLE][sOptions->sel_difficulty[MENUITEM_DIF_INVERSE_BATTLE]];
        case MENUITEM_DIF_NUZLOCKE:
""",
            "description switch",
        ),
        (
            """    sOptions->sel_difficulty[MENUITEM_DIF_SHOW_TYPES]     = !FlagGet(FLAG_HIDE_BATTLE_TYPES);
    sOptions->sel_difficulty[MENUITEM_DIF_NUZLOCKE]       = gSaveBlock2Ptr->optionsNuzlocke;
""",
            """    sOptions->sel_difficulty[MENUITEM_DIF_SHOW_TYPES]     = !FlagGet(FLAG_HIDE_BATTLE_TYPES);
    // Inverse Battle is OFF by default because its persistent flag starts clear.
    sOptions->sel_difficulty[MENUITEM_DIF_INVERSE_BATTLE] = FlagGet(FLAG_INVERSE_BATTLE_OPTION);
    sOptions->sel_difficulty[MENUITEM_DIF_NUZLOCKE]       = gSaveBlock2Ptr->optionsNuzlocke;
""",
            "load Inverse Battle selection",
        ),
        (
            """                    sOptions->sel_difficulty[cursor] = sItemFunctionsDifficulty[cursor].processInput(previousOption);
                    EnforceHardNpcTeamsRules();
""",
            """                    sOptions->sel_difficulty[cursor] = sItemFunctionsDifficulty[cursor].processInput(previousOption);

                    // Restore the intended Casual defaults when leaving Hard mode.
                    if (cursor == MENUITEM_DIF_NPCTEAMS
                     && previousOption == OPTIONS_NPCTEAMS_HARD
                     && !IsHardNpcTeamsSelected())
                    {
                        sOptions->sel_difficulty[MENUITEM_DIF_SHOW_TYPES] = TRUE;
                        sOptions->sel_difficulty[MENUITEM_DIF_INVERSE_BATTLE] = FALSE;
                    }

                    EnforceHardNpcTeamsRules();
""",
            "Casual defaults after changing mode",
        ),
        (
            """    if (sOptions->sel_difficulty[MENUITEM_DIF_SHOW_TYPES])
        FlagClear(FLAG_HIDE_BATTLE_TYPES);
    else
        FlagSet(FLAG_HIDE_BATTLE_TYPES);

    if (sOptions->sel_difficulty[MENUITEM_DIF_RANDOMIZER_E])
""",
            """    if (sOptions->sel_difficulty[MENUITEM_DIF_SHOW_TYPES])
        FlagClear(FLAG_HIDE_BATTLE_TYPES);
    else
        FlagSet(FLAG_HIDE_BATTLE_TYPES);

    if (sOptions->sel_difficulty[MENUITEM_DIF_INVERSE_BATTLE])
        FlagSet(FLAG_INVERSE_BATTLE_OPTION);
    else
        FlagClear(FLAG_INVERSE_BATTLE_OPTION);

    if (sOptions->sel_difficulty[MENUITEM_DIF_RANDOMIZER_E])
""",
            "save Inverse Battle selection",
        ),
        (
            """static void DrawChoices_Nuzlocke(int selection, int y)
{
""",
            """static void DrawChoices_InverseBattle(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_DIF_INVERSE_BATTLE);
    u8 styles[2] = {0};

    if (selection > TRUE)
        selection = FALSE;

    styles[selection] = 1;

    DrawOptionMenuChoice(sText_OptionFalse, 104, y, styles[FALSE], active);
    DrawOptionMenuChoice(sText_OptionTrue,
                         GetStringRightAlignXOffset(FONT_NORMAL, sText_OptionTrue, 198),
                         y,
                         styles[TRUE],
                         active);
}

static void DrawChoices_Nuzlocke(int selection, int y)
{
""",
            "draw Inverse Battle function",
        ),
    ]

    for old, new, label in replacements:
        text = replace_once(text, old, new, f"src/option_menu.c ({label})")
    return place_inverse_before_wish_menu(text)


def backup_file(path, root, backup_root):
    destination = backup_root / path.relative_to(root)
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, destination)


def validate_prerequisites(files):
    required_v1 = {
        "include/constants/flags.h": "FLAG_HIDE_BATTLE_TYPES",
        "include/config/battle.h": V1_TAG,
        "src/option_menu.c": "MENUITEM_DIF_SHOW_TYPES",
    }
    for relative, needle in required_v1.items():
        if needle not in files[relative]:
            die(f"O patch SHOW TYPES V1 nao foi encontrado em {relative}.")


def validate_final(files):
    checks = {
        "include/constants/flags.h": (
            "FLAG_HARD_MODE_SLEEP_CLAUSE",
            "FLAG_INVERSE_BATTLE_OPTION",
        ),
        "include/config/battle.h": (
            "B_FLAG_SLEEP_CLAUSE         FLAG_HARD_MODE_SLEEP_CLAUSE",
            "B_FLAG_INVERSE_BATTLE       FLAG_INVERSE_BATTLE_OPTION",
        ),
        "src/option_menu.c": (
            "MENUITEM_DIF_INVERSE_BATTLE",
            "FlagSet(FLAG_HARD_MODE_SLEEP_CLAUSE);",
            "FlagClear(FLAG_HARD_MODE_SLEEP_CLAUSE);",
            "FlagSet(FLAG_INVERSE_BATTLE_OPTION);",
            "FlagClear(FLAG_INVERSE_BATTLE_OPTION);",
            "Show the opposing POKéMON's types",
            "Restore the intended Casual defaults",
        ),
    }
    for relative, needles in checks.items():
        for needle in needles:
            if needle not in files[relative]:
                die(f"Verificacao final falhou em {relative}: {needle} ausente.")

    if files["src/option_menu.c"].count("MENUITEM_DIF_INVERSE_BATTLE") < 10:
        die("Verificacao final falhou: INVERSE BATTLE ficou incompleto no menu.")

    desired_order = """    MENUITEM_DIF_RANDOMIZER_T,
    MENUITEM_DIF_INVERSE_BATTLE,
    MENUITEM_DIF_DEBUGMENU,
    MENUITEM_DIF_CANCEL,
"""
    if desired_order not in files["src/option_menu.c"]:
        die("Verificacao final falhou: INVERSE BTL nao ficou antes de WISH MENU.")


def main():
    root = Path.cwd().resolve()
    print("Verificando o patch anterior e os 3 arquivos desta atualizacao...")

    paths = {
        "include/constants/flags.h": root / "include/constants/flags.h",
        "include/config/battle.h": root / "include/config/battle.h",
        "src/option_menu.c": root / "src/option_menu.c",
    }
    missing = [relative for relative, path in paths.items() if not path.is_file()]
    if missing:
        die(
            "Arquivos obrigatorios ausentes: " + ", ".join(missing)
            + ". Rode este script na raiz do pokeemerald-expansion."
        )

    originals = {
        relative: path.read_text(encoding="utf-8")
        for relative, path in paths.items()
    }

    validate_prerequisites(originals)

    tagged = [relative for relative, text in originals.items() if PATCH_TAG in text]
    if tagged:
        if len(tagged) == len(paths):
            reordered = place_inverse_before_wish_menu(originals["src/option_menu.c"])
            if reordered == originals["src/option_menu.c"]:
                print("\nHLW BATTLE RULES CONFIG V2 ja esta instalado.")
                print("INVERSE BTL ja esta imediatamente antes de WISH MENU.")
                print("Nada foi alterado.")
                print("Rode: make -j8")
                return

            updated = dict(originals)
            updated["src/option_menu.c"] = reordered
            validate_final(updated)

            stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
            backup_root = root / "PHYTON/backups" / f"hlw_inverse_btl_order_fix_{stamp}"
            backup_file(paths["src/option_menu.c"], root, backup_root)
            paths["src/option_menu.c"].write_text(reordered, encoding="utf-8")

            for relative in (
                "build/modern/src/option_menu.o",
                "build/modern/src/option_menu.d",
            ):
                path = root / relative
                if path.exists():
                    print("rm", relative)
                    path.unlink()

            print("\nOrdem corrigida: INVERSE BTL agora fica antes de WISH MENU.")
            print("Backup:", backup_root)
            print("O instalador nao executa make e nao usa make -B.")
            print("Agora rode SOMENTE: make -j8")
            return
        die(
            "Instalacao parcial detectada em: " + ", ".join(tagged)
            + ". Restaure o backup anterior antes de executar novamente."
        )

    if "FLAG_UNUSED_0x4B8" not in originals["include/constants/flags.h"]:
        die("FLAG_UNUSED_0x4B8 nao esta livre no seu flags.h.")
    if "FLAG_UNUSED_0x4B9" not in originals["include/constants/flags.h"]:
        die("FLAG_UNUSED_0x4B9 nao esta livre no seu flags.h.")

    patched = {
        "include/constants/flags.h": patch_flags(originals["include/constants/flags.h"]),
        "include/config/battle.h": patch_battle_config(originals["include/config/battle.h"]),
        "src/option_menu.c": patch_option_menu(originals["src/option_menu.c"]),
    }
    validate_final(patched)

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_root = root / "PHYTON/backups" / f"hlw_battle_rules_config_v2_{stamp}"
    for path in paths.values():
        backup_file(path, root, backup_root)

    for relative, path in paths.items():
        path.write_text(patched[relative], encoding="utf-8")

    for relative in (
        "build/modern/src/option_menu.o",
        "build/modern/src/option_menu.d",
    ):
        path = root / relative
        if path.exists():
            print("rm", relative)
            path.unlink()

    print("\n============================================================")
    print("HLW BATTLE RULES CONFIG V2 INSTALADO")
    print("============================================================")
    print("CASUAL:")
    print("  SHOW TYPES inicia ON e pode alternar ON/OFF")
    print("  INVERSE BTL inicia OFF e pode alternar ON/OFF")
    print("  SLEEP CLAUSE fica OFF")
    print("")
    print("HARD:")
    print("  SHOW TYPES fica forcado e bloqueado em OFF")
    print("  INVERSE BTL fica forcado e bloqueado em OFF")
    print("  SLEEP CLAUSE fica ON automaticamente e sem opcao no menu")
    print("")
    print("O instalador nao executa make e nao usa make -B.")
    print("Backup:", backup_root)
    print("\nAgora rode SOMENTE:")
    print("  make -j8")


if __name__ == "__main__":
    main()
