#!/usr/bin/env python3
"""Instalador autossuficiente das seis faixas de Umineko e da estação GAMES.

Copie somente este arquivo para a raiz do pokeemerald-expansion e execute-o.
Os MIDIs estão embutidos; o script é idempotente e cria backups antes de alterar textos.
"""

from pathlib import Path
import base64
import re
import shutil
import sys
import zlib

ROOT = Path.cwd()
MID_DST = ROOT / "sound/songs/midi"
MIDI_CFG = MID_DST / "midi.cfg"
SONGS_H = ROOT / "include/constants/songs.h"
SONG_TABLE = ROOT / "sound/song_table.inc"
RADIO_C = ROOT / "src/radio.c"

SONGS = [
    ("MUS_UMINEKO_HOPE", "umineko_hope", "HOPE (UMINEKO)", 92),
    ("MUS_UMINEKO_600_MILLION", "umineko_600_million", "600 MILLION IN C SHARP MINOR (UMINEKO)", 90),
    ("MUS_UMINEKO_WINGLESS", "umineko_wingless", "WINGLESS (UMINEKO)", 90),
    ("MUS_UMINEKO_WORLDEND", "umineko_worldend", "WORLDEND (UMINEKO)", 90),
    ("MUS_UMINEKO_FAR", "umineko_far", "FAR (UMINEKO)", 90),
    ("MUS_UMINEKO_WORLDEND_DOMINATOR", "umineko_worldend_dominator", "WORLDEND DOMINATOR (UMINEKO)", 88),
]


