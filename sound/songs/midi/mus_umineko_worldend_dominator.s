	.include "MPlayDef.s"

	.equ	mus_umineko_worldend_dominator_grp, voicegroup_littleroot_test
	.equ	mus_umineko_worldend_dominator_pri, 0
	.equ	mus_umineko_worldend_dominator_rev, reverb_set+50
	.equ	mus_umineko_worldend_dominator_mvl, 88
	.equ	mus_umineko_worldend_dominator_key, 0
	.equ	mus_umineko_worldend_dominator_tbs, 1
	.equ	mus_umineko_worldend_dominator_exg, 1
	.equ	mus_umineko_worldend_dominator_cmp, 1

	.section .rodata
	.global	mus_umineko_worldend_dominator
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_umineko_worldend_dominator_1:
	.byte	KEYSH , mus_umineko_worldend_dominator_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		VOICE , 35
	.byte		VOL   , 127*mus_umineko_worldend_dominator_mvl/mxv
	.byte		PAN   , c_v-24
	.byte		N23   , Fs2 , v072
	.byte	W60
	.byte		        Bn2 , v064
	.byte	W24
@ 001   ----------------------------------------
	.byte		N24   , An2 , v072
	.byte	W24
	.byte		N23   , An2 , v068
	.byte	W60
@ 002   ----------------------------------------
	.byte		        An2 , v072
	.byte	W24
	.byte		        An2 , v068
	.byte	W24
	.byte		N24   , En3 
	.byte	W24
	.byte		N23   , An2 , v064
	.byte	W12
@ 003   ----------------------------------------
	.byte	W60
	.byte		        Bn2 
	.byte	W24
@ 004   ----------------------------------------
	.byte		N24   , An2 , v072
	.byte	W24
	.byte		N23   , An2 , v068
	.byte	W24
	.byte		N24   , En3 
	.byte	W24
	.byte		N23   , An2 , v064
	.byte	W12
@ 005   ----------------------------------------
	.byte	W12
	.byte		N30   , Cs3 
	.byte	W36
	.byte		N24   , En3 , v068
	.byte	W24
	.byte		N23   , An2 , v064
	.byte	W12
@ 006   ----------------------------------------
	.byte	W60
	.byte		        Bn2 
	.byte	W24
@ 007   ----------------------------------------
	.byte	W12
	.byte		        Cs3 
	.byte	W36
	.byte		N24   , En3 , v068
	.byte	W24
	.byte		N23   , An2 , v064
	.byte	W12
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte		N18   , Fs1 , v088
	.byte	W18
	.byte		N06   , Fs1 , v080
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N11   
	.byte	W24
@ 010   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W18
@ 011   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N06   , Fs1 , v084
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N11   
	.byte	W24
@ 012   ----------------------------------------
mus_umineko_worldend_dominator_1_012:
	.byte		N18   , Fs1 , v084
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_umineko_worldend_dominator_1_013:
	.byte		N18   , Fs1 , v084
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W18
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_013
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_012
@ 017   ----------------------------------------
	.byte	W07
	.byte		N05   , Fs1 , v084
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
@ 018   ----------------------------------------
	.byte	W07
	.byte		N05   
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		        Fs1 , v088
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
@ 019   ----------------------------------------
mus_umineko_worldend_dominator_1_019:
	.byte	W07
	.byte		N05   , Fs1 , v088
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_019
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_019
@ 023   ----------------------------------------
	.byte	W07
	.byte		N05   , Fs1 , v088
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Fs1 , v092
	.byte	W06
@ 024   ----------------------------------------
	.byte		N36   , Fs1 , v080
	.byte	W36
	.byte		N60   , Fs0 , v100
	.byte	W60
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
	.byte	W36
	.byte		N06   , Fs0 , v080
	.byte	W12
	.byte		N05   
	.byte	W09
	.byte		        Fs0 , v092
	.byte	W10
	.byte		N05   
	.byte	W09
	.byte		N05   
	.byte	W10
	.byte		N05   
	.byte	W10
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W07
	.byte		        Fs1 , v096
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
@ 038   ----------------------------------------
	.byte	W07
	.byte		N05   
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   , Fs1 , v100
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Fs1 , v104
	.byte	W12
	.byte		N05   
	.byte	W06
@ 039   ----------------------------------------
	.byte		N96   , Bn2 , v092
	.byte	W96
@ 040   ----------------------------------------
	.byte		        Gs2 , v080
	.byte	W96
@ 041   ----------------------------------------
	.byte	W48
	.byte		N32   , An2 , v120, gtp3
	.byte	W36
	.byte		N05   , Gs2 , v112
	.byte	W06
	.byte		        An2 
	.byte	W06
@ 042   ----------------------------------------
	.byte		N24   , Gs2 , v124
	.byte	W24
	.byte		        An2 , v120
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		N23   , Gs2 
	.byte	W24
@ 043   ----------------------------------------
	.byte		N24   , As2 , v124
	.byte	W24
	.byte		        Bn2 , v120
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		N23   , Cs3 , v104
	.byte	W24
@ 044   ----------------------------------------
	.byte		N24   , Dn3 , v124
	.byte	W24
	.byte		        Cs3 , v120
	.byte	W24
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		        Bn2 
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N23   , An2 
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W12
@ 045   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N48   , Bn2 , v124
	.byte	W48
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N24   , En3 , v120
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N23   
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W12
@ 046   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N24   , Dn3 , v124
	.byte	W24
	.byte		        Cs3 , v120
	.byte	W24
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte		N23   
	.byte	W06
	.byte	TEMPO , 138*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
@ 047   ----------------------------------------
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W66
	.byte		        Bn2 , v112
	.byte	W24
@ 048   ----------------------------------------
	.byte		N36   , An2 , v124
	.byte	W36
	.byte		N05   , Gs2 , v112
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N44   , Gs2 , v120, gtp3
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 138*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
@ 049   ----------------------------------------
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W42
	.byte		N32   , An2 , v120, gtp3
	.byte	W36
	.byte		N05   , Gs2 , v112
	.byte	W06
	.byte		        An2 
	.byte	W06
@ 050   ----------------------------------------
	.byte		N24   , Gs2 , v124
	.byte	W24
	.byte		        An2 , v120
	.byte	W24
	.byte		        Gs2 , v104
	.byte	W24
	.byte		N23   , Fn3 
	.byte	W24
@ 051   ----------------------------------------
	.byte		N24   , Fs3 , v108
	.byte	W24
	.byte		        Gs2 , v104
	.byte	W24
	.byte		        Cs3 , v120
	.byte	W24
	.byte		N23   , Cs3 , v104
	.byte	W24
@ 052   ----------------------------------------
	.byte		N24   , Fs3 , v108
	.byte	W24
	.byte		        En3 , v104
	.byte	W24
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		        Dn3 
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N23   , Cs3 
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W12
@ 053   ----------------------------------------
mus_umineko_worldend_dominator_1_053:
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W18
	.byte		N06   , En2 , v096
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W12
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W18
	.byte		N06   , An2 
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 138*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
@ 055   ----------------------------------------
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		N17   , Bn1 , v100
	.byte	W18
	.byte		N05   , Bn2 , v096
	.byte	W18
	.byte		N05   
	.byte	W12
@ 056   ----------------------------------------
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W12
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W12
@ 057   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W18
	.byte		N06   , Fs2 
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W12
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W12
@ 058   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W18
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W12
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W12
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_053
@ 060   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W18
	.byte		N06   , An2 , v096
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W02
	.byte		N04   
	.byte	W04
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 138*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
@ 061   ----------------------------------------
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
@ 062   ----------------------------------------
	.byte		N18   , Bn1 , v100
	.byte	W18
	.byte		N06   , Bn2 , v096
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		N24   , Cs3 , v120
	.byte	W48
@ 063   ----------------------------------------
	.byte		N72   , An2 , v108
	.byte	W72
	.byte		N07   , An2 , v112
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        An2 
	.byte	W08
@ 064   ----------------------------------------
	.byte		N24   , Gs2 , v124
	.byte	W24
	.byte		        An2 , v120
	.byte	W24
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		        Bn2 
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N23   , Gs2 
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W12
@ 065   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N72   , As2 , v100
	.byte	W48
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W12
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W12
@ 066   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W48
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N24   , Bn2 , v120
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N23   , An2 
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W12
@ 067   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W24
	.byte		N24   , En3 
	.byte	W24
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		        En3 , v104
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N23   
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W12
@ 068   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N24   , Dn3 , v108
	.byte	W24
	.byte		N07   , Cs3 , v104
	.byte	W08
	.byte		        Dn3 , v100
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		        Bn2 , v104
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W02
	.byte		        Cs3 , v100
	.byte	W04
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W04
	.byte		        Bn2 
	.byte	W02
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N23   , An2 , v104
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W12
@ 069   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N48   , An2 , v108
	.byte	W48
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N24   , An2 , v104
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte		N23   , Bn2 
	.byte	W06
	.byte	TEMPO , 138*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
@ 070   ----------------------------------------
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W42
	.byte		N24   , An2 
	.byte	W24
	.byte		N23   , Bn2 
	.byte	W24
@ 071   ----------------------------------------
	.byte		TIE   , Cs3 , v100
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 073   ----------------------------------------
	.byte		N06   , Bn2 , v072
	.byte	W07
	.byte		N05   , Bn2 , v064
	.byte	W06
	.byte		        Fs3 
	.byte	W05
	.byte		N06   , Bn2 
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W12
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N05   
	.byte	W06
@ 074   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W07
	.byte		N05   
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W06
	.byte		        Dn3 , v068
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte		        Fs3 , v064
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 075   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W18
	.byte		N06   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W12
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N05   
	.byte	W06
@ 076   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn3 , v068
	.byte	W12
	.byte		N05   , Bn2 , v064
	.byte	W12
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W12
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N05   
	.byte	W06
@ 077   ----------------------------------------
mus_umineko_worldend_dominator_1_077:
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N06   , Dn3 , v072
	.byte	W18
	.byte		        Bn2 , v064
	.byte	W06
	.byte		        Dn3 , v068
	.byte	W18
	.byte		N05   , Bn2 , v064
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N06   , Dn3 , v068
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   , Bn2 , v064
	.byte	W06
	.byte		        Dn3 , v068
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		        Bn2 , v064
	.byte	W06
	.byte	PEND
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_077
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_077
@ 080   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N06   , Dn3 , v072
	.byte	W18
	.byte		        Bn2 , v064
	.byte	W06
	.byte		        Dn3 , v068
	.byte	W12
	.byte		N05   , Bn2 , v064
	.byte	W12
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W12
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte		        Fs2 , v068
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte		        Bn2 , v076
	.byte	W06
	.byte		        Dn3 , v088
	.byte	W06
@ 081   ----------------------------------------
mus_umineko_worldend_dominator_1_081:
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N06   , Bn2 , v100
	.byte	W13
	.byte		N05   , Bn2 , v096
	.byte	W23
	.byte		N05   
	.byte	W12
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W12
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_081
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_081
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_081
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_081
@ 086   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N06   , Bn2 , v100
	.byte	W13
	.byte		N05   , Bn2 , v096
	.byte	W23
	.byte		N05   
	.byte	W12
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 138*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
@ 087   ----------------------------------------
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W07
	.byte		        En2 
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		N05   
	.byte	W12
@ 088   ----------------------------------------
	.byte		N06   , Cn2 , v100
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		        Cn2 , v104
	.byte	W12
	.byte		N06   , Bn1 , v108
	.byte	W12
	.byte		N05   , Bn1 , v112
	.byte	W12
	.byte		        Bn1 , v116
	.byte	W12
	.byte		        Bn1 , v120
	.byte	W12
@ 089   ----------------------------------------
	.byte		N24   , Bn2 , v127
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
@ 090   ----------------------------------------
	.byte		N24   , An2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W48
@ 091   ----------------------------------------
	.byte		        Gn3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N03   , An2 
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N11   , Gn3 
	.byte	W24
@ 092   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 093   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 094   ----------------------------------------
	.byte		N24   , An2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 095   ----------------------------------------
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N03   , An2 
	.byte	W08
	.byte		N04   
	.byte	W16
	.byte		N12   
	.byte	W12
@ 096   ----------------------------------------
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N23   , En3 
	.byte	W24
@ 097   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W24
@ 098   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
@ 099   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		        Gn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 100   ----------------------------------------
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N11   , Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
	.byte		N05   , En2 , v096
	.byte	W12
@ 101   ----------------------------------------
mus_umineko_worldend_dominator_1_101:
	.byte		N06   , En2 , v100
	.byte	W07
	.byte		N05   , En1 , v096
	.byte	W06
	.byte		        En2 
	.byte	W05
	.byte		N06   , En1 
	.byte	W13
	.byte		N05   
	.byte	W05
	.byte		        En2 
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte	PEND
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_101
@ 103   ----------------------------------------
	.byte		N06   , En2 , v100
	.byte	W07
	.byte		N05   , En1 , v096
	.byte	W06
	.byte		        En2 
	.byte	W05
	.byte		N06   , En1 
	.byte	W13
	.byte		N05   
	.byte	W05
	.byte		        En2 
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 104   ----------------------------------------
	.byte		N06   , Cn2 , v100
	.byte	W07
	.byte		N05   , Cn1 , v092
	.byte	W06
	.byte		        Cn2 , v096
	.byte	W05
	.byte		N06   , Cn1 , v092
	.byte	W13
	.byte		N05   
	.byte	W05
	.byte		        Cn2 , v096
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W12
	.byte		        Bn0 
	.byte	W06
	.byte		        Bn1 , v096
	.byte	W06
	.byte		N06   , Bn0 , v092
	.byte	W06
	.byte		N11   , Bn0 , v096
	.byte	W12
	.byte		N05   , Fs1 , v088
	.byte	W12
@ 105   ----------------------------------------
	.byte		N12   , En1 , v100
	.byte	W18
	.byte		N11   , En1 , v096
	.byte	W18
	.byte		N11   
	.byte	W12
@ 106   ----------------------------------------
	.byte		TIE   , En1 , v084
	.byte	W96
@ 107   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 108   ----------------------------------------
	.byte		TIE   , Fn1 , v088
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 110   ----------------------------------------
	.byte		TIE   , An1 
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 112   ----------------------------------------
	.byte		TIE   , Fs1 
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 114   ----------------------------------------
	.byte		TIE   , Fn1 
	.byte	W96
@ 115   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 116   ----------------------------------------
	.byte		TIE   , Gn1 
	.byte	W96
@ 117   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 118   ----------------------------------------
	.byte		TIE   , An1 
	.byte	W96
@ 119   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 120   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 121   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte	W04
@ 122   ----------------------------------------
mus_umineko_worldend_dominator_1_122:
	.byte		N18   , As1 , v100
	.byte	W18
	.byte		N06   , As1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , As1 , v100
	.byte	W18
	.byte		N06   , As1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 123   ----------------------------------------
mus_umineko_worldend_dominator_1_123:
	.byte		N18   , As1 , v100
	.byte	W18
	.byte		N06   , As1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , As1 , v100
	.byte	W18
	.byte		N05   , As1 , v096
	.byte	W12
	.byte		N05   
	.byte	W18
	.byte	PEND
@ 124   ----------------------------------------
mus_umineko_worldend_dominator_1_124:
	.byte		N18   , Cn2 , v100
	.byte	W18
	.byte		N06   , Cn2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , Cn2 , v100
	.byte	W18
	.byte		N06   , Cn2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 125   ----------------------------------------
mus_umineko_worldend_dominator_1_125:
	.byte		N18   , Cn2 , v100
	.byte	W18
	.byte		N06   , Cn2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , Cn2 , v100
	.byte	W18
	.byte		N06   , Cn2 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 126   ----------------------------------------
mus_umineko_worldend_dominator_1_126:
	.byte		N18   , Dn2 , v100
	.byte	W18
	.byte		N06   , Dn2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , Dn2 , v100
	.byte	W18
	.byte		N06   , Dn2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 127   ----------------------------------------
mus_umineko_worldend_dominator_1_127:
	.byte		N18   , Dn2 , v100
	.byte	W18
	.byte		N06   , Dn2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , Dn2 , v100
	.byte	W18
	.byte		N05   , Dn2 , v096
	.byte	W12
	.byte		N05   
	.byte	W18
	.byte	PEND
@ 128   ----------------------------------------
mus_umineko_worldend_dominator_1_128:
	.byte		N18   , Ds2 , v100
	.byte	W18
	.byte		N06   , Ds2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , Ds2 , v100
	.byte	W18
	.byte		N06   , Ds2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 129   ----------------------------------------
	.byte		N18   , Ds2 , v100
	.byte	W18
	.byte		N06   , Ds2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , Ds2 , v100
	.byte	W18
	.byte		N06   , Ds2 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_126
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_127
@ 132   ----------------------------------------
	.byte		N18   , Bn1 , v100
	.byte	W18
	.byte		N06   , Bn1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , Bn1 , v100
	.byte	W18
	.byte		N06   , Bn1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
@ 133   ----------------------------------------
	.byte		N18   , Bn1 , v100
	.byte	W18
	.byte		N06   , Bn1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , Bn1 , v100
	.byte	W18
	.byte		N06   , Bn1 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_122
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_123
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_124
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_125
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_126
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_127
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_128
@ 141   ----------------------------------------
	.byte		N18   , Fn2 , v100
	.byte	W18
	.byte		N06   , Fn2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , En2 , v100
	.byte	W18
	.byte		N06   , En2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
@ 142   ----------------------------------------
	.byte		N12   , En1 , v100
	.byte	W18
	.byte		        En1 , v096
	.byte	W18
	.byte		N11   
	.byte	W18
	.byte		N11   
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		        En2 , v104
	.byte	W12
@ 143   ----------------------------------------
mus_umineko_worldend_dominator_1_143:
	.byte		N06   , Fs2 , v100
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 144   ----------------------------------------
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W12
	.byte		N11   , Bn2 , v096
	.byte	W12
	.byte		N05   , Fs2 , v100
	.byte	W24
	.byte		N05   
	.byte	W12
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_143
@ 146   ----------------------------------------
	.byte		N06   , Fs2 , v100
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   , Fs2 , v104
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
@ 147   ----------------------------------------
mus_umineko_worldend_dominator_1_147:
	.byte		N06   , Fs2 , v104
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_147
@ 149   ----------------------------------------
	.byte		N06   , Fs2 , v104
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N11   , Bn2 , v100
	.byte	W12
	.byte		N05   , Fs2 , v104
	.byte	W12
@ 150   ----------------------------------------
	.byte	W36
	.byte		N24   , Fs1 , v120
	.byte	W24
	.byte		N05   , Cs2 , v096
	.byte	W06
	.byte		N28   , Fs1 , v104, gtp1
	.byte	W30
@ 151   ----------------------------------------
	.byte	W07
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		        Fs1 , v108
	.byte	W18
@ 152   ----------------------------------------
mus_umineko_worldend_dominator_1_152:
	.byte	W07
	.byte		N05   , Fs1 , v108
	.byte	W24
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W18
	.byte	PEND
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_152
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_152
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_152
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_152
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_152
@ 158   ----------------------------------------
	.byte	W07
	.byte		N05   , Fs1 , v108
	.byte	W32
	.byte	W03
	.byte		N07   , Fs1 , v100
	.byte	W20
	.byte		N04   
	.byte	W19
	.byte		N04   
	.byte	W15
@ 159   ----------------------------------------
mus_umineko_worldend_dominator_1_159:
	.byte	W07
	.byte		N05   , Fs1 , v096
	.byte	W24
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W18
	.byte	PEND
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_159
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_159
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_159
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_159
@ 164   ----------------------------------------
	.byte	W07
	.byte		N05   , Fs1 , v096
	.byte	W24
	.byte		        Fs1 , v100
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		        Fs1 , v104
	.byte	W18
@ 165   ----------------------------------------
	.byte	W07
	.byte		N05   
	.byte	W24
	.byte		        Fs1 , v108
	.byte	W23
	.byte		        Fs1 , v112
	.byte	W24
	.byte		N05   
	.byte	W18
@ 166   ----------------------------------------
	.byte	W07
	.byte		        Fs1 , v116
	.byte	W24
	.byte		        Fs1 , v120
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		        Fs1 , v124
	.byte	W18
@ 167   ----------------------------------------
	.byte		N18   , Fs1 , v100
	.byte	W24
	.byte		N11   , Fs1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , Fs1 , v100
	.byte	W24
	.byte		N11   , Fs1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
@ 168   ----------------------------------------
mus_umineko_worldend_dominator_1_168:
	.byte		N18   , Gs1 , v100
	.byte	W24
	.byte		N11   , Gs1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , Gs1 , v100
	.byte	W24
	.byte		N11   , Gs1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 169   ----------------------------------------
mus_umineko_worldend_dominator_1_169:
	.byte		N18   , As1 , v100
	.byte	W24
	.byte		N11   , As1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , As1 , v100
	.byte	W24
	.byte		N11   , As1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 170   ----------------------------------------
mus_umineko_worldend_dominator_1_170:
	.byte		N18   , Bn1 , v100
	.byte	W24
	.byte		N11   , Bn1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N17   , Bn1 , v100
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N11   , Bn1 , v096
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 171   ----------------------------------------
mus_umineko_worldend_dominator_1_171:
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N18   , En1 , v100
	.byte	W24
	.byte		N11   , En1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N17   , En1 , v100
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N11   , En1 , v096
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 172   ----------------------------------------
mus_umineko_worldend_dominator_1_172:
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N18   , An1 , v100
	.byte	W24
	.byte		N11   , An1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N17   , An1 , v100
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte		N11   , An1 , v096
	.byte	W06
	.byte	TEMPO , 138*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 173   ----------------------------------------
mus_umineko_worldend_dominator_1_173:
	.byte		N18   , Dn1 , v100
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W18
	.byte		N11   , Dn1 , v096
	.byte	W18
	.byte		N05   
	.byte	W54
	.byte	PEND
@ 174   ----------------------------------------
	.byte	W48
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 138*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
@ 175   ----------------------------------------
	.byte		N18   , Fs1 , v100
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W18
	.byte		N11   , Fs1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , Fs1 , v100
	.byte	W24
	.byte		N11   , Fs1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
@ 176   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_168
@ 177   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_169
@ 178   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_170
@ 179   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_171
@ 180   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_172
@ 181   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_173
@ 182   ----------------------------------------
mus_umineko_worldend_dominator_1_182:
	.byte	W48
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W12
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W12
	.byte	PEND
@ 183   ----------------------------------------
mus_umineko_worldend_dominator_1_183:
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N18   , Fs1 , v100
	.byte	W24
	.byte		N11   , Fs1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N17   , Fs1 , v100
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N11   , Fs1 , v096
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 184   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N18   , Bn1 , v100
	.byte	W24
	.byte		N11   , Bn1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N17   , Bn1 , v100
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N11   , Bn1 , v096
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N05   
	.byte	W06
@ 185   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_171
@ 186   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_172
@ 187   ----------------------------------------
	.byte		N18   , Dn1 , v100
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W18
	.byte		N11   , Dn1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , Dn1 , v100
	.byte	W24
	.byte		N11   , Dn1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
@ 188   ----------------------------------------
	.byte	W96
@ 189   ----------------------------------------
	.byte		N18   , Cs1 , v100
	.byte	W24
	.byte		N11   , Cs1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , Cs1 , v100
	.byte	W24
	.byte		N11   , Cs1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
@ 190   ----------------------------------------
	.byte		N18   , Cs1 , v100
	.byte	W24
	.byte		N11   , Cs1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N17   , Cs1 , v100
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N11   , Cs1 , v096
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N05   
	.byte	W06
@ 191   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_183
@ 192   ----------------------------------------
mus_umineko_worldend_dominator_1_192:
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W48
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W12
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W12
	.byte	PEND
@ 193   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_171
@ 194   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N18   , An1 , v100
	.byte	W24
	.byte		N11   , An1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N17   , An1 , v100
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N11   , An1 , v096
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte		N05   
	.byte	W06
@ 195   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N18   , Dn1 , v100
	.byte	W24
	.byte		N11   , Dn1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte		N17   , Dn1 , v100
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte		N11   , Dn1 , v096
	.byte	W06
	.byte	TEMPO , 138*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte		N05   
	.byte	W06
@ 196   ----------------------------------------
	.byte		N18   , Gn1 , v100
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W18
	.byte		N11   , Gn1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , Gn1 , v100
	.byte	W24
	.byte		N11   , Gn1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
@ 197   ----------------------------------------
	.byte		N18   , Fs1 , v100
	.byte	W24
	.byte		N11   , Fs1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , Fs1 , v100
	.byte	W24
	.byte		N11   , Fs1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
@ 198   ----------------------------------------
	.byte		N18   , Fs1 , v100
	.byte	W24
	.byte		N11   , En1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N17   , Dn1 , v100
	.byte	W24
	.byte		N11   , Cs1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
@ 199   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_182
@ 200   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_192
@ 201   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_192
@ 202   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_192
@ 203   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_192
@ 204   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_192
@ 205   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_192
@ 206   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_192
@ 207   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_192
@ 208   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_192
@ 209   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_192
@ 210   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_192
@ 211   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_192
@ 212   ----------------------------------------
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W48
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 141*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 140*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 139*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 138*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
	.byte	TEMPO , 137*mus_umineko_worldend_dominator_tbs/2
	.byte	W06
@ 213   ----------------------------------------
	.byte	W06
	.byte	TEMPO , 142*mus_umineko_worldend_dominator_tbs/2
	.byte	W01
	.byte		N05   , En1 , v096
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
@ 214   ----------------------------------------
	.byte	W07
	.byte		        Cn1 , v092
	.byte	W11
	.byte		N06   , Cn1 , v096
	.byte	W13
	.byte		N05   , Cn1 , v100
	.byte	W11
	.byte		        Cn1 , v104
	.byte	W12
	.byte		        Bn0 , v108
	.byte	W12
	.byte		        Bn0 , v112
	.byte	W12
	.byte		        Bn0 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W06
@ 215   ----------------------------------------
	.byte		N18   , En1 , v127
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , En1 , v100
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
@ 216   ----------------------------------------
mus_umineko_worldend_dominator_1_216:
	.byte		N18   , En1 , v100
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , En1 , v100
	.byte	W18
	.byte		N05   , En1 , v096
	.byte	W12
	.byte		N05   
	.byte	W18
	.byte	PEND
@ 217   ----------------------------------------
mus_umineko_worldend_dominator_1_217:
	.byte		N18   , En1 , v100
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , En1 , v100
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 218   ----------------------------------------
mus_umineko_worldend_dominator_1_218:
	.byte		N18   , En1 , v100
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , En1 , v100
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 219   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_217
@ 220   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_216
@ 221   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_217
@ 222   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_218
@ 223   ----------------------------------------
mus_umineko_worldend_dominator_1_223:
	.byte	W07
	.byte		N05   , En1 , v096
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 224   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_223
@ 225   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_223
@ 226   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_223
@ 227   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_223
@ 228   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_1_223
@ 229   ----------------------------------------
	.byte	W07
	.byte		N05   , En1 , v096
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
@ 230   ----------------------------------------
	.byte	W07
	.byte		        Cn1 , v092
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N11   , Bn0 , v096
	.byte	W24
@ 231   ----------------------------------------
	.byte	W48
@ 232   ----------------------------------------
	.byte	W96
@ 233   ----------------------------------------
	.byte	W96
@ 234   ----------------------------------------
	.byte	W96
@ 235   ----------------------------------------
	.byte	W96
@ 236   ----------------------------------------
	.byte	W96
@ 237   ----------------------------------------
	.byte	W96
@ 238   ----------------------------------------
	.byte	W96
@ 239   ----------------------------------------
	.byte	W96
