	.include "MPlayDef.s"

	.equ	mus_vs_wild_grp, voicegroup_vs_wild
	.equ	mus_vs_wild_pri, 1
	.equ	mus_vs_wild_rev, reverb_set+50
	.equ	mus_vs_wild_mvl, 80
	.equ	mus_vs_wild_key, 0
	.equ	mus_vs_wild_tbs, 1
	.equ	mus_vs_wild_exg, 1
	.equ	mus_vs_wild_cmp, 1

	.section .rodata
	.global	mus_vs_wild
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_vs_wild_1:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 197*mus_vs_wild_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 95*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W12
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
@ 004   ----------------------------------------
mus_vs_wild_1_004:
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_004
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_004
@ 010   ----------------------------------------
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N48   
	.byte	W36
mus_vs_wild_1_B1:
@ 011   ----------------------------------------
	.byte	W12
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
@ 012   ----------------------------------------
mus_vs_wild_1_012:
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_012
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_012
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_012
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_012
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_012
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_012
@ 020   ----------------------------------------
	.byte		N24   , An4 , v076
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N48   
	.byte	W48
@ 021   ----------------------------------------
	.byte	W24
	.byte		VOICE , 126
	.byte		N24   , As4 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 022   ----------------------------------------
mus_vs_wild_1_022:
	.byte		N24   , As4 , v076
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 028   ----------------------------------------
	.byte		N24   , As4 , v076
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N48   
	.byte	W24
@ 029   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_022
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte		VOICE , 127
	.byte	W12
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 056   ----------------------------------------
mus_vs_wild_1_056:
	.byte		N12   , Fs4 , v076
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_056
@ 058   ----------------------------------------
	.byte		VOICE , 126
	.byte		N24   , An4 , v076
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N60   
	.byte	W48
@ 059   ----------------------------------------
	.byte	W12
	.byte		VOICE , 127
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_056
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_056
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_056
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_056
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_056
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_056
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_056
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_012
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_012
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_012
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_012
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_012
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_012
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_012
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_1_056
	.byte	GOTO
	 .word	mus_vs_wild_1_B1
mus_vs_wild_1_B2:
@ 075   ----------------------------------------
	.byte		VOICE , 127
	.byte		        127
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_vs_wild_2:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 60
	.byte		VOL   , 127*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N68   , Cn3 , v127, gtp3
	.byte	W72
	.byte		N11   
	.byte	W24
@ 001   ----------------------------------------
	.byte		N92   , Cs3 , v127, gtp3
	.byte	W96
@ 002   ----------------------------------------
mus_vs_wild_2_002:
	.byte		N17   , Cn3 , v127
	.byte	W36
	.byte		        Ds3 
	.byte	W36
	.byte		N11   , Cs3 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        Cn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W24
	.byte		        Ds3 
	.byte	W36
	.byte		N23   , Gs2 
	.byte	W24
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_002
@ 005   ----------------------------------------
	.byte		N11   , Cn3 , v127
	.byte	W12
	.byte		        Cs3 
	.byte	W24
	.byte		        Ds3 
	.byte	W36
	.byte		N23   , Gs3 
	.byte	W24
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_002
@ 007   ----------------------------------------
	.byte		N11   , Cn3 , v127
	.byte	W12
	.byte		        Cs3 
	.byte	W24
	.byte		        Ds3 
	.byte	W36
	.byte		N23   , Cs3 
	.byte	W24
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_002
@ 009   ----------------------------------------
	.byte		N11   , Cn3 , v127
	.byte	W12
	.byte		        Cs3 
	.byte	W24
	.byte		        Ds3 
	.byte	W36
	.byte		N23   , Gn3 
	.byte	W24
mus_vs_wild_2_B1:
@ 010   ----------------------------------------
	.byte		VOICE , 56
	.byte		N44   , Cn4 , v127, gtp3
	.byte	W48
	.byte		        As3 , v127, gtp3
	.byte	W48
@ 011   ----------------------------------------
mus_vs_wild_2_011:
	.byte		N32   , Dn4 , v127, gtp3
	.byte	W36
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_vs_wild_2_012:
	.byte		N68   , Gs4 , v127, gtp3
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte		N44   , Fn4 , v127, gtp3
	.byte	W48
	.byte		        Cs4 , v127, gtp3
	.byte	W48
@ 014   ----------------------------------------
	.byte		        Cn4 , v127, gtp3
	.byte	W48
	.byte		N32   , As3 , v127, gtp3
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W12
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_012
@ 017   ----------------------------------------
	.byte		N32   , As4 , v127, gtp3
	.byte	W36
	.byte		N23   , Gs4 
	.byte	W24
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N56   , Gn4 , v127, gtp3
	.byte	W60
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 019   ----------------------------------------
	.byte		N92   , En4 , v127, gtp3
	.byte	W96
@ 020   ----------------------------------------
	.byte		VOICE , 47
	.byte		N32   , Cn2 , v124, gtp3
	.byte	W36
	.byte		N11   
	.byte	W60
@ 021   ----------------------------------------
mus_vs_wild_2_021:
	.byte		N32   , Cn2 , v124, gtp3
	.byte	W36
	.byte		N11   
	.byte	W48
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_vs_wild_2_022:
	.byte		N32   , Cn2 , v124, gtp3
	.byte	W36
	.byte		N11   
	.byte	W60
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_021
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_022
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_022
@ 027   ----------------------------------------
	.byte		N32   , Cn2 , v124, gtp3
	.byte	W36
	.byte		N11   
	.byte	W48
	.byte		N05   , An1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
