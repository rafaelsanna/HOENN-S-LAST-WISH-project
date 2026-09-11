	.include "MPlayDef.s"

	.equ	mus_bad_romance_lady_gaga_grp, voicegroup_diva_pop
	.equ	mus_bad_romance_lady_gaga_pri, 0
	.equ	mus_bad_romance_lady_gaga_rev, reverb_set+12
	.equ	mus_bad_romance_lady_gaga_mvl, 90
	.equ	mus_bad_romance_lady_gaga_key, 0
	.equ	mus_bad_romance_lady_gaga_tbs, 1
	.equ	mus_bad_romance_lady_gaga_exg, 1
	.equ	mus_bad_romance_lady_gaga_cmp, 1

	.section .rodata
	.global	mus_bad_romance_lady_gaga
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_bad_romance_lady_gaga_1:
	.byte		VOL   , 127*mus_bad_romance_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_bad_romance_lady_gaga_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 120*mus_bad_romance_lady_gaga_tbs/2
	.byte		VOICE , 1
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W48
	.byte		N12   , Fn1 , v056
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
@ 006   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
@ 007   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N24   
	.byte	W12
@ 008   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N24   
	.byte	W12
@ 009   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
@ 010   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W48
	.byte		N12   , An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 014   ----------------------------------------
mus_bad_romance_lady_gaga_1_014:
	.byte		N12   , En2 , v056
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_bad_romance_lady_gaga_1_015:
	.byte		N12   , En2 , v056
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_bad_romance_lady_gaga_1_016:
	.byte		N12   , En2 , v056
	.byte	W12
	.byte		N12   
	.byte	W48
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_bad_romance_lady_gaga_1_017:
	.byte	W12
	.byte		N24   , Gn1 , v056
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N24   , An1 
	.byte	W24
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_bad_romance_lady_gaga_1_018:
	.byte	W12
	.byte		N24   , An1 , v056
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_bad_romance_lady_gaga_1_019:
	.byte	W60
	.byte		N24   , An1 , v056
	.byte	W24
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_018
@ 021   ----------------------------------------
mus_bad_romance_lady_gaga_1_021:
	.byte	W12
	.byte		N24   , Gn1 , v056
	.byte		N12   , En2 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		N24   , An1 
	.byte	W24
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_bad_romance_lady_gaga_1_022:
	.byte	W12
	.byte		N24   , An1 , v056
	.byte	W24
	.byte		N12   
	.byte	W60
	.byte	PEND
@ 023   ----------------------------------------
mus_bad_romance_lady_gaga_1_023:
	.byte	W12
	.byte		N12   , En2 , v056
	.byte	W48
	.byte		N24   , Cn2 
	.byte	W24
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 024   ----------------------------------------
	.byte	W12
	.byte		        En1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W36
@ 025   ----------------------------------------
	.byte	W36
	.byte		        Dn2 
	.byte	W24
	.byte		N24   , An1 
	.byte	W24
	.byte		N24   
	.byte	W12
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_018
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_021
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_023
@ 032   ----------------------------------------
	.byte	W12
	.byte		N24   , En1 , v056
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N24   
	.byte	W12
@ 033   ----------------------------------------
mus_bad_romance_lady_gaga_1_033:
	.byte	W12
	.byte		N24   , Gn1 , v056
	.byte	W24
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 034   ----------------------------------------
mus_bad_romance_lady_gaga_1_034:
	.byte		N12   , An1 , v056
	.byte	W09
	.byte		N09   , En2 
	.byte	W03
	.byte		N12   , An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_034
