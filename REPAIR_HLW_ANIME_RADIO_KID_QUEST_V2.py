#!/usr/bin/env python3
from pathlib import Path
import datetime
import json
import re
import shutil


PATCH_TAG_V1 = "HLW_ANIME_RADIO_KID_QUEST_V1"
PATCH_TAG_V2 = "HLW_ANIME_RADIO_KID_QUEST_V2"
MAP_NAME = "PetalburgCity_House2"
MOTHER_SCRIPT = f"{MAP_NAME}_EventScript_Woman"
KID_SCRIPT = f"{MAP_NAME}_EventScript_SchoolKid"
TRIGGER_UPPER = f"{MAP_NAME}_EventScript_SchoolKid_Trigger_Upper"
TRIGGER_LOWER = f"{MAP_NAME}_EventScript_SchoolKid_Trigger_Lower"
OLD_TRIGGER = f"{MAP_NAME}_EventScript_SchoolKid_Trigger"


def die(message):
    print("\n[ERRO]", message)
    raise SystemExit(1)


def backup_file(path, root, backup_root):
    destination = backup_root / path.relative_to(root)
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, destination)


def add_event_data_include(text):
    include = '#include "event_data.h"\n'
    if include in text:
        return text

    anchor = '#include "decompress.h"\n'
    if text.count(anchor) != 1:
        die('Nao consegui inserir #include "event_data.h" com seguranca em src/radio.c.')
    return text.replace(anchor, anchor + include, 1)


def get_local_id(object_events, script_name, label):
    matches = [
        (index, event)
        for index, event in enumerate(object_events)
        if event.get("script") == script_name
    ]
    if len(matches) != 1:
        die(f"Nao encontrei exatamente um objeto para {label} no map.json.")

    index, event = matches[0]
    local_id = event.get("local_id")
    if local_id is None:
        local_id = str(index + 1)
    elif not isinstance(local_id, str) or not re.fullmatch(
        r"[A-Za-z_][A-Za-z0-9_]*", local_id
    ):
        die(f"O Local ID nomeado de {label} possui formato invalido.")

    return local_id, event


def validate_project(root, files, map_data):
    flags_text = files["include/constants/flags.h"]
    if not re.search(
        r"^\s*#define\s+FLAG_KID_LOVES_ANIME\s+0x4BA\b",
        flags_text,
        re.MULTILINE,
    ):
        die("FLAG_KID_LOVES_ANIME 0x4BA nao foi encontrada em flags.h.")

    radio_text = files["src/radio.c"]
    if "void Special_IsRadioStationPlaying(void)" not in radio_text:
        die("A special da quest nao foi encontrada em src/radio.c. Aplique a V1 primeiro.")
    if "sRadioIsPlaying" not in radio_text or "sRadioStation" not in radio_text:
        die("O estado interno da radio esperado nao foi encontrado em src/radio.c.")
    if "STATION_ANIME" not in radio_text:
        die("A estacao ANIME nao foi encontrada em src/radio.c.")
    if "def_special Special_IsRadioStationPlaying" not in files["data/specials.inc"]:
        die("A special da radio nao esta registrada em data/specials.inc.")

    map_script = files[f"data/maps/{MAP_NAME}/scripts.pory"]
    quest_markers = (
        PATCH_TAG_V1,
        PATCH_TAG_V2,
        "Special_IsRadioStationPlaying",
        "EventScript_SchoolKid_Trigger",
    )
    if not any(marker in map_script for marker in quest_markers):
        die("A quest instalada nao foi reconhecida em scripts.pory. Nada foi alterado.")

    object_events = map_data.get("object_events")
    if not isinstance(object_events, list):
        die("object_events ausente ou invalido no map.json.")

    mother_local_id, mother = get_local_id(object_events, MOTHER_SCRIPT, "a mae")
    kid_local_id, kid = get_local_id(object_events, KID_SCRIPT, "o SchoolKid")

    if (mother.get("x"), mother.get("y")) != (4, 4):
        die("A mae precisa estar em X=4, Y=4 para estas rotas seguras.")
    if (kid.get("x"), kid.get("y")) != (9, 3):
        die("O SchoolKid precisa estar em X=9, Y=3 para esta versao da quest.")

    if mother.get("movement_type") not in (
        "MOVEMENT_TYPE_FACE_DOWN",
        "MOVEMENT_TYPE_FACE_UP",
        "MOVEMENT_TYPE_FACE_LEFT",
        "MOVEMENT_TYPE_FACE_RIGHT",
        "MOVEMENT_TYPE_LOOK_AROUND",
    ):
        die("A mae ainda possui movimento livre. Trave-a no Porymap antes de reparar.")

    return mother_local_id, kid_local_id


