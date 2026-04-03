	.include "MPlayDef.s"

	.equ	mus_rg_mt_moon_grp, voicegroup_rg_mt_moon
	.equ	mus_rg_mt_moon_pri, 0
	.equ	mus_rg_mt_moon_rev, reverb_set+50
	.equ	mus_rg_mt_moon_mvl, 90
	.equ	mus_rg_mt_moon_key, 0
	.equ	mus_rg_mt_moon_tbs, 1
	.equ	mus_rg_mt_moon_exg, 1
	.equ	mus_rg_mt_moon_cmp, 1

	.section .rodata
	.global	mus_rg_mt_moon
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_rg_mt_moon_1:
	.byte	KEYSH , mus_rg_mt_moon_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 160*mus_rg_mt_moon_tbs/2
	.byte		VOICE , 61
	.byte		VOL   , 0*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W06
	.byte		TIE   , CnM2, v108
	.byte		TIE   , Ds2 
	.byte		TIE   , En2 
	.byte		TIE   , Fs2 
	.byte		TIE   , Gs2 
	.byte		TIE   , As2 
	.byte		TIE   , Cn3 
	.byte	W90
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
mus_rg_mt_moon_1_B1:
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
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
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
	.byte	GOTO
	 .word	mus_rg_mt_moon_1_B1
mus_rg_mt_moon_1_B2:
@ 055   ----------------------------------------
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
	.byte		EOT   , CnM2
	.byte		        Ds2 
	.byte		        En2 
	.byte		        Fs2 
	.byte		        Gs2 
	.byte		        As2 
	.byte		        Cn3 
@ 061   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_rg_mt_moon_2:
	.byte	KEYSH , mus_rg_mt_moon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
mus_rg_mt_moon_2_001:
	.byte	W48
	.byte		N02   , Gn4 , v076
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N23   , Bn4 , v064
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
mus_rg_mt_moon_2_003:
	.byte	W48
	.byte		N02   , Gn4 , v076
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N11   , Cn4 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_001
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_003
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_001
mus_rg_mt_moon_2_B1:
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_003
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_001
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_003
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_001
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W48
	.byte		N02   , Gn4 , v076
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N05   , Cn4 , v096
	.byte	W06
	.byte		N05   
	.byte	W18
@ 020   ----------------------------------------
mus_rg_mt_moon_2_020:
	.byte	W24
	.byte		N05   , Cn4 , v112
	.byte	W12
	.byte		N05   
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_rg_mt_moon_2_021:
	.byte	W24
	.byte		N05   , Cn4 , v112
	.byte	W48
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_020
@ 023   ----------------------------------------
	.byte	W24
	.byte		N05   , Cn4 , v112
	.byte	W24
	.byte		N02   , Gn4 , v076
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N05   , Cn4 , v096
	.byte	W06
	.byte		N05   
	.byte	W18
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_021
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_001
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_003
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_001
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W48
	.byte		N02   , Gn4 , v076
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N05   , Cn4 , v096
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn4 , v112
	.byte	W12
@ 036   ----------------------------------------
mus_rg_mt_moon_2_036:
	.byte		N44   , Bn4 , v112, gtp3
	.byte	W48
	.byte		N02   , Gn4 , v076
	.byte	W48
	.byte	PEND
@ 037   ----------------------------------------
mus_rg_mt_moon_2_037:
	.byte		N02   , Gn4 , v076
	.byte	W48
	.byte		N02   
	.byte	W48
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_036
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_037
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_037
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_036
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_037
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_001
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_003
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_001
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_003
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_2_001
	.byte	GOTO
	 .word	mus_rg_mt_moon_2_B1
mus_rg_mt_moon_2_B2:
@ 054   ----------------------------------------
	.byte		VOICE , 127
	.byte		        127
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_rg_mt_moon_3:
	.byte	KEYSH , mus_rg_mt_moon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N11   , Ds7 , v076
	.byte	W12
	.byte		        Gs6 
	.byte	W12
	.byte		        Cn7 
	.byte	W12
	.byte		        Ds7 
	.byte	W12
	.byte		        Gs6 
	.byte	W12
	.byte		        Cn7 
	.byte	W12
	.byte		        Ds7 
	.byte	W12
	.byte		        Cn7 
	.byte	W12
