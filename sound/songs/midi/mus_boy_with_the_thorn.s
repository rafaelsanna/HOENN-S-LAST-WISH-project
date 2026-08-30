	.include "MPlayDef.s"

	.equ	mus_boy_with_the_thorn_grp, voicegroup_boy_with_the_thorn
	.equ	mus_boy_with_the_thorn_pri, 0
	.equ	mus_boy_with_the_thorn_rev, reverb_set+50
	.equ	mus_boy_with_the_thorn_mvl, 100
	.equ	mus_boy_with_the_thorn_key, 0
	.equ	mus_boy_with_the_thorn_tbs, 1
	.equ	mus_boy_with_the_thorn_exg, 1
	.equ	mus_boy_with_the_thorn_cmp, 1

	.section .rodata
	.global	mus_boy_with_the_thorn
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_boy_with_the_thorn_1:
	.byte	KEYSH , mus_boy_with_the_thorn_key+0
mus_boy_with_the_thorn_1_B1:
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 120*mus_boy_with_the_thorn_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_boy_with_the_thorn_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N32   , Cn1 , v108, gtp3
	.byte	W36
	.byte		N23   
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 002   ----------------------------------------
mus_boy_with_the_thorn_1_002:
	.byte		N32   , Cn1 , v108, gtp3
	.byte	W36
	.byte		N23   
	.byte	W24
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_boy_with_the_thorn_1_003:
	.byte		N32   , Cn1 , v108, gtp3
	.byte	W36
	.byte		        Gn0 , v108, gtp3
	.byte	W36
	.byte		N11   , En1 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
mus_boy_with_the_thorn_1_004:
	.byte		N32   , Dn1 , v108, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N23   , Cn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte	PEND
@ 005   ----------------------------------------
mus_boy_with_the_thorn_1_005:
	.byte		N68   , Gn0 , v108, gtp3
	.byte	W72
	.byte		N23   
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
mus_boy_with_the_thorn_1_006:
	.byte		N32   , Dn1 , v108, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_boy_with_the_thorn_1_007:
	.byte		N23   , An0 , v108
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_boy_with_the_thorn_1_008:
	.byte		N32   , Cn1 , v108, gtp3
	.byte	W36
	.byte		N23   , Dn1 
	.byte	W24
	.byte		N11   , An0 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_005
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_005
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_007
@ 016   ----------------------------------------
mus_boy_with_the_thorn_1_016:
	.byte		N32   , Cn1 , v108, gtp3
	.byte	W36
	.byte		N23   , Dn1 
	.byte	W24
	.byte		N11   , An0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_005
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_006
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_007
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_005
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_007
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_006
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_007
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_016
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_002
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_005
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_006
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_007
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_008
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_005
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_006
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_005
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_006
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_007
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_005
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_006
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_007
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_016
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_005
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_006
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_007
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_016
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_005
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_006
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_007
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_016
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_002
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_005
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_006
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_007
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_008
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_005
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_006
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_007
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_008
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_005
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_1_006
@ 071   ----------------------------------------
	.byte		N23   , An0 , v108
	.byte	W24
	.byte		N11   , Cn1 , v100
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 072   ----------------------------------------
	.byte		N32   , Cn1 , v100, gtp3
	.byte	W36
	.byte		N23   , Dn1 
	.byte	W24
	.byte		N11   , An0 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 073   ----------------------------------------
	.byte		N68   , Gn0 , v100, gtp3
	.byte	W72
	.byte		N23   , Gn0 , v092
	.byte	W24
@ 074   ----------------------------------------
	.byte		N32   , Dn1 , v092, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 075   ----------------------------------------
	.byte		N23   , An0 
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 076   ----------------------------------------
	.byte		N32   , Cn1 , v092, gtp3
	.byte	W36
	.byte		N23   , Dn1 , v084
	.byte	W24
	.byte		N11   , An0 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 077   ----------------------------------------
	.byte		N68   , Gn0 , v084, gtp3
	.byte	W72
	.byte		N23   
	.byte	W24
@ 078   ----------------------------------------
	.byte		N32   , Dn1 , v084, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Fs1 
	.byte	W12
	.byte		        An1 , v076
	.byte	W12
