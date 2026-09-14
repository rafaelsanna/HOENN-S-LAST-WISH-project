#!/usr/bin/env python3
from pathlib import Path
import datetime
import json
import re
import shutil


PATCH_TAG_V1 = "HLW_RENTON_METAL_QUEUE_EVENT_V1"
PATCH_TAG_V2 = "HLW_RENTON_METAL_QUEUE_EVENT_V2"
TOWN_NAME = "LavaridgeTown"
GYM_NAME = "LavaridgeTown_Gym_1F"
OLD_METAL_SCRIPT = "LavaridgeTown_EventScript_Renton_Likes_Metal"
RIGHT_METAL_SCRIPT = "LavaridgeTown_EventScript_Renton_Likes_Metal_Right"
LEFT_METAL_SCRIPT = "LavaridgeTown_EventScript_Renton_Likes_Metal_Left"
METAL_RENTON_LOCAL_ID = "LOCALID_LAVARIDGE_METAL_RENTON"
METAL_RENTON_SCRIPT = "LavaridgeTown_EventScript_RentonMetalObject"
RAIN_WOMAN_SCRIPT = "LavaridgeTown_EventScript_MakeItRain"
RAIN_WOMAN_LOCAL_ID = "LOCALID_LAVARIDGE_MAKE_IT_RAIN_WOMAN"
OLD_HIDE_FLAG = "FLAG_HIDE_LAVARIDGE_RAIN_WOMAN"
HIDE_RENTON_FLAG = "FLAG_HIDE_LAVARIDGE_METAL_RENTON"

QUEUE_IN_ORDER = (
    "LOCALID_LAVARIDGE_RAIN_QUEUE_1",  # Y=5
    "LOCALID_LAVARIDGE_RAIN_QUEUE_3",  # Y=6
    "LOCALID_LAVARIDGE_RAIN_QUEUE_2",  # Y=7
    "LOCALID_LAVARIDGE_RAIN_QUEUE_6",  # Y=8
    "LOCALID_LAVARIDGE_RAIN_QUEUE_4",  # Y=9
    "LOCALID_LAVARIDGE_RAIN_QUEUE_5",  # Y=10
)

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
                die(f"Valor inesperado em enum RadioStation: {entry}.")
        else:
            name = entry
            current += 1
        values[name] = current

    if station_name not in values:
        die(f"{station_name} nao foi encontrada em enum RadioStation.")
    return values[station_name]


def patch_visibility_flag(text):
    desired = re.compile(
        rf"^\s*#define\s+{HIDE_RENTON_FLAG}\s+0x4BB\b",
        re.MULTILINE,
    )
    if desired.search(text):
        return text

    candidates = (OLD_HIDE_FLAG, "FLAG_UNUSED_0x4BB")
    matches = []
    for candidate in candidates:
        pattern = re.compile(
            rf"^[ \t]*#define[ \t]+{candidate}[ \t]+0x4BB[^\n]*$",
            re.MULTILINE,
        )
        matches.extend(pattern.finditer(text))

    if len(matches) != 1:
        die("Nao encontrei exatamente uma flag 0x4BB compativel para reparar.")

    old_line = matches[0].group(0)
    new_line = (
        f"#define {HIDE_RENTON_FLAG:<64} 0x4BB "
        f"// {PATCH_TAG_V2}: temporary outside-map visibility"
    )
    return text.replace(old_line, new_line, 1)


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
            die(f"{local_id} esta em {position}; esperado: {expected_position}.")
        if event.get("flag") != "FLAG_MAKE_IT_RAIN":
            die(f"{local_id} precisa usar FLAG_MAKE_IT_RAIN.")


