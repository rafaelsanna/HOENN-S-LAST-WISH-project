	.include "MPlayDef.s"

	.equ	mus_where_is_the_love_grp, voicegroup_littleroot_test
	.equ	mus_where_is_the_love_pri, 0
	.equ	mus_where_is_the_love_rev, reverb_set+50
	.equ	mus_where_is_the_love_mvl, 94
	.equ	mus_where_is_the_love_key, 0
	.equ	mus_where_is_the_love_tbs, 1
	.equ	mus_where_is_the_love_exg, 1
	.equ	mus_where_is_the_love_cmp, 1

	.section .rodata
	.global	mus_where_is_the_love
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_where_is_the_love_1:
	.byte		VOL   , 127*mus_where_is_the_love_mvl/mxv
	.byte	KEYSH , mus_where_is_the_love_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 94*mus_where_is_the_love_tbs/2
	.byte		VOICE , 33
	.byte		N56   , Fn1 , v116, gtp2
	.byte	W60
	.byte		N10   , Cn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N56   , En1 , v116, gtp2
	.byte	W60
	.byte		N10   , Cn2 , v112
	.byte	W12
	.byte		N18   , En1 
	.byte	W12
	.byte		N05   , Fn1 
	.byte	W12
@ 003   ----------------------------------------
mus_where_is_the_love_1_003:
	.byte		N05   , Dn2 , v112
	.byte	W72
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_where_is_the_love_1_004:
	.byte		N05   , As1 , v112
	.byte	W48
	.byte		N05   
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_where_is_the_love_1_005:
	.byte		N05   , Fn1 , v112
	.byte	W60
	.byte		        Cn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_where_is_the_love_1_006:
	.byte		N05   , En1 , v112
	.byte	W60
	.byte		        Cn2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_006
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_003
@ 020   ----------------------------------------
mus_where_is_the_love_1_020:
	.byte		N05   , As1 , v112
	.byte	W48
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_004
@ 025   ----------------------------------------
mus_where_is_the_love_1_025:
	.byte		N23   , Fn1 , v112
	.byte	W60
	.byte		N05   , Cn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_where_is_the_love_1_026:
	.byte		N23   , En1 , v112
	.byte	W24
	.byte		N08   , Cn2 
	.byte	W24
	.byte		N05   , En1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_020
@ 029   ----------------------------------------
mus_where_is_the_love_1_029:
	.byte		N44   , Fn1 , v112, gtp3
	.byte	W48
	.byte		N05   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_where_is_the_love_1_030:
	.byte		N44   , En1 , v112, gtp3
	.byte	W48
	.byte		N05   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte		N44   , Dn2 , v112, gtp3
	.byte	W72
	.byte		N05   , En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_020
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_005
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_006
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_020
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_006
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_003
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_020
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_006
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_003
@ 044   ----------------------------------------
mus_where_is_the_love_1_044:
	.byte		N05   , As1 , v112
	.byte	W48
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	PEND
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_044
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_044
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_044
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_044
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_005
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_006
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_003
@ 052   ----------------------------------------
mus_where_is_the_love_1_052:
	.byte		N05   , As1 , v112
	.byte	W48
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_026
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_003
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_020
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_029
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_030
@ 059   ----------------------------------------
mus_where_is_the_love_1_059:
	.byte		N44   , Dn2 , v112, gtp3
	.byte	W48
	.byte		N05   
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_020
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
	.byte	W48
	.byte		N05   , As1 , v112
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W24
@ 069   ----------------------------------------
	.byte		        Fn1 
	.byte	W72
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 070   ----------------------------------------
mus_where_is_the_love_1_070:
	.byte		N05   , Cn2 , v112
	.byte	W72
	.byte		        Fn1 
	.byte	W24
	.byte	PEND
@ 071   ----------------------------------------
mus_where_is_the_love_1_071:
	.byte		N05   , Dn2 , v112
	.byte	W48
	.byte		        Fn1 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte	PEND
@ 072   ----------------------------------------
	.byte		        As1 
	.byte	W60
	.byte		        Fn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 073   ----------------------------------------
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_070
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_071
@ 076   ----------------------------------------
	.byte		N05   , As1 , v112
	.byte	W72
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 077   ----------------------------------------
	.byte		N32   , Fn1 , v112, gtp3
	.byte	W60
	.byte		N05   , Cn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_006
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_003
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_052
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_025
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_026
@ 083   ----------------------------------------
	.byte		N05   , Dn2 , v112
	.byte	W48
	.byte		        Fn1 
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_020
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_029
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_030
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_059
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_020
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_020
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_020
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_1_020
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_where_is_the_love_2:
	.byte		VOL   , 127*mus_where_is_the_love_mvl/mxv
	.byte	KEYSH , mus_where_is_the_love_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 45
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
	.byte		N92   , Fn3 , v040, gtp3
	.byte		N92   , An3 , v040, gtp3
	.byte	W96
@ 021   ----------------------------------------
	.byte		        En3 , v040, gtp3
	.byte		N92   , Gn3 , v040, gtp3
	.byte	W96
@ 022   ----------------------------------------
mus_where_is_the_love_2_022:
	.byte		N92   , Dn3 , v040, gtp3
	.byte		N92   , Fn3 , v040, gtp3
	.byte	W96
	.byte	PEND
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_2_022
@ 024   ----------------------------------------
	.byte		N23   , Fn3 , v040
	.byte		N23   , An3 
	.byte	W24
	.byte		N44   , An3 , v052, gtp3
	.byte	W48
	.byte		N23   , Fn3 , v044
	.byte	W24
@ 025   ----------------------------------------
	.byte		N96   , En3 
	.byte	W96
@ 026   ----------------------------------------
	.byte		N68   , Dn3 , v040
	.byte		N68   , Fn3 
	.byte	W68
	.byte		N03   , Cn4 , v056
	.byte	W04
	.byte		N05   , Cn4 , v068
	.byte	W05
	.byte		N02   , Bn3 , v048
	.byte	W02
	.byte		        As3 , v040
	.byte	W03
	.byte		        An3 , v036
	.byte	W02
	.byte		N01   , Gs3 , v032
	.byte	W02
	.byte		        Gn3 
	.byte	W01
	.byte		        Fs3 
	.byte	W02
	.byte		        Fn3 
	.byte	W01
	.byte		        En3 
	.byte	W02
	.byte		        Ds3 
	.byte	W04
@ 027   ----------------------------------------
	.byte		N24   , An3 , v044
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        As3 
	.byte	W24
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
	.byte		N68   , Fn2 , v036, gtp3
	.byte		N68   , Fn3 , v036, gtp3
	.byte	W72
	.byte		N08   , An2 , v068
	.byte		N08   , An3 , v064
	.byte	W08
	.byte		N03   , Gs2 , v048
	.byte		N03   , Gs3 
	.byte	W04
	.byte		        Gn2 , v040
	.byte		N03   , Gn3 
	.byte	W03
	.byte		        Fs2 , v036
	.byte		N03   , Fs3 
	.byte	W03
	.byte		N02   , Fn2 
	.byte	W01
	.byte		        Fn3 
	.byte	W03
	.byte		        En2 , v032
	.byte		N02   , En3 
	.byte	W02
@ 049   ----------------------------------------
	.byte		N96   , En2 , v056
	.byte		N96   , En3 
	.byte	W96
@ 050   ----------------------------------------
	.byte		N68   , Dn2 , v036, gtp3
	.byte		N68   , Dn3 , v036, gtp3
	.byte	W72
	.byte		N15   , Gn3 , v060
	.byte		N15   , Cn4 
	.byte	W15
	.byte		N02   , Fs3 , v044
	.byte	W01
	.byte		        Bn3 
	.byte	W02
	.byte		        Fn3 , v036
	.byte		N01   , As3 
	.byte	W02
	.byte		        En3 , v032
	.byte		N01   , An3 
	.byte	W02
	.byte		        Ds3 
	.byte		N01   , Gs3 
	.byte	W02
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte		N11   , Fn3 , v048
	.byte		N11   , Cn4 , v044
	.byte	W12
	.byte		        Fn3 , v048
	.byte		N11   , Cn4 , v044
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , Cn4 , v040
	.byte	W12
	.byte		        Fn3 , v044
	.byte		N11   , Cn4 , v040
	.byte	W12
	.byte		        Fn3 , v044
	.byte		N11   , Cn4 , v040
	.byte	W12
	.byte		        Fn3 , v044
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , Cn4 , v040
	.byte	W12
	.byte		        Fn3 , v044
	.byte		N11   , Cn4 
	.byte	W12
@ 053   ----------------------------------------
	.byte		        Fn3 , v048
	.byte		N11   , Dn4 , v052
	.byte	W12
	.byte		        Fn3 , v040
	.byte		N11   , Dn4 , v052
	.byte	W12
	.byte		        Fn3 , v036
	.byte		N11   , Dn4 , v044
	.byte	W12
	.byte		        Fn3 , v036
	.byte		N11   , Dn4 , v048
	.byte	W12
	.byte		        Fn3 , v036
	.byte		N11   , Dn4 , v052
	.byte	W12
	.byte		        Fn3 , v036
	.byte		N11   , Dn4 , v044
	.byte	W12
	.byte		        Fn3 , v036
	.byte		N11   , Dn4 , v052
	.byte	W12
	.byte		        Fn3 , v040
	.byte		N11   , Dn4 , v044
	.byte	W12
@ 054   ----------------------------------------
	.byte		        Fn3 , v056
	.byte		N11   , En4 , v048
	.byte	W12
	.byte		        Fn3 , v044
	.byte		N11   , En4 
	.byte	W12
	.byte		        Fn3 , v048
	.byte		N11   , En4 
	.byte	W12
	.byte		        Fn3 , v044
	.byte		N11   , En4 
	.byte	W12
	.byte		        Fn3 , v048
	.byte		N11   , En4 
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , En4 , v052
	.byte	W12
	.byte		        Fn3 , v044
	.byte		N11   , En4 , v048
	.byte	W12
	.byte		        Fn3 , v036
	.byte		N11   , En4 , v040
	.byte	W12
@ 055   ----------------------------------------
	.byte		        Fn3 , v056
	.byte		N11   , Cn4 , v044
	.byte		N01   , Fn4 
	.byte	W12
	.byte		N11   , Fn3 , v040
	.byte		N11   , Fn4 , v044
	.byte	W12
	.byte		        Fn3 , v048
	.byte		N11   , Fn4 , v044
	.byte	W12
	.byte		N01   , Fn3 
	.byte		N11   , Cn4 , v036
	.byte		N11   , Fn4 , v040
	.byte	W12
	.byte		        Fn3 , v048
	.byte		N11   , Fn4 , v052
	.byte	W12
	.byte		        Fn3 , v048
	.byte		N11   , Fn4 , v044
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , Cn4 
	.byte		N01   , Fn4 , v048
	.byte	W12
	.byte		N11   , Fn3 , v036
	.byte		N11   , Fn4 , v044
	.byte	W12
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		        Fn2 , v072
	.byte	W01
