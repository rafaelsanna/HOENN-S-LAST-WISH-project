	.include "MPlayDef.s"

	.equ	mus_smash_bros_brawl_main_theme_grp, voicegroup_brothers
	.equ	mus_smash_bros_brawl_main_theme_pri, 0
	.equ	mus_smash_bros_brawl_main_theme_rev, reverb_set+18
	.equ	mus_smash_bros_brawl_main_theme_mvl, 90
	.equ	mus_smash_bros_brawl_main_theme_key, 0
	.equ	mus_smash_bros_brawl_main_theme_tbs, 1
	.equ	mus_smash_bros_brawl_main_theme_exg, 0
	.equ	mus_smash_bros_brawl_main_theme_cmp, 1

	.section .rodata
	.global	mus_smash_bros_brawl_main_theme
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_smash_bros_brawl_main_theme_1:
	.byte	KEYSH , mus_smash_bros_brawl_main_theme_key+0
mus_smash_bros_brawl_main_theme_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 155*mus_smash_bros_brawl_main_theme_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 84*mus_smash_bros_brawl_main_theme_mvl/mxv
	.byte		PAN   , c_v-10
	.byte		N11   , En1 , v072
	.byte		N11   , En2 
	.byte	W12
	.byte		TIE   , En1 
	.byte		TIE   , En2 
	.byte	W84
@ 001   ----------------------------------------
	.byte	W48
	.byte		N03   , An2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Cs3 
	.byte	W02
	.byte		EOT   , En1 
	.byte	W02
	.byte		N03   , Dn3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        En4 
	.byte	W04
@ 002   ----------------------------------------
	.byte		        Fs4 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        An3 
	.byte	W02
	.byte		EOT   , En2 
	.byte	W02
	.byte		N44   , En2 , v068
	.byte		TIE   , Bn3 , v072
	.byte	W48
	.byte		N44   , En2 , v068
	.byte	W36
@ 003   ----------------------------------------
	.byte	W12
	.byte		N32   
	.byte	W36
	.byte		N11   , En2 , v072
	.byte	W12
	.byte		EOT   , Bn3 
	.byte		N44   , Bn1 
	.byte	W36
@ 004   ----------------------------------------
	.byte	W12
	.byte		N11   , Cs2 
	.byte	W12
	.byte		N32   , Cs2 , v068
	.byte	W36
	.byte		N11   , Cs2 , v072
	.byte	W12
	.byte		N32   , Cs2 , v068
	.byte	W24
@ 005   ----------------------------------------
mus_smash_bros_brawl_main_theme_1_005:
	.byte	W12
	.byte		N11   , Cs2 , v072
	.byte	W12
	.byte		N32   , Cs2 , v068
	.byte	W36
	.byte		N07   , Bn1 , v072
	.byte	W04
	.byte		N03   , Bn1 , v068
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N07   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte	PEND
@ 006   ----------------------------------------
mus_smash_bros_brawl_main_theme_1_006:
	.byte		N03   , Bn1 , v068
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N11   , Cs2 , v072
	.byte	W12
	.byte		N32   , Cs2 , v068
	.byte	W36
	.byte		N11   , Cs2 , v072
	.byte	W12
	.byte		N32   , Cs2 , v068
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_1_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_1_006
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_1_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_1_006
@ 011   ----------------------------------------
	.byte	W12
	.byte		N44   , Cs2 , v068
	.byte	W48
	.byte		N07   , Bn1 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_1_006
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_1_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_1_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_1_005
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_1_006
@ 017   ----------------------------------------
	.byte	W12
	.byte		N44   , Fs1 , v068
	.byte		N44   , Cs2 , v072
	.byte	W48
	.byte		        Gs1 
	.byte	W36
@ 018   ----------------------------------------
	.byte	W12
	.byte		        Cs2 
	.byte	W84
@ 019   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte		N22   , Gs3 , v068
	.byte	W24
	.byte		N23   , Ds2 , v072
	.byte		N22   , Fs4 , v060
	.byte	W24
	.byte		N23   , En2 , v068
	.byte		N44   , En4 , v056
	.byte	W24
	.byte		N23   , Gs1 , v064
	.byte		N22   , Gs2 , v072
	.byte	W12
@ 020   ----------------------------------------
	.byte	W12
	.byte		N44   , Cs2 , v056
	.byte		N92   , Fs2 
	.byte		N11   , Ds3 , v060
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 021   ----------------------------------------
	.byte		        Fs2 
	.byte	W12
	.byte		N44   , Gs1 , v056
	.byte		N92   , Gs2 
	.byte	W12
	.byte		N11   , Cn3 , v060
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 022   ----------------------------------------
	.byte		        Cn3 
	.byte	W12
	.byte		N44   , Cs2 , v056
	.byte		N11   , Gs2 , v060
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 024   ----------------------------------------
	.byte		        Cs2 
	.byte	W12
	.byte		N44   , As1 , v056
	.byte	W12
	.byte		N11   , As2 , v060
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N44   , An1 
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Fs3 
	.byte	W12
	.byte		N44   , Gs1 , v068
	.byte		N11   , Ds3 , v060
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N44   , Cn2 , v068
	.byte	W12
	.byte		N11   , Cn3 , v060
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 026   ----------------------------------------
	.byte		        Cn3 
	.byte	W12
	.byte		N22   , Cs2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N22   , Ds2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N22   , En2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N22   , Ds2 
	.byte		N11   , Gs3 
	.byte	W12
@ 027   ----------------------------------------
	.byte		        En3 
	.byte	W12
	.byte		N22   , En2 
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N22   , Fs2 , v072
	.byte		N11   , Gs3 , v060
	.byte	W12
	.byte		N10   , Fs2 
	.byte	W12
	.byte		N22   , Gs2 , v072
	.byte		N11   , En3 , v060
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N22   , As2 , v072
	.byte		N11   , En3 , v060
	.byte	W12
@ 028   ----------------------------------------
	.byte		N10   , As2 
	.byte	W12
	.byte		N44   , Fs1 , v072
	.byte	W48
	.byte		N22   , Gs1 
	.byte	W24
	.byte		        An1 
	.byte	W12
@ 029   ----------------------------------------
	.byte	W12
	.byte		N22   
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		N44   , Fs1 
	.byte	W36
@ 030   ----------------------------------------
	.byte	W12
	.byte		N44   
	.byte		N92   , En2 , v068
	.byte	W84
@ 031   ----------------------------------------
	.byte	W12
	.byte		N92   
	.byte	W48
	.byte		N44   , Fs1 , v072
	.byte	W36
@ 032   ----------------------------------------
	.byte	W12
	.byte		N92   , Ds2 , v068
	.byte		N44   , As3 , v072
	.byte		N44   , Cs4 
	.byte	W48
	.byte		N22   , Bn3 
	.byte		N22   , Ds4 
	.byte	W24
	.byte		        Cs4 
	.byte		N22   , En4 
	.byte	W12
@ 033   ----------------------------------------
	.byte	W12
	.byte		N44   , Gn1 
	.byte		N22   , Cs4 
	.byte		N22   , En4 
	.byte	W24
	.byte		N68   , Ds2 , v068
	.byte		N22   , Bn3 , v072
	.byte		N22   , Ds4 
	.byte	W24
	.byte		        Bn3 
	.byte		N22   , Ds4 
	.byte	W24
	.byte		        As3 
	.byte		N22   , Cs4 
	.byte	W12
@ 034   ----------------------------------------
	.byte	W12
	.byte		N44   , Gs1 , v060
	.byte		N44   , Cs2 , v072
	.byte	W48
	.byte		        Fs1 
	.byte	W36
@ 035   ----------------------------------------
	.byte	W12
	.byte		        En1 
	.byte	W48
	.byte		        Gs1 
	.byte		N44   , Ds2 
	.byte	W36
@ 036   ----------------------------------------
mus_smash_bros_brawl_main_theme_1_036:
	.byte	W12
	.byte		N11   , Fs1 , v072
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_smash_bros_brawl_main_theme_1_037:
	.byte		N11   , Ds2 , v072
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
	.byte		        Cn3 
	.byte	W12
	.byte		N44   , Cs2 
	.byte	W48
	.byte		N23   
	.byte	W24
	.byte		        Gn1 
	.byte		N24   , Cn2 , v068
	.byte	W12
@ 039   ----------------------------------------
	.byte	W12
	.byte		N23   , Cs2 , v072
	.byte	W24
	.byte		N24   , An1 , v068
	.byte		N23   , Cs2 , v072
	.byte	W24
	.byte		N44   , Gs1 
	.byte	W36
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_1_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_1_037
@ 042   ----------------------------------------
	.byte		N11   , Cn3 , v072
	.byte	W12
	.byte		N44   , Fs1 
	.byte	W48
	.byte		N24   , An1 , v068
	.byte	W24
	.byte		        Gs1 
	.byte	W12
@ 043   ----------------------------------------
	.byte	W12
	.byte		        Fs1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte		        Bn1 
	.byte	W12
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
	.byte	W12
	.byte		N48   , Bn1 , v072
	.byte	W24
	.byte		N05   , En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N03   , Bn1 , v068
	.byte		N05   , Gs3 , v072
	.byte	W04
	.byte		N03   , Bn1 , v068
	.byte	W02
	.byte		N05   , Bn3 , v072
	.byte	W02
	.byte		N03   , Bn1 , v068
	.byte	W04
	.byte		N03   
	.byte		N05   , En4 , v072
	.byte	W04
	.byte		N03   , Bn1 , v068
	.byte	W02
	.byte		N05   , Gs3 , v072
	.byte	W02
	.byte		N03   , Bn1 , v068
	.byte	W04
	.byte		N03   
	.byte		N05   , Bn3 , v072
	.byte	W04
	.byte		N03   , Bn1 , v068
	.byte	W02
	.byte		N05   , En4 , v072
	.byte	W02
	.byte		N03   , Bn1 , v068
	.byte	W04
