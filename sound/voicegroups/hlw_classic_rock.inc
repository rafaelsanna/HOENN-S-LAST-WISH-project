@ General-MIDI voice layout for Hoenn's Lost Wish Classic Rock Radio.
@
@ The importer preserves each source program number (apart from melodic
@ program 0, which becomes piano voice 1), so this group deliberately covers
@ all 128 voice slots.  Unused GM slots fall back to a quiet PSG tone instead
@ of indexing outside the group; every slot actually used by the twelve songs
@ below has a matching DirectSound/keysplit instrument.
voice_group hlw_classic_rock
	@ 0: channel-10 percussion only.
	voice_keysplit_all voicegroup_hlw_classic_rock_drumset
	@ 1-3: acoustic/bright/electric-grand piano.
	voice_keysplit voicegroup_piano_keysplit, keysplit_piano
	.rept 2
	voice_keysplit voicegroup_piano_keysplit, keysplit_piano
	.endr
	@ 4-5: electric pianos.
	.rept 2
	voice_keysplit voicegroup_piano_keysplit, keysplit_piano
	.endr
	@ 6-9: unused keyboards.
	.rept 4
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	.endr
	@ 10: music box, 11: vibraphone.
	voice_directsound 60, 0, DirectSoundWaveData_unknown_bell, 255, 165, 51, 242
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_glockenspiel, 255, 165, 51, 242
	.rept 2 @ 12-13
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	.endr
	@ 14: tubular bell.
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_tubular_bell, 255, 165, 90, 216
	@ 15: chromatic placeholder.
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	@ 16-18: drawbar/church organs.
	.rept 3
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_organ2, 255, 0, 255, 127
	.endr
	.rept 3 @ 19-21
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	.endr
	@ 22: harmonica (accordion is the closest real reed sample already in ROM).
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_accordion, 255, 0, 255, 165
	@ 23: tango accordion/unused.
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	@ 24-27: nylon, steel, jazz and clean guitar.
	.rept 4
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_nylon_str_guitar, 255, 180, 128, 120
	.endr
	@ 28: muted guitar; 29: overdrive; 30: distortion.
	voice_directsound 60, 0, DirectSoundWaveData_sd90_classical_overdrive_guitar, 255, 0, 215, 105
	voice_directsound 60, 0, DirectSoundWaveData_sd90_classical_overdrive_guitar, 255, 0, 230, 105
	voice_directsound 60, 0, DirectSoundWaveData_sd90_classical_distortion_guitar_high, 255, 0, 245, 115
	@ 31: guitar harmonic/unused.
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	@ 32-36: acoustic, fingered, picked, fretless and slap bass.
	voice_directsound 60, 0, DirectSoundWaveData_acoustic_bass, 255, 253, 0, 149
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_fingered_bass, 255, 253, 0, 149
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_fingered_bass, 255, 253, 0, 149
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_fretless_bass, 255, 253, 0, 188
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_slap_bass, 255, 235, 128, 99
	.rept 3 @ 37-39
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	.endr
	@ 40: violin, 41: viola.
	.rept 2
	voice_keysplit voicegroup_strings_keysplit, keysplit_strings
	.endr
	.rept 5 @ 42-46
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	.endr
	@ 47: timpani.
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_timpani, 255, 0, 180, 246
	@ 48-51: string ensemble variations.
	.rept 4
	voice_keysplit voicegroup_strings_keysplit, keysplit_strings
	.endr
	@ 52-53: choir voices.
	.rept 2
	voice_directsound 60, 0, DirectSoundWaveData_classical_choir_voice_ahhs, 255, 0, 230, 150
	.endr
	.rept 2 @ 54-55
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	.endr
	@ 56: trumpet; 57-59: brass placeholders; 60: French horn.
	voice_keysplit voicegroup_trumpet_keysplit, keysplit_trumpet
	.rept 3
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	.endr
	voice_keysplit voicegroup_french_horn_keysplit, keysplit_french_horn
	.rept 3 @ 61-63
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	.endr
	@ 64-66: soprano, alto and tenor saxophone.
	.rept 3
	voice_directsound 60, 0, DirectSoundWaveData_dp_altosax_c3_16, 255, 0, 255, 127
	.endr
	@ 67: baritone sax placeholder, 68: oboe.
	voice_directsound 60, 0, DirectSoundWaveData_dp_altosax_c3_16, 255, 0, 255, 127
	voice_directsound 60, 0, DirectSoundWaveData_sd90_classical_oboe, 255, 165, 154, 127
	.rept 2 @ 69-70
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	.endr
	@ 71: clarinet, 72: reed placeholder, 73: flute.
	voice_directsound 60, 0, DirectSoundWaveData_clarinet, 255, 0, 255, 127
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	voice_directsound 60, 0, DirectSoundWaveData_sc88pro_flute, 255, 0, 255, 165
	.rept 7 @ 74-80
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	.endr
	@ 81-82: synth leads used by Like a Rolling Stone.
	.rept 2
	voice_programmable_wave_alt 60, 0, ProgrammableWaveData_15, 0, 7, 15, 0
	.endr
	.rept 6 @ 83-88
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	.endr
	@ 89: warm pad.
	voice_keysplit voicegroup_strings_keysplit, keysplit_strings
	.rept 5 @ 90-94
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	.endr
	@ 95: sweep pad.
	voice_keysplit voicegroup_strings_keysplit, keysplit_strings
	.rept 11 @ 96-106
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	.endr
	@ 107: koto/shakuhachi fallback.
	voice_directsound 60, 0, DirectSoundWaveData_unknown_koto_high, 255, 0, 206, 242
	.rept 9 @ 108-116
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	.endr
	@ 117: melodic tom.
	voice_directsound 60, 0, DirectSoundWaveData_sd90_ambient_tom, 255, 0, 255, 226
	.rept 2 @ 118-119
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	.endr
	@ 120: fret noise; 121-127: safe fallbacks.
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	.rept 7
	voice_square_1 60, 0, 0, 2, 0, 0, 15, 0
	.endr
