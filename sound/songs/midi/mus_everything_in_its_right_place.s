	.include "MPlayDef.s"

	.equ	mus_everything_in_its_right_place_grp, voicegroup_everything_in_its_right_place
	.equ	mus_everything_in_its_right_place_pri, 0
	.equ	mus_everything_in_its_right_place_rev, reverb_set+50
	.equ	mus_everything_in_its_right_place_mvl, 100
	.equ	mus_everything_in_its_right_place_key, 0
	.equ	mus_everything_in_its_right_place_tbs, 1
	.equ	mus_everything_in_its_right_place_exg, 1
	.equ	mus_everything_in_its_right_place_cmp, 1

	.section .rodata
	.global	mus_everything_in_its_right_place
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_everything_in_its_right_place_1:
	.byte	KEYSH , mus_everything_in_its_right_place_key+0
mus_everything_in_its_right_place_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 124*mus_everything_in_its_right_place_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_everything_in_its_right_place_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W48
@ 002   ----------------------------------------
	.byte		N32   , Cn1 , v092, gtp3
	.byte	W36
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Cs1 
	.byte	W12
@ 003   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 004   ----------------------------------------
mus_everything_in_its_right_place_1_004:
	.byte		N11   , Fn1 , v092
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N23   , Fn1 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
mus_everything_in_its_right_place_1_005:
	.byte		N32   , Fn1 , v092, gtp3
	.byte	W36
	.byte		N23   , Cn1 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_everything_in_its_right_place_1_006:
	.byte	W12
	.byte		N23   , Cs1 , v092
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		N32   , Ds1 , v092, gtp3
	.byte	W36
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 045   ----------------------------------------
mus_everything_in_its_right_place_1_045:
	.byte	W12
	.byte		N23   , Cs1 , v092
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		N80   , Ds1 , v092, gtp3
	.byte	W36
	.byte	PEND
@ 046   ----------------------------------------
	.byte	W48
@ 047   ----------------------------------------
mus_everything_in_its_right_place_1_047:
	.byte		N11   , Cs1 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W12
	.byte	PEND
@ 048   ----------------------------------------
mus_everything_in_its_right_place_1_048:
	.byte	W12
	.byte		N23   , Cn1 , v092
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 049   ----------------------------------------
mus_everything_in_its_right_place_1_049:
	.byte	W12
	.byte		N32   , Cn1 , v092, gtp3
	.byte	W36
	.byte	PEND
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_047
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_048
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_049
@ 053   ----------------------------------------
mus_everything_in_its_right_place_1_053:
	.byte		N11   , Cn1 , v092
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_048
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_049
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_053
@ 057   ----------------------------------------
mus_everything_in_its_right_place_1_057:
	.byte	W12
	.byte		N23   , Cn1 , v092
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 058   ----------------------------------------
mus_everything_in_its_right_place_1_058:
	.byte	W12
	.byte		N32   , Fn1 , v092, gtp3
	.byte	W36
	.byte	PEND
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_045
@ 082   ----------------------------------------
	.byte	W48
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_047
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_048
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_049
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_047
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_048
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_049
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_047
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_048
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_049
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_047
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_048
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_049
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_047
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_048
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_049
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_047
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_048
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_049
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_047
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_048
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_049
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_047
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_057
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_058
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_005
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_006
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_1_004
@ 152   ----------------------------------------
	.byte		N92   , Fn1 , v092, gtp3
	.byte	W96
@ 153   ----------------------------------------
	.byte	W22
	.byte	GOTO
	 .word	mus_everything_in_its_right_place_1_B1
mus_everything_in_its_right_place_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_everything_in_its_right_place_2:
	.byte	KEYSH , mus_everything_in_its_right_place_key+0
mus_everything_in_its_right_place_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 46*mus_everything_in_its_right_place_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N11   , Cn3 , v052
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 001   ----------------------------------------
mus_everything_in_its_right_place_2_001:
	.byte		N32   , En2 , v052, gtp3
	.byte	W36
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Fn2 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_everything_in_its_right_place_2_002:
	.byte	W12
	.byte		N23   , Fn2 , v052
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_everything_in_its_right_place_2_003:
	.byte		N11   , Cn3 , v052
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 006   ----------------------------------------
mus_everything_in_its_right_place_2_006:
	.byte		N11   , Cn3 , v052
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_006
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_006
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_003
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 021   ----------------------------------------
mus_everything_in_its_right_place_2_021:
	.byte		N11   , Cn3 , v052
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_everything_in_its_right_place_2_022:
	.byte		N32   , An2 , v052, gtp3
	.byte	W36
	.byte		N23   , En2 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Fn2 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_021
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 027   ----------------------------------------
	.byte		N11   , Cn3 , v052
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Cn2 
	.byte	W12
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 030   ----------------------------------------
	.byte		N11   , Cn3 , v052
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N23   , Cn3 
	.byte	W24
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_006
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_006
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_006
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_006
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_003
@ 046   ----------------------------------------
mus_everything_in_its_right_place_2_046:
	.byte		N32   , Fn2 , v052, gtp3
	.byte	W36
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W12
	.byte	PEND
