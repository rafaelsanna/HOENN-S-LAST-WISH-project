	.include "MPlayDef.s"

	.equ	mus_theme_of_morroc_grp, voicegroup_theme_of_morroc
	.equ	mus_theme_of_morroc_pri, 0
	.equ	mus_theme_of_morroc_rev, reverb_set+50
	.equ	mus_theme_of_morroc_mvl, 100
	.equ	mus_theme_of_morroc_key, 0
	.equ	mus_theme_of_morroc_tbs, 1
	.equ	mus_theme_of_morroc_exg, 1
	.equ	mus_theme_of_morroc_cmp, 1

	.section .rodata
	.global	mus_theme_of_morroc
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_theme_of_morroc_1:
	.byte	KEYSH , mus_theme_of_morroc_key+0
mus_theme_of_morroc_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 125*mus_theme_of_morroc_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 125*mus_theme_of_morroc_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N48   , An0 , v127
	.byte	W48
	.byte	W01
	.byte		N24   , Cn1 
	.byte	W24
	.byte	W02
	.byte		        En1 
	.byte	W21
@ 001   ----------------------------------------
	.byte	W04
	.byte		TIE   , An0 
	.byte	W92
@ 002   ----------------------------------------
	.byte	W08
	.byte		EOT   
	.byte	W01
	.byte		N48   , An0 , v127, gtp1
	.byte	W48
	.byte	W02
	.byte		N24   , Cn1 
	.byte	W24
	.byte	W01
	.byte		        En1 
	.byte	W12
@ 003   ----------------------------------------
	.byte	W13
	.byte		N48   , An0 , v127, gtp1
	.byte	W48
	.byte	W03
	.byte		N24   , Cn1 
	.byte	W24
	.byte	W01
	.byte		        En1 
	.byte	W07
@ 004   ----------------------------------------
	.byte	W18
	.byte		N48   , En1 , v127, gtp1
	.byte	W48
	.byte	W03
	.byte		N24   , Gs0 
	.byte	W24
	.byte	W01
	.byte		        Bn0 
	.byte	W02
@ 005   ----------------------------------------
	.byte	W23
	.byte		N48   , En1 , v127, gtp1
	.byte	W48
	.byte	W03
	.byte		N24   , Gs0 
	.byte	W22
@ 006   ----------------------------------------
	.byte	W03
	.byte		        Bn0 
	.byte	W24
	.byte	W01
	.byte		N48   , En1 , v127, gtp1
	.byte	W48
	.byte	W02
	.byte		N24   , Gs0 
	.byte	W18
@ 007   ----------------------------------------
	.byte	W08
	.byte		        Bn0 
	.byte	W24
	.byte	W01
	.byte		N48   , En1 , v127, gtp1
	.byte	W48
	.byte	W02
	.byte		N24   , Gs0 
	.byte	W13
@ 008   ----------------------------------------
	.byte	W12
	.byte		        Bn0 
	.byte	W24
	.byte	W02
	.byte		N48   , An0 , v127, gtp1
	.byte	W48
	.byte	W02
	.byte		N24   , Cn1 
	.byte	W08
@ 009   ----------------------------------------
	.byte	W17
	.byte		        En1 
	.byte	W24
	.byte	W02
	.byte		N48   , An0 , v127, gtp1
	.byte	W48
	.byte	W02
	.byte		N24   , Cn1 
	.byte	W03
@ 010   ----------------------------------------
	.byte	W22
	.byte		        En1 
	.byte	W24
	.byte	W01
	.byte		N48   , An0 , v127, gtp1
	.byte	W48
	.byte	W01
@ 011   ----------------------------------------
	.byte	W02
	.byte		N24   , Cs1 
	.byte	W24
	.byte	W01
	.byte		        En1 
	.byte	W24
	.byte	W01
	.byte		N48   , An0 , v127, gtp1
	.byte	W44
@ 012   ----------------------------------------
	.byte	W07
	.byte		N24   , Cs1 
	.byte	W24
	.byte	W01
	.byte		        En1 
	.byte	W24
	.byte	W01
	.byte		N48   , Dn1 , v127, gtp1
	.byte	W36
	.byte	W03
@ 013   ----------------------------------------
	.byte	W11
	.byte		N24   , Fn1 
	.byte	W24
	.byte	W02
	.byte		        An0 
	.byte	W24
	.byte	W01
	.byte		N48   , Dn1 , v127, gtp1
	.byte	W32
	.byte	W02
@ 014   ----------------------------------------
	.byte	W16
	.byte		N24   , Fn1 
	.byte	W24
	.byte	W02
	.byte		        Dn1 
	.byte	W24
	.byte	W01
	.byte		N48   , Gn0 , v127, gtp1
	.byte	W28
	.byte	W01
