	.include "MPlayDef.s"

	.equ	mus_toxic_britney_spears_grp, voicegroup_diva_pop
	.equ	mus_toxic_britney_spears_pri, 0
	.equ	mus_toxic_britney_spears_rev, reverb_set+12
	.equ	mus_toxic_britney_spears_mvl, 90
	.equ	mus_toxic_britney_spears_key, 0
	.equ	mus_toxic_britney_spears_tbs, 1
	.equ	mus_toxic_britney_spears_exg, 1
	.equ	mus_toxic_britney_spears_cmp, 1

	.section .rodata
	.global	mus_toxic_britney_spears
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_toxic_britney_spears_1:
	.byte		VOL   , 127*mus_toxic_britney_spears_mvl/mxv
	.byte	KEYSH , mus_toxic_britney_spears_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 143*mus_toxic_britney_spears_tbs/2
	.byte		VOICE , 1
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
mus_toxic_britney_spears_1_009:
	.byte		N11   , Cn1 , v060
	.byte	W36
	.byte		N28   , Cn1 , v060, gtp1
	.byte	W36
	.byte		N11   , Ds2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_toxic_britney_spears_1_010:
	.byte		N11   , Cn1 , v060
	.byte	W36
	.byte		N28   , Cn1 , v060, gtp1
	.byte	W60
	.byte	PEND
@ 011   ----------------------------------------
mus_toxic_britney_spears_1_011:
	.byte	W12
	.byte		N11   , Cn1 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_toxic_britney_spears_1_012:
	.byte		N11   , Ds1 , v060
	.byte	W36
	.byte		N32   , Ds1 , v060, gtp3
	.byte	W36
	.byte		N23   , Cn1 
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
mus_toxic_britney_spears_1_013:
	.byte		N11   , Gn0 , v060
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		N23   , Gn1 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
mus_toxic_britney_spears_1_014:
	.byte		N11   , Cn1 , v060
	.byte	W36
	.byte		N28   , Cn1 , v060, gtp1
	.byte	W36
	.byte		N11   , Ds2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_toxic_britney_spears_1_015:
	.byte		N11   , Cn1 , v060
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		N23   , Gn1 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 016   ----------------------------------------
mus_toxic_britney_spears_1_016:
	.byte		N11   , Cn1 , v060
	.byte	W36
	.byte		N11   
	.byte	W36
	.byte		        Ds2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_014
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_015
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_015
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
mus_toxic_britney_spears_1_033:
	.byte	W36
	.byte		N01   , Gn0 , v048
	.byte	W24
	.byte		N12   , Gn1 , v064
	.byte	W12
	.byte		N23   , Cn0 , v052
	.byte	W24
	.byte	PEND
@ 034   ----------------------------------------
mus_toxic_britney_spears_1_034:
	.byte		N11   , Cn1 , v060
	.byte	W36
	.byte		N32   , Cn1 , v060, gtp3
	.byte	W36
	.byte		N11   , Gn0 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
mus_toxic_britney_spears_1_035:
	.byte		N11   , Ds1 , v060
	.byte	W36
	.byte		N11   
	.byte	W36
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_toxic_britney_spears_1_036:
	.byte		N11   , Dn1 , v060
	.byte	W36
	.byte		N11   
	.byte	W36
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_toxic_britney_spears_1_037:
	.byte		N11   , Cs1 , v060
	.byte	W36
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_034
@ 039   ----------------------------------------
mus_toxic_britney_spears_1_039:
	.byte		N11   , Ds1 , v060
	.byte	W36
	.byte		N11   
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_toxic_britney_spears_1_040:
	.byte		N11   , Gs0 , v060
	.byte	W36
	.byte		N32   , Gs0 , v060, gtp3
	.byte	W36
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 041   ----------------------------------------
mus_toxic_britney_spears_1_041:
	.byte		N11   , Gn1 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_036
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_037
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_034
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_039
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_040
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_041
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_009
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_010
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_011
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_012
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_013
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_014
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_016
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_009
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_010
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_011
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_012
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_013
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_014
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_015
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_033
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_034
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_035
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_036
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_037
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_034
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_039
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_040
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_041
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_034
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_035
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_036
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_037
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_034
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_039
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_040
@ 083   ----------------------------------------
	.byte		N11   , Gn1 , v060
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W60
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W60
	.byte		        Ds2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_036
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_037
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_034
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_039
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_040
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_041
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_034
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_035
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_036
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_037
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_034
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_039
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_040
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_041
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_034
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_035
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_036
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_037
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_034
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_1_039
@ 116   ----------------------------------------
	.byte		N11   , Gs0 , v060
	.byte	W36
	.byte		N32   , Gs0 , v060, gtp3
	.byte	W36
	.byte		N23   
	.byte	W23
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_toxic_britney_spears_2:
	.byte		VOL   , 127*mus_toxic_britney_spears_mvl/mxv
	.byte	KEYSH , mus_toxic_britney_spears_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 7
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
	.byte	W24
	.byte		N11   , Cn3 , v056
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
@ 009   ----------------------------------------
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N21   , Ds3 
	.byte	W24
	.byte		N36   , Ds3 , v056, gtp3
	.byte	W24
@ 010   ----------------------------------------
	.byte	W36
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
@ 011   ----------------------------------------
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N18   
	.byte	W24
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N32   , Ds3 , v056, gtp3
	.byte	W24
@ 012   ----------------------------------------
	.byte	W48
	.byte		N12   
	.byte	W12
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N14   , Gn2 
	.byte	W24
@ 013   ----------------------------------------
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N18   , Bn2 
	.byte	W24
	.byte		N17   
	.byte	W24
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W36
	.byte		N08   , Ds3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W24
@ 017   ----------------------------------------
	.byte	W36
	.byte		N10   
	.byte	W12
	.byte		N17   , Ds3 
	.byte	W24
	.byte		N32   , Ds3 , v056, gtp2
	.byte	W24
@ 018   ----------------------------------------
mus_toxic_britney_spears_2_018:
	.byte	W36
	.byte		N08   , Cn3 , v056
	.byte	W12
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N13   , Cn3 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
mus_toxic_britney_spears_2_019:
	.byte	W24
	.byte		N08   , Cn3 , v056
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N32   , Ds3 , v056, gtp3
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
	.byte	W36
	.byte		N05   , Cn3 
	.byte	W12
	.byte		N10   , Ds3 
	.byte	W12
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N17   , Gn2 
	.byte	W24
@ 021   ----------------------------------------
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N17   , Bn2 
	.byte	W24
	.byte		N15   
	.byte	W24
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
mus_toxic_britney_spears_2_024:
	.byte	W24
	.byte		N22   , Gn3 , v056
	.byte	W24
	.byte		N24   , An3 
	.byte	W48
	.byte	PEND
@ 025   ----------------------------------------
mus_toxic_britney_spears_2_025:
	.byte		N24   , As3 , v056, gtp1
	.byte	W24
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N24   , An3 , v056, gtp3
	.byte	W48
	.byte	PEND
@ 026   ----------------------------------------
mus_toxic_britney_spears_2_026:
	.byte	W12
	.byte		N07   , Gn3 , v056
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , An3 
	.byte	W24
	.byte		N08   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_toxic_britney_spears_2_027:
	.byte		N23   , As3 , v056
	.byte	W24
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N30   , An3 
	.byte	W48
	.byte	PEND
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
mus_toxic_britney_spears_2_029:
	.byte	W24
	.byte		N18   , Gn3 , v056
	.byte	W24
	.byte		N11   , Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
