	.include "MPlayDef.s"

	.equ	mus_touhou10_stage2_grp, voicegroup_ancient_groover
	.equ	mus_touhou10_stage2_pri, 0
	.equ	mus_touhou10_stage2_rev, reverb_set+50
	.equ	mus_touhou10_stage2_mvl, 100
	.equ	mus_touhou10_stage2_key, 0
	.equ	mus_touhou10_stage2_tbs, 1
	.equ	mus_touhou10_stage2_exg, 1
	.equ	mus_touhou10_stage2_cmp, 1

	.section .rodata
	.global	mus_touhou10_stage2
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_touhou10_stage2_1:
	.byte	KEYSH , mus_touhou10_stage2_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 156*mus_touhou10_stage2_tbs/2
	.byte		VOICE , 2
	.byte		MOD   , 32
	.byte		VOL   , 127*mus_touhou10_stage2_mvl/mxv
	.byte		PAN   , c_v+18
	.byte	W24
	.byte		N12   , Fs2 , v112
	.byte		N12   , Cs3 
	.byte	W12
	.byte	W36
	.byte		        Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte	W12
@ 001   ----------------------------------------
mus_touhou10_stage2_1_001:
	.byte	W24
	.byte		N12   , An2 , v112
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
	.byte	W36
	.byte		        Cn3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte	W12
@ 002   ----------------------------------------
mus_touhou10_stage2_1_002:
	.byte	W24
	.byte		N12   , Cs3 , v112
	.byte		N12   , Gs3 
	.byte	W12
	.byte	PEND
	.byte	W36
	.byte		        Cs3 
	.byte		N12   , An3 
	.byte	W12
	.byte	W12
@ 003   ----------------------------------------
mus_touhou10_stage2_1_003:
	.byte	W24
	.byte		MOD   , 0
	.byte		N24   , An3 , v112
	.byte		N24   , Cs4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , An3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		MOD   , 0
	.byte		N24   , Gs3 
	.byte		N24   , Cn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 004   ----------------------------------------
	.byte		        0
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte		N12   , En3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , En3 
	.byte		N18   , Cs4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , En3 
	.byte		N24   , Cs4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 009   ----------------------------------------
	.byte		N12   , Cs3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , An3 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , Ds3 
	.byte		N18   , Cn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N18   , Cn3 
	.byte		N18   , Gs3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N12   , An2 
	.byte		N12   , Fs3 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , En3 
	.byte		N18   , Cs4 
	.byte		N18   , En4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , En3 
	.byte		N24   , Cs4 
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 011   ----------------------------------------
	.byte		N12   , Cs3 
	.byte		N12   , An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , Ds3 
	.byte		N48   , Cn4 
	.byte		N48   , Ds4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 012   ----------------------------------------
	.byte		        0
	.byte		N12   , An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		        Cs4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N18   , Fs4 
	.byte		N18   , An4 
	.byte	W18
	.byte		        En4 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , Bn3 
	.byte		N18   , En4 
	.byte	W18
	.byte		        Cs4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Fs4 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		        Fs4 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Gs4 
	.byte		N12   , Bn4 
	.byte	W12
@ 015   ----------------------------------------
mus_touhou10_stage2_1_015:
	.byte		MOD   , 0
	.byte		N72   , An4 , v112
	.byte		N72   , Cs5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W48
	.byte	PEND
	.byte		        0
	.byte		N12   , An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , En5 
	.byte	W12
@ 016   ----------------------------------------
mus_touhou10_stage2_1_016:
	.byte		MOD   , 0
	.byte		N60   , Gs4 , v112
	.byte		N60   , Bn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W36
	.byte	PEND
	.byte		        0
	.byte		N12   , Gs4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
@ 018   ----------------------------------------
mus_touhou10_stage2_1_018:
	.byte		MOD   , 0
	.byte		N48   , Gs3 , v112
	.byte		N48   , Bn3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
	.byte	PEND
	.byte		        0
	.byte	W12
	.byte		N12   , Gs3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N60   
	.byte		N60   , Fs4 
	.byte	W12
@ 019   ----------------------------------------
mus_touhou10_stage2_1_019:
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W36
	.byte	PEND
	.byte		        0
	.byte		N12   , Cs4 , v112
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		        Cs4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N18   , Fs4 
	.byte		N18   , An4 
	.byte	W18
	.byte		        En4 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , Bn3 
	.byte		N18   , En4 
	.byte	W18
	.byte		        Cs4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Fs4 
	.byte	W12
@ 022   ----------------------------------------
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		        Fs4 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Gs4 
	.byte		N12   , Bn4 
	.byte	W12
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_015
	.byte		MOD   , 0
	.byte		N12   , An4 , v112
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , En5 
	.byte	W12
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_016
	.byte		MOD   , 0
	.byte		N12   , Gs4 , v112
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_018
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , Gs3 , v112
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N60   
	.byte		N60   , Fs4 
	.byte	W12
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_019
	.byte		MOD   , 0
	.byte		N06   , Cs4 , v112
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N12   , Cs4 
	.byte		N12   , Fs4 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        Cs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , Cs3 
	.byte		N18   , As3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , Cs3 
	.byte		N24   , As3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 029   ----------------------------------------
	.byte		N12   , As2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        As2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , Cn3 
	.byte		N18   , An3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N18   , An2 
	.byte		N18   , Fn3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N12   , Fs2 
	.byte		N12   , Ds3 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        Cs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , Cs3 
	.byte		N18   , As3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , Cs3 
	.byte		N24   , As3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 031   ----------------------------------------
	.byte		N12   , As2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        As2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , Cn3 
	.byte		N48   , An3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 032   ----------------------------------------
	.byte		        0
	.byte		N12   , Cs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cn3 
	.byte		N12   , An3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , Cs3 
	.byte		N18   , As3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , Cs3 
	.byte		N24   , As3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 033   ----------------------------------------
	.byte		N12   , As2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        As2 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , Cn3 
	.byte		N18   , An3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N18   , An2 
	.byte		N18   , Fn3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N12   , Fs2 
	.byte		N12   , Ds3 
	.byte	W12
@ 034   ----------------------------------------
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , As3 
	.byte		N18   , Cs4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , As3 
	.byte		N24   , Cs4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 035   ----------------------------------------
	.byte		N12   , Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , An3 
	.byte		N48   , Cn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 036   ----------------------------------------
	.byte		        0
	.byte		N12   , As3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , As3 
	.byte		N18   , Cs4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , As3 
	.byte		N24   , Cs4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 037   ----------------------------------------
	.byte		N12   , Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , An3 
	.byte		N18   , Cn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N18   , Fn3 
	.byte		N18   , An3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N12   , Ds3 
	.byte		N12   , Fs3 
	.byte	W12
@ 038   ----------------------------------------
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , As3 
	.byte		N18   , Cs4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , As3 
	.byte		N24   , Cs4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 039   ----------------------------------------
	.byte		N12   , Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , An3 
	.byte		N48   , Cn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 040   ----------------------------------------
	.byte		        0
	.byte		N12   , As3 
	.byte		N12   , Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , As3 
	.byte		N18   , Cs4 
	.byte		N18   , As4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , As3 
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 041   ----------------------------------------
mus_touhou10_stage2_1_041:
	.byte		N12   , Fs3 , v112
	.byte		N12   , As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	PEND
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , An3 
	.byte		N18   , Cn4 
	.byte		N18   , An4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N18   , Fn3 
	.byte		N18   , An3 
	.byte		N18   , Fn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N12   , Ds3 
	.byte		N12   , Fs3 
	.byte		N12   , Ds4 
	.byte	W12
@ 042   ----------------------------------------
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , As3 
	.byte		N18   , Cs4 
	.byte		N18   , As4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , As3 
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_041
	.byte		N12   , Fs3 , v112
	.byte		N12   , As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , An3 
	.byte		N48   , Cn4 
	.byte		N48   , An4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 044   ----------------------------------------
@ 045   ----------------------------------------
	.byte		        0
	.byte	W48
@ 046   ----------------------------------------
@ 047   ----------------------------------------
	.byte		N12   , Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 048   ----------------------------------------
	.byte		N18   , Ds4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Gs3 
	.byte		N18   , Cs4 
	.byte	W18
	.byte		        As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 049   ----------------------------------------
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 
	.byte	W12
@ 050   ----------------------------------------
mus_touhou10_stage2_1_050:
	.byte		MOD   , 0
	.byte		N72   , Fs4 , v112
	.byte		N72   , As4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W48
	.byte	PEND
	.byte		        0
	.byte		N12   , Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 051   ----------------------------------------
