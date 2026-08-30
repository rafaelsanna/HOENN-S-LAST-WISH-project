	.include "MPlayDef.s"

	.equ	mus_theme_of_aldebaran_grp, voicegroup_theme_of_aldebaran
	.equ	mus_theme_of_aldebaran_pri, 0
	.equ	mus_theme_of_aldebaran_rev, reverb_set+50
	.equ	mus_theme_of_aldebaran_mvl, 100
	.equ	mus_theme_of_aldebaran_key, 0
	.equ	mus_theme_of_aldebaran_tbs, 1
	.equ	mus_theme_of_aldebaran_exg, 1
	.equ	mus_theme_of_aldebaran_cmp, 1

	.section .rodata
	.global	mus_theme_of_aldebaran
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_theme_of_aldebaran_1:
	.byte	KEYSH , mus_theme_of_aldebaran_key+0
mus_theme_of_aldebaran_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 500*mus_theme_of_aldebaran_tbs/2
	.byte	TEMPO , 91*mus_theme_of_aldebaran_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 125*mus_theme_of_aldebaran_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_theme_of_aldebaran_1_004:
	.byte		N68   , Cn2 , v127, gtp3
	.byte	W72
	.byte		N23   , Gn1 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
mus_theme_of_aldebaran_1_005:
	.byte		N68   , As1 , v104, gtp3
	.byte	W72
	.byte		N23   , Fn2 , v127
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
mus_theme_of_aldebaran_1_006:
	.byte		N44   , Ds2 , v127, gtp3
	.byte	W48
	.byte		        Cs2 , v127, gtp3
	.byte	W48
	.byte	PEND
@ 007   ----------------------------------------
	.byte	TEMPO , 88*mus_theme_of_aldebaran_tbs/2
	.byte		TIE   , Bn1 
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 009   ----------------------------------------
	.byte	TEMPO , 92*mus_theme_of_aldebaran_tbs/2
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_004
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_005
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_006
@ 016   ----------------------------------------
	.byte	TEMPO , 84*mus_theme_of_aldebaran_tbs/2
	.byte		N90   , Fs2 , v104, gtp1
	.byte	W96
@ 017   ----------------------------------------
	.byte	TEMPO , 92*mus_theme_of_aldebaran_tbs/2
	.byte		N44   , Bn0 , v092, gtp3
	.byte	W48
	.byte		        Ds1 , v104, gtp3
	.byte	W48
@ 018   ----------------------------------------
mus_theme_of_aldebaran_1_018:
	.byte		N44   , En1 , v104, gtp3
	.byte	W48
	.byte		        Fs1 , v104, gtp3
	.byte	W48
	.byte	PEND
@ 019   ----------------------------------------
	.byte		        Bn0 , v092, gtp3
	.byte	W48
	.byte		        Ds1 , v104, gtp3
	.byte	W48
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_018
@ 021   ----------------------------------------
mus_theme_of_aldebaran_1_021:
	.byte		N44   , Gn1 , v104, gtp3
	.byte	W48
	.byte		        Gs1 , v104, gtp3
	.byte	W48
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_021
@ 023   ----------------------------------------
	.byte		N92   , Fn1 , v104, gtp3
	.byte	W96
@ 024   ----------------------------------------
	.byte		        En1 , v104, gtp3
	.byte	W96
@ 025   ----------------------------------------
mus_theme_of_aldebaran_1_025:
	.byte		N44   , Fs1 , v104, gtp3
	.byte	W48
	.byte		N48   , En1 
	.byte	W48
	.byte	PEND
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W24
	.byte	TEMPO , 88*mus_theme_of_aldebaran_tbs/2
	.byte	W24
	.byte	TEMPO , 80*mus_theme_of_aldebaran_tbs/2
	.byte	W48
@ 028   ----------------------------------------
mus_theme_of_aldebaran_1_028:
	.byte	TEMPO , 92*mus_theme_of_aldebaran_tbs/2
	.byte		N52   , As1 , v127, gtp1
	.byte	W54
	.byte		N11   , Ds1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte	PEND
@ 029   ----------------------------------------
mus_theme_of_aldebaran_1_029:
	.byte		N80   , As0 , v127, gtp3
	.byte	W84
	.byte		N05   , Fn1 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte	PEND
@ 030   ----------------------------------------
mus_theme_of_aldebaran_1_030:
	.byte		N68   , As0 , v127, gtp3
	.byte	W72
	.byte		N23   , Fn1 
	.byte	W24
	.byte	PEND
@ 031   ----------------------------------------
mus_theme_of_aldebaran_1_031:
	.byte		N80   , As0 , v127, gtp3
	.byte	W84
	.byte		N11   , Gs1 
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
mus_theme_of_aldebaran_1_032:
	.byte		N23   , As1 , v127
	.byte	W24
	.byte		N44   , Gs1 , v127, gtp3
	.byte	W48
	.byte		N11   , Ds2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	PEND
@ 033   ----------------------------------------
mus_theme_of_aldebaran_1_033:
	.byte		N80   , Gs1 , v127, gtp3
	.byte	W84
	.byte		N05   , Fn1 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte	PEND
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_031
@ 035   ----------------------------------------
	.byte		N92   , As1 , v127, gtp3
	.byte	W96
@ 036   ----------------------------------------
mus_theme_of_aldebaran_1_036:
	.byte		N17   , As0 , v127
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N36   
	.byte	W48
	.byte		N05   , Fn1 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte	PEND
@ 037   ----------------------------------------
mus_theme_of_aldebaran_1_037:
	.byte		N17   , As0 , v127
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N36   
	.byte	W60
	.byte	PEND
@ 038   ----------------------------------------
mus_theme_of_aldebaran_1_038:
	.byte		N17   , As0 , v127
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N36   
	.byte	W42
	.byte		N17   , Gs1 
	.byte	W18
	.byte	PEND
@ 039   ----------------------------------------
mus_theme_of_aldebaran_1_039:
	.byte		N17   , As0 , v127
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N36   
	.byte	W48
	.byte		N05   , Gs0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte	PEND
@ 040   ----------------------------------------
mus_theme_of_aldebaran_1_040:
	.byte		N17   , Gs0 , v127
	.byte	W18
	.byte		N06   , As0 
	.byte	W18
	.byte		N36   
	.byte	W48
	.byte		N05   , Cs1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte	PEND
@ 041   ----------------------------------------
mus_theme_of_aldebaran_1_041:
	.byte		N17   , Gs0 , v127
	.byte	W18
	.byte		N06   , As0 
	.byte	W18
	.byte		N36   
	.byte	W48
	.byte		N05   , Fn1 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte	PEND