@ 052   ----------------------------------------
	.byte		N03   
	.byte		N05   , Gs3 , v072
	.byte	W04
	.byte		N03   , Bn1 , v068
	.byte	W02
	.byte		N05   , Bn3 , v072
	.byte	W02
	.byte		N03   , Bn1 , v068
	.byte	W04
	.byte		N44   , En1 , v072
	.byte		N44   , Gs2 , v060
	.byte		N44   , Gs3 , v072
	.byte	W48
	.byte		        Gs1 
	.byte		N23   , Gs2 
	.byte		N23   , Gs3 
	.byte	W24
	.byte		        An2 , v060
	.byte		N23   , An3 , v072
	.byte	W12
@ 053   ----------------------------------------
	.byte	W12
	.byte		        Gs2 , v060
	.byte		N23   , Gs3 , v072
	.byte	W24
	.byte		        Fs2 , v060
	.byte		N23   , Fs4 , v072
	.byte	W24
	.byte		N44   , En2 , v060
	.byte		N44   , En4 , v072
	.byte	W36
@ 054   ----------------------------------------
	.byte	W12
	.byte		        En1 
	.byte		N44   , Bn1 , v060
	.byte		N44   , Fs4 , v072
	.byte	W48
	.byte		        Gs1 
	.byte		N23   , Bn1 
	.byte		N23   , Fs4 
	.byte	W24
	.byte		        Cs2 , v060
	.byte		N23   , En4 , v072
	.byte	W12
@ 055   ----------------------------------------
	.byte	W12
	.byte		N44   , Bn1 , v060
	.byte		N44   , Bn3 , v072
	.byte	W48
	.byte		N23   , An1 , v060
	.byte		N23   , An3 , v072
	.byte	W24
	.byte		        Gs1 , v060
	.byte		N23   , Gs3 , v072
	.byte	W12
@ 056   ----------------------------------------
	.byte	W12
	.byte		N44   , En1 
	.byte		N92   , Cs2 , v068
	.byte		N44   , Fs4 , v072
	.byte	W48
	.byte		        Gs1 
	.byte		N23   , Fs4 
	.byte	W24
	.byte		        Fn4 
	.byte	W12
@ 057   ----------------------------------------
	.byte	W12
	.byte		N92   , Bn1 , v068
	.byte		N44   , An3 , v072
	.byte	W48
	.byte		        Fs4 
	.byte	W36
@ 058   ----------------------------------------
	.byte	W12
	.byte		TIE   , An1 
	.byte	W84
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		N92   , Cn2 
	.byte	W84
@ 061   ----------------------------------------
	.byte	W12
	.byte		        Dn2 
	.byte	W48
	.byte		N03   , Bn1 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
@ 062   ----------------------------------------
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N32   , Ds2 
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 063   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 064   ----------------------------------------
	.byte	W12
	.byte		N32   , Cn2 
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 065   ----------------------------------------
	.byte	W12
	.byte		N32   , Fn1 
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 066   ----------------------------------------
mus_smash_bros_brawl_main_theme_1_066:
	.byte	W12
	.byte		N32   , Gn1 , v072
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 067   ----------------------------------------
mus_smash_bros_brawl_main_theme_1_067:
	.byte		N11   , Dn2 , v072
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N44   , Fn1 
	.byte	W36
	.byte	PEND
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_1_066
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_1_067
@ 070   ----------------------------------------
	.byte	W12
	.byte		N22   , Gn1 , v072
	.byte		N22   , Gn2 
	.byte	W12
	.byte		N05   , Bn3 
	.byte	W06
	.byte		        Cn3 
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        Dn3 
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        En3 
	.byte		N05   , En4 
	.byte	W06
	.byte		        Fn3 
	.byte		N05   , Fn4 
	.byte	W06
	.byte		        Gn3 
	.byte		N05   , Gn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Fs3 
	.byte		N05   , Fs4 
	.byte	W06
	.byte		        Gn3 
	.byte		N05   , Gn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
@ 071   ----------------------------------------
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N92   , Dn2 
	.byte		N68   , Fn4 
	.byte	W72
	.byte		N06   
	.byte	W08
	.byte		N06   
	.byte	W04
@ 072   ----------------------------------------
	.byte	W04
	.byte		N06   
	.byte	W08
	.byte		N22   , Gn1 
	.byte		N22   , Gn2 
	.byte		N11   , Gn4 
	.byte	W24
	.byte		N07   , Gn1 
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N96   
	.byte	W36
@ 073   ----------------------------------------
	.byte	W60
	.byte	GOTO
	 .word	mus_smash_bros_brawl_main_theme_1_B1
mus_smash_bros_brawl_main_theme_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_smash_bros_brawl_main_theme_2:
	.byte	KEYSH , mus_smash_bros_brawl_main_theme_key+0
mus_smash_bros_brawl_main_theme_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 98*mus_smash_bros_brawl_main_theme_mvl/mxv
	.byte		PAN   , c_v+16
	.byte	W96
@ 001   ----------------------------------------
	.byte	W76
	.byte		N03   , An4 , v084
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        En5 
	.byte	W04
@ 002   ----------------------------------------
	.byte		        Fs4 
	.byte	W04
	.byte		        Gs4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		N44   , Bn3 
	.byte		TIE   , Bn4 , v080
	.byte	W24
	.byte		N06   , En4 , v084
	.byte	W08
	.byte		N06   
	.byte	W08
	.byte		N06   
	.byte	W08
	.byte		N44   , En3 
	.byte		N92   , En4 
	.byte	W36
@ 003   ----------------------------------------
	.byte	W60
	.byte		EOT   , Bn4 
	.byte		N22   , Cs4 
	.byte	W24
	.byte		N11   , Bn3 
	.byte	W12
@ 004   ----------------------------------------
mus_smash_bros_brawl_main_theme_2_004:
	.byte		N11   , An3 , v084
	.byte	W12
	.byte		N68   , Gs3 
	.byte	W48
	.byte		N05   , En4 
	.byte		N05   , En5 
	.byte	W06
	.byte		        Cs4 
	.byte		N05   , Cs5 
	.byte	W06
	.byte		        En4 
	.byte		N05   , En5 
	.byte	W06
	.byte		        Gs3 , v076
	.byte		N05   , Gs4 , v084
	.byte	W06
	.byte		        Cs4 , v076
	.byte		N05   , Cs5 , v084
	.byte	W06
	.byte		        Gs3 , v076
	.byte		N05   , Gs4 , v084
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_smash_bros_brawl_main_theme_2_005:
	.byte		N05   , Cs4 , v076
	.byte		N05   , Cs5 , v084
	.byte	W06
	.byte		        En4 , v076
	.byte		N05   , En5 , v084
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 , v076
	.byte		N05   , En5 , v084
	.byte	W06
	.byte		        Cs4 , v076
	.byte		N05   , Cs5 , v084
	.byte	W06
	.byte		        Gs3 , v076
	.byte		N30   , Gs4 , v084
	.byte	W30
	.byte		N11   , An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_smash_bros_brawl_main_theme_2_006:
	.byte		N11   , Bn3 , v084
	.byte	W12
	.byte		N68   , Gs3 
	.byte	W48
	.byte		N05   , En4 
	.byte		N05   , En5 
	.byte	W06
	.byte		        Cs4 
	.byte		N05   , Cs5 
	.byte	W06
	.byte		        En4 
	.byte		N05   , En5 
	.byte	W06
	.byte		        Gs3 , v076
	.byte		N05   , Gs4 , v084
	.byte	W06
	.byte		        Cs4 , v076
	.byte		N05   , Cs5 , v084
	.byte	W06
	.byte		        Gs3 , v076
	.byte		N05   , Gs4 , v084
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
mus_smash_bros_brawl_main_theme_2_007:
	.byte		N05   , Cs4 , v076
	.byte		N05   , Cs5 , v084
	.byte	W06
	.byte		        En4 , v076
	.byte		N05   , En5 , v084
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 , v076
	.byte		N05   , En5 , v084
	.byte	W06
	.byte		        Cs4 , v076
	.byte		N05   , Cs5 , v084
	.byte	W06
	.byte		        Gs3 , v076
	.byte		N30   , Gs4 , v084
	.byte	W18
	.byte		N05   , Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N11   , Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_2_006
@ 009   ----------------------------------------
	.byte		N05   , Cs4 , v076
	.byte		N05   , Cs5 , v084
	.byte	W06
	.byte		        En4 , v076
	.byte		N05   , En5 , v084
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 , v076
	.byte		N05   , En5 , v084
	.byte	W06
	.byte		        Cs4 , v076
	.byte		N05   , Cs5 , v084
	.byte	W06
	.byte		        Gs3 , v076
	.byte		N30   , Gs4 , v084
	.byte	W06
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N23   , Fs3 
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Ds3 
	.byte	W12
	.byte		N23   , Cs3 
	.byte	W24
	.byte		N44   , Gs3 
	.byte	W24
	.byte		N05   , En4 
	.byte		N05   , En5 
	.byte	W06
	.byte		        Cs4 
	.byte		N05   , Cs5 
	.byte	W06
	.byte		        En4 
	.byte		N05   , En5 
	.byte	W06
	.byte		        Gs3 , v076
	.byte		N05   , Gs4 , v084
	.byte	W06
	.byte		        Cs4 , v076
	.byte		N05   , Cs5 , v084
	.byte	W06
	.byte		        Gs3 , v076
	.byte		N05   , Gs4 , v084
	.byte	W06