# Os seis MIDIs estão comprimidos dentro deste próprio instalador.
# Assim basta copiar APENAS este .py para a raiz do projeto.
EMBEDDED_MIDIS = {
    "mus_umineko_600_million.mid": (
        "eNrtlt9v21QUx2+ysrGlY6BodjsWKdMkWMk63zgKaZvIaZq6cR23YW2BTUJqWlUIiQckXph4Ic4EL7zY/hv4A2B/AfCv8Heg8rnX"
        "dlLEJiQkJIT60pNzvt/z++i6e0efnQkhroqCWBBy7+jLz9GeivMr996Xsrq3GwS7o/3q7n61fx9tf3RQffAh0h2OVsT5k4WF4tLr"
        "4vxp8feCOH985dq7z3/I5eL51TcOetu7o2owGn1Qdfe3xbkl0gSvuSS4tXPgHgXu4WF1q8efuvj5vvjx2jfixgPxhfj2cdQeW5O2"
        "EFHn7PakI+5Gzrg8cUQl6p4OJl3s/WNz0heFaB18HbwN3gbvnEr4ZtQGb4N3z+opH7wP7pwaxClGrWNj0kK2x4bmOfAdZAd+B/6f"
        "44mo9pE1qSEl+ST5bHAbvEE9DYXjX8N/FXwV3AK3wOVpGX4lao1VvkLUhNdENsij/FrwWuA2ddnUU6OuGtKCb8Gz4dtICV/Cn8eV"
        "WreZk/2P63oeRNbZLgZFLGmihdSJSWALi0JPdCB5eqwTNuE3VWJ4qrAGsqEag6/saxS0phojYUtsMuiSbnz99DqLusVi1MCLUWd8"
        "ncG+Ez08+2ry8ELjqzS+quswdR15Y9ZY6jrnjRs6/wa8DX0IJ8RfilaIs6LijY20cXAV7xEDfCRkVMO/pgdpES98QIFmWuBfLqlM"
        "gf/+5uYDTu0t7C096Ho66HEaJ69Tkk9eyCfHSs/zfZ1ddrh1ebL/z5NdVM/k/DEt8ZhePzw62N0fHFZt8YsUP137RNzY5BkVcSe4"
        "HfJ6xo5XDnk9464/CHkN45ZnhnQYr4Nz83EbnJuPO34ZfgXc0HgTHquPG0E9bGi/MvZKbPtGyOrjGjwmEFtIOo9t+HQYS/h0jL2M"
        "vRJLX2rd9ixwQbwTHS+3t7Bz83ETv6bmpXHyOiX55IV80lP6PJ8XLIUe9iH2IbqP3UcOkVrH3wcfgY+QA+QA+wh8pHj4D2f43H+G"
        "U+eQutr7FnMScRd+F34Hfkc8y+p8O9PrzFnqOXfRu/g74Hxd2EcdPFzJBhy+l/1YziLUZ5NYD26yGTWBUropeEqfb0oSSfztptbo"
        "fI1KU17xFRWJC3EH6HbGP8nquZPpz+jQVB18yo/FzHERRwJ5N9BV4BKBj2YJ8lGteaqQQryBfUPzzZRPgc6sMEbHSXZFMBuhQwEO"
        "BfTAe2J6L+5j6L/ytr8TEEwIhdiF4EIYQBhA8IjoCRPd1Mvv0rrK0AfnX4Oskjt0ZOiOXj2idPSXx/BfOYZF9eTNnsSF3y4+iQ3x"
        "qxQv1JP4hCfx+8eJ71lTX9QTzmTKmSScw5RzSDzfmPKGoJdSHekhfc+Av5z0gqVpT0n4Peypf/gWP8r8qCQ9XwIIdEMHzok0Pe3i"
        "6Hhy6oCzrSnDStoU0lZ6cBO9gF5CX8r8lhOaxi/8GMAEKECsa0cunkAVCAaEIrqBXoRnaN48cR18zt/0B9NN9C44a08cCnNIlMdn"
        "S+h05qsGisk28baRbCPlZ3gHvw5+bE0XntvzetgO+YvZIJaTbfjbM/1CfXkdflp/mif3LyRb4FuqnuBN/Ka9GZCO3kZK5HHiksAl"
        "Ub5SF+kidwi8Q0AXPxe54yldrdZMV8uAfCETn0n7PB3s3mL3IvGC2xDusvsyQCUZMrmhCJ8ALOkj4UODQR2HCaGAbqa6r46lmPAh"
        "mY70MRn6mPiQoMPDfzjD5/4znEr40Fwe6eWRvvxI2y/Sp+4Pt739bA=="
    ),
    "mus_umineko_far.mid": (
        "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"
    ),
    "mus_umineko_hope.mid": (
        "eNrtWUtzW8l1bnA8nofo8WhcxgXEhTWlhSRavA+QIPiArgBBAC4gQCA4IAePAQlQJsXRTKyhyiOJSrnoCxBgJfbCwH2VKytXFski"
        "qUr8SmWXd/5ClvkDqcoqlVWUrx+XICCpxvZkXDUpr74+p885fR7dp/sCxcr+dwghXyUB8gZRi5WHH4E4Is9eecsoraUvXtko5u6k"
        "b5eukmfVr3xlKvQ6eVabekbIs/Irr537pNviOE3h/H8xCDcZfOt/QhQudxklXw9xybMKp5LTZySj/87gus3g1hMGhdtC/XiB4wyF"
        "n16i8Hr+qxTeOP9DCm9+/S8onLv+cwrTf7tJ4a0/33qF6/U/l8O/lkLv4ucLsVv5wl38rcvGqPcKDH5ywuA/HlB4/cZ/MvhTmcIb"
        "rz6lEPuTur8g+X3az30yuPibavRbv+ugur8/IJD8o9b/hyW+BInuTz/76lvryVu50sVCqbR2MX3nFnmmEH4NfeO/6TV0M/neexff"
        "21hbK61XLmrk7y6Rv3rtiLx5hTwg5MfR/dAPosA54NwZemFf/cHCGX5kX/pBhATAl8AP/FgGXx7TM5heBHQEqEJOhdwccA7o21WB"
        "6ti6KtOPgY6d4cegF4OeL+/PLwAXmJwq/OT0yL9pRqtA9f80vpCIT2XxfdFxTuov7Ofgl3n7TGAtTLRAG4xWsYB6RnEyoMgj7vDc"
        "gQjooTB8IBIh+JGHQu9AJOKRSIQ/LwKPHIhEHIhEPBSJOBCJeCQScSACEevNHYhEHIhEQC8K+djBtEjMNNd7JBIi5NSHws6BKPyB"
        "KPyEv5NxLjwUG0boTcYZPeDr/7ZxvsxP37/TDTqhHzkQ678kT/KB8Od7CtYJn24U36/Pu6FP4/udb+iXHVxRvy9pfCM/Q8JPX19l"
        "85EjEdeRiOtIyB+JPEzMR45EfEciviMeny/n6/t89Yj749PRI76v545EnELel/Pp6BGvR/TJ+D6MPRDn8cH0mF7sSNTzlFbHaH9d"
        "32/fX38+cjTN6/GEo/pEFXwu5+v5dkbxjMcrQ2+Mf8j5sQeiPqfr+XZ5nn3+ZDwjf8W5fEm+/PXnjgxe3yOeJz9fX1ydebzqA9Ff"
        "/H32m9b3aLy+c8C5z1Hfyf038puvKz/h85N1fdl6k3WKHYl6HobG77eJPC78IdeLPeH+xh6Kuvr3wgOx7z4WiHtz1B9Cp30kui/2"
        "negno/PM15H3eR38eRny8pl+MIm+/stov4/5fcnvV6N5kc+Jh4yv5/exyb452c98ejQ/3gf9uEZxhl5I83jDnyNOnzbG+rLfLyfj"
        "8tef7Ou+/UXoLTIMMfT7cwz2Y2f772keeX1H66giH+rEO0odu6/8Pi/Drjxml8fhz/v80f3g+8P5zz8ouV9+fkf3vO+fMXYPTeZ1"
        "8h4b2Zm8l1Rx3/r34uS92wKt/njuqb8/+DtTA2pfhvtrYt7vy9GjL+j++lTcX5+O3yeRT3/De+zTiXtMvENP+94XdI/58s/dY0fT"
        "X473yqcvrvfc0Rd1n437P8rH57zXxPeDv4+ez+t43SOHnPbt+3n37fnyo/nPokWfEXl/2T59vl7+PL//Pmuff7Z+6IXneHK/Pj/v"
        "553fZy+vu6APJ+e53uR5n8z/ZP4m9/1n5e/l9Hj+PtP/5/aPKvLagh319D4Y3SO8rz//vcTvMf/3A/9+8H/IkfcV7pe4L/33Qmx/"
        "4jv99PcHY+w+mvxefdn7yL9n/XvYf4dE9zXYl567r0b+jH9/PY98/Ul/fH3/Xh+hId5X0+K+FX1QvMf47y0v+u5sCX/9d4Iq8jOe"
        "Rz9O366/jgp99QV143bV5/zm8rRehqiXODfMv4/pT3unv/995c/Is1feeK+ynruTfe9ihPy9Sv76tRZ5U6E//Q02r6nmJgkMatcU"
        "s0bCg+Y12WwC16+ZVXOdTA1aYLQg0LyWwcQUBLMQnBo0wG8wxQyjN68FYegbg+I1c8ssEvMKHZ3HiGCQBXa+g8H36VR1oC8FTR3K"
        "ibhkJsjMIL0hm2nQhY2MWYCx/GbQzJN5wc8NDNAG5tMbEpNL1lUzSdqDJPhJyKUglyLmO0JBE/gyAzNCQRs0V2m4Twc1nUbxo/Cg"
        "WDcvw0e4UpHgSmBQ3G7zIN7PAMODMugyCQ2KFZnJlSrnzBKVq1yisZ0HQ+KM7QgY24PyRhYKsLyxxQzw+RmBZFDaCHGsC3xfBk6B"
        "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"
    ),
    "mus_umineko_wingless.mid": (
        "eNqVmUtzW0d2x/vyKakUV8oSwQfui6QqVkSGo0gWQF3gEqFJcSRSFBSIJk2TVs1UZaGqLKYqccqWx04MgskmG+PxMbJIZmaZxSSZ"
        "mi+UD6D8+vZponkBiMpC1ejT5/E/z+5L7R+8+Rul1JTy+Hd//+Dv/pZdqt6Nf3z07MXPnz959Sq++/n+sxdP9up/rt799fj1T36v"
        "3n0xMTE2d635L9+/m/qosbn9rB4/r9dfxk9ebKt3P1NGycefoOSjzzZR8Orzly/rjYP4L9Xvl9W/T/+TunFX/Uqpn1bfzP64qryf"
        "7r+Z+/E++4dv7vz4MKPPQVfQl6CPQZ/L6Gvs19g/YP+A/aM3iz8+UuPQ56Ar6EvQx6DPQdfyMfITP5XZl7N9xH7yQv4h8g+Rt+d2"
        "fQCOB9k+Yj/p6F+E3udfZb/Kvo8/Qt+kg9/Y6+NfRM+4gz8G58SA/j5+I9/Hb/zp419Gr8d5wPk0623W/nkZ/vIQ/ZZvEP+cxP+O"
        "4Df2HpInbWeN/Zqj/9EbH5zXHP0R9Enof5rRrd4yOMtOnm18bbzK6C9nftj4L3Ou9yH7qQH9/fhH4Jz8f8Q/j9/EeQ08l/EXoI8N"
        "if9V9WPqpR//fP1Y/MbfQfz5+AfQp6EXoI+9B//wuhodf9Mn1p7FOYg/Xz+WfmdE/GP0TTjxD6FPvQd/BM7J99T/Vf1r68fGP87V"
        "/yL78SH4Tb+swr/qxGkw/pZu8nw1fls/tzL6YP3k69/Eq/xmJsM5ev7Mot8bqKsPx2/i1Md5R/CH4Jwa0N+vn6vqP4//qvj70K9B"
        "L0AfA+dybv7n+9fOn1H9m5//Nv63Bf+Hzn+DZ4X9itNHg/Vv+9fiXwLnmIM/RN/UkPkzI/WT79N8/EPoU9A/zuh9/LMfND9X4F+5"
        "FH/T9338RejXnfmZr598/9r5Y/FH6NHxm83m8yPOH3Ge7y+bF9v/ffzvn58rnK+8d35erqur589V9W/7N1//RejXnflp7PXjb+6n"
        "/PxcYb9y6Z6199dl/bYORt+/+b5YkvmZx2/nf/5dtAzdG1L/+feD7V87P42f/TgvZXU++H4oQr8OzkKu/kfN/1Hvh/z7J4Y+4cz/"
        "ReTH3zM/L/evxTsav+mv8pub0G++Z37a+Nv+tfdXvv5HxT9fPwbH6Pt3MTf/zbnd998n+fvXxvnOFe8HG3+LP/9+WM7Vv+1fi//O"
        "FffXqPfbKPy2f0NwTg2Jf36u2vt3+Dt/1L08Ov6mjvvxN3364ffvksx/i38Wvd6Q+rHxv53FaTD+dv7n639W+jd//5p+6vevuW+u"
        "fn/m8dv+tfNzFP7LfT1Y/1fdX3b+j+pfi998jwzWv52fhUv9ZekfXj8BdPeeWs71b/5etvVj8mfny2D87f1r8X/o+9nW/1XfX/nv"
        "l3z95N+fefwf+v40+AffD/n7187PGcF/1fzM10++T+37oZCbn4bex1/I9a/Fb/Laf7/Z+/fOFe//Zfn+GlU/+fezxT9q/uTnf/77"
        "a2kE/svzcwU8K0592e+Uwf6N5fs9j9++nwtD36WD9T8q/gvQbzj4jb3R95fpx378zRzrz38bHzM3TB3c1H8Juvhz0fT/qnfj118d"
        "NJ69+Pmr+IH6r/vqP6Z/oW58qn6lXrW3q35zW6n202rUfMq6Vy0299Rpe6e62Nxhv8v5Lut+NWjuqwp8Qca3C/9uxh/Br9p16HXV"
        "nOWHz4+z50j4SKRIhDmJWCRCLXGbH7P8mIahCsMCkOIhkE6AFAqkSCDNYGDbMRDmIGkkqt1AbwOX6ugF2TMEFxCsDRGMHcFvxJDH"
        "vqgF77UPq5XmoZpkTVi99lH175tH7BvVFAvH4tLZz0Rj1K6iqQrjFvst9W27TJSox/YG+w0sGbrCNV9cm0duqb0OknX4qljW8jXk"
        "apxvw79NTBOQJZmeInq89ib0TVajxxP7Hp7O4ukUekL0qAscOziwk+GKHPveRSTq4KgjV8fhunqLgwkOVnH8cRaAXei7FynScoET"
        "eh2xOeQ+EzklERyXdQz/lvFPiX8q598G/gXiX5DFaRO9m5fiFEoJzDv+aX98/HlLnCPirET+LfZCiWcg9orY87AXYM+7qIQ9KmMP"
        "/xLin2Tyvtj33xPfafRGYn8B+79ur3C+omt7FUWrqllor2FpTVPuw3pfNRfgKWqeAjyh5rkFT2x5Qs0zB4+veeZwYFECZh3wceBL"
        "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"
    ),
    "mus_umineko_worldend.mid": (
        "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"
        "KjEPIet/CHH52niQ/wObvJrL"
    ),
    "mus_umineko_worldend_dominator.mid": (
        "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"
    ),
}


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