@ 042   ----------------------------------------
mus_theme_of_aldebaran_1_042:
	.byte		N17   , As0 , v127
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N36   
	.byte	W48
	.byte		N05   , Cs1 
	.byte	W06
	.byte		        Gs0 
	.byte	W06
	.byte	PEND
@ 043   ----------------------------------------
mus_theme_of_aldebaran_1_043:
	.byte		N17   , As0 , v127
	.byte	W18
	.byte		N06   
	.byte	W18
	.byte		N32   , As0 , v127, gtp3
	.byte	W36
	.byte		N23   , Fn1 
	.byte	W24
	.byte	PEND
@ 044   ----------------------------------------
mus_theme_of_aldebaran_1_044:
	.byte		N36   , Fs1 , v127
	.byte	W42
	.byte		N05   
	.byte	W06
	.byte		N11   , An0 
	.byte	W12
	.byte		N06   
	.byte	W36
	.byte	PEND
@ 045   ----------------------------------------
mus_theme_of_aldebaran_1_045:
	.byte		N24   , As0 , v127
	.byte	W36
	.byte		N44   , Ds1 , v127, gtp3
	.byte	W48
	.byte		N11   , Fn1 
	.byte	W12
	.byte	PEND
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_044
@ 047   ----------------------------------------
mus_theme_of_aldebaran_1_047:
	.byte		N24   , As0 , v127
	.byte	W36
	.byte		N05   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N44   , Ds1 , v127, gtp3
	.byte	W48
	.byte	PEND
@ 048   ----------------------------------------
mus_theme_of_aldebaran_1_048:
	.byte		N24   , Fs1 , v127
	.byte	W36
	.byte		N32   , Fs1 , v127, gtp3
	.byte	W36
	.byte		N23   , Gs1 
	.byte	W24
	.byte	PEND
@ 049   ----------------------------------------
	.byte		N24   , Gs0 
	.byte	W36
	.byte		TIE   
	.byte	W36
	.byte	TEMPO , 70*mus_theme_of_aldebaran_tbs/2
	.byte	W24
@ 050   ----------------------------------------
	.byte	TEMPO , 60*mus_theme_of_aldebaran_tbs/2
	.byte	W60
	.byte	W03
	.byte	TEMPO , 92*mus_theme_of_aldebaran_tbs/2
	.byte	W32
	.byte		EOT   
	.byte	W01
@ 051   ----------------------------------------
mus_theme_of_aldebaran_1_051:
	.byte		N44   , Bn0 , v104, gtp3
	.byte	W48
	.byte		        Ds1 , v104, gtp3
	.byte	W48
	.byte	PEND
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_018
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_051
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_018
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_021
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_021
@ 057   ----------------------------------------
	.byte		N92   , Fn1 , v104, gtp3
	.byte	W96
@ 058   ----------------------------------------
	.byte		        En1 , v104, gtp3
	.byte	W96
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_025
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W24
	.byte	TEMPO , 88*mus_theme_of_aldebaran_tbs/2
	.byte	W72
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_028
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_029
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_030
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_031
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_032
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_033
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_031
@ 069   ----------------------------------------
	.byte		N92   , As1 , v127, gtp3
	.byte	W96
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_036
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_037
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_038
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_039
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_040
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_041
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_042
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_043
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_044
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_045
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_044
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_047
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_1_048
@ 083   ----------------------------------------
	.byte		N24   , Gs0 , v127
	.byte	W36
	.byte		N66   , Gs0 , v127, gtp1
	.byte	W60
@ 084   ----------------------------------------
	.byte	TEMPO , 88*mus_theme_of_aldebaran_tbs/2
	.byte	W08
	.byte		TIE   , Cs1 
	.byte	W88
@ 085   ----------------------------------------
	.byte	TEMPO , 80*mus_theme_of_aldebaran_tbs/2
	.byte	W96
	.byte		EOT   
	.byte	GOTO
	 .word	mus_theme_of_aldebaran_1_B1
mus_theme_of_aldebaran_1_B2:
@ 086   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_theme_of_aldebaran_2:
	.byte	KEYSH , mus_theme_of_aldebaran_key+0
mus_theme_of_aldebaran_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 48*mus_theme_of_aldebaran_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N11   , Cn2 , v084
	.byte	W12
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N05   , Cn2 
	.byte	W06
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 001   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N08   , As2 
	.byte	W09
	.byte		N03   , Gn3 , v052
	.byte	W44
	.byte	W01
@ 002   ----------------------------------------
	.byte		N11   , An2 , v084
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N05   , Fn2 
	.byte	W06
	.byte		N48   , Cn3 
	.byte	W48
@ 003   ----------------------------------------
	.byte	W03
	.byte		N03   , Cs2 , v052
	.byte	W09
	.byte		N05   , Fn2 , v084
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N05   , Fn2 
	.byte	W06
	.byte		N17   , Bn2 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N11   , Dn3 
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N05   , Cn2 
	.byte	W06
	.byte		N03   , En3 , v052
	.byte	W18
	.byte		N17   , Dn3 , v084
	.byte	W18
	.byte		N11   , Cn3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N05   , As2 
	.byte	W06
	.byte		N17   , En3 
	.byte	W18
	.byte		        Dn3 
	.byte	W18
	.byte		N11   , Cn3 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N18   , As2 
	.byte	W21
	.byte		N03   , Cn3 , v052
	.byte	W09
	.byte		N05   , Fn3 , v084
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N15   , Gs2 
	.byte	W16
	.byte		N03   , Fs2 
	.byte	W02
@ 007   ----------------------------------------
	.byte	W02
	.byte		N01   , Cs3 
	.byte	W02
	.byte		TIE   , Fs3 
	.byte	W92
@ 008   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 009   ----------------------------------------
	.byte		N11   , Gn2 , v076
	.byte	W12
	.byte		N05   , Gn2 , v084
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn3 , v060
	.byte	W06
	.byte		N11   , Dn3 , v084
	.byte	W12
	.byte		N05   , Cn2 
	.byte	W06
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        Dn3 , v076
	.byte	W06
	.byte		N11   , Gn3 , v084
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		N05   , Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Gn3 , v060
	.byte	W06
	.byte		N11   , Fn3 , v084
	.byte	W12
	.byte		N08   , As2 
	.byte	W09
	.byte		N03   , En3 , v052
	.byte	W44
	.byte	W01