@ 036   ----------------------------------------
mus_bad_romance_lady_gaga_1_036:
	.byte		N12   , An1 , v056
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W48
	.byte	W03
	.byte		N48   
	.byte	W09
	.byte	PEND
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
mus_bad_romance_lady_gaga_1_038:
	.byte	W48
	.byte		N12   , Gn1 , v056
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 039   ----------------------------------------
mus_bad_romance_lady_gaga_1_039:
	.byte	W12
	.byte		N24   , Gn1 , v056
	.byte	W24
	.byte		N12   , An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_bad_romance_lady_gaga_1_040:
	.byte	W12
	.byte		N24   , An1 , v056
	.byte	W24
	.byte		N12   
	.byte	W48
	.byte		        En2 
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
mus_bad_romance_lady_gaga_1_041:
	.byte		N12   , Dn2 , v056
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W60
	.byte	PEND
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_038
@ 043   ----------------------------------------
mus_bad_romance_lady_gaga_1_043:
	.byte	W12
	.byte		N24   , Gn1 , v056
	.byte	W24
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 044   ----------------------------------------
mus_bad_romance_lady_gaga_1_044:
	.byte	W12
	.byte		N24   , Gs1 , v056
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte	PEND
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
mus_bad_romance_lady_gaga_1_046:
	.byte	W48
	.byte		N12   , Gn1 , v056
	.byte	W12
	.byte		        Dn2 
	.byte	W36
	.byte	PEND
@ 047   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W36
@ 048   ----------------------------------------
mus_bad_romance_lady_gaga_1_048:
	.byte	W24
	.byte		N12   , En2 , v056
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W24
	.byte	PEND
@ 049   ----------------------------------------
	.byte	W48
	.byte		        Fn1 
	.byte	W48
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_046
@ 051   ----------------------------------------
mus_bad_romance_lady_gaga_1_051:
	.byte	W24
	.byte		N12   , Dn2 , v056
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W24
	.byte	PEND
@ 052   ----------------------------------------
mus_bad_romance_lady_gaga_1_052:
	.byte	W48
	.byte		N12   , An1 , v056
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W24
	.byte	PEND
@ 053   ----------------------------------------
mus_bad_romance_lady_gaga_1_053:
	.byte		N12   , An1 , v056
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_014
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_015
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_016
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_017
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_018
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_019
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_018
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_021
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_022
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_023
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_018
@ 065   ----------------------------------------
	.byte	W12
	.byte		N24   , Gn1 , v056
	.byte	W24
	.byte		N12   , Dn2 
	.byte	W24
	.byte		N24   , An1 
	.byte	W24
	.byte		N24   
	.byte	W12
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_018
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_019
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_018
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_021
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_022
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_023
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_018
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_033
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_034
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_034
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_036
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_038
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_039
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_040
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_041
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_038
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_043
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_044
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W48
	.byte		N12   , En2 , v056
	.byte	W12
	.byte		        Dn2 
	.byte	W36
@ 087   ----------------------------------------
	.byte	W36
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W36
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_048
@ 089   ----------------------------------------
	.byte	W48
	.byte		N12   , Fn1 , v056
	.byte	W48
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_046
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_051
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_052
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_053
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_014
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_015
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_016
@ 097   ----------------------------------------
	.byte	W12
	.byte		N24   , Gn1 , v056
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_014
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_015
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_016
@ 101   ----------------------------------------
	.byte	W12
	.byte		N24   , Gn1 , v056
	.byte	W24
	.byte		N12   
	.byte	W60
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
	.byte	W48
	.byte		N24   , En2 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 108   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N18   , Cn2 
	.byte		N18   , En2 
	.byte	W06
@ 109   ----------------------------------------
	.byte	W12
	.byte		        Cn2 
	.byte		N18   , En2 
	.byte	W18
	.byte		        Cn2 
	.byte		N18   , En2 
	.byte	W30
	.byte		N12   , Cn2 
	.byte	W36
@ 110   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fn1 
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W24
@ 111   ----------------------------------------
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , En2 
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W36
@ 112   ----------------------------------------
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 113   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W36
@ 114   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W36
	.byte		        Gn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 115   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 116   ----------------------------------------
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En2 
	.byte	W24
	.byte		N12   
	.byte	W12
@ 117   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W12
@ 118   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W12
@ 119   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W12
@ 120   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W12
@ 121   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W12
@ 122   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W12
@ 123   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W12
@ 124   ----------------------------------------
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N96   , An1 
	.byte	W48