@ 060   ----------------------------------------
	.byte		N01   , Cn3 , v076
	.byte		N11   , Fn3 , v068
	.byte	W11
	.byte		        Fn2 , v072
	.byte	W01
	.byte		N01   , Cn3 , v064
	.byte		N11   , Fn3 , v056
	.byte	W11
	.byte		        Fn2 , v068
	.byte	W01
	.byte		N01   , Cn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte		        Fn2 , v052
	.byte	W01
	.byte		N01   , Cn3 , v068
	.byte		N11   , Fn3 , v064
	.byte	W11
	.byte		        Fn2 , v052
	.byte	W01
	.byte		N01   , Cn3 , v076
	.byte		N11   , Fn3 , v068
	.byte	W11
	.byte		        Fn2 , v052
	.byte	W01
	.byte		N01   , Cn3 , v072
	.byte		N11   , Fn3 , v064
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , Cn3 , v068
	.byte		N11   , Fn3 
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , Cn3 , v064
	.byte		N11   , Fn3 , v068
	.byte	W11
	.byte		        Gn2 
	.byte	W01
@ 061   ----------------------------------------
	.byte		N01   , Cn3 
	.byte		N11   , Gn3 , v056
	.byte	W11
	.byte		        Gn2 , v064
	.byte	W01
	.byte		N01   , Cn3 , v072
	.byte		N11   , Gn3 , v052
	.byte	W11
	.byte		        Gn2 , v068
	.byte	W01
	.byte		N01   , Cn3 
	.byte		N11   , Gn3 , v052
	.byte	W11
	.byte		        Gn2 , v048
	.byte	W01
	.byte		N01   , Cn3 , v076
	.byte		N11   , Gn3 , v044
	.byte	W11
	.byte		        Gn2 , v072
	.byte	W01
	.byte		N01   , Cn3 , v068
	.byte		N11   , Gn3 , v048
	.byte	W11
	.byte		        Gn2 , v056
	.byte	W01
	.byte		N01   , Cn3 , v064
	.byte		N11   , Gn3 , v044
	.byte	W11
	.byte		        Gn2 , v056
	.byte	W01
	.byte		N01   , Cn3 , v072
	.byte		N11   , Gn3 , v048
	.byte	W11
	.byte		        Gn2 , v052
	.byte	W01
	.byte		N01   , Cn3 , v064
	.byte		N11   , Gn3 , v044
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
@ 062   ----------------------------------------
	.byte		N01   , As2 , v068
	.byte		N11   , Fn3 , v056
	.byte	W11
	.byte		        Fn2 , v064
	.byte	W01
	.byte		N01   , As2 , v048
	.byte		N11   , Fn3 , v064
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , An2 , v060
	.byte		N11   , Fn3 , v064
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , An2 , v052
	.byte		N11   , Fn3 , v064
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , An2 , v064
	.byte		N11   , Fn3 , v056
	.byte	W11
	.byte		        Fn2 , v052
	.byte	W01
	.byte		N01   , An2 , v056
	.byte		N11   , Fn3 
	.byte	W11
	.byte		        Fn2 , v052
	.byte	W01
	.byte		N01   , An2 , v056
	.byte		N11   , Fn3 , v052
	.byte	W11
	.byte		        Fn2 , v044
	.byte	W01
	.byte		N01   , An2 , v048
	.byte		N11   , Fn3 , v044
	.byte	W11
	.byte		        Fn2 , v052
	.byte	W01
@ 063   ----------------------------------------
	.byte		N01   , Cn3 , v076
	.byte		N11   , Fn3 , v056
	.byte	W11
	.byte		        Fn2 , v068
	.byte	W01
	.byte		N01   , Cn3 
	.byte		N11   , Fn3 , v016
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , As2 , v072
	.byte		N11   , Fn3 , v064
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , As2 , v044
	.byte		N11   , Fn3 , v072
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , As2 , v052
	.byte		N11   , Fn3 , v056
	.byte	W11
	.byte		        Fn2 
	.byte	W01
	.byte		N01   , As2 , v052
	.byte		N11   , Fn3 , v064
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , As2 , v048
	.byte		N11   , Fn3 , v064
	.byte	W11
	.byte		        Fn2 
	.byte	W01
	.byte		N01   , As2 , v052
	.byte		N11   , Fn3 , v068
	.byte	W11
	.byte		        Fn2 , v072
	.byte	W01
@ 064   ----------------------------------------
	.byte		N01   , Cn3 , v076
	.byte		N11   , Fn3 , v068
	.byte	W11
	.byte		        Fn2 , v072
	.byte	W01
	.byte		N01   , Cn3 , v068
	.byte		N11   , Fn3 , v056
	.byte	W11
	.byte		        Fn2 , v068
	.byte	W01
	.byte		N01   , Cn3 
	.byte		N11   , Fn3 
	.byte	W11
	.byte		        Fn2 , v052
	.byte	W01
	.byte		N01   , Cn3 , v064
	.byte		N11   , Fn3 
	.byte	W11
	.byte		        Fn2 , v052
	.byte	W01
	.byte		N01   , Cn3 , v076
	.byte		N11   , Fn3 , v068
	.byte	W11
	.byte		        Fn2 , v052
	.byte	W01
	.byte		N01   , Cn3 , v072
	.byte		N11   , Fn3 , v064
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , Cn3 , v068
	.byte		N11   , Fn3 
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , Cn3 , v064
	.byte		N11   , Fn3 , v068
	.byte	W11
	.byte		        Gn2 
	.byte	W01
@ 065   ----------------------------------------
	.byte		N01   , Cn3 
	.byte		N11   , Gn3 , v056
	.byte	W11
	.byte		        Gn2 , v064
	.byte	W01
	.byte		N01   , Cn3 , v072
	.byte		N11   , Gn3 , v052
	.byte	W11
	.byte		        Gn2 , v064
	.byte	W01
	.byte		N01   , Cn3 , v068
	.byte		N11   , Gn3 , v052
	.byte	W11
	.byte		        Gn2 , v048
	.byte	W01
	.byte		N01   , Cn3 , v076
	.byte		N11   , Gn3 , v044
	.byte	W11
	.byte		        Gn2 , v072
	.byte	W01
	.byte		N01   , Cn3 , v068
	.byte		N11   , Gn3 , v048
	.byte	W11
	.byte		        Gn2 , v056
	.byte	W01
	.byte		N01   , Cn3 , v068
	.byte		N11   , Gn3 , v044
	.byte	W11
	.byte		        Gn2 , v056
	.byte	W01
	.byte		N01   , Cn3 , v072
	.byte		N11   , Gn3 , v048
	.byte	W11
	.byte		        Gn2 , v052
	.byte	W01
	.byte		N01   , Cn3 , v064
	.byte		N11   , Gn3 , v044
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
@ 066   ----------------------------------------
	.byte		N01   , As2 , v068
	.byte		N11   , Fn3 , v056
	.byte	W11
	.byte		        Fn2 , v064
	.byte	W01
	.byte		N01   , As2 , v048
	.byte		N11   , Fn3 , v064
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , An2 , v060
	.byte		N11   , Fn3 , v068
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , An2 , v052
	.byte		N11   , Fn3 , v064
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , An2 , v064
	.byte		N11   , Fn3 , v056
	.byte	W11
	.byte		        Fn2 , v052
	.byte	W01
	.byte		N01   , An2 , v056
	.byte		N11   , Fn3 
	.byte	W11
	.byte		        Fn2 , v052
	.byte	W01
	.byte		N01   , An2 , v056
	.byte		N11   , Fn3 , v052
	.byte	W11
	.byte		        Fn2 , v044
	.byte	W01
	.byte		N01   , An2 , v048
	.byte		N11   , Fn3 , v044
	.byte	W11
	.byte		        Fn2 , v052
	.byte	W01
@ 067   ----------------------------------------
	.byte		N01   , Cn3 , v076
	.byte		N11   , Fn3 , v056
	.byte	W11
	.byte		        Fn2 , v068
	.byte	W01
	.byte		N01   , Cn3 
	.byte		N11   , Fn3 , v016
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , As2 , v072
	.byte		N11   , Fn3 , v064
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , As2 , v044
	.byte		N11   , Fn3 , v072
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , As2 , v052
	.byte		N11   , Fn3 , v056
	.byte	W11
	.byte		        Fn2 
	.byte	W01
	.byte		N01   , As2 , v052
	.byte		N11   , Fn3 , v068
	.byte	W11
	.byte		        Fn2 , v056
	.byte	W01
	.byte		N01   , As2 , v048
	.byte		N11   , Fn3 , v064
	.byte	W11
	.byte		        Fn2 
	.byte	W01
	.byte		N01   , As2 , v052
	.byte		N11   , Fn3 , v068
	.byte	W12
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
	.byte		N68   , Fn2 , v036, gtp3
	.byte		N68   , Fn3 , v040, gtp3
	.byte	W72
	.byte		N08   , An2 , v068
	.byte		N08   , An3 
	.byte	W08
	.byte		N03   , Gs2 , v048
	.byte		N03   , Gs3 
	.byte	W04
	.byte		        Gn2 , v040
	.byte		N03   , Gn3 
	.byte	W03
	.byte		        Fs2 , v036
	.byte		N03   , Fs3 
	.byte	W04
	.byte		N02   , Fn2 , v032
	.byte		N02   , Fn3 
	.byte	W03
	.byte		        En2 
	.byte		N02   , En3 
	.byte	W02
@ 077   ----------------------------------------
	.byte		N96   , En2 , v056
	.byte		N96   , En3 
	.byte	W96
@ 078   ----------------------------------------
	.byte		N68   , Dn2 , v036, gtp3
	.byte		N68   , Dn3 , v040, gtp3
	.byte	W72
	.byte		N15   , Gn3 , v060
	.byte		N15   , Cn4 
	.byte	W16
	.byte		N02   , Fs3 , v044
	.byte		N02   , Bn3 , v040
	.byte	W02
	.byte		N01   , Fn3 , v036
	.byte		N01   , As3 
	.byte	W02
	.byte		        En3 , v032
	.byte		N02   , An3 
	.byte	W02
	.byte		N01   , Ds3 , v028
	.byte		N01   , Gs3 
	.byte	W02
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte		N11   , Fn3 , v048
	.byte		N11   , Cn4 , v044
	.byte	W12
	.byte		        Fn3 , v048
	.byte		N11   , Cn4 , v044
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , Cn4 , v040
	.byte	W12
	.byte		        Fn3 , v044
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , Cn4 , v040
	.byte	W12
	.byte		        Fn3 , v044
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , Cn4 
	.byte	W12