@ 011   ----------------------------------------
	.byte		        Cs4 , v076
	.byte		N05   , Cs5 , v084
	.byte	W06
	.byte		        En4 , v076
	.byte		N05   , En5 , v084
	.byte	W06
	.byte		N44   , Cn3 
	.byte		N05   , Gs4 
	.byte	W06
	.byte		        En4 , v076
	.byte		N05   , En5 , v084
	.byte	W06
	.byte		        Cs4 , v076
	.byte		N05   , Cs5 , v084
	.byte	W06
	.byte		        Gs3 , v076
	.byte		N30   , Gs4 , v084
	.byte	W30
	.byte		N23   , Cs4 
	.byte	W24
	.byte		N11   , Bn3 
	.byte	W12
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_2_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_2_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_2_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_2_006
@ 017   ----------------------------------------
	.byte		N05   , Cs4 , v076
	.byte		N05   , Cs5 , v084
	.byte	W06
	.byte		        En4 , v076
	.byte		N05   , En5 , v084
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 , v076
	.byte		N05   , En5 , v084
	.byte	W06
	.byte		        Cs4 , v076
	.byte		N05   , Cs5 , v084
	.byte	W06
	.byte		        Gs3 , v076
	.byte		N30   , Gs4 , v084
	.byte	W06
	.byte		N11   , Ds4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N23   , Fs4 
	.byte	W24
	.byte		N11   , En4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		        Ds4 
	.byte	W12
	.byte		N23   , En4 
	.byte	W24
	.byte		N68   , Cs4 
	.byte	W60
@ 019   ----------------------------------------
	.byte	W12
	.byte		N23   , Gs4 , v080
	.byte	W24
	.byte		        Fs4 , v076
	.byte	W24
	.byte		N48   , En4 , v072
	.byte		N44   , En5 , v064
	.byte	W36
@ 020   ----------------------------------------
	.byte	W12
	.byte		        Ds4 , v068
	.byte		N44   , Ds5 , v060
	.byte	W48
	.byte		N22   , En4 , v076
	.byte		N22   , En5 , v064
	.byte	W24
	.byte		        Fs4 , v080
	.byte	W12
@ 021   ----------------------------------------
	.byte	W12
	.byte		N22   
	.byte	W24
	.byte		        En4 , v076
	.byte		N22   , En5 , v064
	.byte	W24
	.byte		N44   , Ds4 , v068
	.byte		N44   , Ds5 , v060
	.byte	W36
@ 022   ----------------------------------------
	.byte	W12
	.byte		N22   , Ds4 , v068
	.byte		N22   , Ds5 , v060
	.byte	W24
	.byte		        Cs4 , v064
	.byte		N22   , Cs5 , v060
	.byte	W24
	.byte		TIE   , Cs4 , v064
	.byte		TIE   , Cs5 , v060
	.byte	W36
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W11
	.byte		EOT   , Cs4 
	.byte		        Cs5 
	.byte	W01
	.byte		N96   , As3 , v068
	.byte	W84
@ 025   ----------------------------------------
	.byte	W12
	.byte		        Ds4 , v076
	.byte	W84
@ 026   ----------------------------------------
	.byte	W12
	.byte		N22   , Cs3 , v060
	.byte		N22   , En4 , v068
	.byte	W24
	.byte		        Ds3 , v060
	.byte		N22   , Fs4 , v068
	.byte	W24
	.byte		        En3 , v064
	.byte		TIE   , Gs4 , v076
	.byte	W24
	.byte		N22   , Ds3 , v064
	.byte	W12
@ 027   ----------------------------------------
	.byte	W12
	.byte		        En3 , v068
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Gs3 , v076
	.byte	W24
	.byte		        As3 , v080
	.byte	W12
@ 028   ----------------------------------------
	.byte	W11
	.byte		EOT   , Gs4 
	.byte	W01
	.byte		N44   , Gs3 , v084
	.byte	W48
	.byte		N22   , An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W12
@ 029   ----------------------------------------
	.byte	W12
	.byte		N22   
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N44   , Gs3 
	.byte	W36
@ 030   ----------------------------------------
	.byte	W12
	.byte		N44   
	.byte		N44   , Gs4 
	.byte	W48
	.byte		N22   , An3 
	.byte		N22   , An4 
	.byte	W24
	.byte		        Bn3 
	.byte		N22   , Bn4 
	.byte	W12
@ 031   ----------------------------------------
	.byte	W12
	.byte		        Bn3 
	.byte		N22   , Bn4 
	.byte	W24
	.byte		        An3 
	.byte		N22   , An4 
	.byte	W24
	.byte		N44   , Gs3 
	.byte		N44   , Gs4 
	.byte	W36
@ 032   ----------------------------------------
	.byte	W12
	.byte		        As4 , v080
	.byte		N44   , Cs5 , v084
	.byte	W48
	.byte		N22   , Bn4 , v080
	.byte		N22   , Ds5 , v084
	.byte	W24
	.byte		        Cs5 , v080
	.byte		N22   , En5 , v084
	.byte	W12
@ 033   ----------------------------------------
	.byte	W12
	.byte		        Cs5 , v080
	.byte		N22   , En5 , v084
	.byte	W24
	.byte		        Bn4 , v080
	.byte		N22   , Ds5 , v084
	.byte	W24
	.byte		        Bn4 , v080
	.byte		N22   , Ds5 , v084
	.byte	W24
	.byte		        As4 , v080
	.byte		N22   , Cs5 , v084
	.byte	W12
@ 034   ----------------------------------------
	.byte	W12
	.byte		N44   , Gs3 
	.byte		N28   , Gs4 , v080
	.byte	W24
	.byte		N05   , Gs4 , v084
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N44   , Gs3 
	.byte		N28   , Gs4 , v080
	.byte	W24
	.byte		N05   , Gs4 , v084
	.byte	W06
	.byte		        Ds5 
	.byte	W06
@ 035   ----------------------------------------
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N44   , Gs3 
	.byte	W24
	.byte		N05   , Gs4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N44   , Gs3 
	.byte		N28   , Gs4 , v080
	.byte	W24
	.byte		N05   , Gs4 , v084
	.byte	W06
	.byte		        Ds5 
	.byte	W06
@ 036   ----------------------------------------
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N44   , Fs4 , v080
	.byte	W48
	.byte		N32   , Cs4 
	.byte	W36
@ 037   ----------------------------------------
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N92   , Fs4 
	.byte	W84
@ 038   ----------------------------------------
	.byte	W12
	.byte		N44   , Cs4 
	.byte		N44   , Gs4 
	.byte	W48
	.byte		N22   , Fs4 
	.byte		N22   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte		N22   , Gs4 
	.byte	W12
@ 039   ----------------------------------------
	.byte	W12
	.byte		        Fs4 
	.byte		N22   , Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte		N22   , Gs4 
	.byte	W24
	.byte		N44   , En4 
	.byte		N44   , En5 
	.byte	W36
@ 040   ----------------------------------------
	.byte	W12
	.byte		        Fs3 
	.byte		TIE   , Cs5 
	.byte	W12
	.byte		N11   , Gs3 , v068
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N32   , Cs4 , v084
	.byte	W12
	.byte		N11   , Bn3 , v068
	.byte	W12
	.byte		N10   , Cs4 
	.byte	W12
@ 041   ----------------------------------------
	.byte		N05   , Cs4 , v084
	.byte		N11   , Ds4 , v068
	.byte	W06
	.byte		N05   , Cs4 , v084
	.byte	W06
	.byte		N11   , En4 , v068
	.byte		N44   , Fs4 , v084
	.byte	W12
	.byte		N11   , Ds4 , v068
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
@ 042   ----------------------------------------
	.byte		        Cn5 
	.byte	W10
	.byte		EOT   , Cs5 
	.byte	W02
	.byte		N44   , Fs3 , v084
	.byte		N44   , An3 
	.byte	W48
	.byte		N22   , Bn3 
	.byte	W24
	.byte		        Cs4 
	.byte	W12
@ 043   ----------------------------------------
	.byte	W12
	.byte		N92   , Ds3 , v068
	.byte		N22   , Bn3 , v080
	.byte	W24
	.byte		        An3 , v076
	.byte	W24
	.byte		        Gs3 , v072
	.byte	W24
	.byte		        Fs3 , v064
	.byte	W12
@ 044   ----------------------------------------
	.byte	W12
	.byte		N44   , Bn3 , v060
	.byte		N44   , Gs4 
	.byte	W48
	.byte		N22   , Bn3 , v064
	.byte		N22   , Gs4 
	.byte	W24
	.byte		        Cs4 
	.byte		N22   , An4 
	.byte	W12
@ 045   ----------------------------------------
	.byte	W12
	.byte		        Bn3 
	.byte		N22   , Gs4 
	.byte	W24
	.byte		        An3 
	.byte		N22   , Fs4 
	.byte	W24
	.byte		N44   , En4 , v060
	.byte		N44   , En5 
	.byte	W36
@ 046   ----------------------------------------
	.byte	W12
	.byte		        Ds4 
	.byte		N44   , Bn4 
	.byte	W48
	.byte		N22   , Ds4 , v064
	.byte		N22   , Bn4 
	.byte	W24
	.byte		        Ds4 
	.byte		N22   , Cs5 
	.byte	W12
@ 047   ----------------------------------------
	.byte	W12
	.byte		N44   , Dn4 , v060
	.byte		N44   , Bn4 
	.byte	W48
	.byte		N22   , Dn4 , v064
	.byte		N22   , An4 
	.byte	W24
	.byte		        Dn4 
	.byte		N22   , Gs4 
	.byte	W12
@ 048   ----------------------------------------
	.byte	W12
	.byte		N44   , Cs4 , v060
	.byte		N44   , An4 
	.byte	W48
	.byte		N22   , Cs4 , v064
	.byte		N22   , Fs4 
	.byte	W24
	.byte		        Cs4 
	.byte		N22   , Gs4 
	.byte	W12
@ 049   ----------------------------------------
	.byte	W12
	.byte		N44   , Cs4 , v060
	.byte		N44   , An4 
	.byte	W48
	.byte		N22   , Bn3 , v064
	.byte		N22   , Gs4 
	.byte	W24
	.byte		        An3 
	.byte		N22   , Fs4 
	.byte	W12
@ 050   ----------------------------------------
	.byte	W12
	.byte		        An3 
	.byte		N22   , Fs4 
	.byte	W24
	.byte		        En4 
	.byte		N22   , En5 , v060
	.byte	W24
	.byte		TIE   , Bn3 , v064
	.byte		TIE   , Gs4 
	.byte	W36
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W10
	.byte		EOT   , Bn3 
	.byte		        Gs4 
	.byte	W02
	.byte		N44   , En4 , v084
	.byte		N44   , Gs4 
	.byte	W48
	.byte		N23   , En4 
	.byte		N23   , Gs4 
	.byte	W24
	.byte		        En4 
	.byte		N23   , An4 
	.byte	W12