mus_toxic_britney_spears_2_033:
	.byte	W72
	.byte		N09   , Gn3 , v056
	.byte	W12
	.byte		N10   , As3 
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_toxic_britney_spears_2_034:
	.byte		N20   , Dn4 , v056
	.byte	W24
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N07   , As3 
	.byte	W12
	.byte		N09   
	.byte	W24
	.byte		N15   , Gn3 
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
mus_toxic_britney_spears_2_035:
	.byte		N10   , Fn3 , v056
	.byte	W12
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N30   , As3 
	.byte	W72
	.byte	PEND
@ 036   ----------------------------------------
mus_toxic_britney_spears_2_036:
	.byte	W24
	.byte		N08   , Cn4 , v056
	.byte	W24
	.byte		N10   , Gn3 
	.byte	W24
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_toxic_britney_spears_2_037:
	.byte		N12   , Gn3 , v056
	.byte	W24
	.byte		N10   , Cn4 
	.byte	W24
	.byte		N08   , Gn3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_034
@ 039   ----------------------------------------
mus_toxic_britney_spears_2_039:
	.byte		N10   , Fn3 , v056
	.byte	W12
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N30   , As3 
	.byte	W48
	.byte		N13   , Cn3 
	.byte	W12
	.byte		N10   , Ds3 
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_toxic_britney_spears_2_040:
	.byte		N19   , Fs3 , v056
	.byte	W24
	.byte		N08   , Fn3 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W12
	.byte		N10   
	.byte	W24
	.byte		N08   , Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
mus_toxic_britney_spears_2_041:
	.byte		N17   , Fs3 , v056
	.byte	W24
	.byte		N10   , Fn3 
	.byte	W12
	.byte		N07   , Ds3 
	.byte	W12
	.byte		N10   , Gn3 
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte	PEND
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
mus_toxic_britney_spears_2_043:
	.byte	W72
	.byte		N13   , Cn3 , v056
	.byte	W12
	.byte		N10   , Ds3 
	.byte	W12
	.byte	PEND
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_040
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_041
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W36
	.byte		N08   , Cn3 , v056
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W24
@ 051   ----------------------------------------
	.byte	W36
	.byte		N10   
	.byte	W12
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N10   , Cn3 
	.byte	W12
	.byte		N32   , Ds3 , v056, gtp2
	.byte	W24
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_018
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_019
@ 054   ----------------------------------------
	.byte	W36
	.byte		N05   , Cn3 , v056
	.byte	W12
	.byte		N10   , Ds3 
	.byte	W24
	.byte		N22   , Gn2 
	.byte	W24
@ 055   ----------------------------------------
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N14   
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N17   , Bn2 
	.byte	W24
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_024
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_025
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_026
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_027
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_029
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_033
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_034
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_035
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_036
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_037
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_034
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_039
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_040
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_041
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_043
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_040
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_041
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_043
@ 083   ----------------------------------------
	.byte		N19   , Fs3 , v056
	.byte	W24
	.byte		N08   , Fn3 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W12
	.byte		N10   , Gn3 
	.byte	W24
	.byte		N20   
	.byte	W24
@ 084   ----------------------------------------
	.byte		N92   , Gn4 , v056, gtp1
	.byte	W96
@ 085   ----------------------------------------
mus_toxic_britney_spears_2_085:
	.byte		N48   , Fs4 , v056, gtp2
	.byte	W48
	.byte		N44   , Ds4 , v056, gtp3
	.byte	W48
	.byte	PEND
@ 086   ----------------------------------------
	.byte		N76   , Cn4 
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte		N92   , Gn4 , v056, gtp1
	.byte	W96
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_085
@ 090   ----------------------------------------
	.byte		N76   , Cn4 , v056
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte		N11   , Dn4 
	.byte	W24
	.byte		N07   , Cn4 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N13   , Gn3 
	.byte	W24
@ 095   ----------------------------------------
	.byte		        Fn3 
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N24   , As3 , v056, gtp2
	.byte	W72
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_036
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_037
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_034
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_039
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_040
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_041
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_034
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_035
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_036
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_037
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_034
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_039
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_040
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_041
@ 110   ----------------------------------------
mus_toxic_britney_spears_2_110:
	.byte	W24
	.byte		N06   , Cn3 , v056
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N09   , Cn3 
	.byte	W12
	.byte		N23   , Ds3 
	.byte	W24
	.byte	PEND
@ 111   ----------------------------------------
mus_toxic_britney_spears_2_111:
	.byte	W24
	.byte		N06   , Cn3 , v056
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W12
	.byte		N20   , Ds3 
	.byte	W24
	.byte	PEND
@ 112   ----------------------------------------
	.byte	W24
	.byte		N07   , Cn3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N07   , Cn3 
	.byte	W12
	.byte		N21   , Ds3 
	.byte	W24
@ 113   ----------------------------------------
	.byte	W24
	.byte		N07   , Cn3 
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte		N19   
	.byte	W24
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_110
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_2_111
@ 116   ----------------------------------------
	.byte	W24
	.byte		N07   , Cn3 , v056
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N07   , Cn3 
	.byte	W12
	.byte		N21   , Ds3 
	.byte	W23
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_toxic_britney_spears_3:
	.byte		VOL   , 127*mus_toxic_britney_spears_mvl/mxv
	.byte	KEYSH , mus_toxic_britney_spears_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
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
mus_toxic_britney_spears_3_033:
	.byte	W72
	.byte		N09   , Gn2 , v048
	.byte		N09   , Gn3 
	.byte	W12
	.byte		N10   , As2 
	.byte		N10   , As3 
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_toxic_britney_spears_3_034:
	.byte		N20   , Dn3 , v048
	.byte		N20   , Dn4 
	.byte	W24
	.byte		N11   , Cn3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N07   , As2 
	.byte		N07   , As3 
	.byte	W12
	.byte		N09   , As2 
	.byte		N09   , As3 
	.byte	W24
	.byte		N15   , Gn2 
	.byte		N15   , Gn3 
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
mus_toxic_britney_spears_3_035:
	.byte		N10   , Fn2 , v048
	.byte		N10   , Fn3 
	.byte	W12
	.byte		N11   , Ds2 
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N30   , As2 
	.byte		N30   , As3 
	.byte	W72
	.byte	PEND
