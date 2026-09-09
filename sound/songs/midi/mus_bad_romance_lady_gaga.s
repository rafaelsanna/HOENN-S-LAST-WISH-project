	.include "MPlayDef.s"

	.equ	mus_bad_romance_lady_gaga_grp, voicegroup_littleroot_test
	.equ	mus_bad_romance_lady_gaga_pri, 0
	.equ	mus_bad_romance_lady_gaga_rev, reverb_set+12
	.equ	mus_bad_romance_lady_gaga_mvl, 88
	.equ	mus_bad_romance_lady_gaga_key, 0
	.equ	mus_bad_romance_lady_gaga_tbs, 1
	.equ	mus_bad_romance_lady_gaga_exg, 1
	.equ	mus_bad_romance_lady_gaga_cmp, 1

	.section .rodata
	.global	mus_bad_romance_lady_gaga
	.align	2

@**************** Track 1 (Midi-Chn.7) ****************@

mus_bad_romance_lady_gaga_1:
	.byte		VOL   , 127*mus_bad_romance_lady_gaga_mvl/mxv
	.byte	KEYSH , mus_bad_romance_lady_gaga_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 120*mus_bad_romance_lady_gaga_tbs/2
	.byte		VOICE , 73
	.byte		N12   , Cn3 , v080
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N36   , Fn3 
	.byte	W36
	.byte		N12   , En3 
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W60
	.byte		N12   , Bn2 
	.byte	W12
@ 003   ----------------------------------------
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W24
	.byte		N24   , En3 
	.byte	W36
	.byte		N12   
	.byte	W12
@ 004   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W60
@ 005   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn1 
	.byte		N36   , Fn3 
	.byte	W12
	.byte		N12   , Fn1 
	.byte	W24
	.byte		N12   
	.byte		N12   , En3 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Fn3 
	.byte	W12
	.byte		        Fn1 
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W12
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N12   
	.byte		N12   , Bn2 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N24   , Cn3 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gs1 
	.byte		N24   , En3 
	.byte	W12
	.byte		N12   , Gs1 
	.byte	W24
	.byte		N24   
	.byte		N12   , En3 
	.byte	W12
@ 008   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N24   , Gs1 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Gs1 
	.byte		N12   , Cn3 
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
	.byte		N24   , An2 
	.byte	W12
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N24   
	.byte		N24   , An2 
	.byte	W24
@ 010   ----------------------------------------
	.byte		        Fn1 
	.byte		N12   , En3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W24
	.byte		        Fn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N24   , Fn2 
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
	.byte		N12   , Fn3 
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
@ 012   ----------------------------------------
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   , Fn3 
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
@ 013   ----------------------------------------
	.byte		        Cn3 
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   , An1 
	.byte		N24   , An2 
	.byte	W12
	.byte		N12   , An1 
	.byte	W12
	.byte		        Cn2 
	.byte		N24   , An2 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
@ 014   ----------------------------------------
mus_bad_romance_lady_gaga_1_014:
	.byte		N12   , En2 , v080
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn2 
	.byte		N24   , An2 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_bad_romance_lady_gaga_1_015:
	.byte		N12   , En2 , v080
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        An1 
	.byte		N24   , An2 
	.byte	W12
	.byte		N12   , An1 
	.byte	W12
	.byte		        Cn2 
	.byte		N24   , An2 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_bad_romance_lady_gaga_1_016:
	.byte		N12   , En2 , v080
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , En3 
	.byte	W24
	.byte		N24   , Gn1 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Gn1 
	.byte		N12   , An2 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_bad_romance_lady_gaga_1_017:
	.byte		N12   , Cn3 , v080
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W24
	.byte		N24   , An1 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N24   , An1 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_bad_romance_lady_gaga_1_018:
	.byte		N12   , An2 , v080
	.byte	W12
	.byte		N24   , An1 
	.byte		N12   , An2 
	.byte	W24
	.byte		        An1 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N24   , Cn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   , Cn2 
	.byte		N12   , An2 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
mus_bad_romance_lady_gaga_1_019:
	.byte		N12   , Gn2 , v080
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N24   , An1 
	.byte		N12   , An2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , An1 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_bad_romance_lady_gaga_1_020:
	.byte		N12   , An2 , v080
	.byte	W12
	.byte		N24   , An1 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N24   , Cn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   , Cn2 
	.byte		N24   , An2 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
