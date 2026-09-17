	.include "MPlayDef.s"

	.equ	mus_sacred_grove_grp, voicegroup_brothers
	.equ	mus_sacred_grove_pri, 0
	.equ	mus_sacred_grove_rev, reverb_set+18
	.equ	mus_sacred_grove_mvl, 90
	.equ	mus_sacred_grove_key, 0
	.equ	mus_sacred_grove_tbs, 1
	.equ	mus_sacred_grove_exg, 0
	.equ	mus_sacred_grove_cmp, 1

	.section .rodata
	.global	mus_sacred_grove
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_sacred_grove_1:
	.byte	KEYSH , mus_sacred_grove_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 120*mus_sacred_grove_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 92*mus_sacred_grove_mvl/mxv
	.byte		PAN   , c_v-10
	.byte		TIE   , An2 , v056
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 , v056
	.byte	W12
	.byte		        Fn3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 002   ----------------------------------------
mus_sacred_grove_1_002:
	.byte		N12   , En3 , v052
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
	.byte		EOT   , An2 
@ 003   ----------------------------------------
	.byte		TIE   , En2 , v060
	.byte		N12   , Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 , v060
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 004   ----------------------------------------
mus_sacred_grove_1_004:
	.byte		N12   , Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
	.byte		EOT   , En2 
@ 005   ----------------------------------------
	.byte		TIE   , An2 , v060
	.byte		N12   , En3 , v056
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Cn4 , v060
	.byte	W12
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_1_002
	.byte		EOT   , An2 
@ 007   ----------------------------------------
mus_sacred_grove_1_007:
	.byte		TIE   , En2 , v056
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_sacred_grove_1_008:
	.byte		N12   , Bn2 , v060
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
	.byte		EOT   , En2 
@ 009   ----------------------------------------
	.byte		TIE   , An2 , v068
	.byte		N12   , En3 , v060
	.byte	W12
	.byte		        Fn3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 , v048
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_1_002
	.byte		EOT   , An2 
@ 011   ----------------------------------------
	.byte		TIE   , En2 , v056
	.byte		N12   , Bn2 , v052
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 , v064
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 , v060
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		EOT   , En2 
@ 013   ----------------------------------------
	.byte		TIE   , An2 
	.byte		N12   , En3 , v056
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 , v064
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        En3 , v052
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Cn4 , v060
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 , v064
	.byte	W12
	.byte		EOT   , An2 
@ 015   ----------------------------------------
	.byte		TIE   , En2 , v056
	.byte		N12   , Bn2 , v052
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 , v060
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		EOT   , En2 
@ 017   ----------------------------------------
	.byte		TIE   , Fn2 , v060
	.byte		N12   , Cn3 , v056
	.byte	W12
	.byte		        Dn3 , v060
	.byte	W12
	.byte		        Fn3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Dn3 , v064
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 018   ----------------------------------------
	.byte		        Bn2 , v060
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 , v064
	.byte	W12
	.byte		EOT   , Fn2 
@ 019   ----------------------------------------
	.byte		TIE   , Fn2 , v060
	.byte		N12   , Cn3 , v052
	.byte	W12
	.byte		        Dn3 , v064
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Dn3 , v064
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 , v064
	.byte	W12
	.byte		        Bn2 , v060
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 , v060
	.byte	W12
	.byte		EOT   , Fn2 
@ 021   ----------------------------------------
	.byte		TIE   , Fn2 , v064
	.byte		N12   , Cn3 , v052
	.byte	W12
	.byte		        Dn3 , v060
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 , v068
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Dn3 , v060
	.byte	W12
	.byte		        Fn3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 022   ----------------------------------------
mus_sacred_grove_1_022:
	.byte		N12   , Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
	.byte		EOT   , Fn2 
@ 023   ----------------------------------------
	.byte		TIE   , Fn2 , v060
	.byte		N12   , Cn3 , v056
	.byte	W12
	.byte		        Dn3 , v060
	.byte	W12
	.byte		        Fn3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 , v052
	.byte	W12
	.byte		        Dn3 , v060
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
@ 024   ----------------------------------------
	.byte		        Cn3 , v052
	.byte	W12
	.byte		        En3 , v060
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 , v064
	.byte	W12
	.byte		        Cn3 , v048
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		EOT   , Fn2 
@ 025   ----------------------------------------
	.byte		TIE   , En2 , v060
	.byte		N12   , Bn2 , v056
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 026   ----------------------------------------
	.byte		        En3 , v052
	.byte	W12
	.byte		        Gs3 , v064
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn3 , v056
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		EOT   , En2 
@ 027   ----------------------------------------
	.byte		N06   , Dn2 
	.byte		TIE   , An2 , v060
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v064
	.byte		N06   , En2 
	.byte		N12   , An3 , v068
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 028   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		EOT   , An2 
@ 029   ----------------------------------------
	.byte		N06   , Bn1 , v056
	.byte		TIE   , En2 , v060
	.byte		N12   , Bn2 , v052
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 030   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , En2 
@ 031   ----------------------------------------
	.byte		N06   , Dn2 
	.byte		TIE   , An2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
@ 032   ----------------------------------------
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		EOT   , An2 
@ 033   ----------------------------------------
	.byte		N06   , Bn1 , v056
	.byte		TIE   , En2 , v060
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v068
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 034   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , En2 
@ 035   ----------------------------------------
	.byte		N06   , Dn2 
	.byte		TIE   , An2 
	.byte		N12   , En3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 036   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		EOT   , An2 
@ 037   ----------------------------------------
	.byte		N06   , Bn1 
	.byte		TIE   , En2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 038   ----------------------------------------
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , En2 
@ 039   ----------------------------------------
	.byte		N06   , Dn2 
	.byte		TIE   , An2 , v064
	.byte		N12   , En3 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v060
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , An3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 040   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		EOT   , An2 
@ 041   ----------------------------------------
	.byte		N06   , Bn1 
	.byte		TIE   , En2 , v056
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 042   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Cn2 , v056
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , En2 
@ 043   ----------------------------------------
	.byte		N06   , Dn2 
	.byte		N12   , Fn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 044   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 045   ----------------------------------------
	.byte		        Bn1 , v056
	.byte		TIE   , Fn2 , v060
	.byte		N12   , Cn3 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Dn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Dn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 046   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v068
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , Fn2 
@ 047   ----------------------------------------
	.byte		N06   , Dn2 
	.byte		N12   , Fn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 048   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
@ 049   ----------------------------------------
	.byte		        Bn1 , v056
	.byte		TIE   , Fn2 , v060
	.byte		N12   , Cn3 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 050   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Bn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , Fn2 
@ 051   ----------------------------------------
	.byte		N18   , En2 
	.byte		N06   , Fs2 , v064
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , En4 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
@ 052   ----------------------------------------
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Gs3 
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn3 , v064
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 , v060
	.byte		N06   , Fs2 
	.byte		N12   , En4 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn3 , v056
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Gs3 , v056
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Gn2 
	.byte	W06
@ 053   ----------------------------------------
	.byte		        Dn2 
	.byte		TIE   , An2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
@ 054   ----------------------------------------
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		EOT   , An2 
@ 055   ----------------------------------------
	.byte		N06   , Bn1 , v056
	.byte		TIE   , En2 , v060
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
@ 056   ----------------------------------------
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v060
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , En2 
@ 057   ----------------------------------------
	.byte		N06   , Dn2 
	.byte		TIE   , An2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 058   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v068
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		EOT   , An2 
@ 059   ----------------------------------------
	.byte		N06   , Bn1 , v056
	.byte		TIE   , En2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 , v056
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v064
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 060   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , En2 
@ 061   ----------------------------------------
	.byte		N06   , Dn2 
	.byte		TIE   , An2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v060
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v064
	.byte		N06   , En2 
	.byte		N12   , An3 
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 062   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v068
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		EOT   , An2 
@ 063   ----------------------------------------
	.byte		N06   , Bn1 
	.byte		TIE   , En2 , v056
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 064   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v068
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , En2 
@ 065   ----------------------------------------
	.byte		N06   , Dn2 , v064
	.byte		TIE   , An2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
