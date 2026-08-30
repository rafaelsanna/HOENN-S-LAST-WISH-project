	.include "MPlayDef.s"

	.equ	mus_do_i_wanna_know_grp, voicegroup_do_i_wanna_know
	.equ	mus_do_i_wanna_know_pri, 0
	.equ	mus_do_i_wanna_know_rev, reverb_set+50
	.equ	mus_do_i_wanna_know_mvl, 100
	.equ	mus_do_i_wanna_know_key, 0
	.equ	mus_do_i_wanna_know_tbs, 1
	.equ	mus_do_i_wanna_know_exg, 1
	.equ	mus_do_i_wanna_know_cmp, 1

	.section .rodata
	.global	mus_do_i_wanna_know
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_do_i_wanna_know_1:
	.byte	KEYSH , mus_do_i_wanna_know_key+0
mus_do_i_wanna_know_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 88*mus_do_i_wanna_know_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_do_i_wanna_know_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte		N24   , Gn0 , v108
	.byte	W96
@ 004   ----------------------------------------
mus_do_i_wanna_know_1_004:
	.byte		N24   , Ds1 , v108
	.byte	W48
	.byte		        Cn1 
	.byte	W48
	.byte	PEND
@ 005   ----------------------------------------
	.byte	W72
	.byte		N23   , Dn1 
	.byte	W24
@ 006   ----------------------------------------
	.byte		N24   , Gn0 
	.byte	W96
@ 007   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_004
@ 009   ----------------------------------------
	.byte	W72
	.byte		N23   , Dn1 , v108
	.byte	W24
@ 010   ----------------------------------------
	.byte		N24   , Gn0 
	.byte	W96
@ 011   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_004
@ 013   ----------------------------------------
	.byte	W72
	.byte		N23   , Dn1 , v108
	.byte	W24
@ 014   ----------------------------------------
	.byte		N24   , Gn0 
	.byte	W96
@ 015   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_004
@ 017   ----------------------------------------
	.byte	W72
	.byte		N23   , Dn1 , v108
	.byte	W24
@ 018   ----------------------------------------
	.byte		N24   , Gn0 
	.byte	W96
@ 019   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_004
@ 021   ----------------------------------------
	.byte	W72
	.byte		N23   , Dn1 , v108
	.byte	W24
@ 022   ----------------------------------------
	.byte		N24   , Gn0 
	.byte	W96
@ 023   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_004
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte		N92   , Dn1 , v108, gtp3
	.byte	W96
@ 027   ----------------------------------------
mus_do_i_wanna_know_1_027:
	.byte		N24   , Ds1 , v108
	.byte	W60
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_do_i_wanna_know_1_028:
	.byte		N24   , Cn1 , v108
	.byte	W48
	.byte		N23   
	.byte	W24
	.byte		N05   , As0 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N11   , Dn1 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_do_i_wanna_know_1_029:
	.byte		N24   , Gn0 , v108
	.byte	W72
	.byte		N05   , Fn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		N11   , As0 
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
mus_do_i_wanna_know_1_030:
	.byte		N24   , Gn0 , v108
	.byte	W72
	.byte		N23   , Gn1 
	.byte	W24
	.byte	PEND
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_028
@ 033   ----------------------------------------
	.byte		N24   , Gn0 , v108
	.byte	W96
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_029
@ 035   ----------------------------------------
	.byte		N24   , Gn0 , v108
	.byte	W96
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_004
@ 037   ----------------------------------------
	.byte	W72
	.byte		N23   , Dn1 , v108
	.byte	W24
@ 038   ----------------------------------------
	.byte		N24   , Gn0 
	.byte	W96
@ 039   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_004
@ 041   ----------------------------------------
	.byte	W72
	.byte		N23   , Dn1 , v108
	.byte	W24
@ 042   ----------------------------------------
	.byte		N24   , Gn0 
	.byte	W96
@ 043   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_004
@ 045   ----------------------------------------
	.byte	W72
	.byte		N23   , Dn1 , v108
	.byte	W24
@ 046   ----------------------------------------
	.byte		N24   , Gn0 
	.byte	W96
@ 047   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_004
@ 049   ----------------------------------------
	.byte	W72
	.byte		N23   , Dn1 , v108
	.byte	W24
@ 050   ----------------------------------------
	.byte		N24   , Gn0 
	.byte	W96
