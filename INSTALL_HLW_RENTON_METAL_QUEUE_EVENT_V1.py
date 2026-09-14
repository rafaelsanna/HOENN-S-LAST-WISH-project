#!/usr/bin/env python3
from pathlib import Path
import datetime
import json
import re
import shutil


PATCH_TAG = "HLW_RENTON_METAL_QUEUE_EVENT_V1"
TOWN_NAME = "LavaridgeTown"
GYM_NAME = "LavaridgeTown_Gym_1F"
METAL_SCRIPT = "LavaridgeTown_EventScript_Renton_Likes_Metal"
METAL_RENTON_SCRIPT = "LavaridgeTown_EventScript_RentonMetalIdle"
METAL_RENTON_LOCAL_ID = "LOCALID_LAVARIDGE_METAL_RENTON"
RAIN_WOMAN_SCRIPT = "LavaridgeTown_EventScript_MakeItRain"
RAIN_WOMAN_LOCAL_ID = "LOCALID_LAVARIDGE_MAKE_IT_RAIN_WOMAN"
HIDE_WOMAN_FLAG = "FLAG_HIDE_LAVARIDGE_RAIN_WOMAN"

QUEUE_POSITIONS = {
    "LOCALID_LAVARIDGE_RAIN_QUEUE_1": (7, 5),
    "LOCALID_LAVARIDGE_RAIN_QUEUE_2": (7, 7),
    "LOCALID_LAVARIDGE_RAIN_QUEUE_3": (7, 6),
    "LOCALID_LAVARIDGE_RAIN_QUEUE_4": (7, 9),
    "LOCALID_LAVARIDGE_RAIN_QUEUE_5": (7, 10),
    "LOCALID_LAVARIDGE_RAIN_QUEUE_6": (7, 8),
}


def die(message):
    print("\n[ERRO]", message)
    raise SystemExit(1)


def backup_file(path, root, backup_root):
    destination = backup_root / path.relative_to(root)
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, destination)


def atomic_write(path, text):
    temporary = path.with_name(path.name + ".hlw_tmp")
    temporary.write_text(text, encoding="utf-8")
    temporary.replace(path)


def replace_once(text, old, new, label):
    matches = text.count(old)
    if matches != 1:
        die(f"Nao achei exatamente o trecho esperado em {label} (matches={matches}).")
    return text.replace(old, new, 1)


def patch_named_flag(text, old_name, new_name, value, comment):
    new_pattern = re.compile(
        rf"^\s*#define\s+{re.escape(new_name)}\s+{re.escape(value)}\b",
        re.MULTILINE,
    )
    if new_pattern.search(text):
        return text

    wrong_value = re.search(
        rf"^\s*#define\s+{re.escape(new_name)}\s+(\S+)",
        text,
        re.MULTILINE,
    )
    if wrong_value:
        die(f"{new_name} ja existe com valor {wrong_value.group(1)}, nao {value}.")

    old_pattern = re.compile(
        rf"^[ \t]*#define[ \t]+{re.escape(old_name)}[ \t]+{re.escape(value)}[^\n]*$",
        re.MULTILINE,
    )
    matches = list(old_pattern.finditer(text))
    if len(matches) != 1:
        die(f"Nao encontrei exatamente {old_name} {value} para renomear.")

    replacement = f"#define {new_name:<64} {value} // {comment}"
    return old_pattern.sub(replacement, text, count=1)


def get_radio_station_value(radio_text, station_name):
    match = re.search(
        r"enum\s+RadioStation\s*\{(?P<body>.*?)\};",
        radio_text,
        re.DOTALL,
    )
    if not match:
        die("Nao encontrei enum RadioStation em src/radio.c.")

    body = re.sub(r"/\*.*?\*/", "", match.group("body"), flags=re.DOTALL)
    body = re.sub(r"//[^\n]*", "", body)
    current = -1
    values = {}
    for raw_entry in body.split(","):
        entry = raw_entry.strip()
        if not entry:
            continue
        if "=" in entry:
            name, raw_value = (part.strip() for part in entry.split("=", 1))
            try:
                current = int(raw_value, 0)
            except ValueError:
                die(f"Valor nao numerico inesperado em enum RadioStation: {entry}.")
        else:
            name = entry
            current += 1
        values[name] = current

    if station_name not in values:
        die(f"{station_name} nao foi encontrada em enum RadioStation.")
    return values[station_name]