@ 036   ----------------------------------------
mus_toxic_britney_spears_3_036:
	.byte	W24
	.byte		N08   , Cn3 , v048
	.byte		N08   , Fs3 
	.byte		N08   , Cn4 
	.byte	W24
	.byte		N10   , Gn2 
	.byte		N10   , Gn3 
	.byte	W24
	.byte		N06   , Cn3 
	.byte		N06   , Fs3 
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N10   , Cn3 
	.byte		N10   , Fs3 
	.byte		N10   , Cn4 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_toxic_britney_spears_3_037:
	.byte		N12   , Gn2 , v048
	.byte		N12   , Cs3 
	.byte		N12   , Gn3 
	.byte	W24
	.byte		N10   , Cn3 
	.byte		N10   , Cn4 
	.byte	W24
	.byte		N08   , Gn2 
	.byte		N08   , Cs3 
	.byte		N08   , Gn3 
	.byte	W24
	.byte		N06   , Gn2 
	.byte		N06   , Cs3 
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N10   , Gn2 
	.byte		N10   , Cs3 
	.byte		N10   , Gn3 
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_034
@ 039   ----------------------------------------
mus_toxic_britney_spears_3_039:
	.byte		N10   , Fn2 , v048
	.byte		N10   , Fn3 
	.byte	W12
	.byte		N11   , Ds2 
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N30   , As2 
	.byte		N30   , As3 
	.byte	W48
	.byte		N13   , Cn2 
	.byte		N13   , Cn3 
	.byte	W12
	.byte		N10   , Ds2 
	.byte		N10   , Ds3 
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_toxic_britney_spears_3_040:
	.byte		N19   , Fs2 , v048
	.byte		N19   , Fs3 
	.byte	W24
	.byte		N08   , Fn2 
	.byte		N08   , Fn3 
	.byte	W12
	.byte		N05   , Ds2 
	.byte		N05   , Ds3 
	.byte	W12
	.byte		N10   , Ds2 
	.byte		N10   , Ds3 
	.byte	W24
	.byte		N08   , Cn2 
	.byte		N08   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N08   , Ds3 
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
mus_toxic_britney_spears_3_041:
	.byte		N17   , Fs2 , v048
	.byte		N17   , Fs3 
	.byte	W24
	.byte		N10   , Fn2 
	.byte		N10   , Fn3 
	.byte	W12
	.byte		N07   , Ds2 
	.byte		N07   , Ds3 
	.byte	W12
	.byte		N10   , Gn2 
	.byte		N10   , Gn3 
	.byte	W24
	.byte		N20   , Gn2 
	.byte		N20   , Gn3 
	.byte	W24
	.byte	PEND
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
mus_toxic_britney_spears_3_043:
	.byte	W72
	.byte		N13   , Cn2 , v048
	.byte		N13   , Cn3 
	.byte	W12
	.byte		N10   , Ds2 
	.byte		N10   , Ds3 
	.byte	W12
	.byte	PEND
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_040
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_041
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
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_033
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_034
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_035
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_036
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_037
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_034
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_039
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_040
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_041
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_043
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_040
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_041
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_043
@ 083   ----------------------------------------
	.byte		N19   , Fs2 , v048
	.byte		N19   , Fs3 
	.byte	W24
	.byte		N08   , Fn2 
	.byte		N08   , Fn3 
	.byte	W12
	.byte		N05   , Ds2 
	.byte		N05   , Ds3 
	.byte	W12
	.byte		N10   , Gn2 
	.byte		N10   , Gn3 
	.byte	W24
	.byte		N20   , Gn2 
	.byte		N20   , Gn3 
	.byte	W24
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte		N11   , Dn4 
	.byte	W24
	.byte		N07   , Cn4 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N13   , Gn3 
	.byte	W24
@ 095   ----------------------------------------
	.byte		        Fn3 
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N24   , As3 , v048, gtp2
	.byte	W72
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_036
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_037
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_034
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_039
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_040
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_041
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_034
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_035
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_036
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_037
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_034
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_039
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_040
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_041
@ 110   ----------------------------------------
mus_toxic_britney_spears_3_110:
	.byte	W24
	.byte		N06   , Cn3 , v048
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N09   , Cn3 
	.byte	W12
	.byte		N23   , Ds3 
	.byte	W24
	.byte	PEND
@ 111   ----------------------------------------
mus_toxic_britney_spears_3_111:
	.byte	W24
	.byte		N06   , Cn3 , v048
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W12
	.byte		N20   , Ds3 
	.byte	W24
	.byte	PEND
@ 112   ----------------------------------------
	.byte	W24
	.byte		N07   , Cn3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N07   , Cn3 
	.byte	W12
	.byte		N21   , Ds3 
	.byte	W24
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_110
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_3_111
@ 116   ----------------------------------------
	.byte	W24
	.byte		N07   , Cn3 , v048
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N07   , Cn3 
	.byte	W12
	.byte		N21   , Ds3 
	.byte	W23
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_toxic_britney_spears_4:
	.byte		VOL   , 127*mus_toxic_britney_spears_mvl/mxv
	.byte	KEYSH , mus_toxic_britney_spears_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		N05   , Cn2 , v044
	.byte		N05   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N05   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N05   , Ds3 
	.byte	W06
	.byte		        Dn2 
	.byte		N05   , Dn3 
	.byte	W06
	.byte		        Cn2 
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N05   , Dn3 
	.byte	W06
	.byte		        Ds2 
	.byte		N05   , Ds3 
	.byte	W21
	.byte		N02   , Cn3 
	.byte		N02   , Cn4 
	.byte	W03
	.byte		N05   , Ds3 
	.byte		N05   , Ds4 
	.byte	W06
	.byte		        Dn3 
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        Cn3 , v040
	.byte		N05   , Cn4 , v044
	.byte	W08
	.byte		N03   , Gn5 
	.byte	W04
@ 001   ----------------------------------------
mus_toxic_britney_spears_4_001:
	.byte		N05   , Cn3 , v032
	.byte		N12   , Fs5 , v044
	.byte	W06
	.byte		N05   , Ds3 , v032
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W01
	.byte		N04   , Ds5 , v044
	.byte	W05
	.byte		N05   , Cn3 , v032
	.byte		N12   , Dn5 , v044
	.byte	W06
	.byte		N05   , Ds3 , v032
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn3 
	.byte		N12   , Ds5 , v044
	.byte	W06
	.byte		N05   , Ds3 , v032
	.byte	W06
	.byte		        Fs3 
	.byte	W05
	.byte		N04   , Dn5 , v044
	.byte	W01
	.byte		N05   , An3 , v032
	.byte	W01
	.byte		        Cs5 , v044
	.byte	W04
	.byte		N12   , Cn5 
	.byte	W01
	.byte		N05   , Cn3 , v032
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
mus_toxic_britney_spears_4_002:
	.byte		N05   , Cn2 , v044
	.byte		N05   , Cn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N05   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N05   , Ds3 
	.byte	W06
	.byte		        Dn2 
	.byte		N05   , Dn3 
	.byte	W06
	.byte		        Cn2 
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        Dn2 
	.byte		N05   , Dn3 
	.byte	W06
	.byte		        Ds2 
	.byte		N05   , Ds3 
	.byte	W21
	.byte		N02   , Cn3 
	.byte		N02   , Cn4 
	.byte	W03
	.byte		N05   , Ds3 
	.byte		N05   , Ds4 
	.byte	W06
	.byte		        Dn3 
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        Cn3 , v040
	.byte		N05   , Cn4 , v044
	.byte	W08
	.byte		N03   , Gn5 
	.byte	W04
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_4_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_4_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_4_001
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
mus_toxic_britney_spears_4_012:
	.byte		N12   , Ds3 , v044
	.byte		N12   , Fs3 
	.byte		N12   , As3 
	.byte	W96
	.byte	PEND
@ 013   ----------------------------------------
mus_toxic_britney_spears_4_013:
	.byte		N12   , Dn3 , v044
	.byte		N12   , Gn3 
	.byte		N12   , Bn3 
	.byte	W96
	.byte	PEND
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
	.byte	PATT
	 .word	mus_toxic_britney_spears_4_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_4_013
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
	.byte	PATT
	 .word	mus_toxic_britney_spears_4_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_4_013
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
	.byte	PATT
	 .word	mus_toxic_britney_spears_4_012
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_4_013
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
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_4_012
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_4_013
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
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
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	W96
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
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte	W96
@ 116   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_toxic_britney_spears_5:
	.byte		VOL   , 127*mus_toxic_britney_spears_mvl/mxv
	.byte	KEYSH , mus_toxic_britney_spears_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
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
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
mus_toxic_britney_spears_5_014:
	.byte		N05   , Cn2 , v040
	.byte		N05   , Cn3 , v044
	.byte	W12
	.byte		        Cn2 , v040
	.byte		N05   , Cn3 , v044
	.byte	W12
	.byte		        Ds2 , v040
	.byte		N05   , Ds3 , v044
	.byte	W06
	.byte		        Dn2 , v040
	.byte		N05   , Dn3 , v044
	.byte	W06
	.byte		        Cn2 , v040
	.byte		N05   , Cn3 , v044
	.byte	W06
	.byte		        Dn2 , v040
	.byte		N05   , Dn3 , v044
	.byte	W06
	.byte		        Ds2 , v040
	.byte		N05   , Ds3 , v044
	.byte	W21
	.byte		N02   , Cn3 , v040
	.byte		N02   , Cn4 , v044
	.byte	W03
	.byte		N05   , Ds3 , v040
	.byte		N05   , Ds4 , v044
	.byte	W06
	.byte		        Dn3 , v040
	.byte		N05   , Dn4 , v044
	.byte	W06
	.byte		        Cn3 , v040
	.byte		N05   , Cn4 , v044
	.byte	W08
	.byte		N03   , Gn5 
	.byte	W04
	.byte	PEND