mus_touhou10_stage2_1_051:
	.byte		MOD   , 0
	.byte		N60   , Fn4 , v112
	.byte		N60   , Gs4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W36
	.byte	PEND
	.byte		        0
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 052   ----------------------------------------
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
@ 053   ----------------------------------------
mus_touhou10_stage2_1_053:
	.byte		MOD   , 0
	.byte		N48   , Fn3 , v112
	.byte		N48   , Gs3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
	.byte	PEND
	.byte		        0
	.byte	W12
	.byte		N12   , Fn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W12
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_019
	.byte		MOD   , 0
	.byte		N12   , As3 , v112
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
@ 055   ----------------------------------------
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 056   ----------------------------------------
	.byte		N18   , Ds4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Gs3 
	.byte		N18   , Cs4 
	.byte	W18
	.byte		        As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 057   ----------------------------------------
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 
	.byte	W12
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_050
	.byte		MOD   , 0
	.byte		N12   , Fs4 , v112
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_051
	.byte		MOD   , 0
	.byte		N12   , Fn4 , v112
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 060   ----------------------------------------
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_053
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , Fn3 , v112
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W12
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_019
	.byte		MOD   , 0
	.byte		N06   , As3 , v112
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 064   ----------------------------------------
	.byte		N18   , Ds4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Gs3 
	.byte		N18   , Cs4 
	.byte	W18
	.byte		        As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 065   ----------------------------------------
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 
	.byte	W12
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_050
	.byte		MOD   , 0
	.byte		N12   , Fs4 , v112
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_051
	.byte		MOD   , 0
	.byte		N12   , Fn4 , v112
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 068   ----------------------------------------
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_053
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , Fn3 , v112
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W12
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_019
	.byte		MOD   , 0
	.byte		N12   , As3 , v112
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
@ 071   ----------------------------------------
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 072   ----------------------------------------
	.byte		N18   , Ds4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Gs3 
	.byte		N18   , Cs4 
	.byte	W18
	.byte		        As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 073   ----------------------------------------
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 
	.byte	W12
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_050
	.byte		MOD   , 0
	.byte		N12   , Fs4 , v112
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_051
	.byte		MOD   , 0
	.byte		N12   , Fn4 , v112
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 076   ----------------------------------------
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_053
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , Fn3 , v112
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W12
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_019
	.byte		MOD   , 0
	.byte		N06   , As3 , v112
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 079   ----------------------------------------
	.byte		MOD   , 32
	.byte	W24
	.byte		N12   , Fs2 
	.byte		N12   , Cs3 
	.byte	W12
	.byte	W36
	.byte		        Gs2 
	.byte		N12   , Ds3 
	.byte	W12
	.byte	W12
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_001
	.byte	W36
	.byte		N12   , Cn3 , v112
	.byte		N12   , Fs3 
	.byte	W12
	.byte	W12
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_002
	.byte	W36
	.byte		N12   , Cs3 , v112
	.byte		N12   , An3 
	.byte	W12
	.byte	W12
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_1_003
	.byte		N06   , An3 , v112
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , An3 
	.byte	W06
	.byte		MOD   , 0
	.byte		N24   , Gs3 
	.byte		N24   , Cn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 083   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_touhou10_stage2_2:
	.byte	KEYSH , mus_touhou10_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou10_stage2_mvl/mxv
	.byte		PAN   , c_v+8
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
mus_touhou10_stage2_2_003:
	.byte	W24
	.byte		N24   , An4 , v076
	.byte		N24   , Cs5 
	.byte	W24
	.byte	PEND
	.byte		N06   , An4 
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		N24   , Gs4 
	.byte		N24   , Cn5 
	.byte	W24
@ 004   ----------------------------------------
	.byte		N12   , En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		N24   , En4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte	W06
@ 005   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N18   , Ds4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		        Cn4 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Fs4 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		N24   , En4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte	W06
@ 007   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N48   , Ds4 
	.byte		N48   , Cn5 
	.byte	W48
@ 008   ----------------------------------------
	.byte		N12   , En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		N24   , En4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte	W06
@ 009   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N18   , Ds4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		        Cn4 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		MOD   , 0
	.byte		N12   , An3 
	.byte		N12   , Fs4 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		N24   , En4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte	W06
@ 011   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N48   , Ds4 
	.byte		N48   , Cn5 
	.byte	W48
@ 012   ----------------------------------------
	.byte		N12   , An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N18   , En5 
	.byte		N18   , Gs5 
	.byte	W18
	.byte		        Cs5 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		N12   , En5 
	.byte		N12   , Gs5 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N18   , Fs5 
	.byte		N18   , An5 
	.byte	W18
	.byte		        En5 
	.byte		N18   , Gs5 
	.byte	W18
	.byte		N12   , Cs5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N18   , Bn4 
	.byte		N18   , En5 
	.byte	W18
	.byte		        Cs5 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		N12   , Cs5 
	.byte		N12   , Fs5 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N18   , En5 
	.byte		N18   , Gs5 
	.byte	W18
	.byte		        Fs5 
	.byte		N18   , An5 
	.byte	W18
	.byte		N12   , Gs5 
	.byte		N12   , Bn5 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N72   , An5 
	.byte		N72   , Cs6 
	.byte	W72
	.byte		N12   , An5 
	.byte		N12   , Cs6 
	.byte	W12
	.byte		        Bn5 
	.byte		N12   , En6 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N60   , Gs5 
	.byte		N60   , Bn5 
	.byte	W60
	.byte		N12   , Gs5 
	.byte		N12   , Bn5 
	.byte	W12
	.byte		        Fs5 
	.byte		N12   , An5 
	.byte	W12
	.byte		        En5 
	.byte		N12   , Gs5 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        Fs5 
	.byte		N12   , An5 
	.byte	W12
	.byte		        En5 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , En5 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N48   , Gs4 
	.byte		N48   , Bn4 
	.byte	W48
	.byte	W12
	.byte		N12   , Gs4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N60   
	.byte		N60   , Fs5 
	.byte	W12
@ 019   ----------------------------------------
	.byte	W48
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fn5 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N18   , En5 
	.byte		N18   , Gs5 
	.byte	W18
	.byte		        Cs5 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		N12   , En5 
	.byte		N12   , Gs5 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N18   , Fs5 
	.byte		N18   , An5 
	.byte	W18
	.byte		        En5 
	.byte		N18   , Gs5 
	.byte	W18
	.byte		N12   , Cs5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N18   , Bn4 
	.byte		N18   , En5 
	.byte	W18
	.byte		        Cs5 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		N12   , Cs5 
	.byte		N12   , Fs5 
	.byte	W12
@ 022   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N18   , En5 
	.byte		N18   , Gs5 
	.byte	W18
	.byte		        Fs5 
	.byte		N18   , An5 
	.byte	W18
	.byte		N12   , Gs5 
	.byte		N12   , Bn5 
	.byte	W12
@ 023   ----------------------------------------
	.byte		N72   , An5 
	.byte		N72   , Cs6 
	.byte	W72
	.byte		N12   , An5 
	.byte		N12   , Cs6 
	.byte	W12
	.byte		        Bn5 
	.byte		N12   , En6 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N60   , Gs5 
	.byte		N60   , Bn5 
	.byte	W60
	.byte		N12   , Gs5 
	.byte		N12   , Bn5 
	.byte	W12
	.byte		        Fs5 
	.byte		N12   , An5 
	.byte	W12
	.byte		        En5 
	.byte		N12   , Gs5 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Fs5 
	.byte		N12   , An5 
	.byte	W12
	.byte		        En5 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , En5 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N48   , Gs4 
	.byte		N48   , Bn4 
	.byte	W48
	.byte	W12
	.byte		N12   , Gs4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N60   
	.byte		N60   , Fs5 
	.byte	W12
@ 027   ----------------------------------------
	.byte	W48
	.byte		N06   , Cs5 
	.byte		N06   , Fs5 
	.byte	W06
	.byte		        An4 
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte		N06   , Fs5 
	.byte	W06
	.byte		        An4 
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		N12   , Cs5 
	.byte		N12   , Fs5 
	.byte	W12
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W84
	.byte		MOD   , 0
	.byte	W12
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
	.byte		N12   , Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , As4 
	.byte	W18
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
	.byte	W06
@ 037   ----------------------------------------
	.byte		N12   , As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N18   , Cn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		        An3 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , Fs3 
	.byte		N12   , Ds4 
	.byte	W12
@ 038   ----------------------------------------
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , As4 
	.byte	W18
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
	.byte	W06
@ 039   ----------------------------------------
	.byte		N12   , As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N48   , Cn4 
	.byte		N48   , An4 
	.byte	W48
@ 040   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , As4 
	.byte	W18
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
	.byte	W06
@ 041   ----------------------------------------
	.byte		N12   , As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N18   , Cn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		        An3 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , Fs3 
	.byte		N12   , Ds4 
	.byte	W12
@ 042   ----------------------------------------
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , As4 
	.byte	W18
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
	.byte	W06
@ 043   ----------------------------------------
	.byte		N12   , As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N48   , Cn4 
	.byte		N48   , An4 
	.byte	W48
@ 044   ----------------------------------------
	.byte	W48
@ 045   ----------------------------------------
@ 046   ----------------------------------------
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 047   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 048   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 049   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 050   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 051   ----------------------------------------
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 052   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 053   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
@ 054   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 055   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 056   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 057   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 058   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 059   ----------------------------------------
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
@ 060   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 061   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N06   , As3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        As4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N12   , As4 
	.byte		N12   , Ds5 
	.byte	W12
@ 062   ----------------------------------------
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N18   , Cs5 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		        As4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 
	.byte	W12
@ 063   ----------------------------------------
	.byte		N18   , Ds5 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		        Cs5 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		N12   , As4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N18   , Gs4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		        As4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , As4 
	.byte		N12   , Ds5 
	.byte	W12