@ 053   ----------------------------------------
	.byte	W12
	.byte		        En4 
	.byte		N23   , Gs4 
	.byte	W24
	.byte		        Cs4 
	.byte		N23   , Fs4 
	.byte	W24
	.byte		N44   , En4 
	.byte		N44   , En5 , v080
	.byte	W36
@ 054   ----------------------------------------
	.byte	W12
	.byte		        Fs4 , v084
	.byte		N44   , Bn4 , v080
	.byte	W48
	.byte		N23   , Fs4 , v084
	.byte		N22   , Bn4 , v080
	.byte	W24
	.byte		N23   , En4 , v084
	.byte		N22   , Cs5 , v080
	.byte	W12
@ 055   ----------------------------------------
	.byte	W12
	.byte		N44   , Fn4 , v084
	.byte		N44   , Bn4 
	.byte	W48
	.byte		N23   , Fn4 
	.byte		N23   , An4 
	.byte	W24
	.byte		        Dn4 
	.byte		N23   , Gs4 
	.byte	W12
@ 056   ----------------------------------------
	.byte	W12
	.byte		N44   , Fs4 
	.byte		N44   , An4 , v080
	.byte	W48
	.byte		N23   , Cs4 , v084
	.byte		N23   , Fs4 
	.byte	W24
	.byte		        Fn4 
	.byte		N22   , Gs4 , v080
	.byte	W12
@ 057   ----------------------------------------
	.byte	W12
	.byte		N44   , Ds4 , v084
	.byte		N44   , An4 
	.byte	W48
	.byte		        Ds4 
	.byte		N44   , Fs4 
	.byte	W36
@ 058   ----------------------------------------
	.byte	W12
	.byte		        An4 , v080
	.byte		N44   , En5 
	.byte	W72
	.byte		N23   , Fs4 , v084
	.byte	W12
@ 059   ----------------------------------------
	.byte	W12
	.byte		        An4 
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        En4 
	.byte	W12
@ 060   ----------------------------------------
	.byte	W12
	.byte		N44   , Gn4 
	.byte	W48
	.byte		TIE   , En4 
	.byte	W36
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W10
	.byte		EOT   
	.byte	W02
	.byte		N68   , Gn3 
	.byte		N68   , Gn4 
	.byte	W72
	.byte		N23   , An3 
	.byte		N23   , An4 
	.byte	W12
@ 063   ----------------------------------------
	.byte	W12
	.byte		        Cn4 
	.byte		N23   , Cn5 
	.byte	W24
	.byte		        As3 
	.byte		N23   , As4 
	.byte	W24
	.byte		        An3 
	.byte		N23   , An4 
	.byte	W24
	.byte		        Gn3 
	.byte		N23   , Gn4 
	.byte	W12
@ 064   ----------------------------------------
	.byte	W12
	.byte		N48   , As3 
	.byte		N48   , As4 
	.byte	W48
	.byte		N92   , Gn3 
	.byte		N92   , Gn4 
	.byte	W36
@ 065   ----------------------------------------
	.byte	W60
	.byte		N48   , Fn4 
	.byte		N48   , Cn5 
	.byte	W36
@ 066   ----------------------------------------
mus_smash_bros_brawl_main_theme_2_066:
	.byte	W12
	.byte		TIE   , Gn4 , v084
	.byte		TIE   , Bn4 
	.byte	W84
	.byte	PEND
@ 067   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		EOT   , Gn4 
	.byte		        Bn4 
	.byte	W02
	.byte		N48   , Fn4 
	.byte		N48   , Cn5 
	.byte	W36
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_2_066
@ 069   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		EOT   , Gn4 
	.byte		        Bn4 
	.byte	W02
	.byte		N48   , Fn4 , v084
	.byte		N48   , Cn5 
	.byte	W36
@ 070   ----------------------------------------
	.byte	W12
	.byte		N44   , Bn3 
	.byte		N23   , Gn4 
	.byte	W12
	.byte		N05   , Bn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
@ 071   ----------------------------------------
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		N68   , Cn4 
	.byte		N11   , Fn4 
	.byte	W04
	.byte		N03   , Fs4 , v080
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		N06   , Cn4 , v084
	.byte		N06   , Fn4 
	.byte	W04
	.byte		N03   , Fs4 , v080
	.byte	W04
	.byte		N06   , Cn4 , v084
	.byte		N06   , Fn4 
	.byte	W04
@ 072   ----------------------------------------
	.byte		N03   , Fs4 , v080
	.byte	W04
	.byte		N06   , Cn4 , v084
	.byte		N06   , Fn4 
	.byte	W04
	.byte		N03   , Fs4 , v080
	.byte	W04
	.byte		N11   , Dn4 , v084
	.byte		N11   , Gn4 
	.byte	W84
@ 073   ----------------------------------------
	.byte	W60
	.byte	GOTO
	 .word	mus_smash_bros_brawl_main_theme_2_B1
mus_smash_bros_brawl_main_theme_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_smash_bros_brawl_main_theme_3:
	.byte	KEYSH , mus_smash_bros_brawl_main_theme_key+0
mus_smash_bros_brawl_main_theme_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 82*mus_smash_bros_brawl_main_theme_mvl/mxv
	.byte		PAN   , c_v-18
	.byte		N11   , En2 , v064
	.byte	W12
	.byte		TIE   , En2 , v060
	.byte	W84
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W10
	.byte		EOT   
	.byte	W02
	.byte		N44   , En2 , v056
	.byte		N44   , Gs2 
	.byte		TIE   , Bn3 , v060
	.byte	W24
	.byte		N06   , En3 , v064
	.byte		N06   , En4 , v056
	.byte	W08
	.byte		        En3 , v064
	.byte		N06   , En4 , v056
	.byte	W08
	.byte		        En3 , v064
	.byte		N06   , En4 , v056
	.byte	W08
	.byte		N44   , En2 
	.byte		N92   , En3 , v064
	.byte		N92   , En4 , v056
	.byte	W36
@ 003   ----------------------------------------
	.byte	W12
	.byte		N22   , En2 
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		        En2 , v060
	.byte		N11   , Gs2 , v056
	.byte	W12
	.byte		EOT   , Bn3 
	.byte		N44   , Fs2 
	.byte		N22   , Ds3 , v064
	.byte		N22   , Cs4 , v056
	.byte	W24
	.byte		N11   , Ds3 , v064
	.byte		N11   , Fs3 
	.byte		N11   , Bn3 , v056
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Ds3 , v064
	.byte		N11   , Fs3 
	.byte		N11   , An3 , v056
	.byte	W12
	.byte		        Cs2 , v060
	.byte		N56   , Cs3 , v064
	.byte		N68   , Gs3 , v056
	.byte	W12
	.byte		N11   , Cs2 
	.byte	W36
	.byte		N11   
	.byte		N05   , En3 
	.byte		N05   , En4 
	.byte	W06
	.byte		        Cs3 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		N11   , Cs2 
	.byte		N05   , En3 
	.byte		N05   , En4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N11   , Cs2 
	.byte		N05   , Gs3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N11   , Cs2 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W30
	.byte		N11   , Bn2 , v060
	.byte		N11   , Ds3 , v064
	.byte		N11   , An3 
	.byte	W12
	.byte		N36   , Bn2 , v056
	.byte		N11   , En3 , v064
	.byte		N11   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N11   , Fs3 
	.byte		N11   , An3 
	.byte	W12
@ 006   ----------------------------------------
mus_smash_bros_brawl_main_theme_3_006:
	.byte		N11   , En3 , v064
	.byte		N11   , Gs3 
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Cs2 , v060
	.byte		N56   , Cs3 , v064
	.byte		N68   , Gs3 
	.byte	W12
	.byte		N11   , Cs2 , v056
	.byte	W36
	.byte		N11   
	.byte		N05   , En3 
	.byte		N05   , En4 
	.byte	W06
	.byte		        Cs3 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		N11   , Cs2 
	.byte		N05   , En3 
	.byte		N05   , En4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	PEND
@ 007   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N11   , Cs2 
	.byte		N05   , Gs3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N11   , Cs2 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W18
	.byte		N11   , Bn2 , v064
	.byte		N11   , En3 
	.byte		N11   , Fs3 
	.byte	W06
	.byte		N05   , En3 
	.byte	W06
	.byte		N11   , Bn2 , v060
	.byte		N11   , Ds3 , v064
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N36   , Bn2 , v056
	.byte		N11   , En3 , v064
	.byte		N11   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N11   , Fs3 
	.byte		N11   , An3 
	.byte	W12
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_3_006
@ 009   ----------------------------------------
	.byte		N05   , Cs4 , v056
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N11   , Cs2 
	.byte		N01   , Cs3 
	.byte		N01   , Gs3 
	.byte	W06
	.byte		N05   , En4 
	.byte	W06
	.byte		N11   , Cs2 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N11   , Cs3 , v064
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Cs3 
	.byte		N11   , En3 
	.byte	W12
	.byte		        Bn2 , v060
	.byte		N23   , Fs3 , v064
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		N11   , Bn2 , v064
	.byte		N11   , En3 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Bn2 
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Cs2 , v060
	.byte		N92   , Gs2 , v056
	.byte		N23   , Cs3 , v064
	.byte	W12
	.byte		N11   , Cs2 , v056
	.byte	W12
	.byte		N32   , Cs3 , v064
	.byte		N44   , Gs3 
	.byte	W24
	.byte		N11   , Cs2 , v056
	.byte		N05   , En3 
	.byte		N05   , En4 
	.byte	W06
	.byte		        Cs3 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		N11   , Cs2 
	.byte		N05   , En3 
	.byte		N05   , En4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 011   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N44   , Cs2 
	.byte		N05   , Gs3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W30
	.byte		N32   , Fs2 , v060
	.byte		N23   , Fs3 , v064
	.byte		N23   , Cs4 
	.byte	W24
	.byte		N11   , Fs2 
	.byte		N11   , Fs3 
	.byte		N11   , Bn3 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        An2 
	.byte		N11   , Fs3 
	.byte		N11   , An3 
	.byte	W12
	.byte		        Cs2 , v060
	.byte		N56   , Cs3 , v064
	.byte		N68   , Gs3 , v056
	.byte	W12
	.byte		N11   , Cs2 
	.byte	W36
	.byte		N23   , Cs2 , v060
	.byte		N05   , En3 , v056
	.byte		N05   , En4 
	.byte	W06
	.byte		        Cs3 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		N11   , Cs2 
	.byte		N05   , En3 
	.byte		N05   , En4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