@ 081   ----------------------------------------
	.byte		        Fn3 , v048
	.byte		N11   , Dn4 , v052
	.byte	W12
	.byte		        Fn3 , v040
	.byte		N11   , Dn4 , v052
	.byte	W12
	.byte		        Fn3 , v036
	.byte		N11   , Dn4 , v044
	.byte	W12
	.byte		        Fn3 , v036
	.byte		N11   , Dn4 , v048
	.byte	W12
	.byte		        Fn3 , v036
	.byte		N11   , Dn4 , v052
	.byte	W12
	.byte		        Fn3 , v036
	.byte		N11   , Dn4 , v044
	.byte	W12
	.byte		        Fn3 , v040
	.byte		N11   , Dn4 , v052
	.byte	W12
	.byte		        Fn3 , v036
	.byte		N11   , Dn4 , v044
	.byte	W12
@ 082   ----------------------------------------
	.byte		        Fn3 , v056
	.byte		N11   , En4 , v048
	.byte	W12
	.byte		        Fn3 , v040
	.byte		N11   , En4 , v044
	.byte	W12
	.byte		        Fn3 , v048
	.byte		N11   , En4 
	.byte	W12
	.byte		        Fn3 , v044
	.byte		N11   , En4 
	.byte	W12
	.byte		        Fn3 , v048
	.byte		N11   , En4 
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , En4 , v052
	.byte	W12
	.byte		        Fn3 , v044
	.byte		N11   , En4 , v048
	.byte	W12
	.byte		        Fn3 , v036
	.byte		N11   , En4 , v040
	.byte	W12
@ 083   ----------------------------------------
	.byte		        Fn3 , v056
	.byte		N11   , Fn4 , v044
	.byte	W12
	.byte		        Fn3 , v040
	.byte		N11   , Fn4 , v044
	.byte	W12
	.byte		        Fn3 , v048
	.byte		N11   , Fn4 , v044
	.byte	W12
	.byte		        Fn3 
	.byte		N11   , Fn4 , v040
	.byte	W12
	.byte		        Fn3 , v048
	.byte		N11   , Fn4 , v052
	.byte	W12
	.byte		        Fn3 , v048
	.byte		N11   , Cn4 , v036
	.byte		N01   , Fn4 , v044
	.byte	W12
	.byte		N11   , Fn3 
	.byte		N11   , Fn4 , v048
	.byte	W12
	.byte		        Fn3 , v036
	.byte		N01   , Cn4 , v040
	.byte		N11   , Fn4 , v044
	.byte	W12
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
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_where_is_the_love_3:
	.byte		VOL   , 127*mus_where_is_the_love_mvl/mxv
	.byte	KEYSH , mus_where_is_the_love_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W90
	.byte		N05   , Dn3 , v040
	.byte	W06
@ 004   ----------------------------------------
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn3 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N05   , Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W18
	.byte		N11   , Cn3 , v008
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W12
@ 006   ----------------------------------------
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W21
	.byte		N05   
	.byte	W06
	.byte		N04   
	.byte	W05
	.byte		N03   
	.byte	W04
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 007   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W16
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 008   ----------------------------------------
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N11   
	.byte	W84
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
	.byte	W90
	.byte		N11   
	.byte	W06
@ 016   ----------------------------------------
	.byte	W06
	.byte		N08   
	.byte	W09
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N08   
	.byte	W15
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 017   ----------------------------------------
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W14
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
@ 018   ----------------------------------------
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W06
@ 019   ----------------------------------------
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 020   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W06
@ 021   ----------------------------------------
mus_where_is_the_love_3_021:
	.byte	W06
	.byte		N11   , An3 , v040
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
mus_where_is_the_love_3_022:
	.byte	W06
	.byte		N11   , Dn3 , v040
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
mus_where_is_the_love_3_023:
	.byte	W18
	.byte		N05   , As2 , v040
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W06
	.byte	PEND
@ 024   ----------------------------------------
mus_where_is_the_love_3_024:
	.byte	W24
	.byte		N11   , Cn4 , v040
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N11   
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
mus_where_is_the_love_3_025:
	.byte	W06
	.byte		N17   , Fn3 , v040
	.byte	W18
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N11   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N17   , Fn3 
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
mus_where_is_the_love_3_026:
	.byte	W18
	.byte		N05   , Dn3 , v040
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte	PEND
@ 027   ----------------------------------------
mus_where_is_the_love_3_027:
	.byte	W06
	.byte		N11   , Gn3 , v040
	.byte	W12
	.byte		N08   
	.byte	W09
	.byte		N03   , Fn3 
	.byte	W03
	.byte		N11   , Dn3 
	.byte	W18
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_where_is_the_love_3_028:
	.byte		N56   , An3 , v040, gtp3
	.byte	W72
	.byte		N23   , Cn4 
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
mus_where_is_the_love_3_029:
	.byte		N56   , Gn3 , v040
	.byte	W72
	.byte		N23   , Cn4 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
mus_where_is_the_love_3_030:
	.byte		N11   , Gn3 , v040
	.byte	W12
	.byte		N32   , Fn3 , v040, gtp3
	.byte	W36
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N32   , An3 , v040, gtp3
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
mus_where_is_the_love_3_031:
	.byte	W24
	.byte		N11   , As3 , v040
	.byte	W12
	.byte		N32   , Gn3 , v040, gtp3
	.byte	W36
	.byte		N11   , An3 
	.byte	W12
	.byte		N05   , Fn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte	PEND
@ 032   ----------------------------------------
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		N15   , An2 
	.byte	W24
	.byte	W01
	.byte		N08   , Cn3 
	.byte	W09
	.byte		N08   
	.byte	W09
	.byte		        An2 
	.byte	W09
	.byte		        Cn3 
	.byte	W09
	.byte		        An2 
	.byte	W03
@ 033   ----------------------------------------
	.byte	W06
	.byte		        Cn3 
	.byte	W09
	.byte		N08   
	.byte	W09
	.byte		        An2 
	.byte	W09
	.byte		N06   , Cn3 
	.byte	W07
	.byte		N03   , Gn2 
	.byte	W04
	.byte		N03   
	.byte	W04
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        En3 
	.byte	W18
	.byte		N06   , Gn2 
	.byte	W06
@ 034   ----------------------------------------
	.byte		N07   , Cn3 
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		N12   , An2 
	.byte	W12
	.byte		N05   , Dn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 035   ----------------------------------------
	.byte		N07   , Cn3 
	.byte	W09
	.byte		N05   , As2 
	.byte	W06
	.byte		N07   , Cn3 
	.byte	W09
	.byte		N05   , As2 
	.byte	W06
	.byte		N07   , Cn3 
	.byte	W09
	.byte		N08   , As2 
	.byte	W09
	.byte		N07   , Cn3 
	.byte	W09
	.byte		N05   
	.byte	W06
	.byte		N07   
	.byte	W09
	.byte		N05   , As2 
	.byte	W06
	.byte		N07   , Cn3 
	.byte	W09
	.byte		N08   , An2 
	.byte	W09
@ 036   ----------------------------------------
	.byte	W01
	.byte		N07   , Cn3 
	.byte	W08
	.byte		N06   
	.byte	W07
	.byte		N05   , An2 
	.byte	W07
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W07
	.byte		N06   , Cn3 
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte		N06   
	.byte	W08
	.byte		        An2 
	.byte	W07
	.byte		N10   , Cn3 
	.byte	W11
	.byte		N09   
	.byte	W13
	.byte		N06   , An2 
	.byte	W07
@ 037   ----------------------------------------
	.byte	W01
	.byte		N10   , Dn3 
	.byte	W11
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W07
	.byte		N03   , Cn3 
	.byte	W05
	.byte		N06   , An2 
	.byte	W07
	.byte		N07   , Gn2 
	.byte	W11
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 038   ----------------------------------------
	.byte		        Cn3 
	.byte	W12
	.byte		N05   , An2 
	.byte	W06
	.byte		        Cn3 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 039   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N05   , As2 
	.byte	W06
	.byte		N11   , Cn3 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , As2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 040   ----------------------------------------
	.byte		        Cn3 , v008
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 041   ----------------------------------------
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N02   
	.byte	W03
	.byte		N05   
	.byte	W03
@ 042   ----------------------------------------
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N05   
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte		N08   
	.byte	W15
	.byte		N03   
	.byte	W04
	.byte		N10   
	.byte	W11
	.byte		N10   
	.byte	W12
	.byte		N05   
	.byte	W07
	.byte		N10   
	.byte	W12
	.byte		N02   , As2 
	.byte	W04
@ 043   ----------------------------------------
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N04   , As2 
	.byte	W05
	.byte		N05   
	.byte	W07
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N04   , As2 
	.byte	W06
	.byte		N04   
	.byte	W05
	.byte		        Cn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N04   
	.byte	W05
	.byte		N05   
	.byte	W06
	.byte		N04   , Cn3 
	.byte	W06
	.byte		N09   , As2 
	.byte	W14
	.byte		N04   , Cn3 
	.byte	W06
@ 044   ----------------------------------------
	.byte		N08   
	.byte	W09
	.byte		N06   
	.byte	W07
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N09   
	.byte	W11
	.byte		N03   
	.byte	W05
	.byte		N05   
	.byte	W07
	.byte		N03   
	.byte	W04
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W07
	.byte		N07   
	.byte	W08
	.byte		N05   
	.byte	W06
	.byte		N08   
	.byte	W10
@ 045   ----------------------------------------
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 046   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N22   
	.byte	W32
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
@ 047   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N10   
	.byte	W12
	.byte		N22   
	.byte	W36
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 048   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   , An3 , v040
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W06
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_021
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_022
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_023
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_024
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_026
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_027
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_028
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_029
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_030
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_031
@ 060   ----------------------------------------
	.byte	W21
	.byte		N04   , Cn3 , v008
	.byte	W05
	.byte		N05   
	.byte	W07
	.byte		N04   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W07
	.byte		N05   
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		N05   
	.byte	W07
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W10
@ 061   ----------------------------------------
	.byte	W10
	.byte		N03   
	.byte	W05
	.byte		N05   
	.byte	W06
	.byte		N04   
	.byte	W05
	.byte		N06   
	.byte	W08
	.byte		N06   
	.byte	W07
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		N06   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N07   
	.byte	W12
@ 062   ----------------------------------------
	.byte	W05
	.byte		N04   
	.byte	W06
	.byte		N06   
	.byte	W08
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		N08   
	.byte	W10
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 063   ----------------------------------------
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 064   ----------------------------------------
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
@ 065   ----------------------------------------
	.byte	W07
	.byte		N05   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N07   
	.byte	W08
	.byte		N05   
	.byte	W06
	.byte		N04   
	.byte	W05
	.byte		N07   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W07
	.byte		N05   
	.byte	W06
	.byte		N07   
	.byte	W09
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W07
	.byte		N04   
	.byte	W05
@ 066   ----------------------------------------
	.byte		N04   
	.byte	W05
	.byte		N05   
	.byte	W07
	.byte		N05   
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		N11   
	.byte	W12
	.byte		N10   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W07
	.byte		N05   
	.byte	W07
	.byte		N05   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N06   
	.byte	W10