@ 066   ----------------------------------------
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , Cn4 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		EOT   , An2 
@ 067   ----------------------------------------
	.byte		N06   , Bn1 
	.byte		TIE   , En2 , v056
	.byte		N12   , Bn2 , v052
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 068   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , En2 
@ 069   ----------------------------------------
	.byte		N06   , Dn2 , v064
	.byte		N12   , Fn2 , v060
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , Dn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 070   ----------------------------------------
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 071   ----------------------------------------
	.byte		        Bn1 
	.byte		TIE   , Fn2 
	.byte		N12   , Cn3 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , An3 , v068
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Dn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 072   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , Fn2 
@ 073   ----------------------------------------
	.byte		N06   , Dn2 , v064
	.byte		N12   , Fn2 , v060
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , An3 , v068
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 074   ----------------------------------------
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 075   ----------------------------------------
	.byte		        Bn1 
	.byte		TIE   , Fn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , An3 , v068
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 076   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Bn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , Fn2 
@ 077   ----------------------------------------
	.byte		N18   , En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 , v056
	.byte		N06   , Fs2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn3 
	.byte	W06
	.byte		N06   , Fn2 , v064
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 , v060
	.byte		N06   , Fs2 
	.byte		N12   , En4 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
@ 078   ----------------------------------------
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , En3 , v048
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Gs3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn3 , v064
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 , v060
	.byte		N06   , Fs2 
	.byte		N12   , En4 , v068
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn3 , v056
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Gs3 , v056
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 , v064
	.byte		N06   , Fs2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 , v056
	.byte		N06   , Fs2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
@ 079   ----------------------------------------
	.byte	TEMPO , 120*mus_sacred_grove_tbs/2
	.byte		TIE   , An2 , v064
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 , v056
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 080   ----------------------------------------
	.byte		        En3 , v056
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 , v064
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		EOT   , An2 
@ 081   ----------------------------------------
	.byte		TIE   , En2 , v056
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 , v060
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 082   ----------------------------------------
	.byte		        Bn2 , v060
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		EOT   , En2 
@ 083   ----------------------------------------
	.byte		TIE   , An2 
	.byte		N12   , En3 , v060
	.byte	W12
	.byte		        Fn3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 084   ----------------------------------------
	.byte		        En3 , v056
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		EOT   , An2 
@ 085   ----------------------------------------
	.byte		TIE   , En2 , v060
	.byte		N12   , Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 086   ----------------------------------------
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 , v060
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		EOT   , En2 
@ 087   ----------------------------------------
	.byte		TIE   , An2 , v060
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Cn4 , v060
	.byte	W12
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_1_002
	.byte		EOT   , An2 
@ 089   ----------------------------------------
	.byte		TIE   , En2 , v056
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 , v064
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_1_022
	.byte		EOT   , En2 
@ 091   ----------------------------------------
	.byte		TIE   , An2 , v064
	.byte		N12   , En3 , v056
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 092   ----------------------------------------
	.byte		        En3 , v052
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 , v068
	.byte	W12
	.byte		        Cn4 , v064
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		        Fn3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		EOT   , An2 
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_1_007
@ 094   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_1_004
	.byte		EOT   , En2 
@ 095   ----------------------------------------
mus_sacred_grove_1_095:
	.byte		TIE   , Fn2 , v060
	.byte		N12   , Cn3 , v056
	.byte	W12
	.byte		        Dn3 , v060
	.byte	W12
	.byte		        Fn3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Dn3 , v064
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte	PEND
@ 096   ----------------------------------------
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		        En3 , v060
	.byte	W12
	.byte		        Gn3 , v064
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v064
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		EOT   , Fn2 
@ 097   ----------------------------------------
	.byte		TIE   , Fn2 , v060
	.byte		N12   , Cn3 , v056
	.byte	W12
	.byte		        Dn3 , v064
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn2 , v060
	.byte	W12
	.byte		        Dn3 , v064
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 098   ----------------------------------------
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 , v068
	.byte	W12
	.byte		        Bn2 , v056
	.byte	W12
	.byte		        Cn3 , v060
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 , v060
	.byte	W12
	.byte		EOT   , Fn2 
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_1_095
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_1_008
	.byte		EOT   , Fn2 
@ 101   ----------------------------------------
	.byte		TIE   , Fn2 , v060
	.byte		N12   , Cn3 , v052
	.byte	W12
	.byte		        Dn3 , v060
	.byte	W12
	.byte		        Fn3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 , v052
	.byte	W12
	.byte		        Dn3 , v060
	.byte	W12
	.byte		        Fn3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 102   ----------------------------------------
	.byte		        Cn3 , v056
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn3 , v052
	.byte	W12
	.byte		        En3 , v060
	.byte	W12
	.byte		        Gn3 , v064
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		EOT   , Fn2 
@ 103   ----------------------------------------
	.byte		TIE   , En2 , v060
	.byte		N12   , Bn2 , v056
	.byte	W12
	.byte		        En3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 , v060
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 104   ----------------------------------------
	.byte		        En3 , v048
	.byte	W12
	.byte		        Gs3 , v060
	.byte	W12
	.byte		        Bn3 , v064
	.byte	W12
	.byte		        En4 , v068
	.byte	W12
	.byte		        Bn3 , v056
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		EOT   , En2 
@ 105   ----------------------------------------
	.byte		N06   , Dn2 
	.byte		TIE   , An2 , v064
	.byte		N12   , En3 
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 106   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		EOT   , An2 
@ 107   ----------------------------------------
	.byte		N06   , Bn1 , v056
	.byte		TIE   , En2 , v060
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v060
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 108   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , En2 
@ 109   ----------------------------------------
	.byte		N06   , Dn2 
	.byte		TIE   , An2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 110   ----------------------------------------
	.byte		        Dn2 , v064
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		EOT   , An2 
@ 111   ----------------------------------------
	.byte		N06   , Bn1 
	.byte		TIE   , En2 , v056
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 112   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , En2 
@ 113   ----------------------------------------
	.byte		N06   , Dn2 , v060
	.byte		TIE   , An2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 114   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		EOT   , An2 
@ 115   ----------------------------------------
	.byte		N06   , Bn1 , v056
	.byte		TIE   , En2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 116   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , En2 
@ 117   ----------------------------------------
	.byte		N06   , Dn2 
	.byte		TIE   , An2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 118   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v068
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		EOT   , An2 
@ 119   ----------------------------------------
	.byte		N06   , Bn1 , v056
	.byte		TIE   , En2 , v060
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
@ 120   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , En2 
@ 121   ----------------------------------------
	.byte		N06   , Dn2 , v060
	.byte		N12   , Fn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Dn3 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v056
	.byte		N06   , Fn2 
	.byte	W06
@ 122   ----------------------------------------
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 123   ----------------------------------------
	.byte		        Bn1 
	.byte		TIE   , Fn2 
	.byte		N12   , Cn3 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 124   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , Fn2 
@ 125   ----------------------------------------
	.byte		N06   , Dn2 
	.byte		N12   , Fn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Dn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
@ 126   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 127   ----------------------------------------
	.byte		        Bn1 
	.byte		TIE   , Fn2 
	.byte		N12   , Cn3 , v056
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Dn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Dn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 128   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , Fn2 
@ 129   ----------------------------------------
	.byte		N18   , En2 , v060
	.byte		N06   , Fs2 , v064
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn3 , v064
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 , v060
	.byte		N06   , Fs2 
	.byte		N12   , En4 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
@ 130   ----------------------------------------
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , En3 , v048
	.byte	W06
	.byte		N06   , Fn2 , v064
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 , v060
	.byte		N06   , Fs2 
	.byte		N12   , Gs3 
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 , v056
	.byte		N06   , Fs2 
	.byte		N12   , En4 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn3 , v056
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Gs3 , v056
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Fn2 , v064
	.byte		N06   , Gn2 
	.byte	W06