@ 240   ----------------------------------------
	.byte	W96
@ 241   ----------------------------------------
	.byte	W96
@ 242   ----------------------------------------
	.byte	W96
@ 243   ----------------------------------------
	.byte	W96
@ 244   ----------------------------------------
	.byte		N84   , An2 , v072
	.byte	W96
@ 245   ----------------------------------------
	.byte	W24
	.byte		N24   , Gn3 , v080
	.byte	W24
	.byte		N24   
	.byte	W48
@ 246   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		        An2 
	.byte	W60
@ 247   ----------------------------------------
	.byte	W48
	.byte		N36   , Cn3 , v108
	.byte	W48
@ 248   ----------------------------------------
	.byte	W96
@ 249   ----------------------------------------
	.byte	W24
	.byte		N24   , An2 , v112
	.byte	W48
	.byte		N24   
	.byte	W24
@ 250   ----------------------------------------
	.byte	W60
	.byte		N24   
	.byte	W36
@ 251   ----------------------------------------
	.byte	W48
	.byte		N24   
	.byte	W48
@ 252   ----------------------------------------
	.byte	W72
	.byte		N24   
	.byte	W24
@ 253   ----------------------------------------
	.byte	W48
	.byte		N24   
	.byte	W48
@ 254   ----------------------------------------
	.byte	W12
	.byte		        Gn3 
	.byte	W24
	.byte		N24   
	.byte	W60
@ 255   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W60
	.byte		N24   
	.byte	W12
@ 256   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W60
	.byte		N24   
	.byte	W24
@ 257   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		        En3 
	.byte	W72
@ 258   ----------------------------------------
	.byte		        Fn3 
	.byte	W72
	.byte		        Gn3 
	.byte	W24
@ 259   ----------------------------------------
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N32   , Gn3 , v116, gtp3
	.byte	W36
	.byte		N24   , Dn3 , v112
	.byte	W12
@ 260   ----------------------------------------
	.byte	W12
	.byte		        Gn3 
	.byte	W72
	.byte		        An2 
	.byte	W12
@ 261   ----------------------------------------
	.byte	W24
	.byte		        Cn3 
	.byte	W36
	.byte		        En3 
	.byte	W36
@ 262   ----------------------------------------
	.byte	W36
	.byte		        Dn3 
	.byte	W60
@ 263   ----------------------------------------
	.byte	W36
	.byte		        En3 
	.byte	W60
@ 264   ----------------------------------------
	.byte	W36
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W36
@ 265   ----------------------------------------
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W48
@ 266   ----------------------------------------
	.byte	W36
	.byte		        Gn3 
	.byte	W36
	.byte		N24   
	.byte	W24
@ 267   ----------------------------------------
	.byte		N48   , Gn3 , v116
	.byte	W96
@ 268   ----------------------------------------
	.byte	W96
@ 269   ----------------------------------------
	.byte	W05
	.byte		VOL   , 127*mus_umineko_worldend_dominator_mvl/mxv
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_umineko_worldend_dominator_2:
	.byte	KEYSH , mus_umineko_worldend_dominator_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 35
	.byte		VOL   , 127*mus_umineko_worldend_dominator_mvl/mxv
	.byte		PAN   , c_v-17
	.byte	W84
@ 001   ----------------------------------------
	.byte	W84
@ 002   ----------------------------------------
	.byte	W84
@ 003   ----------------------------------------
	.byte	W84
@ 004   ----------------------------------------
	.byte	W84
@ 005   ----------------------------------------
	.byte	W36
	.byte		N23   , Gs2 , v064
	.byte	W24
	.byte		        Bn2 
	.byte	W24
@ 006   ----------------------------------------
	.byte	W12
	.byte		        Cs3 
	.byte	W24
	.byte		        Gs2 
	.byte	W48
@ 007   ----------------------------------------
	.byte		        An2 , v072
	.byte	W24
	.byte		        An2 , v068
	.byte	W60
@ 008   ----------------------------------------
	.byte	W13
	.byte		N68   , Cs3 , v064, gtp3
	.byte	W80
	.byte	W03
@ 009   ----------------------------------------
	.byte	W84
	.byte		N11   , An2 , v084
	.byte	W12
@ 010   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte		        Gs2 , v088
	.byte	W48
	.byte		        An2 
	.byte	W24
@ 011   ----------------------------------------
	.byte		N12   , An2 , v092
	.byte	W13
	.byte		N11   , Gs2 
	.byte	W44
	.byte	W03
	.byte		        An2 , v096
	.byte	W24
	.byte		N11   
	.byte	W12
@ 012   ----------------------------------------
	.byte		N12   , Gs2 
	.byte	W48
	.byte		N11   , An2 , v100
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gs2 , v104
	.byte	W12
@ 013   ----------------------------------------
	.byte	W36
	.byte		        An2 
	.byte	W24
	.byte		        An2 , v108
	.byte	W12
	.byte		        Gs2 
	.byte	W24
@ 014   ----------------------------------------
	.byte	W24
	.byte		        An2 , v112
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gs2 
	.byte	W36
@ 015   ----------------------------------------
	.byte	W13
	.byte		        An2 , v116
	.byte	W23
	.byte		        An2 , v120
	.byte	W12
	.byte		        Gs2 
	.byte	W48
@ 016   ----------------------------------------
	.byte		N12   , An2 
	.byte	W24
	.byte		N11   , An2 , v124
	.byte	W12
	.byte		        Gs2 
	.byte	W60
@ 017   ----------------------------------------
	.byte		N12   , An2 , v127
	.byte	W24
	.byte		N11   , An2 , v096
	.byte	W12
	.byte		        Gs2 
	.byte	W48
	.byte		        An2 
	.byte	W12
@ 018   ----------------------------------------
mus_umineko_worldend_dominator_2_018:
	.byte	W13
	.byte		N11   , An2 , v096
	.byte	W11
	.byte		        Gs2 
	.byte	W48
	.byte		        An2 
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
mus_umineko_worldend_dominator_2_019:
	.byte		N12   , An2 , v096
	.byte	W13
	.byte		N11   , Gs2 
	.byte	W44
	.byte	W03
	.byte		        An2 , v100
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_umineko_worldend_dominator_2_020:
	.byte		N12   , Gs2 , v100
	.byte	W48
	.byte		N11   , An2 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_umineko_worldend_dominator_2_021:
	.byte	W36
	.byte		N11   , An2 , v100
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gs2 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
mus_umineko_worldend_dominator_2_022:
	.byte	W24
	.byte		N11   , An2 , v100
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gs2 
	.byte	W36
	.byte	PEND
@ 023   ----------------------------------------
mus_umineko_worldend_dominator_2_023:
	.byte	W13
	.byte		N11   , An2 , v100
	.byte	W23
	.byte		N11   
	.byte	W12
	.byte		        Gs2 
	.byte	W48
	.byte	PEND
@ 024   ----------------------------------------
	.byte		N12   , An2 
	.byte	W24
	.byte		N11   , An2 , v104
	.byte	W12
	.byte		        Gs2 
	.byte	W18
	.byte		N23   , Fs1 , v092
	.byte	W24
	.byte		N05   , Fs2 , v096
	.byte	W18
@ 025   ----------------------------------------
mus_umineko_worldend_dominator_2_025:
	.byte		N06   , Fs2 , v092
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W12
	.byte		N11   , Bn2 , v104
	.byte	W12
	.byte		N05   , Fs2 , v092
	.byte	W24
	.byte		N05   
	.byte	W12
@ 027   ----------------------------------------
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N11   , Cs3 , v108
	.byte	W12
	.byte		N05   , Fs2 , v092
	.byte	W12
@ 028   ----------------------------------------
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N11   , Bn2 , v108
	.byte	W12
	.byte		N05   , Fs2 , v092
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_025
@ 030   ----------------------------------------
	.byte		N06   , Fs2 , v092
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W12
	.byte		N11   , Bn2 , v108
	.byte	W12
	.byte		N05   , Fs2 , v092
	.byte	W24
	.byte		N05   
	.byte	W12
@ 031   ----------------------------------------
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		        Fs2 , v096
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N11   , Cs3 , v108
	.byte	W12
	.byte		N05   , Fs2 , v096
	.byte	W12
@ 032   ----------------------------------------
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N11   , Bn2 , v108
	.byte	W12
	.byte		        An2 , v112
	.byte	W60
@ 033   ----------------------------------------
mus_umineko_worldend_dominator_2_033:
	.byte		N06   , Fs2 , v100
	.byte	W13
	.byte		N05   , Fs2 , v096
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_033
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_033
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_033
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_033
@ 038   ----------------------------------------
mus_umineko_worldend_dominator_2_038:
	.byte		N06   , Fs2 , v100
	.byte	W13
	.byte		N05   , Fs2 , v096
	.byte	W23
	.byte		        Fs2 , v100
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		        Fs2 , v104
	.byte	W12
	.byte	PEND
@ 039   ----------------------------------------
	.byte		N06   
	.byte	W07
	.byte		N05   , Fs1 
	.byte	W06
	.byte		        Fs2 , v108
	.byte	W05
	.byte		N06   , Fs1 
	.byte	W13
	.byte		N05   
	.byte	W05
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs1 , v112
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fs2 , v116
	.byte	W06
	.byte		        Fs1 
	.byte	W06
@ 040   ----------------------------------------
	.byte		N06   , Fs2 
	.byte	W07
	.byte		N05   , Fs1 
	.byte	W06
	.byte		        Fs2 
	.byte	W05
	.byte		N06   , Fs1 
	.byte	W13
	.byte		N05   , Fs1 , v120
	.byte	W05
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs1 , v124
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N06   , Fs1 
	.byte	W06
@ 041   ----------------------------------------
	.byte		N18   , Fs1 , v100
	.byte	W18
	.byte		N06   , Fs2 , v096
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N05   , Fs2 
	.byte	W06
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N17   , Fs1 , v100
	.byte	W24
	.byte		N11   , Fs1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
@ 042   ----------------------------------------
mus_umineko_worldend_dominator_2_042:
	.byte		N18   , Gs1 , v100
	.byte	W24
	.byte		N11   , Gs1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , Gs1 , v100
	.byte	W24
	.byte		N11   , Gs1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 043   ----------------------------------------
mus_umineko_worldend_dominator_2_043:
	.byte		N18   , As1 , v100
	.byte	W24
	.byte		N11   , As1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , As1 , v100
	.byte	W24
	.byte		N11   , As1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 044   ----------------------------------------
mus_umineko_worldend_dominator_2_044:
	.byte		N18   , Bn1 , v100
	.byte	W24
	.byte		N11   , Bn1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , Bn1 , v100
	.byte	W24
	.byte		N11   , Bn1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 045   ----------------------------------------
mus_umineko_worldend_dominator_2_045:
	.byte		N18   , En1 , v100
	.byte	W24
	.byte		N11   , En1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , En1 , v100
	.byte	W24
	.byte		N11   , En1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 046   ----------------------------------------
mus_umineko_worldend_dominator_2_046:
	.byte		N18   , An1 , v100
	.byte	W24
	.byte		N11   , An1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , An1 , v100
	.byte	W24
	.byte		N11   , An1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 047   ----------------------------------------
mus_umineko_worldend_dominator_2_047:
	.byte		N18   , Dn1 , v100
	.byte	W24
	.byte		N11   , Dn1 , v096
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N11   , Bn1 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 048   ----------------------------------------
mus_umineko_worldend_dominator_2_048:
	.byte		N18   , Cs2 , v100
	.byte	W24
	.byte		N11   , Cs2 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , Cs2 , v100
	.byte	W24
	.byte		N11   , Cs2 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 049   ----------------------------------------
mus_umineko_worldend_dominator_2_049:
	.byte		N18   , Fs1 , v100
	.byte	W24
	.byte		N11   , Fs1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , Fs1 , v100
	.byte	W24
	.byte		N11   , Fs1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_042
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_043
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_044
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_045
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_046
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_047
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_048
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_049
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_044
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_045
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_046
@ 061   ----------------------------------------
	.byte		N18   , Dn1 , v100
	.byte	W24
	.byte		N11   , Dn1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , Dn1 , v100
	.byte	W24
	.byte		N11   , Dn1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
@ 062   ----------------------------------------
	.byte	W24
	.byte		N11   , Bn1 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , Bn1 , v100
	.byte	W18
	.byte		N05   , Bn2 , v096
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 063   ----------------------------------------
	.byte		N18   , Cs1 , v100
	.byte	W18
	.byte		N06   , Cs2 , v096
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cs2 
	.byte	W06
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N17   , Cs1 , v100
	.byte	W18
	.byte		N05   , Cs2 , v096
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cs2 
	.byte	W06
	.byte		N06   , Cs1 
	.byte	W06
@ 064   ----------------------------------------
	.byte		N18   , Cs1 , v100
	.byte	W18
	.byte		N06   , Cs2 , v096
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cs2 
	.byte	W06
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N17   , Cs1 , v100
	.byte	W18
	.byte		N05   , Cs2 , v096
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
@ 065   ----------------------------------------
	.byte		N18   , Fs1 , v100
	.byte	W18
	.byte		N06   , Fs2 , v096
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N05   , Fs2 
	.byte	W06
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N17   , Fs1 , v100
	.byte	W18
	.byte		N05   , Fs2 , v096
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N05   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
@ 066   ----------------------------------------
	.byte		N18   , Bn1 , v100
	.byte	W18
	.byte		N06   , Bn2 , v096
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N06   , Bn1 
	.byte	W06
	.byte		N17   , Bn1 , v100
	.byte	W18
	.byte		N05   , Bn2 , v096
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
@ 067   ----------------------------------------
	.byte		N18   , En1 , v100
	.byte	W18
	.byte		N06   , En2 , v096
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N06   , En1 
	.byte	W06
	.byte		N17   , En1 , v100
	.byte	W24
	.byte		N11   , En1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
@ 068   ----------------------------------------
	.byte		N18   , An1 , v100
	.byte	W24
	.byte		N11   , An1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , An1 , v100
	.byte	W24
	.byte		N11   , An1 , v096
	.byte	W12
	.byte		N05   , An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
@ 069   ----------------------------------------
	.byte		N18   , Dn1 , v100
	.byte	W18
	.byte		N06   , Dn2 , v096
	.byte	W06
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W06
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N17   , Dn1 , v100
	.byte	W18
	.byte		N05   , Dn2 , v096
	.byte	W06
	.byte		N11   , Dn1 
	.byte	W12
	.byte		N05   , Dn2 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 070   ----------------------------------------
	.byte		N18   , Gn1 , v100
	.byte	W18
	.byte		N06   , Gn2 , v096
	.byte	W06
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N05   , Gn2 
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W06
	.byte		N17   , Gn1 , v100
	.byte	W18
	.byte		N05   , Gn2 , v096
	.byte	W06
	.byte		N11   , Gn1 
	.byte	W12
	.byte		N05   , Gn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 071   ----------------------------------------
	.byte		N18   , Fs1 , v100
	.byte	W18
	.byte		N06   , Fs2 , v096
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N05   , Fs2 
	.byte	W06
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N17   , Fs1 , v100
	.byte	W18
	.byte		N05   , Fs2 , v096
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N05   , Fs2 
	.byte	W06
	.byte		N06   , Fs1 
	.byte	W06
@ 072   ----------------------------------------
	.byte		N18   , Fs1 , v100
	.byte	W18
	.byte		N06   , Fs2 , v096
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N17   , Dn1 , v100
	.byte	W18
	.byte		N05   , Dn2 , v096
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		N05   , Cs2 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
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
	.byte	W72
	.byte		        Bn1 , v068
	.byte	W24
@ 081   ----------------------------------------
mus_umineko_worldend_dominator_2_081:
	.byte	W07
	.byte		N05   , Bn1 , v096
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_081
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_081
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_081
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_081
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_081
@ 087   ----------------------------------------
	.byte		N06   , En2 , v100
	.byte	W07
	.byte		N05   , En1 , v096
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
@ 088   ----------------------------------------
	.byte	W07
	.byte		        Cn1 , v092
	.byte	W11
	.byte		N06   , Cn1 , v096
	.byte	W13
	.byte		N05   , Cn1 , v100
	.byte	W11
	.byte		        Cn1 , v104
	.byte	W12
	.byte		        Bn0 , v108
	.byte	W12
	.byte		        Bn0 , v112
	.byte	W12
	.byte		        Bn0 , v116
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W06
@ 089   ----------------------------------------
	.byte		N18   , En1 , v127
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N17   , En1 , v100
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 090   ----------------------------------------
mus_umineko_worldend_dominator_2_090:
	.byte		N18   , En1 , v100
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N17   , En1 , v100
	.byte	W18
	.byte		N05   , En1 , v096
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N11   , En2 
	.byte	W12
	.byte	PEND
@ 091   ----------------------------------------
mus_umineko_worldend_dominator_2_091:
	.byte		N18   , En1 , v100
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N17   , En1 , v100
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte	PEND
@ 092   ----------------------------------------
	.byte		N18   , En1 , v100
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N17   , En1 , v100
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_091
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_090
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_091
@ 096   ----------------------------------------
	.byte		N18   , En1 , v100
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N17   , En1 , v100
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N06   , En2 
	.byte	W06
@ 097   ----------------------------------------
mus_umineko_worldend_dominator_2_097:
	.byte		N06   , En2 , v100
	.byte	W07
	.byte		N05   , En1 , v096
	.byte	W06
	.byte		        En2 
	.byte	W05
	.byte		N06   , En1 
	.byte	W13
	.byte		N05   
	.byte	W05
	.byte		        En2 
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte	PEND
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_097
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_097
@ 100   ----------------------------------------
	.byte		N06   , En2 , v100
	.byte	W07
	.byte		N05   , En1 , v096
	.byte	W06
	.byte		        En2 
	.byte	W05
	.byte		N06   , En1 
	.byte	W13
	.byte		N05   
	.byte	W05
	.byte		        En2 
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
@ 101   ----------------------------------------
	.byte		N24   , Bn2 , v127
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
@ 102   ----------------------------------------
	.byte		N24   , An2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W48
@ 103   ----------------------------------------
	.byte		        Gn3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn3 
	.byte	W24
	.byte		N11   
	.byte	W24
@ 104   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N23   , Bn2 
	.byte	W24
@ 105   ----------------------------------------
	.byte		N05   
	.byte	W09
	.byte		N05   
	.byte	W10
	.byte		N05   
	.byte	W09
	.byte		N05   
	.byte	W10
	.byte		        Bn2 , v112
	.byte	W10
@ 106   ----------------------------------------
	.byte		N36   , Bn2 , v080
	.byte	W48
	.byte		N23   , Dn3 , v084
	.byte	W24
	.byte		        Gn3 
	.byte	W24
@ 107   ----------------------------------------
	.byte	W48
	.byte		        An2 
	.byte	W36
	.byte		N12   , Bn2 , v080
	.byte	W12
@ 108   ----------------------------------------
	.byte		N92   , Bn2 , v080, gtp3
	.byte	W96
@ 109   ----------------------------------------
	.byte		N60   
	.byte	W60
	.byte		N23   
	.byte	W24
	.byte		        Fn3 
	.byte	W12
@ 110   ----------------------------------------
	.byte	W36
	.byte		        Gn3 
	.byte	W24
	.byte		N23   
	.byte	W36
@ 111   ----------------------------------------
	.byte	W24
	.byte		        Gn3 , v084
	.byte	W24
	.byte		N23   
	.byte	W48
@ 112   ----------------------------------------
	.byte	W12
	.byte		N24   , An2 , v080
	.byte	W24
	.byte		N24   
	.byte	W48
	.byte		N24   
	.byte	W12
@ 113   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W60
	.byte		N24   
	.byte	W24
@ 114   ----------------------------------------
	.byte		        Gn3 , v088
	.byte	W24
	.byte		N23   , Gn3 , v084
	.byte	W60
	.byte		        Gn3 , v080
	.byte	W12
@ 115   ----------------------------------------
	.byte	W13
	.byte		N23   
	.byte	W56
	.byte	W03
	.byte		N36   , Dn3 
	.byte	W24
@ 116   ----------------------------------------
	.byte	W13
	.byte		N23   
	.byte	W23
	.byte		        Gn3 
	.byte	W36
	.byte		        Gn3 , v084
	.byte	W24
@ 117   ----------------------------------------
	.byte		N24   , Dn3 , v080
	.byte	W24
	.byte		        Gn3 
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte		        Dn3 
	.byte	W12
@ 118   ----------------------------------------
	.byte	W12
	.byte		        An2 
	.byte	W36
	.byte		        Bn2 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
@ 119   ----------------------------------------
	.byte		        Bn2 
	.byte	W36
	.byte		N24   
	.byte	W36
	.byte		N24   
	.byte	W24
@ 120   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte		        En3 
	.byte	W12
@ 121   ----------------------------------------
	.byte	W96
@ 122   ----------------------------------------
	.byte	W48
	.byte		        An2 , v112
	.byte	W24
	.byte		        En3 
	.byte	W24
@ 123   ----------------------------------------
	.byte	W48
	.byte		        An2 
	.byte	W24
	.byte		N05   , As2 , v096
	.byte	W12
	.byte		N11   
	.byte	W12
@ 124   ----------------------------------------
	.byte	W36
	.byte		        Cn3 
	.byte	W12
	.byte		N24   , En3 , v112
	.byte	W36
	.byte		N11   , Cn3 , v096
	.byte	W12
@ 125   ----------------------------------------
	.byte	W24
	.byte		N24   , En3 , v112
	.byte	W72
@ 126   ----------------------------------------
	.byte	W12
	.byte		        An2 
	.byte	W24
	.byte		N11   , Dn3 , v096
	.byte	W48
	.byte		N11   
	.byte	W12
@ 127   ----------------------------------------
	.byte	W12
	.byte		N24   , Gn3 , v112
	.byte	W24
	.byte		N11   , Dn3 , v096
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 128   ----------------------------------------
	.byte		N24   , Gn3 , v112
	.byte	W36
	.byte		N11   , Ds3 , v096
	.byte	W48
	.byte		N11   
	.byte	W12
@ 129   ----------------------------------------
	.byte	W36
	.byte		N11   
	.byte	W36
	.byte		N24   , Ds3 , v112
	.byte	W24
@ 130   ----------------------------------------
	.byte	W48
	.byte		        An2 
	.byte	W48
@ 131   ----------------------------------------
	.byte	W48
	.byte		N24   
	.byte	W36
	.byte		N24   
	.byte	W12
@ 132   ----------------------------------------
	.byte	W24
	.byte		        Bn2 
	.byte	W36
	.byte		        Cn3 
	.byte	W24
	.byte		        En3 
	.byte	W12
@ 133   ----------------------------------------
	.byte	W12
	.byte		        Cn3 
	.byte	W36
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
@ 134   ----------------------------------------
	.byte		        An2 
	.byte	W36
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W36
@ 135   ----------------------------------------
	.byte		N60   , Dn3 , v116
	.byte	W72
	.byte		N24   , Dn3 , v112
	.byte	W24
@ 136   ----------------------------------------
	.byte	W12
	.byte		        Cn3 
	.byte	W84
@ 137   ----------------------------------------
	.byte		N24   
	.byte	W48
	.byte		N24   
	.byte	W36
	.byte		N24   
	.byte	W12
@ 138   ----------------------------------------
	.byte	W12
	.byte		        An2 
	.byte	W72
	.byte		        Gn3 
	.byte	W12
@ 139   ----------------------------------------
	.byte	W72
	.byte		        An2 
	.byte	W24
@ 140   ----------------------------------------
	.byte	W12
	.byte		        As2 
	.byte	W36
	.byte		        Dn3 
	.byte	W48
@ 141   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N44   , Fs3 , v116, gtp3
	.byte	W48
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W84
	.byte		N11   , An2 , v096
	.byte	W12
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_018
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_019
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_020
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_021
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_022
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_023
@ 150   ----------------------------------------
	.byte		N12   , An2 , v100
	.byte	W24
	.byte		N11   , An2 , v104
	.byte	W12
	.byte		        Gs2 
	.byte	W18
	.byte		N23   , Fs1 
	.byte	W24
	.byte		N05   , Fs2 , v112
	.byte	W18
@ 151   ----------------------------------------
	.byte		N06   , Fs2 , v104
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		        Fs2 , v108
	.byte	W12
@ 152   ----------------------------------------
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W12
	.byte		N11   , Bn2 , v104
	.byte	W12
	.byte		N05   , Fs2 , v108
	.byte	W24
	.byte		N05   
	.byte	W12
@ 153   ----------------------------------------
mus_umineko_worldend_dominator_2_153:
	.byte		N06   , Fs2 , v108
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 154   ----------------------------------------
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   , Fs2 
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_153
@ 156   ----------------------------------------
	.byte		N06   , Fs2 , v108
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   , Fs2 
	.byte	W24
	.byte		N05   
	.byte	W12
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_153
@ 158   ----------------------------------------
	.byte	W13
	.byte		N05   , Fs2 , v108
	.byte	W11
	.byte		N11   , Bn2 
	.byte	W12
	.byte		        An2 , v112
	.byte	W60
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_033
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_033
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_033
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_033
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_033
@ 164   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_038
@ 165   ----------------------------------------
	.byte		N06   , Fs2 , v104
	.byte	W13
	.byte		N05   , Fs2 , v108
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		        Fs2 , v112
	.byte	W24
	.byte		        Fs2 , v116
	.byte	W12
@ 166   ----------------------------------------
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		        Fs2 , v120
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		        Fs2 , v124
	.byte	W12
@ 167   ----------------------------------------
	.byte		N48   , Fs2 , v108
	.byte	W84
	.byte		N05   , Fs2 , v096
	.byte	W12
@ 168   ----------------------------------------
	.byte	W96
@ 169   ----------------------------------------
	.byte	W96
@ 170   ----------------------------------------
	.byte	W96
@ 171   ----------------------------------------
	.byte	W18
	.byte		N06   , En2 
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
@ 172   ----------------------------------------
	.byte	W96
@ 173   ----------------------------------------
	.byte	W18
	.byte		N06   , Dn2 
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		N17   , Bn1 , v100
	.byte	W24
	.byte		N11   , Bn1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
@ 174   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_048
@ 175   ----------------------------------------
	.byte	W18
	.byte		N06   , Fs2 , v096
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W30
@ 176   ----------------------------------------
	.byte	W18
	.byte		N06   , Gs2 
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
@ 177   ----------------------------------------
	.byte	W18
	.byte		N06   , As2 
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
@ 178   ----------------------------------------
mus_umineko_worldend_dominator_2_178:
	.byte	W18
	.byte		N06   , Bn2 , v096
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 179   ----------------------------------------
	.byte		N48   , Bn2 , v108
	.byte	W96
@ 180   ----------------------------------------
	.byte	W18
	.byte		N06   , An2 , v096
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
@ 181   ----------------------------------------
	.byte	W66
	.byte		        Bn2 
	.byte	W18
	.byte		N05   
	.byte	W12
@ 182   ----------------------------------------
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
@ 183   ----------------------------------------
	.byte	W96
@ 184   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_178
@ 185   ----------------------------------------
	.byte	W96
@ 186   ----------------------------------------
	.byte	W18
	.byte		N06   , An2 , v096
	.byte	W18
	.byte		N05   
	.byte	W32
	.byte		N04   
	.byte	W16
	.byte		N05   
	.byte	W12
@ 187   ----------------------------------------
	.byte	W96
@ 188   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_178
@ 189   ----------------------------------------
	.byte	W96
@ 190   ----------------------------------------
	.byte	W96
@ 191   ----------------------------------------
	.byte	W18
	.byte		N06   , Fs2 , v096
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
@ 192   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_178
@ 193   ----------------------------------------
	.byte	W24
	.byte		N24   , En3 , v104
	.byte	W72