@ 011   ----------------------------------------
	.byte		N11   , Cn3 , v060
	.byte	W12
	.byte		N05   , An2 , v084
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn3 , v060
	.byte	W06
	.byte		N11   , Dn3 , v084
	.byte	W12
	.byte		N05   , Fn2 
	.byte	W06
	.byte		N44   , Cn3 , v084, gtp3
	.byte	W48
@ 012   ----------------------------------------
	.byte		N02   , Cn3 , v060
	.byte	W03
	.byte		N03   , Cs2 , v052
	.byte	W09
	.byte		N05   , Fn2 , v084
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N05   , Fn2 
	.byte	W06
	.byte		N17   , Bn2 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N11   , Dn3 
	.byte	W12
@ 013   ----------------------------------------
	.byte		        En3 , v060
	.byte	W12
	.byte		N05   , Gn2 , v084
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N05   , Cn2 
	.byte	W06
	.byte		N03   , En3 , v052
	.byte	W18
	.byte		N05   , Dn3 , v084
	.byte	W06
	.byte		N06   , En3 , v076
	.byte	W12
	.byte		N11   , Cn3 , v084
	.byte	W12
@ 014   ----------------------------------------
	.byte		        Fn3 , v060
	.byte	W12
	.byte		N05   , Gn2 , v084
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N05   , As2 
	.byte	W06
	.byte		N17   , En3 
	.byte	W18
	.byte		        Dn3 
	.byte	W18
	.byte		N11   , Cn3 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Gn3 , v060
	.byte	W12
	.byte		N05   , Gn3 , v084
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N17   , As2 
	.byte	W18
	.byte		N02   , Gs3 , v060
	.byte	W03
	.byte		N03   , Cn3 , v052
	.byte	W09
	.byte		N05   , Fn3 , v084
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N15   , Gs2 
	.byte	W16
	.byte		N01   , Fs2 
	.byte	W02
@ 016   ----------------------------------------
	.byte		        As3 , v060
	.byte	W02
	.byte		        Cs3 , v084
	.byte	W02
	.byte		N90   , Fs3 , v084, gtp1
	.byte	W92
@ 017   ----------------------------------------
	.byte		N11   , Bn2 , v060
	.byte	W12
	.byte		N05   , Ds3 , v084
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N11   , Fs3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N11   , Fs3 
	.byte	W12
@ 018   ----------------------------------------
	.byte		        En2 
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N17   , Gs2 
	.byte	W18
	.byte		N12   , Bn2 
	.byte	W15
	.byte		N03   , Fs3 , v052
	.byte	W09
	.byte		N05   , As2 , v084
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   , As2 
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
@ 019   ----------------------------------------
mus_theme_of_aldebaran_2_019:
	.byte		N11   , Bn1 , v084
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N11   , Fs3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N11   , Fs2 
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N11   , Fs3 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte		        Fs3 , v060
	.byte	W12
	.byte		N05   , Fs3 , v084
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        As2 , v060
	.byte	W12
	.byte		N12   , As2 , v084
	.byte	W15
	.byte		N03   , Cs3 , v052
	.byte	W21
@ 021   ----------------------------------------
mus_theme_of_aldebaran_2_021:
	.byte		N11   , Gn2 , v084
	.byte	W12
	.byte		N05   , As2 
	.byte	W06
	.byte		N11   , En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N23   , Ds3 , v060
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
mus_theme_of_aldebaran_2_022:
	.byte		N11   , Gn2 , v084
	.byte	W12
	.byte		N05   , As2 
	.byte	W06
	.byte		N11   , En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N02   , Ds3 , v060
	.byte		N01   , Gs3 
	.byte	W03
	.byte		N03   , Ds3 , v052
	.byte	W21
	.byte	PEND
@ 023   ----------------------------------------
mus_theme_of_aldebaran_2_023:
	.byte		N11   , Ds3 , v084
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gs3 , v060
	.byte	W06
	.byte		        Gs3 , v084
	.byte	W06
	.byte		N11   , Cs4 , v060
	.byte	W12
	.byte		        Cs3 , v084
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_theme_of_aldebaran_2_024:
	.byte		N11   , Ds3 , v084
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N05   , Gs3 
	.byte	W06
	.byte		N11   , Gs3 , v060
	.byte	W12
	.byte		        Cs3 , v084
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte	PEND
@ 025   ----------------------------------------
mus_theme_of_aldebaran_2_025:
	.byte		N02   , Cs3 , v060
	.byte	W03
	.byte		N03   , Fs2 , v052
	.byte	W09
	.byte		N05   , Cs3 , v084
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N11   , En2 
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
	.byte		N11   , An2 , v060
	.byte	W12
	.byte		        Cs3 , v084
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06   , An3 , v060
	.byte	W12
	.byte		N17   , Cn3 
	.byte	W18
	.byte		        Gn2 , v084
	.byte	W18
	.byte		N11   , En2 
	.byte	W12
@ 027   ----------------------------------------
mus_theme_of_aldebaran_2_027:
	.byte		N11   , Cs3 , v060
	.byte	W12
	.byte		N06   , En2 , v084
	.byte	W09
	.byte		N03   , Cs4 , v052
	.byte	W15
	.byte		N56   , Bn3 , v084, gtp3
	.byte	W60
	.byte	PEND
@ 028   ----------------------------------------
mus_theme_of_aldebaran_2_028:
	.byte		N11   , Cs3 , v060
	.byte	W12
	.byte		N05   , Cn3 , v084
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , As3 
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W15
	.byte		N02   , Cs3 , v052
	.byte	W03
	.byte		N05   , Gs3 , v084
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	PEND
@ 029   ----------------------------------------
	.byte		N11   , As2 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , As3 
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W15
	.byte		N02   , Cs3 , v052
	.byte	W03
	.byte		N11   , As3 , v060
	.byte	W12
@ 030   ----------------------------------------
mus_theme_of_aldebaran_2_030:
	.byte		N11   , Gs3 , v060
	.byte	W12
	.byte		N05   , Cn3 , v084
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , As3 
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	PEND
@ 031   ----------------------------------------
mus_theme_of_aldebaran_2_031:
	.byte		N11   , As2 , v084
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , As3 
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N11   , As3 , v060
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
mus_theme_of_aldebaran_2_032:
	.byte		N11   , Ds3 , v060
	.byte	W12
	.byte		N05   , Gs2 , v084
	.byte	W06
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N05   , Gs2 
	.byte	W06
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N05   , Cn4 
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 , v060
	.byte	W06
	.byte	PEND