mus_bad_romance_lady_gaga_1_021:
	.byte	W12
	.byte		N24   , Gn1 , v080
	.byte		N12   , En2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An2 
	.byte	W12
	.byte		N48   
	.byte	W12
	.byte		N24   , An1 
	.byte	W24
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
mus_bad_romance_lady_gaga_1_022:
	.byte	W12
	.byte		N24   , An1 , v080
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte		N24   , Cn4 
	.byte	W24
	.byte	PEND
@ 023   ----------------------------------------
mus_bad_romance_lady_gaga_1_023:
	.byte		N12   , Cn3 , v080
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N48   
	.byte	W12
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
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W24
	.byte		N24   , An1 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , An1 
	.byte		N12   , An2 
	.byte	W12
@ 026   ----------------------------------------
mus_bad_romance_lady_gaga_1_026:
	.byte		N12   , Cn3 , v080
	.byte	W12
	.byte		N24   , An1 
	.byte		N18   , Cn3 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N24   , Cn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N24   , Cn2 
	.byte		N24   , Cn3 
	.byte	W12
	.byte	PEND
@ 027   ----------------------------------------
mus_bad_romance_lady_gaga_1_027:
	.byte	W12
	.byte		N24   , Fn2 , v080
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N24   , An1 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , An1 
	.byte		N12   , An2 
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
mus_bad_romance_lady_gaga_1_028:
	.byte		N12   , Cn3 , v080
	.byte	W12
	.byte		N24   , An1 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An1 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N24   , Cn2 
	.byte		N12   , An2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Cn2 
	.byte		N12   , An2 
	.byte	W12
	.byte	PEND
@ 029   ----------------------------------------
mus_bad_romance_lady_gaga_1_029:
	.byte		N12   , Gn2 , v080
	.byte	W12
	.byte		N24   , Gn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An2 
	.byte	W12
	.byte		N48   
	.byte	W12
	.byte		N24   , An1 
	.byte	W24
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_023
@ 032   ----------------------------------------
	.byte	W12
	.byte		N24   , En1 , v080
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
	.byte		N24   , Gn1 , v080
	.byte	W24
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W06
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , An1 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , An1 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte	PEND
@ 034   ----------------------------------------
mus_bad_romance_lady_gaga_1_034:
	.byte		N12   , An1 , v080
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
	.byte	W06
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , An1 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , An1 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte	PEND
@ 035   ----------------------------------------
mus_bad_romance_lady_gaga_1_035:
	.byte		N12   , An1 , v080
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
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , Gn2 
	.byte	W12
	.byte	PEND
@ 036   ----------------------------------------
mus_bad_romance_lady_gaga_1_036:
	.byte		N12   , An1 , v080
	.byte		N24   , An2 
	.byte	W12
	.byte		N12   , An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N06   , Gn2 
	.byte	W15
	.byte		N48   , An1 
	.byte	W09
	.byte	PEND
@ 037   ----------------------------------------
mus_bad_romance_lady_gaga_1_037:
	.byte	W48
	.byte		N12   , Fn2 , v080
	.byte	W12
	.byte		N24   
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 038   ----------------------------------------
mus_bad_romance_lady_gaga_1_038:
	.byte		N12   , Cn3 , v080
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte	W24
	.byte		        Fn2 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Gn1 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Gn1 
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W12
	.byte	PEND
@ 039   ----------------------------------------
mus_bad_romance_lady_gaga_1_039:
	.byte	W12
	.byte		N24   , Gn1 , v080
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        An1 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , An1 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , An1 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_bad_romance_lady_gaga_1_040:
	.byte		N24   , Bn2 , v080
	.byte		N24   , Dn3 
	.byte		N24   , Gn3 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        An1 
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
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
mus_bad_romance_lady_gaga_1_041:
	.byte		N12   , Dn2 , v080
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_038
@ 043   ----------------------------------------
mus_bad_romance_lady_gaga_1_043:
	.byte	W12
	.byte		N24   , Gn1 , v080
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , An1 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N24   
	.byte		N12   , Gs2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Gs1 
	.byte		N12   , Gs2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 044   ----------------------------------------
mus_bad_romance_lady_gaga_1_044:
	.byte		N24   , Bn2 , v080
	.byte		N24   , En3 
	.byte		N24   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gs1 
	.byte		N06   , En3 
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		N12   , An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte	PEND
@ 045   ----------------------------------------
	.byte		        An2 
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
	.byte		N36   , Fn3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , En3 
	.byte	W12
