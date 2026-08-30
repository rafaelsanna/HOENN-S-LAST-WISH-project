	.include "MPlayDef.s"

	.equ	mus_distance_grp, voicegroup_distance
	.equ	mus_distance_pri, 0
	.equ	mus_distance_rev, reverb_set+50
	.equ	mus_distance_mvl, 100
	.equ	mus_distance_key, 0
	.equ	mus_distance_tbs, 1
	.equ	mus_distance_exg, 1
	.equ	mus_distance_cmp, 1

	.section .rodata
	.global	mus_distance
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_distance_1:
	.byte	KEYSH , mus_distance_key+0
mus_distance_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 103*mus_distance_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_distance_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W36
	.byte		N11   , Gn0 , v096
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 001   ----------------------------------------
mus_distance_1_001:
	.byte		N11   , En1 , v096
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_distance_1_002:
	.byte		N11   , An1 , v096
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_distance_1_003:
	.byte		N11   , En1 , v096
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_002
@ 007   ----------------------------------------
mus_distance_1_007:
	.byte		N11   , En1 , v096
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N92   , Bn0 , v096, gtp3
	.byte	W60
	.byte	PEND
@ 008   ----------------------------------------
	.byte	W36
	.byte		N11   , Fs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 009   ----------------------------------------
mus_distance_1_009:
	.byte		N11   , Dn2 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_009
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_009
@ 012   ----------------------------------------
	.byte		N11   , Dn2 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 013   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 014   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Gn0 
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , An0 
	.byte	W12
@ 015   ----------------------------------------
	.byte	W12
	.byte		N11   , An1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Dn1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W12
@ 016   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
@ 018   ----------------------------------------
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 019   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N44   , Dn1 , v096, gtp3
	.byte	W12
@ 021   ----------------------------------------
	.byte	W36
	.byte		N11   , Gn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_002
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_003
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_002
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_002
@ 028   ----------------------------------------
	.byte		N11   , En1 , v096
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
@ 029   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_001
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_002
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_003
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_002
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_002
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_1_007
@ 037   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte	GOTO
	 .word	mus_distance_1_B1
mus_distance_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_distance_2:
	.byte	KEYSH , mus_distance_key+0
mus_distance_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_distance_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N11   , Fs4 , v056
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N32   , Gn3 , v056, gtp3
	.byte		N32   , Bn3 , v056, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N23   , En3 
	.byte		N23   , An3 
	.byte	W12
@ 001   ----------------------------------------
mus_distance_2_001:
	.byte	W12
	.byte		N11   , En3 , v056
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N17   , Dn3 
	.byte		N17   , Fs3 
	.byte	W18
	.byte		N05   , Dn3 
	.byte	W06
	.byte		N32   , An2 , v056, gtp3
	.byte		N32   , Dn3 , v056, gtp3
	.byte	W36
	.byte	PEND
@ 002   ----------------------------------------
mus_distance_2_002:
	.byte		N11   , Dn3 , v056
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte		N11   , Bn3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte		N23   , Bn3 
	.byte	W24
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N23   , En3 
	.byte		N23   , An3 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_distance_2_003:
	.byte	W12
	.byte		N05   , An3 , v056
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N17   , Fs3 
	.byte		N17   , Bn3 
	.byte	W18
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N32   , Fs3 , v056, gtp3
	.byte		N32   , Cs4 , v056, gtp3
	.byte	W36
	.byte	PEND
@ 004   ----------------------------------------
mus_distance_2_004:
	.byte		N11   , Fs4 , v056
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N32   , Gn3 , v056, gtp3
	.byte		N32   , Bn3 , v056, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N23   , En3 
	.byte		N23   , An3 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_distance_2_005:
	.byte	W12
	.byte		N11   , An3 , v056
	.byte	W12
	.byte		N05   , Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N17   , Dn3 
	.byte		N17   , Fs3 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_distance_2_006:
	.byte		N11   , Dn4 , v056
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N32   , Fs3 , v056, gtp3
	.byte		N32   , Bn3 , v056, gtp3
	.byte	W36
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N23   , An3 
	.byte		N23   , Cs4 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W12
	.byte		N11   , An3 
	.byte	W12
	.byte		N05   , Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N17   , Fs3 
	.byte		N17   , Cs4 
	.byte	W18
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N44   , Fs3 , v056, gtp3
	.byte		N44   , An3 , v056, gtp3
	.byte	W36
@ 008   ----------------------------------------
mus_distance_2_008:
	.byte	W12
	.byte		N11   , Dn3 , v056
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N68   , Dn3 , v056, gtp3
	.byte		N68   , Fs3 , v056, gtp3
	.byte	W60
	.byte	PEND
