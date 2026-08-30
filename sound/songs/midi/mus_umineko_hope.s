	.include "MPlayDef.s"

	.equ	mus_umineko_hope_grp, voicegroup_littleroot_test
	.equ	mus_umineko_hope_pri, 0
	.equ	mus_umineko_hope_rev, reverb_set+50
	.equ	mus_umineko_hope_mvl, 92
	.equ	mus_umineko_hope_key, 0
	.equ	mus_umineko_hope_tbs, 1
	.equ	mus_umineko_hope_exg, 1
	.equ	mus_umineko_hope_cmp, 1

	.section .rodata
	.global	mus_umineko_hope
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_umineko_hope_1:
	.byte	KEYSH , mus_umineko_hope_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		VOICE , 35
	.byte		VOL   , 127*mus_umineko_hope_mvl/mxv
	.byte		PAN   , c_v-24
	.byte		N12   , Fn2 , v104
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   , En2 
	.byte	W24
	.byte		N12   , An1 
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N12   , As1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N36   , Fn2 
	.byte	W36
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N11   , Cn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   , An1 
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte		N12   , Gn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		N11   , Gn2 
	.byte	W12
@ 003   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte		N12   , En2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		N11   , Dn2 
	.byte	W06
	.byte	TEMPO , 126*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 126*mus_umineko_hope_tbs/2
	.byte		N06   , En2 
	.byte	W06
	.byte	TEMPO , 125*mus_umineko_hope_tbs/2
	.byte		        Cn2 
	.byte	W06
@ 004   ----------------------------------------
	.byte		N12   , Fn2 
	.byte	W06
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   , En2 
	.byte	W24
	.byte		N12   , An1 
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N12   , As1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   , Dn2 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N11   , Cn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   , An1 
	.byte	W24
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W12
@ 007   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W01
	.byte	TEMPO , 120*mus_umineko_hope_tbs/2
	.byte	W11
	.byte		        Cn2 
	.byte	W03
	.byte	TEMPO , 110*mus_umineko_hope_tbs/2
	.byte	W09
	.byte		        Fn2 
	.byte	W04
	.byte	TEMPO , 101*mus_umineko_hope_tbs/2
	.byte	W08
	.byte		N36   , En2 
	.byte	W06
	.byte	TEMPO , 91*mus_umineko_hope_tbs/2
	.byte	W13
	.byte	TEMPO , 81*mus_umineko_hope_tbs/2
	.byte	W14
	.byte	TEMPO , 72*mus_umineko_hope_tbs/2
	.byte	W13
	.byte	TEMPO , 62*mus_umineko_hope_tbs/2
	.byte	W02
@ 008   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W90
	.byte		N06   , Cn2 
	.byte	W06
@ 009   ----------------------------------------
	.byte		N48   , Fn2 
	.byte	W96
@ 010   ----------------------------------------
	.byte		N36   , Cn2 
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N12   , Dn2 , v120
	.byte	W12
	.byte		        An1 , v116
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   , En2 
	.byte	W24
	.byte		N12   , An1 
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N12   , As1 , v120
	.byte	W12
	.byte		        An1 , v116
	.byte	W12
	.byte		        Dn2 , v104
	.byte	W12
	.byte		N24   , Dn2 , v116
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte		N12   
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		N11   , Cn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		        An1 
	.byte	W12
@ 013   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N12   , Fn2 , v120
	.byte	W12
	.byte		        Cn2 , v116
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   , An1 
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte		N12   , Gn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		N11   , Fn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Fn2 , v104
	.byte	W06
@ 014   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N12   , Cn2 , v120
	.byte	W12
	.byte		        Gn2 , v116
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N12   , En2 
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N12   , Dn2 , v120
	.byte	W12
	.byte		        An1 , v116
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N12   , An1 
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N12   , As1 , v120
	.byte	W12
	.byte		        An1 , v116
	.byte	W12
	.byte		        Dn2 , v104
	.byte	W12
	.byte		N24   , Dn2 , v116
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N11   , Cn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N12   , Cn2 , v120
	.byte	W12
	.byte		        Gn2 , v116
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		        En2 , v104
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte		        Dn2 , v116
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		N11   , Cn2 
	.byte	W06
	.byte	TEMPO , 126*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 126*mus_umineko_hope_tbs/2
	.byte		        Dn2 
	.byte	W06
	.byte	TEMPO , 125*mus_umineko_hope_tbs/2
	.byte	W06
@ 018   ----------------------------------------
	.byte		N12   , Fn2 , v120
	.byte	W06
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		        Cn2 , v116
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N23   , An1 
	.byte	W36
	.byte		N11   , Gn2 , v104
	.byte	W12
@ 019   ----------------------------------------
mus_umineko_hope_1_019:
	.byte		N12   , Dn2 , v104
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   , En2 
	.byte	W24
	.byte		N12   , An1 
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_umineko_hope_1_020:
	.byte		N12   , As1 , v104
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte		N12   
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		N11   , Cn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   , An1 
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte		N12   , Gn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		N11   , Gn2 
	.byte	W12
@ 022   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N12   , En2 
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_1_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_1_020
@ 025   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N12   , Fn2 , v104
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   , An1 
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W12
	.byte	TEMPO , 125*mus_umineko_hope_tbs/2
	.byte		N12   , Gn2 
	.byte	W12
	.byte	TEMPO , 120*mus_umineko_hope_tbs/2
	.byte		        Fn2 
	.byte	W12
	.byte	TEMPO , 115*mus_umineko_hope_tbs/2
	.byte		N11   , Gn2 
	.byte	W12
@ 026   ----------------------------------------
	.byte	TEMPO , 111*mus_umineko_hope_tbs/2
	.byte		N12   , Cn2 
	.byte	W12
	.byte	TEMPO , 106*mus_umineko_hope_tbs/2
	.byte		        Gn2 
	.byte	W12
	.byte	TEMPO , 101*mus_umineko_hope_tbs/2
	.byte		        Fn2 
	.byte	W12
	.byte	TEMPO , 16*mus_umineko_hope_tbs/2
	.byte		        En2 
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N24   , An1 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
@ 027   ----------------------------------------
mus_umineko_hope_1_027:
	.byte		N12   , Dn2 , v127
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_umineko_hope_1_028:
	.byte		N12   , As1 , v127
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		        Cn2 
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte		        As1 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		N11   , Fn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte		N12   , Fn2 , v120
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		        Cn2 , v116
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		N06   , Gn2 , v112
	.byte	W06
	.byte		        Fn2 
	.byte	W06
@ 030   ----------------------------------------
mus_umineko_hope_1_030:
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N11   , Fn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte	PEND
@ 031   ----------------------------------------
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N12   , Dn2 , v127
	.byte	W12
	.byte		N11   , En2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 032   ----------------------------------------
	.byte		N12   , As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N24   , As1 , v120
	.byte	W24
	.byte		N12   , Fn2 , v127
	.byte	W12
	.byte		        As1 , v124
	.byte	W12
	.byte		N11   , Gn2 , v112
	.byte	W12
@ 033   ----------------------------------------
mus_umineko_hope_1_033:
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N12   
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte		        Gn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		N11   , En2 
	.byte	W06
	.byte	TEMPO , 126*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 126*mus_umineko_hope_tbs/2
	.byte		        Dn2 
	.byte	W06
	.byte	TEMPO , 125*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	PEND
@ 034   ----------------------------------------
	.byte		N12   , Fn2 
	.byte	W06
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N36   , An1 
	.byte	W36
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Gn2 , v112
	.byte	W06
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_1_027
@ 036   ----------------------------------------
	.byte		N12   , As1 , v127
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   , As1 
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte		N12   , Cn2 , v112
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		        En2 , v104
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		N11   , An1 , v127
	.byte	W12
@ 037   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte		N12   , Fn2 , v120
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		        Cn2 , v127
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		N06   , Gn2 , v112
	.byte	W06
	.byte		        An1 
	.byte	W06
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_1_030
@ 039   ----------------------------------------
	.byte		N12   , As1 , v127
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N12   , As1 , v120
	.byte	W12
	.byte		N11   , En2 , v127
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 040   ----------------------------------------
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N12   , Cn2 , v124
	.byte	W12
	.byte		        Cn2 , v104
	.byte	W12
@ 041   ----------------------------------------
	.byte		        Dn2 , v127
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 , v124
	.byte	W12
	.byte		N24   , Gn2 , v120
	.byte	W24
	.byte		N12   , Gn2 , v116
	.byte	W12
	.byte		N11   , En2 
	.byte	W12
	.byte		N06   , Dn2 , v112
	.byte	W06
	.byte		        Dn2 , v108
	.byte	W06
@ 042   ----------------------------------------
	.byte		N36   , Dn2 , v104
	.byte	W36
	.byte		N24   
	.byte	W36
	.byte		N11   , En2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 043   ----------------------------------------
	.byte		N12   , As1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N24   , As1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
@ 044   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 045   ----------------------------------------
	.byte		N24   , Dn2 
	.byte	W24
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 046   ----------------------------------------
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N11   , Cn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 047   ----------------------------------------
	.byte		N24   , As1 
	.byte	W24
	.byte		N12   , An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N11   
	.byte	W24
@ 048   ----------------------------------------
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
@ 049   ----------------------------------------
	.byte		N36   , Dn2 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N24   , An1 
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		N11   , Dn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		        An1 
	.byte	W12
@ 050   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W12
@ 051   ----------------------------------------
	.byte		N36   
	.byte	W36
	.byte		N24   
	.byte	W24
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N11   , Fn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 052   ----------------------------------------
	.byte		N24   , An1 
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 053   ----------------------------------------
	.byte		        Fn2 
	.byte	W24
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N36   , As1 
	.byte	W36
	.byte		N24   , Gn2 
	.byte	W24
@ 054   ----------------------------------------
	.byte		N36   , Dn2 
	.byte	W36
	.byte		N12   , Gn2 
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N24   
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		N12   , Cn2 
	.byte	W06
	.byte	TEMPO , 126*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 126*mus_umineko_hope_tbs/2
	.byte		N11   , Gn2 
	.byte	W06
	.byte	TEMPO , 125*mus_umineko_hope_tbs/2
	.byte	W06
@ 055   ----------------------------------------
	.byte		N24   
	.byte	W06
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W18
	.byte		N12   , An1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 056   ----------------------------------------
	.byte		N36   , An1 
	.byte	W36
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N11   , An1 
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W12
@ 057   ----------------------------------------
	.byte		        As1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   , En2 
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte		N12   , Dn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		N11   
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		        En2 
	.byte	W12
