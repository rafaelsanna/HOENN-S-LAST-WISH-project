	.include "MPlayDef.s"

	.equ	mus_high_and_dry_grp, voicegroup_high_and_dry
	.equ	mus_high_and_dry_pri, 0
	.equ	mus_high_and_dry_rev, reverb_set+50
	.equ	mus_high_and_dry_mvl, 100
	.equ	mus_high_and_dry_key, 0
	.equ	mus_high_and_dry_tbs, 1
	.equ	mus_high_and_dry_exg, 1
	.equ	mus_high_and_dry_cmp, 1

	.section .rodata
	.global	mus_high_and_dry
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_high_and_dry_1:
	.byte	KEYSH , mus_high_and_dry_key+0
mus_high_and_dry_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 87*mus_high_and_dry_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_high_and_dry_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W18
	.byte		N92   , Fs1 , v116, gtp3
	.byte	W78
@ 001   ----------------------------------------
mus_high_and_dry_1_001:
	.byte	W18
	.byte		N92   , An1 , v116, gtp3
	.byte	W78
	.byte	PEND
@ 002   ----------------------------------------
mus_high_and_dry_1_002:
	.byte	W18
	.byte		N92   , En1 , v116, gtp3
	.byte	W78
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_002
@ 004   ----------------------------------------
mus_high_and_dry_1_004:
	.byte	W18
	.byte		N92   , Fs1 , v116, gtp3
	.byte	W78
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_002
@ 007   ----------------------------------------
	.byte	W18
	.byte	TEMPO , 87*mus_high_and_dry_tbs/2
	.byte		N92   , En1 , v116, gtp3
	.byte	W48
	.byte	TEMPO , 87*mus_high_and_dry_tbs/2
	.byte	W30
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_002
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_001
@ 014   ----------------------------------------
mus_high_and_dry_1_014:
	.byte	W18
	.byte		N76   , En1 , v116, gtp1
	.byte	W78
	.byte	PEND
@ 015   ----------------------------------------
mus_high_and_dry_1_015:
	.byte		N17   , Bn0 , v116
	.byte	W18
	.byte		N92   , En1 , v116, gtp3
	.byte	W78
	.byte	PEND
@ 016   ----------------------------------------
mus_high_and_dry_1_016:
	.byte	W18
	.byte		N56   , Fs1 , v116, gtp3
	.byte	W60
	.byte		N17   
	.byte	W18
	.byte	PEND
@ 017   ----------------------------------------
mus_high_and_dry_1_017:
	.byte		N17   , Gs1 , v116
	.byte	W18
	.byte		N76   , An1 , v116, gtp1
	.byte	W78
	.byte	PEND
@ 018   ----------------------------------------
mus_high_and_dry_1_018:
	.byte		N17   , Gs1 , v116
	.byte	W18
	.byte		N56   , En1 , v116, gtp3
	.byte	W60
	.byte		N17   
	.byte	W18
	.byte	PEND
@ 019   ----------------------------------------
mus_high_and_dry_1_019:
	.byte		N17   , Bn0 , v116
	.byte	W18
	.byte		N56   , En1 , v116, gtp3
	.byte	W60
	.byte		N17   
	.byte	W18
	.byte	PEND
@ 020   ----------------------------------------
mus_high_and_dry_1_020:
	.byte		N17   , Gs1 , v116
	.byte	W18
	.byte		N56   , Fs1 , v116, gtp3
	.byte	W60
	.byte		N15   
	.byte	W16
	.byte		N19   , Bn1 
	.byte	W02
	.byte	PEND
@ 021   ----------------------------------------
	.byte	W18
	.byte	TEMPO , 87*mus_high_and_dry_tbs/2
	.byte		N56   , An1 , v116, gtp3
	.byte	W48
	.byte	TEMPO , 87*mus_high_and_dry_tbs/2
	.byte	W12
	.byte		N17   
	.byte	W18
@ 022   ----------------------------------------
	.byte		        Gs1 
	.byte	W18
	.byte	TEMPO , 87*mus_high_and_dry_tbs/2
	.byte		N68   , En1 , v116, gtp3
	.byte	W48
	.byte	TEMPO , 87*mus_high_and_dry_tbs/2
	.byte	W30
