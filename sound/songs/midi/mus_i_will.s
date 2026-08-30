	.include "MPlayDef.s"

	.equ	mus_i_will_grp, voicegroup_i_will
	.equ	mus_i_will_pri, 0
	.equ	mus_i_will_rev, reverb_set+50
	.equ	mus_i_will_mvl, 100
	.equ	mus_i_will_key, 0
	.equ	mus_i_will_tbs, 1
	.equ	mus_i_will_exg, 1
	.equ	mus_i_will_cmp, 1

	.section .rodata
	.global	mus_i_will
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_i_will_1:
	.byte	KEYSH , mus_i_will_key+0
mus_i_will_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 75*mus_i_will_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_i_will_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N23   , Gs1 , v108
	.byte	W24
@ 002   ----------------------------------------
mus_i_will_1_002:
	.byte		N11   , Ds2 , v108
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        An1 
	.byte	W24
@ 004   ----------------------------------------
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N23   , Gs1 
	.byte	W24
@ 005   ----------------------------------------
mus_i_will_1_005:
	.byte		N11   , Gs2 , v108
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N23   , Gs1 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_1_002
@ 007   ----------------------------------------
mus_i_will_1_007:
	.byte		N11   , Gs2 , v108
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W24
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
mus_i_will_1_008:
	.byte		N11   , Gs2 , v108
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N23   , Gs1 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_1_005
@ 010   ----------------------------------------
	.byte		N11   , Ds2 , v108
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N10   , Gs1 
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W24
@ 011   ----------------------------------------
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N23   , An1 
	.byte	W24
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_1_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_1_005
@ 014   ----------------------------------------
	.byte		N11   , Cn2 , v124
	.byte	W12
	.byte		        Gs1 , v108
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W24
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_1_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_1_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_1_005
@ 018   ----------------------------------------
mus_i_will_1_018:
	.byte		N11   , Ds2 , v108
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Ds2 
	.byte	W12
	.byte		N10   , Gs1 
	.byte	W12
	.byte		N23   , Cs2 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_1_007
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_1_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_1_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_1_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_1_007
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_1_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_1_005
@ 026   ----------------------------------------
	.byte		N11   , Ds2 , v108
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N23   , An1 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N11   , An2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N23   , Fs1 
	.byte	W24
	.byte		N11   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N23   , Gs1 
	.byte	W24
@ 028   ----------------------------------------
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N23   , En1 
	.byte	W24
	.byte		N11   , En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N23   , Fs1 
	.byte	W24
@ 029   ----------------------------------------
	.byte		N11   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N23   , Gs1 
	.byte	W24
	.byte		        Gs2 
	.byte	W24
	.byte		        An1 
	.byte	W24
@ 030   ----------------------------------------
	.byte		N11   , An2 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N23   , Fs1 
	.byte	W24
	.byte		N11   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N32   , Gs1 , v108, gtp3
	.byte	W24
@ 031   ----------------------------------------
	.byte	W12
	.byte		N11   , Cn2 
	.byte	W12
	.byte		N23   , En1 
	.byte	W24
	.byte		N11   , En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N23   , Fs1 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N11   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N23   , Gs1 
	.byte	W24
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N23   , An1 
	.byte	W24
@ 033   ----------------------------------------
	.byte		N11   , An2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N23   , Fs1 
	.byte	W24
	.byte		N11   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N23   , Gs1 
	.byte	W24
@ 034   ----------------------------------------
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N23   , En1 
	.byte	W24
	.byte		N11   , En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 035   ----------------------------------------
	.byte		        As1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N23   , En1 
	.byte	W24
	.byte		N11   , En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N23   , Fs1 
	.byte	W24
@ 036   ----------------------------------------
	.byte		N11   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N23   , Gs1 
	.byte	W24
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N23   , Gs1 
	.byte	W24
	.byte		N03   
	.byte	W04
	.byte		TIE   , Gs2 
	.byte	W68
@ 038   ----------------------------------------
	.byte	W48
@ 039   ----------------------------------------
	.byte	W40
	.byte		EOT   
	.byte	GOTO
	 .word	mus_i_will_1_B1
mus_i_will_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_i_will_2:
	.byte	KEYSH , mus_i_will_key+0
mus_i_will_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 46*mus_i_will_mvl/mxv
	.byte		PAN   , c_v-12
	.byte	W24