@ 194   ----------------------------------------
	.byte	W96
@ 195   ----------------------------------------
	.byte	W96
@ 196   ----------------------------------------
	.byte	W96
@ 197   ----------------------------------------
	.byte	W96
@ 198   ----------------------------------------
	.byte	W96
@ 199   ----------------------------------------
	.byte	W07
	.byte		N05   , Bn2 , v064
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
@ 200   ----------------------------------------
	.byte	W07
	.byte		N05   
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Dn3 , v068
	.byte	W12
	.byte		        Fs3 , v064
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 201   ----------------------------------------
	.byte	W18
	.byte		N06   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W06
@ 202   ----------------------------------------
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn3 , v068
	.byte	W12
	.byte		N05   , Bn2 , v064
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
@ 203   ----------------------------------------
mus_umineko_worldend_dominator_2_203:
	.byte		N06   , Dn3 , v072
	.byte	W18
	.byte		        Bn2 , v064
	.byte	W06
	.byte		        Dn3 , v068
	.byte	W18
	.byte		N05   , Bn2 , v064
	.byte	W06
	.byte		N06   , Dn3 , v068
	.byte	W18
	.byte		N05   , Bn2 , v064
	.byte	W06
	.byte		        Dn3 , v068
	.byte	W18
	.byte		        Bn2 , v064
	.byte	W06
	.byte	PEND
@ 204   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_203
@ 205   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_203
@ 206   ----------------------------------------
	.byte		N06   , Dn3 , v072
	.byte	W18
	.byte		        Bn2 , v064
	.byte	W06
	.byte		        Dn3 , v068
	.byte	W12
	.byte		N05   , Bn2 , v064
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		        Fs2 , v068
	.byte	W06
	.byte		        Bn2 , v076
	.byte	W06
	.byte		        Dn3 , v088
	.byte	W06
@ 207   ----------------------------------------
mus_umineko_worldend_dominator_2_207:
	.byte		N06   , Bn2 , v100
	.byte	W13
	.byte		N05   , Bn2 , v096
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 208   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_207
@ 209   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_207
@ 210   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_207
@ 211   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_207
@ 212   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_207
@ 213   ----------------------------------------
	.byte	W96
@ 214   ----------------------------------------
	.byte	W96
@ 215   ----------------------------------------
	.byte	W96
@ 216   ----------------------------------------
	.byte	W96
@ 217   ----------------------------------------
	.byte	W96
@ 218   ----------------------------------------
	.byte	W96
@ 219   ----------------------------------------
	.byte	W96
@ 220   ----------------------------------------
	.byte	W96
@ 221   ----------------------------------------
	.byte	W96
@ 222   ----------------------------------------
	.byte	W96
@ 223   ----------------------------------------
	.byte	W96
@ 224   ----------------------------------------
	.byte	W96
@ 225   ----------------------------------------
	.byte	W96
@ 226   ----------------------------------------
	.byte	W96
@ 227   ----------------------------------------
	.byte	W96
@ 228   ----------------------------------------
	.byte	W96
@ 229   ----------------------------------------
	.byte	W96
@ 230   ----------------------------------------
	.byte	W84
	.byte		N05   , Bn1 , v104
	.byte	W12
@ 231   ----------------------------------------
	.byte	W12
	.byte		        En2 , v096
	.byte	W18
	.byte		N05   
	.byte	W18
@ 232   ----------------------------------------
	.byte		TIE   , En2 , v100
	.byte	W96
@ 233   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 234   ----------------------------------------
	.byte		TIE   , Fn2 , v104
	.byte	W96
@ 235   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 236   ----------------------------------------
	.byte		TIE   , An2 
	.byte	W96
@ 237   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 238   ----------------------------------------
	.byte		TIE   , Fs2 
	.byte	W96
@ 239   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 240   ----------------------------------------
	.byte		TIE   , Fn2 
	.byte	W96
@ 241   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 242   ----------------------------------------
	.byte		N24   , Gn3 , v088
	.byte	W60
	.byte		N23   , Gn3 , v080
	.byte	W24
	.byte		        An2 
	.byte	W12
@ 243   ----------------------------------------
	.byte	W48
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 244   ----------------------------------------
	.byte		        Bn2 
	.byte	W24
	.byte		        En3 
	.byte	W60
	.byte		        Cn3 
	.byte	W12
@ 245   ----------------------------------------
	.byte	W12
	.byte		        Gn3 
	.byte	W72
	.byte		        An2 
	.byte	W12
@ 246   ----------------------------------------
	.byte	W72
	.byte		N24   
	.byte	W24
@ 247   ----------------------------------------
	.byte	W24
	.byte		N36   , Dn3 , v092
	.byte	W48
	.byte		N23   , Gn3 , v096
	.byte	W24
@ 248   ----------------------------------------
mus_umineko_worldend_dominator_2_248:
	.byte		N24   , Gn3 , v112
	.byte	W24
	.byte		        An2 
	.byte	W60
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
@ 249   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W84
@ 250   ----------------------------------------
	.byte		N24   
	.byte	W84
	.byte		N24   
	.byte	W12
@ 251   ----------------------------------------
	.byte	W36
	.byte		N24   
	.byte	W36
	.byte		N36   
	.byte	W24
@ 252   ----------------------------------------
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W36
@ 253   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W36
	.byte		        En3 
	.byte	W36
@ 254   ----------------------------------------
	.byte	W48
	.byte		        Fn3 
	.byte	W48
@ 255   ----------------------------------------
	.byte	W36
	.byte		        Ds3 
	.byte	W60
@ 256   ----------------------------------------
	.byte	W24
	.byte		        Fn3 
	.byte	W72
@ 257   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W48
	.byte		        Gn3 
	.byte	W36
@ 258   ----------------------------------------
	.byte	W48
	.byte		        An2 
	.byte	W48
@ 259   ----------------------------------------
	.byte		N60   , An2 , v116
	.byte	W96
@ 260   ----------------------------------------
	.byte	W96
@ 261   ----------------------------------------
	.byte	W12
	.byte		N24   , Gn3 , v112
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N36   , Gn3 , v116
	.byte	W48
@ 262   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_2_248
@ 263   ----------------------------------------
	.byte	W12
	.byte		N24   , Gn3 , v112
	.byte	W60
	.byte		N24   
	.byte	W24
@ 264   ----------------------------------------
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		N24   
	.byte	W48
@ 265   ----------------------------------------
	.byte	W12
	.byte		        Gn3 
	.byte	W24
	.byte		        An2 
	.byte	W60
@ 266   ----------------------------------------
	.byte		        Gn3 
	.byte	W24
	.byte		        An2 
	.byte	W60
	.byte		        As2 
	.byte	W12
@ 267   ----------------------------------------
	.byte	W12
	.byte		        An2 
	.byte	W84
@ 268   ----------------------------------------
	.byte	W96
@ 269   ----------------------------------------
	.byte	W05
	.byte		VOL   , 127*mus_umineko_worldend_dominator_mvl/mxv
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_umineko_worldend_dominator_3:
	.byte	KEYSH , mus_umineko_worldend_dominator_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 35
	.byte		VOL   , 127*mus_umineko_worldend_dominator_mvl/mxv
	.byte		PAN   , c_v-10
	.byte		N24   , An2 , v072
	.byte	W24
	.byte		N23   , An2 , v068
	.byte	W24
	.byte		N24   , En3 
	.byte	W24
	.byte		N23   , An2 , v064
	.byte	W12
@ 001   ----------------------------------------
	.byte	W12
	.byte		        Cs3 
	.byte	W36
	.byte		N24   , En3 , v068
	.byte	W24
	.byte		N23   , An2 , v064
	.byte	W12
@ 002   ----------------------------------------
	.byte	W60
	.byte		        Bn2 
	.byte	W24
@ 003   ----------------------------------------
	.byte	W12
	.byte		        Cs3 
	.byte	W24
	.byte		        Gs2 
	.byte	W48
@ 004   ----------------------------------------
	.byte		        En3 , v072
	.byte	W36
	.byte		        Gs2 , v064
	.byte	W24
	.byte		        Bn2 
	.byte	W24
@ 005   ----------------------------------------
	.byte		        En3 , v072
	.byte	W30
	.byte		N64   , Fs2 , v064, gtp1
	.byte	W54
@ 006   ----------------------------------------
	.byte	W72
	.byte		N23   , An2 
	.byte	W12
@ 007   ----------------------------------------
	.byte	W60
	.byte		        Bn2 
	.byte	W24
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W13
	.byte		N11   , Cs3 , v080
	.byte	W23
	.byte		        Fs2 
	.byte	W24
	.byte		        Bn2 , v084
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fs2 , v080
	.byte	W12
@ 010   ----------------------------------------
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		        Bn2 , v088
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N05   , Fs2 , v080
	.byte	W12
	.byte		N11   
	.byte	W12
@ 011   ----------------------------------------
	.byte	W36
	.byte		        Fs2 , v084
	.byte	W48
	.byte		N11   
	.byte	W12
@ 012   ----------------------------------------
	.byte	W24
	.byte		        Bn2 , v100
	.byte	W12
	.byte		        Fs2 , v084
	.byte	W54
	.byte		N05   
	.byte	W06
@ 013   ----------------------------------------
	.byte	W13
	.byte		N11   , Bn2 , v104
	.byte	W11
	.byte		        An2 
	.byte	W12
	.byte		        Fs2 , v084
	.byte	W48
	.byte		N11   
	.byte	W12
@ 014   ----------------------------------------
	.byte		N12   , Bn2 , v108
	.byte	W13
	.byte		N11   , An2 
	.byte	W23
	.byte		        Fs2 , v084
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 015   ----------------------------------------
	.byte	W36
	.byte		N11   
	.byte	W36
	.byte		        Bn2 , v120
	.byte	W12
	.byte		        Fs2 , v084
	.byte	W12
@ 016   ----------------------------------------
	.byte	W36
	.byte		N11   
	.byte	W24
	.byte		        Bn2 , v124
	.byte	W12
	.byte		N23   , An2 , v127
	.byte	W24
@ 017   ----------------------------------------
	.byte	W13
	.byte		N11   , Cs3 , v096
	.byte	W32
	.byte	W03
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W24
@ 018   ----------------------------------------
mus_umineko_worldend_dominator_3_018:
	.byte		N12   , Cs3 , v096
	.byte	W36
	.byte		N11   , En3 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        Cs3 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_umineko_worldend_dominator_3_019:
	.byte	W24
	.byte		N11   , En3 , v096
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 , v100
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
mus_umineko_worldend_dominator_3_020:
	.byte	W13
	.byte		N11   , En3 , v100
	.byte	W23
	.byte		        An2 
	.byte	W24
	.byte		        Cs3 
	.byte	W36
	.byte	PEND
@ 021   ----------------------------------------
mus_umineko_worldend_dominator_3_021:
	.byte		N12   , En3 , v100
	.byte	W13
	.byte		N11   , Bn2 
	.byte	W11
	.byte		        An2 
	.byte	W24
	.byte		        Cs3 
	.byte	W36
	.byte		        En3 
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_umineko_worldend_dominator_3_022:
	.byte		N12   , Bn2 , v100
	.byte	W13
	.byte		N11   , An2 
	.byte	W23
	.byte		        Cs3 
	.byte	W36
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_umineko_worldend_dominator_3_023:
	.byte		N12   , An2 , v100
	.byte	W24
	.byte		N11   , Cs3 
	.byte	W36
	.byte		        En3 
	.byte	W24
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
	.byte	W13
	.byte		        Cs3 
	.byte	W32
	.byte	W03
	.byte		        En3 , v104
	.byte	W12
	.byte		N05   , Fs2 , v096
	.byte	W18
	.byte		        Cs2 , v080
	.byte	W06
	.byte		N12   , Fs1 , v092
	.byte	W12
@ 025   ----------------------------------------
mus_umineko_worldend_dominator_3_025:
	.byte	W18
	.byte		N06   , Fs1 , v092
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_025
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_025
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_025
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_025
@ 031   ----------------------------------------
mus_umineko_worldend_dominator_3_031:
	.byte	W18
	.byte		N06   , Fs1 , v096
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 032   ----------------------------------------
	.byte	W18
	.byte		N06   
	.byte	W32
	.byte	W03
	.byte		N04   , Fs1 , v084
	.byte	W19
	.byte		N04   
	.byte	W19
	.byte		N06   
	.byte	W05
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_031
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_031
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_031
@ 036   ----------------------------------------
	.byte	W07
	.byte		N05   , Fs1 , v096
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
@ 037   ----------------------------------------
	.byte		N96   , Cs3 , v088
	.byte	W96
@ 038   ----------------------------------------
	.byte		        Bn2 , v072
	.byte	W96
@ 039   ----------------------------------------
	.byte		        Bn2 , v076
	.byte	W96
@ 040   ----------------------------------------
	.byte		        Cs3 , v096
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W72
	.byte		N23   , En3 , v120
	.byte	W24
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W72
	.byte		        Bn2 , v104
	.byte	W24
@ 046   ----------------------------------------
	.byte	W48
	.byte		N24   , Bn2 , v120
	.byte	W48
@ 047   ----------------------------------------
	.byte		N48   , An2 , v124
	.byte	W48
	.byte		N24   , An2 , v116
	.byte	W48
@ 048   ----------------------------------------
	.byte		N36   , Fs3 , v108
	.byte	W48
	.byte		N44   , Fn3 , v104, gtp3
	.byte	W48
@ 049   ----------------------------------------
mus_umineko_worldend_dominator_3_049:
	.byte	W18
	.byte		N06   , Fs2 , v096
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W30
	.byte	PEND
@ 050   ----------------------------------------
mus_umineko_worldend_dominator_3_050:
	.byte	W18
	.byte		N06   , Gs2 , v096
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
mus_umineko_worldend_dominator_3_051:
	.byte	W18
	.byte		N06   , As2 , v096
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
	.byte		N24   , Fs3 , v124
	.byte	W24
	.byte		        En3 , v120
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		N23   , Cs3 
	.byte	W24
@ 053   ----------------------------------------
	.byte		N48   , Bn2 , v124
	.byte	W72
	.byte		N23   , Bn2 , v104
	.byte	W24
@ 054   ----------------------------------------
	.byte		N24   , An2 , v108
	.byte	W24
	.byte		        Gs2 , v104
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N23   , En3 
	.byte	W24
@ 055   ----------------------------------------
	.byte		N24   , Dn3 , v108
	.byte	W24
	.byte		        En3 , v104
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N23   , An2 
	.byte	W24
@ 056   ----------------------------------------
	.byte		N36   , An2 , v108
	.byte	W48
	.byte		N24   , Bn2 , v104
	.byte	W48
@ 057   ----------------------------------------
	.byte		N72   , Cs3 , v112
	.byte	W72
	.byte		N23   , En3 , v120
	.byte	W24
@ 058   ----------------------------------------
	.byte		N24   , Bn2 , v108
	.byte	W48
	.byte		        Fs3 , v104
	.byte	W24
	.byte		N23   , En3 
	.byte	W24
@ 059   ----------------------------------------
	.byte		N48   , En3 , v108
	.byte	W48
	.byte		N24   , Bn2 , v104
	.byte	W24
	.byte		N23   , En3 , v120
	.byte	W24
@ 060   ----------------------------------------
	.byte		N24   , Dn3 , v124
	.byte	W24
	.byte		N07   , Cs3 , v112
	.byte	W08
	.byte		        Dn3 
	.byte	W08
	.byte		        Cs3 
	.byte	W16
	.byte		N07   
	.byte	W16
	.byte		N23   , An2 , v108
	.byte	W24
@ 061   ----------------------------------------
	.byte		N48   , An2 , v124
	.byte	W48
	.byte		N24   , Fs3 , v120
	.byte	W24
	.byte		N23   , Gs2 
	.byte	W24
@ 062   ----------------------------------------
	.byte		N24   , Fs3 , v108
	.byte	W24
	.byte		        En3 , v104
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		N23   
	.byte	W24
@ 063   ----------------------------------------
	.byte		N72   , Cs3 , v116
	.byte	W96
@ 064   ----------------------------------------
	.byte		N24   , Cs3 , v108
	.byte	W48
	.byte		        Bn2 , v104
	.byte	W48
@ 065   ----------------------------------------
	.byte		N72   , Cs3 , v100
	.byte	W96
@ 066   ----------------------------------------
	.byte		N24   , Dn3 , v108
	.byte	W24
	.byte		N07   , Cs3 , v104
	.byte	W08
	.byte		        Dn3 , v100
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		N24   , Bn2 , v104
	.byte	W24
	.byte		N23   , An2 
	.byte	W24
@ 067   ----------------------------------------
	.byte		N24   , Bn2 , v108
	.byte	W24
	.byte		        En3 , v104
	.byte	W42
	.byte		N05   , En2 , v096
	.byte	W18
	.byte		N05   
	.byte	W12
@ 068   ----------------------------------------
	.byte	W18
	.byte		N06   , An2 
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W06
	.byte		N23   , An2 , v120
	.byte	W24
@ 069   ----------------------------------------
	.byte		N48   , An2 , v116
	.byte	W48
	.byte		N24   , An2 , v120
	.byte	W24
	.byte		N23   , Bn2 
	.byte	W24
@ 070   ----------------------------------------
	.byte		N24   , Cs3 , v124
	.byte	W24
	.byte		N08   , Cs3 , v120
	.byte	W08
	.byte		        Dn3 
	.byte	W08
	.byte		        Cs3 
	.byte	W32
	.byte		N23   , Bn2 
	.byte	W24
@ 071   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte		N24   , Fs3 , v088
	.byte	W24
	.byte		        Fs3 , v084
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gn3 , v080
	.byte	W12
@ 078   ----------------------------------------
	.byte		N24   , En3 , v088
	.byte	W24
	.byte		        En3 , v084
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Cs3 , v080
	.byte	W12
@ 079   ----------------------------------------
	.byte		N24   , Dn3 , v088
	.byte	W24
	.byte		N11   , Dn3 , v084
	.byte	W12
	.byte		        En3 , v080
	.byte	W12
	.byte		        Fs3 , v084
	.byte	W12
	.byte		N03   , En3 , v080
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		N04   , En3 
	.byte	W04
	.byte		N11   , Dn3 , v084
	.byte	W12
	.byte		        En3 , v080
	.byte	W12
@ 080   ----------------------------------------
	.byte		N24   , Dn3 , v088
	.byte	W24
	.byte		N11   , Cs3 , v084
	.byte	W24
	.byte		N24   
	.byte	W30
	.byte		N05   , Fs3 
	.byte	W06
	.byte		        Bn2 , v100
	.byte	W06
	.byte		        Dn3 , v112
	.byte	W06
@ 081   ----------------------------------------
mus_umineko_worldend_dominator_3_081:
	.byte		N24   , Bn2 , v108
	.byte	W24
	.byte		        Bn2 , v104
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_081
@ 083   ----------------------------------------
	.byte		N24   , Bn2 , v108
	.byte	W24
	.byte		N11   , Bn2 , v104
	.byte	W24
	.byte		N12   
	.byte	W16
	.byte		N03   , Bn2 , v112
	.byte	W08
	.byte		N11   , Bn2 , v104
	.byte	W24
@ 084   ----------------------------------------
	.byte		N24   , Bn2 , v108
	.byte	W24
	.byte		N12   , Bn2 , v104
	.byte	W12
	.byte		        Bn2 , v120
	.byte	W12
	.byte		N24   , Bn2 , v104
	.byte	W24
	.byte		N11   , Fs3 
	.byte	W18
	.byte		N05   , En3 , v112
	.byte	W06
@ 085   ----------------------------------------
	.byte		N24   , Fs3 , v108
	.byte	W24
	.byte		        Fs3 , v104
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gn3 , v100
	.byte	W12
@ 086   ----------------------------------------
	.byte		N24   , En3 , v108
	.byte	W24
	.byte		        En3 , v104
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Cs3 , v100
	.byte	W12
@ 087   ----------------------------------------
	.byte		N24   , Dn3 , v108
	.byte	W24
	.byte		N11   , Dn3 , v104
	.byte	W12
	.byte		        En3 , v100
	.byte	W12
	.byte		        Fs3 , v104
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 , v100
	.byte	W12
@ 088   ----------------------------------------
	.byte		N12   , Dn3 , v108
	.byte	W13
	.byte		N11   , Cn3 , v104
	.byte	W11
	.byte		        Dn3 , v112
	.byte	W12
	.byte		        En3 , v116
	.byte	W12
	.byte		N24   , Fs3 , v124
	.byte	W48
@ 089   ----------------------------------------
mus_umineko_worldend_dominator_3_089:
	.byte		N24   , Bn2 , v127
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
@ 090   ----------------------------------------
mus_umineko_worldend_dominator_3_090:
	.byte		N24   , An2 , v127
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 091   ----------------------------------------
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W36
	.byte		        An2 
	.byte	W12
@ 092   ----------------------------------------
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   , En3 
	.byte	W24
@ 093   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W24
@ 094   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
@ 095   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		        Gn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 096   ----------------------------------------
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N11   , Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N23   , En3 
	.byte	W24
@ 097   ----------------------------------------
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
@ 098   ----------------------------------------
	.byte		N24   , An2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W48
@ 099   ----------------------------------------
	.byte		        Gn3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N03   , An2 
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N11   , Gn3 
	.byte	W24
@ 100   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W24
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_089
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_090
@ 103   ----------------------------------------
	.byte		N24   , Gn3 , v127
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N03   , An2 
	.byte	W08
	.byte		N04   
	.byte	W16
	.byte		N12   
	.byte	W12
@ 104   ----------------------------------------
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N23   , En3 
	.byte	W24
@ 105   ----------------------------------------
	.byte	W05
	.byte		N04   
	.byte	W09
	.byte		N04   
	.byte	W10
	.byte		N04   
	.byte	W09
	.byte		        En3 , v124
	.byte	W10
	.byte		N18   , En3 , v092
	.byte	W05
@ 106   ----------------------------------------
	.byte	W36
	.byte		N23   , Fs3 , v080
	.byte	W24
	.byte		        An2 
	.byte	W36
@ 107   ----------------------------------------
	.byte	W36
	.byte		        Dn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W36
@ 108   ----------------------------------------
	.byte	W36
	.byte		        An2 
	.byte	W36
	.byte		        Bn2 , v084
	.byte	W24
@ 109   ----------------------------------------
	.byte		N24   , Fn3 , v088
	.byte	W48
	.byte		N23   , Gn3 , v084
	.byte	W24
	.byte		N23   
	.byte	W24
@ 110   ----------------------------------------
	.byte		N24   , Dn3 , v088
	.byte	W72
	.byte		N23   , Dn3 , v084
	.byte	W24
@ 111   ----------------------------------------
	.byte		N24   , Bn2 , v088
	.byte	W36
	.byte		N23   , Bn2 , v080
	.byte	W36
	.byte		        Dn3 , v084
	.byte	W24
@ 112   ----------------------------------------
	.byte		N24   , Fs3 , v080
	.byte	W60
	.byte		        Bn2 
	.byte	W36
@ 113   ----------------------------------------
	.byte	W36
	.byte		        Dn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W36
@ 114   ----------------------------------------
	.byte	W48
	.byte		N23   , An2 , v084
	.byte	W24
	.byte		N23   
	.byte	W24
@ 115   ----------------------------------------
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
@ 116   ----------------------------------------
	.byte		TIE   , En3 , v080
	.byte	W96
@ 117   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte		N24   , Bn2 
	.byte	W24
	.byte		        Dn3 
	.byte	W60
@ 118   ----------------------------------------
	.byte		TIE   , En3 , v072
	.byte	W96
@ 119   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W48
	.byte		N24   , Dn3 , v080
	.byte	W36
@ 120   ----------------------------------------
	.byte		        En3 
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 121   ----------------------------------------
	.byte		N36   , En3 , v084
	.byte	W48
	.byte		        Cn3 , v092
	.byte	W48
@ 122   ----------------------------------------
	.byte	W12
	.byte		N24   , An2 , v112
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W36
@ 123   ----------------------------------------
mus_umineko_worldend_dominator_3_123:
	.byte		N24   , Cn3 , v112
	.byte	W36
	.byte		        Dn3 
	.byte	W48
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
@ 124   ----------------------------------------
	.byte	W12
	.byte		        Dn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W60
@ 125   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N11   , Cn3 , v096
	.byte	W54
	.byte		N05   
	.byte	W06
@ 126   ----------------------------------------
	.byte	W24
	.byte		N24   , En3 , v112
	.byte	W72
@ 127   ----------------------------------------
	.byte		        An2 
	.byte	W84
	.byte		N24   
	.byte	W12
@ 128   ----------------------------------------
	.byte	W72
	.byte		        As2 
	.byte	W24
@ 129   ----------------------------------------
	.byte	W12
	.byte		        Cn3 
	.byte	W36
	.byte		        As2 
	.byte	W48
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_123
@ 131   ----------------------------------------
	.byte	W36
	.byte		N24   , Dn3 , v112
	.byte	W36
	.byte		N24   
	.byte	W24
@ 132   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		        An2 
	.byte	W60
@ 133   ----------------------------------------
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W36
	.byte		        Gn3 
	.byte	W36
@ 134   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
@ 135   ----------------------------------------
	.byte		        Gn3 
	.byte	W84
	.byte		        An2 
	.byte	W12
@ 136   ----------------------------------------
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 137   ----------------------------------------
	.byte	W60
	.byte		        Gn3 
	.byte	W36
@ 138   ----------------------------------------
	.byte		        Bn2 
	.byte	W72
	.byte		        Dn3 
	.byte	W24
@ 139   ----------------------------------------
	.byte		        An2 
	.byte	W60
	.byte		        Dn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W12
@ 140   ----------------------------------------
	.byte	W60
	.byte		        As2 
	.byte	W36
@ 141   ----------------------------------------
	.byte	W36
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N12   , Bn2 
	.byte	W12
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte		        An2 , v127
	.byte	W13
	.byte		N11   , Cs3 , v096
	.byte	W11
	.byte		        An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W24
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_018
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_019
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_020
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_021
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_022
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_023
@ 150   ----------------------------------------
	.byte	W13
	.byte		N11   , Cs3 , v100
	.byte	W32
	.byte	W03
	.byte		        En3 , v104
	.byte	W12
	.byte		N05   , Fs2 , v112
	.byte	W18
	.byte		        Cs2 , v096
	.byte	W06
	.byte		N12   , Fs1 , v104
	.byte	W12
@ 151   ----------------------------------------
	.byte	W18
	.byte		N06   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		        Fs1 , v108
	.byte	W24
	.byte		N05   
	.byte	W06
@ 152   ----------------------------------------
mus_umineko_worldend_dominator_3_152:
	.byte	W18
	.byte		N06   , Fs1 , v108
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_152
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_152
@ 155   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_152
@ 156   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_152
@ 157   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_152
@ 158   ----------------------------------------
	.byte	W18
	.byte		N06   , Fs1 , v108
	.byte	W32
	.byte	W03
	.byte		N04   , Fs1 , v100
	.byte	W19
	.byte		N04   
	.byte	W19
	.byte		N06   
	.byte	W05
@ 159   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_031
@ 160   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_031
@ 161   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_031
@ 162   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_031
@ 163   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_031
@ 164   ----------------------------------------
	.byte	W18
	.byte		N06   , Fs1 , v096
	.byte	W24
	.byte		N05   , Fs1 , v100
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		        Fs1 , v104
	.byte	W06
@ 165   ----------------------------------------
	.byte	W18
	.byte		N06   , Fs1 , v108
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		        Fs1 , v112
	.byte	W24
	.byte		        Fs1 , v116
	.byte	W06
