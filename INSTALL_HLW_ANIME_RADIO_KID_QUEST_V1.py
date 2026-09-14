#!/usr/bin/env python3
from pathlib import Path
import datetime
import json
import re
import shutil


PATCH_TAG = "HLW_ANIME_RADIO_KID_QUEST_V1"


def die(message):
    print("\n[ERRO]", message)
    raise SystemExit(1)


def replace_once(text, old, new, label):
    matches = text.count(old)
    if matches != 1:
        die(f"Nao achei exatamente o trecho esperado em {label} (matches={matches}).")
    return text.replace(old, new, 1)


def add_event_data_include(text):
    if '#include "event_data.h"\n' in text:
        return text

    return replace_once(
        text,
        '#include "decompress.h"\n',
        '#include "decompress.h"\n#include "event_data.h"\n',
        "src/radio.c (event_data include)",
    )


def patch_radio(text):
    text = add_event_data_include(text)
    old = """u16 RadioPriority_GetSong(void)
{
    return sRadioCurrentSong;
}
"""
    new = """u16 RadioPriority_GetSong(void)
{
    return sRadioCurrentSong;
}

// HLW_ANIME_RADIO_KID_QUEST_V1
// Scripts pass a station ID through VAR_0x8004 and receive TRUE/FALSE in RESULT.
static bool8 Radio_IsStationPlaying(u8 station)
{
    return sRadioIsPlaying
        && sRadioStation == station
        && gMPlayInfo_BGM.songHeader == gSongTable[sRadioCurrentSong].header;
}

void Special_IsRadioStationPlaying(void)
{
    gSpecialVar_Result = Radio_IsStationPlaying((u8)gSpecialVar_0x8004);
}
"""
    return replace_once(text, old, new, "src/radio.c")


def patch_specials(text):
    old = "\tdef_special StartRentonGymRadio\n"
    new = (
        "\tdef_special StartRentonGymRadio\n"
        "\tdef_special Special_IsRadioStationPlaying "
        "@ HLW_ANIME_RADIO_KID_QUEST_V1\n"
    )
    return replace_once(text, old, new, "data/specials.inc")