@ 013   ----------------------------------------
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N11   , Cs2 
	.byte		N44   , Gs2 , v060
	.byte		N05   , Gs3 , v056
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N11   , Cs2 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W30
	.byte		N44   , Bn2 , v060
	.byte		N11   , Ds3 , v064
	.byte		N11   , An3 
	.byte	W12
	.byte		N32   , Bn2 , v056
	.byte		N11   , En3 , v064
	.byte		N11   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N11   , Fs3 
	.byte		N11   , An3 
	.byte	W12
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_3_006
@ 015   ----------------------------------------
	.byte		N05   , Cs4 , v056
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N11   , Cs2 
	.byte		N44   , En3 , v060
	.byte		N05   , Gs3 , v056
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N11   , Cs2 
	.byte		N05   , Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W18
	.byte		N11   , Bn2 , v064
	.byte		N11   , En3 
	.byte		N11   , Fs3 
	.byte	W06
	.byte		N05   , En3 
	.byte	W06
	.byte		N44   , Fs2 , v060
	.byte		N11   , Ds3 , v064
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N36   , Bn2 , v056
	.byte		N11   , En3 , v064
	.byte		N11   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N11   , Fs3 
	.byte		N11   , An3 
	.byte	W12
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_3_006
@ 017   ----------------------------------------
	.byte		N05   , Cs4 , v056
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N44   , Fs2 
	.byte		N01   , Gs3 
	.byte	W06
	.byte		N05   , En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N11   , Cn3 , v064
	.byte		N11   , Cn4 
	.byte		N11   , Ds4 
	.byte	W12
	.byte		        Cs3 
	.byte		N11   , Cs4 
	.byte		N11   , En4 
	.byte	W12
	.byte		N44   , Gs2 , v056
	.byte		N23   , Fs3 , v064
	.byte		N23   , Fs4 
	.byte	W24
	.byte		N11   , Cs3 
	.byte		N11   , Cs4 
	.byte		N11   , En4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		        Cn3 
	.byte		N11   , Cn4 
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N92   , Cs2 , v056
	.byte		N23   , En3 , v064
	.byte		N23   , En4 
	.byte	W24
	.byte		N68   , Cs3 
	.byte		N68   , Cs4 
	.byte	W60
@ 019   ----------------------------------------
	.byte	W12
	.byte		N22   , Cs2 , v052
	.byte		N22   , Cs3 , v060
	.byte		N23   , Gs3 
	.byte	W24
	.byte		N22   , Ds2 , v056
	.byte		N22   , Ds3 
	.byte		N23   , Fs4 
	.byte	W24
	.byte		N22   , En2 , v060
	.byte		N48   , En3 , v052
	.byte		N48   , En4 
	.byte	W24
	.byte		N22   , Gs2 , v064
	.byte		N24   , Cs3 , v048
	.byte		N23   , Gs3 , v060
	.byte	W12
@ 020   ----------------------------------------
	.byte	W12
	.byte		N92   , Fs2 , v048
	.byte		N92   , Fs3 , v044
	.byte		N44   , Ds4 , v052
	.byte	W48
	.byte		        Fs3 , v048
	.byte		N22   , En4 , v056
	.byte	W24
	.byte		        Fs4 , v060
	.byte	W12
@ 021   ----------------------------------------
	.byte	W12
	.byte		N92   , Gs2 , v048
	.byte		N92   , Gs3 , v044
	.byte		N22   , Fs4 , v060
	.byte	W24
	.byte		        En4 , v056
	.byte	W24
	.byte		N44   , Ds4 , v052
	.byte	W36
@ 022   ----------------------------------------
	.byte	W12
	.byte		TIE   , Cs2 , v048
	.byte		N92   , En3 , v056
	.byte		N22   , Ds4 , v052
	.byte	W24
	.byte		        Cs4 , v048
	.byte	W24
	.byte		TIE   
	.byte	W36
@ 023   ----------------------------------------
	.byte	W12
	.byte		N92   , Gs2 , v056
	.byte		N96   , Fn3 , v048
	.byte		N92   , Gs3 , v060
	.byte	W84
@ 024   ----------------------------------------
	.byte	W10
	.byte		EOT   , Cs2 
	.byte	W01
	.byte		        Cs4 
	.byte	W01
	.byte		N92   , As2 , v048
	.byte		N44   , Ds3 , v052
	.byte		N96   , Cs4 
	.byte	W48
	.byte		N44   , An2 
	.byte		N22   , En3 , v056
	.byte	W24
	.byte		        Fs3 , v060
	.byte	W12
@ 025   ----------------------------------------
	.byte	W12
	.byte		N44   , Gs2 , v056
	.byte		N92   , Ds3 , v048
	.byte		N96   , Cn4 , v056
	.byte	W24
	.byte		N22   , En3 
	.byte	W24
	.byte		N44   , Cn2 
	.byte		N44   , Ds3 , v052
	.byte	W36
@ 026   ----------------------------------------
	.byte	W12
	.byte		N22   , Cs2 
	.byte		N22   , Cs3 , v044
	.byte		N22   , En3 , v056
	.byte	W24
	.byte		        Ds2 , v052
	.byte		N22   , Ds3 , v044
	.byte		N22   , Fs3 , v060
	.byte	W24
	.byte		        En2 , v052
	.byte		N22   , En3 , v048
	.byte		TIE   , Gs3 , v064
	.byte	W24
	.byte		N22   , Ds2 , v052
	.byte		N22   , Ds3 , v048
	.byte	W12
@ 027   ----------------------------------------
	.byte	W12
	.byte		        En2 , v052
	.byte		N22   , En3 
	.byte	W24
	.byte		        Fs2 , v060
	.byte		N22   , Fs3 , v052
	.byte	W24
	.byte		        Gs2 , v060
	.byte		N22   , Gs3 , v056
	.byte	W22
	.byte		EOT   
	.byte	W02
	.byte		N22   , As2 , v060
	.byte		N22   , As3 
	.byte	W12
@ 028   ----------------------------------------
	.byte	W12
	.byte		N44   , Fs2 , v064
	.byte		N09   , Ds3 , v052
	.byte		N09   , Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte		N09   , Ds3 
	.byte		N09   , Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte		N09   , Ds3 
	.byte		N09   , Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte		N09   , Ds3 
	.byte		N09   , Fs3 
	.byte	W12
	.byte		N22   , Gs2 , v064
	.byte		N09   , Ds3 , v052
	.byte		N09   , Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte		N09   , Ds3 
	.byte		N09   , Fs3 
	.byte	W12
	.byte		N22   , An2 , v064
	.byte		N09   , Ds3 , v052
	.byte		N09   , Fs3 
	.byte	W12
@ 029   ----------------------------------------
	.byte		        Bn2 
	.byte		N09   , Ds3 
	.byte		N09   , Fs3 
	.byte	W12
	.byte		N22   , An2 , v064
	.byte		N09   , Ds3 , v052
	.byte		N09   , Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte		N09   , Ds3 
	.byte		N09   , Fs3 
	.byte	W12
	.byte		N22   , Gs2 , v064
	.byte		N09   , Ds3 , v052
	.byte		N09   , Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte		N09   , Ds3 
	.byte		N09   , Fs3 
	.byte	W12
	.byte		N44   , Fs2 , v064
	.byte		N09   , Ds3 , v052
	.byte		N09   , Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte		N09   , Ds3 
	.byte		N09   , Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte		N09   , Ds3 
	.byte		N09   , Fs3 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        Bn2 
	.byte		N09   , Ds3 
	.byte		N09   , Fs3 
	.byte	W12
	.byte		N92   , En2 , v056
	.byte		N09   , Bn2 , v052
	.byte		N44   , Gs3 , v064
	.byte	W12
	.byte		N09   , Gs2 , v052
	.byte		N09   , Bn2 
	.byte		N09   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte		N09   , Bn2 
	.byte		N09   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte		N09   , Bn2 
	.byte		N09   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte		N09   , En3 
	.byte		N22   , An3 , v064
	.byte	W12
	.byte		N09   , Gs2 , v052
	.byte		N09   , Bn2 
	.byte		N09   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte		N09   , En3 
	.byte		N22   , Bn3 , v064
	.byte	W12
@ 031   ----------------------------------------
	.byte		N09   , Gs2 , v052
	.byte		N09   , Bn2 
	.byte		N09   , En3 
	.byte	W12
	.byte		N92   , En2 , v056
	.byte		N09   , Bn2 , v052
	.byte		N22   , Bn3 , v064
	.byte	W12
	.byte		N09   , Gs2 , v052
	.byte		N09   , Bn2 
	.byte		N09   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte		N09   , En3 
	.byte		N22   , An3 , v064
	.byte	W12
	.byte		N09   , Gs2 , v052
	.byte		N09   , Bn2 
	.byte		N09   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte		N09   , En3 
	.byte		N44   , Gs3 , v064
	.byte	W12
	.byte		N09   , Gs2 , v052
	.byte		N09   , Bn2 
	.byte		N09   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte		N09   , Bn2 
	.byte		N09   , En3 
	.byte	W12
