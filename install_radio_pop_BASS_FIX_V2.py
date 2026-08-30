#!/usr/bin/env python3
"""POP BASS FIX V2.

Instalador completo e autossuficiente:
- instala ou atualiza 360, Meet Me Halfway, One More Time,
  Around the World e Where Is the Love;
- mantém/instala as entradas do Radio em OTHER-WORLD e AMATERASU;
- substitui os MIDIs V1 por mixes V2 baseados no vídeo de teste;
- cria backup dos MIDIs V1 antes de sobrescrever;
- reduz a polifonia para evitar roubo de canais do baixo no M4A.

Pode ser rodado sobre a instalação atual ou em uma árvore que ainda não recebeu o lote.
"""
from pathlib import Path
import base64
import re
import shutil
import zlib

ROOT = Path.cwd()
MID_DST = ROOT / "sound/songs/midi"
MIDI_CFG = MID_DST / "midi.cfg"
SONGS_H = ROOT / "include/constants/songs.h"
SONG_TABLE = ROOT / "sound/song_table.inc"
RADIO_C = ROOT / "src/radio.c"

SONGS = [
    ('MUS_360', '360', '360 (CHARLI XCX)', 96),
    ('MUS_MEET_ME_HALFWAY', 'meet_me_halfway', 'MEET ME HALFWAY (BLACK EYED PEAS)', 100),
    ('MUS_ONE_MORE_TIME', 'one_more_time', 'ONE MORE TIME (DAFT PUNK)', 94),
    ('MUS_AROUND_THE_WORLD', 'around_the_world', 'AROUND THE WORLD (DAFT PUNK)', 88),
    ('MUS_WHERE_IS_THE_LOVE', 'where_is_the_love', 'WHERE IS THE LOVE (BLACK EYED PEAS)', 94),
]