@ 125   ----------------------------------------
	.byte	W96
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_038
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_039
@ 128   ----------------------------------------
	.byte	W12
	.byte		N24   , An1 , v056
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N48   , Cn2 
	.byte	W48
@ 129   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cn2 
	.byte	W60
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_038
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_043
@ 132   ----------------------------------------
	.byte	W12
	.byte		N24   , Gs1 , v056
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N48   , An1 
	.byte	W48
@ 133   ----------------------------------------
mus_bad_romance_lady_gaga_1_133:
	.byte		N12   , Cn2 , v056
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cn2 
	.byte	W48
	.byte		        En2 
	.byte	W12
	.byte	PEND
@ 134   ----------------------------------------
mus_bad_romance_lady_gaga_1_134:
	.byte	W12
	.byte		N12   , En2 , v056
	.byte	W12
	.byte		N24   , Dn2 
	.byte	W60
	.byte		N12   , Bn1 
	.byte	W12
	.byte	PEND
@ 135   ----------------------------------------
mus_bad_romance_lady_gaga_1_135:
	.byte		N24   , Cn2 , v056
	.byte	W24
	.byte		N12   , Dn2 
	.byte	W72
	.byte	PEND
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_133
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_134
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_135
@ 140   ----------------------------------------
	.byte	W36
	.byte		N12   , Fn1 , v056
	.byte		N12   , Cn2 
	.byte	W12
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_bad_romance_lady_gaga_2:
	.byte		VOL   , 127*mus_bad_romance_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_bad_romance_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		N12   , Cn3 , v048
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W48
	.byte		        En3 
	.byte	W12
@ 001   ----------------------------------------
mus_bad_romance_lady_gaga_2_001:
	.byte	W12
	.byte		N12   , En3 , v048
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W60
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_bad_romance_lady_gaga_2_002:
	.byte		N24   , Cn3 , v048
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W24
	.byte		N24   , En3 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_bad_romance_lady_gaga_2_003:
	.byte		N12   , En3 , v048
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W60
	.byte	PEND
@ 004   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W48
	.byte		        En3 
	.byte	W12
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_003
@ 008   ----------------------------------------
	.byte	W48
	.byte		N24   , An2 , v048
	.byte	W24
	.byte		N24   
	.byte	W24
@ 009   ----------------------------------------
	.byte		N12   , En3 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Fn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N24   , An2 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N24   , An2 
	.byte	W24
	.byte		        Fn2 
	.byte		N24   , An2 
	.byte	W24
@ 011   ----------------------------------------
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte	W24
	.byte		        Cn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 012   ----------------------------------------
mus_bad_romance_lady_gaga_2_012:
	.byte		N12   , Cn3 , v048
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
mus_bad_romance_lady_gaga_2_013:
	.byte		N12   , En3 , v048
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N12   
	.byte		N12   , En3 
	.byte	W24
	.byte		        An2 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
mus_bad_romance_lady_gaga_2_014:
	.byte		N12   , En3 , v048
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 015   ----------------------------------------
mus_bad_romance_lady_gaga_2_015:
	.byte		N12   , En3 , v048
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N12   
	.byte		N12   , En3 
	.byte	W24
	.byte		        Cn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_bad_romance_lady_gaga_2_016:
	.byte		N12   , Cn3 , v048
	.byte	W24
	.byte		N24   
	.byte	W36
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_bad_romance_lady_gaga_2_017:
	.byte		N12   , An2 , v048
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_bad_romance_lady_gaga_2_018:
	.byte		N12   , Gn2 , v048
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        An2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_bad_romance_lady_gaga_2_019:
	.byte		N12   , An2 , v048
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_bad_romance_lady_gaga_2_020:
	.byte	W24
	.byte		N12   , Gn2 , v048
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
mus_bad_romance_lady_gaga_2_022:
	.byte		N12   , Cn3 , v048
	.byte		N12   , En3 
	.byte	W24
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 023   ----------------------------------------
	.byte	W72
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 024   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W36
	.byte		        Cn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 025   ----------------------------------------