@ 064   ----------------------------------------
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N18   , Cs5 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		        Ds5 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		N12   , Fn5 
	.byte		N12   , Gs5 
	.byte	W12
@ 065   ----------------------------------------
	.byte		N72   , Fs5 
	.byte		N72   , As5 
	.byte	W72
	.byte		N12   , Fs5 
	.byte		N12   , As5 
	.byte	W12
	.byte		        Gs5 
	.byte		N12   , Cs6 
	.byte	W12
@ 066   ----------------------------------------
	.byte		N60   , Fn5 
	.byte		N60   , Gs5 
	.byte	W60
	.byte		N12   , Fn5 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        Ds5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fn5 
	.byte	W12
@ 067   ----------------------------------------
	.byte		        Ds5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 068   ----------------------------------------
	.byte		N48   , Fn4 
	.byte		N48   , Gs4 
	.byte	W48
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N60   
	.byte		N60   , Ds5 
	.byte	W12
@ 069   ----------------------------------------
	.byte	W48
	.byte		N12   , As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
@ 070   ----------------------------------------
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N18   , Cs5 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		        As4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 
	.byte	W12
@ 071   ----------------------------------------
	.byte		N18   , Ds5 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		        Cs5 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		N12   , As4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N18   , Gs4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		        As4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , As4 
	.byte		N12   , Ds5 
	.byte	W12
@ 072   ----------------------------------------
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N18   , Cs5 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		        Ds5 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		N12   , Fn5 
	.byte		N12   , Gs5 
	.byte	W12
@ 073   ----------------------------------------
	.byte		N72   , Fs5 
	.byte		N72   , As5 
	.byte	W72
	.byte		N12   , Fs5 
	.byte		N12   , As5 
	.byte	W12
	.byte		        Gs5 
	.byte		N12   , Cs6 
	.byte	W12
@ 074   ----------------------------------------
	.byte		N60   , Fn5 
	.byte		N60   , Gs5 
	.byte	W60
	.byte		N12   , Fn5 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        Ds5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fn5 
	.byte	W12
@ 075   ----------------------------------------
	.byte		        Ds5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 076   ----------------------------------------
	.byte		N48   , Fn4 
	.byte		N48   , Gs4 
	.byte	W48
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N60   
	.byte		N60   , Ds5 
	.byte	W12
@ 077   ----------------------------------------
	.byte	W48
	.byte		N06   , As4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        As4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N12   , As4 
	.byte		N12   , Ds5 
	.byte	W12
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_2_003
	.byte		N06   , An4 , v076
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		N24   , Gs4 
	.byte		N24   , Cn5 
	.byte	W24
@ 082   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_touhou10_stage2_3:
	.byte	KEYSH , mus_touhou10_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou10_stage2_mvl/mxv
	.byte		PAN   , c_v+8
	.byte		N48   , Fs3 , v076
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Ds4 
	.byte	W48
@ 001   ----------------------------------------
	.byte		        An3 
	.byte		N48   , En4 
	.byte	W48
	.byte		        Cn4 
	.byte		N48   , Fs4 
	.byte	W48
@ 002   ----------------------------------------
	.byte		        Cs4 
	.byte		N48   , Gs4 
	.byte	W48
	.byte		        Cs4 
	.byte		N48   , An4 
	.byte	W48
@ 003   ----------------------------------------
	.byte		N48   
	.byte		N48   , Cs5 
	.byte	W48
	.byte		        Gs4 
	.byte		N48   , Cn5 
	.byte	W48
@ 004   ----------------------------------------
	.byte		        Cs4 
	.byte		N48   , En4 
	.byte	W48
	.byte		        Cs4 
	.byte		N48   , En4 
	.byte	W48
@ 005   ----------------------------------------
	.byte		        Cs4 
	.byte		N48   , En4 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Cn4 
	.byte	W48
@ 006   ----------------------------------------
	.byte		        Cs4 
	.byte		N48   , En4 
	.byte	W48
	.byte		        Cs4 
	.byte		N48   , En4 
	.byte	W48
@ 007   ----------------------------------------
	.byte		        Cs4 
	.byte		N48   , En4 
	.byte	W48
	.byte		        Cn4 
	.byte		N48   , Ds4 
	.byte	W48
@ 008   ----------------------------------------
	.byte		        Cs4 
	.byte		N48   , En4 
	.byte	W48
	.byte		        Cs4 
	.byte		N48   , En4 
	.byte	W48
@ 009   ----------------------------------------
	.byte		        Cs4 
	.byte		N48   , En4 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Cn4 
	.byte	W48
@ 010   ----------------------------------------
	.byte		        Cs4 
	.byte		N48   , En4 
	.byte	W48
	.byte		        Cs4 
	.byte		N48   , En4 
	.byte	W48
@ 011   ----------------------------------------
	.byte		        Cs4 
	.byte		N48   , En4 
	.byte	W48
	.byte		        Cn4 
	.byte		N48   , Ds4 
	.byte	W48
@ 012   ----------------------------------------
	.byte		        An3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        Bn3 
	.byte		N48   , En4 
	.byte	W48
@ 013   ----------------------------------------
	.byte		        Fs4 
	.byte		N48   , An4 
	.byte	W48
	.byte		        Bn3 
	.byte		N48   , En4 
	.byte	W48
@ 014   ----------------------------------------
	.byte		        An3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        Bn3 
	.byte		N48   , En4 
	.byte	W48
@ 015   ----------------------------------------
	.byte		N96   , Fs4 
	.byte		N96   , An4 
	.byte	W96
@ 016   ----------------------------------------
	.byte		N48   , Fs4 
	.byte		N48   , An4 
	.byte	W48
	.byte		        Fs4 
	.byte		N48   , Bn4 
	.byte	W48
@ 017   ----------------------------------------
	.byte		        Fs4 
	.byte		N48   , An4 
	.byte	W48
	.byte		        Cs4 
	.byte		N48   , Fs4 
	.byte	W48
@ 018   ----------------------------------------
	.byte		N72   , Gs3 
	.byte		N72   , Bn3 
	.byte	W72
	.byte		N24   , An3 
	.byte		N24   , Cs4 
	.byte	W24
@ 019   ----------------------------------------
	.byte		N48   
	.byte		N48   , Fs4 
	.byte	W48
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N48   , An3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        Bn3 
	.byte		N48   , En4 
	.byte	W48
@ 021   ----------------------------------------
	.byte		        Fs4 
	.byte		N48   , An4 
	.byte	W48
	.byte		        Bn3 
	.byte		N48   , En4 
	.byte	W48
@ 022   ----------------------------------------
	.byte		        An3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        Bn3 
	.byte		N48   , En4 
	.byte	W48
@ 023   ----------------------------------------
	.byte		N96   , Fs4 
	.byte		N96   , An4 
	.byte	W96
@ 024   ----------------------------------------
	.byte		N48   , Fs4 
	.byte		N48   , An4 
	.byte	W48
	.byte		        Fs4 
	.byte		N48   , Bn4 
	.byte	W48
@ 025   ----------------------------------------
	.byte		        Fs4 
	.byte		N48   , An4 
	.byte	W48
	.byte		        Cs4 
	.byte		N48   , Fs4 
	.byte	W48
@ 026   ----------------------------------------
	.byte		N72   , Gs3 
	.byte		N72   , Bn3 
	.byte	W72
	.byte		N24   , An3 
	.byte		N24   , Cs4 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N48   
	.byte		N48   , Fs4 
	.byte	W48
	.byte		N06   , Cs4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N12   , Cs4 
	.byte		N12   , Fs4 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N48   , As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
@ 029   ----------------------------------------
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        Fn3 
	.byte		N48   , An3 
	.byte	W48
@ 030   ----------------------------------------
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
@ 031   ----------------------------------------
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        An3 
	.byte		N48   , Cn4 
	.byte	W48
@ 032   ----------------------------------------
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
@ 033   ----------------------------------------
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        Fn3 
	.byte		N48   , An3 
	.byte	W48
@ 034   ----------------------------------------
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
@ 035   ----------------------------------------
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        An3 
	.byte		N48   , Cn4 
	.byte	W48
@ 036   ----------------------------------------
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
@ 037   ----------------------------------------
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        Fn3 
	.byte		N48   , An3 
	.byte	W48
@ 038   ----------------------------------------
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
@ 039   ----------------------------------------
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        An3 
	.byte		N48   , Cn4 
	.byte	W48
@ 040   ----------------------------------------
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
@ 041   ----------------------------------------
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        Fn3 
	.byte		N48   , An3 
	.byte	W48
@ 042   ----------------------------------------
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
@ 043   ----------------------------------------
	.byte		        As3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        An3 
	.byte		N48   , Cn4 
	.byte	W48
@ 044   ----------------------------------------
	.byte	W48
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
	.byte		        Fs3 
	.byte		N48   , As3 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Cs4 
	.byte	W48
@ 054   ----------------------------------------
	.byte		        Ds4 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Cs4 
	.byte	W48
@ 055   ----------------------------------------
	.byte		        Fs3 
	.byte		N48   , As3 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Cs4 
	.byte	W48
@ 056   ----------------------------------------
	.byte		N96   , Ds4 
	.byte		N96   , Fs4 
	.byte	W96