def patch_map_script(text, kid_local_id):
    old_events = """PetalburgCity_House2_EventScript_Woman::
\tmsgbox PetalburgCity_House2_Text_NormanBecameGymLeader, MSGBOX_NPC
\tend

PetalburgCity_House2_EventScript_SchoolKid::
\tmsgbox PetalburgCity_House2_Text_BattledNormanOnce, MSGBOX_NPC
\tend
"""
    new_events = """@ HLW_ANIME_RADIO_KID_QUEST_V1
PetalburgCity_House2_EventScript_Woman::
\tlockall
\tfaceplayer
\tgoto_if_set FLAG_KID_LOVES_ANIME, PetalburgCity_House2_EventScript_MotherAfterQuest
\tsetvar VAR_0x8004, 1 @ STATION_ANIME
\tspecial Special_IsRadioStationPlaying
\tgoto_if_eq VAR_RESULT, TRUE, PetalburgCity_House2_EventScript_AnimeRadioSuccess
\tmsgbox PetalburgCity_House2_Text_MotherWorried, MSGBOX_DEFAULT
\treleaseall
\tend

PetalburgCity_House2_EventScript_AnimeRadioSuccess::
\tmsgbox PetalburgCity_House2_Text_MotherHearsAnime, MSGBOX_DEFAULT
\tclosemessage
\tapplymovement LOCALID_MY_NPC, Common_Movement_ExclamationMark
\twaitmovement 0
\tdelay 20
\tapplymovement LOCALID_MY_NPC, PetalburgCity_House2_Movement_KidApproaches
\twaitmovement 0
\tapplymovement LOCALID_MY_NPC, Common_Movement_FacePlayer
\twaitmovement 0
\tmsgbox PetalburgCity_House2_Text_KidCalmsDown, MSGBOX_DEFAULT
\tmsgbox PetalburgCity_House2_Text_MotherThanks, MSGBOX_DEFAULT
\tgiveitem ITEM_LUCKY_EGG
\tgoto_if_eq VAR_RESULT, FALSE, Common_EventScript_ShowBagIsFull
\tsetflag FLAG_KID_LOVES_ANIME
\tmsgbox PetalburgCity_House2_Text_MotherGiftComplete, MSGBOX_DEFAULT
\treleaseall
\tend

PetalburgCity_House2_EventScript_MotherAfterQuest::
\tmsgbox PetalburgCity_House2_Text_MotherAfterQuest, MSGBOX_DEFAULT
\treleaseall
\tend

PetalburgCity_House2_EventScript_SchoolKid::
\tlock
\tfaceplayer
\tgoto_if_set FLAG_KID_LOVES_ANIME, PetalburgCity_House2_EventScript_HappySchoolKid
\tmsgbox PetalburgCity_House2_Text_SadSchoolKid, MSGBOX_DEFAULT
\trelease
\tend

PetalburgCity_House2_EventScript_HappySchoolKid::
\tmsgbox PetalburgCity_House2_Text_HappySchoolKid, MSGBOX_DEFAULT
\trelease
\tend
"""
    new_events = new_events.replace("LOCALID_MY_NPC", kid_local_id)
    text = replace_once(
        text,
        old_events,
        new_events,
        "data/maps/PetalburgCity_House2/scripts.pory (eventos)",
    )

    old_texts = """PetalburgCity_House2_Text_NormanBecameGymLeader:
\t.string \"CALENDULA became our town's\\n\"
\t.string \"GYM LEADER.\\p\"
\t.string \"I think she used to study with the\\n\"
\t.string \"famed PROF. ACACIA!$\"

PetalburgCity_House2_Text_BattledNormanOnce:
\t.string \"I battled CALENDULA once, but\\n\"
\t.string \"whew, she was way too strong.\\p\"
\t.string \"How would I put it?\\p\"
\t.string \"I just got the feeling that she\\n\"
\t.string \"lives for POKéMON.$\"
"""
    new_texts = """PetalburgCity_House2_Movement_KidApproaches:
\twalk_down
\twalk_down
\twalk_left
\twalk_left
\twalk_left
\twalk_down
\tstep_end

PetalburgCity_House2_Text_MotherWorried:
\t.string \"My son hasn't been himself since\\n\"
\t.string \"we lost his father...\\p\"
\t.string \"He loved watching anime with him,\\n\"
\t.string \"but even that won't cheer him up.$\"

PetalburgCity_House2_Text_SadSchoolKid:
\t.string \"Dad and I always watched anime\\n\"
\t.string \"together...\\p\"
\t.string \"Now it only reminds me that he's\\n\"
\t.string \"gone...$\"

PetalburgCity_House2_Text_MotherHearsAnime:
\t.string \"Wait... Is that music from an\\n\"
\t.string \"anime?$\"

PetalburgCity_House2_Text_KidCalmsDown:
\t.string \"I know this song! Dad used to sing\\n\"
\t.string \"it with me!\\p\"
\t.string \"I still miss him... but remembering\\n\"
\t.string \"him like this makes me feel warm.$\"

PetalburgCity_House2_Text_MotherThanks:
\t.string \"Look at him smile... I haven't seen\\n\"
\t.string \"that since his father passed away.\\p\"
\t.string \"Thank you. Please accept this.$\"

PetalburgCity_House2_Text_MotherGiftComplete:
\t.string \"May that LUCKY EGG bring you the\\n\"
\t.string \"happiness you've brought us.$\"

PetalburgCity_House2_Text_MotherAfterQuest:
\t.string \"My son is smiling again.\\p\"
\t.string \"Thank you for bringing music back\\n\"
\t.string \"into our home.$\"

PetalburgCity_House2_Text_HappySchoolKid:
\t.string \"Anime songs remind me of all the\\n\"
\t.string \"happy times I had with Dad.\\p\"
\t.string \"I'm going to keep smiling for him!$\"
"""
    return replace_once(
        text,
        old_texts,
        new_texts,
        "data/maps/PetalburgCity_House2/scripts.pory (textos)",
    )