@ 067   ----------------------------------------
	.byte	W09
	.byte		N04   
	.byte	W05
	.byte		N05   
	.byte	W07
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W05
	.byte		N05   
	.byte	W06
	.byte		N04   
	.byte	W05
	.byte		N05   
	.byte	W06
	.byte		N08   
	.byte	W10
	.byte		N06   
	.byte	W08
	.byte		N07   
	.byte	W08
	.byte		N08   
	.byte	W09
	.byte		N05   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 068   ----------------------------------------
	.byte	W01
	.byte		N04   
	.byte	W17
	.byte		N04   
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W05
	.byte		N06   
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte		N05   
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte		N05   
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N03   
	.byte	W01
@ 069   ----------------------------------------
mus_where_is_the_love_3_069:
	.byte	W18
	.byte		N04   , Cn3 , v008
	.byte	W06
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W04
	.byte		N06   
	.byte	W07
	.byte		N03   
	.byte	W05
	.byte		N06   
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte		N05   
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte		N05   
	.byte	W07
	.byte		N04   
	.byte	W05
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N03   
	.byte	W01
	.byte	PEND
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_069
@ 071   ----------------------------------------
	.byte	W24
	.byte		N05   , Cn3 , v008
	.byte	W06
	.byte		N04   
	.byte	W05
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W01
@ 072   ----------------------------------------
	.byte	W05
	.byte		N05   
	.byte	W07
	.byte		N05   
	.byte	W12
	.byte		N04   
	.byte	W05
	.byte		N05   
	.byte	W07
	.byte		N03   
	.byte	W04
	.byte		N05   
	.byte	W07
	.byte		N12   
	.byte	W13
	.byte		N06   
	.byte	W08
	.byte		N10   
	.byte	W11
	.byte		N04   
	.byte	W05
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
@ 073   ----------------------------------------
	.byte		N04   
	.byte	W05
	.byte		N05   
	.byte	W22
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N04   
	.byte	W05
	.byte		N05   
	.byte	W07
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W07
	.byte		N10   
	.byte	W12
	.byte		N04   
	.byte	W05
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W03
@ 074   ----------------------------------------
	.byte	W04
	.byte		N10   
	.byte	W24
	.byte	W01
	.byte		N09   
	.byte	W10
	.byte		N06   
	.byte	W07
	.byte		N05   
	.byte	W07
	.byte		N09   
	.byte	W10
	.byte		N05   
	.byte	W06
	.byte		N08   
	.byte	W09
	.byte		N04   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N04   
	.byte	W06
@ 075   ----------------------------------------
	.byte		N07   
	.byte	W07
	.byte		N06   
	.byte	W17
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 076   ----------------------------------------
	.byte		N11   
	.byte	W24
	.byte		N05   , An3 , v040
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W06
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_021
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_022
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_023
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_024
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_025
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_026
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_027
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_028
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_029
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_030
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_3_031
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
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_where_is_the_love_4:
	.byte		VOL   , 127*mus_where_is_the_love_mvl/mxv
	.byte	KEYSH , mus_where_is_the_love_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
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
	.byte	W24
	.byte		N11   , En2 , v012
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W54
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W24
	.byte		N05   , Cn3 
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N11   
	.byte	W48
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
mus_where_is_the_love_4_020:
	.byte	W24
	.byte		N05   , An2 , v012
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
mus_where_is_the_love_4_021:
	.byte	W06
	.byte		N11   , An2 , v012
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W06
	.byte	PEND
@ 022   ----------------------------------------
mus_where_is_the_love_4_022:
	.byte	W06
	.byte		N11   , Dn2 , v012
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N11   , Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As1 
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
mus_where_is_the_love_4_023:
	.byte	W18
	.byte		N05   , As1 , v012
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N11   , Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N23   , Fn2 
	.byte	W06
	.byte	PEND
@ 024   ----------------------------------------
mus_where_is_the_love_4_024:
	.byte	W24
	.byte		N11   , Cn3 , v012
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N11   
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
mus_where_is_the_love_4_025:
	.byte	W06
	.byte		N17   , Fn2 , v012
	.byte	W18
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N05   , Fn2 
	.byte	W06
	.byte		N11   , An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N17   , Fn2 
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
mus_where_is_the_love_4_026:
	.byte	W18
	.byte		N05   , Dn2 , v012
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W06
	.byte	PEND
@ 027   ----------------------------------------
mus_where_is_the_love_4_027:
	.byte	W06
	.byte		N11   , Gn2 , v012
	.byte	W12
	.byte		N08   
	.byte	W09
	.byte		N03   , Fn2 
	.byte	W03
	.byte		N11   , Dn2 
	.byte	W18
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_where_is_the_love_4_028:
	.byte		N56   , Fn2 , v012, gtp3
	.byte	W72
	.byte		N23   , An2 
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
mus_where_is_the_love_4_029:
	.byte		N56   , Gn2 , v012
	.byte	W72
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
mus_where_is_the_love_4_030:
	.byte		N11   , Gn2 , v012
	.byte	W12
	.byte		N32   , Fn2 , v012, gtp3
	.byte	W36
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N32   , An2 , v012, gtp3
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
mus_where_is_the_love_4_031:
	.byte	W24
	.byte		N11   , As2 , v012
	.byte	W12
	.byte		N32   , Gn2 , v012, gtp3
	.byte	W36
	.byte		N11   , An2 
	.byte	W12
	.byte		N17   , Fn2 
	.byte	W12
	.byte	PEND
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W48
	.byte		N07   , Cn3 
	.byte	W09
	.byte		N05   
	.byte	W06
	.byte		N07   
	.byte	W09
	.byte		N05   , As2 
	.byte	W06
	.byte		N07   , Cn3 
	.byte	W09
	.byte		N08   , An2 
	.byte	W09
@ 036   ----------------------------------------
	.byte	W01
	.byte		N07   , Cn3 
	.byte	W08
	.byte		N06   
	.byte	W07
	.byte		N05   , An2 
	.byte	W07
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W07
	.byte		N06   , Cn3 
	.byte	W07
	.byte		N06   
	.byte	W07
	.byte		N06   
	.byte	W08
	.byte		        An2 
	.byte	W07
	.byte		N10   , Cn3 
	.byte	W11
	.byte		N09   
	.byte	W20
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
	.byte	PATT
	 .word	mus_where_is_the_love_4_020
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_021
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_022
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_023
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_024
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_025
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_026
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_027
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_028
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_029
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_030
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_031
@ 060   ----------------------------------------
	.byte	W80
	.byte		N08   , Fn3 , v012
	.byte	W08
	.byte		N09   , Cn3 
	.byte	W08
@ 061   ----------------------------------------
	.byte	W72
	.byte		N11   , Fn3 
	.byte	W12
	.byte		N05   , Dn3 
	.byte	W12
@ 062   ----------------------------------------
	.byte	W60
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W72
	.byte		N05   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N11   , Fn3 
	.byte	W12
@ 065   ----------------------------------------
mus_where_is_the_love_4_065:
	.byte	W66
	.byte		N05   , Dn3 , v012
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N11   , Fn3 
	.byte	W12
	.byte	PEND
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_065
@ 067   ----------------------------------------
	.byte	W72
	.byte		N05   , Fn3 , v012
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , An3 
	.byte	W12
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
	 .word	mus_where_is_the_love_4_020
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_021
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_022
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_023
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_024
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_025
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_026
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_027
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_028
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_029
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_030
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_4_031
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
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_where_is_the_love_5:
	.byte		VOL   , 127*mus_where_is_the_love_mvl/mxv
	.byte	KEYSH , mus_where_is_the_love_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		N56   , Fn3 , v052, gtp3
	.byte	W60
	.byte		N10   , Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N56   , En3 , v052, gtp3
	.byte	W60
	.byte		N10   , Cn3 , v048
	.byte	W12
	.byte		N18   , En3 
	.byte	W12
	.byte		N02   , Fn3 
	.byte	W12
@ 002   ----------------------------------------
mus_where_is_the_love_5_002:
	.byte		N02   , Dn3 , v048
	.byte	W72
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        As2 
	.byte	W48
	.byte		N02   
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Fn2 
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
	.byte	W48
	.byte		        As2 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        Fn3 
	.byte	W60
	.byte		        Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        En3 
	.byte	W60
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_5_002
@ 019   ----------------------------------------
	.byte	W48
	.byte		N44   , As4 , v032, gtp3
	.byte	W48
@ 020   ----------------------------------------
	.byte		N96   , Cn4 , v024
	.byte		N01   , An4 , v028
	.byte	W96
@ 021   ----------------------------------------
	.byte		N92   , Gn4 , v028, gtp3
	.byte	W96
@ 022   ----------------------------------------
	.byte		TIE   , Dn4 , v024
	.byte	W96
@ 023   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 024   ----------------------------------------
	.byte		N96   , Cn4 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        Gn4 , v028
	.byte	W96
@ 026   ----------------------------------------
	.byte		TIE   , Dn4 , v024
	.byte	W96
@ 027   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 028   ----------------------------------------
	.byte	W11
	.byte		N03   , An2 , v048
	.byte	W23
	.byte		        An2 , v052
	.byte	W24
	.byte		N03   
	.byte	W12
	.byte		N02   , An2 , v060
	.byte	W12
	.byte		        An2 , v056
	.byte	W14
@ 029   ----------------------------------------
	.byte	W10
	.byte		N03   , Cn3 , v052
	.byte	W24
	.byte		        Cn3 , v048
	.byte	W24
	.byte		        Cn3 , v052
	.byte	W12
	.byte		N02   , Cn3 , v060
	.byte	W12
	.byte		        Cn3 , v056
	.byte	W14
@ 030   ----------------------------------------
	.byte	W10
	.byte		N03   , Fn2 , v052
	.byte	W24
	.byte	W01
	.byte		        Fn2 , v048
	.byte	W23
	.byte		N03   
	.byte	W12
	.byte		N02   , Fn2 , v060
	.byte	W12
	.byte		        Fn2 , v056
	.byte	W14
@ 031   ----------------------------------------
	.byte	W10
	.byte		N03   , An2 , v048
	.byte	W24
	.byte		        An2 , v052
	.byte	W24
	.byte		        An2 , v048
	.byte	W12
	.byte		N02   , An2 , v060
	.byte	W12
	.byte		N01   , Cn3 , v056
	.byte	W01
	.byte		N02   , An2 
	.byte	W13
@ 032   ----------------------------------------
	.byte	W72
	.byte		N24   , Cn3 , v040
	.byte	W24
@ 033   ----------------------------------------
	.byte		N03   , Cn3 , v052
	.byte	W72
	.byte		N23   , Gn2 , v044
	.byte	W24
@ 034   ----------------------------------------
mus_where_is_the_love_5_034:
	.byte		N03   , Fn2 , v052
	.byte	W72
	.byte		N24   , Fn2 , v044
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
	.byte		N03   , Fn2 , v052
	.byte	W96
@ 036   ----------------------------------------
	.byte	W72
	.byte		N24   , Cn3 , v040
	.byte	W24
