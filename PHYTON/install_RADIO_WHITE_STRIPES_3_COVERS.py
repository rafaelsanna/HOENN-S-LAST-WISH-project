#!/usr/bin/env python3
from pathlib import Path
import argparse
import datetime
import re
import shutil

COVERS = [
    {
        "enum": "RADIO_COVER_HELLO_OPERATOR",
        "var": "HelloOperator",
        "file": "hellooperator",
    },
    {
        "enum": "RADIO_COVER_WHITE_BLOOD_CELLS",
        "var": "WhiteBloodCells",
        "file": "whitebloodcells",
    },
    {
        "enum": "RADIO_COVER_ELEPHANT",
        "var": "Elephant",
        "file": "elephant",
    },
]

MAPPINGS = [
    ("MUS_DEAD_LEAVES_AND_THE_DIRTY_GROUND", "RADIO_COVER_WHITE_BLOOD_CELLS"),
    ("MUS_I_CANT_WAIT_WHITE_STRIPES", "RADIO_COVER_WHITE_BLOOD_CELLS"),
    ("MUS_JOLENE_WHITE_STRIPES", "RADIO_COVER_HELLO_OPERATOR"),
    ("MUS_SEVEN_NATION_ARMY", "RADIO_COVER_ELEPHANT"),
]

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def backup_file(path, root, backup_dir):
    dst = backup_dir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def cover_source_exists(covers_dir, stem):
    png = covers_dir / f"{stem}.png"
    pal = covers_dir / f"{stem}.gbapal"
    smol = covers_dir / f"{stem}.4bpp.smol"

    # Best case: PNG source exists and make can generate both derived assets.
    if png.exists():
        return True, f"{png.name} (source PNG)"

    # Also accept an already-generated pair.
    if pal.exists() and smol.exists():
        return True, f"{pal.name} + {smol.name}"

    return False, (
        f"esperado {stem}.png OU "
        f"{stem}.gbapal + {stem}.4bpp.smol"
    )