def build_map_script(mother_local_id, kid_local_id):
    return f'''raw `
{MAP_NAME}_MapScripts::
\t.byte 0

@ {PATCH_TAG_V1}
@ {PATCH_TAG_V2}
@ The trigger uses FLAG_KID_LOVES_ANIME instead of trigger 0 because
@ immediate coordinate scripts cannot run cutscenes or wait commands.
{MOTHER_SCRIPT}::
\tlockall
\tfaceplayer
\tgoto_if_set FLAG_KID_LOVES_ANIME, {MAP_NAME}_EventScript_MotherAfterQuest
\tsetvar VAR_0x8004, 1 @ STATION_ANIME
\tspecial Special_IsRadioStationPlaying
\tgoto_if_eq VAR_RESULT, TRUE, {MAP_NAME}_EventScript_AnimeRadioSuccessFromTalk
\tmsgbox {MAP_NAME}_Text_MotherWorried, MSGBOX_DEFAULT
\treleaseall
\tend

{MAP_NAME}_EventScript_AnimeRadioSuccessFromTalk::
\tsetvar VAR_0x8005, 0 @ Started by talking to the mother
\tgoto {MAP_NAME}_EventScript_AnimeRadioScene
\tend

{TRIGGER_UPPER}::
\tlockall
\tgoto_if_set FLAG_KID_LOVES_ANIME, {MAP_NAME}_EventScript_TriggerNoAction
\tsetvar VAR_0x8004, 1 @ STATION_ANIME
\tspecial Special_IsRadioStationPlaying
\tgoto_if_eq VAR_RESULT, FALSE, {MAP_NAME}_EventScript_TriggerNoAction
\tsetvar VAR_0x8005, 1 @ Upper trigger route
\tapplymovement {mother_local_id}, {MAP_NAME}_Movement_MotherToUpperTrigger
\twaitmovement 0
\tapplymovement {mother_local_id}, Common_Movement_FacePlayer
\twaitmovement 0
\tgoto {MAP_NAME}_EventScript_AnimeRadioScene
\tend

{TRIGGER_LOWER}::
\tlockall
\tgoto_if_set FLAG_KID_LOVES_ANIME, {MAP_NAME}_EventScript_TriggerNoAction
\tsetvar VAR_0x8004, 1 @ STATION_ANIME
\tspecial Special_IsRadioStationPlaying
\tgoto_if_eq VAR_RESULT, FALSE, {MAP_NAME}_EventScript_TriggerNoAction
\tsetvar VAR_0x8005, 2 @ Lower trigger route
\tapplymovement {mother_local_id}, {MAP_NAME}_Movement_MotherToLowerTrigger
\twaitmovement 0
\tapplymovement {mother_local_id}, Common_Movement_FacePlayer
\twaitmovement 0
\tgoto {MAP_NAME}_EventScript_AnimeRadioScene
\tend

{MAP_NAME}_EventScript_TriggerNoAction::
\treleaseall
\tend

{MAP_NAME}_EventScript_AnimeRadioScene::
\tmsgbox {MAP_NAME}_Text_MotherHearsAnime, MSGBOX_DEFAULT
\tclosemessage
\tapplymovement {kid_local_id}, Common_Movement_ExclamationMark
\twaitmovement 0
\tdelay 20
\tapplymovement {kid_local_id}, Common_Movement_FacePlayer
\twaitmovement 0
\tmsgbox {MAP_NAME}_Text_KidCalmsDown, MSGBOX_DEFAULT
\tmsgbox {MAP_NAME}_Text_MotherThanks, MSGBOX_DEFAULT
\tgiveitem ITEM_LUCKY_EGG
\tgoto_if_eq VAR_RESULT, FALSE, {MAP_NAME}_EventScript_QuestBagFull
\tsetflag FLAG_KID_LOVES_ANIME
\tmsgbox {MAP_NAME}_Text_MotherGiftComplete, MSGBOX_DEFAULT
\treleaseall
\tend

{MAP_NAME}_EventScript_QuestBagFull::
\tmsgbox gText_TooBadBagIsFull, MSGBOX_DEFAULT
\tgoto_if_eq VAR_0x8005, 1, {MAP_NAME}_EventScript_ReturnMotherFromUpper
\tgoto_if_eq VAR_0x8005, 2, {MAP_NAME}_EventScript_ReturnMotherFromLower
\treleaseall
\tend

{MAP_NAME}_EventScript_ReturnMotherFromUpper::
\tapplymovement {mother_local_id}, {MAP_NAME}_Movement_MotherFromUpperTrigger
\twaitmovement 0
\treleaseall
\tend

{MAP_NAME}_EventScript_ReturnMotherFromLower::
\tapplymovement {mother_local_id}, {MAP_NAME}_Movement_MotherFromLowerTrigger
\twaitmovement 0
\treleaseall
\tend

{MAP_NAME}_EventScript_MotherAfterQuest::
\tmsgbox {MAP_NAME}_Text_MotherAfterQuest, MSGBOX_DEFAULT
\treleaseall
\tend

{KID_SCRIPT}::
\tlock
\tfaceplayer
\tgoto_if_set FLAG_KID_LOVES_ANIME, {MAP_NAME}_EventScript_HappySchoolKid
\tmsgbox {MAP_NAME}_Text_SadSchoolKid, MSGBOX_DEFAULT
\trelease
\tend

{MAP_NAME}_EventScript_HappySchoolKid::
\tmsgbox {MAP_NAME}_Text_HappySchoolKid, MSGBOX_DEFAULT
\trelease
\tend

@ The mother stops two tiles from the trigger so a follower behind the player
@ cannot occupy her destination and block waitmovement.
{MAP_NAME}_Movement_MotherToUpperTrigger:
\twalk_up
\twalk_up
\twalk_right
\twalk_right
\tstep_end

{MAP_NAME}_Movement_MotherToLowerTrigger:
\twalk_up
\twalk_right
\twalk_right
\tstep_end

{MAP_NAME}_Movement_MotherFromUpperTrigger:
\twalk_left
\twalk_left
\twalk_down
\twalk_down
\tstep_end

{MAP_NAME}_Movement_MotherFromLowerTrigger:
\twalk_left
\twalk_left
\twalk_down
\tstep_end

{MAP_NAME}_Text_MotherWorried:
\t.string "My son hasn't been himself since\\n"
\t.string "we lost his father...\\p"
\t.string "He loved watching anime with him,\\n"
\t.string "but even that won't cheer him up.$"

{MAP_NAME}_Text_SadSchoolKid:
\t.string "Dad and I always watched anime\\n"
\t.string "together...\\p"
\t.string "Now it only reminds me that he's\\n"
\t.string "gone...$"

{MAP_NAME}_Text_MotherHearsAnime:
\t.string "Wait... Is that music from an\\n"
\t.string "anime?$"

{MAP_NAME}_Text_KidCalmsDown:
\t.string "I know this song! Dad used to sing\\n"
\t.string "it with me!\\p"
\t.string "I still miss him... but remembering\\n"
\t.string "him like this makes me feel warm.$"

{MAP_NAME}_Text_MotherThanks:
\t.string "Look at him smile... I haven't seen\\n"
\t.string "that since his father passed away.\\p"
\t.string "Thank you. Please accept this.$"

{MAP_NAME}_Text_MotherGiftComplete:
\t.string "May that LUCKY EGG bring you the\\n"
\t.string "happiness you've brought us.$"

{MAP_NAME}_Text_MotherAfterQuest:
\t.string "My son is smiling again.\\p"
\t.string "Thank you for bringing music back\\n"
\t.string "into our home.$"

{MAP_NAME}_Text_HappySchoolKid:
\t.string "Anime songs remind me of all the\\n"
\t.string "happy times I had with Dad.\\p"
\t.string "I'm going to keep smiling for him!$"

`
'''