@ 057   ----------------------------------------
	.byte		N48   , Ds4 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		        Ds4 
	.byte		N48   , Gs4 
	.byte	W48
@ 058   ----------------------------------------
	.byte		        Ds4 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		        As3 
	.byte		N48   , Ds4 
	.byte	W48
@ 059   ----------------------------------------
	.byte		N72   , Fn3 
	.byte		N72   , Gs3 
	.byte	W72
	.byte		N24   , Fs3 
	.byte		N24   , As3 
	.byte	W24
@ 060   ----------------------------------------
	.byte		N48   
	.byte		N48   , Ds4 
	.byte	W48
	.byte		N06   , As3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 061   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , As3 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Cs4 
	.byte	W48
@ 062   ----------------------------------------
	.byte		        Ds4 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Cs4 
	.byte	W48
@ 063   ----------------------------------------
	.byte		        Fs3 
	.byte		N48   , As3 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Cs4 
	.byte	W48
@ 064   ----------------------------------------
	.byte		N96   , Ds4 
	.byte		N96   , Fs4 
	.byte	W96
@ 065   ----------------------------------------
	.byte		N48   , Ds4 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		        Ds4 
	.byte		N48   , Gs4 
	.byte	W48
@ 066   ----------------------------------------
	.byte		        Ds4 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		        As3 
	.byte		N48   , Ds4 
	.byte	W48
@ 067   ----------------------------------------
	.byte		N72   , Fn3 
	.byte		N72   , Gs3 
	.byte	W72
	.byte		N24   , Fs3 
	.byte		N24   , As3 
	.byte	W24
@ 068   ----------------------------------------
	.byte		N48   
	.byte		N48   , Ds4 
	.byte	W48
	.byte		N12   , As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
@ 069   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , As3 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Cs4 
	.byte	W48
@ 070   ----------------------------------------
	.byte		        Ds4 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Cs4 
	.byte	W48
@ 071   ----------------------------------------
	.byte		        Fs3 
	.byte		N48   , As3 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Cs4 
	.byte	W48
@ 072   ----------------------------------------
	.byte		N96   , Ds4 
	.byte		N96   , Fs4 
	.byte	W96
@ 073   ----------------------------------------
	.byte		N48   , Ds4 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		        Ds4 
	.byte		N48   , Gs4 
	.byte	W48
@ 074   ----------------------------------------
	.byte		        Ds4 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		        As3 
	.byte		N48   , Ds4 
	.byte	W48
@ 075   ----------------------------------------
	.byte		N72   , Fn3 
	.byte		N72   , Gs3 
	.byte	W72
	.byte		N24   , Fs3 
	.byte		N24   , As3 
	.byte	W24
@ 076   ----------------------------------------
	.byte		N48   
	.byte		N48   , Ds4 
	.byte	W48
	.byte		N06   , As3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 077   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Ds4 
	.byte	W48
@ 078   ----------------------------------------
	.byte		        An3 
	.byte		N48   , En4 
	.byte	W48
	.byte		        Cn4 
	.byte		N48   , Fs4 
	.byte	W48
@ 079   ----------------------------------------
	.byte		        Cs4 
	.byte		N48   , Gs4 
	.byte	W48
	.byte		        Cs4 
	.byte		N48   , An4 
	.byte	W48
@ 080   ----------------------------------------
	.byte		N48   
	.byte		N48   , Cs5 
	.byte	W48
	.byte		        Gs4 
	.byte		N48   , Cn5 
	.byte	W48
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_touhou10_stage2_4:
	.byte	KEYSH , mus_touhou10_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_touhou10_stage2_mvl/mxv
	.byte		PAN   , c_v-22
	.byte		N12   , Cs1 , v088
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 001   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 003   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N24   , Cn2 
	.byte	W24
@ 004   ----------------------------------------
	.byte		N12   , Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 005   ----------------------------------------
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 007   ----------------------------------------
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 008   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 009   ----------------------------------------
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 011   ----------------------------------------
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 013   ----------------------------------------
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        Bn0 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 018   ----------------------------------------
	.byte		        Bn0 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 019   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 021   ----------------------------------------
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 022   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 024   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Bn0 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 026   ----------------------------------------
	.byte		        Bn0 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 027   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N96   , Ds1 
	.byte	W96
@ 029   ----------------------------------------
	.byte		N48   , Fs0 
	.byte	W48
	.byte		        An0 
	.byte	W48
@ 030   ----------------------------------------
	.byte		        As0 
	.byte	W48
	.byte		        Fs1 
	.byte	W48
@ 031   ----------------------------------------
	.byte		        Fs0 
	.byte	W48
	.byte		        Fn0 
	.byte	W48
@ 032   ----------------------------------------
	.byte		N12   , Ds0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 033   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 034   ----------------------------------------
	.byte		        As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 035   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 036   ----------------------------------------
	.byte		        Ds0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 037   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 038   ----------------------------------------
	.byte		        As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 039   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 040   ----------------------------------------
	.byte		        Ds0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds0 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 041   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 042   ----------------------------------------
	.byte		        As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
@ 043   ----------------------------------------
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fn0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
@ 044   ----------------------------------------
	.byte	W48
@ 045   ----------------------------------------
@ 046   ----------------------------------------
	.byte		        As2 , v048
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 047   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 048   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 049   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 050   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 051   ----------------------------------------
	.byte		        Gs2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 052   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 053   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N12   
	.byte	W12
@ 054   ----------------------------------------
	.byte		N48   , Bn0 , v088
	.byte	W48
	.byte		        Cs1 
	.byte	W48
@ 055   ----------------------------------------
	.byte		        Ds1 
	.byte	W48
	.byte		        Cs1 
	.byte	W48
@ 056   ----------------------------------------
	.byte		        Bn0 
	.byte	W48
	.byte		        Cs1 
	.byte	W48
@ 057   ----------------------------------------
	.byte		N96   , Ds1 
	.byte	W96
@ 058   ----------------------------------------
	.byte		        Bn0 
	.byte	W96
@ 059   ----------------------------------------
	.byte		N48   , Gs0 
	.byte	W48
	.byte		        As0 
	.byte	W48
@ 060   ----------------------------------------
	.byte		        Bn0 
	.byte	W48
	.byte		        Cs1 
	.byte	W48
@ 061   ----------------------------------------
	.byte		        Ds1 
	.byte	W48
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
@ 062   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
@ 064   ----------------------------------------
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 065   ----------------------------------------
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 066   ----------------------------------------
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 067   ----------------------------------------
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 068   ----------------------------------------
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 069   ----------------------------------------
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 070   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 071   ----------------------------------------
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
@ 072   ----------------------------------------
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 073   ----------------------------------------
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 074   ----------------------------------------
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 075   ----------------------------------------
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 076   ----------------------------------------
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 077   ----------------------------------------
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
@ 078   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 079   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 080   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 081   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N24   , Cn2 
	.byte	W24
@ 082   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_touhou10_stage2_5:
	.byte	KEYSH , mus_touhou10_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou10_stage2_mvl/mxv
	.byte		PAN   , c_v-22
	.byte		N48   , Fs1 , v068
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        Gs1 
	.byte		N48   , Ds2 
	.byte	W48
@ 001   ----------------------------------------
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Fs2 
	.byte	W48
@ 002   ----------------------------------------
	.byte		        Cs2 
	.byte		N48   , Gs2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , An2 
	.byte	W48
@ 003   ----------------------------------------
	.byte		N48   
	.byte		N48   , Cs3 
	.byte	W48
	.byte		        Gs2 
	.byte		N48   , Cn3 
	.byte	W48
@ 004   ----------------------------------------
	.byte		        Cs2 
	.byte		N48   , En2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , En2 
	.byte	W48
@ 005   ----------------------------------------
	.byte		        Cs2 
	.byte		N48   , En2 
	.byte	W48
	.byte		        Gs1 
	.byte		N48   , Cn2 
	.byte	W48
@ 006   ----------------------------------------
	.byte		        Cs2 
	.byte		N48   , En2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , En2 
	.byte	W48
@ 007   ----------------------------------------
	.byte		        Cs2 
	.byte		N48   , En2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Ds2 
	.byte	W48
@ 008   ----------------------------------------
	.byte		        Cs2 
	.byte		N48   , En2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , En2 
	.byte	W48
@ 009   ----------------------------------------
	.byte		        Cs2 
	.byte		N48   , En2 
	.byte	W48
	.byte		        Gs1 
	.byte		N48   , Cn2 
	.byte	W48
@ 010   ----------------------------------------
	.byte		        Cs2 
	.byte		N48   , En2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , En2 
	.byte	W48
@ 011   ----------------------------------------
	.byte		        Cs2 
	.byte		N48   , En2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Ds2 
	.byte	W48
@ 012   ----------------------------------------
	.byte		        An1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        Bn1 
	.byte		N48   , En2 
	.byte	W48
@ 013   ----------------------------------------
	.byte		        Fs2 
	.byte		N48   , An2 
	.byte	W48
	.byte		        Bn1 
	.byte		N48   , En2 
	.byte	W48
@ 014   ----------------------------------------
	.byte		        An1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        Bn1 
	.byte		N48   , En2 
	.byte	W48
@ 015   ----------------------------------------
	.byte		N96   , Cs2 
	.byte		N96   , Fs2 
	.byte	W96
