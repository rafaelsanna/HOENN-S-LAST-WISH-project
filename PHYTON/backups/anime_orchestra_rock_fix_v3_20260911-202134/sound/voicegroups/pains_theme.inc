voice_group pains_theme
    voice_directsound 60, 0, DirectSoundWaveData_sc88pro_synth_bass, 255, 252, 0, 127 @ 0 - bass
    @ The accompaniment track is the piano part of Girei.  Use the shared
    @ multi-sample piano rather than the old square-wave placeholder so its
    @ chords stay warm and audible across its full range.
    voice_keysplit voicegroup_piano_keysplit, keysplit_piano @ 1 - piano accompaniment
    voice_directsound 60, 0, DirectSoundWaveData_clarinet, 255, 0, 255, 127 @ 2 - lead