def patch_radio_text(s):
    enum_anchor = "    RADIO_COVER_COUNT,"
    if enum_anchor not in s:
        die("Nao achei RADIO_COVER_COUNT em src/radio.c.")

    enum_lines = "".join(
        f"    {c['enum']},\n"
        for c in COVERS
        if c["enum"] not in s
    )
    if enum_lines:
        s = s.replace(enum_anchor, enum_lines + enum_anchor, 1)

    defs_anchor = (
        'static const u32 sRadioCoverDivisionBell_Gfx[] = '
        'INCBIN_U32("graphics/radio/covers/divisionbell.4bpp.smol");'
    )
    if defs_anchor not in s:
        die("Nao achei o anchor da capa Division Bell.")

    defs = ""
    for c in COVERS:
        pal_name = f"sRadioCover{c['var']}_Pal"
        gfx_name = f"sRadioCover{c['var']}_Gfx"

        if pal_name not in s:
            defs += (
                f'\nstatic const u16 {pal_name}[] = '
                f'INCBIN_U16("graphics/radio/covers/{c["file"]}.gbapal");'
            )

        if gfx_name not in s:
            defs += (
                f'\nstatic const u32 {gfx_name}[] = '
                f'INCBIN_U32("graphics/radio/covers/{c["file"]}.4bpp.smol");'
            )

    if defs:
        s = s.replace(defs_anchor, defs_anchor + defs, 1)

    sheets_start = s.find(
        "static const struct CompressedSpriteSheet "
        "sRadioCoverSheets[RADIO_COVER_COUNT] ="
    )
    if sheets_start < 0:
        die("Nao achei sRadioCoverSheets.")

    sheets_end = s.find("\n};", sheets_start)
    if sheets_end < 0:
        die("Nao achei fim de sRadioCoverSheets.")

    sheets_block = s[sheets_start:sheets_end]
    sheet_lines = ""
    for c in COVERS:
        if f"[{c['enum']}]" not in sheets_block:
            sheet_lines += (
                f'    [{c["enum"]}] = '
                f'{{sRadioCover{c["var"]}_Gfx, 0x800, TAG_RADIO_COVER}},\n'
            )

    if sheet_lines:
        s = (
            s[:sheets_end]
            + "\n"
            + sheet_lines.rstrip("\n")
            + s[sheets_end:]
        )

    pals_start = s.find(
        "static const struct SpritePalette "
        "sRadioCoverPalettes[RADIO_COVER_COUNT] ="
    )
    if pals_start < 0:
        die("Nao achei sRadioCoverPalettes.")

    pals_end = s.find("\n};", pals_start)
    if pals_end < 0:
        die("Nao achei fim de sRadioCoverPalettes.")

    pals_block = s[pals_start:pals_end]
    pal_lines = ""
    for c in COVERS:
        if f"[{c['enum']}]" not in pals_block:
            pal_lines += (
                f'    [{c["enum"]}] = '
                f'{{sRadioCover{c["var"]}_Pal, TAG_RADIO_COVER}},\n'
            )

    if pal_lines:
        s = (
            s[:pals_end]
            + "\n"
            + pal_lines.rstrip("\n")
            + s[pals_end:]
        )

    fn = "static u8 Radio_GetAlbumCoverForSong(u16 songId)"
    fp = s.find(fn)
    if fp < 0:
        die("Nao achei Radio_GetAlbumCoverForSong.")

    default_pos = s.find("    default:", fp)
    if default_pos < 0:
        die("Nao achei default do switch de capas.")

    switch_block = s[fp:default_pos]
    map_lines = ""
    for song, cover in MAPPINGS:
        if f"case {song}:" not in switch_block:
            map_lines += (
                f"    case {song}:\n"
                f"        return {cover};\n"
            )

    if map_lines:
        s = s[:default_pos] + map_lines + s[default_pos:]

    if s.count("{") != s.count("}"):
        die("radio.c ficou com chaves desbalanceadas.")
    if s.count("(") != s.count(")"):
        die("radio.c ficou com parenteses desbalanceados.")

    for c in COVERS:
        if c["enum"] not in s:
            die("Validacao enum falhou: " + c["enum"])
        if f'graphics/radio/covers/{c["file"]}.gbapal' not in s:
            die("Validacao palette falhou: " + c["file"])
        if f'graphics/radio/covers/{c["file"]}.4bpp.smol' not in s:
            die("Validacao gfx falhou: " + c["file"])

    for song, cover in MAPPINGS:
        if f"case {song}:" not in s:
            die("Validacao song mapping falhou: " + song)
        if f"return {cover};" not in s:
            die("Validacao cover mapping falhou: " + cover)

    return s

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    root = Path.cwd()
    radio = root / "src/radio.c"
    songs_h = root / "include/constants/songs.h"
    covers_dir = root / "graphics/radio/covers"

    if not radio.exists() or not songs_h.exists() or not covers_dir.exists():
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    print("== HLW RADIO / WHITE STRIPES - 3 CAPAS ==")
    print("Capas:")
    print("  hellooperator   -> JOLENE")
    print("  whitebloodcells -> DEAD LEAVES + I CAN'T WAIT")
    print("  elephant        -> SEVEN NATION ARMY")
    print()

    songs_text = songs_h.read_text()
    for song, _ in MAPPINGS:
        if not re.search(rf'^#define\s+{re.escape(song)}\b', songs_text, re.M):
            die(f"Nao achei {song} em include/constants/songs.h.")

    for c in COVERS:
        ok, desc = cover_source_exists(covers_dir, c["file"])
        print(f"{c['file']}: {desc}")
        if not ok:
            die(
                f"Arquivos da capa {c['file']} nao foram encontrados.\n"
                f"Deixe {c['file']}.png em graphics/radio/covers/ "
                "ou os dois arquivos gerados (.gbapal + .4bpp.smol)."
            )

    old = radio.read_text()
    new = patch_radio_text(old)

    if old == new:
        print("\nJa estava instalado. Nenhuma alteracao necessaria.")
        return

    if args.dry_run:
        print("\n[dry-run] Patch do radio.c passou em todas as validacoes.")
        print("[dry-run] Nenhum arquivo foi alterado.")
        return

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_dir = root / "PHYTON/backups" / f"white_stripes_3covers_{stamp}"
    backup_file(radio, root, backup_dir)

    radio.write_text(new)
    radio.touch()

    print("\nBackup:", backup_dir)
    print("src/radio.c: ALTERADO")
    print("\nMapeamento final:")
    print("  DEAD LEAVES AND THE DIRTY GROUND -> WHITE BLOOD CELLS")
    print("  I CAN'T WAIT                    -> WHITE BLOOD CELLS")
    print("  JOLENE                          -> HELLO OPERATOR")
    print("  SEVEN NATION ARMY               -> ELEPHANT")
    print("\nOK.")
    print("Agora rode:")
    print("  make -j8")
    print("\nO make deve gerar .gbapal/.4bpp.smol a partir dos PNGs se necessario.")

if __name__ == "__main__":
    main()