@ 028   ----------------------------------------
	.byte		VOICE , 56
	.byte		N32   , Gn3 , v127, gtp3
	.byte	W36
	.byte		        En3 , v127, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 029   ----------------------------------------
	.byte		N32   , Cn4 , v127, gtp3
	.byte	W36
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N32   , As3 , v127, gtp3
	.byte	W36
@ 030   ----------------------------------------
	.byte		        Cn4 , v127, gtp3
	.byte	W36
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 031   ----------------------------------------
	.byte		N44   , Cn4 , v127, gtp3
	.byte	W48
	.byte		        Gn3 , v127, gtp3
	.byte	W48
@ 032   ----------------------------------------
	.byte		N32   , Gn3 , v127, gtp3
	.byte	W36
	.byte		        En4 , v127, gtp3
	.byte	W36
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 033   ----------------------------------------
	.byte		N32   , As3 , v127, gtp3
	.byte	W36
	.byte		N56   , Fn4 , v127, gtp3
	.byte	W60
@ 034   ----------------------------------------
	.byte		N32   , Fn3 , v127, gtp3
	.byte	W36
	.byte		N23   , As3 
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 035   ----------------------------------------
	.byte		N32   , En3 , v127, gtp3
	.byte	W36
	.byte		N56   , Cn3 , v127, gtp3
	.byte	W60
@ 036   ----------------------------------------
	.byte		N32   , Gn3 , v127, gtp3
	.byte	W36
	.byte		        En3 , v127, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N32   , Dn4 , v127, gtp3
	.byte	W36
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N32   , As3 , v127, gtp3
	.byte	W36
@ 038   ----------------------------------------
	.byte		        Dn4 , v127, gtp3
	.byte	W36
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 039   ----------------------------------------
	.byte		N32   , Cn4 , v127, gtp3
	.byte	W36
	.byte		        Gn3 , v127, gtp3
	.byte	W36
	.byte		N23   , En4 
	.byte	W24
@ 040   ----------------------------------------
	.byte		VOICE , 47
	.byte		N11   , Cn2 , v124
	.byte	W12
	.byte		N11   
	.byte	W36
	.byte		N23   
	.byte	W48
@ 041   ----------------------------------------
mus_vs_wild_2_041:
	.byte		N11   , Cn2 , v124
	.byte	W12
	.byte		N11   
	.byte	W36
	.byte		N23   
	.byte	W48
	.byte	PEND
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_041
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_2_041
@ 044   ----------------------------------------
	.byte		N11   , Gn2 , v127
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        En2 
	.byte	W12
	.byte		N23   , Gn2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 045   ----------------------------------------
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N23   , En2 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
@ 046   ----------------------------------------
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , En2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gn2 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 047   ----------------------------------------
	.byte		        En2 
	.byte	W12
	.byte		        Gn2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 048   ----------------------------------------
	.byte		N23   , En2 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 049   ----------------------------------------
	.byte		N23   , En2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
@ 050   ----------------------------------------
	.byte		        En2 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gn2 
	.byte	W24
	.byte		N05   , En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 051   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
@ 052   ----------------------------------------
	.byte		        En2 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Gn2 
	.byte	W24
@ 053   ----------------------------------------
	.byte		N32   , Gn2 , v127, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		VOICE , 56
	.byte	W12
	.byte		N11   , As3 
	.byte	W12
@ 054   ----------------------------------------
	.byte		TIE   , Cn4 
	.byte	W96
@ 055   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 056   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 057   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
@ 058   ----------------------------------------
	.byte		VOICE , 60
	.byte		N23   
	.byte	W24
	.byte		N32   , Fn3 , v127, gtp3
	.byte	W36
	.byte		        Gn3 , v127, gtp3
	.byte	W36
@ 059   ----------------------------------------
	.byte		N44   , As3 , v127, gtp3
	.byte	W48
	.byte		        An3 , v127, gtp3
	.byte	W48
@ 060   ----------------------------------------
	.byte		N32   , Gn3 , v127, gtp3
	.byte	W36
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 061   ----------------------------------------
	.byte		N92   , Gn3 , v127, gtp3
	.byte	W96
@ 062   ----------------------------------------
	.byte		N23   , Cn3 
	.byte	W24
	.byte		N32   , Fn3 , v127, gtp3
	.byte	W36
	.byte		        Gn3 , v127, gtp3
	.byte	W36
@ 063   ----------------------------------------
	.byte		N44   , Cn4 , v127, gtp3
	.byte	W48
	.byte		        Dn4 , v127, gtp3
	.byte	W48
@ 064   ----------------------------------------
	.byte		N32   , En4 , v127, gtp3
	.byte	W36
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 065   ----------------------------------------
	.byte		N92   , Cn4 , v127, gtp3
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_vs_wild_2_B1
mus_vs_wild_2_B2:
@ 074   ----------------------------------------
	.byte		VOICE , 60
	.byte		        60
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_vs_wild_3:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 87
	.byte		VOL   , 67*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+37
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W24
	.byte		N05   , Cn2 , v068
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
@ 001   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W30
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
mus_vs_wild_3_B1:
@ 010   ----------------------------------------
mus_vs_wild_3_010:
	.byte		N32   , Cn3 , v068, gtp3
	.byte	W36
	.byte		        Gn3 , v068, gtp3
	.byte	W36
	.byte		N23   , Fn3 
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
	.byte		N11   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N92   , Cs4 , v068, gtp3
	.byte	W96
@ 013   ----------------------------------------
	.byte		N44   , Cs4 , v068, gtp3
	.byte	W48
	.byte		        As3 , v068, gtp3
	.byte	W48
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_010
@ 015   ----------------------------------------
	.byte		N11   , En3 , v068
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N68   , Cs4 , v068, gtp3
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N44   , Cs4 , v068, gtp3
	.byte	W48
	.byte		        Ds4 , v068, gtp3
	.byte	W48
