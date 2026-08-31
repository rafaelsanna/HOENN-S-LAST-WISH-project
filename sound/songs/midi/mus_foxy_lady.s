	.include "MPlayDef.s"

	.equ	mus_foxy_lady_grp, voicegroup_hlw_classic_rock
	.equ	mus_foxy_lady_pri, 0
	.equ	mus_foxy_lady_rev, reverb_set+15
	.equ	mus_foxy_lady_mvl, 98
	.equ	mus_foxy_lady_key, 0
	.equ	mus_foxy_lady_tbs, 1
	.equ	mus_foxy_lady_exg, 1
	.equ	mus_foxy_lady_cmp, 1

	.section .rodata
	.global	mus_foxy_lady
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_foxy_lady_1:
	.byte		VOL   , 127*mus_foxy_lady_mvl/mxv
	.byte	KEYSH , mus_foxy_lady_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 96*mus_foxy_lady_tbs/2
	.byte		VOICE , 30
	.byte		N96   , Fs3 , v080
	.byte	W96
@ 002   ----------------------------------------
	.byte	W72
	.byte		N24   
	.byte	W24
@ 003   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
@ 004   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N12   
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Bn2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Bn2 
	.byte		N06   , Ds3 
	.byte	W06
@ 005   ----------------------------------------
mus_foxy_lady_1_005:
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N12   , Fs2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
@ 007   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Bn2 
	.byte	W12
@ 008   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , Fs2 
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , Fs2 
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N24   , Fs2 
	.byte		N24   , Bn2 
	.byte		N24   , Ds3 
	.byte	W24
@ 009   ----------------------------------------
mus_foxy_lady_1_009:
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_1_005
@ 012   ----------------------------------------
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , Fs2 
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N24   , Fs2 
	.byte		N24   , Bn2 
	.byte		N24   , Ds3 
	.byte	W24
@ 013   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 014   ----------------------------------------
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte		N12   , An1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Fs1 
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        En1 
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N03   , En2 
	.byte	W03
	.byte		N09   , Fs2 
	.byte	W09
@ 017   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Fs1 
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , An1 
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 018   ----------------------------------------
	.byte		        En1 
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 019   ----------------------------------------
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        En1 
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N03   , Cs2 
	.byte	W03
	.byte		N09   , Ds2 
	.byte	W09
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N24   , Fs1 
	.byte		N24   , An1 
	.byte		N24   , Fs2 
	.byte	W96
@ 022   ----------------------------------------
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W18
	.byte		N12   , Fs3 
	.byte	W12
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_1_005
@ 024   ----------------------------------------
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , Fs2 
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_1_005
@ 026   ----------------------------------------
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte	W12
@ 027   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
@ 028   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N24   , Fs2 
	.byte		N24   , Bn2 
	.byte		N24   , Ds3 
	.byte	W24
@ 029   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 030   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , As2 
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N06   , As2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N12   
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Bn1 
	.byte		N06   , Bn2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Bn2 
	.byte		N06   , Ds3 
	.byte	W06
@ 031   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
@ 032   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N12   
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N06   , Bn2 
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Bn2 
	.byte		N06   , Ds3 
	.byte	W06
@ 033   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
@ 034   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , Gn2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N03   , Bn1 
	.byte	W03
	.byte		N09   , Cs2 
	.byte	W09
	.byte		N24   , En2 
	.byte	W24
	.byte		N12   , Dn2 
	.byte	W12