@ 001   ----------------------------------------
mus_rg_mt_moon_3_001:
	.byte		N11   , Dn7 , v076
	.byte	W12
	.byte		        Gn6 
	.byte	W12
	.byte		        As6 
	.byte	W12
	.byte		        Dn7 
	.byte	W12
	.byte		        Gn6 
	.byte	W12
	.byte		        As6 
	.byte	W12
	.byte		        Dn7 
	.byte	W12
	.byte		        Gn6 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_rg_mt_moon_3_002:
	.byte		N11   , Cs7 , v076
	.byte	W12
	.byte		        Fn6 
	.byte	W12
	.byte		        As6 
	.byte	W12
	.byte		        Cs7 
	.byte	W12
	.byte		        Fn6 
	.byte	W12
	.byte		        As6 
	.byte	W12
	.byte		        Cs7 
	.byte	W12
	.byte		        As6 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_rg_mt_moon_3_003:
	.byte		N11   , Cn7 , v076
	.byte	W12
	.byte		        Gn6 
	.byte	W12
	.byte		        As6 
	.byte	W12
	.byte		        Cn7 
	.byte	W12
	.byte		        Gn6 
	.byte	W12
	.byte		        As6 
	.byte	W12
	.byte		        Cn7 
	.byte	W12
	.byte		        As6 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_rg_mt_moon_3_004:
	.byte		N11   , Ds7 , v076
	.byte	W12
	.byte		        Gs6 
	.byte	W12
	.byte		        Cn7 
	.byte	W12
	.byte		        Ds7 
	.byte	W12
	.byte		        Gs6 
	.byte	W12
	.byte		        Cn7 
	.byte	W12
	.byte		        Ds7 
	.byte	W12
	.byte		        Cn7 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_001
mus_rg_mt_moon_3_B1:
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_004
@ 029   ----------------------------------------
mus_rg_mt_moon_3_029:
	.byte		N11   , Dn7 , v076
	.byte	W12
	.byte		        Gn6 
	.byte	W12
	.byte		        As6 
	.byte	W12
	.byte		        Dn7 
	.byte	W12
	.byte		        Gn6 
	.byte	W12
	.byte		        As6 
	.byte	W12
	.byte		        Dn7 
	.byte	W12
	.byte		        As6 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_029
@ 034   ----------------------------------------
	.byte		N11   , Cs7 , v076
	.byte	W12
	.byte		        Gn6 
	.byte	W12
	.byte		        As6 
	.byte	W12
	.byte		        Cs7 
	.byte	W12
	.byte		        Gn6 
	.byte	W12
	.byte		        As6 
	.byte	W12
	.byte		        Cs7 
	.byte	W12
	.byte		        As6 
	.byte	W12
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_029
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_003
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_029
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_3_001
	.byte	GOTO
	 .word	mus_rg_mt_moon_3_B1
mus_rg_mt_moon_3_B2:
@ 054   ----------------------------------------
	.byte		VOICE , 12
	.byte		        12
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_rg_mt_moon_4:
	.byte	KEYSH , mus_rg_mt_moon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N23   , Cn1 , v084
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N23   , Ds1 
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N23   , Fn1 
	.byte	W24
@ 001   ----------------------------------------
mus_rg_mt_moon_4_001:
	.byte		N11   , Ds1 , v084
	.byte	W24
	.byte		N23   , As0 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N23   , Cs1 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_rg_mt_moon_4_002:
	.byte		N23   , Cn1 , v084
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N23   , Ds1 
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N23   , Ds1 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
mus_rg_mt_moon_4_003:
	.byte		N11   , Fn1 , v084
	.byte	W24
	.byte		N23   , As0 
	.byte	W24
	.byte		N11   , Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N23   , Cs1 
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
mus_rg_mt_moon_4_004:
	.byte		N23   , Cn1 , v084
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N23   , Ds1 
	.byte	W24
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N23   , Fn1 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_001
mus_rg_mt_moon_4_B1:
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_003
@ 020   ----------------------------------------
mus_rg_mt_moon_4_020:
	.byte		N05   , Fn0 , v084
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_rg_mt_moon_4_021:
	.byte		N05   , Fn1 , v084
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_021
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_003
@ 036   ----------------------------------------
mus_rg_mt_moon_4_036:
	.byte		N05   , Cn1 , v084
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
	.byte	PEND
@ 037   ----------------------------------------
mus_rg_mt_moon_4_037:
	.byte		N05   , Ds1 , v084
	.byte	W24
	.byte		        As0 
	.byte	W72
	.byte	PEND