@ 033   ----------------------------------------
mus_theme_of_aldebaran_2_033:
	.byte		N11   , Gs2 , v084
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W15
	.byte		N03   , Cs4 , v052
	.byte	W09
	.byte		N05   , Gs2 , v084
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W18
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N11   , Gs3 
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_theme_of_aldebaran_2_034:
	.byte		N11   , Cs3 , v060
	.byte	W12
	.byte		N05   , As2 , v084
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N05   , As2 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , Gs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 , v060
	.byte	W06
	.byte		        Cs3 , v084
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	PEND
@ 035   ----------------------------------------
mus_theme_of_aldebaran_2_035:
	.byte		N11   , Cs3 , v060
	.byte	W12
	.byte		N05   , As2 , v084
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N05   , As2 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , Gs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W15
	.byte		N03   , Gs2 , v052
	.byte	W09
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_028
@ 037   ----------------------------------------
mus_theme_of_aldebaran_2_037:
	.byte		N11   , As2 , v084
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , As3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N08   , As3 , v060
	.byte	W09
	.byte		N02   , Cs3 , v052
	.byte	W03
	.byte		N11   , Gs3 , v084
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_030
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_031
@ 040   ----------------------------------------
	.byte		N11   , Ds3 , v060
	.byte	W12
	.byte		N05   , Gs2 , v084
	.byte	W06
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N05   , Gs2 
	.byte	W06
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N05   , Cn4 
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_033
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_034
@ 043   ----------------------------------------
mus_theme_of_aldebaran_2_043:
	.byte		N11   , Cs3 , v060
	.byte	W12
	.byte		N05   , As2 , v084
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N05   , As2 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , Gs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn3 , v060
	.byte	W06
	.byte		        Cs3 , v084
	.byte	W06
	.byte		N11   , Gn3 
	.byte	W12
	.byte	PEND
@ 044   ----------------------------------------
	.byte		N05   , Cs3 , v076
	.byte	W06
	.byte		        Fs3 , v084
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N11   , As2 
	.byte	W12
	.byte		N17   , Cs3 
	.byte	W18
	.byte		N11   , Ds3 , v060
	.byte	W12
	.byte		N05   , Cn3 , v076
	.byte	W06
	.byte		N06   , Cs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W11
	.byte		N06   
	.byte	W07
@ 045   ----------------------------------------
	.byte		N11   , Cs3 , v060
	.byte	W12
	.byte		N06   , Fn3 , v084
	.byte	W08
	.byte		N03   , Cs4 , v052
	.byte	W10
	.byte		N05   , Cs3 , v084
	.byte	W06
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N32   , Ds3 , v084, gtp3
	.byte	W36
	.byte		N11   , Fn2 
	.byte	W12
@ 046   ----------------------------------------
	.byte		N05   , Cs3 , v060
	.byte	W06
	.byte		        Fs3 , v084
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N11   , Cs4 , v060
	.byte	W12
	.byte		N17   , Cs3 , v084
	.byte	W18
	.byte		N11   , An3 , v060
	.byte	W12
	.byte		N05   , Cn3 , v076
	.byte	W06
	.byte		N06   , Cs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N05   
	.byte	W06
@ 047   ----------------------------------------
	.byte		N11   , Cs3 , v060
	.byte	W12
	.byte		N05   , Fn3 , v084
	.byte	W06
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N12   , As3 
	.byte	W15
	.byte		N03   , Ds3 , v052
	.byte	W09
	.byte		N05   , Gn2 , v084
	.byte	W06
	.byte		N17   , As2 
	.byte	W18
	.byte		N11   , Cn3 
	.byte	W12
@ 048   ----------------------------------------
mus_theme_of_aldebaran_2_048:
	.byte		N11   , Cs3 , v060
	.byte	W12
	.byte		N05   , As2 , v084
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fs3 , v076
	.byte	W06
	.byte		        As2 , v084
	.byte	W06
	.byte		N11   , Gs3 , v076
	.byte	W12
	.byte		N17   , Gs3 , v084
	.byte	W18
	.byte		        Fs3 
	.byte	W18
	.byte		N11   , Cs3 
	.byte	W12
	.byte	PEND
@ 049   ----------------------------------------
	.byte		        Ds3 , v060
	.byte	W12
	.byte		N05   , Cs3 , v084
	.byte	W06
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N08   , Cn3 , v060
	.byte	W09
	.byte		N03   , Gs3 , v052
	.byte	W48
	.byte	W03
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_019
@ 052   ----------------------------------------
	.byte		N11   , En2 , v084
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N17   , Gs2 
	.byte	W18
	.byte		N12   , Bn2 
	.byte	W15
	.byte		N03   , Fs3 , v052
	.byte	W09
	.byte		N05   , As2 , v084
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   , Fn4 , v076
	.byte	W06
	.byte		        Gs2 , v084
	.byte	W06
	.byte		        Fs4 , v076
	.byte	W06
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_019
@ 054   ----------------------------------------
	.byte		N11   , Fs3 , v060
	.byte	W12
	.byte		N05   , Fs3 , v084
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N05   , Cs4 , v076
	.byte	W06
	.byte		N08   , Fs4 
	.byte	W09
	.byte		N03   , Cs3 , v052
	.byte	W21
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_021
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_022
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_023
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_024
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_025
@ 060   ----------------------------------------
	.byte		N11   , An2 , v060
	.byte	W12
	.byte		N05   , Cs3 , v084
	.byte	W06
	.byte		        Fs3 , v080
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N07   , En3 , v060
	.byte	W08
	.byte		N06   , Bn3 , v080
	.byte	W08
	.byte		N01   , Gn3 
	.byte	W02
	.byte		N05   , Gn2 , v084
	.byte	W06
	.byte		N06   , Fs3 , v080
	.byte	W12
	.byte		        En3 
	.byte	W08
	.byte		N03   , Ds3 
	.byte	W04
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_027
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_028
@ 063   ----------------------------------------
	.byte		N11   , As2 , v084
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , As3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 , v076
	.byte	W06
	.byte		N02   , Ds3 
	.byte	W03
	.byte		N01   , Cs3 , v052
	.byte	W01
	.byte		        Gs3 , v076
	.byte	W02
	.byte		N05   , As3 , v060
	.byte	W06
	.byte		        Fn3 , v076
	.byte	W06
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_030
@ 065   ----------------------------------------
	.byte		N11   , As2 , v084
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , As3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 , v068
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_032
@ 067   ----------------------------------------
	.byte		N11   , Gs2 , v084
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W15
	.byte		N03   , Cs4 , v052
	.byte	W09
	.byte		N05   , Gs2 , v084
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W18
	.byte		N05   , Gs2 
	.byte	W06
	.byte		        Cs3 , v076
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_034
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_035
@ 070   ----------------------------------------
	.byte		N11   , Fn3 , v060
	.byte	W12
	.byte		N05   , Cn3 , v084
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , As3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N08   , Gs3 , v060
	.byte	W09
	.byte		N02   , Cs3 , v052
	.byte	W03
	.byte		N05   , Gs3 , v084
	.byte	W06
	.byte		        Gs2 
	.byte	W06
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_037
@ 072   ----------------------------------------
	.byte		N11   , As2 , v084
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , As3 
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
@ 073   ----------------------------------------
	.byte		N11   , As2 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , As3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Ds4 , v060
	.byte	W06
	.byte		        Cs3 , v084
	.byte	W06
	.byte		N11   , Gs3 
	.byte	W12