@ 131   ----------------------------------------
	.byte		        Dn2 , v056
	.byte		TIE   , An2 , v064
	.byte		N12   , En3 
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 132   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		EOT   , An2 
@ 133   ----------------------------------------
	.byte		N06   , Bn1 , v056
	.byte		TIE   , En2 , v060
	.byte		N12   , Bn2 , v052
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
@ 134   ----------------------------------------
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v068
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , En2 
@ 135   ----------------------------------------
	.byte		N06   , Dn2 
	.byte		TIE   , An2 , v064
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v056
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v068
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 136   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 , v064
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		EOT   , An2 
@ 137   ----------------------------------------
	.byte		N06   , Bn1 
	.byte		TIE   , En2 , v056
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 138   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , En2 
@ 139   ----------------------------------------
	.byte		N06   , Dn2 
	.byte		TIE   , An2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , En3 
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 140   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 , v056
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		EOT   , An2 
@ 141   ----------------------------------------
	.byte		N06   , Bn1 , v056
	.byte		TIE   , En2 , v060
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 142   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , En2 
@ 143   ----------------------------------------
	.byte		N06   , Dn2 , v064
	.byte		TIE   , An2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v068
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 144   ----------------------------------------
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v060
	.byte		N06   , En2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn4 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		EOT   , An2 
@ 145   ----------------------------------------
	.byte		N06   , Bn1 
	.byte		TIE   , En2 , v056
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 146   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , En2 
@ 147   ----------------------------------------
	.byte		N06   , Dn2 , v064
	.byte		N12   , Fn2 , v060
	.byte		N12   , Cn3 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Dn3 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Dn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 148   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v064
	.byte		N06   , En2 
	.byte		N12   , Cn3 , v060
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 149   ----------------------------------------
	.byte		        Bn1 , v056
	.byte		TIE   , Fn2 , v060
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Fn3 , v060
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Dn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 150   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , Fn2 
@ 151   ----------------------------------------
	.byte		N06   , Dn2 
	.byte		N12   , Fn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 , v056
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Dn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
@ 152   ----------------------------------------
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn3 
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Cn3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Ds2 , v060
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte		N06   , En2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Ds2 
	.byte		N06   , Fn2 
	.byte	W06
@ 153   ----------------------------------------
	.byte		        Bn1 , v056
	.byte		TIE   , Fn2 , v060
	.byte		N12   , Cn3 , v056
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , An3 , v068
	.byte	W06
	.byte		N06   , Cn2 , v064
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Dn3 
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Fn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v060
	.byte		N06   , Cn2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
@ 154   ----------------------------------------
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Bn3 , v068
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Cn3 , v052
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte		N06   , Cn2 
	.byte		N12   , Gn3 , v064
	.byte	W06
	.byte		N06   , Cn2 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 , v056
	.byte		N06   , Cn2 
	.byte		N12   , Bn3 , v064
	.byte	W06
	.byte		N06   , Cn2 , v060
	.byte		N06   , Cs2 
	.byte	W06
	.byte		EOT   , Fn2 
@ 155   ----------------------------------------
	.byte		N18   , En2 
	.byte		N06   , Fs2 , v064
	.byte		N12   , Bn2 , v056
	.byte	W06
	.byte		N06   , Fn2 , v064
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 , v060
	.byte		N06   , Fs2 
	.byte		N12   , En3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn3 
	.byte	W06
	.byte		N06   , Fn2 , v064
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 , v060
	.byte		N06   , Fs2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , An3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn3 
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 , v056
	.byte		N06   , Fs2 
	.byte		N12   , En4 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
@ 156   ----------------------------------------
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , En3 , v052
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Gs3 , v064
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 , v060
	.byte		N06   , Fs2 
	.byte		N12   , Bn3 , v064
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 , v056
	.byte		N06   , Fs2 
	.byte		N12   , En4 , v068
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Bn3 , v056
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , Gs3 , v056
	.byte	W06
	.byte		N06   , Fn2 , v060
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte		N06   , Fs2 
	.byte		N12   , En3 , v056
	.byte	W06
	.byte		N06   , Fn2 , v064
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 , v060
	.byte		N06   , Fs2 
	.byte		N12   , Bn2 
	.byte	W06
	.byte		N06   , Fn2 
	.byte		N06   , Gn2 
	.byte	W06
@ 157   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_sacred_grove_2:
	.byte	KEYSH , mus_sacred_grove_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 92*mus_sacred_grove_mvl/mxv
	.byte		PAN   , c_v+16
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
mus_sacred_grove_2_008:
	.byte		N06   , Fn4 , v064
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N06   , Fn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N24   , Bn4 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
mus_sacred_grove_2_009:
	.byte		N06   , Fn4 , v064
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N06   , Bn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
mus_sacred_grove_2_010:
	.byte		N12   , Bn4 , v064
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N60   , En4 
	.byte	W60
	.byte		N06   , Dn4 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
mus_sacred_grove_2_011:
	.byte		N12   , En4 , v064
	.byte	W12
	.byte		N06   , Gn4 , v068
	.byte	W12
	.byte		N60   , En4 , v064
	.byte	W72
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_009
@ 014   ----------------------------------------
mus_sacred_grove_2_014:
	.byte		N12   , En4 , v064
	.byte	W12
	.byte		N06   , Bn4 
	.byte	W12
	.byte		N60   , Gn4 
	.byte	W60
	.byte		N06   , Bn4 , v068
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_sacred_grove_2_015:
	.byte		N12   , Gn4 , v064
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N60   , En4 
	.byte	W72
	.byte	PEND
@ 016   ----------------------------------------
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Gn3 , v068
	.byte	W12
	.byte		N06   , An3 , v064
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
@ 017   ----------------------------------------
mus_sacred_grove_2_017:
	.byte		N12   , Cn4 , v064
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N60   , En3 
	.byte	W72
	.byte	PEND
@ 018   ----------------------------------------
	.byte		N12   , Dn3 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , En3 , v068
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N24   , Fn3 , v064
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , Gn3 , v068
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N06   , An3 
	.byte		N06   , Cn5 , v072
	.byte	W12
	.byte		N24   , Bn3 , v068
	.byte		N24   , Dn4 , v064
	.byte	W24
@ 019   ----------------------------------------
	.byte		N12   , Cn4 , v068
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte		N06   , Fn4 , v064
	.byte	W12
	.byte		N60   , En4 
	.byte		N60   , Gn4 
	.byte	W72
@ 020   ----------------------------------------
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Gn3 , v068
	.byte	W12
	.byte		N06   , An3 , v072
	.byte	W12
	.byte		N24   , Bn3 , v064
	.byte	W24
@ 021   ----------------------------------------
mus_sacred_grove_2_021:
	.byte		N12   , Cn4 , v068
	.byte	W12
	.byte		N06   , Bn3 , v064
	.byte	W12
	.byte		N60   , En3 
	.byte	W72
	.byte	PEND
@ 022   ----------------------------------------
mus_sacred_grove_2_022:
	.byte		N12   , Dn3 , v064
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , Cn3 
	.byte		N06   , En4 
	.byte	W12
	.byte		N12   , Fn3 
	.byte		N12   , An4 
	.byte	W12
	.byte		N06   , En3 
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N12   , Gn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N06   , Fn3 
	.byte		N06   , An4 
	.byte	W12
	.byte		N12   , An3 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N06   , Gn3 
	.byte		N06   , Bn4 
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
mus_sacred_grove_2_023:
	.byte		N12   , Bn3 , v064
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   , An3 
	.byte		N06   , Cn5 
	.byte	W12
	.byte		N12   , Cn4 
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Bn3 
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte		N06   , En4 
	.byte	W12
	.byte		N06   
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Cn5 , v068
	.byte	W12
	.byte		        Dn4 , v064
	.byte		N06   , An4 
	.byte	W06
	.byte	PEND
@ 024   ----------------------------------------
mus_sacred_grove_2_024:
	.byte		TIE   , En4 , v064
	.byte		TIE   , Bn4 , v068
	.byte	W96
	.byte	PEND
