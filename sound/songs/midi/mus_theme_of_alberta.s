	.include "MPlayDef.s"

	.equ	mus_theme_of_alberta_grp, voicegroup_theme_of_alberta
	.equ	mus_theme_of_alberta_pri, 0
	.equ	mus_theme_of_alberta_rev, reverb_set+50
	.equ	mus_theme_of_alberta_mvl, 100
	.equ	mus_theme_of_alberta_key, 0
	.equ	mus_theme_of_alberta_tbs, 1
	.equ	mus_theme_of_alberta_exg, 1
	.equ	mus_theme_of_alberta_cmp, 1

	.section .rodata
	.global	mus_theme_of_alberta
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_theme_of_alberta_1:
	.byte	KEYSH , mus_theme_of_alberta_key+0
mus_theme_of_alberta_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 120*mus_theme_of_alberta_tbs/2
	.byte	TEMPO , 210*mus_theme_of_alberta_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 125*mus_theme_of_alberta_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W12
	.byte	TEMPO , 215*mus_theme_of_alberta_tbs/2
	.byte	W12
	.byte	TEMPO , 220*mus_theme_of_alberta_tbs/2
	.byte	W12
	.byte	TEMPO , 230*mus_theme_of_alberta_tbs/2
	.byte	W12
	.byte	TEMPO , 240*mus_theme_of_alberta_tbs/2
	.byte	W12
	.byte	TEMPO , 245*mus_theme_of_alberta_tbs/2
	.byte	W12
@ 001   ----------------------------------------
	.byte	TEMPO , 250*mus_theme_of_alberta_tbs/2
	.byte	W24
	.byte	TEMPO , 240*mus_theme_of_alberta_tbs/2
	.byte	W24
	.byte	TEMPO , 200*mus_theme_of_alberta_tbs/2
	.byte	W24
@ 002   ----------------------------------------
	.byte	TEMPO , 180*mus_theme_of_alberta_tbs/2
	.byte	W72
	.byte	TEMPO , 165*mus_theme_of_alberta_tbs/2
	.byte	W24
@ 003   ----------------------------------------
	.byte	TEMPO , 150*mus_theme_of_alberta_tbs/2
	.byte	W60
	.byte	TEMPO , 140*mus_theme_of_alberta_tbs/2
	.byte	W12
	.byte	TEMPO , 135*mus_theme_of_alberta_tbs/2
	.byte	W24
@ 004   ----------------------------------------
	.byte	TEMPO , 235*mus_theme_of_alberta_tbs/2
	.byte	W96
	.byte	W24
@ 005   ----------------------------------------
	.byte	W72
@ 006   ----------------------------------------
	.byte	W36
	.byte		N48   , Gn1 , v127
	.byte	W60
@ 007   ----------------------------------------
	.byte	TEMPO , 160*mus_theme_of_alberta_tbs/2
	.byte		N32   , Cn1 , v127, gtp3
	.byte	W36
	.byte		N06   , Cn1 , v104
	.byte	W12
	.byte		N44   , Cn1 , v127, gtp3
	.byte	W48
@ 008   ----------------------------------------
mus_theme_of_alberta_1_008:
	.byte		N44   , Fn1 , v127, gtp3
	.byte	W48
	.byte		N32   , Fn1 , v127, gtp3
	.byte	W36
	.byte		N06   , Gn0 , v104
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_theme_of_alberta_1_009:
	.byte		N44   , Gn0 , v127, gtp3
	.byte	W48
	.byte		N32   , Gn1 , v127, gtp3
	.byte	W36
	.byte		N06   , Cn1 , v104
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_theme_of_alberta_1_010:
	.byte		N32   , Cn1 , v127, gtp3
	.byte	W36
	.byte		N06   , Cn1 , v104
	.byte	W12
	.byte		N44   , Cn1 , v127, gtp3
	.byte	W48
	.byte	PEND
@ 011   ----------------------------------------
mus_theme_of_alberta_1_011:
	.byte		N32   , Cn1 , v127, gtp3
	.byte	W36
	.byte		N06   , Cn1 , v104
	.byte	W12
	.byte		N23   , Cn1 , v127
	.byte	W24
	.byte		N11   , En1 , v120
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_009
@ 014   ----------------------------------------
mus_theme_of_alberta_1_014:
	.byte		N32   , Cn1 , v127, gtp3
	.byte	W36
	.byte		N06   , Cn1 , v104
	.byte	W12
	.byte		N44   , Cn2 , v127, gtp3
	.byte	W48
	.byte	PEND
@ 015   ----------------------------------------
mus_theme_of_alberta_1_015:
	.byte		N44   , Fn1 , v127, gtp3
	.byte	W48
	.byte		N32   , Fn1 , v127, gtp3
	.byte	W36
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_theme_of_alberta_1_016:
	.byte		N44   , En1 , v127, gtp3
	.byte	W48
	.byte		        En1 , v127, gtp3
	.byte	W48
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_015
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_015
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 021   ----------------------------------------
mus_theme_of_alberta_1_021:
	.byte		N32   , Gs0 , v127, gtp3
	.byte	W36
	.byte		N11   , Cn1 
	.byte	W12
	.byte		N23   , As0 
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_theme_of_alberta_1_022:
	.byte		N32   , Cn1 , v127, gtp3
	.byte	W36
	.byte		N11   , Cn1 , v112
	.byte	W12
	.byte		N44   , Cn1 , v127, gtp3
	.byte	W48
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_008
@ 025   ----------------------------------------
mus_theme_of_alberta_1_025:
	.byte		N32   , Gn0 , v127, gtp3
	.byte	W36
	.byte		N06   , Gn0 , v104
	.byte	W12
	.byte		N23   , Gn0 , v127
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_008
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 033   ----------------------------------------
mus_theme_of_alberta_1_033:
	.byte		N44   , Fn1 , v127, gtp3
	.byte	W48
	.byte		N23   
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 035   ----------------------------------------
mus_theme_of_alberta_1_035:
	.byte		N32   , Fn1 , v127, gtp3
	.byte	W36
	.byte		N11   , Cn1 
	.byte	W12
	.byte		N32   , Fn1 , v127, gtp3
	.byte	W36
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_021
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_022
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_011
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_008
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_009
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_014
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_015
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_015
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_015
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_021
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_022
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_008
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_008
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_025
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_015
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_033
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_035
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_021
@ 070   ----------------------------------------
mus_theme_of_alberta_1_070:
	.byte		N32   , Cn1 , v127, gtp3
	.byte	W36
	.byte		N11   , Cn1 , v112
	.byte	W12
	.byte		N48   , Cn1 , v127
	.byte	W48
	.byte	PEND
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W36
	.byte		N23   , En2 
	.byte	W24
	.byte		N11   , Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_011
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_008
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_009
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_014
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_015
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_015
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_015
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_021
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_022
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_008
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_025
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_008
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_025
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_015
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_033
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_035
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_021
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_022
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_008
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_009
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_011
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_008
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_009
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_014
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_015
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_015
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_015
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_021
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_022
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_008
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_025
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_008
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_025
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_010
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_015
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_033
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_035
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_016
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_021
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_1_070
	.byte	GOTO
	 .word	mus_theme_of_alberta_1_B1