@ 032   ----------------------------------------
	.byte		        Gs2 
	.byte		N09   , Bn2 
	.byte		N09   , En3 
	.byte	W12
	.byte		N92   , Ds2 , v056
	.byte		N09   , Ds3 , v052
	.byte		N44   , Gn4 , v060
	.byte	W12
	.byte		N09   , Gn2 , v052
	.byte		N09   , Ds3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N09   , Ds3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N09   , Ds3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N09   , Gn3 
	.byte		N22   , Bn3 , v060
	.byte	W12
	.byte		N09   , Gn2 , v052
	.byte		N09   , Ds3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N09   , Gn3 
	.byte		N22   , Cs4 , v060
	.byte	W12
@ 033   ----------------------------------------
	.byte		N09   , Gn2 , v052
	.byte		N09   , Ds3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte		N21   , Gn2 , v056
	.byte		N09   , Gn3 , v052
	.byte		N22   , Cs4 , v060
	.byte	W12
	.byte		N09   , Gn2 , v052
	.byte		N09   , Ds3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte		N68   , Ds2 , v056
	.byte		N09   , Ds3 , v052
	.byte		N22   , Bn3 , v060
	.byte	W12
	.byte		N09   , Gn2 , v052
	.byte		N09   , Ds3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N09   , Gn3 
	.byte		N22   , Bn3 , v060
	.byte	W12
	.byte		N09   , Gn2 , v052
	.byte		N09   , Ds3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N21   , Gn3 , v060
	.byte		N22   , Gn4 
	.byte	W12
@ 034   ----------------------------------------
	.byte		N09   , Gn2 , v052
	.byte		N09   , Ds3 
	.byte		N09   , Gn3 
	.byte	W12
	.byte		N44   , Gs2 
	.byte		N44   , Gs3 , v060
	.byte		N44   , Ds4 
	.byte	W48
	.byte		        Fs2 , v052
	.byte		N44   , Fs3 , v060
	.byte		N92   , Ds4 
	.byte	W36
@ 035   ----------------------------------------
	.byte	W12
	.byte		N44   , En2 , v056
	.byte		N44   , En3 , v060
	.byte	W48
	.byte		        Ds2 
	.byte		N44   , Ds3 
	.byte		N44   , Gs3 
	.byte	W36
@ 036   ----------------------------------------
	.byte	W12
	.byte		N11   , Fs2 
	.byte		N80   , Fs3 
	.byte		TIE   , Cs4 
	.byte	W12
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cs2 
	.byte		N32   , Fs3 
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 037   ----------------------------------------
	.byte		        Ds2 
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , En2 
	.byte		N92   , Fs3 
	.byte		N92   , Cs4 
	.byte	W12
	.byte		N11   , Ds2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 038   ----------------------------------------
	.byte		        Cn2 
	.byte		N11   , Cn3 
	.byte	W09
	.byte		EOT   , Cs4 
	.byte	W03
	.byte		N44   , Cs2 , v056
	.byte		N44   , Gs3 , v060
	.byte		N44   , En4 
	.byte	W48
	.byte		N24   , Cs2 , v056
	.byte		N22   , En3 , v060
	.byte		N22   , En4 
	.byte	W24
	.byte		N24   , Cn2 , v056
	.byte		N22   , Fs3 , v060
	.byte		N22   , Cn4 
	.byte	W12
@ 039   ----------------------------------------
	.byte	W12
	.byte		N24   , Cs2 , v056
	.byte		N22   , En3 , v060
	.byte		N22   , En4 
	.byte	W24
	.byte		        Gs2 
	.byte		N22   , Fs3 
	.byte		N22   , Cn4 
	.byte	W24
	.byte		N44   , Gs2 , v056
	.byte		N44   , Gs3 , v060
	.byte		N44   , Cs4 
	.byte	W36
@ 040   ----------------------------------------
	.byte	W12
	.byte		N11   , Fs2 
	.byte		N44   , Fs3 
	.byte		N56   , Cs4 
	.byte	W12
	.byte		N11   , Gs2 
	.byte		N11   , Gs3 , v052
	.byte	W12
	.byte		        As2 , v060
	.byte		N11   , As3 , v052
	.byte	W12
	.byte		        Bn2 , v060
	.byte		N11   , Bn3 , v052
	.byte	W12
	.byte		        Cs2 , v060
	.byte		N32   , Cs3 , v064
	.byte		N11   , Cs4 , v052
	.byte	W12
	.byte		        Bn2 , v060
	.byte		N11   , Bn3 , v052
	.byte	W12
	.byte		        Cs2 , v060
	.byte		N10   , Cs3 
	.byte		N11   , Cs4 , v052
	.byte	W12
@ 041   ----------------------------------------
	.byte		        Ds2 , v060
	.byte		N11   , Ds3 
	.byte		N11   , Ds4 , v052
	.byte	W06
	.byte		N05   , Cs3 , v064
	.byte	W06
	.byte		N11   , En2 , v060
	.byte		N44   , Fs3 , v064
	.byte		N11   , En4 , v052
	.byte	W12
	.byte		        Ds2 , v060
	.byte		N11   , Ds3 
	.byte		N11   , Ds4 , v052
	.byte	W12
	.byte		        En2 , v060
	.byte		N11   , En3 
	.byte		N11   , En4 , v052
	.byte	W12
	.byte		        Fs2 , v060
	.byte		N11   , Fs3 
	.byte		N11   , Fs4 , v052
	.byte	W12
	.byte		        Gs2 , v060
	.byte		N11   , Gs3 
	.byte	W12
	.byte		        As2 
	.byte		N11   , As3 
	.byte	W12
	.byte		        Bn2 
	.byte		N11   , Bn3 
	.byte	W12
@ 042   ----------------------------------------
	.byte		        Cn2 
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N44   , Fs2 , v056
	.byte		N92   , An3 
	.byte		N44   , Cs4 , v064
	.byte	W48
	.byte		N24   , An2 , v056
	.byte		N22   , Ds4 , v064
	.byte	W24
	.byte		N24   , Gs2 , v056
	.byte		N22   , En4 , v064
	.byte	W12
@ 043   ----------------------------------------
	.byte	W12
	.byte		N24   , Fs2 , v056
	.byte		N22   , Ds4 , v060
	.byte		N92   , Fs4 , v052
	.byte	W24
	.byte		N24   , En2 , v056
	.byte		N22   , Cs4 
	.byte	W24
	.byte		N24   , Ds2 
	.byte		N22   , Bn3 , v052
	.byte	W24
	.byte		N24   , Bn2 , v056
	.byte		N22   , An3 , v048
	.byte	W12
@ 044   ----------------------------------------
	.byte	W12
	.byte		N44   , Bn2 , v044
	.byte		N44   , Gs3 
	.byte	W48
	.byte		N23   , Bn2 
	.byte		N22   , Gs3 , v048
	.byte	W24
	.byte		N23   , Cs2 , v044
	.byte		N22   , Cs3 , v048
	.byte		N22   , An3 
	.byte	W12
@ 045   ----------------------------------------
	.byte	W12
	.byte		N23   , Bn2 , v044
	.byte		N22   , Gs3 , v048
	.byte	W24
	.byte		N23   , An2 , v044
	.byte		N22   , Fs3 , v048
	.byte	W24
	.byte		N44   , Gs2 , v044
	.byte		N44   , En3 
	.byte	W36
@ 046   ----------------------------------------
	.byte	W12
	.byte		N92   , Ds2 
	.byte		N44   , Ds3 
	.byte		N44   , Bn3 
	.byte	W48
	.byte		N22   , Ds3 , v048
	.byte		N22   , Bn3 
	.byte	W24
	.byte		        Ds3 
	.byte		N22   , Cs4 
	.byte	W12
@ 047   ----------------------------------------
	.byte	W12
	.byte		N92   , Dn2 , v044
	.byte		N44   , Dn3 
	.byte		N44   , Bn3 
	.byte	W48
	.byte		N22   , Dn3 , v048
	.byte		N22   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N22   , Gs3 
	.byte	W12
@ 048   ----------------------------------------
	.byte	W12
	.byte		N92   , Cs2 , v044
	.byte		N44   , Cs3 
	.byte		N44   , An3 
	.byte	W48
	.byte		N22   , Cs3 , v048
	.byte		N22   , Fs3 
	.byte	W24
	.byte		        Cs3 
	.byte		N22   , Gs3 
	.byte	W12
@ 049   ----------------------------------------
	.byte	W12
	.byte		N44   , Cs2 , v044
	.byte		N44   , Cs3 
	.byte		N44   , An3 
	.byte	W48
	.byte		N23   , Bn2 
	.byte		N22   , Gs3 , v048
	.byte	W24
	.byte		N23   , An2 , v044
	.byte		N22   , Fs3 , v048
	.byte	W12
@ 050   ----------------------------------------
	.byte	W12
	.byte		N23   , An2 , v044
	.byte		N22   , Fs3 , v048
	.byte	W24
	.byte		N23   , Gs2 , v044
	.byte		N22   , En3 , v048
	.byte	W24
	.byte		TIE   , Bn2 
	.byte		TIE   , Gs3 
	.byte	W36
@ 051   ----------------------------------------
	.byte	W12
	.byte		N92   , Bn2 , v060
	.byte	W84
@ 052   ----------------------------------------
	.byte	W10
	.byte		EOT   
	.byte		EOT   , Gs3 
	.byte	W02
	.byte		N44   , Gs2 , v052
	.byte		N44   , En3 , v064
	.byte		N44   , En4 , v056
	.byte	W48
	.byte		N23   , Gs2 , v060
	.byte		N23   , En3 , v064
	.byte		N23   , En4 , v056
	.byte	W24
	.byte		        An2 , v052
	.byte		N23   , En3 , v064
	.byte		N23   , En4 , v056
	.byte	W12
@ 053   ----------------------------------------
	.byte	W12
	.byte		        Gs2 , v052
	.byte		N23   , En3 , v064
	.byte		N23   , En4 , v056
	.byte	W24
	.byte		        Fs2 , v052
	.byte		N23   , Fs3 , v064
	.byte		N23   , Fs4 
	.byte	W24
	.byte		N44   , En2 , v052
	.byte		N44   , En3 , v064
	.byte		N44   , En4 
	.byte	W36