EMBEDDED_MIDIS = {
    'mus_360.mid': (
        'eNrtlk1L3EAYx/+a7RvS+xxTstUJId2B7jYEc3FxaQqKq5XgMVILgmkXXKWWXna3p0IPrjl5FPwAtj311tpTP9X6TCY73agHoWxp'
        '6R7Cf36T5y1PZiZZXt/eAnAbU3TFy+u7O0QPMTDuP34izKf1BXNtYfHZCgarxp0TE4ONUmma3T3FoAJlXGqRcWnp5eYWvjVx1gIO'
        'qxzzXHSqwLyiQFFwhWqSWKc2QqJA+l7A0eBxh4YNiPFlSFSG8tifIT70VAZPZfCUn6csfXLyM81m/eFsFs3X0UIeymghwknPJz3/'
        'H3quj53pujx26pvtNr4/wKcWPqLPI1Qj1uVAFWGBWN+OUCOyASqyQIJIDg9+07/LL7ncNECQB0j6TgSPhg7gUQGjxPpuBJ/IBagv'
        'BRJkKc2GhRQzT9pyfVv0SjIMWkkzz9++3ts2m8n+ix2cN/GZFpRxxC1ULNEjhwogSSgSV8iWxHr2CIkC6XvCgm/FPZGVOL4MicpQ'
        'HvszxEeOyuCoDI7yc5SlS05uptmsO5zNov2iwAolBQgnPf/jPW/orTD1jrbCvaXWGzPbDvgh8EWerCl/xN7TMZwrS21SqitXkZZJ'
        'yzi4oV2Xa4PrDYPcMEkdUocCKmWpS0pF5yrSWdJZHXgY798rWL8C0K+1cWtxd/9VGz+Br9T++HiOsw9zVMVfMZDf4AtKA2a/'
    ),
    'mus_meet_me_halfway.mid': (
        'eNrtfFtzW1eW3sYBQIIUxTvAAwLEhSAJEocgDmAOYBgGCF5AXARDzWjidhLPmOqxZ+Se7pbKlnztLgmgJ1V8gyB1qplfkLd05vKQ'
        't8wkqUoqVV3zE5I85G84a+21Di6HOKRsye4bnjbX2Wuv215r7W9vqPTWn957XwgxJmzCJU7f+tOP/hqolPja7v3pBx88fO+nH7x3'
        '7+5P/vLTu5+Hygf7oX+xf1S9Lb4+sY9P/l/x9TsOh6K6zv75x18nBK10B2Gl687dT0P1D+6+L/7LD8Sv74vfjLWDVaEd60+CQmji'
        '3XawLLS6+kQTalDstINvCa3C1BbMjWtvbQHnuCaUdrxuDx/Hn8SFPSzea4ePlfgtFShPGNaFjwVRalgk2vFjJVzaAUoJC9EO7InY'
        'gf4kIERM/EU7cKjEquqTmPAERLwdOBKxW0ipSMXesgWOE0DZgLkdrAhtn+38sB2s9SzT2lpZCR57gFKCYr8dLNm0UgI4bRqsS1Qc'
        'kcr2k4RwRMC/yKE9ARoSwh0ByyIlW+JW4klE2BIiCXO2xDFSIgHr1o9FEuKyLkRS3G0ny8o66FsXC+3InoI87cSx7UlSbLfXDxXk'
        'aif3bSB3p52S3+3tjQPtyQZ8392zPUkBvXkQe7IJdPpYebILAYzV40/Swh4TH+CnWMUDlBITx5I6ZKrUjh2K9N42REG0MxXlSQZG'
        '7ZYCswlN3GtrNVumtASe2zLguVYXmVsYFZGBlRt7tlQxIW3IlNAGpa3tx0GCHXc6ciASxxgJNSL0dqQoErUetQeU3o3EkUgWORKn'
        'Mi6HTOngvEju96i93hzsdFbEjnk3T+W+g21y3yvtQEnESjyntwPHIlZhCnb6SGi3eKdP28F92Gmm9HbwsJefQJV6nKIdORaJKlt9'
        '2o4cicRbTOlmaq9HgX8VkbzV868kkrWeR2WRrPQo8P2o5x94dMyZfEq5yxR5NJyiTC73/Ls14FEdPBqgoDok569VYJWr2tpbyFGB'
        'QDFNKyAcyKu2WR4oIjoMVmLpxctYk5V2uMJ0VdZoO3ykAq1CSTNdIzpQkja3qUIrPZp2tR2oMl1muoz7q/bsqrGdFaarbNcx08dM'
        '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'
        'sKFfryPvD4X2dUL8f4W05Ic='
    ),
    'mus_one_more_time.mid': (
        'eNrtXU1vG2UQHnAo38hIICxKxKKiEK/l9kUqiSwr1cap1di4ojQR4tY11FIicBY5ieTcunZqKYhDG1OJov4CDih8HZA48HngCn+D'
        '/2DG3nc3ayfu2u5GsXef0+y8M/PMO/PMu5u10/Tq6tpNIjpDj9HTpF9drXzCmqBW5BVjo3SjbFRKN7bWyyXlSmZRub54Ofcetd6P'
        'PGmepdaHU1OPx56q/0etC2TFvfwaxz27srOxtaZkKsXNTfr1Gh0YRHfSgvJCv5UmyrOWF7TCGl+ujGwTd1KCcsKM3koR5YKUomC5'
        'FvzVhK0FtW1gBsyAGTADZpBiklI00CncT8DMcMyYD8ANUuBejzsK7vWYYcwwZnjMmXE+Iz37NbUiU++WdjbpN0HfGUR3E4KWhDAT'
        'REs9mu6TTRWUYU0lyviGOb75koKyrCWJsmxLJiibONTG1hYujjATmAnMBGYCM4GZQD7kO7l8DX9AzWjgeuhREm6FYB7Mh4v5Uymp'
        'Tl1GVjtWujsrSGurs0SaTTerkm/EIhax3rENws0Qj0EwP3BJeGPAgQHzYWPe+YbupS+oFXn++trO1lpZubK9vlWs0O/T9L1BtJ+I'
        'ixo3YD8dj9XSLPMs86QPuW5G9xfiZrS2MCGISfbglvFCrKNrLLVTWxeT1TzQATpAB+gIKR1A9AOxgdOM0ww6+tMx/6aozTtS76Nz'
        'KbYhxTLV19FbHy7e98Tmro5bKxDxQMEDBVOIKcQUBpIO5zPJF/+lVuSZD4yPi58qhVLxJv2xSD8Y9K3WzC6LepZEM8Myw/ISy0tE'
        'zTTLNN3TPRy+0qWBmkssl1yOlgM5AbbUWGou2Q2oy3U7kejR6QiurXf7mZ9hY2O2sdo1j2E6CO0wDboR4dFB3mh6OdYJXGC54ACa'
        'UelRp2aKL1JsmWM554QKuW5qjiHFEKmOQxty2c4RdRBseZEdLlKMA2McyJs4HoEHwI7ozulGEoxk702XfhzojFB3ow4bI8vTPRxc'
        'u+9t+cMp29X6IDsOUQ9yvPemufrhbpxw02sh9Ju7wdZdGbsdhcOMVQO3q7s9zpHQjozwcFtgKq0UfHH8YeAU9qmTm9GOHIfRuDQ1'
        'DyZqypCNtPX6ozJTpxEzm17z+aizMmyTUQgKQSEnVkjvswZMoJBAFbKLGUchKKTPj5nORzuvtv8gxBn5e2Z/TtOPBokv89Ox3TyR'
        'lP7rOZY51i15VA97/gLLAuuW9F9H/8H/Q+tX5H4VuX+f9Zwi8ykyf48e9vwFRfKlSP581tH/Mecf5x/5kT+k+RsgAA9g8B9e/s0H'
        'YAD5kR+PYNyC8QjGAQQBOIDgP1z8H35D9cI/7T9Znmn/f45/vUE/GUT3EmX9doIES8FyEN2SybIZvZ0cCwCVHdShpOjIMSphDHpQ'
        'lRmqMoOnLndQHRsAtSprG1jKHlQD1APMAQCogfOMe1pgnm0+ANSps6K2L9rtmW1fzHZ8+AI+4fDBbRGPN/AYpB44b7bPKe1/Vrta'
        'LH9kbFfWN0r0N9HPBpmf0/25t2J7c8RS6SMDbTd3w94B2GGHHfaw2n9Bg2CHPbz2b8LegIPD94R3Xuf3hCcuV7bLm/IVge6fmxd7'
        '51iqb8f2VJec4fWZY9ZPy3/Ydez/dPc/6euYH+w/3Os0Y5lmEIUoRI0cRXHLGmftPK+ed8lOrO0w09cHCEAIHMLEPx/BIxCAAAQg'
        'AAEIAyE00AggAAEIQAACEIAwEoJqOaidVeGKVJ3IHhsiEBGKiPZvvE7yR+nB+5IKFaEiVISKBlvHByRAAAIQgAAEIOCbBSAAAQhA'
        'AAIQgHCiCK0L9D94WD2N'
    ),
    'mus_around_the_world.mid': (
        'eNrtlk9LAkEYh19TK8NDx6XThrourrqDeBY0wTpIVAqd1l3YQKjcWJXoVB29efVbdA06dOjSZ+qw/ZzRTcjokhAyp2f+PbO/eQeG'
        'bba6LhFtUoRiZDdb/iV6JQqie47vDXtuZ9C96Nx6/pWrNmpV9bRaPzqm4CS6Nf6g4DwW21C2XygwSZjxBsydmtPvq2d3vUGXXvfp'
        'ySMa623KWewhN22COqiBGpgBM6AJmmABLIAGaHCmOfV2knvrs49gwbL5+HeK9aalcD8NpskGbZAWyDg1zGs8h4IcNmjzPF9sCf6S'
        'e77fuuaeeyWwBJbB8pJxA3mMpX1l5incm3+XgSw877SvLPSVMJc45zRfUtSrnZzVS8z/t5y6JepuIKexpK6ynn9XT4xjKHxOI/d4'
        'ThOHTs9VD66cG3onevbInmQzbJSlx13ZWGGDhdeQeMM1xOv+8Lo/uwKapAzKGWyUIsJbNMlXqFhhozxRUcxp4bT2wwppS1va0pa2'
        'tKUtbWmv0sa/3CfaX162'
    ),
    'mus_where_is_the_love.mid': (
        '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'
        'qxLFLj3Bf3r+XzWrB2g='
    ),
}

