	.include "MPlayDef.s"

	.equ	mus_the_world_grp, voicegroup_the_world
	.equ	mus_the_world_pri, 0
	.equ	mus_the_world_rev, reverb_set+50
	.equ	mus_the_world_mvl, 100
	.equ	mus_the_world_key, 0
	.equ	mus_the_world_tbs, 1
	.equ	mus_the_world_exg, 1
	.equ	mus_the_world_cmp, 1

	.section .rodata
	.global	mus_the_world
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_the_world_1:
	.byte	KEYSH , mus_the_world_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 119*mus_the_world_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_the_world_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Fs1 , v112
	.byte	W48
	.byte	W02
	.byte		        Bn1 
	.byte	W18
	.byte		        Fs2 
	.byte	W28
@ 002   ----------------------------------------
	.byte	W10
	.byte		        En2 
	.byte	W60
	.byte	W01
	.byte		        Dn2 
	.byte	W24
	.byte	W01
@ 003   ----------------------------------------
	.byte	W19
	.byte		        Fs2 
	.byte	W24
	.byte	W01
	.byte		N06   
	.byte	W52
@ 004   ----------------------------------------
	.byte	W23
	.byte		        An2 
	.byte	W18
	.byte		        En2 
	.byte	W54
	.byte	W01
@ 005   ----------------------------------------
	.byte	W14
	.byte		        Gn1 
	.byte	W24
	.byte	W02
	.byte		        Bn1 
	.byte	W56
@ 006   ----------------------------------------
	.byte	W72
	.byte		N06   
	.byte	W24
@ 007   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte		        Gn2 
	.byte	W12
	.byte		N06   
	.byte	W13
	.byte		N06   
	.byte	W12
	.byte		N42   , Gn1 
	.byte	W21
@ 008   ----------------------------------------
	.byte	W16
	.byte		N06   , Gn2 
	.byte	W48
	.byte	W02
	.byte		        An2 
	.byte	W30
@ 009   ----------------------------------------
	.byte	W01
	.byte		        Fs2 
	.byte	W19
	.byte		        An2 
	.byte	W12
	.byte		N12   , Fs1 
	.byte	W13
	.byte		N06   , Fs2 
	.byte	W42
	.byte	W01
	.byte		        Fs1 
	.byte	W08
mus_the_world_1_B1:
@ 010   ----------------------------------------
	.byte	W22
	.byte		N12   , As0 , v112
	.byte	W64
	.byte		N06   , An0 
	.byte	W10
@ 011   ----------------------------------------
	.byte	W10
	.byte		        Gn0 
	.byte	W84
	.byte	W02
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		        Dn2 
	.byte	W44
	.byte		        Cs2 
	.byte	W17
@ 014   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		        An2 
	.byte	W22
@ 015   ----------------------------------------
	.byte	W54
	.byte		N12   , Fs1 
	.byte	W24
	.byte	W03
	.byte		N06   , An2 
	.byte	W15
@ 016   ----------------------------------------
	.byte	W11
	.byte		N24   , Gn1 
	.byte	W84
	.byte	W01
@ 017   ----------------------------------------
	.byte	W17
	.byte		N12   , An1 
	.byte	W78
	.byte	W01
@ 018   ----------------------------------------
	.byte		N06   , Gn0 
	.byte	W24
	.byte	W02
	.byte		        Bn1 
	.byte	W24
	.byte	W03
	.byte		N12   , Gn1 
	.byte	W24
	.byte	W01
	.byte		N06   , Bn1 
	.byte	W18
@ 019   ----------------------------------------
	.byte	W01
	.byte		N18   , An2 
	.byte	W68
	.byte	W03
	.byte		N06   , Dn2 
	.byte	W13
	.byte		N06   
	.byte	W11
@ 020   ----------------------------------------
	.byte	W09
	.byte		N66   , Cs2 
	.byte	W68
	.byte	W02
	.byte		N06   , Fs2 
	.byte	W13
	.byte		        An2 
	.byte	W04
@ 021   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W20
	.byte		N06   
	.byte	W05
@ 022   ----------------------------------------
	.byte	W14
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		        Fs1 
	.byte	W36
	.byte	W03
	.byte		        Bn0 
	.byte	W19
	.byte		        Ds2 
	.byte	W06
	.byte		        Fs2 
	.byte	W05
