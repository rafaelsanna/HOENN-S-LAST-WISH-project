	.include "MPlayDef.s"

	.equ	mus_littleroot_grp, voicegroup_littleroot
	.equ	mus_littleroot_pri, 0
	.equ	mus_littleroot_rev, reverb_set+50
	.equ	mus_littleroot_mvl, 100
	.equ	mus_littleroot_key, 0
	.equ	mus_littleroot_tbs, 1
	.equ	mus_littleroot_exg, 1
	.equ	mus_littleroot_cmp, 1

	.section .rodata
	.global	mus_littleroot
	.align	2

@**************** Track 1 (Midi-Chn.2) ****************@

mus_littleroot_1:
	.byte	KEYSH , mus_littleroot_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 107*mus_littleroot_tbs/2
	.byte		VOICE , 73
	.byte		VOL   , 127*mus_littleroot_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Cn4 , v127
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N32   , An4 , v127, gtp3
	.byte	W36
	.byte		N11   , Gn4 
	.byte	W12
mus_littleroot_1_B1:
	.byte		N11   , An4 , v127
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N32   , Cn5 , v127, gtp3
	.byte	W36
	.byte		N11   , Dn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 003   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Dn5 
	.byte	W24
	.byte		N22   , En5 
	.byte	W24
	.byte		N11   , Dn5 
	.byte	W12
@ 004   ----------------------------------------
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N22   , Dn5 
	.byte	W12
@ 005   ----------------------------------------
	.byte	W12
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N44   , Fn4 , v127, gtp3
	.byte	W48
	.byte		N11   , Cn5 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N05   , As4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N44   , Fn4 , v127, gtp3
	.byte	W48
	.byte		N11   , Dn5 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N05   , An4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N68   , Fn4 
	.byte	W60
@ 008   ----------------------------------------
	.byte	W12
	.byte		N11   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N32   , En4 , v127, gtp3
	.byte	W36
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W36
	.byte		N44   , Cn5 , v127, gtp1
	.byte	W48
	.byte		N11   , Cs5 
	.byte	W12
@ 018   ----------------------------------------
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N05   , Fn4 
	.byte	W12
	.byte		N22   
	.byte	W24
	.byte		N11   , En4 
	.byte	W12
	.byte		N22   , Dn4 
	.byte	W12
@ 019   ----------------------------------------
	.byte	W12
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N56   , Gn4 
	.byte	W60
@ 020   ----------------------------------------
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N05   , En4 
	.byte	W12
	.byte		N22   
	.byte	W24
	.byte		N11   , Fn4 
	.byte	W12
	.byte		N22   , Gn4 
	.byte	W12
@ 021   ----------------------------------------
	.byte	W12
	.byte		N11   , An4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N56   , Cn5 
	.byte	W60
@ 022   ----------------------------------------
	.byte		N11   , An4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		N05   , Fn5 
	.byte	W12
	.byte		N11   , En5 
	.byte	W12
	.byte		N05   , Fn5 
	.byte	W12
	.byte		N22   , Dn5 
	.byte	W12
@ 023   ----------------------------------------
	.byte	W12
	.byte		N05   , Fn5 
	.byte	W12
	.byte		N11   , An5 
	.byte	W12
	.byte		N56   , Gn5 
	.byte	W60
@ 024   ----------------------------------------
	.byte		N05   , Fn5 
	.byte	W12
	.byte		N11   , Dn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		N05   , En5 
	.byte	W12
	.byte		N22   
	.byte	W24
	.byte		N11   , Fn5 
	.byte	W12
	.byte		N22   , Gn5 
	.byte	W12
@ 025   ----------------------------------------
	.byte	W12
	.byte		N11   , As4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N32   , An4 , v127, gtp2
	.byte	W36
	.byte		N11   , Gn4 
	.byte	W12
	.byte	GOTO
	 .word	mus_littleroot_1_B1
mus_littleroot_1_B2:
	.byte		VOICE , 73
	.byte		        73
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_littleroot_2:
	.byte	KEYSH , mus_littleroot_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 32
	.byte		VOL   , 127*mus_littleroot_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Cn1 , v096
	.byte	W12
	.byte		N23   , Cn0 
	.byte	W24
	.byte		N32   , Fn1 , v096, gtp3
	.byte	W36
	.byte		N05   
	.byte	W12
mus_littleroot_2_B1:
	.byte		N05   , Cn2 , v096
	.byte	W12