@ 023   ----------------------------------------
	.byte	W06
	.byte		N05   , An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte	TEMPO , 88*mus_high_and_dry_tbs/2
	.byte		N11   , Gs1 
	.byte	W12
	.byte		N23   , Fs1 
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte	TEMPO , 88*mus_high_and_dry_tbs/2
	.byte	W12
	.byte		        Cs1 
	.byte	W18
@ 024   ----------------------------------------
	.byte	W06
	.byte		N11   , Bn0 
	.byte	W12
	.byte	TEMPO , 88*mus_high_and_dry_tbs/2
	.byte		        Fs1 
	.byte	W12
	.byte		N28   , Fs1 , v116, gtp1
	.byte	W30
	.byte		N05   , Cs1 
	.byte	W06
	.byte	TEMPO , 88*mus_high_and_dry_tbs/2
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N23   , Fs1 
	.byte	W18
@ 025   ----------------------------------------
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte	TEMPO , 88*mus_high_and_dry_tbs/2
	.byte		        An1 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W18
@ 026   ----------------------------------------
	.byte	W06
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N05   , Bn0 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N23   , En1 
	.byte	W18
@ 027   ----------------------------------------
mus_high_and_dry_1_027:
	.byte	W06
	.byte		N11   , Bn0 , v116
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N05   , Bn0 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N23   , En1 
	.byte	W18
	.byte	PEND
@ 028   ----------------------------------------
	.byte	W06
	.byte		N05   , An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N05   , Cs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N11   
	.byte	W06
@ 029   ----------------------------------------
	.byte	W06
	.byte		        Gs1 
	.byte	W12
	.byte		N92   , An0 , v116, gtp3
	.byte	W78
@ 030   ----------------------------------------
	.byte	W18
	.byte		N23   , En1 
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N05   , Bn0 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N23   , En1 
	.byte	W18
@ 031   ----------------------------------------
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Fs1 
	.byte	W24
	.byte		N11   , En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W06
@ 032   ----------------------------------------
	.byte	W06
	.byte		        Bn0 
	.byte	W12
	.byte		N92   , Fs1 , v116, gtp3
	.byte	W78
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_002
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_002
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_004
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_014
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_015
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_017
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_018
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_019
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_020
@ 049   ----------------------------------------
	.byte	W18
	.byte		N56   , An1 , v116, gtp3
	.byte	W60
	.byte		N17   
	.byte	W18
@ 050   ----------------------------------------
	.byte		        Gs1 
	.byte	W18
	.byte		N68   , En1 , v116, gtp3
	.byte	W78
@ 051   ----------------------------------------
	.byte	W06
	.byte		N05   , An1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   , Gs1 
	.byte	W12
	.byte		N23   , Fs1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Cs1 
	.byte	W18
@ 052   ----------------------------------------
	.byte	W06
	.byte		N11   , Bn0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N28   , Fs1 , v116, gtp1
	.byte	W30
	.byte		N05   , Cs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N23   , Fs1 
	.byte	W18
@ 053   ----------------------------------------
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W18
@ 054   ----------------------------------------
	.byte	W06
	.byte		N05   , Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	TEMPO , 88*mus_high_and_dry_tbs/2
	.byte		N11   , En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N05   , Bn0 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N23   , En1 
	.byte	W18
@ 055   ----------------------------------------
	.byte	W06
	.byte		N11   , Bn0 
	.byte	W12
	.byte	TEMPO , 88*mus_high_and_dry_tbs/2
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N05   , Bn0 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N23   , En1 
	.byte	W18
@ 056   ----------------------------------------
	.byte	W06
	.byte		N05   , An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	TEMPO , 89*mus_high_and_dry_tbs/2
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N05   , Cs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N11   
	.byte	W06
@ 057   ----------------------------------------
	.byte	W06
	.byte		        Cs1 
	.byte	W12
	.byte	TEMPO , 89*mus_high_and_dry_tbs/2
	.byte		N92   , An0 , v116, gtp3
	.byte	W78
@ 058   ----------------------------------------
	.byte	W18
	.byte	TEMPO , 92*mus_high_and_dry_tbs/2
	.byte		N11   , En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N05   , Bn0 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N23   , En1 
	.byte	W18
@ 059   ----------------------------------------
	.byte	W06
	.byte		N11   , Bn0 
	.byte	W12
	.byte	TEMPO , 94*mus_high_and_dry_tbs/2
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N05   , Bn0 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N23   , En1 
	.byte	W18