@ 018   ----------------------------------------
	.byte		N32   , Cn4 , v068, gtp3
	.byte	W36
	.byte		        As3 , v068, gtp3
	.byte	W36
	.byte		N23   , Dn4 
	.byte	W24
@ 019   ----------------------------------------
	.byte		N92   , Cn4 , v068, gtp3
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte		N80   , Cn3 , v068, gtp3
	.byte	W84
	.byte		N11   , En3 
	.byte	W12
@ 029   ----------------------------------------
	.byte		N92   , Fn3 , v068, gtp3
	.byte	W96
@ 030   ----------------------------------------
	.byte		N68   , Fn3 , v068, gtp3
	.byte	W72
	.byte		N11   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 031   ----------------------------------------
	.byte		N80   , En3 , v068, gtp3
	.byte	W84
	.byte		N11   , Fn3 
	.byte	W12
@ 032   ----------------------------------------
	.byte		N68   , Gn3 , v068, gtp3
	.byte	W72
	.byte		N11   , As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 033   ----------------------------------------
	.byte		N92   , As3 , v068, gtp3
	.byte	W96
@ 034   ----------------------------------------
	.byte		N68   , Fn3 , v068, gtp3
	.byte	W72
	.byte		N11   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 035   ----------------------------------------
	.byte		N92   , Gn3 , v068, gtp3
	.byte	W96
@ 036   ----------------------------------------
	.byte		N80   , Cn4 , v068, gtp3
	.byte	W84
	.byte		N11   , En4 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N92   , Fn4 , v068, gtp3
	.byte	W96
@ 038   ----------------------------------------
	.byte		N68   , Fn4 , v068, gtp3
	.byte	W72
	.byte		N11   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 039   ----------------------------------------
	.byte		N92   , En4 , v068, gtp3
	.byte	W96
@ 040   ----------------------------------------
	.byte		N44   , Cn5 , v068, gtp3
	.byte	W48
	.byte		        Cn3 , v068, gtp3
	.byte	W48
@ 041   ----------------------------------------
	.byte		        Gn4 , v068, gtp3
	.byte	W48
	.byte		        Cs3 , v068, gtp3
	.byte	W48
@ 042   ----------------------------------------
	.byte		        Cn4 , v068, gtp3
	.byte	W48
	.byte		        Cn2 , v068, gtp3
	.byte	W48
@ 043   ----------------------------------------
	.byte		        Gn3 , v068, gtp3
	.byte	W48
	.byte		        Cs2 , v068, gtp3
	.byte	W48
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte		N92   , Fn3 , v068, gtp3
	.byte	W96
@ 059   ----------------------------------------
	.byte		        As3 , v068, gtp3
	.byte	W96
@ 060   ----------------------------------------
	.byte		        Gn3 , v068, gtp3
	.byte	W96
@ 061   ----------------------------------------
	.byte		        En3 , v068, gtp3
	.byte	W96
@ 062   ----------------------------------------
	.byte		        Fn3 , v068, gtp3
	.byte	W96
@ 063   ----------------------------------------
	.byte		        As3 , v068, gtp3
	.byte	W96
@ 064   ----------------------------------------
	.byte		        Gn3 , v068, gtp3
	.byte	W96
@ 065   ----------------------------------------
	.byte		        En3 , v068, gtp3
	.byte	W96
@ 066   ----------------------------------------
mus_vs_wild_3_066:
	.byte		N17   , Gn3 , v068
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N11   , Gn2 
	.byte	W24
	.byte	PEND
@ 067   ----------------------------------------
	.byte		N17   , En3 
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		N23   , As2 
	.byte	W24
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_066
@ 069   ----------------------------------------
	.byte		N17   , En3 , v068
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		N23   , Gs3 
	.byte	W24
@ 070   ----------------------------------------
mus_vs_wild_3_070:
	.byte		N44   , Cn4 , v068, gtp3
	.byte	W48
	.byte		        Cn3 , v068, gtp3
	.byte	W48
	.byte	PEND
@ 071   ----------------------------------------
	.byte		        Gn3 , v068, gtp3
	.byte	W48
	.byte		        Cs3 , v068, gtp3
	.byte	W48
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_3_070
@ 073   ----------------------------------------
	.byte		N44   , Cs4 , v068, gtp3
	.byte	W48
	.byte		        Cs3 , v068, gtp3
	.byte	W48
	.byte	GOTO
	 .word	mus_vs_wild_3_B1
mus_vs_wild_3_B2:
@ 074   ----------------------------------------
	.byte		VOICE , 87
	.byte		        87
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_vs_wild_4:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		VOL   , 95*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v-33
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N06   , Gn5 , v127
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
@ 002   ----------------------------------------
	.byte		VOICE , 85
	.byte		N17   , Gn3 , v092
	.byte	W36
	.byte		        As3 
	.byte	W36
	.byte		N11   , Gs3 
	.byte	W24
@ 003   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W24
	.byte		        As3 
	.byte	W36
	.byte		N23   , Cs3 
	.byte	W24
@ 004   ----------------------------------------
	.byte		N17   , Gn3 
	.byte	W36
	.byte		        As3 
	.byte	W36
	.byte		N11   , Gs3 
	.byte	W24
@ 005   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W24
	.byte		        As3 
	.byte	W36
	.byte		VOICE , 80
	.byte		N23   , Gs3 
	.byte	W24