@ 009   ----------------------------------------
mus_distance_2_009:
	.byte	W12
	.byte		N05   , An3 , v056
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N11   , An3 
	.byte	W12
	.byte		        An2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N32   , Dn3 , v056, gtp3
	.byte		N32   , Gs3 , v056, gtp3
	.byte	W36
	.byte	PEND
@ 010   ----------------------------------------
	.byte		N11   , An3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn3 
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N44   , Dn4 , v056, gtp3
	.byte	W48
@ 011   ----------------------------------------
	.byte		N11   , An3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N17   , Fs3 
	.byte		N17   , Bn3 
	.byte	W18
	.byte		N05   , Dn3 
	.byte	W06
	.byte		N44   , Fs3 , v056, gtp3
	.byte		N44   , Dn4 , v056, gtp3
	.byte	W36
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_2_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_2_009
@ 014   ----------------------------------------
	.byte		N11   , An3 , v056
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn3 
	.byte		N11   , Fs3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn3 
	.byte		N11   , Fs3 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Dn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N80   , Fs3 , v056, gtp3
	.byte		N80   , An3 , v056, gtp3
	.byte	W12
	.byte		N68   , Dn4 , v056, gtp3
	.byte	W48
@ 016   ----------------------------------------
	.byte	W24
	.byte		N11   , Fs3 
	.byte		N11   , An3 
	.byte	W12
	.byte		N32   , Gn3 , v056, gtp3
	.byte		N32   , Bn3 , v056, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N23   , An3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N05   , An3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte		N11   , Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fs3 
	.byte		N11   , Bn3 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N32   , En3 , v056, gtp3
	.byte		N32   , Gn3 , v056, gtp3
	.byte	W36
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte		N11   , An3 
	.byte	W12
@ 019   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N23   , Fn3 
	.byte		N23   , As3 
	.byte	W24
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Gn3 
	.byte		N23   , Cn4 
	.byte	W12
@ 020   ----------------------------------------
	.byte	W12
	.byte		        An3 
	.byte		N23   , Cn4 
	.byte	W24
	.byte		N44   , Fs3 , v056, gtp3
	.byte		N44   , Dn4 , v056, gtp3
	.byte	W60
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_2_004
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_2_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_2_002
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_2_003
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_2_004
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_2_005
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_2_006
@ 028   ----------------------------------------
	.byte	W12
	.byte		N11   , An3 , v056
	.byte	W12
	.byte		N05   , Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N17   , Fs3 
	.byte		N17   , Cs4 
	.byte	W18
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N32   , Fs3 , v056, gtp3
	.byte		N32   , An3 , v056, gtp3
	.byte	W36
@ 029   ----------------------------------------
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N32   , Dn3 , v056, gtp3
	.byte		N32   , Gn3 , v056, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N23   , En3 
	.byte		N23   , An3 
	.byte	W12
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_2_001
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_2_002
@ 032   ----------------------------------------
	.byte	W12
	.byte		N05   , An3 , v056
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N23   , Fs3 
	.byte		N23   , Bn3 
	.byte	W24
	.byte		N32   , Fs3 , v056, gtp3
	.byte		N32   , Cs4 , v056, gtp3
	.byte	W36
@ 033   ----------------------------------------
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N32   , Dn3 , v056, gtp3
	.byte		N32   , Bn3 , v056, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N23   , Cs3 
	.byte		N23   , An3 
	.byte	W12
@ 034   ----------------------------------------
	.byte	W12
	.byte		N11   , Cs3 
	.byte		N11   , An3 
	.byte	W12
	.byte		N05   , Dn3 
	.byte		N05   , Bn3 
	.byte	W06
	.byte		        En3 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		N17   , Bn2 
	.byte		N17   , Fs3 
	.byte	W18
	.byte		        Dn3 
	.byte		N17   , Fs3 
	.byte	W18
	.byte		N11   
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte		N11   , Fs4 
	.byte	W12
@ 035   ----------------------------------------
	.byte		        Bn3 
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        An3 
	.byte		N11   , Cs4 
	.byte	W12
	.byte		        Gn3 
	.byte		N11   , Bn3 
	.byte	W12
	.byte		N32   , Dn3 , v056, gtp3
	.byte		N32   , Bn3 , v056, gtp3
	.byte	W36
	.byte		N11   , Fs3 
	.byte		N11   , Bn3 
	.byte	W12
	.byte		N23   , En3 
	.byte		N23   , An3 
	.byte	W12
@ 036   ----------------------------------------
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N17   , Fs3 
	.byte		N17   , Cs4 
	.byte	W18
	.byte		N76   , Dn3 , v056, gtp1
	.byte		N76   , Fs3 , v056, gtp1
	.byte	W42
@ 037   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte	GOTO
	 .word	mus_distance_2_B1