@ 023   ----------------------------------------
	.byte	W02
	.byte		        Gn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W13
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte	W01
	.byte		        Dn2 
	.byte	W20
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 024   ----------------------------------------
	.byte		        En2 
	.byte	W07
	.byte		        Gn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        En2 
	.byte	W07
	.byte		        Cn2 
	.byte	W24
	.byte	W02
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Bn1 
	.byte	W07
	.byte		        Ds2 
	.byte	W01
@ 025   ----------------------------------------
	.byte	W05
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W13
	.byte		        Fs2 
	.byte	W06
	.byte		        An0 
	.byte	W07
	.byte		        Fs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W19
	.byte		N06   
	.byte	W12
	.byte		N30   , Dn2 
	.byte	W22
@ 026   ----------------------------------------
	.byte	W36
	.byte		N12   , Fs1 
	.byte	W36
	.byte	W03
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W07
	.byte		N06   , Gn0 
	.byte	W08
@ 027   ----------------------------------------
	.byte	W18
	.byte		        Bn1 
	.byte	W13
	.byte		        Fs2 
	.byte	W12
	.byte		        An0 
	.byte	W32
	.byte	W01
	.byte		        Cs2 
	.byte	W13
	.byte		N12   , Bn1 
	.byte	W07
@ 028   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		N06   , Fs2 
	.byte	W24
	.byte	W02
	.byte		        An0 
	.byte	W44
	.byte	W01
@ 029   ----------------------------------------
	.byte	W07
	.byte		        Bn1 
	.byte	W14
	.byte		N06   
	.byte	W66
	.byte		        Cs1 
	.byte	W09
@ 030   ----------------------------------------
	.byte	W22
	.byte		N18   , Fs1 
	.byte	W07
	.byte		N12   , An2 
	.byte	W16
	.byte		N06   , Gn2 
	.byte	W10
	.byte		        Gn0 
	.byte	W20
	.byte		        Gn2 
	.byte	W21
@ 031   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W13
	.byte		N06   , Gn2 
	.byte	W56
	.byte		        Dn2 
	.byte	W15
@ 032   ----------------------------------------
	.byte	W16
	.byte		        Bn0 
	.byte	W24
	.byte	W02
	.byte		        Fs2 
	.byte	W12
	.byte		N06   
	.byte	W42
@ 033   ----------------------------------------
	.byte	W21
	.byte		N12   , Dn1 
	.byte	W24
	.byte	W01
	.byte		N06   , An2 
	.byte	W44
	.byte	W01
	.byte		        An1 
	.byte	W05
@ 034   ----------------------------------------
	.byte	W13
	.byte		        Dn2 
	.byte	W24
	.byte	W02
	.byte		        Cs2 
	.byte	W36
	.byte	W02
	.byte		        Fs1 
	.byte	W19
	.byte	GOTO
	 .word	mus_the_world_1_B1
mus_the_world_1_B2:
@ 035   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_the_world_2:
	.byte	KEYSH , mus_the_world_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 44*mus_the_world_mvl/mxv
	.byte		PAN   , c_v-12
	.byte	W48
	.byte	W02
	.byte		N06   , Dn3 , v060
	.byte	W12
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W13
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W03
@ 001   ----------------------------------------
	.byte	W10
	.byte		N06   
	.byte	W36
	.byte	W01
	.byte		        Bn2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte	W01
@ 002   ----------------------------------------
	.byte	W13
	.byte		        Cs3 
	.byte	W72
	.byte	W03
	.byte		        Dn3 
	.byte	W08
@ 003   ----------------------------------------
	.byte	W04
	.byte		N06   
	.byte	W48
	.byte	W02
	.byte		N12   , Bn2 
	.byte	W42
@ 004   ----------------------------------------
	.byte	W14
	.byte		N06   , Dn3 
	.byte	W24
	.byte	W02
	.byte		        Gn3 
	.byte	W19
	.byte		N18   , Fs3 
	.byte	W36
	.byte	W01
@ 005   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N06   , Bn2 
	.byte	W13
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W36
	.byte	W01
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
mus_the_world_2_B1:
@ 009   ----------------------------------------
	.byte	W22
	.byte		N12   , As2 , v060
	.byte	W72
	.byte	W02
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		N06   , Dn3 
	.byte	W22
@ 014   ----------------------------------------
	.byte	W54
	.byte		N12   
	.byte		N12   , Bn3 
	.byte	W24
	.byte	W03
	.byte		N06   , En3 
	.byte	W15