@ 058   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N48   , Dn2 
	.byte	W72
	.byte		N12   , An1 , v124
	.byte	W12
	.byte		N06   , Cn2 , v104
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_1_027
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_1_028
@ 061   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N12   , Fn2 , v127
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte		N12   
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_1_030
@ 063   ----------------------------------------
	.byte		N12   , Dn2 , v127
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Cn2 , v127
	.byte	W12
	.byte		        Dn2 , v120
	.byte	W12
	.byte		N11   , En2 , v127
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 064   ----------------------------------------
	.byte		N12   , As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N24   , As1 , v120
	.byte	W24
	.byte		N12   , Fn2 , v127
	.byte	W12
	.byte		        As1 , v120
	.byte	W12
	.byte		N11   , Gn2 , v127
	.byte	W12
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_1_033
@ 066   ----------------------------------------
	.byte		N12   , Fn2 , v127
	.byte	W06
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N36   , An1 
	.byte	W36
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_1_027
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_1_028
@ 069   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N12   , Fn2 , v127
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte		N12   , Fn2 , v120
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		        Cn2 , v127
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_1_030
@ 071   ----------------------------------------
	.byte		N12   , As1 , v127
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N11   , En2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 072   ----------------------------------------
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N12   , Cn2 , v120
	.byte	W12
	.byte		N12   
	.byte	W12
@ 073   ----------------------------------------
	.byte		        Dn2 , v127
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 , v124
	.byte	W12
	.byte		        Gn2 , v127
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 074   ----------------------------------------
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 075   ----------------------------------------
	.byte		N12   , As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N11   , As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 076   ----------------------------------------
	.byte		N12   , As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		        As1 
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte		        Fn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		N11   , As1 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		N12   , Fn2 
	.byte	W12
@ 077   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N12   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		        Fn2 
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte		        Cn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		N11   , Fn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		        Cn2 
	.byte	W12
@ 078   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 , v124
	.byte	W12
	.byte		        Gn2 , v127
	.byte	W12
	.byte		N11   , Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 079   ----------------------------------------
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 080   ----------------------------------------
	.byte		N12   , As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N11   , As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 081   ----------------------------------------
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N24   , Cn2 , v120
	.byte	W24
@ 082   ----------------------------------------
	.byte		N48   , As1 , v127
	.byte	W72
	.byte		N11   , An1 , v104
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 083   ----------------------------------------
	.byte		N48   , Dn2 
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 084   ----------------------------------------
	.byte		N36   , As1 
	.byte	W36
	.byte		        Cn2 
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		N24   , En2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte	W12
@ 085   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N36   , Fn2 
	.byte	W36
	.byte		N23   , As1 
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte		N11   , Fn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
@ 086   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N36   , Cn2 
	.byte	W36
	.byte		N36   
	.byte	W36
	.byte		N11   , An1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 087   ----------------------------------------
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		        An1 
	.byte	W24
@ 088   ----------------------------------------
	.byte		        As1 
	.byte	W24
	.byte		        Fn2 
	.byte	W36
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 089   ----------------------------------------
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N11   
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte		        An1 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		        Gn2 
	.byte	W06
	.byte	TEMPO , 126*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 126*mus_umineko_hope_tbs/2
	.byte		        Fn2 
	.byte	W06
	.byte	TEMPO , 125*mus_umineko_hope_tbs/2
	.byte	W06
@ 090   ----------------------------------------
	.byte		N24   
	.byte	W06
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W18
	.byte		N24   
	.byte	W24
	.byte		N36   
	.byte	W36
	.byte		N06   , An1 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
@ 091   ----------------------------------------
	.byte		N24   , Dn2 
	.byte	W24
	.byte		N48   , Fn2 
	.byte	W48
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 092   ----------------------------------------
	.byte		N48   , As1 
	.byte	W48
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N24   , Fn2 
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte	W12
@ 093   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N36   , Fn2 
	.byte	W36
	.byte		N23   , As1 
	.byte	W12
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 129*mus_umineko_hope_tbs/2
	.byte		N24   , Cn2 
	.byte	W06
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W12
	.byte	TEMPO , 128*mus_umineko_hope_tbs/2
	.byte	W06
	.byte	TEMPO , 127*mus_umineko_hope_tbs/2
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
@ 094   ----------------------------------------
	.byte	TEMPO , 130*mus_umineko_hope_tbs/2
	.byte		N48   , Cn2 
	.byte	W72
	.byte		N11   , An1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 095   ----------------------------------------
	.byte		N48   , As1 
	.byte	W72
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 096   ----------------------------------------
	.byte		N48   , Cn2 
	.byte	W48
	.byte		N36   , En2 
	.byte	W36
	.byte		N12   , Fn2 
	.byte	W12
@ 097   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 098   ----------------------------------------
	.byte	W06
	.byte		VOL   , 127*mus_umineko_hope_mvl/mxv
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_umineko_hope_2:
	.byte	KEYSH , mus_umineko_hope_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 96*mus_umineko_hope_mvl/mxv
	.byte		PAN   , c_v-17
	.byte		N24   , Dn5 , v044
	.byte	W24
	.byte		N23   , Fn5 
	.byte	W36
	.byte		        An5 
	.byte	W36
@ 001   ----------------------------------------
	.byte		TIE   , As4 
	.byte	W96
@ 002   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W01
	.byte		N23   , Cn6 
	.byte	W23
	.byte		N32   , An5 , v044, gtp3
	.byte	W36
	.byte		        Fn5 , v044, gtp3
	.byte	W24
@ 003   ----------------------------------------
	.byte	W13
	.byte		N23   , Gn5 
	.byte	W23
	.byte		N32   , Fn5 , v044, gtp3
	.byte	W36
	.byte		N11   , Dn5 
	.byte	W21
	.byte		TIE   , Fn4 
	.byte	W03
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W84
@ 006   ----------------------------------------
	.byte		N72   
	.byte	W72
	.byte		N32   , Fn4 , v044, gtp3
	.byte	W24
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		N60   , Fn4 , v044, gtp2
	.byte	W02
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W72
	.byte		N11   , Dn3 , v056
	.byte	W12
	.byte		        En3 , v060
	.byte	W12
@ 011   ----------------------------------------
	.byte	W13
	.byte		N23   , An3 , v088
	.byte	W23
	.byte		N32   , En4 , v088, gtp3
	.byte	W36
	.byte		N11   , Dn4 
	.byte	W24
@ 012   ----------------------------------------
mus_umineko_hope_2_012:
	.byte	W13
	.byte		N23   , An3 , v088
	.byte	W56
	.byte	W03
	.byte		N11   , Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte		N24   , Fn3 , v092
	.byte	W72
	.byte		N11   , Fn3 , v088
	.byte	W24
@ 014   ----------------------------------------
	.byte	W13
	.byte		N23   , Gn3 
	.byte	W80
	.byte	W03
@ 015   ----------------------------------------
	.byte	W13
	.byte		        An3 
	.byte	W44
	.byte	W03
	.byte		N23   
	.byte	W36
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_2_012
@ 017   ----------------------------------------
	.byte	W13
	.byte		N23   , Gn3 , v088
	.byte	W44
	.byte	W03
	.byte		        An5 , v060
	.byte	W36
@ 018   ----------------------------------------
	.byte	W48
	.byte		N32   , Fn5 , v064, gtp3
	.byte	W48
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
	.byte		N80   , Fn4 , v092, gtp3
	.byte	W84
	.byte		N11   , En4 , v084
	.byte	W12
@ 028   ----------------------------------------
	.byte		N48   , Fn4 , v096
	.byte	W48
	.byte		N32   , Fn4 , v088, gtp3
	.byte	W48
@ 029   ----------------------------------------
	.byte		N48   , An4 , v096
	.byte	W60
	.byte		N23   , Fn4 , v084
	.byte	W24
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N17   , Fn4 
	.byte	W06
@ 030   ----------------------------------------
	.byte	W84
	.byte		N11   , Gn4 
	.byte	W12
@ 031   ----------------------------------------
	.byte		N24   , Fn4 , v096, gtp1
	.byte	W72
	.byte		N32   , An4 , v088, gtp3
	.byte	W24
@ 032   ----------------------------------------
	.byte	W24
	.byte		N44   , Fn4 , v088, gtp3
	.byte	W60
	.byte		N11   , Gn4 , v084
	.byte	W12
@ 033   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte		N12   , Gn4 , v088
	.byte	W12
	.byte		        Gn4 , v092
	.byte	W12
	.byte		N23   , Gn4 , v088
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Fn4 , v084
	.byte	W12
@ 034   ----------------------------------------
	.byte		N36   , En4 , v092
	.byte	W96
@ 035   ----------------------------------------
	.byte		        Cn4 , v084
	.byte	W72
	.byte		N11   , Dn4 , v088
	.byte	W24
@ 036   ----------------------------------------
	.byte		N48   , Cn4 , v084
	.byte	W60
	.byte		N23   
	.byte	W36
@ 037   ----------------------------------------
	.byte		N48   , Fn4 
	.byte	W72
	.byte		N23   , Cn4 , v100
	.byte	W24
@ 038   ----------------------------------------
	.byte		N36   , Cn4 , v084
	.byte	W36
	.byte		N32   , Cn4 , v084, gtp3
	.byte	W36
	.byte		N11   , Fn3 , v100
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 039   ----------------------------------------
	.byte	W24
	.byte		N23   , Dn3 
	.byte	W72
@ 040   ----------------------------------------
	.byte	W24
	.byte		        Cn3 
	.byte	W48
	.byte		N32   , Cn3 , v092, gtp3
	.byte	W24
@ 041   ----------------------------------------
	.byte	W36
	.byte		        Gn3 , v092, gtp3
	.byte	W56
	.byte		N40   , Dn3 , v084
	.byte	W04
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte		N36   , As2 , v064
	.byte	W60
	.byte		N12   , As2 , v060
	.byte	W12
	.byte		N11   
	.byte	W24
@ 044   ----------------------------------------
	.byte		N13   , Cn3 , v064
	.byte	W13
	.byte		N16   , Cn3 , v060
	.byte	W80
	.byte	W03
@ 045   ----------------------------------------
	.byte		N36   , Dn3 , v064
	.byte	W36
	.byte		N56   , Dn3 , v060, gtp3
	.byte	W60
@ 046   ----------------------------------------
	.byte		N60   , Dn3 , v064
	.byte	W96
@ 047   ----------------------------------------
	.byte		N36   , As2 , v056
	.byte	W60
	.byte		N12   , As2 , v060
	.byte	W12
	.byte		N11   
	.byte	W24
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte		N13   , An2 , v052
	.byte	W13
	.byte		N68   , An2 , v060, gtp2
	.byte	W80
	.byte	W03
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte		N36   , An2 , v052
	.byte	W96
@ 053   ----------------------------------------
	.byte		        Fn2 
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte		        Gn2 
	.byte	W96
@ 056   ----------------------------------------
	.byte		TIE   , An2 , v048
	.byte	W96
@ 057   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W01
	.byte		N23   , Gn3 
	.byte	W44
	.byte	W03
	.byte		        An3 , v052
	.byte	W36
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte		N24   , Dn2 , v104
	.byte	W24
	.byte		N23   , Fn3 , v100
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        En3 , v096
	.byte	W12
@ 060   ----------------------------------------
	.byte	W13
	.byte		N23   , Dn3 
	.byte	W23
	.byte		        As3 
	.byte	W24
	.byte		N23   
	.byte	W36
@ 061   ----------------------------------------
	.byte		N48   , Cn4 
	.byte	W72
	.byte		N16   , Cn4 , v100
	.byte	W24
