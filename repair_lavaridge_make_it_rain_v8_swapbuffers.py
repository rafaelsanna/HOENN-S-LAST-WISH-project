#!/usr/bin/env python3
from pathlib import Path
import re
import shutil
import sys

repo = Path.cwd()
if not (repo / ".git").exists():
    candidate = Path.home() / "pokeemerald-expansion"
    if (candidate / ".git").exists():
        repo = candidate
    else:
        sys.exit("ERRO: rode dentro de ~/pokeemerald-expansion")

pory_path = repo / "data/maps/LavaridgeTown/scripts.pory"
c_path = repo / "src/field_specials.c"
specials_path = repo / "data/specials.inc"

for p in (pory_path, c_path, specials_path):
    if not p.exists():
        sys.exit(f"ERRO: nao achei {p.relative_to(repo)}")

def backup(path):
    dst = path.with_name(path.name + ".bak_make_it_rain_v8_swapbuffers")
    if not dst.exists():
        shutil.copy2(path, dst)
        print("Backup:", dst.relative_to(repo))

for p in (pory_path, c_path, specials_path):
    backup(p)

# ============================================================
# 1) REMOVE the V7 bright-palette workaround.
#    It is no longer needed: the real bug is the SAME-SCREEN fade.
# ============================================================
c_text = c_path.read_text(errors="replace")

marker_start = "#define tLavaridgeRainMapGroup data[0]"
marker_end = "#undef tLavaridgeRainMapNum"

start = c_text.find(marker_start)
if start >= 0:
    end = c_text.find(marker_end, start)
    if end < 0:
        sys.exit("ERRO: achei inicio do bloco V7, mas nao o final.")
    end = c_text.find("\n", end)
    if end < 0:
        end = len(c_text)
    else:
        end += 1
    c_text = c_text[:start] + c_text[end:]
    print("field_specials.c: workaround V7 de palette removido.")
else:
    print("field_specials.c: workaround V7 nao estava presente.")

c_path.write_text(c_text)

specials = specials_path.read_text(errors="replace")
specials, removed = re.subn(
    r'^[ \t]*def_special[ \t]+Special_StartLavaridgeMakeItRainBrightPalette[ \t]*\n?',
    '',
    specials,
    flags=re.M,
)
specials_path.write_text(specials)
if removed:
    print("data/specials.inc: registro V7 removido.")

# ============================================================
# 2) Change ONLY the two fades inside MakeItRain.
#
# IMPORTANT:
# field_weather.c itself says the regular FadeScreen path copies
# gPlttBufferFaded -> gPlttBufferUnfaded and is NOT appropriate when
# fading back into the same screen. The engine tells us to use
# fadescreenswapbuffers for exactly this case.
#
# With WEATHER_RAIN active, the old fade made the already-rain-darkened
# palette become the new "unfaded" baseline, then rain shade was applied
# again on fade-in. Result: the map became absurdly dark.
# ============================================================
pory = pory_path.read_text(errors="replace")

raw_open = pory.find("raw `")
raw_close = pory.rfind("`")
if raw_open < 0 or raw_close <= raw_open:
    sys.exit("ERRO: nao achei raw block em LavaridgeTown/scripts.pory")

prefix = pory[:raw_open + len("raw `")]
body = pory[raw_open + len("raw `"):raw_close]
suffix = pory[raw_close:]

event_start = body.find("LavaridgeTown_EventScript_MakeItRain::")
event_end = body.find("LavaridgeTown_EventScript_MakeItRainNoRainmaker::", event_start)

if event_start < 0 or event_end < 0:
    sys.exit("ERRO: nao achei bloco principal MakeItRain.")

block = body[event_start:event_end]

# Remove any calls left from V7.
block = re.sub(
    r'^[ \t]*special Special_StartLavaridgeMakeItRainBrightPalette[ \t]*\n',
    '',
    block,
    flags=re.M,
)

# Accept either V4/V5/V6 fadescreenspeed or already-patched swapbuffers.
to_old = "\tfadescreenspeed FADE_TO_BLACK, 8"
from_old = "\tfadescreenspeed FADE_FROM_BLACK, 8"
to_new = "\tfadescreenswapbuffers FADE_TO_BLACK"
from_new = "\tfadescreenswapbuffers FADE_FROM_BLACK"

if to_old in block:
    block = block.replace(to_old, to_new, 1)
    print("MakeItRain: FADE_TO_BLACK -> fadescreenswapbuffers.")
elif to_new in block:
    print("MakeItRain: FADE_TO_BLACK ja usa swapbuffers.")
else:
    sys.exit("ERRO: nao achei o fade-to-black do MakeItRain.")

if from_old in block:
    block = block.replace(from_old, from_new, 1)
    print("MakeItRain: FADE_FROM_BLACK -> fadescreenswapbuffers.")
elif from_new in block:
    print("MakeItRain: FADE_FROM_BLACK ja usa swapbuffers.")
else:
    sys.exit("ERRO: nao achei o fade-from-black do MakeItRain.")

body = body[:event_start] + block + body[event_end:]
pory_path.write_text(prefix + body + suffix)

# ============================================================
# 3) Force only relevant rebuilds.
# ============================================================
for rel in (
    "build/modern/src/field_specials.o",
    "build/modern/src/field_specials.d",
    "build/modern/data/event_scripts.o",
    "build/modern/data/event_scripts.d",
):
    path = repo / rel
    if path.exists():
        path.unlink()
        print("Rebuild:", rel)

print()
print("============================================================")
print("MAKE IT RAIN V8 - SWAP BUFFERS aplicado.")
print("============================================================")
print("Mantido:")
print("  - checker Drizzle/Rain Dance que ja funciona")
print("  - WEATHER_RAIN normal")
print("  - V6 live-hide dos NPCs")
print("  - FLAG_MAKE_IT_RAIN")
print("  - dialogos")
print()
print("Alterado SOMENTE no evento:")
print("  fadescreenspeed FADE_TO_BLACK, 8")
print("    -> fadescreenswapbuffers FADE_TO_BLACK")
print()
print("  fadescreenspeed FADE_FROM_BLACK, 8")
print("    -> fadescreenswapbuffers FADE_FROM_BLACK")
print()
print("O workaround V7 de palette foi removido para nao brigar com o engine.")
print()
print("Agora rode:")
print("  make -j8")