mus_bad_romance_lady_gaga_2_025:
	.byte		N12   , Cn3 , v048
	.byte	W12
	.byte		N18   
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N24   , Cn3 
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
mus_bad_romance_lady_gaga_2_026:
	.byte	W12
	.byte		N24   , Fn2 , v048
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		        Cn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_bad_romance_lady_gaga_2_027:
	.byte		N12   , Cn3 , v048
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_bad_romance_lady_gaga_2_028:
	.byte		N12   , Gn2 , v048
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_022
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
mus_bad_romance_lady_gaga_2_032:
	.byte	W66
	.byte		N06   , Gn2 , v048
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte	PEND
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_032
@ 034   ----------------------------------------
mus_bad_romance_lady_gaga_2_034:
	.byte	W60
	.byte		N12   , An2 , v048
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
mus_bad_romance_lady_gaga_2_035:
	.byte		N24   , An2 , v048
	.byte	W36
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N06   , Gn2 
	.byte	W24
	.byte	PEND
@ 036   ----------------------------------------
mus_bad_romance_lady_gaga_2_036:
	.byte	W48
	.byte		N12   , Fn2 , v048
	.byte	W12
	.byte		N24   
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_bad_romance_lady_gaga_2_037:
	.byte		N12   , Cn3 , v048
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N12   , Cn3 
	.byte	W24
	.byte		        Fn2 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
mus_bad_romance_lady_gaga_2_038:
	.byte	W12
	.byte		N24   , Gn2 , v048
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 039   ----------------------------------------
mus_bad_romance_lady_gaga_2_039:
	.byte		N24   , Bn2 , v048
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		N12   , An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W24
	.byte	PEND
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_037
@ 042   ----------------------------------------
mus_bad_romance_lady_gaga_2_042:
	.byte	W12
	.byte		N24   , Gn2 , v048
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W24
	.byte		        Gs2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 043   ----------------------------------------
mus_bad_romance_lady_gaga_2_043:
	.byte		N24   , Bn2 , v048
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W03
	.byte		        Cn3 
	.byte	W48
	.byte	W03
	.byte	PEND
@ 044   ----------------------------------------
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , En3 
	.byte	W12
@ 045   ----------------------------------------
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N24   , Dn3 
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W36
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   
	.byte	W12
@ 046   ----------------------------------------
	.byte		        Cn3 
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N36   , En3 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte		N12   
	.byte	W12
@ 047   ----------------------------------------
mus_bad_romance_lady_gaga_2_047:
	.byte		N12   , Cn3 , v048
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W48
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 048   ----------------------------------------
mus_bad_romance_lady_gaga_2_048:
	.byte		N12   , Cn3 , v048
	.byte		N12   
	.byte	W12
	.byte		        Dn3 
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   
	.byte	W12
	.byte		        Cn3 
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 049   ----------------------------------------
mus_bad_romance_lady_gaga_2_049:
	.byte		N12   , An2 , v048
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   
	.byte	W12
	.byte		        Cn3 
	.byte	W36
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
mus_bad_romance_lady_gaga_2_050:
	.byte		N12   , Cn3 , v048
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N36   , En3 
	.byte	W36
	.byte		N12   , Gs2 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
mus_bad_romance_lady_gaga_2_051:
	.byte		N12   , Bn2 , v048
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   
	.byte	W36
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
mus_bad_romance_lady_gaga_2_052:
	.byte		N12   , En3 , v048
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 053   ----------------------------------------
	.byte		N12   , En3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N12   
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 054   ----------------------------------------
	.byte		N12   , En3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        En3 
	.byte	W24
	.byte		        An2 
	.byte	W12
	.byte		N24   
	.byte	W24
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_015
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_016
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_017
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_018
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_019
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_020
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_022
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W60
	.byte		N12   , Cn3 , v048
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_025
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_026
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_027
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_028
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_022
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_032
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_032
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_034
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_035
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_036
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_037
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_038
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_039
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_036
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_037
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_042
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_043
@ 084   ----------------------------------------
	.byte		N12   , An2 , v048
	.byte		N12   
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N12   
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , En3 
	.byte	W12
