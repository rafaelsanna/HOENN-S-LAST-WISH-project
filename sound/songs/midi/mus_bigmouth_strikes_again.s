	.include "MPlayDef.s"

	.equ	mus_bigmouth_strikes_again_grp, voicegroup_bigmouth_strikes_again
	.equ	mus_bigmouth_strikes_again_pri, 0
	.equ	mus_bigmouth_strikes_again_rev, reverb_set+50
	.equ	mus_bigmouth_strikes_again_mvl, 100
	.equ	mus_bigmouth_strikes_again_key, 0
	.equ	mus_bigmouth_strikes_again_tbs, 1
	.equ	mus_bigmouth_strikes_again_exg, 1
	.equ	mus_bigmouth_strikes_again_cmp, 1

	.section .rodata
	.global	mus_bigmouth_strikes_again
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_bigmouth_strikes_again_1:
	.byte	KEYSH , mus_bigmouth_strikes_again_key+0
mus_bigmouth_strikes_again_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 134*mus_bigmouth_strikes_again_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_bigmouth_strikes_again_mvl/mxv
	.byte		PAN   , c_v+0
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
	.byte	W72
	.byte		N23   , Fs1 , v108
	.byte	W24
@ 009   ----------------------------------------
mus_bigmouth_strikes_again_1_009:
	.byte		N12   , Cs1 , v108
	.byte	W24
	.byte		N32   , Cs1 , v108, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N12   , En1 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_bigmouth_strikes_again_1_010:
	.byte	W12
	.byte		N11   , Bn0 , v108
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_bigmouth_strikes_again_1_011:
	.byte		N12   , Cs1 , v108
	.byte	W24
	.byte		N32   , Cs1 , v108, gtp3
	.byte	W36
	.byte		N11   , En1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		N12   , An0 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_bigmouth_strikes_again_1_012:
	.byte	W12
	.byte		N11   , Cs1 , v108
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N23   , Bn0 
	.byte	W24
	.byte		N11   , En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 016   ----------------------------------------
mus_bigmouth_strikes_again_1_016:
	.byte	W12
	.byte		N11   , Cs1 , v108
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N23   , Bn0 
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_016
@ 033   ----------------------------------------
mus_bigmouth_strikes_again_1_033:
	.byte		N23   , Cs1 , v108
	.byte	W24
	.byte		N12   , Cs2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N12   , En1 
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_bigmouth_strikes_again_1_034:
	.byte	W12
	.byte		N12   , En2 , v108
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N23   , En2 
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
mus_bigmouth_strikes_again_1_035:
	.byte		N23   , Cs1 , v108
	.byte	W24
	.byte		N12   , Cs2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N12   , An0 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_012
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_033
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_034
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_035
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_033
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_012
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_033
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_034
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_035
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_012
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_016
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_012
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_016
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_012
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_016
@ 073   ----------------------------------------
mus_bigmouth_strikes_again_1_073:
	.byte		N23   , Gs0 , v108
	.byte	W24
	.byte		N12   , Gs1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		N12   , Gs0 
	.byte	W12
	.byte	PEND
@ 074   ----------------------------------------
mus_bigmouth_strikes_again_1_074:
	.byte	W12
	.byte		N12   , Gs1 , v108
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Fs1 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 075   ----------------------------------------
mus_bigmouth_strikes_again_1_075:
	.byte		N23   , Gs0 , v108
	.byte	W24
	.byte		N12   , Gs1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		N12   , An0 
	.byte	W12
	.byte	PEND
@ 076   ----------------------------------------
	.byte	W12
	.byte		        An1 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   , Bn0 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_073
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_074
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_075
@ 080   ----------------------------------------
	.byte	W12
	.byte		N11   , An1 , v108
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_012
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_016
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_012
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_016
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_012
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_016
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_009
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_010
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_1_011
@ 108   ----------------------------------------
	.byte	W12
	.byte		N11   , Cs1 , v108
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N23   , Bn0 
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
	.byte	GOTO
	 .word	mus_bigmouth_strikes_again_1_B1