@ 025   ----------------------------------------
	.byte	W48
	.byte		EOT   , En4 
	.byte		        Bn4 
	.byte	W48
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
	.byte	PATT
	 .word	mus_sacred_grove_2_008
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_009
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_010
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_011
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_008
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_009
@ 040   ----------------------------------------
mus_sacred_grove_2_040:
	.byte		N12   , En4 , v064
	.byte	W12
	.byte		N06   , Bn4 
	.byte	W12
	.byte		N60   , Gn4 
	.byte	W60
	.byte		N06   , Bn4 , v072
	.byte	W12
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_015
@ 042   ----------------------------------------
	.byte		N12   , Dn3 , v064
	.byte	W12
	.byte		N06   , En3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Gn3 , v068
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		N24   , Bn3 , v064
	.byte	W24
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_021
@ 044   ----------------------------------------
mus_sacred_grove_2_044:
	.byte		N12   , Dn3 , v064
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , En3 , v068
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N24   , Fn3 , v064
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , Gn3 , v068
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N06   , An3 
	.byte		N06   , Cn5 
	.byte	W12
	.byte		N24   , Bn3 , v064
	.byte		N24   , Dn4 
	.byte	W24
	.byte	PEND
@ 045   ----------------------------------------
	.byte		N12   , Cn4 
	.byte		N12   , En4 , v068
	.byte	W12
	.byte		N06   , Dn4 
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N60   , En4 , v064
	.byte		N60   , Gn4 
	.byte	W72
@ 046   ----------------------------------------
mus_sacred_grove_2_046:
	.byte		N12   , Dn3 , v064
	.byte	W12
	.byte		N06   , En3 , v068
	.byte	W12
	.byte		N24   , Fn3 , v064
	.byte	W24
	.byte		N12   , Gn3 , v068
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		N24   , Bn3 , v064
	.byte	W24
	.byte	PEND
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_017
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_022
@ 049   ----------------------------------------
	.byte		N12   , Bn3 , v064
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   , An3 
	.byte		N06   , Cn5 
	.byte	W12
	.byte		N12   , Cn4 
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Bn3 
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte		N06   , En4 
	.byte	W12
	.byte		N06   
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        Dn4 
	.byte		N06   , An4 
	.byte	W06
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_024
@ 051   ----------------------------------------
	.byte	W48
	.byte		EOT   , En4 
	.byte		        Bn4 
	.byte	W48
@ 052   ----------------------------------------
mus_sacred_grove_2_052:
	.byte		N06   , Fn3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N06   , Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte	PEND
@ 053   ----------------------------------------
mus_sacred_grove_2_053:
	.byte		N06   , Fn3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
@ 054   ----------------------------------------
mus_sacred_grove_2_054:
	.byte		N12   , Bn3 , v064
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N60   , En3 
	.byte	W60
	.byte		N06   , Dn3 
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
mus_sacred_grove_2_055:
	.byte		N12   , En3 , v064
	.byte	W12
	.byte		N06   , Gn3 , v068
	.byte	W12
	.byte		N60   , En3 , v064
	.byte	W72
	.byte	PEND
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_052
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_053
@ 058   ----------------------------------------
mus_sacred_grove_2_058:
	.byte		N12   , En4 , v064
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N60   , Gn3 
	.byte	W60
	.byte		N06   , Bn3 , v068
	.byte	W12
	.byte	PEND
@ 059   ----------------------------------------
mus_sacred_grove_2_059:
	.byte		N12   , Gn3 , v064
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W12
	.byte		N60   , En3 
	.byte	W72
	.byte	PEND
@ 060   ----------------------------------------
mus_sacred_grove_2_060:
	.byte		N06   , Fn3 , v064
	.byte		N06   , Fn4 
	.byte	W12
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N06   , Fn3 
	.byte		N06   , Fn4 
	.byte	W12
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte		N24   , Bn4 
	.byte	W24
	.byte	PEND
@ 061   ----------------------------------------
mus_sacred_grove_2_061:
	.byte		N06   , Fn3 , v064
	.byte		N06   , Fn4 
	.byte	W12
	.byte		        An3 
	.byte		N06   , An4 
	.byte	W12
	.byte		        Bn3 
	.byte		N06   , Bn4 
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 
	.byte	W12
	.byte		        Cn4 
	.byte		N06   , Cn5 
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
mus_sacred_grove_2_062:
	.byte		N12   , Bn3 , v064
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N60   , En3 
	.byte		N60   , En4 
	.byte	W60
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W12
	.byte	PEND
@ 063   ----------------------------------------
mus_sacred_grove_2_063:
	.byte		N12   , En3 , v064
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Gn3 , v068
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N60   , En3 , v064
	.byte		N60   , En4 
	.byte	W72
	.byte	PEND
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_060
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_061
@ 066   ----------------------------------------
	.byte		N12   , En4 , v064
	.byte	W12
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 
	.byte	W12
	.byte		N60   , Gn3 
	.byte		N60   , Gn4 
	.byte	W60
	.byte		N06   , Bn3 , v068
	.byte		N06   , Bn4 , v072
	.byte	W12
@ 067   ----------------------------------------
mus_sacred_grove_2_067:
	.byte		N12   , Gn3 , v064
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Dn3 
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N60   , En3 
	.byte		N60   , En4 
	.byte	W72
	.byte	PEND
@ 068   ----------------------------------------
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , En3 , v068
	.byte	W12
	.byte		N24   , Fn3 , v064
	.byte	W24
	.byte		N12   , Gn3 , v072
	.byte	W12
	.byte		N06   , An3 , v068
	.byte	W12
	.byte		N24   , Bn3 , v064
	.byte	W24
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_017
@ 070   ----------------------------------------
	.byte		N12   , Dn3 , v064
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , En3 , v068
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N24   , Fn3 , v064
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , Gn3 , v068
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N06   , An3 , v072
	.byte		N06   , Cn5 
	.byte	W12
	.byte		N24   , Bn3 , v064
	.byte		N24   , Dn4 
	.byte	W24
@ 071   ----------------------------------------
mus_sacred_grove_2_071:
	.byte		N12   , Cn4 , v068
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N60   , En4 , v064
	.byte		N60   , Gn4 
	.byte	W72
	.byte	PEND
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_046
@ 073   ----------------------------------------
	.byte		N12   , Cn4 , v068
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N60   , En3 , v064
	.byte	W72
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_022
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_023
@ 076   ----------------------------------------
mus_sacred_grove_2_076:
	.byte		TIE   , En4 , v068
	.byte		TIE   , Bn4 
	.byte	W96
	.byte	PEND
@ 077   ----------------------------------------
	.byte	W48
	.byte		EOT   , En4 
	.byte		        Bn4 
	.byte	W48
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
	.byte	PATT
	 .word	mus_sacred_grove_2_008
@ 087   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_009
@ 088   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_010
@ 089   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_011
@ 090   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_008
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_009
@ 092   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_014
@ 093   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_015
@ 094   ----------------------------------------
	.byte		N12   , Dn3 , v064
	.byte	W12
	.byte		N06   , En3 , v068
	.byte	W12
	.byte		N24   , Fn3 , v064
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   , An3 , v068
	.byte	W12
	.byte		N24   , Bn3 , v064
	.byte	W24
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_017
@ 096   ----------------------------------------
	.byte		N12   , Dn3 , v064
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , En3 , v068
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N24   , Fn3 , v064
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , Gn3 
	.byte		N12   , Bn4 , v068
	.byte	W12
	.byte		N06   , An3 
	.byte		N06   , Cn5 
	.byte	W12
	.byte		N24   , Bn3 , v064
	.byte		N24   , Dn4 
	.byte	W24