@ 038   ----------------------------------------
mus_rg_mt_moon_4_038:
	.byte		N05   , Cn1 , v084
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W24
	.byte	PEND
@ 039   ----------------------------------------
	.byte		        Fn1 
	.byte	W24
	.byte		        As0 
	.byte	W72
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_037
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_038
@ 043   ----------------------------------------
	.byte		N05   , Fn1 , v084
	.byte	W24
	.byte		        As0 
	.byte	W24
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N23   , Cs1 
	.byte	W24
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_003
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_4_001
	.byte	GOTO
	 .word	mus_rg_mt_moon_4_B1
mus_rg_mt_moon_4_B2:
@ 054   ----------------------------------------
	.byte		VOICE , 80
	.byte		        80
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_rg_mt_moon_5:
	.byte	KEYSH , mus_rg_mt_moon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 60
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		N92   , Ds4 , v112, gtp3
	.byte		N92   , Gn4 , v112, gtp3
	.byte	W96
@ 005   ----------------------------------------
	.byte		        Dn4 , v112, gtp3
	.byte		N92   , As4 , v112, gtp3
	.byte	W96
@ 006   ----------------------------------------
	.byte		        Cs4 , v112, gtp3
	.byte		N92   , Fn4 , v112, gtp3
	.byte	W96
@ 007   ----------------------------------------
	.byte		        Cn4 , v112, gtp3
	.byte		N92   , Gn4 , v112, gtp3
	.byte	W96
@ 008   ----------------------------------------
	.byte		N15   , Cn4 
	.byte		N15   , Gn4 
	.byte	W16
	.byte		        Cn4 , v096
	.byte		N15   , Gn4 
	.byte	W16
	.byte		        Cn4 , v088
	.byte		N15   , Gn4 
	.byte	W16
	.byte		        Cn4 , v072
	.byte		N15   , Gn4 
	.byte	W16
	.byte		        Cn4 , v056
	.byte		N15   , Gn4 
	.byte	W16
	.byte		        Cn4 , v040
	.byte		N15   , Gn4 
	.byte	W16
@ 009   ----------------------------------------
	.byte	W96
mus_rg_mt_moon_5_B1:
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W48
	.byte		N44   , Cn4 , v112, gtp3
	.byte	W48
@ 013   ----------------------------------------
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , As3 
	.byte	W12
	.byte		N23   , Dn4 
	.byte	W24
@ 014   ----------------------------------------
	.byte		N92   , Cs4 , v112, gtp3
	.byte	W96
@ 015   ----------------------------------------
	.byte		TIE   , Cn4 
	.byte	W96
@ 016   ----------------------------------------
	.byte	W14
	.byte		EOT   
	.byte	W32
	.byte	W02
	.byte		N44   , Ds3 , v112, gtp3
	.byte		N44   , Cn4 , v112, gtp3
	.byte	W48
@ 017   ----------------------------------------
	.byte		N11   , Fn3 
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N11   , As3 
	.byte	W12
	.byte		N23   , As2 
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn3 
	.byte		N11   , As3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte		N23   , Dn4 
	.byte	W24
@ 018   ----------------------------------------
	.byte		N68   , Fn3 , v112, gtp3
	.byte		N68   , Cs4 , v112, gtp3
	.byte	W72
	.byte		N11   , Ds3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , Cs4 
	.byte	W12
@ 019   ----------------------------------------
	.byte		N92   , Gn3 , v112, gtp3
	.byte		N92   , Ds4 , v112, gtp3
	.byte	W96
@ 020   ----------------------------------------
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   , Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N23   , Ds4 
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 021   ----------------------------------------
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N23   , Dn4 
	.byte	W24
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N44   , Cs4 , v112, gtp3
	.byte	W48
	.byte		        As3 , v112, gtp3
	.byte	W48
@ 023   ----------------------------------------
	.byte		N11   , Gn3 
	.byte		N11   , Ds4 
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N11   , As3 
	.byte	W12
	.byte		N44   , Ds3 , v112, gtp3
	.byte		N44   , Cn4 , v112, gtp3
	.byte	W48