@ 015   ----------------------------------------
	.byte	W11
	.byte		N28   , Fs3 , v060, gtp1
	.byte		N24   , Dn4 
	.byte	W84
	.byte	W01
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N06   , Fs3 
	.byte		N06   , Dn4 
	.byte	W24
	.byte	W02
	.byte		N12   , Cs4 
	.byte	W24
	.byte	W02
	.byte		N06   , Fs3 
	.byte		N06   , Dn4 
	.byte	W18
@ 018   ----------------------------------------
	.byte	W01
	.byte		N18   
	.byte	W68
	.byte	W03
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W24
@ 019   ----------------------------------------
	.byte	W78
	.byte	W01
	.byte		        Cs3 
	.byte	W13
	.byte		        Dn3 
	.byte	W04
@ 020   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		        Fs2 
	.byte	W20
	.byte		N06   
	.byte	W05
@ 021   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		N06   
	.byte		N06   , Fs3 
	.byte	W36
	.byte	W03
	.byte		N06   
	.byte	W19
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W05
@ 022   ----------------------------------------
	.byte	W14
	.byte		        An3 
	.byte	W48
	.byte	W02
	.byte		N12   , Gn3 
	.byte	W20
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 023   ----------------------------------------
	.byte	W07
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W19
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W24
	.byte	W02
	.byte		N06   , Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   
	.byte		N06   , An3 
	.byte	W07
	.byte		        Fs3 
	.byte	W01
@ 024   ----------------------------------------
	.byte	W05
	.byte		N06   
	.byte	W19
	.byte		N12   , An3 
	.byte	W19
	.byte		N06   , Fs3 
	.byte	W30
	.byte	W01
	.byte		N30   
	.byte	W22
@ 025   ----------------------------------------
	.byte	W36
	.byte		N12   
	.byte	W24
	.byte	W02
	.byte		N06   
	.byte	W19
	.byte		N12   , Dn3 
	.byte	W15
@ 026   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		N06   , An3 
	.byte	W32
	.byte		N12   , Dn3 
	.byte	W07
@ 027   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W19
	.byte		N18   , En3 
	.byte	W52
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		N12   , Dn4 
	.byte	W24
	.byte	W02
	.byte		N06   , Dn2 
	.byte		N06   , Dn4 
	.byte	W20
	.byte		        Fs3 
	.byte		N06   , An3 
	.byte	W21
@ 030   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		        Bn2 
	.byte	W56
	.byte	W03
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W76
	.byte	W01
	.byte		        Fs2 
	.byte	W19
	.byte	GOTO
	 .word	mus_the_world_2_B1
mus_the_world_2_B2:
@ 034   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_the_world_3:
	.byte	KEYSH , mus_the_world_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 82*mus_the_world_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N06   , Fs3 , v088
	.byte	W13
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W13
	.byte		        Fs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N06   , Bn2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N06   
	.byte	W01
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W03
@ 001   ----------------------------------------
	.byte	W03
	.byte		        An2 
	.byte	W07
	.byte		        Fs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        En3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        An2 
	.byte		N05   , En3 
	.byte	W06
	.byte		N06   
	.byte	W01
	.byte		        Cs3 
	.byte		N12   , Fs3 
	.byte	W05
	.byte		N06   , An2 
	.byte	W07
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N01   , Dn3 
	.byte		N05   
	.byte	W06
	.byte		N06   , Gn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte	W01
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 002   ----------------------------------------
	.byte		        Dn3 
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		        Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W07
	.byte		        Bn2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W01
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W01
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W02
@ 003   ----------------------------------------
	.byte	W04
	.byte		N11   , Fs3 
	.byte	W06
	.byte		N06   , An2 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W01
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N01   , En3 
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W07
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W07
	.byte		        Gn2 
	.byte	W07
	.byte		        Dn3 
	.byte	W12
	.byte		N01   
	.byte		N06   
	.byte	W04
@ 004   ----------------------------------------
	.byte	W02
	.byte		        Gn2 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W07
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W07
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W07
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N18   , Fs3 
	.byte		N18   , An3 
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W07
	.byte		N05   , Fs3 
	.byte	W07
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W07
	.byte		        Dn3 
	.byte	W04