@ 085   ----------------------------------------
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W36
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 086   ----------------------------------------
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W24
	.byte		N36   , En3 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte		N12   
	.byte	W12
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_047
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_048
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_049
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_050
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_051
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_052
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_013
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_014
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_015
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_012
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_013
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_014
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_015
@ 100   ----------------------------------------
	.byte		N12   , Cn3 , v048
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 101   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 102   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Cn3 
	.byte	W24
@ 103   ----------------------------------------
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
@ 104   ----------------------------------------
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N18   , Gn2 
	.byte		N18   , Cn3 
	.byte	W18
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte	W24
@ 105   ----------------------------------------
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
@ 106   ----------------------------------------
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte		N06   , En3 
	.byte	W06
	.byte		N18   , Gn2 
	.byte		N18   , Cn3 
	.byte		N18   , En3 
	.byte	W18
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte	W24
	.byte		        Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte	W24
@ 107   ----------------------------------------
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N18   , Gn2 
	.byte		N18   , Cn3 
	.byte		N18   , En3 
	.byte	W06
@ 108   ----------------------------------------
	.byte	W12
	.byte		        Gn2 
	.byte		N18   , Cn3 
	.byte		N18   , En3 
	.byte	W18
	.byte		        Gn2 
	.byte		N18   , Cn3 
	.byte		N18   , En3 
	.byte	W18
	.byte		N12   , Fn2 
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte		N12   , Cn3 
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte		N12   
	.byte	W12
@ 109   ----------------------------------------
	.byte		        Fn2 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   
	.byte	W24
	.byte		        An2 
	.byte		N12   
	.byte	W36
	.byte		        Cn3 
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte		N12   
	.byte	W12
@ 110   ----------------------------------------
	.byte		        Fn2 
	.byte		N12   , Bn2 
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte		N12   
	.byte	W48
	.byte		        Cn3 
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte		N12   
	.byte	W12
@ 111   ----------------------------------------
	.byte		        An2 
	.byte	W12
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N12   , An2 
	.byte	W36
	.byte		        En3 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 112   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W36
	.byte		        Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        An2 
	.byte		N24   , Bn2 
	.byte	W12
@ 113   ----------------------------------------
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        An2 
	.byte		N12   
	.byte	W36
	.byte		        Cn3 
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 114   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W48
	.byte		        Cn3 
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte		N12   
	.byte	W12
@ 115   ----------------------------------------
	.byte	W12
	.byte		        Gn2 
	.byte		N12   
	.byte	W24
	.byte		        An2 
	.byte	W36
	.byte		N12   
	.byte		N12   , En3 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 116   ----------------------------------------
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W60
@ 117   ----------------------------------------
	.byte	W72
	.byte		N12   
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte	W12
@ 118   ----------------------------------------
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An2 
	.byte		N12   , Cn3 
	.byte	W60
@ 119   ----------------------------------------
	.byte	W96
@ 120   ----------------------------------------
	.byte	W96
@ 121   ----------------------------------------
	.byte	W96
@ 122   ----------------------------------------
	.byte	W96
@ 123   ----------------------------------------
	.byte	W96
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_036
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_037
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_038
@ 127   ----------------------------------------
	.byte		N24   , Bn2 , v048
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W03
	.byte		        Cn3 
	.byte	W48
	.byte	W03
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_036
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_037
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_042
@ 131   ----------------------------------------
	.byte		N24   , Bn2 , v048
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		N48   
	.byte	W48
@ 132   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn2 
	.byte	W48
@ 133   ----------------------------------------
	.byte		N12   
	.byte	W96
@ 134   ----------------------------------------
mus_bad_romance_lady_gaga_2_134:
	.byte	W48
	.byte		N24   , An2 , v048
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte	W36
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 135   ----------------------------------------
	.byte		        Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W60
@ 136   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn2 
	.byte	W48