@ 024   ----------------------------------------
	.byte		N23   , Gs3 
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   , Gn3 
	.byte		N11   , Ds4 
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N23   , Gn3 
	.byte		N23   , Ds4 
	.byte	W24
	.byte		N11   , Fn3 
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N11   , Cn4 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Fn3 
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N11   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N23   , Fn3 
	.byte		N23   , Dn4 
	.byte	W24
	.byte		N11   , Ds3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Dn3 
	.byte		N11   , As3 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N23   , Fn3 
	.byte		N23   , Cs4 
	.byte	W24
	.byte		N11   , Ds3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , Cs4 
	.byte	W12
	.byte		        Ds3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N11   , As3 
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , Cs4 
	.byte	W12
@ 027   ----------------------------------------
mus_rg_mt_moon_5_027:
	.byte		N92   , Ds3 , v112, gtp3
	.byte		N92   , Cn4 , v112, gtp3
	.byte	W96
	.byte	PEND
@ 028   ----------------------------------------
mus_rg_mt_moon_5_028:
	.byte	W48
	.byte		N11   , Cn5 , v112
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v072
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_rg_mt_moon_5_029:
	.byte		N11   , Dn5 , v112
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn4 , v092
	.byte	W12
	.byte		        As4 , v112
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_rg_mt_moon_5_030:
	.byte		N11   , Cs5 , v112
	.byte	W12
	.byte		        Cs5 , v092
	.byte	W12
	.byte		        Cs5 , v080
	.byte	W12
	.byte		        Cs5 , v072
	.byte	W12
	.byte		        Cs5 , v060
	.byte	W12
	.byte		        Cs5 , v056
	.byte	W12
	.byte		        Cs5 , v052
	.byte	W12
	.byte		        Cs5 , v048
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
mus_rg_mt_moon_5_031:
	.byte		N11   , Cn5 , v112
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v072
	.byte	W12
	.byte		        Cn5 , v060
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_5_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_5_029
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_5_030
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_5_031
@ 036   ----------------------------------------
	.byte		N11   , Cn5 , v040
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		        Cn5 , v024
	.byte	W12
	.byte		        Cn5 , v012
	.byte	W60
@ 037   ----------------------------------------
	.byte	W48
	.byte		        Fn2 , v112
	.byte		N11   , As3 
	.byte	W12
	.byte		        Gn2 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N23   , Gs2 
	.byte		N23   , Cs4 
	.byte	W24
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_5_027
@ 039   ----------------------------------------
	.byte	W48
	.byte		N11   , Gs2 , v112
	.byte		N11   , Cs4 
	.byte	W12
	.byte		        Gn2 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N23   , Gs2 
	.byte		N23   , Cs4 
	.byte	W24
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_5_027
@ 041   ----------------------------------------
	.byte		N11   , Gn3 , v112
	.byte		N11   , Ds4 
	.byte	W48
	.byte		        Fn3 
	.byte		N11   , As3 
	.byte	W12
	.byte		        Gn3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N23   , Gs3 
	.byte		N23   , Cs4 
	.byte	W24
@ 042   ----------------------------------------
	.byte		N92   , Gn3 , v112, gtp3
	.byte		N92   , Cn4 , v112, gtp3
	.byte	W96
@ 043   ----------------------------------------
	.byte		N11   , Fn3 
	.byte		N11   , As3 
	.byte	W48
	.byte		        Gs3 
	.byte		N11   , Cs4 
	.byte	W12
	.byte		        Gn3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N23   , Gs3 
	.byte		N23   , Cs4 
	.byte	W24
@ 044   ----------------------------------------
	.byte		N44   , Gs3 , v112, gtp3
	.byte		N44   , Ds4 , v112, gtp3
	.byte	W48
	.byte		N92   , Gs3 , v112, gtp3
	.byte		N92   , Ds4 , v112, gtp3
	.byte	W48
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte		N44   , Fn3 , v112, gtp3
	.byte		N44   , Cs4 , v112, gtp3
	.byte	W48
	.byte		N92   , Fn3 , v112, gtp3
	.byte		N92   , Cs4 , v112, gtp3
	.byte	W48
@ 047   ----------------------------------------
	.byte	W48
	.byte		N15   , Fn3 , v096
	.byte		N15   , An3 
	.byte		N15   , Cn4 
	.byte	W16
	.byte		        Fs3 
	.byte		N15   , As3 
	.byte		N15   , Cs4 
	.byte	W16
	.byte		        Gn3 
	.byte		N15   , Bn3 
	.byte		N15   , Dn4 
	.byte	W16
