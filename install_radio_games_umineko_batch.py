#!/usr/bin/env python3
"""Install the six Umineko tracks and add the GAMES radio station.

Run this script from the root of pokeemerald-expansion.
It is intentionally idempotent and creates backups before changing text files.
"""

from pathlib import Path
import re
import shutil
import sys

ROOT = Path.cwd()
PKG = ROOT / "radio_games_umineko_batch"
MID_SRC = PKG / "midis"
MID_DST = ROOT / "sound/songs/midi"
MIDI_CFG = MID_DST / "midi.cfg"
SONGS_H = ROOT / "include/constants/songs.h"
SONG_TABLE = ROOT / "sound/song_table.inc"
RADIO_C = ROOT / "src/radio.c"

SONGS = [
    ("MUS_UMINEKO_HOPE", "umineko_hope", "HOPE (UMINEKO)", 92),
    ("MUS_UMINEKO_600_MILLION", "umineko_600_million", "600 MILLION IN C# MINOR (UMINEKO)", 90),
    ("MUS_UMINEKO_WINGLESS", "umineko_wingless", "WINGLESS (UMINEKO)", 90),
    ("MUS_UMINEKO_WORLDEND", "umineko_worldend", "WORLDEND (UMINEKO)", 90),
    ("MUS_UMINEKO_FAR", "umineko_far", "FAR (UMINEKO)", 90),
    ("MUS_UMINEKO_WORLDEND_DOMINATOR", "umineko_worldend_dominator", "WORLDEND DOMINATOR (UMINEKO)", 88),
]


def die(message):
    raise SystemExit("ERRO: " + message)


def backup(path):
    target = path.with_name(path.name + ".before_radio_games_umineko")
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
    result = {}
    for match in re.finditer(r"^\s*#define\s+([A-Za-z0-9_]+)\s+([^\s/]+)", text, re.M):
        result[match.group(1)] = match.group(2)
    return result


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
        numeric_music = []
        for name, value in defines.items():
            if name.startswith("MUS_") and name not in ("MUS_NONE", "MUS_ROUTE118"):
                resolved = resolve_value(value, defines)
                if resolved is not None and resolved < 0x7FFF:
                    numeric_music.append(resolved)
        if not numeric_music:
            die("nao consegui resolver o ID atual de END_MUS")
        old_end_value = max(numeric_music)

    new_lines = []
    next_id = old_end_value + 1
    assigned = {}
    for macro, slug, title, volume in SONGS:
        existing = resolve_value(macro, defines)
        if existing is not None:
            assigned[macro] = existing
            next_id = max(next_id, existing + 1)
        else:
            assigned[macro] = next_id
            new_lines.append(f"#define {macro:<38} {next_id}\n")
            defines[macro] = str(next_id)
            next_id += 1

    if new_lines:
        insert_at = end_match.start()
        text = text[:insert_at] + "".join(new_lines) + text[insert_at:]

    text = re.sub(
        r"^\s*#define\s+END_MUS\s+[^\n]+$",
        f"#define END_MUS {SONGS[-1][0]}",
        text,
        count=1,
        flags=re.M,
    )
    return text, old_end_token, assigned


def patch_song_table(text, old_end_token):
    missing = [slug for macro, slug, title, volume in SONGS if not re.search(rf"^\s*song\s+mus_{re.escape(slug)}\s*,", text, re.M)]
    if not missing:
        return text

    old_song = old_end_token.lower()
    match = re.search(rf"^(\s*song\s+{re.escape(old_song)})(\s*,[^\n]+)$", text, re.M)
    if match:
        suffix = match.group(2)
        insert_at = match.end()
    else:
        # Fallback: insert after the last music line before phonemes / final align.
        candidates = list(re.finditer(r"^\s*song\s+mus_[a-z0-9_]+\s*,[^\n]+$", text, re.M))
        if not candidates:
            die("nao achei nenhuma linha 'song mus_...' em sound/song_table.inc")
        match = candidates[-1]
        suffix_match = re.search(r"(\s*,[^\n]+)$", match.group(0))
        suffix = suffix_match.group(1) if suffix_match else ", 0, 0"
        insert_at = match.end()
        print("[AVISO] END_MUS nao foi localizado na tabela; usando a ultima linha mus_ como anchor")

    additions = ""
    for macro, slug, title, volume in SONGS:
        line = f"\n\tsong mus_{slug}{suffix}"
        if not re.search(rf"^\s*song\s+mus_{re.escape(slug)}\s*,", text, re.M):
            additions += line
    return text[:insert_at] + additions + text[insert_at:]


def patch_midi_cfg(text):
    if text and not text.endswith("\n"):
        text += "\n"
    for macro, slug, title, volume in SONGS:
        filename = f"mus_{slug}.mid"
        if re.search(rf"^\s*{re.escape(filename)}\s*:", text, re.M):
            continue
        text += f"{filename + ':':<38} -E -R50 -G_littleroot_test -V{volume:03d}\n"
    return text


