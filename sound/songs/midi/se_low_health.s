	.include "MPlayDef.s"

	.equ	se_low_health_grp, voicegroup_rs_sfx_1
	.equ	se_low_health_pri, 3
	.equ	se_low_health_rev, reverb_set+50
	.equ	se_low_health_mvl, 100
	.equ	se_low_health_key, 0
	.equ	se_low_health_tbs, 1
	.equ	se_low_health_exg, 1
	.equ	se_low_health_cmp, 1

	.section .rodata
	.global	se_low_health
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_low_health_1:
	.byte	KEYSH , se_low_health_key+0
se_low_health_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_low_health_tbs/2
	.byte		VOICE , 15
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		VOL   , 127*se_low_health_mvl/mxv
	.byte		BEND  , c_v+17
	.byte		N12   , Dn4 , v080
	.byte	W12
@ 001   ----------------------------------------
	.byte		BEND  , c_v+31
	.byte		N12   , An3 
	.byte	W12
	.byte	W12
@ 002   ----------------------------------------
	.byte		BEND  , c_v+17
	.byte		N12   , Dn4 
	.byte	W12
@ 003   ----------------------------------------
	.byte		BEND  , c_v+31
	.byte		N12   , An3 
	.byte	W12
	.byte	W12
@ 004   ----------------------------------------
	.byte		BEND  , c_v+17
	.byte		N12   , Dn4 
	.byte	W12
@ 005   ----------------------------------------
	.byte		BEND  , c_v+31
	.byte		N12   , An3 
	.byte	W12
	.byte	W12
@ 006   ----------------------------------------
	.byte		BEND  , c_v+17
	.byte		N12   , Dn4 
	.byte	W12
@ 007   ----------------------------------------
	.byte		BEND  , c_v+31
	.byte		N12   , An3 
	.byte	W12
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

se_low_health:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_low_health_pri	@ Priority
	.byte	se_low_health_rev	@ Reverb.

	.word	se_low_health_grp

	.word	se_low_health_1

	.end