@ 048   ----------------------------------------
mus_rg_mt_moon_5_048:
	.byte		N92   , Gs3 , v112, gtp3
	.byte		N92   , Cn4 , v112, gtp3
	.byte		N92   , Ds4 , v112, gtp3
	.byte	W96
	.byte	PEND
@ 049   ----------------------------------------
	.byte		        Gn3 , v112, gtp3
	.byte		N92   , As3 , v112, gtp3
	.byte		N92   , Dn4 , v112, gtp3
	.byte	W96
@ 050   ----------------------------------------
	.byte		        As3 , v112, gtp3
	.byte		N92   , Cs4 , v112, gtp3
	.byte		N92   , Fn4 , v112, gtp3
	.byte	W96
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_5_048
@ 052   ----------------------------------------
	.byte		N15   , Gs3 , v096
	.byte		N15   , Cn4 
	.byte		N15   , Ds4 
	.byte	W16
	.byte		        Gs3 
	.byte		N15   , Cn4 
	.byte		N15   , Ds4 
	.byte	W16
	.byte		        Gs3 , v088
	.byte		N15   , Cn4 
	.byte		N15   , Ds4 
	.byte	W16
	.byte		        Gs3 , v072
	.byte		N15   , Cn4 
	.byte		N15   , Ds4 
	.byte	W16
	.byte		        Gs3 , v056
	.byte		N15   , Cn4 
	.byte		N15   , Ds4 
	.byte	W16
	.byte		        Gs3 , v040
	.byte		N15   , Cn4 
	.byte		N15   , Ds4 
	.byte	W16
@ 053   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_rg_mt_moon_5_B1
mus_rg_mt_moon_5_B2:
@ 054   ----------------------------------------
	.byte		VOICE , 60
	.byte		        60
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_rg_mt_moon_6:
	.byte	KEYSH , mus_rg_mt_moon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 82
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
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
mus_rg_mt_moon_6_008:
	.byte		N05   , Ds5 , v068
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_rg_mt_moon_6_009:
	.byte		N05   , Dn5 , v068
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte	PEND
mus_rg_mt_moon_6_B1:
@ 010   ----------------------------------------
mus_rg_mt_moon_6_010:
	.byte		N05   , Cs5 , v068
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_rg_mt_moon_6_011:
	.byte		N05   , Cn5 , v068
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_011
@ 020   ----------------------------------------
mus_rg_mt_moon_6_020:
	.byte		N23   , Fn5 , v068
	.byte	W24
	.byte		N11   , Ds5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N23   , Ds5 
	.byte	W24
	.byte		N11   , Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_rg_mt_moon_6_021:
	.byte		N11   , Dn5 , v068
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N23   , Dn5 
	.byte	W24
	.byte		N11   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
	.byte		N44   , Cs5 , v068, gtp3
	.byte	W48
	.byte		        As4 , v068, gtp3
	.byte	W48
@ 023   ----------------------------------------
	.byte		N11   , Ds5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N44   , Cn5 , v068, gtp3
	.byte	W48
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_021
@ 026   ----------------------------------------
	.byte		N23   , Cs5 , v068
	.byte	W24
	.byte		N11   , Cn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
@ 027   ----------------------------------------
	.byte		N15   , Cn3 , v056
	.byte	W16
	.byte		        Cn3 , v048
	.byte	W16
	.byte		        Cn3 , v040
	.byte	W16
	.byte		        Cn3 , v032
	.byte	W16
	.byte		        Cn3 , v020
	.byte	W16
	.byte		        Cn3 , v012
	.byte	W16
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_008
@ 029   ----------------------------------------
mus_rg_mt_moon_6_029:
	.byte		N05   , Dn5 , v068
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_011
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_029
@ 034   ----------------------------------------
	.byte		N05   , Cs5 , v068
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        As4 
	.byte	W12
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_011
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W48
	.byte		N15   , Cn5 , v068
	.byte	W16
	.byte		        Cn5 , v060
	.byte	W16
	.byte		        Cn5 , v052
	.byte	W16
@ 039   ----------------------------------------
	.byte		        Cn5 , v044
	.byte	W16
	.byte		        Cn5 , v032
	.byte	W16
	.byte		        Cn5 , v024
	.byte	W64
@ 040   ----------------------------------------
	.byte	W48
	.byte		        Gn4 , v068
	.byte	W16
	.byte		        Gn4 , v060
	.byte	W16
	.byte		        Gn4 , v052
	.byte	W16