def build_map_json(map_data):
    coord_events = map_data.get("coord_events")
    if coord_events is None:
        coord_events = []
    if not isinstance(coord_events, list):
        die("coord_events ausente ou invalido no map.json.")

    quest_scripts = {OLD_TRIGGER, TRIGGER_UPPER, TRIGGER_LOWER}
    unrelated = []
    for event in coord_events:
        if not isinstance(event, dict):
            die("Foi encontrado um coord_event invalido no map.json.")
        if event.get("script") in quest_scripts:
            if (event.get("x"), event.get("y")) not in ((8, 2), (8, 3)):
                die("Existe um trigger antigo da quest fora de X=8/Y=2 ou X=8/Y=3.")
            continue
        if (event.get("x"), event.get("y")) in ((8, 2), (8, 3)):
            die("Ja existe outro coord_event ocupando um dos tiles da quest.")
        unrelated.append(event)

    # A nonzero flag trigger runs in the global context and can safely wait.
    quest_events = [
        {
            "type": "trigger",
            "x": 8,
            "y": 2,
            "elevation": 3,
            "var": "FLAG_KID_LOVES_ANIME",
            "var_value": "0",
            "script": TRIGGER_UPPER,
        },
        {
            "type": "trigger",
            "x": 8,
            "y": 3,
            "elevation": 3,
            "var": "FLAG_KID_LOVES_ANIME",
            "var_value": "0",
            "script": TRIGGER_LOWER,
        },
    ]
    map_data["coord_events"] = unrelated + quest_events
    return json.dumps(map_data, indent=2, ensure_ascii=False) + "\n"


