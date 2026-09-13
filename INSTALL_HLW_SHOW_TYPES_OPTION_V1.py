#!/usr/bin/env python3
from pathlib import Path
import datetime
import re
import shutil


PATCH_TAG = "HLW_SHOW_TYPES_OPTION_V1"
FIXED_UNUSED_FLAG_NAME = "FLAG_UNUSED_0x4B7"
FIXED_FLAG_VALUE = "0x4B7"


def die(message):
    print("\n[ERRO]", message)
    raise SystemExit(1)


def replace_once(text, old, new, label):
    matches = text.count(old)
    if matches != 1:
        die(f"Nao achei exatamente o trecho esperado em {label} (matches={matches}).")
    return text.replace(old, new, 1)


def replace_regex_once(text, pattern, replacement, label, flags=0):
    patched, count = re.subn(pattern, replacement, text, count=1, flags=flags)
    if count != 1:
        die(f"Nao achei exatamente o trecho esperado em {label} (matches={count}).")
    return patched


def reserve_fixed_flag(flags_text):
    # This slot was selected from the flags.h supplied for Hoenn's Last Wish.
    pattern = re.compile(
        rf"^(#define\s+){FIXED_UNUSED_FLAG_NAME}(\s+){FIXED_FLAG_VALUE}(\s*//\s*Unused Flag.*)$",
        re.MULTILINE,
    )
    match = pattern.search(flags_text)
    if match is None:
        die(
            f"Nao achei {FIXED_UNUSED_FLAG_NAME} = {FIXED_FLAG_VALUE} marcada como livre. "
            "Confira se este e o mesmo flags.h enviado. Nenhuma alteracao foi feita."
        )

    new_line = (
        f"{match.group(1)}FLAG_HIDE_BATTLE_TYPES{match.group(2)}"
        f"{FIXED_FLAG_VALUE} // {PATCH_TAG}: hide battle type indicators"
    )
    return flags_text[:match.start()] + new_line + flags_text[match.end():]


def patch_battle_config(text):
    if PATCH_TAG in text:
        return text

    pattern = r"^#define\s+B_SHOW_TYPES\s+\S+([^\n]*)$"
    replacement = (
        "#define B_SHOW_TYPES        SHOW_TYPES_ALWAYS     "
        "// HLW_SHOW_TYPES_OPTION_V1: compiled in; runtime visibility uses FLAG_HIDE_BATTLE_TYPES."
    )
    return replace_regex_once(text, pattern, replacement, "include/config/battle.h", re.MULTILINE)


def patch_type_icons(text):
    if PATCH_TAG in text:
        return text

    text = replace_once(
        text,
        '#include "decompress.h"\n',
        '#include "decompress.h"\n#include "event_data.h"\n#include "constants/flags.h"\n',
        "src/type_icons.c (includes)",
    )

    old = """    if (B_SHOW_TYPES == SHOW_TYPES_NEVER 
        || (B_SHOW_TYPES == SHOW_TYPES_SEEN && !GetSetPokedexFlag(SpeciesToNationalPokedexNum(species), FLAG_GET_SEEN)))
        return;
"""
    new = """    // HLW_SHOW_TYPES_OPTION_V1
    // The feature stays compiled in, while this persistent flag controls visibility.
    if (FlagGet(FLAG_HIDE_BATTLE_TYPES)
        || B_SHOW_TYPES == SHOW_TYPES_NEVER
        || (B_SHOW_TYPES == SHOW_TYPES_SEEN && !GetSetPokedexFlag(SpeciesToNationalPokedexNum(species), FLAG_GET_SEEN)))
        return;
"""
    return replace_once(text, old, new, "src/type_icons.c (runtime guard)")