mus_bigmouth_strikes_again_1_B2:
@ 109   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_bigmouth_strikes_again_2:
	.byte	KEYSH , mus_bigmouth_strikes_again_key+0
mus_bigmouth_strikes_again_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 62*mus_bigmouth_strikes_again_mvl/mxv
	.byte		PAN   , c_v-14
	.byte		N11   , Cs3 , v068
	.byte	W12
	.byte		N05   , En3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , En3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , En3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 001   ----------------------------------------
mus_bigmouth_strikes_again_2_001:
	.byte		N05   , En3 , v068
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_bigmouth_strikes_again_2_002:
	.byte		N11   , Cs3 , v068
	.byte	W12
	.byte		N05   , En3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , En3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_bigmouth_strikes_again_2_003:
	.byte		N05   , En3 , v068
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N09   , Cs3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
mus_bigmouth_strikes_again_2_004:
	.byte		N11   , Cs3 , v068
	.byte	W12
	.byte		N05   , En3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , En3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , En3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_002
@ 031   ----------------------------------------
	.byte		N05   , En3 , v068
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N09   , Cs3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N17   , Bn2 
	.byte	W18
@ 032   ----------------------------------------
mus_bigmouth_strikes_again_2_032:
	.byte		N11   , En3 , v072
	.byte	W12
	.byte		        Gs3 , v068
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N05   , Cs2 , v072
	.byte	W06
	.byte		N11   , Cs3 , v068
	.byte	W12
	.byte		N05   , Cs2 , v072
	.byte	W06
	.byte		        Cs3 , v068
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
mus_bigmouth_strikes_again_2_033:
	.byte		N11   , Cs2 , v072
	.byte	W12
	.byte		        Gs3 , v068
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N05   , Cs2 , v072
	.byte	W06
	.byte		N11   , Cs3 , v068
	.byte	W12
	.byte		N05   , Cs2 , v072
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_bigmouth_strikes_again_2_034:
	.byte		N11   , En3 , v072
	.byte	W12
	.byte		        Gs3 , v068
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N05   , Cs2 , v072
	.byte	W06
	.byte		N11   , Cs3 , v068
	.byte	W12
	.byte		N05   , Cs2 , v072
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs2 , v068
	.byte	W06
	.byte		N11   , Fs3 , v072
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
mus_bigmouth_strikes_again_2_035:
	.byte		N11   , An2 , v068
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En3 , v072
	.byte	W12
	.byte		N05   , Fs2 
	.byte	W06
	.byte		N11   , Ds3 , v068
	.byte	W12
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_032
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_033
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_034
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_035
@ 040   ----------------------------------------
	.byte		N11   , En3 , v072
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N05   , Cs2 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        Cs3 , v068
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N11   , Bn2 , v072
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 041   ----------------------------------------
	.byte		        Cs2 , v068
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N05   , Cs2 , v072
	.byte	W06
	.byte		N11   , Cs3 , v068
	.byte	W12
	.byte		N05   , Cs2 , v072
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cs2 , v068
	.byte	W06
	.byte		N11   , Bn3 , v072
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 042   ----------------------------------------
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N05   , Cs2 
	.byte	W06
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N05   , Cs2 , v068
	.byte	W06
	.byte		        Gs3 , v072
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_032
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_033
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_034
@ 047   ----------------------------------------
	.byte		N11   , An2 , v068
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En3 , v072
	.byte	W12
	.byte		N05   , Fs2 
	.byte	W06
	.byte		N11   , Ds3 , v068
	.byte	W12
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N11   , En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 048   ----------------------------------------
mus_bigmouth_strikes_again_2_048:
	.byte		N23   , Cs3 , v068
	.byte	W24
	.byte		N32   , Cs3 , v072, gtp3
	.byte	W36
	.byte		N11   , Gs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte	PEND
@ 049   ----------------------------------------
mus_bigmouth_strikes_again_2_049:
	.byte	W12
	.byte		N11   , As2 , v072
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs2 , v068
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
mus_bigmouth_strikes_again_2_050:
	.byte		N23   , Cs3 , v068
	.byte	W24
	.byte		N32   , Cs3 , v072, gtp3
	.byte	W36
	.byte		N11   , Gs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