def patch_town_map(map_data):
    if map_data.get("name") != TOWN_NAME:
        die(f"O map.json recebido nao e {TOWN_NAME}.")
    object_events = map_data.get("object_events")
    if not isinstance(object_events, list):
        die("object_events invalido no map.json de LavaridgeTown.")

    validate_queue(object_events)

    woman = find_object(object_events, "script", RAIN_WOMAN_SCRIPT, "a velha da chuva")
    current_woman_id = woman.get("local_id")
    if current_woman_id not in (None, RAIN_WOMAN_LOCAL_ID):
        die(f"A velha da chuva possui Local ID inesperado: {current_woman_id}.")
    woman["local_id"] = RAIN_WOMAN_LOCAL_ID
    woman["flag"] = "0"

    renton = find_object(
        object_events,
        "local_id",
        METAL_RENTON_LOCAL_ID,
        "Renton externo instalado pela V1",
    )
    renton.update(
        {
            "graphics_id": "OBJ_EVENT_GFX_BRAWLY",
            "x": 7,
            "y": 3,
            "elevation": 3,
            "movement_type": "MOVEMENT_TYPE_FACE_DOWN",
            "movement_range_x": 0,
            "movement_range_y": 0,
            "trainer_type": "TRAINER_TYPE_NONE",
            "trainer_sight_or_berry_tree_id": "0",
            "script": METAL_RENTON_SCRIPT,
            "flag": HIDE_RENTON_FLAG,
        }
    )

    coord_events = map_data.get("coord_events")
    if not isinstance(coord_events, list):
        die("coord_events invalido no map.json de LavaridgeTown.")
    valid_scripts = {OLD_METAL_SCRIPT, RIGHT_METAL_SCRIPT, LEFT_METAL_SCRIPT}
    metal_triggers = [event for event in coord_events if event.get("script") in valid_scripts]
    if len(metal_triggers) != 2:
        die("Nao encontrei exatamente os dois triggers METAL instalados pela V1.")

    by_position = {(event.get("x"), event.get("y")): event for event in metal_triggers}
    if set(by_position) != {(8, 5), (6, 6)}:
        die("Os triggers METAL nao estao em X=8/Y=5 e X=6/Y=6.")

    by_position[(8, 5)].update(
        {
            "type": "trigger",
            "elevation": 3,
            "var": "FLAG_MAKE_IT_RAIN",
            "var_value": "0",
            "script": RIGHT_METAL_SCRIPT,
        }
    )
    by_position[(6, 6)].update(
        {
            "type": "trigger",
            "elevation": 3,
            "var": "FLAG_MAKE_IT_RAIN",
            "var_value": "0",
            "script": LEFT_METAL_SCRIPT,
        }
    )
    return map_data


def validate_gym(map_data, script_text):
    if map_data.get("name") != GYM_NAME:
        die(f"O map.json recebido nao e {GYM_NAME}.")
    object_events = map_data.get("object_events")
    if not isinstance(object_events, list):
        die("object_events invalido no map.json do Gym.")
    renton = find_object(object_events, "local_id", "LOCALID_RENTON", "Renton no Gym")
    if renton.get("flag") != "FLAG_RENTON_LEFT":
        die("O Renton do Gym precisa usar FLAG_RENTON_LEFT.")
    if "setflag FLAG_RENTON_LEFT" not in script_text:
        die("O script atual do Renton no Gym nao conclui FLAG_RENTON_LEFT.")


def build_push_sequence(direction):
    movement = f"LavaridgeTown_Movement_MetalQueuePush{direction}"
    lines = []
    for index, local_id in enumerate(QUEUE_IN_ORDER):
        lines.extend(
            (
                "\tplayse SE_M_STRENGTH",
                f"\tapplymovement {local_id}, {movement}",
                "\twaitmovement 0",
                "\twaitse",
                f"\tapplymovement {METAL_RENTON_LOCAL_ID}, "
                "LavaridgeTown_Movement_RentonAdvanceOne",
                "\twaitmovement 0",
            )
        )
        if index == 0:
            lines.extend(("\tclosedoor 7, 4", "\twaitdooranim"))
    return "\n".join(lines)