@ 006   ----------------------------------------
mus_vs_wild_4_006:
	.byte		N11   , Gn3 , v092
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_006
@ 009   ----------------------------------------
	.byte		N11   , Gn3 , v092
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N23   , Cs4 
	.byte	W24
mus_vs_wild_4_B1:
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
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte		VOICE , 81
	.byte		N32   , Cn5 , v092, gtp2
	.byte	W36
	.byte		        Gn4 , v092, gtp2
	.byte	W36
	.byte		N11   , Cn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N32   , Fn5 , v092, gtp2
	.byte	W36
	.byte		N22   , As4 
	.byte	W24
	.byte		N32   , Dn5 , v092, gtp2
	.byte	W36
@ 038   ----------------------------------------
	.byte		        Fn5 , v092, gtp2
	.byte	W36
	.byte		N22   , As5 
	.byte	W24
	.byte		N11   , An5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
@ 039   ----------------------------------------
	.byte		N32   , En5 , v092, gtp2
	.byte	W36
	.byte		        Cn5 , v092, gtp2
	.byte	W36
	.byte		N22   , Gn5 
	.byte	W24
@ 040   ----------------------------------------
	.byte		N32   , Cn6 , v092, gtp2
	.byte	W36
	.byte		        Cs6 , v092, gtp2
	.byte	W36
	.byte		N22   , Cn4 
	.byte	W24
@ 041   ----------------------------------------
	.byte		N32   , Gn5 , v092, gtp2
	.byte	W36
	.byte		        Gs5 , v092, gtp2
	.byte	W36
	.byte		N22   , Cs4 
	.byte	W24
@ 042   ----------------------------------------
	.byte		N32   , Cn5 , v092, gtp2
	.byte	W36
	.byte		        Cs5 , v092, gtp2
	.byte	W36
	.byte		N22   , Cn3 
	.byte	W24
@ 043   ----------------------------------------
	.byte		N32   , Gn4 , v092, gtp2
	.byte	W36
	.byte		        Gs4 , v092, gtp2
	.byte	W36
	.byte		N22   , Cs3 
	.byte	W24
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte		VOICE , 80
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 059   ----------------------------------------
mus_vs_wild_4_059:
	.byte		N11   , Fn4 , v092
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
@ 060   ----------------------------------------
mus_vs_wild_4_060:
	.byte		N11   , En4 , v092
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_060
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_059
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_059
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_060
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_060
@ 066   ----------------------------------------
	.byte		VOICE , 85
	.byte		N17   , Gn3 , v092
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N11   , Gn2 
	.byte	W24
@ 067   ----------------------------------------
	.byte		N17   , En3 
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		N23   , As2 
	.byte	W24
@ 068   ----------------------------------------
mus_vs_wild_4_068:
	.byte		N17   , Gn3 , v092
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N11   , Gn2 
	.byte	W24
	.byte	PEND
@ 069   ----------------------------------------
	.byte		N17   , En3 
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		N23   , Gs3 
	.byte	W24
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_4_068
@ 071   ----------------------------------------
	.byte		N17   , En3 , v092
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		N23   , Gn2 
	.byte	W24
@ 072   ----------------------------------------
	.byte		N17   , Gn3 
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N23   , Cn3 
	.byte	W24
@ 073   ----------------------------------------
	.byte		N17   , Gn3 
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N23   , Fn3 
	.byte	W24
	.byte	GOTO
	 .word	mus_vs_wild_4_B1
mus_vs_wild_4_B2:
@ 074   ----------------------------------------
	.byte		VOICE , 81
	.byte		        81
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_vs_wild_5:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 59
	.byte		PAN   , c_v+23
	.byte		VOL   , 122*mus_vs_wild_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N05   , Cn5 , v112
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 001   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 002   ----------------------------------------
mus_vs_wild_5_002:
	.byte		N17   , Cn4 , v112
	.byte	W36
	.byte		        Ds4 
	.byte	W36
	.byte		N11   , Cs4 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W24
	.byte		        Ds4 
	.byte	W36
	.byte		N23   , Gs3 
	.byte	W24
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_5_002
@ 005   ----------------------------------------
	.byte		N11   , Cn4 , v112
	.byte	W12
	.byte		        Cs4 
	.byte	W24
	.byte		        Ds4 
	.byte	W36
	.byte		N23   , Gs4 
	.byte	W24
@ 006   ----------------------------------------
mus_vs_wild_5_006:
	.byte		N17   , Cn5 , v112
	.byte	W36
	.byte		        Ds5 
	.byte	W36
	.byte		N11   , Cs5 
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W24
	.byte		        Ds5 
	.byte	W36
	.byte		N23   , Cs5 
	.byte	W24
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_5_006
@ 009   ----------------------------------------
	.byte		N11   , Cn5 , v112
	.byte	W12
	.byte		        Cs5 
	.byte	W24
	.byte		        Ds5 
	.byte	W36
	.byte		N23   , Gn5 
	.byte	W24
mus_vs_wild_5_B1:
@ 010   ----------------------------------------
	.byte		N44   , Cn4 , v112, gtp3
	.byte	W48
	.byte		        As3 , v112, gtp3
	.byte	W48
@ 011   ----------------------------------------
mus_vs_wild_5_011:
	.byte		N32   , Dn4 , v112, gtp3
	.byte	W36
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_vs_wild_5_012:
	.byte		N68   , Gs4 , v112, gtp3
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte		N44   , Fn4 , v112, gtp3
	.byte	W48
	.byte		        Cs4 , v112, gtp3
	.byte	W48
