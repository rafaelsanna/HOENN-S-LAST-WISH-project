#!/usr/bin/env python3
from pathlib import Path
import re, shutil, datetime, os

CONST = "MUS_IVE_SEEN_MUCH"
STEM = "mus_ive_seen_much"
LABEL = "sAnimeName_IveSeenMuch"

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def backup(path, root, bdir):
    if not path.exists():
        return
    dst = bdir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def remove_const_and_fix_endmus(text):
    text = re.sub(
        rf'^\s*#define\s+{re.escape(CONST)}\s+\d+\s*\n?',
        '',
        text,
        flags=re.M
    )

    pairs = [
        (name, int(num))
        for name, num in re.findall(
            r'^#define\s+(MUS_[A-Z0-9_]+)\s+(\d+)\b',
            text,
            re.M
        )
        if name != CONST
    ]
    if not pairs:
        die("Nao consegui recalcular END_MUS.")

    highest = max(pairs, key=lambda x: x[1])
    text = re.sub(
        r'^#define\s+END_MUS\s+\S+.*$',
        f"#define END_MUS {highest[0]}",
        text,
        count=1,
        flags=re.M
    )
    print(f"END_MUS -> {highest[0]} ({highest[1]})")
    return text

def clean_song_table(text):
    return re.sub(
        rf'^\s*song\s+{re.escape(STEM)}\s*,[^\n]*\n?',
        '',
        text,
        flags=re.M
    )

def clean_radio(text):
    # Remove every station / ALL / BGM macro occurrence line.
    text = re.sub(
        rf'^[^\n]*\b{re.escape(CONST)}\b[^\n]*\n?',
        '',
        text,
        flags=re.M
    )

    # Remove friendly label if it survived for any reason.
    text = re.sub(
        rf'^\s*static const u8\s+{re.escape(LABEL)}\[\]\s*=\s*_\([^;]*;\s*\n?',
        '',
        text,
        flags=re.M
    )

    # Repair RADIO_SOUND_LIST_BGM continuation slashes after removing its last item.
    start = text.find("#define RADIO_SOUND_LIST_BGM")
    end = text.find("#define X(songId)", start)
    if start >= 0 and end >= 0:
        block = text[start:end]
        lines = block.rstrip("\n").splitlines()
        x_indices = [
            i for i, line in enumerate(lines)
            if re.search(r'\bX\(MUS_[A-Z0-9_]+\)', line)
        ]
        if x_indices:
            last = x_indices[-1]
            # All X lines except final one need a macro continuation.
            for i in x_indices[:-1]:
                if not lines[i].rstrip().endswith("\\"):
                    lines[i] = lines[i].rstrip() + " \\"
            lines[last] = lines[last].rstrip().rstrip("\\").rstrip()
            block2 = "\n".join(lines) + "\n"
            text = text[:start] + block2 + text[end:]

    # Tidy accidental double blank runs a bit, without reformatting the file.
    text = re.sub(r'\n{4,}', '\n\n\n', text)
    return text

def clean_cfg(text):
    return re.sub(
        rf'^{re.escape(STEM)}\.mid:.*\n?',
        '',
        text,
        flags=re.M
    )

def main():
    root = Path.cwd()
    songs = root / "include/constants/songs.h"
    table = root / "sound/song_table.inc"
    radio = root / "src/radio.c"
    cfg = root / "sound/songs/midi/midi.cfg"

    for p in (songs, table, radio, cfg):
        if not p.exists():
            die(f"Nao achei {p}. Rode este script da raiz do pokeemerald-expansion.")

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bdir = root / "PHYTON/backups" / f"remove_ive_seen_much_{stamp}"

    song_mid = root / f"sound/songs/midi/{STEM}.mid"
    song_s   = root / f"sound/songs/midi/{STEM}.s"

    touched = [songs, table, radio, cfg, song_mid, song_s]
    for p in touched:
        backup(p, root, bdir)

    songs.write_text(remove_const_and_fix_endmus(songs.read_text()))
    table.write_text(clean_song_table(table.read_text()))
    radio.write_text(clean_radio(radio.read_text()))
    cfg.write_text(clean_cfg(cfg.read_text()))

    # Remove source/generated files for THIS SONG ONLY.
    for p in (song_mid, song_s):
        if p.exists():
            print("rm", p.relative_to(root))
            p.unlink()

    # Remove only objects/deps that can still carry the stale symbol.
    stale = [
        root / f"build/modern/sound/songs/midi/{STEM}.o",
        root / f"build/modern/sound/songs/midi/{STEM}.d",
        root / "build/modern/data/sound_data.o",
        root / "build/modern/data/sound_data.d",
        root / "build/modern/src/radio.o",
        root / "build/modern/src/radio.d",
        root / "Pokemon_HLW.elf",
    ]
    for p in stale:
        if p.exists():
            print("rm", p.relative_to(root))
            p.unlink()

    # Verification: no registration should remain.
    leftovers = []
    checks = {
        "songs.h": songs.read_text(),
        "song_table.inc": table.read_text(),
        "radio.c": radio.read_text(),
        "midi.cfg": cfg.read_text(),
    }
    for name, text in checks.items():
        if CONST in text or STEM in text or LABEL in text:
            leftovers.append(name)

    if leftovers:
        die("Ainda achei referencia em: " + ", ".join(leftovers))

    print("\nIVE SEEN MUCH REMOVIDA COMPLETAMENTE.")
    print("Nao mexi em nenhuma outra musica.")
    print("Backup:", bdir)
    print("\nAgora rode SOMENTE:")
    print("  make -j8")

if __name__ == "__main__":
    main()