@ 037   ----------------------------------------
	.byte		N03   , Cn3 , v052
	.byte	W72
	.byte		N24   , Gn2 , v044
	.byte	W24
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_5_034
@ 039   ----------------------------------------
	.byte		N03   , Dn2 , v052
	.byte	W56
	.byte	W02
	.byte		N05   , As1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N03   , An3 , v060
	.byte	W02
@ 040   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		N23   , Cn3 , v044
	.byte	W24
	.byte		N01   , Cn3 , v052
	.byte	W01
	.byte		N03   , Gn3 
	.byte	W01
@ 041   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		N23   , Cn3 , v044
	.byte	W24
	.byte		N03   , Dn3 , v052
	.byte	W02
@ 042   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		N23   , Dn3 , v044
	.byte	W24
	.byte		N03   , As2 , v052
	.byte	W02
@ 043   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		N03   
	.byte	W36
	.byte	W02
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte		N32   , Cn3 , v032, gtp3
	.byte	W36
	.byte		N56   , Dn3 , v032, gtp3
	.byte	W60
@ 047   ----------------------------------------
	.byte		N36   , Cn3 
	.byte	W36
	.byte		N12   , As3 
	.byte	W12
	.byte		N44   , Fn4 , v028, gtp1
	.byte	W48
@ 048   ----------------------------------------
	.byte		N96   , Cn4 , v024
	.byte	W96
@ 049   ----------------------------------------
	.byte		        Gn4 , v028
	.byte	W96
@ 050   ----------------------------------------
mus_where_is_the_love_5_050:
	.byte		TIE   , Dn4 , v024
	.byte		N01   , Fn4 , v028
	.byte	W96
	.byte	PEND
@ 051   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   , Dn4 
	.byte	W01
@ 052   ----------------------------------------
	.byte		N96   , Cn4 , v024
	.byte	W96
@ 053   ----------------------------------------
	.byte		        Gn4 , v028
	.byte	W96
@ 054   ----------------------------------------
	.byte		N01   , Dn4 , v024
	.byte		TIE   , Fn4 , v028
	.byte	W96
@ 055   ----------------------------------------
	.byte	W10
	.byte		EOT   
	.byte		N11   , Cn3 , v044
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N11   , Gn3 
	.byte	W14
	.byte		        An3 , v028
	.byte	W12
@ 056   ----------------------------------------
	.byte	W10
	.byte		N03   , An2 , v052
	.byte	W24
	.byte	W01
	.byte		N03   
	.byte	W23
	.byte		        An2 , v048
	.byte	W12
	.byte		N02   , An2 , v060
	.byte	W12
	.byte		        An2 , v056
	.byte	W14
@ 057   ----------------------------------------
	.byte	W10
	.byte		N03   , Cn3 , v048
	.byte	W24
	.byte		        Cn3 , v052
	.byte	W24
	.byte		N03   
	.byte	W12
	.byte		N02   , Cn3 , v060
	.byte	W12
	.byte		        Cn3 , v056
	.byte	W14
@ 058   ----------------------------------------
	.byte	W11
	.byte		N03   , Fn2 , v048
	.byte	W23
	.byte		N03   
	.byte	W24
	.byte	W01
	.byte		        Fn2 , v052
	.byte	W11
	.byte		N02   , Fn2 , v060
	.byte	W12
	.byte		        Fn2 , v056
	.byte	W14
@ 059   ----------------------------------------
	.byte	W10
	.byte		N01   , Cn3 , v048
	.byte	W01
	.byte		N03   , An2 , v052
	.byte	W23
	.byte		N03   
	.byte	W24
	.byte		N01   , Cn3 , v048
	.byte	W01
	.byte		N03   , An2 , v052
	.byte	W11
	.byte		N02   , An2 , v060
	.byte	W12
	.byte		        An2 , v056
	.byte	W14
@ 060   ----------------------------------------
	.byte		N96   , Fn3 , v024
	.byte	W96
@ 061   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
@ 064   ----------------------------------------
	.byte		N92   , Fn3 , v024, gtp3
	.byte	W96
@ 065   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W48
	.byte	W01
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
	.byte	W92
	.byte	W03
	.byte		N03   , As1 , v052
	.byte	W01
@ 075   ----------------------------------------
	.byte	W11
	.byte		        Dn2 
	.byte	W12
	.byte		N02   , Fn2 , v060
	.byte	W12
	.byte		N03   , An2 , v056
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N02   , Fn2 
	.byte	W12
	.byte		        En2 , v052
	.byte	W12
	.byte		N03   , Fn2 , v056
	.byte	W13
@ 076   ----------------------------------------
	.byte		N96   , Cn4 , v024
	.byte	W96
@ 077   ----------------------------------------
	.byte		        Gn4 , v028
	.byte	W96
@ 078   ----------------------------------------
	.byte		TIE   , Dn4 , v024
	.byte	W96
@ 079   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 080   ----------------------------------------
	.byte		N92   , Cn4 , v024, gtp3
	.byte		N01   , An4 , v028
	.byte	W96
@ 081   ----------------------------------------
	.byte		N96   , Gn4 
	.byte	W96
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_5_050
@ 083   ----------------------------------------
	.byte	W10
	.byte		EOT   , Dn4 
	.byte	W01
	.byte		N11   , Cn3 , v044
	.byte	W11
	.byte		        Fn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N11   , Gn3 
	.byte	W14
	.byte		        An3 , v028
	.byte	W12
@ 084   ----------------------------------------
	.byte	W10
	.byte		N03   , An2 , v048
	.byte	W24
	.byte		        An2 , v052
	.byte	W24
	.byte	W01
	.byte		N03   
	.byte	W11
	.byte		N02   , An2 , v060
	.byte	W12
	.byte		        An2 , v056
	.byte	W14
@ 085   ----------------------------------------
	.byte	W11
	.byte		N03   , Cn3 , v052
	.byte	W23
	.byte		N03   
	.byte	W24
	.byte		        Cn3 , v048
	.byte	W12
	.byte		N02   , Cn3 , v060
	.byte	W12
	.byte		        Cn3 , v056
	.byte	W14
@ 086   ----------------------------------------
	.byte	W10
	.byte		N03   , Fn2 , v048
	.byte	W24
	.byte		        Fn2 , v052
	.byte	W24
	.byte		N03   
	.byte	W12
	.byte		N02   , Fn2 , v060
	.byte	W12
	.byte		        Fn2 , v056
	.byte	W14
@ 087   ----------------------------------------
	.byte	W10
	.byte		N03   , An2 , v048
	.byte	W24
	.byte		        An2 , v052
	.byte	W24
	.byte		        An2 , v048
	.byte	W12
	.byte		N02   , An2 , v060
	.byte	W12
	.byte		        An2 , v056
	.byte	W14
@ 088   ----------------------------------------
	.byte	W10
	.byte		N01   , An2 , v052
	.byte	W01
	.byte		N03   , Cn3 , v048
	.byte	W23
	.byte		        An2 , v052
	.byte	W24
	.byte		N01   , An2 , v048
	.byte	W01
	.byte		N03   , Cn3 , v052
	.byte	W11
	.byte		N02   , An2 , v060
	.byte	W12
	.byte		        An2 , v056
	.byte	W14
@ 089   ----------------------------------------
	.byte	W10
	.byte		N03   , An2 , v048
	.byte	W24
	.byte		        An2 , v052
	.byte	W24
	.byte		        An2 , v048
	.byte	W12
	.byte		N01   , An2 , v060
	.byte	W01
	.byte		N02   , Cn3 
	.byte	W11
	.byte		        An2 , v056
	.byte	W14
@ 090   ----------------------------------------
	.byte	W10
	.byte		N03   , An2 , v048
	.byte	W24
	.byte		N03   
	.byte	W24
	.byte		        An2 , v052
	.byte	W12
	.byte		N02   , An2 , v060
	.byte	W12
	.byte		        An2 , v056
	.byte	W14
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_where_is_the_love_6:
	.byte		VOL   , 127*mus_where_is_the_love_mvl/mxv
	.byte	KEYSH , mus_where_is_the_love_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		N56   , Fn2 , v072, gtp2
	.byte	W60
	.byte		N10   , Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N56   , En2 , v072, gtp2
	.byte	W60
	.byte		N10   , Cn2 , v068
	.byte	W12
	.byte		N18   , En2 
	.byte	W12
	.byte		N02   , Fn2 
	.byte	W12
@ 002   ----------------------------------------
mus_where_is_the_love_6_002:
	.byte		N02   , Dn2 , v068
	.byte	W72
	.byte		        En2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        As1 
	.byte	W48
	.byte		        As2 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Fn2 
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
	.byte	W48
	.byte		N03   , As1 , v076
	.byte	W12
	.byte		        As2 , v080
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        As2 , v076
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Fn2 , v080
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W48
	.byte		N02   , As2 , v068
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        Fn2 
	.byte	W60
	.byte		        Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        En2 
	.byte	W60
	.byte		        Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_002
@ 019   ----------------------------------------
	.byte		N02   , As1 , v068
	.byte	W96
@ 020   ----------------------------------------
mus_where_is_the_love_6_020:
	.byte		N92   , Fn2 , v040, gtp3
	.byte		TIE   , Cn3 , v036
	.byte	W96
	.byte	PEND
@ 021   ----------------------------------------
mus_where_is_the_love_6_021:
	.byte		N92   , En2 , v044, gtp3
	.byte	W92
	.byte	W03
	.byte	PEND
	.byte		EOT   , Cn3 
	.byte	W01
@ 022   ----------------------------------------
mus_where_is_the_love_6_022:
	.byte		N92   , Dn2 , v040, gtp3
	.byte		TIE   , Dn3 , v036
	.byte	W96
	.byte	PEND
@ 023   ----------------------------------------
mus_where_is_the_love_6_023:
	.byte		N92   , As1 , v040, gtp3
	.byte	W92
	.byte	W03
	.byte	PEND
	.byte		EOT   , Dn3 
	.byte	W01
@ 024   ----------------------------------------
mus_where_is_the_love_6_024:
	.byte		N92   , Fn2 , v044, gtp3
	.byte		TIE   , Cn3 , v036
	.byte	W96
	.byte	PEND
@ 025   ----------------------------------------
mus_where_is_the_love_6_025:
	.byte		N92   , En2 , v040, gtp3
	.byte	W92
	.byte	W03
	.byte	PEND
	.byte		EOT   , Cn3 
	.byte	W01
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_023
	.byte		EOT   , Dn3 
	.byte	W01
@ 028   ----------------------------------------
	.byte		N92   , Fn2 , v052, gtp3
	.byte	W96
@ 029   ----------------------------------------
	.byte		        En2 , v052, gtp3
	.byte	W96
@ 030   ----------------------------------------
	.byte		        Dn2 , v052, gtp3
	.byte	W96
@ 031   ----------------------------------------
	.byte		        As1 , v052, gtp3
	.byte	W96
@ 032   ----------------------------------------
	.byte	W72
	.byte		N24   , Fn2 , v056
	.byte	W24