@ 137   ----------------------------------------
	.byte		N12   
	.byte	W96
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_2_134
@ 139   ----------------------------------------
	.byte		N12   , Bn2 , v048
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_bad_romance_lady_gaga_3:
	.byte		VOL   , 127*mus_bad_romance_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_bad_romance_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 7
	.byte	W48
	.byte		N36   , Fn3 , v060
	.byte	W48
@ 001   ----------------------------------------
	.byte		N12   
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W48
	.byte		N36   
	.byte	W48
@ 005   ----------------------------------------
	.byte		N12   
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W72
@ 010   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W72
@ 011   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W72
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W72
@ 014   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W72
@ 015   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W72
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
mus_bad_romance_lady_gaga_3_021:
	.byte	W48
	.byte		N24   , An3 , v060
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
	.byte		N12   , An3 
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
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_3_021
@ 030   ----------------------------------------
	.byte		N12   , An3 , v060
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
mus_bad_romance_lady_gaga_3_036:
	.byte	W60
	.byte		N12   , Fn3 , v060
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_bad_romance_lady_gaga_3_037:
	.byte		N12   , Fn3 , v060
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , An3 
	.byte	W24
	.byte		        Gn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte	PEND
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte		N24   
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_3_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_3_037
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte		N24   , Gs3 , v060
	.byte	W96
@ 044   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn3 
	.byte	W48
@ 045   ----------------------------------------
	.byte		N12   
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W48
	.byte		N36   
	.byte	W48
@ 049   ----------------------------------------
	.byte		N12   
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W12
	.byte		        An3 
	.byte	W84
@ 053   ----------------------------------------
	.byte	W24
	.byte		        Fn3 
	.byte	W72
@ 054   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W72
@ 055   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W72
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
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_3_021
@ 062   ----------------------------------------
	.byte		N12   , An3 , v060
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
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_3_021
@ 070   ----------------------------------------
	.byte		N12   , An3 , v060
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
	 .word	mus_bad_romance_lady_gaga_3_036
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_3_037
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte		N24   , Gn3 , v060
	.byte	W96
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_3_036
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_3_037
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte		N24   , Gs3 , v060
	.byte	W96
@ 084   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn3 
	.byte	W48
@ 085   ----------------------------------------
	.byte		N12   
	.byte	W36
	.byte		        An3 
	.byte	W36
	.byte		        Gn3 
	.byte	W12
	.byte		N24   
	.byte	W12
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W48
	.byte		N36   , Fn3 
	.byte	W48
@ 089   ----------------------------------------
	.byte		N12   
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W12
	.byte		        An3 
	.byte	W84
@ 093   ----------------------------------------
	.byte	W24
	.byte		        Fn3 
	.byte	W72
@ 094   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W72
@ 095   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W72
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W72
@ 098   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W72
@ 099   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W72
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
	.byte	W96
@ 117   ----------------------------------------
	.byte	W96
@ 118   ----------------------------------------
	.byte	W24
	.byte		        Gn3 
	.byte	W72
@ 119   ----------------------------------------
	.byte	W72
	.byte		        Cn4 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 120   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W18
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W36
@ 121   ----------------------------------------
mus_bad_romance_lady_gaga_3_121:
	.byte	W60
	.byte		N12   , Cn4 , v060
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 122   ----------------------------------------
mus_bad_romance_lady_gaga_3_122:
	.byte		N12   , Cn4 , v060
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W72
	.byte	PEND
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_3_121
@ 124   ----------------------------------------
	.byte		N12   , Cn4 , v060
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W36
	.byte		        Fn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , An3 
	.byte	W12
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_3_037
@ 126   ----------------------------------------
	.byte	W96
@ 127   ----------------------------------------
	.byte		N24   , Gn3 , v060
	.byte	W96
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_3_036
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_3_037
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte		N24   , Gs3 , v060
	.byte	W96