@ 054   ----------------------------------------
	.byte	W12
	.byte		        Bn2 , v052
	.byte		N44   , Fs3 , v064
	.byte		N44   , Fs4 
	.byte	W48
	.byte		N23   , Bn2 , v060
	.byte		N23   , Fs3 , v064
	.byte		N23   , Fs4 
	.byte	W24
	.byte		        Cs2 , v052
	.byte		N23   , En3 , v064
	.byte		N23   , En4 
	.byte	W12
@ 055   ----------------------------------------
	.byte	W12
	.byte		N44   , Bn2 , v052
	.byte		N44   , Fn3 , v064
	.byte		N44   , Fn4 , v056
	.byte	W48
	.byte		N23   , An2 , v052
	.byte		N23   , Fn3 , v064
	.byte		N23   , Fn4 , v056
	.byte	W24
	.byte		        Gs2 , v052
	.byte		N23   , Dn3 , v064
	.byte		N23   , Dn4 , v056
	.byte	W12
@ 056   ----------------------------------------
	.byte	W12
	.byte		N92   , Cs2 
	.byte		N44   , Fs3 , v064
	.byte		N44   , Fs4 
	.byte	W48
	.byte		N23   , An2 
	.byte		N23   , Fs3 
	.byte		N23   , Fs4 
	.byte	W24
	.byte		        Gs2 
	.byte		N23   , Fn3 
	.byte		N23   , Fn4 
	.byte	W12
@ 057   ----------------------------------------
	.byte	W12
	.byte		N92   , Bn2 , v056
	.byte		N44   , Ds3 , v064
	.byte		N44   , Ds4 , v056
	.byte	W48
	.byte		        Bn2 , v064
	.byte		N44   , Fs3 
	.byte		N44   , Fs4 
	.byte	W36
@ 058   ----------------------------------------
	.byte	W12
	.byte		TIE   , An2 , v060
	.byte		N68   , An3 , v064
	.byte		N68   , En4 
	.byte	W72
	.byte		N23   , En3 
	.byte		N23   , An3 
	.byte		N23   , Fs4 
	.byte	W12
@ 059   ----------------------------------------
	.byte	W12
	.byte		        An3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        Fs3 
	.byte		N23   , Fs4 
	.byte	W24
	.byte		        En3 
	.byte		N23   , En4 
	.byte	W12
@ 060   ----------------------------------------
	.byte	W11
	.byte		EOT   , An2 
	.byte	W01
	.byte		N92   , Cn2 , v060
	.byte		N44   , Gn3 , v064
	.byte		N44   , Gn4 
	.byte	W48
	.byte		TIE   , Cn3 
	.byte		TIE   , Cn4 
	.byte		TIE   , En4 
	.byte	W36
@ 061   ----------------------------------------
	.byte	W12
	.byte		N92   , Dn2 , v060
	.byte	W84
@ 062   ----------------------------------------
	.byte	W10
	.byte		EOT   , Cn3 
	.byte		        Cn4 
	.byte		        En4 
	.byte	W02
	.byte		TIE   , Ds2 
	.byte		N68   , Gn3 , v064
	.byte		N68   , Gn4 
	.byte	W72
	.byte		N23   , An3 
	.byte	W12
@ 063   ----------------------------------------
	.byte	W12
	.byte		        Cn4 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Gn3 
	.byte		N23   , Gn4 
	.byte	W12
@ 064   ----------------------------------------
	.byte	W11
	.byte		EOT   , Ds2 
	.byte	W01
	.byte		N92   , Cn2 , v060
	.byte		N48   , As3 , v064
	.byte	W48
	.byte		N92   , Gn3 
	.byte		N92   , Gn4 
	.byte	W36
@ 065   ----------------------------------------
	.byte	W12
	.byte		        Fn2 , v060
	.byte	W48
	.byte		N48   , An2 , v064
	.byte		N48   , An3 
	.byte		N48   , Fn4 
	.byte	W36
@ 066   ----------------------------------------
	.byte	W12
	.byte		TIE   , Gn2 , v060
	.byte		TIE   , Gn3 , v064
	.byte		TIE   , Gn4 
	.byte	W84
@ 067   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		EOT   , Gn3 
	.byte		        Gn4 
	.byte	W01
	.byte		        Gn2 
	.byte	W01
	.byte		N44   , Fn2 , v060
	.byte		N48   , An3 , v064
	.byte		N48   , Fn4 
	.byte	W36
@ 068   ----------------------------------------
	.byte	W12
	.byte		TIE   , Gn2 , v060
	.byte		TIE   , Bn3 , v064
	.byte		TIE   , Gn4 
	.byte	W84
@ 069   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		EOT   , Bn3 
	.byte		        Gn4 
	.byte	W01
	.byte		        Gn2 
	.byte	W01
	.byte		N48   , Fn2 
	.byte		N48   , An3 
	.byte		N48   , Fn4 
	.byte	W36
@ 070   ----------------------------------------
	.byte	W12
	.byte		N21   , Gn2 
	.byte		N23   , Gn3 
	.byte		N23   , Gn4 
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn2 
	.byte		N05   , Cn3 
	.byte	W06
@ 071   ----------------------------------------
	.byte		        Dn2 
	.byte		N05   , Dn3 
	.byte	W06
	.byte		        En2 
	.byte		N05   , En3 
	.byte	W06
	.byte		N92   , Dn2 , v060
	.byte		N68   , Dn3 , v064
	.byte		N68   , Fn4 
	.byte	W72
	.byte		N06   , Fn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fn4 
	.byte	W08
	.byte		        Fn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fn4 
	.byte	W04
@ 072   ----------------------------------------
	.byte	W04
	.byte		        Fn2 
	.byte		N06   , Dn3 
	.byte		N06   , Fn4 
	.byte	W08
	.byte		N11   , Gn2 
	.byte		N11   , Dn3 
	.byte		N11   , Gn4 
	.byte	W24
	.byte		N05   , Gn2 
	.byte	W08
	.byte		N05   
	.byte	W08
	.byte		N05   
	.byte	W08
	.byte		N21   
	.byte	W36
@ 073   ----------------------------------------
	.byte	W60
	.byte	GOTO
	 .word	mus_smash_bros_brawl_main_theme_3_B1
mus_smash_bros_brawl_main_theme_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.5) ****************@

mus_smash_bros_brawl_main_theme_4:
	.byte	KEYSH , mus_smash_bros_brawl_main_theme_key+0
mus_smash_bros_brawl_main_theme_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 94*mus_smash_bros_brawl_main_theme_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , En1 , v088
	.byte	W12
	.byte		TIE   , En1 , v084
	.byte	W84
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W10
	.byte		EOT   
	.byte	W02
	.byte		N44   , En1 , v080
	.byte	W48
	.byte		N44   
	.byte	W36
@ 003   ----------------------------------------
	.byte	W12
	.byte		N22   
	.byte	W36
	.byte		N11   , En1 , v084
	.byte	W12
	.byte		N44   , Bn0 , v080
	.byte	W36
@ 004   ----------------------------------------
mus_smash_bros_brawl_main_theme_4_004:
	.byte	W12
	.byte		N11   , Cs1 , v084
	.byte	W12
	.byte		        Cs1 , v080
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
mus_smash_bros_brawl_main_theme_4_005:
	.byte	W12
	.byte		N11   , Cs1 , v080
	.byte	W12
	.byte		N11   
	.byte	W36
	.byte		        Bn0 , v084
	.byte	W12
	.byte		N36   , Bn0 , v080
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_4_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_4_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_4_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_4_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_4_004
@ 011   ----------------------------------------
	.byte	W12
	.byte		N44   , Cs1 , v080
	.byte	W48
	.byte		        Bn0 
	.byte	W36
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_4_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_4_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_4_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_4_005
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_4_004
@ 017   ----------------------------------------
	.byte	W12
	.byte		N44   , Fs1 , v080
	.byte	W48
	.byte		        Gs1 
	.byte	W36
@ 018   ----------------------------------------
	.byte	W12
	.byte		N92   , Cs1 
	.byte	W84
@ 019   ----------------------------------------
	.byte	W12
	.byte		N22   , Cs1 , v072
	.byte	W24
	.byte		        Ds1 , v080
	.byte	W24
	.byte		        En1 , v084
	.byte	W24
	.byte		        Gs1 , v088
	.byte	W12
@ 020   ----------------------------------------
	.byte	W12
	.byte		N92   , Fs1 , v072
	.byte	W84
@ 021   ----------------------------------------
	.byte	W12
	.byte		        Gs1 
	.byte	W84
@ 022   ----------------------------------------
	.byte	W12
	.byte		TIE   , Cs1 
	.byte	W84
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W10
	.byte		EOT   
	.byte	W02
	.byte		N44   , As0 
	.byte	W48
	.byte		        An0 
	.byte	W36
@ 025   ----------------------------------------
	.byte	W12
	.byte		        Gs1 , v080
	.byte	W48
	.byte		        Cn1 
	.byte	W36
@ 026   ----------------------------------------
	.byte	W12
	.byte		N22   , Cs1 , v072
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Ds1 
	.byte	W12
@ 027   ----------------------------------------
	.byte	W12
	.byte		        En1 
	.byte	W24
	.byte		        Fs1 , v084
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		        As1 
	.byte	W12
@ 028   ----------------------------------------
	.byte	W12
	.byte		N44   , Fs1 , v088
	.byte	W48
	.byte		N22   , Gs1 
	.byte	W24
	.byte		        An0 
	.byte	W12
@ 029   ----------------------------------------
	.byte	W12
	.byte		N22   
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		N44   , Fs1 
	.byte	W36
@ 030   ----------------------------------------
	.byte	W12
	.byte		N92   , En1 , v080
	.byte	W84
@ 031   ----------------------------------------
	.byte	W12
	.byte		N92   
	.byte	W84
@ 032   ----------------------------------------
	.byte	W12
	.byte		        Ds1 
	.byte	W84
@ 033   ----------------------------------------
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N68   , Ds1 
	.byte	W60
@ 034   ----------------------------------------
	.byte	W12
	.byte		N44   , Gs1 , v072
	.byte	W48
	.byte		        Fs1 
	.byte	W36