@ 005   ----------------------------------------
	.byte	W02
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W07
	.byte		        Fs3 
	.byte	W06
	.byte		N01   , Bn2 
	.byte	W01
	.byte		N06   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		N12   , En3 
	.byte	W05
	.byte		N06   , Fs3 
	.byte	W07
	.byte		        Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W07
	.byte		N18   , Cs3 
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W07
	.byte		        Bn2 
	.byte	W06
	.byte		N18   , Dn3 
	.byte		N06   , Fs3 
	.byte	W05
@ 006   ----------------------------------------
	.byte	W01
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N01   , Bn2 
	.byte	W01
	.byte		N06   
	.byte	W05
	.byte		        Fs3 
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W01
	.byte		N06   , Bn2 
	.byte	W05
	.byte		        Dn3 
	.byte	W07
	.byte		N12   , Fs3 
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W07
	.byte		N05   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   , Cs3 
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W07
	.byte		        Gn2 
	.byte	W05
	.byte		N01   , Dn3 
	.byte	W01
	.byte		N11   
	.byte	W02
@ 007   ----------------------------------------
	.byte	W04
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W01
	.byte		        Bn2 
	.byte	W05
	.byte		        An2 
	.byte	W07
	.byte		        Dn3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		        An2 
	.byte		N12   , En3 
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W07
	.byte		N18   , Cs3 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An2 
	.byte	W05
@ 008   ----------------------------------------
	.byte	W01
	.byte		N18   , Dn3 
	.byte	W07
	.byte		N06   , An2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W07
	.byte		        Cs3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W06
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W01
	.byte		N12   , En3 
	.byte	W06
	.byte		N06   , Cs3 
	.byte	W05
	.byte		        Fs3 
	.byte	W01
	.byte		        Dn3 
	.byte	W12
	.byte		N18   , Cs3 
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N06   
	.byte	W02
mus_the_world_3_B1:
@ 009   ----------------------------------------
	.byte	W04
	.byte		N06   , Fs3 , v088
	.byte	W01
	.byte		        Bn2 
	.byte	W17
	.byte		N12   , As2 
	.byte	W48
	.byte	W03
	.byte		N06   , Bn2 
	.byte	W13
	.byte		        An2 
	.byte	W07
	.byte		N06   
	.byte	W03
@ 010   ----------------------------------------
	.byte	W10
	.byte		        Gn2 
	.byte	W68
	.byte		N12   , Bn2 
	.byte	W07
	.byte		N06   , Fs3 
	.byte	W07
	.byte		N12   
	.byte	W01
	.byte		N06   , Bn2 
	.byte	W03
@ 011   ----------------------------------------
	.byte	W03
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W07
	.byte		        Bn2 
	.byte		N12   , Dn4 
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N12   , Cs4 
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W07
	.byte		        Bn2 
	.byte		N12   , Bn3 
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W07
	.byte		        Dn3 
	.byte		N12   , Cs4 
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W07
	.byte		        Bn2 
	.byte		N06   , Dn4 
	.byte	W07
	.byte		N42   , En3 
	.byte	W06
	.byte		N13   , Gn2 
	.byte	W07
	.byte		N06   , Dn3 
	.byte	W03
@ 012   ----------------------------------------
	.byte	W03
	.byte		        Gn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W07
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte		N06   , Dn4 
	.byte	W07
	.byte		N18   , Cs4 
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W07
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W07
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte		N06   , Cs4 
	.byte	W07
	.byte		N05   , Dn3 
	.byte		N54   , Dn4 
	.byte	W06
	.byte		N13   , Dn3 
	.byte	W04
@ 013   ----------------------------------------
	.byte	W02
	.byte		N06   , An2 
	.byte	W07
	.byte		        Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W07
	.byte		        An2 
	.byte	W06
	.byte		        Dn3 
	.byte	W07
	.byte		        An2 
	.byte	W13
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N01   , Dn3 
	.byte	W01
	.byte		N06   , Dn4 
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte		        Fs3 
	.byte	W07
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs3 
	.byte	W07
	.byte		        An2 
	.byte	W06
	.byte		N12   , Cs3 
	.byte		N18   , Cs4 
	.byte	W03
@ 014   ----------------------------------------
	.byte	W03
	.byte		N12   , Fs3 
	.byte	W07
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W07
	.byte		        An2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W07
	.byte		N12   , Dn4 
	.byte	W07
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W08
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte	W07
	.byte		N06   , Cs3 
	.byte	W05
	.byte		        Fs3 
	.byte	W03
@ 015   ----------------------------------------
	.byte	W04
	.byte		        Cs3 
	.byte	W07
	.byte		N24   , Fs3 
	.byte	W07
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W07
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W07
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W07
	.byte		        Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N06   
	.byte	W03