@ 015   ----------------------------------------
mus_toxic_britney_spears_5_015:
	.byte		N05   , Cn3 , v032
	.byte		N12   , Fs5 , v044
	.byte	W06
	.byte		N05   , Ds3 , v032
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W01
	.byte		N04   , Ds5 , v044
	.byte	W05
	.byte		N05   , Cn3 , v032
	.byte		N12   , Dn5 , v044
	.byte	W06
	.byte		N05   , Ds3 , v032
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn3 
	.byte		N12   , Ds5 , v044
	.byte	W06
	.byte		N05   , Ds3 , v032
	.byte	W06
	.byte		        Fs3 
	.byte	W05
	.byte		N04   , Dn5 , v044
	.byte	W01
	.byte		N05   , An3 , v032
	.byte	W01
	.byte		        Cs5 , v044
	.byte	W04
	.byte		N12   , Cn5 
	.byte	W01
	.byte		N05   , Cn3 , v032
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	PEND
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
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_014
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_015
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
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_015
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
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_014
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_015
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
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_014
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_015
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
	.byte		N05   , Cn2 , v040
	.byte		N05   , Cn3 , v044
	.byte	W12
	.byte		        Cn2 , v040
	.byte		N05   , Cn3 , v044
	.byte	W12
	.byte		        Ds2 , v040
	.byte		N05   , Ds3 , v044
	.byte	W06
	.byte		        Dn2 , v040
	.byte		N05   , Dn3 , v044
	.byte	W06
	.byte		        Cn2 , v040
	.byte		N05   , Cn3 , v044
	.byte	W06
	.byte		        Dn2 , v040
	.byte		N05   , Dn3 , v044
	.byte	W06
	.byte		        Ds2 , v040
	.byte		N05   , Ds3 , v044
	.byte	W21
	.byte		N02   , Cn3 , v040
	.byte		N02   , Cn4 , v044
	.byte	W03
	.byte		N05   , Ds3 , v040
	.byte		N05   , Ds4 , v044
	.byte	W06
	.byte		        Dn3 , v040
	.byte		N05   , Dn4 , v044
	.byte	W06
	.byte		        Cn3 , v040
	.byte		N05   , Cn4 , v044
	.byte	W12
@ 057   ----------------------------------------
	.byte		N12   , Dn5 
	.byte	W48
	.byte		        En5 
	.byte	W48
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_014
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_015
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
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_014
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_015
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_014
@ 083   ----------------------------------------
	.byte		N05   , Cn3 , v032
	.byte		N12   , Fs5 , v044
	.byte	W06
	.byte		N05   , Ds3 , v032
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W01
	.byte		N04   , Ds5 , v044
	.byte	W05
	.byte		N05   , Cn3 , v032
	.byte		N12   , Dn5 , v044
	.byte	W06
	.byte		N05   , Ds3 , v032
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W54
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_014
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_015
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
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_014
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_015
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte	W96
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_5_014
@ 117   ----------------------------------------
	.byte		N05   , Cn3 , v032
	.byte		N12   , Fs5 , v044
	.byte	W06
	.byte		N05   , Ds3 , v032
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W01
	.byte		N04   , Ds5 , v044
	.byte	W05
	.byte		N05   , Cn3 , v032
	.byte		N12   , Dn5 , v044
	.byte	W06
	.byte		N05   , Ds3 , v032
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn3 
	.byte		N12   , Ds5 , v044
	.byte	W06
	.byte		N05   , Ds3 , v032
	.byte	W06
	.byte		        Fs3 
	.byte	W05
	.byte		N04   , Dn5 , v044
	.byte	W01
	.byte		N05   , An3 , v032
	.byte	W01
	.byte		        Cs5 , v044
	.byte	W04
	.byte		N12   , Cn5 
	.byte	W01
	.byte		N05   , Cn3 , v032
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W05
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_toxic_britney_spears_6:
	.byte		VOL   , 127*mus_toxic_britney_spears_mvl/mxv
	.byte	KEYSH , mus_toxic_britney_spears_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 7
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
	.byte	W72
	.byte		N01   , En5 , v028
	.byte	W24
@ 007   ----------------------------------------
mus_toxic_britney_spears_6_007:
	.byte		N23   , Fs5 , v048
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
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
	.byte	W72
	.byte		N01   , En5 , v028
	.byte	W24
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_6_007
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
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W72
	.byte		N01   , En5 , v028
	.byte	W24
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_6_007
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
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
mus_toxic_britney_spears_6_084:
	.byte		N24   , Cn1 , v044
	.byte	W60
	.byte		N11   , Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 085   ----------------------------------------
mus_toxic_britney_spears_6_085:
	.byte		N24   , Ds1 , v044
	.byte	W60
	.byte		N11   , Cn2 , v040
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	PEND
@ 086   ----------------------------------------
	.byte		N24   , Dn1 
	.byte	W60
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W12
	.byte		        Dn2 , v040
	.byte	W12
@ 087   ----------------------------------------
	.byte		N24   , Cs1 
	.byte	W60
	.byte		N11   , Cs2 , v044
	.byte	W12
	.byte		        Cs1 , v040
	.byte	W12
	.byte		        Cs2 , v044
	.byte	W12
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_6_084
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_6_085
@ 090   ----------------------------------------
	.byte		N24   , Gs0 , v040
	.byte	W60
	.byte		N11   , Cn2 
	.byte	W12
	.byte		        Gs0 , v044
	.byte	W12
	.byte		        Cn2 , v040
	.byte	W12
@ 091   ----------------------------------------
	.byte		        Gn1 , v044
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn1 , v040
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn1 , v044
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn1 , v040
	.byte	W24
@ 092   ----------------------------------------
mus_toxic_britney_spears_6_092:
	.byte		N11   , Cn1 , v044
	.byte	W36
	.byte		N24   
	.byte	W60
	.byte	PEND
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_6_092
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	W96
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
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte	W96
@ 116   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_toxic_britney_spears_7:
	.byte		VOL   , 127*mus_toxic_britney_spears_mvl/mxv
	.byte	KEYSH , mus_toxic_britney_spears_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
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
mus_toxic_britney_spears_7_024:
	.byte	W24
	.byte		N07   , Gn4 , v036
	.byte	W24
	.byte		        An4 
	.byte	W48
	.byte	PEND
@ 025   ----------------------------------------
mus_toxic_britney_spears_7_025:
	.byte		N07   , As4 , v036
	.byte	W24
	.byte		        Fn5 , v032
	.byte	W24
	.byte		        An4 , v036
	.byte	W48
	.byte	PEND
