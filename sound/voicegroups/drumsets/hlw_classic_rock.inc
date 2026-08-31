@ DirectSound percussion for Classic Rock Radio.
@
@ It deliberately starts at note 34 and ends at 85: the imported MIDI files
@ use the normal GM kit plus low kick 34 and the high 82/85 cymbal accents.
@ Every entry is a sampled drum/percussion sound; there are no PSG "beep"
@ substitutions in this kit.
voice_group hlw_classic_rock_drumset, 34
	@ 34-36: kicks.
	.rept 3
	voice_directsound_no_resample 60, 64, DirectSoundWaveData_sc88pro_rnd_kick, 255, 0, 255, 242
	.endr
	@ 37: side stick; 38: acoustic snare; 39: hand clap; 40: electric snare.
	voice_directsound_no_resample 64, 64, DirectSoundWaveData_sd90_solo_snare, 255, 180, 175, 228
	voice_directsound_no_resample 64, 64, DirectSoundWaveData_sd90_solo_snare, 255, 0, 255, 242
	voice_directsound_no_resample 64, 54, DirectSoundWaveData_sc88pro_tr909_hand_clap, 255, 255, 255, 127
	voice_directsound_no_resample 60, 64, DirectSoundWaveData_sc88pro_rnd_snare, 255, 0, 255, 242
	@ 41: floor tom; 42: closed hat; 43: high floor tom; 44: pedal hat.
	voice_directsound 64, 24, DirectSoundWaveData_sd90_ambient_tom, 255, 0, 255, 226
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_close_hihat, 255, 127, 0, 188
	voice_directsound 68, 34, DirectSoundWaveData_sd90_ambient_tom, 255, 0, 255, 226
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_close_hihat, 255, 127, 0, 188
	@ 45: low tom; 46: open hat; 47-48: mid toms; 49: crash; 50: high tom.
	voice_directsound 72, 44, DirectSoundWaveData_sd90_ambient_tom, 255, 0, 255, 226
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_open_hihat, 255, 242, 141, 0
	voice_directsound 76, 84, DirectSoundWaveData_sd90_ambient_tom, 255, 0, 255, 226
	voice_directsound 80, 94, DirectSoundWaveData_sd90_ambient_tom, 255, 0, 255, 226
	voice_directsound_no_resample 33, 89, DirectSoundWaveData_sc88pro_orchestra_cymbal_crash, 255, 235, 0, 231
	voice_directsound 84, 104, DirectSoundWaveData_sd90_ambient_tom, 255, 0, 255, 235
	@ 51-59: ride/crash/bell/tambourine/cowbell accents.
	voice_directsound_no_resample 30, 54, DirectSoundWaveData_sc88pro_orchestra_cymbal_crash, 255, 235, 0, 231
	voice_directsound_no_resample 30, 54, DirectSoundWaveData_sc88pro_orchestra_cymbal_crash, 255, 235, 0, 231
	voice_directsound_no_resample 64, 24, DirectSoundWaveData_dance_drums_ride_bell, 255, 165, 103, 231
	voice_directsound_no_resample 64, 34, DirectSoundWaveData_sc88pro_tambourine, 255, 127, 77, 204
	voice_directsound_no_resample 60, 14, DirectSoundWaveData_trinity_cymbal_crash, 255, 235, 0, 165
	voice_directsound_no_resample 64, 89, DirectSoundWaveData_sd90_cowbell, 255, 0, 255, 242
	voice_directsound_no_resample 30, 54, DirectSoundWaveData_sc88pro_orchestra_cymbal_crash, 255, 235, 0, 231
	voice_directsound_no_resample 60, 64, DirectSoundWaveData_sc88pro_rnd_snare, 255, 0, 255, 242
	voice_directsound_no_resample 30, 54, DirectSoundWaveData_sc88pro_orchestra_cymbal_crash, 255, 235, 0, 231
	@ 60-64: bongos/congas.
	voice_directsound_no_resample 64, 34, DirectSoundWaveData_sc88pro_mute_high_conga, 255, 0, 255, 0
	voice_directsound_no_resample 64, 34, DirectSoundWaveData_sc88pro_open_low_conga, 255, 0, 255, 0
	voice_directsound_no_resample 64, 34, DirectSoundWaveData_sc88pro_mute_high_conga, 255, 0, 255, 0
	voice_directsound_no_resample 64, 34, DirectSoundWaveData_sc88pro_open_low_conga, 255, 0, 255, 0
	voice_directsound_no_resample 64, 90, DirectSoundWaveData_sc88pro_open_low_conga, 255, 0, 255, 0
	@ 65-70: timbales/agogo/shakers.
	voice_directsound 68, 34, DirectSoundWaveData_sd90_ambient_tom, 255, 0, 255, 226
	voice_directsound 64, 24, DirectSoundWaveData_sd90_ambient_tom, 255, 0, 255, 226
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_close_hihat, 255, 127, 0, 188
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_open_hihat, 255, 242, 141, 0
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_close_hihat, 255, 127, 0, 188
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_close_hihat, 255, 127, 0, 188
	@ 71-77: whistles/guiro/claves/wood blocks.
	.rept 2
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_open_hihat, 255, 242, 141, 0
	.endr
	.rept 2
	voice_directsound_no_resample 60, 64, DirectSoundWaveData_sc88pro_rnd_snare, 255, 0, 255, 242
	.endr
	.rept 3
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_close_hihat, 255, 127, 0, 188
	.endr
	@ 78-79: cuica; 80-81: triangles.
	.rept 2
	voice_directsound_no_resample 64, 34, DirectSoundWaveData_sc88pro_tambourine, 255, 127, 77, 204
	.endr
	voice_directsound_no_resample 64, 39, DirectSoundWaveData_sd90_open_triangle, 255, 242, 103, 188
	voice_directsound_no_resample 64, 79, DirectSoundWaveData_sd90_open_triangle, 255, 242, 103, 188
	@ 82-85: high cymbal accents used by High Hopes.
	.rept 4
	voice_directsound_no_resample 30, 54, DirectSoundWaveData_sc88pro_orchestra_cymbal_crash, 255, 235, 0, 231
	.endr