def validate_final(files):
    script = files[f"data/maps/{MAP_NAME}/scripts.pory"]
    required_script = (
        PATCH_TAG_V2,
        f"{MOTHER_SCRIPT}::",
        "special Special_IsRadioStationPlaying",
        f"{TRIGGER_UPPER}::",
        f"{TRIGGER_LOWER}::",
        "giveitem ITEM_LUCKY_EGG",
        "setflag FLAG_KID_LOVES_ANIME",
        f"{MAP_NAME}_Movement_MotherToUpperTrigger",
        f"{MAP_NAME}_Movement_MotherToLowerTrigger",
        f"{MAP_NAME}_Text_HappySchoolKid",
    )
    for needle in required_script:
        if needle not in script:
            die(f"Verificacao final falhou em scripts.pory: {needle} ausente.")

    if f"{MAP_NAME}_Movement_KidApproaches" in script:
        die("Verificacao final falhou: o movimento antigo da crianca ainda existe.")
    if script.count(f"{TRIGGER_UPPER}::") != 1:
        die("Verificacao final falhou: trigger superior duplicado.")
    if script.count(f"{TRIGGER_LOWER}::") != 1:
        die("Verificacao final falhou: trigger inferior duplicado.")

    try:
        map_data = json.loads(files[f"data/maps/{MAP_NAME}/map.json"])
    except json.JSONDecodeError as error:
        die(f"Verificacao final falhou: map.json invalido: {error}.")

    targets = {
        (event.get("x"), event.get("y")): event
        for event in map_data.get("coord_events", [])
        if event.get("script") in (TRIGGER_UPPER, TRIGGER_LOWER)
    }
    if set(targets) != {(8, 2), (8, 3)}:
        die("Verificacao final falhou: os dois triggers corrigidos nao foram encontrados.")
    if targets[(8, 2)].get("script") != TRIGGER_UPPER:
        die("Verificacao final falhou: script incorreto no trigger superior.")
    if targets[(8, 3)].get("script") != TRIGGER_LOWER:
        die("Verificacao final falhou: script incorreto no trigger inferior.")
    for event in targets.values():
        if event.get("var") != "FLAG_KID_LOVES_ANIME" or event.get("var_value") != "0":
            die("Verificacao final falhou: um trigger ainda usa execucao imediata.")

    if '#include "event_data.h"' not in files["src/radio.c"]:
        die('Verificacao final falhou: #include "event_data.h" ausente.')


