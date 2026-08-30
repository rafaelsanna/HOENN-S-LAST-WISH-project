	.include "MPlayDef.s"

	.equ	mus_kokuten_grp, voicegroup_kokuten
	.equ	mus_kokuten_pri, 0
	.equ	mus_kokuten_rev, reverb_set+50
	.equ	mus_kokuten_mvl, 100
	.equ	mus_kokuten_key, 0
	.equ	mus_kokuten_tbs, 1
	.equ	mus_kokuten_exg, 1
	.equ	mus_kokuten_cmp, 1

	.section .rodata
	.global	mus_kokuten
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_kokuten_1:
	.byte	KEYSH , mus_kokuten_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 92*mus_kokuten_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_kokuten_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N32   , Dn1 , v096, gtp3
	.byte	W36
	.byte		        Dn1 , v096, gtp3
	.byte	W36
	.byte		N23   
	.byte	W24
@ 001   ----------------------------------------
	.byte	TEMPO , 92*mus_kokuten_tbs/2
	.byte		N32   , Dn1 , v096, gtp3
	.byte	W36
	.byte		        Dn1 , v096, gtp3
	.byte	W36
	.byte		N23   
	.byte	W24
@ 002   ----------------------------------------
mus_kokuten_1_002:
	.byte		N17   , Dn1 , v096
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_002
@ 006   ----------------------------------------
mus_kokuten_1_006:
	.byte		N17   , As0 , v096
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_kokuten_1_007:
	.byte		N17   , As0 , v096
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N11   , Cn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_002
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_002
@ 013   ----------------------------------------
mus_kokuten_1_013:
	.byte		N05   , Dn1 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_013
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_013
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_013
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_013
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_002
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_013
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_002
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_013
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_013
mus_kokuten_1_B1:
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_002
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_002
@ 029   ----------------------------------------
mus_kokuten_1_029:
	.byte		N32   , Gn0 , v096, gtp3
	.byte	W06
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		N28   , Gn0 , v096, gtp1
	.byte	W12
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N23   , Dn1 
	.byte	W06
	.byte		N05   , As1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	PEND
@ 030   ----------------------------------------
mus_kokuten_1_030:
	.byte		N32   , An0 , v096, gtp3
	.byte	W06
	.byte		N11   , An1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N28   , An0 , v096, gtp1
	.byte	W12
	.byte		N11   , An1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N23   , En1 
	.byte	W06
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_002
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_029
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_1_030
	.byte	GOTO
	 .word	mus_kokuten_1_B1
mus_kokuten_1_B2:
@ 035   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_kokuten_2:
	.byte	KEYSH , mus_kokuten_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_kokuten_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N05   , An3 , v056
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 001   ----------------------------------------
mus_kokuten_2_001:
	.byte		N05   , An3 , v056
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_kokuten_2_002:
	.byte		N05   , Fn3 , v056
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_2_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_2_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_2_002
@ 006   ----------------------------------------
mus_kokuten_2_006:
	.byte		N05   , As2 , v056
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_2_006
@ 008   ----------------------------------------
mus_kokuten_2_008:
	.byte		N05   , An3 , v056
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        An3 
	.byte		N05   , Dn4 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        An3 
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_2_008
@ 010   ----------------------------------------
mus_kokuten_2_010:
	.byte		N05   , As3 , v056
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_2_010
@ 012   ----------------------------------------
	.byte		N05   , Fn4 , v056
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 013   ----------------------------------------
	.byte		N68   , Dn3 , v056, gtp3
	.byte		N68   , Fn3 , v056, gtp3
	.byte	W72
	.byte		N23   , An2 
	.byte		N23   , Dn3 
	.byte	W24
@ 014   ----------------------------------------
	.byte		N44   , Bn2 , v056, gtp3
	.byte		N44   , Dn3 , v056, gtp3
	.byte	W48
	.byte		N23   , An2 
	.byte		N23   , Dn3 
	.byte	W24
	.byte		        An2 
	.byte		N23   , Cn3 
	.byte	W24
@ 015   ----------------------------------------
	.byte		N92   , Fn2 , v056, gtp3
	.byte		N92   , An2 , v056, gtp3
	.byte	W96
@ 016   ----------------------------------------
	.byte		N68   , Dn4 , v056, gtp3
	.byte	W72
	.byte		N23   , Fn2 
	.byte		N23   , An2 
	.byte	W24
@ 017   ----------------------------------------
mus_kokuten_2_017:
	.byte		N68   , Dn3 , v056, gtp3
	.byte		N68   , Fn3 , v056, gtp3
	.byte	W72
	.byte		N23   
	.byte		N23   , An3 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_kokuten_2_018:
	.byte		N44   , Dn3 , v056, gtp3
	.byte		N44   , Gn3 , v056, gtp3
	.byte	W48
	.byte		N23   , Dn3 
	.byte		N23   , Gn3 
	.byte	W24
	.byte		        Bn2 
	.byte		N23   , Dn3 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
