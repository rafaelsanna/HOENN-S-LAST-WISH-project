#!/usr/bin/env python3
from pathlib import Path
import re
import zipfile
import hashlib
import shutil
import datetime
import os
from collections import Counter

PACK_ZIP_NAME = "RADIO_POP_REMASTER_4_V2.zip"
REFERENCE_STEM = "mus_broken_hearted_girl_beyonce"

TRACKS = [{'stem': 'mus_alejandro_lady_gaga', 'const': 'MUS_ALEJANDRO_LADY_GAGA', 'label': 'ALEJANDRO (LADY GAGA)', 'volume': 84, 'reverb': 10, 'sha256': '6fa23994935c4c190b385c5e8e7af449e8493332fcb659dc5e8be290a0bb3135'}, {'stem': 'mus_irreplaceable_beyonce', 'const': 'MUS_IRREPLACEABLE_BEYONCE', 'label': 'IRREPLACEABLE (BEYONCE)', 'volume': 82, 'reverb': 10, 'sha256': 'f7daf33221d2e8d8e9c53f95ea365cf39fa8d1425a49d77351671182399bf7cd'}, {'stem': 'mus_crazy_in_love_beyonce', 'const': 'MUS_CRAZY_IN_LOVE_BEYONCE', 'label': 'CRAZY IN LOVE (BEYONCE)', 'volume': 74, 'reverb': 6, 'sha256': '7ef9b4d2a0cb55042e5d89ec514def28beeae1f5d5134cc6d22a9988198f62c0'}, {'stem': 'mus_disturbia_rihanna', 'const': 'MUS_DISTURBIA_RIHANNA', 'label': 'DISTURBIA (RIHANNA)', 'volume': 82, 'reverb': 8, 'sha256': '74eeb63ce3c540dc716df560c0716645d2c921a687c2698c37ace970829e7eab'}]

# Placeholder GM-style programs embedded in the remaster assets.
PLACEHOLDER_ROLE = {
    0: "piano",
    33: "bass",
    40: "strings",
    52: "pad",
    73: "lead",
    81: "synth",
}

def die(msg):
    print("\n[ERRO]", msg)
    raise SystemExit(1)

def sha256_bytes(data):
    return hashlib.sha256(data).hexdigest()

def backup_file(path, root, backup_dir):
    if not path.exists():
        return
    dst = backup_dir / path.relative_to(root)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dst)

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

def program_usage_by_channel(blob):
    if blob[:4] != b"MThd":
        raise ValueError("MIDI sem MThd")

    header_len = int.from_bytes(blob[4:8], "big")
    pos = 8 + header_len
    current = [0] * 16
    usage = [Counter() for _ in range(16)]

    while pos < len(blob):
        if blob[pos:pos+4] != b"MTrk":
            raise ValueError("chunk MIDI inesperado")
        ln = int.from_bytes(blob[pos+4:pos+8], "big")
        trk = blob[pos+8:pos+8+ln]
        if len(trk) != ln:
            raise ValueError("MTrk truncado")

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
                mlen, i = read_varlen(trk, i)
                i += mlen
                continue

            if status in (0xF0,0xF7):
                slen, i = read_varlen(trk, i)
                i += slen
                continue

            if status >= 0xF0:
                i += {0xF1:1,0xF2:2,0xF3:1,0xF6:0}.get(status,0)
                continue

            kind = status & 0xF0
            ch = status & 0x0F
            data_len = 1 if kind in (0xC0,0xD0) else 2

            if kind == 0xC0:
                current[ch] = trk[i]
            elif kind == 0x90:
                note = trk[i]
                vel = trk[i+1]
                if vel > 0:
                    usage[ch][current[ch]] += 1

            i += data_len

        pos += 8 + ln

    return usage

def dominant(usage, ch, fallback=None):
    if usage[ch]:
        return usage[ch].most_common(1)[0][0]
    if fallback is not None:
        return fallback
    die(f"Referencia 10/10 nao tem atividade no canal {ch}.")

def derive_roles_from_broken_hearted_girl(blob):
    usage = program_usage_by_channel(blob)

    # These channel roles are known from the original Broken Hearted Girl MIDI:
    # ch1 bass, ch2 piano, ch3 lead/flute, ch4 violin, ch5 tremolo strings/pad,
    # ch8 synth lead, ch9 drum kit.
    roles = {}
    roles["bass"] = dominant(usage, 1)
    roles["piano"] = dominant(usage, 2)
    roles["lead"] = dominant(usage, 3)
    roles["strings"] = dominant(usage, 4)
    roles["pad"] = dominant(usage, 5, roles["strings"])
    roles["synth"] = dominant(usage, 8, roles["lead"])
    roles["drums"] = dominant(usage, 9)

    return roles

def remap_programs(blob, roles):
    if blob[:4] != b"MThd":
        raise ValueError("MIDI sem MThd")

    header_len = int.from_bytes(blob[4:8], "big")
    pos = 8 + header_len
    out = bytearray(blob[:pos])

    while pos < len(blob):
        if blob[pos:pos+4] != b"MTrk":
            raise ValueError("chunk MIDI inesperado")

        ln = int.from_bytes(blob[pos+4:pos+8], "big")
        trk = bytearray(blob[pos+8:pos+8+ln])
        if len(trk) != ln:
            raise ValueError("MTrk truncado")

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
                mlen, i = read_varlen(trk, i)
                i += mlen
                continue

            if status in (0xF0,0xF7):
                slen, i = read_varlen(trk, i)
                i += slen
                continue

            if status >= 0xF0:
                i += {0xF1:1,0xF2:2,0xF3:1,0xF6:0}.get(status,0)
                continue

            kind = status & 0xF0
            ch = status & 0x0F
            data_len = 1 if kind in (0xC0,0xD0) else 2

            if kind == 0xC0:
                if ch == 9:
                    trk[i] = roles["drums"] & 0x7F
                else:
                    placeholder = trk[i]
                    role = PLACEHOLDER_ROLE.get(placeholder)
                    if role is None:
                        # Safe fallback inside the same proven bank.
                        role = "piano"
                    trk[i] = roles[role] & 0x7F

            i += data_len

        out += b"MTrk" + len(trk).to_bytes(4,"big") + trk
        pos += 8 + ln

    return bytes(out)