@ 079   ----------------------------------------
	.byte		N23   , An0 
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 080   ----------------------------------------
	.byte		N32   , Cn1 , v076, gtp3
	.byte	W36
	.byte		N23   , Dn1 
	.byte	W24
	.byte		N11   , An0 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		        An0 
	.byte	W12
@ 081   ----------------------------------------
	.byte		N68   , Gn0 , v076, gtp3
	.byte	W72
	.byte		N23   , Gn0 , v068
	.byte	W24
@ 082   ----------------------------------------
	.byte		N32   , Dn1 , v068, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 083   ----------------------------------------
	.byte		N23   , An0 
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 084   ----------------------------------------
	.byte		N32   , Cn1 , v068, gtp3
	.byte	W36
	.byte		N23   , Dn1 
	.byte	W24
	.byte		N11   , An0 
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		N12   , An0 
	.byte	W12
	.byte	GOTO
	 .word	mus_boy_with_the_thorn_1_B1
mus_boy_with_the_thorn_1_B2:
@ 085   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_boy_with_the_thorn_2:
	.byte	KEYSH , mus_boy_with_the_thorn_key+0
mus_boy_with_the_thorn_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 62*mus_boy_with_the_thorn_mvl/mxv
	.byte		PAN   , c_v-14
	.byte		N17   , En3 , v068
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N23   
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 001   ----------------------------------------
mus_boy_with_the_thorn_2_001:
	.byte		N17   , En3 , v068
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N23   
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_boy_with_the_thorn_2_002:
	.byte		N17   , En3 , v068
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N05   , Gn3 
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
mus_boy_with_the_thorn_2_003:
	.byte		N17   , Dn3 , v068
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte	PEND
@ 004   ----------------------------------------
mus_boy_with_the_thorn_2_004:
	.byte		N48   , Gn3 , v068
	.byte	W60
	.byte		N05   , An3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
	.byte		N92   , Fs3 , v068, gtp3
	.byte	W96
@ 006   ----------------------------------------
	.byte		        En3 , v068, gtp3
	.byte	W96
@ 007   ----------------------------------------
mus_boy_with_the_thorn_2_007:
	.byte		N17   , Gn3 , v068
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N18   , Fs3 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   , Gn3 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_004
@ 009   ----------------------------------------
	.byte		N92   , Fs3 , v068, gtp3
	.byte	W96
@ 010   ----------------------------------------
	.byte		        En3 , v068, gtp3
	.byte	W96
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_007
@ 012   ----------------------------------------
mus_boy_with_the_thorn_2_012:
	.byte		N68   , Gn3 , v068, gtp3
	.byte	W72
	.byte		N23   , An3 
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
	.byte		N92   , Fs3 , v068, gtp3
	.byte	W96
@ 014   ----------------------------------------
	.byte		        En3 , v068, gtp3
	.byte	W96
@ 015   ----------------------------------------
mus_boy_with_the_thorn_2_015:
	.byte		N32   , En3 , v068, gtp3
	.byte	W36
	.byte		N48   , Fs3 
	.byte	W60
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_012
@ 017   ----------------------------------------
	.byte		N92   , Fs3 , v068, gtp3
	.byte	W96
@ 018   ----------------------------------------
	.byte		        En3 , v068, gtp3
	.byte	W96
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_015
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_012
@ 021   ----------------------------------------
	.byte		N92   , Fs3 , v068, gtp3
	.byte	W96
@ 022   ----------------------------------------
	.byte		        En3 , v068, gtp3
	.byte	W96
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_015
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_012
@ 025   ----------------------------------------
	.byte		N92   , Fs3 , v068, gtp3
	.byte	W96
@ 026   ----------------------------------------
	.byte		        En3 , v068, gtp3
	.byte	W96
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_015
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_004
@ 033   ----------------------------------------
	.byte		N92   , Fs3 , v068, gtp3
	.byte	W96
@ 034   ----------------------------------------
	.byte		        En3 , v068, gtp3
	.byte	W96
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_007
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_004
@ 037   ----------------------------------------
	.byte		N92   , Fs3 , v068, gtp3
	.byte	W96