@ 015   ----------------------------------------
	.byte	W21
	.byte		N24   , Bn0 
	.byte	W24
	.byte	W01
	.byte		        Dn1 
	.byte	W24
	.byte	W02
	.byte		N48   , Gn0 , v127, gtp1
	.byte	W24
@ 016   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N24   , Bn0 
	.byte	W24
	.byte	W01
	.byte		        Dn1 
	.byte	W24
	.byte	W01
	.byte		N48   , Cn1 , v127, gtp1
	.byte	W20
@ 017   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte		N24   , En1 
	.byte	W24
	.byte	W01
	.byte		        Gn1 
	.byte	W24
	.byte	W01
	.byte		N48   , Cn1 , v127, gtp1
	.byte	W15
@ 018   ----------------------------------------
	.byte	W36
	.byte		N24   , En1 
	.byte	W24
	.byte	W01
	.byte		        Gn1 
	.byte	W24
	.byte	W01
	.byte		N48   , As0 , v127, gtp1
	.byte	W10
@ 019   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		N24   , Dn1 
	.byte	W24
	.byte	W01
	.byte		        Fn1 
	.byte	W24
	.byte	W01
	.byte		N48   , As0 , v127, gtp1
	.byte	W05
@ 020   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		N24   , Dn1 
	.byte	W24
	.byte	W02
	.byte		        Fn1 
	.byte	W24
	.byte	W01
@ 021   ----------------------------------------
	.byte		N48   , An0 , v127, gtp1
	.byte	W48
	.byte	W02
	.byte		N24   , Cn1 
	.byte	W24
	.byte	W01
	.byte		        Fn1 
	.byte	W21
@ 022   ----------------------------------------
	.byte	W05
	.byte		N48   , An0 , v127, gtp1
	.byte	W48
	.byte	W02
	.byte		N24   , Cn1 
	.byte	W24
	.byte	W01
	.byte		        Fn1 
	.byte	W16
@ 023   ----------------------------------------
	.byte	W09
	.byte		N48   , As0 , v127, gtp1
	.byte	W48
	.byte	W03
	.byte		N24   , Dn1 
	.byte	W24
	.byte	W01
	.byte		        Fn1 
	.byte	W11
@ 024   ----------------------------------------
	.byte	W14
	.byte		N48   , Bn0 , v127, gtp1
	.byte	W48
	.byte	W03
	.byte		N24   , Dn1 
	.byte	W24
	.byte	W01
	.byte		        Fn1 
	.byte	W06
@ 025   ----------------------------------------
	.byte	W19
	.byte		N48   , An0 , v127, gtp1
	.byte	W48
	.byte	W03
	.byte		N24   , Cs1 
	.byte	W24
	.byte	W01
	.byte		        En1 
	.byte	W01
@ 026   ----------------------------------------
	.byte	W24
	.byte		N48   , An0 , v127, gtp1
	.byte	W48
	.byte	W02
	.byte		N24   , Cs1 
	.byte	W22
@ 027   ----------------------------------------
	.byte	W04
	.byte		        En1 
	.byte	W24
	.byte	W01
	.byte		N48   , Dn1 , v127, gtp1
	.byte	W48
	.byte	W02
	.byte		N24   , Fn1 
	.byte	W17
@ 028   ----------------------------------------
	.byte	W08
	.byte		        An1 
	.byte	W24
	.byte	W02
	.byte		N48   , Dn1 , v127, gtp1
	.byte	W48
	.byte	W02
	.byte		N24   , Fn1 
	.byte	W12
@ 029   ----------------------------------------
	.byte	W13
	.byte		        An1 
	.byte	W24
	.byte	W02
	.byte		N48   , Gn0 , v127, gtp1
	.byte	W48
	.byte	W02
	.byte		N24   , As0 
	.byte	W07
@ 030   ----------------------------------------
	.byte	W18
	.byte		        Dn1 
	.byte	W24
	.byte	W01
	.byte		N48   , Gn0 , v127, gtp1
	.byte	W48
	.byte	W03
	.byte		N24   , As0 
	.byte	W02
@ 031   ----------------------------------------
	.byte	W24
	.byte		N23   , Dn1 
	.byte	W24
	.byte		N48   , Cn1 , v127, gtp1
	.byte	W48
@ 032   ----------------------------------------
	.byte	W03
	.byte		N24   , En1 
	.byte	W24
	.byte	W01
	.byte		        Gn1 , v127, gtp1
	.byte	W24
	.byte	W01
	.byte		N48   , Cn1 , v127, gtp1
	.byte	W42
	.byte	W01
