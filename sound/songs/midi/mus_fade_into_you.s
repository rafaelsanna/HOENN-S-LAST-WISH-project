	.include "MPlayDef.s"

	.equ	mus_fade_into_you_grp, voicegroup_fade_into_you
	.equ	mus_fade_into_you_pri, 0
	.equ	mus_fade_into_you_rev, reverb_set+50
	.equ	mus_fade_into_you_mvl, 100
	.equ	mus_fade_into_you_key, 0
	.equ	mus_fade_into_you_tbs, 1
	.equ	mus_fade_into_you_exg, 1
	.equ	mus_fade_into_you_cmp, 1

	.section .rodata
	.global	mus_fade_into_you
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_fade_into_you_1:
	.byte	KEYSH , mus_fade_into_you_key+0
mus_fade_into_you_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 157*mus_fade_into_you_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 122*mus_fade_into_you_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N92   , An0 , v120, gtp3
	.byte	W96
	.byte		N23   
	.byte	W24
	.byte		        Gs0 
	.byte	W24
@ 001   ----------------------------------------
mus_fade_into_you_1_001:
	.byte		N92   , En1 , v120, gtp3
	.byte	W96
	.byte		N23   
	.byte	W24
	.byte		        Gs0 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
mus_fade_into_you_1_002:
	.byte		N92   , Bn0 , v120, gtp3
	.byte	W96
	.byte		N23   
	.byte	W24
	.byte		        An0 
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
mus_fade_into_you_1_003:
	.byte		N68   , Bn0 , v120, gtp3
	.byte	W72
	.byte		N23   , Cs1 
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		        Gs0 
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
mus_fade_into_you_1_004:
	.byte		N92   , An0 , v120, gtp3
	.byte	W96
	.byte		N23   
	.byte	W24
	.byte		        Gs0 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 051   ----------------------------------------
mus_fade_into_you_1_051:
	.byte		N68   , Dn1 , v120, gtp3
	.byte	W72
	.byte		N23   
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte	PEND
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_051
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_051
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_051
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_003
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_004
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_001
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_1_002
@ 123   ----------------------------------------
	.byte		N68   , Bn0 , v120, gtp3
	.byte	W72
	.byte		N23   , Cs1 
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		N24   , Gs0 
	.byte	W24
	.byte	GOTO
	 .word	mus_fade_into_you_1_B1
mus_fade_into_you_1_B2:
@ 124   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_fade_into_you_2:
	.byte	KEYSH , mus_fade_into_you_key+0
mus_fade_into_you_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 42*mus_fade_into_you_mvl/mxv
	.byte		PAN   , c_v-14
	.byte		N23   , An2 , v068
	.byte	W24
	.byte		N11   , An2 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , An2 , v068
	.byte	W24
	.byte		N11   , An2 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 001   ----------------------------------------
mus_fade_into_you_2_001:
	.byte		N23   , Gs2 , v068
	.byte	W24
	.byte		N11   , Gs2 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Gs2 , v068
	.byte	W24
	.byte		N11   , Gs2 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_fade_into_you_2_002:
	.byte		N23   , Bn2 , v068
	.byte	W24
	.byte		N11   , Bn2 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Bn2 , v068
	.byte	W24
	.byte		N11   , Bn2 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 004   ----------------------------------------
mus_fade_into_you_2_004:
	.byte		N23   , An2 , v068
	.byte	W24
	.byte		N11   , An2 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , An2 , v068
	.byte	W24
	.byte		N11   , An2 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 051   ----------------------------------------
mus_fade_into_you_2_051:
	.byte		N23   , Dn3 , v068
	.byte	W24
	.byte		N11   , Dn3 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Dn3 , v068
	.byte	W24
	.byte		N11   , Dn3 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_051
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_051
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_051
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_051
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_004
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_001
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_2_002
@ 123   ----------------------------------------
	.byte		N23   , Bn2 , v068
	.byte	W24
	.byte		N11   , Bn2 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Bn2 , v068
	.byte	W24
	.byte		N11   , Bn2 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	GOTO
	 .word	mus_fade_into_you_2_B1
mus_fade_into_you_2_B2:
@ 124   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_fade_into_you_3:
	.byte	KEYSH , mus_fade_into_you_key+0
mus_fade_into_you_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 92*mus_fade_into_you_mvl/mxv
	.byte		PAN   , c_v+14
	.byte	W96
	.byte	W48