@ 074   ----------------------------------------
	.byte		        Gs3 , v060
	.byte	W12
	.byte		N05   , Gs2 , v084
	.byte	W06
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N05   , Gs2 
	.byte	W06
	.byte		N11   , Ds3 
	.byte	W12
	.byte		N05   , Cn4 
	.byte	W06
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
@ 075   ----------------------------------------
	.byte		N11   , Cn3 , v060
	.byte	W12
	.byte		N05   , Gs2 , v084
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W15
	.byte		N03   , Cs4 , v052
	.byte	W09
	.byte		N05   , Gs2 , v084
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W18
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N05   , Ds3 
	.byte	W06
	.byte		N11   , Gs3 
	.byte	W12
@ 076   ----------------------------------------
	.byte		        Fn3 , v060
	.byte	W12
	.byte		N05   , As2 , v084
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N05   , As2 
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N05   , Gs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 , v060
	.byte	W06
	.byte		        Cs3 , v084
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_043
@ 078   ----------------------------------------
	.byte		N05   , Fn3 , v060
	.byte	W06
	.byte		        Fs3 , v084
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N11   , Cs4 , v060
	.byte	W12
	.byte		N17   , Cs3 , v084
	.byte	W18
	.byte		N11   , An3 , v060
	.byte	W12
	.byte		N05   , An2 , v084
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N01   , Cn3 
	.byte	W02
	.byte		N07   , Ds4 , v080
	.byte	W08
	.byte		        Fn4 
	.byte	W08
@ 079   ----------------------------------------
	.byte		N11   , Fn3 , v060
	.byte	W12
	.byte		N06   , Fn3 , v084
	.byte	W08
	.byte		N03   , Cs4 , v052
	.byte	W10
	.byte		N05   , Cs3 , v084
	.byte	W06
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N32   , Ds3 , v084, gtp3
	.byte	W36
	.byte		N11   , Fn2 
	.byte	W12
@ 080   ----------------------------------------
	.byte		N05   , Fn3 , v060
	.byte	W06
	.byte		        Fs3 , v084
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N11   , Cs4 , v060
	.byte	W12
	.byte		N01   , Cs3 , v084
	.byte	W02
	.byte		N15   , An3 , v080
	.byte	W16
	.byte		N07   , An3 , v060
	.byte	W08
	.byte		N03   , Fn4 , v080
	.byte	W04
	.byte		        An2 , v084
	.byte	W04
	.byte		N01   , Ds4 , v080
	.byte	W02
	.byte		N05   , Cs3 , v084
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		N01   , Cn3 , v084
	.byte	W02
	.byte		N15   , Ds4 , v080
	.byte	W16
@ 081   ----------------------------------------
	.byte		N11   , Fn3 , v060
	.byte	W12
	.byte		N05   , Fn3 , v084
	.byte	W06
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N12   , As3 
	.byte	W15
	.byte		N03   , Ds3 , v052
	.byte	W09
	.byte		N05   , Gn2 , v084
	.byte	W06
	.byte		N17   , As2 
	.byte	W18
	.byte		N11   , Cn3 
	.byte	W12
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_2_048
@ 083   ----------------------------------------
	.byte		N11   , Ds3 , v060
	.byte	W12
	.byte		N05   , Cs3 , v084
	.byte	W06
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W15
	.byte		N03   , Gs3 , v052
	.byte	W48
	.byte	W03
@ 084   ----------------------------------------
	.byte	W36
	.byte		TIE   , Cn3 , v060
	.byte	W60
@ 085   ----------------------------------------
	.byte	W96
	.byte		EOT   
	.byte	GOTO
	 .word	mus_theme_of_aldebaran_2_B1
mus_theme_of_aldebaran_2_B2:
@ 086   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_theme_of_aldebaran_3:
	.byte	KEYSH , mus_theme_of_aldebaran_key+0
mus_theme_of_aldebaran_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_theme_of_aldebaran_mvl/mxv
	.byte		PAN   , c_v+10
	.byte	W24
	.byte		N44   , Cn5 , v120, gtp3
	.byte	W48
	.byte		TIE   , Gn4 
	.byte	W24
@ 001   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 002   ----------------------------------------
	.byte		N68   , Gn4 , v120, gtp3
	.byte	W72
	.byte		        Fn4 , v120, gtp3
	.byte	W24
@ 003   ----------------------------------------
	.byte	W48
	.byte		N92   , Gn4 , v120, gtp3
	.byte	W48
@ 004   ----------------------------------------
	.byte	W48
	.byte		N23   , Cn5 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
@ 005   ----------------------------------------
	.byte		N92   , Fn4 , v120, gtp3
	.byte	W96
@ 006   ----------------------------------------
	.byte		N44   , Ds5 , v120, gtp3
	.byte	W48
	.byte		        Cs5 , v120, gtp3
	.byte	W48
@ 007   ----------------------------------------
	.byte		N03   , Fs4 , v080
	.byte	W04
	.byte		        Fs4 , v092
	.byte	W04
	.byte		        Fs4 , v076
	.byte	W04
	.byte		        Fs4 , v092
	.byte	W04
	.byte		        Fs4 , v076
	.byte	W04
	.byte		        Fs4 , v088
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		        Fs4 , v084
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		        Fs4 , v084
	.byte	W04
	.byte		        Fs4 , v068
	.byte	W04
	.byte		        Fs4 , v080
	.byte	W04
	.byte		        Fs4 , v068
	.byte	W04
	.byte		        Fs4 , v076
	.byte	W04
	.byte		        Fs4 , v064
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		        Fs4 , v064
	.byte	W04
	.byte		        Fs4 , v072
	.byte	W04
	.byte		        Fs4 , v060
	.byte	W04
	.byte		        Fs4 , v068
	.byte	W04
	.byte		        Fs4 , v060
	.byte	W04
	.byte		        Fs4 , v064
	.byte	W04
	.byte		        Fs4 , v056
	.byte	W04
	.byte		        Fs4 , v064
	.byte	W04