@ 097   ----------------------------------------
	.byte		N12   , Cn4 
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Dn4 , v068
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N60   , En4 , v064
	.byte		N60   , Gn4 
	.byte	W72
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_046
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_021
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_022
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_023
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_076
@ 103   ----------------------------------------
	.byte	W48
	.byte		EOT   , En4 
	.byte		        Bn4 
	.byte	W48
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
	.byte	PATT
	 .word	mus_sacred_grove_2_008
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_009
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_010
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_011
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_008
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_009
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_040
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_015
@ 120   ----------------------------------------
	.byte		N12   , Dn3 , v064
	.byte	W12
	.byte		N06   , En3 , v068
	.byte	W12
	.byte		N24   , Fn3 , v064
	.byte	W24
	.byte		N12   , Gn3 , v068
	.byte	W12
	.byte		N06   , An3 , v072
	.byte	W12
	.byte		N24   , Bn3 , v064
	.byte	W24
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_021
@ 122   ----------------------------------------
	.byte		N12   , Dn3 , v064
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , En3 
	.byte		N06   , Gn4 , v068
	.byte	W12
	.byte		N24   , Fn3 , v064
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , Gn3 , v068
	.byte		N12   , Bn4 , v064
	.byte	W12
	.byte		N06   , An3 , v068
	.byte		N06   , Cn5 
	.byte	W12
	.byte		N24   , Bn3 , v064
	.byte		N24   , Dn4 
	.byte	W24
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_071
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_046
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_021
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_022
@ 127   ----------------------------------------
mus_sacred_grove_2_127:
	.byte		N12   , Bn3 , v064
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   , An3 
	.byte		N06   , Cn5 
	.byte	W12
	.byte		N12   , Cn4 
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Bn3 
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte		N06   , En4 
	.byte	W12
	.byte		N06   
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fn4 , v068
	.byte		N06   , Cn5 , v064
	.byte	W12
	.byte		        Dn4 
	.byte		N06   , An4 
	.byte	W06
	.byte	PEND
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_076
@ 129   ----------------------------------------
	.byte	W48
	.byte		EOT   , En4 
	.byte		        Bn4 
	.byte	W48
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_052
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_053
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_054
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_055
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_052
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_053
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_058
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_059
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_060
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_061
@ 140   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_062
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_063
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_060
@ 143   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_061
@ 144   ----------------------------------------
	.byte		N12   , En4 , v064
	.byte	W12
	.byte		N06   , Bn3 
	.byte		N06   , Bn4 
	.byte	W12
	.byte		N60   , Gn3 
	.byte		N60   , Gn4 
	.byte	W60
	.byte		N06   , Bn3 , v068
	.byte		N06   , Bn4 
	.byte	W12
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_067
@ 146   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_046
@ 147   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_021
@ 148   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_044
@ 149   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_071
@ 150   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_046
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_021
@ 152   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_022
@ 153   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_127
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_2_076
@ 155   ----------------------------------------
	.byte	W48
	.byte		EOT   , En4 
	.byte		        Bn4 
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_sacred_grove_3:
	.byte	KEYSH , mus_sacred_grove_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 76*mus_sacred_grove_mvl/mxv
	.byte		PAN   , c_v-18
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
	.byte	W12
	.byte		N06   , Fn4 , v052
	.byte	W12
	.byte		        An3 , v048
	.byte	W12
	.byte		N24   , Bn3 , v052
	.byte	W24
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		        An3 , v052
	.byte	W12
	.byte		N24   , Bn3 , v048
	.byte	W12
@ 009   ----------------------------------------
mus_sacred_grove_3_009:
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Dn4 , v052
	.byte	W24
	.byte		N06   , Bn3 , v048
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		N12   , Bn3 , v052
	.byte	W12
	.byte		N06   , Gn4 , v048
	.byte	W12
	.byte		N60   , En4 
	.byte	W60
@ 011   ----------------------------------------
	.byte		N06   , Dn4 , v052
	.byte	W12
	.byte		N12   , En4 , v048
	.byte	W12
	.byte		N06   , Gn4 , v052
	.byte	W12
	.byte		N60   , En4 , v048
	.byte	W60
@ 012   ----------------------------------------
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N06   , Fn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Bn3 , v052
	.byte	W12
@ 013   ----------------------------------------
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N12   , En4 , v052
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N06   , Bn3 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        Cn4 , v048
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N60   , Gn4 
	.byte	W60
@ 015   ----------------------------------------
	.byte		N06   , Bn3 , v052
	.byte	W12
	.byte		N12   , Gn4 , v048
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N60   , En4 , v052
	.byte	W60
@ 016   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte	W12
	.byte		N06   , En3 , v056
	.byte	W12
	.byte		N24   , Fn3 , v048
	.byte	W24
	.byte		N12   , Gn3 , v052
	.byte	W12
	.byte		N06   , An3 , v056
	.byte	W12
	.byte		N24   , Bn3 , v052
	.byte	W12
@ 017   ----------------------------------------
mus_sacred_grove_3_017:
	.byte	W12
	.byte		N12   , Cn4 , v052
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N60   , En3 , v048
	.byte	W60
	.byte	PEND
@ 018   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		N06   , En3 , v052
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N24   , Fn3 
	.byte		N24   , An3 , v048
	.byte	W24
	.byte		N12   , Gn3 , v056
	.byte		N12   , Bn3 , v052
	.byte	W12
	.byte		N06   , An3 , v056
	.byte		N06   , Cn4 , v052
	.byte	W12
	.byte		N24   , Bn3 , v048
	.byte		N24   , Dn4 
	.byte	W12
@ 019   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn4 , v056
	.byte		N12   , En4 , v052
	.byte	W12
	.byte		N06   , Dn4 , v056
	.byte		N06   , Fn4 , v052
	.byte	W12
	.byte		N60   , En4 
	.byte		N60   , Gn4 
	.byte	W60
@ 020   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte	W12
	.byte		N06   , En3 , v056
	.byte	W12
	.byte		N24   , Fn3 , v048
	.byte	W24
	.byte		N12   , Gn3 , v052
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W12
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_017
@ 022   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		N06   , Cn3 
	.byte		N06   , En4 
	.byte	W12
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , En3 , v052
	.byte		N06   , Gn4 , v048
	.byte	W12
	.byte		N12   , Gn3 
	.byte		N12   , Bn3 , v052
	.byte	W12
	.byte		N06   , Fn3 
	.byte		N06   , An3 , v048
	.byte	W12
	.byte		N12   
	.byte		N12   , Cn4 
	.byte	W12
@ 023   ----------------------------------------
	.byte		N06   , Gn3 , v052
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   , Bn3 , v048
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   , An3 , v052
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , En4 , v048
	.byte	W12
	.byte		N06   , Bn3 , v052
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N12   , Dn4 , v048
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte		N06   , En4 , v052
	.byte	W12
	.byte		        Bn3 , v048
	.byte		N06   , En4 
	.byte	W06
	.byte		        Cn4 , v052
	.byte		N06   , Fn4 
	.byte	W06
@ 024   ----------------------------------------
	.byte	W06
	.byte		        An3 
	.byte		N06   , Dn4 
	.byte	W06
	.byte		TIE   , Bn3 
	.byte		TIE   , En4 
	.byte	W84
@ 025   ----------------------------------------
	.byte	W60
	.byte		EOT   , Bn3 
	.byte		        En4 
	.byte	W36
@ 026   ----------------------------------------
mus_sacred_grove_3_026:
	.byte	W24
	.byte		N24   , Fn2 , v060
	.byte	W48
	.byte		        Bn1 
	.byte	W24
	.byte	PEND
@ 027   ----------------------------------------
mus_sacred_grove_3_027:
	.byte	W24
	.byte		N24   , Dn2 , v060
	.byte	W48
	.byte		        Gs1 
	.byte	W24
	.byte	PEND
@ 028   ----------------------------------------
mus_sacred_grove_3_028:
	.byte	W24
	.byte		N24   , Cn2 , v060
	.byte	W48
	.byte		        Fs2 
	.byte	W24
	.byte	PEND
@ 029   ----------------------------------------
mus_sacred_grove_3_029:
	.byte	W24
	.byte		N24   , An1 , v060
	.byte	W48
	.byte		        Fs2 
	.byte	W24
	.byte	PEND
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_026
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_027
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_028
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_029
@ 034   ----------------------------------------
mus_sacred_grove_3_034:
	.byte	W12
	.byte		N06   , Fn4 , v052
	.byte	W12
	.byte		N24   , Fn2 , v060
	.byte		N06   , An3 , v048
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N24   , Bn1 , v060
	.byte		N06   , An3 , v048
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W12
	.byte	PEND
@ 035   ----------------------------------------
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N24   , Dn2 , v060
	.byte		N06   , An3 , v048
	.byte	W12
	.byte		        Bn3 , v052
	.byte	W12
	.byte		N12   , En4 , v048
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W12
	.byte		        Gs1 , v060
	.byte	W12
	.byte		N06   , Bn3 , v048
	.byte	W12
@ 036   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , Cn2 , v060
	.byte		N06   , Gn4 , v048
	.byte	W12
	.byte		N60   , En4 
	.byte	W36
	.byte		N24   , Fs2 , v060
	.byte	W24
