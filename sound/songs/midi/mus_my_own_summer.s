	.include "MPlayDef.s"

	.equ	mus_my_own_summer_grp, voicegroup_hlw_rock_metal
	.equ	mus_my_own_summer_pri, 0
	.equ	mus_my_own_summer_rev, reverb_set+28
	.equ	mus_my_own_summer_mvl, 100
	.equ	mus_my_own_summer_key, 0
	.equ	mus_my_own_summer_tbs, 1
	.equ	mus_my_own_summer_exg, 1
	.equ	mus_my_own_summer_cmp, 1

	.section .rodata
	.global	mus_my_own_summer
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_my_own_summer_1:
	.byte	KEYSH , mus_my_own_summer_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 134*mus_my_own_summer_tbs/2
	.byte		VOICE , 30
	.byte		VOL   , 127*mus_my_own_summer_mvl/mxv
	.byte		N12   , Dn1 , v096
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 002   ----------------------------------------
mus_my_own_summer_1_002:
	.byte		N12   , Dn1 , v096
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_my_own_summer_1_003:
	.byte		N12   , Dn1 , v096
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_002
@ 013   ----------------------------------------
mus_my_own_summer_1_013:
	.byte		N12   , Dn1 , v096
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
mus_my_own_summer_1_014:
	.byte		N12   , Dn1 , v096
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N36   , Fs1 
	.byte		N36   , Cs2 
	.byte		N36   , Fs2 
	.byte	W36
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_013
@ 016   ----------------------------------------
mus_my_own_summer_1_016:
	.byte		N12   , Dn1 , v096
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Fn2 
	.byte		N12   , As2 
	.byte	W12
	.byte		N24   , Fs1 
	.byte		N24   , Cs2 
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N12   , Fs1 
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_013
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_003
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_003
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_003
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_013
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_014
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_013
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_016
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_013
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_014
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_013
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_016
@ 041   ----------------------------------------
mus_my_own_summer_1_041:
	.byte		N12   , Fn2 , v096
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , As2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte	PEND
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_041
@ 043   ----------------------------------------
mus_my_own_summer_1_043:
	.byte		N12   , Fn1 , v096
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Dn1 
	.byte		N24   , An1 
	.byte		N24   , Dn2 
	.byte	W24
	.byte	PEND
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_043
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_041
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_041
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_043
@ 048   ----------------------------------------
	.byte		N12   , Fn1 , v096
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N36   , Dn1 
	.byte		N36   , An1 
	.byte		N36   , Dn2 
	.byte	W24
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_013
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_014
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_013
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_013
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_014
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_013
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_1_016
@ 057   ----------------------------------------
	.byte		N12   , Dn1 , v096
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N72   , Dn1 
	.byte		N72   , An1 
	.byte		N72   , Dn2 
	.byte	W84
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_my_own_summer_2:
	.byte	KEYSH , mus_my_own_summer_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 118*mus_my_own_summer_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_my_own_summer_2_004:
	.byte		N12   , En0 , v096
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_my_own_summer_2_005:
	.byte		N12   , En0 , v096
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N24   , Gn0 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_005
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_005
@ 012   ----------------------------------------
mus_my_own_summer_2_012:
	.byte		N12   , En0 , v096
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_my_own_summer_2_013:
	.byte		N12   , En0 , v096
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N36   , Fs0 
	.byte	W36
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_012
@ 015   ----------------------------------------
mus_my_own_summer_2_015:
	.byte		N12   , En0 , v096
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N24   , Fs0 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_012
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_015
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_004
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_005
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_004
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_005
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_004
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_005
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_012
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_013
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_012
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_015
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_012
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_013
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_012
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_015
@ 040   ----------------------------------------
mus_my_own_summer_2_040:
	.byte		N12   , Fs0 , v096
	.byte	W12
	.byte		        An0 
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
@ 041   ----------------------------------------
mus_my_own_summer_2_041:
	.byte		N12   , An0 , v096
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
@ 042   ----------------------------------------
mus_my_own_summer_2_042:
	.byte		N12   , Fs0 , v096
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N24   , En0 
	.byte	W24
	.byte	PEND
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_042
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_040
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_041
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_042
@ 047   ----------------------------------------
	.byte		N12   , Fs0 , v096
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N36   , En0 
	.byte	W24
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_012
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_013
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_012
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_013
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_012
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_013
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_2_012
@ 055   ----------------------------------------
	.byte		N12   , En0 , v096
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		TIE   , Fs0 
	.byte	W36
@ 056   ----------------------------------------
	.byte		        BnM1
	.byte	W96
@ 057   ----------------------------------------
	.byte	W12
	.byte		EOT   , Fs0 
	.byte	W36
	.byte		        BnM1
	.byte	W48
@ 058   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.10) ****************@

mus_my_own_summer_3:
	.byte	KEYSH , mus_my_own_summer_key+0
@ 000   ----------------------------------------
	.byte		VOL   , 120*mus_my_own_summer_mvl/mxv
	.byte		N12   , Cn1 , v096
	.byte		N60   , Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
@ 001   ----------------------------------------
mus_my_own_summer_3_001:
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_my_own_summer_3_002:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_my_own_summer_3_003:
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Fs1 , v068
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_003
@ 012   ----------------------------------------
mus_my_own_summer_3_012:
	.byte		N12   , Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_my_own_summer_3_013:
	.byte		N12   , Cn1 , v096
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_012
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_013
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_012
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_013
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_012
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_013
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_012
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_013
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_012
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_013
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_012
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_013
@ 040   ----------------------------------------
mus_my_own_summer_3_040:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N12   , Dn1 , v092
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_040
@ 042   ----------------------------------------
mus_my_own_summer_3_042:
	.byte		N12   , Cn1 , v096
	.byte		N12   , Cs2 , v072
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		N24   , Cn1 , v096
	.byte		N24   , Cs2 , v072
	.byte	W24
	.byte	PEND
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_042
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_040
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_040
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_042
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_042
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_012
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_012
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_012
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_012
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_012
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_012
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_012
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_my_own_summer_3_012
@ 056   ----------------------------------------
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		N72   , Cs2 , v088
	.byte	W84
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_my_own_summer:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_my_own_summer_pri	@ Priority
	.byte	mus_my_own_summer_rev	@ Reverb.

	.word	mus_my_own_summer_grp

	.word	mus_my_own_summer_1
	.word	mus_my_own_summer_2
	.word	mus_my_own_summer_3

	.end