@ 001   ----------------------------------------
	.byte	W96
	.byte	W48
@ 002   ----------------------------------------
	.byte	W96
	.byte	W48
@ 003   ----------------------------------------
	.byte	W96
	.byte	W48
@ 004   ----------------------------------------
mus_fade_into_you_3_004:
	.byte		N96   , Bn3 , v088
	.byte	W96
	.byte	W48
	.byte	PEND
@ 005   ----------------------------------------
mus_fade_into_you_3_005:
	.byte		N96   , Fs3 , v088
	.byte	W96
	.byte	W48
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_005
@ 007   ----------------------------------------
	.byte	W96
	.byte	W48
@ 008   ----------------------------------------
mus_fade_into_you_3_008:
	.byte		N96   , Bn3 , v088
	.byte	W96
	.byte	W12
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_fade_into_you_3_009:
	.byte		N44   , Fs3 , v088, gtp3
	.byte	W48
	.byte		N23   , An2 
	.byte	W24
	.byte		N44   , Bn2 , v088, gtp3
	.byte	W48
	.byte		N23   , Cs3 
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_fade_into_you_3_010:
	.byte		N23   , Fs3 , v088
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		N24   
	.byte	W96
	.byte	PEND
@ 011   ----------------------------------------
	.byte	W96
	.byte	W48
@ 012   ----------------------------------------
mus_fade_into_you_3_012:
	.byte	W96
	.byte	W12
	.byte		N11   , Cs3 , v088
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_fade_into_you_3_013:
	.byte		N44   , Bn2 , v088, gtp3
	.byte	W48
	.byte		N23   , An2 
	.byte	W24
	.byte		N40   , Bn2 , v088, gtp1
	.byte	W42
	.byte		N52   , Cs3 , v088, gtp1
	.byte	W30
	.byte	PEND
@ 014   ----------------------------------------
mus_fade_into_you_3_014:
	.byte	W24
	.byte		N48   , An2 , v088
	.byte	W96
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
	.byte	W96
	.byte	W48
@ 016   ----------------------------------------
mus_fade_into_you_3_016:
	.byte		N96   , Dn3 , v088
	.byte	W96
	.byte	W12
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte		N44   , Fs3 , v088, gtp3
	.byte	W48
	.byte		N23   , An2 
	.byte	W24
	.byte		N24   , Bn2 , v088, gtp2
	.byte	W24
	.byte	W03
	.byte		N44   , Cs3 
	.byte	W44
	.byte	W01
@ 018   ----------------------------------------
mus_fade_into_you_3_018:
	.byte		N23   , Fs3 , v088
	.byte	W24
	.byte		N48   , An2 
	.byte	W96
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte	W96
	.byte	W48
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_008
@ 021   ----------------------------------------
	.byte		N44   , Fs3 , v088, gtp3
	.byte	W48
	.byte		N23   , An2 
	.byte	W24
	.byte		N32   , Bn2 , v088, gtp3
	.byte	W36
	.byte		        Cs3 , v088, gtp3
	.byte	W36
@ 022   ----------------------------------------
	.byte		N23   , Fs3 
	.byte	W24
	.byte		N48   , An2 
	.byte	W72
	.byte		N44   , Fs3 , v088, gtp3
	.byte	W48
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_005
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_016
@ 025   ----------------------------------------
	.byte		N44   , Fs3 , v088, gtp3
	.byte	W48
	.byte		N17   , An2 
	.byte	W18
	.byte		N32   , Bn2 , v088, gtp3
	.byte	W36
	.byte		N40   , Cs3 , v088, gtp1
	.byte	W42
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_010
@ 027   ----------------------------------------
	.byte	W96
	.byte	W48
@ 028   ----------------------------------------
mus_fade_into_you_3_028:
	.byte		N68   , Bn3 , v088, gtp3
	.byte	W72
	.byte		N23   , Cs4 
	.byte	W24
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte		N44   , Fs3 , v088, gtp3
	.byte	W48
	.byte		N23   , An2 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		N11   , Gs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N23   , Gs3 
	.byte	W24