@ 037   ----------------------------------------
	.byte		N06   , Dn4 , v048
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , An1 , v060
	.byte		N06   , Gn4 , v052
	.byte	W12
	.byte		N60   , En4 
	.byte	W36
	.byte		N24   , Fs2 , v060
	.byte	W24
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_034
@ 039   ----------------------------------------
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N24   , Dn2 , v060
	.byte		N06   , An3 , v048
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Dn4 , v052
	.byte	W12
	.byte		        Gs1 , v060
	.byte	W12
	.byte		N06   , Bn3 , v052
	.byte	W12
@ 040   ----------------------------------------
mus_sacred_grove_3_040:
	.byte		N06   , Cn4 , v052
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Cn2 , v060
	.byte		N06   , Bn3 , v048
	.byte	W12
	.byte		N60   , Gn4 
	.byte	W36
	.byte		N24   , Fs2 , v060
	.byte	W24
	.byte	PEND
@ 041   ----------------------------------------
mus_sacred_grove_3_041:
	.byte		N06   , Bn3 , v056
	.byte	W12
	.byte		N12   , Gn4 , v048
	.byte	W12
	.byte		N24   , An1 , v060
	.byte		N06   , Dn4 , v048
	.byte	W12
	.byte		N60   , En4 
	.byte	W36
	.byte		N24   , Fs2 , v060
	.byte	W24
	.byte	PEND
@ 042   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte	W12
	.byte		N24   , Fn2 , v060
	.byte		N06   , En3 , v052
	.byte	W12
	.byte		N24   , Fn3 , v048
	.byte	W24
	.byte		N12   , Gn3 , v056
	.byte	W12
	.byte		N24   , Bn1 , v060
	.byte		N06   , An3 , v056
	.byte	W12
	.byte		N24   , Bn3 , v048
	.byte	W12
@ 043   ----------------------------------------
mus_sacred_grove_3_043:
	.byte	W12
	.byte		N12   , Cn4 , v052
	.byte	W12
	.byte		N24   , Dn2 , v060
	.byte		N06   , Bn3 , v052
	.byte	W12
	.byte		N60   , En3 , v048
	.byte	W36
	.byte		N24   , Gs1 , v060
	.byte	W24
	.byte	PEND
@ 044   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N24   , Cn2 , v060
	.byte		N06   , En3 , v052
	.byte		N06   , Gn4 , v056
	.byte	W12
	.byte		N24   , Fn3 , v048
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Gn3 , v056
	.byte		N12   , Bn3 , v052
	.byte	W12
	.byte		N24   , Fs2 , v060
	.byte		N06   , An3 , v056
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N24   , Bn3 , v052
	.byte		N24   , Dn4 , v048
	.byte	W12
@ 045   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn4 , v052
	.byte		N12   , En4 , v056
	.byte	W12
	.byte		N24   , An1 , v060
	.byte		N06   , Bn3 , v052
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N60   , En3 , v048
	.byte		N60   , Gn4 
	.byte	W36
	.byte		N24   , Fs2 , v060
	.byte	W24
@ 046   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte	W12
	.byte		N24   , Fn2 , v060
	.byte		N06   , En3 , v052
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Bn1 , v060
	.byte		N06   , An3 , v056
	.byte	W12
	.byte		N24   , Bn3 , v052
	.byte	W12
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_043
@ 048   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		N24   , Cn2 , v060
	.byte		N06   , Cn3 , v052
	.byte		N06   , En4 
	.byte	W12
	.byte		N12   , Fn3 , v048
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , En3 , v052
	.byte		N06   , Gn4 , v048
	.byte	W12
	.byte		N12   , Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , Fs2 , v060
	.byte		N06   , Fn3 , v052
	.byte		N06   , An3 
	.byte	W12
	.byte		N12   , An3 , v048
	.byte		N12   , Cn4 
	.byte	W12
@ 049   ----------------------------------------
	.byte		N06   , Gn3 , v052
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   , Bn3 , v048
	.byte		N12   , Dn4 , v052
	.byte	W12
	.byte		N24   , An1 , v060
	.byte		N06   , An3 , v052
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N12   , Cn4 , v048
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Bn3 , v052
	.byte		N06   , Dn4 , v048
	.byte	W12
	.byte		N12   , Dn4 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		N24   , Fs2 , v060
	.byte		N06   , Cn4 , v052
	.byte		N06   , En4 
	.byte	W12
	.byte		        Bn3 , v048
	.byte		N06   , En4 
	.byte	W06
	.byte		        Cn4 , v052
	.byte		N06   , Fn4 
	.byte	W06
@ 050   ----------------------------------------
	.byte	W06
	.byte		        An3 , v048
	.byte		N06   , Dn4 
	.byte	W06
	.byte		TIE   , Bn3 , v056
	.byte		TIE   , En4 , v052
	.byte	W12
	.byte		N24   , En2 , v060
	.byte	W48
	.byte		N24   
	.byte	W24
@ 051   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W36
	.byte		EOT   , Bn3 
	.byte		        En4 
	.byte		N12   , En2 
	.byte	W12
	.byte		N24   
	.byte	W24
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_026
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_027
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_028
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_029
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_026
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_027
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_028
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_029
@ 060   ----------------------------------------
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N24   , Fn2 , v060
	.byte		N06   , An3 , v048
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N24   , Bn1 , v060
	.byte		N06   , An3 , v052
	.byte	W12
	.byte		N24   , Bn3 , v048
	.byte	W12
@ 061   ----------------------------------------
mus_sacred_grove_3_061:
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N24   , Dn2 , v060
	.byte		N06   , An3 , v052
	.byte	W12
	.byte		        Bn3 , v048
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Dn4 , v052
	.byte	W12
	.byte		        Gs1 , v060
	.byte	W12
	.byte		N06   , Bn3 , v048
	.byte	W12
	.byte	PEND
@ 062   ----------------------------------------
	.byte		        Cn4 , v052
	.byte	W12
	.byte		N12   , Bn3 , v048
	.byte	W12
	.byte		N24   , Cn2 , v060
	.byte		N06   , Gn4 , v048
	.byte	W12
	.byte		N60   , En4 
	.byte	W36
	.byte		N24   , Fs2 , v060
	.byte	W24
@ 063   ----------------------------------------
	.byte		N06   , Dn4 , v048
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , An1 , v060
	.byte		N06   , Gn4 , v056
	.byte	W12
	.byte		N60   , En4 , v048
	.byte	W36
	.byte		N24   , Fs2 , v060
	.byte	W24
@ 064   ----------------------------------------
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N24   , Fn2 , v060
	.byte		N06   , An3 , v052
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N24   , Bn1 , v060
	.byte		N06   , An3 , v048
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W12
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_061
@ 066   ----------------------------------------
	.byte		N06   , Cn4 , v052
	.byte	W12
	.byte		N12   , En4 , v048
	.byte	W12
	.byte		N24   , Cn2 , v060
	.byte		N06   , Bn3 , v048
	.byte	W12
	.byte		N60   , Gn4 
	.byte	W36
	.byte		N24   , Fs2 , v060
	.byte	W24
@ 067   ----------------------------------------
	.byte		N06   , Bn3 , v056
	.byte	W12
	.byte		N12   , Gn4 , v052
	.byte	W12
	.byte		N24   , An1 , v060
	.byte		N06   , Dn4 , v048
	.byte	W12
	.byte		N60   , En4 
	.byte	W36
	.byte		N24   , Fs2 , v060
	.byte	W24
@ 068   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte	W12
	.byte		N24   , Fn2 , v060
	.byte		N06   , En3 , v052
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Gn3 , v056
	.byte	W12
	.byte		N24   , Bn1 , v060
	.byte		N06   , An3 , v052
	.byte	W12
	.byte		N24   , Bn3 , v048
	.byte	W12
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_043
@ 070   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		N24   , Cn2 , v060
	.byte		N06   , En3 , v052
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N24   , Fn3 , v048
	.byte		N24   , An3 , v052
	.byte	W24
	.byte		N12   , Gn3 
	.byte		N12   , Bn3 , v056
	.byte	W12
	.byte		N24   , Fs2 , v060
	.byte		N06   , An3 , v052
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte		N24   , Dn4 , v048
	.byte	W12