@ 051   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_004
@ 053   ----------------------------------------
	.byte	W72
	.byte		N23   , Dn1 , v108
	.byte	W24
@ 054   ----------------------------------------
	.byte		N24   , Gn0 
	.byte	W96
@ 055   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_004
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte		N92   , Dn1 , v108, gtp3
	.byte	W96
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_027
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_029
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_030
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_027
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_028
@ 065   ----------------------------------------
	.byte		N24   , Gn0 , v108
	.byte	W96
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_029
@ 067   ----------------------------------------
	.byte		N48   , Gn0 , v108
	.byte	W96
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_004
@ 069   ----------------------------------------
	.byte	W72
	.byte		N23   , Dn1 , v108
	.byte	W24
@ 070   ----------------------------------------
	.byte		N48   , Gn0 
	.byte	W96
@ 071   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_004
@ 073   ----------------------------------------
	.byte	W72
	.byte		N23   , Dn1 , v108
	.byte	W24
@ 074   ----------------------------------------
	.byte		N48   , Gn0 
	.byte	W96
@ 075   ----------------------------------------
mus_do_i_wanna_know_1_075:
	.byte		N48   , Ds1 , v108
	.byte	W60
	.byte		N05   , Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N11   , Ds1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_028
@ 077   ----------------------------------------
mus_do_i_wanna_know_1_077:
	.byte		N48   , Gn0 , v108
	.byte	W72
	.byte		N05   , Fn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		N11   , As0 
	.byte	W12
	.byte	PEND
@ 078   ----------------------------------------
mus_do_i_wanna_know_1_078:
	.byte		N48   , Gn0 , v108
	.byte	W72
	.byte		N23   , Gn1 
	.byte	W24
	.byte	PEND
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_075
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_028
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_077
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_078
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_027
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_028
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_077
@ 086   ----------------------------------------
	.byte		N48   , Fn1 , v108
	.byte	W72
	.byte		N23   , Gn1 
	.byte	W24
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_027
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_028
@ 089   ----------------------------------------
mus_do_i_wanna_know_1_089:
	.byte		N48   , Gn0 , v108
	.byte	W66
	.byte		N05   , As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Gn0 
	.byte	W06
	.byte		N11   , As0 
	.byte	W12
	.byte	PEND
@ 090   ----------------------------------------
	.byte		N48   , Gn0 
	.byte	W96
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_1_089
@ 092   ----------------------------------------
	.byte		N12   , Gn0 , v108
	.byte	W12
	.byte	GOTO
	 .word	mus_do_i_wanna_know_1_B1
mus_do_i_wanna_know_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_do_i_wanna_know_2:
	.byte	KEYSH , mus_do_i_wanna_know_key+0
mus_do_i_wanna_know_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 62*mus_do_i_wanna_know_mvl/mxv
	.byte		PAN   , c_v-14
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
	.byte		N92   , Gn3 , v064, gtp3
	.byte	W96
@ 026   ----------------------------------------
mus_do_i_wanna_know_2_026:
	.byte		N02   , Ds2 , v068
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte	PEND
@ 027   ----------------------------------------
mus_do_i_wanna_know_2_027:
	.byte		N02   , Cn2 , v068
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte	PEND
@ 028   ----------------------------------------
mus_do_i_wanna_know_2_028:
	.byte		N02   , Gn1 , v068
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_028
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_028
@ 033   ----------------------------------------
mus_do_i_wanna_know_2_033:
	.byte	W72
	.byte		N05   , Fn2 , v068
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , As1 
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_do_i_wanna_know_2_034:
	.byte		N48   , Gn1 , v068
	.byte	W60
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
mus_do_i_wanna_know_2_035:
	.byte		N32   , Ds2 , v068, gtp3
	.byte	W36
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N23   , Cn2 
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte	PEND
@ 036   ----------------------------------------
mus_do_i_wanna_know_2_036:
	.byte		N05   , Cn2 , v068
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N44   , Cn2 , v068, gtp3
	.byte	W48
	.byte		N05   , As1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_do_i_wanna_know_2_037:
	.byte		N68   , Gn1 , v068, gtp3
	.byte	W72
	.byte		N05   , Fn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N11   , As1 
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_034
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_035
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_036
@ 041   ----------------------------------------
	.byte		N44   , Gn1 , v068, gtp3
	.byte	W48
	.byte		N11   , Fn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
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
	.byte		N92   , Gn3 , v064, gtp3
	.byte	W96
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_026
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_027
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_028
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_028
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_026
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_027
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_028
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_033
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_034
@ 067   ----------------------------------------
	.byte		N32   , Ds2 , v068, gtp3
	.byte	W36
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N32   , Cn2 , v068, gtp3
	.byte	W36
	.byte		N11   , As1 
	.byte	W12
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_036
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_037
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_034
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_035
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_036
@ 073   ----------------------------------------
	.byte		N68   , Gn1 , v068, gtp3
	.byte	W72
	.byte		N23   , Gn3 
	.byte	W24