def find_object(object_events, key, value, label):
    matches = [event for event in object_events if event.get(key) == value]
    if len(matches) != 1:
        die(f"Nao encontrei exatamente um objeto para {label} no map.json.")
    return matches[0]


def validate_queue(object_events):
    for local_id, expected_position in QUEUE_POSITIONS.items():
        event = find_object(object_events, "local_id", local_id, local_id)
        position = (event.get("x"), event.get("y"))
        if position != expected_position:
            die(
                f"{local_id} esta em {position}, mas a rota espera {expected_position}."
            )
        if event.get("flag") != "FLAG_MAKE_IT_RAIN":
            die(f"{local_id} precisa usar FLAG_MAKE_IT_RAIN.")


def patch_town_map(map_data):
    if map_data.get("name") != TOWN_NAME:
        die(f"O map.json recebido nao e {TOWN_NAME}.")

    object_events = map_data.get("object_events")
    if not isinstance(object_events, list):
        die("object_events ausente ou invalido no map.json de LavaridgeTown.")

    validate_queue(object_events)

    rain_woman = find_object(
        object_events,
        "script",
        RAIN_WOMAN_SCRIPT,
        "a velha da chuva",
    )
    current_woman_id = rain_woman.get("local_id")
    if current_woman_id not in (None, RAIN_WOMAN_LOCAL_ID):
        die(f"A velha da chuva ja possui outro Local ID: {current_woman_id}.")
    rain_woman["local_id"] = RAIN_WOMAN_LOCAL_ID
    rain_woman["flag"] = HIDE_WOMAN_FLAG

    metal_rentons = [
        event
        for event in object_events
        if event.get("local_id") == METAL_RENTON_LOCAL_ID
        or event.get("script") == METAL_RENTON_SCRIPT
    ]
    if len(metal_rentons) > 1:
        die("Existe mais de um Renton da fila no map.json.")
    if metal_rentons:
        renton = metal_rentons[0]
        expected = {
            "local_id": METAL_RENTON_LOCAL_ID,
            "graphics_id": "OBJ_EVENT_GFX_BRAWLY",
            "x": 7,
            "y": 11,
            "elevation": 3,
            "movement_type": "MOVEMENT_TYPE_FACE_UP",
            "movement_range_x": 0,
            "movement_range_y": 0,
            "trainer_type": "TRAINER_TYPE_NONE",
            "trainer_sight_or_berry_tree_id": "0",
            "script": METAL_RENTON_SCRIPT,
            "flag": "FLAG_MAKE_IT_RAIN",
        }
        for key, value in expected.items():
            if renton.get(key) != value:
                die(f"O Renton externo possui {key} inesperado: {renton.get(key)!r}.")
    else:
        object_events.append(
            {
                "local_id": METAL_RENTON_LOCAL_ID,
                "graphics_id": "OBJ_EVENT_GFX_BRAWLY",
                "x": 7,
                "y": 11,
                "elevation": 3,
                "movement_type": "MOVEMENT_TYPE_FACE_UP",
                "movement_range_x": 0,
                "movement_range_y": 0,
                "trainer_type": "TRAINER_TYPE_NONE",
                "trainer_sight_or_berry_tree_id": "0",
                "script": METAL_RENTON_SCRIPT,
                "flag": "FLAG_MAKE_IT_RAIN",
            }
        )

    coord_events = map_data.get("coord_events")
    if not isinstance(coord_events, list):
        die("coord_events ausente ou invalido no map.json de LavaridgeTown.")

    metal_triggers = [event for event in coord_events if event.get("script") == METAL_SCRIPT]
    if len(metal_triggers) not in (0, 2):
        die("A quest precisa ter zero ou exatamente dois triggers METAL.")

    expected_triggers = {(8, 5), (6, 6)}
    if metal_triggers:
        positions = {(event.get("x"), event.get("y")) for event in metal_triggers}
        if positions != expected_triggers:
            die(f"Os triggers METAL estao em {positions}, nao em {expected_triggers}.")
    else:
        for x, y in ((8, 5), (6, 6)):
            trigger = {
                "type": "trigger",
                "x": x,
                "y": y,
                "elevation": 3,
                "var": "FLAG_MAKE_IT_RAIN",
                "var_value": "0",
                "script": METAL_SCRIPT,
            }
            coord_events.append(trigger)
        metal_triggers = [
            event for event in coord_events if event.get("script") == METAL_SCRIPT
        ]

    for trigger in metal_triggers:
        trigger["type"] = "trigger"
        trigger["elevation"] = 3
        trigger["var"] = "FLAG_MAKE_IT_RAIN"
        trigger["var_value"] = "0"

    return map_data