def radio_is_complete(text):
    required_markers = (
        "void Radio_Open(",
        "static void Task_RadioHandleInput(",
        "static void Radio_SavePersistentState(",
        "static void SpriteCB_RadioJig(",
    )
    return len(text.splitlines()) > 3000 and all(marker in text for marker in required_markers)


def recover_radio_if_needed():
    current = RADIO_C.read_text(encoding="utf-8")
    if radio_is_complete(current):
        return current

    candidates = [
        RADIO_C.with_name("radio.c.before_radio_games_umineko"),
        RADIO_C.with_name("radio.c.before_v8_2_three_playlists"),
        RADIO_C.with_name("radio.c.before_v8_1_final_save"),
        RADIO_C.with_name("radio.c.before_radio_v8"),
    ]
    for candidate in candidates:
        if candidate.exists():
            candidate_text = candidate.read_text(encoding="utf-8")
            if radio_is_complete(candidate_text):
                broken = RADIO_C.with_name("radio.c.broken_before_umineko_fix")
                if not broken.exists():
                    shutil.copyfile(RADIO_C, broken)
                    broken.touch()
                    print("[BACKUP QUEBRADO]", broken)
                shutil.copyfile(candidate, RADIO_C)
                RADIO_C.touch()
                print("[RECOVER]", candidate, "->", RADIO_C)
                return candidate_text

    die(
        "src/radio.c parece realmente incompleto e nao achei backup completo. "
        "Restaure a V8.2 antes de rodar novamente."
    )