@ 062   ----------------------------------------
	.byte	W36
	.byte		N24   , Gn3 , v096
	.byte	W24
	.byte		N23   
	.byte	W36
@ 063   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N24   , Dn3 , v092, gtp1
	.byte	W60
	.byte	W01
@ 064   ----------------------------------------
	.byte	W24
	.byte		N23   , As2 , v100
	.byte	W48
	.byte		N32   , As2 , v092, gtp3
	.byte	W24
@ 065   ----------------------------------------
	.byte	W48
	.byte		N23   , Cn3 , v100
	.byte	W36
	.byte		N11   , Dn3 , v096
	.byte	W12
@ 066   ----------------------------------------
	.byte	W13
	.byte		N23   , Cn3 
	.byte	W80
	.byte	W03
@ 067   ----------------------------------------
	.byte	W13
	.byte		        An2 
	.byte	W44
	.byte	W03
	.byte		N23   
	.byte	W36
@ 068   ----------------------------------------
	.byte	W84
	.byte		N11   
	.byte	W12
@ 069   ----------------------------------------
	.byte		N24   , Fn2 , v104
	.byte	W36
	.byte		        Fn2 , v096
	.byte	W24
	.byte		N23   , Fn2 , v092
	.byte	W36
@ 070   ----------------------------------------
	.byte	W13
	.byte		        Gn2 , v096
	.byte	W80
	.byte	W03
@ 071   ----------------------------------------
	.byte	W60
	.byte		        Fn2 
	.byte	W36
@ 072   ----------------------------------------
mus_umineko_hope_2_072:
	.byte	W13
	.byte		N23   , Gn2 , v096
	.byte	W44
	.byte	W03
	.byte		N11   
	.byte	W36
	.byte	PEND
@ 073   ----------------------------------------
	.byte	W13
	.byte		N23   , An2 
	.byte	W44
	.byte	W03
	.byte		        Gn2 
	.byte	W36
@ 074   ----------------------------------------
mus_umineko_hope_2_074:
	.byte	W13
	.byte		N23   , Gn2 , v096
	.byte	W44
	.byte	W03
	.byte		N23   
	.byte	W36
	.byte	PEND
@ 075   ----------------------------------------
	.byte	W13
	.byte		        Fn2 
	.byte	W23
	.byte		        Cn3 
	.byte	W36
	.byte		N11   , As2 , v100
	.byte	W24
@ 076   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W36
	.byte		        Fn2 , v096
	.byte	W24
	.byte		N12   
	.byte	W12
@ 077   ----------------------------------------
	.byte		N24   , Fn2 , v104
	.byte	W48
	.byte		N23   , Fn2 , v100
	.byte	W48
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_2_074
@ 079   ----------------------------------------
	.byte	W13
	.byte		N23   , An2 , v096
	.byte	W44
	.byte	W03
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 080   ----------------------------------------
	.byte	W13
	.byte		N23   , Fn2 
	.byte	W23
	.byte		N23   
	.byte	W24
	.byte		N23   
	.byte	W36
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_2_072
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte		N96   , As2 , v076
	.byte	W96
@ 085   ----------------------------------------
	.byte		        Fn2 , v064
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
	.byte		        Fn2 , v052
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte		        Fn2 , v048
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
	.byte	W06
	.byte		VOL   , 96*mus_umineko_hope_mvl/mxv
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_umineko_hope_3:
	.byte	KEYSH , mus_umineko_hope_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 96*mus_umineko_hope_mvl/mxv
	.byte		PAN   , c_v-10
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
	.byte		N48   , Gn4 , v096
	.byte	W72
	.byte		N11   , An4 , v088
	.byte	W24
@ 031   ----------------------------------------
	.byte	W13
	.byte		N23   , Cn5 , v084
	.byte	W23
	.byte		N24   
	.byte	W24
	.byte		N23   
	.byte	W36
@ 032   ----------------------------------------
	.byte		N36   , Gn4 , v092
	.byte	W60
	.byte		N12   , Dn4 , v084
	.byte	W12
	.byte		N11   , Dn4 , v088
	.byte	W24
@ 033   ----------------------------------------
	.byte	W60
	.byte		N23   , An4 , v084
	.byte	W36
@ 034   ----------------------------------------
	.byte	W24
	.byte		N24   , Fn4 , v088
	.byte	W24
	.byte		N32   , Fn4 , v088, gtp3
	.byte	W36
	.byte		N05   , An4 , v084
	.byte	W06
	.byte		N06   , Gn4 
	.byte	W06
@ 035   ----------------------------------------
	.byte		N36   , Gn4 , v096
	.byte	W96
@ 036   ----------------------------------------
	.byte	W36
	.byte		N32   , Fn4 , v084, gtp3
	.byte	W36
	.byte		        En4 , v080, gtp3
	.byte	W24
@ 037   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn3 , v100
	.byte	W36
	.byte		N24   , Gn3 , v104
	.byte	W36
@ 038   ----------------------------------------
	.byte	W36
	.byte		        Gn3 , v100
	.byte	W24
	.byte		N23   , Gn3 , v084
	.byte	W36
@ 039   ----------------------------------------
	.byte		N80   , Cn4 , v076, gtp3
	.byte	W96
@ 040   ----------------------------------------
	.byte		N48   , Cn4 , v084
	.byte	W48
	.byte		N32   , Cn4 , v080, gtp3
	.byte	W36
	.byte		N12   , Cn4 , v076
	.byte	W12
@ 041   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 042   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W24
	.byte		N23   , Dn4 , v060
	.byte	W60
@ 043   ----------------------------------------
	.byte		N24   , Dn4 , v072, gtp1
	.byte	W60
	.byte		N23   , Cn4 , v060
	.byte	W24
	.byte		N12   
	.byte	W12
@ 044   ----------------------------------------
	.byte		N13   , Cn4 , v056
	.byte	W13
	.byte		N16   , Cn4 , v052
	.byte	W23
	.byte		N23   , Cn4 , v060
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 045   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W48
	.byte		N11   , Dn4 
	.byte	W24
@ 046   ----------------------------------------
	.byte	W24
	.byte		N23   , Cn4 
	.byte	W48
	.byte		N11   , Cn4 , v052
	.byte	W24
@ 047   ----------------------------------------
	.byte		N36   , As3 , v056
	.byte	W36
	.byte		N23   , As3 , v060
	.byte	W24
	.byte		N12   , As3 , v052
	.byte	W12
	.byte		N11   
	.byte	W24
@ 048   ----------------------------------------
	.byte		N13   , Gn3 , v056
	.byte	W13
	.byte		N16   , Gn3 , v052
	.byte	W23
	.byte		N24   , Fn4 , v068
	.byte	W60
@ 049   ----------------------------------------
	.byte		N48   , En4 , v056
	.byte	W96
@ 050   ----------------------------------------
	.byte		N24   , Fs4 , v064
	.byte	W48
	.byte		N32   , Fs3 , v064, gtp3
	.byte	W48
@ 051   ----------------------------------------
	.byte		N36   , Gn3 , v052
	.byte	W36
	.byte		N32   , Gn3 , v048, gtp3
	.byte	W36
	.byte		N11   , Fn4 
	.byte	W24
@ 052   ----------------------------------------
	.byte	W48
	.byte		N24   , As4 , v044
	.byte	W48
@ 053   ----------------------------------------
	.byte	W24
	.byte		N23   , Gn4 , v048
	.byte	W48
	.byte		N32   , Gn4 , v048, gtp3
	.byte	W24
@ 054   ----------------------------------------
	.byte	W72
	.byte		        Cn4 , v048, gtp3
	.byte	W24
@ 055   ----------------------------------------
	.byte	W24
	.byte		N23   , An4 
	.byte	W24
	.byte		N32   , Dn4 , v052, gtp3
	.byte	W48
@ 056   ----------------------------------------
	.byte	W36
	.byte		N23   , Gn4 , v064
	.byte	W36
	.byte		N11   , An4 , v068
	.byte	W24
@ 057   ----------------------------------------
	.byte		N80   , An4 , v064, gtp3
	.byte	W96
@ 058   ----------------------------------------
	.byte	W72
	.byte		N16   , An4 , v096
	.byte	W24
@ 059   ----------------------------------------
	.byte		N80   , Fn4 , v104, gtp3
	.byte	W84
	.byte		N11   , En4 , v096
	.byte	W12
@ 060   ----------------------------------------
	.byte		N48   , Fn4 , v108
	.byte	W48
	.byte		N32   , Fn4 , v100, gtp3
	.byte	W48
@ 061   ----------------------------------------
	.byte		N48   , An4 , v108
	.byte	W60
	.byte		N24   , Fn4 , v104
	.byte	W30
	.byte		N17   , Fn4 , v096
	.byte	W06
@ 062   ----------------------------------------
	.byte	W36
	.byte		N32   , Cn4 , v096, gtp3
	.byte	W36
	.byte		N11   , Fn3 , v100
	.byte	W12
	.byte		        En3 , v096
	.byte	W12
@ 063   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn3 , v100
	.byte	W36
	.byte		N23   , Dn3 , v104
	.byte	W36
@ 064   ----------------------------------------
	.byte	W36
	.byte		N36   , Fn3 , v100
	.byte	W36
	.byte		N32   , Cn3 , v092, gtp3
	.byte	W24
@ 065   ----------------------------------------
	.byte	W13
	.byte		N23   , Dn3 , v096
	.byte	W23
	.byte		        Gn3 , v092
	.byte	W60
@ 066   ----------------------------------------
	.byte	W36
	.byte		        Gn3 , v096
	.byte	W48
	.byte		N11   
	.byte	W12
@ 067   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn3 , v100
	.byte	W60
	.byte		N11   , En3 , v096
	.byte	W12
@ 068   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn3 , v100
	.byte	W48
	.byte		N11   
	.byte	W24
@ 069   ----------------------------------------
	.byte	W13
	.byte		N23   , Cn3 , v096
	.byte	W80
	.byte	W03
@ 070   ----------------------------------------
	.byte	W24
	.byte		        Cn3 , v100
	.byte	W36
	.byte		        Cn3 , v096
	.byte	W36
@ 071   ----------------------------------------
	.byte	W13
	.byte		N23   
	.byte	W23
	.byte		        Fn3 
	.byte	W36
	.byte		N11   , En3 , v100
	.byte	W12
	.byte		        Fn3 , v096
	.byte	W12
@ 072   ----------------------------------------
	.byte	W36
	.byte		N23   , En3 
	.byte	W36
	.byte		N32   , Fn3 , v104, gtp3
	.byte	W24
@ 073   ----------------------------------------
	.byte	W36
	.byte		N23   , En3 , v096
	.byte	W36
	.byte		N11   , Dn3 , v100
	.byte	W24
@ 074   ----------------------------------------
mus_umineko_hope_3_074:
	.byte	W24
	.byte		N23   , Dn3 , v100
	.byte	W48
	.byte		N11   
	.byte	W24
	.byte	PEND