def die(message):
    raise SystemExit("ERRO: " + message)


def backup(path):
    target = path.with_name(path.name + ".before_pop_batch_360_where_is_love")
    if not target.exists():
        shutil.copyfile(path, target)
        target.touch()
        print("[BACKUP]", target)


def write_if_changed(path, text):
    current = path.read_text(encoding="utf-8")
    if current == text:
        print("[OK] sem mudanca:", path)
        return
    backup(path)
    path.write_text(text, encoding="utf-8")
    path.touch()
    print("[PATCH]", path)


def parse_defines(text):
    return {m.group(1): m.group(2) for m in re.finditer(r"^\s*#define\s+([A-Za-z0-9_]+)\s+([^\s/]+)", text, re.M)}


def resolve_value(token, defines, seen=None):
    seen = set() if seen is None else seen
    token = token.strip()
    try:
        return int(token, 0)
    except ValueError:
        pass
    if token in seen or token not in defines:
        return None
    seen.add(token)
    return resolve_value(defines[token], defines, seen)


def patch_songs_h(text):
    end_match = re.search(r"^\s*#define\s+END_MUS\s+([^\s/]+).*$", text, re.M)
    if not end_match:
        die("nao achei #define END_MUS em include/constants/songs.h")
    old_end_token = end_match.group(1)
    defines = parse_defines(text)
    old_end_value = resolve_value(old_end_token, defines)
    if old_end_value is None:
        values = []
        for name, value in defines.items():
            if name.startswith("MUS_"):
                value = resolve_value(value, defines)
                if value is not None and value < 0x7FFF:
                    values.append(value)
        if not values:
            die("nao consegui resolver o ID atual de END_MUS")
        old_end_value = max(values)

    next_id = old_end_value + 1
    new_lines = []
    assigned = {}
    for macro, slug, title, volume in SONGS:
        existing = resolve_value(macro, defines)
        if existing is None:
            assigned[macro] = next_id
            new_lines.append(f"#define {macro:<38} {next_id}\n")
            defines[macro] = str(next_id)
            next_id += 1
        else:
            assigned[macro] = existing

    if new_lines:
        text = text[:end_match.start()] + "".join(new_lines) + text[end_match.start():]
        newest = max(SONGS, key=lambda item: assigned[item[0]])[0]
        if assigned[newest] > old_end_value:
            text = re.sub(
                r"^\s*#define\s+END_MUS\s+[^\n]+$",
                f"#define END_MUS {newest}",
                text,
                count=1,
                flags=re.M,
            )
    return text, old_end_token, assigned