@ 014   ----------------------------------------
	.byte		        Cn4 , v112, gtp3
	.byte	W48
	.byte		N32   , As3 , v112, gtp3
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W12
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_5_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_5_012
@ 017   ----------------------------------------
	.byte		N32   , As4 , v112, gtp3
	.byte	W36
	.byte		N23   , Gs4 
	.byte	W24
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N56   , Gn4 , v112, gtp3
	.byte	W60
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 019   ----------------------------------------
	.byte		N92   , En4 , v112, gtp3
	.byte	W96
@ 020   ----------------------------------------
mus_vs_wild_5_020:
	.byte		N44   , As2 , v112, gtp3
	.byte	W48
	.byte		        Dn3 , v112, gtp3
	.byte	W48
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N32   , Fn3 , v112, gtp3
	.byte	W36
	.byte		N23   , As3 
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N68   , En3 , v112, gtp3
	.byte	W72
	.byte		N23   , Cn3 
	.byte	W24
@ 023   ----------------------------------------
	.byte		N92   , Gn3 , v112, gtp3
	.byte	W96
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_5_020
@ 025   ----------------------------------------
	.byte		N32   , Fn3 , v112, gtp3
	.byte	W36
	.byte		N23   , As3 
	.byte	W24
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N68   , En4 , v112, gtp3
	.byte	W72
	.byte		N23   , Gn4 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N92   , Cn5 , v112, gtp3
	.byte	W96
@ 028   ----------------------------------------
	.byte		N32   , Cn4 , v112, gtp3
	.byte	W36
	.byte		        Gn3 , v112, gtp3
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 029   ----------------------------------------
	.byte		N32   , Fn4 , v112, gtp3
	.byte	W36
	.byte		N23   , As3 
	.byte	W24
	.byte		N32   , Dn4 , v112, gtp3
	.byte	W36
@ 030   ----------------------------------------
mus_vs_wild_5_030:
	.byte		N32   , Fn4 , v112, gtp3
	.byte	W36
	.byte		N23   , As4 
	.byte	W24
	.byte		N11   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte		N44   , En4 , v112, gtp3
	.byte	W48
	.byte		        Cn4 , v112, gtp3
	.byte	W48
@ 032   ----------------------------------------
	.byte		N32   , Cn4 , v112, gtp3
	.byte	W36
	.byte		        Gn4 , v112, gtp3
	.byte	W36
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 033   ----------------------------------------
	.byte		N32   , Dn4 , v112, gtp3
	.byte	W36
	.byte		N56   , As4 , v112, gtp3
	.byte	W60
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_5_030
@ 035   ----------------------------------------
	.byte		N32   , En4 , v112, gtp3
	.byte	W36
	.byte		N56   , Cn4 , v112, gtp3
	.byte	W60
@ 036   ----------------------------------------
	.byte		N32   , Cn5 , v112, gtp3
	.byte	W36
	.byte		        Gn4 , v112, gtp3
	.byte	W36
	.byte		N11   , Cn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N32   , Fn5 , v112, gtp3
	.byte	W36
	.byte		N23   , As4 
	.byte	W24
	.byte		N32   , Dn5 , v112, gtp3
	.byte	W36
@ 038   ----------------------------------------
	.byte		        Fn5 , v112, gtp3
	.byte	W36
	.byte		N23   , As5 
	.byte	W24
	.byte		N11   , An5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
@ 039   ----------------------------------------
	.byte		N32   , En5 , v112, gtp3
	.byte	W36
	.byte		        Cn5 , v112, gtp3
	.byte	W36
	.byte		N23   , Gn5 
	.byte	W24
@ 040   ----------------------------------------
	.byte		N32   , Cn6 , v112, gtp3
	.byte	W36
	.byte		        Cs6 , v112, gtp3
	.byte	W60
@ 041   ----------------------------------------
	.byte		        Gn5 , v112, gtp3
	.byte	W36
	.byte		        Gs5 , v112, gtp3
	.byte	W60
@ 042   ----------------------------------------
	.byte		        Cn5 , v112, gtp3
	.byte	W36
	.byte		        Cs5 , v112, gtp3
	.byte	W60
@ 043   ----------------------------------------
	.byte		        Gn4 , v112, gtp3
	.byte	W36
	.byte		        Gs4 , v112, gtp3
	.byte	W60
@ 044   ----------------------------------------
	.byte		N92   , Cn3 , v112, gtp3
	.byte	W96
@ 045   ----------------------------------------
	.byte	W84
	.byte		N11   
	.byte	W12
@ 046   ----------------------------------------
	.byte		N92   , Cs3 , v112, gtp3
	.byte	W96
@ 047   ----------------------------------------
	.byte	W84
	.byte		N11   
	.byte	W12
@ 048   ----------------------------------------
	.byte		N92   , Cn3 , v112, gtp3
	.byte	W96
@ 049   ----------------------------------------
	.byte	W84
	.byte		N11   
	.byte	W12
@ 050   ----------------------------------------
	.byte		N92   , As2 , v112, gtp3
	.byte	W96
@ 051   ----------------------------------------
	.byte		        Dn3 , v112, gtp3
	.byte	W96
@ 052   ----------------------------------------
	.byte		        Fn3 , v112, gtp3
	.byte	W96
@ 053   ----------------------------------------
	.byte		N80   , As3 , v112, gtp3
	.byte	W84
	.byte		N11   , Dn4 
	.byte	W12
@ 054   ----------------------------------------
	.byte		TIE   , En4 
	.byte	W96
@ 055   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 056   ----------------------------------------
	.byte		TIE   , En3 
	.byte	W96
@ 057   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
@ 058   ----------------------------------------
mus_vs_wild_5_058:
	.byte		N23   , Cn4 , v112
	.byte	W24
	.byte		N32   , Fn4 , v112, gtp3
	.byte	W36
	.byte		        Gn4 , v112, gtp3
	.byte	W36
	.byte	PEND