def validate_gym_map(map_data):
    if map_data.get("name") != GYM_NAME:
        die(f"O map.json recebido nao e {GYM_NAME}.")
    object_events = map_data.get("object_events")
    if not isinstance(object_events, list):
        die("object_events ausente ou invalido no map.json do Gym.")
    renton = find_object(object_events, "local_id", "LOCALID_RENTON", "Renton no Gym")
    if renton.get("flag") != "FLAG_RENTON_LEFT":
        die("O Renton do Gym precisa usar FLAG_RENTON_LEFT.")


def build_metal_script(station_value):
    queue_ids = tuple(QUEUE_POSITIONS)
    push_left = "\n".join(
        f"\tapplymovement {local_id}, LavaridgeTown_Movement_MetalQueuePushLeft"
        for local_id in queue_ids
    )
    push_right = "\n".join(
        f"\tapplymovement {local_id}, LavaridgeTown_Movement_MetalQueuePushRight"
        for local_id in queue_ids
    )

    return f'''// {PATCH_TAG}: BEGIN
// Renton reacts only while the ROCK/METAL station is truly playing.
// FLAG_MAKE_IT_RAIN is shared by both valid ways of clearing the queue.
LavaridgeTown_EventScript_Renton_Likes_Metal::
\tgoto_if_set FLAG_MAKE_IT_RAIN, LavaridgeTown_EventScript_RentonMetalNoAction
\tgoto_if_set FLAG_RENTON_LEFT, LavaridgeTown_EventScript_RentonMetalNoAction
\tsetvar VAR_0x8004, {station_value} @ STATION_ROCK_METAL
\tspecial Special_IsRadioStationPlaying
\tgoto_if_eq VAR_RESULT, FALSE, LavaridgeTown_EventScript_RentonMetalNoAction
\tlockall
\thidefollower 1
\tgetplayerxy VAR_0x8005, VAR_0x8006
\tapplymovement {METAL_RENTON_LOCAL_ID}, Common_Movement_ExclamationMark
\twaitmovement 0
\tcreatefieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
\tmsgbox LavaridgeTown_Text_RentonHearsMetal, MSGBOX_DEFAULT
\tremovefieldmugshot
\tclosemessage
\tgoto_if_eq VAR_0x8005, 8, LavaridgeTown_EventScript_RentonPushQueueLeft
\tgoto_if_eq VAR_0x8005, 6, LavaridgeTown_EventScript_RentonPushQueueRight
\tgoto LavaridgeTown_EventScript_RentonMetalAbort
\tend

LavaridgeTown_EventScript_RentonPushQueueLeft::
\tplayse SE_M_STRENGTH
{push_left}
\twaitmovement 0
\twaitse
\tgoto LavaridgeTown_EventScript_RentonMetalAfterPush
\tend

LavaridgeTown_EventScript_RentonPushQueueRight::
\tplayse SE_M_STRENGTH
{push_right}
\twaitmovement 0
\twaitse
\tgoto LavaridgeTown_EventScript_RentonMetalAfterPush
\tend

LavaridgeTown_EventScript_RentonMetalAfterPush::
\tapplymovement {METAL_RENTON_LOCAL_ID}, LavaridgeTown_Movement_RentonWalkUpQueue
\twaitmovement 0
\tfadescreenswapbuffers FADE_TO_BLACK
\tsetflag FLAG_MAKE_IT_RAIN
\tsetflag FLAG_RENTON_LEFT
\tsetflag {HIDE_WOMAN_FLAG}
\tspecial Special_HideLavaridgeMakeItRainQueueNow
\tremoveobject {RAIN_WOMAN_LOCAL_ID}
\tapplymovement {METAL_RENTON_LOCAL_ID}, LavaridgeTown_Movement_RentonReachMeetingPoint
\twaitmovement 0
\tdelay 2
\tfadescreenswapbuffers FADE_FROM_BLACK
\tapplymovement {METAL_RENTON_LOCAL_ID}, Common_Movement_FacePlayer
\twaitmovement 0
\tcreatefieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
\tmsgbox LavaridgeTown_Text_RentonClearedQueue, MSGBOX_DEFAULT
\tremovefieldmugshot
\tclosemessage
\tapplymovement {METAL_RENTON_LOCAL_ID}, LavaridgeTown_Movement_RentonLeaveSouth
\twaitmovement 0
\tremoveobject {METAL_RENTON_LOCAL_ID}
\treleaseall
\tend

LavaridgeTown_EventScript_RentonMetalAbort::
\treleaseall
\tend

LavaridgeTown_EventScript_RentonMetalNoAction::
\tend

LavaridgeTown_EventScript_RentonMetalIdle::
\tlock
\tfaceplayer
\tmsgbox LavaridgeTown_Text_RentonWaitingInQueue, MSGBOX_DEFAULT
\trelease
\tend

LavaridgeTown_Movement_MetalQueuePushLeft:
\twalk_fast_left
\tstep_end

LavaridgeTown_Movement_MetalQueuePushRight:
\twalk_fast_right
\tstep_end

// Renton starts at (7,11), walks through the cleared center column to (7,6),
// and reaches the shared meeting point at (8,6) while the screen is black.
LavaridgeTown_Movement_RentonWalkUpQueue:
\twalk_fast_up
\twalk_fast_up
\twalk_fast_up
\twalk_fast_up
\twalk_fast_up
\tstep_end

LavaridgeTown_Movement_RentonReachMeetingPoint:
\twalk_right
\tstep_end

LavaridgeTown_Movement_RentonLeaveSouth:
\twalk_down
\twalk_down
\twalk_down
\twalk_down
\twalk_down
\twalk_down
\twalk_down
\tstep_end

LavaridgeTown_Text_RentonHearsMetal:
\t.string "Now THAT is music! Turn it up!\\p"
\t.string "Everyone, make way! I've got a GYM\\n"
\t.string "to get back to! HAHAHA!$"

LavaridgeTown_Text_RentonClearedQueue:
\t.string "See? That's how you clear a line!\\p"
\t.string "Tell them at my GYM I found\\n"
\t.string "somewhere more METAL to be!$"

LavaridgeTown_Text_RentonWaitingInQueue:
\t.string "This line needs heavier music...\\p"
\t.string "Something with real METAL!$"
// {PATCH_TAG}: END

'''