@ 074   ----------------------------------------
mus_do_i_wanna_know_2_074:
	.byte		N11   , Gn3 , v068
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte	PEND
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_074
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_074
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_074
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_074
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_074
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_074
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_074
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_074
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_074
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_074
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_074
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_074
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_074
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_074
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_2_074
@ 090   ----------------------------------------
	.byte		N11   , Gn3 , v068
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N12   , As3 
	.byte	W12
@ 091   ----------------------------------------
	.byte	W12
	.byte	GOTO
	 .word	mus_do_i_wanna_know_2_B1
mus_do_i_wanna_know_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_do_i_wanna_know_3:
	.byte	KEYSH , mus_do_i_wanna_know_key+0
mus_do_i_wanna_know_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 108*mus_do_i_wanna_know_mvl/mxv
	.byte		PAN   , c_v+14
	.byte	W96
@ 001   ----------------------------------------
	.byte	W72
	.byte		N05   , Fn3 , v096
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N11   , As2 
	.byte	W12
@ 002   ----------------------------------------
mus_do_i_wanna_know_3_002:
	.byte		N48   , Gn2 , v096
	.byte	W60
	.byte		N05   , Fn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N11   , As2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_do_i_wanna_know_3_003:
	.byte		N32   , Ds3 , v096, gtp3
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N32   , Cn3 , v096, gtp3
	.byte	W36
	.byte		N11   , As2 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_do_i_wanna_know_3_004:
	.byte		N05   , Cn3 , v096
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N44   , Cn3 , v096, gtp3
	.byte	W48
	.byte		N05   , As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_do_i_wanna_know_3_005:
	.byte		N68   , Gn2 , v096, gtp3
	.byte	W72
	.byte		N05   , Fn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N11   , As2 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_003
@ 024   ----------------------------------------
mus_do_i_wanna_know_3_024:
	.byte		N05   , Cn3 , v096
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N48   , Cn3 
	.byte	W84
	.byte	PEND
@ 025   ----------------------------------------
mus_do_i_wanna_know_3_025:
	.byte		N68   , Dn3 , v096, gtp3
	.byte	W72
	.byte		N23   , Gn2 
	.byte	W24
	.byte	PEND
@ 026   ----------------------------------------
mus_do_i_wanna_know_3_026:
	.byte		N48   , Ds3 , v096
	.byte	W60
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N11   , Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_do_i_wanna_know_3_027:
	.byte		N44   , Cn3 , v096, gtp3
	.byte	W48
	.byte		N05   , As2 
	.byte	W06
	.byte		N17   , Cn3 
	.byte	W18
	.byte		N05   , As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_005
@ 029   ----------------------------------------
mus_do_i_wanna_know_3_029:
	.byte		N68   , Gn2 , v096, gtp3
	.byte	W72
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_026
@ 031   ----------------------------------------
mus_do_i_wanna_know_3_031:
	.byte		N44   , Cn3 , v096, gtp3
	.byte	W48
	.byte		N05   , As2 
	.byte	W06
	.byte		N18   , Cn3 
	.byte	W42
	.byte	PEND
@ 032   ----------------------------------------
	.byte		N92   , Gn2 , v096, gtp3
	.byte	W96
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_005
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_002
@ 035   ----------------------------------------
mus_do_i_wanna_know_3_035:
	.byte		N32   , Ds3 , v096, gtp3
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N23   , Cn3 
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_035
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_004
@ 041   ----------------------------------------
	.byte		N44   , Gn2 , v096, gtp3
	.byte	W48
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
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
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_002
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_003
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_004
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_002
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_003
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_024
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_025
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_026
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_027
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_005
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_029
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_026
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_031
@ 064   ----------------------------------------
	.byte		N92   , Gn2 , v096, gtp3
	.byte	W96
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_005
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_003
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_004
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_005
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_035
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_004
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_029
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_026
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_027
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_005
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_029
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_026
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_031
@ 080   ----------------------------------------
	.byte		N92   , Gn2 , v096, gtp3
	.byte	W96
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_029
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_026
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_031
@ 084   ----------------------------------------
	.byte		N92   , Gn2 , v096, gtp3
	.byte	W96