mus_bigmouth_strikes_again_2_051:
	.byte	W12
	.byte		N11   , En3 , v072
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_048
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_049
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_050
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_051
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_048
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_049
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_050
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_051
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_048
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_049
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_050
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_051
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_048
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_049
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_050
@ 067   ----------------------------------------
mus_bigmouth_strikes_again_2_067:
	.byte	W12
	.byte		N11   , En3 , v072
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte	PEND
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_048
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_049
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_050
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_051
@ 072   ----------------------------------------
mus_bigmouth_strikes_again_2_072:
	.byte		N72   , Bn2 , v068
	.byte	W84
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 073   ----------------------------------------
	.byte	W48
	.byte		N23   , Fs3 
	.byte	W24
	.byte		N23   
	.byte	W24
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_072
@ 075   ----------------------------------------
	.byte	W36
	.byte		N48   , Bn2 , v068
	.byte	W60
@ 076   ----------------------------------------
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 077   ----------------------------------------
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
@ 078   ----------------------------------------
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 079   ----------------------------------------
	.byte		N05   , En3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N09   , Cs3 
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_048
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_049
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_050
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_051
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_048
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_049
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_050
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_051
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_048
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_049
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_050
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_051
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_048
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_049
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_050
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_051
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_048
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_049
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_050
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_067
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_048
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_049
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_050
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_067
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_048
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_049
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_2_050
@ 107   ----------------------------------------
	.byte	W12
	.byte		N11   , En3 , v072
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N12   , Fs2 
	.byte	W12
	.byte	GOTO
	 .word	mus_bigmouth_strikes_again_2_B1
mus_bigmouth_strikes_again_2_B2:
@ 108   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_bigmouth_strikes_again_3:
	.byte	KEYSH , mus_bigmouth_strikes_again_key+0
mus_bigmouth_strikes_again_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 108*mus_bigmouth_strikes_again_mvl/mxv
	.byte		PAN   , c_v+14
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
mus_bigmouth_strikes_again_3_008:
	.byte		N12   , Bn3 , v108
	.byte	W24
	.byte		N48   , Gs3 
	.byte	W60
	.byte		N12   , Bn3 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_bigmouth_strikes_again_3_009:
	.byte	W12
	.byte		N23   , Gs3 , v108
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_bigmouth_strikes_again_3_010:
	.byte		N23   , Bn3 , v108
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N23   , Fs3 
	.byte	W24
	.byte		N12   , Gs3 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_bigmouth_strikes_again_3_011:
	.byte	W12
	.byte		N23   , Gs3 , v108
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N24   , Gs3 
	.byte	W36
	.byte	PEND
@ 012   ----------------------------------------
mus_bigmouth_strikes_again_3_012:
	.byte		N23   , Gs3 , v108
	.byte	W24
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N23   , En3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		N12   , Fs3 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_bigmouth_strikes_again_3_013:
	.byte	W12
	.byte		N11   , En3 , v108
	.byte	W12
	.byte		N48   , Ds3 
	.byte	W72
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W12
	.byte		N11   , Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N23   , Bn3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_013
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
mus_bigmouth_strikes_again_3_023:
	.byte	W12
	.byte		N11   , Bn3 , v108
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_bigmouth_strikes_again_3_024:
	.byte		N23   , Cs4 , v108
	.byte	W24
	.byte		N48   , Bn3 
	.byte	W60
	.byte		N12   , Cs4 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_bigmouth_strikes_again_3_025:
	.byte	W12
	.byte		N23   , Bn3 , v108
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_bigmouth_strikes_again_3_026:
	.byte		N23   , Ds4 , v108
	.byte	W24
	.byte		N48   , Cs4 
	.byte	W72
	.byte	PEND