@ 038   ----------------------------------------
	.byte		        En3 , v068, gtp3
	.byte	W96
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_012
@ 041   ----------------------------------------
	.byte		N92   , Fs3 , v068, gtp3
	.byte	W96
@ 042   ----------------------------------------
	.byte		        En3 , v068, gtp3
	.byte	W96
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_015
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_012
@ 045   ----------------------------------------
	.byte		N92   , Fs3 , v068, gtp3
	.byte	W96
@ 046   ----------------------------------------
	.byte		        En3 , v068, gtp3
	.byte	W96
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_015
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_012
@ 049   ----------------------------------------
	.byte		N92   , Fs3 , v068, gtp3
	.byte	W96
@ 050   ----------------------------------------
	.byte		        En3 , v068, gtp3
	.byte	W96
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_015
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_012
@ 053   ----------------------------------------
	.byte		N92   , Fs3 , v068, gtp3
	.byte	W96
@ 054   ----------------------------------------
	.byte		        En3 , v068, gtp3
	.byte	W96
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_015
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_001
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_004
@ 061   ----------------------------------------
	.byte		N92   , Fs3 , v068, gtp3
	.byte	W96
@ 062   ----------------------------------------
	.byte		        En3 , v068, gtp3
	.byte	W96
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_007
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_004
@ 065   ----------------------------------------
	.byte		N92   , Fs3 , v068, gtp3
	.byte	W96
@ 066   ----------------------------------------
	.byte		        En3 , v068, gtp3
	.byte	W96
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_007
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_2_004
@ 069   ----------------------------------------
	.byte		N92   , Fs3 , v068, gtp3
	.byte	W96
@ 070   ----------------------------------------
	.byte		        En3 , v068, gtp3
	.byte	W96
@ 071   ----------------------------------------
	.byte		N17   , Gn3 , v064
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N18   , Fs3 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   , Gn3 
	.byte	W12
@ 072   ----------------------------------------
	.byte		N48   
	.byte	W60
	.byte		N05   , An3 
	.byte	W06
	.byte		        An3 , v060
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 073   ----------------------------------------
	.byte		N92   , Fs3 , v060, gtp3
	.byte	W96
@ 074   ----------------------------------------
	.byte		        En3 , v060, gtp3
	.byte	W96
@ 075   ----------------------------------------
	.byte		N17   , Gn3 
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N18   , Fs3 , v056
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   , Gn3 
	.byte	W12
@ 076   ----------------------------------------
	.byte		N48   
	.byte	W60
	.byte		N05   , An3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 077   ----------------------------------------
	.byte		N92   , Fs3 , v056, gtp3
	.byte	W96
@ 078   ----------------------------------------
	.byte		        En3 , v052, gtp3
	.byte	W96
@ 079   ----------------------------------------
	.byte		N17   , Gn3 
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N18   , Fs3 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   , Gn3 
	.byte	W12
@ 080   ----------------------------------------
	.byte		N48   
	.byte	W60
	.byte		N05   , An3 , v048
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W06
	.byte		N05   
	.byte	W06
@ 081   ----------------------------------------
	.byte		N92   , Fs3 , v048, gtp3
	.byte	W96
@ 082   ----------------------------------------
	.byte		        En3 , v048, gtp3
	.byte	W96
@ 083   ----------------------------------------
	.byte		N17   , Gn3 
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N18   , Fs3 
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte	GOTO
	 .word	mus_boy_with_the_thorn_2_B1
mus_boy_with_the_thorn_2_B2:
@ 084   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_boy_with_the_thorn_3:
	.byte	KEYSH , mus_boy_with_the_thorn_key+0
mus_boy_with_the_thorn_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 108*mus_boy_with_the_thorn_mvl/mxv
	.byte		PAN   , c_v+14
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W84
	.byte		N11   , Dn4 , v096
	.byte	W12