@ 085   ----------------------------------------
	.byte		N68   , Fn3 , v096, gtp3
	.byte	W72
	.byte		N23   , Gn2 
	.byte	W24
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_026
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_031
@ 088   ----------------------------------------
mus_do_i_wanna_know_3_088:
	.byte		N48   , Gn2 , v096
	.byte	W66
	.byte		N05   , As2 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N11   , As2 
	.byte	W12
	.byte	PEND
@ 089   ----------------------------------------
	.byte		N92   , Gn2 , v096, gtp3
	.byte	W96
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_3_088
@ 091   ----------------------------------------
	.byte		N12   , Gn2 , v096
	.byte	W12
	.byte	GOTO
	 .word	mus_do_i_wanna_know_3_B1
mus_do_i_wanna_know_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_do_i_wanna_know_4:
	.byte	KEYSH , mus_do_i_wanna_know_key+0
mus_do_i_wanna_know_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 96*mus_do_i_wanna_know_mvl/mxv
	.byte		N01   , Cn1 , v068
	.byte	W24
	.byte		N01   
	.byte		N01   , Ds1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		N01   
	.byte		N01   , Ds1 
	.byte	W24
@ 001   ----------------------------------------
mus_do_i_wanna_know_4_001:
	.byte		N01   , Cn1 , v068
	.byte	W24
	.byte		N01   
	.byte		N01   , Ds1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		N01   
	.byte		N01   , Ds1 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 026   ----------------------------------------
mus_do_i_wanna_know_4_026:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Cs2 
	.byte	W24
	.byte		        Cn1 
	.byte		N01   , Ds1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		N01   
	.byte		N01   , Fs2 
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
mus_do_i_wanna_know_4_027:
	.byte		N01   , Cn1 , v068
	.byte	W24
	.byte		N01   
	.byte		N01   , Ds1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		N01   
	.byte		N01   , Fs2 
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_027
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_027
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_027
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_027
@ 033   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte	W96
@ 034   ----------------------------------------
mus_do_i_wanna_know_4_034:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Cs2 
	.byte	W24
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W24
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W24
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
mus_do_i_wanna_know_4_035:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Cs2 
	.byte	W24
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N01   
	.byte		N01   , Cs2 
	.byte	W24
	.byte		        Dn1 
	.byte		N01   , Fs2 
	.byte	W24
	.byte	PEND
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_034
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_035
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_034
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_035
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_034
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_035
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_001
@ 050   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte		N01   , Cs2 
	.byte	W24
	.byte		        Cn1 
	.byte		N01   , Ds1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		N01   
	.byte		N01   , Ds1 
	.byte	W24
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_027
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_027
@ 053   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte	W24
	.byte		N01   
	.byte		N01   , Ds1 
	.byte	W24
	.byte		        Cn1 
	.byte	W48
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_027
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_027
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_027
@ 057   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte	W72
	.byte		N01   
	.byte		N01   , Fn1 
	.byte	W24
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_026
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_027
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_027
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_027
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_027
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_027
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_027
@ 065   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte	W96
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_034
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_035
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_034
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_035
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_034
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_035
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_034
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_035
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_034
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_035
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_034
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_035
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_034
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_035
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_034
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_035
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_034
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_035
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_034
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_035
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_034
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_035
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_035
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_035
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_do_i_wanna_know_4_035
@ 091   ----------------------------------------
	.byte	W12
	.byte	GOTO
	 .word	mus_do_i_wanna_know_4_B1
mus_do_i_wanna_know_4_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_do_i_wanna_know:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_do_i_wanna_know_pri	@ Priority
	.byte	mus_do_i_wanna_know_rev	@ Reverb.

	.word	mus_do_i_wanna_know_grp

	.word	mus_do_i_wanna_know_1
	.word	mus_do_i_wanna_know_2
	.word	mus_do_i_wanna_know_3
	.word	mus_do_i_wanna_know_4

	.end