@ 001   ----------------------------------------
mus_i_will_2_001:
	.byte		N23   , Ds3 , v056
	.byte	W24
	.byte		        Gs2 , v060
	.byte	W24
	.byte		N11   , Ds3 , v056
	.byte	W12
	.byte		N32   , Gs2 , v060, gtp3
	.byte	W36
	.byte	PEND
@ 002   ----------------------------------------
	.byte		N05   , En3 , v056
	.byte	W06
	.byte		        Fs2 , v060
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N17   , Cs2 
	.byte	W18
	.byte		N23   , En3 , v064
	.byte	W24
	.byte		N32   , En3 , v064, gtp3
	.byte	W36
@ 003   ----------------------------------------
	.byte		N23   , En3 , v056
	.byte	W24
	.byte		N11   , En2 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cs3 , v056
	.byte	W12
	.byte		N32   , Ds2 , v060, gtp3
	.byte	W36
@ 004   ----------------------------------------
mus_i_will_2_004:
	.byte		N11   , Cs3 , v056
	.byte	W36
	.byte		        Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N32   , Gs3 , v056, gtp3
	.byte	W36
	.byte	PEND
@ 005   ----------------------------------------
	.byte		N23   , Ds3 
	.byte	W24
	.byte		N11   , Gs2 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Ds3 , v056
	.byte	W12
	.byte		N32   , Gs2 , v060, gtp3
	.byte	W36
@ 006   ----------------------------------------
	.byte		N05   , En3 , v056
	.byte	W06
	.byte		        Fs2 , v060
	.byte	W06
	.byte		N23   , En2 
	.byte	W24
	.byte		        En3 , v056
	.byte	W24
	.byte		N32   , Cs3 , v064, gtp3
	.byte	W36
@ 007   ----------------------------------------
mus_i_will_2_007:
	.byte		N23   , En3 , v056
	.byte	W24
	.byte		N11   , En2 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En3 , v056
	.byte	W12
	.byte		N32   , Ds2 , v060, gtp3
	.byte	W36
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_2_004
@ 009   ----------------------------------------
	.byte		N23   , Ds3 , v056
	.byte	W24
	.byte		N11   , Cs2 , v060
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds3 , v056
	.byte	W12
	.byte		N23   , En2 , v060
	.byte	W24
	.byte		N11   , Fs2 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        En3 , v056
	.byte	W12
	.byte		N23   , En2 , v060
	.byte	W24
	.byte		        En3 , v056
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        En2 , v060
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 011   ----------------------------------------
	.byte		        En3 , v056
	.byte	W12
	.byte		N23   , En2 , v060
	.byte	W24
	.byte		N11   , Cs2 
	.byte	W12
	.byte		        Cs3 , v056
	.byte	W12
	.byte		N32   , Ds2 , v060, gtp3
	.byte	W36
@ 012   ----------------------------------------
	.byte		N11   , Cs3 , v056
	.byte	W36
	.byte		        Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N56   , Gs3 , v056, gtp3
	.byte	W36
@ 013   ----------------------------------------
	.byte	W24
	.byte		N11   , Cs2 , v060
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds3 , v056
	.byte	W12
	.byte		N23   , En2 , v060
	.byte	W24
	.byte		N11   , Fs2 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        En3 , v056
	.byte	W12
	.byte		N23   , En2 , v060
	.byte	W24
	.byte		        En3 , v056
	.byte	W24
	.byte		N11   , Cs3 , v064
	.byte	W12
	.byte		        En2 , v060
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        En3 , v056
	.byte	W12
	.byte		N23   , En2 , v060
	.byte	W24
	.byte		N11   , Cs2 
	.byte	W12
	.byte		        En3 , v056
	.byte	W12
	.byte		N32   , Gs2 , v060, gtp3
	.byte	W36
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_2_004
@ 017   ----------------------------------------
	.byte		N17   , Ds3 , v056
	.byte	W18
	.byte		N05   , Fs2 , v060
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Ds3 , v056
	.byte	W12
	.byte		N32   , Gs2 , v060, gtp3
	.byte	W36