required = [MIDI_CFG, SONGS_H, SONG_TABLE, RADIO_C]
for path in required:
    if not path.exists():
        die(f"nao achei {path}. Rode este Python na raiz do pokeemerald-expansion.")

MID_DST.mkdir(parents=True, exist_ok=True)
for macro, slug, title, volume in SONGS:
    filename = f"mus_{slug}.mid"
    encoded = EMBEDDED_MIDIS.get(filename)
    if encoded is None:
        die(f"MIDI embutido ausente: {filename}")
    try:
        data = zlib.decompress(base64.b64decode(encoded))
    except Exception as exc:
        die(f"nao consegui extrair {filename}: {exc}")
    destination = MID_DST / filename
    if destination.exists() and destination.read_bytes() == data:
        print("[OK] MIDI ja instalado:", destination)
    else:
        destination.write_bytes(data)
        destination.touch()
        print("[WRITE]", destination)

songs_original = SONGS_H.read_text(encoding="utf-8")
songs_patched, old_end_token, assigned = patch_songs_h(songs_original)
write_if_changed(SONGS_H, songs_patched)

song_table_patched = patch_song_table(SONG_TABLE.read_text(encoding="utf-8"), old_end_token)
write_if_changed(SONG_TABLE, song_table_patched)

midi_cfg_patched = patch_midi_cfg(MIDI_CFG.read_text(encoding="utf-8"))
write_if_changed(MIDI_CFG, midi_cfg_patched)

radio_original = recover_radio_if_needed()
# O charset do jogo nao possui '#'. A grafia C# quebrava o preprocessamento inteiro.
radio_original = radio_original.replace(
    "600 MILLION IN C# MINOR (UMINEKO)",
    "600 MILLION IN C SHARP MINOR (UMINEKO)",
)
radio_patched = patch_radio(radio_original)
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
print("[OK] RADIO GAMES / UMINEKO FIX instalado")
print("Estacao: GAMES")
print("Correcao charset: C SHARP MINOR (sem caractere #)")
print("Voicegroup reutilizado: _littleroot_test")
print("IDs usados:")
for macro, slug, title, volume in SONGS:
    value = assigned.get(macro)
    print(f"  {value:>4}  {macro:<38} {title}")
print()
print("Agora rode:")
print("  make -j9")
