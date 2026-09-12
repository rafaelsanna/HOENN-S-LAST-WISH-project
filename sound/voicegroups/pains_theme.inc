voice_group pains_theme
    voice_keysplit voicegroup_piano_keysplit, keysplit_piano @ 0 - HLW piano
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_string_ensemble_72, 255, 0, 240, 180 @ 1 - HLW violin
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_string_ensemble_72, 255, 0, 255, 165 @ 2 - HLW strings
    @ The accompaniment track is the piano part of Girei.  Use the shared
    @ multi-sample piano rather than the old square-wave placeholder so its
    @ chords stay warm and audible across its full range.