@ 046   ----------------------------------------
	.byte		        Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N24   , Dn3 
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   
	.byte	W12
@ 047   ----------------------------------------
	.byte		        Cn3 
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N24   , Dn3 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        An1 
	.byte		N36   , En3 
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte		N12   
	.byte	W12
@ 048   ----------------------------------------
mus_bad_romance_lady_gaga_1_048:
	.byte		N12   , Cn3 , v080
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N24   , Dn3 
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
@ 049   ----------------------------------------
mus_bad_romance_lady_gaga_1_049:
	.byte		N12   , Cn3 , v080
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
	.byte	W12
	.byte		        Fn1 
	.byte		N36   , Fn3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 050   ----------------------------------------
mus_bad_romance_lady_gaga_1_050:
	.byte		N12   , An2 , v080
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 051   ----------------------------------------
mus_bad_romance_lady_gaga_1_051:
	.byte		N12   , Cn3 , v080
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N24   , Dn3 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        En1 
	.byte		N36   , En3 
	.byte	W12
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gs2 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 052   ----------------------------------------
mus_bad_romance_lady_gaga_1_052:
	.byte		N12   , Bn2 , v080
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte		N12   
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
@ 053   ----------------------------------------
mus_bad_romance_lady_gaga_1_053:
	.byte		N12   , An1 , v080
	.byte		N12   , En3 
	.byte		N12   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        An1 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An1 
	.byte		N24   , An2 
	.byte	W12
	.byte		N12   , An1 
	.byte	W12
	.byte		        Cn2 
	.byte		N24   , An2 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        An1 
	.byte		N24   , An2 
	.byte	W12
	.byte		N12   , An1 
	.byte	W12
	.byte		        Cn2 
	.byte		N24   , An2 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
@ 055   ----------------------------------------
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn2 
	.byte		N24   , An2 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
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
	 .word	mus_bad_romance_lady_gaga_1_020
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
mus_bad_romance_lady_gaga_1_064:
	.byte	W12
	.byte		N24   , An1 , v080
	.byte	W24
	.byte		N12   
	.byte	W24
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N24   
	.byte	W12
	.byte	PEND
@ 065   ----------------------------------------
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N12   , Dn2 
	.byte	W24
	.byte		N24   , An1 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , An1 
	.byte		N12   , An2 
	.byte	W12
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_026
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_027
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_028
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_029
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_022
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_023
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_064
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_033
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_034
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_035
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_036
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_037
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
	.byte		N12   , An2 , v080
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
	.byte		N36   , Fn3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , En3 
	.byte	W12
@ 086   ----------------------------------------
	.byte		        Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N24   , Gn3 
	.byte	W12
@ 087   ----------------------------------------
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte		N36   , En3 
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte		N12   
	.byte	W12
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_048
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_049
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_050
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
	.byte		N12   , Cn3 , v080
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        An1 
	.byte		N24   , An2 
	.byte	W12
	.byte		N12   , An1 
	.byte	W12
	.byte		        Cn2 
	.byte		N24   , An2 
	.byte	W12
	.byte		N12   , Cn2 
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
	.byte		N12   , Cn3 , v080
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N24   
	.byte	W24
@ 102   ----------------------------------------
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
@ 103   ----------------------------------------
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
@ 104   ----------------------------------------
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
@ 105   ----------------------------------------
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
@ 106   ----------------------------------------
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
@ 107   ----------------------------------------
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
	.byte		N24   , En2 
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte	W24
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte	W24
@ 108   ----------------------------------------
	.byte		N12   , En2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , En2 
	.byte		N06   , Gn2 
	.byte		N06   , Cn3 
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , En2 
	.byte		N12   , Gn2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N18   , Cn2 
	.byte		N18   , En2 
	.byte		N18   , Gn2 
	.byte		N18   , Cn3 
	.byte		N18   , En3 
	.byte	W06
@ 109   ----------------------------------------
	.byte	W12
	.byte		        Cn2 
	.byte		N18   , En2 
	.byte		N18   , Gn2 
	.byte		N18   , Cn3 
	.byte		N18   , En3 
	.byte	W18
	.byte		        Cn2 
	.byte		N18   , En2 
	.byte		N18   , Gn2 
	.byte		N18   , Cn3 
	.byte		N18   , En3 
	.byte	W18
	.byte		N12   , Fn2 
	.byte		N12   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Cn3 
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte		N12   
	.byte	W12