@ 018   ----------------------------------------
	.byte		N11   , En3 , v056
	.byte	W12
	.byte		        Fs2 , v060
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        En3 , v056
	.byte	W12
	.byte		        En2 , v060
	.byte	W12
	.byte		        Cs3 , v064
	.byte	W12
	.byte		N23   , Cs2 , v060
	.byte	W24
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_2_007
@ 020   ----------------------------------------
mus_i_will_2_020:
	.byte		N11   , Cs3 , v056
	.byte	W12
	.byte		        An2 , v060
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Ds3 , v056
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N32   , Gs3 , v056, gtp3
	.byte	W36
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_2_001
@ 022   ----------------------------------------
	.byte		N05   , En3 , v056
	.byte	W06
	.byte		        Fs2 , v060
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N23   , En3 , v056
	.byte	W24
	.byte		N11   , Cs3 , v064
	.byte	W12
	.byte		N23   , Cs3 , v060
	.byte	W24
@ 023   ----------------------------------------
	.byte		        En3 , v056
	.byte	W24
	.byte		        En2 , v060
	.byte	W24
	.byte		N11   , En3 , v056
	.byte	W12
	.byte		N32   , Ds2 , v060, gtp3
	.byte	W36
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_2_020
@ 025   ----------------------------------------
	.byte		N32   , Ds3 , v056, gtp3
	.byte	W36
	.byte		N23   , Cn3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Cs2 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
@ 026   ----------------------------------------
	.byte		N23   , En3 , v056
	.byte	W24
	.byte		        Cs2 , v060
	.byte	W24
	.byte		        Cs3 , v056
	.byte	W24
	.byte		        Cn2 , v060
	.byte	W24
@ 027   ----------------------------------------
mus_i_will_2_027:
	.byte		N23   , Ds3 , v056
	.byte	W24
	.byte		        Gs2 , v060
	.byte	W24
	.byte		        Bn2 , v056
	.byte	W24
	.byte		        As2 , v060
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
mus_i_will_2_028:
	.byte		N23   , Cs3 , v056
	.byte	W24
	.byte		        Cn2 , v060
	.byte	W24
	.byte		        Ds3 , v056
	.byte	W24
	.byte		N11   , Cs2 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte		        En3 , v056
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N23   , Ds2 , v060
	.byte	W24
	.byte		        Cs3 , v056
	.byte	W24
	.byte		        Cn2 , v060
	.byte	W24
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_2_027
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_2_028
@ 032   ----------------------------------------
	.byte		N23   , En3 , v056
	.byte	W24
	.byte		        Ds2 , v060
	.byte	W24
	.byte		        Cs3 , v056
	.byte	W24
	.byte		        Cn2 , v060
	.byte	W24
@ 033   ----------------------------------------
	.byte		        Ds3 , v056
	.byte	W24
	.byte		        Cs2 , v060
	.byte	W24
	.byte		N17   , Bn2 , v056
	.byte	W18
	.byte		N05   , Bn1 , v060
	.byte	W06
	.byte		N32   , As2 , v060, gtp3
	.byte	W24
@ 034   ----------------------------------------
	.byte	W12
	.byte		N11   , Cs3 , v056
	.byte	W12
	.byte		N23   , Cs2 , v060
	.byte	W24
	.byte		N17   , Bn2 , v056
	.byte	W18
	.byte		N05   , Bn1 , v060
	.byte	W06
	.byte		N23   , As2 
	.byte	W24
@ 035   ----------------------------------------
	.byte		        Cs3 , v056
	.byte	W24
	.byte		        Gs2 , v060
	.byte	W24
	.byte		N32   , Ds3 , v056, gtp3
	.byte	W36
	.byte		        Ds3 , v056, gtp3
	.byte	W12
@ 036   ----------------------------------------
	.byte	W24
	.byte		N07   , Cs2 
	.byte	W08
	.byte		N03   , Cs3 
	.byte	W04
	.byte		N02   , En3 
	.byte	W03
	.byte		TIE   , Gs3 
	.byte	W56
	.byte	W01
@ 037   ----------------------------------------
	.byte	W48
@ 038   ----------------------------------------
	.byte	W40
	.byte		EOT   
	.byte	GOTO
	 .word	mus_i_will_2_B1
mus_i_will_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_i_will_3:
	.byte	KEYSH , mus_i_will_key+0
mus_i_will_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_i_will_mvl/mxv
	.byte		PAN   , c_v+10
	.byte	W24
@ 001   ----------------------------------------
mus_i_will_3_001:
	.byte	W24
	.byte		N32   , Gs3 , v096, gtp3
	.byte	W36
	.byte		        Gs3 , v096, gtp3
	.byte	W36
	.byte	PEND