def add_macro_entries(text):
    start = text.find("#define RADIO_SOUND_LIST_BGM")
    end = text.find("#define X(songId)", start)
    if start < 0 or end < 0:
        die("RADIO_SOUND_LIST_BGM nao encontrado em src/radio.c")
    block = text[start:end]
    missing = [macro for macro, slug, title, volume in SONGS if f"X({macro})" not in block]
    if not missing:
        return text
    lines = block.splitlines()
    x_indexes = [i for i, line in enumerate(lines) if re.search(r"\bX\(MUS_[A-Z0-9_]+\)", line)]
    if not x_indexes:
        die("lista X(MUS_...) vazia em src/radio.c")
    last = x_indexes[-1]
    lines[last] = lines[last].rstrip()
    if not lines[last].endswith("\\"):
        lines[last] += " \\"
    for index, macro in enumerate(missing):
        suffix = " \\" if index < len(missing) - 1 else ""
        lines.insert(last + 1 + index, f"    X({macro}){suffix}")
    new_block = "\n".join(lines)
    if block.endswith("\n"):
        new_block += "\n"
    return text[:start] + new_block + text[end:]


def patch_radio(text):
    text = add_macro_entries(text)

    if "STATION_GAMES" not in text:
        anchor = "    STATION_PLAYLIST,\n    STATION_COUNT,"
        if anchor not in text:
            die("enum RadioStation mudou; nao achei STATION_PLAYLIST seguido de STATION_COUNT")
        text = text.replace(anchor, "    STATION_PLAYLIST,\n    STATION_GAMES,\n    STATION_COUNT,", 1)

    if "static const u16 sStation_Games[]" not in text:
        anchor = "static const u16 *const sStationTracks[STATION_COUNT] = {"
        if anchor not in text:
            die("nao achei sStationTracks")
        station = "// ---------------------------------------------------------------------------\n"
        station += "// GAMES RADIO\n"
        station += "// Video-game / visual-novel soundtracks. Friendly names include the game.\n"
        station += "// ---------------------------------------------------------------------------\n"
        station += "static const u16 sStation_Games[] = {\n"
        station += "".join(f"    {macro},\n" for macro, slug, title, volume in SONGS)
        station += "    STATION_END\n};\n\n"
        text = text.replace(anchor, station + anchor, 1)

    tracks_start = text.find("static const u16 *const sStationTracks")
    tracks_end = text.find("// Station display names", tracks_start)
    if "[STATION_GAMES]" not in text[tracks_start:tracks_end]:
        anchor = "    [STATION_PLAYLIST]    = NULL, // dynamic EWRAM list\n"
        if anchor not in text:
            die("entrada STATION_PLAYLIST em sStationTracks nao encontrada")
        text = text.replace(anchor, anchor + "    [STATION_GAMES]       = sStation_Games,\n", 1)

    if "sStationName_Games" not in text:
        anchor = 'static const u8 sStationName_Playlist3[]   = _("PLAYLIST 3");\n'
        if anchor not in text:
            die("nomes das playlists nao encontrados")
        text = text.replace(anchor, anchor + 'static const u8 sStationName_Games[]       = _("GAMES");\n', 1)

    names_start = text.find("static const u8 *const sStationNames")
    names_end = text.find("// Full labels", names_start)
    if "[STATION_GAMES]" not in text[names_start:names_end]:
        anchor = "    [STATION_PLAYLIST]    = sStationName_Playlist1,\n"
        text = text.replace(anchor, anchor + "    [STATION_GAMES]       = sStationName_Games,\n", 1)

    if "sStationNowPlaying_Games" not in text:
        anchor = 'static const u8 sStationNowPlaying_Playlist3[]   = _("NOW PLAYING PLAYLIST 3");\n'
        if anchor not in text:
            die("NOW PLAYING das playlists nao encontrado")
        text = text.replace(anchor, anchor + 'static const u8 sStationNowPlaying_Games[]       = _("NOW PLAYING GAMES RADIO");\n', 1)

    now_start = text.find("static const u8 *const sStationNowPlayingNames")
    now_end = text.find("static const u8 *Radio_GetStationDisplayName", now_start)
    if "[STATION_GAMES]" not in text[now_start:now_end]:
        anchor = "    [STATION_PLAYLIST]    = sStationNowPlaying_Playlist1,\n"
        text = text.replace(anchor, anchor + "    [STATION_GAMES]       = sStationNowPlaying_Games,\n", 1)

    if "Radio_GetGamesDisplayName" not in text:
        anchor = "static const u8 *Radio_GetSpecialDisplayName(u16 songId)\n"
        if anchor not in text:
            die("Radio_GetSpecialDisplayName nao encontrado")
        block = "// ---------------------------------------------------------------------------\n"
        block += "// Games Radio display names - OST title followed by the game/source.\n"
        block += "// ---------------------------------------------------------------------------\n"
        for macro, slug, title, volume in SONGS:
            var = "sGamesName_" + "".join(part.title() for part in slug.split("_"))
            block += f'static const u8 {var}[] = _("{title}");\n'
        block += "\nstatic const u8 *Radio_GetGamesDisplayName(u16 songId)\n{\n    switch (songId)\n    {\n"
        for macro, slug, title, volume in SONGS:
            var = "sGamesName_" + "".join(part.title() for part in slug.split("_"))
            block += f"    case {macro}:\n        return {var};\n"
        block += "    default:\n        return NULL;\n    }\n}\n\n"
        text = text.replace(anchor, block + anchor, 1)

    old = """static const u8 *Radio_GetSpecialDisplayName(u16 songId)
{
    const u8 *name;

    name = Radio_GetIndieDisplayName(songId);
    if (name != NULL)
        return name;

    return Radio_GetAnimeDisplayName(songId);
}"""
    new = """static const u8 *Radio_GetSpecialDisplayName(u16 songId)
{
    const u8 *name;

    name = Radio_GetGamesDisplayName(songId);
    if (name != NULL)
        return name;

    name = Radio_GetIndieDisplayName(songId);
    if (name != NULL)
        return name;

    return Radio_GetAnimeDisplayName(songId);
}"""
    if old in text:
        text = text.replace(old, new, 1)
    elif "name = Radio_GetGamesDisplayName(songId);" not in text:
        die("corpo de Radio_GetSpecialDisplayName mudou")

    anchor = """    if (sRadioStation == STATION_ANIME
        || sRadioStation == STATION_INDIE_ROCK
        || sRadioStation == STATION_FAVORITES"""
    replacement = """    if (sRadioStation == STATION_ANIME
        || sRadioStation == STATION_INDIE_ROCK
        || sRadioStation == STATION_GAMES
        || sRadioStation == STATION_FAVORITES"""
    if anchor in text:
        text = text.replace(anchor, replacement, 1)
    elif "|| sRadioStation == STATION_GAMES" not in text:
        die("condicao dos nomes especiais mudou")

    text = text.replace(
        "// Anime / Indie tracks get their friendly radio labels.",
        "// Anime / Indie / Games tracks get their friendly radio labels.",
        1,
    )
    return text