@ 026   ----------------------------------------
mus_toxic_britney_spears_7_026:
	.byte	W24
	.byte		N07   , Gn4 , v036
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N07   
	.byte	W12
	.byte		N07   
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_toxic_britney_spears_7_027:
	.byte		N07   , As4 , v036
	.byte	W24
	.byte		        Fn5 
	.byte	W24
	.byte		        An4 
	.byte	W48
	.byte	PEND
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
mus_toxic_britney_spears_7_032:
	.byte		N11   , Cn1 , v040
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_032
@ 034   ----------------------------------------
mus_toxic_britney_spears_7_034:
	.byte		N03   , Ds2 , v036
	.byte		N03   , Gn2 
	.byte		N03   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gn2 
	.byte		N03   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gn2 
	.byte		N03   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gn2 
	.byte		N03   , Cn3 
	.byte	W24
	.byte		        Ds2 
	.byte		N03   , Gn2 
	.byte		N03   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gn2 
	.byte		N03   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gn2 
	.byte		N03   , Cn3 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
mus_toxic_britney_spears_7_035:
	.byte		N03   , Ds2 , v036
	.byte		N03   , Gn2 
	.byte		N03   , As2 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gn2 
	.byte		N03   , As2 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gn2 
	.byte		N03   , As2 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gn2 
	.byte		N03   , As2 
	.byte	W24
	.byte		        Ds2 
	.byte		N03   , Gn2 
	.byte		N03   , As2 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gn2 
	.byte		N03   , As2 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gn2 
	.byte		N03   , As2 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_toxic_britney_spears_7_036:
	.byte		N03   , Dn2 , v036
	.byte		N03   , Fs2 
	.byte		N03   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , An2 
	.byte	W24
	.byte		        Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte		N03   , Fs2 
	.byte		N03   , An2 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_toxic_britney_spears_7_037:
	.byte		N03   , Cs2 , v036
	.byte		N03   , Fn2 
	.byte		N03   , Gs2 
	.byte	W12
	.byte		        Fn2 
	.byte		N03   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte		N03   , Fn2 
	.byte		N03   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte		N03   , Fn2 
	.byte		N03   , Gs2 
	.byte	W24
	.byte		        Cs2 
	.byte		N03   , Fn2 
	.byte		N03   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte		N03   , Fn2 
	.byte		N03   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte		N03   , Fn2 
	.byte		N03   , Gs2 
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_034
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_035
@ 040   ----------------------------------------
mus_toxic_britney_spears_7_040:
	.byte		N03   , Ds2 , v036
	.byte		N03   , Gs2 
	.byte		N03   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gs2 
	.byte		N03   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gs2 
	.byte		N03   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gs2 
	.byte		N03   , Cn3 
	.byte	W24
	.byte		        Ds2 
	.byte		N03   , Gs2 
	.byte		N03   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gs2 
	.byte		N03   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gs2 
	.byte		N03   , Cn3 
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
mus_toxic_britney_spears_7_041:
	.byte		N03   , Dn2 , v036
	.byte		N03   , Fn2 
	.byte		N03   , Bn2 
	.byte	W12
	.byte		        Dn2 , v040
	.byte		N03   , Fn2 , v036
	.byte		N03   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N03   , Fn2 
	.byte		N03   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N03   , Fn2 
	.byte		N03   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N03   , Fn2 
	.byte		N03   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N03   , Fn2 
	.byte		N03   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N03   , Fn2 
	.byte		N03   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N03   , Fn2 
	.byte		N03   , Bn2 
	.byte	W12
	.byte	PEND
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_036
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_037
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_034
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_035
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_040
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_041
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
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_024
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_025
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_026
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_027
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_032
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_032
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_034
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_035
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_036
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_037
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_034
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_035
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_040
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_041
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_034
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_035
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_036
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_037
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_034
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_035
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_040
@ 083   ----------------------------------------
	.byte		N03   , Dn2 , v036
	.byte		N03   , Fn2 
	.byte		N03   , Bn2 
	.byte	W12
	.byte		        Dn2 , v040
	.byte		N03   , Fn2 , v036
	.byte		N03   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N03   , Fn2 
	.byte		N03   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N03   , Fn2 
	.byte		N03   , Bn2 
	.byte	W60
@ 084   ----------------------------------------
mus_toxic_britney_spears_7_084:
	.byte		N11   , Cn1 , v036
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 085   ----------------------------------------
mus_toxic_britney_spears_7_085:
	.byte		N11   , Ds1 , v036
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 086   ----------------------------------------
	.byte		        Dn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 087   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_084
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_085
@ 090   ----------------------------------------
	.byte		N11   , Gs0 , v036
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 091   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 092   ----------------------------------------
mus_toxic_britney_spears_7_092:
	.byte		N11   , Cn1 , v040
	.byte	W36
	.byte		N24   
	.byte	W60
	.byte	PEND
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_092
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W60
	.byte		N11   , Ds2 , v036
	.byte		N11   , Gn2 
	.byte		N11   , As2 
	.byte	W12
	.byte		        Ds2 
	.byte		N11   , Gn2 
	.byte		N11   , As2 
	.byte	W12
	.byte		        Ds2 
	.byte		N11   , Gn2 
	.byte		N11   , As2 
	.byte	W12
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_036
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_037
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_034
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_035
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_040
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_041
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_034
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_035
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_036
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_037
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_034
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_035
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_040
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_041
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_034
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_035
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_036
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_037
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_034
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_7_035
@ 116   ----------------------------------------
	.byte		N03   , Ds2 , v036
	.byte		N03   , Gs2 
	.byte		N03   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gs2 
	.byte		N03   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gs2 
	.byte		N03   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gs2 
	.byte		N03   , Cn3 
	.byte	W24
	.byte		        Ds2 
	.byte		N03   , Gs2 
	.byte		N03   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gs2 
	.byte		N03   , Cn3 
	.byte	W12
	.byte		        Ds2 
	.byte		N03   , Gs2 
	.byte		N03   , Cn3 
	.byte	W11
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_toxic_britney_spears_8:
	.byte		VOL   , 127*mus_toxic_britney_spears_mvl/mxv
	.byte	KEYSH , mus_toxic_britney_spears_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 7
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_toxic_britney_spears_8_004:
	.byte		N10   , Cn2 , v040
	.byte		N09   , Gn2 , v044
	.byte		N09   , Cn3 
	.byte		N09   , Ds3 
	.byte		N10   , Gn3 
	.byte		N09   , Cn4 , v040
	.byte	W66
	.byte		N05   , Cn2 , v032
	.byte		N04   , Gn2 
	.byte		N04   , Cn3 
	.byte		N04   , Ds3 
	.byte		N04   , Gn3 
	.byte		N04   , Cn4 
	.byte	W06
	.byte		N01   , Cn2 , v044
	.byte		N01   , Gn2 
	.byte		N01   , Cn3 
	.byte		N01   , Ds3 
	.byte		N01   , Gn3 
	.byte		N01   , Cn4 
	.byte	W11
	.byte		N11   , Cn2 , v040
	.byte		N11   , Cn3 , v036
	.byte		N11   , Ds3 
	.byte		N11   , Gn3 
	.byte		N11   , Cn4 
	.byte	W01
	.byte		        Gn2 , v040
	.byte	W11
	.byte		N09   , Cn2 , v044
	.byte		N09   , Cn3 
	.byte		N09   , Ds3 
	.byte		N09   , Gn3 , v040
	.byte	W01
	.byte	PEND