@ 033   ----------------------------------------
	.byte	W07
	.byte		N24   , En1 
	.byte	W24
	.byte	W02
	.byte		        Gn1 
	.byte	W24
	.byte	W01
	.byte		N48   , Fn1 , v127, gtp1
	.byte	W36
	.byte	W02
@ 034   ----------------------------------------
	.byte	W12
	.byte		N24   , An0 
	.byte	W24
	.byte	W01
	.byte		        Cn1 
	.byte	W24
	.byte	W02
	.byte		N48   , Fn1 , v127, gtp1
	.byte	W32
	.byte	W01
@ 035   ----------------------------------------
	.byte	W17
	.byte		N24   , An0 
	.byte	W24
	.byte	W01
	.byte		        Cn1 
	.byte	W24
	.byte	W02
	.byte		N48   , Gn0 , v127, gtp1
	.byte	W28
@ 036   ----------------------------------------
	.byte	W22
	.byte		N24   , As0 
	.byte	W24
	.byte	W01
	.byte		        Dn1 
	.byte	W24
	.byte	W01
	.byte		N48   , Gn0 , v127, gtp1
	.byte	W24
@ 037   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		N24   , As0 
	.byte	W24
	.byte	W01
	.byte		        Dn1 
	.byte	W24
	.byte	W01
	.byte		N48   , Fn1 , v127, gtp1
	.byte	W19
@ 038   ----------------------------------------
	.byte	W32
	.byte		N24   , An0 
	.byte	W24
	.byte	W01
	.byte		        Cn1 
	.byte	W24
	.byte	W01
	.byte		N48   , Fn1 , v127, gtp1
	.byte	W14
@ 039   ----------------------------------------
	.byte	W36
	.byte		N24   , An0 
	.byte	W24
	.byte	W02
	.byte		        Cn1 
	.byte	W24
	.byte	W01
	.byte		N48   , Gn0 , v127, gtp1
	.byte	W09
@ 040   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		N24   , As0 
	.byte	W24
	.byte	W02
	.byte		        En1 
	.byte	W24
	.byte	W01
	.byte		N48   , Gs0 , v127, gtp1
	.byte	W04
@ 041   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N24   , Bn0 
	.byte	W24
	.byte	W01
	.byte		        Dn1 
	.byte	W24
	.byte	W01
@ 042   ----------------------------------------
	.byte	W01
	.byte		N48   , An0 , v127, gtp1
	.byte	W48
	.byte	W02
	.byte		N24   , Cs1 
	.byte	W24
	.byte	W01
	.byte		        En1 
	.byte	W20
@ 043   ----------------------------------------
	.byte	W05
	.byte		N48   , An0 , v127, gtp1
	.byte	W48
	.byte	W03
	.byte		N24   , Cs1 
	.byte	W24
	.byte	W01
	.byte		        En1 
	.byte	W15
@ 044   ----------------------------------------
	.byte	W10
	.byte		N48   , Dn1 , v127, gtp1
	.byte	W48
	.byte	W03
	.byte		N24   , Fn1 
	.byte	W24
	.byte	W01
	.byte		        An1 
	.byte	W10
@ 045   ----------------------------------------
	.byte	W15
	.byte		        Dn1 
	.byte	W24
	.byte	W01
	.byte		        Cn1 
	.byte	W24
	.byte	W02
	.byte		        As0 
	.byte	W24
	.byte	W01
	.byte		        Gn0 
	.byte	W05
@ 046   ----------------------------------------
	.byte	W19
	.byte	GOTO
	 .word	mus_theme_of_morroc_1_B1
mus_theme_of_morroc_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_theme_of_morroc_2:
	.byte	KEYSH , mus_theme_of_morroc_key+0
mus_theme_of_morroc_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_theme_of_morroc_mvl/mxv
	.byte		PAN   , c_v-12
	.byte	W96
@ 001   ----------------------------------------
	.byte	W42
	.byte		N11   , En3 , v084
	.byte	W12
	.byte		N18   
	.byte	W19
	.byte		        Dn3 
	.byte	W19
	.byte		N11   , Cn3 
	.byte	W04
@ 002   ----------------------------------------
	.byte	W09
	.byte		N24   
	.byte	W24
	.byte	W01
	.byte		N24   
	.byte	W36
	.byte	W02
	.byte		N24   
	.byte	W24
@ 003   ----------------------------------------
	.byte	W01
	.byte		N11   
	.byte	W12
	.byte		N18   
	.byte	W19
	.byte		N06   , Dn3 
	.byte	W07
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N11   
	.byte	W13
	.byte		N12   , Dn3 
	.byte	W13
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N18   
	.byte	W13
@ 004   ----------------------------------------
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W19
	.byte		N03   , Bn2 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N10   
	.byte	W11
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W24
	.byte	W01
	.byte		        Gs2 
	.byte	W15