def backup_file(path, root, backup_root):
    destination = backup_root / path.relative_to(root)
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, destination)


def validate_prerequisites(root, originals):
    flags_path = root / "include/constants/flags.h"
    map_json_path = root / "data/maps/PetalburgCity_House2/map.json"

    if not flags_path.is_file():
        die("Arquivo ausente: include/constants/flags.h.")
    flags_text = flags_path.read_text(encoding="utf-8")
    flag_pattern = re.compile(
        r"^\s*#define\s+FLAG_KID_LOVES_ANIME\s+0x4BA\b",
        re.MULTILINE,
    )
    if not flag_pattern.search(flags_text):
        die("FLAG_KID_LOVES_ANIME 0x4BA nao foi encontrada em flags.h.")

    if "static EWRAM_DATA bool8        sRadioIsPlaying" not in originals["src/radio.c"]:
        die("Nao encontrei sRadioIsPlaying no radio.c esperado.")
    if "static EWRAM_DATA u8           sRadioStation" not in originals["src/radio.c"]:
        die("Nao encontrei sRadioStation no radio.c esperado.")
    if "STATION_ANIME" not in originals["src/radio.c"]:
        die("A estacao ANIME nao foi encontrada em radio.c.")

    if not map_json_path.is_file():
        die("Arquivo ausente: data/maps/PetalburgCity_House2/map.json.")
    try:
        map_data = json.loads(map_json_path.read_text(encoding="utf-8"))
    except json.JSONDecodeError as error:
        die(f"map.json de PetalburgCity_House2 e invalido: {error}.")

    school_kids = [
        (index, event)
        for index, event in enumerate(map_data.get("object_events", []))
        if event.get("script") == "PetalburgCity_House2_EventScript_SchoolKid"
    ]
    if len(school_kids) != 1:
        die("Nao encontrei exatamente um SchoolKid no map.json da casa.")

    # mapjson always assigns object IDs by list position (index + 1). A named
    # local_id is optional and only creates a readable constant for scripts.
    school_kid_index, school_kid = school_kids[0]
    kid_local_id = school_kid.get("local_id")
    if kid_local_id is None:
        kid_local_id = str(school_kid_index + 1)
    elif not isinstance(kid_local_id, str) or not re.fullmatch(
        r"[A-Za-z_][A-Za-z0-9_]*", kid_local_id
    ):
        die("O Local ID nomeado do SchoolKid possui um formato invalido.")

    return kid_local_id


def validate_final(files, kid_local_id):
    checks = {
        "src/radio.c": (
            '#include "event_data.h"',
            "void Special_IsRadioStationPlaying(void)",
            "gMPlayInfo_BGM.songHeader == gSongTable[sRadioCurrentSong].header",
            PATCH_TAG,
        ),
        "data/specials.inc": (
            "def_special Special_IsRadioStationPlaying",
            PATCH_TAG,
        ),
        "data/maps/PetalburgCity_House2/scripts.pory": (
            "special Special_IsRadioStationPlaying",
            "setvar VAR_0x8004, 1",
            "giveitem ITEM_LUCKY_EGG",
            "setflag FLAG_KID_LOVES_ANIME",
            f"applymovement {kid_local_id}, Common_Movement_ExclamationMark",
            f"applymovement {kid_local_id}, PetalburgCity_House2_Movement_KidApproaches",
            "PetalburgCity_House2_Text_HappySchoolKid",
            PATCH_TAG,
        ),
    }
    for relative, needles in checks.items():
        for needle in needles:
            if needle not in files[relative]:
                die(f"Verificacao final falhou em {relative}: {needle} ausente.")

    if files["src/radio.c"].count("void Special_IsRadioStationPlaying(void)") != 1:
        die("Verificacao final falhou: a special da radio ficou duplicada.")
    if files["data/specials.inc"].count("def_special Special_IsRadioStationPlaying") != 1:
        die("Verificacao final falhou: o registro da special ficou duplicado.")


