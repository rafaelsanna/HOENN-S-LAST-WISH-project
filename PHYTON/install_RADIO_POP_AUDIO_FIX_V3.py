#!/usr/bin/env python3
from pathlib import Path
import re
import zipfile
import hashlib
import shutil
import datetime
import os
from collections import Counter

PACK_ZIP = "RADIO_POP_AUDIO_FIX_V3.zip"
REFERENCE = "mus_broken_hearted_girl_beyonce"
TRACKS = [{'stem': 'mus_halo_beyonce', 'const': 'MUS_HALO_BEYONCE', 'label': 'HALO (BEYONCE)', 'volume': 82, 'reverb': 10, 'sha256': 'a47e2ad4584b5576622214ed0e42ed36ff6849951791e3f998b540d395b76c40'}, {'stem': 'mus_alejandro_lady_gaga', 'const': 'MUS_ALEJANDRO_LADY_GAGA', 'label': 'ALEJANDRO (LADY GAGA)', 'volume': 82, 'reverb': 9, 'sha256': '9cb2d0740b49bf72729c1c9501feb7c518412d6fe2e85789d98613c37d207a3f'}, {'stem': 'mus_bad_romance_lady_gaga', 'const': 'MUS_BAD_ROMANCE_LADY_GAGA', 'label': 'BAD ROMANCE (LADY GAGA)', 'volume': 84, 'reverb': 10, 'sha256': '14c49939537c62170cca02b3c3510532c9a53d54204c3bba350f4c9bd68fc186'}, {'stem': 'mus_paparazzi_lady_gaga', 'const': 'MUS_PAPARAZZI_LADY_GAGA', 'label': 'PAPARAZZI (LADY GAGA)', 'volume': 82, 'reverb': 8, 'sha256': '5ab433e41d45afe4f9fd7bf5fb4a13cfce7be6031946c71b6bc63fa59d29e2d8'}]

# Placeholder programs used by the packaged MIDIs.
PLACEHOLDER_ROLE = {
    0: "piano",
    33: "bass",
    40: "strings",
    44: "pad",
    75: "lead",
}

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def backup_file(path, root, backup_dir):
    if not path.exists():
        return
    dst = backup_dir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

def sha256(data):
    return hashlib.sha256(data).hexdigest()

def read_varlen(data, pos):
    value = 0
    for _ in range(4):
        if pos >= len(data):
            raise ValueError("VLQ truncado")
        b = data[pos]
        pos += 1
        value = (value << 7) | (b & 0x7F)
        if not (b & 0x80):
            return value, pos
    return value, pos

def program_usage(blob):
    if blob[:4] != b"MThd":
        raise ValueError("MIDI invalido")
    hlen = int.from_bytes(blob[4:8], "big")
    pos = 8 + hlen
    current = [0] * 16
    usage = [Counter() for _ in range(16)]

    while pos < len(blob):
        if blob[pos:pos+4] != b"MTrk":
            raise ValueError("MTrk esperado")
        ln = int.from_bytes(blob[pos+4:pos+8], "big")
        trk = blob[pos+8:pos+8+ln]
        i = 0
        running = None

        while i < len(trk):
            _, i = read_varlen(trk, i)
            if i >= len(trk):
                break
            b = trk[i]
            if b & 0x80:
                status = b
                i += 1
                if status < 0xF0:
                    running = status
                elif status in (0xF0, 0xF7, 0xFF):
                    running = None
            else:
                if running is None:
                    raise ValueError("running status invalido")
                status = running

            if status == 0xFF:
                i += 1
                ln2, i = read_varlen(trk, i)
                i += ln2
                continue
            if status in (0xF0, 0xF7):
                ln2, i = read_varlen(trk, i)
                i += ln2
                continue
            if status >= 0xF0:
                i += {0xF1:1,0xF2:2,0xF3:1,0xF6:0}.get(status, 0)
                continue

            kind = status & 0xF0
            ch = status & 0x0F
            n = 1 if kind in (0xC0,0xD0) else 2

            if kind == 0xC0:
                current[ch] = trk[i]
            elif kind == 0x90:
                vel = trk[i+1]
                if vel > 0:
                    usage[ch][current[ch]] += 1
            i += n

        pos += 8 + ln

    return usage

def dominant(usage, ch, fallback=None):
    if usage[ch]:
        return usage[ch].most_common(1)[0][0]
    if fallback is not None:
        return fallback
    die(f"Broken Hearted Girl sem programa utilizavel no canal {ch}")