@ 005   ----------------------------------------
	.byte	W11
	.byte		N11   
	.byte	W36
	.byte	W01
	.byte		N12   
	.byte	W13
	.byte		N05   , Dn3 
	.byte	W06
	.byte		N05   
	.byte	W07
	.byte		N12   
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W07
	.byte		N17   , Cn3 
	.byte	W03
@ 006   ----------------------------------------
	.byte	W15
	.byte		N11   , Bn2 
	.byte	W13
	.byte		N24   
	.byte	W24
	.byte	W01
	.byte		        Gs2 
	.byte	W36
	.byte	W02
	.byte		N24   
	.byte	W05
@ 007   ----------------------------------------
	.byte	W20
	.byte		N11   
	.byte	W13
	.byte		N18   , Bn2 
	.byte	W19
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W13
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W13
@ 008   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N18   , Fn2 
	.byte	W19
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W07
	.byte		N24   , An2 
	.byte	W24
	.byte	W01
	.byte		        Cn3 
	.byte	W32
	.byte	W01
@ 009   ----------------------------------------
	.byte	W05
	.byte		N24   
	.byte	W24
	.byte	W01
	.byte		N11   
	.byte	W36
	.byte	W02
	.byte		N24   
	.byte	W28
@ 010   ----------------------------------------
	.byte	W10
	.byte		N24   
	.byte	W24
	.byte	W01
	.byte		N11   
	.byte	W12
	.byte		N18   , Cs3 
	.byte	W19
	.byte		N06   
	.byte	W07
	.byte		N12   
	.byte	W12
	.byte		N11   
	.byte	W11
@ 011   ----------------------------------------
	.byte	W02
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W07
	.byte		N18   
	.byte	W19
	.byte		N11   
	.byte	W12
	.byte		N18   
	.byte	W19
	.byte		N05   
	.byte	W06
	.byte		N12   
	.byte	W13
	.byte		N11   
	.byte	W06
@ 012   ----------------------------------------
	.byte	W07
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W07
	.byte		N17   
	.byte	W18
	.byte		N12   
	.byte	W13
	.byte		N24   , Dn3 
	.byte	W24
	.byte	W01
	.byte		N24   
	.byte	W14
@ 013   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	W01
	.byte		N11   
	.byte	W36
	.byte	W02
	.byte		N12   
	.byte	W09
@ 014   ----------------------------------------
	.byte	W04
	.byte		N11   , An2 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W13
	.byte		        Dn3 
	.byte	W13
	.byte		        Cn3 
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W13
	.byte		N18   
	.byte	W19
	.byte		N05   
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W04
@ 015   ----------------------------------------
	.byte	W09
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N12   
	.byte	W13
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N17   , Cn3 
	.byte	W20
	.byte		N11   
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N06   , Bn2 
	.byte	W06
@ 016   ----------------------------------------
	.byte	W01
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W13
	.byte		N12   
	.byte	W13
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N18   , An2 
	.byte	W19
	.byte		N11   , Gn2 
	.byte	W17
	.byte		N03   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N12   
	.byte	W07
@ 017   ----------------------------------------
	.byte	W06
	.byte		N24   , Cn3 
	.byte	W36
	.byte	W01
	.byte		N24   
	.byte	W24
	.byte	W02
	.byte		N11   
	.byte	W24
	.byte	W03
@ 018   ----------------------------------------
	.byte	W10
	.byte		N12   
	.byte	W13
	.byte		N11   , Gn2 
	.byte	W13
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W07
	.byte		N17   , Gn2 
	.byte	W18
	.byte		N06   , Cn3 
	.byte	W07
	.byte		N05   , En2 
	.byte	W06
	.byte		N24   , Fn2 
	.byte	W10
@ 019   ----------------------------------------
	.byte	W15
	.byte		        As2 
	.byte	W36
	.byte	W02
	.byte		N24   
	.byte	W24
	.byte	W01
	.byte		N11   
	.byte	W18
@ 020   ----------------------------------------
	.byte	W20
	.byte		N12   
	.byte	W13
	.byte		N11   , Fn2 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W13
	.byte		N06   , As2 
	.byte	W06
	.byte		N18   , Fn2 
	.byte	W19
	.byte		N05   , As2 
	.byte	W06
	.byte		        Dn2 
	.byte	W07
@ 021   ----------------------------------------
	.byte		N24   , En2 
	.byte	W24
	.byte	W01
	.byte		        An2 
	.byte	W36
	.byte	W02
	.byte		N24   
	.byte	W24
	.byte	W01
	.byte		N11   
	.byte	W08