def build_v2_block(station_value):
    push_left = build_push_sequence("Left")
    push_right = build_push_sequence("Right")
    return f'''// {PATCH_TAG_V2}: BEGIN
// The two coordinate events use explicit wrappers so each side is deterministic.
LavaridgeTown_EventScript_Renton_Likes_Metal_Right::
\tgoto_if_set FLAG_MAKE_IT_RAIN, LavaridgeTown_EventScript_RentonMetalNoAction
\tsetvar VAR_0x8007, 1 @ Player stepped on the right trigger
\tgoto LavaridgeTown_EventScript_RentonMetalCheckRadio
\tend

LavaridgeTown_EventScript_Renton_Likes_Metal_Left::
\tgoto_if_set FLAG_MAKE_IT_RAIN, LavaridgeTown_EventScript_RentonMetalNoAction
\tsetvar VAR_0x8007, 2 @ Player stepped on the left trigger
\tgoto LavaridgeTown_EventScript_RentonMetalCheckRadio
\tend

LavaridgeTown_EventScript_RentonMetalCheckRadio::
\tgoto_if_set FLAG_RENTON_LEFT, LavaridgeTown_EventScript_RentonMetalNoAction
\tsetvar VAR_0x8004, {station_value} @ STATION_ROCK_METAL
\tspecial Special_IsRadioStationPlaying
\tgoto_if_eq VAR_RESULT, FALSE, LavaridgeTown_EventScript_RentonMetalNoAction
\tlockall
\thidefollower 1

\t@ Match the MAR event: clear the visibility flag, open the Gym door,
\t@ spawn the hidden object, and let Renton step outside.
\tclearflag {HIDE_RENTON_FLAG}
\topendoor 7, 4
\twaitdooranim
\taddobject {METAL_RENTON_LOCAL_ID}
\tapplymovement {METAL_RENTON_LOCAL_ID}, LavaridgeTown_Movement_RentonExitGym
\twaitmovement 0
\tapplymovement {METAL_RENTON_LOCAL_ID}, Common_Movement_ExclamationMark
\twaitmovement 0
\tgoto_if_eq VAR_0x8007, 1, LavaridgeTown_EventScript_RentonPushQueueLeft
\tgoto LavaridgeTown_EventScript_RentonPushQueueRight
\tend

// Right trigger: every queue member is pushed to X=6, one at a time.
LavaridgeTown_EventScript_RentonPushQueueLeft::
{push_left}
\tgoto LavaridgeTown_EventScript_RentonFinishedPushing
\tend

// Left trigger: every queue member is pushed to X=8, one at a time.
LavaridgeTown_EventScript_RentonPushQueueRight::
{push_right}
\tgoto LavaridgeTown_EventScript_RentonFinishedPushing
\tend

LavaridgeTown_EventScript_RentonFinishedPushing::
\t@ Renton is now at (7,10). Hide the crowd and move him to the shared
\t@ meeting point (8,6) while the screen is black.
\tfadescreenswapbuffers FADE_TO_BLACK
\tsetflag FLAG_MAKE_IT_RAIN
\tsetflag FLAG_RENTON_LEFT
\tspecial Special_HideLavaridgeMakeItRainQueueNow
\tsetobjectxy {METAL_RENTON_LOCAL_ID}, 8, 6
\tdelay 2
\tfadescreenswapbuffers FADE_FROM_BLACK
\tapplymovement {METAL_RENTON_LOCAL_ID}, Common_Movement_FacePlayer
\twaitmovement 0

\t@ Dialogue intentionally happens only after all six NPCs are gone.
\tcreatefieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
\tmsgbox LavaridgeTown_Text_RentonClearedQueue, MSGBOX_DEFAULT
\tremovefieldmugshot
\tclosemessage
\tapplymovement {METAL_RENTON_LOCAL_ID}, LavaridgeTown_Movement_RentonLeaveSouth
\twaitmovement 0
\tremoveobject {METAL_RENTON_LOCAL_ID}
\tsetflag {HIDE_RENTON_FLAG}
\tsetvar VAR_0x8007, 0
\treleaseall
\tend

LavaridgeTown_EventScript_RentonMetalNoAction::
\tend

// Renton is normally hidden; this script is only a safe fallback while live.
LavaridgeTown_EventScript_RentonMetalObject::
\tend

LavaridgeTown_Movement_RentonExitGym:
\twalk_down
\tstep_end

LavaridgeTown_Movement_RentonAdvanceOne:
\twalk_down
\tstep_end

LavaridgeTown_Movement_MetalQueuePushLeft:
\twalk_fast_left
\tstep_end

LavaridgeTown_Movement_MetalQueuePushRight:
\twalk_fast_right
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

LavaridgeTown_Text_RentonClearedQueue:
\t.string "Now THAT is what I call music!\\p"
\t.string "That crowd was blocking the entrance,\\n"
\t.string "so I made some room! HAHAHA!$"
// {PATCH_TAG_V2}: END
'''


def patch_metal_block(text, station_value):
    if f"// {PATCH_TAG_V2}: BEGIN" in text:
        if text.count(f"// {PATCH_TAG_V2}: BEGIN") != 1:
            die("O bloco V2 esta duplicado em scripts.pory.")
        return text

    pattern = re.compile(
        rf"// {PATCH_TAG_V1}: BEGIN\n.*?// {PATCH_TAG_V1}: END\n?",
        re.DOTALL,
    )
    matches = list(pattern.finditer(text))
    if len(matches) != 1:
        die("Nao encontrei exatamente o bloco V1 para substituir em scripts.pory.")
    replacement = build_v2_block(station_value)
    return pattern.sub(lambda _match: replacement, text, count=1)