@ 005   ----------------------------------------
mus_toxic_britney_spears_8_005:
	.byte		N09   , Gn2 , v044
	.byte		N09   , Cn4 
	.byte	W66
	.byte		N01   , Cn2 , v036
	.byte		N01   , Gn2 
	.byte		N01   , Cn3 
	.byte		N01   , Ds3 
	.byte		N01   , Gn3 
	.byte		N01   , Cn4 
	.byte	W06
	.byte		N11   , Cn2 , v044
	.byte		N11   , Gn2 
	.byte		N11   , Cn3 
	.byte		N11   , Ds3 
	.byte		N11   , Gn3 
	.byte		N11   , Cn4 
	.byte	W11
	.byte		        Cn2 , v040
	.byte		N11   , Cn3 , v036
	.byte		N11   , Ds3 
	.byte		N11   , Gn3 
	.byte		N11   , Cn4 
	.byte	W01
	.byte		        Gn2 , v040
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_005
@ 008   ----------------------------------------
mus_toxic_britney_spears_8_008:
	.byte	W80
	.byte	W03
	.byte		N11   , Cn2 , v040
	.byte		N11   , Cn3 , v036
	.byte		N11   , Ds3 
	.byte		N11   , Gn3 
	.byte		N11   , Cn4 
	.byte	W01
	.byte		        Gn2 , v040
	.byte	W11
	.byte		N09   , Cn2 , v044
	.byte		N09   , Cn3 
	.byte		N09   , Ds3 
	.byte		N09   , Gn3 , v040
	.byte	W01
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_004
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_005
@ 012   ----------------------------------------
mus_toxic_britney_spears_8_012:
	.byte		N10   , Ds2 , v040
	.byte		N09   , As2 , v044
	.byte		N09   , Ds3 
	.byte		N10   , Fs3 
	.byte		N09   , As3 , v040
	.byte	W66
	.byte		N05   , Ds2 , v032
	.byte		N04   , As2 
	.byte		N04   , Ds3 
	.byte		N04   , Fs3 
	.byte		N04   , As3 
	.byte	W06
	.byte		N01   , Ds2 , v044
	.byte		N01   , As2 
	.byte		N01   , Ds3 
	.byte		N01   , Fs3 
	.byte		N01   , As3 
	.byte	W11
	.byte		N11   , Ds2 , v040
	.byte		N11   , As2 , v036
	.byte		N11   , Ds3 
	.byte		N11   , Fs3 
	.byte		N11   , As3 
	.byte	W12
	.byte		N09   , Bn2 , v044
	.byte		N09   , Dn3 
	.byte		N09   , Gn3 , v040
	.byte	W01
	.byte	PEND