@ 022   ----------------------------------------
	.byte	W30
	.byte		N12   
	.byte	W12
	.byte		N11   , En2 
	.byte	W13
	.byte		N12   , Dn2 
	.byte	W13
	.byte		        An2 
	.byte	W12
	.byte		        Cn2 
	.byte	W13
	.byte		N11   , An2 
	.byte	W03
@ 023   ----------------------------------------
	.byte	W09
	.byte		N18   , Dn2 
	.byte	W19
	.byte		N06   
	.byte	W07
	.byte		N12   , As2 
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W13
	.byte		N12   
	.byte	W12
	.byte		N06   , As2 
	.byte	W07
	.byte		N18   , En2 
	.byte	W17
@ 024   ----------------------------------------
	.byte	W02
	.byte		N11   , As2 
	.byte	W12
	.byte		N18   , Dn2 
	.byte	W19
	.byte		N06   
	.byte	W07
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W13
	.byte		N12   
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W07
	.byte		N17   , En2 
	.byte	W12
@ 025   ----------------------------------------
	.byte	W07
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte	W01
	.byte		        Dn3 
	.byte	W36
	.byte	W02
	.byte		N24   
	.byte	W14
@ 026   ----------------------------------------
	.byte	W11
	.byte		N11   
	.byte	W13
	.byte		N24   , Gn2 , v084, gtp1
	.byte	W24
	.byte	W01
	.byte		N12   , Cs3 
	.byte	W13
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N12   , An2 
	.byte	W13
	.byte		        Cs3 
	.byte	W09
@ 027   ----------------------------------------
	.byte	W04
	.byte		        Bn2 
	.byte	W12
	.byte		N11   , Cs3 
	.byte	W13
	.byte		N18   , Cn3 
	.byte	W19
	.byte		N06   
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W13
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N12   
	.byte	W13
	.byte		N06   , Dn3 
	.byte	W04
@ 028   ----------------------------------------
	.byte	W02
	.byte		N18   
	.byte	W19
	.byte		N11   
	.byte	W13
	.byte		N18   , Cn3 
	.byte	W19
	.byte		N05   , Dn3 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Cn3 
	.byte	W13
	.byte		        En3 
	.byte	W12
@ 029   ----------------------------------------
	.byte	W01
	.byte		N05   , Dn3 
	.byte	W06
	.byte		N18   
	.byte	W19
	.byte		N11   
	.byte	W13
	.byte		N24   , Cn3 
	.byte	W24
	.byte	W01
	.byte		        As2 
	.byte	W32
@ 030   ----------------------------------------
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N11   
	.byte	W13
	.byte		N11   
	.byte	W36
	.byte	W02
	.byte		N12   
	.byte	W12
	.byte		N11   
	.byte	W13
	.byte		N12   , Cn3 
	.byte	W02
@ 031   ----------------------------------------
	.byte	W10
	.byte		N13   , As2 
	.byte	W14
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N18   , En3 
	.byte	W19
	.byte		N05   
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W13
	.byte		N11   , En3 
	.byte	W10
@ 032   ----------------------------------------
	.byte	W03
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W07
	.byte		N17   , Dn3 
	.byte	W18
	.byte		N12   
	.byte	W13
	.byte		N17   
	.byte	W19
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N12   
	.byte	W13
	.byte		N11   
	.byte	W05
@ 033   ----------------------------------------
	.byte	W07
	.byte		N12   
	.byte	W13
	.byte		N05   
	.byte	W06
	.byte		N18   
	.byte	W19
	.byte		N11   
	.byte	W13
	.byte		N24   , Cn3 , v084, gtp1
	.byte	W24
	.byte	W01
	.byte		N24   
	.byte	W13
@ 034   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		N24   
	.byte	W24
	.byte	W01
	.byte		N11   
	.byte	W36
	.byte	W02
	.byte		N12   
	.byte	W08
@ 035   ----------------------------------------
	.byte	W05
	.byte		N11   
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W13
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N17   
	.byte	W19
	.byte		N06   
	.byte	W06
	.byte		N05   , An2 
	.byte	W07
	.byte		N24   , As2 
	.byte	W24
	.byte	W01
	.byte		N24   
	.byte	W03
@ 036   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N24   
	.byte	W24
	.byte	W01
	.byte		N11   
	.byte	W24
	.byte	W01
	.byte		N12   
	.byte	W11
@ 037   ----------------------------------------
	.byte	W02
	.byte		N12   
	.byte	W12
	.byte		N11   
	.byte	W13
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , As2 
	.byte	W07
	.byte		N18   
	.byte	W19
	.byte		N05   
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N24   , An2 
	.byte	W19
@ 038   ----------------------------------------
	.byte	W06
	.byte		N24   
	.byte	W36
	.byte	W02
	.byte		N24   
	.byte	W24
	.byte	W01
	.byte		N12   
	.byte	W13
	.byte		N24   
	.byte	W14