@ 075   ----------------------------------------
	.byte	W24
	.byte		N23   , As2 
	.byte	W36
	.byte		        Fn2 , v096
	.byte	W24
	.byte		N11   
	.byte	W12
@ 076   ----------------------------------------
	.byte	W13
	.byte		N23   
	.byte	W23
	.byte		        Cn3 
	.byte	W36
	.byte		N11   , As2 , v100
	.byte	W24
@ 077   ----------------------------------------
	.byte	W13
	.byte		N23   , Cn3 , v096
	.byte	W44
	.byte	W03
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 078   ----------------------------------------
	.byte	W24
	.byte		N36   , Cn3 , v100
	.byte	W48
	.byte		N11   
	.byte	W24
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_3_074
@ 080   ----------------------------------------
	.byte	W24
	.byte		N23   , As2 , v100
	.byte	W48
	.byte		N11   
	.byte	W24
@ 081   ----------------------------------------
	.byte	W24
	.byte		N23   , Cn3 
	.byte	W48
	.byte		N32   , Cn3 , v092, gtp3
	.byte	W24
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte		N96   , Dn3 , v080
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte		        Fn3 , v076
	.byte	W96
@ 086   ----------------------------------------
	.byte		        Cn3 , v072
	.byte	W96
@ 087   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 088   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 089   ----------------------------------------
	.byte		        Cn3 , v068
	.byte	W96
@ 090   ----------------------------------------
	.byte		        Fn3 
	.byte	W96
@ 091   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 092   ----------------------------------------
	.byte		        As2 , v064
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte		        Cn3 , v060
	.byte	W96
@ 095   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 096   ----------------------------------------
	.byte		        Cn3 , v056
	.byte	W96
@ 097   ----------------------------------------
	.byte		        Fn3 , v048
	.byte	W96
@ 098   ----------------------------------------
	.byte	W06
	.byte		VOL   , 96*mus_umineko_hope_mvl/mxv
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_umineko_hope_4:
	.byte	KEYSH , mus_umineko_hope_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 96*mus_umineko_hope_mvl/mxv
	.byte		PAN   , c_v-3
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W92
	.byte	W02
	.byte		TIE   , Gn4 , v044
	.byte	W02
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W84
	.byte	W01
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W13
	.byte		N23   , Gn5 
	.byte	W32
	.byte	W03
	.byte		N36   , En5 
	.byte	W48
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte		N60   , Cn6 , v048
	.byte	W96
@ 010   ----------------------------------------
	.byte	W72
	.byte		N11   , An5 , v056
	.byte	W12
	.byte		        Gn5 , v060
	.byte	W12
@ 011   ----------------------------------------
	.byte		N48   , Fn5 , v064
	.byte	W84
	.byte		N11   , En5 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N36   , Fn5 , v068
	.byte	W36
	.byte		N44   , Fn5 , v064, gtp3
	.byte	W60
@ 013   ----------------------------------------
	.byte		N48   , An5 , v068
	.byte	W60
	.byte		N23   , Fn5 , v064
	.byte	W24
	.byte		N05   , Gn5 
	.byte	W06
	.byte		N17   , Fn5 
	.byte	W06
@ 014   ----------------------------------------
	.byte	W72
	.byte		N11   , An5 
	.byte	W24
@ 015   ----------------------------------------
	.byte	W13
	.byte		        Cn6 
	.byte	W11
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N23   
	.byte	W36
@ 016   ----------------------------------------
	.byte		N36   , Gn5 , v068
	.byte	W84
	.byte		N11   , Fn5 , v064
	.byte	W12
@ 017   ----------------------------------------
	.byte	W13
	.byte		        Gn5 
	.byte	W11
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Gn5 , v072
	.byte	W24
	.byte		N11   , Gn5 , v064
	.byte	W24
@ 018   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn5 
	.byte	W24
	.byte		        An4 , v092
	.byte	W48
@ 019   ----------------------------------------
	.byte		N24   , An4 , v068
	.byte	W24
	.byte		N23   , Fn3 , v064
	.byte	W36
	.byte		        An2 
	.byte	W36
@ 020   ----------------------------------------
	.byte		TIE   , As1 
	.byte	W96
@ 021   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W84
@ 022   ----------------------------------------
	.byte		TIE   , Cn2 
	.byte	W96
@ 023   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W01
	.byte		N23   , An2 
	.byte	W23
	.byte		N32   , En3 , v064, gtp3
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N24   , Dn3 , v068
	.byte	W24
	.byte		N12   , Dn3 , v056
	.byte	W12
	.byte		N24   , Dn3 , v064
	.byte	W24
	.byte		N23   
	.byte	W36
@ 025   ----------------------------------------
	.byte	W13
	.byte		        Cn3 
	.byte	W23
	.byte		N32   , An3 , v064, gtp3
	.byte	W36
	.byte		N11   , Fn3 
	.byte	W24
@ 026   ----------------------------------------
	.byte	W13
	.byte		N23   , Gn3 
	.byte	W23
	.byte		N20   , En4 
	.byte	W36
	.byte		N32   , Gn4 , v076, gtp3
	.byte	W24
@ 027   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn3 , v104
	.byte	W48
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 028   ----------------------------------------
	.byte	W13
	.byte		N23   , Dn3 
	.byte	W23
	.byte		        As3 
	.byte	W24
	.byte		N23   
	.byte	W36
@ 029   ----------------------------------------
	.byte		N48   , Cn4 , v088
	.byte	W72
	.byte		N16   , Cn4 , v092
	.byte	W24
@ 030   ----------------------------------------
	.byte		N36   , Gn3 , v088
	.byte	W36
	.byte		N24   , Gn3 , v104
	.byte	W24
	.byte		N23   , Gn3 , v088
	.byte	W36
@ 031   ----------------------------------------
	.byte		N24   , Cn4 
	.byte	W36
	.byte		N36   , Fn3 , v108
	.byte	W36
	.byte		N11   , En3 , v104
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 032   ----------------------------------------
	.byte	W36
	.byte		N36   , Fn3 , v108
	.byte	W36
	.byte		N32   , Fn3 , v112, gtp3
	.byte	W24
@ 033   ----------------------------------------
	.byte	W24
	.byte		N23   , En3 , v104
	.byte	W48
	.byte		N11   
	.byte	W24
@ 034   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N32   , An3 , v108, gtp3
	.byte	W36
	.byte		N11   , Gn3 , v104
	.byte	W12
@ 035   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn3 
	.byte	W60
	.byte		N11   , En3 
	.byte	W12
@ 036   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn3 
	.byte	W36
	.byte		        Cn4 
	.byte	W36
@ 037   ----------------------------------------
	.byte		N48   , An4 , v100
	.byte	W60
	.byte		N28   , Cn5 , v088
	.byte	W36
@ 038   ----------------------------------------
	.byte		N48   , Gn4 , v100
	.byte	W84
	.byte		N11   , Gn4 , v088
	.byte	W12
@ 039   ----------------------------------------
	.byte		N80   , Fn4 , v096, gtp3
	.byte	W84
	.byte		N11   , Fn4 , v088
	.byte	W12
@ 040   ----------------------------------------
	.byte		N48   , En4 , v096
	.byte	W48
	.byte		N32   , En4 , v100, gtp3
	.byte	W36
	.byte		N12   , Fn4 , v096
	.byte	W12
@ 041   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 042   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W60
	.byte		N11   , En4 , v064
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 043   ----------------------------------------
	.byte	W13
	.byte		N23   , En4 
	.byte	W56
	.byte	W03
	.byte		N11   , Dn4 , v072
	.byte	W24
@ 044   ----------------------------------------
	.byte		N13   , En4 
	.byte	W13
	.byte		N11   , En4 , v068
	.byte	W11
	.byte		N23   , En4 , v056
	.byte	W24
	.byte		        En4 , v060
	.byte	W24
	.byte		N11   , Dn4 , v056
	.byte	W24
@ 045   ----------------------------------------
	.byte		N36   , En4 , v076
	.byte	W48
	.byte		N23   , Fn4 , v068
	.byte	W48
@ 046   ----------------------------------------
	.byte	W36
	.byte		        Fn4 , v064
	.byte	W36
	.byte		N11   , En4 , v056
	.byte	W24
@ 047   ----------------------------------------
	.byte		N36   , Dn4 , v076
	.byte	W60
	.byte		N23   , Cn4 , v068
	.byte	W36
@ 048   ----------------------------------------
	.byte		N13   , Cn4 , v076
	.byte	W13
	.byte		N16   , Cn4 , v064
	.byte	W23
	.byte		N23   , Cn4 , v056
	.byte	W24
	.byte		        Cn4 , v064
	.byte	W24
	.byte		N12   
	.byte	W12
@ 049   ----------------------------------------
	.byte		N48   , Cn4 , v060
	.byte	W72
	.byte		N11   , Dn4 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 050   ----------------------------------------
	.byte	W36
	.byte		N23   , En3 
	.byte	W36
	.byte		N11   , Fs5 , v044
	.byte	W12
	.byte		        Gn5 , v052
	.byte	W12
@ 051   ----------------------------------------
	.byte		N80   , Fn5 , v056, gtp3
	.byte	W84
	.byte		N11   , Fn5 , v052
	.byte	W12
@ 052   ----------------------------------------
	.byte	W48
	.byte		N24   , Fn5 , v060
	.byte	W24
	.byte		N32   , Gn5 , v052, gtp3
	.byte	W24
@ 053   ----------------------------------------
	.byte	W36
	.byte		N36   , As4 
	.byte	W60
@ 054   ----------------------------------------
	.byte		N80   , An3 , v056, gtp3
	.byte	W96
@ 055   ----------------------------------------
	.byte	W36
	.byte		N44   , Fn4 , v052, gtp3
	.byte	W60
@ 056   ----------------------------------------
	.byte		N48   , En4 , v056
	.byte	W48
	.byte		N23   , En4 , v060
	.byte	W48
@ 057   ----------------------------------------
	.byte		N24   , Fn4 , v068
	.byte	W24
	.byte		N56   , Fn4 , v052, gtp3
	.byte	W60
	.byte		N11   , En4 
	.byte	W12
@ 058   ----------------------------------------
	.byte		N60   , Dn4 , v056
	.byte	W96
@ 059   ----------------------------------------
	.byte		N80   , An3 , v096, gtp3
	.byte	W96
@ 060   ----------------------------------------
	.byte		N60   , An3 , v100
	.byte	W96
@ 061   ----------------------------------------
	.byte	W13
	.byte		N23   , Cn3 , v104
	.byte	W80
	.byte	W03
@ 062   ----------------------------------------
	.byte		N24   , Cn2 , v108
	.byte	W96
@ 063   ----------------------------------------
	.byte		        Dn2 
	.byte	W32
	.byte		N28   , Dn2 , v096
	.byte	W28
	.byte		N23   
	.byte	W36
@ 064   ----------------------------------------
	.byte		N24   , As1 , v108
	.byte	W36
	.byte		N32   , As1 , v096, gtp3
	.byte	W60