@ 047   ----------------------------------------
mus_everything_in_its_right_place_2_047:
	.byte	W12
	.byte		N23   , En2 , v052
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		N23   
	.byte	W12
	.byte	PEND
@ 048   ----------------------------------------
mus_everything_in_its_right_place_2_048:
	.byte	W12
	.byte		N32   , Gs2 , v052, gtp3
	.byte	W36
	.byte	PEND
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_046
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_047
@ 051   ----------------------------------------
mus_everything_in_its_right_place_2_051:
	.byte	W12
	.byte		N32   , Fn2 , v052, gtp3
	.byte	W36
	.byte	PEND
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_046
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_047
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_051
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_046
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_047
@ 057   ----------------------------------------
mus_everything_in_its_right_place_2_057:
	.byte	W12
	.byte		N32   , An2 , v052, gtp3
	.byte	W36
	.byte	PEND
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 060   ----------------------------------------
	.byte		N11   , Cn3 , v052
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 063   ----------------------------------------
	.byte		N23   , Cs3 , v052
	.byte	W24
	.byte		        Cn3 
	.byte	W24
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 066   ----------------------------------------
	.byte		N11   , Cs3 , v052
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_006
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_001
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_006
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_006
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_001
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_006
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_001
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_002
@ 081   ----------------------------------------
	.byte		N11   , Cn3 , v052
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_046
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_047
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_048
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_046
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_047
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_048
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_046
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_047
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_048
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_046
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_047
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_048
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_046
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_047
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_048
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_046
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_047
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_048
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_046
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_047
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_048
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_046
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_047
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_057
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 107   ----------------------------------------
	.byte	W12
	.byte		N23   , Fn2 , v052
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N44   , Gn2 , v052, gtp3
	.byte	W12
@ 108   ----------------------------------------
	.byte	W36
	.byte		N11   , Fn2 
	.byte	W12
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 110   ----------------------------------------
mus_everything_in_its_right_place_2_110:
	.byte	W12
	.byte		N23   , Fn2 , v052
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N44   , Cn2 , v052, gtp3
	.byte	W12
	.byte	PEND
@ 111   ----------------------------------------
	.byte	W36
	.byte		N11   , Fn2 
	.byte	W12
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 113   ----------------------------------------
mus_everything_in_its_right_place_2_113:
	.byte	W12
	.byte		N23   , Fn2 , v052
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		N56   , Gn2 , v052, gtp3
	.byte	W36
	.byte	PEND
@ 114   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn2 
	.byte	W24
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_113
@ 117   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn2 , v052
	.byte	W24
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 119   ----------------------------------------
mus_everything_in_its_right_place_2_119:
	.byte	W12
	.byte		N23   , Fn2 , v052
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		N68   , Gn2 , v052, gtp3
	.byte	W36
	.byte	PEND
@ 120   ----------------------------------------
	.byte	W36
	.byte		N11   , Fn2 
	.byte	W12
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_119
@ 123   ----------------------------------------
	.byte	W36
	.byte		N11   , Fn2 , v052
	.byte	W12
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_113
@ 126   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn2 , v052
	.byte	W24
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_113
@ 129   ----------------------------------------
	.byte	W24
	.byte		N11   , Fn2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_119
@ 132   ----------------------------------------
	.byte	W36
	.byte		N11   , Fn2 , v052
	.byte	W12
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_110
@ 135   ----------------------------------------
	.byte	W36
	.byte		N11   , Fn2 , v052
	.byte	W12
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 137   ----------------------------------------
	.byte	W12
	.byte		N23   , Fn2 , v052
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N32   , Gn2 , v052, gtp3
	.byte	W12
@ 138   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn2 
	.byte	W24
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_110
@ 141   ----------------------------------------
	.byte	W36
	.byte		N11   , Fn2 , v052
	.byte	W12
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_022
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_110
@ 144   ----------------------------------------
	.byte	W36
	.byte		N11   , Fn2 , v052
	.byte	W12
@ 145   ----------------------------------------
mus_everything_in_its_right_place_2_145:
	.byte		N32   , An2 , v052, gtp3
	.byte	W36
	.byte		N23   , Gn2 , v056
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Gs2 
	.byte	W12
	.byte	PEND