@ 110   ----------------------------------------
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Gn2 
	.byte		N12   
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        An2 
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Cn3 
	.byte		N12   
	.byte	W12
	.byte		        Gn2 
	.byte		N12   , Cn3 
	.byte		N12   
	.byte	W12
@ 111   ----------------------------------------
	.byte		        Fn2 
	.byte		N12   , Bn2 
	.byte		N12   
	.byte	W12
	.byte		        En2 
	.byte		N12   , Bn2 
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Gn2 
	.byte		N12   
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , En2 
	.byte		N12   
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte		N12   
	.byte	W12
@ 112   ----------------------------------------
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte		N24   , Gn2 
	.byte	W12
	.byte		N12   , An1 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , An2 
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N12   
	.byte		N12   , En3 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , En3 
	.byte	W12
@ 113   ----------------------------------------
	.byte		        An1 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        An2 
	.byte		N24   , Bn2 
	.byte	W12
@ 114   ----------------------------------------
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte		N24   , Gn2 
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        An2 
	.byte		N12   
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Cn3 
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Cn3 
	.byte	W12
@ 115   ----------------------------------------
	.byte		        Gn1 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        En2 
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Cn3 
	.byte		N12   
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Bn2 
	.byte		N12   
	.byte	W12
@ 116   ----------------------------------------
	.byte		        En2 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Gn2 
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte		N12   , An2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , En3 
	.byte	W12
@ 117   ----------------------------------------
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Cn3 
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
	.byte	W12
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Gn1 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
@ 119   ----------------------------------------
	.byte		        Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Gn1 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Gn1 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
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
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Cn2 
	.byte		N12   , Cn4 
	.byte	W12
@ 121   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N24   , Cn2 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn2 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fn1 
	.byte	W06
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N24   , Fn1 
	.byte		N06   , Fn3 
	.byte	W24
	.byte		N24   , Fn1 
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
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Dn2 
	.byte		N12   , An3 
	.byte	W12
@ 123   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		N24   , Dn2 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn2 
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
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 125   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W24
	.byte		        Fn2 
	.byte	W12
	.byte		N24   
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte	W12
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_038
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_039
@ 128   ----------------------------------------
	.byte		N24   , Bn2 , v080
	.byte		N24   , Dn3 
	.byte		N24   , Gn3 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   , Gn2 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        An1 
	.byte		N06   , En3 
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
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
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N24   
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Fn2 
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte	W12
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_038
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_043
@ 132   ----------------------------------------
	.byte		N24   , Bn2 , v080
	.byte		N24   , En3 
	.byte		N24   , Gs3 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gs1 
	.byte		N06   , En3 
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		N48   , An1 
	.byte		N48   , Cn3 
	.byte	W48
@ 133   ----------------------------------------
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N36   , Fn2 
	.byte	W36
	.byte		N12   , En2 
	.byte	W12
@ 134   ----------------------------------------
mus_bad_romance_lady_gaga_1_134:
	.byte		N12   , Fn2 , v080
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N24   , Dn2 
	.byte	W36
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , An3 
	.byte	W12
	.byte	PEND
@ 135   ----------------------------------------
mus_bad_romance_lady_gaga_1_135:
	.byte		N24   , Cn2 , v080
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , Cn4 
	.byte	W24
	.byte		N24   , An2 
	.byte		N24   , Cn3 
	.byte		N24   , En3 
	.byte	W36
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
@ 136   ----------------------------------------
	.byte		        Bn2 
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte	W24
	.byte		        Cn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 137   ----------------------------------------
	.byte		        Cn2 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn2 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En2 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N36   , Fn2 
	.byte	W36
	.byte		N12   , En2 
	.byte	W12
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_134
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_bad_romance_lady_gaga_1_135
@ 140   ----------------------------------------
	.byte		N12   , Bn2 , v080
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Gn2 
	.byte		N24   , Bn2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Fn1 
	.byte		N12   , Cn2 
	.byte		N12   , Fn2 
	.byte		N12   , An2 
	.byte		N12   , Cn3 
	.byte		N12   , Fn3 
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

mus_bad_romance_lady_gaga:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_bad_romance_lady_gaga_pri	@ Priority
	.byte	mus_bad_romance_lady_gaga_rev	@ Reverb.

	.word	mus_bad_romance_lady_gaga_grp

	.word	mus_bad_romance_lady_gaga_1

	.end