@ 033   ----------------------------------------
mus_where_is_the_love_6_033:
	.byte		N03   , En2 , v076
	.byte	W72
	.byte		N24   , En2 , v064
	.byte	W24
	.byte	PEND
@ 034   ----------------------------------------
mus_where_is_the_love_6_034:
	.byte		N03   , Dn2 , v076
	.byte	W72
	.byte		N24   , Dn2 , v064
	.byte	W24
	.byte	PEND
@ 035   ----------------------------------------
	.byte		N03   , As1 , v076
	.byte	W72
	.byte		N23   , As1 , v064
	.byte	W24
@ 036   ----------------------------------------
	.byte		N03   , Fn1 , v076
	.byte	W72
	.byte		N24   , Fn2 , v056
	.byte	W24
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_033
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_034
@ 039   ----------------------------------------
	.byte		N03   , As1 , v076
	.byte	W96
@ 040   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		N23   , Fn2 , v064
	.byte	W24
	.byte		N03   , En2 , v076
	.byte	W02
@ 041   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		N23   , En2 , v064
	.byte	W24
	.byte		N03   , Dn2 , v076
	.byte	W02
@ 042   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		N23   , Dn2 , v064
	.byte	W24
	.byte		N03   , As1 , v076
	.byte	W02
@ 043   ----------------------------------------
	.byte	W56
	.byte	W02
	.byte		N03   
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        As1 
	.byte	W02
@ 044   ----------------------------------------
	.byte	W12
	.byte		TIE   , As1 , v048
	.byte	W84
@ 045   ----------------------------------------
	.byte	W20
	.byte		        Dn2 
	.byte	W76
@ 046   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
@ 047   ----------------------------------------
	.byte		N01   
	.byte		N44   , Fn2 , v048, gtp3
	.byte	W48
	.byte		        As2 , v048, gtp3
	.byte	W44
	.byte	W01
	.byte		EOT   , As1 
	.byte	W03
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_024
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_021
	.byte		EOT   , Cn3 
	.byte	W01
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_022
@ 051   ----------------------------------------
mus_where_is_the_love_6_051:
	.byte		N92   , As1 , v044, gtp3
	.byte	W92
	.byte	W03
	.byte	PEND
	.byte		EOT   , Dn3 
	.byte	W01
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_024
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_025
	.byte		EOT   , Cn3 
	.byte	W01
@ 054   ----------------------------------------
mus_where_is_the_love_6_054:
	.byte		N92   , Dn2 , v044, gtp3
	.byte		TIE   , Dn3 , v036
	.byte	W96
	.byte	PEND
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_023
	.byte		EOT   , Dn3 
	.byte	W01
@ 056   ----------------------------------------
	.byte		N92   , Fn2 , v052, gtp3
	.byte	W96
@ 057   ----------------------------------------
	.byte		        En2 , v052, gtp3
	.byte	W96
@ 058   ----------------------------------------
	.byte		        Dn2 , v052, gtp3
	.byte	W96
@ 059   ----------------------------------------
	.byte		        As1 , v052, gtp3
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte		        Gn2 , v036, gtp3
	.byte	W96
@ 062   ----------------------------------------
	.byte		N23   , As2 
	.byte	W24
	.byte		N68   , An2 , v036, gtp3
	.byte	W72
@ 063   ----------------------------------------
	.byte		        As2 , v036, gtp3
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte		N44   , Cn3 , v036, gtp3
	.byte	W96
@ 068   ----------------------------------------
	.byte		N03   , Fn1 , v072
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Fn1 , v076
	.byte	W36
	.byte		        Fn1 , v072
	.byte	W12
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		N03   , Fn1 , v068
	.byte	W12
@ 069   ----------------------------------------
	.byte		        Cn1 , v072
	.byte	W12
	.byte		N02   , En1 , v076
	.byte	W12
	.byte		N03   , Gn1 , v072
	.byte	W12
	.byte		        As1 , v068
	.byte	W12
	.byte		        An1 , v064
	.byte	W12
	.byte		        Gn1 , v056
	.byte	W12
	.byte		        Fn1 , v068
	.byte	W12
	.byte		        En1 , v072
	.byte	W12
@ 070   ----------------------------------------
	.byte		        Dn1 , v060
	.byte	W12
	.byte		N02   , Fn1 , v072
	.byte	W12
	.byte		N03   , As1 , v068
	.byte	W12
	.byte		N02   , Dn2 , v064
	.byte	W12
	.byte		        Fn1 , v068
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N15   , Dn1 
	.byte	W24
@ 071   ----------------------------------------
	.byte		N03   , As0 , v064
	.byte	W12
	.byte		N02   , Dn1 , v068
	.byte	W12
	.byte		        Fn1 , v076
	.byte	W12
	.byte		        An1 , v068
	.byte	W24
	.byte		        Fn1 , v072
	.byte	W12
	.byte		        En1 , v080
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 072   ----------------------------------------
	.byte		        Fn0 , v056
	.byte	W12
	.byte		N03   , Cn1 , v080
	.byte	W12
	.byte		        Fn1 , v064
	.byte	W12
	.byte		        An1 , v056
	.byte	W24
	.byte		N02   , Fn1 , v068
	.byte	W12
	.byte		        En1 , v076
	.byte	W12
	.byte		N03   , Fn1 , v072
	.byte	W12
@ 073   ----------------------------------------
	.byte		N02   , Cn1 , v076
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N03   , Gn1 , v080
	.byte	W12
	.byte		        As1 , v056
	.byte	W12
	.byte		        An1 , v072
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        En1 , v080
	.byte	W12
@ 074   ----------------------------------------
	.byte		        Dn1 , v064
	.byte	W12
	.byte		        Fn1 , v072
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 , v060
	.byte	W12
	.byte		        Fn1 , v076
	.byte	W12
	.byte		        En1 , v068
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W12
@ 075   ----------------------------------------
	.byte		        As0 , v068
	.byte	W12
	.byte		        Dn1 , v072
	.byte	W12
	.byte		        Fn1 , v080
	.byte	W12
	.byte		        An1 , v068
	.byte	W12
	.byte		        Gn1 , v076
	.byte	W12
	.byte		        Fn1 , v080
	.byte	W12
	.byte		        En1 , v076
	.byte	W12
	.byte		        Fn1 , v072
	.byte	W12
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_024
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_021
	.byte		EOT   , Cn3 
	.byte	W01
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_022
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_051
	.byte		EOT   , Dn3 
	.byte	W01
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_020
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_025
	.byte		EOT   , Cn3 
	.byte	W01
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_054
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_6_023
	.byte		EOT   , Dn3 
	.byte	W01
@ 084   ----------------------------------------
	.byte		N92   , Fn2 , v052, gtp3
	.byte	W96
@ 085   ----------------------------------------
	.byte		        En2 , v052, gtp3
	.byte	W96
@ 086   ----------------------------------------
	.byte		        Dn2 , v052, gtp3
	.byte	W96
@ 087   ----------------------------------------
	.byte		        As1 , v052, gtp3
	.byte	W96
@ 088   ----------------------------------------
	.byte		        As1 , v052, gtp3
	.byte	W96
@ 089   ----------------------------------------
	.byte		        As1 , v052, gtp3
	.byte	W96
@ 090   ----------------------------------------
	.byte		        As1 , v052, gtp3
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_where_is_the_love_7:
	.byte		VOL   , 127*mus_where_is_the_love_mvl/mxv
	.byte	KEYSH , mus_where_is_the_love_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W11
	.byte		N03   , Cn2 , v052
	.byte	W24
	.byte		N01   
	.byte		N03   , An2 
	.byte	W12
	.byte		        Cn2 , v064
	.byte	W12
	.byte		        Cn2 , v052
	.byte	W36
	.byte	W01
@ 005   ----------------------------------------
mus_where_is_the_love_7_005:
	.byte	W11
	.byte		N03   , Cn2 , v052
	.byte	W24
	.byte		N03   
	.byte	W12
	.byte		        Cn2 , v064
	.byte	W12
	.byte		        Cn2 , v052
	.byte	W36
	.byte	W01
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_7_005
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_7_005
@ 009   ----------------------------------------
	.byte	W11
	.byte		N03   , Cn2 , v052
	.byte	W24
	.byte		N03   
	.byte		N01   , En2 
	.byte	W12
	.byte		N03   , Cn2 , v064
	.byte	W12
	.byte		N01   , Cn2 , v052
	.byte		N03   , Gn2 
	.byte	W36
	.byte	W01
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_7_005
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W11
	.byte		N03   , Cn2 , v052
	.byte	W24
	.byte		N03   
	.byte		N01   , Fn2 
	.byte	W12
	.byte		N03   , Cn2 , v064
	.byte	W12
	.byte		        Cn2 , v052
	.byte		N01   , Fn2 
	.byte	W36
	.byte	W01
@ 013   ----------------------------------------
	.byte	W11
	.byte		N03   , Cn2 
	.byte		N01   , En2 
	.byte	W24
	.byte		N03   , Cn2 
	.byte	W12
	.byte		        Cn2 , v064
	.byte	W12
	.byte		        Cn2 , v052
	.byte	W36
	.byte	W01
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_7_005
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_7_005
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_7_005
@ 018   ----------------------------------------
	.byte	W11
	.byte		N03   , Cn2 , v052
	.byte	W24
	.byte		N03   
	.byte		N01   , An2 
	.byte	W12
	.byte		N03   , Cn2 , v064
	.byte	W12
	.byte		N01   , Cn2 , v052
	.byte		N03   , Fn2 
	.byte	W36
	.byte	W01
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
	.byte	PATT
	 .word	mus_where_is_the_love_7_005
@ 033   ----------------------------------------
	.byte	W11
	.byte		N03   , Cn2 , v052
	.byte	W24
	.byte		N03   
	.byte	W12
	.byte		N01   , Cn2 , v064
	.byte		N03   , En2 
	.byte	W12
	.byte		N01   , Cn2 , v052
	.byte		N03   , En2 
	.byte	W36
	.byte	W01
@ 034   ----------------------------------------
	.byte	W11
	.byte		N01   , Cn2 
	.byte		N03   , An2 
	.byte	W24
	.byte		N01   , Cn2 
	.byte		N03   , An2 
	.byte	W12
	.byte		        Cn2 , v064
	.byte	W12
	.byte		N01   , Cn2 , v052
	.byte		N03   , Fn2 
	.byte	W36
	.byte	W01
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W11
	.byte		        Cn2 
	.byte		N01   , Fn2 
	.byte	W24
	.byte		N03   , Cn2 
	.byte	W12
	.byte		        Cn2 , v064
	.byte	W12
	.byte		N01   , Cn2 , v052
	.byte		N03   , An2 
	.byte	W36
	.byte	W01
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_7_005
@ 038   ----------------------------------------
	.byte	W11
	.byte		N01   , Cn2 , v052
	.byte		N03   , An2 
	.byte	W24
	.byte		        Cn2 
	.byte		N01   , Fn2 
	.byte	W12
	.byte		N03   , Cn2 , v064
	.byte	W12
	.byte		        Cn2 , v052
	.byte		N01   , Fn2 
	.byte	W36
	.byte	W01
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_where_is_the_love_7_005
@ 041   ----------------------------------------
	.byte	W11
	.byte		N03   , Cn2 , v052
	.byte	W24
	.byte		N03   
	.byte	W12
	.byte		        Cn2 , v064
	.byte	W12
	.byte		        Cn2 , v052
	.byte		N01   , En2 
	.byte	W36
	.byte	W01