@ 030   ----------------------------------------
	.byte		        Fs3 
	.byte	W24
	.byte		N48   , An2 
	.byte	W72
	.byte		N23   , Gs3 
	.byte	W24
	.byte		N23   
	.byte	W24
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_005
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_028
@ 033   ----------------------------------------
	.byte		N44   , Fs3 , v088, gtp3
	.byte	W48
	.byte		N23   , An2 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		N17   , Gs3 
	.byte	W18
	.byte		N05   , An2 
	.byte	W06
	.byte		N23   , Gs3 
	.byte	W24
@ 034   ----------------------------------------
	.byte		        Fs3 
	.byte	W24
	.byte		N24   , Bn2 
	.byte	W96
	.byte	W24
@ 035   ----------------------------------------
	.byte	W96
	.byte	W48
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_008
@ 037   ----------------------------------------
	.byte		N44   , Fs3 , v088, gtp3
	.byte	W48
	.byte		N23   , An2 
	.byte	W24
	.byte		N28   , Bn2 , v088, gtp1
	.byte	W30
	.byte		N40   , Cs3 , v088, gtp1
	.byte	W42
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_018
@ 039   ----------------------------------------
	.byte	W96
	.byte	W48
@ 040   ----------------------------------------
	.byte	W84
	.byte		TIE   , En3 , v088
	.byte	W60
@ 041   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N56   , Dn3 , v088, gtp3
	.byte	W48
@ 042   ----------------------------------------
mus_fade_into_you_3_042:
	.byte	W12
	.byte		N28   , Cs3 , v088, gtp1
	.byte	W30
	.byte		N48   , Bn2 
	.byte	W96
	.byte	W06
	.byte	PEND
@ 043   ----------------------------------------
	.byte	W96
	.byte	W48
@ 044   ----------------------------------------
	.byte	W84
	.byte		TIE   , En3 
	.byte	W60
@ 045   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N68   , Cs3 , v088, gtp3
	.byte	W24
@ 046   ----------------------------------------
mus_fade_into_you_3_046:
	.byte	W48
	.byte		N23   , An2 , v088
	.byte	W24
	.byte		N48   , Bn2 
	.byte	W72
	.byte	PEND
@ 047   ----------------------------------------
	.byte	W96
	.byte	W48
@ 048   ----------------------------------------
	.byte	W84
	.byte		TIE   , En3 
	.byte	W60
@ 049   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N56   , Dn3 , v088, gtp3
	.byte	W48
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_042
@ 051   ----------------------------------------
	.byte	W96
	.byte	W48
@ 052   ----------------------------------------
mus_fade_into_you_3_052:
	.byte	W84
	.byte		N11   , An2 , v088
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N68   , Bn2 , v088, gtp3
	.byte	W24
	.byte	PEND
@ 053   ----------------------------------------
mus_fade_into_you_3_053:
	.byte	W48
	.byte		N23   , Gs2 , v088
	.byte	W24
	.byte		N52   , An2 , v088, gtp1
	.byte	W54
	.byte		N17   , Gs2 
	.byte	W18
	.byte	PEND
@ 054   ----------------------------------------
mus_fade_into_you_3_054:
	.byte		N24   , An2 , v088
	.byte	W96
	.byte	W48
	.byte	PEND
@ 055   ----------------------------------------
	.byte	W96
	.byte	W48
@ 056   ----------------------------------------
mus_fade_into_you_3_056:
	.byte		N44   , Fs3 , v088, gtp3
	.byte	W48
	.byte		        Cs4 , v088, gtp3
	.byte	W48
	.byte		N23   , An3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte	PEND
@ 057   ----------------------------------------
	.byte		N44   , En3 , v088, gtp3
	.byte	W48
	.byte		N68   , Gs3 , v088, gtp3
	.byte	W72
	.byte		N23   
	.byte	W24
@ 058   ----------------------------------------
mus_fade_into_you_3_058:
	.byte		N92   , Fs3 , v088, gtp3
	.byte	W96
	.byte		N23   , Gs3 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 059   ----------------------------------------
	.byte		N92   , Fs3 , v088, gtp3
	.byte	W96
	.byte		N23   , En3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_056
@ 061   ----------------------------------------
	.byte		N44   , En3 , v088, gtp3
	.byte	W48
	.byte		        Gs3 , v088, gtp3
	.byte	W48
	.byte		        En3 , v088, gtp3
	.byte	W48
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_058
@ 063   ----------------------------------------
	.byte		N92   , Fs3 , v088, gtp3
	.byte	W96
	.byte		N44   , Fs3 , v088, gtp3
	.byte	W48