def main():
    root = Path.cwd().resolve()
    print("Verificando a radio, a tabela de specials e a quest da casa...")

    paths = {
        "src/radio.c": root / "src/radio.c",
        "data/specials.inc": root / "data/specials.inc",
        "data/maps/PetalburgCity_House2/scripts.pory": (
            root / "data/maps/PetalburgCity_House2/scripts.pory"
        ),
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

    kid_local_id = validate_prerequisites(root, originals)

    tagged = [relative for relative, text in originals.items() if PATCH_TAG in text]
    if tagged:
        if len(tagged) == len(paths):
            repaired_radio = add_event_data_include(originals["src/radio.c"])
            if repaired_radio != originals["src/radio.c"]:
                repaired = dict(originals)
                repaired["src/radio.c"] = repaired_radio
                validate_final(repaired, kid_local_id)

                stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
                backup_root = (
                    root / "PHYTON/backups"
                    / f"hlw_anime_radio_kid_event_data_repair_{stamp}"
                )
                backup_file(paths["src/radio.c"], root, backup_root)
                paths["src/radio.c"].write_text(repaired_radio, encoding="utf-8")

                for relative in (
                    "build/modern/src/radio.o",
                    "build/modern/src/radio.d",
                ):
                    path = root / relative
                    if path.exists():
                        print("rm", relative)
                        path.unlink()

                print("\nREPAIR APLICADO: event_data.h adicionado ao radio.c.")
                print("Backup:", backup_root)
                print("Agora rode SOMENTE: make -j8")
                return

            validate_final(originals, kid_local_id)
            print("\nHLW ANIME RADIO KID QUEST V1 ja esta instalado.")
            print("Local ID do SchoolKid:", kid_local_id)
            print("Nada foi alterado.")
            print("Rode: make -j8")
            return
        die(
            "Instalacao parcial detectada em: " + ", ".join(tagged)
            + ". Restaure o backup anterior antes de executar novamente."
        )

    patched = {
        "src/radio.c": patch_radio(originals["src/radio.c"]),
        "data/specials.inc": patch_specials(originals["data/specials.inc"]),
        "data/maps/PetalburgCity_House2/scripts.pory": patch_map_script(
            originals["data/maps/PetalburgCity_House2/scripts.pory"],
            kid_local_id,
        ),
    }
    validate_final(patched, kid_local_id)

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_root = root / "PHYTON/backups" / f"hlw_anime_radio_kid_quest_v1_{stamp}"
    for path in paths.values():
        backup_file(path, root, backup_root)

    for relative, path in paths.items():
        path.write_text(patched[relative], encoding="utf-8")

    for relative in (
        "build/modern/src/radio.o",
        "build/modern/src/radio.d",
    ):
        path = root / relative
        if path.exists():
            print("rm", relative)
            path.unlink()

    print("\n============================================================")
    print("HLW ANIME RADIO KID QUEST V1 INSTALADO")
    print("============================================================")
    print("A mae detecta somente ANIME realmente tocando.")
    print("O filho reage, aproxima-se e ganha dialogo feliz permanente.")
    print("A mae entrega 1 LUCKY EGG somente uma vez.")
    print("FLAG usada: FLAG_KID_LOVES_ANIME (0x4BA)")
    print("Local ID do SchoolKid:", kid_local_id)
    print("Backup:", backup_root)
    print("\nO instalador nao executa make e nao usa make -B.")
    print("Agora rode SOMENTE:")
    print("  make -j8")


if __name__ == "__main__":
    main()