@ 005   ----------------------------------------
mus_boy_with_the_thorn_3_005:
	.byte		N23   , Dn4 , v096
	.byte	W24
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_boy_with_the_thorn_3_006:
	.byte		N48   , Dn4 , v096
	.byte	W60
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_boy_with_the_thorn_3_007:
	.byte		N11   , Bn3 , v096
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N17   , Bn3 
	.byte	W18
	.byte		N36   
	.byte	W42
	.byte		N11   , An3 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_boy_with_the_thorn_3_008:
	.byte		N17   , Gn3 , v096
	.byte	W18
	.byte		N05   , An3 
	.byte	W06
	.byte		N17   , Bn3 
	.byte	W18
	.byte		N05   , Cn4 
	.byte	W06
	.byte		N48   , Dn4 
	.byte	W48
	.byte	PEND
@ 009   ----------------------------------------
	.byte	W60
	.byte		N36   , Bn3 
	.byte	W36
@ 010   ----------------------------------------
	.byte	W36
	.byte		N48   , Dn4 
	.byte	W60
@ 011   ----------------------------------------
mus_boy_with_the_thorn_3_011:
	.byte	W60
	.byte		N11   , Bn3 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
mus_boy_with_the_thorn_3_012:
	.byte		N11   , Bn3 , v096
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_boy_with_the_thorn_3_013:
	.byte	W36
	.byte		N11   , An3 , v096
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N05   , An3 
	.byte	W06
	.byte		N17   , Gn3 
	.byte	W18
	.byte		N05   , An3 
	.byte	W06
	.byte		N06   , Bn3 
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
	.byte	W12
	.byte		N72   , Gn3 
	.byte	W84
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_3_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_3_012
@ 017   ----------------------------------------
	.byte	W48
	.byte		N11   , Bn3 , v096
	.byte	W12
	.byte		N05   , An3 
	.byte	W06
	.byte		N17   , Gn3 
	.byte	W18
	.byte		N05   , An3 
	.byte	W06
	.byte		N06   , Bn3 
	.byte	W06
@ 018   ----------------------------------------
	.byte	W12
	.byte		N72   , Gn3 
	.byte	W84
@ 019   ----------------------------------------
mus_boy_with_the_thorn_3_019:
	.byte	W36
	.byte		N11   , Gn3 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_boy_with_the_thorn_3_020:
	.byte		N32   , Bn3 , v096, gtp3
	.byte	W36
	.byte		        Cn4 , v096, gtp3
	.byte	W36
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
mus_boy_with_the_thorn_3_021:
	.byte	W36
	.byte		N23   , Dn4 , v096
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_boy_with_the_thorn_3_022:
	.byte	W12
	.byte		N23   , Bn3 , v096
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N23   , Dn4 
	.byte	W24
	.byte		N24   , Bn3 
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
mus_boy_with_the_thorn_3_023:
	.byte	W36
	.byte		N11   , An3 , v096
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
	.byte		N32   , Bn3 , v096, gtp3
	.byte	W36
	.byte		N23   , Cn4 
	.byte	W24
	.byte		N36   , An3 
	.byte	W36
@ 025   ----------------------------------------
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N11   , Bn3 
	.byte	W12
	.byte		N05   , Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N17   , Bn3 
	.byte	W18
	.byte		N24   , Gn3 
	.byte	W30
@ 026   ----------------------------------------
	.byte	W12
	.byte		N05   , An3 
	.byte	W06
	.byte		N23   , Bn3 
	.byte	W24
	.byte		N48   , Gn3 
	.byte	W54
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
	.byte	W84
	.byte		N11   , Dn4 
	.byte	W12
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_3_005
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_3_006
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_3_007
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_3_008
@ 037   ----------------------------------------
	.byte	W60
	.byte		N36   , Bn3 , v096
	.byte	W36
@ 038   ----------------------------------------
	.byte	W36
	.byte		N48   , Dn4 
	.byte	W60
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_3_011
@ 040   ----------------------------------------
	.byte		N23   , Bn3 , v096
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N17   
	.byte	W18
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_3_013
@ 042   ----------------------------------------
	.byte	W12
	.byte		N72   , Gn3 , v096
	.byte	W84
@ 043   ----------------------------------------
	.byte	W12
	.byte		N11   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N23   , Cn4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
@ 044   ----------------------------------------
	.byte		N96   , Gn3 
	.byte	W96