@ 166   ----------------------------------------
	.byte	W18
	.byte		N06   
	.byte	W24
	.byte		N05   , Fs1 , v120
	.byte	W24
	.byte		        Fs1 , v124
	.byte	W24
	.byte		N06   
	.byte	W06
@ 167   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_049
@ 168   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_050
@ 169   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_051
@ 170   ----------------------------------------
	.byte	W18
	.byte		N06   , Bn2 , v096
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
@ 171   ----------------------------------------
	.byte	W48
	.byte		N24   , Bn2 , v104
	.byte	W48
@ 172   ----------------------------------------
mus_umineko_worldend_dominator_3_172:
	.byte	W18
	.byte		N06   , An2 , v096
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 173   ----------------------------------------
	.byte	W66
	.byte		        Bn2 
	.byte	W18
	.byte		N05   
	.byte	W12
@ 174   ----------------------------------------
	.byte	W96
@ 175   ----------------------------------------
	.byte		N48   , Fs2 , v108
	.byte	W84
	.byte		N05   , Fs2 , v096
	.byte	W12
@ 176   ----------------------------------------
	.byte	W96
@ 177   ----------------------------------------
	.byte	W96
@ 178   ----------------------------------------
	.byte	W96
@ 179   ----------------------------------------
mus_umineko_worldend_dominator_3_179:
	.byte	W18
	.byte		N06   , En2 , v096
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 180   ----------------------------------------
	.byte	W96
@ 181   ----------------------------------------
	.byte	W18
	.byte		N06   , Dn2 
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		N17   , Bn1 , v100
	.byte	W24
	.byte		N11   , Bn1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
@ 182   ----------------------------------------
	.byte		N18   , Cs2 , v100
	.byte	W24
	.byte		N11   , Cs2 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , Cs2 , v100
	.byte	W24
	.byte		N11   , Cs2 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
@ 183   ----------------------------------------
mus_umineko_worldend_dominator_3_183:
	.byte	W18
	.byte		N06   , Fs2 , v096
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 184   ----------------------------------------
	.byte	W96
@ 185   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_179
@ 186   ----------------------------------------
	.byte	W96
@ 187   ----------------------------------------
mus_umineko_worldend_dominator_3_187:
	.byte	W18
	.byte		N06   , Dn2 , v096
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 188   ----------------------------------------
mus_umineko_worldend_dominator_3_188:
	.byte		N18   , Bn1 , v100
	.byte	W24
	.byte		N11   , Bn1 , v096
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N17   , Bn1 , v100
	.byte	W24
	.byte		N11   , Bn1 , v096
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 189   ----------------------------------------
mus_umineko_worldend_dominator_3_189:
	.byte	W18
	.byte		N06   , Cs2 , v096
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 190   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_189
@ 191   ----------------------------------------
	.byte	W96
@ 192   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_188
@ 193   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_179
@ 194   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_172
@ 195   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_187
@ 196   ----------------------------------------
	.byte	W18
	.byte		N06   , Gn2 , v096
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
@ 197   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_183
@ 198   ----------------------------------------
	.byte	W18
	.byte		N06   , Fs2 , v096
	.byte	W18
	.byte		N05   , En2 
	.byte	W30
	.byte		        Dn2 
	.byte	W18
	.byte		        Cs2 
	.byte	W12
@ 199   ----------------------------------------
	.byte	W96
@ 200   ----------------------------------------
	.byte	W96
@ 201   ----------------------------------------
	.byte	W96
@ 202   ----------------------------------------
	.byte	W96
@ 203   ----------------------------------------
	.byte	W96
@ 204   ----------------------------------------
	.byte	W96
@ 205   ----------------------------------------
	.byte	W96
@ 206   ----------------------------------------
	.byte	W72
	.byte		        Bn1 , v068
	.byte	W24
@ 207   ----------------------------------------
mus_umineko_worldend_dominator_3_207:
	.byte	W07
	.byte		N05   , Bn1 , v096
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 208   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_207
@ 209   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_207
@ 210   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_207
@ 211   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_207
@ 212   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_207
@ 213   ----------------------------------------
mus_umineko_worldend_dominator_3_213:
	.byte		N06   , En2 , v100
	.byte	W13
	.byte		N05   , En2 , v096
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 214   ----------------------------------------
	.byte		N06   , Cn2 , v100
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		        Cn2 , v104
	.byte	W12
	.byte		N06   , Bn1 , v108
	.byte	W12
	.byte		N05   , Bn1 , v112
	.byte	W12
	.byte		        Bn1 , v116
	.byte	W12
	.byte		        Bn1 , v120
	.byte	W12
@ 215   ----------------------------------------
mus_umineko_worldend_dominator_3_215:
	.byte	W36
	.byte		N11   , En2 , v096
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 216   ----------------------------------------
mus_umineko_worldend_dominator_3_216:
	.byte	W36
	.byte		N11   , En2 , v096
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 217   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_215
@ 218   ----------------------------------------
	.byte	W36
	.byte		N11   , En2 , v096
	.byte	W54
	.byte		N05   
	.byte	W06
@ 219   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_215
@ 220   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_216
@ 221   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_215
@ 222   ----------------------------------------
	.byte	W36
	.byte		N11   , En2 , v096
	.byte	W54
	.byte		N06   
	.byte	W06
@ 223   ----------------------------------------
mus_umineko_worldend_dominator_3_223:
	.byte		N06   , En2 , v100
	.byte	W13
	.byte		N05   , En2 , v096
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 224   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_223
@ 225   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_223
@ 226   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_223
@ 227   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_223
@ 228   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_223
@ 229   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_213
@ 230   ----------------------------------------
	.byte		N06   , Cn2 , v100
	.byte	W13
	.byte		N05   , Cn2 , v096
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		        Fs1 , v088
	.byte	W12
@ 231   ----------------------------------------
	.byte		N12   , En1 , v100
	.byte	W18
	.byte		N11   , En1 , v096
	.byte	W18
	.byte		N11   
	.byte	W12
@ 232   ----------------------------------------
	.byte		TIE   , En1 , v084
	.byte	W96
@ 233   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 234   ----------------------------------------
	.byte		TIE   , Fn1 , v088
	.byte	W96
@ 235   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 236   ----------------------------------------
	.byte		TIE   , An1 
	.byte	W96
@ 237   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 238   ----------------------------------------
	.byte		TIE   , Fs1 
	.byte	W96
@ 239   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 240   ----------------------------------------
	.byte		TIE   , Fn1 
	.byte	W96
@ 241   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 242   ----------------------------------------
	.byte		TIE   , Gn1 
	.byte	W96
@ 243   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 244   ----------------------------------------
	.byte		TIE   , An1 
	.byte	W96
@ 245   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 246   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 247   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte	W04
@ 248   ----------------------------------------
mus_umineko_worldend_dominator_3_248:
	.byte		N18   , As1 , v100
	.byte	W18
	.byte		N06   , As1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , As1 , v100
	.byte	W18
	.byte		N06   , As1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 249   ----------------------------------------
mus_umineko_worldend_dominator_3_249:
	.byte		N18   , As1 , v100
	.byte	W18
	.byte		N06   , As1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , As1 , v100
	.byte	W18
	.byte		N05   , As1 , v096
	.byte	W12
	.byte		N05   
	.byte	W18
	.byte	PEND
@ 250   ----------------------------------------
mus_umineko_worldend_dominator_3_250:
	.byte		N18   , Cn2 , v100
	.byte	W18
	.byte		N06   , Cn2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , Cn2 , v100
	.byte	W18
	.byte		N06   , Cn2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 251   ----------------------------------------
mus_umineko_worldend_dominator_3_251:
	.byte		N18   , Cn2 , v100
	.byte	W18
	.byte		N06   , Cn2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , Cn2 , v100
	.byte	W18
	.byte		N06   , Cn2 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 252   ----------------------------------------
mus_umineko_worldend_dominator_3_252:
	.byte		N18   , Dn2 , v100
	.byte	W18
	.byte		N06   , Dn2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , Dn2 , v100
	.byte	W18
	.byte		N06   , Dn2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 253   ----------------------------------------
mus_umineko_worldend_dominator_3_253:
	.byte		N18   , Dn2 , v100
	.byte	W18
	.byte		N06   , Dn2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , Dn2 , v100
	.byte	W18
	.byte		N05   , Dn2 , v096
	.byte	W12
	.byte		N05   
	.byte	W18
	.byte	PEND
@ 254   ----------------------------------------
mus_umineko_worldend_dominator_3_254:
	.byte		N18   , Ds2 , v100
	.byte	W18
	.byte		N06   , Ds2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , Ds2 , v100
	.byte	W18
	.byte		N06   , Ds2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 255   ----------------------------------------
	.byte		N18   , Ds2 , v100
	.byte	W18
	.byte		N06   , Ds2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , Ds2 , v100
	.byte	W18
	.byte		N06   , Ds2 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 256   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_252
@ 257   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_253
@ 258   ----------------------------------------
	.byte		N18   , Bn1 , v100
	.byte	W18
	.byte		N06   , Bn1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , Bn1 , v100
	.byte	W18
	.byte		N06   , Bn1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
@ 259   ----------------------------------------
	.byte		N18   , Bn1 , v100
	.byte	W18
	.byte		N06   , Bn1 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , Bn1 , v100
	.byte	W18
	.byte		N06   , Bn1 , v096
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 260   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_248
@ 261   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_249
@ 262   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_250
@ 263   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_251
@ 264   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_252
@ 265   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_253
@ 266   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_3_254
@ 267   ----------------------------------------
	.byte		N18   , Fn2 , v100
	.byte	W18
	.byte		N06   , Fn2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
	.byte		N17   , En2 , v100
	.byte	W18
	.byte		N06   , En2 , v096
	.byte	W06
	.byte		N11   
	.byte	W24
@ 268   ----------------------------------------
	.byte		N12   , En1 , v100
	.byte	W18
	.byte		        En1 , v096
	.byte	W18
	.byte		N11   
	.byte	W18
	.byte		N11   
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		        En2 , v104
	.byte	W12
@ 269   ----------------------------------------
	.byte	W05
	.byte		VOL   , 127*mus_umineko_worldend_dominator_mvl/mxv
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_umineko_worldend_dominator_4:
	.byte	KEYSH , mus_umineko_worldend_dominator_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 98*mus_umineko_worldend_dominator_mvl/mxv
	.byte		PAN   , c_v-3
	.byte	W12
	.byte		N23   , Cs3 , v048
	.byte	W24
	.byte		        Gs3 
	.byte	W48
@ 001   ----------------------------------------
	.byte		        En3 , v052
	.byte	W36
	.byte		        Gs3 , v048
	.byte	W24
	.byte		        Bn2 
	.byte	W24
@ 002   ----------------------------------------
	.byte	W12
	.byte		        Cs3 
	.byte	W24
	.byte		        Gs3 
	.byte	W48
@ 003   ----------------------------------------
	.byte		        An3 , v052
	.byte	W24
	.byte		        An3 , v048
	.byte	W24
	.byte		N24   , En3 
	.byte	W24
	.byte		N23   , An2 
	.byte	W12
@ 004   ----------------------------------------
	.byte	W12
	.byte		        Cs3 
	.byte	W36
	.byte		N36   , Fs2 
	.byte	W36
@ 005   ----------------------------------------
	.byte		N24   , An3 , v052
	.byte	W24
	.byte		N23   , An3 , v048
	.byte	W60
@ 006   ----------------------------------------
	.byte		        An3 , v052
	.byte	W24
	.byte		        An3 , v048
	.byte	W24
	.byte		N24   , En3 
	.byte	W36
@ 007   ----------------------------------------
	.byte	W36
	.byte		N23   , Gs3 
	.byte	W48
@ 008   ----------------------------------------
	.byte		N24   , Fs3 , v052
	.byte	W96
@ 009   ----------------------------------------
	.byte		N12   , An3 , v064
	.byte	W24
	.byte		N11   , An3 , v060
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W48
@ 010   ----------------------------------------
	.byte		N12   , Cs3 , v064
	.byte	W36
	.byte		N11   , En3 
	.byte	W48
	.byte		        Cs3 , v068
	.byte	W12
@ 011   ----------------------------------------
	.byte	W24
	.byte		        En3 , v072
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
@ 012   ----------------------------------------
	.byte	W13
	.byte		        En3 
	.byte	W23
	.byte		        An2 , v076
	.byte	W24
	.byte		        Cs3 
	.byte	W36
@ 013   ----------------------------------------
	.byte		N12   , En3 , v080
	.byte	W48
	.byte		N11   , Cs3 
	.byte	W36
	.byte		        En3 , v084
	.byte	W12
@ 014   ----------------------------------------
	.byte	W36
	.byte		        Cs3 
	.byte	W36
	.byte		        En3 , v088
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N12   , An2 
	.byte	W24
	.byte		N11   , Cs3 , v092
	.byte	W36
	.byte		        En3 
	.byte	W24
	.byte		        An2 , v096
	.byte	W12
@ 016   ----------------------------------------
	.byte	W13
	.byte		        Cs3 
	.byte	W32
	.byte	W03
	.byte		        En3 
	.byte	W42
	.byte		N06   , Fs2 , v064
	.byte	W06
@ 017   ----------------------------------------
mus_umineko_worldend_dominator_4_017:
	.byte		N06   , Fs2 , v064
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W12
	.byte		N11   , Bn2 , v072
	.byte	W12
	.byte		N05   , Fs2 , v064
	.byte	W24
	.byte		N05   
	.byte	W12
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_017
@ 020   ----------------------------------------
	.byte		N06   , Fs2 , v064
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N11   , Bn2 , v076
	.byte	W12
	.byte		N05   , Fs2 , v068
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
@ 021   ----------------------------------------
mus_umineko_worldend_dominator_4_021:
	.byte		N06   , Fs2 , v068
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_021
@ 023   ----------------------------------------
	.byte		N06   , Fs2 , v068
	.byte	W13
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte		N11   , Bn2 , v076
	.byte	W12
	.byte		N05   , Fs2 , v068
	.byte	W12
@ 024   ----------------------------------------
	.byte	W36
	.byte		N24   , Fs1 , v076
	.byte	W24
	.byte		N05   , Cs2 , v060
	.byte	W06
	.byte		N28   , Fs1 , v068, gtp1
	.byte	W30
@ 025   ----------------------------------------
mus_umineko_worldend_dominator_4_025:
	.byte	W07
	.byte		N05   , Fs1 , v068
	.byte	W24
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W18
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_025
@ 027   ----------------------------------------
	.byte	W07
	.byte		N05   , Fs1 , v068
	.byte	W24
	.byte		N05   
	.byte	W23
	.byte		        Fs1 , v072
	.byte	W24
	.byte		N05   
	.byte	W18
@ 028   ----------------------------------------
mus_umineko_worldend_dominator_4_028:
	.byte	W07
	.byte		N05   , Fs1 , v072
	.byte	W24
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W18
	.byte	PEND
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_028
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_028
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_028
@ 032   ----------------------------------------
	.byte	W07
	.byte		N05   , Fs1 , v072
	.byte	W32
	.byte	W03
	.byte		N07   , Fs1 , v064
	.byte	W20
	.byte		N04   
	.byte	W19
	.byte		N04   
	.byte	W15
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_028
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_028
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_028
@ 036   ----------------------------------------
	.byte		N05   , Gs4 , v060
	.byte	W09
	.byte		        Gs4 , v072
	.byte	W10
	.byte		        Gs4 , v076
	.byte	W09
	.byte		N05   
	.byte	W10
	.byte		N05   
	.byte	W10
	.byte		N04   , Gs4 , v080
	.byte	W09
	.byte		        Gs4 , v076
	.byte	W10
	.byte		        Gs4 , v072
	.byte	W09
	.byte		N05   , Gs4 , v068
	.byte	W10
	.byte		        Gs4 , v064
	.byte	W10
@ 037   ----------------------------------------
	.byte		N96   , Cs3 , v052
	.byte	W96
@ 038   ----------------------------------------
	.byte		        An4 , v068
	.byte	W96
@ 039   ----------------------------------------
	.byte		        Fs4 , v056
	.byte	W96
@ 040   ----------------------------------------
	.byte		        Ds4 , v060
	.byte	W96
@ 041   ----------------------------------------
mus_umineko_worldend_dominator_4_041:
	.byte		N48   , Cs3 , v096
	.byte	W48
	.byte		N32   , Cs3 , v080, gtp3
	.byte	W48
	.byte	PEND
@ 042   ----------------------------------------
	.byte		N24   , Fn3 , v084
	.byte	W24
	.byte		        Fn3 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N23   
	.byte	W24
@ 043   ----------------------------------------
	.byte		N24   , Fs3 , v084
	.byte	W24
	.byte		        Fs3 , v080
	.byte	W24
	.byte		N24   
	.byte	W48
@ 044   ----------------------------------------
	.byte		        Fs3 , v084
	.byte	W24
	.byte		        Fs3 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N23   
	.byte	W24
@ 045   ----------------------------------------
	.byte		N48   , En3 , v084
	.byte	W48
	.byte		N24   , Bn2 , v080
	.byte	W48
@ 046   ----------------------------------------
	.byte		        En3 , v084
	.byte	W24
	.byte		        En3 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N23   
	.byte	W24
@ 047   ----------------------------------------
	.byte		N48   , Dn3 , v084
	.byte	W48
	.byte		N24   , Dn3 , v080
	.byte	W48
@ 048   ----------------------------------------
	.byte	W18
	.byte		N06   , Cs3 , v072
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_041
@ 050   ----------------------------------------
	.byte		N24   , Fn3 , v084
	.byte	W24
	.byte		        Fs3 , v080
	.byte	W24
	.byte		        Bn3 , v096
	.byte	W24
	.byte		N23   , Gs3 , v092
	.byte	W24
@ 051   ----------------------------------------
	.byte		N24   , As3 , v096
	.byte	W24
	.byte		        Bn3 , v092
	.byte	W24
	.byte		        As3 , v080
	.byte	W24
	.byte		N23   , En4 , v092
	.byte	W24
@ 052   ----------------------------------------
	.byte		N24   , Dn4 , v084
	.byte	W24
	.byte		        Cs4 , v080
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N23   , An3 
	.byte	W24
@ 053   ----------------------------------------
	.byte		N48   , Gs3 , v084
	.byte	W48
	.byte		N24   , En3 , v088
	.byte	W24
	.byte		N23   , En3 , v080
	.byte	W24
@ 054   ----------------------------------------
	.byte		N24   , An4 , v096
	.byte	W24
	.byte		        Gs4 , v092
	.byte	W24
	.byte		        Fs4 , v096
	.byte	W24
	.byte		N23   , En4 , v092
	.byte	W24
@ 055   ----------------------------------------
	.byte		N24   , Dn4 , v096
	.byte	W24
	.byte		        En4 , v092
	.byte	W24
	.byte		        Fs4 , v096
	.byte	W24
	.byte		N23   , En4 , v080
	.byte	W24
@ 056   ----------------------------------------
	.byte		N36   , En4 , v084
	.byte	W48
	.byte		N24   , Bn4 , v096
	.byte	W24
	.byte		N23   , Gs4 , v092
	.byte	W24
@ 057   ----------------------------------------
	.byte		N48   , As4 , v084
	.byte	W72
	.byte		N23   , En4 , v080
	.byte	W24
@ 058   ----------------------------------------
	.byte		N24   , Fs4 , v084
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
@ 059   ----------------------------------------
	.byte		        Bn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
@ 060   ----------------------------------------
	.byte		        An4 
	.byte	W48
	.byte		N07   , Bn4 , v088
	.byte	W16
	.byte		        Bn4 , v084
	.byte	W08
	.byte		N23   , En4 , v088
	.byte	W24
@ 061   ----------------------------------------
	.byte		N48   , Dn4 , v084
	.byte	W48
	.byte		N24   , Dn4 , v080
	.byte	W24
	.byte		N23   
	.byte	W24
@ 062   ----------------------------------------
	.byte		N24   , Dn4 , v084
	.byte	W24
	.byte		        Cs4 , v080
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N23   
	.byte	W24
@ 063   ----------------------------------------
	.byte		N48   , Bn3 , v084
	.byte	W48
	.byte		        Fs3 
	.byte	W48
@ 064   ----------------------------------------
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        An3 , v080
	.byte	W48
	.byte		N23   , Gs3 
	.byte	W24
@ 065   ----------------------------------------
	.byte		N72   , Cs5 , v092
	.byte	W72
	.byte		N23   , En5 
	.byte	W24
@ 066   ----------------------------------------
	.byte		N24   , Dn5 , v096
	.byte	W24
	.byte		N08   , Cs5 , v092
	.byte	W08
	.byte		        Dn5 
	.byte	W08
	.byte		        Cs5 
	.byte	W56
@ 067   ----------------------------------------
	.byte		N24   , Bn4 , v096
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N23   , Bn4 , v080
	.byte	W24
@ 068   ----------------------------------------
	.byte		N24   , An4 , v084
	.byte	W48
	.byte		N08   , Bn4 , v096
	.byte	W16
	.byte		        Bn4 , v092
	.byte	W08
	.byte		N23   , Cs4 , v080
	.byte	W24
@ 069   ----------------------------------------
	.byte		N48   , Dn4 , v092
	.byte	W48
	.byte		N24   , Dn4 , v080
	.byte	W24
	.byte		N23   
	.byte	W24
@ 070   ----------------------------------------
	.byte		N24   , Cs4 , v084
	.byte	W24
	.byte		N07   , Cs4 , v080
	.byte	W08
	.byte		        Dn4 , v076
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		N24   , Dn4 , v080
	.byte	W24
	.byte		N23   , En4 
	.byte	W24
@ 071   ----------------------------------------
	.byte		TIE   , Fs4 , v076
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 073   ----------------------------------------
	.byte		N24   , Fs4 , v064
	.byte	W24
	.byte		N06   , Bn3 , v048
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W12
	.byte		N06   , Bn3 , v052
	.byte	W12
	.byte		N05   , Fs3 , v048
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 074   ----------------------------------------
	.byte		N06   , Bn3 , v052
	.byte	W13
	.byte		N05   , Fs3 , v048
	.byte	W11
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W12
	.byte		N06   , Bn3 , v052
	.byte	W12
	.byte		N05   , Fs3 , v048
	.byte	W18
	.byte		        Bn3 
	.byte	W18
@ 075   ----------------------------------------
	.byte		N06   , Fs3 , v052
	.byte	W07
	.byte		N05   , Bn3 , v048
	.byte	W06
	.byte		        Fs3 
	.byte	W11
	.byte		N06   
	.byte	W07
	.byte		N05   , Bn3 
	.byte	W05
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , Fs3 , v052
	.byte	W06
	.byte		N05   , Bn3 , v048
	.byte	W06
	.byte		        Fs3 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W12
@ 076   ----------------------------------------
	.byte		N06   , Fs3 , v052
	.byte	W07
	.byte		N05   , Bn3 , v048
	.byte	W06
	.byte		        Fs3 
	.byte	W18
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W06
	.byte		N24   , Cs4 , v064
	.byte	W24
	.byte		N05   , Bn3 , v048
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 077   ----------------------------------------
mus_umineko_worldend_dominator_4_077:
	.byte	W13
	.byte		N05   , Fs3 , v048
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_077
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_077
@ 080   ----------------------------------------
	.byte	W13
	.byte		N05   , Fs3 , v048
	.byte	W18
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W36
@ 081   ----------------------------------------
	.byte		N24   , Fs5 , v092
	.byte	W24
	.byte		        Fs5 , v088
	.byte	W24
	.byte		        Fs5 , v092
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Gn5 
	.byte	W12
@ 082   ----------------------------------------
	.byte		N24   , En5 , v096
	.byte	W24
	.byte		        En5 , v088
	.byte	W24
	.byte		        En5 , v096
	.byte	W24
	.byte		N11   , Dn5 , v092
	.byte	W12
	.byte		N12   , Cs5 
	.byte	W12
@ 083   ----------------------------------------
	.byte		N24   , Dn5 , v096
	.byte	W24
	.byte		N12   , Dn5 , v092
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Fs5 , v096
	.byte	W12
	.byte		N03   , En5 , v084
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N11   , Dn5 , v092
	.byte	W12
	.byte		N12   , En5 
	.byte	W12
@ 084   ----------------------------------------
	.byte		N24   , Dn5 , v096
	.byte	W24
	.byte		N12   , Cs5 , v092
	.byte	W24
	.byte		N24   , Cs5 , v096
	.byte	W24
	.byte		N11   , Bn4 , v092
	.byte	W24
@ 085   ----------------------------------------
mus_umineko_worldend_dominator_4_085:
	.byte		N24   , Bn4 , v084
	.byte	W24
	.byte		        Bn4 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_085
@ 087   ----------------------------------------
	.byte		N24   , Bn4 , v084
	.byte	W24
	.byte		N11   , Bn4 , v080
	.byte	W24
	.byte		N12   
	.byte	W16
	.byte		N03   , Bn4 , v084
	.byte	W08
	.byte		N11   , Bn4 , v080
	.byte	W24
@ 088   ----------------------------------------
	.byte		N12   , Bn4 , v084
	.byte	W13
	.byte		N11   , Cn5 , v096
	.byte	W11
	.byte		        Bn4 , v084
	.byte	W24
	.byte		N24   , Bn4 , v096
	.byte	W48
@ 089   ----------------------------------------
mus_umineko_worldend_dominator_4_089:
	.byte		N24   , En4 , v108
	.byte	W24
	.byte		        En4 , v104
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 090   ----------------------------------------
mus_umineko_worldend_dominator_4_090:
	.byte		N24   , En4 , v108
	.byte	W24
	.byte		        En4 , v104
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte	PEND
@ 091   ----------------------------------------
mus_umineko_worldend_dominator_4_091:
	.byte		N24   , Bn3 , v108
	.byte	W24
	.byte		N12   , Bn3 , v104
	.byte	W24
	.byte		N11   
	.byte	W24
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 092   ----------------------------------------
	.byte		N24   , Gn3 , v108
	.byte	W24
	.byte		N11   , Fs3 , v104
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N11   , En3 
	.byte	W18
	.byte		N05   , En2 , v072
	.byte	W06
@ 093   ----------------------------------------
	.byte		N24   , Bn4 , v116
	.byte	W24
	.byte		        Bn4 , v112
	.byte	W24
	.byte		        Bn4 , v116
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Cn5 
	.byte	W12
@ 094   ----------------------------------------
	.byte		N24   , An4 
	.byte	W24
	.byte		        An4 , v112
	.byte	W24
	.byte		        An4 , v116
	.byte	W48
@ 095   ----------------------------------------
	.byte		        Gn4 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 , v104
	.byte	W24
	.byte		N11   , Gn4 , v116
	.byte	W24
@ 096   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N12   , En4 , v104
	.byte	W12
	.byte		        En4 , v116
	.byte	W12
	.byte		N24   , En4 , v104
	.byte	W24
	.byte		N23   , Bn3 
	.byte	W24
@ 097   ----------------------------------------
	.byte		N24   , Bn3 , v108
	.byte	W24
	.byte		        Bn3 , v104
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 098   ----------------------------------------
	.byte		N24   , An3 , v108
	.byte	W24
	.byte		        An3 , v104
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   , Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 099   ----------------------------------------
	.byte		N24   , Gn3 , v108
	.byte	W24
	.byte		N11   , Gn3 , v104
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N12   , Bn4 , v116
	.byte	W36
	.byte		        An4 
	.byte	W12
@ 100   ----------------------------------------
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   , En4 
	.byte	W12
	.byte		N12   , An4 
	.byte	W12
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_089
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_090
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_091
@ 104   ----------------------------------------
	.byte		N24   , Gn3 , v108
	.byte	W24
	.byte		N11   , Fs3 , v104
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N23   , En3 
	.byte	W24
