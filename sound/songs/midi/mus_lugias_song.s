	.include "MPlayDef.s"

	.equ	mus_lugias_song_grp, voicegroup_brothers
	.equ	mus_lugias_song_pri, 0
	.equ	mus_lugias_song_rev, reverb_set+20
	.equ	mus_lugias_song_mvl, 90
	.equ	mus_lugias_song_key, 0
	.equ	mus_lugias_song_tbs, 1
	.equ	mus_lugias_song_exg, 0
	.equ	mus_lugias_song_cmp, 1

	.section .rodata
	.global	mus_lugias_song
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_lugias_song_1:
	.byte	KEYSH , mus_lugias_song_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 80*mus_lugias_song_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 100*mus_lugias_song_mvl/mxv
	.byte		PAN   , c_v-10
	.byte		N92   , En2 , v072
	.byte		N23   , En3 
	.byte	W24
	.byte		N22   , Gn3 
	.byte	W24
	.byte		N28   , Fs3 
	.byte	W30
	.byte		N10   , Dn3 
	.byte	W11
	.byte		N11   , En3 
	.byte	W07
@ 002   ----------------------------------------
mus_lugias_song_1_002:
	.byte	W06
	.byte		N88   , Bn1 , v072
	.byte		N68   , Bn2 
	.byte	W72
	.byte		N23   , En3 
	.byte	W18
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W06
	.byte		N88   , Gn1 
	.byte		N22   , Gn3 
	.byte	W24
	.byte		N28   , Fs3 
	.byte	W30
	.byte		N10   , Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W11
	.byte		        Gn3 
	.byte	W12
	.byte		N92   , Bn1 
	.byte		N92   , Bn3 
	.byte	W01
@ 004   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		        En2 
	.byte		N23   , En4 
	.byte	W01
@ 005   ----------------------------------------
	.byte	W24
	.byte		N16   , Dn4 
	.byte	W18
	.byte		N04   , En4 
	.byte	W06
	.byte		N22   , Bn3 
	.byte	W24
	.byte		N16   , Gn3 
	.byte	W17
	.byte		N04   , Bn3 
	.byte	W06
	.byte		N92   , An1 
	.byte		N23   , An3 
	.byte	W01
@ 006   ----------------------------------------
mus_lugias_song_1_006:
	.byte	W24
	.byte		N68   , En3 , v072
	.byte	W68
	.byte	W03
	.byte		N92   , En2 
	.byte		N23   , En3 
	.byte	W01
	.byte	PEND
@ 007   ----------------------------------------
mus_lugias_song_1_007:
	.byte	W24
	.byte		N22   , Bn3 , v072
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Dn3 
	.byte	W23
	.byte		N92   , Fs1 
	.byte		N11   , Fs3 
	.byte	W01
	.byte	PEND
@ 008   ----------------------------------------
	.byte	W12
	.byte		N16   , En3 
	.byte	W18
	.byte		N04   , Dn3 
	.byte	W06
	.byte		N44   , En3 
	.byte	W56
	.byte	W03
	.byte		N92   , En2 
	.byte		N23   , En3 
	.byte	W01
@ 009   ----------------------------------------
	.byte	W24
	.byte		N22   , Gn3 
	.byte	W24
	.byte		N28   , Fs3 
	.byte	W30
	.byte		N10   , Dn3 
	.byte	W11
	.byte		N11   , En3 
	.byte	W07
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_lugias_song_1_002
@ 011   ----------------------------------------
	.byte	W06
	.byte		N88   , Gn1 , v072
	.byte		N22   , Gn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N10   
	.byte	W11
	.byte		N04   , Bn3 
	.byte	W06
	.byte		N92   , An1 
	.byte		N05   , An3 
	.byte	W01
@ 012   ----------------------------------------
	.byte	W06
	.byte		N68   , Bn3 
	.byte	W88
	.byte	W01
	.byte		N92   , En2 
	.byte		N23   , En4 
	.byte	W01
