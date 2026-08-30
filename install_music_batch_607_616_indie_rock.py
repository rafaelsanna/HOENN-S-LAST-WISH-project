#!/usr/bin/env python3
from pathlib import Path
import re, shutil

ROOT=Path.cwd()
ANCHOR_CONST="MUS_THEME_OF_PRONTERA"
ANCHOR_ID=606
ANCHOR_SLUG="theme_of_prontera"
SONGS=[
    ("MUS_BIGMOUTH_STRIKES_AGAIN", 607, "bigmouth_strikes_again", "mus_bigmouth_strikes_again_gba_RADIO_FINAL_LOOP.mid", "sax", True),
    ("MUS_BOY_WITH_THE_THORN", 608, "boy_with_the_thorn", "mus_boy_with_the_thorn_gba_RADIO_FINAL_LOOP.mid", "sax", True),
    ("MUS_SOMEDAY", 609, "someday", "mus_someday_gba_RADIO_FINAL_LOOP.mid", "guitar", True),
    ("MUS_REPTILIA", 610, "reptilia", "mus_reptilia_gba_RADIO_FINAL_LOOP.mid", "guitar", True),
    ("MUS_HARD_TO_EXPLAIN", 611, "hard_to_explain", "mus_hard_to_explain_gba_RADIO_FINAL_LOOP.mid", "guitar", True),
    ("MUS_ARABELLA", 612, "arabella", "mus_arabella_gba_RADIO_FINAL_LOOP.mid", "guitar", True),
    ("MUS_DO_I_WANNA_KNOW", 613, "do_i_wanna_know", "mus_do_i_wanna_know_gba_RADIO_FINAL_LOOP.mid", "guitar", True),
    ("MUS_NO_1_PARTY_ANTHEM", 614, "no_1_party_anthem", "mus_no_1_party_anthem_gba_RADIO_FINAL_LOOP.mid", "sax", True),
    ("MUS_FADE_INTO_YOU", 615, "fade_into_you", "mus_fade_into_you_gba_RADIO_FINAL_LOOP.mid", "sax", True),
    ("MUS_WHEN_THE_SUN_HITS", 616, "when_the_sun_hits", "mus_when_the_sun_hits_gba_RADIO_FINAL_LOOP.mid", "guitar", False),
]
MIDI_DIR=ROOT/"sound/songs/midi"
IMPORT_ROOT=ROOT/"music_to_import"
VG_DIR=ROOT/"sound/voicegroups"

def fail(s): raise SystemExit("\nERRO: "+s)
def rm(p):
    p=Path(p)
    if p.exists(): p.unlink(); print("[REMOVE]",p)

sources={}
for const,sid,slug,fn,lead_sample,has_drums in SONGS:
    folder=IMPORT_ROOT/slug; folder.mkdir(parents=True,exist_ok=True)
    p=folder/fn
    if not p.exists() and (ROOT/fn).exists():
        shutil.move(str(ROOT/fn),str(p))
    if not p.exists(): fail(f"Não achei:\n{p}")
    sources[slug]=p
    print("[FOUND]",sid,const,p)

dd=ROOT/"sound/direct_sound_data.inc"
if not dd.exists(): fail("sound/direct_sound_data.inc não encontrado")
dt=dd.read_text(errors="ignore")
for sym in [
"DirectSoundWaveData_sc88pro_fingered_bass",
"DirectSoundWaveData_sd90_classical_distortion_guitar_high",
"DirectSoundWaveData_dp_altosax_c3_16"]:
    if not re.search(rf'(?m)^\s*{re.escape(sym)}::?',dt): fail("Sample não encontrado: "+sym)

for const,sid,slug,fn,lead_sample,has_drums in SONGS:
    rm(MIDI_DIR/f"mus_{slug}.s"); rm(ROOT/f"build/modern/sound/songs/midi/mus_{slug}.o"); rm(ROOT/f"build/modern/sound/songs/midi/mus_{slug}.d")
    shutil.copy2(sources[slug],MIDI_DIR/f"mus_{slug}.mid")
    lead=("DirectSoundWaveData_dp_altosax_c3_16" if lead_sample=="sax"
          else "DirectSoundWaveData_sd90_classical_distortion_guitar_high")
    lines=[
      f"voice_group {slug}",
      "    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_fingered_bass, 255, 252, 0, 127 @ 0 - bass",
      "    voice_directsound 60, 0, DirectSoundWaveData_sd90_classical_distortion_guitar_high, 255, 204, 0, 127 @ 1 - rhythm guitar",
      f"    voice_directsound 60, 0, {lead}, 255, 0, 255, 127 @ 2 - lead",
    ]
    if has_drums: lines.append("    voice_keysplit_all voicegroup_rs_drumset")
    (VG_DIR/f"{slug}.inc").write_text("\n".join(lines)+"\n")