@ 016   ----------------------------------------
	.byte		N48   
	.byte		N48   , An2 
	.byte	W48
	.byte		        Fs2 
	.byte		N48   , Bn2 
	.byte	W48
@ 017   ----------------------------------------
	.byte		        Fs2 
	.byte		N48   , An2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , Fs2 
	.byte	W48
@ 018   ----------------------------------------
	.byte		N72   , Gs1 
	.byte		N72   , Bn1 
	.byte	W72
	.byte		N24   , An1 
	.byte		N24   , Cs2 
	.byte	W24
@ 019   ----------------------------------------
	.byte		N48   
	.byte		N48   , Fs2 
	.byte	W48
	.byte		N12   , Cs2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Cs2 
	.byte		N12   , Fn2 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N48   , An1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        Bn1 
	.byte		N48   , En2 
	.byte	W48
@ 021   ----------------------------------------
	.byte		        Fs2 
	.byte		N48   , An2 
	.byte	W48
	.byte		        Bn1 
	.byte		N48   , En2 
	.byte	W48
@ 022   ----------------------------------------
	.byte		        An1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        Bn1 
	.byte		N48   , En2 
	.byte	W48
@ 023   ----------------------------------------
	.byte		N96   , Cs2 
	.byte		N96   , Fs2 
	.byte	W96
@ 024   ----------------------------------------
	.byte		N48   
	.byte		N48   , An2 
	.byte	W48
	.byte		        Fs2 
	.byte		N48   , Bn2 
	.byte	W48
@ 025   ----------------------------------------
	.byte		        Fs2 
	.byte		N48   , An2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , Fs2 
	.byte	W48
@ 026   ----------------------------------------
	.byte		N72   , Gs1 
	.byte		N72   , Bn1 
	.byte	W72
	.byte		N24   , An1 
	.byte		N24   , Cs2 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N48   
	.byte		N48   , Fs2 
	.byte	W48
	.byte		N06   , Cs2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		N12   , Cs2 
	.byte		N12   , Fs2 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N48   , As1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
@ 029   ----------------------------------------
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        Fn1 
	.byte		N48   , An1 
	.byte	W48
@ 030   ----------------------------------------
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
@ 031   ----------------------------------------
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , Cn2 
	.byte	W48
@ 032   ----------------------------------------
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
@ 033   ----------------------------------------
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        Fn1 
	.byte		N48   , An1 
	.byte	W48
@ 034   ----------------------------------------
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
@ 035   ----------------------------------------
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , Cn2 
	.byte	W48
@ 036   ----------------------------------------
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
@ 037   ----------------------------------------
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        Fn1 
	.byte		N48   , An1 
	.byte	W48
@ 038   ----------------------------------------
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
@ 039   ----------------------------------------
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , Cn2 
	.byte	W48
@ 040   ----------------------------------------
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
@ 041   ----------------------------------------
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        Fn1 
	.byte		N48   , An1 
	.byte	W48
@ 042   ----------------------------------------
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
@ 043   ----------------------------------------
	.byte		        As1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        An1 
	.byte		N48   , Cn2 
	.byte	W48
@ 044   ----------------------------------------
	.byte	W48
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
	.byte		        Fs1 
	.byte		N48   , As1 
	.byte	W48
	.byte		        Gs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 054   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Gs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 055   ----------------------------------------
	.byte		        Fs1 
	.byte		N48   , As1 
	.byte	W48
	.byte		        Gs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 056   ----------------------------------------
	.byte		N96   , As1 
	.byte		N96   , Ds2 
	.byte	W96
@ 057   ----------------------------------------
	.byte		N48   
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Ds2 
	.byte		N48   , Gs2 
	.byte	W48
@ 058   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        As1 
	.byte		N48   , Ds2 
	.byte	W48
@ 059   ----------------------------------------
	.byte		N72   , Fn1 
	.byte		N72   , Gs1 
	.byte	W72
	.byte		N24   , Fs1 
	.byte		N24   , As1 
	.byte	W24
@ 060   ----------------------------------------
	.byte		N48   
	.byte		N48   , Ds2 
	.byte	W48
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , As1 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , As1 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte	W12
@ 061   ----------------------------------------
	.byte		N48   , Fs1 
	.byte		N48   , As1 
	.byte	W48
	.byte		        Gs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 062   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Gs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 063   ----------------------------------------
	.byte		        Fs1 
	.byte		N48   , As1 
	.byte	W48
	.byte		        Gs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 064   ----------------------------------------
	.byte		N96   , As1 
	.byte		N96   , Ds2 
	.byte	W96
@ 065   ----------------------------------------
	.byte		N48   
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Ds2 
	.byte		N48   , Gs2 
	.byte	W48
@ 066   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        As1 
	.byte		N48   , Ds2 
	.byte	W48
@ 067   ----------------------------------------
	.byte		N72   , Fn1 
	.byte		N72   , Gs1 
	.byte	W72
	.byte		N24   , Fs1 
	.byte		N24   , As1 
	.byte	W24
@ 068   ----------------------------------------
	.byte		N48   
	.byte		N48   , Ds2 
	.byte	W48
	.byte		N12   , As1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        As1 
	.byte		N12   , Dn2 
	.byte	W12
@ 069   ----------------------------------------
	.byte		N48   , Fs1 
	.byte		N48   , As1 
	.byte	W48
	.byte		        Gs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 070   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Gs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 071   ----------------------------------------
	.byte		        Fs1 
	.byte		N48   , As1 
	.byte	W48
	.byte		        Gs1 
	.byte		N48   , Cs2 
	.byte	W48
@ 072   ----------------------------------------
	.byte		N96   , As1 
	.byte		N96   , Ds2 
	.byte	W96
@ 073   ----------------------------------------
	.byte		N48   
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Ds2 
	.byte		N48   , Gs2 
	.byte	W48
@ 074   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        As1 
	.byte		N48   , Ds2 
	.byte	W48
@ 075   ----------------------------------------
	.byte		N72   , Fn1 
	.byte		N72   , Gs1 
	.byte	W72
	.byte		N24   , Fs1 
	.byte		N24   , As1 
	.byte	W24
@ 076   ----------------------------------------
	.byte		N48   
	.byte		N48   , Ds2 
	.byte	W48
	.byte		N06   , As1 
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , As1 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        As1 
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Fs1 
	.byte		N06   , As1 
	.byte	W06
	.byte		        Fn1 
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N12   , As1 
	.byte		N12   , Ds2 
	.byte	W12
@ 077   ----------------------------------------
	.byte		N48   , Fs1 
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        Gs1 
	.byte		N48   , Ds2 
	.byte	W48
@ 078   ----------------------------------------
	.byte		        An1 
	.byte		N48   , En2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Fs2 
	.byte	W48
@ 079   ----------------------------------------
	.byte		        Cs2 
	.byte		N48   , Gs2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , An2 
	.byte	W48
@ 080   ----------------------------------------
	.byte		N48   
	.byte		N48   , Cs3 
	.byte	W48
	.byte		        Gs2 
	.byte		N48   , Cn3 
	.byte	W48
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.10) ****************@

mus_touhou10_stage2_6:
	.byte	KEYSH , mus_touhou10_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 127*mus_touhou10_stage2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Cn1 , v100
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 001   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 002   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W15
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
@ 003   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W15
	.byte		        Cn1 
	.byte	W03
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 004   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W21
@ 005   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W09
@ 006   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W21
@ 007   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 008   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W21
@ 009   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 010   ----------------------------------------
mus_touhou10_stage2_6_010:
	.byte		N03   , Cn1 , v100
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte		N03   , Cs2 
	.byte	W03
	.byte	PEND
	.byte	W09
	.byte		        Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , Dn1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W21
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_6_010
	.byte	W09
	.byte		N03   , Dn1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , Dn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 012   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 013   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 014   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 015   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 016   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 017   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 018   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 019   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 020   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 021   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 022   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 023   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 024   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 025   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 026   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 027   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W03
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W03
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 028   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
@ 029   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
@ 030   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
@ 031   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
@ 032   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
@ 033   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
@ 034   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
@ 035   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 036   ----------------------------------------
mus_touhou10_stage2_6_036:
	.byte		N03   , Cn1 , v100
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	PEND
	.byte	W21
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W15
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_6_036
	.byte	W21
	.byte		N03   , Cn1 , v100
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W15
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_6_036
	.byte	W21
	.byte		N03   , Cn1 , v100
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W15
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
@ 039   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_6_036
	.byte	W21
	.byte		N03   , Cn1 , v100
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_6_036
	.byte	W09
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_6_036
	.byte	W09
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_6_010
	.byte	W09
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_6_010
	.byte	W21
	.byte		N03   , Cn1 , v100
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W15
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
@ 044   ----------------------------------------
	.byte	W24
	.byte		        Fn2 
	.byte	W03
	.byte	W21
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W72
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
@ 049   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
@ 050   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte	W03
	.byte	W09
@ 051   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
@ 052   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
@ 053   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 054   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 055   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 056   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 057   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 058   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 059   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 060   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W32
	.byte	W01
	.byte		        En1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
@ 061   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 062   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 063   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 064   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 065   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 066   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 067   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 068   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 069   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 070   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 071   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 072   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 073   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 074   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 075   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 076   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W03
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W03
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 077   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 078   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 079   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W15
	.byte		        Cn1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W21