mus_theme_of_alberta_1_B2:
@ 135   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_theme_of_alberta_2:
	.byte	KEYSH , mus_theme_of_alberta_key+0
mus_theme_of_alberta_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_theme_of_alberta_mvl/mxv
	.byte		PAN   , c_v-12
	.byte	W72
@ 001   ----------------------------------------
	.byte	W72
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
	.byte	W24
@ 005   ----------------------------------------
	.byte	W72
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
mus_theme_of_alberta_2_007:
	.byte		N11   , Cn2 , v056
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Cn2 , v056
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_theme_of_alberta_2_008:
	.byte		N11   , Fn2 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N11   , Fn2 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_theme_of_alberta_2_009:
	.byte		N11   , Gn2 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn3 , v064
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Gn2 , v056
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_007
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_009
@ 014   ----------------------------------------
mus_theme_of_alberta_2_014:
	.byte		N11   , Cn2 , v056
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gn2 , v076
	.byte	W12
	.byte		N05   , Cn2 , v056
	.byte	W06
	.byte		        Cn3 , v076
	.byte	W06
	.byte		N11   , Gn2 , v056
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_theme_of_alberta_2_015:
	.byte		N11   , Cn3 , v076
	.byte	W12
	.byte		        Fn2 , v056
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Fn2 , v056
	.byte	W12
	.byte		        Fn2 , v064
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_theme_of_alberta_2_016:
	.byte		N11   , En2 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , En2 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_theme_of_alberta_2_017:
	.byte		N11   , Fn2 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Fn2 , v056
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn3 , v064
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_theme_of_alberta_2_018:
	.byte		N11   , En2 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N13   , En3 , v076
	.byte	W18
	.byte		        Fn3 
	.byte	W18
	.byte		N11   , En3 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_theme_of_alberta_2_019:
	.byte		N11   , Cn3 , v076
	.byte	W12
	.byte		        Fn2 , v056
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Fn2 , v056
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn3 , v064
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_theme_of_alberta_2_020:
	.byte		N11   , En2 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		N48   , Gn3 
	.byte	W60
	.byte	PEND
@ 021   ----------------------------------------
mus_theme_of_alberta_2_021:
	.byte		N11   , Gs2 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Ds3 , v064
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , As2 , v056
	.byte	W12
	.byte		        Ds3 , v064
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_theme_of_alberta_2_022:
	.byte		N11   , Cn2 , v056
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W60
	.byte	PEND
@ 023   ----------------------------------------
mus_theme_of_alberta_2_023:
	.byte		N11   , Cn2 , v056
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 , v076
	.byte	W12
	.byte		N23   , Gn3 , v064
	.byte	W24
	.byte		N11   , Cn3 , v076
	.byte	W12
	.byte		        Gn2 , v056
	.byte	W12
	.byte		N10   , Dn3 , v076
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_theme_of_alberta_2_024:
	.byte		N11   , Fn2 , v056
	.byte	W12
	.byte		N10   , Cn3 , v072
	.byte	W12
	.byte		N11   , Cn3 , v064
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N11   , Fn2 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_007
@ 027   ----------------------------------------
mus_theme_of_alberta_2_027:
	.byte		N11   , Cn2 , v056
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 , v076
	.byte	W12
	.byte		N23   , Gn3 , v064
	.byte	W24
	.byte		N10   , Cn3 , v072
	.byte	W12
	.byte		N11   , Gn2 , v056
	.byte	W12
	.byte		N10   , Dn3 , v076
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_009
@ 030   ----------------------------------------
	.byte		N11   , Cn2 , v056
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Cn2 , v056
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N10   , Cn3 , v076
	.byte	W12
@ 031   ----------------------------------------
	.byte		N10   
	.byte	W12
	.byte		N05   , Fn2 , v056
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		N11   , Cn3 , v064
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Fn2 , v056
	.byte	W12
	.byte		        Fn2 , v064
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 032   ----------------------------------------
	.byte		        En2 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , En2 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N09   , Cn3 , v076
	.byte	W12
@ 033   ----------------------------------------
	.byte		N09   
	.byte	W12
	.byte		N05   , Fn2 , v056
	.byte	W06
	.byte		        An2 , v076
	.byte	W06
	.byte		N11   , Cn3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gn2 , v076
	.byte	W12
	.byte		N05   , Fn2 , v056
	.byte	W06
	.byte		        Gn2 , v076
	.byte	W06
	.byte		N11   , Cn3 , v056
	.byte	W12
	.byte		        Gn3 , v064
	.byte	W12
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_020
@ 035   ----------------------------------------
	.byte		N10   , Cn3 , v076
	.byte	W12
	.byte		N05   , Fn2 , v056
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		N11   , Cn3 , v064
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Fn2 , v056
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn3 , v064
	.byte	W12
@ 036   ----------------------------------------
	.byte		        En2 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		N44   , Gn3 , v064, gtp3
	.byte	W48
	.byte		N07   , Cn3 , v060
	.byte	W12