@ 035   ----------------------------------------
	.byte		        Fs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N12   
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W06
@ 036   ----------------------------------------
	.byte		N03   , Fs2 
	.byte		N03   , Bn2 
	.byte		N03   , En3 
	.byte	W03
	.byte		N09   , Gs2 
	.byte	W09
	.byte		N12   
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		N03   , Fs2 
	.byte		N03   , Bn2 
	.byte		N03   , En3 
	.byte	W03
	.byte		N09   , Gs2 
	.byte	W09
	.byte		N12   
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds2 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N12   
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , Cs3 
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N03   , Fs2 
	.byte		N03   , Bn2 
	.byte	W03
	.byte		N09   , Cs3 
	.byte	W09
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N03   , Fs2 
	.byte		N03   , Bn2 
	.byte	W03
	.byte		N09   , Cs3 
	.byte	W09
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N03   , Fs2 
	.byte		N03   , Bn2 
	.byte		N03   , En3 
	.byte	W03
	.byte		N09   , Gs2 
	.byte	W09
	.byte		N12   
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		N03   , Fs2 
	.byte		N03   , Bn2 
	.byte		N03   , En3 
	.byte	W03
	.byte		N09   , Gs2 
	.byte	W09
	.byte		N06   
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 039   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Fs1 
	.byte		N06   , Fs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , Fs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Fs1 
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 040   ----------------------------------------
	.byte		        En1 
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , En2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , En2 
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
@ 041   ----------------------------------------
mus_foxy_lady_1_041:
	.byte		N24   , Fs1 , v080
	.byte		N24   , Fs2 
	.byte		N24   , Cs3 
	.byte	W96
	.byte	PEND
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , Bn2 
	.byte		N06   , En3 
	.byte	W06
@ 044   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W24
	.byte		        An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_1_009
@ 046   ----------------------------------------
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 047   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 048   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_1_009
@ 050   ----------------------------------------
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N03   , En2 
	.byte	W03
	.byte		N09   , Fs2 
	.byte		N09   , En3 
	.byte		N09   , An3 
	.byte	W09
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 051   ----------------------------------------
	.byte		N12   , Fs1 
	.byte		N12   , As2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Cs3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , En2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , En2 
	.byte		N06   , Bn2 
	.byte	W06
@ 052   ----------------------------------------
	.byte		N12   , En1 
	.byte		N12   , Bn1 
	.byte		N12   , En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N03   , Cs2 
	.byte	W03
	.byte		N09   , Ds2 
	.byte	W09
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N03   , Cs2 
	.byte	W03
	.byte		N09   , Ds2 
	.byte	W09
	.byte		N12   , Fs2 
	.byte	W12
@ 053   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        En1 
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte	W12
@ 054   ----------------------------------------
	.byte		        En1 
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , Gs2 
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
@ 055   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , As2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 056   ----------------------------------------
	.byte		        En1 
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte		N12   , En2 
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , En1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte		N06   , Bn1 
	.byte		N06   , En2 
	.byte	W06
	.byte		N03   , Cs2 
	.byte	W03
	.byte		N09   , Ds2 
	.byte	W09
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_1_041
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W60
	.byte		N24   , Bn2 , v080
	.byte	W24
	.byte		N12   
	.byte	W12
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_1_005
@ 062   ----------------------------------------
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N12   
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Bn1 
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte	W12
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_1_005
@ 064   ----------------------------------------
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 065   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , Fs2 
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
@ 066   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , An1 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , Bn2 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		N12   , Bn1 
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte	W12
@ 067   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        En3 
	.byte		N06   , An3 
	.byte	W06
@ 068   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   , Bn1 
	.byte		N12   , Fs2 
	.byte		N12   , Bn2 
	.byte	W12
@ 069   ----------------------------------------
mus_foxy_lady_1_069:
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Fs2 
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        Fs2 
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte	PEND
@ 070   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Bn2 
	.byte		N12   , En3 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , Fs2 
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N06   , Cs2 
	.byte		N06   , Gs2 
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Gs2 
	.byte		N06   , Cs3 
	.byte	W06
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_1_069
@ 072   ----------------------------------------
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W24
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , Bn2 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		N12   , Bn1 
	.byte		N12   , Bn2 
	.byte		N12   , Ds3 
	.byte	W12
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_1_069
@ 074   ----------------------------------------
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En1 
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N24   , Bn1 
	.byte		N24   , Bn2 
	.byte		N24   , Ds3 
	.byte	W24
	.byte		N12   , En2 
	.byte		N12   , An2 
	.byte		N12   , Cs3 
	.byte	W12