@ 080   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		        Ds1 , v127
	.byte		N03   , En1 , v100
	.byte	W03
	.byte	W15
	.byte		        Cn1 
	.byte	W03
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.10) ****************@

mus_touhou10_stage2_7:
	.byte	KEYSH , mus_touhou10_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 127*mus_touhou10_stage2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Fs1 , v088
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 001   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 002   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 003   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 004   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 005   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 006   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 007   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 008   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 009   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 010   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 011   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 012   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 013   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 014   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 015   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 016   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 017   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 018   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 019   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 020   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 021   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 022   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 023   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 024   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 025   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 026   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 027   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
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
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 036   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 037   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 038   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 039   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 040   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 041   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 042   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 043   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W44
	.byte	W01
@ 044   ----------------------------------------
	.byte	W48
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
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 054   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 055   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 056   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 057   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 058   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 059   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 060   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W56
	.byte	W01
@ 061   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 062   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 063   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 064   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 065   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 066   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 067   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 068   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 069   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 070   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 071   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 072   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 073   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 074   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 075   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 076   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 077   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
@ 078   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 079   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 080   ----------------------------------------
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W09
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 8 (Midi-Chn.10) ****************@

mus_touhou10_stage2_8:
	.byte	KEYSH , mus_touhou10_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 127*mus_touhou10_stage2_mvl/mxv
	.byte		PAN   , c_v+0
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
	.byte	W36
	.byte		N03   , Cn2 , v040
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn2 , v044
	.byte	W03
	.byte		        Bn1 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn1 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		        An1 , v052
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Gn1 
	.byte	W03
	.byte		        Gn1 , v056
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Fn1 , v060
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
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
	.byte	W48
	.byte		        Bn1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte	W09
	.byte		        Gn1 
	.byte	W03
	.byte	W09
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
	.byte	W36
	.byte		        Cn2 , v044
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn2 , v048
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn1 , v052
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Bn1 , v056
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		        An1 , v060
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        An1 , v064
	.byte	W03
	.byte		        Gn1 
	.byte	W03
	.byte		        Gn1 , v068
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Fn1 , v072
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Fn1 , v076
	.byte	W03
	.byte		N03   
	.byte	W03
@ 044   ----------------------------------------
@ 045   ----------------------------------------
	.byte		        Cn2 
	.byte	W03
	.byte		        Cn2 , v072
	.byte	W03
	.byte		        Bn1 
	.byte	W03
	.byte		        Bn1 , v068
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		        An1 , v064
	.byte	W03
	.byte		        Gn1 , v060
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W24
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
	.byte	FINE

@**************** Track 9 (Midi-Chn.11) ****************@

mus_touhou10_stage2_9:
	.byte	KEYSH , mus_touhou10_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		MOD   , 32
	.byte		VOL   , 127*mus_touhou10_stage2_mvl/mxv
	.byte		PAN   , c_v-32
	.byte	W24
	.byte		N12   , Fs3 , v088
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W36
	.byte		        Gs3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte	W12
@ 001   ----------------------------------------
mus_touhou10_stage2_9_001:
	.byte	W24
	.byte		N12   , An3 , v088
	.byte		N12   , En4 
	.byte	W12
	.byte	PEND
	.byte	W36
	.byte		        Cn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	W12
@ 002   ----------------------------------------
mus_touhou10_stage2_9_002:
	.byte	W24
	.byte		N12   , Cs4 , v088
	.byte		N12   , Gs4 
	.byte	W12
	.byte	PEND
	.byte	W36
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte	W12
@ 003   ----------------------------------------
mus_touhou10_stage2_9_003:
	.byte	W24
	.byte		MOD   , 0
	.byte		N24   , An4 , v088
	.byte		N24   , Cs5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte	PEND
	.byte		        0
	.byte		N06   , An4 
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		MOD   , 0
	.byte		N24   , Gs4 
	.byte		N24   , Cn5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 004   ----------------------------------------
	.byte		        0
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte		N12   , En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , En4 
	.byte		N18   , Cs5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , En4 
	.byte		N24   , Cs5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 009   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , Ds4 
	.byte		N18   , Cn5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N18   , Cn4 
	.byte		N18   , Gs4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		N12   , An3 
	.byte		N12   , Fs4 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte		N12   , En5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte		N12   , En5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Cn5 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , En4 
	.byte		N18   , Cs5 
	.byte		N18   , En5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , En4 
	.byte		N24   , Cs5 
	.byte		N24   , En5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 011   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte		N12   , En5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte		N12   , En5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , Ds4 
	.byte		N48   , Cn5 
	.byte		N48   , Ds5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 012   ----------------------------------------
	.byte		        0
	.byte		N12   , An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		        Cs4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N18   , Fs4 
	.byte		N18   , An4 
	.byte	W18
	.byte		        En4 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , Bn3 
	.byte		N18   , En4 
	.byte	W18
	.byte		        Cs4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Fs4 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		        Fs4 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Gs4 
	.byte		N12   , Bn4 
	.byte	W12
@ 015   ----------------------------------------
mus_touhou10_stage2_9_015:
	.byte		MOD   , 0
	.byte		N72   , An4 , v088
	.byte		N72   , Cs5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W48
	.byte	PEND
	.byte		        0
	.byte		N12   , An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , En5 
	.byte	W12
@ 016   ----------------------------------------
mus_touhou10_stage2_9_016:
	.byte		MOD   , 0
	.byte		N60   , Gs4 , v088
	.byte		N60   , Bn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W36
	.byte	PEND
	.byte		        0
	.byte		N12   , Gs4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
@ 018   ----------------------------------------
mus_touhou10_stage2_9_018:
	.byte		MOD   , 0
	.byte		N48   , Gs3 , v088
	.byte		N48   , Bn3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
	.byte	PEND
	.byte		        0
	.byte	W12
	.byte		N12   , Gs3 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N60   
	.byte		N60   , Fs4 
	.byte	W12
@ 019   ----------------------------------------
mus_touhou10_stage2_9_019:
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W36
	.byte	PEND
	.byte		        0
	.byte		N12   , Cs4 , v088
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		        Cs4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N18   , Fs4 
	.byte		N18   , An4 
	.byte	W18
	.byte		        En4 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , Bn3 
	.byte		N18   , En4 
	.byte	W18
	.byte		        Cs4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Fs4 
	.byte	W12
@ 022   ----------------------------------------
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		        Fs4 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Gs4 
	.byte		N12   , Bn4 
	.byte	W12
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_015
	.byte		MOD   , 0
	.byte		N12   , An4 , v088
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , En5 
	.byte	W12
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_016
	.byte		MOD   , 0
	.byte		N12   , Gs4 , v088
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , En4 
	.byte	W12
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_018
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , Gs3 , v088
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N60   
	.byte		N60   , Fs4 
	.byte	W12
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_019
	.byte		MOD   , 0
	.byte		N06   , Cs4 , v088
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        An3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N12   , Cs4 
	.byte		N12   , Fs4 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , Cs4 
	.byte		N18   , As4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 029   ----------------------------------------
	.byte		N12   , As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , Cn4 
	.byte		N18   , An4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N18   , An3 
	.byte		N18   , Fn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		N12   , Fs3 
	.byte		N12   , Ds4 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , Cs4 
	.byte		N18   , As4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 031   ----------------------------------------
	.byte		N12   , As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , Cn4 
	.byte		N48   , An4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 032   ----------------------------------------
	.byte		        0
	.byte		N12   , Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , Cs4 
	.byte		N18   , As4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 033   ----------------------------------------
	.byte		N12   , As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , Cn4 
	.byte		N18   , An4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N18   , An3 
	.byte		N18   , Fn4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N12   , Fs3 
	.byte		N12   , Ds4 
	.byte	W12
@ 034   ----------------------------------------
	.byte		        As4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , As4 
	.byte		N18   , Cs5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , As4 
	.byte		N24   , Cs5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 035   ----------------------------------------
	.byte		N12   , Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , An4 
	.byte		N48   , Cn5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 036   ----------------------------------------
mus_touhou10_stage2_9_036:
	.byte		MOD   , 0
	.byte		N12   , As4 , v088
	.byte		N12   , Cs5 
	.byte	W12
	.byte	PEND
	.byte		        As4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , As4 
	.byte		N18   , Cs5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N18   , As4 
	.byte		N24   , Cs5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 037   ----------------------------------------
	.byte		N12   , Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , An4 
	.byte		N18   , Cn5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
@ 038   ----------------------------------------
	.byte		        As4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , As4 
	.byte		N18   , Cs5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , As4 
	.byte		N24   , Cs5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 039   ----------------------------------------
	.byte		N12   , Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , An4 
	.byte		N48   , Cn5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_036
	.byte		N12   , As4 , v088
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , As4 
	.byte		N18   , Cs5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , As4 
	.byte		N24   , Cs5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 041   ----------------------------------------
	.byte		N12   , Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , An4 
	.byte		N18   , Cn5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N12   , Ds4 
	.byte		N12   , Fs4 
	.byte	W12