@ 041   ----------------------------------------
	.byte		        Gn4 , v044
	.byte	W16
	.byte		        Gn4 , v032
	.byte	W16
	.byte		        Gn4 , v024
	.byte	W64
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_008
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_029
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_010
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_011
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_008
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_029
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_010
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_011
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_008
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_6_009
	.byte	GOTO
	 .word	mus_rg_mt_moon_6_B1
mus_rg_mt_moon_6_B2:
@ 054   ----------------------------------------
	.byte		VOICE , 82
	.byte		        82
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_rg_mt_moon_7:
	.byte	KEYSH , mus_rg_mt_moon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
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
mus_rg_mt_moon_7_B1:
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
	.byte		N92   , Ds5 , v116, gtp3
	.byte		N92   , Fn5 , v116, gtp3
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
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
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
	.byte	GOTO
	 .word	mus_rg_mt_moon_7_B1
mus_rg_mt_moon_7_B2:
@ 054   ----------------------------------------
	.byte		VOICE , 1
	.byte		        1
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_rg_mt_moon_8:
	.byte	KEYSH , mus_rg_mt_moon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 14
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
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
mus_rg_mt_moon_8_B1:
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
mus_rg_mt_moon_8_028:
	.byte	W48
	.byte		N44   , Cn4 , v112, gtp3
	.byte	W48
	.byte	PEND
@ 029   ----------------------------------------
mus_rg_mt_moon_8_029:
	.byte		N11   , Dn4 , v112
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , As3 
	.byte	W12
	.byte		N23   , Dn4 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
	.byte		N92   , Cs4 , v112, gtp3
	.byte	W96
@ 031   ----------------------------------------
	.byte		        Cn4 , v112, gtp3
	.byte	W96
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_8_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_8_029
@ 034   ----------------------------------------
	.byte		N92   , Cs4 , v112, gtp3
	.byte	W96
@ 035   ----------------------------------------
	.byte		TIE   , Cn4 
	.byte	W96
@ 036   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W48
	.byte	W01
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
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
	.byte	GOTO
	 .word	mus_rg_mt_moon_8_B1
mus_rg_mt_moon_8_B2:
@ 054   ----------------------------------------
	.byte		VOICE , 14
	.byte		        14
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	FINE

@**************** Track 9 (Midi-Chn.9) ****************@

mus_rg_mt_moon_9:
	.byte	KEYSH , mus_rg_mt_moon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 88
	.byte		VOL   , 63*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
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
mus_rg_mt_moon_9_B1:
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
mus_rg_mt_moon_9_020:
	.byte		N44   , Gs3 , v048, gtp3
	.byte	W48
	.byte		        Ds3 , v048, gtp3
	.byte	W48
	.byte	PEND
@ 021   ----------------------------------------
mus_rg_mt_moon_9_021:
	.byte		N44   , Gn3 , v048, gtp3
	.byte	W48
	.byte		        Dn3 , v048, gtp3
	.byte	W48
	.byte	PEND
@ 022   ----------------------------------------
mus_rg_mt_moon_9_022:
	.byte		N44   , Fn3 , v048, gtp3
	.byte	W48
	.byte		        Cs3 , v048, gtp3
	.byte	W48
	.byte	PEND
@ 023   ----------------------------------------
	.byte		        Ds3 , v048, gtp3
	.byte	W48
	.byte		        Gn3 , v048, gtp3
	.byte	W48
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_9_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_9_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_9_022
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
mus_rg_mt_moon_9_028:
	.byte		N11   , Cn5 , v048
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_rg_mt_moon_9_029:
	.byte		N11   , Cs5 , v048
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_9_028
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_9_029
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_9_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_9_029
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_9_028
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_9_029
@ 036   ----------------------------------------
	.byte		N11   , Fn4 , v048
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
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
	.byte	GOTO
	 .word	mus_rg_mt_moon_9_B1
mus_rg_mt_moon_9_B2:
@ 054   ----------------------------------------
	.byte		VOICE , 88
	.byte		        88
	.byte		PAN   , c_v+0
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	FINE

@**************** Track 10 (Midi-Chn.10) ****************@

mus_rg_mt_moon_10:
	.byte	KEYSH , mus_rg_mt_moon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		N23   , Cn1 , v127
	.byte	W48
	.byte		N23   
	.byte	W48