@ 071   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn4 , v056
	.byte		N12   , En4 , v052
	.byte	W12
	.byte		N24   , An1 , v060
	.byte		N06   , Bn3 , v052
	.byte		N06   , Fn4 , v056
	.byte	W12
	.byte		N60   , En3 , v048
	.byte		N60   , Gn4 , v052
	.byte	W36
	.byte		N24   , Fs2 , v060
	.byte	W24
@ 072   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte	W12
	.byte		N24   , Fn2 , v060
	.byte		N06   , En3 , v056
	.byte	W12
	.byte		N24   , Fn3 , v048
	.byte	W24
	.byte		N12   , Gn3 , v056
	.byte	W12
	.byte		N24   , Bn1 , v060
	.byte		N06   , An3 , v056
	.byte	W12
	.byte		N24   , Bn3 , v052
	.byte	W12
@ 073   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Dn2 , v060
	.byte		N06   , Bn3 , v048
	.byte	W12
	.byte		N60   , En3 , v052
	.byte	W36
	.byte		N24   , Gs1 , v060
	.byte	W24
@ 074   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N24   , Cn2 , v060
	.byte		N06   , Cn3 , v048
	.byte		N06   , En4 , v052
	.byte	W12
	.byte		N12   , Fn3 
	.byte		N12   , An3 , v048
	.byte	W12
	.byte		N06   , En3 , v052
	.byte		N06   , Gn4 , v048
	.byte	W12
	.byte		N12   , Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , Fs2 , v060
	.byte		N06   , Fn3 , v052
	.byte		N06   , An3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Cn4 
	.byte	W12
@ 075   ----------------------------------------
	.byte		N06   , Gn3 , v048
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , An1 , v060
	.byte		N06   , An3 , v052
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N12   , Cn4 , v048
	.byte		N12   , En4 , v052
	.byte	W12
	.byte		N06   , Bn3 
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N12   , Dn4 , v048
	.byte		N12   , Fn4 , v052
	.byte	W12
	.byte		N24   , Fs2 , v060
	.byte		N06   , Cn4 , v052
	.byte		N06   , En4 , v048
	.byte	W12
	.byte		        Bn3 
	.byte		N06   , En4 , v052
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Fn4 
	.byte	W06
@ 076   ----------------------------------------
	.byte	W06
	.byte		        An3 , v048
	.byte		N06   , Dn4 
	.byte	W06
	.byte		TIE   , Bn3 , v052
	.byte		TIE   , En4 
	.byte	W12
	.byte		N24   , En2 , v060
	.byte	W48
	.byte		N24   
	.byte	W24
@ 077   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W36
	.byte		EOT   , Bn3 
	.byte		        En4 
	.byte		N12   , En2 
	.byte	W12
	.byte		N24   
	.byte	W24
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
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		        An3 , v052
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W12
@ 087   ----------------------------------------
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W12
	.byte		        An3 , v052
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N12   , En4 , v048
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N06   , Bn3 , v052
	.byte	W12
@ 088   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		N12   , Bn3 , v048
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N60   , En4 , v052
	.byte	W60
@ 089   ----------------------------------------
	.byte		N06   , Dn4 , v048
	.byte	W12
	.byte		N12   , En4 , v052
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N60   , En4 , v048
	.byte	W60
@ 090   ----------------------------------------
	.byte	W12
	.byte		N06   , Fn4 , v052
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Bn3 , v048
	.byte	W24
	.byte		N06   , Fn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W12
@ 091   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_009
@ 092   ----------------------------------------
	.byte		N06   , Cn4 , v048
	.byte	W12
	.byte		N12   , En4 , v052
	.byte	W12
	.byte		N06   , Bn3 , v048
	.byte	W12
	.byte		N60   , Gn4 
	.byte	W60
@ 093   ----------------------------------------
	.byte		N06   , Bn3 , v060
	.byte	W12
	.byte		N12   , Gn4 , v048
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N60   , En4 
	.byte	W60
@ 094   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v052
	.byte	W12
	.byte		N06   , En3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Gn3 , v056
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		N24   , Bn3 , v052
	.byte	W12
@ 095   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_017
@ 096   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , En3 , v052
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N24   , Fn3 , v048
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Gn3 , v056
	.byte		N12   , Bn3 , v052
	.byte	W12
	.byte		N06   , An3 
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N24   , Bn3 , v048
	.byte		N24   , Dn4 , v052
	.byte	W12
@ 097   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn4 , v056
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Dn4 , v052
	.byte		N06   , Fn4 , v056
	.byte	W12
	.byte		N60   , En4 , v048
	.byte		N60   , Gn4 
	.byte	W60
@ 098   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , En3 , v052
	.byte	W12
	.byte		N24   , Fn3 , v048
	.byte	W24
	.byte		N12   , Gn3 , v052
	.byte	W12
	.byte		N06   , An3 , v056
	.byte	W12
	.byte		N24   , Bn3 , v048
	.byte	W12
@ 099   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn4 , v052
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N60   , En3 
	.byte	W60
@ 100   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , Cn3 , v052
	.byte		N06   , En4 , v048
	.byte	W12
	.byte		N12   , Fn3 , v052
	.byte		N12   , An3 , v048
	.byte	W12
	.byte		N06   , En3 
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N12   , Gn3 , v052
	.byte		N12   , Bn3 , v048
	.byte	W12
	.byte		N06   , Fn3 , v052
	.byte		N06   , An3 
	.byte	W12
	.byte		N12   , An3 , v048
	.byte		N12   , Cn4 
	.byte	W12
@ 101   ----------------------------------------
	.byte		N06   , Gn3 , v052
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Dn4 , v048
	.byte	W12
	.byte		N06   , An3 , v052
	.byte		N06   , Cn4 , v048
	.byte	W12
	.byte		N12   
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Bn3 , v052
	.byte		N06   , Dn4 , v048
	.byte	W12
	.byte		N12   
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte		N06   , En4 , v052
	.byte	W12
	.byte		        Bn3 , v048
	.byte		N06   , En4 
	.byte	W06
	.byte		        Cn4 , v052
	.byte		N06   , Fn4 
	.byte	W06
@ 102   ----------------------------------------
	.byte	W06
	.byte		        An3 
	.byte		N06   , Dn4 , v048
	.byte	W06
	.byte		TIE   , Bn3 , v052
	.byte		TIE   , En4 , v056
	.byte	W84
@ 103   ----------------------------------------
	.byte	W60
	.byte		EOT   , Bn3 
	.byte		        En4 
	.byte	W36
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_026
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_027
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_028
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_029
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_026
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_027
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_028
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_029
@ 112   ----------------------------------------
mus_sacred_grove_3_112:
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N24   , Fn2 , v060
	.byte		N06   , An3 , v048
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N24   , Bn1 , v060
	.byte		N06   , An3 , v048
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W12
	.byte	PEND
@ 113   ----------------------------------------
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N24   , Dn2 , v060
	.byte		N06   , An3 , v048
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W12
	.byte		        Gs1 , v060
	.byte	W12
	.byte		N06   , Bn3 , v048
	.byte	W12
@ 114   ----------------------------------------
	.byte		        Cn4 , v052
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , Cn2 , v060
	.byte		N06   , Gn4 , v048
	.byte	W12
	.byte		N60   , En4 
	.byte	W36
	.byte		N24   , Fs2 , v060
	.byte	W24
@ 115   ----------------------------------------
mus_sacred_grove_3_115:
	.byte		N06   , Dn4 , v052
	.byte	W12
	.byte		N12   , En4 , v048
	.byte	W12
	.byte		N24   , An1 , v060
	.byte		N06   , Gn4 , v056
	.byte	W12
	.byte		N60   , En4 , v048
	.byte	W36
	.byte		N24   , Fs2 , v060
	.byte	W24
	.byte	PEND
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_112
@ 117   ----------------------------------------
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N24   , Dn2 , v060
	.byte		N06   , An3 , v048
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Dn4 , v052
	.byte	W12
	.byte		        Gs1 , v060
	.byte	W12
	.byte		N06   , Bn3 , v048
	.byte	W12