def patch_town_script(text, station_value):
    if PATCH_TAG not in text:
        anchor = "// -----------------------------------------------------------------------------\n// MAKE IT RAIN - queue event\n"
        text = replace_once(
            text,
            anchor,
            build_metal_script(station_value) + anchor,
            "LavaridgeTown/scripts.pory (ponto de insercao)",
        )
    else:
        if text.count(f"// {PATCH_TAG}: BEGIN") != 1:
            die("Marcador parcial ou duplicado do evento METAL em scripts.pory.")

    return text


def validate_prerequisites(files, town_map, gym_map):
    radio_text = files["src/radio.c"]
    if "void Special_IsRadioStationPlaying(void)" not in radio_text:
        die("Special_IsRadioStationPlaying nao existe. Aplique a quest ANIME V1/V2 primeiro.")
    if "gMPlayInfo_BGM.songHeader == gSongTable[sRadioCurrentSong].header" not in radio_text:
        die("A special da radio nao possui a verificacao de musica realmente tocando.")
    if "def_special Special_IsRadioStationPlaying" not in files["data/specials.inc"]:
        die("Special_IsRadioStationPlaying nao esta registrada em data/specials.inc.")

    town_script = files[f"data/maps/{TOWN_NAME}/scripts.pory"]
    for needle in (
        "LavaridgeTown_EventScript_MakeItRain::",
        "setflag FLAG_MAKE_IT_RAIN",
        "special Special_HideLavaridgeMakeItRainQueueNow",
    ):
        if needle not in town_script:
            die(f"A quest da velha esta incompleta: {needle} ausente.")

    gym_script = files[f"data/maps/{GYM_NAME}/scripts.pory"]
    for needle in (
        "LavaridgeTown_Gym_1F_EventScript_RentonIdle::",
        "LavaridgeTown_Gym_1F_EventScript_RentonGone::",
        "setflag FLAG_RENTON_LEFT",
        "MUGSHOT_RENTON",
    ):
        if needle not in gym_script:
            die(f"O evento atual do Renton no Gym esta incompleto: {needle} ausente.")

    patch_town_map(json.loads(json.dumps(town_map)))
    validate_gym_map(gym_map)