@ 001   ----------------------------------------
mus_rg_mt_moon_10_001:
	.byte		N23   , Cn1 , v127
	.byte	W24
	.byte		        Bn0 , v092
	.byte	W72
	.byte	PEND
@ 002   ----------------------------------------
mus_rg_mt_moon_10_002:
	.byte		N23   , Cn1 , v127
	.byte	W48
	.byte		N23   
	.byte	W48
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_001
mus_rg_mt_moon_10_B1:
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_002
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_002
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_002
@ 019   ----------------------------------------
	.byte		N23   , Cn1 , v127
	.byte	W24
	.byte		        Bn0 , v092
	.byte	W24
	.byte		N44   , Gn0 , v112, gtp3
	.byte	W48
@ 020   ----------------------------------------
mus_rg_mt_moon_10_020:
	.byte		N05   , Cn1 , v112
	.byte	W12
	.byte		N05   
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W36
	.byte	PEND
@ 021   ----------------------------------------
mus_rg_mt_moon_10_021:
	.byte		N05   , Cn1 , v112
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W36
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_020
@ 023   ----------------------------------------
	.byte		N05   , Cn1 , v112
	.byte	W12
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W48
	.byte		N11   , Bn0 
	.byte	W12
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_021
@ 026   ----------------------------------------
	.byte		N92   , En2 , v112, gtp3
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_001
@ 036   ----------------------------------------
mus_rg_mt_moon_10_036:
	.byte		N23   , Bn0 , v112
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   , En1 
	.byte	W12
	.byte		N23   , Cn1 
	.byte	W24
	.byte		N23   
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   , En1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Bn0 
	.byte	W12
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_036
@ 039   ----------------------------------------
	.byte	W12
	.byte		N11   , Cn1 , v112
	.byte	W12
	.byte		N05   , En1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N23   , Bn0 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_036
@ 041   ----------------------------------------
	.byte	W12
	.byte		N11   , Cn1 , v112
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Bn0 
	.byte	W12
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_036
@ 043   ----------------------------------------
	.byte	W12
	.byte		N11   , Cn1 , v112
	.byte	W12
	.byte		N05   , En1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn1 
	.byte	W12
	.byte		N15   , En1 
	.byte	W16
	.byte		N15   
	.byte	W16
	.byte		        Cn1 
	.byte		N15   , En1 
	.byte	W16
@ 044   ----------------------------------------
	.byte		N23   , Bn0 , v127
	.byte	W48
	.byte		        Cn1 
	.byte	W48
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_001
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_002
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_002
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_10_001
	.byte	GOTO
	 .word	mus_rg_mt_moon_10_B1
mus_rg_mt_moon_10_B2:
@ 054   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	FINE

@**************** Track 11 (Midi-Chn.11) ****************@

mus_rg_mt_moon_11:
	.byte	KEYSH , mus_rg_mt_moon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte		        c_v+0
	.byte	W96
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
mus_rg_mt_moon_11_B1:
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
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
mus_rg_mt_moon_11_042:
	.byte	W48
	.byte		N07   , Cs6 , v112
	.byte	W08
	.byte		        Cs6 , v088
	.byte	W08
	.byte		        Cs6 , v068
	.byte	W08
	.byte		        Cs6 , v088
	.byte	W08
	.byte		        Cs6 , v068
	.byte	W08
	.byte		N23   , Cs6 , v036
	.byte	W08
	.byte	PEND
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_mt_moon_11_042
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
	.byte	GOTO
	 .word	mus_rg_mt_moon_11_B1
mus_rg_mt_moon_11_B2:
@ 054   ----------------------------------------
	.byte		VOICE , 81
	.byte		        81
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rg_mt_moon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		        c_v+0
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_rg_mt_moon:
	.byte	11	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_rg_mt_moon_pri	@ Priority
	.byte	mus_rg_mt_moon_rev	@ Reverb.

	.word	mus_rg_mt_moon_grp

	.word	mus_rg_mt_moon_1
	.word	mus_rg_mt_moon_2
	.word	mus_rg_mt_moon_3
	.word	mus_rg_mt_moon_4
	.word	mus_rg_mt_moon_5
	.word	mus_rg_mt_moon_6
	.word	mus_rg_mt_moon_7
	.word	mus_rg_mt_moon_8
	.word	mus_rg_mt_moon_9
	.word	mus_rg_mt_moon_10
	.word	mus_rg_mt_moon_11

	.end