@ 016   ----------------------------------------
	.byte	W04
	.byte		        Gn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W07
	.byte		        Cs3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W13
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En3 
	.byte	W07
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W32
	.byte	W03
@ 017   ----------------------------------------
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W07
	.byte		        Dn3 
	.byte	W07
	.byte		        Gn2 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W07
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W07
	.byte		        Gn2 
	.byte	W06
	.byte		        En3 
	.byte	W01
	.byte		N05   
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W07
	.byte		        Fs3 
	.byte	W07
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W05
@ 018   ----------------------------------------
	.byte	W01
	.byte		N18   , An3 
	.byte	W06
	.byte		N13   , Dn3 
	.byte	W07
	.byte		N06   , An2 
	.byte	W07
	.byte		        Dn3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W07
	.byte		N06   , An2 
	.byte	W07
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W07
	.byte		        An2 
	.byte	W06
	.byte		        En3 
	.byte	W07
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn4 
	.byte	W01
	.byte		        An2 
	.byte	W06
	.byte		        Fs3 
	.byte	W04
@ 019   ----------------------------------------
	.byte	W03
	.byte		        An2 
	.byte	W06
	.byte		N66   , Cs4 
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W07
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W07
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W07
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W07
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cs3 
	.byte	W07
	.byte		        Dn4 
	.byte	W04
@ 020   ----------------------------------------
	.byte	W03
	.byte		N12   , Cs3 
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N01   
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		        As2 
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N06   
	.byte	W01
	.byte		        Fs3 
	.byte	W05
	.byte		        En3 
	.byte	W01
	.byte		        Cs3 
	.byte	W05
	.byte		N01   , Fs3 
	.byte		N06   
	.byte	W06
	.byte		        Cs3 
	.byte	W01
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W13
	.byte		N06   
	.byte	W07
	.byte		N06   
	.byte	W05
@ 021   ----------------------------------------
	.byte	W08
	.byte		N06   
	.byte		N05   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		N06   
	.byte	W32
	.byte	W01
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N01   , Fs3 
	.byte	W01
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W05
@ 022   ----------------------------------------
	.byte	W01
	.byte		        Bn2 
	.byte	W01
	.byte		        Gn3 
	.byte	W05
	.byte		        Fs3 
	.byte	W07
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        An2 
	.byte	W01
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An2 
	.byte	W01
	.byte		        En3 
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs3 
	.byte		N05   
	.byte	W12
	.byte		N13   , Dn4 
	.byte	W07
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N06   
	.byte	W01
	.byte		        Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 023   ----------------------------------------
	.byte		        En3 
	.byte	W07
	.byte		        Fs3 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En3 
	.byte		N06   , Fs3 
	.byte	W07
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W07
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W07
	.byte		        Dn4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W07
	.byte		N06   
	.byte	W05
	.byte		N01   
	.byte	W07
	.byte		N06   
	.byte	W01
@ 024   ----------------------------------------
	.byte	W05
	.byte		N06   
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W07
	.byte		N06   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An2 
	.byte	W01
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N06   
	.byte	W05
	.byte		        En3 
	.byte	W01
	.byte		N05   
	.byte	W06
	.byte		N06   , An2 
	.byte	W07
	.byte		        En3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N36   , Dn4 
	.byte	W07
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W07
	.byte		        Gn2 
	.byte	W02
@ 025   ----------------------------------------
	.byte	W04
	.byte		        Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W07
	.byte		N01   , Dn3 
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W07
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W07
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W01
	.byte		        Dn3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cs3 
	.byte	W07
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W07
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W02
@ 026   ----------------------------------------
	.byte	W05
	.byte		        Dn3 
	.byte	W07
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W07
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W07
	.byte		N06   , An2 
	.byte	W06
	.byte		        Cs3 
	.byte	W01
	.byte		        En3 
	.byte		N05   
	.byte	W06
	.byte		N18   
	.byte	W13
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        An2 
	.byte	W07
	.byte		N12   , Bn3 
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W01
@ 027   ----------------------------------------
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Ds3 
	.byte	W07
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn2 
	.byte	W07
	.byte		        Fs3 
	.byte	W06
	.byte		N12   , En3 
	.byte		N18   , An3 
	.byte	W07
	.byte		N05   , En3 
	.byte	W06
	.byte		N06   , An2 
	.byte	W07
	.byte		N12   , Cs3 
	.byte	W06
	.byte		N06   , En3 
	.byte	W07
	.byte		        An2 
	.byte	W06
	.byte		        En3 
	.byte	W07
	.byte		        Bn3 
	.byte	W06