@ 008   ----------------------------------------
	.byte		        Fs4 , v056
	.byte	W04
	.byte		        Fs4 , v060
	.byte	W04
	.byte		        Fs4 , v052
	.byte	W04
	.byte		        Fs4 , v056
	.byte	W04
	.byte		        Fs4 , v052
	.byte	W04
	.byte		        Fs4 , v056
	.byte	W04
	.byte		        Fs4 , v048
	.byte	W04
	.byte		        Fs4 , v052
	.byte	W04
	.byte		        Fs4 , v044
	.byte	W04
	.byte		        Fs4 , v048
	.byte	W04
	.byte		        Fs4 , v044
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		        Fs4 , v040
	.byte	W04
	.byte		        Fs4 , v044
	.byte	W04
	.byte		        Fs4 , v040
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
	.byte		N08   
	.byte	W08
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W72
	.byte		N32   , En5 , v120, gtp3
	.byte	W24
@ 011   ----------------------------------------
	.byte	W12
	.byte		N56   , Cn5 , v120, gtp3
	.byte	W60
	.byte		N32   , Gn4 , v120, gtp3
	.byte	W24
@ 012   ----------------------------------------
	.byte	W12
	.byte		        Fn4 , v120, gtp3
	.byte	W36
	.byte		N23   , Cn4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 013   ----------------------------------------
	.byte		N68   , Gn3 , v120, gtp3
	.byte	W72
	.byte		        Dn4 , v120, gtp3
	.byte	W24
@ 014   ----------------------------------------
	.byte	W48
	.byte		N23   , En4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
@ 015   ----------------------------------------
	.byte		N44   , Gn4 , v120, gtp3
	.byte	W48
	.byte		N23   , Fn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 016   ----------------------------------------
	.byte		N90   , Cs4 , v120, gtp1
	.byte	W96
@ 017   ----------------------------------------
mus_theme_of_aldebaran_3_017:
	.byte		N40   , Bn2 , v127, gtp1
	.byte	W42
	.byte		N23   
	.byte	W24
	.byte		N17   , Cs3 
	.byte	W18
	.byte		N28   , Ds3 , v127, gtp1
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	W18
	.byte		        Bn2 , v127, gtp1
	.byte	W30
	.byte		N17   , Fs3 
	.byte	W18
	.byte		        Bn2 
	.byte	W18
	.byte		N11   , Cs3 
	.byte	W12
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_3_017
@ 020   ----------------------------------------
	.byte	W18
	.byte		N28   , Bn2 , v127, gtp1
	.byte	W30
	.byte		N32   , As2 , v127, gtp3
	.byte	W36
	.byte		N12   , Cs3 
	.byte	W12
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
	.byte		N96   , Fs4 , v120
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W60
	.byte		N11   , As2 
	.byte	W12
	.byte		N17   , Cs3 
	.byte	W18
	.byte		N05   , Ds3 
	.byte	W06
@ 030   ----------------------------------------
	.byte		N96   , Fn3 
	.byte	W96
@ 031   ----------------------------------------
	.byte	W66
	.byte		N05   
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		TIE   , As3 
	.byte	W06
@ 032   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 033   ----------------------------------------
	.byte		N44   , Gs3 , v120, gtp3
	.byte	W48
	.byte		        Ds4 , v120, gtp3
	.byte	W48
@ 034   ----------------------------------------
	.byte		N05   , Fn4 
	.byte	W06
	.byte		TIE   , As3 
	.byte	W90
@ 035   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte	W48
@ 036   ----------------------------------------
	.byte	W19
	.byte		N04   , Ds3 , v116
	.byte	W05
	.byte		N01   , Fn3 , v120
	.byte	W01
	.byte		N05   , Fn3 , v116
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N04   , Fn3 
	.byte	W05
	.byte		N05   , As3 
	.byte	W06
	.byte		        Gs2 , v120
	.byte	W06
	.byte		        Cs4 , v116
	.byte	W12
	.byte		        Ds4 , v120
	.byte	W12
	.byte		        Ds4 , v116
	.byte	W06
	.byte		        As2 , v120
	.byte	W06
	.byte		        Ds4 
	.byte	W06
@ 037   ----------------------------------------
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds4 , v124
	.byte	W09
	.byte		N02   , Ds4 , v120
	.byte	W06
	.byte		N08   , Ds4 , v127
	.byte	W09
	.byte		N02   , Cs4 , v120
	.byte	W03
	.byte		        Cn4 , v116
	.byte	W03
	.byte		N07   , As3 
	.byte	W12
	.byte		N23   , Gs2 , v120
	.byte	W24
	.byte		N40   , Cs3 , v120, gtp1
	.byte	W24
@ 038   ----------------------------------------
	.byte	W18
	.byte		N05   , Fn4 , v116
	.byte	W06
	.byte		N06   , Fn4 , v124
	.byte	W09
	.byte		        Fn4 , v116
	.byte	W09
	.byte		N05   , Fn4 , v124
	.byte	W06
	.byte		        Gs2 , v120
	.byte	W06
	.byte		N06   , Fn4 , v124
	.byte	W09
	.byte		N02   , En4 , v116
	.byte	W03
	.byte		N11   , Fn4 , v124
	.byte	W12
	.byte		N02   , Ds4 , v120
	.byte	W03
	.byte		        Dn4 , v116
	.byte	W03
	.byte		N08   , Cs4 
	.byte	W12
@ 039   ----------------------------------------
	.byte		N44   , Fn3 , v120, gtp3
	.byte	W48
	.byte		N11   , Fn4 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        En4 , v116
	.byte	W06
	.byte		N07   , Ds4 , v120
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
@ 040   ----------------------------------------
	.byte		N12   , Cn4 , v108
	.byte	W24
	.byte		N23   , Cn3 , v120
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		N44   , As4 , v124, gtp3
	.byte	W24
@ 041   ----------------------------------------
	.byte	W24
	.byte		N23   , Gs4 , v120
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
@ 042   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N32   , Cn4 , v120, gtp3
	.byte	W36
	.byte		N96   , Fn3 
	.byte	W48
@ 043   ----------------------------------------
	.byte	W72
	.byte		N23   
	.byte	W24