@ 039   ----------------------------------------
	.byte	W11
	.byte		N12   
	.byte	W13
	.byte		N11   
	.byte	W12
	.byte		N12   , As2 
	.byte	W13
	.byte		N05   , An2 
	.byte	W06
	.byte		N18   
	.byte	W19
	.byte		N06   
	.byte	W07
	.byte		N05   , Fn2 
	.byte	W06
	.byte		N18   , Gn2 
	.byte	W09
@ 040   ----------------------------------------
	.byte	W10
	.byte		N06   
	.byte	W06
	.byte		N12   , As2 
	.byte	W13
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N12   
	.byte	W13
	.byte		N06   , As2 
	.byte	W06
	.byte		N18   , An2 
	.byte	W19
	.byte		N11   , As2 
	.byte	W13
	.byte		N18   , Gs2 
	.byte	W04
@ 041   ----------------------------------------
	.byte	W15
	.byte		N05   , An2 
	.byte	W06
	.byte		N12   , Bn2 
	.byte	W13
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N12   , An2 
	.byte	W13
	.byte		        Bn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W13
	.byte		        Bn2 
	.byte	W12
@ 042   ----------------------------------------
	.byte	W01
	.byte		N24   , An2 
	.byte	W24
	.byte	W01
	.byte		N24   
	.byte	W36
	.byte	W02
	.byte		N24   
	.byte	W24
	.byte	W01
	.byte		N06   
	.byte	W06
	.byte		N05   , Fn2 
	.byte	W01
@ 043   ----------------------------------------
	.byte	W05
	.byte		N24   , Gn2 
	.byte	W24
	.byte	W02
	.byte		N12   , An2 
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W13
	.byte		N18   , An2 
	.byte	W19
	.byte		        En2 
	.byte	W19
	.byte		N36   , Fn2 , v084, gtp1
	.byte	W02
@ 044   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N24   , Fn3 
	.byte	W36
	.byte	W02
	.byte		N24   
	.byte	W23
@ 045   ----------------------------------------
	.byte	W03
	.byte		N11   
	.byte	W92
	.byte	W01
@ 046   ----------------------------------------
	.byte	W19
	.byte	GOTO
	 .word	mus_theme_of_morroc_2_B1
mus_theme_of_morroc_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_theme_of_morroc_3:
	.byte	KEYSH , mus_theme_of_morroc_key+0
mus_theme_of_morroc_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_theme_of_morroc_mvl/mxv
	.byte		PAN   , c_v+10
	.byte	W96
@ 001   ----------------------------------------
	.byte	W42
	.byte		N11   , Cn4 , v127
	.byte	W12
	.byte		N18   
	.byte	W19
	.byte		        Bn3 
	.byte	W19
	.byte		N11   , An3 
	.byte	W04
@ 002   ----------------------------------------
	.byte	W09
	.byte		N36   , An3 , v127, gtp1
	.byte	W36
	.byte	W01
	.byte		N12   , Cn3 
	.byte	W13
	.byte		N17   
	.byte	W19
	.byte		N18   , Dn3 
	.byte	W18
@ 003   ----------------------------------------
	.byte	W01
	.byte		N11   , En3 
	.byte	W12
	.byte		N18   , An3 
	.byte	W19
	.byte		        Bn3 
	.byte	W19
	.byte		N11   , An3 
	.byte	W13
	.byte		N18   , Bn3 
	.byte	W19
	.byte		        An3 
	.byte	W13
@ 004   ----------------------------------------
	.byte	W06
	.byte		N11   , Bn3 
	.byte	W17
	.byte		N03   , An3 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N24   
	.byte	W24
	.byte	W01
	.byte		N36   , Gs3 
	.byte	W40
@ 005   ----------------------------------------
	.byte	W04
	.byte		N06   , En3 
	.byte	W07
	.byte		N05   , Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   , An3 
	.byte	W07
	.byte		        Gs3 
	.byte	W06
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N11   , En3 
	.byte	W13
	.byte		N05   , Bn3 
	.byte	W06
	.byte		N05   
	.byte	W07
	.byte		N17   
	.byte	W19
	.byte		        An3 
	.byte	W03
@ 006   ----------------------------------------
	.byte	W15
	.byte		N11   , Gs3 
	.byte	W13
	.byte		N18   
	.byte	W19
	.byte		        En3 
	.byte	W19
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N18   
	.byte	W18
@ 007   ----------------------------------------
	.byte	W01
	.byte		        En3 
	.byte	W19
	.byte		N11   , Dn3 
	.byte	W13
	.byte		N18   , Gs3 
	.byte	W19
	.byte		        Fn3 
	.byte	W19
	.byte		N11   , En3 
	.byte	W12
	.byte		N18   
	.byte	W13