@ 027   ----------------------------------------
mus_bigmouth_strikes_again_3_027:
	.byte	W84
	.byte		N05   , En3 , v108
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 028   ----------------------------------------
mus_bigmouth_strikes_again_3_028:
	.byte		N23   , Gs3 , v108
	.byte	W24
	.byte		N32   , Gs3 , v108, gtp3
	.byte	W36
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N11   , En3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   , Gs3 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_bigmouth_strikes_again_3_029:
	.byte		N23   , Gs3 , v108
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
mus_bigmouth_strikes_again_3_030:
	.byte		N11   , Gs3 , v108
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N36   , Cs3 
	.byte	W36
	.byte	PEND
@ 031   ----------------------------------------
	.byte	W48
	.byte		N05   , Fs3 , v104
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W24
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
	.byte		N23   , Bn3 , v096
	.byte	W24
	.byte		N48   
	.byte	W60
	.byte		N12   , Gs3 
	.byte	W12
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
mus_bigmouth_strikes_again_3_048:
	.byte		N23   , Ds4 , v108
	.byte	W24
	.byte		N32   , Cs4 , v108, gtp3
	.byte	W36
	.byte		N11   , En4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N12   , Gs3 
	.byte	W12
	.byte	PEND
@ 049   ----------------------------------------
mus_bigmouth_strikes_again_3_049:
	.byte	W12
	.byte		N11   , Bn3 , v108
	.byte	W12
	.byte		N48   , Gs3 
	.byte	W72
	.byte	PEND
@ 050   ----------------------------------------
mus_bigmouth_strikes_again_3_050:
	.byte		N23   , Ds4 , v108
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N17   , En4 
	.byte	W18
	.byte		N05   , Cs4 
	.byte	W06
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
mus_bigmouth_strikes_again_3_051:
	.byte	W48
	.byte		N11   , An3 , v108
	.byte	W12
	.byte		N24   
	.byte	W36
	.byte	PEND
@ 052   ----------------------------------------
mus_bigmouth_strikes_again_3_052:
	.byte		N17   , Gs3 , v108
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N32   , Gs3 , v108, gtp3
	.byte	W36
	.byte		N05   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N11   , En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
mus_bigmouth_strikes_again_3_053:
	.byte		N17   , Gs3 , v108
	.byte	W18
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N11   , En3 
	.byte	W12
	.byte		N23   , Gs3 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	PEND
@ 054   ----------------------------------------
mus_bigmouth_strikes_again_3_054:
	.byte		N11   , Gs3 , v108
	.byte	W12
	.byte		N23   , Cs4 
	.byte	W24
	.byte		N36   , Cs3 
	.byte	W48
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
mus_bigmouth_strikes_again_3_055:
	.byte	W12
	.byte		N23   , An3 , v108
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte	PEND
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_048
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_049
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_050
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_051
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_052
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_053
@ 062   ----------------------------------------
	.byte		N11   , Gs3 , v108
	.byte	W12
	.byte		N23   , Cs4 
	.byte	W24
	.byte		N36   , Cs3 
	.byte	W60
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_023
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_024
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_025
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_026
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_027
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_028
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_029
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_030
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_048
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_049
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_050
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_051
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_052
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_053
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_054
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_055
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_048
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_049
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_050
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_051
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_052
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_053
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_054
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_055
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_3_026
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_bigmouth_strikes_again_3_B1
mus_bigmouth_strikes_again_3_B2:
@ 108   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_bigmouth_strikes_again_4:
	.byte	KEYSH , mus_bigmouth_strikes_again_key+0