def patch_on_transition(text):
    pattern = re.compile(r"(LavaridgeTown_OnTransition:\n.*?)(\tend\n)", re.DOTALL)
    matches = list(pattern.finditer(text))
    if len(matches) != 1:
        die("Nao encontrei LavaridgeTown_OnTransition de forma segura.")
    if f"setflag {HIDE_RENTON_FLAG}" in matches[0].group(0):
        return text
    replacement = (
        matches[0].group(1)
        + f"\t@ {PATCH_TAG_V2}: Renton stays hidden until a METAL trigger starts.\n"
        + f"\tsetflag {HIDE_RENTON_FLAG}\n"
        + matches[0].group(2)
    )
    return text[: matches[0].start()] + replacement + text[matches[0].end() :]


def patch_old_woman_done_text(text):
    desired = '''LavaridgeTown_Text_MakeItRainDone:
\t.string "Now that that noisy crowd is gone,\\n"
\t.string "LAVARIDGE feels so much calmer.\\p"
\t.string "This is how our town should be.$"
'''
    if desired in text:
        return text

    pattern = re.compile(
        r"LavaridgeTown_Text_MakeItRainDone:\n(?:[ \t]*\.string[^\n]*\n)+"
    )
    matches = list(pattern.finditer(text))
    if len(matches) != 1:
        die("Nao encontrei exatamente o texto final atual da velha.")
    return pattern.sub(lambda _match: desired, text, count=1)


def validate_prerequisites(files, town_map, gym_map):
    radio_text = files["src/radio.c"]
    if "void Special_IsRadioStationPlaying(void)" not in radio_text:
        die("Special_IsRadioStationPlaying nao existe. Aplique a quest ANIME primeiro.")
    if "gMPlayInfo_BGM.songHeader == gSongTable[sRadioCurrentSong].header" not in radio_text:
        die("A special nao confirma que a musica da radio esta realmente tocando.")
    if "def_special Special_IsRadioStationPlaying" not in files["data/specials.inc"]:
        die("Special_IsRadioStationPlaying nao esta registrada em data/specials.inc.")

    town_script = files[f"data/maps/{TOWN_NAME}/scripts.pory"]
    if (
        f"// {PATCH_TAG_V1}: BEGIN" not in town_script
        and f"// {PATCH_TAG_V2}: BEGIN" not in town_script
    ):
        die("Nao encontrei o bloco V1 nem o bloco V2 do evento METAL.")
    for needle in (
        "special Special_HideLavaridgeMakeItRainQueueNow",
        "LavaridgeTown_Text_MakeItRainDone:",
    ):
        if needle not in town_script:
            die(f"A instalacao V1 esperada esta incompleta: {needle} ausente.")

    patch_town_map(json.loads(json.dumps(town_map)))
    validate_gym(gym_map, files[f"data/maps/{GYM_NAME}/scripts.pory"])