@ 042   ----------------------------------------
	.byte	W11
	.byte		N03   , Cn2 
	.byte	W24
	.byte		N03   
	.byte	W12
	.byte		N01   , Cn2 , v064
	.byte		N03   , Fn2 
	.byte	W12
	.byte		        Cn2 , v052
	.byte		N01   , Fn2 
	.byte	W36
	.byte	W01
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
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_where_is_the_love_8:
	.byte		VOL   , 127*mus_where_is_the_love_mvl/mxv
	.byte	KEYSH , mus_where_is_the_love_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 45
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
	.byte		N92   , Fn2 , v032, gtp3
	.byte	W96
@ 021   ----------------------------------------
	.byte		        En2 , v032, gtp3
	.byte	W96
@ 022   ----------------------------------------
	.byte		        Dn2 , v032, gtp3
	.byte	W96
@ 023   ----------------------------------------
	.byte		        As1 , v032, gtp3
	.byte	W96
@ 024   ----------------------------------------
	.byte		        Fn2 , v032, gtp3
	.byte	W96
@ 025   ----------------------------------------
	.byte		        En2 , v032, gtp3
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Dn2 , v032, gtp3
	.byte	W96
@ 027   ----------------------------------------
	.byte		        As1 , v032, gtp3
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
	.byte		        Fn2 , v032, gtp3
	.byte	W96
@ 049   ----------------------------------------
	.byte		        En2 , v032, gtp3
	.byte	W96
@ 050   ----------------------------------------
	.byte		        Dn2 , v032, gtp3
	.byte	W96
@ 051   ----------------------------------------
	.byte		        As1 , v032, gtp3
	.byte	W96
@ 052   ----------------------------------------
	.byte		        Fn2 , v032, gtp3
	.byte	W96
@ 053   ----------------------------------------
	.byte		        En2 , v032, gtp3
	.byte	W96
@ 054   ----------------------------------------
	.byte		        Dn2 , v032, gtp3
	.byte	W96
@ 055   ----------------------------------------
	.byte		        As1 , v032, gtp3
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
	.byte		TIE   , Fn4 , v040
	.byte	W96
@ 065   ----------------------------------------
	.byte	W92
	.byte	W03
	.byte		EOT   
	.byte	W01
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
	.byte		N92   , Fn2 , v032, gtp3
	.byte	W96
@ 077   ----------------------------------------
	.byte		        En2 , v032, gtp3
	.byte	W96
@ 078   ----------------------------------------
	.byte		        Dn2 , v032, gtp3
	.byte	W96
@ 079   ----------------------------------------
	.byte		        As1 , v032, gtp3
	.byte	W96
@ 080   ----------------------------------------
	.byte		        Fn2 , v032, gtp3
	.byte	W96
@ 081   ----------------------------------------
	.byte		        En2 , v032, gtp3
	.byte	W96
@ 082   ----------------------------------------
	.byte		        Dn2 , v032, gtp3
	.byte	W96
@ 083   ----------------------------------------
	.byte		        As1 , v032, gtp3
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
	.byte	FINE

@**************** Track 9 (Midi-Chn.10) ****************@

mus_where_is_the_love_9:
	.byte		VOL   , 127*mus_where_is_the_love_mvl/mxv
	.byte	KEYSH , mus_where_is_the_love_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		N01   , Cn1 , v072
	.byte	W12
	.byte		N02   , Fs1 , v036
	.byte	W12
	.byte		N01   , Dn1 , v072
	.byte		N01   , Ds1 , v048
	.byte		N04   , Fs1 , v068
	.byte	W12
	.byte		N01   , Cn1 , v064
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		N01   , Cn1 , v072
	.byte		N04   , Fs1 , v060
	.byte	W12
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		N01   , Dn1 , v072
	.byte		N01   , Ds1 , v048
	.byte		N01   , Fs1 , v072
	.byte	W04
	.byte		        Cn1 , v064
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		N01   , Cn1 , v072
	.byte		N02   , Fs1 , v064
	.byte	W11
	.byte		N03   , Fs1 , v044
	.byte	W03
@ 001   ----------------------------------------
	.byte	W09
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N03   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N03   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		N01   , Cn1 , v092
	.byte		N03   , Fs1 , v084
	.byte	W12
	.byte		N01   , Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W03
@ 002   ----------------------------------------
	.byte	W09
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W05
@ 003   ----------------------------------------
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N03   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W11
@ 004   ----------------------------------------
	.byte	W01
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v092
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W05
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W10
@ 005   ----------------------------------------
	.byte	W02
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N01   , Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N04   , Fs1 , v080
	.byte	W01
	.byte		N01   , Cn1 , v092
	.byte	W10
@ 006   ----------------------------------------
	.byte	W01
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W01
@ 007   ----------------------------------------
	.byte	W10
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W13
	.byte		N02   , Fs1 , v056
	.byte	W06
@ 008   ----------------------------------------
	.byte	W05
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v092
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W05
@ 009   ----------------------------------------
	.byte	W02
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		        Cn1 , v092
	.byte		N03   , Fs1 , v084
	.byte	W12
	.byte		N01   , Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W08
@ 010   ----------------------------------------
	.byte	W04
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W04
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W13
	.byte		        Cn1 , v092
	.byte		N03   , Fs1 , v084
	.byte	W10
@ 011   ----------------------------------------
	.byte	W02
	.byte		N02   , Fs1 , v048
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v092
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		N01   , Cn1 , v092
	.byte		N03   , Fs1 , v084
	.byte	W11
	.byte		        Fs1 , v056
	.byte	W10
@ 012   ----------------------------------------
	.byte	W02
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W05
	.byte		        Cn1 , v092
	.byte		N03   , Fs1 , v084
	.byte	W12
	.byte		N01   , Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W11
@ 013   ----------------------------------------
	.byte	W01
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v064
	.byte	W02
@ 014   ----------------------------------------
	.byte	W10
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N03   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W07
@ 015   ----------------------------------------
	.byte	W05
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v092
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W06
@ 016   ----------------------------------------
	.byte	W06
	.byte		N01   , Fs1 , v056
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W05
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W04
	.byte		N01   , Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v092
	.byte	W04
@ 017   ----------------------------------------
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W06
@ 018   ----------------------------------------
	.byte	W01
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N04   , An2 , v064
	.byte	W12
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W03
@ 019   ----------------------------------------
	.byte	W02
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		        Cn1 , v092
	.byte		N03   , Fs1 , v084
	.byte	W10
@ 020   ----------------------------------------
	.byte	W02
	.byte		N01   , Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W11
	.byte		N04   , Fs1 , v084
	.byte	W01
	.byte		N01   , Cn1 , v092
	.byte	W11
	.byte		N02   , Fs1 , v056
	.byte	W01
@ 021   ----------------------------------------
	.byte	W10
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N03   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v048
	.byte	W07
@ 022   ----------------------------------------
	.byte	W05
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N01   , Fs1 , v088
	.byte	W04
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W05
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W10
@ 023   ----------------------------------------
	.byte	W02
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N01   , Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 024   ----------------------------------------
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W02
@ 025   ----------------------------------------
	.byte	W10
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W07
@ 026   ----------------------------------------
	.byte	W05
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N01   , Fs1 , v088
	.byte	W04
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W05
	.byte		N03   , Fs1 , v084
	.byte	W01
	.byte		N01   , Cn1 , v092
	.byte	W11
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W10
@ 027   ----------------------------------------
	.byte	W02
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N01   , Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W01
@ 028   ----------------------------------------
	.byte	W11
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte	W01
	.byte		        Fs1 , v064
	.byte	W07
@ 029   ----------------------------------------
	.byte	W04
	.byte		        Cn1 , v092
	.byte	W01
	.byte		N03   , Fs1 , v084
	.byte	W11
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W01
	.byte		N01   , Cn1 , v080
	.byte	W11
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		N01   , Cn1 , v092
	.byte		N03   , Fs1 , v084
	.byte	W06
@ 030   ----------------------------------------
	.byte	W05
	.byte		        Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N01   , Fs1 , v048
	.byte	W07
@ 031   ----------------------------------------
	.byte	W04
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W05
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W06
@ 032   ----------------------------------------
	.byte	W06
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
@ 033   ----------------------------------------
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte	W01
	.byte		N02   , Fs1 , v052
	.byte	W05
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v064
	.byte	W11
@ 034   ----------------------------------------
	.byte	W01
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W04
	.byte		N01   , Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W08
@ 035   ----------------------------------------
	.byte	W03
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W05
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W17
@ 036   ----------------------------------------
	.byte	W18
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v092
	.byte	W06
@ 037   ----------------------------------------
	.byte	W01
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		N01   , Cn1 , v092
	.byte		N03   , Fs1 , v084
	.byte	W11
	.byte		        Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W06
@ 038   ----------------------------------------
	.byte	W06
	.byte		N01   , Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W04
	.byte		N02   , Fs1 , v056
	.byte	W04
@ 039   ----------------------------------------
	.byte	W07
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte	W01
	.byte		N03   , Fs1 , v084
	.byte	W11
	.byte		N02   , Fs1 , v048
	.byte	W11
@ 040   ----------------------------------------
	.byte	W01
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v092
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W05
	.byte		N03   , Fs1 , v084
	.byte	W01
	.byte		N01   , Cn1 , v092
	.byte	W11
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v088
	.byte	W10
@ 041   ----------------------------------------
	.byte	W02
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N01   , Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
@ 042   ----------------------------------------
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v088
	.byte	W12
	.byte		N02   , Fs1 , v064
	.byte	W01
	.byte		N01   , Cn1 , v080
	.byte	W11
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W02
@ 043   ----------------------------------------
	.byte	W10
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N04   , An2 , v064
	.byte	W12
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W08
@ 044   ----------------------------------------
	.byte	W04
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W06
@ 045   ----------------------------------------
	.byte	W06
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		N03   , Fs1 , v084
	.byte	W01
	.byte		N01   , Cn1 , v092
	.byte	W11
	.byte		        Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W09
@ 046   ----------------------------------------
	.byte	W03
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
@ 047   ----------------------------------------
	.byte	W08
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W05
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W03
@ 048   ----------------------------------------
	.byte	W09
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte	W01
	.byte		N04   , Fs1 , v076
	.byte	W11
	.byte		N01   , Fs1 , v056
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte	W01
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		        Cn1 , v092
	.byte		N03   , Fs1 , v084
	.byte	W12
	.byte		N01   , Fs1 , v048
	.byte	W03