mus_kokuten_2_019:
	.byte		N05   , An2 , v056
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte		N05   , Dn3 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fn2 
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_2_019
@ 021   ----------------------------------------
	.byte		N68   , An2 , v056, gtp3
	.byte		N68   , Dn3 , v056, gtp3
	.byte	W72
	.byte		N23   , Fn2 
	.byte		N23   , An2 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N44   , Bn2 , v056, gtp3
	.byte		N44   , Dn3 , v056, gtp3
	.byte	W48
	.byte		N23   , Bn2 
	.byte		N23   , Dn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N23   , Bn2 
	.byte	W24
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_2_008
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_2_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_2_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_2_018
mus_kokuten_2_B1:
@ 027   ----------------------------------------
	.byte		N05   , Dn4 , v056
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 028   ----------------------------------------
	.byte		        Fn4 
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 029   ----------------------------------------
mus_kokuten_2_029:
	.byte		N32   , Gn3 , v056, gtp3
	.byte		N32   , Dn4 , v056, gtp3
	.byte	W36
	.byte		N44   , Dn3 , v056, gtp3
	.byte		N44   , As3 , v056, gtp3
	.byte	W60
	.byte	PEND
@ 030   ----------------------------------------
mus_kokuten_2_030:
	.byte		N32   , Fn3 , v056, gtp3
	.byte		N32   , Cs4 , v056, gtp3
	.byte	W36
	.byte		N44   , En3 , v056, gtp3
	.byte		N44   , Cs4 , v056, gtp3
	.byte	W60
	.byte	PEND
@ 031   ----------------------------------------
mus_kokuten_2_031:
	.byte		N32   , An3 , v056, gtp3
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N32   , Gn3 , v056, gtp3
	.byte		N05   , Dn4 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N23   , Fn3 
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_2_031
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_2_029
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_2_030
	.byte	GOTO
	 .word	mus_kokuten_2_B1
mus_kokuten_2_B2:
@ 035   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_kokuten_3:
	.byte	KEYSH , mus_kokuten_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 106*mus_kokuten_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N05   , An3 , v092
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 001   ----------------------------------------
mus_kokuten_3_001:
	.byte		N05   , An3 , v092
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_001
@ 008   ----------------------------------------
mus_kokuten_3_008:
	.byte		N05   , An4 , v092
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_008
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_008
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_008
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_008
@ 013   ----------------------------------------
	.byte		N68   , An3 , v092, gtp3
	.byte	W72
	.byte		N23   , Fn3 
	.byte	W24
@ 014   ----------------------------------------
mus_kokuten_3_014:
	.byte		N44   , Gn3 , v092, gtp3
	.byte	W48
	.byte		N23   , Fn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
	.byte		N92   , Dn3 , v092, gtp3
	.byte	W96
@ 016   ----------------------------------------
	.byte		N68   , An4 , v092, gtp3
	.byte	W72
	.byte		N23   , Dn3 
	.byte	W24
@ 017   ----------------------------------------
mus_kokuten_3_017:
	.byte		N68   , An3 , v092, gtp3
	.byte	W72
	.byte		N23   , Cn4 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
mus_kokuten_3_018:
	.byte		N44   , Bn3 , v092, gtp3
	.byte	W48
	.byte		N23   
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_001
@ 021   ----------------------------------------
	.byte		N68   , Fn3 , v092, gtp3
	.byte	W72
	.byte		N23   , Dn3 
	.byte	W24
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_014
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_008
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_017
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_018
mus_kokuten_3_B1:
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_008
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_008
@ 029   ----------------------------------------
mus_kokuten_3_029:
	.byte		N32   , Fn4 , v092, gtp3
	.byte	W36
	.byte		N44   , Dn4 , v092, gtp3
	.byte	W60
	.byte	PEND
@ 030   ----------------------------------------
mus_kokuten_3_030:
	.byte		N32   , Fn4 , v092, gtp3
	.byte	W36
	.byte		N44   , En4 , v092, gtp3
	.byte	W60
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_008
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_029
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_kokuten_3_030
	.byte	GOTO
	 .word	mus_kokuten_3_B1
mus_kokuten_3_B2:
@ 035   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_kokuten:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_kokuten_pri	@ Priority
	.byte	mus_kokuten_rev	@ Reverb.

	.word	mus_kokuten_grp

	.word	mus_kokuten_1
	.word	mus_kokuten_2
	.word	mus_kokuten_3

	.end