@ 065   ----------------------------------------
	.byte		N24   , Cn2 , v108
	.byte	W36
	.byte		N23   , Cn2 , v104
	.byte	W60
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
mus_umineko_hope_4_067:
	.byte		N24   , Dn2 , v108
	.byte	W48
	.byte		N23   , Dn2 , v104
	.byte	W48
	.byte	PEND
@ 068   ----------------------------------------
	.byte		N24   , As1 , v108
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte		        Cn2 
	.byte	W96
@ 071   ----------------------------------------
mus_umineko_hope_4_071:
	.byte		N24   , As1 , v108
	.byte	W48
	.byte		N23   , As1 , v104
	.byte	W48
	.byte	PEND
@ 072   ----------------------------------------
mus_umineko_hope_4_072:
	.byte		N24   , Cn2 , v108
	.byte	W48
	.byte		N23   , Cn2 , v104
	.byte	W48
	.byte	PEND
@ 073   ----------------------------------------
	.byte		N24   , Dn2 , v108
	.byte	W48
	.byte		N23   , Dn2 , v096
	.byte	W48
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_4_067
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_4_071
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_4_071
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte		N24   , Cn2 , v108
	.byte	W48
	.byte		N23   , Cn2 , v096
	.byte	W48
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_4_067
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_4_071
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_4_072
@ 082   ----------------------------------------
	.byte		N96   , As1 , v104
	.byte	W96
@ 083   ----------------------------------------
	.byte		        Dn2 , v068
	.byte	W96
@ 084   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte		        Cn2 , v064
	.byte	W96
@ 087   ----------------------------------------
	.byte		        Dn2 
	.byte	W96
@ 088   ----------------------------------------
	.byte		        As1 , v060
	.byte	W96
@ 089   ----------------------------------------
	.byte		        Cn2 
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte		        Dn2 , v056
	.byte	W96
@ 092   ----------------------------------------
	.byte		        As1 , v052
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte		        Cn2 , v048
	.byte	W96
@ 095   ----------------------------------------
	.byte		        As1 
	.byte	W96
@ 096   ----------------------------------------
	.byte		        Cn2 
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W06
	.byte		VOL   , 96*mus_umineko_hope_mvl/mxv
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_umineko_hope_5:
	.byte	KEYSH , mus_umineko_hope_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 96*mus_umineko_hope_mvl/mxv
	.byte		PAN   , c_v+3
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W13
	.byte		N23   , An5 , v044
	.byte	W23
	.byte		N32   , En5 , v044, gtp3
	.byte	W36
	.byte		N11   , Dn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N24   , As5 
	.byte	W24
	.byte		N23   , Fn5 
	.byte	W48
	.byte		N11   , Cn6 
	.byte	W12
	.byte		        An5 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N24   , Fn5 
	.byte	W24
	.byte		N23   
	.byte	W36
	.byte		        Gn5 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 007   ----------------------------------------
	.byte	W24
	.byte		N80   , Cn6 , v044, gtp3
	.byte	W72
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte		N60   , Cn5 
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W72
	.byte		N11   , Dn5 , v064
	.byte	W24
@ 012   ----------------------------------------
	.byte	W24
	.byte		N24   , Fn4 , v096
	.byte	W72
@ 013   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn4 , v092
	.byte	W36
	.byte		        Gn4 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 014   ----------------------------------------
	.byte	W24
	.byte		N23   , Cn4 
	.byte	W36
	.byte		        En4 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 015   ----------------------------------------
	.byte	W24
	.byte		N23   
	.byte	W48
	.byte		N11   , Dn4 
	.byte	W24
@ 016   ----------------------------------------
	.byte	W24
	.byte		N12   , Dn4 , v084
	.byte	W12
	.byte		N24   , Dn4 , v092
	.byte	W24
	.byte		N23   
	.byte	W36
@ 017   ----------------------------------------
	.byte	W24
	.byte		        Cn4 
	.byte	W36
	.byte		        Dn4 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 018   ----------------------------------------
	.byte	W13
	.byte		N23   , Cn4 
	.byte	W80
	.byte	W03
@ 019   ----------------------------------------
	.byte		TIE   , Fn2 , v068
	.byte	W96
@ 020   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W01
	.byte		N23   , An2 , v064
	.byte	W56
	.byte	W03
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 021   ----------------------------------------
mus_umineko_hope_5_021:
	.byte		N72   , Fn2 , v064
	.byte	W72
	.byte		N32   , Fn2 , v064, gtp3
	.byte	W24
	.byte	PEND
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte		TIE   , Dn2 , v056
	.byte	W96
@ 024   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W84
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_5_021
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte		N24   , Dn2 , v108
	.byte	W48
	.byte		N23   
	.byte	W24
	.byte		N11   , Dn4 , v092
	.byte	W24
@ 028   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn3 , v104
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 029   ----------------------------------------
	.byte		N24   , Fn2 , v108
	.byte	W24
	.byte		N23   , Fn3 , v104
	.byte	W36
	.byte		N44   , Fn3 , v108, gtp3
	.byte	W36
@ 030   ----------------------------------------
	.byte	W24
	.byte		N23   , Cn3 , v104
	.byte	W36
	.byte		N23   
	.byte	W36
@ 031   ----------------------------------------
	.byte	W13
	.byte		N20   
	.byte	W20
	.byte		N36   , Cn3 , v096, gtp2
	.byte	W60
	.byte	W03
@ 032   ----------------------------------------
	.byte	W24
	.byte		N23   , As2 , v104
	.byte	W48
	.byte		N32   , As2 , v096, gtp3
	.byte	W24
@ 033   ----------------------------------------
	.byte	W48
	.byte		N23   , Cn3 , v108
	.byte	W36
	.byte		N11   , Dn3 , v104
	.byte	W12
@ 034   ----------------------------------------
	.byte	W13
	.byte		N23   , Cn3 
	.byte	W80
	.byte	W03
@ 035   ----------------------------------------
	.byte	W13
	.byte		        An2 
	.byte	W44
	.byte	W03
	.byte		N23   
	.byte	W36
@ 036   ----------------------------------------
	.byte	W84
	.byte		N11   
	.byte	W12
@ 037   ----------------------------------------
	.byte		N24   , Fn2 , v108
	.byte	W36
	.byte		        Fn2 , v104
	.byte	W24
	.byte		N23   , Fn2 , v096
	.byte	W36
@ 038   ----------------------------------------
mus_umineko_hope_5_038:
	.byte	W13
	.byte		N23   , Gn2 , v104
	.byte	W80
	.byte	W03
	.byte	PEND
@ 039   ----------------------------------------
	.byte	W60
	.byte		        Fn2 , v112
	.byte	W36
@ 040   ----------------------------------------
	.byte	W13
	.byte		        Gn2 , v104
	.byte	W44
	.byte	W03
	.byte		N11   
	.byte	W36
@ 041   ----------------------------------------
	.byte	W13
	.byte		N23   , An2 
	.byte	W44
	.byte	W03
	.byte		        Gn2 , v092
	.byte	W32
	.byte	W02
	.byte		N36   , Fs3 , v088, gtp2
	.byte	W02
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W48
	.byte		N56   , Cn3 , v068, gtp3
	.byte	W48
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte		N13   
	.byte	W13
	.byte		N16   , Cn3 , v064
	.byte	W80
	.byte	W03
@ 049   ----------------------------------------
	.byte		N36   , Dn3 , v068
	.byte	W36
	.byte		N56   , Dn3 , v064, gtp3
	.byte	W60
@ 050   ----------------------------------------
	.byte		N24   , Dn3 , v068
	.byte	W24
	.byte		N56   , Dn3 , v064, gtp3
	.byte	W72
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W48
	.byte		N24   , Cn3 , v052
	.byte	W48
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte		N80   , Dn3 , v044, gtp3
	.byte	W96
@ 055   ----------------------------------------
	.byte	W60
	.byte		N23   , As3 , v052
	.byte	W36
@ 056   ----------------------------------------
	.byte	W60
	.byte		        Cn4 , v072
	.byte	W36
@ 057   ----------------------------------------
	.byte		N24   , As2 , v056
	.byte	W60
	.byte		N23   , Dn3 , v044
	.byte	W36
@ 058   ----------------------------------------
	.byte	W84
	.byte		N05   , Cn2 , v052
	.byte	W06
	.byte		N17   , Cs2 
	.byte	W06
@ 059   ----------------------------------------
	.byte	W13
	.byte		N23   , An2 , v104
	.byte	W23
	.byte		        En3 
	.byte	W24
	.byte		        An2 
	.byte	W36
@ 060   ----------------------------------------
	.byte		N24   , As1 , v108
	.byte	W96
@ 061   ----------------------------------------
	.byte	W36
	.byte		        Fn2 , v104
	.byte	W24
	.byte		N44   , Fn2 , v104, gtp3
	.byte	W36
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_5_038
@ 063   ----------------------------------------
	.byte	W36
	.byte		N36   , Fn3 , v104
	.byte	W36
	.byte		N11   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 064   ----------------------------------------
	.byte		N36   , Gn4 , v112
	.byte	W84
	.byte		N11   , Gn4 , v104
	.byte	W12
@ 065   ----------------------------------------
	.byte	W13
	.byte		N11   
	.byte	W11
	.byte		N12   
	.byte	W12
	.byte		        Gn4 , v108
	.byte	W12
	.byte		N23   , Gn4 , v104
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 066   ----------------------------------------
	.byte		N36   , En4 , v108
	.byte	W96
@ 067   ----------------------------------------
	.byte		        Cn4 , v100
	.byte	W72
	.byte		N11   , Dn4 , v104
	.byte	W24
@ 068   ----------------------------------------
	.byte		N48   , Cn4 , v100
	.byte	W48
	.byte		N23   , Cn4 , v104
	.byte	W24
	.byte		N32   , En4 , v096, gtp3
	.byte	W24
@ 069   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn3 , v104
	.byte	W36
	.byte		N24   , Gn3 , v108
	.byte	W36
@ 070   ----------------------------------------
	.byte	W36
	.byte		        Gn3 , v104
	.byte	W24
	.byte		N23   
	.byte	W36
@ 071   ----------------------------------------
	.byte		N80   , Cn4 , v096, gtp3
	.byte	W96
@ 072   ----------------------------------------
	.byte		N48   , Cn4 , v100
	.byte	W48
	.byte		N32   , Cn4 , v096, gtp3
	.byte	W36
	.byte		N12   
	.byte	W12
@ 073   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 074   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W84
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W36
	.byte		N23   , Gn3 , v104
	.byte	W60
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W36
	.byte		N23   
	.byte	W60
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W36
	.byte		N23   
	.byte	W36
	.byte		N32   , Gn3 , v096, gtp3
	.byte	W24
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte		N72   , Cn4 , v068
	.byte	W72
	.byte		N11   , Dn4 , v076
	.byte	W24
@ 084   ----------------------------------------
	.byte		N36   , Cn4 , v068
	.byte	W36
	.byte		N36   
	.byte	W36
	.byte		N23   , Gn4 , v080
	.byte	W24