@ 075   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        En3 
	.byte		N06   , An3 
	.byte	W06
@ 076   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , Fs2 
	.byte		N12   , As2 
	.byte	W12
	.byte		        Fs1 
	.byte		N12   , An1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N36   , Bn1 
	.byte		N36   , Bn2 
	.byte		N36   , Ds3 
	.byte	W36
@ 077   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.3) ****************@

mus_foxy_lady_2:
	.byte		VOL   , 127*mus_foxy_lady_mvl/mxv
	.byte	KEYSH , mus_foxy_lady_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 30
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W24
	.byte		N18   , An3 , v080
	.byte		N18   , Cs4 
	.byte	W18
	.byte		N06   , An3 
	.byte	W30
	.byte		N24   
	.byte		N24   , Cs4 
	.byte	W24
@ 005   ----------------------------------------
mus_foxy_lady_2_005:
	.byte	W24
	.byte		N24   , An3 , v080
	.byte		N24   , Cs4 
	.byte	W72
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_2_005
@ 007   ----------------------------------------
mus_foxy_lady_2_007:
	.byte	W24
	.byte		N12   , An3 , v080
	.byte	W12
	.byte		N12   
	.byte	W60
	.byte	PEND
@ 008   ----------------------------------------
	.byte	W24
	.byte		N18   
	.byte		N18   , Cs4 
	.byte	W18
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W30
	.byte		N24   , An3 
	.byte	W24
@ 009   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N03   , Bn3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        An3 
	.byte	W15
@ 010   ----------------------------------------
	.byte	W24
	.byte		N18   
	.byte		N18   , Cs4 
	.byte	W18
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W30
	.byte		        En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
@ 011   ----------------------------------------
	.byte	W24
	.byte		N24   , An3 
	.byte	W72
@ 012   ----------------------------------------
	.byte	W24
	.byte		N03   , An1 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		N18   , An3 
	.byte	W42
	.byte		N03   , Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
@ 013   ----------------------------------------
	.byte	W24
	.byte		N24   , An3 
	.byte	W72
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
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Dn2 
	.byte	W24
	.byte		N12   , An1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 022   ----------------------------------------
	.byte	W24
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W48
	.byte		N03   , Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
@ 023   ----------------------------------------
	.byte	W72
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W15
@ 024   ----------------------------------------
	.byte	W24
	.byte		N18   
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W30
	.byte		N03   , Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
@ 025   ----------------------------------------
	.byte	W48
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 026   ----------------------------------------
	.byte	W48
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 027   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 028   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , Gn2 
	.byte	W06
@ 029   ----------------------------------------
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N03   , Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N03   , Bn3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        An3 
	.byte	W03
@ 030   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte		N24   , Cs4 
	.byte	W48
	.byte		        An3 
	.byte		N24   , Cs4 
	.byte	W24
@ 031   ----------------------------------------
	.byte	W24
	.byte		        An3 
	.byte		N24   , Cs4 
	.byte	W48
	.byte		N03   , Bn3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        An3 
	.byte	W03
@ 032   ----------------------------------------
	.byte	W24
	.byte		N06   , En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 033   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W36
	.byte		        Fs3 
	.byte	W60
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
	.byte		        Cs4 
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Fs3 
	.byte	W12
@ 042   ----------------------------------------
	.byte	W12
	.byte		N36   , En4 
	.byte	W60
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   
	.byte	W06
@ 043   ----------------------------------------
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W36
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N18   , An2 
	.byte	W18
	.byte		N06   , Fs2 
	.byte	W06
@ 044   ----------------------------------------
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
@ 045   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		N04   , En3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		N24   
	.byte	W24
	.byte		N12   , Cs3 
	.byte	W24
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
@ 046   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N36   , An4 
	.byte	W36
@ 047   ----------------------------------------
	.byte		N24   
	.byte	W24
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En4 
	.byte	W06
@ 048   ----------------------------------------
	.byte		        Bn3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , En4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fs4 
	.byte	W06
