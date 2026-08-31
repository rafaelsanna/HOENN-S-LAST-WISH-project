@ General MIDI-compatible DirectSound drumkit for the Rock/Metal radio station.
@
@ Keep this indexed from note 35: imported General MIDI drum tracks commonly
@ use both 35 (acoustic bass drum) and 36 (bass drum). The old RS kit starts
@ at 36 and also maps several common cymbal notes to PSG square waves.
voice_group hlw_rock_metal_drumset, 35
	@ 35 Acoustic Bass Drum
	voice_directsound_no_resample 60, 64, DirectSoundWaveData_sc88pro_rnd_kick, 255, 0, 255, 242
	@ 36 Bass Drum 1
	voice_directsound_no_resample 60, 64, DirectSoundWaveData_sc88pro_rnd_kick, 255, 0, 255, 242
	@ 37 Side Stick
	voice_directsound_no_resample 64, 64, DirectSoundWaveData_sd90_solo_snare, 255, 180, 175, 228
	@ 38 Acoustic Snare
	voice_directsound_no_resample 64, 64, DirectSoundWaveData_sd90_solo_snare, 255, 0, 255, 242
	@ 39 Hand Clap
	voice_directsound_no_resample 64, 54, DirectSoundWaveData_sc88pro_tr909_hand_clap, 255, 255, 255, 127
	@ 40 Electric Snare
	voice_directsound_no_resample 60, 64, DirectSoundWaveData_sc88pro_rnd_snare, 255, 0, 255, 242
	@ 41 Low Floor Tom
	voice_directsound 64, 24, DirectSoundWaveData_sd90_ambient_tom, 255, 0, 255, 226
	@ 42 Closed Hi-Hat
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_close_hihat, 255, 127, 0, 188
	@ 43 High Floor Tom
	voice_directsound 68, 34, DirectSoundWaveData_sd90_ambient_tom, 255, 0, 255, 226
	@ 44 Pedal Hi-Hat
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_close_hihat, 255, 127, 0, 188
	@ 45 Low Tom
	voice_directsound 72, 44, DirectSoundWaveData_sd90_ambient_tom, 255, 0, 255, 226
	@ 46 Open Hi-Hat
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_open_hihat, 255, 242, 141, 0
	@ 47 Low-Mid Tom
	voice_directsound 76, 84, DirectSoundWaveData_sd90_ambient_tom, 255, 0, 255, 226
	@ 48 Hi-Mid Tom
	voice_directsound 80, 94, DirectSoundWaveData_sd90_ambient_tom, 255, 0, 255, 226
	@ 49 Crash Cymbal 1
	voice_directsound_no_resample 33, 89, DirectSoundWaveData_sc88pro_orchestra_cymbal_crash, 255, 235, 0, 231
	@ 50 High Tom
	voice_directsound 84, 104, DirectSoundWaveData_sd90_ambient_tom, 255, 0, 255, 235
	@ 51 Ride Cymbal 1
	voice_directsound_no_resample 30, 54, DirectSoundWaveData_sc88pro_orchestra_cymbal_crash, 255, 235, 0, 231
	@ 52 Chinese Cymbal
	voice_directsound_no_resample 30, 54, DirectSoundWaveData_sc88pro_orchestra_cymbal_crash, 255, 235, 0, 231
	@ 53 Ride Bell
	voice_directsound_no_resample 64, 24, DirectSoundWaveData_dance_drums_ride_bell, 255, 165, 103, 231
	@ 54 Tambourine
	voice_directsound_no_resample 64, 34, DirectSoundWaveData_sc88pro_tambourine, 255, 127, 77, 204
	@ 55 Splash Cymbal
	voice_directsound_no_resample 60, 14, DirectSoundWaveData_trinity_cymbal_crash, 255, 235, 0, 165
	@ 56 Cowbell
	voice_directsound_no_resample 64, 89, DirectSoundWaveData_sd90_cowbell, 255, 0, 255, 242
	@ 57 Crash Cymbal 2
	voice_directsound_no_resample 30, 54, DirectSoundWaveData_sc88pro_orchestra_cymbal_crash, 255, 235, 0, 231
	@ 58 Vibraslap
	voice_directsound_no_resample 60, 64, DirectSoundWaveData_sc88pro_rnd_snare, 255, 0, 255, 242
	@ 59 Ride Cymbal 2
	voice_directsound_no_resample 30, 54, DirectSoundWaveData_sc88pro_orchestra_cymbal_crash, 255, 235, 0, 231
	@ 60 Hi Bongo
	voice_directsound_no_resample 64, 34, DirectSoundWaveData_sc88pro_mute_high_conga, 255, 0, 255, 0
	@ 61 Low Bongo
	voice_directsound_no_resample 64, 34, DirectSoundWaveData_sc88pro_open_low_conga, 255, 0, 255, 0
	@ 62 Mute Hi Conga
	voice_directsound_no_resample 64, 34, DirectSoundWaveData_sc88pro_mute_high_conga, 255, 0, 255, 0
	@ 63 Open Hi Conga
	voice_directsound_no_resample 64, 34, DirectSoundWaveData_sc88pro_open_low_conga, 255, 0, 255, 0
	@ 64 Low Conga
	voice_directsound_no_resample 64, 90, DirectSoundWaveData_sc88pro_open_low_conga, 255, 0, 255, 0
	@ 65 High Timbale
	voice_directsound 68, 34, DirectSoundWaveData_sd90_ambient_tom, 255, 0, 255, 226
	@ 66 Low Timbale
	voice_directsound 64, 24, DirectSoundWaveData_sd90_ambient_tom, 255, 0, 255, 226
	@ 67 High Agogo
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_close_hihat, 255, 127, 0, 188
	@ 68 Low Agogo
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_open_hihat, 255, 242, 141, 0
	@ 69 Cabasa
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_close_hihat, 255, 127, 0, 188
	@ 70 Maracas
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_close_hihat, 255, 127, 0, 188
	@ 71 Short Whistle
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_open_hihat, 255, 242, 141, 0
	@ 72 Long Whistle
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_open_hihat, 255, 242, 141, 0
	@ 73 Short Guiro
	voice_directsound_no_resample 60, 64, DirectSoundWaveData_sc88pro_rnd_snare, 255, 0, 255, 242
	@ 74 Long Guiro
	voice_directsound_no_resample 60, 64, DirectSoundWaveData_sc88pro_rnd_snare, 255, 0, 255, 242
	@ 75 Claves
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_close_hihat, 255, 127, 0, 188
	@ 76 Hi Wood Block
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_close_hihat, 255, 127, 0, 188
	@ 77 Low Wood Block
	voice_directsound_no_resample 60, 79, DirectSoundWaveData_unknown_close_hihat, 255, 127, 0, 188
	@ 78 Mute Cuica
	voice_directsound_no_resample 64, 34, DirectSoundWaveData_sc88pro_tambourine, 255, 127, 77, 204
	@ 79 Open Cuica
	voice_directsound_no_resample 64, 34, DirectSoundWaveData_sc88pro_tambourine, 255, 127, 77, 204
	@ 80 Mute Triangle
	voice_directsound_no_resample 64, 39, DirectSoundWaveData_sd90_open_triangle, 255, 242, 103, 188
	@ 81 Open Triangle
	voice_directsound_no_resample 64, 79, DirectSoundWaveData_sd90_open_triangle, 255, 242, 103, 188