@ 060   ----------------------------------------
	.byte	W06
	.byte		N11   , Bn0 
	.byte	W12
	.byte	TEMPO , 92*mus_high_and_dry_tbs/2
	.byte		N40   , Fs1 , v116, gtp1
	.byte	W42
	.byte		N05   , Cs1 
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N23   
	.byte	W18
@ 061   ----------------------------------------
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte	TEMPO , 90*mus_high_and_dry_tbs/2
	.byte		N40   , An1 , v116, gtp1
	.byte	W42
	.byte		N05   , En1 
	.byte	W06
	.byte		N11   , An1 
	.byte	W12
	.byte		N23   
	.byte	W18
@ 062   ----------------------------------------
	.byte	W06
	.byte		N11   , Bn1 
	.byte	W12
	.byte	TEMPO , 88*mus_high_and_dry_tbs/2
	.byte		N23   , En1 
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N23   , En1 
	.byte	W18
@ 063   ----------------------------------------
	.byte	W06
	.byte		N11   , Bn0 
	.byte	W12
	.byte	TEMPO , 87*mus_high_and_dry_tbs/2
	.byte		N23   , En1 
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N23   , En1 
	.byte	W18
@ 064   ----------------------------------------
	.byte	W06
	.byte		N11   , Bn0 
	.byte	W12
	.byte	TEMPO , 86*mus_high_and_dry_tbs/2
	.byte		N23   , Fs1 
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N05   , Cs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N23   , Fs1 
	.byte	W18
@ 065   ----------------------------------------
	.byte	W06
	.byte		N11   , Cs1 
	.byte	W12
	.byte	TEMPO , 87*mus_high_and_dry_tbs/2
	.byte		N23   , An1 
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N05   , En1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N23   , An1 
	.byte	W18
@ 066   ----------------------------------------
	.byte	W06
	.byte		N11   , En1 
	.byte	W12
	.byte	TEMPO , 88*mus_high_and_dry_tbs/2
	.byte		N23   
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N23   , En1 
	.byte	W18
@ 067   ----------------------------------------
	.byte	W06
	.byte		N11   , Bn0 
	.byte	W12
	.byte	TEMPO , 90*mus_high_and_dry_tbs/2
	.byte		N23   , En1 
	.byte	W24
	.byte		N17   
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte	TEMPO , 92*mus_high_and_dry_tbs/2
	.byte		N11   
	.byte	W12
	.byte		N23   
	.byte	W18
@ 068   ----------------------------------------
	.byte	W06
	.byte		N11   , Bn0 
	.byte	W12
	.byte	TEMPO , 91*mus_high_and_dry_tbs/2
	.byte		N92   , Fs1 , v116, gtp3
	.byte	W78
@ 069   ----------------------------------------
	.byte	W18
	.byte	TEMPO , 91*mus_high_and_dry_tbs/2
	.byte		        An0 , v116, gtp3
	.byte	W78
@ 070   ----------------------------------------
	.byte	W18
	.byte	TEMPO , 90*mus_high_and_dry_tbs/2
	.byte		TIE   , En1 
	.byte	W78
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W17
	.byte		EOT   
	.byte	W01
	.byte		N92   , Fs1 , v116, gtp3
	.byte	W78
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_002
@ 075   ----------------------------------------
	.byte	W18
	.byte		N11   , En1 , v116
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
	.byte	W06
@ 076   ----------------------------------------
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N05   , Cs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N23   , Fs1 
	.byte	W18
@ 077   ----------------------------------------
mus_high_and_dry_1_077:
	.byte	W06
	.byte		N11   , Cs1 , v116
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N17   , An1 
	.byte	W18
	.byte		N05   , En1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N23   , An1 
	.byte	W18
	.byte	PEND
@ 078   ----------------------------------------
mus_high_and_dry_1_078:
	.byte	W06
	.byte		N11   , Bn1 , v116
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N05   , Bn0 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N23   , En1 
	.byte	W18
	.byte	PEND
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_027
@ 080   ----------------------------------------
	.byte	W06
	.byte		N05   , En1 , v116
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N11   , Fs1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N05   , Cs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N23   , Fs1 
	.byte	W18
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_077
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_078
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_027
@ 084   ----------------------------------------
mus_high_and_dry_1_084:
	.byte	W06
	.byte		N11   , Bn0 , v116
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N05   , Cs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N23   , Fs1 
	.byte	W18
	.byte	PEND
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_077
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_078
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_027
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_084
@ 089   ----------------------------------------
	.byte	W06
	.byte		N11   , Gs0 , v116
	.byte	W12
	.byte		N92   , An0 , v116, gtp3
	.byte	W78
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_1_002
@ 091   ----------------------------------------
	.byte	W17
	.byte	GOTO
	 .word	mus_high_and_dry_1_B1