@ 013   ----------------------------------------
mus_toxic_britney_spears_8_013:
	.byte		N09   , Gn1 , v044
	.byte		N09   , Dn2 
	.byte		N09   , Bn3 
	.byte	W66
	.byte		N01   , Gn1 , v036
	.byte		N01   , Dn2 
	.byte		N01   , Bn2 
	.byte		N01   , Dn3 
	.byte		N01   , Gn3 
	.byte		N01   , Bn3 
	.byte	W06
	.byte		N11   , Gn1 , v044
	.byte		N11   , Dn2 
	.byte		N11   , Bn2 , v036
	.byte		N11   , Dn3 
	.byte		N11   , Gn3 
	.byte		N11   , Bn3 
	.byte	W11
	.byte		        Bn2 
	.byte		N11   , Dn3 
	.byte		N11   , Gn3 
	.byte		N11   , Bn3 
	.byte	W01
	.byte		        Gn1 , v040
	.byte		N11   , Dn2 
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_004
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_005
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_004
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_005
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_004
@ 023   ----------------------------------------
	.byte		N09   , Gn2 , v044
	.byte		N09   , Cn4 
	.byte	W96
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_004
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_005
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_004
@ 031   ----------------------------------------
	.byte		N09   , Gn2 , v044
	.byte		N09   , Cn4 
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
mus_toxic_britney_spears_8_034:
	.byte		N12   , Cn2 , v036
	.byte		N11   , Ds2 
	.byte		N12   , Gn2 
	.byte		N11   , Cn3 , v040
	.byte	W12
	.byte		N06   , Cn2 , v032
	.byte		N08   , Ds2 , v028
	.byte		N08   , Gn2 
	.byte		N06   , Cn3 , v032
	.byte	W12
	.byte		N01   , Ds2 , v028
	.byte		N01   , Gn2 
	.byte	W12
	.byte		N06   , Cn2 , v040
	.byte		N07   , Ds2 , v032
	.byte		N08   , Gn2 , v036
	.byte		N06   , Cn3 
	.byte	W12
	.byte		N01   , Ds2 , v028
	.byte		N01   , Gn2 
	.byte	W12
	.byte		N11   , Cn2 
	.byte		N11   , Ds2 
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        Cn2 , v036
	.byte		N11   , Ds2 
	.byte		N11   , Gn2 , v040
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Cn2 , v036
	.byte		N11   , Ds2 , v028
	.byte		N11   , Gn2 , v032
	.byte		N11   , Cn3 , v028
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
mus_toxic_britney_spears_8_035:
	.byte		N12   , Ds2 , v036
	.byte		N11   , Fs2 
	.byte		N12   , As2 
	.byte		N11   , Ds3 , v040
	.byte	W12
	.byte		N06   , Ds2 , v032
	.byte		N08   , Fs2 , v028
	.byte		N08   , As2 
	.byte		N06   , Ds3 , v032
	.byte	W12
	.byte		N01   , Fs2 , v028
	.byte		N01   , As2 
	.byte	W12
	.byte		N06   , Ds2 , v040
	.byte		N07   , Fs2 , v032
	.byte		N08   , As2 , v036
	.byte		N06   , Ds3 
	.byte	W12
	.byte		N01   , Fs2 , v028
	.byte		N01   , As2 
	.byte	W12
	.byte		N11   , Ds2 
	.byte		N11   , Fs2 
	.byte		N11   , As2 
	.byte	W12
	.byte		        Ds2 , v036
	.byte		N11   , Fs2 
	.byte		N11   , As2 , v040
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Ds2 , v036
	.byte		N11   , Fs2 , v028
	.byte		N11   , As2 , v032
	.byte		N11   , Ds3 , v028
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_toxic_britney_spears_8_036:
	.byte		N12   , Dn2 , v036
	.byte		N11   , Fs2 
	.byte		N12   , An2 
	.byte		N11   , Dn3 , v040
	.byte	W12
	.byte		N06   , Dn2 , v032
	.byte		N08   , Fs2 , v028
	.byte		N08   , An2 
	.byte		N06   , Dn3 , v032
	.byte	W12
	.byte		N01   , Fs2 , v028
	.byte		N01   , An2 
	.byte	W12
	.byte		N06   , Dn2 , v040
	.byte		N07   , Fs2 , v032
	.byte		N08   , An2 , v036
	.byte		N06   , Dn3 
	.byte	W12
	.byte		N01   , Fs2 , v028
	.byte		N01   , An2 
	.byte	W12
	.byte		N11   , Dn2 
	.byte		N11   , Fs2 
	.byte		N11   , An2 
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N11   , Fs2 
	.byte		N11   , An2 , v040
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Dn2 , v036
	.byte		N11   , Fs2 , v028
	.byte		N11   , An2 , v032
	.byte		N11   , Dn3 , v028
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_toxic_britney_spears_8_037:
	.byte		N12   , Cs2 , v036
	.byte		N11   , Fn2 
	.byte		N12   , Gs2 
	.byte		N11   , Cs3 , v040
	.byte	W12
	.byte		N06   , Cs2 , v032
	.byte		N08   , Fn2 , v028
	.byte		N08   , Gs2 
	.byte		N06   , Cs3 , v032
	.byte	W12
	.byte		N01   , Fn2 , v028
	.byte		N01   , Gs2 
	.byte	W12
	.byte		N06   , Cs2 , v040
	.byte		N07   , Fn2 , v032
	.byte		N08   , Gs2 , v036
	.byte		N06   , Cs3 
	.byte	W12
	.byte		N01   , Fn2 , v028
	.byte		N01   , Gs2 
	.byte	W12
	.byte		N11   , Cs2 
	.byte		N11   , Fn2 
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        Cs2 , v036
	.byte		N11   , Fn2 
	.byte		N11   , Gs2 , v040
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Cs2 , v036
	.byte		N11   , Fn2 , v028
	.byte		N11   , Gs2 , v032
	.byte		N11   , Cs3 , v028
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_034
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_035
@ 040   ----------------------------------------
mus_toxic_britney_spears_8_040:
	.byte		N12   , Gs1 , v036
	.byte		N11   , Ds2 
	.byte		N11   , Fs2 
	.byte		N12   , Gs2 
	.byte		N11   , Cn3 , v040
	.byte	W11
	.byte		N08   , Fs2 , v028
	.byte	W01
	.byte		N06   , Gs1 , v032
	.byte		N08   , Ds2 , v028
	.byte		N08   , Gs2 
	.byte		N06   , Cn3 , v032
	.byte	W11
	.byte		N01   , Fs2 , v028
	.byte	W01
	.byte		        Ds2 
	.byte		N01   , Gs2 
	.byte	W12
	.byte		N06   , Gs1 , v040
	.byte		N07   , Ds2 , v032
	.byte		N07   , Fs2 , v036
	.byte		N08   , Gs2 
	.byte		N06   , Cn3 
	.byte	W11
	.byte		N01   , Fs2 , v028
	.byte	W01
	.byte		        Ds2 
	.byte		N01   , Gs2 
	.byte	W11
	.byte		N11   , Fs2 
	.byte	W01
	.byte		        Gs1 
	.byte		N11   , Ds2 
	.byte		N11   , Gs2 
	.byte	W11
	.byte		        Fs2 , v040
	.byte	W01
	.byte		        Gs1 , v036
	.byte		N11   , Ds2 
	.byte		N11   , Gs2 , v040
	.byte		N11   , Cn3 
	.byte	W11
	.byte		        Fs2 , v032
	.byte	W01
	.byte		        Gs1 , v036
	.byte		N11   , Ds2 , v028
	.byte		N11   , Gs2 , v032
	.byte		N11   , Cn3 , v028
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
mus_toxic_britney_spears_8_041:
	.byte		N11   , Gn1 , v036
	.byte		N11   , Dn2 
	.byte		N11   , Fn2 
	.byte		N11   , Bn2 
	.byte		N11   , Dn3 , v040
	.byte	W12
	.byte		        Gn1 , v032
	.byte		N11   , Dn2 , v028
	.byte		N11   , Fn2 
	.byte		N11   , Bn2 
	.byte		N11   , Dn3 , v032
	.byte	W12
	.byte		        Gn1 , v036
	.byte		N11   , Dn2 
	.byte		N11   , Fn2 
	.byte		N11   , Bn2 
	.byte		N11   , Dn3 , v040
	.byte	W12
	.byte		        Gn1 , v036
	.byte		N11   , Dn2 
	.byte		N11   , Fn2 
	.byte		N11   , Bn2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Gn1 , v040
	.byte		N11   , Dn2 
	.byte		N11   , Fn2 
	.byte		N11   , Bn2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N11   , Dn2 
	.byte		N11   , Fn2 
	.byte		N11   , Bn2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N11   , Dn2 
	.byte		N11   , Fn2 
	.byte		N11   , Bn2 
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N11   , Dn2 , v036
	.byte		N11   , Fn2 , v040
	.byte		N11   , Bn2 
	.byte		N11   , Dn3 , v036
	.byte	W12
	.byte	PEND
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_034
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_035
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_036
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_037
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_034
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_035
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_040
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_041
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_008
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_005
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_012
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_013
@ 056   ----------------------------------------
	.byte		N10   , Cn2 , v040
	.byte		N09   , Gn2 , v044
	.byte		N09   , Cn3 
	.byte		N09   , Ds3 
	.byte		N10   , Gn3 
	.byte		N09   , Cn4 , v040
	.byte	W66
	.byte		N05   , Cn2 , v032
	.byte		N04   , Gn2 
	.byte		N04   , Cn3 
	.byte		N04   , Ds3 
	.byte		N04   , Gn3 
	.byte		N04   , Cn4 
	.byte	W06
	.byte		N01   , Cn2 , v044
	.byte		N01   , Gn2 
	.byte		N01   , Cn3 
	.byte		N01   , Ds3 
	.byte		N01   , Gn3 
	.byte		N01   , Cn4 
	.byte	W11
	.byte		N11   , Cn2 , v040
	.byte		N11   , Cn3 , v036
	.byte		N11   , Ds3 
	.byte		N11   , Gn3 
	.byte		N11   , Cn4 
	.byte	W01
	.byte		        Gn2 , v040
	.byte	W12
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_008
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_005
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_005
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_012
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_013
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_004
@ 065   ----------------------------------------
	.byte		N09   , Gn2 , v044
	.byte		N09   , Cn4 
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_034
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_035
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_036
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_037
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_034
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_035
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_040
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_041
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_034
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_035
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_036
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_037
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_034
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_035
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_040
@ 083   ----------------------------------------
	.byte		N11   , Gn1 , v036
	.byte		N11   , Dn2 
	.byte		N11   , Fn2 
	.byte		N11   , Bn2 
	.byte		N11   , Dn3 , v040
	.byte	W12
	.byte		        Gn1 , v032
	.byte		N11   , Dn2 , v028
	.byte		N11   , Fn2 
	.byte		N11   , Bn2 
	.byte		N11   , Dn3 , v032
	.byte	W12
	.byte		        Gn1 , v036
	.byte		N11   , Dn2 
	.byte		N11   , Fn2 
	.byte		N11   , Bn2 
	.byte		N11   , Dn3 , v040
	.byte	W12
	.byte		        Gn1 , v036
	.byte		N11   , Dn2 
	.byte		N11   , Fn2 
	.byte		N11   , Bn2 
	.byte		N11   , Dn3 
	.byte	W60
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W60
	.byte		        Ds2 , v028
	.byte		N11   , Fs2 
	.byte		N11   , As2 
	.byte	W12
	.byte		        Ds2 , v036
	.byte		N11   , Fs2 
	.byte		N11   , As2 , v040
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Ds2 , v036
	.byte		N11   , Fs2 , v028
	.byte		N11   , As2 , v032
	.byte		N11   , Ds3 , v028
	.byte	W12
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_036
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_037
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_034
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_035
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_040
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_041
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_034
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_035
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_036
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_037
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_034
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_035
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_040
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_041
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_034
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_035
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_036
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_037
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_034
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_8_035
@ 116   ----------------------------------------
	.byte		N12   , Gs1 , v036
	.byte		N11   , Ds2 
	.byte		N11   , Fs2 
	.byte		N12   , Gs2 
	.byte		N11   , Cn3 , v040
	.byte	W11
	.byte		N08   , Fs2 , v028
	.byte	W01
	.byte		N06   , Gs1 , v032
	.byte		N08   , Ds2 , v028
	.byte		N08   , Gs2 
	.byte		N06   , Cn3 , v032
	.byte	W11
	.byte		N01   , Fs2 , v028
	.byte	W01
	.byte		        Ds2 
	.byte		N01   , Gs2 
	.byte	W12
	.byte		N06   , Gs1 , v040
	.byte		N07   , Ds2 , v032
	.byte		N07   , Fs2 , v036
	.byte		N08   , Gs2 
	.byte		N06   , Cn3 
	.byte	W11
	.byte		N01   , Fs2 , v028
	.byte	W01
	.byte		        Ds2 
	.byte		N01   , Gs2 
	.byte	W11
	.byte		N11   , Fs2 
	.byte	W01
	.byte		        Gs1 
	.byte		N11   , Ds2 
	.byte		N11   , Gs2 
	.byte	W11
	.byte		        Fs2 , v040
	.byte	W01
	.byte		        Gs1 , v036
	.byte		N11   , Ds2 
	.byte		N11   , Gs2 , v040
	.byte		N11   , Cn3 
	.byte	W11
	.byte		        Fs2 , v032
	.byte	W01
	.byte		        Gs1 , v036
	.byte		N11   , Ds2 , v028
	.byte		N11   , Gs2 , v032
	.byte		N11   , Cn3 , v028
	.byte	W11
	.byte	FINE