@ 037   ----------------------------------------
	.byte		N11   , Cn3 , v076
	.byte	W12
	.byte		N05   , Gs2 , v056
	.byte	W06
	.byte		        Gs2 , v072
	.byte	W06
	.byte		N11   , Ds3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn2 , v068
	.byte	W12
	.byte		N05   , As2 , v056
	.byte	W06
	.byte		        Gn2 , v072
	.byte	W06
	.byte		N11   , Ds3 , v064
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_022
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_007
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_007
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_008
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_009
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_014
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_015
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_019
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_020
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_021
@ 054   ----------------------------------------
mus_theme_of_alberta_2_054:
	.byte		N11   , Cn2 , v056
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W30
	.byte		N09   , Cn3 , v076
	.byte	W18
	.byte		N07   
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
mus_theme_of_alberta_2_055:
	.byte		N11   , Cn3 , v076
	.byte	W12
	.byte		        Gn2 , v056
	.byte	W12
	.byte		        Dn3 , v076
	.byte	W12
	.byte		N23   , Gn3 , v064
	.byte	W24
	.byte		N09   , Gn2 , v072
	.byte	W12
	.byte		N11   , Gn2 , v056
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte	PEND
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_008
@ 057   ----------------------------------------
mus_theme_of_alberta_2_057:
	.byte		N11   , Cn3 , v076
	.byte	W12
	.byte		        Gn2 , v056
	.byte	W12
	.byte		        Dn3 , v076
	.byte	W12
	.byte		N23   , Gn3 , v064
	.byte	W24
	.byte		N09   , Gn2 , v076
	.byte	W12
	.byte		N11   , Cn3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
@ 058   ----------------------------------------
mus_theme_of_alberta_2_058:
	.byte		N11   , Cn2 , v056
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Cn2 , v056
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N10   , Fn3 , v060
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
mus_theme_of_alberta_2_059:
	.byte		N11   , Fn3 , v068
	.byte	W12
	.byte		N05   , Gn2 , v056
	.byte	W06
	.byte		        En3 , v064
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N05   , Cn2 , v056
	.byte	W06
	.byte		        Bn2 , v064
	.byte	W06
	.byte		N11   , Gn2 , v056
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte	PEND
@ 060   ----------------------------------------
mus_theme_of_alberta_2_060:
	.byte		N11   , Cn3 , v064
	.byte	W12
	.byte		N05   , Fn2 , v056
	.byte	W06
	.byte		        Cn3 , v064
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N11   , Fn2 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_057
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_007
@ 063   ----------------------------------------
mus_theme_of_alberta_2_063:
	.byte		N11   , Fn2 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Fn2 , v056
	.byte	W12
	.byte		        Fn2 , v064
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
mus_theme_of_alberta_2_064:
	.byte		N11   , En2 , v056
	.byte	W12
	.byte		N09   , Cn3 , v076
	.byte	W12
	.byte		N11   , Cn3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 , v076
	.byte	W12
	.byte		        En2 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_017
@ 066   ----------------------------------------
mus_theme_of_alberta_2_066:
	.byte		N11   , Cn3 , v076
	.byte	W12
	.byte		N05   , En2 , v056
	.byte	W06
	.byte		        Cn3 , v076
	.byte	W06
	.byte		N11   , Cn3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N08   , En3 , v068
	.byte	W10
	.byte		N24   , Cn3 , v076
	.byte	W36
	.byte	W02
	.byte	PEND
@ 067   ----------------------------------------
mus_theme_of_alberta_2_067:
	.byte		N11   , En3 , v076
	.byte	W12
	.byte		N05   , Fn2 , v056
	.byte	W06
	.byte		        Cn3 , v068
	.byte	W06
	.byte		N11   , Cn3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 , v076
	.byte	W12
	.byte		N03   , Fn2 , v056
	.byte	W03
	.byte		N08   , An2 , v068
	.byte	W09
	.byte		N09   , Cn3 , v056
	.byte	W10
	.byte		N01   , An2 , v068
	.byte	W02
	.byte		N10   , Gn3 , v064
	.byte	W10
	.byte		N01   , An2 , v068
	.byte	W02
	.byte	PEND
@ 068   ----------------------------------------
mus_theme_of_alberta_2_068:
	.byte		N10   , En2 , v056
	.byte	W10
	.byte		N01   , Gn2 , v068
	.byte	W02
	.byte		N11   , En2 , v056
	.byte	W12
	.byte		N05   , Cn3 , v064
	.byte	W06
	.byte		        Gn2 , v068
	.byte	W06
	.byte		N48   , Gn3 , v064
	.byte	W60
	.byte	PEND
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_021
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_022
@ 071   ----------------------------------------
mus_theme_of_alberta_2_071:
	.byte		N11   , Cn2 , v056
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 , v076
	.byte	W12
	.byte		N23   , Gn3 , v064
	.byte	W24
	.byte		N11   , Cn2 , v056
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte	PEND
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_008
@ 073   ----------------------------------------
	.byte		N11   , Gn2 , v056
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 , v076
	.byte	W12
	.byte		        Gn2 , v056
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_007
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_071
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_008
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_009
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_014
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_015
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_016
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_017
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_018
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_019
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_021
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_022
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_023
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_024
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_009
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_007
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_027
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_024
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_009
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_007
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_063
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_016
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_017
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_020
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_017
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_020
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_021
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_022
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_007
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_008
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_009
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_007
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_007
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_008
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_009
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_014
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_015
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_016
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_017
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_018
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_019
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_020
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_021
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_054
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_055
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_008
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_057
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_058
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_059
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_060
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_057
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_007
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_063
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_064
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_017
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_066
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_067
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_068
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_021
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_2_022
	.byte	GOTO
	 .word	mus_theme_of_alberta_2_B1
mus_theme_of_alberta_2_B2:
@ 135   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_theme_of_alberta_3:
	.byte	KEYSH , mus_theme_of_alberta_key+0
mus_theme_of_alberta_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_theme_of_alberta_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N23   , Gn4 , v104
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        En4 
	.byte	W24
@ 001   ----------------------------------------
	.byte		        Dn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		N24   , Bn3 
	.byte	W24
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte		N11   , Gn3 , v100
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W60
	.byte		N05   , Cn4 , v104
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N23   
	.byte	W12
@ 005   ----------------------------------------
	.byte	W12
	.byte		        Bn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Gn3 
	.byte	W12
@ 006   ----------------------------------------
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N24   
	.byte	W60
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
mus_theme_of_alberta_3_008:
	.byte	W36
	.byte		N09   , Gn3 , v100
	.byte	W12
	.byte		N16   , Gn3 , v116
	.byte	W18
	.byte		        En3 , v108
	.byte	W18
	.byte		N10   , Fn3 , v104
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte	W48
	.byte		N17   , Fn4 , v108
	.byte	W18
	.byte		        En4 
	.byte	W18
	.byte		N11   , Dn4 
	.byte	W12
@ 010   ----------------------------------------
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N05   , Dn4 
	.byte	W06
	.byte		N06   , En4 
	.byte	W78
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W36
	.byte		N09   , Gn3 , v100
	.byte	W12
	.byte		N12   , Gn3 , v116
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N24   , Fn3 
	.byte	W12