@ 146   ----------------------------------------
mus_everything_in_its_right_place_2_146:
	.byte	W12
	.byte		N23   , Gs2 , v056
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N32   , Cn2 , v052, gtp3
	.byte	W12
	.byte	PEND
@ 147   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn2 
	.byte	W24
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_145
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_2_146
@ 150   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn2 , v052
	.byte	W24
@ 151   ----------------------------------------
	.byte		TIE   , An2 
	.byte	W96
@ 152   ----------------------------------------
	.byte	W22
	.byte		EOT   
	.byte	GOTO
	 .word	mus_everything_in_its_right_place_2_B1
mus_everything_in_its_right_place_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_everything_in_its_right_place_3:
	.byte	KEYSH , mus_everything_in_its_right_place_key+0
mus_everything_in_its_right_place_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_everything_in_its_right_place_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N11   , Cn3 , v088
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 001   ----------------------------------------
mus_everything_in_its_right_place_3_001:
	.byte		N32   , Cn3 , v088, gtp3
	.byte	W36
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_everything_in_its_right_place_3_002:
	.byte	W12
	.byte		N23   , Cn3 , v088
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_everything_in_its_right_place_3_003:
	.byte		N11   , Cn3 , v088
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_002
@ 006   ----------------------------------------
	.byte		N11   , Cn3 , v088
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_002
@ 009   ----------------------------------------
mus_everything_in_its_right_place_3_009:
	.byte		N11   , Cn3 , v088
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_009
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_002
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_003
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_001
@ 020   ----------------------------------------
	.byte	W12
	.byte		N23   , Cn3 , v088
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   , Fn3 , v104
	.byte	W12
@ 021   ----------------------------------------
mus_everything_in_its_right_place_3_021:
	.byte		N11   , Cn3 , v104
	.byte	W12
	.byte		TIE   , Fn3 
	.byte	W36
	.byte	PEND
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W13
	.byte		N11   
	.byte	W12
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_021
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   , Fn3 
	.byte	W13
	.byte		N11   , Fn3 , v104
	.byte	W12
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_021
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   , Fn3 
	.byte	W13
	.byte		N11   , Fn3 , v104
	.byte	W12
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_021
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   , Fn3 
	.byte	W24
	.byte	W01
	.byte		N11   , Cn3 , v104
	.byte	W12
	.byte		N11   
	.byte	W12
@ 033   ----------------------------------------
	.byte		N44   , Cs3 , v104, gtp3
	.byte	W48
@ 034   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 035   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 036   ----------------------------------------
	.byte		N44   , Cs3 , v104, gtp3
	.byte	W48
@ 037   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 038   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 039   ----------------------------------------
	.byte		N44   , Cs3 , v104, gtp3
	.byte	W48
@ 040   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 041   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 042   ----------------------------------------
	.byte		N44   , Cs3 , v104, gtp3
	.byte	W48
@ 043   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 044   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W48
	.byte	W01
@ 045   ----------------------------------------
	.byte	W48
@ 046   ----------------------------------------
mus_everything_in_its_right_place_3_046:
	.byte		N11   , As2 , v104
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W12
	.byte	PEND
@ 047   ----------------------------------------
mus_everything_in_its_right_place_3_047:
	.byte	W12
	.byte		N23   , Cn3 , v104
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W12
	.byte	PEND
@ 048   ----------------------------------------
mus_everything_in_its_right_place_3_048:
	.byte	W12
	.byte		N32   , Cn3 , v104, gtp3
	.byte	W36
	.byte	PEND
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_046
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_047
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_048
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_046
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_047
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_048
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_046
@ 056   ----------------------------------------
	.byte	W12
	.byte		N23   , Cn3 , v104
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W12
@ 057   ----------------------------------------
mus_everything_in_its_right_place_3_057:
	.byte	W12
	.byte		TIE   , Fn3 , v104
	.byte	W36
	.byte	PEND
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W36
	.byte	W01
	.byte		N11   
	.byte	W12
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_021
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   , Fn3 
	.byte	W36
	.byte	W01
	.byte		N11   , Fn3 , v104
	.byte	W12
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_021
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   , Fn3 
	.byte	W36
	.byte	W01
	.byte		N11   , Fn3 , v104
	.byte	W12
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_021
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   , Fn3 
	.byte	W24
	.byte	W01
	.byte		N11   , Cn3 , v104
	.byte	W12
	.byte		N11   
	.byte	W12
@ 069   ----------------------------------------
	.byte		N44   , Cs3 , v104, gtp3
	.byte	W48
@ 070   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 071   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 072   ----------------------------------------
	.byte		N44   , Cs3 , v104, gtp3
	.byte	W48