mus_high_and_dry_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_high_and_dry_2:
	.byte	KEYSH , mus_high_and_dry_key+0
mus_high_and_dry_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 46*mus_high_and_dry_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		N05   , En3 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En3 , v044
	.byte	W06
	.byte		N11   , En3 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N17   , En3 
	.byte	W18
@ 001   ----------------------------------------
mus_high_and_dry_2_001:
	.byte		N05   , En3 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn2 , v044
	.byte	W06
	.byte		N11   , Bn2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W18
	.byte	PEND
@ 002   ----------------------------------------
mus_high_and_dry_2_002:
	.byte		N05   , Bn2 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N23   , En2 
	.byte	W24
	.byte		N17   , Bn2 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W18
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_002
@ 004   ----------------------------------------
mus_high_and_dry_2_004:
	.byte		N05   , En3 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En3 , v044
	.byte	W06
	.byte		N11   , En3 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N17   , En3 
	.byte	W18
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_002
@ 008   ----------------------------------------
	.byte		N05   , En3 , v052
	.byte	W06
	.byte		N01   , Bn2 
	.byte	W06
	.byte		N01   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N17   
	.byte	W18
@ 009   ----------------------------------------
mus_high_and_dry_2_009:
	.byte		N05   , Bn2 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 015   ----------------------------------------
mus_high_and_dry_2_015:
	.byte		N05   , Bn2 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
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
	.byte		N11   
	.byte	W06
	.byte	PEND
@ 016   ----------------------------------------
mus_high_and_dry_2_016:
	.byte	W06
	.byte		N05   , Bn2 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 022   ----------------------------------------
mus_high_and_dry_2_022:
	.byte		N05   , Bn2 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
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
	.byte		N05   
	.byte	W06
	.byte	PEND
@ 023   ----------------------------------------
mus_high_and_dry_2_023:
	.byte		N05   , Bn2 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
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
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
mus_high_and_dry_2_024:
	.byte	W18
	.byte		N11   , Bn2 , v052
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_023
@ 029   ----------------------------------------
	.byte	W18
	.byte		N92   , Bn2 , v052, gtp3
	.byte	W78
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_024
@ 031   ----------------------------------------
	.byte		N05   , Bn2 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
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
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N01   
	.byte	W06
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_002
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_015
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_016
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_022
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_023
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_024
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_009
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_023
@ 060   ----------------------------------------
mus_high_and_dry_2_060:
	.byte	W18
	.byte		N11   , Bn2 , v052
	.byte	W12
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
	.byte		N05   
	.byte	W06
	.byte		N24   , Bn2 , v052, gtp3
	.byte	W12
	.byte	PEND
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_060
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_060
@ 063   ----------------------------------------
mus_high_and_dry_2_063:
	.byte	W18
	.byte		N11   , Bn2 , v052
	.byte	W12
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
	.byte		N05   
	.byte	W06
	.byte		N24   , Bn2 , v052, gtp2
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_060
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_060
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_063
@ 067   ----------------------------------------
	.byte	W18
	.byte		N11   , Bn2 , v052
	.byte	W12
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
	.byte		N05   
	.byte	W06
	.byte		N28   
	.byte	W12
@ 068   ----------------------------------------
	.byte	W18
	.byte		N68   , Bn2 , v052, gtp3
	.byte	W78
@ 069   ----------------------------------------
mus_high_and_dry_2_069:
	.byte		N05   , Bn2 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N68   , Bn2 , v052, gtp3
	.byte	W78
	.byte	PEND
@ 070   ----------------------------------------
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		TIE   
	.byte	W78
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W06
	.byte		N68   , Bn2 , v052, gtp3
	.byte	W78
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_069
@ 074   ----------------------------------------
	.byte		N05   , Bn2 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W06
@ 075   ----------------------------------------
	.byte	W06
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
	.byte		N05   
	.byte	W06
@ 076   ----------------------------------------
mus_high_and_dry_2_076:
	.byte		N05   , Bn2 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
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
	.byte		N11   
	.byte	W06
	.byte	PEND