@ 013   ----------------------------------------
	.byte	W24
	.byte		N16   , Dn4 
	.byte	W14
	.byte		N02   
	.byte	W04
	.byte		N04   , En4 
	.byte	W06
	.byte		N22   , Bn3 
	.byte	W24
	.byte		N16   , Gn3 
	.byte	W14
	.byte		N03   , An3 
	.byte	W03
	.byte		N04   , Bn3 
	.byte	W06
	.byte		N92   , An1 
	.byte		N23   , An3 
	.byte	W01
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_lugias_song_1_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_lugias_song_1_007
@ 016   ----------------------------------------
	.byte	W12
	.byte		N68   , En3 , v072
	.byte	W80
	.byte	W03
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_lugias_song_2:
	.byte	KEYSH , mus_lugias_song_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 84*mus_lugias_song_mvl/mxv
	.byte		PAN   , c_v+18
	.byte		N23   , En4 , v076
	.byte	W24
	.byte		N22   , Gn4 , v072
	.byte	W24
	.byte		N28   , Fs4 
	.byte	W30
	.byte		N10   , Dn4 
	.byte	W11
	.byte		N11   , En4 
	.byte	W07
@ 001   ----------------------------------------
mus_lugias_song_2_001:
	.byte	W06
	.byte		N68   , Bn3 , v072
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
	.byte	W11
	.byte		        Gn4 
	.byte	W12
	.byte		N92   , Bn4 
	.byte	W01
@ 003   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		N23   , En5 , v076
	.byte	W01
@ 004   ----------------------------------------
	.byte	W24
	.byte		N16   , Dn5 , v072
	.byte	W18
	.byte		N04   , En5 
	.byte	W06
	.byte		N22   , Bn4 
	.byte	W24
	.byte		N16   , Gn4 
	.byte	W17
	.byte		N04   , Bn4 
	.byte	W06
	.byte		N23   , An4 , v076
	.byte	W01
@ 005   ----------------------------------------
mus_lugias_song_2_005:
	.byte	W24
	.byte		N68   , En4 , v072
	.byte	W68
	.byte	W03
	.byte		N23   , En4 , v076
	.byte	W01
	.byte	PEND
@ 006   ----------------------------------------
mus_lugias_song_2_006:
	.byte	W24
	.byte		N22   , Bn4 , v072
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Dn4 
	.byte	W23
	.byte		N11   , Fs4 , v076
	.byte	W01
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W12
	.byte		N16   , En4 , v072
	.byte	W18
	.byte		N04   , Dn4 
	.byte	W06
	.byte		N44   , En4 
	.byte	W56
	.byte	W03
	.byte		N23   , En4 , v076
	.byte	W01
@ 008   ----------------------------------------
	.byte	W24
	.byte		N22   , Gn4 , v072
	.byte	W24
	.byte		N28   , Fs4 
	.byte	W30
	.byte		N10   , Dn4 
	.byte	W11
	.byte		N11   , En4 
	.byte	W07
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_lugias_song_2_001
@ 010   ----------------------------------------
	.byte	W06
	.byte		N22   , Gn4 , v072
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		N10   
	.byte	W11
	.byte		N04   , Bn4 
	.byte	W06
	.byte		N05   , An4 , v076
	.byte	W01
@ 011   ----------------------------------------
	.byte	W06
	.byte		N68   , Bn4 , v072
	.byte	W88
	.byte	W01
	.byte		N23   , En5 , v076
	.byte	W01
@ 012   ----------------------------------------
	.byte	W24
	.byte		N16   , Dn5 , v072
	.byte	W14
	.byte		N02   
	.byte	W04
	.byte		N04   , En5 
	.byte	W06
	.byte		N22   , Bn4 
	.byte	W24
	.byte		N16   , Gn4 
	.byte	W14
	.byte		N03   , An4 
	.byte	W03
	.byte		N04   , Bn4 
	.byte	W06
	.byte		N23   , An4 , v076
	.byte	W01
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_lugias_song_2_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_lugias_song_2_006
@ 015   ----------------------------------------
	.byte	W12
	.byte		N68   , En4 , v072
	.byte	W68
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_lugias_song:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_lugias_song_pri	@ Priority
	.byte	mus_lugias_song_rev	@ Reverb.

	.word	mus_lugias_song_grp

	.word	mus_lugias_song_1
	.word	mus_lugias_song_2

	.end