@ 059   ----------------------------------------
	.byte		N44   , As4 , v112, gtp3
	.byte	W48
	.byte		        An4 , v112, gtp3
	.byte	W48
@ 060   ----------------------------------------
	.byte		N32   , Gn4 , v112, gtp3
	.byte	W36
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 061   ----------------------------------------
	.byte		N92   , Gn4 , v112, gtp3
	.byte	W96
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_5_058
@ 063   ----------------------------------------
	.byte		N44   , Cn5 , v112, gtp3
	.byte	W48
	.byte		        Dn5 , v112, gtp3
	.byte	W48
@ 064   ----------------------------------------
	.byte		N32   , En5 , v112, gtp3
	.byte	W36
	.byte		N11   , Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 065   ----------------------------------------
	.byte		N92   , Cn5 , v112, gtp3
	.byte	W96
@ 066   ----------------------------------------
mus_vs_wild_5_066:
	.byte		N17   , Cn4 , v112
	.byte	W36
	.byte		        Cs4 
	.byte	W36
	.byte		N11   , Cn3 
	.byte	W24
	.byte	PEND
@ 067   ----------------------------------------
	.byte		N17   , Gn3 
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N23   , Cs3 
	.byte	W24
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_5_066
@ 069   ----------------------------------------
	.byte		N17   , Gn3 , v112
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N23   , Cs4 
	.byte	W24
@ 070   ----------------------------------------
	.byte		N17   , Cn5 
	.byte	W36
	.byte		        Cs5 
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W24
@ 071   ----------------------------------------
	.byte		N17   , Gn4 
	.byte	W36
	.byte		        Gs4 
	.byte	W36
	.byte		N23   , Cs4 
	.byte	W24
@ 072   ----------------------------------------
	.byte		N17   , Cn5 
	.byte	W36
	.byte		        Cs5 
	.byte	W36
	.byte		N23   , Gn4 
	.byte	W24
@ 073   ----------------------------------------
	.byte		N17   , Cn5 
	.byte	W36
	.byte		        Cs5 
	.byte	W36
	.byte		N23   , As4 
	.byte	W24
	.byte	GOTO
	 .word	mus_vs_wild_5_B1
mus_vs_wild_5_B2:
@ 074   ----------------------------------------
	.byte		VOICE , 59
	.byte		        59
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_vs_wild_6:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 127*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N92   , Cn1 , v076, gtp3
	.byte	W96
@ 001   ----------------------------------------
	.byte		N56   , Cs1 , v076, gtp3
	.byte	W60
	.byte		N11   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
@ 002   ----------------------------------------
mus_vs_wild_6_002:
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_vs_wild_6_003:
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_003
mus_vs_wild_6_B1:
@ 010   ----------------------------------------
mus_vs_wild_6_010:
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 012   ----------------------------------------
mus_vs_wild_6_012:
	.byte		N11   , Cs1 , v076
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 015   ----------------------------------------
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_012
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 020   ----------------------------------------
mus_vs_wild_6_020:
	.byte		N11   , As0 , v076
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_020
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_020
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 028   ----------------------------------------
mus_vs_wild_6_028:
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_vs_wild_6_029:
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_029
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 033   ----------------------------------------
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_029
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_028
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_028
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_029
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_029
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_028
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_012
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_012
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_020
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_020
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_020
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_020
@ 054   ----------------------------------------
mus_vs_wild_6_054:
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_054
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 057   ----------------------------------------
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
@ 058   ----------------------------------------
mus_vs_wild_6_058:
	.byte		N11   , Fn1 , v076
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_058
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_058
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_058
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_010
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_003
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_002
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_003
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_003
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_6_002
@ 073   ----------------------------------------
	.byte		N11   , Cn1 , v076
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	GOTO
	 .word	mus_vs_wild_6_B1
mus_vs_wild_6_B2:
@ 074   ----------------------------------------
	.byte		VOICE , 33
	.byte		        33
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_vs_wild_7:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 82
	.byte		PAN   , c_v-29
	.byte		VOL   , 63*mus_vs_wild_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N05   , Cn5 , v064
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 001   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
@ 002   ----------------------------------------
mus_vs_wild_7_002:
	.byte		N17   , Cn4 , v064
	.byte	W36
	.byte		        Ds4 
	.byte	W36
	.byte		N11   , Cs4 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W24
	.byte		        Ds4 
	.byte	W36
	.byte		N23   , Gs3 
	.byte	W24
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_7_002
@ 005   ----------------------------------------
	.byte		N11   , Cn4 , v064
	.byte	W12
	.byte		        Cs4 
	.byte	W24
	.byte		        Ds4 
	.byte	W36
	.byte		N23   , Gs4 
	.byte	W24
@ 006   ----------------------------------------
mus_vs_wild_7_006:
	.byte		N17   , Cn5 , v064
	.byte	W36
	.byte		        Ds5 
	.byte	W36
	.byte		N11   , Cs5 
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
	.byte		        Cn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W24
	.byte		        Ds5 
	.byte	W36
	.byte		N23   , Cs5 
	.byte	W24
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_7_006
@ 009   ----------------------------------------
	.byte		N11   , Cn5 , v064
	.byte	W12
	.byte		        Cs5 
	.byte	W24
	.byte		        Ds5 
	.byte	W36
	.byte		N23   , Gn5 
	.byte	W24
mus_vs_wild_7_B1:
@ 010   ----------------------------------------
	.byte		N44   , Cn4 , v064, gtp3
	.byte	W48
	.byte		        As3 , v064, gtp3
	.byte	W48