@ 077   ----------------------------------------
mus_high_and_dry_2_077:
	.byte	W06
	.byte		N05   , Bn2 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
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
	.byte		N11   
	.byte	W06
	.byte	PEND
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_077
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_077
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_077
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_077
@ 082   ----------------------------------------
	.byte	W06
	.byte		N05   , Bn2 , v052
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N11   
	.byte	W12
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
	.byte		N05   
	.byte	W06
@ 083   ----------------------------------------
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
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_076
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_077
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_2_077
@ 087   ----------------------------------------
	.byte	W06
	.byte		N05   , Bn2 , v052
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
	.byte		N48   , Bn2 , v052, gtp2
	.byte	W36
@ 088   ----------------------------------------
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
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
	.byte		N05   
	.byte	W06
@ 089   ----------------------------------------
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N92   , Bn2 , v052, gtp3
	.byte	W78
@ 090   ----------------------------------------
	.byte	W18
	.byte		N01   , En2 
	.byte	W02
	.byte		        Bn1 
	.byte	W02
	.byte		        En2 
	.byte	W02
	.byte		        Gs2 
	.byte	W02
	.byte		        Bn2 
	.byte	W02
	.byte		N84   , En3 , v052, gtp1
	.byte	W68
@ 091   ----------------------------------------
	.byte	W17
	.byte	GOTO
	 .word	mus_high_and_dry_2_B1
mus_high_and_dry_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_high_and_dry_3:
	.byte	KEYSH , mus_high_and_dry_key+0
mus_high_and_dry_3_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 104*mus_high_and_dry_mvl/mxv
	.byte		PAN   , c_v+10
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
mus_high_and_dry_3_008:
	.byte	W18
	.byte		N05   , En3 , v112
	.byte	W06
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N17   
	.byte	W18
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N05   , An2 
	.byte	W06
	.byte		N11   , Bn2 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N11   , An2 
	.byte	W18
	.byte		N32   , An2 , v112, gtp2
	.byte	W06
@ 010   ----------------------------------------
	.byte	W30
	.byte		N09   , Gs2 
	.byte	W12
	.byte		N56   , Gs2 , v112, gtp3
	.byte	W54
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W18
	.byte		N05   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N23   
	.byte	W24
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W06
@ 013   ----------------------------------------
	.byte	W18
	.byte		N05   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N10   
	.byte	W12
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N28   
	.byte	W30
	.byte		N05   , Gs2 
	.byte	W06
	.byte		N40   , An2 
	.byte	W12
@ 014   ----------------------------------------
	.byte	W30
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N54   , En3 
	.byte	W54
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N11   , En3 
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N11   , An2 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 017   ----------------------------------------
	.byte		        Bn2 
	.byte	W18
	.byte		        En3 
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W18
	.byte		N22   
	.byte	W06
@ 018   ----------------------------------------
	.byte	W18
	.byte		N11   , Gs2 
	.byte	W12
	.byte		N56   , Gs2 , v112, gtp3
	.byte	W66
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W12
	.byte		N04   , En3 
	.byte	W06
	.byte		N10   
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N10   , Bn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		N20   , An2 
	.byte	W36
@ 021   ----------------------------------------
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N32   , Bn2 , v112, gtp3
	.byte	W36
	.byte		N05   , An2 
	.byte	W06
	.byte		N32   , An2 , v112, gtp2
	.byte	W12
@ 022   ----------------------------------------
	.byte	W24
	.byte		N05   , Gs2 
	.byte	W06
	.byte		N54   , En3 
	.byte	W66
@ 023   ----------------------------------------
mus_high_and_dry_3_023:
	.byte	W42
	.byte		N22   , Gs2 , v120
	.byte	W24
	.byte		N07   , An2 , v112
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W18
	.byte	PEND
@ 024   ----------------------------------------
mus_high_and_dry_3_024:
	.byte	W06
	.byte		TIE   , Gs3 , v112
	.byte	W90
	.byte	PEND
@ 025   ----------------------------------------
	.byte	W24
	.byte		EOT   
	.byte	W18
	.byte		N20   , Gs2 , v120
	.byte	W24
	.byte		N11   , An2 , v112
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W18
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_3_024
@ 027   ----------------------------------------
	.byte	W17
	.byte		EOT   , Gs3 
	.byte	W01
	.byte		N14   , En3 , v060
	.byte	W24
	.byte		N19   , Gs2 , v112
	.byte	W24
	.byte		N11   , An2 
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W18
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_3_024
@ 029   ----------------------------------------
	.byte	W09
	.byte		EOT   , Gs3 
	.byte	W32
	.byte	W01
	.byte		N11   , An2 , v120
	.byte	W12
	.byte		N06   , Gs2 , v108
	.byte	W12
	.byte		N08   , An2 , v112
	.byte	W12
	.byte		N11   , Gs2 , v096
	.byte	W12
	.byte		N09   , En3 , v108
	.byte	W06