@ 028   ----------------------------------------
	.byte		        An3 
	.byte	W07
	.byte		        Gn2 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W08
	.byte		        Bn3 
	.byte	W05
	.byte		        Gn2 
	.byte	W07
	.byte		        Bn3 
	.byte	W01
	.byte		        Bn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W13
	.byte		N24   , En3 
	.byte		N24   
	.byte	W07
	.byte		N06   , Fs3 
	.byte	W18
	.byte		        Dn3 
	.byte	W09
	.byte		        Cs3 
	.byte	W09
@ 029   ----------------------------------------
	.byte		        Bn2 
	.byte	W10
	.byte		N01   , An2 
	.byte		N06   
	.byte	W12
	.byte		N18   , Fs3 
	.byte	W07
	.byte		N12   , An3 
	.byte	W16
	.byte		N06   , Gn3 
	.byte	W10
	.byte		N06   
	.byte	W06
	.byte		        Gn2 
	.byte	W07
	.byte		        Dn3 
	.byte	W07
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W07
	.byte		        Gn2 
	.byte	W07
	.byte		        Dn3 
	.byte	W01
@ 030   ----------------------------------------
	.byte	W05
	.byte		        Gn2 
	.byte	W07
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W07
	.byte		N12   , Fs3 
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W07
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte		N05   , Dn3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W01
	.byte		N18   , Cs3 
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W03
@ 031   ----------------------------------------
	.byte	W03
	.byte		        Bn2 
	.byte	W01
	.byte		        Gn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W07
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn2 
	.byte		N12   , Fs3 
	.byte	W07
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W07
	.byte		        Bn2 
	.byte	W06
	.byte		N06   
	.byte		N18   , Cs3 
	.byte	W06
	.byte		N06   , Ds3 
	.byte	W07
	.byte		        Fs3 
	.byte	W06
	.byte		N18   , Dn3 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W04
@ 032   ----------------------------------------
	.byte	W02
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W07
	.byte		        Bn2 
	.byte	W06
	.byte		        An2 
	.byte	W07
	.byte		        Dn3 
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En3 
	.byte	W07
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        An2 
	.byte		N06   , Dn3 
	.byte	W07
	.byte		        Fs3 
	.byte	W06
	.byte		N12   , Cs3 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , An2 
	.byte	W07
	.byte		        Dn3 
	.byte	W06
	.byte		N06   
	.byte	W05
@ 033   ----------------------------------------
	.byte	W01
	.byte		N06   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W13
	.byte		N06   
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte		N06   
	.byte	W06
	.byte		        Cs3 
	.byte		N12   , En3 
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte		N06   , Dn3 
	.byte	W13
	.byte		N18   , Cs3 
	.byte	W19
	.byte	GOTO
	 .word	mus_the_world_3_B1
mus_the_world_3_B2:
@ 034   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_the_world_4:
	.byte	KEYSH , mus_the_world_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 88*mus_the_world_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W48
	.byte	W02
	.byte		N06   , Bn0 , v092
	.byte	W18
	.byte		        Fs1 
	.byte	W28
@ 001   ----------------------------------------
	.byte	W10
	.byte		        En1 
	.byte	W60
	.byte	W01
	.byte		        Dn1 
	.byte	W24
	.byte	W01
@ 002   ----------------------------------------
	.byte	W19
	.byte		        Fs1 
	.byte	W24
	.byte	W01
	.byte		N06   
	.byte	W52
@ 003   ----------------------------------------
	.byte	W23
	.byte		        An1 
	.byte	W18
	.byte		        En1 
	.byte	W54
	.byte	W01
@ 004   ----------------------------------------
	.byte	W14
	.byte		        Gn0 
	.byte	W24
	.byte	W02
	.byte		        Bn0 
	.byte	W56
@ 005   ----------------------------------------
	.byte	W72
	.byte		N06   
	.byte	W24
@ 006   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte		        Gn1 
	.byte	W12
	.byte		N06   
	.byte	W13
	.byte		N06   
	.byte	W12
	.byte		N42   , Gn0 
	.byte	W21
@ 007   ----------------------------------------
	.byte	W16
	.byte		N06   , Gn1 
	.byte	W48
	.byte	W02
	.byte		        An1 
	.byte	W30
