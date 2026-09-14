#!/usr/bin/env python3
from pathlib import Path
import datetime
import json
import re
import shutil


PATCH_TAG_V2 = "HLW_RENTON_METAL_QUEUE_EVENT_V2"
PATCH_TAG_V3 = "HLW_RENTON_METAL_QUEUE_EVENT_V3"
TOWN_NAME = "LavaridgeTown"
RIGHT_SCRIPT = "LavaridgeTown_EventScript_Renton_Likes_Metal_Right"
LEFT_SCRIPT = "LavaridgeTown_EventScript_Renton_Likes_Metal_Left"
RENTON_ID = "LOCALID_LAVARIDGE_METAL_RENTON"
HIDE_RENTON_FLAG = "FLAG_HIDE_LAVARIDGE_METAL_RENTON"

QUEUE_IDS = (
    "LOCALID_LAVARIDGE_RAIN_QUEUE_1",
    "LOCALID_LAVARIDGE_RAIN_QUEUE_3",
    "LOCALID_LAVARIDGE_RAIN_QUEUE_2",
    "LOCALID_LAVARIDGE_RAIN_QUEUE_6",
    "LOCALID_LAVARIDGE_RAIN_QUEUE_4",
    "LOCALID_LAVARIDGE_RAIN_QUEUE_5",
)


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


def get_station_value(radio_text):
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

    if "STATION_ROCK_METAL" not in values:
        die("STATION_ROCK_METAL nao existe em enum RadioStation.")
    return values["STATION_ROCK_METAL"]


def build_push_sequence(direction):
    movement = f"LavaridgeTown_Movement_MetalQueuePush{direction}"
    lines = []
    for index, local_id in enumerate(QUEUE_IDS):
        lines.extend(
            (
                f"\tapplymovement {local_id}, Common_Movement_ExclamationMark",
                "\twaitmovement 0",
                "\tdelay 8",
                "\tplayse SE_M_STRENGTH",
                f"\tapplymovement {local_id}, {movement}",
                "\twaitmovement 0",
                "\twaitse",
                f"\tapplymovement {RENTON_ID}, LavaridgeTown_Movement_RentonAdvanceOne",
                "\twaitmovement 0",
            )
        )
        if index == 0:
            lines.extend(("\tclosedoor 7, 4", "\twaitdooranim"))
    return "\n".join(lines)


def build_remove_sequence():
    return "\n".join(f"\tremoveobject {local_id}" for local_id in QUEUE_IDS)