@ 044   ----------------------------------------
mus_theme_of_aldebaran_3_044:
	.byte		N44   , Fn3 , v092, gtp3
	.byte	W48
	.byte		N32   , Cn3 
	.byte	W32
	.byte	W01
	.byte		N06   , Ds3 
	.byte	W12
	.byte		N02   
	.byte	W03
	.byte	PEND
@ 045   ----------------------------------------
	.byte		N48   , Fn3 
	.byte	W72
	.byte		N23   , Fn3 , v127
	.byte	W24
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_3_044
@ 047   ----------------------------------------
	.byte		N44   , Fn3 , v092, gtp3
	.byte	W48
	.byte		        Ds3 , v092, gtp3
	.byte	W48
@ 048   ----------------------------------------
mus_theme_of_aldebaran_3_048:
	.byte		N24   , Cs3 , v092
	.byte	W36
	.byte		N56   , Cs3 , v092, gtp3
	.byte	W60
	.byte	PEND
@ 049   ----------------------------------------
	.byte		N24   
	.byte	W36
	.byte		TIE   , Cn3 
	.byte	W60
@ 050   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 051   ----------------------------------------
	.byte		N23   , Bn2 , v127
	.byte	W24
	.byte		N17   , Cs5 , v120
	.byte	W18
	.byte		N05   , Bn2 , v127
	.byte	W06
	.byte		N17   , Fs4 , v120
	.byte	W18
	.byte		        Cs3 , v127
	.byte	W18
	.byte		N11   , Ds3 
	.byte	W12
@ 052   ----------------------------------------
	.byte		N17   , En4 , v120
	.byte	W18
	.byte		N05   , Bn2 , v127
	.byte	W06
	.byte		N23   , Ds4 , v120
	.byte	W24
	.byte		N17   , Bn3 
	.byte	W18
	.byte		N05   , Bn2 , v127
	.byte	W06
	.byte		N11   , Cs4 , v120
	.byte	W12
	.byte		        Cs3 , v127
	.byte	W12
@ 053   ----------------------------------------
	.byte		N23   , Fs3 , v120
	.byte	W24
	.byte		N17   , Cs4 
	.byte	W18
	.byte		N05   , Bn2 , v127
	.byte	W06
	.byte		N17   , Fs3 , v120
	.byte	W18
	.byte		        Cs3 , v127
	.byte	W18
	.byte		N28   , Fs4 , v120, gtp1
	.byte	W12
@ 054   ----------------------------------------
	.byte	W18
	.byte		N05   , Bn2 , v127
	.byte	W06
	.byte		N23   , En4 , v120
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		N11   , Cs4 
	.byte	W12
	.byte		        Cs3 , v127
	.byte	W12
@ 055   ----------------------------------------
	.byte		N48   , Ds4 , v120
	.byte	W72
	.byte		N17   
	.byte	W18
	.byte		N05   , En4 
	.byte	W06
@ 056   ----------------------------------------
	.byte		N48   , Ds4 
	.byte	W72
	.byte		N23   , As4 
	.byte	W24
@ 057   ----------------------------------------
	.byte		N32   , Bn4 , v120, gtp3
	.byte	W36
	.byte		N11   , Ds4 
	.byte	W12
	.byte		N23   , Cs4 
	.byte	W24
	.byte		N92   , Bn3 , v120, gtp3
	.byte	W24
@ 058   ----------------------------------------
	.byte	W72
	.byte		N23   , Cs4 
	.byte	W24
@ 059   ----------------------------------------
	.byte		N44   , As3 , v120, gtp3
	.byte	W48
	.byte		N92   , Fs3 , v120, gtp3
	.byte	W48
@ 060   ----------------------------------------
	.byte	W48
	.byte		N44   , En3 , v120, gtp3
	.byte	W48
@ 061   ----------------------------------------
	.byte		N92   , Fs3 , v120, gtp3
	.byte	W96
@ 062   ----------------------------------------
	.byte		N96   , Fn4 , v092
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte		        Ds4 
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W24
	.byte		N44   , Fn4 , v120, gtp3
	.byte	W48
	.byte		N24   
	.byte	W24
@ 069   ----------------------------------------
	.byte	W24
	.byte		N44   , Fn4 , v120, gtp3
	.byte	W48
	.byte		N23   , Ds4 
	.byte	W24
@ 070   ----------------------------------------
	.byte		        As3 
	.byte	W24
	.byte		        Fn3 , v116
	.byte	W24
	.byte		N32   , Gs2 , v116, gtp3
	.byte	W36
	.byte		N11   , As2 
	.byte	W12
@ 071   ----------------------------------------
	.byte		N44   , Fn3 , v116, gtp3
	.byte	W48
	.byte		N23   , Gs2 
	.byte	W24
	.byte		        Cs4 , v120
	.byte	W24
@ 072   ----------------------------------------
	.byte		        Fn4 
	.byte	W24
	.byte		        Cn3 , v116
	.byte	W24
	.byte		N32   , Gs2 , v116, gtp3
	.byte	W36
	.byte		N11   , As2 
	.byte	W12
@ 073   ----------------------------------------
	.byte		N12   , Cs4 , v092
	.byte	W24
	.byte		N23   , Fs4 , v120
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte		        As4 
	.byte	W24
@ 074   ----------------------------------------
	.byte		        Gs4 
	.byte	W24
	.byte		        Cn3 , v116
	.byte	W24
	.byte		N68   , Ds3 , v116, gtp3
	.byte	W48
@ 075   ----------------------------------------
	.byte	W24
	.byte		N23   , Gs4 , v120
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte		N11   , Ds3 , v116
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
@ 076   ----------------------------------------
	.byte		N32   , Fn4 , v120, gtp3
	.byte	W36
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N32   , Fn4 , v120, gtp3
	.byte	W36
	.byte		N11   , Cs4 
	.byte	W12
@ 077   ----------------------------------------
	.byte		N32   , Fn4 , v120, gtp3
	.byte	W36
	.byte		N11   , Cs4 
	.byte	W12
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   , Fn3 , v116
	.byte	W12
	.byte		        Ds4 , v120
	.byte	W12
@ 078   ----------------------------------------
	.byte		N44   , Fn3 , v092, gtp3
	.byte	W48
	.byte		N23   , Cn3 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
@ 079   ----------------------------------------
	.byte		N48   , As3 
	.byte	W72
	.byte		N23   , Fn3 , v124
	.byte	W24