@ 085   ----------------------------------------
	.byte		N36   , An4 
	.byte	W36
	.byte		N23   , As4 , v072
	.byte	W48
	.byte		N05   , Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 086   ----------------------------------------
	.byte		N36   , Gn4 , v076
	.byte	W72
	.byte		N11   , An4 , v068
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 087   ----------------------------------------
	.byte		N13   , Fn4 , v076
	.byte	W13
	.byte		N11   , Cn5 , v068
	.byte	W11
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N23   , An4 
	.byte	W24
@ 088   ----------------------------------------
	.byte		N24   , Gn4 , v072
	.byte	W84
	.byte		N11   , Fn4 , v068
	.byte	W12
@ 089   ----------------------------------------
	.byte	W13
	.byte		        Gn4 , v064
	.byte	W11
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 090   ----------------------------------------
	.byte		N24   , En4 , v068
	.byte	W24
	.byte		        Fn4 , v064
	.byte	W24
	.byte		N32   , Fn4 , v064, gtp3
	.byte	W36
	.byte		N05   , An4 
	.byte	W06
	.byte		N06   , Gn4 
	.byte	W06
@ 091   ----------------------------------------
	.byte		N24   , Gn4 , v068
	.byte	W24
	.byte		N48   , Fn4 , v060
	.byte	W60
	.byte		N11   , En4 
	.byte	W12
@ 092   ----------------------------------------
	.byte		N48   , Fn4 , v068
	.byte	W48
	.byte		N24   , Fn4 , v060
	.byte	W24
	.byte		N23   , Gn4 
	.byte	W24
@ 093   ----------------------------------------
	.byte		N36   , An4 
	.byte	W36
	.byte		N23   , As4 , v056
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		N05   , Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 094   ----------------------------------------
	.byte		N72   , En4 , v048
	.byte	W96
@ 095   ----------------------------------------
	.byte		        Cn4 
	.byte	W96
@ 096   ----------------------------------------
	.byte		N48   , Cn4 , v044
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W06
	.byte		VOL   , 96*mus_umineko_hope_mvl/mxv
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_umineko_hope_6:
	.byte	KEYSH , mus_umineko_hope_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 96*mus_umineko_hope_mvl/mxv
	.byte		PAN   , c_v+10
	.byte	W13
	.byte		N23   , An5 , v044
	.byte	W23
	.byte		N32   , En5 , v044, gtp3
	.byte	W36
	.byte		N11   , Dn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
@ 001   ----------------------------------------
	.byte		N24   , As5 
	.byte	W24
	.byte		N48   , Fn5 
	.byte	W48
	.byte		N11   , Cn6 
	.byte	W12
	.byte		        An5 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N80   , Fn4 , v044, gtp3
	.byte	W96
@ 003   ----------------------------------------
	.byte		N90   , Cn4 , v044, gtp1
	.byte	W90
	.byte	W01
	.byte		TIE   
	.byte	W05
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W11
	.byte		EOT   
	.byte	W84
	.byte	W01
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 008   ----------------------------------------
	.byte	W92
	.byte		N64   
	.byte	W04
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte		N36   , Cn3 
	.byte	W36
	.byte		N24   , Cn3 , v048
	.byte	W24
	.byte		N23   , Cn3 , v056
	.byte	W36
@ 011   ----------------------------------------
	.byte		N24   , Dn3 , v096
	.byte	W60
	.byte		N23   , An3 , v092
	.byte	W36
@ 012   ----------------------------------------
	.byte		N24   , As2 , v096
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte		        Cn3 
	.byte	W96
@ 015   ----------------------------------------
	.byte		        Dn3 
	.byte	W96
@ 016   ----------------------------------------
	.byte		        As2 
	.byte	W96
@ 017   ----------------------------------------
	.byte		        Cn3 
	.byte	W72
	.byte		N11   , Cn3 , v092
	.byte	W24
@ 018   ----------------------------------------
	.byte		N24   , Fn3 , v096
	.byte	W96
@ 019   ----------------------------------------
	.byte		TIE   , Dn2 , v056
	.byte	W96
@ 020   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W12
	.byte		N24   , Fn3 , v072
	.byte	W72
@ 021   ----------------------------------------
mus_umineko_hope_6_021:
	.byte	W24
	.byte		N23   , Fn3 , v064
	.byte	W36
	.byte		        Gn3 
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
	.byte		N24   , Cn4 , v068
	.byte	W24
	.byte		N23   , Cn4 , v064
	.byte	W36
	.byte		        En4 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 023   ----------------------------------------
	.byte		N24   , Fn4 , v068
	.byte	W96
@ 024   ----------------------------------------
	.byte	W24
	.byte		        Fn3 , v072
	.byte	W72
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_6_021
@ 026   ----------------------------------------
	.byte		N24   , Cn4 , v068
	.byte	W24
	.byte		N23   , Fn4 , v064
	.byte	W24
	.byte		N36   , An4 , v068
	.byte	W48
@ 027   ----------------------------------------
	.byte		N80   , Cn4 , v080, gtp3
	.byte	W96
@ 028   ----------------------------------------
	.byte		N48   , Cn4 , v088
	.byte	W48
	.byte		N23   , Cn4 , v108
	.byte	W24
	.byte		N32   , Gn4 , v092, gtp3
	.byte	W24
@ 029   ----------------------------------------
	.byte	W36
	.byte		        As4 , v088, gtp3
	.byte	W60
@ 030   ----------------------------------------
	.byte		N36   , Cn4 
	.byte	W36
	.byte		N32   , Cn4 , v088, gtp3
	.byte	W36
	.byte		N11   , Fn3 , v104
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 031   ----------------------------------------
	.byte	W24
	.byte		N10   , Dn3 
	.byte	W11
	.byte		N36   , Dn3 , v096, gtp1
	.byte	W60
	.byte	W01
@ 032   ----------------------------------------
	.byte	W72
	.byte		N32   , Cn3 , v096, gtp3
	.byte	W24
@ 033   ----------------------------------------
	.byte	W13
	.byte		N23   , Dn3 , v104
	.byte	W23
	.byte		        Gn3 , v080
	.byte	W60
@ 034   ----------------------------------------
	.byte	W36
	.byte		        As3 , v104
	.byte	W60
@ 035   ----------------------------------------
	.byte		N36   , An3 , v088
	.byte	W36
	.byte		N23   , En3 , v104
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W24
@ 036   ----------------------------------------
	.byte	W13
	.byte		N23   
	.byte	W80
	.byte	W03
@ 037   ----------------------------------------
	.byte	W13
	.byte		        Cn3 
	.byte	W80
	.byte	W03
@ 038   ----------------------------------------
mus_umineko_hope_6_038:
	.byte	W24
	.byte		N23   , Cn3 , v104
	.byte	W36
	.byte		N23   
	.byte	W36
	.byte	PEND
@ 039   ----------------------------------------
	.byte	W13
	.byte		N23   
	.byte	W23
	.byte		N32   , Fn3 , v104, gtp3
	.byte	W36
	.byte		N11   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 040   ----------------------------------------
	.byte	W36
	.byte		N23   , En3 
	.byte	W36
	.byte		N32   , Fn3 , v112, gtp3
	.byte	W24
@ 041   ----------------------------------------
	.byte	W24
	.byte		N23   , En3 , v100
	.byte	W48
	.byte		N11   , En3 , v092
	.byte	W12
	.byte		        Dn3 , v088
	.byte	W12
@ 042   ----------------------------------------
	.byte		N36   , An3 , v076
	.byte	W96
@ 043   ----------------------------------------
	.byte		N24   , As3 , v060
	.byte	W36
	.byte		N32   , As3 , v064, gtp3
	.byte	W36
	.byte		N11   , As3 , v056
	.byte	W24
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte		N36   , An3 , v060
	.byte	W36
	.byte		N23   , An3 , v064
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 046   ----------------------------------------
	.byte	W13
	.byte		N23   
	.byte	W44
	.byte	W03
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 047   ----------------------------------------
	.byte		N36   , Dn3 , v076
	.byte	W96
@ 048   ----------------------------------------
	.byte	W48
	.byte		N24   , Gn4 , v072
	.byte	W24
	.byte		N11   , Cn5 
	.byte	W24
@ 049   ----------------------------------------
	.byte		N48   , Cn5 , v076
	.byte	W48
	.byte		N32   , An4 , v068, gtp3
	.byte	W48
@ 050   ----------------------------------------
	.byte	W72
	.byte		        Fs4 , v052, gtp3
	.byte	W24
@ 051   ----------------------------------------
	.byte	W60
	.byte		N23   , Dn4 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 052   ----------------------------------------
	.byte	W24
	.byte		N36   , Cn4 
	.byte	W48
	.byte		N32   , Cn4 , v052, gtp3
	.byte	W24
@ 053   ----------------------------------------
	.byte	W36
	.byte		N36   , As5 
	.byte	W36
	.byte		N23   , Cn6 
	.byte	W24
@ 054   ----------------------------------------
	.byte		N48   , Cn6 , v056
	.byte	W72
	.byte		N11   , An5 , v052
	.byte	W24
@ 055   ----------------------------------------
	.byte	W72
	.byte		        Gn5 , v060
	.byte	W24
@ 056   ----------------------------------------
	.byte		N48   , En5 , v068
	.byte	W48
	.byte		N24   , En5 , v076
	.byte	W48
@ 057   ----------------------------------------
	.byte	W72
	.byte		N11   , Dn5 , v084
	.byte	W24
@ 058   ----------------------------------------
	.byte		N60   , Dn5 , v096
	.byte	W96
@ 059   ----------------------------------------
	.byte	W72
	.byte		N11   , Dn4 , v104
	.byte	W24
@ 060   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn3 
	.byte	W48
	.byte		N11   
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 061   ----------------------------------------
	.byte		N24   , Fn2 , v108
	.byte	W24
	.byte		N23   , Fn3 , v104
	.byte	W36
	.byte		        Gn3 , v096
	.byte	W36
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_umineko_hope_6_038
@ 063   ----------------------------------------
	.byte	W13
	.byte		N20   , Cn3 , v104
	.byte	W20
	.byte		N36   , Cn3 , v096, gtp2
	.byte	W60
	.byte	W03
@ 064   ----------------------------------------
	.byte	W13
	.byte		N23   , Fn2 , v104
	.byte	W44
	.byte	W03
	.byte		N23   
	.byte	W36
@ 065   ----------------------------------------
	.byte	W60
	.byte		        Gn2 
	.byte	W36
@ 066   ----------------------------------------
	.byte		N24   , Fn2 , v108
	.byte	W96
@ 067   ----------------------------------------
	.byte	W24
	.byte		N56   , Fn4 , v104, gtp3
	.byte	W60
	.byte		N11   , En4 
	.byte	W12
@ 068   ----------------------------------------
	.byte		N36   , Fn4 , v112
	.byte	W36
	.byte		N23   , As3 , v104
	.byte	W24
	.byte		N23   
	.byte	W36
@ 069   ----------------------------------------
	.byte		N48   , An4 , v112
	.byte	W60
	.byte		N28   , Cn5 , v104
	.byte	W36