@ 008   ----------------------------------------
	.byte	W01
	.byte		        Fs1 
	.byte	W19
	.byte		        An1 
	.byte	W24
	.byte	W01
	.byte		        Fs1 
	.byte	W48
	.byte	W03
mus_the_world_4_B1:
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N06   , Dn1 , v092
	.byte	W44
	.byte		        Cs1 
	.byte	W17
@ 013   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		        An1 
	.byte	W22
@ 014   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		N06   
	.byte	W15
@ 015   ----------------------------------------
	.byte	W11
	.byte		N24   , Gn0 
	.byte	W84
	.byte	W01
@ 016   ----------------------------------------
	.byte	W17
	.byte		N12   , An0 
	.byte	W78
	.byte	W01
@ 017   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N06   , Bn0 
	.byte	W24
	.byte	W03
	.byte		N12   , Gn0 
	.byte	W24
	.byte	W01
	.byte		N06   , Bn0 
	.byte	W18
@ 018   ----------------------------------------
	.byte	W01
	.byte		N18   , An1 
	.byte	W68
	.byte	W03
	.byte		N06   , Dn1 
	.byte	W13
	.byte		N06   
	.byte	W11
@ 019   ----------------------------------------
	.byte	W09
	.byte		N66   , Cs1 
	.byte	W68
	.byte	W02
	.byte		N06   , Fs1 
	.byte	W13
	.byte		        An1 
	.byte	W04
@ 020   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		        Fs1 
	.byte	W30
	.byte	W01
@ 021   ----------------------------------------
	.byte	W14
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W64
	.byte	W01
	.byte		        Ds1 
	.byte	W06
	.byte		        Fs1 
	.byte	W05
@ 022   ----------------------------------------
	.byte	W02
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W13
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W30
	.byte	W01
	.byte		        Dn1 
	.byte	W20
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 023   ----------------------------------------
	.byte		        En1 
	.byte	W07
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W07
	.byte		        Cn1 
	.byte	W24
	.byte	W02
	.byte		        Fs1 
	.byte	W24
	.byte		        Bn0 
	.byte	W07
	.byte		        Ds1 
	.byte	W01
@ 024   ----------------------------------------
	.byte	W05
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W13
	.byte		        Fs1 
	.byte	W13
	.byte		N06   
	.byte	W06
	.byte		        Cs1 
	.byte	W19
	.byte		N06   
	.byte	W12
	.byte		N30   , Dn1 
	.byte	W22
@ 025   ----------------------------------------
	.byte	W72
	.byte	W03
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Bn0 
	.byte	W15
@ 026   ----------------------------------------
	.byte	W18
	.byte		N06   
	.byte	W13
	.byte		        Fs1 
	.byte	W44
	.byte	W01
	.byte		        Cs1 
	.byte	W13
	.byte		N12   , Bn0 
	.byte	W07
@ 027   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		N06   , Fs1 
	.byte	W68
	.byte	W03
@ 028   ----------------------------------------
	.byte	W07
	.byte		        Bn0 
	.byte	W14
	.byte		N06   
	.byte	W72
	.byte	W03
@ 029   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		N12   , An1 
	.byte	W16
	.byte		N06   , Gn1 
	.byte	W30
	.byte		N06   
	.byte	W21
@ 030   ----------------------------------------
	.byte	W12
	.byte		N12   , Gn0 
	.byte	W13
	.byte		N06   , Gn1 
	.byte	W56
	.byte		        Dn1 
	.byte	W15
@ 031   ----------------------------------------
	.byte	W42
	.byte		        Fs1 
	.byte	W12
	.byte		N06   
	.byte	W42
@ 032   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		        An1 
	.byte	W44
	.byte	W01
	.byte		        An0 
	.byte	W05
@ 033   ----------------------------------------
	.byte	W13
	.byte		        Dn1 
	.byte	W24
	.byte	W02
	.byte		        Cs1 
	.byte	W56
	.byte	W01
	.byte	GOTO
	 .word	mus_the_world_4_B1
mus_the_world_4_B2:
@ 034   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_the_world:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_the_world_pri	@ Priority
	.byte	mus_the_world_rev	@ Reverb.

	.word	mus_the_world_grp

	.word	mus_the_world_1
	.word	mus_the_world_2
	.word	mus_the_world_3
	.word	mus_the_world_4

	.end
