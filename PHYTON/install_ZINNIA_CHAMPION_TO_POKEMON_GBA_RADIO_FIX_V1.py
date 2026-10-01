#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, os

CONST = "MUS_ZINNIA_CHAMPION_GRAND_EPIC"
PATCH_MARKER = "HLW_ZINNIA_CHAMPION_RADIO_FIX_V1"

def die(msg):
    print("\n[ERRO]", msg)
    raise RuntimeError(msg)

def backup(path, root, bdir):
    dst = bdir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def add_to_bgm_macro(text):
    start = text.find("#define RADIO_SOUND_LIST_BGM")
    if start < 0:
        die("Nao achei RADIO_SOUND_LIST_BGM.")

    end = text.find("#define X(songId)", start)
    if end < 0:
        die("Nao achei o fim de RADIO_SOUND_LIST_BGM.")

    block = text[start:end]

    if f"X({CONST})" in block:
        return text

    lines = block.rstrip().splitlines()
    if not lines:
        die("RADIO_SOUND_LIST_BGM vazio.")

    if not lines[-1].rstrip().endswith("\\"):
        lines[-1] = lines[-1].rstrip() + " \\"

    lines.append(f"    X({CONST})")
    block = "\n".join(lines) + "\n"

    return text[:start] + block + text[end:]

def add_to_station(text, array_name):
    pat = (
        r'(static const u16\s+' + re.escape(array_name)
        + r'\[\]\s*=\s*\{)(.*?)(\n\};)'
    )
    m = re.search(pat, text, re.S)
    if not m:
        die(f"Nao achei {array_name}.")

    body = m.group(2)

    if CONST in body:
        return text

    marker = re.search(r'^[ \t]*STATION_END[ \t]*$', body, re.M)
    if not marker:
        die(f"Nao achei STATION_END em {array_name}.")

    insert = (
        "    // ZINNIA CHAMPION - HLW\n"
        f"    {CONST},\n"
    )

    body = body[:marker.start()] + insert + body[marker.start():]
    return text[:m.start(2)] + body + text[m.end(2):]

def add_display_name(text):
    if PATCH_MARKER in text:
        return text

    fn = "static const u8 *Radio_GetSpecialDisplayName(u16 songId)"
    pos = text.find(fn)
    if pos < 0:
        die("Nao achei Radio_GetSpecialDisplayName.")

    defs = f"""// {PATCH_MARKER}
static const u8 sPokemonGbaName_ZinniaChampionFix[] =
    _("ZINNIA THEME (CHAMPION GRAND EPIC)");

static const u8 *Radio_GetZinniaChampionFixDisplayName(u16 songId)
{{
    if (songId == {CONST})
        return sPokemonGbaName_ZinniaChampionFix;
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

    hook = """    name = Radio_GetZinniaChampionFixDisplayName(songId);
    if (name != NULL)
        return name;

"""
    text = text[:m.end()] + hook + text[m.end():]
    return text

def main():
    root = Path.cwd()
    radio = root / "src/radio.c"
    songs_h = root / "include/constants/songs.h"

    for p in (radio, songs_h):
        if not p.exists():
            die(f"Nao achei {p}. Rode da raiz do pokeemerald-expansion.")

    songs_text = songs_h.read_text()
    if not re.search(r'^#define\s+' + re.escape(CONST) + r'\s+\d+\b', songs_text, re.M):
        die(
            f"{CONST} ainda nao existe em songs.h. "
            "Instale primeiro o pack do Champion Grand Epic."
        )

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"zinnia_champion_radio_fix_v1_{stamp}"
    backup(radio, root, bdir)

    original = radio.read_bytes()

    try:
        text = radio.read_text()

        text = add_to_bgm_macro(text)
        text = add_to_station(text, "sStation_All")
        text = add_to_station(text, "sStation_PokemonGba")
        text = add_display_name(text)

        radio.write_text(text)
        os.utime(radio, None)

        final = radio.read_text()

        if f"X({CONST})" not in final:
            die("Champion nao entrou em RADIO_SOUND_LIST_BGM.")

        for arr in ("sStation_All", "sStation_PokemonGba"):
            m = re.search(
                r'static const u16\s+' + re.escape(arr) + r'\[\]\s*=\s*\{(.*?)\n\};',
                final,
                re.S,
            )
            if not m or CONST not in m.group(1):
                die(f"Champion nao entrou em {arr}.")

        if PATCH_MARKER not in final:
            die("Nome amigavel do Champion nao foi aplicado.")

        for p in (
            root / "build/modern/src/radio.o",
            root / "build/modern/src/radio.d",
        ):
            if p.exists():
                print("rm", p.relative_to(root))
                p.unlink()

        print("\n============================================================")
        print("ZINNIA CHAMPION -> RADIO POKEMON GBA FIX V1")
        print("============================================================")
        print("Adicionado em:")
        print("  POKEMON GBA")
        print("  ALL TRACKS")
        print("")
        print("Nome exibido:")
        print("  ZINNIA THEME (CHAMPION GRAND EPIC)")
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