@ 001   ----------------------------------------
mus_littleroot_2_001:
	.byte		N23   , Fn1 , v096
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N32   , An1 , v096, gtp3
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_littleroot_2_002:
	.byte		N23   , An1 , v096
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N32   , Dn1 , v096, gtp3
	.byte	W36
	.byte		N05   , An1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_littleroot_2_003:
	.byte		N23   , An1 , v096
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N32   , Cn1 , v096, gtp3
	.byte	W36
	.byte		N05   , An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_littleroot_2_004:
	.byte		N11   , Fn1 , v096
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N32   , Fn1 , v096, gtp3
	.byte	W36
	.byte		N05   , An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_littleroot_2_005:
	.byte		N23   , As1 , v096
	.byte	W24
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N32   , Gn1 , v096, gtp3
	.byte	W36
	.byte		N05   , Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_littleroot_2_006:
	.byte		N23   , Gn1 , v096
	.byte	W24
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N32   , Cn2 , v096, gtp3
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_littleroot_2_007:
	.byte		N11   , Cn2 , v096
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N32   , En1 , v096, gtp3
	.byte	W36
	.byte		N05   , Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N32   , Fn1 , v096, gtp3
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_2_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_2_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_2_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_2_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_2_007
@ 016   ----------------------------------------
	.byte		N11   , Cn2 , v096
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N32   , An1 , v096, gtp3
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N11   , An1 
	.byte	W12
	.byte		N23   , Dn2 
	.byte	W24
	.byte		N11   , An1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N23   , Gn1 
	.byte	W24
	.byte		N11   , An1 
	.byte	W12
	.byte		N32   , As1 , v096, gtp3
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 019   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N11   , As1 
	.byte	W12
	.byte		N32   , Cn2 , v096, gtp3
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N32   , An1 , v096, gtp3
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N23   , An1 
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N32   , Dn1 , v096, gtp3
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N32   , As1 , v096, gtp3
	.byte	W36
	.byte		N05   , Gn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 023   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N32   , Cn2 , v096, gtp3
	.byte	W36
	.byte		N05   , Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N32   , Fn1 , v096, gtp3
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte	GOTO
	 .word	mus_littleroot_2_B1
mus_littleroot_2_B2:
	.byte		VOICE , 32
	.byte		        32
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.4) ****************@

mus_littleroot_3:
	.byte	KEYSH , mus_littleroot_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 4
	.byte		VOL   , 64*mus_littleroot_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N06   , An2 , v004
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W07
	.byte		N16   , Cn4 , v064
	.byte	W17
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
mus_littleroot_3_B1:
	.byte		N11   , Cn4 , v064
	.byte	W12
@ 001   ----------------------------------------
	.byte		        An2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 002   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W24
@ 003   ----------------------------------------
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W24
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W24
@ 004   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 008   ----------------------------------------
	.byte		        Cn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fn3 , v080
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 009   ----------------------------------------
	.byte		        An2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
@ 011   ----------------------------------------
	.byte		N11   , An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N11   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
@ 012   ----------------------------------------
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 013   ----------------------------------------
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N23   , En3 
	.byte	W36
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W12
@ 016   ----------------------------------------
	.byte	W36
	.byte		N11   , En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 017   ----------------------------------------
mus_littleroot_3_017:
	.byte		N11   , An2 , v080
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_littleroot_3_018:
	.byte		N11   , Bn2 , v080
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_3_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_3_018
@ 023   ----------------------------------------
	.byte		N11   , Bn2 , v080
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 024   ----------------------------------------
	.byte		        Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	GOTO
	 .word	mus_littleroot_3_B1
mus_littleroot_3_B2:
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.5) ****************@

mus_littleroot_4:
	.byte	KEYSH , mus_littleroot_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 71
	.byte		VOL   , 101*mus_littleroot_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W84
mus_littleroot_4_B1:
	.byte	W12
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte		N11   , Cn3 , v076
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 , v100
	.byte	W12
	.byte		N32   , An3 , v100, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W24
	.byte		N23   , Cn4 
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Fn4 
	.byte	W12
@ 011   ----------------------------------------
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N23   , Dn4 
	.byte	W12
@ 012   ----------------------------------------
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N44   , Fn3 , v100, gtp3
	.byte	W48
	.byte		N11   , Cn4 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N05   , As3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N44   , Fn3 , v100, gtp3
	.byte	W48
	.byte		N11   , Dn4 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N05   , An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N68   , Fn3 , v100, gtp3
	.byte	W60
@ 015   ----------------------------------------
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N32   , Gn3 , v100, gtp3
	.byte	W36
	.byte		N11   , An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 016   ----------------------------------------
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N52   , An3 , v100, gtp1
	.byte	W60
@ 017   ----------------------------------------
	.byte		N11   , En3 , v040
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N32   , Fn3 , v040, gtp3
	.byte	W36
	.byte		N11   , En3 
	.byte	W12
	.byte		N17   , Dn3 
	.byte	W12
@ 018   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N52   , Gn3 , v040, gtp1
	.byte	W60
@ 019   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N44   , Cn4 , v040, gtp3
	.byte	W48
	.byte		        As3 , v040, gtp3
	.byte	W12