@ 011   ----------------------------------------
mus_vs_wild_7_011:
	.byte		N32   , Dn4 , v064, gtp3
	.byte	W36
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_vs_wild_7_012:
	.byte		N68   , Gs4 , v064, gtp3
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte		N44   , Fn4 , v064, gtp3
	.byte	W48
	.byte		        Cs4 , v064, gtp3
	.byte	W48
@ 014   ----------------------------------------
	.byte		        Cn4 , v064, gtp3
	.byte	W48
	.byte		N32   , As3 , v064, gtp3
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W12
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_7_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_7_012
@ 017   ----------------------------------------
	.byte		N32   , As4 , v064, gtp3
	.byte	W36
	.byte		N23   , Gs4 
	.byte	W24
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N56   , Gn4 , v064, gtp3
	.byte	W60
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 019   ----------------------------------------
	.byte		N92   , En4 , v064, gtp3
	.byte	W96
@ 020   ----------------------------------------
mus_vs_wild_7_020:
	.byte		N44   , As2 , v064, gtp3
	.byte	W48
	.byte		        Dn3 , v064, gtp3
	.byte	W48
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N32   , Fn3 , v064, gtp3
	.byte	W36
	.byte		N23   , As3 
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N68   , En3 , v064, gtp3
	.byte	W72
	.byte		N23   , Cn3 
	.byte	W24
@ 023   ----------------------------------------
	.byte		N92   , Gn3 , v064, gtp3
	.byte	W96
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_7_020
@ 025   ----------------------------------------
	.byte		N32   , Fn3 , v064, gtp3
	.byte	W36
	.byte		N23   , As3 
	.byte	W24
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N68   , En4 , v064, gtp3
	.byte	W72
	.byte		N23   , Gn4 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N92   , Cn5 , v064, gtp3
	.byte	W96
@ 028   ----------------------------------------
	.byte		N32   , Cn4 , v064, gtp3
	.byte	W36
	.byte		        Gn3 , v064, gtp3
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 029   ----------------------------------------
	.byte		N32   , Fn4 , v064, gtp3
	.byte	W36
	.byte		N23   , As3 
	.byte	W24
	.byte		N32   , Dn4 , v064, gtp3
	.byte	W36
@ 030   ----------------------------------------
mus_vs_wild_7_030:
	.byte		N32   , Fn4 , v064, gtp3
	.byte	W36
	.byte		N23   , As4 
	.byte	W24
	.byte		N11   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte		N44   , En4 , v064, gtp3
	.byte	W48
	.byte		        Cn4 , v064, gtp3
	.byte	W48
@ 032   ----------------------------------------
	.byte		N32   , Cn4 , v064, gtp3
	.byte	W36
	.byte		        Gn4 , v064, gtp3
	.byte	W36
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 033   ----------------------------------------
	.byte		N32   , Dn4 , v064, gtp3
	.byte	W36
	.byte		N56   , As4 , v064, gtp3
	.byte	W60
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_7_030
@ 035   ----------------------------------------
	.byte		N32   , En4 , v064, gtp3
	.byte	W36
	.byte		N56   , Cn4 , v064, gtp3
	.byte	W60
@ 036   ----------------------------------------
	.byte		N32   , Cn5 , v064, gtp3
	.byte	W36
	.byte		        Gn4 , v064, gtp3
	.byte	W36
	.byte		N11   , Cn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N32   , Fn5 , v064, gtp3
	.byte	W36
	.byte		N23   , As4 
	.byte	W24
	.byte		N32   , Dn5 , v064, gtp3
	.byte	W36
@ 038   ----------------------------------------
	.byte		        Fn5 , v064, gtp3
	.byte	W36
	.byte		N23   , As5 
	.byte	W24
	.byte		N11   , An5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
@ 039   ----------------------------------------
	.byte		N32   , En5 , v064, gtp3
	.byte	W36
	.byte		        Cn5 , v064, gtp3
	.byte	W36
	.byte		N23   , Gn5 
	.byte	W24
@ 040   ----------------------------------------
	.byte		N32   , Cn6 , v064, gtp3
	.byte	W36
	.byte		        Cs6 , v064, gtp3
	.byte	W60
@ 041   ----------------------------------------
	.byte		        Gn5 , v064, gtp3
	.byte	W36
	.byte		        Gs5 , v064, gtp3
	.byte	W60
@ 042   ----------------------------------------
	.byte		        Cn5 , v064, gtp3
	.byte	W36
	.byte		        Cs5 , v064, gtp3
	.byte	W60
@ 043   ----------------------------------------
	.byte		        Gn4 , v064, gtp3
	.byte	W36
	.byte		        Gs4 , v064, gtp3
	.byte	W60
@ 044   ----------------------------------------
	.byte		N92   , Cn3 , v064, gtp3
	.byte	W96
@ 045   ----------------------------------------
	.byte	W84
	.byte		N11   
	.byte	W12
@ 046   ----------------------------------------
	.byte		N92   , Cs3 , v064, gtp3
	.byte	W96
@ 047   ----------------------------------------
	.byte	W84
	.byte		N11   
	.byte	W12
@ 048   ----------------------------------------
	.byte		N92   , Cn3 , v064, gtp3
	.byte	W96
@ 049   ----------------------------------------
	.byte	W84
	.byte		N11   
	.byte	W12
@ 050   ----------------------------------------
	.byte		N92   , As2 , v064, gtp3
	.byte	W96
@ 051   ----------------------------------------
	.byte		        Dn3 , v064, gtp3
	.byte	W96
@ 052   ----------------------------------------
	.byte		        Fn3 , v064, gtp3
	.byte	W96