def derive_roles(reference_blob):
    usage = program_usage(reference_blob)

    # Roles from the known 10/10 Broken Hearted Girl MIDI:
    # ch2 piano, ch1 bass, ch4 strings, ch5 pad/tremolo,
    # ch3 melodic lead, ch9 drum kit.
    roles = {
        "piano": dominant(usage, 2),
        "bass": dominant(usage, 1),
        "strings": dominant(usage, 4),
        "pad": dominant(usage, 5, dominant(usage, 4)),
        "lead": dominant(usage, 3, dominant(usage, 2)),
        "drums": dominant(usage, 9),
    }
    return roles

def remap_programs(blob, roles):
    hlen = int.from_bytes(blob[4:8], "big")
    pos = 8 + hlen
    out = bytearray(blob[:pos])

    while pos < len(blob):
        if blob[pos:pos+4] != b"MTrk":
            raise ValueError("MTrk esperado")
        ln = int.from_bytes(blob[pos+4:pos+8], "big")
        trk = bytearray(blob[pos+8:pos+8+ln])
        i = 0
        running = None

        while i < len(trk):
            _, i = read_varlen(trk, i)
            if i >= len(trk):
                break
            b = trk[i]
            if b & 0x80:
                status = b
                i += 1
                if status < 0xF0:
                    running = status
                elif status in (0xF0,0xF7,0xFF):
                    running = None
            else:
                if running is None:
                    raise ValueError("running status invalido")
                status = running

            if status == 0xFF:
                i += 1
                ln2, i = read_varlen(trk, i)
                i += ln2
                continue
            if status in (0xF0,0xF7):
                ln2, i = read_varlen(trk, i)
                i += ln2
                continue
            if status >= 0xF0:
                i += {0xF1:1,0xF2:2,0xF3:1,0xF6:0}.get(status,0)
                continue

            kind = status & 0xF0
            ch = status & 0x0F
            n = 1 if kind in (0xC0,0xD0) else 2

            if kind == 0xC0:
                if ch == 9:
                    trk[i] = roles["drums"] & 0x7F
                else:
                    ph = trk[i]
                    role = PLACEHOLDER_ROLE.get(ph, "piano")
                    trk[i] = roles[role] & 0x7F
            i += n

        out += b"MTrk" + len(trk).to_bytes(4, "big") + trk
        pos += 8 + ln

    return bytes(out)

def tune_opts(opts, volume, reverb):
    if re.search(r'(?<!\S)-V\d+', opts):
        opts = re.sub(r'(?<!\S)-V\d+', f'-V{volume:03d}', opts)
    else:
        opts += f' -V{volume:03d}'
    if re.search(r'(?<!\S)-R\d+', opts):
        opts = re.sub(r'(?<!\S)-R\d+', f'-R{reverb}', opts)
    else:
        opts += f' -R{reverb}'
    return opts.strip()

def load_assets(script_dir):
    zpath = script_dir / PACK_ZIP
    if not zpath.exists():
        die(
            f"Nao achei {PACK_ZIP} ao lado do Python.\n"
            "Coloque ZIP + Python dentro de PHYTON/."
        )
    result = {}
    with zipfile.ZipFile(zpath, "r") as z:
        for t in TRACKS:
            name = f'assets/{t["stem"]}.mid'
            data = z.read(name)
            if sha256(data) != t["sha256"]:
                die("SHA256 invalido: " + name)
            result[t["stem"]] = data
    return result

def patch_radio_gurenge(radio_path):
    s = radio_path.read_text()
    song = "MUS_GURENGE_LISA"

    # Remove from POP only.
    pop_decl = "static const u16 sStation_Pop[] = {"
    a = s.find(pop_decl)
    if a < 0:
        die("Nao achei sStation_Pop.")
    e = s.find("    STATION_END", a)
    if e < 0:
        die("Nao achei fim de sStation_Pop.")
    pop = s[a:e]
    pop2 = re.sub(
        r'^\s*' + re.escape(song) + r',\s*\n',
        '',
        pop,
        flags=re.M
    )
    s = s[:a] + pop2 + s[e:]

    # Add to ANIME.
    anime_decl = "static const u16 sStation_Anime[] = {"
    a = s.find(anime_decl)
    if a < 0:
        die("Nao achei sStation_Anime.")
    e = s.find("    STATION_END", a)
    if e < 0:
        die("Nao achei fim de sStation_Anime.")
    anime = s[a:e]
    if song not in anime:
        s = s[:e] + f"    {song},\n" + s[e:]

    # Add Anime display label.
    getter = "static const u8 *Radio_GetAnimeDisplayName(u16 songId)"
    gp = s.find(getter)
    if gp < 0:
        die("Nao achei Radio_GetAnimeDisplayName.")

    name_var = "sAnimeName_GurengeLisa"
    if name_var not in s[:gp]:
        s = (
            s[:gp]
            + 'static const u8 sAnimeName_GurengeLisa[] = _("GURENGE - (DEMON SLAYER)");\n\n'
            + s[gp:]
        )

    gp = s.find(getter)
    d = s.find("\n    default:", gp)
    if d < 0:
        die("Nao achei default do Anime display.")
    block = s[gp:d]
    if f"case {song}:" not in block:
        s = (
            s[:d]
            + f"    case {song}:\n"
              f"        return {name_var};\n"
            + s[d:]
        )

    # Validate.
    pa = s.find(pop_decl)
    pe = s.find("STATION_END", pa)
    aa = s.find(anime_decl)
    ae = s.find("STATION_END", aa)
    if song in s[pa:pe]:
        die("Validacao: Gurenge ainda esta na POP.")
    if song not in s[aa:ae]:
        die("Validacao: Gurenge nao entrou na ANIME.")

    radio_path.write_text(s)
    print("  GURENGE: removida de POP e movida para ANIME.")
    print("  Nome Anime: GURENGE - (DEMON SLAYER)")