@ 132   ----------------------------------------
	.byte	W96
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_3_121
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_3_122
@ 135   ----------------------------------------
	.byte		N12   , Gn3 , v060
	.byte	W60
	.byte		        Cn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_3_122
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_3_121
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_3_122
@ 139   ----------------------------------------
	.byte		N12   , Gn3 , v060
	.byte	W36
	.byte		        Fn3 
	.byte	W12
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_bad_romance_lady_gaga_4:
	.byte		VOL   , 127*mus_bad_romance_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_bad_romance_lady_gaga_key+0
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
mus_bad_romance_lady_gaga_4_021:
	.byte	W48
	.byte		N12   , An3 , v032
	.byte		N12   , Cn4 
	.byte		N12   , En4 
	.byte	W24
	.byte		        An3 
	.byte		N12   , Cn4 
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
	.byte		        An3 
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
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_021
@ 030   ----------------------------------------
	.byte		N12   , An3 , v032
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
mus_bad_romance_lady_gaga_4_036:
	.byte	W60
	.byte		N12   , An3 , v032
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 037   ----------------------------------------
mus_bad_romance_lady_gaga_4_037:
	.byte		N12   , An3 , v032
	.byte	W12
	.byte		N12   
	.byte	W84
	.byte	PEND
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_037
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
	.byte	W12
	.byte		N12   , An3 , v032
	.byte	W84
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
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_021
@ 062   ----------------------------------------
	.byte		N12   , An3 , v032
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
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_021
@ 070   ----------------------------------------
	.byte		N12   , An3 , v032
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
	 .word	mus_bad_romance_lady_gaga_4_036
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_037
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_036
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_037
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W36
	.byte		N12   , An3 , v032
	.byte	W60
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
	.byte	W12
	.byte		N12   
	.byte	W84
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
	.byte	W96
@ 117   ----------------------------------------
	.byte	W96
@ 118   ----------------------------------------
	.byte	W96
@ 119   ----------------------------------------
	.byte	W72
	.byte		        Cn4 
	.byte	W12
	.byte		N12   
	.byte	W12
@ 120   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W60
@ 121   ----------------------------------------
mus_bad_romance_lady_gaga_4_121:
	.byte	W60
	.byte		N12   , Cn4 , v032
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 122   ----------------------------------------
mus_bad_romance_lady_gaga_4_122:
	.byte		N12   , Cn4 , v032
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W72
	.byte	PEND
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_121
@ 124   ----------------------------------------
	.byte		N12   , Cn4 , v032
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W36
	.byte		        An3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_037
@ 126   ----------------------------------------
	.byte	W96
@ 127   ----------------------------------------
	.byte	W96
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_036
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_037
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte	W96
@ 132   ----------------------------------------
	.byte	W96
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_121
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_122
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_121
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_122
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_121
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_4_122
@ 139   ----------------------------------------
	.byte	W48
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_bad_romance_lady_gaga_5:
	.byte		VOL   , 127*mus_bad_romance_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_bad_romance_lady_gaga_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 8
	.byte		N03   , Cn1 , v060
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        Cn1 , v056
	.byte		N03   , En1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        Cn1 , v056
	.byte		N03   , En1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
@ 001   ----------------------------------------
mus_bad_romance_lady_gaga_5_001:
	.byte		N03   , Cn1 , v060
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        Cn1 , v056
	.byte		N03   , En1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        Cn1 , v060
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        Cn1 , v056
	.byte		N03   , En1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 084   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 085   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 086   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 096   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_5_001
@ 139   ----------------------------------------
	.byte		N03   , Cn1 , v060
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte		        Cn1 , v056
	.byte		N03   , En1 , v064
	.byte		N03   , Fs1 , v032
	.byte	W12
	.byte		        Fs1 , v028
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

mus_bad_romance_lady_gaga:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_bad_romance_lady_gaga_pri	@ Priority
	.byte	mus_bad_romance_lady_gaga_rev	@ Reverb.

	.word	mus_bad_romance_lady_gaga_grp

	.word	mus_bad_romance_lady_gaga_1
	.word	mus_bad_romance_lady_gaga_2
	.word	mus_bad_romance_lady_gaga_3
	.word	mus_bad_romance_lady_gaga_4
	.word	mus_bad_romance_lady_gaga_5

	.end
