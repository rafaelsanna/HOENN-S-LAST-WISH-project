#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, os

CONST = "MUS_ZINNIA_CHAMPION_GRAND_EPIC"
DISPLAY = "ZINNIA THEME (CHAMPION ORCHESTRAL)"
PATCH_MARKER = "HLW_ZINNIA_CHAMPION_V3_RADIO_POKEMON_GBA"

def die(msg):
    print("\n[ERRO]", msg)
    raise RuntimeError(msg)

def backup(path, root, bdir):
    dst = bdir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def add_to_macro(text):
    start = text.find("#define RADIO_SOUND_LIST_BGM")
    end = text.find("#define X(songId)", start)
    if start < 0 or end < 0:
        die("Nao achei RADIO_SOUND_LIST_BGM em src/radio.c.")

    block = text[start:end]
    if f"X({CONST})" in block:
        return text

    lines = block.rstrip().splitlines()
    if not lines:
        die("RADIO_SOUND_LIST_BGM vazio.")

    if not lines[-1].rstrip().endswith("\\"):
        lines[-1] = lines[-1].rstrip() + " \\"

    lines.append(f"    X({CONST})")
    new_block = "\n".join(lines) + "\n"
    return text[:start] + new_block + text[end:]

def add_to_station(text, array_name):
    pat = r'(static const u16\s+' + re.escape(array_name) + r'\[\]\s*=\s*\{)(.*?)(\n\};)'
    m = re.search(pat, text, re.S)
    if not m:
        die(f"Nao achei {array_name}.")

    body = m.group(2)
    if CONST in body:
        return text

    marker = re.search(r'^[ \t]*STATION_END[ \t]*$', body, re.M)
    if not marker:
        die(f"Nao achei STATION_END em {array_name}.")

    body = body[:marker.start()] + f"    {CONST},\n" + body[marker.start():]
    return text[:m.start(2)] + body + text[m.end(2):]

def add_display_name(text):
    # If any existing Champion Zinnia friendly label is already installed, keep it.
    if (
        "ZINNIA THEME (CHAMPION ORCHESTRAL)" in text
        or "ZINNIA THEME (CHAMPION GRAND EPIC)" in text
        or "ZINNIA THEME (CHAMPION VIOLIN EPIC)" in text
    ):
        return text

    if PATCH_MARKER in text:
        return text

    fn = "static const u8 *Radio_GetSpecialDisplayName(u16 songId)"
    pos = text.find(fn)
    if pos < 0:
        die("Nao achei Radio_GetSpecialDisplayName.")

    defs = f"""// {PATCH_MARKER}
static const u8 sPokemonGbaName_ZinniaChampionV3Radio[] =
    _("{DISPLAY}");

static const u8 *Radio_GetZinniaChampionV3RadioDisplayName(u16 songId)
{{
    if (songId == {CONST})
        return sPokemonGbaName_ZinniaChampionV3Radio;
    return NULL;
}}

"""
    text = text[:pos] + defs + text[pos:]

    m = re.search(
        r'(static const u8 \*Radio_GetSpecialDisplayName\(u16 songId\)\s*\{\s*const u8 \*name;\s*)',
        text,
        re.S,
    )
    if not m:
        die("Formato de Radio_GetSpecialDisplayName mudou.")

    hook = """    name = Radio_GetZinniaChampionV3RadioDisplayName(songId);
    if (name != NULL)
        return name;

"""
    return text[:m.end()] + hook + text[m.end():]

def main():
    root = Path.cwd()
    songs_h = root / "include/constants/songs.h"
    radio = root / "src/radio.c"

    for p in (songs_h, radio):
        if not p.exists():
            die(f"Nao achei {p}. Rode da raiz do pokeemerald-expansion.")

    songs = songs_h.read_text()
    if not re.search(r'^#define\s+' + re.escape(CONST) + r'\s+\d+\b', songs, re.M):
        die(
            f"{CONST} ainda nao existe em songs.h.\n"
            "Primeiro rode o installer principal do Champion V3."
        )

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"zinnia_champion_v3_radio_{stamp}"
    backup(radio, root, bdir)

    original = radio.read_bytes()

    try:
        text = radio.read_text()

        text = add_to_macro(text)
        text = add_to_station(text, "sStation_All")
        text = add_to_station(text, "sStation_PokemonGba")
        text = add_display_name(text)

        radio.write_text(text)
        os.utime(radio, None)

        final = radio.read_text()

        # Verify macro.
        start = final.find("#define RADIO_SOUND_LIST_BGM")
        end = final.find("#define X(songId)", start)
        macro = final[start:end]
        if f"X({CONST})" not in macro:
            die("Falhou: musica nao entrou em RADIO_SOUND_LIST_BGM.")

        # Verify stations.
        for arr in ("sStation_All", "sStation_PokemonGba"):
            m = re.search(
                r'static const u16\s+' + re.escape(arr) + r'\[\]\s*=\s*\{(.*?)\n\};',
                final,
                re.S,
            )
            if not m or CONST not in m.group(1):
                die(f"Falhou: musica nao entrou em {arr}.")

        # Force radio object rebuild only.
        for p in (
            root / "build/modern/src/radio.o",
            root / "build/modern/src/radio.d",
        ):
            if p.exists():
                print("rm", p.relative_to(root))
                p.unlink()

        print("\n============================================================")
        print("CHAMPION V3 ADICIONADA NA RADIO")
        print("============================================================")
        print("POKEMON GBA  -> OK")
        print("ALL TRACKS   -> OK")
        print("")
        print("Musica:")
        print(" ", DISPLAY)
        print("")
        print("Backup:", bdir)
        print("\nAgora rode:")
        print("  make -j8")

    except Exception:
        print("\n[ROLLBACK] Restaurando src/radio.c...")
        radio.write_bytes(original)
        raise

if __name__ == "__main__":
    try:
        main()
    except RuntimeError:
        raise SystemExit(1)