mus_distance_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_distance_3:
	.byte	KEYSH , mus_distance_key+0
mus_distance_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 106*mus_distance_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N11   , Fs4 , v092
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N32   , Dn4 , v092, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N23   , Cs4 
	.byte	W12
@ 001   ----------------------------------------
mus_distance_3_001:
	.byte	W12
	.byte		N11   , Cs4 , v092
	.byte	W12
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N17   , Bn3 
	.byte	W18
	.byte		N05   , An3 
	.byte	W06
	.byte		N32   , An3 , v092, gtp3
	.byte	W36
	.byte	PEND
@ 002   ----------------------------------------
mus_distance_3_002:
	.byte		N11   , An3 , v092
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N23   , Dn4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   , Cs4 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_distance_3_003:
	.byte	W12
	.byte		N05   , Cs4 , v092
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N11   , En4 
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N05   , Dn4 
	.byte	W06
	.byte		N32   , Fs4 , v092, gtp3
	.byte	W36
	.byte	PEND
@ 004   ----------------------------------------
mus_distance_3_004:
	.byte		N11   , Fs4 , v092
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N32   , Dn4 , v092, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N23   , Cs4 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_distance_3_005:
	.byte	W12
	.byte		N11   , Cs4 , v092
	.byte	W12
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N17   , Bn3 
	.byte	W18
	.byte		N05   , An3 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_distance_3_006:
	.byte		N11   , Fs4 , v092
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N32   , Dn4 , v092, gtp3
	.byte	W36
	.byte		N11   , Fs4 
	.byte	W12
	.byte		N23   , En4 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte	W12
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N05   , Dn4 
	.byte	W06
	.byte		N44   , Dn4 , v092, gtp3
	.byte	W36
@ 008   ----------------------------------------
mus_distance_3_008:
	.byte	W12
	.byte		N11   , Fs3 , v092
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N68   , An3 , v092, gtp3
	.byte	W60
	.byte	PEND
@ 009   ----------------------------------------
mus_distance_3_009:
	.byte	W12
	.byte		N05   , An3 , v092
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N11   , An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N32   , Dn4 , v092, gtp3
	.byte	W36
	.byte	PEND
@ 010   ----------------------------------------
	.byte		N11   , An3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N44   , Dn4 , v092, gtp3
	.byte	W48
@ 011   ----------------------------------------
	.byte		N11   , An3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N17   , En4 
	.byte	W18
	.byte		N05   , Dn4 
	.byte	W06
	.byte		N44   , Fs4 , v092, gtp3
	.byte	W36
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_3_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_3_009
@ 014   ----------------------------------------
	.byte		N11   , An3 , v092
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Dn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N68   , Dn4 , v092, gtp3
	.byte	W48
@ 016   ----------------------------------------
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N32   , En4 , v092, gtp3
	.byte	W36
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N23   , En4 
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		        Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N32   , Dn4 , v092, gtp3
	.byte	W36
	.byte		N11   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 019   ----------------------------------------
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N23   , Dn4 
	.byte	W24
	.byte		N11   , As3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , En4 
	.byte	W12
@ 020   ----------------------------------------
	.byte	W12
	.byte		        Gn4 
	.byte	W24
	.byte		N44   , Fs4 , v092, gtp3
	.byte	W60
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_3_004
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_3_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_3_002
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_3_003
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_3_004
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_3_005
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_3_006
@ 028   ----------------------------------------
	.byte	W12
	.byte		N11   , Cs4 , v092
	.byte	W12
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N05   , Dn4 
	.byte	W06
	.byte		N32   , Dn4 , v092, gtp3
	.byte	W36
@ 029   ----------------------------------------
	.byte		N11   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N32   , Bn3 , v092, gtp3
	.byte	W36
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N23   , Cs4 
	.byte	W12
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_3_001
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_3_002
@ 032   ----------------------------------------
	.byte	W12
	.byte		N05   , Cs4 , v092
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N11   , En4 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N32   , Fs4 , v092, gtp3
	.byte	W36
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_3_004
@ 034   ----------------------------------------
	.byte	W12
	.byte		N11   , Cs4 , v092
	.byte	W12
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N17   , Bn3 
	.byte	W18
	.byte		        An3 
	.byte	W18
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_distance_3_006
@ 036   ----------------------------------------
	.byte	W12
	.byte		N11   , Cs4 , v092
	.byte	W12
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N76   , Dn4 , v092, gtp1
	.byte	W42
@ 037   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte	GOTO
	 .word	mus_distance_3_B1
mus_distance_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_distance:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_distance_pri	@ Priority
	.byte	mus_distance_rev	@ Reverb.

	.word	mus_distance_grp

	.word	mus_distance_1
	.word	mus_distance_2
	.word	mus_distance_3

	.end