@ 020   ----------------------------------------
	.byte	W36
	.byte		N52   , An3 , v040, gtp1
	.byte	W60
@ 021   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N44   , Dn4 , v040, gtp3
	.byte	W48
	.byte		        Bn3 , v040, gtp3
	.byte	W12
@ 022   ----------------------------------------
	.byte	W36
	.byte		        As3 , v040, gtp3
	.byte	W48
	.byte		N23   , Bn3 
	.byte	W12
@ 023   ----------------------------------------
	.byte	W12
	.byte		        Dn4 
	.byte	W24
	.byte		N44   , Cn4 , v040, gtp3
	.byte	W48
	.byte		        As3 , v040, gtp3
	.byte	W12
@ 024   ----------------------------------------
	.byte	W84
	.byte	GOTO
	 .word	mus_littleroot_4_B1
mus_littleroot_4_B2:
	.byte		VOICE , 71
	.byte		        71
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.6) ****************@

mus_littleroot_5:
	.byte	KEYSH , mus_littleroot_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 12
	.byte		VOL   , 127*mus_littleroot_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W84
mus_littleroot_5_B1:
	.byte	W12
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W12
	.byte		N11   , An5 , v112
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		N44   , Cn6 , v112, gtp3
	.byte	W48
	.byte		N11   , Cs6 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        As5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , En5 
	.byte	W12
	.byte		N23   , Dn5 
	.byte	W12
@ 018   ----------------------------------------
	.byte	W12
	.byte		N11   , Fn5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		N56   , Gn5 , v112, gtp3
	.byte	W60
@ 019   ----------------------------------------
	.byte		N11   , Fn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Fn5 
	.byte	W12
	.byte		N23   , Gn5 
	.byte	W12
@ 020   ----------------------------------------
	.byte	W12
	.byte		N11   , An5 
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		N56   , Cn6 , v112, gtp3
	.byte	W60
@ 021   ----------------------------------------
	.byte		N11   , An5 
	.byte	W12
	.byte		        Cs6 
	.byte	W12
	.byte		        En6 
	.byte	W12
	.byte		        Gn6 
	.byte	W12
	.byte		        Fn6 
	.byte	W12
	.byte		        En6 
	.byte	W12
	.byte		        Fn6 
	.byte	W12
	.byte		N23   , Dn6 
	.byte	W12
@ 022   ----------------------------------------
	.byte	W12
	.byte		N11   , Fn6 
	.byte	W12
	.byte		        An6 
	.byte	W12
	.byte		N56   , Gn6 , v112, gtp3
	.byte	W60
@ 023   ----------------------------------------
	.byte		N11   , Fn6 
	.byte	W12
	.byte		        Dn6 
	.byte	W12
	.byte		        Fn6 
	.byte	W12
	.byte		N05   , En6 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Fn6 
	.byte	W12
	.byte		N44   , Gn6 , v112, gtp3
	.byte	W12
@ 024   ----------------------------------------
	.byte	W84
	.byte	GOTO
	 .word	mus_littleroot_5_B1
mus_littleroot_5_B2:
	.byte		VOICE , 12
	.byte		        12
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.7) ****************@

mus_littleroot_6:
	.byte	KEYSH , mus_littleroot_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 7
	.byte		VOL   , 84*mus_littleroot_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W84
mus_littleroot_6_B1:
	.byte	W12
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W36
	.byte		N92   , An2 , v068, gtp3
	.byte	W60
@ 009   ----------------------------------------
	.byte	W36
	.byte		N44   , Cn3 , v068, gtp3
	.byte	W48
	.byte		        Cs3 , v068, gtp3
	.byte	W12
@ 010   ----------------------------------------
	.byte	W36
	.byte		        Dn3 , v068, gtp3
	.byte	W48
	.byte		        Cs3 , v068, gtp3
	.byte	W12
@ 011   ----------------------------------------
	.byte	W36
	.byte		        Cn3 , v068, gtp3
	.byte	W48
	.byte		        Bn2 , v068, gtp3
	.byte	W12
@ 012   ----------------------------------------
	.byte	W36
	.byte		N92   , Fn2 , v068, gtp3
	.byte	W60
@ 013   ----------------------------------------
	.byte	W36
	.byte		TIE   , Gn2 
	.byte	W60
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N44   , En2 , v068, gtp3
	.byte	W48
	.byte		        Cn2 , v068, gtp3
	.byte	W12
@ 016   ----------------------------------------
mus_littleroot_6_016:
	.byte	W36
	.byte		N44   , An2 , v068, gtp3
	.byte	W48
	.byte		        Cs3 , v068, gtp3
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte	W36
	.byte		        Dn3 , v068, gtp3
	.byte	W48
	.byte		        Bn2 , v068, gtp3
	.byte	W12