@ 045   ----------------------------------------
	.byte	W24
	.byte		N11   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N05   , An3 
	.byte	W06
	.byte		N24   
	.byte	W30
	.byte		N11   
	.byte	W12
@ 046   ----------------------------------------
	.byte		N23   , Bn3 
	.byte	W24
	.byte		N48   , Gn3 
	.byte	W72
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_3_019
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_3_020
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_3_021
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_3_022
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_3_023
@ 052   ----------------------------------------
	.byte		N23   , Bn3 , v096
	.byte	W24
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N05   , An3 
	.byte	W06
	.byte		N24   , Bn3 
	.byte	W54
@ 053   ----------------------------------------
	.byte	W24
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N05   , An3 
	.byte	W06
	.byte		N24   , Bn3 
	.byte	W54
@ 054   ----------------------------------------
	.byte		N11   
	.byte	W12
	.byte		N05   , An3 
	.byte	W06
	.byte		N17   , Gn3 
	.byte	W18
	.byte		N23   , Fs3 
	.byte	W24
	.byte		N36   , Gn3 
	.byte	W36
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
	.byte	GOTO
	 .word	mus_boy_with_the_thorn_3_B1
mus_boy_with_the_thorn_3_B2:
@ 084   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_boy_with_the_thorn_4:
	.byte	KEYSH , mus_boy_with_the_thorn_key+0
mus_boy_with_the_thorn_4_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 96*mus_boy_with_the_thorn_mvl/mxv
	.byte		N01   , Cn1 , v068
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W12
@ 001   ----------------------------------------
mus_boy_with_the_thorn_4_001:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_boy_with_the_thorn_4_002:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_boy_with_the_thorn_4_003:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , As1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Gs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
mus_boy_with_the_thorn_4_004:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cs1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Cs1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	PEND
@ 005   ----------------------------------------
mus_boy_with_the_thorn_4_005:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
mus_boy_with_the_thorn_4_006:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte	PEND
@ 007   ----------------------------------------
mus_boy_with_the_thorn_4_007:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_boy_with_the_thorn_4_008:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_006
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_006
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_006
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_006
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_006
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 028   ----------------------------------------
mus_boy_with_the_thorn_4_028:
	.byte		N01   , Cn1 , v068
	.byte		N01   , Cs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N01   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_005
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_006
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_008
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_006
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_008
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_006
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_008
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_006
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_008
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_006
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_008
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_006
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_028
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_002
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_003
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_004
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_005
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_006
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_008
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_006
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_007
@ 068   ----------------------------------------
	.byte		N01   , Cn1 , v068
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
@ 069   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
@ 070   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Dn1 , v064
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
@ 071   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
@ 072   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 , v056
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
@ 073   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
@ 074   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
@ 075   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 , v048
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
@ 076   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
@ 077   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 , v044
	.byte		N01   , Fs1 
	.byte	W12
@ 078   ----------------------------------------
mus_boy_with_the_thorn_4_078:
	.byte		N01   , Cn1 , v044
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte	PEND
@ 079   ----------------------------------------
mus_boy_with_the_thorn_4_079:
	.byte		N01   , Cn1 , v044
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte	PEND
@ 080   ----------------------------------------
	.byte		        Cn1 
	.byte		N01   , Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
	.byte		N01   
	.byte	W12
	.byte		        Dn1 
	.byte		N01   , As1 
	.byte	W12
	.byte		        Cn1 
	.byte		N01   , Fs1 
	.byte	W12
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_079
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_078
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_boy_with_the_thorn_4_079
	.byte	GOTO
	 .word	mus_boy_with_the_thorn_4_B1
mus_boy_with_the_thorn_4_B2:
@ 084   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_boy_with_the_thorn:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_boy_with_the_thorn_pri	@ Priority
	.byte	mus_boy_with_the_thorn_rev	@ Reverb.

	.word	mus_boy_with_the_thorn_grp

	.word	mus_boy_with_the_thorn_1
	.word	mus_boy_with_the_thorn_2
	.word	mus_boy_with_the_thorn_3
	.word	mus_boy_with_the_thorn_4

	.end