@ 070   ----------------------------------------
	.byte		N48   , Gn4 , v112
	.byte	W84
	.byte		N11   , Gn4 , v104
	.byte	W12
@ 071   ----------------------------------------
	.byte		N80   , Fn4 , v108, gtp3
	.byte	W84
	.byte		N11   , Fn4 , v104
	.byte	W12
@ 072   ----------------------------------------
	.byte		N48   , En4 , v108
	.byte	W48
	.byte		N32   , En4 , v112, gtp3
	.byte	W36
	.byte		N12   , Fn4 , v108
	.byte	W12
@ 073   ----------------------------------------
	.byte		TIE   , Fn4 , v104
	.byte	W96
@ 074   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W60
	.byte		N11   , Gn5 
	.byte	W24
@ 075   ----------------------------------------
	.byte		N36   , Gn5 , v108
	.byte	W72
	.byte		N11   , Dn5 , v104
	.byte	W24
@ 076   ----------------------------------------
	.byte	W48
	.byte		N32   , Fn5 , v104, gtp3
	.byte	W48
@ 077   ----------------------------------------
	.byte		N36   , An5 , v108
	.byte	W48
	.byte		N32   , Fn5 , v104, gtp3
	.byte	W48
@ 078   ----------------------------------------
	.byte	W36
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N32   , Gn5 , v104, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
@ 079   ----------------------------------------
	.byte		N24   , Fn5 , v108
	.byte	W72
	.byte		N11   , As5 , v104
	.byte	W24
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn5 
	.byte	W36
	.byte		N11   
	.byte	W12
	.byte		N32   , En5 , v104, gtp3
	.byte	W24
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
	.byte	W06
	.byte		VOL   , 96*mus_umineko_hope_mvl/mxv
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_umineko_hope_7:
	.byte	KEYSH , mus_umineko_hope_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 96*mus_umineko_hope_mvl/mxv
	.byte		PAN   , c_v+17
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		N24   , Cn6 , v044
	.byte	W24
	.byte		N23   , Fn5 
	.byte	W36
	.byte		        An5 
	.byte	W36
@ 005   ----------------------------------------
	.byte		TIE   , As3 
	.byte	W96
@ 006   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W84
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte		N60   , Gn4 , v048
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W24
	.byte		N56   , Fn4 , v092, gtp3
	.byte	W60
	.byte		N11   , En4 
	.byte	W12
@ 012   ----------------------------------------
	.byte	W24
	.byte		N12   , Dn4 , v084
	.byte	W12
	.byte		N24   , Dn4 , v092
	.byte	W24
	.byte		N23   
	.byte	W36
@ 013   ----------------------------------------
	.byte	W13
	.byte		        Cn4 
	.byte	W23
	.byte		N32   , An4 , v092, gtp3
	.byte	W60
@ 014   ----------------------------------------
	.byte	W36
	.byte		        Fn4 , v092, gtp3
	.byte	W36
	.byte		N11   , Dn4 
	.byte	W24
@ 015   ----------------------------------------
	.byte	W36
	.byte		N32   , Fn4 , v092, gtp3
	.byte	W48
	.byte		N11   
	.byte	W12
@ 016   ----------------------------------------
	.byte	W24
	.byte		N44   , Fn4 , v096, gtp3
	.byte	W72
@ 017   ----------------------------------------
	.byte	W36
	.byte		N32   , En4 , v092, gtp3
	.byte	W60
@ 018   ----------------------------------------
	.byte	W24
	.byte		N36   , Fn4 
	.byte	W60
	.byte		N11   , Gn4 , v064
	.byte	W12
@ 019   ----------------------------------------
	.byte	W13
	.byte		N23   , An2 
	.byte	W23
	.byte		N32   , En3 , v064, gtp3
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N24   , Dn3 , v068
	.byte	W24
	.byte		N12   , Dn3 , v056
	.byte	W12
	.byte		N24   , Dn3 , v064
	.byte	W24
	.byte		N23   
	.byte	W36
@ 021   ----------------------------------------
	.byte	W13
	.byte		        Cn3 
	.byte	W23
	.byte		N32   , An3 , v064, gtp3
	.byte	W36
	.byte		N11   , Fn3 
	.byte	W24
@ 022   ----------------------------------------
	.byte	W13
	.byte		N23   , Gn3 
	.byte	W80
	.byte	W03
@ 023   ----------------------------------------
	.byte		TIE   , Fn2 , v068
	.byte	W96
@ 024   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W01
	.byte		N23   , An2 , v064
	.byte	W56
	.byte	W03
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte		N80   , An3 , v080, gtp3
	.byte	W96
@ 028   ----------------------------------------
	.byte		N60   , An3 , v088
	.byte	W96
@ 029   ----------------------------------------
	.byte	W13
	.byte		N23   , Cn3 , v104
	.byte	W80
	.byte	W03
@ 030   ----------------------------------------
	.byte		N24   , Cn2 , v108
	.byte	W96
@ 031   ----------------------------------------
	.byte		        Dn2 
	.byte	W32
	.byte		N28   , Dn2 , v096
	.byte	W28
	.byte		N23   , Dn2 , v104
	.byte	W36
@ 032   ----------------------------------------
	.byte		N24   , As1 , v108
	.byte	W36
	.byte		N32   , As1 , v096, gtp3
	.byte	W60
@ 033   ----------------------------------------
	.byte		N24   , Cn2 , v108
	.byte	W36
	.byte		N23   , Cn2 , v104
	.byte	W60
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte		N24   , Dn2 , v108
	.byte	W48
	.byte		N23   
	.byte	W48
@ 036   ----------------------------------------
	.byte		N24   , As1 
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte		        Cn2 
	.byte	W96
@ 039   ----------------------------------------
	.byte		        As1 
	.byte	W60
	.byte		N23   , As1 , v096
	.byte	W36
@ 040   ----------------------------------------
	.byte		N24   , Cn2 , v108
	.byte	W48
	.byte		N23   
	.byte	W48
@ 041   ----------------------------------------
	.byte		N24   , Dn2 
	.byte	W96
@ 042   ----------------------------------------
	.byte		TIE   , Dn2 , v064
	.byte	W96
@ 043   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W84
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
	.byte	W72
	.byte		N11   , An5 , v056
	.byte	W24
@ 051   ----------------------------------------
	.byte	W72
	.byte		        En5 , v052
	.byte	W24
@ 052   ----------------------------------------
	.byte		N36   , En5 , v060
	.byte	W96
@ 053   ----------------------------------------
	.byte		N48   , Fn5 , v048
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte		N68   , Dn5 , v044, gtp3
	.byte	W84
	.byte		N11   , Dn5 , v052
	.byte	W12
@ 056   ----------------------------------------
	.byte		N48   , Cn5 , v056
	.byte	W96
@ 057   ----------------------------------------
	.byte	W36
	.byte		N32   , En4 , v052, gtp3
	.byte	W36
	.byte		N11   , Dn4 
	.byte	W21
	.byte		N60   , Fn4 , v080, gtp3
	.byte	W03
@ 058   ----------------------------------------
	.byte	W84
	.byte		N11   , Gn4 , v100
	.byte	W12
@ 059   ----------------------------------------
	.byte		N80   , Cn4 , v096, gtp3
	.byte	W96
@ 060   ----------------------------------------
	.byte		N48   , Cn4 , v100
	.byte	W48
	.byte		N23   , Cn4 , v104
	.byte	W24
	.byte		N32   , Gn4 , v104, gtp3
	.byte	W24
@ 061   ----------------------------------------
	.byte	W36
	.byte		        As4 , v104, gtp3
	.byte	W48
	.byte		N05   , Gn4 
	.byte	W12
@ 062   ----------------------------------------
	.byte		N48   , Gn4 , v108
	.byte	W72
	.byte		N11   , An4 , v104
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 063   ----------------------------------------
	.byte		N24   , Fn4 , v108
	.byte	W72
	.byte		N32   , An4 , v104, gtp3
	.byte	W24
@ 064   ----------------------------------------
	.byte	W24
	.byte		N44   , Fn4 , v104, gtp3
	.byte	W48
	.byte		N11   , Dn4 
	.byte	W24
@ 065   ----------------------------------------
	.byte	W60
	.byte		N23   , An4 
	.byte	W36
@ 066   ----------------------------------------
	.byte	W24
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N32   , Fn4 , v104, gtp3
	.byte	W36
	.byte		N05   , An4 
	.byte	W06
	.byte		N06   , Gn4 
	.byte	W06
@ 067   ----------------------------------------
	.byte		N36   , Gn4 , v112
	.byte	W96
@ 068   ----------------------------------------
	.byte	W36
	.byte		N44   , Fn4 , v104, gtp3
	.byte	W60
@ 069   ----------------------------------------
	.byte		N48   , Fn4 , v100
	.byte	W72
	.byte		N23   , Cn4 , v104
	.byte	W24
@ 070   ----------------------------------------
	.byte		N36   , Cn4 , v100
	.byte	W36
	.byte		N32   , Cn4 , v104, gtp3
	.byte	W36
	.byte		N11   , Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 071   ----------------------------------------
	.byte	W24
	.byte		N23   , Dn3 
	.byte	W72
@ 072   ----------------------------------------
	.byte	W24
	.byte		        Cn3 
	.byte	W48
	.byte		N32   , Cn3 , v096, gtp3
	.byte	W24
@ 073   ----------------------------------------
	.byte	W24
	.byte		N23   , Dn3 , v104
	.byte	W24
	.byte		N24   , Fn3 , v112
	.byte	W36
	.byte		N11   , Gn3 , v104
	.byte	W12
@ 074   ----------------------------------------
	.byte	W36
	.byte		N23   
	.byte	W48
	.byte		N11   , An3 
	.byte	W12
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn3 
	.byte	W48
	.byte		N11   
	.byte	W24
@ 078   ----------------------------------------
	.byte	W48
	.byte		N24   , En3 , v112
	.byte	W36
	.byte		N11   , En3 , v104
	.byte	W12
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W84
	.byte		        Fn3 
	.byte	W12
@ 081   ----------------------------------------
	.byte	W72
	.byte		N32   , As3 , v108, gtp3
	.byte	W24
@ 082   ----------------------------------------
	.byte	W72
	.byte		N11   , An4 , v076
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 083   ----------------------------------------
	.byte		N72   , Fn4 , v084
	.byte	W84
	.byte		N11   , En4 , v076
	.byte	W12
@ 084   ----------------------------------------
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N36   
	.byte	W36
	.byte		N23   , En4 , v064
	.byte	W24
@ 085   ----------------------------------------
	.byte		N36   , Fn4 
	.byte	W60
	.byte		N11   , Fn4 , v072
	.byte	W12
	.byte		        Cn4 
	.byte	W24
@ 086   ----------------------------------------
	.byte		N36   , Cn4 , v064
	.byte	W36
	.byte		        Cn4 , v072
	.byte	W60
@ 087   ----------------------------------------
	.byte		N12   , Dn4 , v060
	.byte	W96