def validate_final(files):
    flags_text = files["include/constants/flags.h"]
    if not re.search(
        rf"^\s*#define\s+{HIDE_RENTON_FLAG}\s+0x4BB\b",
        flags_text,
        re.MULTILINE,
    ):
        die("Verificacao final falhou: a flag de visibilidade 0x4BB esta ausente.")
    if re.search(rf"^\s*#define\s+{OLD_HIDE_FLAG}\b", flags_text, re.MULTILINE):
        die("Verificacao final falhou: o antigo nome da flag da velha ainda existe.")

    script = files[f"data/maps/{TOWN_NAME}/scripts.pory"]
    required = (
        PATCH_TAG_V2,
        "opendoor 7, 4",
        "waitdooranim",
        f"addobject {METAL_RENTON_LOCAL_ID}",
        "playse SE_M_STRENGTH",
        "setflag FLAG_MAKE_IT_RAIN",
        "setflag FLAG_RENTON_LEFT",
        f"setflag {HIDE_RENTON_FLAG}",
        f"setobjectxy {METAL_RENTON_LOCAL_ID}, 8, 6",
        "Dialogue intentionally happens only after all six NPCs are gone.",
        "Now that that noisy crowd is gone",
    )
    for needle in required:
        if needle not in script:
            die(f"Verificacao final falhou em scripts.pory: {needle} ausente.")
    if script.count(f"// {PATCH_TAG_V2}: BEGIN") != 1:
        die("Verificacao final falhou: bloco V2 duplicado.")
    if f"// {PATCH_TAG_V1}: BEGIN" in script:
        die("Verificacao final falhou: o bloco defeituoso V1 ainda existe.")
    if script.count("playse SE_M_STRENGTH") != 12:
        die("Verificacao final falhou: devem existir seis empurroes por lado.")
    if f"removeobject {RAIN_WOMAN_LOCAL_ID}" in script:
        die("Verificacao final falhou: a velha ainda seria removida.")

    town_map = json.loads(files[f"data/maps/{TOWN_NAME}/map.json"])
    objects = town_map.get("object_events", [])
    woman = find_object(objects, "local_id", RAIN_WOMAN_LOCAL_ID, "a velha")
    if woman.get("flag") != "0":
        die("Verificacao final falhou: a velha ainda possui flag de esconder.")
    renton = find_object(objects, "local_id", METAL_RENTON_LOCAL_ID, "Renton externo")
    if (renton.get("x"), renton.get("y"), renton.get("flag")) != (
        7,
        3,
        HIDE_RENTON_FLAG,
    ):
        die("Verificacao final falhou: spawn escondido do Renton esta incorreto.")

    triggers = {
        (event.get("x"), event.get("y")): event
        for event in town_map.get("coord_events", [])
        if event.get("script") in (RIGHT_METAL_SCRIPT, LEFT_METAL_SCRIPT)
    }
    if set(triggers) != {(8, 5), (6, 6)}:
        die("Verificacao final falhou: os dois triggers nao foram encontrados.")
    if triggers[(8, 5)].get("script") != RIGHT_METAL_SCRIPT:
        die("Verificacao final falhou: trigger direito usa o script errado.")
    if triggers[(6, 6)].get("script") != LEFT_METAL_SCRIPT:
        die("Verificacao final falhou: trigger esquerdo usa o script errado.")
    for event in triggers.values():
        if event.get("var") != "FLAG_MAKE_IT_RAIN" or event.get("var_value") != "0":
            die("Verificacao final falhou: um trigger nao usa FLAG_MAKE_IT_RAIN.")


def main():
    root = Path.cwd().resolve()
    print("Reparando a saida do Renton, os empurroes e a velha da chuva...")

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
            + ". Rode este repair na raiz do pokeemerald-expansion."
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
    patched["include/constants/flags.h"] = patch_visibility_flag(
        originals["include/constants/flags.h"]
    )
    town_script = patch_metal_block(
        originals[f"data/maps/{TOWN_NAME}/scripts.pory"],
        station_value,
    )
    town_script = patch_on_transition(town_script)
    town_script = patch_old_woman_done_text(town_script)
    patched[f"data/maps/{TOWN_NAME}/scripts.pory"] = town_script
    patched_town_map = patch_town_map(town_map)
    patched[f"data/maps/{TOWN_NAME}/map.json"] = (
        json.dumps(patched_town_map, indent=2, ensure_ascii=False) + "\n"
    )

    validate_final(patched)
    changed = [relative for relative in paths if patched[relative] != originals[relative]]
    if not changed:
        print("\nHLW RENTON METAL QUEUE EVENT V2 ja esta reparado.")
        print("Nada foi alterado.")
        print("Rode: make -j8")
        return

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_root = root / "PHYTON/backups" / f"hlw_renton_metal_queue_v2_{stamp}"
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
    print("HLW RENTON METAL QUEUE EVENT V2 REPARADO")
    print("============================================================")
    print("- Renton agora nasce escondido dentro do Gym em X=7, Y=3.")
    print("- A porta X=7, Y=4 abre antes de Renton sair.")
    print("- Cada NPC e empurrado individualmente com SE_M_STRENGTH.")
    print("- Os triggers esquerdo e direito agora usam scripts separados.")
    print("- O dialogo ocorre somente depois que a fila desaparece.")
    print("- Renton conversa em X=8, Y=6 e depois sai pelo sul.")
    print("- A velha permanece e usa um texto final valido para as duas rotas.")
    print("Arquivos alterados:")
    for relative in changed:
        print("  -", relative)
    print("Backup:", backup_root)
    print("\nO repair nao executa make e nao usa make -B.")
    print("Agora rode SOMENTE:")
    print("  make -j8")


if __name__ == "__main__":
    main()
