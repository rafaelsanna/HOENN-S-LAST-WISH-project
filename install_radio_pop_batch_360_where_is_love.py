#!/usr/bin/env python3
"""Instala cinco faixas pop/dance e atualiza o Pokemon Radio.

Autossuficiente: os MIDIs GBA-ready estao embutidos neste arquivo.
Ordem: 360, Meet Me Halfway, One More Time, Around the World, Where Is the Love.
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
    ('MUS_360', '360', '360 (CHARLI XCX)', 92),
    ('MUS_MEET_ME_HALFWAY', 'meet_me_halfway', 'MEET ME HALFWAY (BLACK EYED PEAS)', 90),
    ('MUS_ONE_MORE_TIME', 'one_more_time', 'ONE MORE TIME (DAFT PUNK)', 91),
    ('MUS_AROUND_THE_WORLD', 'around_the_world', 'AROUND THE WORLD (DAFT PUNK)', 92),
    ('MUS_WHERE_IS_THE_LOVE', 'where_is_the_love', 'WHERE IS THE LOVE (BLACK EYED PEAS)', 90),
]

EMBEDDED_MIDIS = {
    'mus_360.mid': (
        'eNrtls9r1EAUx79t1l+IeJ1LaYS1zTDM7oC7hpBcWroYocVVe/CYYoVCowvdFvUiu+tJ8NA0J4+Cf4A/DuLNHyf/qvVlJhuS1oOKi6J7CG8+b9'
        '6veZkZZmNzZxvAaczRF21s7u0SXcbYunDlqrKvra7Yt1bWrt/A+KZ15qWN8Z1abZ6dfYVxE8a4NiTj2vq9rW187OJ1DzhsSfhSDVqAbygwFJyg'
        'dkZs0C6RqlAxF0h0ZDSgYQdqehlik6E+9TVEh67J4JoMrvFzjaVHTp6WWutNtDpamRDKMFeECGedn3X+f+t8cRHNP8kuotWtfh+fLuFND8+ROD'
        '5aPhs6QAthhVjCfbSJOEClVkglCz440QLA8ei3RBk6xxx/NExQCRMnwodLJACXiikTS6QPj0gC1J4KqWTRhyBaBMSx0qq1zJr2K00rdqF1kXbh'
        '+duPH+zv2N344O4uPnfxljajdeRwNLkakUMTyEgZUieIZ8RGvESqQsWc4vB4NFK63OlliE2G+tTXEB0Jk0GYDML4CWMpyUlqqbVyotXRyoSAh7'
        'kiQDjr/B/qfKc4FnPv6VicW+89tPXRwBeFd9kNnToN9tRBmEuWcpJUXS5VWm8gG9b1pfJT1kOnMPu+eVAxj1NBQ0HBjWSpJEkryaVKlxrIppb0'
        'ZVDxnWT415ZT/D7Qg986tbZ3cL+Pr8AH+nXRi+UGe7ZMdf0Vg+wd8A2OnHGj'
    ),
    'mus_meet_me_halfway.mid': (
        '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'
    ),
    'mus_one_more_time.mid': (
        'eNrtnU1vE1cUht82Kf2u3FUtFYIRVQSmwKRyjWwr08EhTaFACSFRVsFpiRTUBldJWNAVY4dIdAVJkYrEL+iiol+LSiz6ueiuav9GV/0D7vXMeG'
        'KHxHZCKP54Vtf3nnvee95z3zN3ZmLDmQuzlyTt0lN6XrkzF+Y/Nj1LpZ7X8ldmLs7l52cuLl6em4mNZI/Hzh8/cfIDlUZ7nnVfV2myt/fp6HPF'
        'f1Q6Kt8v9sD4vTh27cribCw7P72woJ/O6X5eupWxZdsasTVh565nJFsakSaMZcwfG/N7OzvPupWyNWhr2Na47Uaup6RBaVgaJ6TmQzImx9akD2'
        'EsjjTZahar1sK2o0SUiBJRIkpEiSgRJRISIbVHSMukifOI84iQUOIaIfceG09IhMS9EWniROLeiJC4hnAN4RqCElHijigx/A7DW/+q1NP7/sy1'
        'Bf1s6Zu8dPtQWsfSyqQ1lLbcQ9IxyaAO1bHkWsAnnlYyrVRaWWOJS0nJEM62RGzwqcfnsDc8mNawsRz2hn2d3j6cUCqhwYSGE+st+NTxoRbgQ2'
        '1T29QCfKhtaptagA+1TW1TC/CBD3zgs30+y08+ODfCPqhtt4HbpO65taJSqVR8qFQqlW3YOh+77FNU4GSHTn5xZcumeKW6ssZ0IK2Et5JTNh2Q'
        'Et5STliSTrkkjcmvScevSdZiLdZiLdZqj7WWxSnNzRKPNTzWUKkdXam8aUY+XOi50FOpVCqVulOVGv7y5Y0/Vep5+fzstcXZudjI1cuL0/P6ZY'
        '++zUsr3h5aBX/3VsxejqSjhYz3s6GVU2lNmN6p8m+Gco9hphtZMYROpjWediMFQ+ek94sdYmoyJk8TVsFXgz8lGphXTqc1aXqnvZ9HddxMC+Eg'
        'ZsSMcBAzYkbMiBkxExMxEdP/HNMyieJk42RDzIi59cR8LKFMwir4b6VrermmbSbZtVO917NWwXv9mtuRJerbdn69lqLkLuUocGIiJmLidpo7EG'
        '6nETNXIjaPKxFXImJCzBsmJPxe06t/q9TzwkT+o+lPYqdnpi/p1+P6Lq+vndXhs1ZxWNZq1rRZ09qmtaXVjGkzupNrMOHLXGDQ6pBph6om+hMU'
        'OlRax7ROVVsLmAvGKwtZ6/p6CLfSr53nfkpgLRZY4VwDMd3vWjE1G4jVIIMm0MzZqOc4aNrBENCNBDOKWk2ZD+Zqspo0bTJ0tYJx1wkNKQOR8i'
        'aUId+rrBEJESptwkxIKGoco8bRBLExghFAxaN2zWokyyBVYssF84xjKKHaRK0lJqCXazChKvr1Ka+/ZUvOJsjhhEiDzWkcm1OVj+rEWdXb6yNs'
        'prvmxqtWrJ1ohTvjczDpqk1PWBLOQxLeWghmK/0lzIeNi8EsUam6IBjnoXLY3l66ToOdKMS2mMhKv/ioO1PUNld2G+nzUbWy1SRDBCIQeWxE1p'
        '817AREOorIEhqHCEQ2uc0MX+0c+Uylnl3Bb9V+26Pv87K+GBvQxEB0yf+/rmp6rWUbHdC46Y16b6tqevVt8GtvfpkBTZpexnvJWdNrLRv7Bz/q'
        'rw3rL6mJ5FrOqnqtZRtNajy5xqGqV98Gv/bml0lqMrmm+apea9nYP/h1ZP1x/qFP+MEPfvDrOn7LbCD8eEDiAQl9wq8b68+9h0LhBz/4wQ9+PC'
        'LBj1s0HpHQJ/w4IBAoBwQHBPqEH/VXz7b2DfRX/lKppzc7vbCg3/fph7x0Z+947sZeWaa1TNtM32/3jbuRG/taAqDPTOjbUmt5bQtRaIEcTAUr'
        'TAUrNOwHEUy1DEDfVMCt6TbIwVQH5QAdAKBl6plrWsecbTsAUJQ30lf+UE7P7vKH3d4c84E53TGHyyLHG/vYSTkIn2xfipX/2bwL03Mf5q/OX7'
        '4yoz+kH/NyP9fdZDJ6MynTvrlJ29F2d6nbM4AdO3bs3Wp/QIKwY+9e+1fdnoD7a88Jb+81zwnPnJi/OrcQPCLo7v53rZv7TRt/J3ozXtX2m/H+'
        'Dcaf1PytjhP/k42/3cfRD/F397j6fVM/XnjhtW0vHfStB03viBk9UtV6vpUJ/ZvOAQGEjkNo+/ORfQQBBBBAAAGEphCWSQQIIIAAAggggLAthL'
        'g/Ie6NWlWe8dBznQ0PPLrCo/yN13Z+ld55f6SCEYxgBKPmxnlBAgIIIIAAAgj8ZQEEEEAAAQQQQHisCKWj+g9AbJzp'
    ),
    'mus_around_the_world.mid': (
        'eNrtlk9LAkEYh19TK8NDxyUEd1FXcf0zLH4BTdAOEpVCp3WFDYTMjVWJTtnRm1e/RdegQ4cufaYO9ttZ3YSMToLInJ55591n5rc7MGyj2bWIaJ'
        '8CFCKz0XRuUek0D550HHvUt9rD7k37wXZ6llyrlOXLcvXsnOYXwYPpF82vQ6E96fCN5kXyzHAN5lGlMxjIV4/9YZfeFXqxiaaZFmUNNs66QzAD'
        'qqAKpsAUmAAToAIqYByMcyY5M60o93ZnHY+KYfL53/SeTxgS95NgkkzQBGmFjFNFX+U5JOQwQZPn+WHT4z+5l+vtau6lp4M6WAJLa+Y15NHW1t'
        'LCk7i33JeBzH9ft5ZWasnPFUMdA/NGdJx32fJYRL/I92F8n23JGUNOlxpyajw343m3LecufE/kwJR/nQaecJ1G6p2+JZ/2Ovf0SfRqkzlL59kk'
        'Tc/HYrDBAfOPIfKBYwhXndHdYHEENEvolNXZBAeLu2iWq1OhziY5ooLXU/22+scTwha2sIUtbGELW9jC3qSNf7lvsrVnjg=='
    ),
    'mus_where_is_the_love.mid': (
        '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'
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
        if not re.search(rf"^\s*{re.escape(filename)}\s*:", text, re.M):
            text += f"{filename + ':':<38} -E -R50 -G_littleroot_test -V{volume:03d}\n"
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
        print("[OK] MIDI ja instalado:", destination)
    else:
        destination.write_bytes(data)
        destination.touch()
        print("[WRITE]", destination)

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

print("\n[OK] lote POP / ELECTRONIC instalado")
print("Estacoes: OTHER-WORLD + AMATERASU")
print("Voicegroup: _littleroot_test")
print("IDs usados:")
for macro, slug, title, volume in SONGS:
    print(f"  {assigned[macro]:>4}  {macro:<28} {title}")
print("\nAgora rode:\n  make -j9")