@ 105   ----------------------------------------
	.byte	W48
@ 106   ----------------------------------------
	.byte	W13
	.byte		N80   , Bn3 , v060, gtp3
	.byte	W80
	.byte	W03
@ 107   ----------------------------------------
	.byte		N24   , Bn3 , v064
	.byte	W24
	.byte		N23   , Fs4 , v060
	.byte	W72
@ 108   ----------------------------------------
	.byte	W13
	.byte		        Fn4 
	.byte	W44
	.byte	W03
	.byte		        Gn4 
	.byte	W24
	.byte		N23   
	.byte	W12
@ 109   ----------------------------------------
	.byte	W13
	.byte		        Dn4 
	.byte	W23
	.byte		        Gn3 
	.byte	W60
@ 110   ----------------------------------------
	.byte	W13
	.byte		        An3 
	.byte	W32
	.byte	W03
	.byte		        Bn3 , v064
	.byte	W36
	.byte		        Cn4 , v060
	.byte	W12
@ 111   ----------------------------------------
	.byte	W60
	.byte		        Fs4 
	.byte	W36
@ 112   ----------------------------------------
	.byte		TIE   , En4 
	.byte	W96
@ 113   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W72
@ 114   ----------------------------------------
	.byte		N96   , En4 
	.byte	W96
@ 115   ----------------------------------------
	.byte		N24   , Bn3 , v064
	.byte	W24
	.byte		N36   , Dn4 , v060
	.byte	W36
	.byte		N23   , An2 
	.byte	W36
@ 116   ----------------------------------------
	.byte		TIE   , Gn2 , v080
	.byte	W96
@ 117   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 118   ----------------------------------------
	.byte		TIE   , An2 
	.byte	W96
@ 119   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 120   ----------------------------------------
	.byte		TIE   , An2 , v076
	.byte	W96
@ 121   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte	W04
@ 122   ----------------------------------------
mus_umineko_worldend_dominator_4_122:
	.byte	W36
	.byte		N11   , As2 , v072
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 123   ----------------------------------------
	.byte	W36
	.byte		N11   
	.byte	W24
	.byte		N24   , En3 , v084
	.byte	W36
@ 124   ----------------------------------------
	.byte	W24
	.byte		        An3 
	.byte	W48
	.byte		        Bn3 
	.byte	W24
@ 125   ----------------------------------------
	.byte		        Cn4 
	.byte	W60
	.byte		        An3 
	.byte	W36
@ 126   ----------------------------------------
	.byte		        Bn3 
	.byte	W48
	.byte		N24   
	.byte	W36
	.byte		        Dn4 
	.byte	W12
@ 127   ----------------------------------------
	.byte	W36
	.byte		        Cn4 
	.byte	W36
	.byte		        Dn4 
	.byte	W24
@ 128   ----------------------------------------
	.byte	W24
	.byte		        Cn4 
	.byte	W36
	.byte		        Ds4 
	.byte	W24
	.byte		        Gn3 
	.byte	W12
@ 129   ----------------------------------------
	.byte	W60
	.byte		N24   
	.byte	W30
	.byte		N05   , Ds3 , v072
	.byte	W06
@ 130   ----------------------------------------
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W24
	.byte		N24   , Gn3 , v084
	.byte	W24
	.byte		N11   , Dn3 , v072
	.byte	W12
@ 131   ----------------------------------------
mus_umineko_worldend_dominator_4_131:
	.byte	W36
	.byte		N11   , Dn3 , v072
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 132   ----------------------------------------
	.byte	W36
	.byte		        Bn2 
	.byte	W48
	.byte		N11   
	.byte	W12
@ 133   ----------------------------------------
	.byte	W36
	.byte		N11   
	.byte	W54
	.byte		N05   
	.byte	W06
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_122
@ 135   ----------------------------------------
	.byte	W36
	.byte		N11   , As2 , v072
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 136   ----------------------------------------
	.byte	W36
	.byte		        Cn3 
	.byte	W24
	.byte		N24   , En3 , v084
	.byte	W24
	.byte		N11   , Cn3 , v072
	.byte	W12
@ 137   ----------------------------------------
	.byte	W36
	.byte		N11   
	.byte	W54
	.byte		N05   
	.byte	W06
@ 138   ----------------------------------------
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W48
	.byte		N11   
	.byte	W12
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_131
@ 140   ----------------------------------------
	.byte	W36
	.byte		N11   , Ds3 , v072
	.byte	W48
	.byte		N11   
	.byte	W12
@ 141   ----------------------------------------
	.byte	W36
	.byte		        Fn3 
	.byte	W48
	.byte		        En3 
	.byte	W12
@ 142   ----------------------------------------
	.byte	W13
	.byte		N05   , En2 
	.byte	W18
	.byte		N05   
	.byte	W17
	.byte		N06   , En2 , v076
	.byte	W18
	.byte		N05   , En2 , v072
	.byte	W18
	.byte		N11   , Bn1 , v064
	.byte	W12
@ 143   ----------------------------------------
mus_umineko_worldend_dominator_4_143:
	.byte	W07
	.byte		N05   , Fs1 , v076
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_143
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_143
@ 146   ----------------------------------------
	.byte	W07
	.byte		N05   , Fs1 , v076
	.byte	W11
	.byte		N06   , Fs1 , v080
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
@ 147   ----------------------------------------
mus_umineko_worldend_dominator_4_147:
	.byte	W07
	.byte		N05   , Fs1 , v080
	.byte	W11
	.byte		N06   
	.byte	W13
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_147
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_4_147
@ 150   ----------------------------------------
	.byte		N36   , Fs1 , v072
	.byte	W36
	.byte		N60   , Fs0 , v092
	.byte	W60
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	W96
@ 153   ----------------------------------------
	.byte	W96
@ 154   ----------------------------------------
	.byte	W96
@ 155   ----------------------------------------
	.byte	W96
@ 156   ----------------------------------------
	.byte	W96
@ 157   ----------------------------------------
	.byte	W96
@ 158   ----------------------------------------
	.byte	W36
	.byte		N06   , Fs0 , v072
	.byte	W12
	.byte		N05   
	.byte	W09
	.byte		        Fs0 , v080
	.byte	W10
	.byte		N05   
	.byte	W09
	.byte		N05   
	.byte	W10
	.byte		N05   
	.byte	W10
@ 159   ----------------------------------------
	.byte	W96
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte	W96
@ 162   ----------------------------------------
	.byte	W96
@ 163   ----------------------------------------
	.byte	W96
@ 164   ----------------------------------------
	.byte	W96
@ 165   ----------------------------------------
	.byte	W96
@ 166   ----------------------------------------
	.byte	W96
@ 167   ----------------------------------------
	.byte	W96
@ 168   ----------------------------------------
	.byte	W96
@ 169   ----------------------------------------
	.byte	W96
@ 170   ----------------------------------------
	.byte	W96
@ 171   ----------------------------------------
	.byte	W96
@ 172   ----------------------------------------
	.byte	W96
@ 173   ----------------------------------------
	.byte	W96
@ 174   ----------------------------------------
	.byte	W96
@ 175   ----------------------------------------
	.byte	W96
@ 176   ----------------------------------------
	.byte	W96
@ 177   ----------------------------------------
	.byte	W96
@ 178   ----------------------------------------
	.byte	W96
@ 179   ----------------------------------------
	.byte	W96
@ 180   ----------------------------------------
	.byte	W96
@ 181   ----------------------------------------
	.byte	W96
@ 182   ----------------------------------------
	.byte	W96
@ 183   ----------------------------------------
	.byte	W96
@ 184   ----------------------------------------
	.byte	W96
@ 185   ----------------------------------------
	.byte	W96
@ 186   ----------------------------------------
	.byte	W96
@ 187   ----------------------------------------
	.byte	W96
@ 188   ----------------------------------------
	.byte	W96
@ 189   ----------------------------------------
	.byte	W96
@ 190   ----------------------------------------
	.byte	W96
@ 191   ----------------------------------------
	.byte	W96
@ 192   ----------------------------------------
	.byte	W96
@ 193   ----------------------------------------
	.byte	W96
@ 194   ----------------------------------------
	.byte	W96
@ 195   ----------------------------------------
	.byte	W96
@ 196   ----------------------------------------
	.byte	W96
@ 197   ----------------------------------------
	.byte	W96
@ 198   ----------------------------------------
	.byte	W96
@ 199   ----------------------------------------
	.byte	W96
@ 200   ----------------------------------------
	.byte	W96
@ 201   ----------------------------------------
	.byte	W96
@ 202   ----------------------------------------
	.byte	W96
@ 203   ----------------------------------------
	.byte	W96
@ 204   ----------------------------------------
	.byte	W96
@ 205   ----------------------------------------
	.byte	W96
@ 206   ----------------------------------------
	.byte	W96
@ 207   ----------------------------------------
	.byte	W96
@ 208   ----------------------------------------
	.byte	W96
@ 209   ----------------------------------------
	.byte	W96
@ 210   ----------------------------------------
	.byte	W96
@ 211   ----------------------------------------
	.byte	W96
@ 212   ----------------------------------------
	.byte	W96
@ 213   ----------------------------------------
	.byte	W96
@ 214   ----------------------------------------
	.byte	W96
@ 215   ----------------------------------------
	.byte	W96
@ 216   ----------------------------------------
	.byte	W96
@ 217   ----------------------------------------
	.byte	W96
@ 218   ----------------------------------------
	.byte	W96
@ 219   ----------------------------------------
	.byte	W96
@ 220   ----------------------------------------
	.byte	W96
@ 221   ----------------------------------------
	.byte	W96
@ 222   ----------------------------------------
	.byte	W96
@ 223   ----------------------------------------
	.byte	W96
@ 224   ----------------------------------------
	.byte	W96
@ 225   ----------------------------------------
	.byte	W96
@ 226   ----------------------------------------
	.byte	W96
@ 227   ----------------------------------------
	.byte	W96
@ 228   ----------------------------------------
	.byte	W96
@ 229   ----------------------------------------
	.byte	W96
@ 230   ----------------------------------------
	.byte	W96
@ 231   ----------------------------------------
	.byte	W48
@ 232   ----------------------------------------
	.byte	W96
@ 233   ----------------------------------------
	.byte	W96
@ 234   ----------------------------------------
	.byte	W96
@ 235   ----------------------------------------
	.byte	W96
@ 236   ----------------------------------------
	.byte	W96
@ 237   ----------------------------------------
	.byte	W96
@ 238   ----------------------------------------
	.byte	W96
@ 239   ----------------------------------------
	.byte	W96
@ 240   ----------------------------------------
	.byte	W96
@ 241   ----------------------------------------
	.byte	W96
@ 242   ----------------------------------------
	.byte	W96
@ 243   ----------------------------------------
	.byte	W96
@ 244   ----------------------------------------
	.byte		N96   , Bn4 , v068
	.byte	W96
@ 245   ----------------------------------------
	.byte		N60   , Bn4 , v064
	.byte	W96
@ 246   ----------------------------------------
	.byte		TIE   , Dn5 , v060
	.byte	W96
@ 247   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W12
	.byte		N36   , Dn5 , v080
	.byte	W72
@ 248   ----------------------------------------
	.byte		TIE   , En5 , v084
	.byte	W96
@ 249   ----------------------------------------
	.byte	W60
	.byte		EOT   
	.byte	W36
@ 250   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 251   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W36
	.byte		N56   , Dn5 , v088, gtp3
	.byte	W48
@ 252   ----------------------------------------
	.byte	W96
@ 253   ----------------------------------------
	.byte		N60   , Dn5 , v092
	.byte	W96
@ 254   ----------------------------------------
	.byte		TIE   , En5 , v084
	.byte	W96
@ 255   ----------------------------------------
	.byte	W60
	.byte		EOT   
	.byte	W36
@ 256   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 257   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W12
	.byte		N36   , En5 , v088
	.byte	W48
	.byte		N32   , Cn5 , v088, gtp3
	.byte	W24
@ 258   ----------------------------------------
	.byte	W48
	.byte		N56   , Cn5 , v088, gtp3
	.byte	W48
@ 259   ----------------------------------------
	.byte	W72
	.byte		N32   , Cn5 , v088, gtp3
	.byte	W24
@ 260   ----------------------------------------
	.byte	W96
@ 261   ----------------------------------------
	.byte	W48
	.byte		N24   , An4 , v084
	.byte	W48
@ 262   ----------------------------------------
	.byte		TIE   , Dn5 
	.byte	W96
@ 263   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W12
	.byte		N24   , An4 
	.byte	W24
	.byte		N56   , Dn5 , v088, gtp3
	.byte	W48
@ 264   ----------------------------------------
	.byte	W96
@ 265   ----------------------------------------
	.byte	W48
	.byte		        Dn5 , v088, gtp3
	.byte	W48
@ 266   ----------------------------------------
	.byte	W96
@ 267   ----------------------------------------
	.byte	W96
@ 268   ----------------------------------------
	.byte	W96
@ 269   ----------------------------------------
	.byte	W05
	.byte		VOL   , 98*mus_umineko_worldend_dominator_mvl/mxv
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_umineko_worldend_dominator_5:
	.byte	KEYSH , mus_umineko_worldend_dominator_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 96*mus_umineko_worldend_dominator_mvl/mxv
	.byte		PAN   , c_v+3
	.byte	W84
@ 001   ----------------------------------------
	.byte	W84
@ 002   ----------------------------------------
	.byte	W84
@ 003   ----------------------------------------
	.byte	W84
@ 004   ----------------------------------------
	.byte	W84
@ 005   ----------------------------------------
	.byte	W84
@ 006   ----------------------------------------
	.byte	W84
@ 007   ----------------------------------------
	.byte	W84
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
	.byte	W48
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
	.byte	W96
@ 117   ----------------------------------------
	.byte	W96
@ 118   ----------------------------------------
	.byte		N84   , An4 , v056
	.byte	W96
@ 119   ----------------------------------------
	.byte	W24
	.byte		N24   , Gn4 , v064
	.byte	W24
	.byte		N24   
	.byte	W48
@ 120   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		        An4 
	.byte	W60
@ 121   ----------------------------------------
	.byte	W48
	.byte		N36   , Cn5 , v088
	.byte	W48
@ 122   ----------------------------------------
	.byte	W96
@ 123   ----------------------------------------
	.byte	W24
	.byte		N24   , An4 
	.byte	W48
	.byte		N24   
	.byte	W24
@ 124   ----------------------------------------
	.byte	W60
	.byte		N24   
	.byte	W36
@ 125   ----------------------------------------
	.byte	W48
	.byte		N24   
	.byte	W48
@ 126   ----------------------------------------
	.byte	W72
	.byte		N24   
	.byte	W24
@ 127   ----------------------------------------
	.byte	W48
	.byte		N24   
	.byte	W48
@ 128   ----------------------------------------
	.byte	W12
	.byte		        Gn4 
	.byte	W24
	.byte		N24   
	.byte	W60
@ 129   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W60
	.byte		N24   
	.byte	W12
@ 130   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W60
	.byte		N24   
	.byte	W24
@ 131   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		        En4 
	.byte	W72
@ 132   ----------------------------------------
	.byte		        Fn4 
	.byte	W72
	.byte		        Gn4 
	.byte	W24
@ 133   ----------------------------------------
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		N32   , Gn4 , v092, gtp3
	.byte	W36
	.byte		N24   , Dn4 , v088
	.byte	W12
@ 134   ----------------------------------------
	.byte	W12
	.byte		        Gn3 
	.byte	W72
	.byte		        An3 
	.byte	W12
@ 135   ----------------------------------------
	.byte	W24
	.byte		        Cn4 
	.byte	W36
	.byte		        En4 
	.byte	W36
@ 136   ----------------------------------------
	.byte	W36
	.byte		        Dn4 
	.byte	W60
@ 137   ----------------------------------------
	.byte	W36
	.byte		        En4 
	.byte	W60
@ 138   ----------------------------------------
	.byte	W36
	.byte		        Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W36
@ 139   ----------------------------------------
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W48
@ 140   ----------------------------------------
	.byte	W36
	.byte		        Gn4 
	.byte	W36
	.byte		N24   
	.byte	W24
@ 141   ----------------------------------------
	.byte		N48   , Gn4 , v096
	.byte	W96
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	W96
@ 150   ----------------------------------------
	.byte	W60
	.byte		N11   , Bn2 , v084
	.byte	W12
	.byte		N23   , An2 
	.byte	W24
@ 151   ----------------------------------------
	.byte	W13
	.byte		N11   , Cs3 
	.byte	W32
	.byte	W03
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W24
@ 152   ----------------------------------------
	.byte		N12   , Cs3 
	.byte	W36
	.byte		N11   , En3 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        Cs3 
	.byte	W12
@ 153   ----------------------------------------
	.byte	W24
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
@ 154   ----------------------------------------
	.byte	W13
	.byte		        En3 
	.byte	W23
	.byte		        An2 
	.byte	W24
	.byte		        Cs3 
	.byte	W36
@ 155   ----------------------------------------
	.byte	W13
	.byte		        Cs3 , v088
	.byte	W32
	.byte	W03
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W24
@ 156   ----------------------------------------
	.byte		N12   , Cs3 
	.byte	W36
	.byte		N11   , En3 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        Cs3 
	.byte	W12
@ 157   ----------------------------------------
	.byte	W24
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
@ 158   ----------------------------------------
	.byte	W13
	.byte		        En3 
	.byte	W80
	.byte	W03
@ 159   ----------------------------------------
	.byte	W96
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte	W96
@ 162   ----------------------------------------
	.byte	W96
@ 163   ----------------------------------------
	.byte		N96   , Cs3 , v056
	.byte	W96
@ 164   ----------------------------------------
	.byte	W96
@ 165   ----------------------------------------
	.byte		        Bn4 , v072
	.byte	W96
@ 166   ----------------------------------------
	.byte		        Gs4 , v064
	.byte	W96
@ 167   ----------------------------------------
	.byte	W96
@ 168   ----------------------------------------
	.byte	W96
@ 169   ----------------------------------------
	.byte	W72
	.byte		N23   , En4 , v096
	.byte	W24
@ 170   ----------------------------------------
	.byte	W96
@ 171   ----------------------------------------
	.byte	W72
	.byte		N23   
	.byte	W24
@ 172   ----------------------------------------
	.byte		N24   , Dn4 , v100
	.byte	W24
	.byte		        Cs4 , v096
	.byte	W48
	.byte		N23   
	.byte	W24
@ 173   ----------------------------------------
	.byte	W72
	.byte		        Bn3 , v092
	.byte	W24
@ 174   ----------------------------------------
	.byte		N36   , An3 , v100
	.byte	W36
	.byte		N05   , Gs3 , v088
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N44   , Gs3 , v100, gtp3
	.byte	W48
@ 175   ----------------------------------------
	.byte	W48
	.byte		N32   , An3 , v100, gtp3
	.byte	W36
	.byte		N05   , Gs3 , v088
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 176   ----------------------------------------
	.byte		N24   , Gs3 , v100
	.byte	W24
	.byte		        An3 , v096
	.byte	W24
	.byte		        Gs3 , v084
	.byte	W24
	.byte		N23   , Fn3 
	.byte	W24
@ 177   ----------------------------------------
	.byte		N24   , Fs3 , v088
	.byte	W24
	.byte		        Gs3 , v084
	.byte	W24
	.byte		        Cs4 , v100
	.byte	W24
	.byte		N23   , Cs4 , v084
	.byte	W24
@ 178   ----------------------------------------
	.byte		N24   , Dn4 , v088
	.byte	W24
	.byte		        Cs4 , v084
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N23   , An3 
	.byte	W24
@ 179   ----------------------------------------
	.byte		N48   , Gs3 , v088
	.byte	W72
	.byte		N23   , En4 , v096
	.byte	W24
@ 180   ----------------------------------------
	.byte		N24   , Dn4 , v088
	.byte	W24
	.byte		        Cs4 , v084
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N23   , Cs4 
	.byte	W24
@ 181   ----------------------------------------
	.byte		N24   , Dn4 , v100
	.byte	W48
	.byte		        Cs4 , v084
	.byte	W24
	.byte		N23   , An4 , v096
	.byte	W24
@ 182   ----------------------------------------
	.byte		N36   
	.byte	W36
	.byte		N05   , Gs4 , v088
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N24   , Gs4 , v084
	.byte	W24
	.byte		N23   , Fn4 
	.byte	W24
@ 183   ----------------------------------------
	.byte		N48   , Fs4 , v088
	.byte	W48
	.byte		        Cs4 
	.byte	W48
@ 184   ----------------------------------------
	.byte		N24   , Dn5 , v100
	.byte	W24
	.byte		N07   , Cs5 , v092
	.byte	W08
	.byte		        Dn5 , v088
	.byte	W08
	.byte		        Cs5 
	.byte	W08
	.byte		N24   , Bn4 , v100
	.byte	W24
	.byte		N23   , An4 , v096
	.byte	W24
@ 185   ----------------------------------------
	.byte		N48   , Bn4 , v100
	.byte	W72
	.byte		N24   , Bn4 , v088
	.byte	W24
@ 186   ----------------------------------------
	.byte		        An4 
	.byte	W48
	.byte		N07   , Bn4 , v092
	.byte	W16
	.byte		        Bn4 , v088
	.byte	W08
	.byte		N23   , An4 
	.byte	W24
@ 187   ----------------------------------------
	.byte		N48   , An4 , v100
	.byte	W48
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N23   , Gs4 , v096
	.byte	W24
@ 188   ----------------------------------------
	.byte		N24   , Fs4 , v088
	.byte	W24
	.byte		        En4 , v084
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N23   
	.byte	W24
@ 189   ----------------------------------------
	.byte		N72   , Cs4 , v092
	.byte	W96
@ 190   ----------------------------------------
	.byte		N24   , Cs4 , v088
	.byte	W48
	.byte		        Bn3 , v084
	.byte	W48
@ 191   ----------------------------------------
	.byte		N72   , Cs4 , v080
	.byte	W96
@ 192   ----------------------------------------
	.byte		N24   , Dn4 , v088
	.byte	W24
	.byte		N07   , Cs4 , v084
	.byte	W08
	.byte		        Dn4 , v080
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		N24   , Bn3 , v084
	.byte	W24
	.byte		N23   , An3 
	.byte	W24
@ 193   ----------------------------------------
	.byte		N24   , Bn3 , v088
	.byte	W48
	.byte		        Bn3 , v084
	.byte	W48
@ 194   ----------------------------------------
	.byte	W48
	.byte		N07   
	.byte	W16
	.byte		        Bn3 , v080
	.byte	W08
	.byte		N23   , An3 , v084
	.byte	W24
@ 195   ----------------------------------------
	.byte		N48   , An3 , v088
	.byte	W48
	.byte		N24   , An3 , v084
	.byte	W24
	.byte		N23   , Bn3 
	.byte	W24
@ 196   ----------------------------------------
	.byte	W48
	.byte		N24   , An3 
	.byte	W24
	.byte		N23   , Bn3 
	.byte	W24
@ 197   ----------------------------------------
	.byte		TIE   , Cs4 , v080
	.byte	W96
@ 198   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 199   ----------------------------------------
	.byte		N06   , Bn3 , v056
	.byte	W13
	.byte		N05   , Fs3 , v052
	.byte	W11
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 200   ----------------------------------------
	.byte		N06   , Bn3 , v056
	.byte	W13
	.byte		N05   , Fs3 , v052
	.byte	W11
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W18
	.byte		        Bn3 
	.byte	W18
@ 201   ----------------------------------------
	.byte		N06   , Fs3 , v056
	.byte	W07
	.byte		N05   , Bn3 , v052
	.byte	W06
	.byte		        Fs3 
	.byte	W11
	.byte		N06   
	.byte	W07
	.byte		N05   , Bn3 
	.byte	W05
	.byte		        Fs3 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
	.byte		N05   
	.byte	W12
@ 202   ----------------------------------------
	.byte		N06   , Fs3 , v056
	.byte	W13
	.byte		N05   , Fs3 , v052
	.byte	W18
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
@ 203   ----------------------------------------
mus_umineko_worldend_dominator_5_203:
	.byte	W13
	.byte		N05   , Fs3 , v052
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 204   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_5_203
@ 205   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_5_203
@ 206   ----------------------------------------
	.byte	W13
	.byte		N05   , Fs3 , v052
	.byte	W18
	.byte		N05   
	.byte	W11
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W36
@ 207   ----------------------------------------
	.byte	W96
@ 208   ----------------------------------------
	.byte	W96
@ 209   ----------------------------------------
	.byte	W96
@ 210   ----------------------------------------
	.byte	W96
@ 211   ----------------------------------------
	.byte	W96
@ 212   ----------------------------------------
	.byte	W96
@ 213   ----------------------------------------
	.byte	W96
@ 214   ----------------------------------------
	.byte	W96
@ 215   ----------------------------------------
mus_umineko_worldend_dominator_5_215:
	.byte		N24   , Bn3 , v112
	.byte	W24
	.byte		        Bn3 , v108
	.byte	W24
	.byte		        Bn3 , v112
	.byte	W24
	.byte		N11   , Bn3 , v108
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
@ 216   ----------------------------------------
mus_umineko_worldend_dominator_5_216:
	.byte		N24   , An3 , v112
	.byte	W24
	.byte		        An3 , v108
	.byte	W24
	.byte		        An3 , v112
	.byte	W24
	.byte		N11   , Gn3 , v108
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 217   ----------------------------------------
mus_umineko_worldend_dominator_5_217:
	.byte		N24   , Gn3 , v112
	.byte	W24
	.byte		N11   , Gn3 , v108
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N12   , Bn4 , v120
	.byte	W36
	.byte		        An4 
	.byte	W12
	.byte	PEND
@ 218   ----------------------------------------
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   , En4 
	.byte	W24
@ 219   ----------------------------------------
	.byte		N24   , En4 , v112
	.byte	W24
	.byte		        En4 , v108
	.byte	W24
	.byte		        En4 , v112
	.byte	W24
	.byte		N11   , En4 , v108
	.byte	W24
@ 220   ----------------------------------------
	.byte		N24   , En4 , v112
	.byte	W24
	.byte		        En4 , v108
	.byte	W24
	.byte		        En4 , v112
	.byte	W24
	.byte		N11   , En4 , v108
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
@ 221   ----------------------------------------
	.byte		N24   , Bn3 , v112
	.byte	W24
	.byte		N12   , Bn3 , v108
	.byte	W24
	.byte		N11   , Bn3 , v112
	.byte	W24
	.byte		        Gn3 , v108
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 222   ----------------------------------------
	.byte		N24   , Gn3 , v112
	.byte	W24
	.byte		N11   , Fs3 , v108
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Fs3 , v112
	.byte	W24
	.byte		N23   , En3 , v108
	.byte	W24
@ 223   ----------------------------------------
	.byte		N24   , Bn4 , v120
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Cn5 
	.byte	W12
@ 224   ----------------------------------------
	.byte		N24   , An4 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W48
@ 225   ----------------------------------------
	.byte		        Gn4 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 , v112
	.byte	W24
	.byte		N11   , Gn4 , v120
	.byte	W24
@ 226   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N12   , En4 , v108
	.byte	W12
	.byte		        En4 , v120
	.byte	W12
	.byte		N24   , En4 , v112
	.byte	W24
	.byte		N11   , Bn3 , v108
	.byte	W24
@ 227   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_5_215
@ 228   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_5_216
@ 229   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_5_217
@ 230   ----------------------------------------
	.byte	W24
	.byte		N12   , Fs4 , v120
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N23   , En4 
	.byte	W24
@ 231   ----------------------------------------
	.byte	W05
	.byte		N04   , En4 , v108
	.byte	W09
	.byte		        En4 , v112
	.byte	W10
	.byte		N04   
	.byte	W09
	.byte		        En4 , v100
	.byte	W10
	.byte		N18   , En4 , v072
	.byte	W05