@ 013   ----------------------------------------
	.byte	W30
	.byte		N02   , Gn4 , v108
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W06
	.byte		N17   , Fn4 
	.byte	W18
	.byte		        En4 
	.byte	W18
	.byte		N11   , Dn4 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N05   , Dn4 
	.byte	W06
	.byte		N06   , En4 
	.byte	W18
	.byte		N11   , Gn3 , v116
	.byte	W12
	.byte		N15   
	.byte	W18
	.byte		N13   , Cn4 
	.byte	W18
	.byte		N11   , Bn3 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N36   , Cn4 
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
mus_theme_of_alberta_3_018:
	.byte	W36
	.byte		N11   , Gn3 , v116
	.byte	W12
	.byte		N13   , Cn4 
	.byte	W18
	.byte		        Dn4 
	.byte	W18
	.byte		N11   , Cn4 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte		N36   , An3 
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
mus_theme_of_alberta_3_022:
	.byte	W48
	.byte		N23   , En3 , v108
	.byte	W24
	.byte		N03   , Fn3 , v104
	.byte	W04
	.byte		        En3 , v092
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte	PEND
@ 023   ----------------------------------------
mus_theme_of_alberta_3_023:
	.byte		N84   , Gn3 , v108, gtp1
	.byte	W84
	.byte	W01
	.byte		N09   , Dn4 
	.byte	W11
	.byte	PEND
@ 024   ----------------------------------------
mus_theme_of_alberta_3_024:
	.byte	W13
	.byte		N09   , Cn4 , v108
	.byte	W24
	.byte		        Gn3 
	.byte	W56
	.byte	W03
	.byte	PEND
@ 025   ----------------------------------------
mus_theme_of_alberta_3_025:
	.byte	W24
	.byte		N01   , Cn4 , v116
	.byte	W01
	.byte		N10   , Cn4 , v108
	.byte	W11
	.byte		N01   , Gn3 , v116
	.byte	W01
	.byte		N12   , Gn3 , v108
	.byte	W23
	.byte		N01   , Cn4 , v116
	.byte	W01
	.byte		N12   , Cn4 , v108
	.byte	W23
	.byte		N10   , Dn4 , v112
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_theme_of_alberta_3_026:
	.byte	W10
	.byte		N01   , Cn4 , v104
	.byte	W02
	.byte		N60   , En4 , v108, gtp2
	.byte	W60
	.byte	W03
	.byte		N02   , Dn4 , v104
	.byte	W03
	.byte		        Cn4 , v100
	.byte	W03
	.byte		        Bn3 , v096
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Gn3 , v092
	.byte	W03
	.byte		        Fn3 , v088
	.byte	W03
	.byte		N03   , En3 , v084
	.byte	W03
	.byte	PEND
@ 027   ----------------------------------------
mus_theme_of_alberta_3_027:
	.byte	W24
	.byte		N11   , Cn4 , v108
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_theme_of_alberta_3_028:
	.byte	W12
	.byte		N12   , Cn4 , v108
	.byte	W24
	.byte		N32   , Gn3 , v108, gtp3
	.byte	W36
	.byte		N06   , En3 
	.byte	W12
	.byte		N11   , Cn4 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_theme_of_alberta_3_029:
	.byte		N10   , Cn4 , v116
	.byte	W18
	.byte		N09   , Cn4 , v108
	.byte	W18
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W18
	.byte		        Bn3 
	.byte	W16
	.byte		N01   , Cn3 , v116
	.byte	W02
	.byte		N09   , Cn4 , v108
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
	.byte	W84
	.byte		N10   , Cn4 , v116
	.byte	W12
@ 031   ----------------------------------------
	.byte		N10   
	.byte	W18
	.byte		N11   , An3 
	.byte	W18
	.byte		        Gn3 
	.byte	W60
@ 032   ----------------------------------------
	.byte	W84
	.byte	W01
	.byte		N09   , Cn4 
	.byte	W11
@ 033   ----------------------------------------
	.byte	W01
	.byte		N09   
	.byte	W18
	.byte		N10   , An3 
	.byte	W18
	.byte		N09   , Gn3 
	.byte	W12
	.byte		N11   
	.byte	W18
	.byte		N08   
	.byte	W18
	.byte		N06   
	.byte	W11
@ 034   ----------------------------------------
	.byte	W36
	.byte		N23   , En4 , v120
	.byte	W24
	.byte		N05   , Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W12
@ 035   ----------------------------------------
	.byte	W01
	.byte		N10   , Cn4 , v116
	.byte	W18
	.byte		        An3 , v112
	.byte	W18
	.byte		        Gn3 , v100
	.byte	W56
	.byte	W03
@ 036   ----------------------------------------
	.byte	W84
	.byte		N07   , Cn4 , v092
	.byte	W12
@ 037   ----------------------------------------
	.byte		N12   , Cn4 , v116
	.byte	W18
	.byte		        Gs3 , v112
	.byte	W18
	.byte		N08   , Gn3 , v100
	.byte	W12
	.byte		N12   , Fn3 , v104
	.byte	W18
	.byte		        Gn3 , v112
	.byte	W18
	.byte		N08   
	.byte	W12
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_008
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W12
	.byte		N11   , En4 , v108
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N12   
	.byte	W18
	.byte		N17   , Bn4 
	.byte	W18
	.byte		N11   , Cn5 
	.byte	W12
@ 043   ----------------------------------------
	.byte		N23   
	.byte	W24
	.byte		N11   , Bn4 
	.byte	W12
	.byte		N12   , Cn5 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Fn4 
	.byte	W12
@ 044   ----------------------------------------
	.byte	W12
	.byte		        En4 
	.byte	W24
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N12   , Gn3 , v116
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N11   , Fn3 
	.byte	W12
@ 045   ----------------------------------------
	.byte		N32   , Cn4 , v108, gtp3
	.byte	W36
	.byte		N10   , Gn3 
	.byte	W12
	.byte		N11   , En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 046   ----------------------------------------
mus_theme_of_alberta_3_046:
	.byte	W36
	.byte		N11   , Gn3 , v116
	.byte	W12
	.byte		N15   
	.byte	W18
	.byte		N13   , Cn4 
	.byte	W18
	.byte		N11   , Bn3 
	.byte	W12
	.byte	PEND