def build_v3_block(station_value):
    push_left = build_push_sequence("Left")
    push_right = build_push_sequence("Right")
    remove_queue = build_remove_sequence()
    return f'''// {PATCH_TAG_V3}: BEGIN
// Both coordinate events use VAR_TEMP_1; flags are not valid trigger variables.
LavaridgeTown_EventScript_Renton_Likes_Metal_Right::
\tgoto_if_set FLAG_MAKE_IT_RAIN, LavaridgeTown_EventScript_RentonMetalNoAction
\tsetvar VAR_0x8007, 1 @ Player is at (8,6), to Renton's right
\tgoto LavaridgeTown_EventScript_RentonMetalCheckRadio
\tend

LavaridgeTown_EventScript_Renton_Likes_Metal_Left::
\tgoto_if_set FLAG_MAKE_IT_RAIN, LavaridgeTown_EventScript_RentonMetalNoAction
\tsetvar VAR_0x8007, 2 @ Player is at (6,6), to Renton's left
\tgoto LavaridgeTown_EventScript_RentonMetalCheckRadio
\tend

LavaridgeTown_EventScript_RentonMetalCheckRadio::
\tgoto_if_set FLAG_RENTON_LEFT, LavaridgeTown_EventScript_RentonMetalNoAction
\tsetvar VAR_0x8004, {station_value} @ STATION_ROCK_METAL
\tspecial Special_IsRadioStationPlaying
\tgoto_if_eq VAR_RESULT, FALSE, LavaridgeTown_EventScript_RentonMetalNoAction
\tlockall
\thidefollower 1

\t@ Spawn Renton inside the Gym and make him walk through the open door.
\tclearflag {HIDE_RENTON_FLAG}
\topendoor 7, 4
\twaitdooranim
\taddobject {RENTON_ID}
\tapplymovement {RENTON_ID}, LavaridgeTown_Movement_RentonExitGym
\twaitmovement 0
\tapplymovement {RENTON_ID}, Common_Movement_ExclamationMark
\twaitmovement 0
\tgoto_if_eq VAR_0x8007, 1, LavaridgeTown_EventScript_RentonPushQueueLeft
\tgoto LavaridgeTown_EventScript_RentonPushQueueRight
\tend

// The right trigger makes Renton push every queue member to the left.
LavaridgeTown_EventScript_RentonPushQueueLeft::
{push_left}
\tgoto LavaridgeTown_EventScript_RentonFinishedPushing
\tend

// The left trigger makes Renton push every queue member to the right.
LavaridgeTown_EventScript_RentonPushQueueRight::
{push_right}
\tgoto LavaridgeTown_EventScript_RentonFinishedPushing
\tend

LavaridgeTown_EventScript_RentonFinishedPushing::
\tfadescreenswapbuffers FADE_TO_BLACK
\tsetflag FLAG_MAKE_IT_RAIN
\tsetflag FLAG_RENTON_LEFT

\t@ Remove the live objects explicitly before moving Renton. This prevents
\t@ the shifted queue from occupying his destination and locking the event.
{remove_queue}
\tsetobjectxy {RENTON_ID}, 7, 6
\tdelay 2
\tfadescreenswapbuffers FADE_FROM_BLACK
\tgoto_if_eq VAR_0x8007, 1, LavaridgeTown_EventScript_RentonMeetFromRight
\tgoto LavaridgeTown_EventScript_RentonMeetFromLeft
\tend

// Player stands at (8,6): both actors turn toward each other horizontally.
LavaridgeTown_EventScript_RentonMeetFromRight::
\tapplymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceLeft
\twaitmovement 0
\tapplymovement {RENTON_ID}, Common_Movement_FaceRight
\twaitmovement 0
\tgoto LavaridgeTown_EventScript_RentonMetalDialogue
\tend

// Player stands at (6,6): both actors turn toward each other horizontally.
LavaridgeTown_EventScript_RentonMeetFromLeft::
\tapplymovement OBJ_EVENT_ID_PLAYER, Common_Movement_FaceRight
\twaitmovement 0
\tapplymovement {RENTON_ID}, Common_Movement_FaceLeft
\twaitmovement 0
\tgoto LavaridgeTown_EventScript_RentonMetalDialogue
\tend

LavaridgeTown_EventScript_RentonMetalDialogue::
\tcreatefieldmugshot MUGSHOT_RENTON, EMOTE_NORMAL
\tmsgbox LavaridgeTown_Text_RentonClearedQueue, MSGBOX_DEFAULT
\tremovefieldmugshot
\tclosemessage
\tapplymovement {RENTON_ID}, LavaridgeTown_Movement_RentonLeaveSouth
\twaitmovement 0
\tremoveobject {RENTON_ID}
\tsetflag {HIDE_RENTON_FLAG}
\tsetvar VAR_0x8007, 0
\treleaseall
\tend

LavaridgeTown_EventScript_RentonMetalNoAction::
\tend

// Renton is normally hidden; this is only a safe interaction fallback.
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
\t.string "Whoa... I don't even like POP\\n"
\t.string "music, you know... Usually.\\p"
\t.string "But since your taste is this good,\\n"
\t.string "I guess I can tell you something.\\p"
\t.string "That AMATERASU... Well...\\n"
\t.string "I think she's kind of my type.\\p"
\t.string "...HEY! WHY ARE YOU LAUGHING?!\\n"
\t.string "Knock it off!\\p"
\t.string "And... some of her songs are\\n"
\t.string "actually pretty good, okay?\\p"
\t.string "You only got away with this\\n"
\t.string "because that RADIO station is\\l"
\t.string "way too good!\\p"
\t.string "Now get lost! We'll battle again\\n"
\t.string "some other time! HAHAHA!$"
// {PATCH_TAG_V3}: END
'''