@ 064   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
	.byte	W48
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_005
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_005
@ 067   ----------------------------------------
	.byte		N23   , En3 , v088
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
@ 068   ----------------------------------------
	.byte		N92   , Fs3 , v088, gtp3
	.byte	W96
	.byte		N23   , Cs4 
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_005
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_058
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_058
@ 072   ----------------------------------------
	.byte		N96   , En3 , v088
	.byte	W96
	.byte	W12
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 073   ----------------------------------------
	.byte		N44   , Bn2 , v088, gtp3
	.byte	W48
	.byte		N23   , An2 
	.byte	W24
	.byte		N32   , Bn2 , v088, gtp3
	.byte	W36
	.byte		N56   , Cs3 , v088, gtp3
	.byte	W36
@ 074   ----------------------------------------
	.byte	W24
	.byte		N23   , An2 
	.byte	W24
	.byte		N24   
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
	.byte	W48
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_012
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_013
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_014
@ 079   ----------------------------------------
	.byte	W96
	.byte	W48
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_016
@ 081   ----------------------------------------
	.byte		N44   , Fs3 , v088, gtp3
	.byte	W48
	.byte		N23   , An2 
	.byte	W24
	.byte		N32   , Bn2 , v088, gtp3
	.byte	W36
	.byte		        An2 , v088, gtp3
	.byte	W36
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_005
@ 083   ----------------------------------------
	.byte	W96
	.byte	W48
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_016
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_009
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_018
@ 087   ----------------------------------------
	.byte	W96
	.byte	W48
@ 088   ----------------------------------------
	.byte	W84
	.byte		TIE   , En3 , v088
	.byte	W60
@ 089   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N56   , Dn3 , v088, gtp3
	.byte	W48
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_042
@ 091   ----------------------------------------
	.byte	W96
	.byte	W48
@ 092   ----------------------------------------
	.byte	W84
	.byte		TIE   , En3 , v088
	.byte	W60
@ 093   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N68   , Cs3 , v088, gtp3
	.byte	W24
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_046
@ 095   ----------------------------------------
	.byte	W96
	.byte	W48
@ 096   ----------------------------------------
	.byte	W84
	.byte		TIE   , En3 , v088
	.byte	W60
@ 097   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N56   , Dn3 , v088, gtp3
	.byte	W48
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_042
@ 099   ----------------------------------------
	.byte	W96
	.byte	W48
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_052
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_053
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_054
@ 103   ----------------------------------------
	.byte	W96
	.byte	W48
@ 104   ----------------------------------------
	.byte	W84
	.byte		TIE   , En3 , v088
	.byte	W60
@ 105   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
	.byte		N56   , Dn3 , v088, gtp3
	.byte	W48
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_042
@ 107   ----------------------------------------
	.byte	W96
	.byte	W48
@ 108   ----------------------------------------
mus_fade_into_you_3_108:
	.byte		N80   , Bn3 , v088, gtp3
	.byte	W84
	.byte		N56   , En3 , v088, gtp3
	.byte	W60
	.byte	PEND
@ 109   ----------------------------------------
	.byte		N92   , An3 , v088, gtp3
	.byte	W96
	.byte		N23   , Dn3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
@ 110   ----------------------------------------
	.byte		N44   , Fs3 , v088, gtp3
	.byte	W48
	.byte		N23   , An2 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		N23   
	.byte	W24
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_005
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_108
@ 113   ----------------------------------------
	.byte		N92   , An3 , v088, gtp3
	.byte	W96
	.byte		N44   , Dn3 , v088, gtp3
	.byte	W48
@ 114   ----------------------------------------
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N28   , Cs3 , v088, gtp1
	.byte	W30
	.byte		N48   , Bn2 
	.byte	W96
	.byte	W06
@ 115   ----------------------------------------
	.byte	W96
	.byte	W48
@ 116   ----------------------------------------
	.byte		N80   , Bn3 , v088, gtp3
	.byte	W84
	.byte		N11   , An2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W24
@ 117   ----------------------------------------
	.byte		N44   , An3 , v088, gtp3
	.byte	W48
	.byte		N23   , Gs2 
	.byte	W24
	.byte		N52   , An2 , v088, gtp1
	.byte	W54
	.byte		N17   , Gs2 
	.byte	W18
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_005
@ 119   ----------------------------------------
	.byte	W96
	.byte	W48
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_004
@ 121   ----------------------------------------
	.byte		N96   , An3 , v088
	.byte	W96
	.byte	W48
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_3_005
@ 123   ----------------------------------------
	.byte	W96
	.byte	W48
	.byte	GOTO
	 .word	mus_fade_into_you_3_B1