@ 047   ----------------------------------------
mus_theme_of_alberta_3_047:
	.byte		N23   , Cn4 , v116
	.byte	W24
	.byte		N12   , Gn4 , v108
	.byte	W24
	.byte		        Cn5 
	.byte	W18
	.byte		        Bn4 
	.byte	W18
	.byte		N11   , Cn5 
	.byte	W12
	.byte	PEND
@ 048   ----------------------------------------
mus_theme_of_alberta_3_048:
	.byte		N12   , Gn4 , v108
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N12   
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 049   ----------------------------------------
mus_theme_of_alberta_3_049:
	.byte		N12   , Fn4 , v108
	.byte	W18
	.byte		        En4 
	.byte	W18
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N12   
	.byte	W18
	.byte		        En4 
	.byte	W18
	.byte		N11   , Fn4 
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
mus_theme_of_alberta_3_050:
	.byte		N12   , En4 , v108
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N11   , Gn3 , v116
	.byte	W12
	.byte		N13   , Cn4 
	.byte	W18
	.byte		        Dn4 
	.byte	W18
	.byte		N11   , Cn4 
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
mus_theme_of_alberta_3_051:
	.byte		N23   , An3 , v116
	.byte	W24
	.byte		N12   , Gn4 , v108
	.byte	W24
	.byte		        Cn5 
	.byte	W18
	.byte		        Bn4 
	.byte	W18
	.byte		N11   , Cn5 
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
mus_theme_of_alberta_3_052:
	.byte		N12   , Gn4 , v108
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N12   
	.byte	W48
	.byte	PEND
@ 053   ----------------------------------------
mus_theme_of_alberta_3_053:
	.byte		N12   , Gn4 , v108
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N12   
	.byte	W18
	.byte		        Dn4 
	.byte	W18
	.byte		N11   , Cn4 
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
mus_theme_of_alberta_3_054:
	.byte		N12   , Cn4 , v108
	.byte	W36
	.byte		N07   , Gn3 , v096
	.byte	W12
	.byte		N12   , An3 , v116
	.byte	W18
	.byte		N09   , Cn4 
	.byte	W18
	.byte		N07   
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
mus_theme_of_alberta_3_055:
	.byte		N23   , Cn4 , v116
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W24
	.byte		N09   , Gn3 , v108
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W12
	.byte	PEND
@ 056   ----------------------------------------
mus_theme_of_alberta_3_056:
	.byte	W24
	.byte		N11   , Dn4 , v108
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N07   , Cn4 
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
mus_theme_of_alberta_3_057:
	.byte		N23   , Cn4 , v116
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W24
	.byte		N09   , Gn3 
	.byte	W24
	.byte		N20   , Gn4 , v108
	.byte	W12
	.byte	PEND
@ 058   ----------------------------------------
mus_theme_of_alberta_3_058:
	.byte	W12
	.byte		N11   , Gn4 , v096
	.byte	W12
	.byte		        Dn4 , v108
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N12   , Gn4 
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
mus_theme_of_alberta_3_059:
	.byte		N11   , An3 , v104
	.byte	W18
	.byte		N12   , Gn3 , v100
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W18
	.byte		N12   , Dn3 
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 060   ----------------------------------------
mus_theme_of_alberta_3_060:
	.byte		N11   , En3 , v100
	.byte	W18
	.byte		N11   
	.byte	W66
	.byte		        Cn4 , v116
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
mus_theme_of_alberta_3_061:
	.byte		N23   , Cn4 , v116
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W24
	.byte		N09   , Gn3 
	.byte	W24
	.byte		N20   , Gn4 , v108
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
mus_theme_of_alberta_3_062:
	.byte	W12
	.byte		N23   , Gn4 , v096
	.byte	W24
	.byte		N05   , En4 , v108
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W18
	.byte		N08   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
mus_theme_of_alberta_3_063:
	.byte		N17   , Cn4 , v108
	.byte	W18
	.byte		N12   , Gn3 , v084
	.byte	W78
	.byte	PEND
@ 064   ----------------------------------------
mus_theme_of_alberta_3_064:
	.byte	W12
	.byte		N12   , Gn4 , v108
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , En4 
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
mus_theme_of_alberta_3_065:
	.byte		N11   , En4 , v108
	.byte	W12
	.byte		N12   , Gn3 , v076
	.byte	W72
	.byte		N09   , Cn4 , v104
	.byte	W12
	.byte	PEND
@ 066   ----------------------------------------
mus_theme_of_alberta_3_066:
	.byte		N11   , Cn4 , v116
	.byte	W12
	.byte		N05   , Gn4 , v108
	.byte	W06
	.byte		N12   , Cn4 , v116
	.byte	W18
	.byte		N02   , An4 , v108
	.byte	W02
	.byte		N09   , Gn4 
	.byte	W10
	.byte		N08   
	.byte	W08
	.byte		N01   
	.byte	W02
	.byte		N07   , Cn4 , v116
	.byte	W08
	.byte		N08   , Fn4 , v108
	.byte	W08
	.byte		N09   
	.byte	W10
	.byte		N02   , En4 
	.byte	W02
	.byte		N09   
	.byte	W10
	.byte	PEND
@ 067   ----------------------------------------
mus_theme_of_alberta_3_067:
	.byte		N02   , En4 , v116
	.byte	W02
	.byte		N11   , En4 , v108
	.byte	W12
	.byte		N03   , Cn4 , v088
	.byte	W04
	.byte		N12   , Cn4 , v108
	.byte	W18
	.byte		N09   
	.byte	W12
	.byte		N15   , Cn4 , v116
	.byte	W15
	.byte		N10   , An3 , v108
	.byte	W19
	.byte		N11   
	.byte	W12
	.byte		N10   
	.byte	W02
	.byte	PEND
@ 068   ----------------------------------------
mus_theme_of_alberta_3_068:
	.byte	W10
	.byte		N10   , Gn3 , v108
	.byte	W20
	.byte		N24   
	.byte	W54
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte	PEND
@ 069   ----------------------------------------
mus_theme_of_alberta_3_069:
	.byte		N17   , Ds4 , v108
	.byte	W18
	.byte		        Dn4 
	.byte	W18
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		TIE   , Cn4 
	.byte	W12
	.byte	PEND
@ 070   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 071   ----------------------------------------
mus_theme_of_alberta_3_071:
	.byte	W60
	.byte		N12   , Dn4 , v116
	.byte	W24
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
@ 072   ----------------------------------------
	.byte	W12
	.byte		        En3 
	.byte	W24
	.byte		N11   , Dn4 , v108
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W14
	.byte		        En3 
	.byte	W20
	.byte		N12   
	.byte	W14