mus_bigmouth_strikes_again_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 96*mus_bigmouth_strikes_again_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_bigmouth_strikes_again_4_004:
	.byte		N01   , Cn1 , v068
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_004
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_004
@ 007   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte	W24
	.byte		N01   
	.byte	W24
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 008   ----------------------------------------
mus_bigmouth_strikes_again_4_008:
	.byte		N01   , Cn1 , v064
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        As1 , v048
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
mus_bigmouth_strikes_again_4_009:
	.byte		N01   , Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        As1 , v048
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N01   , As1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
mus_bigmouth_strikes_again_4_010:
	.byte		N01   , Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        As1 , v048
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
mus_bigmouth_strikes_again_4_011:
	.byte		N01   , Fs1 , v064
	.byte	W06
	.byte		        As1 , v048
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N01   , As1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        As1 , v048
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N01   , As1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_010
@ 015   ----------------------------------------
mus_bigmouth_strikes_again_4_015:
	.byte		N01   , Fs1 , v064
	.byte	W06
	.byte		        As1 , v048
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N01   , As1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v048
	.byte		N01   , As1 
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte	PEND
@ 016   ----------------------------------------
mus_bigmouth_strikes_again_4_016:
	.byte		N01   , Cn1 , v064
	.byte		N01   , An2 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        As1 , v048
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_015
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 025   ----------------------------------------
	.byte		N01   , Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v048
	.byte		N01   , As1 
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_016
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_010
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_011
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 031   ----------------------------------------
	.byte		N01   , Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        As1 , v048
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N01   , As1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte		        Dn1 , v056
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_009
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_010
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_015
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_016
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_010
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_009
@ 046   ----------------------------------------
	.byte		N01   , Cn1 , v064
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v048
	.byte		N01   , As1 
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        As1 , v048
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Dn1 , v048
	.byte		N01   , As1 
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Cn1 , v056
	.byte		N01   , As1 
	.byte	W06
	.byte		        As1 , v076
	.byte	W06
@ 047   ----------------------------------------
	.byte		        As1 , v056
	.byte	W06
	.byte		        As1 , v076
	.byte	W06
	.byte		        Cn1 , v056
	.byte		N01   , As1 
	.byte	W06
	.byte		        As1 , v076
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , As1 
	.byte	W06
	.byte		        As1 , v084
	.byte	W06
	.byte		        As1 , v064
	.byte	W06
	.byte		        As1 , v084
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , As1 
	.byte	W06
	.byte		        As1 , v084
	.byte	W06
	.byte		        Dn1 , v068
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_015
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_016
@ 051   ----------------------------------------
mus_bigmouth_strikes_again_4_051:
	.byte		N01   , Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        As1 , v048
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N01   , As1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v068
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte	PEND
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_009
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_010
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_015
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_015
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_016
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_051
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_009
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_010
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_015
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_016
@ 065   ----------------------------------------
	.byte		N01   , Fs1 , v064
	.byte	W06
	.byte		        As1 , v048
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N01   , As1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v048
	.byte		N01   , As1 
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        As1 , v048
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_016
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_009
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_011
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_010
@ 071   ----------------------------------------
	.byte		N01   , Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        As1 , v048
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N01   , As1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        As1 , v048
	.byte	W06
	.byte		        As1 , v068
	.byte	W06
@ 072   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , An2 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 073   ----------------------------------------
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , An2 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 074   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , An2 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , An2 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 075   ----------------------------------------
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_016
@ 077   ----------------------------------------
	.byte		N01   , Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        As1 , v048
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N01   , As1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , An2 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 079   ----------------------------------------
	.byte		N01   , Fs1 , v064
	.byte	W06
	.byte		        As1 , v048
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N01   , As1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        As1 , v048
	.byte	W06
	.byte		        Cn1 , v068
	.byte		N01   , As1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Fs1 , v056
	.byte	W06
	.byte		        Dn1 , v068
	.byte	W06
	.byte		N01   
	.byte	W06
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_016
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_015
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_016
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_051
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_009
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_010
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_015
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_015
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_016
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_051
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_009
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_010
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_015
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_016
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_015
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_016
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_009
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_011
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_009
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_011
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_008
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_bigmouth_strikes_again_4_009
	.byte	GOTO
	 .word	mus_bigmouth_strikes_again_4_B1
mus_bigmouth_strikes_again_4_B2:
@ 108   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_bigmouth_strikes_again:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_bigmouth_strikes_again_pri	@ Priority
	.byte	mus_bigmouth_strikes_again_rev	@ Reverb.

	.word	mus_bigmouth_strikes_again_grp

	.word	mus_bigmouth_strikes_again_1
	.word	mus_bigmouth_strikes_again_2
	.word	mus_bigmouth_strikes_again_3
	.word	mus_bigmouth_strikes_again_4

	.end