@ 088   ----------------------------------------
	.byte		N24   , En4 
	.byte	W24
	.byte		        Fn4 , v068
	.byte	W36
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N11   
	.byte	W24
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte		N24   , Cn4 , v056
	.byte	W96
@ 091   ----------------------------------------
	.byte		        Dn4 
	.byte	W72
	.byte		N11   , Dn4 , v060
	.byte	W24
@ 092   ----------------------------------------
	.byte		N48   , As3 , v052
	.byte	W96
@ 093   ----------------------------------------
	.byte		N96   , Fn3 , v064
	.byte	W96
@ 094   ----------------------------------------
	.byte		N72   , Gn4 
	.byte	W72
	.byte		N11   , An4 , v056
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 095   ----------------------------------------
	.byte		N72   , Fn4 , v060
	.byte	W72
	.byte		N11   , Gn4 , v052
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 096   ----------------------------------------
	.byte		N48   , En4 , v060
	.byte	W48
	.byte		N32   , En4 , v052, gtp3
	.byte	W36
	.byte		N12   , Fn4 
	.byte	W12
@ 097   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 098   ----------------------------------------
	.byte	W06
	.byte		VOL   , 96*mus_umineko_hope_mvl/mxv
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_umineko_hope_8:
	.byte	KEYSH , mus_umineko_hope_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 73
	.byte		VOL   , 80*mus_umineko_hope_mvl/mxv
	.byte		PAN   , c_v+24
	.byte		TIE   , Fn5 , v048
	.byte	W96
@ 001   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W01
	.byte		N23   , An5 
	.byte	W44
	.byte	W03
	.byte		        Dn5 
	.byte	W36
@ 002   ----------------------------------------
	.byte		N24   , Fn5 
	.byte	W24
	.byte		N23   
	.byte	W36
	.byte		        Gn5 
	.byte	W24
	.byte		N11   
	.byte	W12
@ 003   ----------------------------------------
	.byte	W24
	.byte		N23   , En5 
	.byte	W36
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 004   ----------------------------------------
	.byte		TIE   , Cn5 
	.byte	W96
@ 005   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W01
	.byte		N23   , An5 
	.byte	W23
	.byte		N24   , Dn5 
	.byte	W24
	.byte		N23   
	.byte	W36
@ 006   ----------------------------------------
	.byte	W13
	.byte		        Cn6 
	.byte	W23
	.byte		N32   , An5 , v048, gtp3
	.byte	W60
@ 007   ----------------------------------------
	.byte	W36
	.byte		N23   , Fn5 
	.byte	W60
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W72
	.byte		N32   , Gn5 , v056, gtp3
	.byte	W24
@ 013   ----------------------------------------
	.byte	W36
	.byte		        As5 , v056, gtp3
	.byte	W60
@ 014   ----------------------------------------
	.byte		N80   , Gn5 , v056, gtp3
	.byte	W84
	.byte		N11   
	.byte	W12
@ 015   ----------------------------------------
	.byte		N24   , Fn5 , v060
	.byte	W72
	.byte		N32   , An5 , v056, gtp3
	.byte	W24
@ 016   ----------------------------------------
	.byte	W24
	.byte		N24   , Fn5 
	.byte	W36
	.byte		N12   , Dn5 
	.byte	W12
	.byte		N11   
	.byte	W24
@ 017   ----------------------------------------
	.byte	W48
	.byte		N23   , En5 , v052
	.byte	W36
	.byte		N11   , Fn5 , v056
	.byte	W12
@ 018   ----------------------------------------
	.byte		N36   , En5 , v060
	.byte	W36
	.byte		N23   , As4 , v080
	.byte	W60
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W36
	.byte		N32   , Fn4 , v056, gtp3
	.byte	W36
	.byte		N11   , Dn4 
	.byte	W24
@ 023   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn3 
	.byte	W36
	.byte		        An2 
	.byte	W36
@ 024   ----------------------------------------
	.byte		TIE   , As1 
	.byte	W96
@ 025   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W84
@ 026   ----------------------------------------
	.byte		TIE   , Cn2 
	.byte	W96
@ 027   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W01
	.byte		N23   , An2 , v092
	.byte	W23
	.byte		        En3 
	.byte	W24
	.byte		        An2 
	.byte	W36
@ 028   ----------------------------------------
	.byte		N24   , As1 , v100
	.byte	W96
@ 029   ----------------------------------------
	.byte	W36
	.byte		        Fn2 , v092
	.byte	W24
	.byte		N44   , Fn2 , v088, gtp3
	.byte	W36
@ 030   ----------------------------------------
	.byte	W13
	.byte		N23   , Gn2 , v092
	.byte	W80
	.byte	W03
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W13
	.byte		        Fn2 
	.byte	W44
	.byte	W03
	.byte		N23   
	.byte	W36
@ 033   ----------------------------------------
	.byte	W60
	.byte		        Gn2 
	.byte	W36
@ 034   ----------------------------------------
	.byte		N24   , Fn2 , v100
	.byte	W96
@ 035   ----------------------------------------
	.byte	W24
	.byte		N56   , Fn4 , v080, gtp3
	.byte	W60
	.byte		N11   , En4 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N36   , Fn4 , v092
	.byte	W36
	.byte		N32   , As3 , v092, gtp3
	.byte	W36
	.byte		        Gn4 , v088, gtp3
	.byte	W24
@ 037   ----------------------------------------
	.byte	W36
	.byte		        As4 , v080, gtp3
	.byte	W48
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N17   , An4 
	.byte	W06
@ 038   ----------------------------------------
	.byte	W72
	.byte		N11   
	.byte	W24
@ 039   ----------------------------------------
	.byte	W72
	.byte		        Gn4 
	.byte	W24
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W24
	.byte		N23   , An4 , v056
	.byte	W72
@ 044   ----------------------------------------
	.byte	W24
	.byte		N24   , Gn4 , v064
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N11   , Cn5 
	.byte	W24
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W72
	.byte		        An4 
	.byte	W24
@ 047   ----------------------------------------
	.byte	W24
	.byte		N23   , An4 , v056
	.byte	W24
	.byte		        An4 , v060
	.byte	W24
	.byte		N11   , Dn4 , v064
	.byte	W24
@ 048   ----------------------------------------
	.byte	W24
	.byte		N23   , En4 , v056
	.byte	W24
	.byte		        En4 , v052
	.byte	W24
	.byte		N11   , Dn4 
	.byte	W24
@ 049   ----------------------------------------
	.byte	W36
	.byte		N23   , Dn5 , v056
	.byte	W60
@ 050   ----------------------------------------
	.byte	W72
	.byte		N11   , Cn5 , v048
	.byte	W24
@ 051   ----------------------------------------
	.byte		N80   , Dn5 , v048, gtp3
	.byte	W96
@ 052   ----------------------------------------
	.byte		N24   , Cn5 
	.byte	W24
	.byte		N36   
	.byte	W72
@ 053   ----------------------------------------
	.byte		N48   , An5 , v056
	.byte	W96
@ 054   ----------------------------------------
	.byte	W36
	.byte		N12   , Gn5 , v048
	.byte	W12
	.byte		N32   , Gn5 , v048, gtp3
	.byte	W36
	.byte		N11   
	.byte	W12
@ 055   ----------------------------------------
	.byte		N60   , Fn5 , v052
	.byte	W84
	.byte		N24   , Fn5 , v060
	.byte	W12
@ 056   ----------------------------------------
	.byte	W84
	.byte		N12   , Fn5 , v068
	.byte	W12
@ 057   ----------------------------------------
	.byte		N80   , Fn5 , v072, gtp3
	.byte	W84
	.byte		N11   , En5 , v080
	.byte	W12
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
	.byte	W13
	.byte		N23   , Cn5 , v092
	.byte	W23
	.byte		N12   
	.byte	W12
	.byte		N32   , Cn5 , v096, gtp3
	.byte	W48
@ 064   ----------------------------------------
	.byte		N36   , En4 , v088
	.byte	W60
	.byte		N12   , Dn4 , v092
	.byte	W12
	.byte		N32   , Fn3 , v100, gtp3
	.byte	W24
@ 065   ----------------------------------------
	.byte	W24
	.byte		N23   , En3 , v092
	.byte	W48
	.byte		N11   
	.byte	W24
@ 066   ----------------------------------------
	.byte	W24
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N32   , An3 , v096, gtp3
	.byte	W48
@ 067   ----------------------------------------
	.byte		N36   , An3 , v088
	.byte	W36
	.byte		N23   , En3 , v092
	.byte	W36
	.byte		N11   , Dn3 
	.byte	W24
@ 068   ----------------------------------------
	.byte	W13
	.byte		N23   
	.byte	W56
	.byte	W03
	.byte		N32   , Gn4 , v100, gtp3
	.byte	W24
@ 069   ----------------------------------------
	.byte	W36
	.byte		        As4 , v092, gtp3
	.byte	W48
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N17   , An4 
	.byte	W06
@ 070   ----------------------------------------
	.byte	W72
	.byte		N11   
	.byte	W24
@ 071   ----------------------------------------
	.byte	W72
	.byte		        Gn4 
	.byte	W24
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W13
	.byte		N23   , An5 
	.byte	W23
	.byte		N24   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 075   ----------------------------------------
	.byte	W24
	.byte		N56   , Fn5 , v092, gtp3
	.byte	W60
	.byte		N12   , En5 
	.byte	W12
@ 076   ----------------------------------------
	.byte		N60   , En5 , v096
	.byte	W72
	.byte		N32   , Gn5 , v092, gtp3
	.byte	W24
@ 077   ----------------------------------------
	.byte	W24
	.byte		N36   
	.byte	W48
	.byte		N23   , Cn6 
	.byte	W24
@ 078   ----------------------------------------
	.byte		N48   , Cn6 , v096
	.byte	W72
	.byte		N11   , An5 , v092
	.byte	W24
@ 079   ----------------------------------------
	.byte	W13
	.byte		N23   , Cn6 
	.byte	W23
	.byte		N24   
	.byte	W24
	.byte		N23   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 080   ----------------------------------------
	.byte		N60   , Dn5 , v096
	.byte	W60
	.byte		N12   , Dn5 , v092
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Fn5 
	.byte	W12
@ 081   ----------------------------------------
	.byte		N36   , En5 , v096
	.byte	W36
	.byte		N32   , Gn5 , v092, gtp3
	.byte	W60
@ 082   ----------------------------------------
	.byte		N80   , Fn5 , v092, gtp3
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
	.byte	W06
	.byte		VOL   , 80*mus_umineko_hope_mvl/mxv
	.byte	FINE

@******************************************************@
	.align	2

mus_umineko_hope:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_umineko_hope_pri	@ Priority
	.byte	mus_umineko_hope_rev	@ Reverb.

	.word	mus_umineko_hope_grp

	.word	mus_umineko_hope_1
	.word	mus_umineko_hope_2
	.word	mus_umineko_hope_3
	.word	mus_umineko_hope_4
	.word	mus_umineko_hope_5
	.word	mus_umineko_hope_6
	.word	mus_umineko_hope_7
	.word	mus_umineko_hope_8

	.end