def tune_options(opts, volume, reverb):
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
    pack = script_dir / PACK_ZIP_NAME
    if not pack.exists():
        die(
            f"Nao achei {PACK_ZIP_NAME} ao lado deste Python.\n"
            "Coloque ZIP + Python em ~/pokeemerald-expansion/PHYTON/"
        )

    result = {}
    with zipfile.ZipFile(pack, "r") as z:
        for t in TRACKS:
            name = f'assets/{t["stem"]}.mid'
            try:
                data = z.read(name)
            except KeyError:
                die("Asset faltando: " + name)

            if sha256_bytes(data) != t["sha256"]:
                die("SHA256 incorreto: " + name)

            result[t["stem"]] = data

    return result

def main():
    root = Path.cwd()
    script_dir = Path(__file__).resolve().parent
    midi_dir = root / "sound/songs/midi"
    cfg = midi_dir / "midi.cfg"
    songs_h = root / "include/constants/songs.h"

    if not cfg.exists() or not songs_h.exists():
        die("Rode da raiz: cd ~/pokeemerald-expansion")

    print("== HLW POP REMASTER 4 / V2 ==")
    print("Usando Broken Hearted Girl (10/10) como banco de referencia.\n")

    songs_text = songs_h.read_text()
    for t in TRACKS:
        if not re.search(rf'^#define\s+{re.escape(t["const"])}\b', songs_text, re.M):
            die(
                f"Falta {t['const']} em songs.h. "
                "Este e um pacote de REMASTER e espera o batch POP 13 ja instalado."
            )

    ref_midi = midi_dir / f"{REFERENCE_STEM}.mid"
    if not ref_midi.exists():
        die(
            f"Nao achei {ref_midi}. "
            "Broken Hearted Girl precisa continuar instalada."
        )

    cfg_text = cfg.read_text()
    ref_line = re.search(
        rf'^{re.escape(REFERENCE_STEM)}\.mid:\s*(.+)$',
        cfg_text, re.M
    )
    if not ref_line:
        die("Nao achei Broken Hearted Girl em midi.cfg.")

    ref_opts = ref_line.group(1).strip()
    if not re.search(r'(?<!\S)-G\S+', ref_opts):
        die("Linha de Broken Hearted Girl nao tem -G voicegroup.")

    roles = derive_roles_from_broken_hearted_girl(ref_midi.read_bytes())

    print("Referencia:", REFERENCE_STEM)
    print("midi.cfg:", ref_opts)
    print("Programas reais derivados do port 10/10:")
    for k in ("piano","bass","strings","pad","lead","synth","drums"):
        print(f"  {k:8s}: {roles[k]}")

    assets = load_assets(script_dir)

    stamp = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    backup_dir = root / "PHYTON/backups" / f"pop_remaster_4_v2_{stamp}"

    backup_file(cfg, root, backup_dir)
    for t in TRACKS:
        p = midi_dir / f'{t["stem"]}.mid'
        if not p.exists():
            die(f"Falta MIDI instalado: {p}")
        backup_file(p, root, backup_dir)

    print("\nBackup:", backup_dir)

    new_cfg = cfg_text

    for t in TRACKS:
        remapped = remap_programs(assets[t["stem"]], roles)
        dst = midi_dir / f'{t["stem"]}.mid'
        dst.write_bytes(remapped)
        os.utime(dst, None)

        opts = tune_options(ref_opts, t["volume"], t["reverb"])
        line = f'{t["stem"]}.mid: {opts}'
        pat = rf'^{re.escape(t["stem"])}\.mid:.*$'

        if re.search(pat, new_cfg, re.M):
            new_cfg = re.sub(pat, line, new_cfg, flags=re.M)
        else:
            die(f"Faixa nao existe em midi.cfg: {t['stem']}")

        print(f'\n{t["label"]}')
        print("  ->", line)

        # Force mid2agb/as regeneration.
        for p in [
            midi_dir / f'{t["stem"]}.s',
            root / "build/modern/sound/songs/midi" / f'{t["stem"]}.o',
        ]:
            if p.exists():
                p.unlink()

    cfg.write_text(new_cfg)

    report = script_dir / "POP_REMASTER_4_V2_LAST_INSTALL_REPORT.txt"
    report.write_text(
        "HLW POP REMASTER 4 V2\n"
        f"Backup: {backup_dir}\n"
        f"Reference: {REFERENCE_STEM}\n"
        f"Reference cfg: {ref_opts}\n"
        f"Roles: {roles}\n"
        "Replaced only MIDI + midi.cfg for:\n"
        + "\n".join(f"- {t['label']}" for t in TRACKS)
        + "\n"
    )

    print("\nREMASTER instalado.")
    print("Nao alterei IDs, radio, song_table nem capas.")
    print("\nAgora rode:")
    print("  make -j8")

if __name__ == "__main__":
    main()