@ 018   ----------------------------------------
	.byte	W36
	.byte		        As2 , v068, gtp3
	.byte	W48
	.byte		        Gn2 , v068, gtp3
	.byte	W12
@ 019   ----------------------------------------
	.byte	W36
	.byte		        Cn3 , v068, gtp3
	.byte	W48
	.byte		        As2 , v068, gtp3
	.byte	W12
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_6_016
@ 021   ----------------------------------------
	.byte	W36
	.byte		N44   , Dn2 , v068, gtp3
	.byte	W48
	.byte		        Bn2 , v068, gtp3
	.byte	W12
@ 022   ----------------------------------------
	.byte	W36
	.byte		        As2 , v068, gtp3
	.byte	W48
	.byte		        Bn2 , v068, gtp3
	.byte	W12
@ 023   ----------------------------------------
	.byte	W36
	.byte		        Cn3 , v068, gtp3
	.byte	W48
	.byte		        Gn2 , v068, gtp3
	.byte	W12
@ 024   ----------------------------------------
	.byte	W84
	.byte	GOTO
	 .word	mus_littleroot_6_B1
mus_littleroot_6_B2:
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.8) ****************@

mus_littleroot_7:
	.byte	KEYSH , mus_littleroot_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 57*mus_littleroot_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W36
	.byte		N06   , Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
mus_littleroot_7_B1:
	.byte		N06   , Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
@ 001   ----------------------------------------
	.byte		N05   , Fn5 , v112
	.byte	W06
	.byte		N06   , Fn5 , v040
	.byte	W06
	.byte		N05   , Fn5 , v112
	.byte	W06
	.byte		N06   , Fn5 , v040
	.byte	W06
	.byte		N05   , Fn5 , v112
	.byte	W06
	.byte		N06   , Fn5 , v040
	.byte	W06
	.byte		N05   , Fn5 , v112
	.byte	W06
	.byte		N06   , Fn5 , v040
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
@ 002   ----------------------------------------
mus_littleroot_7_002:
	.byte		N06   , Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_7_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_7_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_7_002
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_7_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_7_002
@ 008   ----------------------------------------
	.byte		N06   , Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
@ 009   ----------------------------------------
mus_littleroot_7_009:
	.byte		N06   , Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_7_009
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_7_009
@ 012   ----------------------------------------
	.byte		N06   , Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
@ 013   ----------------------------------------
mus_littleroot_7_013:
	.byte		N06   , Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_7_009
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_7_009
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_7_009
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_7_009
@ 018   ----------------------------------------
mus_littleroot_7_018:
	.byte		N06   , Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_7_009
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_7_009
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_7_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_7_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_7_013
@ 024   ----------------------------------------
	.byte		N06   , Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		        Fn4 , v032
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v032
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v032
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v032
	.byte	W06
	.byte		        Fn5 , v112
	.byte	W06
	.byte		        Fn5 , v032
	.byte	W06
	.byte	GOTO
	 .word	mus_littleroot_7_B1
mus_littleroot_7_B2:
	.byte		VOICE , 127
	.byte		        127
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 8 (Midi-Chn.10) ****************@

mus_littleroot_8:
	.byte	KEYSH , mus_littleroot_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_littleroot_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W84
mus_littleroot_8_B1:
	.byte	W12
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W36
	.byte		N23   , An2 , v108
	.byte	W24
	.byte		N11   , Fs2 , v080
	.byte	W12
	.byte		        Fs2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
@ 009   ----------------------------------------
mus_littleroot_8_009:
	.byte		N11   , Fs2 , v052
	.byte	W12
	.byte		        Fs2 , v080
	.byte	W12
	.byte		        Fs2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fs2 , v080
	.byte	W12
	.byte		        Fs2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_8_009
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_8_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_8_009
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_8_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_8_009
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_8_009
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_8_009
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_8_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_8_009
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_8_009
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_8_009
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_8_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_8_009
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_littleroot_8_009
@ 024   ----------------------------------------
	.byte		N11   , Fs2 , v052
	.byte	W12
	.byte		        Fs2 , v080
	.byte	W12
	.byte		        Fs2 , v052
	.byte	W12
	.byte		N44   , An2 , v108, gtp3
	.byte	W48
	.byte	GOTO
	 .word	mus_littleroot_8_B1
mus_littleroot_8_B2:
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_littleroot:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_littleroot_pri	@ Priority
	.byte	mus_littleroot_rev	@ Reverb.

	.word	mus_littleroot_grp

	.word	mus_littleroot_1
	.word	mus_littleroot_2
	.word	mus_littleroot_3
	.word	mus_littleroot_4
	.word	mus_littleroot_5
	.word	mus_littleroot_6
	.word	mus_littleroot_7
	.word	mus_littleroot_8

	.end