def patch_script(text, station_value):
    if f"// {PATCH_TAG_V3}: BEGIN" in text:
        if text.count(f"// {PATCH_TAG_V3}: BEGIN") != 1:
            die("O bloco V3 esta duplicado em scripts.pory.")
        return text

    pattern = re.compile(
        rf"// {PATCH_TAG_V2}: BEGIN\n.*?// {PATCH_TAG_V2}: END\n?",
        re.DOTALL,
    )
    matches = list(pattern.finditer(text))
    if len(matches) != 1:
        die("Nao encontrei exatamente o bloco V2 para substituir.")
    return pattern.sub(lambda _match: build_v3_block(station_value), text, count=1)


def patch_map(map_data):
    if map_data.get("name") != TOWN_NAME:
        die(f"O map.json recebido nao e {TOWN_NAME}.")

    coord_events = map_data.get("coord_events")
    if not isinstance(coord_events, list):
        die("coord_events invalido no map.json de LavaridgeTown.")

    right_matches = [event for event in coord_events if event.get("script") == RIGHT_SCRIPT]
    left_matches = [event for event in coord_events if event.get("script") == LEFT_SCRIPT]
    if len(right_matches) != 1 or len(left_matches) != 1:
        die("Nao encontrei exatamente os triggers direito e esquerdo da V2.")

    right_matches[0].update(
        {
            "type": "trigger",
            "x": 8,
            "y": 6,
            "elevation": 3,
            "var": "VAR_TEMP_1",
            "var_value": "0",
            "script": RIGHT_SCRIPT,
        }
    )
    left_matches[0].update(
        {
            "type": "trigger",
            "x": 6,
            "y": 6,
            "elevation": 3,
            "var": "VAR_TEMP_1",
            "var_value": "0",
            "script": LEFT_SCRIPT,
        }
    )
    return map_data


def validate_prerequisites(files):
    flags_text = files["include/constants/flags.h"]
    if not re.search(
        rf"^\s*#define\s+{HIDE_RENTON_FLAG}\s+0x4BB\b",
        flags_text,
        re.MULTILINE,
    ):
        die("FLAG_HIDE_LAVARIDGE_METAL_RENTON 0x4BB nao foi encontrada.")

    radio_text = files["src/radio.c"]
    if "void Special_IsRadioStationPlaying(void)" not in radio_text:
        die("Special_IsRadioStationPlaying nao existe em src/radio.c.")
    if "def_special Special_IsRadioStationPlaying" not in files["data/specials.inc"]:
        die("Special_IsRadioStationPlaying nao esta em data/specials.inc.")

    script = files[f"data/maps/{TOWN_NAME}/scripts.pory"]
    if (
        f"// {PATCH_TAG_V2}: BEGIN" not in script
        and f"// {PATCH_TAG_V3}: BEGIN" not in script
    ):
        die("Aplique primeiro o repair V2 do evento METAL.")
    if f"setflag {HIDE_RENTON_FLAG}" not in script:
        die("O controle de visibilidade do Renton instalado pela V2 esta ausente.")