def patch_option_menu(text):
    if PATCH_TAG in text:
        return text

    replacements = [
        (
            """    MENUITEM_DIF_LEVELCAPS,
    MENUITEM_DIF_NUZLOCKE,
""",
            """    MENUITEM_DIF_LEVELCAPS,
    MENUITEM_DIF_SHOW_TYPES,
    MENUITEM_DIF_NUZLOCKE,
""",
            "difficulty enum",
        ),
        (
            """static void DrawChoices_LevelCaps(int selection, int y);
static void DrawChoices_Nuzlocke(int selection, int y);
""",
            """static void DrawChoices_LevelCaps(int selection, int y);
static void DrawChoices_ShowTypes(int selection, int y);
static void DrawChoices_Nuzlocke(int selection, int y);
""",
            "draw prototype",
        ),
        (
            """    [MENUITEM_DIF_LEVELCAPS]      = {DrawChoices_LevelCaps,   ProcessInput_Options_Two},
    [MENUITEM_DIF_NUZLOCKE]       = {DrawChoices_Nuzlocke,    ProcessInput_Options_Three},
""",
            """    [MENUITEM_DIF_LEVELCAPS]      = {DrawChoices_LevelCaps,   ProcessInput_Options_Two},
    [MENUITEM_DIF_SHOW_TYPES]     = {DrawChoices_ShowTypes,   ProcessInput_Options_Two},
    [MENUITEM_DIF_NUZLOCKE]       = {DrawChoices_Nuzlocke,    ProcessInput_Options_Three},
""",
            "difficulty function table",
        ),
        (
            """static const u8 sText_LevelCaps[]       = _(\"LEVEL CAPS\");
static const u8 sText_Nuzlocke[]        = _(\"NUZLOCKE\");
""",
            """static const u8 sText_LevelCaps[]       = _(\"LEVEL CAPS\");
static const u8 sText_ShowTypes[]       = _(\"SHOW TYPES\");
static const u8 sText_Nuzlocke[]        = _(\"NUZLOCKE\");
""",
            "menu label",
        ),
        (
            """    [MENUITEM_DIF_LEVELCAPS]      = sText_LevelCaps,
    [MENUITEM_DIF_NUZLOCKE]       = sText_Nuzlocke,
""",
            """    [MENUITEM_DIF_LEVELCAPS]      = sText_LevelCaps,
    [MENUITEM_DIF_SHOW_TYPES]     = sText_ShowTypes,
    [MENUITEM_DIF_NUZLOCKE]       = sText_Nuzlocke,
""",
            "difficulty names table",
        ),
        (
            """    sOptions->sel_difficulty[MENUITEM_DIF_LEVELCAPS]    = OPTIONS_LEVELCAPS_ON;
    sOptions->sel_difficulty[MENUITEM_DIF_RANDOMIZER_T] = FALSE;
""",
            """    sOptions->sel_difficulty[MENUITEM_DIF_LEVELCAPS]    = OPTIONS_LEVELCAPS_ON;
    // HLW_SHOW_TYPES_OPTION_V1: Hard mode never reveals battle type indicators.
    sOptions->sel_difficulty[MENUITEM_DIF_SHOW_TYPES]   = FALSE;
    sOptions->sel_difficulty[MENUITEM_DIF_RANDOMIZER_T] = FALSE;
""",
            "hard-mode enforcement",
        ),
        (
            """        case MENUITEM_DIF_LEVELCAPS:        return !IsHardNpcTeamsSelected();
        case MENUITEM_DIF_NUZLOCKE:         return TRUE;
""",
            """        case MENUITEM_DIF_LEVELCAPS:        return !IsHardNpcTeamsSelected();
        case MENUITEM_DIF_SHOW_TYPES:       return !IsHardNpcTeamsSelected();
        case MENUITEM_DIF_NUZLOCKE:         return TRUE;
""",
            "hard-mode lock",
        ),
        (
            """static const u8 sText_Desc_LevelCapsOff[]       = _(\"Your POKéMON can reach any level,\nbut may disobey if too overleveled.\");
static const u8 sText_Desc_BattleItemsOn[]      = _(\"Permits the use of items in battle.\");
""",
            """static const u8 sText_Desc_LevelCapsOff[]       = _(\"Your POKéMON can reach any level,\nbut may disobey if too overleveled.\");
static const u8 sText_Desc_ShowTypesOff[]       = _(\"Hide type indicators while choosing\na move in battle.\");
static const u8 sText_Desc_ShowTypesOn[]        = _(\"Show type indicators while choosing\na move in battle.\");
static const u8 sText_Desc_BattleItemsOn[]      = _(\"Permits the use of items in battle.\");
""",
            "descriptions",
        ),
        (
            """    [MENUITEM_DIF_LEVELCAPS]    = {sText_Desc_LevelCapsOn,         sText_Desc_LevelCapsOff,   sText_Empty},
    [MENUITEM_DIF_NUZLOCKE]     = {sText_Desc_NuzlockeOff,         sText_Desc_NuzlockeNormal, sText_Desc_NuzlockeHard},
""",
            """    [MENUITEM_DIF_LEVELCAPS]    = {sText_Desc_LevelCapsOn,         sText_Desc_LevelCapsOff,   sText_Empty},
    [MENUITEM_DIF_SHOW_TYPES]   = {sText_Desc_ShowTypesOff,        sText_Desc_ShowTypesOn,    sText_Empty},
    [MENUITEM_DIF_NUZLOCKE]     = {sText_Desc_NuzlockeOff,         sText_Desc_NuzlockeNormal, sText_Desc_NuzlockeHard},
""",
            "difficulty descriptions table",
        ),
        (
            """    [MENUITEM_DIF_LEVELCAPS]    = sText_Desc_HardLocked,
    [MENUITEM_DIF_NUZLOCKE]     = sText_Empty,
""",
            """    [MENUITEM_DIF_LEVELCAPS]    = sText_Desc_HardLocked,
    [MENUITEM_DIF_SHOW_TYPES]   = sText_Desc_HardLocked,
    [MENUITEM_DIF_NUZLOCKE]     = sText_Empty,
""",
            "disabled descriptions table",
        ),
        (
            """        case MENUITEM_DIF_LEVELCAPS:
            if (!CheckConditions(MENUITEM_DIF_LEVELCAPS))
                return sOptionMenuItemDescriptionsDisabledDifficulty[MENUITEM_DIF_LEVELCAPS];
            return sOptionMenuItemDescriptionsDifficulty[MENUITEM_DIF_LEVELCAPS][sOptions->sel_difficulty[MENUITEM_DIF_LEVELCAPS]];
        case MENUITEM_DIF_NUZLOCKE:
""",
            """        case MENUITEM_DIF_LEVELCAPS:
            if (!CheckConditions(MENUITEM_DIF_LEVELCAPS))
                return sOptionMenuItemDescriptionsDisabledDifficulty[MENUITEM_DIF_LEVELCAPS];
            return sOptionMenuItemDescriptionsDifficulty[MENUITEM_DIF_LEVELCAPS][sOptions->sel_difficulty[MENUITEM_DIF_LEVELCAPS]];
        case MENUITEM_DIF_SHOW_TYPES:
            if (!CheckConditions(MENUITEM_DIF_SHOW_TYPES))
                return sOptionMenuItemDescriptionsDisabledDifficulty[MENUITEM_DIF_SHOW_TYPES];
            return sOptionMenuItemDescriptionsDifficulty[MENUITEM_DIF_SHOW_TYPES][sOptions->sel_difficulty[MENUITEM_DIF_SHOW_TYPES]];
        case MENUITEM_DIF_NUZLOCKE:
""",
            "description switch",
        ),
        (
            """    sOptions->sel_difficulty[MENUITEM_DIF_LEVELCAPS]      = gSaveBlock2Ptr->optionsLevelCaps;
    sOptions->sel_difficulty[MENUITEM_DIF_NUZLOCKE]       = gSaveBlock2Ptr->optionsNuzlocke;
""",
            """    sOptions->sel_difficulty[MENUITEM_DIF_LEVELCAPS]      = gSaveBlock2Ptr->optionsLevelCaps;
    // The inverted flag keeps type indicators ON for old and new Casual saves.
    sOptions->sel_difficulty[MENUITEM_DIF_SHOW_TYPES]     = !FlagGet(FLAG_HIDE_BATTLE_TYPES);
    sOptions->sel_difficulty[MENUITEM_DIF_NUZLOCKE]       = gSaveBlock2Ptr->optionsNuzlocke;
""",
            "load selection",
        ),
        (
            """    gSaveBlock2Ptr->optionsLevelCaps        = sOptions->sel_difficulty[MENUITEM_DIF_LEVELCAPS];
    gSaveBlock2Ptr->optionsNuzlocke         = sOptions->sel_difficulty[MENUITEM_DIF_NUZLOCKE];

    if (sOptions->sel_difficulty[MENUITEM_DIF_RANDOMIZER_E])
""",
            """    gSaveBlock2Ptr->optionsLevelCaps        = sOptions->sel_difficulty[MENUITEM_DIF_LEVELCAPS];
    gSaveBlock2Ptr->optionsNuzlocke         = sOptions->sel_difficulty[MENUITEM_DIF_NUZLOCKE];

    if (sOptions->sel_difficulty[MENUITEM_DIF_SHOW_TYPES])
        FlagClear(FLAG_HIDE_BATTLE_TYPES);
    else
        FlagSet(FLAG_HIDE_BATTLE_TYPES);

    if (sOptions->sel_difficulty[MENUITEM_DIF_RANDOMIZER_E])
""",
            "save selection",
        ),
        (
            """static void DrawChoices_Nuzlocke(int selection, int y)
{
""",
            """static void DrawChoices_ShowTypes(int selection, int y)
{
    bool8 active = CheckConditions(MENUITEM_DIF_SHOW_TYPES);
    u8 styles[2] = {0};

    if (selection > TRUE)
        selection = TRUE;

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
            "draw function",
        ),
    ]

    for old, new, label in replacements:
        if label == "descriptions":
            continue
        text = replace_once(text, old, new, f"src/option_menu.c ({label})")

    description_lines = (
        'static const u8 sText_Desc_ShowTypesOff[]       = _("Hide type indicators while choosing\\na move in battle.");\n'
        'static const u8 sText_Desc_ShowTypesOn[]        = _("Show type indicators while choosing\\na move in battle.");\n'
    )
    description_anchor = "static const u8 sText_Desc_LevelCapsOff[]"
    if text.count(description_anchor) != 1:
        die("Nao achei exatamente o ponto das descricoes em src/option_menu.c.")
    description_start = text.index(description_anchor)
    description_end = text.index("\n", description_start) + 1
    text = text[:description_end] + description_lines + text[description_end:]

    return text


def backup_file(path, root, backup_root):
    destination = backup_root / path.relative_to(root)
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, destination)


def validate_final(files):
    required_counts = {
        "include/constants/flags.h": ("FLAG_HIDE_BATTLE_TYPES", 1),
        "include/config/battle.h": (PATCH_TAG, 1),
        "src/type_icons.c": (PATCH_TAG, 1),
    }

    for relative, (needle, expected) in required_counts.items():
        count = files[relative].count(needle)
        if count != expected:
            die(f"Verificacao final falhou em {relative}: {needle} aparece {count} vez(es).")

    option_text = files["src/option_menu.c"]
    if option_text.count("MENUITEM_DIF_SHOW_TYPES") < 10:
        die("Verificacao final falhou: a opcao SHOW TYPES ficou incompleta no option_menu.c.")
    if "FlagSet(FLAG_HIDE_BATTLE_TYPES);" not in option_text:
        die("Verificacao final falhou: salvamento OFF ausente.")
    if "FlagClear(FLAG_HIDE_BATTLE_TYPES);" not in option_text:
        die("Verificacao final falhou: salvamento ON ausente.")


def main():
    root = Path.cwd().resolve()
    print("Verificando os 4 arquivos do patch...")
    paths = {
        "include/constants/flags.h": root / "include/constants/flags.h",
        "include/config/battle.h": root / "include/config/battle.h",
        "src/option_menu.c": root / "src/option_menu.c",
        "src/type_icons.c": root / "src/type_icons.c",
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

    tagged = [relative for relative, text in originals.items() if PATCH_TAG in text]
    if tagged:
        if len(tagged) == len(paths):
            print("\nHLW SHOW TYPES OPTION V1 ja esta instalado.")
            print("Nada foi alterado.")
            print("Rode: make -j8")
            return
        die(
            "Instalacao parcial detectada em: " + ", ".join(tagged)
            + ". Restaure o backup anterior antes de executar novamente."
        )

    if "FLAG_HIDE_BATTLE_TYPES" in originals["include/constants/flags.h"]:
        die("FLAG_HIDE_BATTLE_TYPES ja existe, mas sem a assinatura completa deste instalador.")

    patched_flags = reserve_fixed_flag(originals["include/constants/flags.h"])

    patched = {
        "include/constants/flags.h": patched_flags,
        "include/config/battle.h": patch_battle_config(originals["include/config/battle.h"]),
        "src/option_menu.c": patch_option_menu(originals["src/option_menu.c"]),
        "src/type_icons.c": patch_type_icons(originals["src/type_icons.c"]),
    }
    validate_final(patched)

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_root = root / "PHYTON/backups" / f"hlw_show_types_option_v1_{stamp}"

    for path in paths.values():
        backup_file(path, root, backup_root)

    for relative, path in paths.items():
        path.write_text(patched[relative], encoding="utf-8")

    stale_files = (
        "build/modern/src/option_menu.o",
        "build/modern/src/option_menu.d",
        "build/modern/src/type_icons.o",
        "build/modern/src/type_icons.d",
    )
    for relative in stale_files:
        path = root / relative
        if path.exists():
            print("rm", relative)
            path.unlink()

    print("\n============================================================")
    print("HLW SHOW TYPES OPTION V1 INSTALADO")
    print("============================================================")
    print(f"Flag reservada: FLAG_HIDE_BATTLE_TYPES = {FIXED_FLAG_VALUE}")
    print(f"Antigo nome livre: {FIXED_UNUSED_FLAG_NAME}")
    print("")
    print("CASUAL:")
    print("  SHOW TYPES ON  -> mostra os tipos em batalha")
    print("  SHOW TYPES OFF -> esconde os tipos em batalha")
    print("")
    print("HARD:")
    print("  SHOW TYPES fica forcado e bloqueado em OFF")
    print("")
    print("O padrao para saves antigos e novos no Casual e ON.")
    print("O instalador nao executa make e nao usa make -B.")
    print("Backup:", backup_root)
    print("\nAgora rode SOMENTE:")
    print("  make -j8")


if __name__ == "__main__":
    main()