required = [PKG, MID_SRC, MIDI_CFG, SONGS_H, SONG_TABLE, RADIO_C]
for path in required:
    if not path.exists():
        die(f"nao achei {path}. Extraia o ZIP na raiz do projeto e rode dali.")

for macro, slug, title, volume in SONGS:
    source = MID_SRC / f"mus_{slug}.mid"
    if not source.exists():
        die(f"MIDI ausente no pacote: {source}")

MID_DST.mkdir(parents=True, exist_ok=True)
for macro, slug, title, volume in SONGS:
    source = MID_SRC / f"mus_{slug}.mid"
    destination = MID_DST / source.name
    shutil.copyfile(source, destination)
    destination.touch()
    print("[COPY]", source, "->", destination)

songs_original = SONGS_H.read_text(encoding="utf-8")
songs_patched, old_end_token, assigned = patch_songs_h(songs_original)
write_if_changed(SONGS_H, songs_patched)

song_table_patched = patch_song_table(SONG_TABLE.read_text(encoding="utf-8"), old_end_token)
write_if_changed(SONG_TABLE, song_table_patched)

midi_cfg_patched = patch_midi_cfg(MIDI_CFG.read_text(encoding="utf-8"))
write_if_changed(MIDI_CFG, midi_cfg_patched)

radio_patched = patch_radio(RADIO_C.read_text(encoding="utf-8"))
write_if_changed(RADIO_C, radio_patched)

# Force regeneration of only this batch.
for macro, slug, title, volume in SONGS:
    generated_s = MID_DST / f"mus_{slug}.s"
    if generated_s.exists():
        generated_s.unlink()
        print("[REMOVE]", generated_s)
    for build_root in (ROOT / "build",):
        if build_root.exists():
            for obj in build_root.glob(f"**/sound/songs/midi/mus_{slug}.o"):
                obj.unlink()
                print("[REMOVE]", obj)

print()
print("[OK] RADIO GAMES / UMINEKO instalado")
print("Estacao nova: GAMES")
print("Voicegroup reutilizado: _littleroot_test")
print("IDs usados:")
for macro, slug, title, volume in SONGS:
    value = assigned.get(macro)
    print(f"  {value:>4}  {macro:<38} {title}")
print()
print("Agora rode:")
print("  make -j9")