@ 030   ----------------------------------------
	.byte	W06
	.byte		N64   , En3 , v108, gtp1
	.byte	W90
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
	.byte	PATT
	 .word	mus_high_and_dry_3_008
@ 037   ----------------------------------------
	.byte		N11   , Cs3 , v112
	.byte	W18
	.byte		N05   , En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N24   , Bn2 , v112, gtp1
	.byte	W30
	.byte		N16   , An2 
	.byte	W18
	.byte		N23   
	.byte	W06
@ 038   ----------------------------------------
	.byte	W18
	.byte		N05   
	.byte	W06
	.byte		N44   , Gs2 , v112, gtp1
	.byte	W72
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W18
	.byte		N10   , En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N11   
	.byte	W12
	.byte		        Bn2 
	.byte	W06
@ 041   ----------------------------------------
	.byte	W18
	.byte		N10   , En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N15   , Bn2 
	.byte	W18
	.byte		N04   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N10   
	.byte	W12
	.byte		        Gs2 
	.byte	W06
@ 042   ----------------------------------------
	.byte	W07
	.byte		N24   , An2 , v112, gtp2
	.byte	W28
	.byte	W01
	.byte		N16   , Gs2 
	.byte	W18
	.byte		N42   , En3 , v112, gtp1
	.byte	W42
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W18
	.byte		N11   
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N11   , An2 
	.byte	W18
@ 045   ----------------------------------------
	.byte		N04   
	.byte	W06
	.byte		N10   
	.byte	W12
	.byte		N11   , En3 
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N17   
	.byte	W18
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N24   
	.byte	W30
	.byte		N32   , An2 , v112, gtp1
	.byte	W06
@ 046   ----------------------------------------
	.byte	W30
	.byte		N10   , Gs2 
	.byte	W12
	.byte		N48   , Gs2 , v112, gtp1
	.byte	W54
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W18
	.byte		N11   , En3 
	.byte	W12
	.byte		N04   , Cs3 
	.byte	W06
	.byte		N16   
	.byte	W18
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N05   , An2 
	.byte	W06
	.byte		N17   
	.byte	W12
@ 049   ----------------------------------------
	.byte	W18
	.byte		N10   , En3 
	.byte	W12
	.byte		N05   , Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N24   , Bn2 , v112, gtp3
	.byte	W36
	.byte		N52   , An2 
	.byte	W18
@ 050   ----------------------------------------
	.byte	W36
	.byte		N05   , Gs2 
	.byte	W06
	.byte		N56   , En3 , v112, gtp3
	.byte	W54
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_3_023
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_3_024
@ 053   ----------------------------------------
	.byte	W24
	.byte		EOT   , Gs3 
	.byte	W18
	.byte		N20   , Gs2 , v120
	.byte	W24
	.byte		N11   , An2 , v112
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W18
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_3_024
@ 055   ----------------------------------------
	.byte	W17
	.byte		EOT   , Gs3 
	.byte	W01
	.byte		N14   , En3 , v064
	.byte	W24
	.byte		N19   , Gs2 , v112
	.byte	W24
	.byte		N11   , An2 
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W18
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_3_024
@ 057   ----------------------------------------
	.byte	W09
	.byte		EOT   , Gs3 
	.byte	W32
	.byte	W01
	.byte		N20   , Gs2 , v120
	.byte	W24
	.byte		N11   , An2 , v112
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W18
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_3_024
@ 059   ----------------------------------------
	.byte	W17
	.byte		EOT   , Gs3 
	.byte	W01
	.byte		N80   , En3 , v068, gtp2
	.byte	W78
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
	.byte	W42
	.byte		N28   , En3 , v104, gtp1
	.byte	W42
	.byte		N11   , En3 , v116
	.byte	W12
@ 068   ----------------------------------------
	.byte		N05   
	.byte	W06
	.byte		N11   , En3 , v112
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N08   , Bn2 
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N09   , An2 
	.byte	W12
	.byte		N23   , An2 , v108
	.byte	W24
