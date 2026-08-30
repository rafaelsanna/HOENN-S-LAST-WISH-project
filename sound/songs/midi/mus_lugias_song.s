	.include "MPlayDef.s"

	.equ	mus_lugias_song_grp, voicegroup_lugias_song
	.equ	mus_lugias_song_pri, 0
	.equ	mus_lugias_song_rev, reverb_set+50
	.equ	mus_lugias_song_mvl, 100
	.equ	mus_lugias_song_key, 0
	.equ	mus_lugias_song_tbs, 1
	.equ	mus_lugias_song_exg, 1
	.equ	mus_lugias_song_cmp, 1

	.section .rodata
	.global	mus_lugias_song
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_lugias_song_1:
	.byte	KEYSH , mus_lugias_song_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*mus_lugias_song_tbs/2
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_lugias_song_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N92   , En2 , v100, gtp3
	.byte	W48
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W09
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W07
@ 001   ----------------------------------------
mus_lugias_song_1_001:
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W06
	.byte		N88   , Bn1 , v100, gtp1
	.byte	W42
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W09
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W07
	.byte	PEND
@ 002   ----------------------------------------
mus_lugias_song_1_002:
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W06
	.byte		N88   , Gn1 , v100, gtp1
	.byte	W90
	.byte	PEND
@ 003   ----------------------------------------
	.byte		N92   , Bn1 , v100, gtp3
	.byte	W96
@ 004   ----------------------------------------
	.byte		        En2 , v100, gtp3
	.byte	W96
@ 005   ----------------------------------------
mus_lugias_song_1_005:
	.byte		N92   , An1 , v100, gtp3
	.byte	W48
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W09
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W07
	.byte	PEND
@ 006   ----------------------------------------
mus_lugias_song_1_006:
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte		N92   , En2 , v100, gtp3
	.byte	W96
	.byte	PEND
@ 007   ----------------------------------------
mus_lugias_song_1_007:
	.byte		N92   , Fs1 , v100, gtp3
	.byte	W48
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W09
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W07
	.byte	PEND
mus_lugias_song_1_B1:
@ 008   ----------------------------------------
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte		N92   , En2 , v100, gtp3
	.byte	W48
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W09
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W08
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	W07
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_lugias_song_1_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_lugias_song_1_002
@ 011   ----------------------------------------
	.byte		N92   , An1 , v100, gtp3
	.byte	W96
@ 012   ----------------------------------------
	.byte		        En2 , v100, gtp3
	.byte	W96
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_lugias_song_1_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_lugias_song_1_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_lugias_song_1_007
	.byte	GOTO
	 .word	mus_lugias_song_1_B1
mus_lugias_song_1_B2:
@ 016   ----------------------------------------
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_lugias_song_2:
	.byte	KEYSH , mus_lugias_song_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 42*mus_lugias_song_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N23   , En3 , v052
	.byte	W24
	.byte		N22   , Gn3 , v048
	.byte	W24
	.byte		N28   , Fs3 , v052
	.byte	W30
	.byte		N10   , Dn3 , v048
	.byte	W11
	.byte		N11   , En3 
	.byte	W07
@ 001   ----------------------------------------
mus_lugias_song_2_001:
	.byte	W06
	.byte		N68   , Bn2 , v048, gtp2
	.byte	W72
	.byte		N23   , En3 
	.byte	W18
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W06
	.byte		N22   , Gn3 
	.byte	W24
	.byte		N28   , Fs3 
	.byte	W30
	.byte		N10   , Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 003   ----------------------------------------
	.byte		N92   , Bn3 , v048, gtp2
	.byte	W96
@ 004   ----------------------------------------
	.byte		N23   , En4 , v052
	.byte	W24
	.byte		N16   , Dn4 , v048
	.byte	W18
	.byte		N04   , En4 
	.byte	W06
	.byte		N22   , Bn3 , v052
	.byte	W24
	.byte		N16   , Gn3 , v048
	.byte	W17
	.byte		N04   , Bn3 
	.byte	W07
@ 005   ----------------------------------------
mus_lugias_song_2_005:
	.byte		N23   , An3 , v052
	.byte	W24
	.byte		N68   , En3 , v048, gtp2
	.byte	W72
	.byte	PEND
@ 006   ----------------------------------------
mus_lugias_song_2_006:
	.byte		N23   , En3 , v052
	.byte	W24
	.byte		N22   , Bn3 , v048
	.byte	W24
	.byte		        An3 , v052
	.byte	W24
	.byte		        Dn3 , v048
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
	.byte		N11   , Fs3 , v052
	.byte	W12
	.byte		N16   , En3 , v048
	.byte	W18
	.byte		N04   , Dn3 
	.byte	W06
	.byte		N44   , En3 , v048, gtp2
	.byte	W60
mus_lugias_song_2_B1:
@ 008   ----------------------------------------
	.byte		N23   , En3 , v052
	.byte	W24
	.byte		N22   , Gn3 , v048
	.byte	W24
	.byte		N28   , Fs3 , v052
	.byte	W30
	.byte		N10   , Dn3 , v048
	.byte	W11
	.byte		N11   , En3 
	.byte	W07
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_lugias_song_2_001
@ 010   ----------------------------------------
	.byte	W06
	.byte		N22   , Gn3 , v048
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N10   
	.byte	W11
	.byte		N04   , Bn3 
	.byte	W07