def atomic_write(path, text):
    temporary = path.with_name(path.name + ".hlw_tmp")
    temporary.write_text(text, encoding="utf-8")
    temporary.replace(path)


def main():
    root = Path.cwd().resolve()
    print("Verificando a quest da radio ANIME e os triggers da casa...")

    paths = {
        "src/radio.c": root / "src/radio.c",
        "data/specials.inc": root / "data/specials.inc",
        "include/constants/flags.h": root / "include/constants/flags.h",
        f"data/maps/{MAP_NAME}/scripts.pory": root / f"data/maps/{MAP_NAME}/scripts.pory",
        f"data/maps/{MAP_NAME}/map.json": root / f"data/maps/{MAP_NAME}/map.json",
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
    try:
        map_data = json.loads(originals[f"data/maps/{MAP_NAME}/map.json"])
    except json.JSONDecodeError as error:
        die(f"map.json da casa e invalido: {error}.")

    mother_local_id, kid_local_id = validate_project(root, originals, map_data)

    patched = dict(originals)
    patched["src/radio.c"] = add_event_data_include(originals["src/radio.c"])
    patched[f"data/maps/{MAP_NAME}/scripts.pory"] = build_map_script(
        mother_local_id,
        kid_local_id,
    )
    patched[f"data/maps/{MAP_NAME}/map.json"] = build_map_json(map_data)
    validate_final(patched)

    changed = [relative for relative in paths if patched[relative] != originals[relative]]
    if not changed:
        print("\nHLW ANIME RADIO KID QUEST V2 ja esta corrigida.")
        print("Nada foi alterado.")
        print("Rode: make -j8")
        return

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_root = root / "PHYTON/backups" / f"hlw_anime_radio_kid_quest_v2_{stamp}"
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
        die(f"Falha ao gravar os arquivos; alteracoes revertidas: {error}")

    print("\n============================================================")
    print("HLW ANIME RADIO KID QUEST V2 REPARADA")
    print("============================================================")
    print("- Trigger 0 removido: nao ha mais cutscene em contexto imediato.")
    print("- A quest ativa tanto pelo trigger quanto falando com a mae.")
    print("- Sem radio ANIME, o trigger apenas termina e libera o jogador.")
    print("- A crianca nao anda mais e nao atravessa a mesa.")
    print("- A mae usa uma rota curta que evita o tile do seguidor.")
    print("- A flag impede repeticao e Lucky Egg infinito.")
    print("Arquivos alterados:")
    for relative in changed:
        print("  -", relative)
    print("Backup:", backup_root)
    print("\nO repair nao executa make e nao usa make -B.")
    print("Agora rode SOMENTE:")
    print("  make -j8")


if __name__ == "__main__":
    main()