@ 008   ----------------------------------------
	.byte	W06
	.byte		        Dn3 
	.byte	W19
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W07
	.byte		N36   , En3 
	.byte	W36
	.byte	W02
	.byte		N05   , An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N18   , Cn3 
	.byte	W08
@ 009   ----------------------------------------
	.byte	W11
	.byte		N17   , Dn3 
	.byte	W19
	.byte		N11   , En3 
	.byte	W13
	.byte		N72   , En3 , v127, gtp2
	.byte	W52
	.byte	W01
@ 010   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N11   
	.byte	W12
	.byte		N04   , As3 
	.byte	W05
	.byte		N03   , En3 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N01   
	.byte	W02
	.byte		        As3 
	.byte	W02
	.byte		N03   , En3 
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		        As3 
	.byte	W04
	.byte		        En3 
	.byte	W05
	.byte		N03   
	.byte	W02
@ 011   ----------------------------------------
	.byte	W02
	.byte		N04   , As3 
	.byte	W04
	.byte		N03   , En3 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W05
	.byte		N01   
	.byte	W02
	.byte		        An3 
	.byte	W02
	.byte		N03   , En3 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W05
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N01   
	.byte	W02
	.byte		        Gn3 
	.byte	W02
	.byte		N03   , En3 
	.byte	W04
	.byte		N03   
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        En3 
	.byte	W02
@ 012   ----------------------------------------
	.byte	W02
	.byte		N03   
	.byte	W05
	.byte		        Gn3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N02   
	.byte	W03
	.byte		N01   , Fn3 
	.byte	W02
	.byte		N03   , En3 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N48   , An3 , v127, gtp1
	.byte	W36
	.byte	W03
@ 013   ----------------------------------------
	.byte	W42
	.byte	W01
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W07
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W07
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N06   , En3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W09
@ 014   ----------------------------------------
	.byte	W04
	.byte		        Fn3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte	W02
	.byte		        An3 
	.byte	W24
	.byte	W01
	.byte		N18   , Bn3 
	.byte	W19
	.byte		N18   
	.byte	W10
@ 015   ----------------------------------------
	.byte	W09
	.byte		N11   
	.byte	W12
	.byte		N18   
	.byte	W19
	.byte		N17   , An3 
	.byte	W20
	.byte		N11   
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N18   , Gn3 
	.byte	W06
@ 016   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W13
	.byte		N17   
	.byte	W19
	.byte		N18   , Fn3 
	.byte	W19
	.byte		N11   , Ds3 
	.byte	W17
	.byte		N03   , En3 
	.byte	W04
	.byte		N04   
	.byte	W04
	.byte		N36   
	.byte	W07
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W23
	.byte		N11   
	.byte	W13
	.byte		N18   , Fn3 
	.byte	W19
	.byte		N17   , En3 
	.byte	W18
	.byte		N06   , Dn3 
	.byte	W07
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N48   , Dn3 , v127, gtp1
	.byte	W10
@ 019   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		N24   
	.byte	W24
	.byte	W01
	.byte		N11   , En3 
	.byte	W12
	.byte		N48   , Fn3 , v127, gtp1
	.byte	W18
@ 020   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N18   , En3 
	.byte	W19
	.byte		        Dn3 
	.byte	W19
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        As2 
	.byte	W07
@ 021   ----------------------------------------
	.byte		N48   , Cn3 , v127, gtp1
	.byte	W48
	.byte	W02
	.byte		N24   
	.byte	W24
	.byte	W01
	.byte		N18   , Dn3 
	.byte	W19
	.byte		N42   , En3 , v127, gtp1
	.byte	W02
@ 022   ----------------------------------------
	.byte	W42
	.byte		N11   , Cn3 
	.byte	W13
	.byte		N24   , As2 
	.byte	W24
	.byte	W01
	.byte		        An2 
	.byte	W16
@ 023   ----------------------------------------
	.byte	W09
	.byte		N18   , As2 
	.byte	W19
	.byte		N18   
	.byte	W19
	.byte		N11   
	.byte	W13
	.byte		N18   
	.byte	W19
	.byte		        Cn3 
	.byte	W17
@ 024   ----------------------------------------
	.byte	W02
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N18   , Bn2 
	.byte	W19
	.byte		N18   
	.byte	W19
	.byte		N11   
	.byte	W13
	.byte		N18   
	.byte	W19
	.byte		N17   , Cn3 
	.byte	W12