@ 080   ----------------------------------------
	.byte		        Fn3 , v092
	.byte	W24
	.byte		        Fn4 , v120
	.byte	W24
	.byte		N32   , Cn5 , v120, gtp3
	.byte	W36
	.byte		N11   , Fn4 
	.byte	W12
@ 081   ----------------------------------------
	.byte		N44   , Cs5 , v120, gtp3
	.byte	W48
	.byte		        Ds3 , v092, gtp3
	.byte	W48
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_3_048
@ 083   ----------------------------------------
	.byte		N32   , Cs3 , v120, gtp3
	.byte	W36
	.byte		N56   , Cs3 , v092, gtp3
	.byte	W60
@ 084   ----------------------------------------
	.byte		TIE   , Gs2 , v120
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
	.byte		EOT   
	.byte	GOTO
	 .word	mus_theme_of_aldebaran_3_B1
mus_theme_of_aldebaran_3_B2:
@ 086   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_theme_of_aldebaran_4:
	.byte	KEYSH , mus_theme_of_aldebaran_key+0
mus_theme_of_aldebaran_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 88*mus_theme_of_aldebaran_mvl/mxv
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
	.byte	W84
	.byte		N02   , Cs2 , v068
	.byte	W12
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
	.byte	W60
	.byte	W03
	.byte		        Cs2 , v084
	.byte	W06
	.byte		N02   
	.byte	W18
	.byte		N02   
	.byte	W09
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
	.byte	W60
	.byte	W03
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W15
@ 051   ----------------------------------------
	.byte		        Cn1 , v060
	.byte	W24
	.byte		        Dn3 
	.byte	W48
	.byte		N02   
	.byte	W24
@ 052   ----------------------------------------
	.byte		        Cn1 , v064
	.byte	W24
	.byte		        Dn3 
	.byte	W48
	.byte		N02   
	.byte	W24
@ 053   ----------------------------------------
	.byte		        Cn1 , v068
	.byte	W24
	.byte		        Dn3 
	.byte	W48
	.byte		N02   
	.byte	W24
@ 054   ----------------------------------------
	.byte		        Cn1 , v072
	.byte	W24
	.byte		        Dn3 
	.byte	W48
	.byte		N02   
	.byte	W24
@ 055   ----------------------------------------
	.byte		        Cn1 , v076
	.byte	W24
	.byte		        Dn3 
	.byte	W48
	.byte		N02   
	.byte	W24
@ 056   ----------------------------------------
	.byte		        Cn1 , v080
	.byte	W24
	.byte		        Dn3 
	.byte	W48
	.byte		N02   
	.byte	W24
@ 057   ----------------------------------------
	.byte		        Cn1 , v084
	.byte	W24
	.byte		        Dn3 
	.byte	W48
	.byte		N02   
	.byte	W24
@ 058   ----------------------------------------
	.byte		        Cn1 , v088
	.byte	W24
	.byte		        Dn3 
	.byte	W48
	.byte		N02   
	.byte	W24
@ 059   ----------------------------------------
	.byte		        Cn1 , v092
	.byte	W24
	.byte		        Dn3 
	.byte	W48
	.byte		N02   
	.byte	W24
@ 060   ----------------------------------------
	.byte		        Cn1 , v100
	.byte	W24
	.byte		        Dn3 
	.byte	W48
	.byte		N02   
	.byte	W24
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v044
	.byte	W06
@ 063   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v048
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v048
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v048
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v048
	.byte	W06
@ 064   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v048
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v048
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v048
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v052
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v052
	.byte	W06
@ 065   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v052
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v052
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v052
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v044
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
@ 066   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v056
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v056
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v056
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v056
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v056
	.byte	W06
@ 067   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v060
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v060
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v060
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v060
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v060
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v060
	.byte	W06
@ 068   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v060
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v060
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v064
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v064
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v064
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v064
	.byte	W06
@ 069   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v064
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v068
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v068
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v068
	.byte	W06
	.byte		        Dn3 , v104
	.byte	W24
@ 070   ----------------------------------------
	.byte		        Cn1 
	.byte		N02   , Cs4 , v068
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v068
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v068
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v068
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v068
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v072
	.byte	W06
	.byte		        Cs4 , v044
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v072
	.byte	W06
@ 071   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v072
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v072
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v072
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v072
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v072
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v072
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v072
	.byte	W06
@ 072   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v076
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v076
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v076
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v076
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v076
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v076
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v076
	.byte	W06
@ 073   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v076
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v076
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v080
	.byte	W06
	.byte		        Cs4 , v052
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v080
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v056
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
@ 074   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v080
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v080
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v084
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v084
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v056
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v084
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v084
	.byte	W06
	.byte		        Cs4 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v084
	.byte	W06
@ 075   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v084
	.byte	W06
	.byte		        Cs4 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v084
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v084
	.byte	W06
	.byte		        Cs4 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v084
	.byte	W06
	.byte		        Cs4 , v088
	.byte	W06
	.byte		        Cs4 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v088
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v088
	.byte	W06
	.byte		        Cs4 , v060
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v088
	.byte	W06
@ 076   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v088
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v088
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v088
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v088
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v088
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v092
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v092
	.byte	W06
@ 077   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v092
	.byte	W06
	.byte		        Cs4 , v068
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v092
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v092
	.byte	W06
	.byte		        Cs4 , v068
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Cs4 , v092
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v068
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v092
	.byte	W06
	.byte		        Dn3 , v104
	.byte		N02   , Cs4 , v068
	.byte	W06
	.byte		        Cs4 , v092
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		        Cs4 , v068
	.byte	W06
@ 078   ----------------------------------------
mus_theme_of_aldebaran_4_078:
	.byte		N02   , Cn1 , v104
	.byte	W24
	.byte		        Dn3 
	.byte	W48
	.byte		N02   
	.byte	W24
	.byte	PEND
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_4_078
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_4_078
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_4_078
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_theme_of_aldebaran_4_078
@ 083   ----------------------------------------
	.byte		N02   , Cn1 , v104
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		N02   
	.byte	W48
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_theme_of_aldebaran_4_B1
mus_theme_of_aldebaran_4_B2:
@ 086   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_theme_of_aldebaran:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_theme_of_aldebaran_pri	@ Priority
	.byte	mus_theme_of_aldebaran_rev	@ Reverb.

	.word	mus_theme_of_aldebaran_grp

	.word	mus_theme_of_aldebaran_1
	.word	mus_theme_of_aldebaran_2
	.word	mus_theme_of_aldebaran_3
	.word	mus_theme_of_aldebaran_4

	.end