@ 232   ----------------------------------------
	.byte	W36
	.byte		N23   , Fs4 , v064
	.byte	W24
	.byte		        An3 
	.byte	W36
@ 233   ----------------------------------------
	.byte	W36
	.byte		        Dn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W36
@ 234   ----------------------------------------
	.byte	W36
	.byte		        An3 
	.byte	W36
	.byte		        Bn3 
	.byte	W24
@ 235   ----------------------------------------
	.byte		N24   , Fn4 , v068
	.byte	W48
	.byte		N23   , Gn4 
	.byte	W24
	.byte		        Gn4 , v064
	.byte	W24
@ 236   ----------------------------------------
	.byte		N24   , Dn4 , v068
	.byte	W72
	.byte		N23   , Dn4 , v064
	.byte	W24
@ 237   ----------------------------------------
	.byte		N24   , Bn3 , v068
	.byte	W36
	.byte		N23   , Bn3 , v064
	.byte	W36
	.byte		        Dn4 
	.byte	W24
@ 238   ----------------------------------------
	.byte		N24   , Fs3 
	.byte	W60
	.byte		        Bn3 
	.byte	W36
@ 239   ----------------------------------------
	.byte	W36
	.byte		        Dn4 
	.byte	W24
	.byte		        Fs3 
	.byte	W36
@ 240   ----------------------------------------
	.byte	W48
	.byte		N23   , An3 , v068
	.byte	W24
	.byte		        An2 , v064
	.byte	W24
@ 241   ----------------------------------------
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        En3 , v068
	.byte	W24
	.byte		        Gn4 , v064
	.byte	W24
@ 242   ----------------------------------------
	.byte		TIE   , En4 
	.byte	W96
@ 243   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W60
@ 244   ----------------------------------------
	.byte		TIE   , En4 , v056
	.byte	W96
@ 245   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W48
	.byte		N24   , Dn4 , v064
	.byte	W36
@ 246   ----------------------------------------
	.byte		        En4 
	.byte	W48
	.byte		        Dn4 
	.byte	W48
@ 247   ----------------------------------------
	.byte		N36   , En4 , v068
	.byte	W48
	.byte		        Cn4 , v076
	.byte	W48
@ 248   ----------------------------------------
	.byte	W12
	.byte		N24   , An3 , v088
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W36
@ 249   ----------------------------------------
mus_umineko_worldend_dominator_5_249:
	.byte		N24   , Cn4 , v088
	.byte	W36
	.byte		        Dn4 
	.byte	W48
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
@ 250   ----------------------------------------
	.byte	W12
	.byte		        Dn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W60
@ 251   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N11   , Cn3 , v076
	.byte	W54
	.byte		N05   
	.byte	W06
@ 252   ----------------------------------------
	.byte	W24
	.byte		N24   , En3 , v088
	.byte	W72
@ 253   ----------------------------------------
	.byte		        An3 
	.byte	W84
	.byte		N24   
	.byte	W12
@ 254   ----------------------------------------
	.byte	W72
	.byte		        As3 
	.byte	W24
@ 255   ----------------------------------------
	.byte	W12
	.byte		        Cn4 
	.byte	W36
	.byte		        As3 
	.byte	W48
@ 256   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_5_249
@ 257   ----------------------------------------
	.byte	W36
	.byte		N24   , Dn4 , v088
	.byte	W36
	.byte		N24   
	.byte	W24
@ 258   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		        An3 
	.byte	W60
@ 259   ----------------------------------------
	.byte		        Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W36
	.byte		        Gn4 
	.byte	W36
@ 260   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 261   ----------------------------------------
	.byte		        Gn3 
	.byte	W84
	.byte		        An3 
	.byte	W12
@ 262   ----------------------------------------
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 263   ----------------------------------------
	.byte	W60
	.byte		        Gn3 
	.byte	W36
@ 264   ----------------------------------------
	.byte		        Bn3 
	.byte	W72
	.byte		        Dn4 
	.byte	W24
@ 265   ----------------------------------------
	.byte		        An3 
	.byte	W60
	.byte		        Dn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W12
@ 266   ----------------------------------------
	.byte	W60
	.byte		        As3 
	.byte	W36
@ 267   ----------------------------------------
	.byte	W36
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
@ 268   ----------------------------------------
	.byte	W96
@ 269   ----------------------------------------
	.byte	W05
	.byte		VOL   , 96*mus_umineko_worldend_dominator_mvl/mxv
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_umineko_worldend_dominator_6:
	.byte	KEYSH , mus_umineko_worldend_dominator_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 96*mus_umineko_worldend_dominator_mvl/mxv
	.byte		PAN   , c_v+10
	.byte	W84
@ 001   ----------------------------------------
	.byte	W84
@ 002   ----------------------------------------
	.byte	W84
@ 003   ----------------------------------------
	.byte	W84
@ 004   ----------------------------------------
	.byte	W84
@ 005   ----------------------------------------
	.byte	W84
@ 006   ----------------------------------------
	.byte	W84
@ 007   ----------------------------------------
	.byte	W84
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
	.byte	W84
	.byte		N05   , Bn1 , v084
	.byte	W12
@ 105   ----------------------------------------
	.byte	W12
	.byte		        En2 , v076
	.byte	W18
	.byte		N05   
	.byte	W18
@ 106   ----------------------------------------
	.byte		TIE   , En2 , v080
	.byte	W96
@ 107   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 108   ----------------------------------------
	.byte		TIE   , Fn2 , v084
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 110   ----------------------------------------
	.byte		TIE   , An2 
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 112   ----------------------------------------
	.byte		TIE   , Fs2 
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 114   ----------------------------------------
	.byte		TIE   , Fn2 
	.byte	W96
@ 115   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 116   ----------------------------------------
	.byte		N24   , Gn4 , v068
	.byte	W60
	.byte		N23   , Gn4 , v064
	.byte	W24
	.byte		        An4 
	.byte	W12
@ 117   ----------------------------------------
	.byte	W48
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 118   ----------------------------------------
	.byte		        Bn3 
	.byte	W24
	.byte		        En3 
	.byte	W60
	.byte		        Cn4 
	.byte	W12
@ 119   ----------------------------------------
	.byte	W12
	.byte		        Gn3 
	.byte	W72
	.byte		        An3 
	.byte	W12
@ 120   ----------------------------------------
	.byte	W72
	.byte		N24   
	.byte	W24
@ 121   ----------------------------------------
	.byte	W24
	.byte		N36   , Dn4 , v072
	.byte	W48
	.byte		N23   , Gn4 , v076
	.byte	W24
@ 122   ----------------------------------------
mus_umineko_worldend_dominator_6_122:
	.byte		N24   , Gn4 , v088
	.byte	W24
	.byte		        An4 
	.byte	W60
	.byte		        Gn4 
	.byte	W12
	.byte	PEND
@ 123   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W84
@ 124   ----------------------------------------
	.byte		N24   
	.byte	W84
	.byte		N24   
	.byte	W12
@ 125   ----------------------------------------
	.byte	W36
	.byte		N24   
	.byte	W36
	.byte		N36   
	.byte	W24
@ 126   ----------------------------------------
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W36
@ 127   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W36
	.byte		        En4 
	.byte	W36
@ 128   ----------------------------------------
	.byte	W48
	.byte		        Fn4 
	.byte	W48
@ 129   ----------------------------------------
	.byte	W36
	.byte		        Ds4 
	.byte	W60
@ 130   ----------------------------------------
	.byte	W24
	.byte		        Fn4 
	.byte	W72
@ 131   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W48
	.byte		        Gn4 
	.byte	W36
@ 132   ----------------------------------------
	.byte	W48
	.byte		        An4 
	.byte	W48
@ 133   ----------------------------------------
	.byte		N60   , An4 , v096
	.byte	W96
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte	W12
	.byte		N24   , Gn4 , v088
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N36   , Gn4 , v092
	.byte	W48
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_6_122
@ 137   ----------------------------------------
	.byte	W12
	.byte		N24   , Gn4 , v088
	.byte	W60
	.byte		N24   
	.byte	W24
@ 138   ----------------------------------------
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N24   
	.byte	W48
@ 139   ----------------------------------------
	.byte	W12
	.byte		        Gn4 
	.byte	W24
	.byte		        An4 
	.byte	W60
@ 140   ----------------------------------------
	.byte		        Gn4 
	.byte	W24
	.byte		        An4 
	.byte	W60
	.byte		        As4 
	.byte	W12
@ 141   ----------------------------------------
	.byte	W12
	.byte		        An4 
	.byte	W84
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	W96
@ 150   ----------------------------------------
	.byte	W96
@ 151   ----------------------------------------
	.byte		N12   , An3 , v084
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gs3 
	.byte	W48
	.byte		        An3 
	.byte	W12
@ 152   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte		        Gs3 
	.byte	W48
	.byte		        An3 
	.byte	W24
@ 153   ----------------------------------------
	.byte		N12   
	.byte	W13
	.byte		N11   , Gs3 
	.byte	W44
	.byte	W03
	.byte		        An3 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 154   ----------------------------------------
	.byte		N12   , Gs3 
	.byte	W48
	.byte		N11   , An3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gs3 , v088
	.byte	W12
@ 155   ----------------------------------------
	.byte		N12   , An3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gs3 
	.byte	W48
	.byte		        An3 
	.byte	W12
@ 156   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte		        Gs3 
	.byte	W48
	.byte		        An3 
	.byte	W24
@ 157   ----------------------------------------
	.byte		N12   
	.byte	W13
	.byte		N11   , Gs3 
	.byte	W44
	.byte	W03
	.byte		        An3 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 158   ----------------------------------------
	.byte		N12   , Gs3 
	.byte	W96
@ 159   ----------------------------------------
	.byte	W96
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte	W96
@ 162   ----------------------------------------
	.byte	W96
@ 163   ----------------------------------------
	.byte		N96   , Cs4 , v068
	.byte	W96
@ 164   ----------------------------------------
	.byte		        Bn3 , v056
	.byte	W96
@ 165   ----------------------------------------
	.byte		        Bn3 , v060
	.byte	W96
@ 166   ----------------------------------------
	.byte		        Cs5 , v076
	.byte	W96
@ 167   ----------------------------------------
	.byte	W96
@ 168   ----------------------------------------
	.byte	W96
@ 169   ----------------------------------------
	.byte	W96
@ 170   ----------------------------------------
	.byte	W96
@ 171   ----------------------------------------
	.byte	W96
@ 172   ----------------------------------------
	.byte	W96
@ 173   ----------------------------------------
	.byte	W96
@ 174   ----------------------------------------
	.byte	W96
@ 175   ----------------------------------------
	.byte	W96
@ 176   ----------------------------------------
	.byte	W96
@ 177   ----------------------------------------
	.byte	W96
@ 178   ----------------------------------------
	.byte	W96
@ 179   ----------------------------------------
	.byte	W96
@ 180   ----------------------------------------
	.byte		N24   , An4 , v100
	.byte	W24
	.byte		        Gs4 , v096
	.byte	W24
	.byte		        Fs4 , v100
	.byte	W24
	.byte		N23   , En4 , v096
	.byte	W24
@ 181   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Fs4 , v100
	.byte	W24
	.byte		N23   , En4 , v084
	.byte	W24
@ 182   ----------------------------------------
	.byte		N36   , En4 , v088
	.byte	W48
	.byte		N24   , Bn4 , v100
	.byte	W24
	.byte		N23   , Gs4 , v096
	.byte	W24
@ 183   ----------------------------------------
	.byte		N48   , As4 , v088
	.byte	W72
	.byte		N23   , En4 , v084
	.byte	W24
@ 184   ----------------------------------------
	.byte		N24   , Fs4 , v088
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
@ 185   ----------------------------------------
	.byte		        Bn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Gs3 
	.byte	W48
@ 186   ----------------------------------------
	.byte	W48
	.byte		        An3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 187   ----------------------------------------
	.byte		N48   , An3 
	.byte	W48
	.byte		        Fs3 
	.byte	W48
@ 188   ----------------------------------------
	.byte	W48
	.byte		N24   , Cs5 , v100
	.byte	W48
@ 189   ----------------------------------------
	.byte		N72   , An4 , v088
	.byte	W72
	.byte		N07   , An4 , v092
	.byte	W08
	.byte		        Bn4 , v088
	.byte	W08
	.byte		        An4 
	.byte	W08
@ 190   ----------------------------------------
	.byte		N24   , Gs4 , v100
	.byte	W24
	.byte		        An4 , v096
	.byte	W24
	.byte		        Bn4 , v100
	.byte	W24
	.byte		N23   , Gs4 , v096
	.byte	W24
@ 191   ----------------------------------------
	.byte		N72   , As4 , v080
	.byte	W96
@ 192   ----------------------------------------
	.byte	W48
	.byte		N24   , Bn4 , v100
	.byte	W24
	.byte		N23   , An4 , v096
	.byte	W24
@ 193   ----------------------------------------
	.byte	W24
	.byte		N24   , En4 
	.byte	W24
	.byte		        En4 , v084
	.byte	W24
	.byte		N23   
	.byte	W24
@ 194   ----------------------------------------
	.byte		N24   , Dn4 , v088
	.byte	W24
	.byte		N07   , Cs4 , v084
	.byte	W08
	.byte		        Dn4 , v080
	.byte	W08
	.byte		        Cs4 
	.byte	W16
	.byte		N07   
	.byte	W16
	.byte		N23   , Cs4 , v084
	.byte	W24
@ 195   ----------------------------------------
	.byte		N48   , Dn4 , v096
	.byte	W48
	.byte		N24   , Dn4 , v084
	.byte	W24
	.byte		N23   
	.byte	W24
@ 196   ----------------------------------------
	.byte		N24   , Cs4 , v088
	.byte	W24
	.byte		N07   , Cs4 , v084
	.byte	W08
	.byte		        Dn4 , v080
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		N24   , Dn4 , v084
	.byte	W24
	.byte		N23   , En4 
	.byte	W24
@ 197   ----------------------------------------
	.byte		TIE   , Fs4 , v080
	.byte	W96
@ 198   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 199   ----------------------------------------
	.byte		N24   , Fs4 , v068
	.byte	W24
	.byte		        Fs4 , v064
	.byte	W24
	.byte		        Fs4 , v068
	.byte	W24
	.byte		N11   , Fs4 , v064
	.byte	W24
@ 200   ----------------------------------------
	.byte		N24   , En4 , v068
	.byte	W24
	.byte		        En4 , v064
	.byte	W24
	.byte		        En4 , v068
	.byte	W24
	.byte		N11   , Dn4 , v064
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 201   ----------------------------------------
	.byte		N24   , Dn4 , v068
	.byte	W24
	.byte		N11   , Dn4 , v064
	.byte	W12
	.byte		        En4 
	.byte	W18
	.byte		N05   , Bn3 , v052
	.byte	W24
	.byte		N05   
	.byte	W18
@ 202   ----------------------------------------
	.byte	W07
	.byte		N05   
	.byte	W28
	.byte	W01
	.byte		N11   , Bn3 , v064
	.byte	W12
	.byte		N06   , Bn3 , v052
	.byte	W24
	.byte		N05   
	.byte	W24
@ 203   ----------------------------------------
mus_umineko_worldend_dominator_6_203:
	.byte	W07
	.byte		N05   , Bn3 , v052
	.byte	W44
	.byte	W03
	.byte		N05   
	.byte	W42
	.byte	PEND
@ 204   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_6_203
@ 205   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_6_203
@ 206   ----------------------------------------
	.byte	W07
	.byte		N05   , Bn3 , v052
	.byte	W40
	.byte	W01
	.byte		N06   
	.byte	W48
@ 207   ----------------------------------------
	.byte		N24   , Fs4 , v088
	.byte	W24
	.byte		        Fs4 , v084
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Gn4 , v080
	.byte	W12
@ 208   ----------------------------------------
	.byte		N24   , En4 , v088
	.byte	W24
	.byte		        En4 , v084
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        Cs4 , v080
	.byte	W12
@ 209   ----------------------------------------
	.byte		N24   , Dn4 , v088
	.byte	W24
	.byte		N11   , Dn4 , v084
	.byte	W12
	.byte		        En4 , v080
	.byte	W12
	.byte		        Fs4 , v084
	.byte	W24
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 , v080
	.byte	W12
@ 210   ----------------------------------------
	.byte		N24   , Dn4 , v088
	.byte	W24
	.byte		N11   , Cs4 , v084
	.byte	W12
	.byte		        Bn3 , v080
	.byte	W12
	.byte		N24   , Cs4 , v084
	.byte	W24
	.byte		N11   , Bn3 
	.byte	W12
	.byte		N05   , Bn3 , v088
	.byte	W12
@ 211   ----------------------------------------
	.byte		N24   , Fs5 , v096
	.byte	W24
	.byte		        Fs5 , v092
	.byte	W24
	.byte		        Fs5 , v096
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Gn5 
	.byte	W12
@ 212   ----------------------------------------
	.byte		N24   , En5 , v100
	.byte	W24
	.byte		        En5 , v092
	.byte	W24
	.byte		        En5 , v100
	.byte	W24
	.byte		N11   , Dn5 , v096
	.byte	W12
	.byte		N12   , Cs5 
	.byte	W12
@ 213   ----------------------------------------
	.byte		N24   , Dn5 , v100
	.byte	W24
	.byte		N12   , Dn5 , v096
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Fs5 , v100
	.byte	W12
	.byte		N03   , En5 , v088
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N11   , Dn5 , v096
	.byte	W12
	.byte		N12   , En5 
	.byte	W12
@ 214   ----------------------------------------
	.byte		N13   , Dn5 , v100
	.byte	W24
	.byte		N12   , Dn5 , v104
	.byte	W12
	.byte		        En5 , v108
	.byte	W12
	.byte		N24   , Fs5 , v112
	.byte	W48
@ 215   ----------------------------------------
mus_umineko_worldend_dominator_6_215:
	.byte		N24   , Bn4 , v120
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Cn5 
	.byte	W12
	.byte	PEND
@ 216   ----------------------------------------
mus_umineko_worldend_dominator_6_216:
	.byte		N24   , An4 , v120
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W48
	.byte	PEND
@ 217   ----------------------------------------
mus_umineko_worldend_dominator_6_217:
	.byte		N24   , Gn4 , v120
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 , v112
	.byte	W12
	.byte		N03   , An4 , v116
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N11   , Gn4 , v120
	.byte	W24
	.byte	PEND
@ 218   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N12   , En4 , v108
	.byte	W12
	.byte		        En4 , v120
	.byte	W12
	.byte		N24   , En4 , v112
	.byte	W24
	.byte		N11   , Bn3 , v108
	.byte	W12
	.byte		N12   , Bn3 , v116
	.byte	W12
@ 219   ----------------------------------------
	.byte		N24   , Bn3 , v112
	.byte	W24
	.byte		        Bn3 , v108
	.byte	W24
	.byte		        Bn3 , v112
	.byte	W24
	.byte		N11   , Bn3 , v108
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 220   ----------------------------------------
	.byte		N24   , An3 , v112
	.byte	W24
	.byte		        An3 , v108
	.byte	W24
	.byte		        An3 , v112
	.byte	W24
	.byte		N11   , Gn3 , v108
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 221   ----------------------------------------
	.byte		N24   , Gn3 , v112
	.byte	W24
	.byte		N11   , Gn3 , v108
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N12   , Bn4 , v120
	.byte	W36
	.byte		        An4 
	.byte	W12
@ 222   ----------------------------------------
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N23   , En4 
	.byte	W24
@ 223   ----------------------------------------
	.byte		N24   , En4 , v112
	.byte	W24
	.byte		        En4 , v108
	.byte	W24
	.byte		        En4 , v112
	.byte	W24
	.byte		N11   , En4 , v108
	.byte	W24
@ 224   ----------------------------------------
	.byte		N24   , En4 , v112
	.byte	W24
	.byte		        En4 , v108
	.byte	W24
	.byte		        En4 , v112
	.byte	W24
	.byte		N11   , En4 , v108
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
@ 225   ----------------------------------------
	.byte		N24   , Bn3 , v112
	.byte	W24
	.byte		N12   , Bn3 , v108
	.byte	W24
	.byte		N11   , Bn3 , v112
	.byte	W24
	.byte		        Gn3 , v108
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 226   ----------------------------------------
	.byte		N24   , Gn3 , v112
	.byte	W24
	.byte		N11   , Fs3 , v108
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Fs3 , v112
	.byte	W24
	.byte		N11   , En3 , v108
	.byte	W24
@ 227   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_6_215
@ 228   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_6_216
@ 229   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_6_217
@ 230   ----------------------------------------
	.byte		N24   , Gn4 , v120
	.byte	W24
	.byte		N12   , En4 , v108
	.byte	W12
	.byte		        En4 , v120
	.byte	W12
	.byte		N24   , En4 , v112
	.byte	W24
	.byte		N23   , Bn3 , v108
	.byte	W24
@ 231   ----------------------------------------
	.byte		N05   , Bn3 , v116
	.byte	W09
	.byte		N05   
	.byte	W10
	.byte		        Bn3 , v120
	.byte	W09
	.byte		N05   
	.byte	W10
	.byte		        Bn3 , v092
	.byte	W10
@ 232   ----------------------------------------
	.byte		N36   , Bn3 , v064
	.byte	W48
	.byte		N23   , Dn4 , v068
	.byte	W24
	.byte		        Gn3 , v064
	.byte	W24
@ 233   ----------------------------------------
	.byte	W48
	.byte		        An3 , v068
	.byte	W36
	.byte		N12   , Bn3 , v064
	.byte	W12
@ 234   ----------------------------------------
	.byte		N92   , Bn3 , v064, gtp3
	.byte	W96
@ 235   ----------------------------------------
	.byte		N60   
	.byte	W60
	.byte		N23   
	.byte	W24
	.byte		        Fn4 
	.byte	W12
@ 236   ----------------------------------------
	.byte	W36
	.byte		        Gn4 
	.byte	W24
	.byte		N23   
	.byte	W36
@ 237   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		        Gn4 , v068
	.byte	W48
@ 238   ----------------------------------------
	.byte	W12
	.byte		N24   , An4 , v064
	.byte	W24
	.byte		N24   
	.byte	W48
	.byte		N24   
	.byte	W12
@ 239   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W60
	.byte		N24   
	.byte	W24
@ 240   ----------------------------------------
	.byte		        Gn4 , v068
	.byte	W24
	.byte		N23   , Gn4 , v064
	.byte	W60
	.byte		N23   
	.byte	W12
@ 241   ----------------------------------------
	.byte	W13
	.byte		N23   
	.byte	W56
	.byte	W03
	.byte		N36   , Dn4 
	.byte	W24
@ 242   ----------------------------------------
	.byte	W13
	.byte		N23   
	.byte	W23
	.byte		        Gn3 
	.byte	W36
	.byte		N23   
	.byte	W24
@ 243   ----------------------------------------
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte		        Dn4 
	.byte	W12
@ 244   ----------------------------------------
	.byte	W12
	.byte		        An3 
	.byte	W36
	.byte		        Bn3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 245   ----------------------------------------
	.byte		        Bn3 
	.byte	W36
	.byte		N24   
	.byte	W36
	.byte		N24   
	.byte	W24
@ 246   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte		        En3 
	.byte	W12
@ 247   ----------------------------------------
	.byte	W96
@ 248   ----------------------------------------
	.byte	W48
	.byte		        An3 , v088
	.byte	W24
	.byte		        En3 
	.byte	W24
@ 249   ----------------------------------------
	.byte	W48
	.byte		        An3 
	.byte	W24
	.byte		N05   , As2 , v076
	.byte	W12
	.byte		N11   
	.byte	W12
@ 250   ----------------------------------------
	.byte	W36
	.byte		        Cn3 
	.byte	W12
	.byte		N24   , En3 , v088
	.byte	W36
	.byte		N11   , Cn3 , v076
	.byte	W12
@ 251   ----------------------------------------
	.byte	W24
	.byte		N24   , En3 , v088
	.byte	W72
@ 252   ----------------------------------------
	.byte	W12
	.byte		        An3 
	.byte	W24
	.byte		N11   , Dn3 , v076
	.byte	W48
	.byte		N11   
	.byte	W12
@ 253   ----------------------------------------
	.byte	W12
	.byte		N24   , Gn3 , v088
	.byte	W24
	.byte		N11   , Dn3 , v076
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 254   ----------------------------------------
	.byte		N24   , Gn3 , v088
	.byte	W36
	.byte		N11   , Ds3 , v076
	.byte	W48
	.byte		N11   
	.byte	W12
@ 255   ----------------------------------------
	.byte	W36
	.byte		N11   
	.byte	W36
	.byte		N24   , Ds3 , v088
	.byte	W24
@ 256   ----------------------------------------
	.byte	W48
	.byte		        An3 
	.byte	W48
@ 257   ----------------------------------------
	.byte	W48
	.byte		N24   
	.byte	W36
	.byte		N24   
	.byte	W12
@ 258   ----------------------------------------
	.byte	W24
	.byte		        Bn3 
	.byte	W36
	.byte		        Cn4 
	.byte	W24
	.byte		        En4 
	.byte	W12
@ 259   ----------------------------------------
	.byte	W12
	.byte		        Cn4 
	.byte	W36
	.byte		        Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W24
@ 260   ----------------------------------------
	.byte		        An3 
	.byte	W36
	.byte		        Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W36
@ 261   ----------------------------------------
	.byte		N60   , Dn4 , v096
	.byte	W72
	.byte		N24   , Dn4 , v088
	.byte	W24
@ 262   ----------------------------------------
	.byte	W12
	.byte		        Cn4 
	.byte	W84
@ 263   ----------------------------------------
	.byte		N24   
	.byte	W48
	.byte		N24   
	.byte	W36
	.byte		N24   
	.byte	W12
@ 264   ----------------------------------------
	.byte	W12
	.byte		        An3 
	.byte	W72
	.byte		        Gn3 
	.byte	W12
@ 265   ----------------------------------------
	.byte	W72
	.byte		        An3 
	.byte	W24
@ 266   ----------------------------------------
	.byte	W12
	.byte		        As3 
	.byte	W36
	.byte		        Dn4 
	.byte	W48
@ 267   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N44   , Fs4 , v092, gtp3
	.byte	W48
@ 268   ----------------------------------------
	.byte	W96
@ 269   ----------------------------------------
	.byte	W05
	.byte		VOL   , 96*mus_umineko_worldend_dominator_mvl/mxv
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_umineko_worldend_dominator_7:
	.byte	KEYSH , mus_umineko_worldend_dominator_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 80*mus_umineko_worldend_dominator_mvl/mxv
	.byte		PAN   , c_v+17
	.byte	W84
@ 001   ----------------------------------------
	.byte	W84
@ 002   ----------------------------------------
	.byte	W84
@ 003   ----------------------------------------
	.byte	W84
@ 004   ----------------------------------------
	.byte	W84
@ 005   ----------------------------------------
	.byte	W84
@ 006   ----------------------------------------
	.byte	W84
@ 007   ----------------------------------------
	.byte	W84
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
	.byte	W60
	.byte		N11   , Bn2 , v072
	.byte	W12
	.byte		N23   , An2 
	.byte	W24