def patch_song_table(text, old_end_token):
    missing = [
        slug for macro, slug, title, volume in SONGS
        if not re.search(rf"^\s*song\s+mus_{re.escape(slug)}\s*,", text, re.M)
    ]
    if not missing:
        return text

    old_song = old_end_token.lower()
    match = re.search(rf"^(\s*song\s+{re.escape(old_song)})(\s*,[^\n]+)$", text, re.M)
    if match:
        suffix = match.group(2)
        insert_at = match.end()
    else:
        candidates = list(re.finditer(r"^\s*song\s+mus_[a-z0-9_]+\s*,[^\n]+$", text, re.M))
        if not candidates:
            die("nao achei linhas song mus_... em sound/song_table.inc")
        match = candidates[-1]
        suffix_match = re.search(r"(\s*,[^\n]+)$", match.group(0))
        suffix = suffix_match.group(1) if suffix_match else ", 0, 0"
        insert_at = match.end()
        print("[AVISO] END_MUS nao localizado na tabela; usando a ultima musica")

    additions = "".join(f"\n\tsong mus_{slug}{suffix}" for slug in missing)
    return text[:insert_at] + additions + text[insert_at:]


def patch_midi_cfg(text):
    if text and not text.endswith("\n"):
        text += "\n"
    for macro, slug, title, volume in SONGS:
        filename = f"mus_{slug}.mid"
        pattern = rf"^\s*{re.escape(filename)}\s*:[^\n]*$"
        replacement = f"{filename + ':':<38} -E -R50 -G_littleroot_test -V{volume:03d}"
        if re.search(pattern, text, re.M):
            text = re.sub(pattern, replacement, text, count=1, flags=re.M)
        else:
            text += replacement + "\n"
    return text