@ 069   ----------------------------------------
	.byte	W12
	.byte		N05   , An2 , v100
	.byte	W06
	.byte		N11   , En3 , v112
	.byte	W12
	.byte		N10   , Cs3 
	.byte	W12
	.byte		        Cs3 , v108
	.byte	W12
	.byte		N07   , Bn2 
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte		N07   , An2 
	.byte	W12
	.byte		N36   , An2 , v108, gtp1
	.byte	W12
@ 070   ----------------------------------------
	.byte	W30
	.byte		N10   , Gs2 , v112
	.byte	W12
	.byte		N60   , Gs2 , v116, gtp1
	.byte	W54
@ 071   ----------------------------------------
	.byte	W90
	.byte		N16   , En3 , v112
	.byte	W06
@ 072   ----------------------------------------
	.byte	W12
	.byte		N04   , En3 , v116
	.byte	W06
	.byte		N11   , En3 , v120
	.byte	W12
	.byte		        Cs3 , v108
	.byte	W12
	.byte		N09   , Cs3 , v112
	.byte	W12
	.byte		N11   , Bn2 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        An2 , v108
	.byte	W06
	.byte		N16   
	.byte	W18
@ 073   ----------------------------------------
	.byte	W12
	.byte		N05   , An2 , v112
	.byte	W06
	.byte		N08   , En3 
	.byte	W12
	.byte		N15   , Cs3 
	.byte	W18
	.byte		N04   
	.byte	W06
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N24   , Bn2 , v108, gtp1
	.byte	W30
	.byte		N09   , Gs2 , v112
	.byte	W06
@ 074   ----------------------------------------
	.byte	W06
	.byte		N28   , An2 
	.byte	W30
	.byte		N11   , Gs2 , v116
	.byte	W12
	.byte		N54   , En3 
	.byte	W48
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_3_023
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_3_024
@ 077   ----------------------------------------
	.byte	W24
	.byte		EOT   , Gs3 
	.byte	W18
	.byte		N20   , Gs2 , v120
	.byte	W24
	.byte		N11   , An2 , v112
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W18
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_3_024
@ 079   ----------------------------------------
	.byte	W17
	.byte		EOT   , Gs3 
	.byte	W01
	.byte		N14   , En3 , v068
	.byte	W24
	.byte		N19   , Gs2 , v112
	.byte	W24
	.byte		N11   , An2 
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W18
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_3_024
@ 081   ----------------------------------------
	.byte	W09
	.byte		EOT   , Gs3 
	.byte	W32
	.byte	W01
	.byte		N20   , Gs2 , v120
	.byte	W24
	.byte		N11   , An2 , v112
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W18
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_3_024
@ 083   ----------------------------------------
	.byte	W17
	.byte		EOT   , Gs3 
	.byte	W01
	.byte		N18   , En3 , v112
	.byte	W24
	.byte		N20   , Gs2 , v120
	.byte	W24
	.byte		N11   , An2 , v112
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W18
@ 084   ----------------------------------------
mus_high_and_dry_3_084:
	.byte	W06
	.byte		TIE   , Bn2 , v112
	.byte	W90
	.byte	PEND
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W04
	.byte		EOT   
	.byte	W92
@ 087   ----------------------------------------
	.byte	W42
	.byte		N23   , Gs2 
	.byte	W24
	.byte		N11   , An2 
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W18
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_high_and_dry_3_084
@ 089   ----------------------------------------
	.byte	W17
	.byte		EOT   , Bn2 
	.byte	W24
	.byte	W01
	.byte		N23   , Gs2 , v112
	.byte	W24
	.byte		N11   , An2 
	.byte	W12
	.byte		N21   , Gs2 
	.byte	W18
@ 090   ----------------------------------------
	.byte	W06
	.byte		N72   , En3 , v096, gtp1
	.byte	W90
@ 091   ----------------------------------------
	.byte	W17
	.byte	GOTO
	 .word	mus_high_and_dry_3_B1
mus_high_and_dry_3_B2:
	.byte	FINE

@******************************************************@
	.align	2

mus_high_and_dry:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_high_and_dry_pri	@ Priority
	.byte	mus_high_and_dry_rev	@ Reverb.

	.word	mus_high_and_dry_grp

	.word	mus_high_and_dry_1
	.word	mus_high_and_dry_2
	.word	mus_high_and_dry_3

	.end