@**************** Track 9 (Midi-Chn.9) ****************@

mus_toxic_britney_spears_9:
	.byte		VOL   , 127*mus_toxic_britney_spears_mvl/mxv
	.byte	KEYSH , mus_toxic_britney_spears_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
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
mus_toxic_britney_spears_9_042:
	.byte	W12
	.byte		N11   , Cn2 , v040
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte	PEND
@ 043   ----------------------------------------
	.byte		N90   , Ds2 , v040, gtp1
	.byte	W96
@ 044   ----------------------------------------
	.byte		N92   , Dn2 , v032, gtp3
	.byte	W96
@ 045   ----------------------------------------
	.byte		N76   , Cs2 
	.byte	W96
@ 046   ----------------------------------------
mus_toxic_britney_spears_9_046:
	.byte		N44   , Cn2 , v040, gtp3
	.byte	W48
	.byte		N22   , Cn3 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte	PEND
@ 047   ----------------------------------------
	.byte		TIE   , Ds2 
	.byte	W96
@ 048   ----------------------------------------
	.byte		N92   , Gs1 , v032, gtp1
	.byte	W01
	.byte		EOT   , Ds2 
	.byte	W92
	.byte	W03
@ 049   ----------------------------------------
	.byte		N20   , Gn1 , v036
	.byte	W24
	.byte		N19   
	.byte	W24
	.byte		N05   , Gn1 , v040
	.byte	W06
	.byte		        Gn1 , v036
	.byte	W06
	.byte		        Gn1 , v032
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn1 , v036
	.byte	W06
	.byte		        Gn1 , v032
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Gn1 , v036
	.byte	W06
@ 050   ----------------------------------------
	.byte		N32   , Cn2 , v040, gtp3
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
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
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
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_9_042
@ 077   ----------------------------------------
	.byte		N90   , Ds2 , v040, gtp1
	.byte	W96
@ 078   ----------------------------------------
	.byte		N92   , Dn2 , v032, gtp3
	.byte	W96
@ 079   ----------------------------------------
	.byte		N76   , Cs2 
	.byte	W96
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_9_046
@ 081   ----------------------------------------
	.byte		TIE   , Ds2 , v040
	.byte	W96
@ 082   ----------------------------------------
	.byte		N92   , Gs1 , v032, gtp1
	.byte	W01
	.byte		EOT   , Ds2 
	.byte	W92
	.byte	W03
@ 083   ----------------------------------------
	.byte		N20   , Gn1 , v036
	.byte	W24
	.byte		N19   
	.byte	W72
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	W96
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
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_9_042
@ 111   ----------------------------------------
	.byte		N90   , Ds2 , v040, gtp1
	.byte	W96
@ 112   ----------------------------------------
	.byte		N92   , Dn2 , v032, gtp3
	.byte	W96
@ 113   ----------------------------------------
	.byte		N76   , Cs2 
	.byte	W96
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_9_046
@ 115   ----------------------------------------
	.byte		TIE   , Ds2 , v040
	.byte	W96
@ 116   ----------------------------------------
	.byte		N92   , Gs1 , v032, gtp1
	.byte	W01
	.byte		EOT   , Ds2 
	.byte	W92
	.byte	W02
	.byte	FINE

@**************** Track 10 (Midi-Chn.10) ****************@

mus_toxic_britney_spears_10:
	.byte		VOL   , 127*mus_toxic_britney_spears_mvl/mxv
	.byte	KEYSH , mus_toxic_britney_spears_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 8
	.byte		N01   , Cn1 , v060
	.byte		N01   
	.byte	W24
	.byte		        En1 , v064
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N01   
	.byte	W36
	.byte		        En1 , v064
	.byte		N01   , Fs1 , v032
	.byte	W24
@ 001   ----------------------------------------
mus_toxic_britney_spears_10_001:
	.byte		N01   , Cn1 , v060
	.byte		N01   
	.byte	W24
	.byte		        En1 , v064
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N01   
	.byte	W36
	.byte		        En1 , v064
	.byte		N01   , Fs1 , v032
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_001
@ 003   ----------------------------------------
mus_toxic_britney_spears_10_003:
	.byte		N01   , Cn1 , v060
	.byte		N01   
	.byte	W24
	.byte		        En1 , v064
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N01   
	.byte	W60
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_003
@ 008   ----------------------------------------
	.byte	W72
	.byte		N01   , En1 , v064
	.byte		N01   
	.byte		N01   , Fs1 , v032
	.byte	W24
@ 009   ----------------------------------------
mus_toxic_britney_spears_10_009:
	.byte		N01   , Cn1 , v060
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 , v064
	.byte		N01   
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        En1 , v064
	.byte		N01   
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 023   ----------------------------------------
	.byte		N01   , Cn1 , v060
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 , v064
	.byte		N01   
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		N01   
	.byte	W48
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
mus_toxic_britney_spears_10_034:
	.byte		N01   , Cn1 , v060
	.byte		N01   , En1 , v064
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 , v064
	.byte		N01   
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        En1 , v064
	.byte		N01   
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 050   ----------------------------------------
	.byte		N01   , Cn1 , v060
	.byte		N01   , Fs1 , v032
	.byte	W72
	.byte		        En1 , v064
	.byte		N01   
	.byte		N01   , Fs1 , v032
	.byte	W24
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_034
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 083   ----------------------------------------
	.byte		N01   , Cn1 , v060
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 , v064
	.byte		N01   
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N01   , Fs1 , v032
	.byte	W60
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_001
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_001
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_001
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_001
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_001
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_001
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_001
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_001
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_001
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W60
	.byte		N01   , Fs1 , v032
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        En1 , v064
	.byte		N01   
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		N01   
	.byte	W12
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_034
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_034
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_toxic_britney_spears_10_009
@ 116   ----------------------------------------
	.byte		N01   , Cn1 , v060
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        En1 , v064
	.byte		N01   
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        En1 , v064
	.byte		N01   
	.byte		N01   , Fs1 , v032
	.byte	W12
	.byte		N01   
	.byte	W11
	.byte	FINE

@******************************************************@
	.align	2

mus_toxic_britney_spears:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_toxic_britney_spears_pri	@ Priority
	.byte	mus_toxic_britney_spears_rev	@ Reverb.

	.word	mus_toxic_britney_spears_grp

	.word	mus_toxic_britney_spears_1
	.word	mus_toxic_britney_spears_2
	.word	mus_toxic_britney_spears_3
	.word	mus_toxic_britney_spears_4
	.word	mus_toxic_britney_spears_5
	.word	mus_toxic_britney_spears_6
	.word	mus_toxic_britney_spears_7
	.word	mus_toxic_britney_spears_8
	.word	mus_toxic_britney_spears_9
	.word	mus_toxic_britney_spears_10

	.end