def patch_macro_list(text):
    start = text.find("#define RADIO_SOUND_LIST_BGM")
    end = text.find("#define X(songId)", start)
    if start < 0 or end < 0:
        die("RADIO_SOUND_LIST_BGM nao encontrado em src/radio.c")
    block = text[start:end]
    lines = block.splitlines()
    missing = [
        macro for macro, slug, title, volume in SONGS
        if not any(f"X({macro})" in line for line in lines)
    ]
    if not missing:
        return text

    anchor = next(
        (i for i, line in enumerate(lines) if "X(MUS_AINT_NO_REST_FOR_THE_WICKED)" in line),
        None,
    )
    x_indexes = [i for i, line in enumerate(lines) if re.search(r"\bX\(MUS_[A-Z0-9_]+\)", line)]
    if not x_indexes:
        die("lista X(MUS_...) vazia")
    position = anchor + 1 if anchor is not None else x_indexes[-1] + 1
    for offset, macro in enumerate(missing):
        lines.insert(position + offset, f"    X({macro})")

    x_indexes = [i for i, line in enumerate(lines) if re.search(r"\bX\(MUS_[A-Z0-9_]+\)", line)]
    for number, index in enumerate(x_indexes):
        base = re.sub(r"\s*\\\s*$", "", lines[index]).rstrip()
        lines[index] = base + (" \\" if number < len(x_indexes) - 1 else "")

    new_block = "\n".join(lines)
    if block.endswith("\n"):
        new_block += "\n"
    return text[:start] + new_block + text[end:]


def add_station_entries(text, array_name, macros, anchor_text=None, comment=None):
    pattern = rf"(static const u16 {re.escape(array_name)}\[\] = \{{)(.*?)(\n\}};)"
    match = re.search(pattern, text, re.S)
    if not match:
        die(f"nao achei {array_name}[]")
    body = match.group(2)
    missing = [macro for macro in macros if not re.search(rf"\b{re.escape(macro)}\s*,", body)]
    if not missing:
        return text

    addition = "\n"
    if comment:
        addition += f"    // {comment}\n"
    addition += "".join(f"    {macro},\n" for macro in missing)

    if anchor_text and anchor_text in body:
        body = body.replace(anchor_text, addition + "\n" + anchor_text, 1)
    else:
        position = body.rfind("    STATION_END")
        if position < 0:
            die(f"STATION_END nao encontrado em {array_name}")
        body = body[:position] + addition + body[position:]
    return text[:match.start(2)] + body + text[match.end(2):]