@ 025   ----------------------------------------
	.byte	W07
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N03   , Fn3 
	.byte	W04
	.byte		N03   
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W01
@ 026   ----------------------------------------
	.byte	W04
	.byte		N02   
	.byte	W03
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N04   , Fn3 
	.byte	W05
	.byte		N03   , En3 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W01
@ 027   ----------------------------------------
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte		N18   , An3 
	.byte	W19
	.byte		N18   
	.byte	W19
	.byte		N11   
	.byte	W12
	.byte		N18   
	.byte	W17
@ 028   ----------------------------------------
	.byte	W02
	.byte		        As3 
	.byte	W19
	.byte		N11   , An3 
	.byte	W13
	.byte		N18   
	.byte	W19
	.byte		N17   , As3 
	.byte	W18
	.byte		N12   , An3 
	.byte	W13
	.byte		N17   , Cn4 
	.byte	W12
@ 029   ----------------------------------------
	.byte	W07
	.byte		N18   , As3 
	.byte	W19
	.byte		N11   , An3 
	.byte	W13
	.byte		N72   , An3 , v127, gtp2
	.byte	W56
	.byte	W01
@ 030   ----------------------------------------
	.byte	W18
	.byte		N11   , Gn3 
	.byte	W60
	.byte	W03
	.byte		N11   
	.byte	W13
	.byte		N24   , An3 
	.byte	W02
@ 031   ----------------------------------------
	.byte	W24
	.byte		N23   , As3 
	.byte	W24
	.byte		N18   , Cn4 
	.byte	W19
	.byte		N17   
	.byte	W19
	.byte		N11   
	.byte	W10
@ 032   ----------------------------------------
	.byte	W03
	.byte		N17   
	.byte	W19
	.byte		        As3 
	.byte	W18
	.byte		N12   
	.byte	W13
	.byte		N17   
	.byte	W19
	.byte		N18   , An3 
	.byte	W19
	.byte		N11   
	.byte	W05
@ 033   ----------------------------------------
	.byte	W07
	.byte		N18   
	.byte	W19
	.byte		        Gs3 
	.byte	W19
	.byte		N11   
	.byte	W13
	.byte		N48   , An3 , v127, gtp1
	.byte	W36
	.byte	W02
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W05
	.byte		N11   
	.byte	W12
	.byte		N17   , As3 
	.byte	W19
	.byte		        An3 
	.byte	W19
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W07
	.byte		N72   , Gn3 , v127, gtp2
	.byte	W28
@ 036   ----------------------------------------
	.byte	W84
	.byte	W01
	.byte		N24   
	.byte	W11
@ 037   ----------------------------------------
	.byte	W14
	.byte		N11   
	.byte	W13
	.byte		N18   , An3 
	.byte	W19
	.byte		        Gn3 
	.byte	W19
	.byte		N05   , Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N48   , Fn3 , v127, gtp1
	.byte	W19
@ 038   ----------------------------------------
	.byte	W80
	.byte	W02
	.byte		N24   
	.byte	W14
@ 039   ----------------------------------------
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N18   , Gn3 
	.byte	W19
	.byte		        Fn3 
	.byte	W19
	.byte		N05   , En3 
	.byte	W07
	.byte		        Dn3 
	.byte	W06
	.byte		N18   , En3 
	.byte	W09
@ 040   ----------------------------------------
	.byte	W10
	.byte		N18   
	.byte	W19
	.byte		N11   
	.byte	W12
	.byte		N18   
	.byte	W19
	.byte		        Fn3 
	.byte	W19
	.byte		N11   , En3 
	.byte	W13
	.byte		N18   
	.byte	W04
@ 041   ----------------------------------------
	.byte	W15
	.byte		        Fn3 
	.byte	W19
	.byte		N11   , En3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte	W01
	.byte		        Dn3 
	.byte	W24
	.byte	W01
@ 042   ----------------------------------------
	.byte	W01
	.byte		N48   , Fn3 , v127, gtp1
	.byte	W88
	.byte		N05   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W01
@ 043   ----------------------------------------
	.byte	W05
	.byte		N24   , En3 
	.byte	W36
	.byte	W02
	.byte		N11   
	.byte	W13
	.byte		N18   , Fn3 
	.byte	W19
	.byte		        Cs3 
	.byte	W19
	.byte		N60   , Dn3 , v127, gtp2
	.byte	W02
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W19
	.byte	GOTO
	 .word	mus_theme_of_morroc_3_B1
mus_theme_of_morroc_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_theme_of_morroc:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_theme_of_morroc_pri	@ Priority
	.byte	mus_theme_of_morroc_rev	@ Reverb.

	.word	mus_theme_of_morroc_grp

	.word	mus_theme_of_morroc_1
	.word	mus_theme_of_morroc_2
	.word	mus_theme_of_morroc_3

	.end