@ 118   ----------------------------------------
	.byte		        Cn4 , v052
	.byte	W12
	.byte		N12   , En4 , v048
	.byte	W12
	.byte		N24   , Cn2 , v060
	.byte		N06   , Bn3 , v052
	.byte	W12
	.byte		N60   , Gn4 , v048
	.byte	W36
	.byte		N24   , Fs2 , v060
	.byte	W24
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_041
@ 120   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte	W12
	.byte		N24   , Fn2 , v060
	.byte		N06   , En3 , v052
	.byte	W12
	.byte		N24   , Fn3 , v048
	.byte	W24
	.byte		N12   , Gn3 , v056
	.byte	W12
	.byte		N24   , Bn1 , v060
	.byte		N06   , An3 , v052
	.byte	W12
	.byte		N24   , Bn3 , v048
	.byte	W12
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_043
@ 122   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N24   , Cn2 , v060
	.byte		N06   , En3 , v052
	.byte		N06   , Gn4 , v056
	.byte	W12
	.byte		N24   , Fn3 , v048
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Gn3 , v056
	.byte		N12   , Bn3 , v052
	.byte	W12
	.byte		N24   , Fs2 , v060
	.byte		N06   , An3 , v052
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N24   , Bn3 , v048
	.byte		N24   , Dn4 
	.byte	W12
@ 123   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn4 , v052
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , An1 , v060
	.byte		N06   , Bn3 , v052
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N60   , En3 
	.byte		N60   , Gn4 , v048
	.byte	W36
	.byte		N24   , Fs2 , v060
	.byte	W24
@ 124   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte	W12
	.byte		N24   , Fn2 , v060
	.byte		N06   , En3 , v052
	.byte	W12
	.byte		N24   , Fn3 , v048
	.byte	W24
	.byte		N12   , Gn3 , v052
	.byte	W12
	.byte		N24   , Bn1 , v060
	.byte		N06   , An3 , v052
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W12
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_043
@ 126   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N24   , Cn2 , v060
	.byte		N06   , Cn3 , v052
	.byte		N06   , En4 
	.byte	W12
	.byte		N12   , Fn3 
	.byte		N12   , An3 , v048
	.byte	W12
	.byte		N06   , En3 , v052
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N12   , Gn3 , v048
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , Fs2 , v060
	.byte		N06   , Fn3 , v048
	.byte		N06   , An3 , v052
	.byte	W12
	.byte		N12   
	.byte		N12   , Cn4 , v048
	.byte	W12
@ 127   ----------------------------------------
	.byte		N06   , Gn3 , v052
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   , Bn3 , v048
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , An1 , v060
	.byte		N06   , An3 , v048
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N12   
	.byte		N12   , En4 , v052
	.byte	W12
	.byte		N06   , Bn3 , v048
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N12   , Dn4 , v052
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N24   , Fs2 , v060
	.byte		N06   , Cn4 , v048
	.byte		N06   , En4 
	.byte	W12
	.byte		        Bn3 , v052
	.byte		N06   , En4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Fn4 
	.byte	W06
@ 128   ----------------------------------------
mus_sacred_grove_3_128:
	.byte	W06
	.byte		N06   , An3 , v052
	.byte		N06   , Dn4 
	.byte	W06
	.byte		TIE   , Bn3 
	.byte		TIE   , En4 
	.byte	W12
	.byte		N24   , En2 , v060
	.byte	W48
	.byte		N24   
	.byte	W24
	.byte	PEND
@ 129   ----------------------------------------
	.byte	W24
	.byte		N24   
	.byte	W36
	.byte		EOT   , Bn3 
	.byte		        En4 
	.byte		N12   , En2 
	.byte	W12
	.byte		N24   
	.byte	W24
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_026
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_027
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_028
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_029
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_026
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_027
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_028
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_029
@ 138   ----------------------------------------
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N24   , Fn2 , v060
	.byte		N06   , An3 , v048
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N24   , Bn1 , v060
	.byte		N06   , An3 , v052
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W12
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_061
@ 140   ----------------------------------------
	.byte		N06   , Cn4 , v048
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , Cn2 , v060
	.byte		N06   , Gn4 , v052
	.byte	W12
	.byte		N60   , En4 
	.byte	W36
	.byte		N24   , Fs2 , v060
	.byte	W24
@ 141   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_115
@ 142   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_112
@ 143   ----------------------------------------
	.byte	W12
	.byte		N06   , Fn4 , v048
	.byte	W12
	.byte		N24   , Dn2 , v060
	.byte		N06   , An3 , v048
	.byte	W12
	.byte		        Bn3 , v052
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W12
	.byte		        Gs1 , v060
	.byte	W12
	.byte		N06   , Bn3 , v048
	.byte	W12
@ 144   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_040
@ 145   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_041
@ 146   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte	W12
	.byte		N24   , Fn2 , v060
	.byte		N06   , En3 , v052
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Bn1 , v060
	.byte		N06   , An3 , v052
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W12
@ 147   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Dn2 , v060
	.byte		N06   , Bn3 , v052
	.byte	W12
	.byte		N60   , En3 
	.byte	W36
	.byte		N24   , Gs1 , v060
	.byte	W24
@ 148   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		N24   , Cn2 , v060
	.byte		N06   , En3 , v056
	.byte		N06   , Gn4 , v052
	.byte	W12
	.byte		N24   , Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , Fs2 , v060
	.byte		N06   , An3 , v052
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N24   , Bn3 , v048
	.byte		N24   , Dn4 
	.byte	W12
@ 149   ----------------------------------------
	.byte	W12
	.byte		N12   , Cn4 , v052
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , An1 , v060
	.byte		N06   , Bn3 , v052
	.byte		N06   , Fn4 , v056
	.byte	W12
	.byte		N60   , En3 , v048
	.byte		N60   , Gn4 
	.byte	W36
	.byte		N24   , Fs2 , v060
	.byte	W24
@ 150   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v048
	.byte	W12
	.byte		N24   , Fn2 , v060
	.byte		N06   , En3 , v052
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Bn1 , v060
	.byte		N06   , An3 , v056
	.byte	W12
	.byte		N24   , Bn3 , v048
	.byte	W12
@ 151   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_043
@ 152   ----------------------------------------
	.byte	W12
	.byte		N12   , Dn3 , v052
	.byte		N12   , Fn4 , v048
	.byte	W12
	.byte		N24   , Cn2 , v060
	.byte		N06   , Cn3 , v052
	.byte		N06   , En4 , v048
	.byte	W12
	.byte		N12   , Fn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , En3 , v052
	.byte		N06   , Gn4 , v048
	.byte	W12
	.byte		N12   , Gn3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , Fs2 , v060
	.byte		N06   , Fn3 , v048
	.byte		N06   , An3 , v052
	.byte	W12
	.byte		N12   
	.byte		N12   , Cn4 , v048
	.byte	W12
@ 153   ----------------------------------------
	.byte		N06   , Gn3 , v052
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   , Bn3 , v048
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N24   , An1 , v060
	.byte		N06   , An3 , v052
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N12   , Cn4 , v048
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Bn3 , v052
	.byte		N06   , Dn4 , v048
	.byte	W12
	.byte		N12   
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N24   , Fs2 , v060
	.byte		N06   , Cn4 , v048
	.byte		N06   , En4 , v052
	.byte	W12
	.byte		        Bn3 , v048
	.byte		N06   , En4 
	.byte	W06
	.byte		        Cn4 , v052
	.byte		N06   , Fn4 , v056
	.byte	W06
@ 154   ----------------------------------------
	.byte	PATT
	 .word	mus_sacred_grove_3_128
@ 155   ----------------------------------------
	.byte	W24
	.byte		N24   , En2 , v060
	.byte	W36
	.byte		EOT   , Bn3 
	.byte		        En4 
	.byte		N12   , En2 
	.byte	W12
	.byte		N24   
	.byte	W24
@ 156   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_sacred_grove:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_sacred_grove_pri	@ Priority
	.byte	mus_sacred_grove_rev	@ Reverb.

	.word	mus_sacred_grove_grp

	.word	mus_sacred_grove_1
	.word	mus_sacred_grove_2
	.word	mus_sacred_grove_3

	.end