@ 042   ----------------------------------------
	.byte		        As4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N18   , As4 
	.byte		N18   , Cs5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        0
	.byte		N24   , As4 
	.byte		N24   , Cs5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        0
	.byte	W06
@ 043   ----------------------------------------
	.byte		N12   , Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		MOD   , 0
	.byte		N48   , An4 
	.byte		N48   , Cn5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
@ 044   ----------------------------------------
@ 045   ----------------------------------------
	.byte		        0
	.byte	W48
@ 046   ----------------------------------------
@ 047   ----------------------------------------
	.byte		N12   , Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 048   ----------------------------------------
	.byte		N18   , Ds4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Gs3 
	.byte		N18   , Cs4 
	.byte	W18
	.byte		        As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 049   ----------------------------------------
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 
	.byte	W12
@ 050   ----------------------------------------
mus_touhou10_stage2_9_050:
	.byte		MOD   , 0
	.byte		N72   , Fs4 , v088
	.byte		N72   , As4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W48
	.byte	PEND
	.byte		        0
	.byte		N12   , Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 051   ----------------------------------------
mus_touhou10_stage2_9_051:
	.byte		MOD   , 0
	.byte		N60   , Fn4 , v088
	.byte		N60   , Gs4 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W36
	.byte	PEND
	.byte		        0
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 052   ----------------------------------------
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
@ 053   ----------------------------------------
mus_touhou10_stage2_9_053:
	.byte		MOD   , 0
	.byte		N48   , Fn3 , v088
	.byte		N48   , Gs3 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
	.byte		        127
	.byte	W24
	.byte	PEND
	.byte		        0
	.byte	W12
	.byte		N12   , Fn3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W12
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_019
	.byte		MOD   , 0
	.byte		N12   , As3 , v088
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
@ 055   ----------------------------------------
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 056   ----------------------------------------
	.byte		N18   , Ds4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Gs3 
	.byte		N18   , Cs4 
	.byte	W18
	.byte		        As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 057   ----------------------------------------
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 
	.byte	W12
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_050
	.byte		MOD   , 0
	.byte		N12   , Fs4 , v088
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_051
	.byte		MOD   , 0
	.byte		N12   , Fn4 , v088
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 060   ----------------------------------------
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_053
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , Fn3 , v088
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W12
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_019
	.byte		MOD   , 0
	.byte		N06   , As3 , v088
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 064   ----------------------------------------
	.byte		N18   , Ds4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Gs3 
	.byte		N18   , Cs4 
	.byte	W18
	.byte		        As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 065   ----------------------------------------
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 
	.byte	W12
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_050
	.byte		MOD   , 0
	.byte		N12   , Fs4 , v088
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_051
	.byte		MOD   , 0
	.byte		N12   , Fn4 , v088
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 068   ----------------------------------------
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_053
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , Fn3 , v088
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W12
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_019
	.byte		MOD   , 0
	.byte		N12   , As3 , v088
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
@ 071   ----------------------------------------
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 072   ----------------------------------------
	.byte		N18   , Ds4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		        Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Gs3 
	.byte		N18   , Cs4 
	.byte	W18
	.byte		        As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 073   ----------------------------------------
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        Ds4 
	.byte		N18   , Fs4 
	.byte	W18
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 
	.byte	W12
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_050
	.byte		MOD   , 0
	.byte		N12   , Fs4 , v088
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_051
	.byte		MOD   , 0
	.byte		N12   , Fn4 , v088
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
@ 076   ----------------------------------------
	.byte		        Ds4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Cs4 
	.byte	W12
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_053
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , Fn3 , v088
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , As3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W12
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_019
	.byte		MOD   , 0
	.byte		N06   , As3 , v088
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		        As3 
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Fs3 
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fn3 
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , As3 
	.byte		N12   , Ds4 
	.byte	W12
@ 079   ----------------------------------------
	.byte		MOD   , 32
	.byte	W24
	.byte		N12   , Fs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W36
	.byte		        Gs3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte	W12
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_001
	.byte	W36
	.byte		N12   , Cn4 , v088
	.byte		N12   , Fs4 
	.byte	W12
	.byte	W12
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_002
	.byte	W36
	.byte		N12   , Cs4 , v088
	.byte		N12   , An4 
	.byte	W12
	.byte	W12
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_9_003
	.byte		N06   , An4 , v088
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		MOD   , 0
	.byte		N24   , Gs4 
	.byte		N24   , Cn5 
	.byte	W12
	.byte		MOD   , 64
	.byte	W06
	.byte		        96
	.byte	W06
@ 083   ----------------------------------------
	.byte	FINE

@**************** Track 10 (Midi-Chn.12) ****************@

mus_touhou10_stage2_10:
	.byte	KEYSH , mus_touhou10_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		MOD   , 32
	.byte		VOL   , 127*mus_touhou10_stage2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
mus_touhou10_stage2_10_003:
	.byte	W24
	.byte		N24   , An4 , v100
	.byte		N24   , Cs5 
	.byte	W24
	.byte	PEND
	.byte		N06   , An4 
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		N24   , Gs4 
	.byte		N24   , Cn5 
	.byte	W24
@ 004   ----------------------------------------
	.byte		N12   , En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		N24   , En4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte	W06
@ 005   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N18   , Ds4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		        Cn4 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Fs4 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		N24   , En4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte	W06
@ 007   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N48   , Ds4 
	.byte		N48   , Cn5 
	.byte	W48
@ 008   ----------------------------------------
	.byte		N12   , En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		N24   , En4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte	W06
@ 009   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N18   , Ds4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		        Cn4 
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Fs4 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N18   , En4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		N24   , En4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte	W06
@ 011   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N48   , Ds4 
	.byte		N48   , Cn5 
	.byte	W48
@ 012   ----------------------------------------
	.byte		N12   , An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N18   , En5 
	.byte		N18   , Gs5 
	.byte	W18
	.byte		        Cs5 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		N12   , En5 
	.byte		N12   , Gs5 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N18   , Fs5 
	.byte		N18   , An5 
	.byte	W18
	.byte		        En5 
	.byte		N18   , Gs5 
	.byte	W18
	.byte		N12   , Cs5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N18   , Bn4 
	.byte		N18   , En5 
	.byte	W18
	.byte		        Cs5 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		N12   , Cs5 
	.byte		N12   , Fs5 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N18   , En5 
	.byte		N18   , Gs5 
	.byte	W18
	.byte		        Fs5 
	.byte		N18   , An5 
	.byte	W18
	.byte		N12   , Gs5 
	.byte		N12   , Bn5 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N72   , An5 
	.byte		N72   , Cs6 
	.byte	W72
	.byte		N12   , An5 
	.byte		N12   , Cs6 
	.byte	W12
	.byte		        Bn5 
	.byte		N12   , En6 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N60   , Gs5 
	.byte		N60   , Bn5 
	.byte	W60
	.byte		N12   , Gs5 
	.byte		N12   , Bn5 
	.byte	W12
	.byte		        Fs5 
	.byte		N12   , An5 
	.byte	W12
	.byte		        En5 
	.byte		N12   , Gs5 
	.byte	W12
@ 017   ----------------------------------------
	.byte		        Fs5 
	.byte		N12   , An5 
	.byte	W12
	.byte		        En5 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , En5 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N48   , Gs4 
	.byte		N48   , Bn4 
	.byte	W48
	.byte	W12
	.byte		N12   , Gs4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N60   
	.byte		N60   , Fs5 
	.byte	W12
@ 019   ----------------------------------------
	.byte	W48
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fn5 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N18   , En5 
	.byte		N18   , Gs5 
	.byte	W18
	.byte		        Cs5 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		N12   , En5 
	.byte		N12   , Gs5 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N18   , Fs5 
	.byte		N18   , An5 
	.byte	W18
	.byte		        En5 
	.byte		N18   , Gs5 
	.byte	W18
	.byte		N12   , Cs5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N18   , Bn4 
	.byte		N18   , En5 
	.byte	W18
	.byte		        Cs5 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		N12   , Cs5 
	.byte		N12   , Fs5 
	.byte	W12
@ 022   ----------------------------------------
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N12   
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N18   , En5 
	.byte		N18   , Gs5 
	.byte	W18
	.byte		        Fs5 
	.byte		N18   , An5 
	.byte	W18
	.byte		N12   , Gs5 
	.byte		N12   , Bn5 
	.byte	W12
@ 023   ----------------------------------------
	.byte		N72   , An5 
	.byte		N72   , Cs6 
	.byte	W72
	.byte		N12   , An5 
	.byte		N12   , Cs6 
	.byte	W12
	.byte		        Bn5 
	.byte		N12   , En6 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N60   , Gs5 
	.byte		N60   , Bn5 
	.byte	W60
	.byte		N12   , Gs5 
	.byte		N12   , Bn5 
	.byte	W12
	.byte		        Fs5 
	.byte		N12   , An5 
	.byte	W12
	.byte		        En5 
	.byte		N12   , Gs5 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Fs5 
	.byte		N12   , An5 
	.byte	W12
	.byte		        En5 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , En5 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N48   , Gs4 
	.byte		N48   , Bn4 
	.byte	W48
	.byte	W12
	.byte		N12   , Gs4 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N60   
	.byte		N60   , Fs5 
	.byte	W12