@ 073   ----------------------------------------
	.byte	W60
	.byte		        Dn4 , v116
	.byte	W24
	.byte		N11   , Cn4 
	.byte	W12
@ 074   ----------------------------------------
	.byte		N05   , En4 , v108
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N11   , En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_071
@ 076   ----------------------------------------
	.byte	W12
	.byte		N12   , En3 , v116
	.byte	W22
	.byte		N12   
	.byte	W48
	.byte	W02
	.byte		N11   
	.byte	W12
@ 077   ----------------------------------------
	.byte		N12   , En4 , v108
	.byte	W18
	.byte		        En3 , v116
	.byte		N01   , Fn4 , v108
	.byte	W18
	.byte		N10   , En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W15
	.byte		N02   , Dn4 , v116
	.byte	W03
	.byte		N10   , Bn3 , v108
	.byte	W18
	.byte		N01   , Cn4 
	.byte		N12   , Cn4 , v116
	.byte	W12
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_046
@ 079   ----------------------------------------
	.byte		N36   , Cn4 , v116
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_018
@ 083   ----------------------------------------
	.byte		N36   , An3 , v116
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_022
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_023
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_024
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_025
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_026
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_027
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_028
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_029
@ 094   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		N01   , Cn4 , v108
	.byte	W01
	.byte		N11   , En4 
	.byte	W11
	.byte		N01   , Cn4 
	.byte	W01
@ 095   ----------------------------------------
	.byte		N12   , En4 
	.byte	W15
	.byte		N01   , Cn4 
	.byte	W01
	.byte		N12   , En4 
	.byte	W17
	.byte		N02   , Dn4 
	.byte	W03
	.byte		N11   , Fn4 
	.byte	W12
	.byte		N12   , Gn4 
	.byte	W18
	.byte		N12   
	.byte	W18
	.byte		N11   , Fn4 
	.byte	W12
@ 096   ----------------------------------------
	.byte		N12   , En4 
	.byte	W15
	.byte		        Cn4 
	.byte	W18
	.byte		N12   
	.byte	W56
	.byte	W01
	.byte		N05   , Gn3 
	.byte	W06
@ 097   ----------------------------------------
	.byte		N12   
	.byte	W18
	.byte		        Fn3 
	.byte	W18
	.byte		N11   , En3 
	.byte	W12
	.byte		N12   
	.byte	W18
	.byte		        Fn3 
	.byte	W18
	.byte		N11   , Gn3 
	.byte	W12
@ 098   ----------------------------------------
	.byte		N12   
	.byte	W84
	.byte		N11   , Cn4 
	.byte	W12
@ 099   ----------------------------------------
	.byte		N12   
	.byte	W18
	.byte		        Dn4 
	.byte	W18
	.byte		N11   , En4 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N11   
	.byte	W12
@ 100   ----------------------------------------
	.byte		N12   
	.byte	W18
	.byte		        Fn4 
	.byte	W15
	.byte		N02   , En4 
	.byte	W03
	.byte		N11   , Gn4 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N05   , Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 101   ----------------------------------------
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N02   , Dn4 
	.byte	W03
	.byte		N01   , Ds4 
	.byte	W01
	.byte		N04   , Dn4 
	.byte	W05
	.byte		        Ds4 
	.byte	W05
	.byte		        Dn4 
	.byte	W05
	.byte		        Ds4 
	.byte	W05
	.byte		N12   , Dn4 
	.byte	W24
	.byte		N11   , Cn4 
	.byte	W12
@ 102   ----------------------------------------
	.byte		N12   
	.byte	W48
	.byte		N24   , Gn3 , v108, gtp2
	.byte	W24
	.byte	W03
	.byte		N02   , An3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		N11   , Fn4 
	.byte	W12
@ 103   ----------------------------------------
	.byte		N48   , En4 
	.byte	W96
@ 104   ----------------------------------------
	.byte	W30
	.byte		N02   , Dn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		N11   , Fn4 
	.byte	W12
	.byte		N16   , Gn3 , v116
	.byte	W18
	.byte		        En3 , v108
	.byte	W18
	.byte		N05   , En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 105   ----------------------------------------
	.byte		N10   , Cn4 
	.byte	W15
	.byte		        Dn4 
	.byte	W15
	.byte		        En4 
	.byte	W18
	.byte		        Cn4 
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		N10   
	.byte	W12
@ 106   ----------------------------------------
	.byte	W48
	.byte		N24   , Gn3 , v108, gtp2
	.byte	W24
	.byte	W03
	.byte		N02   , An3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		N11   , Fn4 
	.byte	W12
@ 107   ----------------------------------------
	.byte		N48   , En4 
	.byte	W96
@ 108   ----------------------------------------
	.byte	W36
	.byte		N09   , Gn3 , v100
	.byte	W12
	.byte		N12   , Gn3 , v116
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N02   , Fn3 
	.byte	W03
	.byte		        En3 , v108
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        An3 
	.byte	W03
@ 109   ----------------------------------------
	.byte		N32   , Cn4 , v108, gtp3
	.byte	W36
	.byte		N10   , Gn3 
	.byte	W10
	.byte		N11   , En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W14
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_046
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_047
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_048
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_049
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_050
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_051
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_052
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_053
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_054
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_055
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_056
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_057
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_058
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_059
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_060
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_061
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_062
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_063
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_064
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_065
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_066
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_067
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_068
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_3_069
@ 134   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cn4 
	.byte	GOTO
	 .word	mus_theme_of_alberta_3_B1
mus_theme_of_alberta_3_B2:
@ 135   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_theme_of_alberta_4:
	.byte	KEYSH , mus_theme_of_alberta_key+0
mus_theme_of_alberta_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 88*mus_theme_of_alberta_mvl/mxv
	.byte	W72
@ 001   ----------------------------------------
	.byte	W72
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte		N02   , Cn1 , v088
	.byte	W48
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W12
@ 004   ----------------------------------------
	.byte		N02   
	.byte		N02   , An4 , v060
	.byte	W24
	.byte		        Cn1 , v088
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Dn3 , v092
	.byte		N02   , An4 , v060
	.byte	W24
	.byte		        Cn1 , v088
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Dn3 , v092
	.byte		N02   , An4 , v060
	.byte	W24
	.byte		        Dn3 , v092
	.byte		N02   , As3 , v068
	.byte	W24