mus_fade_into_you_3_B2:
@ 124   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_fade_into_you_4:
	.byte	KEYSH , mus_fade_into_you_key+0
mus_fade_into_you_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 82*mus_fade_into_you_mvl/mxv
	.byte	W96
	.byte	W48
@ 001   ----------------------------------------
	.byte	W96
	.byte	W48
@ 002   ----------------------------------------
	.byte	W96
	.byte	W48
@ 003   ----------------------------------------
	.byte	W96
	.byte	W48
@ 004   ----------------------------------------
mus_fade_into_you_4_004:
	.byte		N01   , Cn1 , v072
	.byte		N01   , An3 
	.byte	W48
	.byte		        Cn1 
	.byte	W24
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W01
	.byte		N01   
	.byte	W44
	.byte	W03
	.byte		        Cn1 
	.byte		N01   , An3 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 006   ----------------------------------------
mus_fade_into_you_4_006:
	.byte		N01   , Cn1 , v072
	.byte		N01   , An3 
	.byte	W48
	.byte		        Cn1 
	.byte	W24
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W01
	.byte		N01   
	.byte	W44
	.byte	W03
	.byte		        Cn1 
	.byte	W24
	.byte	PEND
@ 007   ----------------------------------------
mus_fade_into_you_4_007:
	.byte		N01   , Cn1 , v072
	.byte		N01   , An3 
	.byte	W72
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W01
	.byte		N01   
	.byte	W23
	.byte		        Cn1 
	.byte	W24
	.byte		N01   
	.byte		N01   , An3 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_006
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_007
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_007
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_006
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_007
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_007
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_006
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_007
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_006
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_006
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_007
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_006
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_007
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_006
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_007
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_006
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_007
@ 056   ----------------------------------------
mus_fade_into_you_4_056:
	.byte		N01   , Cn1 , v072
	.byte		N01   , An3 
	.byte	W12
	.byte		        Fs2 , v060
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N01   , Fs2 , v060
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 , v072
	.byte		N01   , Fs2 , v060
	.byte	W01
	.byte		        Fs2 , v072
	.byte	W11
	.byte		        Fs2 , v060
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N01   , An3 
	.byte	W12
	.byte		        Fs2 , v060
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_056
@ 058   ----------------------------------------
mus_fade_into_you_4_058:
	.byte		N01   , Cn1 , v072
	.byte		N01   , An3 
	.byte	W12
	.byte		        Fs2 , v060
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N01   , Fs2 , v060
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 , v072
	.byte		N01   , Fs2 , v060
	.byte	W01
	.byte		        Fs2 , v072
	.byte	W11
	.byte		        Fs2 , v060
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cn1 , v072
	.byte		N01   , Fs2 , v060
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_056
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_056
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_056
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_058
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_056
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_056
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_056
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_058
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_056
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_056
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_056
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_058
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_056
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_006
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_007
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_006
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_007
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_006
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_007
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_004
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_006
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_007
@ 088   ----------------------------------------
mus_fade_into_you_4_088:
	.byte		N01   , Cn1 , v072
	.byte		N01   , An3 
	.byte	W24
	.byte		        Fs2 , v060
	.byte	W24
	.byte		        Cn1 , v072
	.byte		N01   , Fs2 , v060
	.byte	W24
	.byte		        Dn1 , v072
	.byte		N01   , Fs2 , v060
	.byte	W01
	.byte		        Fs2 , v072
	.byte	W23
	.byte		        Fs2 , v060
	.byte	W24
	.byte		        Cn1 , v072
	.byte		N01   , An3 
	.byte	W24
	.byte	PEND
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_fade_into_you_4_088
	.byte	GOTO
	 .word	mus_fade_into_you_4_B1
mus_fade_into_you_4_B2:
@ 124   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_fade_into_you:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_fade_into_you_pri	@ Priority
	.byte	mus_fade_into_you_rev	@ Reverb.

	.word	mus_fade_into_you_grp

	.word	mus_fade_into_you_1
	.word	mus_fade_into_you_2
	.word	mus_fade_into_you_3
	.word	mus_fade_into_you_4

	.end