@ 049   ----------------------------------------
	.byte	W08
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W05
@ 050   ----------------------------------------
	.byte	W06
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v048
	.byte	W11
@ 051   ----------------------------------------
	.byte	W01
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N01   , Fs1 , v088
	.byte	W04
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W05
	.byte		N03   , Fs1 , v084
	.byte	W01
	.byte		N01   , Cn1 , v092
	.byte	W11
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v064
	.byte	W02
@ 052   ----------------------------------------
	.byte	W10
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		N03   , Fs1 , v084
	.byte	W01
	.byte		N01   , Cn1 , v092
	.byte	W11
	.byte		        Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W04
@ 053   ----------------------------------------
	.byte	W08
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W10
	.byte		N01   , Dn1 , v092
	.byte		N05   , Fs1 
	.byte	W01
	.byte		N01   , Ds1 , v064
	.byte	W11
	.byte		        Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W07
@ 054   ----------------------------------------
	.byte	W05
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W11
	.byte		        Bn0 , v080
	.byte		N04   , An2 , v064
	.byte	W12
	.byte		N02   , Fs1 , v036
	.byte	W12
	.byte		N01   , Ds1 , v076
	.byte		N04   , Fs1 , v072
	.byte	W12
	.byte		N01   , Bn0 
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		N01   , Bn0 , v080
	.byte		N04   , Fs1 , v064
	.byte	W12
	.byte		N03   , Fs1 , v044
	.byte	W01
@ 055   ----------------------------------------
	.byte	W11
	.byte		N01   , Ds1 , v076
	.byte		N04   , Fs1 , v072
	.byte	W08
	.byte		N01   , Bn0 
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		N01   , Bn0 , v080
	.byte		N04   , Fs1 , v068
	.byte	W12
	.byte		N03   , Fs1 , v044
	.byte	W12
	.byte		N01   , Ds1 , v076
	.byte		N05   , Fs1 , v072
	.byte	W12
	.byte		N01   , Bn0 
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N01   , Bn0 , v080
	.byte		N04   , Fs1 , v064
	.byte	W12
	.byte		N01   , Fs1 , v044
	.byte	W11
@ 056   ----------------------------------------
	.byte	W01
	.byte		        Ds1 , v076
	.byte		N04   , Fs1 , v068
	.byte		N01   , Fs2 , v064
	.byte	W07
	.byte		        Bn0 , v072
	.byte		N01   , Fs1 , v048
	.byte	W03
	.byte		        Bn0 , v080
	.byte	W01
	.byte		N03   , Fs1 , v068
	.byte	W11
	.byte		N01   , Fs1 , v036
	.byte	W11
	.byte		        Ds1 , v076
	.byte		N04   , Fs1 , v072
	.byte	W12
	.byte		N01   , Bn0 
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		N01   , Bn0 , v080
	.byte	W01
	.byte		N04   , Fs1 , v064
	.byte	W11
	.byte		N02   , Fs1 , v044
	.byte	W11
	.byte		N01   , Ds1 , v076
	.byte		N04   , Fs1 , v072
	.byte		N01   , Fs2 , v064
	.byte	W12
	.byte		        Bn0 , v072
	.byte		N02   , Fs1 , v044
	.byte	W03
@ 057   ----------------------------------------
	.byte	W09
	.byte		N01   , Bn0 , v080
	.byte		N04   , Fs1 , v068
	.byte	W05
	.byte		N02   , Fs1 , v044
	.byte	W11
	.byte		N01   , Ds1 , v076
	.byte		N05   , Fs1 , v072
	.byte	W12
	.byte		N01   , Bn0 
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Bn0 , v080
	.byte		N04   , Fs1 , v064
	.byte	W12
	.byte		N01   , Fs1 , v044
	.byte	W11
	.byte		        Ds1 , v076
	.byte		N04   , Fs1 , v068
	.byte		N01   , Fs2 , v064
	.byte	W07
	.byte		        Bn0 , v072
	.byte		N01   , Fs1 , v048
	.byte	W12
	.byte		        Bn0 , v080
	.byte		N04   , Fs1 , v068
	.byte	W05
@ 058   ----------------------------------------
	.byte	W07
	.byte		N02   , Fs1 , v036
	.byte	W12
	.byte		N01   , Ds1 , v076
	.byte		N04   , Fs1 , v072
	.byte	W12
	.byte		N01   , Bn0 
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		N01   , Bn0 , v080
	.byte		N04   , Fs1 , v064
	.byte	W12
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		N01   , Ds1 , v076
	.byte		N01   , Fs1 , v072
	.byte		N01   , Fs2 , v064
	.byte	W04
	.byte		        Bn0 , v072
	.byte		N02   , Fs1 , v044
	.byte	W06
	.byte		N01   , Bn0 , v080
	.byte		N03   , Fs1 , v068
	.byte	W11
	.byte		        Fs1 , v044
	.byte	W08
@ 059   ----------------------------------------
	.byte	W04
	.byte		N01   , Ds1 , v076
	.byte		N05   , Fs1 , v072
	.byte	W12
	.byte		N01   , Bn0 
	.byte		N03   , Fs1 , v052
	.byte	W12
	.byte		N01   , Bn0 , v080
	.byte		N04   , Fs1 , v064
	.byte	W12
	.byte		N01   , Fs1 , v044
	.byte	W12
	.byte		        Ds1 , v076
	.byte		N04   , Fs1 , v068
	.byte		N01   , Fs2 , v064
	.byte	W08
	.byte		        Bn0 , v072
	.byte		N01   , Fs1 , v048
	.byte	W04
	.byte		        Bn0 , v080
	.byte		N04   , Fs1 , v068
	.byte	W12
	.byte		N01   , Fs1 , v036
	.byte	W11
	.byte		        Ds1 , v076
	.byte		N04   , Fs1 , v072
	.byte	W09
@ 060   ----------------------------------------
	.byte	W03
	.byte		N01   , Bn0 
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		N01   , Bn0 , v080
	.byte		N04   , Fs1 , v064
	.byte	W04
	.byte		N02   , Fs1 , v044
	.byte	W11
	.byte		N01   , Ds1 , v076
	.byte		N04   , Fs1 , v072
	.byte		N01   , Fs2 , v064
	.byte	W12
	.byte		        Bn0 , v072
	.byte		N02   , Fs1 , v044
	.byte	W12
	.byte		N01   , Bn0 , v080
	.byte		N04   , Fs1 , v068
	.byte	W12
	.byte		N02   , Fs1 , v044
	.byte	W11
	.byte		N01   , Ds1 , v076
	.byte		N05   , Fs1 , v072
	.byte	W12
	.byte		N01   , Bn0 
	.byte		N02   , Fs1 , v052
	.byte	W07
@ 061   ----------------------------------------
	.byte	W05
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		        Cn1 , v092
	.byte		N04   , An2 , v064
	.byte	W12
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W07
@ 062   ----------------------------------------
	.byte	W05
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N01   , Fs1 , v088
	.byte	W04
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W09
@ 063   ----------------------------------------
	.byte	W03
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N01   , Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N01   , Fs1 , v088
	.byte		N01   , Fs2 , v064
	.byte	W11
@ 064   ----------------------------------------
	.byte	W01
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W11
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W05
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N01   , Fs1 , v084
	.byte		N01   , Fs2 , v064
	.byte	W04
	.byte		        Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W05
@ 065   ----------------------------------------
	.byte	W07
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N01   , Fs1 , v088
	.byte	W04
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W11
	.byte		N03   , Fs1 , v056
	.byte	W08
@ 066   ----------------------------------------
	.byte	W04
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		        Cn1 , v092
	.byte		N03   , Fs1 , v084
	.byte	W12
	.byte		N01   , Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W09
@ 067   ----------------------------------------
	.byte	W03
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W11
@ 068   ----------------------------------------
	.byte	W01
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N04   , An2 , v064
	.byte	W12
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W01
	.byte		N01   , Dn1 , v092
	.byte	W11
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W05
@ 069   ----------------------------------------
	.byte	W07
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Fs1 , v088
	.byte	W01
	.byte		        Ds1 , v064
	.byte	W04
	.byte		        Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W05
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W07
@ 070   ----------------------------------------
	.byte	W05
	.byte		N01   , Fs1 , v056
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W01
	.byte		N01   , Ds1 , v064
	.byte	W07
	.byte		        Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N01   , Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W08
@ 071   ----------------------------------------
	.byte	W03
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W10
@ 072   ----------------------------------------
	.byte	W01
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W03
@ 073   ----------------------------------------
	.byte	W04
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		        Cn1 , v092
	.byte		N03   , Fs1 , v084
	.byte	W03
@ 074   ----------------------------------------
	.byte	W01
	.byte		N01   , Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W01
@ 075   ----------------------------------------
	.byte	W10
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v048
	.byte	W08
@ 076   ----------------------------------------
	.byte	W04
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W04
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W08
@ 077   ----------------------------------------
	.byte	W04
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W12
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W04
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N01   , Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W09
@ 078   ----------------------------------------
	.byte	W03
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W11
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N03   , Fs1 , v064
	.byte	W11
@ 079   ----------------------------------------
	.byte	W01
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v048
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W05
@ 080   ----------------------------------------
	.byte	W07
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W08
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W05
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N03   , Fs1 , v056
	.byte	W12
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W04
@ 081   ----------------------------------------
	.byte	W08
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , Fs1 , v064
	.byte	W05
	.byte		        Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N01   , Fs1 , v048
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v056
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v080
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v088
	.byte	W06
@ 082   ----------------------------------------
	.byte	W06
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v084
	.byte	W12
	.byte		N02   , Fs1 , v056
	.byte	W10
	.byte		N01   , Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N05   , Fs1 , v092
	.byte	W12
	.byte		N01   , Cn1 , v080
	.byte		N02   , Fs1 , v064
	.byte	W12
	.byte		N01   , Cn1 , v092
	.byte		N04   , Fs1 , v076
	.byte	W12
	.byte		N01   , Fs1 , v056
	.byte	W11
	.byte		        Dn1 , v092
	.byte		N01   , Ds1 , v064
	.byte		N04   , Fs1 , v084
	.byte	W07
	.byte		N01   , Cn1 , v080
	.byte		N01   , As1 , v072
	.byte	W02
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
	.byte	FINE

@******************************************************@
	.align	2

mus_where_is_the_love:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_where_is_the_love_pri	@ Priority
	.byte	mus_where_is_the_love_rev	@ Reverb.

	.word	mus_where_is_the_love_grp

	.word	mus_where_is_the_love_1
	.word	mus_where_is_the_love_2
	.word	mus_where_is_the_love_3
	.word	mus_where_is_the_love_4
	.word	mus_where_is_the_love_5
	.word	mus_where_is_the_love_6
	.word	mus_where_is_the_love_7
	.word	mus_where_is_the_love_8
	.word	mus_where_is_the_love_9

	.end