def validate_final(files):
    flags_text = files["include/constants/flags.h"]
    if not re.search(
        rf"^\s*#define\s+{HIDE_WOMAN_FLAG}\s+0x4BB\b",
        flags_text,
        re.MULTILINE,
    ):
        die("Verificacao final falhou: a flag 0x4BB nao foi configurada.")
    if re.search(r"^\s*#define\s+FLAG_UNUSED_0x4BB\b", flags_text, re.MULTILINE):
        die("Verificacao final falhou: FLAG_UNUSED_0x4BB ainda existe.")

    town_script = files[f"data/maps/{TOWN_NAME}/scripts.pory"]
    required = (
        PATCH_TAG,
        f"setvar VAR_0x8004, {get_radio_station_value(files['src/radio.c'], 'STATION_ROCK_METAL')}",
        "special Special_IsRadioStationPlaying",
        "playse SE_M_STRENGTH",
        "hidefollower 1",
        "setflag FLAG_MAKE_IT_RAIN",
        "setflag FLAG_RENTON_LEFT",
        f"setflag {HIDE_WOMAN_FLAG}",
        f"removeobject {RAIN_WOMAN_LOCAL_ID}",
        "LavaridgeTown_Movement_RentonReachMeetingPoint",
        "LavaridgeTown_Movement_RentonLeaveSouth",
    )
    for needle in required:
        if needle not in town_script:
            die(f"Verificacao final falhou em scripts.pory: {needle} ausente.")
    if town_script.count(f"// {PATCH_TAG}: BEGIN") != 1:
        die("Verificacao final falhou: bloco METAL duplicado.")

    town_map = json.loads(files[f"data/maps/{TOWN_NAME}/map.json"])
    object_events = town_map.get("object_events", [])
    renton = find_object(
        object_events,
        "local_id",
        METAL_RENTON_LOCAL_ID,
        "Renton externo",
    )
    if (renton.get("x"), renton.get("y"), renton.get("flag")) != (
        7,
        11,
        "FLAG_MAKE_IT_RAIN",
    ):
        die("Verificacao final falhou: Renton externo incorreto.")
    woman = find_object(
        object_events,
        "local_id",
        RAIN_WOMAN_LOCAL_ID,
        "velha da chuva",
    )
    if woman.get("flag") != HIDE_WOMAN_FLAG:
        die("Verificacao final falhou: flag da velha incorreta.")

    triggers = [
        event
        for event in town_map.get("coord_events", [])
        if event.get("script") == METAL_SCRIPT
    ]
    if len(triggers) != 2:
        die("Verificacao final falhou: quantidade incorreta de triggers METAL.")
    if {(event.get("x"), event.get("y")) for event in triggers} != {(8, 5), (6, 6)}:
        die("Verificacao final falhou: posicoes incorretas dos triggers METAL.")
    for event in triggers:
        if event.get("var") != "FLAG_MAKE_IT_RAIN" or event.get("var_value") != "0":
            die("Verificacao final falhou: trigger METAL nao usa a flag compartilhada.")