@ 025   ----------------------------------------
	.byte		N12   , An3 
	.byte	W13
	.byte		N11   , Cs3 
	.byte	W11
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 , v076
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N12   , Cs3 
	.byte	W13
	.byte		N11   , An3 
	.byte	W11
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W24
	.byte		        An2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 027   ----------------------------------------
	.byte		N12   , An3 
	.byte	W13
	.byte		N11   , Gs3 
	.byte	W11
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An3 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 028   ----------------------------------------
	.byte		N12   , Gs3 
	.byte	W13
	.byte		N11   , En3 
	.byte	W23
	.byte		        An2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 029   ----------------------------------------
	.byte		N12   , An3 
	.byte	W13
	.byte		N11   , Cs3 
	.byte	W11
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 030   ----------------------------------------
	.byte		N12   , Cs3 
	.byte	W13
	.byte		N11   , An3 , v080
	.byte	W11
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W24
	.byte		        An2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 031   ----------------------------------------
	.byte		N12   , An3 
	.byte	W13
	.byte		N11   , Gs3 
	.byte	W11
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An3 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 032   ----------------------------------------
	.byte		N12   , Gs3 
	.byte	W13
	.byte		N11   , En3 
	.byte	W80
	.byte	W03
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte		N05   , Gs4 , v056
	.byte	W05
	.byte		N04   , An4 , v052
	.byte	W04
	.byte		N05   , Gs4 , v056
	.byte	W05
	.byte		N04   , An4 , v052
	.byte	W05
	.byte		N05   , Gs4 , v060
	.byte	W05
	.byte		N04   , An4 , v052
	.byte	W04
	.byte		N05   , Gs4 , v060
	.byte	W05
	.byte		N04   , An4 , v056
	.byte	W05
	.byte		N05   , Gs4 , v060
	.byte	W05
	.byte		        An4 , v056
	.byte	W05
	.byte		N04   , Gs4 , v064
	.byte	W04
	.byte		N05   , An4 , v056
	.byte	W05
	.byte		N04   , Gs4 , v064
	.byte	W05
	.byte		N05   , An4 , v060
	.byte	W05
	.byte		N04   , Gs4 , v064
	.byte	W04
	.byte		N05   , An4 , v060
	.byte	W05
	.byte		        Gs4 , v064
	.byte	W05
	.byte		N04   , An4 , v060
	.byte	W05
	.byte		N05   , Gs4 , v068
	.byte	W05
	.byte		N06   , An4 , v064
	.byte	W05
@ 036   ----------------------------------------
	.byte	W05
	.byte		N04   
	.byte	W09
	.byte		N04   
	.byte	W10
	.byte		N04   
	.byte	W09
	.byte		        An4 , v068
	.byte	W10
	.byte		N05   
	.byte	W09
	.byte		N05   
	.byte	W10
	.byte		        An4 , v064
	.byte	W09
	.byte		        An4 , v060
	.byte	W10
	.byte		N04   , An4 , v056
	.byte	W10
	.byte		N06   , An4 , v052
	.byte	W05
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte		N96   , En4 , v048
	.byte	W96
@ 039   ----------------------------------------
	.byte		        Cs4 , v052
	.byte	W96
@ 040   ----------------------------------------
	.byte		        Cs4 , v056
	.byte	W96
@ 041   ----------------------------------------
	.byte		N48   , Fs2 , v076
	.byte	W66
	.byte		N05   , Fs2 , v068
	.byte	W18
	.byte		N05   
	.byte	W12
@ 042   ----------------------------------------
	.byte	W18
	.byte		N06   , Gs2 
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
@ 043   ----------------------------------------
	.byte	W18
	.byte		N06   , As2 
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
@ 044   ----------------------------------------
mus_umineko_worldend_dominator_7_044:
	.byte	W18
	.byte		N06   , Bn2 , v068
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 045   ----------------------------------------
	.byte	W18
	.byte		N06   , En2 
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
@ 046   ----------------------------------------
	.byte	W18
	.byte		N06   , An2 
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
@ 047   ----------------------------------------
	.byte	W18
	.byte		N06   , Dn2 
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		N17   , Bn1 , v072
	.byte	W18
	.byte		N05   , Bn2 , v068
	.byte	W18
	.byte		N05   
	.byte	W12
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte		N48   , Fs2 , v076
	.byte	W84
	.byte		N05   , Fs2 , v068
	.byte	W12
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_044
@ 053   ----------------------------------------
	.byte		N48   , Bn2 , v076
	.byte	W72
	.byte		N23   , En4 , v088
	.byte	W24
@ 054   ----------------------------------------
	.byte		N24   , Dn4 , v076
	.byte	W24
	.byte		        Cs4 , v072
	.byte	W24
	.byte		        Bn3 , v076
	.byte	W24
	.byte		N23   , Cs4 , v072
	.byte	W24
@ 055   ----------------------------------------
	.byte		N24   , An3 , v076
	.byte	W24
	.byte		        Bn3 , v072
	.byte	W24
	.byte		        Cs4 , v076
	.byte	W24
	.byte		N23   , An4 , v088
	.byte	W24
@ 056   ----------------------------------------
	.byte		N36   
	.byte	W36
	.byte		N05   , Gs4 , v080
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N24   , Gs4 , v076
	.byte	W24
	.byte		N23   , Fn4 , v072
	.byte	W24
@ 057   ----------------------------------------
	.byte		N48   , Fs4 , v080
	.byte	W48
	.byte		        Cs4 
	.byte	W48
@ 058   ----------------------------------------
	.byte		N24   , Dn5 , v092
	.byte	W24
	.byte		N07   , Cs5 , v080
	.byte	W08
	.byte		        Dn5 
	.byte	W08
	.byte		        Cs5 
	.byte	W08
	.byte		N24   , Bn4 , v088
	.byte	W24
	.byte		N23   , An4 
	.byte	W24
@ 059   ----------------------------------------
	.byte		N48   , Bn4 , v092
	.byte	W48
	.byte		N24   , En4 , v088
	.byte	W24
	.byte		N23   , En4 , v072
	.byte	W24
@ 060   ----------------------------------------
	.byte		N24   , Cs4 , v080
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 061   ----------------------------------------
	.byte		N48   , An3 
	.byte	W48
	.byte		        Fs3 
	.byte	W48
@ 062   ----------------------------------------
mus_umineko_worldend_dominator_7_062:
	.byte		N24   , An4 , v092
	.byte	W24
	.byte		        Bn4 , v088
	.byte	W24
	.byte		        Fs4 , v076
	.byte	W24
	.byte		N23   , An4 , v088
	.byte	W24
	.byte	PEND
@ 063   ----------------------------------------
	.byte		N72   , Fs4 , v084
	.byte	W96
@ 064   ----------------------------------------
mus_umineko_worldend_dominator_7_064:
	.byte	W24
	.byte		N24   , En4 , v072
	.byte	W24
	.byte		        En4 , v076
	.byte	W24
	.byte		N23   , Fn4 , v072
	.byte	W24
	.byte	PEND
@ 065   ----------------------------------------
mus_umineko_worldend_dominator_7_065:
	.byte		N72   , Fs4 , v072
	.byte	W72
	.byte		N23   , En4 
	.byte	W24
	.byte	PEND
@ 066   ----------------------------------------
mus_umineko_worldend_dominator_7_066:
	.byte		N24   , Fs4 , v076
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N23   , Fs4 , v072
	.byte	W24
	.byte	PEND
@ 067   ----------------------------------------
	.byte		N24   , Dn4 , v076
	.byte	W24
	.byte		        Cs4 , v072
	.byte	W24
	.byte		        Bn3 , v076
	.byte	W24
	.byte		N23   , En5 , v088
	.byte	W24
@ 068   ----------------------------------------
	.byte		N24   , Dn5 , v092
	.byte	W24
	.byte		N08   , Cs5 , v088
	.byte	W08
	.byte		        Dn5 , v084
	.byte	W08
	.byte		        Cs5 
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N23   , En4 , v072
	.byte	W24
@ 069   ----------------------------------------
	.byte		N48   , Fs4 , v088
	.byte	W96
@ 070   ----------------------------------------
	.byte		N24   , Fs4 , v076
	.byte	W48
	.byte		        An4 , v088
	.byte	W48
@ 071   ----------------------------------------
	.byte		TIE   , Gs4 , v072
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 073   ----------------------------------------
	.byte	W24
	.byte		N24   , Fs4 , v056
	.byte	W24
	.byte		        Fs4 , v060
	.byte	W24
	.byte		N11   , Fs4 , v056
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 074   ----------------------------------------
mus_umineko_worldend_dominator_7_074:
	.byte		N24   , En4 , v060
	.byte	W24
	.byte		        En4 , v056
	.byte	W24
	.byte		        En4 , v060
	.byte	W24
	.byte		N11   , Dn4 , v056
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PEND
@ 075   ----------------------------------------
mus_umineko_worldend_dominator_7_075:
	.byte		N24   , Dn4 , v060
	.byte	W24
	.byte		N11   , Dn4 , v056
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 , v060
	.byte	W12
	.byte		N03   , En4 , v056
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		N04   , En4 
	.byte	W04
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte	PEND
@ 076   ----------------------------------------
	.byte		N24   , Dn4 , v060
	.byte	W24
	.byte		N11   , Cs4 , v056
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N06   , Bn3 , v048
	.byte	W12
	.byte		N05   , Fs3 
	.byte	W12
	.byte		N23   , Bn3 , v056
	.byte	W24
@ 077   ----------------------------------------
mus_umineko_worldend_dominator_7_077:
	.byte	W07
	.byte		N05   , Bn3 , v048
	.byte	W24
	.byte		N05   
	.byte	W23
	.byte		N05   
	.byte	W24
	.byte		N05   
	.byte	W18
	.byte	PEND
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_077
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_077
@ 080   ----------------------------------------
	.byte	W07
	.byte		N05   , Bn3 , v048
	.byte	W28
	.byte	W01
	.byte		N11   , Bn3 , v056
	.byte	W12
	.byte		N06   , Bn3 , v048
	.byte	W24
	.byte		N05   , Bn3 , v056
	.byte	W24
@ 081   ----------------------------------------
mus_umineko_worldend_dominator_7_081:
	.byte		N24   , Fs4 , v076
	.byte	W24
	.byte		        Fs4 , v072
	.byte	W24
	.byte		        Fs4 , v076
	.byte	W24
	.byte		N11   , Fs4 , v072
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte	PEND
@ 082   ----------------------------------------
mus_umineko_worldend_dominator_7_082:
	.byte		N24   , En4 , v076
	.byte	W24
	.byte		        En4 , v072
	.byte	W24
	.byte		        En4 , v076
	.byte	W24
	.byte		N11   , Dn4 , v072
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PEND
@ 083   ----------------------------------------
mus_umineko_worldend_dominator_7_083:
	.byte		N24   , Dn4 , v076
	.byte	W24
	.byte		N11   , Dn4 , v072
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 , v076
	.byte	W24
	.byte		        Dn4 , v072
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte	PEND
@ 084   ----------------------------------------
	.byte		N24   , Dn4 , v076
	.byte	W24
	.byte		N11   , Cs4 , v072
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , Cs4 , v076
	.byte	W24
	.byte		N11   , Bn3 , v072
	.byte	W12
	.byte		N05   , Bn3 , v080
	.byte	W12
@ 085   ----------------------------------------
	.byte		N24   , Fs5 , v088
	.byte	W24
	.byte		        Fs5 , v084
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   , Fs5 , v088
	.byte	W12
	.byte		N12   , Gn5 , v084
	.byte	W12
@ 086   ----------------------------------------
	.byte		N24   , En5 , v092
	.byte	W24
	.byte		        En5 , v084
	.byte	W24
	.byte		        En5 , v088
	.byte	W24
	.byte		N11   , Dn5 
	.byte	W12
	.byte		N12   , Cs5 , v084
	.byte	W12
@ 087   ----------------------------------------
	.byte		N24   , Dn5 , v092
	.byte	W24
	.byte		N12   , Dn5 , v088
	.byte	W12
	.byte		        En5 , v084
	.byte	W12
	.byte		        Fs5 , v088
	.byte	W12
	.byte		N03   , En5 , v080
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N11   , Dn5 , v088
	.byte	W12
	.byte		N12   , En5 , v084
	.byte	W12
@ 088   ----------------------------------------
	.byte		N13   , Dn5 , v092
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        En5 , v096
	.byte	W12
	.byte		N24   , Fs5 , v100
	.byte	W48
@ 089   ----------------------------------------
mus_umineko_worldend_dominator_7_089:
	.byte		N24   , Gn4 , v100
	.byte	W24
	.byte		        Gn4 , v096
	.byte	W24
	.byte		        Gn4 , v100
	.byte	W24
	.byte		N11   , Gn4 , v096
	.byte	W24
	.byte	PEND
@ 090   ----------------------------------------
mus_umineko_worldend_dominator_7_090:
	.byte		N24   , Gn4 , v100
	.byte	W24
	.byte		        Gn4 , v096
	.byte	W24
	.byte		        Gn4 , v100
	.byte	W24
	.byte		N11   , Gn4 , v108
	.byte	W12
	.byte		N12   , Fs4 
	.byte	W12
	.byte	PEND
@ 091   ----------------------------------------
mus_umineko_worldend_dominator_7_091:
	.byte		N24   , En4 , v100
	.byte	W24
	.byte		N12   , En4 , v096
	.byte	W24
	.byte		N11   , En4 , v100
	.byte	W16
	.byte		N03   , Dn4 , v104
	.byte	W32
	.byte	PEND
@ 092   ----------------------------------------
	.byte		N24   , En4 , v100
	.byte	W24
	.byte		N11   , Bn3 , v096
	.byte	W24
	.byte		N24   , Bn3 , v100
	.byte	W24
	.byte		N11   , Gn3 , v096
	.byte	W24
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_089
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_090
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_091
@ 096   ----------------------------------------
mus_umineko_worldend_dominator_7_096:
	.byte		N24   , En4 , v100
	.byte	W24
	.byte		N11   , Bn3 , v096
	.byte	W24
	.byte		N24   , Bn3 , v100
	.byte	W24
	.byte		N23   , Gn3 , v096
	.byte	W24
	.byte	PEND
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_089
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_090
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_091
@ 100   ----------------------------------------
	.byte		N24   , En4 , v100
	.byte	W24
	.byte		N11   , Bn3 , v096
	.byte	W24
	.byte		N24   , Bn3 , v100
	.byte	W24
	.byte		N11   , Gn3 , v096
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_089
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_090
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_091
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_096
@ 105   ----------------------------------------
	.byte	W48
@ 106   ----------------------------------------
	.byte		N24   , Gn4 , v060
	.byte	W24
	.byte		N23   , Gn4 , v056
	.byte	W60
	.byte		N23   
	.byte	W12
@ 107   ----------------------------------------
	.byte	W13
	.byte		N23   
	.byte	W56
	.byte	W03
	.byte		N23   
	.byte	W24
@ 108   ----------------------------------------
	.byte		N24   , Gn4 , v060
	.byte	W24
	.byte		N23   , Dn4 , v056
	.byte	W24
	.byte		        Gn3 , v060
	.byte	W48
@ 109   ----------------------------------------
	.byte	W24
	.byte		        An3 , v056
	.byte	W24
	.byte		N60   , Cn4 
	.byte	W48
@ 110   ----------------------------------------
	.byte	W24
	.byte		N23   , Gn3 
	.byte	W72
@ 111   ----------------------------------------
	.byte	W13
	.byte		N23   
	.byte	W68
	.byte	W03
	.byte		        An3 
	.byte	W12
@ 112   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 113   ----------------------------------------
	.byte	W48
	.byte		N24   
	.byte	W36
	.byte		N24   
	.byte	W12
@ 114   ----------------------------------------
	.byte	W13
	.byte		N23   
	.byte	W23
	.byte		        Bn3 
	.byte	W24
	.byte		        En3 
	.byte	W36
@ 115   ----------------------------------------
	.byte		N36   , En4 
	.byte	W36
	.byte		N11   , An3 
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N23   
	.byte	W12
@ 116   ----------------------------------------
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Dn3 , v060
	.byte	W48
@ 117   ----------------------------------------
	.byte		TIE   , Fn4 , v056
	.byte	W96
@ 118   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W24
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N48   , An4 
	.byte	W36
@ 119   ----------------------------------------
	.byte	W48
	.byte		N56   , Cn5 , v060, gtp3
	.byte	W48
@ 120   ----------------------------------------
	.byte	W96
@ 121   ----------------------------------------
	.byte		N36   , En5 , v072
	.byte	W72
	.byte		N32   , Gn5 , v084, gtp3
	.byte	W24
@ 122   ----------------------------------------
	.byte	W96
@ 123   ----------------------------------------
mus_umineko_worldend_dominator_7_123:
	.byte	W48
	.byte		N56   , Dn5 , v084, gtp3
	.byte	W48
	.byte	PEND
@ 124   ----------------------------------------
	.byte	W96
@ 125   ----------------------------------------
	.byte		N60   , Cn5 
	.byte	W96
@ 126   ----------------------------------------
	.byte		TIE   , En5 , v080
	.byte	W96
@ 127   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W36
	.byte		N56   , Gn5 , v084, gtp3
	.byte	W48
@ 128   ----------------------------------------
	.byte	W96
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_123
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte		N36   , Fn5 , v084
	.byte	W48
	.byte		        Dn5 
	.byte	W48
@ 132   ----------------------------------------
	.byte		N60   
	.byte	W96
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte		TIE   , Dn5 , v080
	.byte	W96
@ 135   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W60
	.byte		N32   , Cn5 , v080, gtp3
	.byte	W24
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte		N60   , Cn5 , v084
	.byte	W96
@ 138   ----------------------------------------
	.byte		TIE   , En5 , v080
	.byte	W96
@ 139   ----------------------------------------
	.byte	W60
	.byte		EOT   
	.byte	W36
@ 140   ----------------------------------------
	.byte		TIE   , Fn5 
	.byte	W96
@ 141   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W84
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	W96
@ 150   ----------------------------------------
	.byte	W96
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	W96
@ 153   ----------------------------------------
	.byte	W96
@ 154   ----------------------------------------
	.byte	W96
@ 155   ----------------------------------------
	.byte	W96
@ 156   ----------------------------------------
	.byte	W96
@ 157   ----------------------------------------
	.byte	W96
@ 158   ----------------------------------------
	.byte	W96
@ 159   ----------------------------------------
	.byte	W96
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte	W96
@ 162   ----------------------------------------
	.byte		N05   , Gs4 , v056
	.byte	W09
	.byte		        Gs4 , v068
	.byte	W10
	.byte		        Gs4 , v072
	.byte	W09
	.byte		N05   
	.byte	W10
	.byte		N05   
	.byte	W10
	.byte		N04   
	.byte	W09
	.byte		N04   
	.byte	W10
	.byte		        Gs4 , v068
	.byte	W09
	.byte		N05   , Gs4 , v064
	.byte	W10
	.byte		        Gs4 , v060
	.byte	W10
@ 163   ----------------------------------------
	.byte	W96
@ 164   ----------------------------------------
	.byte		N96   , En4 , v048
	.byte	W96
@ 165   ----------------------------------------
	.byte		        Cs4 , v052
	.byte	W96
@ 166   ----------------------------------------
	.byte		        Cs4 , v056
	.byte	W96
@ 167   ----------------------------------------
mus_umineko_worldend_dominator_7_167:
	.byte		N48   , Cs3 , v092
	.byte	W48
	.byte		N32   , Cs3 , v076, gtp3
	.byte	W48
	.byte	PEND
@ 168   ----------------------------------------
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Fn3 , v072
	.byte	W24
	.byte		        Fn3 , v076
	.byte	W24
	.byte		N23   , Fn3 , v072
	.byte	W24
@ 169   ----------------------------------------
	.byte		N24   , Fs3 , v076
	.byte	W24
	.byte		        Fs3 , v072
	.byte	W24
	.byte		        Fs3 , v076
	.byte	W48
@ 170   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		        Fs3 , v072
	.byte	W24
	.byte		        Fs3 , v076
	.byte	W24
	.byte		N23   , Fs3 , v072
	.byte	W24
@ 171   ----------------------------------------
	.byte		N48   , En3 , v076
	.byte	W48
	.byte		N24   , En3 , v088
	.byte	W48
@ 172   ----------------------------------------
	.byte		        En3 , v076
	.byte	W24
	.byte		        En3 , v072
	.byte	W24
	.byte		        En3 , v076
	.byte	W24
	.byte		N23   , En3 , v072
	.byte	W24
@ 173   ----------------------------------------
	.byte		N48   , Dn3 , v076
	.byte	W48
	.byte		N24   
	.byte	W48
@ 174   ----------------------------------------
	.byte	W18
	.byte		N06   , Cs3 , v068
	.byte	W18
	.byte		N05   
	.byte	W30
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W12
@ 175   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_167
@ 176   ----------------------------------------
	.byte	W96
@ 177   ----------------------------------------
	.byte	W96
@ 178   ----------------------------------------
	.byte		N24   , Fs3 , v076
	.byte	W24
	.byte		        En3 , v072
	.byte	W24
	.byte		        Dn3 , v076
	.byte	W24
	.byte		N23   , Cs3 , v072
	.byte	W24
@ 179   ----------------------------------------
	.byte	W48
	.byte		N24   , En3 , v084
	.byte	W24
	.byte		N23   , En3 , v072
	.byte	W24
@ 180   ----------------------------------------
	.byte	W48
	.byte		N24   , Fs3 , v076
	.byte	W24
	.byte		N23   , En3 , v072
	.byte	W24
@ 181   ----------------------------------------
	.byte		N24   , Dn3 , v076
	.byte	W24
	.byte		        En3 , v072
	.byte	W24
	.byte		        Fs3 , v076
	.byte	W48
@ 182   ----------------------------------------
	.byte	W96
@ 183   ----------------------------------------
	.byte	W96
@ 184   ----------------------------------------
	.byte	W96
@ 185   ----------------------------------------
	.byte	W48
	.byte		        Bn3 
	.byte	W24
	.byte		N23   , En5 , v088
	.byte	W24
@ 186   ----------------------------------------
	.byte		N24   , Dn5 , v092
	.byte	W24
	.byte		N07   , Cs5 , v080
	.byte	W08
	.byte		        Dn5 
	.byte	W08
	.byte		        Cs5 
	.byte	W16
	.byte		N07   
	.byte	W40
@ 187   ----------------------------------------
	.byte	W96
@ 188   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_062
@ 189   ----------------------------------------
	.byte		N72   , Fs4 , v084
	.byte	W96
@ 190   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_064
@ 191   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_065
@ 192   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_066
@ 193   ----------------------------------------
	.byte		N24   , Dn4 , v076
	.byte	W24
	.byte		        Cs4 , v072
	.byte	W48
	.byte		N23   , En5 , v088
	.byte	W24
@ 194   ----------------------------------------
	.byte		N24   , Dn5 , v092
	.byte	W24
	.byte		N08   , Cs5 , v088
	.byte	W08
	.byte		        Dn5 , v084
	.byte	W08
	.byte		        Cs5 
	.byte	W16
	.byte		N08   
	.byte	W16
	.byte		N23   , An4 , v088
	.byte	W24
@ 195   ----------------------------------------
	.byte		N48   , An4 , v084
	.byte	W48
	.byte		N24   , An4 , v088
	.byte	W24
	.byte		N23   , Bn4 
	.byte	W24
@ 196   ----------------------------------------
	.byte		N24   , Cs5 , v092
	.byte	W24
	.byte		N08   , Cs5 , v088
	.byte	W08
	.byte		        Dn5 , v084
	.byte	W08
	.byte		        Cs5 
	.byte	W32
	.byte		N23   , Bn4 , v088
	.byte	W24
@ 197   ----------------------------------------
	.byte		TIE   , Cs5 , v084
	.byte	W96
@ 198   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 199   ----------------------------------------
	.byte	W96
@ 200   ----------------------------------------
	.byte	W96
@ 201   ----------------------------------------
	.byte	W96
@ 202   ----------------------------------------
	.byte	W96
@ 203   ----------------------------------------
	.byte		N24   , Fs4 , v060
	.byte	W24
	.byte		        Fs4 , v056
	.byte	W24
	.byte		        Fs4 , v060
	.byte	W24
	.byte		N11   , Fs4 , v056
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 204   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_074
@ 205   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_075
@ 206   ----------------------------------------
	.byte		N24   , Dn4 , v060
	.byte	W24
	.byte		N11   , Cs4 , v056
	.byte	W24
	.byte		N24   , Cs4 , v060
	.byte	W30
	.byte		N05   , Fs4 
	.byte	W06
	.byte		        Bn4 , v072
	.byte	W06
	.byte		        Dn5 , v080
	.byte	W06
@ 207   ----------------------------------------
mus_umineko_worldend_dominator_7_207:
	.byte		N24   , Bn4 , v076
	.byte	W24
	.byte		        Bn4 , v072
	.byte	W24
	.byte		        Bn4 , v076
	.byte	W24
	.byte		N11   , Bn4 , v072
	.byte	W24
	.byte	PEND
@ 208   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_207
@ 209   ----------------------------------------
	.byte		N24   , Bn4 , v076
	.byte	W24
	.byte		N11   , Bn4 , v072
	.byte	W24
	.byte		N12   , Bn4 , v076
	.byte	W16
	.byte		N03   , Bn4 , v080
	.byte	W08
	.byte		N11   , Bn4 , v072
	.byte	W24
@ 210   ----------------------------------------
	.byte		N24   , Bn4 , v076
	.byte	W24
	.byte		N12   , Bn4 , v072
	.byte	W12
	.byte		        Bn4 , v084
	.byte	W12
	.byte		N24   , Bn4 , v076
	.byte	W24
	.byte		N11   , Fs4 , v072
	.byte	W18
	.byte		N05   , En4 , v080
	.byte	W06
@ 211   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_081
@ 212   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_082
@ 213   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_083
@ 214   ----------------------------------------
	.byte		N12   , Dn4 , v076
	.byte	W13
	.byte		N11   , Cn4 
	.byte	W11
	.byte		        Dn4 , v080
	.byte	W12
	.byte		        En4 , v084
	.byte	W12
	.byte		N24   , Fs4 , v088
	.byte	W48
@ 215   ----------------------------------------
mus_umineko_worldend_dominator_7_215:
	.byte		N24   , En4 , v100
	.byte	W24
	.byte		        En4 , v096
	.byte	W24
	.byte		        En4 , v100
	.byte	W24
	.byte		N11   , En4 , v096
	.byte	W24
	.byte	PEND
@ 216   ----------------------------------------
mus_umineko_worldend_dominator_7_216:
	.byte		N24   , En4 , v100
	.byte	W24
	.byte		        En4 , v096
	.byte	W24
	.byte		        En4 , v100
	.byte	W24
	.byte		N11   , En4 , v096
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte	PEND
@ 217   ----------------------------------------
mus_umineko_worldend_dominator_7_217:
	.byte		N24   , Bn3 , v100
	.byte	W24
	.byte		N12   , Bn3 , v096
	.byte	W24
	.byte		N11   , Bn3 , v100
	.byte	W24
	.byte		        Gn3 , v096
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 218   ----------------------------------------
	.byte		N24   , Gn3 , v100
	.byte	W24
	.byte		N11   , Fs3 , v096
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Fs3 , v100
	.byte	W24
	.byte		N11   , En3 , v096
	.byte	W24
@ 219   ----------------------------------------
	.byte		N24   , Bn4 , v108
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N12   , Cn5 
	.byte	W12
@ 220   ----------------------------------------
	.byte		N24   , An4 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W48
@ 221   ----------------------------------------
	.byte		        Gn4 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 , v100
	.byte	W12
	.byte		N03   , An4 , v104
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N11   , Gn4 , v108
	.byte	W24
@ 222   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N12   , En4 , v096
	.byte	W12
	.byte		        En4 , v108
	.byte	W12
	.byte		N24   , En4 , v100
	.byte	W24
	.byte		N23   , Bn3 , v096
	.byte	W24