@ 049   ----------------------------------------
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Bn3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N04   , Bn3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		N12   , An3 
	.byte	W12
	.byte		N04   , Fs3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		N12   , En3 
	.byte	W12
	.byte		N04   , Cs3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		N12   , Bn2 
	.byte	W12
@ 050   ----------------------------------------
	.byte		N48   
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
	.byte	W60
	.byte		N36   , Fs3 
	.byte	W36
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
	.byte	W66
	.byte		N06   
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W24
	.byte		N24   , An3 
	.byte	W48
	.byte		N24   
	.byte	W24
@ 067   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W48
	.byte		N06   
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , An3 
	.byte	W12
@ 068   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W48
	.byte		N12   , En3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , En3 
	.byte		N06   , An3 
	.byte	W06
	.byte		        En3 
	.byte		N06   , An3 
	.byte	W06
@ 069   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		N18   , Bn3 
	.byte	W18
	.byte		N12   , An3 
	.byte	W12
@ 070   ----------------------------------------
	.byte		N24   , Fs3 
	.byte	W72
	.byte		N06   , An3 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_2_007
@ 072   ----------------------------------------
	.byte	W24
	.byte		N18   , An3 , v080
	.byte	W18
	.byte		N06   
	.byte	W30
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 073   ----------------------------------------
	.byte	W66
	.byte		N18   , Bn3 
	.byte	W18
	.byte		N12   , An3 
	.byte	W12
@ 074   ----------------------------------------
	.byte		        Fs3 
	.byte	W96
@ 075   ----------------------------------------
	.byte		N01   , Cs3 
	.byte	W01
	.byte		N04   , En3 
	.byte	W05
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fs2 
	.byte	W24
	.byte		N36   , En1 
	.byte		N36   , An1 
	.byte		N36   , Dn2 
	.byte	W36
@ 076   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.5) ****************@

mus_foxy_lady_3:
	.byte		VOL   , 127*mus_foxy_lady_mvl/mxv
	.byte	KEYSH , mus_foxy_lady_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
mus_foxy_lady_3_002:
	.byte		N12   , Fs0 , v080
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 003   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   , An0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 
	.byte	W24
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
@ 004   ----------------------------------------
	.byte		N12   , Fs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , Fs1 
	.byte	W18
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W30
	.byte		N06   , En0 
	.byte	W06
@ 005   ----------------------------------------
	.byte		N12   , Fs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N12   , An0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
@ 006   ----------------------------------------
mus_foxy_lady_3_006:
	.byte		N12   , Fs0 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 007   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		N12   
	.byte	W30
	.byte		N06   , An0 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
@ 008   ----------------------------------------
	.byte		N12   , Fs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , En1 
	.byte	W12
@ 009   ----------------------------------------
mus_foxy_lady_3_009:
	.byte		N12   , Cs1 , v080
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		N18   
	.byte	W18
	.byte		N06   , En0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N18   , Fs1 
	.byte	W18
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W36
@ 011   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		        An0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
@ 012   ----------------------------------------
	.byte		N12   , Fs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_3_009
@ 014   ----------------------------------------
mus_foxy_lady_3_014:
	.byte		N12   , Fs1 , v080
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
	.byte	PEND
@ 015   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_3_014
@ 017   ----------------------------------------
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
@ 018   ----------------------------------------
mus_foxy_lady_3_018:
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 020   ----------------------------------------
	.byte		N24   , Fs1 
	.byte	W96
@ 021   ----------------------------------------
	.byte	W72
	.byte		        An1 
	.byte	W24
@ 022   ----------------------------------------
	.byte		N12   , Fs0 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W30
	.byte		N06   , En0 
	.byte	W06
@ 023   ----------------------------------------
	.byte		N12   , Fs0 
	.byte	W12
	.byte		N12   
	.byte	W30
	.byte		N06   , En0 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
@ 024   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , En1 
	.byte	W12
@ 025   ----------------------------------------
	.byte		N06   , Cs1 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N12   , Fs0 
	.byte	W36
	.byte		N06   , An0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