@ 053   ----------------------------------------
	.byte		N80   , As3 , v064, gtp3
	.byte	W84
	.byte		N11   , Dn4 
	.byte	W12
@ 054   ----------------------------------------
	.byte		TIE   , En4 
	.byte	W96
@ 055   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 056   ----------------------------------------
	.byte		TIE   , En3 
	.byte	W96
@ 057   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
@ 058   ----------------------------------------
mus_vs_wild_7_058:
	.byte		N23   , Cn4 , v064
	.byte	W24
	.byte		N32   , Fn4 , v064, gtp3
	.byte	W36
	.byte		        Gn4 , v064, gtp3
	.byte	W36
	.byte	PEND
@ 059   ----------------------------------------
	.byte		N44   , As4 , v064, gtp3
	.byte	W48
	.byte		        An4 , v064, gtp3
	.byte	W48
@ 060   ----------------------------------------
	.byte		N32   , Gn4 , v064, gtp3
	.byte	W36
	.byte		N11   , Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 061   ----------------------------------------
	.byte		N92   , Gn4 , v064, gtp3
	.byte	W96
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_7_058
@ 063   ----------------------------------------
	.byte		N44   , Cn5 , v064, gtp3
	.byte	W48
	.byte		        Dn5 , v064, gtp3
	.byte	W48
@ 064   ----------------------------------------
	.byte		N32   , En5 , v064, gtp3
	.byte	W36
	.byte		N11   , Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 065   ----------------------------------------
	.byte		N92   , Cn5 , v064, gtp3
	.byte	W96
@ 066   ----------------------------------------
mus_vs_wild_7_066:
	.byte		N17   , Cn4 , v064
	.byte	W36
	.byte		        Cs4 
	.byte	W36
	.byte		N11   , Cn3 
	.byte	W24
	.byte	PEND
@ 067   ----------------------------------------
	.byte		N17   , Gn3 
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N23   , Cs3 
	.byte	W24
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_7_066
@ 069   ----------------------------------------
	.byte		N17   , Gn3 , v064
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N23   , Cs4 
	.byte	W24
@ 070   ----------------------------------------
	.byte		N17   , Cn5 
	.byte	W36
	.byte		        Cs5 
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W24
@ 071   ----------------------------------------
	.byte		N17   , Gn4 
	.byte	W36
	.byte		        Gs4 
	.byte	W36
	.byte		N23   , Cs4 
	.byte	W24
@ 072   ----------------------------------------
	.byte		N17   , Cn5 
	.byte	W36
	.byte		        Cs5 
	.byte	W36
	.byte		N23   , Gn4 
	.byte	W24
@ 073   ----------------------------------------
	.byte		N17   , Cn5 
	.byte	W36
	.byte		        Cs5 
	.byte	W36
	.byte		N23   , As4 
	.byte	W24
	.byte	GOTO
	 .word	mus_vs_wild_7_B1
mus_vs_wild_7_B2:
@ 074   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@**************** Track 8 (Midi-Chn.10) ****************@

mus_vs_wild_8:
	.byte	KEYSH , mus_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_vs_wild_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N96   , An2 , v127
	.byte	W96
@ 001   ----------------------------------------
	.byte		N72   
	.byte	W72
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 002   ----------------------------------------
	.byte		N15   
	.byte	W24
	.byte		N32   , AnM2, v127, gtp1
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N24   , AnM2
	.byte	W24
@ 003   ----------------------------------------
	.byte		N22   , Cn1 
	.byte	W24
	.byte		N32   , AnM2, v127, gtp2
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N21   , AnM2
	.byte	W24
@ 004   ----------------------------------------
mus_vs_wild_8_004:
	.byte		N24   , Cn1 , v127
	.byte	W24
	.byte		        AnM2
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , AnM2
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
mus_vs_wild_8_B1:
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 019   ----------------------------------------
mus_vs_wild_8_019:
	.byte		N24   , Cn1 , v127
	.byte	W24
	.byte		        AnM2
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N10   , AnM2
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_019
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_019
@ 040   ----------------------------------------
mus_vs_wild_8_040:
	.byte		N24   , Cn1 , v127
	.byte	W24
	.byte		        AnM2
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        AnM2
	.byte	W24
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_040
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_040
@ 043   ----------------------------------------
	.byte		N24   , Cn1 , v127
	.byte	W24
	.byte		        AnM2
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		N10   , AnM2
	.byte	W13
	.byte		N10   
	.byte	W11
@ 044   ----------------------------------------
	.byte		N24   , Cn1 
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W60
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 056   ----------------------------------------
	.byte		N24   , Cn1 , v127
	.byte	W24
	.byte		        AnM2
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N22   , AnM2
	.byte	W24
@ 057   ----------------------------------------
	.byte		N24   , Cn1 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N10   , AnM2
	.byte	W12
	.byte		N12   
	.byte	W12
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_019
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_wild_8_004
@ 073   ----------------------------------------
	.byte		N24   , Cn1 , v127
	.byte	W24
	.byte		N10   , AnM2
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N10   , AnM2
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	GOTO
	 .word	mus_vs_wild_8_B1
mus_vs_wild_8_B2:
@ 074   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	FINE

@******************************************************@
	.align	2

mus_vs_wild:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_vs_wild_pri	@ Priority
	.byte	mus_vs_wild_rev	@ Reverb.

	.word	mus_vs_wild_grp

	.word	mus_vs_wild_1
	.word	mus_vs_wild_2
	.word	mus_vs_wild_3
	.word	mus_vs_wild_4
	.word	mus_vs_wild_5
	.word	mus_vs_wild_6
	.word	mus_vs_wild_7
	.word	mus_vs_wild_8

	.end