@ 073   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 074   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 075   ----------------------------------------
	.byte		N44   , Cs3 , v104, gtp3
	.byte	W48
@ 076   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 077   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 078   ----------------------------------------
	.byte		N44   , Cs3 , v104, gtp3
	.byte	W48
@ 079   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 080   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 081   ----------------------------------------
	.byte	W48
@ 082   ----------------------------------------
mus_everything_in_its_right_place_3_082:
	.byte		N44   , Cn3 , v104, gtp3
	.byte	W48
	.byte		N32   , Cn3 , v104, gtp3
	.byte	W36
	.byte		N23   
	.byte	W12
	.byte	PEND
@ 083   ----------------------------------------
mus_everything_in_its_right_place_3_083:
	.byte	W12
	.byte		N23   , Cn3 , v104
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		        Cs3 
	.byte	W12
	.byte	PEND
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_048
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_082
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_083
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_048
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_082
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_083
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_048
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_082
@ 092   ----------------------------------------
	.byte	W12
	.byte		N23   , Cn3 , v104
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N32   , Ds3 , v104, gtp3
	.byte	W36
@ 093   ----------------------------------------
	.byte		N11   , Cs3 
	.byte	W12
	.byte		TIE   , Cn3 
	.byte	W36
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W01
	.byte		EOT   
	.byte	W56
	.byte	W03
	.byte		N23   , Ds3 
	.byte	W24
	.byte		        Cs3 
	.byte	W12
@ 096   ----------------------------------------
mus_everything_in_its_right_place_3_096:
	.byte	W12
	.byte		TIE   , Cn3 , v104
	.byte	W36
	.byte	PEND
@ 097   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 098   ----------------------------------------
mus_everything_in_its_right_place_3_098:
	.byte	W60
	.byte		N23   , Ds3 , v104
	.byte	W24
	.byte		        Cs3 
	.byte	W12
	.byte	PEND
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_096
@ 100   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , Cn3 
	.byte	W01
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_098
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_096
@ 103   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , Cn3 
	.byte	W01
@ 104   ----------------------------------------
	.byte	W60
	.byte		N23   , Ds3 , v104
	.byte	W24
	.byte		        Fn3 
	.byte	W12
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_057
@ 106   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , Fn3 
	.byte	W01
@ 107   ----------------------------------------
	.byte	W96
@ 108   ----------------------------------------
	.byte	W48
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W48
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	W48
@ 115   ----------------------------------------
	.byte	W96
@ 116   ----------------------------------------
	.byte	W96
@ 117   ----------------------------------------
	.byte	W48
@ 118   ----------------------------------------
	.byte	W96
@ 119   ----------------------------------------
	.byte	W96
@ 120   ----------------------------------------
	.byte	W48
@ 121   ----------------------------------------
	.byte	W96
@ 122   ----------------------------------------
	.byte	W96
@ 123   ----------------------------------------
	.byte	W48
@ 124   ----------------------------------------
	.byte	W96
@ 125   ----------------------------------------
	.byte	W96
@ 126   ----------------------------------------
	.byte	W48
@ 127   ----------------------------------------
	.byte	W96
@ 128   ----------------------------------------
	.byte	W96
@ 129   ----------------------------------------
	.byte	W48
@ 130   ----------------------------------------
	.byte		N11   , Fn3 , v104
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N68   , Fn3 , v104, gtp3
	.byte	W72
@ 131   ----------------------------------------
	.byte	W96
@ 132   ----------------------------------------
	.byte	W48
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte	W84
	.byte		N11   
	.byte	W12
@ 135   ----------------------------------------
	.byte		        Cn3 
	.byte	W12
	.byte		N32   , Fn3 , v104, gtp3
	.byte	W36
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte	W96
@ 138   ----------------------------------------
	.byte	W48
@ 139   ----------------------------------------
	.byte	W96
@ 140   ----------------------------------------
	.byte	W84
	.byte		N11   
	.byte	W12
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_everything_in_its_right_place_3_021
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , Fn3 
	.byte	W01
@ 144   ----------------------------------------
	.byte	W48
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W48
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	W96
@ 150   ----------------------------------------
	.byte	W48
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	W22
	.byte	GOTO
	 .word	mus_everything_in_its_right_place_3_B1
mus_everything_in_its_right_place_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_everything_in_its_right_place:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_everything_in_its_right_place_pri	@ Priority
	.byte	mus_everything_in_its_right_place_rev	@ Reverb.

	.word	mus_everything_in_its_right_place_grp

	.word	mus_everything_in_its_right_place_1
	.word	mus_everything_in_its_right_place_2
	.word	mus_everything_in_its_right_place_3

	.end