def main():
    root = Path.cwd().resolve()
    print("Verificando radio, fila, velha da chuva e Renton no Gym...")

    paths = {
        "include/constants/flags.h": root / "include/constants/flags.h",
        "src/radio.c": root / "src/radio.c",
        "data/specials.inc": root / "data/specials.inc",
        f"data/maps/{TOWN_NAME}/scripts.pory": root / f"data/maps/{TOWN_NAME}/scripts.pory",
        f"data/maps/{TOWN_NAME}/map.json": root / f"data/maps/{TOWN_NAME}/map.json",
        f"data/maps/{GYM_NAME}/scripts.pory": root / f"data/maps/{GYM_NAME}/scripts.pory",
        f"data/maps/{GYM_NAME}/map.json": root / f"data/maps/{GYM_NAME}/map.json",
    }
    missing = [relative for relative, path in paths.items() if not path.is_file()]
    if missing:
        die(
            "Arquivos obrigatorios ausentes: " + ", ".join(missing)
            + ". Rode o instalador na raiz do pokeemerald-expansion."
        )

    originals = {
        relative: path.read_text(encoding="utf-8")
        for relative, path in paths.items()
    }
    try:
        town_map = json.loads(originals[f"data/maps/{TOWN_NAME}/map.json"])
        gym_map = json.loads(originals[f"data/maps/{GYM_NAME}/map.json"])
    except json.JSONDecodeError as error:
        die(f"Um dos map.json e invalido: {error}.")

    validate_prerequisites(originals, town_map, gym_map)
    station_value = get_radio_station_value(originals["src/radio.c"], "STATION_ROCK_METAL")

    patched = dict(originals)
    patched["include/constants/flags.h"] = patch_named_flag(
        originals["include/constants/flags.h"],
        "FLAG_UNUSED_0x4BB",
        HIDE_WOMAN_FLAG,
        "0x4BB",
        "HLW_RENTON_METAL_QUEUE_EVENT_V1: hidden only by the METAL route",
    )
    patched[f"data/maps/{TOWN_NAME}/scripts.pory"] = patch_town_script(
        originals[f"data/maps/{TOWN_NAME}/scripts.pory"],
        station_value,
    )
    patched_town_map = patch_town_map(town_map)
    patched[f"data/maps/{TOWN_NAME}/map.json"] = (
        json.dumps(patched_town_map, indent=2, ensure_ascii=False) + "\n"
    )

    validate_final(patched)

    changed = [relative for relative in paths if patched[relative] != originals[relative]]
    if not changed:
        print("\nHLW RENTON METAL QUEUE EVENT V1 ja esta instalado.")
        print("Nada foi alterado.")
        print("Rode: make -j8")
        return

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_root = root / "PHYTON/backups" / f"hlw_renton_metal_queue_v1_{stamp}"
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
        die(f"Falha ao gravar; todas as alteracoes foram revertidas: {error}")

    print("\n============================================================")
    print("HLW RENTON METAL QUEUE EVENT V1 INSTALADO")
    print("============================================================")
    print("- ROCK/METAL e validado apenas quando a musica esta realmente tocando.")
    print("- Trigger direito empurra a fila para a esquerda.")
    print("- Trigger esquerdo empurra a fila para a direita.")
    print("- Renton chega ao ponto X=8, Y=6 e depois sai pelo sul.")
    print("- Chuva e METAL compartilham FLAG_MAKE_IT_RAIN para liberar a entrada.")
    print("- A rota METAL tambem define FLAG_RENTON_LEFT e esconde Renton no Gym.")
    print("- Somente a rota METAL esconde a velha usando a nova flag 0x4BB.")
    print("Arquivos alterados:")
    for relative in changed:
        print("  -", relative)
    print("Backup:", backup_root)
    print("\nO instalador nao executa make e nao usa make -B.")
    print("Agora rode SOMENTE:")
    print("  make -j8")


if __name__ == "__main__":
    main()