def main():
    root = Path.cwd()
    script_dir = Path(__file__).resolve().parent
    midi_dir = root / "sound/songs/midi"
    cfg = midi_dir / "midi.cfg"
    songs_h = root / "include/constants/songs.h"
    radio = root / "src/radio.c"

    if not cfg.exists() or not songs_h.exists() or not radio.exists():
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    print("== HLW POP AUDIO FIX V3 ==")
    print("HALO / ALEJANDRO / BAD ROMANCE / PAPARAZZI")
    print("DISTURBIA: NAO TOCADA (feedback: ficou muito boa)")
    print("GURENGE: POP -> ANIME\n")

    songs_text = songs_h.read_text()
    for t in TRACKS:
        if not re.search(rf'^#define\s+{re.escape(t["const"])}\b', songs_text, re.M):
            die(f"Falta {t['const']} em songs.h.")
    if not re.search(r'^#define\s+MUS_GURENGE_LISA\b', songs_text, re.M):
        die("Falta MUS_GURENGE_LISA em songs.h.")

    ref_midi = midi_dir / f"{REFERENCE}.mid"
    if not ref_midi.exists():
        die("Nao achei o MIDI 10/10 de Broken Hearted Girl.")

    cfg_text = cfg.read_text()
    rm = re.search(
        rf'^{re.escape(REFERENCE)}\.mid:\s*(.+)$',
        cfg_text, re.M
    )
    if not rm:
        die("Broken Hearted Girl nao esta em midi.cfg.")
    ref_opts = rm.group(1).strip()
    if not re.search(r'(?<!\S)-G\S+', ref_opts):
        die("Broken Hearted Girl nao tem -G voicegroup.")

    roles = derive_roles(ref_midi.read_bytes())
    print("Banco de referencia: BROKEN HEARTED GIRL (10/10)")
    print("CFG:", ref_opts)
    print("Programas reais:")
    for k,v in roles.items():
        print(f"  {k:8s} -> {v}")

    assets = load_assets(script_dir)

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_dir = root / "PHYTON/backups" / f"pop_audio_fix_v3_{stamp}"
    backup_file(cfg, root, backup_dir)
    backup_file(radio, root, backup_dir)
    for t in TRACKS:
        p = midi_dir / f'{t["stem"]}.mid'
        if not p.exists():
            die("MIDI instalado faltando: " + str(p))
        backup_file(p, root, backup_dir)

    print("\nBackup:", backup_dir)

    new_cfg = cfg_text
    for t in TRACKS:
        remapped = remap_programs(assets[t["stem"]], roles)
        dst = midi_dir / f'{t["stem"]}.mid'
        dst.write_bytes(remapped)
        os.utime(dst, None)

        opts = tune_opts(ref_opts, t["volume"], t["reverb"])
        line = f'{t["stem"]}.mid: {opts}'
        pat = rf'^{re.escape(t["stem"])}\.mid:.*$'
        if not re.search(pat, new_cfg, re.M):
            die("Nao achei faixa existente em midi.cfg: " + t["stem"])
        new_cfg = re.sub(pat, line, new_cfg, flags=re.M)

        print(f"\n{t['label']}")
        print(" ", line)

        for p in (
            midi_dir / f'{t["stem"]}.s',
            root / "build/modern/sound/songs/midi" / f'{t["stem"]}.o',
        ):
            if p.exists():
                p.unlink()

    cfg.write_text(new_cfg)
    patch_radio_gurenge(radio)

    print("\nFIX V3 INSTALADO.")
    print("Nenhum ID/song_table/capa foi alterado.")
    print("Disturbia continua exatamente como estava.")
    print("\nAgora:")
    print("  make -j8")

if __name__ == "__main__":
    main()