@ 026   ----------------------------------------
mus_foxy_lady_3_026:
	.byte		N12   , Fs0 , v080
	.byte	W12
	.byte		N12   
	.byte	W30
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte	PEND
@ 027   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		N12   
	.byte	W30
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 029   ----------------------------------------
	.byte		N12   , Cs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , An0 
	.byte	W12
	.byte		N24   , Bn0 
	.byte	W24
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_3_026
@ 031   ----------------------------------------
	.byte		N12   , Fs0 , v080
	.byte	W12
	.byte		N12   
	.byte	W36
	.byte		N06   , An0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
@ 032   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 033   ----------------------------------------
	.byte		N12   , Cs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W30
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_3_014
@ 035   ----------------------------------------
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
@ 036   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
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
@ 037   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 038   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 039   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
@ 040   ----------------------------------------
	.byte		N24   , Fs1 
	.byte	W72
	.byte		N24   
	.byte	W24
@ 041   ----------------------------------------
	.byte	W72
	.byte		        Bn1 
	.byte	W24
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_3_026
@ 043   ----------------------------------------
	.byte		N12   , Fs0 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , An0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
@ 044   ----------------------------------------
mus_foxy_lady_3_044:
	.byte		N12   , Fs0 , v080
	.byte	W12
	.byte		N12   
	.byte	W30
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 045   ----------------------------------------
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N24   , Fs0 
	.byte	W30
	.byte		N06   , An0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
@ 046   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		N12   
	.byte	W30
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W24
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 047   ----------------------------------------
	.byte		        Cs1 
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N12   , Fs0 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		N12   , An0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_3_044
@ 049   ----------------------------------------
	.byte		N12   , Cs1 , v080
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 050   ----------------------------------------
	.byte		        Fs0 
	.byte	W06
	.byte		        En0 
	.byte	W06
	.byte		N12   , Fs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 051   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
@ 052   ----------------------------------------
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 053   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_3_018
@ 055   ----------------------------------------
	.byte		N12   , En1 , v080
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
@ 056   ----------------------------------------
	.byte		N24   , Fs1 
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W24
	.byte		N12   
	.byte	W48
	.byte		N24   
	.byte	W24
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_3_026
@ 061   ----------------------------------------
	.byte		N12   , Fs0 , v080
	.byte	W12
	.byte		N12   
	.byte	W30
	.byte		N06   , En0 
	.byte	W06
	.byte		N12   , An0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 062   ----------------------------------------
	.byte		N12   , Fs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W24
	.byte		N06   , En1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
@ 063   ----------------------------------------
	.byte		N12   , Fs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , An0 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
@ 064   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W36
@ 065   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		N12   
	.byte	W30
	.byte		N06   , An0 
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
@ 066   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N18   , Cs1 
	.byte	W18
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W36
@ 067   ----------------------------------------
mus_foxy_lady_3_067:
	.byte		N12   , Fs0 , v080
	.byte	W12
	.byte		N12   
	.byte	W30
	.byte		N06   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 
	.byte	W24
	.byte		N03   , Cn1 
	.byte	W03
	.byte		N09   , Cs1 
	.byte	W09
	.byte	PEND
@ 068   ----------------------------------------
	.byte		N12   , Fs0 
	.byte	W12
	.byte		N12   
	.byte	W30
	.byte		N06   , En1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   
	.byte	W30
	.byte		N06   , An0 
	.byte	W06
@ 069   ----------------------------------------
	.byte		N12   , Fs0 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Bn0 
	.byte	W24
	.byte		N03   , Cn1 
	.byte	W03
	.byte		N09   , Cs1 
	.byte	W09
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_3_006
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_3_067
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_3_006
@ 073   ----------------------------------------
	.byte		N12   , Fs0 , v080
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N18   
	.byte	W18
	.byte		N06   , En0 
	.byte	W06
	.byte		N12   , An0 
	.byte	W12
	.byte		N24   , Bn0 
	.byte	W24
	.byte		N03   , Cn1 
	.byte	W03
	.byte		N09   , Cs1 
	.byte	W09
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_3_002
@ 075   ----------------------------------------
	.byte		N06   , Fs0 , v080
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        Fs0 
	.byte	W06
	.byte		N12   , Bn0 
	.byte	W60