vg=ROOT/"sound/voice_groups.inc"; txt=vg.read_text()
for _,_,slug,_,_,_ in SONGS:
    txt=re.sub(rf'^[ \t]*\.include[ \t]+"sound/voicegroups/{re.escape(slug)}\.inc"[^\n]*\n?','',txt,flags=re.M)
if not txt.endswith("\n"):txt+="\n"
for _,_,slug,_,_,_ in SONGS: txt+=f'.include "sound/voicegroups/{slug}.inc"\n'
vg.write_text(txt)

cfg=MIDI_DIR/"midi.cfg"; txt=cfg.read_text()
for _,_,slug,_,_,_ in SONGS: txt=re.sub(rf'^mus_{re.escape(slug)}\.mid:.*\n?','',txt,flags=re.M)
if not txt.endswith("\n"):txt+="\n"
for _,_,slug,_,_,_ in SONGS: txt+=f"mus_{slug}.mid: -E -R50 -G_{slug} -V100\n"
cfg.write_text(txt)

sh=ROOT/"include/constants/songs.h"; txt=sh.read_text()
for const,_,_,_,_,_ in SONGS:
    txt=re.sub(rf'^[ \t]*#define[ \t]+{re.escape(const)}[ \t]+\d+[^\n]*\n?','',txt,flags=re.M)
a=re.search(r'^\s*#define\s+MUS_THEME_OF_PRONTERA\s+606\b[^\n]*',txt,re.M)
if not a: fail("Não achei MUS_THEME_OF_PRONTERA = 606")
block="\n".join(f"#define {const:<40} {sid}" for const,sid,_,_,_,_ in SONGS)
txt=txt[:a.end()]+"\n"+block+txt[a.end():]
txt=re.sub(r'^\s*#define\s+END_MUS\b[^\n]*',"#define END_MUS MUS_WHEN_THE_SUN_HITS",txt,count=1,flags=re.M)
sh.write_text(txt)

st=ROOT/"sound/song_table.inc"; txt=st.read_text()
for _,_,slug,_,_,_ in SONGS:
    txt=re.sub(rf'^\s*song\s+mus_{re.escape(slug)}\s*,[^\n]*\n?','',txt,flags=re.M)
a=re.search(r'^(?P<i>[ \t]*)song\s+mus_theme_of_prontera\s*,\s*0\s*,\s*0[^\n]*',txt,re.M)
if not a: fail("Não achei song mus_theme_of_prontera, 0, 0")
i=a.group("i"); block="\n".join(i+f"song mus_{slug}, 0, 0" for _,_,slug,_,_,_ in SONGS)
txt=txt[:a.end()]+"\n"+block+txt[a.end():]; st.write_text(txt)

dbg=ROOT/"src/debug.c"
if dbg.exists():
    txt=dbg.read_text()
    for const,_,_,_,_,_ in SONGS: txt=re.sub(rf'^[ \t]*X\({re.escape(const)}\)[^\n]*\n?','',txt,flags=re.M)
    a=re.search(r'^(?P<i>[ \t]*)X\(MUS_THEME_OF_PRONTERA\)[ \t]*(?:\\)?[ \t]*$',txt,re.M)
    if a:
        i=a.group("i"); lines=[i+"X(MUS_THEME_OF_PRONTERA) \\"]
        for n,(const,_,_,_,_,_) in enumerate(SONGS):
            lines.append(i+f"X({const})"+(" \\" if n<len(SONGS)-1 else ""))
        txt=txt[:a.start()]+"\n".join(lines)+txt[a.end():]; dbg.write_text(txt)

print("\n[OK] 607 -> 616 instaladas")
print("END_MUS = MUS_WHEN_THE_SUN_HITS")
print("Agora copie o radio.c fornecido para src/radio.c e rode make -j8")