@ 027   ----------------------------------------
	.byte	W48
	.byte		N06   , Cs5 
	.byte		N06   , Fs5 
	.byte	W06
	.byte		        An4 
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte		N06   , Fs5 
	.byte	W06
	.byte		        An4 
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte		N06   , Bn4 
	.byte	W06
	.byte		N12   , Cs5 
	.byte		N12   , Fs5 
	.byte	W12
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
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , As4 
	.byte	W18
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
	.byte	W06
@ 037   ----------------------------------------
	.byte		N12   , As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N18   , Cn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		        An3 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , Fs3 
	.byte		N12   , Ds4 
	.byte	W12
@ 038   ----------------------------------------
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , As4 
	.byte	W18
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
	.byte	W06
@ 039   ----------------------------------------
	.byte		N12   , As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N48   , Cn4 
	.byte		N48   , An4 
	.byte	W48
@ 040   ----------------------------------------
	.byte		N12   , Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , As4 
	.byte	W18
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
	.byte	W06
@ 041   ----------------------------------------
	.byte		N12   , As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N18   , Cn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		        An3 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , Fs3 
	.byte		N12   , Ds4 
	.byte	W12
@ 042   ----------------------------------------
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , An4 
	.byte	W12
	.byte		N18   , Cs4 
	.byte		N18   , As4 
	.byte	W18
	.byte		N24   , Cs4 
	.byte		N24   , As4 
	.byte	W24
	.byte	W06
@ 043   ----------------------------------------
	.byte		N12   , As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N48   , Cn4 
	.byte		N48   , An4 
	.byte	W48
@ 044   ----------------------------------------
	.byte	W48
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
	.byte	W48
	.byte		N06   , As4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        As4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N12   , As4 
	.byte		N12   , Ds5 
	.byte	W12
@ 061   ----------------------------------------
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N18   , Cs5 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		        As4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 
	.byte	W12
@ 062   ----------------------------------------
	.byte		N18   , Ds5 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		        Cs5 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		N12   , As4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N18   , Gs4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		        As4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , As4 
	.byte		N12   , Ds5 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N18   , Cs5 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		        Ds5 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		N12   , Fn5 
	.byte		N12   , Gs5 
	.byte	W12
@ 064   ----------------------------------------
	.byte		N72   , Fs5 
	.byte		N72   , As5 
	.byte	W72
	.byte		N12   , Fs5 
	.byte		N12   , As5 
	.byte	W12
	.byte		        Gs5 
	.byte		N12   , Cs6 
	.byte	W12
@ 065   ----------------------------------------
	.byte		N60   , Fn5 
	.byte		N60   , Gs5 
	.byte	W60
	.byte		N12   , Fn5 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        Ds5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fn5 
	.byte	W12
@ 066   ----------------------------------------
	.byte		        Ds5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 067   ----------------------------------------
	.byte		N48   , Fn4 
	.byte		N48   , Gs4 
	.byte	W48
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N60   
	.byte		N60   , Ds5 
	.byte	W12
@ 068   ----------------------------------------
	.byte	W48
	.byte		N12   , As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
@ 069   ----------------------------------------
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N18   , Cs5 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		        As4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 
	.byte	W12
@ 070   ----------------------------------------
	.byte		N18   , Ds5 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		        Cs5 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		N12   , As4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N18   , Gs4 
	.byte		N18   , Cs5 
	.byte	W18
	.byte		        As4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte		N12   , As4 
	.byte		N12   , Ds5 
	.byte	W12
@ 071   ----------------------------------------
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N12   
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N18   , Cs5 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		        Ds5 
	.byte		N18   , Fs5 
	.byte	W18
	.byte		N12   , Fn5 
	.byte		N12   , Gs5 
	.byte	W12
@ 072   ----------------------------------------
	.byte		N72   , Fs5 
	.byte		N72   , As5 
	.byte	W72
	.byte		N12   , Fs5 
	.byte		N12   , As5 
	.byte	W12
	.byte		        Gs5 
	.byte		N12   , Cs6 
	.byte	W12
@ 073   ----------------------------------------
	.byte		N60   , Fn5 
	.byte		N60   , Gs5 
	.byte	W60
	.byte		N12   , Fn5 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        Ds5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fn5 
	.byte	W12
@ 074   ----------------------------------------
	.byte		        Ds5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 075   ----------------------------------------
	.byte		N48   , Fn4 
	.byte		N48   , Gs4 
	.byte	W48
	.byte	W12
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N60   
	.byte		N60   , Ds5 
	.byte	W12
@ 076   ----------------------------------------
	.byte	W48
	.byte		N06   , As4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        As4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N12   , As4 
	.byte		N12   , Ds5 
	.byte	W12
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou10_stage2_10_003
	.byte		N06   , An4 , v100
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Gs4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Fs4 
	.byte		N06   , An4 
	.byte	W06
	.byte		N24   , Gs4 
	.byte		N24   , Cn5 
	.byte	W24
@ 081   ----------------------------------------
	.byte	FINE

@**************** Track 11 (Midi-Chn.13) ****************@

mus_touhou10_stage2_11:
	.byte	KEYSH , mus_touhou10_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou10_stage2_mvl/mxv
	.byte		PAN   , c_v+18
	.byte		N06   , Cs2 , v112
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
@ 001   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
@ 002   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	W06
@ 003   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte	W06
	.byte		N03   , Cs3 
	.byte	W03
	.byte	W03
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N24   , Cn3 
	.byte	W24
@ 004   ----------------------------------------
	.byte		N06   , Fs1 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
@ 005   ----------------------------------------
	.byte		        An1 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	W06
@ 007   ----------------------------------------
	.byte		        An1 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
@ 008   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
@ 009   ----------------------------------------
	.byte		        An1 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte	W06
@ 010   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	W06
@ 011   ----------------------------------------
	.byte		        An1 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
@ 012   ----------------------------------------
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	W06
@ 013   ----------------------------------------
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	W06
@ 015   ----------------------------------------
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte	W06
@ 016   ----------------------------------------
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	W06
@ 017   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte	W06
@ 018   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
@ 019   ----------------------------------------
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte	W06
@ 020   ----------------------------------------
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	W06
@ 021   ----------------------------------------
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
@ 022   ----------------------------------------
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	W06
@ 023   ----------------------------------------
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte	W06
@ 024   ----------------------------------------
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	W06
@ 025   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte	W06
@ 026   ----------------------------------------
	.byte		        Bn1 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
@ 027   ----------------------------------------
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N96   , Ds2 
	.byte	W96
@ 029   ----------------------------------------
	.byte		N48   , Fs1 
	.byte	W48
	.byte		        An1 
	.byte	W48
@ 030   ----------------------------------------
	.byte		        As1 
	.byte	W48
	.byte		        Fs2 
	.byte	W48
@ 031   ----------------------------------------
	.byte		        Fs1 
	.byte	W48
	.byte		        Fn1 
	.byte	W48
@ 032   ----------------------------------------
	.byte		N06   , Ds1 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
@ 033   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
@ 034   ----------------------------------------
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
@ 035   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte	W06
@ 036   ----------------------------------------
	.byte		        Ds1 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
@ 037   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
@ 038   ----------------------------------------
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
@ 039   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte	W06
@ 040   ----------------------------------------
	.byte		        Ds1 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
@ 041   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
@ 042   ----------------------------------------
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
@ 043   ----------------------------------------
	.byte		        Fs1 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte	W06
@ 044   ----------------------------------------
	.byte	W48
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
	.byte	W48
	.byte		        Ds3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W12
@ 061   ----------------------------------------
	.byte		N06   , Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	W06
@ 062   ----------------------------------------
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
@ 063   ----------------------------------------
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	W06
@ 064   ----------------------------------------
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte	W06
@ 065   ----------------------------------------
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	W06
@ 066   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
@ 067   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
@ 068   ----------------------------------------
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte	W06
@ 069   ----------------------------------------
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	W06
@ 070   ----------------------------------------
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
@ 071   ----------------------------------------
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	W06
@ 072   ----------------------------------------
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte	W06
@ 073   ----------------------------------------
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	W06
@ 074   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
@ 075   ----------------------------------------
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte	W06
@ 076   ----------------------------------------
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	W06
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N06   , As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W12
@ 077   ----------------------------------------
	.byte		N06   , Cs2 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
@ 078   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte	W06
@ 079   ----------------------------------------
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte	W06
@ 080   ----------------------------------------
	.byte		        En2 
	.byte	W06
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte	W06
	.byte		N03   , Cs3 
	.byte	W03
	.byte	W03
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N24   , Cn3 
	.byte	W24
@ 081   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_touhou10_stage2:
	.byte	11	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_touhou10_stage2_pri	@ Priority
	.byte	mus_touhou10_stage2_rev	@ Reverb.

	.word	mus_touhou10_stage2_grp

	.word	mus_touhou10_stage2_1
	.word	mus_touhou10_stage2_2
	.word	mus_touhou10_stage2_3
	.word	mus_touhou10_stage2_4
	.word	mus_touhou10_stage2_5
	.word	mus_touhou10_stage2_6
	.word	mus_touhou10_stage2_7
	.word	mus_touhou10_stage2_8
	.word	mus_touhou10_stage2_9
	.word	mus_touhou10_stage2_10
	.word	mus_touhou10_stage2_11

	.end