@ 005   ----------------------------------------
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W24
	.byte		        Dn3 , v092
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W24
	.byte		        Dn3 , v092
	.byte		N02   , As3 , v068
	.byte	W12
@ 006   ----------------------------------------
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W24
	.byte		        Dn3 , v092
	.byte		N02   , As3 , v068
	.byte	W24
	.byte		        Dn3 , v092
	.byte		N02   , As3 , v068
	.byte	W36
@ 007   ----------------------------------------
mus_theme_of_alberta_4_007:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , Dn3 , v092
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , Dn3 , v092
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cs1 
	.byte		N02   , Gs4 , v060
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_theme_of_alberta_4_008:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v060
	.byte	W06
	.byte		        En3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
mus_theme_of_alberta_4_009:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cs1 
	.byte		N02   , An4 
	.byte	W06
	.byte		        En3 , v092
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , Gs4 , v060
	.byte	W06
	.byte		        An4 , v084
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
mus_theme_of_alberta_4_010:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W06
	.byte		        En3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Ds3 , v092
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , En4 , v076
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_007
@ 012   ----------------------------------------
mus_theme_of_alberta_4_012:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v060
	.byte	W06
	.byte		        En3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Ds3 , v092
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_009
@ 014   ----------------------------------------
mus_theme_of_alberta_4_014:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v060
	.byte	W06
	.byte		        En3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W09
	.byte		        Ds3 , v072
	.byte	W03
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W03
	.byte		        Ds3 , v072
	.byte	W09
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W09
	.byte		        Ds3 , v072
	.byte	W03
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte	PEND
@ 015   ----------------------------------------
mus_theme_of_alberta_4_015:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W06
	.byte		        En3 , v092
	.byte		N02   , Fs3 , v052
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , Dn3 , v092
	.byte	W06
	.byte		        Ds3 , v072
	.byte		N02   , Fs3 , v052
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cs1 
	.byte		N02   , Gs4 , v060
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_theme_of_alberta_4_016:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v060
	.byte	W06
	.byte		        Ds3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_theme_of_alberta_4_017:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        En3 , v072
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs3 , v052
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cs1 
	.byte		N02   , An4 
	.byte	W06
	.byte		        En3 , v092
	.byte		N02   , Fs3 , v052
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , Gs4 , v060
	.byte	W06
	.byte		        Ds3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte	PEND
@ 018   ----------------------------------------
mus_theme_of_alberta_4_018:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W06
	.byte		        Ds3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_theme_of_alberta_4_019:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W06
	.byte		        En3 , v072
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , Dn3 , v092
	.byte	W06
	.byte		        Ds3 , v072
	.byte		N02   , Fs3 , v052
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , Gs4 , v060
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_theme_of_alberta_4_020:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v060
	.byte	W06
	.byte		        Ds3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , An4 
	.byte	W12
	.byte		        Cs1 
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_theme_of_alberta_4_021:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		        En3 , v092
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v068
	.byte	W06
	.byte		        Ds3 , v072
	.byte		N02   , As3 , v068
	.byte	W03
	.byte		        Fs3 , v052
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        En3 , v072
	.byte		N02   , Fs3 , v052
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , Gs4 , v060
	.byte	W03
	.byte		        Fs3 , v052
	.byte	W09
	.byte	PEND
@ 022   ----------------------------------------
mus_theme_of_alberta_4_022:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W09
	.byte		        Fs3 , v052
	.byte	W03
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v060
	.byte	W06
	.byte		        Ds3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , As3 , v068
	.byte	W03
	.byte		        Fn3 , v060
	.byte	W09
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , En4 , v076
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_007
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_007
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_016
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_017
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_018
@ 035   ----------------------------------------
mus_theme_of_alberta_4_035:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W06
	.byte		        En3 , v092
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		        Fs3 , v052
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , Gs4 , v060
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_theme_of_alberta_4_036:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v060
	.byte	W06
	.byte		        Ds3 , v092
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , An4 
	.byte	W12
	.byte		        Cs1 
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_theme_of_alberta_4_037:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		        Ds3 , v092
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v068
	.byte	W06
	.byte		        Ds3 , v092
	.byte		N02   , As3 , v068
	.byte	W03
	.byte		        Fs3 , v052
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        En3 , v072
	.byte		N02   , Fs3 , v052
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , Gs4 , v060
	.byte	W03
	.byte		        Fs3 , v052
	.byte	W09
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_022
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_010
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_007
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_012
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_009
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_014
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_015
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_017
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_018
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_019
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_020
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_021
@ 054   ----------------------------------------
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W09
	.byte		        Fs3 , v052
	.byte	W03
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v060
	.byte	W06
	.byte		        Ds3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , As3 , v068
	.byte	W03
	.byte		        Fn3 , v060
	.byte	W09
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Dn1 , v068
	.byte	W06
	.byte		N02   
	.byte		N02   , En4 , v076
	.byte	W12
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v084
	.byte	W12
@ 055   ----------------------------------------
mus_theme_of_alberta_4_055:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , Dn3 , v092
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , Dn3 , v092
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cs1 
	.byte		N02   , Gs4 , v060
	.byte	W12
	.byte	PEND
@ 056   ----------------------------------------
mus_theme_of_alberta_4_056:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v060
	.byte	W06
	.byte		        En3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , As3 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Dn1 , v068
	.byte	W06
	.byte		N02   
	.byte		N02   , As3 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte	PEND
@ 057   ----------------------------------------
mus_theme_of_alberta_4_057:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cs1 
	.byte		N02   , An4 
	.byte	W06
	.byte		        En3 , v092
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , Gs4 , v060
	.byte	W06
	.byte		        An4 , v084
	.byte	W06
	.byte	PEND