@ 035   ----------------------------------------
	.byte	W12
	.byte		        En1 , v080
	.byte	W48
	.byte		        Ds1 , v084
	.byte	W36
@ 036   ----------------------------------------
mus_smash_bros_brawl_main_theme_4_036:
	.byte	W12
	.byte		N11   , Fs1 , v084
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_smash_bros_brawl_main_theme_4_037:
	.byte		N11   , Ds1 , v084
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		N44   , Cs1 , v080
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		        Cn1 
	.byte	W12
@ 039   ----------------------------------------
	.byte	W12
	.byte		        Cs1 
	.byte	W24
	.byte		        An0 
	.byte	W24
	.byte		N44   , Gs1 
	.byte	W36
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_4_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_4_037
@ 042   ----------------------------------------
	.byte		N11   , Cn2 , v084
	.byte	W12
	.byte		N44   , Fs1 , v080
	.byte	W48
	.byte		N24   , An0 
	.byte	W24
	.byte		        Gs1 
	.byte	W12
@ 043   ----------------------------------------
	.byte	W12
	.byte		        Fs1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		        Bn0 
	.byte	W12
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
	.byte	W12
	.byte		N92   , Bn0 , v084
	.byte	W84
@ 052   ----------------------------------------
	.byte	W12
	.byte		N44   , Gs1 , v072
	.byte	W48
	.byte		N23   , Gs1 , v084
	.byte	W24
	.byte		        An1 , v072
	.byte	W12
@ 053   ----------------------------------------
	.byte	W12
	.byte		        Gs1 
	.byte	W24
	.byte		        Fs1 
	.byte	W24
	.byte		N44   , En1 
	.byte	W36
@ 054   ----------------------------------------
	.byte	W12
	.byte		        Bn0 
	.byte	W48
	.byte		N23   , Bn0 , v084
	.byte	W24
	.byte		        Cs1 , v072
	.byte	W12
@ 055   ----------------------------------------
	.byte	W12
	.byte		N44   , Bn0 
	.byte	W48
	.byte		N23   , An0 
	.byte	W24
	.byte		        Gs1 
	.byte	W12
@ 056   ----------------------------------------
	.byte	W12
	.byte		N92   , Cs1 , v080
	.byte	W84
@ 057   ----------------------------------------
	.byte	W12
	.byte		        Bn0 
	.byte	W84
@ 058   ----------------------------------------
	.byte	W12
	.byte		TIE   , An0 , v084
	.byte	W84
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		N92   , Cn1 
	.byte	W84
@ 061   ----------------------------------------
	.byte	W12
	.byte		        Dn1 
	.byte	W84
@ 062   ----------------------------------------
	.byte	W12
	.byte		TIE   , Ds1 
	.byte	W84
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W01
	.byte		N92   , Cn1 
	.byte	W84
@ 065   ----------------------------------------
	.byte	W12
	.byte		        Fn1 
	.byte	W84
@ 066   ----------------------------------------
mus_smash_bros_brawl_main_theme_4_066:
	.byte	W12
	.byte		TIE   , Gn1 , v084
	.byte	W84
	.byte	PEND
@ 067   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N44   , Fn1 
	.byte	W36
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_4_066
@ 069   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		EOT   , Gn1 
	.byte	W01
	.byte		N44   , Fn1 , v084
	.byte	W36
@ 070   ----------------------------------------
	.byte	W12
	.byte		N21   , Gn1 , v088
	.byte	W84
@ 071   ----------------------------------------
	.byte	W12
	.byte		N92   , Dn1 , v084
	.byte	W84
@ 072   ----------------------------------------
	.byte	W12
	.byte		N11   , Gn1 , v088
	.byte	W24
	.byte		N05   
	.byte	W08
	.byte		N05   
	.byte	W08
	.byte		N05   
	.byte	W08
	.byte		N21   
	.byte	W36
@ 073   ----------------------------------------
	.byte	W60
	.byte	GOTO
	 .word	mus_smash_bros_brawl_main_theme_4_B1
mus_smash_bros_brawl_main_theme_4_B2:
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_smash_bros_brawl_main_theme_5:
	.byte	KEYSH , mus_smash_bros_brawl_main_theme_key+0
mus_smash_bros_brawl_main_theme_5_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 112*mus_smash_bros_brawl_main_theme_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn1 , v088
	.byte	W12
	.byte		N02   
	.byte	W84
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
mus_smash_bros_brawl_main_theme_5_002:
	.byte	W12
	.byte		N02   , Cn1 , v088
	.byte		N02   , Fs1 , v072
	.byte	W84
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W12
	.byte		        Cn1 , v088
	.byte	W12
	.byte		N02   
	.byte	W36
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W12
@ 004   ----------------------------------------
mus_smash_bros_brawl_main_theme_5_004:
	.byte	W12
	.byte		N02   , Cn1 , v088
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte		        En1 , v080
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        En1 , v088
	.byte	W12
	.byte		        En1 , v080
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        En1 , v088
	.byte	W12
	.byte		        En1 , v080
	.byte	W12
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte	PEND
@ 005   ----------------------------------------
mus_smash_bros_brawl_main_theme_5_005:
	.byte		N02   , En1 , v080
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        Cn1 , v088
	.byte		N02   , En1 , v084
	.byte	W12
	.byte		        En1 , v080
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        En1 , v088
	.byte	W12
	.byte		        En1 , v080
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        En1 , v088
	.byte	W12
	.byte		        En1 , v080
	.byte	W12
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 011   ----------------------------------------
mus_smash_bros_brawl_main_theme_5_011:
	.byte		N02   , En1 , v080
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        Cn1 , v088
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte		        En1 , v080
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        En1 , v088
	.byte	W12
	.byte		        En1 , v080
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        En1 , v088
	.byte	W12
	.byte		        En1 , v080
	.byte	W12
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_011
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 019   ----------------------------------------
	.byte		N02   , En1 , v080
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        Cn1 , v088
	.byte	W24
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W12
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_002
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
mus_smash_bros_brawl_main_theme_5_026:
	.byte	W12
	.byte		N02   , Cn1 , v088
	.byte	W24
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W24
	.byte		N02   
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_026
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_011
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_011
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 034   ----------------------------------------
	.byte		N02   , En1 , v080
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        Cn1 , v088
	.byte		N02   , Fs1 , v072
	.byte	W48
	.byte		        Cn1 , v088
	.byte		N02   , Fs1 , v072
	.byte	W36
@ 035   ----------------------------------------
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , Fs1 , v072
	.byte	W48
	.byte		        Cn1 , v088
	.byte		N02   , Fs1 , v072
	.byte	W36
@ 036   ----------------------------------------
mus_smash_bros_brawl_main_theme_5_036:
	.byte	W12
	.byte		N02   , Cn1 , v088
	.byte		N02   , En1 , v084
	.byte	W12
	.byte		        En1 , v080
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        En1 , v088
	.byte	W12
	.byte		        En1 , v080
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        En1 , v088
	.byte	W12
	.byte		        En1 , v080
	.byte	W12
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 038   ----------------------------------------
mus_smash_bros_brawl_main_theme_5_038:
	.byte		N02   , En1 , v080
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        Cn1 , v088
	.byte		N02   , Fs1 , v072
	.byte	W84
	.byte	PEND
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_038
@ 043   ----------------------------------------
mus_smash_bros_brawl_main_theme_5_043:
	.byte	W60
	.byte		N02   , Fs1 , v056
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte	PEND
@ 044   ----------------------------------------
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        Fs1 , v060
	.byte	W84
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
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_043
@ 052   ----------------------------------------
	.byte		N02   , Fs1 , v056
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        Fs1 , v064
	.byte	W48
	.byte		        Cn1 , v088
	.byte		N02   , Fs1 , v072
	.byte	W36
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
mus_smash_bros_brawl_main_theme_5_054:
	.byte	W60
	.byte		N02   , Cn1 , v088
	.byte		N02   , Fs1 , v072
	.byte	W36
	.byte	PEND
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_054
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_002
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W12
	.byte		N02   , Fs1 , v072
	.byte	W84
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_043
@ 062   ----------------------------------------
	.byte		N02   , Fs1 , v056
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        Cn1 , v088
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v072
	.byte	W12
	.byte		        En1 , v080
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        En1 , v088
	.byte	W12
	.byte		        En1 , v080
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        En1 , v088
	.byte	W12
	.byte		        En1 , v080
	.byte	W12
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_011
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_011
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_011
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_smash_bros_brawl_main_theme_5_005
@ 070   ----------------------------------------
	.byte		N02   , En1 , v080
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        Cn1 , v088
	.byte		N02   , Fs1 , v072
	.byte	W24
	.byte		        En1 , v080
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
@ 071   ----------------------------------------
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		        Cn1 , v088
	.byte		N02   , En1 , v084
	.byte		N02   , Fs1 , v072
	.byte	W72
	.byte		        En1 , v088
	.byte	W08
	.byte		N02   
	.byte	W04
@ 072   ----------------------------------------
	.byte	W04
	.byte		N02   
	.byte	W08
	.byte		        Cn1 
	.byte		N02   , En1 
	.byte	W24
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		N02   
	.byte	W08
	.byte		        Cn1 
	.byte		N02   , En1 
	.byte		N02   , Fs1 , v072
	.byte	W36
@ 073   ----------------------------------------
	.byte	W60
	.byte	GOTO
	 .word	mus_smash_bros_brawl_main_theme_5_B1
mus_smash_bros_brawl_main_theme_5_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_smash_bros_brawl_main_theme:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_smash_bros_brawl_main_theme_pri	@ Priority
	.byte	mus_smash_bros_brawl_main_theme_rev	@ Reverb.

	.word	mus_smash_bros_brawl_main_theme_grp

	.word	mus_smash_bros_brawl_main_theme_1
	.word	mus_smash_bros_brawl_main_theme_2
	.word	mus_smash_bros_brawl_main_theme_3
	.word	mus_smash_bros_brawl_main_theme_4
	.word	mus_smash_bros_brawl_main_theme_5

	.end