def validate_final(files):
    script = files[f"data/maps/{TOWN_NAME}/scripts.pory"]
    required = (
        PATCH_TAG_V3,
        "removeobject LOCALID_LAVARIDGE_RAIN_QUEUE_1",
        f"setobjectxy {RENTON_ID}, 7, 6",
        "OBJ_EVENT_ID_PLAYER, Common_Movement_FaceLeft",
        "OBJ_EVENT_ID_PLAYER, Common_Movement_FaceRight",
        "Common_Movement_ExclamationMark",
        "...HEY! WHY ARE YOU LAUGHING?!",
    )
    for needle in required:
        if needle not in script:
            die(f"Verificacao final falhou em scripts.pory: {needle} ausente.")
    if script.count(f"// {PATCH_TAG_V3}: BEGIN") != 1:
        die("Verificacao final falhou: bloco V3 duplicado.")
    if f"// {PATCH_TAG_V2}: BEGIN" in script:
        die("Verificacao final falhou: o bloco V2 ainda existe.")
    if script.count("playse SE_M_STRENGTH") != 12:
        die("Verificacao final falhou: devem existir seis empurroes por lado.")
    block_match = re.search(
        rf"// {PATCH_TAG_V3}: BEGIN\n.*?// {PATCH_TAG_V3}: END",
        script,
        re.DOTALL,
    )
    if not block_match or block_match.group(0).count("Common_Movement_ExclamationMark") != 13:
        die("Verificacao final falhou: falta alguma exclamacao dos NPCs.")

    map_data = json.loads(files[f"data/maps/{TOWN_NAME}/map.json"])
    triggers = {
        event.get("script"): event
        for event in map_data.get("coord_events", [])
        if event.get("script") in (RIGHT_SCRIPT, LEFT_SCRIPT)
    }
    if set(triggers) != {RIGHT_SCRIPT, LEFT_SCRIPT}:
        die("Verificacao final falhou: os dois triggers nao foram encontrados.")
    expected = {RIGHT_SCRIPT: (8, 6), LEFT_SCRIPT: (6, 6)}
    for script_name, position in expected.items():
        event = triggers[script_name]
        if (event.get("x"), event.get("y")) != position:
            die(f"Verificacao final falhou: posicao incorreta de {script_name}.")
        if event.get("var") != "VAR_TEMP_1" or event.get("var_value") != "0":
            die(f"Verificacao final falhou: {script_name} nao usa VAR_TEMP_1.")


def main():
    root = Path.cwd().resolve()
    print("Reparando os triggers, o softlock, as posicoes e o dialogo do Renton...")

    paths = {
        "include/constants/flags.h": root / "include/constants/flags.h",
        "src/radio.c": root / "src/radio.c",
        "data/specials.inc": root / "data/specials.inc",
        f"data/maps/{TOWN_NAME}/scripts.pory": root / f"data/maps/{TOWN_NAME}/scripts.pory",
        f"data/maps/{TOWN_NAME}/map.json": root / f"data/maps/{TOWN_NAME}/map.json",
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
    station_value = get_station_value(originals["src/radio.c"])

    patched = dict(originals)
    patched[f"data/maps/{TOWN_NAME}/scripts.pory"] = patch_script(
        originals[f"data/maps/{TOWN_NAME}/scripts.pory"],
        station_value,
    )
    try:
        map_data = json.loads(originals[f"data/maps/{TOWN_NAME}/map.json"])
    except json.JSONDecodeError as error:
        die(f"map.json de LavaridgeTown invalido: {error}.")
    patched_map = patch_map(map_data)
    patched[f"data/maps/{TOWN_NAME}/map.json"] = (
        json.dumps(patched_map, indent=2, ensure_ascii=False) + "\n"
    )

    validate_final(patched)
    changed = [relative for relative in paths if patched[relative] != originals[relative]]
    if not changed:
        print("\nHLW RENTON METAL QUEUE EVENT V3 ja esta aplicado.")
        print("Nada foi alterado.")
        print("Rode: make -j8")
        return

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_root = root / "PHYTON/backups" / f"hlw_renton_metal_queue_v3_{stamp}"
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
    print("HLW RENTON METAL QUEUE EVENT V3 REPARADO")
    print("============================================================")
    print("- Trigger direito movido para X=8, Y=6.")
    print("- Os dois triggers voltaram a usar VAR_TEMP_1.")
    print("- A fila e removida antes de Renton ser reposicionado.")
    print("- Renton fica em X=7, Y=6, colado ao jogador dos dois lados.")
    print("- Jogador e Renton se viram um para o outro.")
    print("- Cada NPC mostra uma exclamacao antes do empurrao.")
    print("- Dialogo do Renton foi ampliado.")
    print("Arquivos alterados:")
    for relative in changed:
        print("  -", relative)
    print("Backup:", backup_root)
    print("\nO repair nao executa make e nao usa make -B.")
    print("Agora rode SOMENTE:")
    print("  make -j8")


if __name__ == "__main__":
    main()