@ 058   ----------------------------------------
mus_theme_of_alberta_4_058:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W06
	.byte		        En3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , Ds3 , v092
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , En4 , v076
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_055
@ 060   ----------------------------------------
mus_theme_of_alberta_4_060:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v060
	.byte	W06
	.byte		        En3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , As3 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , Ds3 , v092
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , As3 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_057
@ 062   ----------------------------------------
mus_theme_of_alberta_4_062:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v060
	.byte	W06
	.byte		        En3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W09
	.byte		        Ds3 , v072
	.byte	W03
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W03
	.byte		        Ds3 , v072
	.byte	W03
	.byte		        En1 , v068
	.byte	W06
	.byte		N02   
	.byte		N02   , An4 , v060
	.byte	W09
	.byte		        Ds3 , v072
	.byte	W03
	.byte		        En1 , v068
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte	PEND
@ 063   ----------------------------------------
mus_theme_of_alberta_4_063:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W06
	.byte		        En3 , v092
	.byte		N02   , Fs3 , v052
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , Dn3 , v092
	.byte	W06
	.byte		        Ds3 , v072
	.byte		N02   , Fs3 , v052
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cs1 
	.byte		N02   , Gs4 , v060
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
mus_theme_of_alberta_4_064:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v060
	.byte	W06
	.byte		        Ds3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , As3 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Dn1 , v060
	.byte		N02   , Ds1 
	.byte	W06
	.byte		        Fs1 
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Dn1 , v052
	.byte		N02   , An4 , v084
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
mus_theme_of_alberta_4_065:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        En3 , v072
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs3 , v052
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cs1 
	.byte		N02   , An4 
	.byte	W06
	.byte		        En3 , v092
	.byte		N02   , Fs3 , v052
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , Gs4 , v060
	.byte	W06
	.byte		        Ds3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte	PEND
@ 066   ----------------------------------------
mus_theme_of_alberta_4_066:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W06
	.byte		        Ds3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Dn1 , v068
	.byte	W06
	.byte		        Ds1 , v076
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Dn1 
	.byte		N02   , An4 , v084
	.byte	W12
	.byte	PEND
@ 067   ----------------------------------------
mus_theme_of_alberta_4_067:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W06
	.byte		        En3 , v092
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		        Fs3 , v052
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , Gs4 , v060
	.byte	W12
	.byte	PEND
@ 068   ----------------------------------------
mus_theme_of_alberta_4_068:
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N01   , An4 , v048
	.byte	W06
	.byte		N02   , Ds3 , v092
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , As3 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N01   , An4 , v048
	.byte	W12
	.byte		N02   , Cs1 , v084
	.byte		N02   , An4 
	.byte	W12
	.byte		        Cs1 
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte	PEND
@ 069   ----------------------------------------
mus_theme_of_alberta_4_069:
	.byte		N02   , Cn1 , v088
	.byte		N01   , An4 , v048
	.byte	W12
	.byte		N02   , Cs1 , v084
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		        Ds3 , v092
	.byte	W06
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , As3 , v068
	.byte	W06
	.byte		        Ds3 , v092
	.byte		N02   , As3 , v068
	.byte	W03
	.byte		        Fs3 , v052
	.byte	W03
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        En3 , v072
	.byte		N02   , Fs3 , v052
	.byte	W06
	.byte		        Cs1 , v084
	.byte		N02   , Gs4 , v060
	.byte	W03
	.byte		        Fs3 , v052
	.byte	W09
	.byte	PEND
@ 070   ----------------------------------------
	.byte		        Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W09
	.byte		        Fs3 , v052
	.byte	W03
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v060
	.byte	W06
	.byte		        Ds3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , As3 , v068
	.byte	W03
	.byte		        Fn3 , v060
	.byte	W09
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , En4 , v076
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
@ 071   ----------------------------------------
	.byte		        Cs1 
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , Dn3 , v092
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Cs1 , v084
	.byte		N02   , Dn3 , v092
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cs1 
	.byte		N02   , Gs4 , v060
	.byte	W12
@ 072   ----------------------------------------
	.byte		        Cs1 , v084
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v060
	.byte	W06
	.byte		        En3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
@ 073   ----------------------------------------
	.byte		        Cs1 
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Ds3 , v072
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cs1 
	.byte		N02   , An4 
	.byte	W06
	.byte		        En3 , v092
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cs1 
	.byte		N02   , Gs4 , v060
	.byte	W06
	.byte		        An4 , v084
	.byte	W06
@ 074   ----------------------------------------
	.byte		        Cs1 
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Fs1 , v044
	.byte	W06
	.byte		        En3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Fs1 , v060
	.byte		N02   , An4 
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Ds3 , v092
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , As3 , v068
	.byte	W12
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_007
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_012
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_009
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_014
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_015
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_016
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_017
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_018
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_019
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_021
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_022
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_007
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_008
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_009
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_010
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_007
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_012
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_009
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_014
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_015
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_016
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_017
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_018
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_035
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_036
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_037
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_022
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_007
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_008
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_009
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_010
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_007
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_012
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_009
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_014
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_015
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_016
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_017
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_018
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_019
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_020
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_021
@ 118   ----------------------------------------
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W09
	.byte		        Fs3 , v052
	.byte	W03
	.byte		        Ds1 , v076
	.byte		N02   , An4 , v060
	.byte	W06
	.byte		        Ds3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Ds1 , v076
	.byte		N01   , Bn3 , v084
	.byte	W03
	.byte		N02   , Fn3 , v060
	.byte	W09
	.byte		        Ds1 , v076
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v060
	.byte	W12
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Dn1 , v068
	.byte	W06
	.byte		N02   
	.byte		N02   , En4 , v076
	.byte	W12
	.byte		        Dn1 , v068
	.byte		N02   , An4 , v084
	.byte	W12
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_055
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_056
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_057
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_058
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_055
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_060
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_057
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_062
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_063
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_064
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_065
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_066
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_067
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_068
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_alberta_4_069
@ 134   ----------------------------------------
	.byte		N02   , Cn1 , v088
	.byte		N02   , An4 , v060
	.byte	W09
	.byte		        Fs3 , v052
	.byte	W03
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v060
	.byte	W06
	.byte		        Ds3 , v072
	.byte		N02   , An4 , v084
	.byte	W06
	.byte		        Fs1 , v060
	.byte		N02   , As3 , v068
	.byte	W03
	.byte		        Fn3 , v060
	.byte	W09
	.byte		        Fs1 , v044
	.byte		N02   , An4 , v084
	.byte	W12
	.byte		        Cn1 
	.byte		N02   , An4 , v060
	.byte	W24
	.byte		        Cn1 , v044
	.byte		N02   , Fs3 , v052
	.byte	W24
	.byte	GOTO
	 .word	mus_theme_of_alberta_4_B1
mus_theme_of_alberta_4_B2:
@ 135   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_theme_of_alberta:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_theme_of_alberta_pri	@ Priority
	.byte	mus_theme_of_alberta_rev	@ Reverb.

	.word	mus_theme_of_alberta_grp

	.word	mus_theme_of_alberta_1
	.word	mus_theme_of_alberta_2
	.word	mus_theme_of_alberta_3
	.word	mus_theme_of_alberta_4

	.end