def patch_radio(text):
    text = patch_macro_list(text)
    macros = [item[0] for item in SONGS]
    text = add_station_entries(
        text,
        "sStation_OtherWorld",
        macros,
        "    // Radiohead",
        "New pop / electronic batch",
    )
    text = add_station_entries(
        text,
        "sStation_Amaterasu",
        macros,
        None,
        "Pop / dance additions",
    )

    if "Radio_GetPopDisplayName" not in text:
        marker = "// ---------------------------------------------------------------------------\n// Indie Rock Radio display names"
        if marker not in text:
            die("bloco de nomes da Indie Rock nao encontrado")
        block = """// ---------------------------------------------------------------------------
// Pop / electronic display names - song followed by the artist.
// These labels also appear in Search, Favorites and Playlists.
// ---------------------------------------------------------------------------
static const u8 sPopName_360[] = _("360 (CHARLI XCX)");
static const u8 sPopName_MeetMeHalfway[] = _("MEET ME HALFWAY (BLACK EYED PEAS)");
static const u8 sPopName_OneMoreTime[] = _("ONE MORE TIME (DAFT PUNK)");
static const u8 sPopName_AroundTheWorld[] = _("AROUND THE WORLD (DAFT PUNK)");
static const u8 sPopName_WhereIsTheLove[] = _("WHERE IS THE LOVE (BLACK EYED PEAS)");

static const u8 *Radio_GetPopDisplayName(u16 songId)
{
    switch (songId)
    {
    case MUS_360:
        return sPopName_360;
    case MUS_MEET_ME_HALFWAY:
        return sPopName_MeetMeHalfway;
    case MUS_ONE_MORE_TIME:
        return sPopName_OneMoreTime;
    case MUS_AROUND_THE_WORLD:
        return sPopName_AroundTheWorld;
    case MUS_WHERE_IS_THE_LOVE:
        return sPopName_WhereIsTheLove;
    default:
        return NULL;
    }
}

"""
        text = text.replace(marker, block + marker, 1)

    if "name = Radio_GetPopDisplayName(songId);" not in text:
        needle = "static const u8 *Radio_GetSpecialDisplayName(u16 songId)\n{\n    const u8 *name;\n\n"
        if needle not in text:
            die("Radio_GetSpecialDisplayName mudou")
        insertion = (
            needle
            + "    name = Radio_GetPopDisplayName(songId);\n"
            + "    if (name != NULL)\n"
            + "        return name;\n\n"
        )
        text = text.replace(needle, insertion, 1)

    condition = """    if (sRadioStation == STATION_ANIME
        || sRadioStation == STATION_INDIE_ROCK"""
    expanded = """    if (sRadioStation == STATION_ANIME
        || sRadioStation == STATION_OTHER_WORLD
        || sRadioStation == STATION_AMATERASU
        || sRadioStation == STATION_INDIE_ROCK"""
    if condition in text:
        text = text.replace(condition, expanded, 1)
    elif "|| sRadioStation == STATION_OTHER_WORLD" not in text:
        die("condicao de nomes especiais mudou")

    text = text.replace(
        "// Anime / Indie / Games tracks get their friendly radio labels.",
        "// Anime / Pop / Indie / Games tracks get their friendly radio labels.",
        1,
    )
    return text


for path in (MIDI_CFG, SONGS_H, SONG_TABLE, RADIO_C):
    if not path.exists():
        die(f"nao achei {path}. Rode na raiz do pokeemerald-expansion")

MID_DST.mkdir(parents=True, exist_ok=True)
for macro, slug, title, volume in SONGS:
    filename = f"mus_{slug}.mid"
    try:
        data = zlib.decompress(base64.b64decode(EMBEDDED_MIDIS[filename]))
    except Exception as exc:
        die(f"falha ao extrair {filename}: {exc}")
    destination = MID_DST / filename
    if destination.exists() and destination.read_bytes() == data:
        print("[OK] MIDI V2 ja instalado:", destination)
    else:
        if destination.exists():
            midi_backup = destination.with_name(destination.name + ".before_bass_fix_v2")
            if not midi_backup.exists():
                shutil.copyfile(destination, midi_backup)
                midi_backup.touch()
                print("[BACKUP]", midi_backup)
        destination.write_bytes(data)
        destination.touch()
        print("[WRITE V2]", destination)

songs_patched, old_end_token, assigned = patch_songs_h(SONGS_H.read_text(encoding="utf-8"))
write_if_changed(SONGS_H, songs_patched)
write_if_changed(SONG_TABLE, patch_song_table(SONG_TABLE.read_text(encoding="utf-8"), old_end_token))
write_if_changed(MIDI_CFG, patch_midi_cfg(MIDI_CFG.read_text(encoding="utf-8")))
write_if_changed(RADIO_C, patch_radio(RADIO_C.read_text(encoding="utf-8")))

for macro, slug, title, volume in SONGS:
    generated_s = MID_DST / f"mus_{slug}.s"
    if generated_s.exists():
        generated_s.unlink()
        print("[REMOVE]", generated_s)
    build_root = ROOT / "build"
    if build_root.exists():
        for obj in build_root.glob(f"**/sound/songs/midi/mus_{slug}.o"):
            obj.unlink()
            print("[REMOVE]", obj)

print("\n[OK] POP BASS FIX V2 instalado")
print("Estacoes preservadas: OTHER-WORLD + AMATERASU")
print("Voicegroup: _littleroot_test")
print("IDs usados:")
for macro, slug, title, volume in SONGS:
    print(f"  {assigned[macro]:>4}  {macro:<28} {title}")
print("\nAgora rode:\n  make -j9")