@ 002   ----------------------------------------
	.byte		N05   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N76   , Cs3 , v096, gtp1
	.byte	W78
@ 003   ----------------------------------------
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		TIE   , Ds3 
	.byte	W36
@ 004   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
@ 005   ----------------------------------------
	.byte	W24
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N32   , Gs3 , v096, gtp3
	.byte	W36
@ 006   ----------------------------------------
	.byte		N05   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N23   , En3 
	.byte	W24
	.byte		N56   , Cs3 , v096, gtp3
	.byte	W60
@ 007   ----------------------------------------
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		TIE   , Gs3 
	.byte	W36
@ 008   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
@ 009   ----------------------------------------
mus_i_will_3_009:
	.byte	W24
	.byte		N11   , Cs3 , v096
	.byte	W12
	.byte		N23   , Ds3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_i_will_3_010:
	.byte	W12
	.byte		N23   , Gs3 , v096
	.byte	W24
	.byte		        An3 
	.byte	W36
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N23   , An3 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W12
	.byte		        Gs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		TIE   , Gs3 
	.byte	W36
@ 012   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_3_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_3_010
@ 015   ----------------------------------------
	.byte	W12
	.byte		N23   , Gs3 , v096
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N11   , Gs3 
	.byte	W12
	.byte		TIE   
	.byte	W24
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W07
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N23   , Gs3 
	.byte	W24
	.byte		N44   , Gs3 , v096, gtp3
	.byte	W36
@ 018   ----------------------------------------
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N32   , En3 , v096, gtp3
	.byte	W24
@ 019   ----------------------------------------
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N44   , Ds3 , v096, gtp3
	.byte	W36
@ 020   ----------------------------------------
	.byte	W12
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N68   , Cn3 , v096, gtp3
	.byte	W72
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_3_001
@ 022   ----------------------------------------
	.byte		N05   , Gs2 , v100
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fs3 , v096
	.byte	W06
	.byte		N17   , En3 , v100
	.byte	W18
	.byte		N23   , En3 , v096
	.byte	W24
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N32   , En3 , v096, gtp3
	.byte	W24
@ 023   ----------------------------------------
	.byte	W24
	.byte		        En3 , v096, gtp3
	.byte	W36
	.byte		N44   , Ds3 , v096, gtp3
	.byte	W36
@ 024   ----------------------------------------
	.byte	W12
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N92   , Cn3 , v096, gtp3
	.byte	W72
@ 025   ----------------------------------------
	.byte	W72
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N32   , Cs3 , v096, gtp3
	.byte	W12
@ 026   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N32   , Cn3 , v096, gtp3
	.byte	W24
@ 027   ----------------------------------------
mus_i_will_3_027:
	.byte	W24
	.byte		N44   , Gs2 , v096, gtp3
	.byte	W48
	.byte		        As2 , v096, gtp3
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
mus_i_will_3_028:
	.byte	W24
	.byte		N44   , Cn3 , v096, gtp3
	.byte	W48
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N32   , Cs3 , v096, gtp3
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	W24
	.byte		N23   , Ds3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		N32   , Cn3 , v096, gtp3
	.byte	W24
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_3_027
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_3_028
@ 032   ----------------------------------------
	.byte	W24
	.byte		N23   , Ds3 , v096
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		N44   , Cn3 , v096, gtp3
	.byte	W24
@ 033   ----------------------------------------
mus_i_will_3_033:
	.byte	W24
	.byte		N40   , Cs3 , v096, gtp1
	.byte	W42
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N44   , As2 , v096, gtp3
	.byte	W24
	.byte	PEND
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_i_will_3_033
@ 035   ----------------------------------------
	.byte	W24
	.byte		N80   , Cn3 , v096, gtp3
	.byte	W72
@ 036   ----------------------------------------
	.byte	W12
	.byte		N32   , Cs3 , v096, gtp3
	.byte	W84
@ 037   ----------------------------------------
	.byte	W48
@ 038   ----------------------------------------
	.byte	W40
	.byte	GOTO
	 .word	mus_i_will_3_B1
mus_i_will_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_i_will:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_i_will_pri	@ Priority
	.byte	mus_i_will_rev	@ Reverb.

	.word	mus_i_will_grp

	.word	mus_i_will_1
	.word	mus_i_will_2
	.word	mus_i_will_3

	.end