@ 011   ----------------------------------------
	.byte		N05   , An3 , v052
	.byte	W06
	.byte		N68   , Bn3 , v048, gtp2
	.byte	W90
@ 012   ----------------------------------------
	.byte		N23   , En4 , v052
	.byte	W24
	.byte		N16   , Dn4 , v048
	.byte	W15
	.byte		N02   
	.byte	W03
	.byte		N04   , En4 
	.byte	W06
	.byte		N22   , Bn3 , v052
	.byte	W24
	.byte		N16   , Gn3 , v048
	.byte	W15
	.byte		N03   , An3 
	.byte	W02
	.byte		N04   , Bn3 
	.byte	W07
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_lugias_song_2_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_lugias_song_2_006
@ 015   ----------------------------------------
	.byte		N11   , Fs3 , v052
	.byte	W12
	.byte		N68   , En3 , v048, gtp2
	.byte	W84
	.byte	GOTO
	 .word	mus_lugias_song_2_B1
mus_lugias_song_2_B2:
@ 016   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_lugias_song_3:
	.byte	KEYSH , mus_lugias_song_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 108*mus_lugias_song_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N23   , En4 , v088
	.byte	W24
	.byte		N22   , Gn4 , v084
	.byte	W24
	.byte		N28   , Fs4 , v088
	.byte	W30
	.byte		N10   , Dn4 , v084
	.byte	W11
	.byte		N11   , En4 
	.byte	W07
@ 001   ----------------------------------------
mus_lugias_song_3_001:
	.byte	W06
	.byte		N68   , Bn3 , v084, gtp2
	.byte	W72
	.byte		N23   , En4 
	.byte	W18
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W06
	.byte		N22   , Gn4 
	.byte	W24
	.byte		N28   , Fs4 
	.byte	W30
	.byte		N10   , Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 003   ----------------------------------------
	.byte		N92   , Bn4 , v084, gtp2
	.byte	W96
@ 004   ----------------------------------------
	.byte		N23   , En5 , v088
	.byte	W24
	.byte		N16   , Dn5 , v084
	.byte	W18
	.byte		N04   , En5 
	.byte	W06
	.byte		N22   , Bn4 , v088
	.byte	W24
	.byte		N16   , Gn4 , v084
	.byte	W17
	.byte		N04   , Bn4 
	.byte	W07
@ 005   ----------------------------------------
mus_lugias_song_3_005:
	.byte		N23   , An4 , v088
	.byte	W24
	.byte		N68   , En4 , v084, gtp2
	.byte	W72
	.byte	PEND
@ 006   ----------------------------------------
mus_lugias_song_3_006:
	.byte		N23   , En4 , v088
	.byte	W24
	.byte		N22   , Bn4 , v084
	.byte	W24
	.byte		        An4 , v088
	.byte	W24
	.byte		        Dn4 , v084
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
	.byte		N11   , Fs4 , v088
	.byte	W12
	.byte		N16   , En4 , v084
	.byte	W18
	.byte		N04   , Dn4 
	.byte	W06
	.byte		N44   , En4 , v084, gtp2
	.byte	W60
mus_lugias_song_3_B1:
@ 008   ----------------------------------------
	.byte		N23   , En4 , v088
	.byte	W24
	.byte		N22   , Gn4 , v084
	.byte	W24
	.byte		N28   , Fs4 , v088
	.byte	W30
	.byte		N10   , Dn4 , v084
	.byte	W11
	.byte		N11   , En4 
	.byte	W07
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_lugias_song_3_001
@ 010   ----------------------------------------
	.byte	W06
	.byte		N22   , Gn4 , v084
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		N10   
	.byte	W11
	.byte		N04   , Bn4 
	.byte	W07
@ 011   ----------------------------------------
	.byte		N05   , An4 , v088
	.byte	W06
	.byte		N68   , Bn4 , v084, gtp2
	.byte	W90
@ 012   ----------------------------------------
	.byte		N23   , En5 , v088
	.byte	W24
	.byte		N16   , Dn5 , v084
	.byte	W15
	.byte		N02   
	.byte	W03
	.byte		N04   , En5 
	.byte	W06
	.byte		N22   , Bn4 , v088
	.byte	W24
	.byte		N16   , Gn4 , v084
	.byte	W15
	.byte		N03   , An4 
	.byte	W02
	.byte		N04   , Bn4 
	.byte	W07
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_lugias_song_3_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_lugias_song_3_006
@ 015   ----------------------------------------
	.byte		N11   , Fs4 , v088
	.byte	W12
	.byte		N68   , En4 , v084, gtp2
	.byte	W84
	.byte	GOTO
	 .word	mus_lugias_song_3_B1
mus_lugias_song_3_B2:
@ 016   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_lugias_song:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_lugias_song_pri	@ Priority
	.byte	mus_lugias_song_rev	@ Reverb.

	.word	mus_lugias_song_grp

	.word	mus_lugias_song_1
	.word	mus_lugias_song_2
	.word	mus_lugias_song_3

	.end