@ 223   ----------------------------------------
	.byte		N24   , Bn3 , v100
	.byte	W24
	.byte		        Bn3 , v096
	.byte	W24
	.byte		        Bn3 , v100
	.byte	W24
	.byte		N11   , Bn3 , v096
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 224   ----------------------------------------
	.byte		N24   , An3 , v100
	.byte	W24
	.byte		        An3 , v096
	.byte	W24
	.byte		        An3 , v100
	.byte	W24
	.byte		N11   , Gn3 , v096
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 225   ----------------------------------------
	.byte		N24   , Gn3 , v100
	.byte	W24
	.byte		N11   , Gn3 , v096
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N12   , Bn4 , v108
	.byte	W12
	.byte		N03   , An4 , v104
	.byte	W08
	.byte		N04   
	.byte	W16
	.byte		N12   , An4 , v108
	.byte	W12
@ 226   ----------------------------------------
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   , En4 
	.byte	W12
	.byte		N12   , An4 
	.byte	W12
@ 227   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_215
@ 228   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_216
@ 229   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_217
@ 230   ----------------------------------------
	.byte		N24   , Gn3 , v100
	.byte	W24
	.byte		N11   , Fs3 , v096
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Fs3 , v100
	.byte	W24
	.byte		N23   , En3 , v096
	.byte	W24
@ 231   ----------------------------------------
	.byte	W48
@ 232   ----------------------------------------
	.byte	W13
	.byte		N80   , Bn3 , v056, gtp3
	.byte	W80
	.byte	W03
@ 233   ----------------------------------------
	.byte		N24   , Bn3 , v060
	.byte	W24
	.byte		N23   , Fs4 , v056
	.byte	W72
@ 234   ----------------------------------------
	.byte	W13
	.byte		        Fn4 
	.byte	W44
	.byte	W03
	.byte		        Gn4 
	.byte	W24
	.byte		N23   
	.byte	W12
@ 235   ----------------------------------------
	.byte	W13
	.byte		        Dn4 
	.byte	W23
	.byte		        Gn3 
	.byte	W60
@ 236   ----------------------------------------
	.byte	W13
	.byte		        An3 
	.byte	W32
	.byte	W03
	.byte		        Bn3 , v060
	.byte	W36
	.byte		        Cn4 , v056
	.byte	W12
@ 237   ----------------------------------------
	.byte	W60
	.byte		        Fs4 
	.byte	W36
@ 238   ----------------------------------------
	.byte		TIE   , En4 
	.byte	W96
@ 239   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W72
@ 240   ----------------------------------------
	.byte		N96   , En4 
	.byte	W96
@ 241   ----------------------------------------
	.byte		N24   , Bn3 , v060
	.byte	W24
	.byte		N36   , Dn4 , v056
	.byte	W36
	.byte		N23   , An2 
	.byte	W36
@ 242   ----------------------------------------
	.byte		TIE   , Gn2 , v072
	.byte	W96
@ 243   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 244   ----------------------------------------
	.byte		TIE   , An2 
	.byte	W96
@ 245   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 246   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 247   ----------------------------------------
	.byte	W92
	.byte		EOT   
	.byte	W04
@ 248   ----------------------------------------
mus_umineko_worldend_dominator_7_248:
	.byte	W36
	.byte		N11   , As2 , v068
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 249   ----------------------------------------
	.byte	W36
	.byte		N11   
	.byte	W24
	.byte		N24   , En3 , v080
	.byte	W36
@ 250   ----------------------------------------
	.byte	W24
	.byte		        An3 
	.byte	W48
	.byte		        Bn3 
	.byte	W24
@ 251   ----------------------------------------
	.byte		        Cn4 
	.byte	W60
	.byte		        An3 
	.byte	W36
@ 252   ----------------------------------------
	.byte		        Bn3 
	.byte	W48
	.byte		N24   
	.byte	W36
	.byte		        Dn4 
	.byte	W12
@ 253   ----------------------------------------
	.byte	W36
	.byte		        Cn4 
	.byte	W36
	.byte		        Dn4 
	.byte	W24
@ 254   ----------------------------------------
	.byte	W24
	.byte		        Cn4 
	.byte	W36
	.byte		        Ds4 
	.byte	W24
	.byte		        Gn3 
	.byte	W12
@ 255   ----------------------------------------
	.byte	W60
	.byte		N24   
	.byte	W30
	.byte		N05   , Ds3 , v068
	.byte	W06
@ 256   ----------------------------------------
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W24
	.byte		N24   , Gn3 , v080
	.byte	W24
	.byte		N11   , Dn3 , v068
	.byte	W12
@ 257   ----------------------------------------
mus_umineko_worldend_dominator_7_257:
	.byte	W36
	.byte		N11   , Dn3 , v068
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 258   ----------------------------------------
	.byte	W36
	.byte		        Bn2 
	.byte	W48
	.byte		N11   
	.byte	W12
@ 259   ----------------------------------------
	.byte	W36
	.byte		N11   
	.byte	W54
	.byte		N05   
	.byte	W06
@ 260   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_248
@ 261   ----------------------------------------
	.byte	W36
	.byte		N11   , As2 , v068
	.byte	W36
	.byte		N05   
	.byte	W12
	.byte		N11   
	.byte	W12
@ 262   ----------------------------------------
	.byte	W36
	.byte		        Cn3 
	.byte	W24
	.byte		N24   , En3 , v080
	.byte	W24
	.byte		N11   , Cn3 , v068
	.byte	W12
@ 263   ----------------------------------------
	.byte	W36
	.byte		N11   
	.byte	W54
	.byte		N05   
	.byte	W06
@ 264   ----------------------------------------
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W48
	.byte		N11   
	.byte	W12
@ 265   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_7_257
@ 266   ----------------------------------------
	.byte	W36
	.byte		N11   , Ds3 , v068
	.byte	W48
	.byte		N11   
	.byte	W12
@ 267   ----------------------------------------
	.byte	W36
	.byte		        Fn3 
	.byte	W48
	.byte		        En3 
	.byte	W12
@ 268   ----------------------------------------
	.byte	W13
	.byte		N05   , En2 
	.byte	W18
	.byte		N05   
	.byte	W17
	.byte		N06   , En2 , v072
	.byte	W18
	.byte		N05   , En2 , v068
	.byte	W18
	.byte		N11   , Bn1 , v060
	.byte	W12
@ 269   ----------------------------------------
	.byte	W05
	.byte		VOL   , 80*mus_umineko_worldend_dominator_mvl/mxv
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_umineko_worldend_dominator_8:
	.byte	KEYSH , mus_umineko_worldend_dominator_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 80*mus_umineko_worldend_dominator_mvl/mxv
	.byte		PAN   , c_v+24
	.byte	W84
@ 001   ----------------------------------------
	.byte	W84
@ 002   ----------------------------------------
	.byte	W84
@ 003   ----------------------------------------
	.byte	W84
@ 004   ----------------------------------------
	.byte	W84
@ 005   ----------------------------------------
	.byte	W84
@ 006   ----------------------------------------
	.byte	W84
@ 007   ----------------------------------------
	.byte	W84
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
	.byte	W48
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
	.byte	W96
@ 117   ----------------------------------------
	.byte	W96
@ 118   ----------------------------------------
	.byte		N96   , Bn4 , v064
	.byte	W96
@ 119   ----------------------------------------
	.byte		N60   , Bn4 , v060
	.byte	W96
@ 120   ----------------------------------------
	.byte		TIE   , Dn5 , v056
	.byte	W96
@ 121   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W12
	.byte		N36   , Dn5 , v076
	.byte	W72
@ 122   ----------------------------------------
	.byte		TIE   , En5 , v080
	.byte	W96
@ 123   ----------------------------------------
	.byte	W60
	.byte		EOT   
	.byte	W36
@ 124   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 125   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W36
	.byte		N56   , Dn5 , v084, gtp3
	.byte	W48
@ 126   ----------------------------------------
	.byte	W96
@ 127   ----------------------------------------
	.byte		N60   
	.byte	W96
@ 128   ----------------------------------------
	.byte		TIE   , En5 , v080
	.byte	W96
@ 129   ----------------------------------------
	.byte	W60
	.byte		EOT   
	.byte	W36
@ 130   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 131   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W12
	.byte		N36   
	.byte	W48
	.byte		N32   , Cn5 , v080, gtp3
	.byte	W24
@ 132   ----------------------------------------
	.byte	W48
	.byte		N56   , Cn5 , v084, gtp3
	.byte	W48
@ 133   ----------------------------------------
	.byte	W72
	.byte		N32   , Cn5 , v080, gtp3
	.byte	W24
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte	W48
	.byte		N24   , An4 
	.byte	W48
@ 136   ----------------------------------------
	.byte		TIE   , Dn5 
	.byte	W96
@ 137   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W12
	.byte		N24   , An4 
	.byte	W24
	.byte		N56   , Dn5 , v084, gtp3
	.byte	W48
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
mus_umineko_worldend_dominator_8_139:
	.byte	W48
	.byte		N56   , Dn5 , v084, gtp3
	.byte	W48
	.byte	PEND
@ 140   ----------------------------------------
	.byte	W96
@ 141   ----------------------------------------
	.byte	W96
@ 142   ----------------------------------------
	.byte	W96
@ 143   ----------------------------------------
	.byte	W96
@ 144   ----------------------------------------
	.byte	W96
@ 145   ----------------------------------------
	.byte	W96
@ 146   ----------------------------------------
	.byte	W96
@ 147   ----------------------------------------
	.byte	W96
@ 148   ----------------------------------------
	.byte	W96
@ 149   ----------------------------------------
	.byte	W96
@ 150   ----------------------------------------
	.byte	W96
@ 151   ----------------------------------------
	.byte	W96
@ 152   ----------------------------------------
	.byte	W96
@ 153   ----------------------------------------
	.byte	W96
@ 154   ----------------------------------------
	.byte	W96
@ 155   ----------------------------------------
	.byte	W96
@ 156   ----------------------------------------
	.byte	W96
@ 157   ----------------------------------------
	.byte	W96
@ 158   ----------------------------------------
	.byte	W96
@ 159   ----------------------------------------
	.byte	W96
@ 160   ----------------------------------------
	.byte	W96
@ 161   ----------------------------------------
	.byte		N05   , Gs4 , v056
	.byte	W05
	.byte		N04   , An4 , v052
	.byte	W04
	.byte		N05   , Gs4 , v056
	.byte	W05
	.byte		N04   , An4 , v052
	.byte	W05
	.byte		N05   , Gs4 , v060
	.byte	W05
	.byte		N04   , An4 , v052
	.byte	W04
	.byte		N05   , Gs4 , v060
	.byte	W05
	.byte		N04   , An4 , v056
	.byte	W05
	.byte		N05   , Gs4 , v060
	.byte	W05
	.byte		        An4 , v056
	.byte	W05
	.byte		N04   , Gs4 , v064
	.byte	W04
	.byte		N05   , An4 , v056
	.byte	W05
	.byte		N04   , Gs4 , v064
	.byte	W05
	.byte		N05   , An4 , v060
	.byte	W05
	.byte		N04   , Gs4 , v064
	.byte	W04
	.byte		N05   , An4 , v060
	.byte	W05
	.byte		        Gs4 , v064
	.byte	W05
	.byte		N04   , An4 , v060
	.byte	W05
	.byte		N05   , Gs4 , v068
	.byte	W05
	.byte		N06   , An4 , v064
	.byte	W05
@ 162   ----------------------------------------
	.byte	W05
	.byte		N04   
	.byte	W09
	.byte		N04   
	.byte	W10
	.byte		N04   
	.byte	W09
	.byte		        An4 , v068
	.byte	W10
	.byte		N05   
	.byte	W09
	.byte		N05   
	.byte	W10
	.byte		        An4 , v064
	.byte	W09
	.byte		        An4 , v060
	.byte	W10
	.byte		N04   , An4 , v056
	.byte	W10
	.byte		N06   , An4 , v052
	.byte	W05
@ 163   ----------------------------------------
	.byte	W96
@ 164   ----------------------------------------
	.byte		N96   , An4 , v064
	.byte	W96
@ 165   ----------------------------------------
	.byte		        Fs4 , v052
	.byte	W96
@ 166   ----------------------------------------
	.byte		        Ds4 , v056
	.byte	W96
@ 167   ----------------------------------------
	.byte	W48
	.byte		N32   , An3 , v088, gtp3
	.byte	W36
	.byte		N05   , Gs3 , v080
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 168   ----------------------------------------
	.byte		N24   , Gs3 , v092
	.byte	W24
	.byte		        An3 , v088
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N23   , Gs3 
	.byte	W24
@ 169   ----------------------------------------
	.byte		N24   , As3 , v092
	.byte	W24
	.byte		        Bn3 , v088
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N23   , Cs4 , v072
	.byte	W24
@ 170   ----------------------------------------
	.byte		N24   , Dn4 , v092
	.byte	W24
	.byte		        Cs4 , v088
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N23   , An3 
	.byte	W24
@ 171   ----------------------------------------
mus_umineko_worldend_dominator_8_171:
	.byte		N48   , Bn3 , v092
	.byte	W72
	.byte		N23   , Bn3 , v072
	.byte	W24
	.byte	PEND
@ 172   ----------------------------------------
	.byte	W48
	.byte		N24   , Bn3 , v088
	.byte	W48
@ 173   ----------------------------------------
	.byte		N48   , An3 , v092
	.byte	W48
	.byte		N24   , An3 , v084
	.byte	W48
@ 174   ----------------------------------------
	.byte		N36   , Fs3 , v076
	.byte	W48
	.byte		N44   , Fn3 , v076, gtp3
	.byte	W48
@ 175   ----------------------------------------
	.byte	W96
@ 176   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		        Fs3 , v072
	.byte	W24
	.byte		        Bn3 , v088
	.byte	W24
	.byte		N23   , Gs3 
	.byte	W24
@ 177   ----------------------------------------
	.byte		N24   , As3 , v092
	.byte	W24
	.byte		        Bn3 , v088
	.byte	W24
	.byte		        As3 , v076
	.byte	W24
	.byte		N23   , En4 , v088
	.byte	W24
@ 178   ----------------------------------------
	.byte		N24   , Fs4 , v092
	.byte	W24
	.byte		        En4 , v088
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N23   , Cs4 
	.byte	W24
@ 179   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_8_171
@ 180   ----------------------------------------
	.byte		N24   , An3 , v076
	.byte	W24
	.byte		        Gs3 , v072
	.byte	W72
@ 181   ----------------------------------------
	.byte		        An3 , v076
	.byte	W24
	.byte		        Bn3 , v072
	.byte	W48
	.byte		N23   , An3 
	.byte	W24
@ 182   ----------------------------------------
	.byte		N36   , An3 , v076
	.byte	W48
	.byte		N24   , Bn3 
	.byte	W48
@ 183   ----------------------------------------
	.byte		N72   , Cs5 , v080
	.byte	W72
	.byte		N23   , En5 , v088
	.byte	W24
@ 184   ----------------------------------------
	.byte		N24   , Bn4 , v076
	.byte	W48
	.byte		        Fs4 
	.byte	W24
	.byte		N23   , En4 , v072
	.byte	W24
@ 185   ----------------------------------------
	.byte		N48   , En4 , v076
	.byte	W48
	.byte		N24   , En4 , v088
	.byte	W24
	.byte		N23   , En4 , v072
	.byte	W24
@ 186   ----------------------------------------
	.byte		N24   , Cs4 , v080
	.byte	W24
	.byte		        En4 
	.byte	W48
	.byte		N23   , En4 , v084
	.byte	W24
@ 187   ----------------------------------------
	.byte		N48   , Dn4 , v076
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte		N23   , Dn4 , v072
	.byte	W24
@ 188   ----------------------------------------
	.byte		N24   , Dn4 , v076
	.byte	W24
	.byte		        Cs4 , v072
	.byte	W24
	.byte		        Bn3 , v076
	.byte	W24
	.byte		N23   , Bn3 , v072
	.byte	W24
@ 189   ----------------------------------------
	.byte		N48   , Bn3 , v080
	.byte	W48
	.byte		        Fs3 
	.byte	W48
@ 190   ----------------------------------------
	.byte		N24   , Gs3 , v076
	.byte	W24
	.byte		        An3 , v072
	.byte	W48
	.byte		N23   , Gs3 
	.byte	W24
@ 191   ----------------------------------------
	.byte		N72   , Cs5 , v084
	.byte	W72
	.byte		N23   , En5 , v088
	.byte	W24
@ 192   ----------------------------------------
	.byte		N24   , Dn5 , v092
	.byte	W24
	.byte		N08   , Cs5 , v088
	.byte	W08
	.byte		        Dn5 , v084
	.byte	W08
	.byte		        Cs5 
	.byte	W56
@ 193   ----------------------------------------
	.byte		N24   , Bn4 , v092
	.byte	W48
	.byte		        Bn4 , v088
	.byte	W24
	.byte		N23   , Bn4 , v072
	.byte	W24
@ 194   ----------------------------------------
	.byte		N24   , An4 , v076
	.byte	W48
	.byte		N08   , Bn4 , v088
	.byte	W16
	.byte		        Bn4 , v084
	.byte	W08
	.byte		N23   , En4 , v072
	.byte	W24
@ 195   ----------------------------------------
	.byte		N48   , Fs4 , v088
	.byte	W96
@ 196   ----------------------------------------
	.byte		N24   , Fs4 , v076
	.byte	W48
	.byte		        An4 , v088
	.byte	W48
@ 197   ----------------------------------------
	.byte		TIE   , Gs4 , v072
	.byte	W96
@ 198   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 199   ----------------------------------------
	.byte	W84
	.byte		N11   , Gn4 , v056
	.byte	W12
@ 200   ----------------------------------------
	.byte	W96
@ 201   ----------------------------------------
	.byte	W48
	.byte		        Fs4 , v060
	.byte	W12
	.byte		N03   , En4 , v056
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		N04   , En4 
	.byte	W04
	.byte		N11   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 202   ----------------------------------------
	.byte		N24   , Dn4 , v060
	.byte	W24
	.byte		N11   , Cs4 , v056
	.byte	W24
	.byte		N24   , Cs4 , v060
	.byte	W24
	.byte		N23   , Bn3 , v056
	.byte	W24
@ 203   ----------------------------------------
mus_umineko_worldend_dominator_8_203:
	.byte	W30
	.byte	W01
	.byte		N05   , Bn3 , v048
	.byte	W44
	.byte	W03
	.byte		N05   
	.byte	W18
	.byte	PEND
@ 204   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_8_203
@ 205   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_8_203
@ 206   ----------------------------------------
	.byte	W36
	.byte		N11   , Bn3 , v056
	.byte	W36
	.byte		N05   
	.byte	W24
@ 207   ----------------------------------------
	.byte		N24   , Fs5 , v088
	.byte	W24
	.byte		        Fs5 , v084
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   , Fs5 , v088
	.byte	W12
	.byte		N12   , Gn5 , v084
	.byte	W12
@ 208   ----------------------------------------
	.byte		N24   , En5 , v092
	.byte	W24
	.byte		        En5 , v084
	.byte	W24
	.byte		        En5 , v088
	.byte	W24
	.byte		N11   , Dn5 
	.byte	W12
	.byte		N12   , Cs5 , v084
	.byte	W12
@ 209   ----------------------------------------
	.byte		N24   , Dn5 , v092
	.byte	W24
	.byte		N12   , Dn5 , v088
	.byte	W12
	.byte		        En5 , v084
	.byte	W12
	.byte		        Fs5 , v088
	.byte	W12
	.byte		N03   , En5 , v080
	.byte	W08
	.byte		N04   
	.byte	W04
	.byte		N11   , Dn5 , v088
	.byte	W12
	.byte		N12   , En5 , v084
	.byte	W12
@ 210   ----------------------------------------
	.byte		N24   , Dn5 , v092
	.byte	W24
	.byte		N12   , Cs5 , v088
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N11   , Bn4 
	.byte	W24
@ 211   ----------------------------------------
mus_umineko_worldend_dominator_8_211:
	.byte		N24   , Bn4 , v076
	.byte	W24
	.byte		        Bn4 , v072
	.byte	W24
	.byte		        Bn4 , v076
	.byte	W24
	.byte		N11   , Bn4 , v072
	.byte	W24
	.byte	PEND
@ 212   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_8_211
@ 213   ----------------------------------------
	.byte		N24   , Bn4 , v076
	.byte	W24
	.byte		N11   , Bn4 , v072
	.byte	W24
	.byte		N12   , Bn4 , v076
	.byte	W16
	.byte		N03   , Bn4 , v080
	.byte	W08
	.byte		N11   , Bn4 , v072
	.byte	W24
@ 214   ----------------------------------------
	.byte		N12   , Bn4 , v076
	.byte	W13
	.byte		N11   , Cn5 , v088
	.byte	W11
	.byte		        Bn4 , v080
	.byte	W24
	.byte		N24   , Bn4 , v088
	.byte	W48
@ 215   ----------------------------------------
mus_umineko_worldend_dominator_8_215:
	.byte		N24   , Gn4 , v100
	.byte	W24
	.byte		        Gn4 , v096
	.byte	W24
	.byte		        Gn4 , v100
	.byte	W24
	.byte		N11   , Gn4 , v096
	.byte	W24
	.byte	PEND
@ 216   ----------------------------------------
mus_umineko_worldend_dominator_8_216:
	.byte		N24   , Gn4 , v100
	.byte	W24
	.byte		        Gn4 , v096
	.byte	W24
	.byte		        Gn4 , v100
	.byte	W24
	.byte		N11   , Gn4 , v108
	.byte	W12
	.byte		N12   , Fs4 
	.byte	W12
	.byte	PEND
@ 217   ----------------------------------------
mus_umineko_worldend_dominator_8_217:
	.byte		N24   , En4 , v100
	.byte	W24
	.byte		N12   , En4 , v096
	.byte	W24
	.byte		N11   , En4 , v100
	.byte	W16
	.byte		N03   , Dn4 , v104
	.byte	W32
	.byte	PEND
@ 218   ----------------------------------------
	.byte		N24   , En4 , v100
	.byte	W24
	.byte		N11   , Bn3 , v096
	.byte	W24
	.byte		N24   , Bn3 , v100
	.byte	W24
	.byte		N11   , Gn3 , v096
	.byte	W24
@ 219   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_8_215
@ 220   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_8_216
@ 221   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_8_217
@ 222   ----------------------------------------
mus_umineko_worldend_dominator_8_222:
	.byte		N24   , En4 , v100
	.byte	W24
	.byte		N11   , Bn3 , v096
	.byte	W24
	.byte		N24   , Bn3 , v100
	.byte	W24
	.byte		N23   , Gn3 , v096
	.byte	W24
	.byte	PEND
@ 223   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_8_215
@ 224   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_8_216
@ 225   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_8_217
@ 226   ----------------------------------------
	.byte		N24   , En4 , v100
	.byte	W24
	.byte		N11   , Bn3 , v096
	.byte	W24
	.byte		N24   , Bn3 , v100
	.byte	W24
	.byte		N11   , Gn3 , v096
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 227   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_8_215
@ 228   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_8_216
@ 229   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_8_217
@ 230   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_8_222
@ 231   ----------------------------------------
	.byte	W48
@ 232   ----------------------------------------
	.byte		N24   , Gn4 , v060
	.byte	W24
	.byte		N23   , Gn4 , v056
	.byte	W60
	.byte		N23   
	.byte	W12
@ 233   ----------------------------------------
	.byte	W13
	.byte		N23   
	.byte	W56
	.byte	W03
	.byte		N23   
	.byte	W24
@ 234   ----------------------------------------
	.byte		N24   , Gn4 , v060
	.byte	W24
	.byte		N23   , Dn4 , v056
	.byte	W24
	.byte		        Gn3 , v060
	.byte	W48
@ 235   ----------------------------------------
	.byte	W24
	.byte		        An3 , v056
	.byte	W24
	.byte		N60   , Cn4 
	.byte	W48
@ 236   ----------------------------------------
	.byte	W24
	.byte		N23   , Gn3 
	.byte	W72
@ 237   ----------------------------------------
	.byte	W13
	.byte		N23   
	.byte	W68
	.byte	W03
	.byte		        An3 
	.byte	W12
@ 238   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 239   ----------------------------------------
	.byte	W48
	.byte		N24   
	.byte	W36
	.byte		N24   
	.byte	W12
@ 240   ----------------------------------------
	.byte	W13
	.byte		N23   
	.byte	W23
	.byte		        Bn3 
	.byte	W24
	.byte		        En3 
	.byte	W36
@ 241   ----------------------------------------
	.byte		N36   , En4 
	.byte	W36
	.byte		N11   , An3 
	.byte	W12
	.byte		N36   
	.byte	W36
	.byte		N23   
	.byte	W12
@ 242   ----------------------------------------
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Dn3 , v060
	.byte	W48
@ 243   ----------------------------------------
	.byte		TIE   , Fn4 , v056
	.byte	W96
@ 244   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W24
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N48   , An4 
	.byte	W36
@ 245   ----------------------------------------
	.byte	W48
	.byte		N56   , Cn5 , v060, gtp3
	.byte	W48
@ 246   ----------------------------------------
	.byte	W96
@ 247   ----------------------------------------
	.byte		N36   , En5 , v072
	.byte	W72
	.byte		N32   , Gn5 , v084, gtp3
	.byte	W24
@ 248   ----------------------------------------
	.byte	W96
@ 249   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_8_139
@ 250   ----------------------------------------
	.byte	W96
@ 251   ----------------------------------------
	.byte		N60   , Cn5 , v084
	.byte	W96
@ 252   ----------------------------------------
	.byte		TIE   , En5 , v080
	.byte	W96
@ 253   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W36
	.byte		N56   , Gn5 , v084, gtp3
	.byte	W48
@ 254   ----------------------------------------
	.byte	W96
@ 255   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_worldend_dominator_8_139
@ 256   ----------------------------------------
	.byte	W96
@ 257   ----------------------------------------
	.byte		N36   , Fn5 , v084
	.byte	W48
	.byte		        Dn5 
	.byte	W48
@ 258   ----------------------------------------
	.byte		N60   
	.byte	W96
@ 259   ----------------------------------------
	.byte	W96
@ 260   ----------------------------------------
	.byte		TIE   , Dn5 , v080
	.byte	W96
@ 261   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W60
	.byte		N32   , Cn5 , v080, gtp3
	.byte	W24
@ 262   ----------------------------------------
	.byte	W96
@ 263   ----------------------------------------
	.byte		N60   , Cn5 , v084
	.byte	W96
@ 264   ----------------------------------------
	.byte		TIE   , En5 , v080
	.byte	W96
@ 265   ----------------------------------------
	.byte	W60
	.byte		EOT   
	.byte	W36
@ 266   ----------------------------------------
	.byte		TIE   , Fn5 
	.byte	W96
@ 267   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W84
@ 268   ----------------------------------------
	.byte	W96
@ 269   ----------------------------------------
	.byte	W05
	.byte		VOL   , 80*mus_umineko_worldend_dominator_mvl/mxv
	.byte	FINE

@******************************************************@
	.align	2

mus_umineko_worldend_dominator:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_umineko_worldend_dominator_pri	@ Priority
	.byte	mus_umineko_worldend_dominator_rev	@ Reverb.

	.word	mus_umineko_worldend_dominator_grp

	.word	mus_umineko_worldend_dominator_1
	.word	mus_umineko_worldend_dominator_2
	.word	mus_umineko_worldend_dominator_3
	.word	mus_umineko_worldend_dominator_4
	.word	mus_umineko_worldend_dominator_5
	.word	mus_umineko_worldend_dominator_6
	.word	mus_umineko_worldend_dominator_7
	.word	mus_umineko_worldend_dominator_8

	.end