@ 076   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.10) ****************@

mus_foxy_lady_4:
	.byte		VOL   , 127*mus_foxy_lady_mvl/mxv
	.byte	KEYSH , mus_foxy_lady_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		        0
	.byte	W96
@ 001   ----------------------------------------
	.byte		N24   , As1 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N12   
	.byte	W12
	.byte		N06   , Bn0 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N24   , Dn1 
	.byte	W24
@ 002   ----------------------------------------
mus_foxy_lady_4_002:
	.byte		N12   , Bn0 , v080
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_foxy_lady_4_003:
	.byte		N12   , Bn0 , v080
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N03   , Cn2 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Fn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 005   ----------------------------------------
mus_foxy_lady_4_005:
	.byte		N12   , Bn0 , v080
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Bn0 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Bn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W09
	.byte		        An1 
	.byte	W06
	.byte		        Dn1 
	.byte	W03
	.byte		N06   , Cs2 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 007   ----------------------------------------
mus_foxy_lady_4_007:
	.byte		N12   , Bn0 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N03   , Cn2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		        Bn1 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W03
	.byte		        Cs2 
	.byte	W03
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 009   ----------------------------------------
mus_foxy_lady_4_009:
	.byte		N12   , Bn0 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W15
	.byte		N03   , Cn2 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Bn1 
	.byte	W03
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        En2 
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        Dn1 
	.byte		N03   , Gs2 
	.byte	W03
	.byte		        Dn1 
	.byte	W03
	.byte		N03   
	.byte		N03   , Gn2 
	.byte	W03
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 011   ----------------------------------------
mus_foxy_lady_4_011:
	.byte		N12   , Bn0 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W15
	.byte		N03   , Cn2 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W06
	.byte		        Bn1 
	.byte	W03
	.byte		N03   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        An1 
	.byte	W03
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 013   ----------------------------------------
mus_foxy_lady_4_013:
	.byte		N12   , Bn0 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N03   , Bn0 
	.byte		N03   , Cn2 
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Cn2 
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Cn2 
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Cn2 
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Cn2 
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Bn1 
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Bn1 
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Bn1 
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Bn1 
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , An1 
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , An1 
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , An1 
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fn1 
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fn1 
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Dn1 
	.byte		N03   , Cs2 
	.byte		N03   , An2 
	.byte		N03   , Bn2 
	.byte	W03
	.byte	PEND
@ 014   ----------------------------------------
mus_foxy_lady_4_014:
	.byte		N12   , Dn1 , v080
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_014
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_014
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_014
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_014
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_014
@ 020   ----------------------------------------
mus_foxy_lady_4_020:
	.byte		N96   , Cs2 , v080
	.byte		N96   , En2 
	.byte		N96   , Gn2 
	.byte		N96   , Gs2 
	.byte		N96   , An2 
	.byte	W96
	.byte	PEND
@ 021   ----------------------------------------
mus_foxy_lady_4_021:
	.byte	W48
	.byte		N03   , Dn1 , v080
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Gn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Fn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_005
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_007
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_011
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_013
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_014
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_014
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_014
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_014
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_014
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_014
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_020
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_021
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_003
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_005
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_007
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_009
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_014
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_014
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_014
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_014
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_014
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_014
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_020
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W24
	.byte		N24   , As1 , v080
	.byte	W24
	.byte		N24   
	.byte	W24
	.byte		N24   
	.byte	W24
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_003
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_005
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_007
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_009
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_003
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_005
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_007
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_002
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_foxy_lady_4_009
@ 076   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_foxy_lady:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_foxy_lady_pri	@ Priority
	.byte	mus_foxy_lady_rev	@ Reverb.

	.word	mus_foxy_lady_grp

	.word	mus_foxy_lady_1
	.word	mus_foxy_lady_2
	.word	mus_foxy_lady_3
	.word	mus_foxy_lady_4

	.end
