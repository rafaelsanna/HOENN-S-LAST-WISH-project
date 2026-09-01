	.include "MPlayDef.s"

	.equ	mus_touhou5_stage2_grp, voicegroup_ancient_groover
	.equ	mus_touhou5_stage2_pri, 0
	.equ	mus_touhou5_stage2_rev, reverb_set+50
	.equ	mus_touhou5_stage2_mvl, 100
	.equ	mus_touhou5_stage2_key, 0
	.equ	mus_touhou5_stage2_tbs, 1
	.equ	mus_touhou5_stage2_exg, 1
	.equ	mus_touhou5_stage2_cmp, 1

	.section .rodata
	.global	mus_touhou5_stage2
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_touhou5_stage2_1:
	.byte	KEYSH , mus_touhou5_stage2_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 161*mus_touhou5_stage2_tbs/2
	.byte		VOICE , 5
	.byte		VOL   , 64*mus_touhou5_stage2_mvl/mxv
	.byte		PAN   , c_v+18
	.byte		VOL   , 64*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , Gn3 , v088
	.byte	W03
	.byte		VOL   , 65*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        66*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , An3 
	.byte	W03
	.byte		VOL   , 67*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        68*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , As3 
	.byte	W03
	.byte		VOL   , 69*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        70*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , Dn4 
	.byte	W03
	.byte		VOL   , 71*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        72*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , Gn3 
	.byte	W03
	.byte		VOL   , 73*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        74*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , An3 
	.byte	W03
	.byte		VOL   , 75*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        76*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , As3 
	.byte	W03
	.byte		VOL   , 77*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        78*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , Dn4 
	.byte	W03
	.byte		VOL   , 79*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        80*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , Gn3 
	.byte	W03
	.byte		VOL   , 81*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        82*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , An3 
	.byte	W03
	.byte		VOL   , 83*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        84*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , As3 
	.byte	W03
	.byte		VOL   , 85*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        86*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , Dn4 
	.byte	W04
	.byte		VOL   , 87*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W01
	.byte		VOL   , 88*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        89*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , An3 
	.byte	W01
	.byte		VOL   , 90*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        91*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , As3 
	.byte	W01
	.byte		VOL   , 92*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        93*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W01
	.byte		VOL   , 94*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        95*mus_touhou5_stage2_mvl/mxv
	.byte	W02
@ 001   ----------------------------------------
	.byte		N06   , Gn3 
	.byte	W01
	.byte		VOL   , 96*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        97*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , An3 
	.byte	W01
	.byte		VOL   , 98*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        99*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , As3 
	.byte	W01
	.byte		VOL   , 100*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        101*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W01
	.byte		VOL   , 102*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        103*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W01
	.byte		VOL   , 104*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        105*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , An3 
	.byte	W01
	.byte		VOL   , 106*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        107*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , As3 
	.byte	W01
	.byte		VOL   , 108*mus_touhou5_stage2_mvl/mxv
	.byte	W04
	.byte		        109*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , Dn4 
	.byte	W02
	.byte		VOL   , 110*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        111*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , Gn3 
	.byte	W02
	.byte		VOL   , 112*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        113*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , An3 
	.byte	W02
	.byte		VOL   , 114*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        115*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , As3 
	.byte	W02
	.byte		VOL   , 116*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        117*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , Dn4 
	.byte	W02
	.byte		VOL   , 118*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        119*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , Gn3 
	.byte	W02
	.byte		VOL   , 120*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        121*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , An3 
	.byte	W02
	.byte		VOL   , 122*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        123*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , As3 
	.byte	W02
	.byte		VOL   , 124*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        125*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , Dn4 
	.byte	W02
	.byte		VOL   , 126*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        127*mus_touhou5_stage2_mvl/mxv
	.byte	W01
@ 002   ----------------------------------------
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 007   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 008   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 009   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 010   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 011   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 012   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 013   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 015   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 016   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 017   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 018   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 019   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 020   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 021   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
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
	.byte	TEMPO , 155*mus_touhou5_stage2_tbs/2
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
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 047   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 048   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 049   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 050   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 051   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 052   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 053   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
@ 054   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 055   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 056   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 057   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 058   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 059   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 060   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 061   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 062   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 063   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 064   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 065   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 066   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 067   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 068   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 069   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
@ 070   ----------------------------------------
	.byte	TEMPO , 161*mus_touhou5_stage2_tbs/2
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 071   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 072   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 073   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 074   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_touhou5_stage2_2:
	.byte	KEYSH , mus_touhou5_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 36
	.byte		VOL   , 127*mus_touhou5_stage2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W72
	.byte		N06   , Cn2 , v100
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 004   ----------------------------------------
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 007   ----------------------------------------
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 008   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 009   ----------------------------------------
	.byte		        As1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
@ 010   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 011   ----------------------------------------
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 012   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 013   ----------------------------------------
	.byte		        As1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 015   ----------------------------------------
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 016   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 017   ----------------------------------------
	.byte		        As1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
@ 018   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 019   ----------------------------------------
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 020   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 021   ----------------------------------------
	.byte		        As1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
@ 022   ----------------------------------------
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 024   ----------------------------------------
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 026   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 027   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 029   ----------------------------------------
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 031   ----------------------------------------
	.byte		        An1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 032   ----------------------------------------
	.byte		        As1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
@ 033   ----------------------------------------
	.byte		        Cn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 034   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 035   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 036   ----------------------------------------
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 037   ----------------------------------------
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N96   , Ds2 
	.byte	W96
@ 039   ----------------------------------------
	.byte		        Fn2 
	.byte	W96
@ 040   ----------------------------------------
	.byte		TIE   , Gn2 
	.byte	W96
@ 041   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N24   , Fn2 
	.byte	W24
@ 042   ----------------------------------------
	.byte		N96   , Ds2 
	.byte	W96
@ 043   ----------------------------------------
	.byte		        Fn2 
	.byte	W96
@ 044   ----------------------------------------
	.byte		TIE   , Gn2 
	.byte	W96
@ 045   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N24   , Fn2 
	.byte	W24
@ 046   ----------------------------------------
	.byte		N96   , Ds2 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        Fn2 
	.byte	W96
@ 048   ----------------------------------------
	.byte		TIE   , Gn2 
	.byte	W96
@ 049   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N24   , Fn2 
	.byte	W24
@ 050   ----------------------------------------
	.byte		N96   , Ds2 
	.byte	W96
@ 051   ----------------------------------------
	.byte		        Fn2 
	.byte	W96
@ 052   ----------------------------------------
	.byte		TIE   , Gn2 
	.byte	W96
@ 053   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N24   , Fn2 
	.byte	W24
@ 054   ----------------------------------------
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 055   ----------------------------------------
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 056   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 057   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 058   ----------------------------------------
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 059   ----------------------------------------
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 060   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 061   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 062   ----------------------------------------
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 064   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 065   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 066   ----------------------------------------
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 067   ----------------------------------------
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 068   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 069   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 070   ----------------------------------------
	.byte		N06   , Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 071   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 072   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 073   ----------------------------------------
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 074   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_touhou5_stage2_3:
	.byte	KEYSH , mus_touhou5_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_touhou5_stage2_mvl/mxv
	.byte		PAN   , c_v+18
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
mus_touhou5_stage2_3_006:
	.byte		N24   , Dn3 , v088
	.byte		N24   , Gn3 
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte	PEND
	.byte		        As2 
	.byte		N24   , Dn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N18   , Gn3 
	.byte		N18   , As3 
	.byte		N18   , Gn4 
	.byte		N18   , As4 
	.byte	W18
	.byte		        Fn3 
	.byte		N18   , An3 
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W12
@ 007   ----------------------------------------
mus_touhou5_stage2_3_007:
	.byte		N18   , As2 , v088
	.byte		N18   , Ds3 
	.byte		N18   , As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte	PEND
	.byte		        Cn3 
	.byte		N18   , Fn3 
	.byte		N18   , Cn4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N18   , Cn3 
	.byte		N18   , Fn3 
	.byte		N18   , Cn4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        Fn3 
	.byte		N18   , An3 
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte		N12   , An4 
	.byte		N12   , Cn5 
	.byte	W12
@ 008   ----------------------------------------
mus_touhou5_stage2_3_008:
	.byte		N24   , Gn3 , v088
	.byte		N24   , As3 
	.byte		N24   , Gn4 
	.byte		N24   , As4 
	.byte	W24
	.byte	PEND
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N18   , As3 
	.byte		N18   , Dn4 
	.byte		N18   , As4 
	.byte		N18   , Dn5 
	.byte	W18
	.byte		        An3 
	.byte		N18   , Cn4 
	.byte		N18   , An4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W12
@ 009   ----------------------------------------
mus_touhou5_stage2_3_009:
	.byte		N18   , Ds3 , v088
	.byte		N18   , Gn3 
	.byte		N18   , Ds4 
	.byte		N18   , Gn4 
	.byte	W18
	.byte	PEND
	.byte		        Fn3 
	.byte		N18   , An3 
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N48   , Fn3 
	.byte		N48   , An3 
	.byte		N48   , Fn4 
	.byte		N48   , An4 
	.byte	W48
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_008
	.byte		N24   , Dn3 , v088
	.byte		N24   , Gn3 
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N18   , As3 
	.byte		N18   , Dn4 
	.byte		N18   , As4 
	.byte		N18   , Dn5 
	.byte	W18
	.byte		        An3 
	.byte		N18   , Cn4 
	.byte		N18   , An4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W12
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_009
	.byte		N18   , Fn3 , v088
	.byte		N18   , An3 
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N18   , Fn3 
	.byte		N18   , An3 
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		        An3 
	.byte		N18   , Cn4 
	.byte		N18   , An4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N12   , Cn4 
	.byte		N12   , Fn4 
	.byte		N12   , Cn5 
	.byte		N12   , Fn5 
	.byte	W12
@ 012   ----------------------------------------
mus_touhou5_stage2_3_012:
	.byte		N24   , Dn4 , v088
	.byte		N24   , Gn4 
	.byte		N24   , Dn5 
	.byte		N24   , Gn5 
	.byte	W24
	.byte	PEND
	.byte		        As3 
	.byte		N24   , Dn4 
	.byte		N24   , As4 
	.byte		N24   , Dn5 
	.byte	W24
	.byte		N18   , Gn4 
	.byte		N18   , As4 
	.byte		N18   , Gn5 
	.byte		N18   , As5 
	.byte	W18
	.byte		        Fn4 
	.byte		N18   , An4 
	.byte		N18   , Fn5 
	.byte		N18   , An5 
	.byte	W18
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte		N12   , Dn5 
	.byte		N12   , Gn5 
	.byte	W12
@ 013   ----------------------------------------
mus_touhou5_stage2_3_013:
	.byte		N18   , As3 , v088
	.byte		N18   , Ds4 
	.byte		N18   , As4 
	.byte		N18   , Ds5 
	.byte	W18
	.byte	PEND
	.byte		        Cn4 
	.byte		N18   , Fn4 
	.byte		N18   , Cn5 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte		N12   , Ds5 
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte		N12   , Fs5 
	.byte		N12   , An5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte		N12   , Dn5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte		N12   , As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cn4 
	.byte		N12   , An4 
	.byte		N12   , Cn5 
	.byte	W12
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_006
	.byte		N24   , As2 , v088
	.byte		N24   , Dn3 
	.byte		N24   , As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N18   , Gn3 
	.byte		N18   , As3 
	.byte		N18   , Gn4 
	.byte		N18   , As4 
	.byte	W18
	.byte		        Fn3 
	.byte		N18   , An3 
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W12
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_007
	.byte		N18   , Cn3 , v088
	.byte		N18   , Fn3 
	.byte		N18   , Cn4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N18   , Cn3 
	.byte		N18   , Fn3 
	.byte		N18   , Cn4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		        Fn3 
	.byte		N18   , An3 
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte		N12   , An4 
	.byte		N12   , Cn5 
	.byte	W12
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_008
	.byte		N24   , Dn3 , v088
	.byte		N24   , Gn3 
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N18   , As3 
	.byte		N18   , Dn4 
	.byte		N18   , As4 
	.byte		N18   , Dn5 
	.byte	W18
	.byte		        An3 
	.byte		N18   , Cn4 
	.byte		N18   , An4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W12
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_009
	.byte		N18   , Fn3 , v088
	.byte		N18   , An3 
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N48   , Fn3 
	.byte		N48   , An3 
	.byte		N48   , Fn4 
	.byte		N48   , An4 
	.byte	W48
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_008
	.byte		N24   , Dn3 , v088
	.byte		N24   , Gn3 
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N18   , As3 
	.byte		N18   , Dn4 
	.byte		N18   , As4 
	.byte		N18   , Dn5 
	.byte	W18
	.byte		        An3 
	.byte		N18   , Cn4 
	.byte		N18   , An4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W12
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_009
	.byte		N18   , Fn3 , v088
	.byte		N18   , An3 
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte		N12   , Gn4 
	.byte		N12   , As4 
	.byte	W12
	.byte		N18   , Fn3 
	.byte		N18   , An3 
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		        An3 
	.byte		N18   , Cn4 
	.byte		N18   , An4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N12   , Cn4 
	.byte		N12   , Fn4 
	.byte		N12   , Cn5 
	.byte		N12   , Fn5 
	.byte	W12
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_012
	.byte		N24   , As3 , v088
	.byte		N24   , Dn4 
	.byte		N24   , As4 
	.byte		N24   , Dn5 
	.byte	W24
	.byte		N18   , Gn4 
	.byte		N18   , As4 
	.byte		N18   , Gn5 
	.byte		N18   , As5 
	.byte	W18
	.byte		        Fn4 
	.byte		N18   , An4 
	.byte		N18   , Fn5 
	.byte		N18   , An5 
	.byte	W18
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte		N12   , Dn5 
	.byte		N12   , Gn5 
	.byte	W12
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_013
	.byte		N18   , Cn4 , v088
	.byte		N18   , Fn4 
	.byte		N18   , Cn5 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte		N12   , Ds5 
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N48   , Fs4 
	.byte		N48   , An4 
	.byte		N48   , Fs5 
	.byte		N48   , An5 
	.byte	W48
@ 022   ----------------------------------------
mus_touhou5_stage2_3_022:
	.byte		N48   , Gn4 , v088
	.byte		N48   , As4 
	.byte		N48   , Gn5 
	.byte		N48   , As5 
	.byte	W48
	.byte	PEND
	.byte		        Dn4 
	.byte		N48   , Gn4 
	.byte		N48   , Dn5 
	.byte		N48   , Gn5 
	.byte	W48
@ 023   ----------------------------------------
	.byte		N24   , As4 
	.byte		N24   , Dn5 
	.byte		N24   , As5 
	.byte		N24   , Dn6 
	.byte	W24
	.byte		        An4 
	.byte		N24   , Cn5 
	.byte		N24   , An5 
	.byte		N24   , Cn6 
	.byte	W24
	.byte		        Gn4 
	.byte		N24   , As4 
	.byte		N24   , Gn5 
	.byte		N24   , As5 
	.byte	W24
	.byte		        Fn4 
	.byte		N24   , An4 
	.byte		N24   , Fn5 
	.byte		N24   , An5 
	.byte	W24
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_022
	.byte		N48   , Dn4 , v088
	.byte		N48   , Gn4 
	.byte		N48   , Dn5 
	.byte		N48   , Gn5 
	.byte	W48
@ 025   ----------------------------------------
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte		N18   , Fn5 
	.byte		N18   , An5 
	.byte	W18
	.byte		        Dn4 
	.byte		N18   , Fn4 
	.byte		N18   , Dn5 
	.byte		N18   , Fn5 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte		N12   , An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , Cn4 
	.byte		N18   , An4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , As3 
	.byte		N18   , Gn4 
	.byte		N18   , As4 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte		N12   , An4 
	.byte		N12   , Cn5 
	.byte	W12
@ 026   ----------------------------------------
mus_touhou5_stage2_3_026:
	.byte		N48   , As3 , v088
	.byte		N48   , Dn4 
	.byte		N48   , As4 
	.byte		N48   , Dn5 
	.byte	W48
	.byte	PEND
	.byte		        Dn3 
	.byte		N48   , Gn3 
	.byte		N48   , Dn4 
	.byte		N48   , Gn4 
	.byte	W48
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_008
	.byte		N24   , Fn3 , v088
	.byte		N24   , An3 
	.byte		N24   , Fn4 
	.byte		N24   , An4 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Fn3 
	.byte		N24   , Cn4 
	.byte		N24   , Fn4 
	.byte	W24
@ 028   ----------------------------------------
mus_touhou5_stage2_3_028:
	.byte		TIE   , Dn3 , v088
	.byte		TIE   , Gn3 
	.byte		TIE   , Dn4 
	.byte		TIE   , Gn4 
	.byte	W96
	.byte	PEND
@ 029   ----------------------------------------
	.byte	W48
	.byte		EOT   , Dn3 
	.byte		        Gn3 
	.byte		        Dn4 
	.byte		        Gn4 
	.byte		N18   , Fn3 
	.byte		N18   , An3 
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , As3 
	.byte		N18   , Gn4 
	.byte		N18   , As4 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte		N12   , An4 
	.byte		N12   , Cn5 
	.byte	W12
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_026
	.byte		N48   , Dn3 , v088
	.byte		N48   , Gn3 
	.byte		N48   , Dn4 
	.byte		N48   , Gn4 
	.byte	W48
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_008
	.byte		N24   , Fn3 , v088
	.byte		N24   , An3 
	.byte		N24   , Fn4 
	.byte		N24   , An4 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Fn3 
	.byte		N24   , Cn4 
	.byte		N24   , Fn4 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N48   , As2 
	.byte		N48   , Ds3 
	.byte		N48   , As3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Gn2 
	.byte		N48   , As2 
	.byte		N48   , Gn3 
	.byte		N48   , As3 
	.byte	W48
@ 033   ----------------------------------------
	.byte		        Cn3 
	.byte		N48   , Fn3 
	.byte		N48   , Cn4 
	.byte		N48   , Fn4 
	.byte	W48
	.byte		N18   , Fn3 
	.byte		N18   , An3 
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , As3 
	.byte		N18   , Gn4 
	.byte		N18   , As4 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte		N12   , An4 
	.byte		N12   , Cn5 
	.byte	W12
@ 034   ----------------------------------------
	.byte		N48   , Gn3 
	.byte		N48   , As3 
	.byte		N48   , Gn4 
	.byte		N48   , As4 
	.byte	W48
	.byte		N24   , Dn3 
	.byte		N24   , Gn3 
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        As3 
	.byte		N24   , Dn4 
	.byte		N24   , As4 
	.byte		N24   , Dn5 
	.byte	W24
@ 035   ----------------------------------------
	.byte		N18   , Fn3 
	.byte		N18   , An3 
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , As3 
	.byte		N18   , Gn4 
	.byte		N18   , As4 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte		N12   , An4 
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , Cn4 
	.byte		N18   , An4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , As3 
	.byte		N18   , Gn4 
	.byte		N18   , As4 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte		N12   , An4 
	.byte		N12   , Cn5 
	.byte	W12
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_028
@ 037   ----------------------------------------
	.byte	W72
	.byte		EOT   , Dn3 
	.byte		        Gn3 
	.byte		        Dn4 
	.byte		        Gn4 
	.byte	W24
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
mus_touhou5_stage2_3_054:
	.byte		N48   , Gn3 , v088
	.byte		N48   , Gn4 
	.byte		N48   , Gn5 
	.byte	W48
	.byte	PEND
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte		N12   , As5 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Cn5 
	.byte		N12   , Cn6 
	.byte	W12
@ 055   ----------------------------------------
mus_touhou5_stage2_3_055:
	.byte		N48   , As3 , v088
	.byte		N48   , As4 
	.byte		N48   , As5 
	.byte	W48
	.byte	PEND
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , Fn4 
	.byte		N24   , Fn5 
	.byte	W24
@ 056   ----------------------------------------
	.byte		N03   , Cn3 
	.byte		N03   , Cn4 
	.byte		N03   , Cn5 
	.byte		N96   , Dn5 
	.byte	W03
	.byte		        Dn3 
	.byte		N03   , Fn3 
	.byte		N92   , Dn4 , v088, gtp1
	.byte		N03   , Fn4 
	.byte		N03   , Fn5 
	.byte	W03
	.byte	W90
@ 057   ----------------------------------------
	.byte		N72   , Gn3 
	.byte		N72   , Gn4 
	.byte		N72   , Gn5 
	.byte	W03
	.byte	W68
	.byte	W01
	.byte		N24   , Cn3 
	.byte		N24   , Cn4 
	.byte		N24   , Cn5 
	.byte	W24
@ 058   ----------------------------------------
mus_touhou5_stage2_3_058:
	.byte		N48   , Dn3 , v088
	.byte		N48   , Dn4 
	.byte		N48   , Dn5 
	.byte	W48
	.byte	PEND
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte		N24   , Gn5 
	.byte	W24
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte		N12   , An5 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte		N12   , As5 
	.byte	W12
@ 059   ----------------------------------------
mus_touhou5_stage2_3_059:
	.byte		N48   , An3 , v088
	.byte		N48   , An4 
	.byte		N48   , An5 
	.byte	W48
	.byte	PEND
	.byte		N24   , Fn3 
	.byte		N24   , Fn4 
	.byte		N24   , Fn5 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Cn4 
	.byte		N24   , Cn5 
	.byte	W24
@ 060   ----------------------------------------
mus_touhou5_stage2_3_060:
	.byte		N03   , Dn3 , v088
	.byte		N03   , Dn4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte	PEND
	.byte		        Cn3 
	.byte		N03   , Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N30   , Dn3 
	.byte		N30   , Dn4 
	.byte		N30   , Dn5 
	.byte	W30
	.byte		TIE   , Gn2 
	.byte		TIE   , Gn3 
	.byte		TIE   , Gn4 
	.byte	W60
@ 061   ----------------------------------------
	.byte	W72
	.byte		EOT   , Gn2 
	.byte		        Gn3 
	.byte		        Gn4 
	.byte		N24   , Dn3 
	.byte		N24   , Dn4 
	.byte		N24   , Dn5 
	.byte	W24
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_054
	.byte		N24   , An3 , v088
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte		N12   , As5 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Cn5 
	.byte		N12   , Cn6 
	.byte	W12
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_055
	.byte		N24   , An3 , v088
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , Fn4 
	.byte		N24   , Fn5 
	.byte	W24
@ 064   ----------------------------------------
	.byte		N03   , Cn3 
	.byte		N03   , Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N92   , Dn3 , v088, gtp1
	.byte		N03   , Fn3 
	.byte		N92   , Dn4 , v088, gtp1
	.byte		N03   , Fn4 
	.byte		N92   , Dn5 , v088, gtp1
	.byte		N03   , Fn5 
	.byte	W03
	.byte	W90
@ 065   ----------------------------------------
	.byte		N72   , Gn3 
	.byte		N72   , Gn4 
	.byte		N72   , Gn5 
	.byte	W72
	.byte		N24   , Cn3 
	.byte		N24   , Cn4 
	.byte		N24   , Cn5 
	.byte	W24
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_058
	.byte		N24   , Gn3 , v088
	.byte		N24   , Gn4 
	.byte		N24   , Gn5 
	.byte	W24
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte		N12   , An5 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte		N12   , As5 
	.byte	W12
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_059
	.byte		N24   , Fn3 , v088
	.byte		N24   , Fn4 
	.byte		N24   , Fn5 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Cn4 
	.byte		N24   , Cn5 
	.byte	W24
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_3_060
	.byte		N03   , Cn3 , v088
	.byte		N03   , Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N90   , Dn3 
	.byte		N90   , Dn4 
	.byte		N90   , Dn5 
	.byte	W90
@ 069   ----------------------------------------
	.byte		N96   , Gn3 
	.byte		N96   , Gn4 
	.byte		N96   , Gn5 
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
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_touhou5_stage2_4:
	.byte	KEYSH , mus_touhou5_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 127*mus_touhou5_stage2_mvl/mxv
	.byte		PAN   , c_v-22
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
	.byte		N24   , Dn3 , v076
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        As2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N18   , Gn3 
	.byte		N18   , As3 
	.byte	W18
	.byte		        Fn3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N18   , As2 
	.byte		N18   , Ds3 
	.byte	W18
	.byte		        Cn3 
	.byte		N18   , Fn3 
	.byte	W18
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N18   , Cn3 
	.byte		N18   , Fn3 
	.byte	W18
	.byte		N18   
	.byte		N18   , An3 
	.byte	W18
	.byte		N12   
	.byte		N12   , Cn4 
	.byte	W12
@ 008   ----------------------------------------
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N18   , As3 
	.byte		N18   , Dn4 
	.byte	W18
	.byte		        An3 
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte	W12
@ 009   ----------------------------------------
	.byte		N18   , Ds3 
	.byte		N18   , Gn3 
	.byte	W18
	.byte		        Fn3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N48   , Fn3 
	.byte		N48   , An3 
	.byte	W48
@ 010   ----------------------------------------
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N18   , As3 
	.byte		N18   , Dn4 
	.byte	W18
	.byte		        An3 
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte	W12
@ 011   ----------------------------------------
	.byte		N18   , Ds3 
	.byte		N18   , Gn3 
	.byte	W18
	.byte		        Fn3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N18   , Fn3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N18   
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N12   
	.byte		N12   , Fn4 
	.byte	W12
@ 012   ----------------------------------------
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N18   , Gn4 
	.byte		N18   , As4 
	.byte	W18
	.byte		        Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W12
@ 013   ----------------------------------------
	.byte		N18   , As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		        Cn4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , Cn4 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N24   , Dn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        As2 
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N18   , Gn3 
	.byte		N18   , As3 
	.byte	W18
	.byte		        Fn3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N12   , Dn3 
	.byte		N12   , Gn3 
	.byte	W12
@ 015   ----------------------------------------
	.byte		N18   , As2 
	.byte		N18   , Ds3 
	.byte	W18
	.byte		        Cn3 
	.byte		N18   , Fn3 
	.byte	W18
	.byte		N12   , Ds3 
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N18   , Cn3 
	.byte		N18   , Fn3 
	.byte	W18
	.byte		N18   
	.byte		N18   , An3 
	.byte	W18
	.byte		N12   
	.byte		N12   , Cn4 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N18   , As3 
	.byte		N18   , Dn4 
	.byte	W18
	.byte		        An3 
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte	W12
@ 017   ----------------------------------------
	.byte		N18   , Ds3 
	.byte		N18   , Gn3 
	.byte	W18
	.byte		        Fn3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N48   , Fn3 
	.byte		N48   , An3 
	.byte	W48
@ 018   ----------------------------------------
	.byte		N24   , Gn3 
	.byte		N24   , As3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N18   , As3 
	.byte		N18   , Dn4 
	.byte	W18
	.byte		        An3 
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte	W12
@ 019   ----------------------------------------
	.byte		N18   , Ds3 
	.byte		N18   , Gn3 
	.byte	W18
	.byte		        Fn3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte		N12   , As3 
	.byte	W12
	.byte		N18   , Fn3 
	.byte		N18   , An3 
	.byte	W18
	.byte		N18   
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N12   
	.byte		N12   , Fn4 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N24   , Dn4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        As3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N18   , Gn4 
	.byte		N18   , As4 
	.byte	W18
	.byte		        Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		N12   , Dn4 
	.byte		N12   , Gn4 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N18   , As3 
	.byte		N18   , Ds4 
	.byte	W18
	.byte		        Cn4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N48   , Fs4 
	.byte		N48   , An4 
	.byte	W48
@ 022   ----------------------------------------
	.byte		        Gn4 
	.byte		N48   , As4 
	.byte	W48
	.byte		        Dn4 
	.byte		N48   , Gn4 
	.byte	W48
@ 023   ----------------------------------------
	.byte		N24   , As4 
	.byte		N24   , Dn5 
	.byte	W24
	.byte		        An4 
	.byte		N24   , Cn5 
	.byte	W24
	.byte		        Gn4 
	.byte		N24   , As4 
	.byte	W24
	.byte		        Fn4 
	.byte		N24   , An4 
	.byte	W24
@ 024   ----------------------------------------
	.byte		N48   , Gn4 
	.byte		N48   , As4 
	.byte	W48
	.byte		        Dn4 
	.byte		N48   , Gn4 
	.byte	W48
@ 025   ----------------------------------------
	.byte		N18   , Fn4 
	.byte		N18   , An4 
	.byte	W18
	.byte		        Dn4 
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , Cn4 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , As3 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte	W12
@ 026   ----------------------------------------
	.byte		N48   , As3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        Dn3 
	.byte		N48   , Gn3 
	.byte	W48
@ 027   ----------------------------------------
	.byte		N24   
	.byte		N24   , As3 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Fn3 
	.byte	W24
@ 028   ----------------------------------------
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn3 
	.byte	W96
@ 029   ----------------------------------------
	.byte	W48
	.byte		EOT   , Dn3 
	.byte		        Gn3 
	.byte		N18   , Fn3 
	.byte		N18   , An3 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , As3 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte	W12
@ 030   ----------------------------------------
	.byte		N48   , As3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        Dn3 
	.byte		N48   , Gn3 
	.byte	W48
@ 031   ----------------------------------------
	.byte		N24   
	.byte		N24   , As3 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , An3 
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Fn3 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N48   , As2 
	.byte		N48   , Ds3 
	.byte	W48
	.byte		        Gn2 
	.byte		N48   , As2 
	.byte	W48
@ 033   ----------------------------------------
	.byte		        Cn3 
	.byte		N48   , Fn3 
	.byte	W48
	.byte		N18   
	.byte		N18   , An3 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , As3 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte	W12
@ 034   ----------------------------------------
	.byte		N48   , Gn3 
	.byte		N48   , As3 
	.byte	W48
	.byte		N24   , Dn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        As3 
	.byte		N24   , Dn4 
	.byte	W24
@ 035   ----------------------------------------
	.byte		N18   , Fn3 
	.byte		N18   , An3 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , As3 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N18   , An3 
	.byte		N18   , Cn4 
	.byte	W18
	.byte		        Gn3 
	.byte		N18   , As3 
	.byte	W18
	.byte		N12   , An3 
	.byte		N12   , Cn4 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N84   , Dn3 
	.byte		N84   , Gn3 
	.byte	W84
	.byte		N02   , En3 
	.byte		N02   , An3 
	.byte	W02
	.byte		        Fn3 
	.byte		N02   , Bn3 
	.byte	W02
	.byte		        Gn3 
	.byte		N02   , Cn4 
	.byte	W02
	.byte		        An3 
	.byte		N02   , Dn4 
	.byte	W02
	.byte		        Bn3 
	.byte		N02   , En4 
	.byte	W02
	.byte		        Cn4 
	.byte		N02   , Fn4 
	.byte	W02
@ 037   ----------------------------------------
	.byte		N72   , Dn4 
	.byte		N72   , Gn4 
	.byte	W72
	.byte	W24
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
	.byte		N48   , Gn3 
	.byte		N48   , Gn4 
	.byte	W48
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Cn5 
	.byte	W12
@ 055   ----------------------------------------
	.byte		N48   , As3 
	.byte		N48   , As4 
	.byte	W48
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , Fn4 
	.byte	W24
@ 056   ----------------------------------------
	.byte		N03   , Cn3 
	.byte		N03   , Cn4 
	.byte	W03
	.byte		N92   , Dn3 , v076, gtp1
	.byte		N03   , Fn3 
	.byte		N92   , Dn4 , v076, gtp1
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W90
@ 057   ----------------------------------------
	.byte		N72   , Gn3 
	.byte		N72   , Gn4 
	.byte	W72
	.byte		N24   , Cn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 058   ----------------------------------------
	.byte		N48   , Dn3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
@ 059   ----------------------------------------
	.byte		N48   , An3 
	.byte		N48   , An4 
	.byte	W48
	.byte		N24   , Fn3 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 060   ----------------------------------------
	.byte		N03   , Dn3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte		        Cn3 
	.byte		N03   , Cn4 
	.byte	W03
	.byte		N30   , Dn3 
	.byte		N30   , Dn4 
	.byte	W30
	.byte		TIE   , Gn2 
	.byte		TIE   , Gn3 
	.byte	W60
@ 061   ----------------------------------------
	.byte	W72
	.byte		EOT   , Gn2 
	.byte		        Gn3 
	.byte		N24   , Dn3 
	.byte		N24   , Dn4 
	.byte	W24
@ 062   ----------------------------------------
	.byte		N48   , Gn3 
	.byte		N48   , Gn4 
	.byte	W48
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Cn4 
	.byte		N12   , Cn5 
	.byte	W12
@ 063   ----------------------------------------
	.byte		N48   , As3 
	.byte		N48   , As4 
	.byte	W48
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , Fn4 
	.byte	W24
@ 064   ----------------------------------------
	.byte		N03   , Cn3 
	.byte		N03   , Cn4 
	.byte	W03
	.byte		N92   , Dn3 , v076, gtp1
	.byte		N03   , Fn3 
	.byte		N92   , Dn4 , v076, gtp1
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W90
@ 065   ----------------------------------------
	.byte		N72   , Gn3 
	.byte		N72   , Gn4 
	.byte	W72
	.byte		N24   , Cn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 066   ----------------------------------------
	.byte		N48   , Dn3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N24   , Gn3 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
@ 067   ----------------------------------------
	.byte		N48   , An3 
	.byte		N48   , An4 
	.byte	W48
	.byte		N24   , Fn3 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Cn3 
	.byte		N24   , Cn4 
	.byte	W24
@ 068   ----------------------------------------
	.byte		N03   , Dn3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte		        Cn3 
	.byte		N03   , Cn4 
	.byte	W03
	.byte		N90   , Dn3 
	.byte		N90   , Dn4 
	.byte	W90
@ 069   ----------------------------------------
	.byte		N96   , Gn3 
	.byte		N96   , Gn4 
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
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_touhou5_stage2_5:
	.byte	KEYSH , mus_touhou5_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 82
	.byte		VOL   , 127*mus_touhou5_stage2_mvl/mxv
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
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte		N03   , As3 , v076
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
@ 015   ----------------------------------------
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
@ 016   ----------------------------------------
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
@ 017   ----------------------------------------
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
@ 018   ----------------------------------------
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Dn4 
	.byte	W03
	.byte	W03
@ 019   ----------------------------------------
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        As3 
	.byte		N03   , Ds4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Fn4 
	.byte	W03
	.byte	W03
@ 020   ----------------------------------------
	.byte		        As4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte	W03
@ 021   ----------------------------------------
	.byte		        As4 
	.byte		N03   , Ds5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Ds5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Ds5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Ds5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Ds5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Ds5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Ds5 
	.byte	W03
	.byte	W03
	.byte		        As4 
	.byte		N03   , Ds5 
	.byte	W03
	.byte	W03
	.byte		        Dn5 
	.byte		N03   , Fs5 
	.byte	W03
	.byte	W03
	.byte		        Dn5 
	.byte		N03   , Fs5 
	.byte	W03
	.byte	W03
	.byte		        Dn5 
	.byte		N03   , Fs5 
	.byte	W03
	.byte	W03
	.byte		        Dn5 
	.byte		N03   , Fs5 
	.byte	W03
	.byte	W03
	.byte		        Dn5 
	.byte		N03   , Fs5 
	.byte	W03
	.byte	W03
	.byte		        Dn5 
	.byte		N03   , Fs5 
	.byte	W03
	.byte	W03
	.byte		        Dn5 
	.byte		N03   , Fs5 
	.byte	W03
	.byte	W03
	.byte		        Dn5 
	.byte		N03   , Fs5 
	.byte	W03
	.byte	W03
@ 022   ----------------------------------------
	.byte		N12   , Gn2 , v088
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 024   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        As4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 026   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 027   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 029   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 031   ----------------------------------------
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 032   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
@ 033   ----------------------------------------
	.byte		        As4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 034   ----------------------------------------
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 035   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
@ 036   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 037   ----------------------------------------
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
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
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 047   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 048   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 049   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 050   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 051   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 052   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 053   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
@ 054   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 055   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 056   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 057   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 058   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 059   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 060   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 061   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 062   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 063   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 064   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 065   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 066   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 067   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 068   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 069   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_touhou5_stage2_6:
	.byte	KEYSH , mus_touhou5_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 50
	.byte		VOL   , 0*mus_touhou5_stage2_mvl/mxv
	.byte		PAN   , c_v+18
	.byte		VOL   , 0*mus_touhou5_stage2_mvl/mxv
	.byte		TIE   , Dn3 , v076
	.byte		TIE   , Gn3 
	.byte	W01
	.byte		VOL   , 1*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        2*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        3*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        4*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        5*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        6*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        7*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        8*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        9*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        10*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        11*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        12*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        13*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        14*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        15*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        16*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        17*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        18*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        19*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        20*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        21*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        22*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        23*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        24*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        25*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        26*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        27*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        28*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        29*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        30*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        31*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        32*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        33*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        34*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        35*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        36*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        37*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        38*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        39*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        40*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        41*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        42*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        43*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        44*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        45*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        46*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        47*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        48*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        49*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        50*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        51*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        52*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        53*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        54*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        55*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        56*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        57*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        58*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        59*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        60*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        61*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        62*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        63*mus_touhou5_stage2_mvl/mxv
	.byte	W01
@ 001   ----------------------------------------
	.byte		        64*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        65*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        66*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        67*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        68*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        69*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        70*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        71*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        72*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        73*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        74*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        75*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        76*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        77*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        78*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        79*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        80*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        81*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        82*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        83*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        84*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        85*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        86*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        87*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        88*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        89*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        90*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        91*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        92*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        93*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        94*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        95*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        96*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        97*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        98*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        99*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        100*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        101*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        102*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        103*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        104*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        105*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        106*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        107*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        108*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        109*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        110*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        111*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        112*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        113*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        114*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        115*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        116*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        117*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        118*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        119*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        120*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        121*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        122*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        123*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        124*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        125*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        126*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        127*mus_touhou5_stage2_mvl/mxv
	.byte	W01
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn3 
	.byte		        Gn3 
@ 006   ----------------------------------------
	.byte		N96   , Dn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 007   ----------------------------------------
	.byte		N48   , As2 
	.byte		N48   , Ds3 
	.byte	W48
	.byte		        Cn3 
	.byte		N48   , Fn3 
	.byte	W48
@ 008   ----------------------------------------
	.byte		N96   , Dn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 009   ----------------------------------------
	.byte		N48   , As2 
	.byte		N48   , Ds3 
	.byte	W48
	.byte		        Cn3 
	.byte		N48   , Fn3 
	.byte	W48
@ 010   ----------------------------------------
	.byte		N96   , Dn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 011   ----------------------------------------
	.byte		N48   
	.byte		N48   , As3 
	.byte	W48
	.byte		        An3 
	.byte		N48   , Cn4 
	.byte	W48
@ 012   ----------------------------------------
	.byte		N96   , Dn4 
	.byte		N96   , Gn4 
	.byte	W96
@ 013   ----------------------------------------
	.byte		N48   , Ds4 
	.byte		N48   , Gn4 
	.byte	W48
	.byte		        Fs4 
	.byte		N48   , An4 
	.byte	W48
@ 014   ----------------------------------------
	.byte		N96   , Dn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 015   ----------------------------------------
	.byte		N48   , As2 
	.byte		N48   , Ds3 
	.byte	W48
	.byte		        Cn3 
	.byte		N48   , Fn3 
	.byte	W48
@ 016   ----------------------------------------
	.byte		N96   , Dn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 017   ----------------------------------------
	.byte		N48   , As2 
	.byte		N48   , Ds3 
	.byte	W48
	.byte		        Cn3 
	.byte		N48   , Fn3 
	.byte	W48
@ 018   ----------------------------------------
	.byte		N96   , Dn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 019   ----------------------------------------
	.byte		N48   
	.byte		N48   , As3 
	.byte	W48
	.byte		        An3 
	.byte		N48   , Cn4 
	.byte	W48
@ 020   ----------------------------------------
	.byte		N96   , Dn4 
	.byte		N96   , Gn4 
	.byte	W96
@ 021   ----------------------------------------
	.byte		N48   , Ds4 
	.byte		N48   , Gn4 
	.byte	W48
	.byte		        Fs4 
	.byte		N48   , An4 
	.byte	W48
@ 022   ----------------------------------------
	.byte		TIE   , Gn3 
	.byte		TIE   , Dn4 
	.byte	W96
@ 023   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gn3 
	.byte		        Dn4 
	.byte		N48   , Fn3 
	.byte		N48   , Cn4 
	.byte	W48
@ 024   ----------------------------------------
	.byte		N96   , Ds3 
	.byte		N96   , As3 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        Fn3 
	.byte		N96   , Cn4 
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Gn3 
	.byte		N96   , Dn4 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        Fn3 
	.byte		N96   , Cn4 
	.byte	W96
@ 028   ----------------------------------------
mus_touhou5_stage2_6_028:
	.byte		TIE   , Ds3 , v076
	.byte		TIE   , As3 
	.byte	W96
	.byte	PEND
@ 029   ----------------------------------------
	.byte	W48
	.byte		EOT   , Ds3 
	.byte		        As3 
	.byte		N48   , Fn3 
	.byte		N48   , Cn4 
	.byte	W48
@ 030   ----------------------------------------
	.byte		N96   , Gn3 
	.byte		N96   , Dn4 
	.byte	W96
@ 031   ----------------------------------------
	.byte		        An3 
	.byte		N96   , Fn4 
	.byte	W96
@ 032   ----------------------------------------
	.byte		        As3 
	.byte		N96   , Gn4 
	.byte	W96
@ 033   ----------------------------------------
	.byte		        Cn4 
	.byte		N96   , An4 
	.byte	W96
@ 034   ----------------------------------------
	.byte		        Dn4 
	.byte		N96   , As4 
	.byte	W96
@ 035   ----------------------------------------
	.byte		        Fn3 
	.byte		N96   , Cn4 
	.byte	W96
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_6_028
@ 037   ----------------------------------------
	.byte	W72
	.byte		EOT   , Ds3 
	.byte		        As3 
	.byte	W24
@ 038   ----------------------------------------
	.byte		N96   , Gn3 , v076
	.byte		N96   , Ds4 
	.byte	W96
@ 039   ----------------------------------------
	.byte		        An3 
	.byte		N96   , Fn4 
	.byte	W96
@ 040   ----------------------------------------
mus_touhou5_stage2_6_040:
	.byte		TIE   , As3 , v076
	.byte		TIE   , Gn4 
	.byte	W96
	.byte	PEND
@ 041   ----------------------------------------
	.byte	W72
	.byte		EOT   , As3 
	.byte		        Gn4 
	.byte		N24   , Cn4 
	.byte		N24   , Fn4 
	.byte	W24
@ 042   ----------------------------------------
	.byte		N96   , Gn3 
	.byte		N96   , Ds4 
	.byte	W96
@ 043   ----------------------------------------
	.byte		        An3 
	.byte		N96   , Fn4 
	.byte	W96
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_6_040
@ 045   ----------------------------------------
	.byte	W72
	.byte		EOT   , As3 
	.byte		        Gn4 
	.byte		N24   , Cn4 , v076
	.byte		N24   , Fn4 
	.byte	W24
@ 046   ----------------------------------------
	.byte		N96   , Gn3 
	.byte		N96   , Ds4 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        An3 
	.byte		N96   , Fn4 
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_6_040
@ 049   ----------------------------------------
	.byte	W72
	.byte		EOT   , As3 
	.byte		        Gn4 
	.byte		N24   , Cn4 , v076
	.byte		N24   , Fn4 
	.byte	W24
@ 050   ----------------------------------------
	.byte		N96   , Gn3 
	.byte		N96   , Ds4 
	.byte	W96
@ 051   ----------------------------------------
	.byte		        An3 
	.byte		N96   , Fn4 
	.byte	W96
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_6_040
@ 053   ----------------------------------------
	.byte	W72
	.byte		EOT   , As3 
	.byte		        Gn4 
	.byte		N24   , Cn4 , v076
	.byte		N24   , Fn4 
	.byte	W24
@ 054   ----------------------------------------
	.byte		N96   , Gn3 
	.byte		N96   , Ds4 
	.byte	W96
@ 055   ----------------------------------------
	.byte		        An3 
	.byte		N96   , Fn4 
	.byte	W96
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_6_040
@ 057   ----------------------------------------
	.byte	W72
	.byte		EOT   , As3 
	.byte		        Gn4 
	.byte		N24   , Cn4 , v076
	.byte		N24   , Fn4 
	.byte	W24
@ 058   ----------------------------------------
	.byte		N96   , Gn3 
	.byte		N96   , Ds4 
	.byte	W96
@ 059   ----------------------------------------
	.byte		        An3 
	.byte		N96   , Fn4 
	.byte	W96
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_6_040
@ 061   ----------------------------------------
	.byte	W96
	.byte		EOT   , As3 
	.byte		        Gn4 
@ 062   ----------------------------------------
	.byte		N96   , Gn3 , v076
	.byte		N96   , Ds4 
	.byte	W96
@ 063   ----------------------------------------
	.byte		        An3 
	.byte		N96   , Fn4 
	.byte	W96
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_6_040
@ 065   ----------------------------------------
	.byte	W72
	.byte		EOT   , As3 
	.byte		        Gn4 
	.byte		N24   , Cn4 , v076
	.byte		N24   , Fn4 
	.byte	W24
@ 066   ----------------------------------------
	.byte		N96   , Gn3 
	.byte		N96   , Ds4 
	.byte	W96
@ 067   ----------------------------------------
	.byte		        An3 
	.byte		N96   , Fn4 
	.byte	W96
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_6_040
@ 069   ----------------------------------------
	.byte	W96
	.byte		EOT   , As3 
	.byte		        Gn4 
@ 070   ----------------------------------------
	.byte		TIE   , Dn3 , v076
	.byte		TIE   , Gn3 
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn3 
	.byte		        Gn3 
@ 074   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_touhou5_stage2_7:
	.byte	KEYSH , mus_touhou5_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 50
	.byte		VOL   , 0*mus_touhou5_stage2_mvl/mxv
	.byte		PAN   , c_v-22
	.byte		VOL   , 0*mus_touhou5_stage2_mvl/mxv
	.byte		TIE   , Dn2 , v088
	.byte		TIE   , Gn2 
	.byte	W01
	.byte		VOL   , 1*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        2*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        3*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        4*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        5*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        6*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        7*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        8*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        9*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        10*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        11*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        12*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        13*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        14*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        15*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        16*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        17*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        18*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        19*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        20*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        21*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        22*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        23*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        24*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        25*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        26*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        27*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        28*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        29*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        30*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        31*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        32*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        33*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        34*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        35*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        36*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        37*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        38*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        39*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        40*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        41*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        42*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        43*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        44*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        45*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        46*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        47*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        48*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        49*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        50*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        51*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        52*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        53*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        54*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        55*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        56*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        57*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        58*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        59*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        60*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        61*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        62*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        63*mus_touhou5_stage2_mvl/mxv
	.byte	W01
@ 001   ----------------------------------------
	.byte		        64*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        65*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        66*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        67*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        68*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        69*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        70*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        71*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        72*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        73*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        74*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        75*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        76*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        77*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        78*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        79*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        80*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        81*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        82*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        83*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        84*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        85*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        86*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        87*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        88*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        89*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        90*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        91*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        92*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        93*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        94*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        95*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        96*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        97*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        98*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        99*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        100*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        101*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        102*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        103*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        104*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        105*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        106*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        107*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        108*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        109*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        110*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        111*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        112*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        113*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        114*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        115*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        116*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        117*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        118*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        119*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        120*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        121*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        122*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        123*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        124*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        125*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		        126*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		        127*mus_touhou5_stage2_mvl/mxv
	.byte	W01
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn2 
	.byte		        Gn2 
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte		N96   , Dn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 007   ----------------------------------------
	.byte		N48   , As1 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Fn2 
	.byte	W48
@ 008   ----------------------------------------
	.byte		N96   , Dn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 009   ----------------------------------------
	.byte		N48   , As1 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Fn2 
	.byte	W48
@ 010   ----------------------------------------
	.byte		N96   , Dn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 011   ----------------------------------------
	.byte		N48   
	.byte		N48   , As2 
	.byte	W48
	.byte		        An2 
	.byte		N48   , Cn3 
	.byte	W48
@ 012   ----------------------------------------
	.byte		N96   , Dn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 013   ----------------------------------------
	.byte		N48   , Ds3 
	.byte		N48   , Gn3 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , An3 
	.byte	W48
@ 014   ----------------------------------------
	.byte		N96   , Dn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 015   ----------------------------------------
	.byte		N48   , As1 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Fn2 
	.byte	W48
@ 016   ----------------------------------------
	.byte		N96   , Dn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 017   ----------------------------------------
	.byte		N48   , As1 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Fn2 
	.byte	W48
@ 018   ----------------------------------------
	.byte		N96   , Dn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 019   ----------------------------------------
	.byte		N48   
	.byte		N48   , As2 
	.byte	W48
	.byte		        An2 
	.byte		N48   , Cn3 
	.byte	W48
@ 020   ----------------------------------------
	.byte		N96   , Dn3 
	.byte		N96   , Gn3 
	.byte	W96
@ 021   ----------------------------------------
	.byte		N48   , Ds3 
	.byte		N48   , Gn3 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , An3 
	.byte	W48
@ 022   ----------------------------------------
	.byte		TIE   , Gn2 
	.byte		TIE   , Dn3 
	.byte	W96
@ 023   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gn2 
	.byte		        Dn3 
	.byte		N48   , Fn2 
	.byte		N48   , Cn3 
	.byte	W48
@ 024   ----------------------------------------
	.byte		N96   , Ds2 
	.byte		N96   , As2 
	.byte	W96
@ 025   ----------------------------------------
	.byte		        Fn2 
	.byte		N96   , Cn3 
	.byte	W96
@ 026   ----------------------------------------
	.byte		        Gn2 
	.byte		N96   , Dn3 
	.byte	W96
@ 027   ----------------------------------------
	.byte		        Fn2 
	.byte		N96   , Cn3 
	.byte	W96
@ 028   ----------------------------------------
mus_touhou5_stage2_7_028:
	.byte		TIE   , Ds2 , v088
	.byte		TIE   , As2 
	.byte	W96
	.byte	PEND
@ 029   ----------------------------------------
	.byte	W48
	.byte		EOT   , Ds2 
	.byte		        As2 
	.byte		N48   , Fn2 
	.byte		N48   , Cn3 
	.byte	W48
@ 030   ----------------------------------------
	.byte		N96   , Gn2 
	.byte		N96   , Dn3 
	.byte	W96
@ 031   ----------------------------------------
	.byte		        An2 
	.byte		N96   , Fn3 
	.byte	W96
@ 032   ----------------------------------------
	.byte		        As2 
	.byte		N96   , Gn3 
	.byte	W96
@ 033   ----------------------------------------
	.byte		        Cn3 
	.byte		N96   , An3 
	.byte	W96
@ 034   ----------------------------------------
	.byte		        Dn3 
	.byte		N96   , As3 
	.byte	W96
@ 035   ----------------------------------------
	.byte		        Fn2 
	.byte		N96   , Cn3 
	.byte	W96
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_7_028
@ 037   ----------------------------------------
	.byte	W72
	.byte		EOT   , Ds2 
	.byte		        As2 
	.byte	W24
@ 038   ----------------------------------------
	.byte		N96   , Gn2 , v088
	.byte		N96   , Ds3 
	.byte	W96
@ 039   ----------------------------------------
	.byte		        An2 
	.byte		N96   , Fn3 
	.byte	W96
@ 040   ----------------------------------------
mus_touhou5_stage2_7_040:
	.byte		TIE   , As2 , v088
	.byte		TIE   , Gn3 
	.byte	W96
	.byte	PEND
@ 041   ----------------------------------------
	.byte	W72
	.byte		EOT   , As2 
	.byte		        Gn3 
	.byte		N24   , Cn3 
	.byte		N24   , Fn3 
	.byte	W24
@ 042   ----------------------------------------
	.byte		N96   , Gn2 
	.byte		N96   , Ds3 
	.byte	W96
@ 043   ----------------------------------------
	.byte		        An2 
	.byte		N96   , Fn3 
	.byte	W96
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_7_040
@ 045   ----------------------------------------
	.byte	W72
	.byte		EOT   , As2 
	.byte		        Gn3 
	.byte		N24   , Cn3 , v088
	.byte		N24   , Fn3 
	.byte	W24
@ 046   ----------------------------------------
	.byte		N96   , Gn2 
	.byte		N96   , Ds3 
	.byte	W96
@ 047   ----------------------------------------
	.byte		        An2 
	.byte		N96   , Fn3 
	.byte	W96
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_7_040
@ 049   ----------------------------------------
	.byte	W72
	.byte		EOT   , As2 
	.byte		        Gn3 
	.byte		N24   , Cn3 , v088
	.byte		N24   , Fn3 
	.byte	W24
@ 050   ----------------------------------------
	.byte		N96   , Gn2 
	.byte		N96   , Ds3 
	.byte	W96
@ 051   ----------------------------------------
	.byte		        An2 
	.byte		N96   , Fn3 
	.byte	W96
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_7_040
@ 053   ----------------------------------------
	.byte	W72
	.byte		EOT   , As2 
	.byte		        Gn3 
	.byte		N24   , Cn3 , v088
	.byte		N24   , Fn3 
	.byte	W24
@ 054   ----------------------------------------
	.byte		N96   , Gn2 
	.byte		N96   , Ds3 
	.byte	W96
@ 055   ----------------------------------------
	.byte		        An2 
	.byte		N96   , Fn3 
	.byte	W96
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_7_040
@ 057   ----------------------------------------
	.byte	W72
	.byte		EOT   , As2 
	.byte		        Gn3 
	.byte		N24   , Cn3 , v088
	.byte		N24   , Fn3 
	.byte	W24
@ 058   ----------------------------------------
	.byte		N96   , Gn2 
	.byte		N96   , Ds3 
	.byte	W96
@ 059   ----------------------------------------
	.byte		        An2 
	.byte		N96   , Fn3 
	.byte	W96
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_7_040
@ 061   ----------------------------------------
	.byte	W96
	.byte		EOT   , As2 
	.byte		        Gn3 
@ 062   ----------------------------------------
	.byte		N96   , Gn2 , v088
	.byte		N96   , Ds3 
	.byte	W96
@ 063   ----------------------------------------
	.byte		        An2 
	.byte		N96   , Fn3 
	.byte	W96
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_7_040
@ 065   ----------------------------------------
	.byte	W72
	.byte		EOT   , As2 
	.byte		        Gn3 
	.byte		N24   , Cn3 , v088
	.byte		N24   , Fn3 
	.byte	W24
@ 066   ----------------------------------------
	.byte		N96   , Gn2 
	.byte		N96   , Ds3 
	.byte	W96
@ 067   ----------------------------------------
	.byte		        An2 
	.byte		N96   , Fn3 
	.byte	W96
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_7_040
@ 069   ----------------------------------------
	.byte	W96
	.byte		EOT   , As2 
	.byte		        Gn3 
@ 070   ----------------------------------------
	.byte		TIE   , Dn2 , v088
	.byte		TIE   , Gn2 
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn2 
	.byte		        Gn2 
@ 074   ----------------------------------------
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_touhou5_stage2_8:
	.byte	KEYSH , mus_touhou5_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		VOL   , 127*mus_touhou5_stage2_mvl/mxv
	.byte		PAN   , c_v+18
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
mus_touhou5_stage2_8_006:
	.byte	W12
	.byte		N12   , As4 , v088
	.byte		N12   , Dn5 
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
@ 007   ----------------------------------------
mus_touhou5_stage2_8_007:
	.byte	W12
	.byte		N12   , As4 , v088
	.byte		N12   , Ds5 
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		        As4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte	W12
	.byte		        Cn5 
	.byte		N12   , Fn5 
	.byte	W12
	.byte	W12
	.byte		        Cn5 
	.byte		N12   , Fn5 
	.byte	W12
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_8_006
	.byte	W12
	.byte		N12   , As4 , v088
	.byte		N12   , Dn5 
	.byte	W12
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_8_007
	.byte	W12
	.byte		N12   , As4 , v088
	.byte		N12   , Ds5 
	.byte	W12
	.byte	W12
	.byte		        Cn5 
	.byte		N12   , Fn5 
	.byte	W12
	.byte	W12
	.byte		        Cn5 
	.byte		N12   , Fn5 
	.byte	W12
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_8_006
	.byte	W12
	.byte		N12   , As4 , v088
	.byte		N12   , Dn5 
	.byte	W12
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_8_007
	.byte	W12
	.byte		N12   , As4 , v088
	.byte		N12   , Ds5 
	.byte	W12
	.byte	W12
	.byte		        Cn5 
	.byte		N12   , Fn5 
	.byte	W12
	.byte	W12
	.byte		        Cn5 
	.byte		N12   , Fn5 
	.byte	W12
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_8_006
	.byte	W12
	.byte		N12   , As4 , v088
	.byte		N12   , Dn5 
	.byte	W12
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte	W12
	.byte		        As4 
	.byte		N12   , Dn5 
	.byte	W12
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_8_007
	.byte	W12
	.byte		N12   , As4 , v088
	.byte		N12   , Ds5 
	.byte	W12
	.byte	W12
	.byte		        Dn5 
	.byte		N12   , Fs5 
	.byte	W12
	.byte	W12
	.byte		        Dn5 
	.byte		N12   , Fs5 
	.byte	W12
@ 014   ----------------------------------------
mus_touhou5_stage2_8_014:
	.byte	W12
	.byte		N12   , As5 , v088
	.byte		N12   , Dn6 
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		        As5 
	.byte		N12   , Dn6 
	.byte	W12
	.byte	W12
	.byte		        As5 
	.byte		N12   , Dn6 
	.byte	W12
	.byte	W12
	.byte		        As5 
	.byte		N12   , Dn6 
	.byte	W12
@ 015   ----------------------------------------
mus_touhou5_stage2_8_015:
	.byte	W12
	.byte		N12   , As5 , v088
	.byte		N12   , Ds6 
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		        As5 
	.byte		N12   , Ds6 
	.byte	W12
	.byte	W12
	.byte		        Cn6 
	.byte		N12   , Fn6 
	.byte	W12
	.byte	W12
	.byte		        Cn6 
	.byte		N12   , Fn6 
	.byte	W12
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_8_014
	.byte	W12
	.byte		N12   , As5 , v088
	.byte		N12   , Dn6 
	.byte	W12
	.byte	W12
	.byte		        As5 
	.byte		N12   , Dn6 
	.byte	W12
	.byte	W12
	.byte		        As5 
	.byte		N12   , Dn6 
	.byte	W12
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_8_015
	.byte	W12
	.byte		N12   , As5 , v088
	.byte		N12   , Ds6 
	.byte	W12
	.byte	W12
	.byte		        Cn6 
	.byte		N12   , Fn6 
	.byte	W12
	.byte	W12
	.byte		        Cn6 
	.byte		N12   , Fn6 
	.byte	W12
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_8_014
	.byte	W12
	.byte		N12   , As5 , v088
	.byte		N12   , Dn6 
	.byte	W12
	.byte	W12
	.byte		        As5 
	.byte		N12   , Dn6 
	.byte	W12
	.byte	W12
	.byte		        As5 
	.byte		N12   , Dn6 
	.byte	W12
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_8_015
	.byte	W12
	.byte		N12   , As5 , v088
	.byte		N12   , Ds6 
	.byte	W12
	.byte	W12
	.byte		        Cn6 
	.byte		N12   , Fn6 
	.byte	W12
	.byte	W12
	.byte		        Cn6 
	.byte		N12   , Fn6 
	.byte	W12
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_8_014
	.byte	W12
	.byte		N12   , As5 , v088
	.byte		N12   , Dn6 
	.byte	W12
	.byte	W12
	.byte		        As5 
	.byte		N12   , Dn6 
	.byte	W12
	.byte	W12
	.byte		        As5 
	.byte		N12   , Dn6 
	.byte	W12
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_8_015
	.byte	W12
	.byte		N12   , As5 , v088
	.byte		N12   , Ds6 
	.byte	W12
	.byte	W12
	.byte		        Dn6 
	.byte		N12   , Fs6 
	.byte	W12
	.byte	W12
	.byte		        Dn6 
	.byte		N12   , Fs6 
	.byte	W12
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
	.byte	W72
	.byte		N24   , Dn4 
	.byte		N24   , Dn5 
	.byte	W24
@ 038   ----------------------------------------
	.byte		N48   , Gn4 
	.byte		N48   , Gn5 
	.byte	W48
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		N12   , As4 
	.byte		N12   , As5 
	.byte	W12
	.byte		        Cn5 
	.byte		N12   , Cn6 
	.byte	W12
@ 039   ----------------------------------------
	.byte		N48   , As4 
	.byte		N48   , As5 
	.byte	W48
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		        Fn4 
	.byte		N24   , Fn5 
	.byte	W24
@ 040   ----------------------------------------
	.byte		N03   , Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N92   , Dn4 , v088, gtp1
	.byte		N03   , Fn4 
	.byte		N92   , Dn5 , v088, gtp1
	.byte		N03   , Fn5 
	.byte	W03
	.byte	W90
@ 041   ----------------------------------------
	.byte		N72   , Gn4 
	.byte		N72   , Gn5 
	.byte	W72
	.byte		N24   , Cn4 
	.byte		N24   , Cn5 
	.byte	W24
@ 042   ----------------------------------------
	.byte		N48   , Dn4 
	.byte		N48   , Dn5 
	.byte	W48
	.byte		N24   , Gn4 
	.byte		N24   , Gn5 
	.byte	W24
	.byte		N12   , An4 
	.byte		N12   , An5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , As5 
	.byte	W12
@ 043   ----------------------------------------
	.byte		N48   , An4 
	.byte		N48   , An5 
	.byte	W48
	.byte		N24   , Fn4 
	.byte		N24   , Fn5 
	.byte	W24
	.byte		        Cn4 
	.byte		N24   , Cn5 
	.byte	W24
@ 044   ----------------------------------------
	.byte		N03   , Dn4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N30   , Dn4 
	.byte		N30   , Dn5 
	.byte	W30
	.byte		TIE   , Gn3 
	.byte		TIE   , Gn4 
	.byte	W60
@ 045   ----------------------------------------
	.byte	W72
	.byte		EOT   , Gn3 
	.byte		        Gn4 
	.byte		N24   , Dn4 
	.byte		N24   , Dn5 
	.byte	W24
@ 046   ----------------------------------------
	.byte		N48   , Gn4 
	.byte		N48   , Gn5 
	.byte	W48
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		N12   , As4 
	.byte		N12   , As5 
	.byte	W12
	.byte		        Cn5 
	.byte		N12   , Cn6 
	.byte	W12
@ 047   ----------------------------------------
	.byte		N48   , As4 
	.byte		N48   , As5 
	.byte	W48
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		        Fn4 
	.byte		N24   , Fn5 
	.byte	W24
@ 048   ----------------------------------------
	.byte		N03   , Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N92   , Dn4 , v088, gtp1
	.byte		N03   , Fn4 
	.byte		N92   , Dn5 , v088, gtp1
	.byte		N03   , Fn5 
	.byte	W03
	.byte	W90
@ 049   ----------------------------------------
	.byte		N72   , Gn4 
	.byte		N72   , Gn5 
	.byte	W72
	.byte		N24   , Cn4 
	.byte		N24   , Cn5 
	.byte	W24
@ 050   ----------------------------------------
	.byte		N48   , Dn4 
	.byte		N48   , Dn5 
	.byte	W48
	.byte		N24   , Gn4 
	.byte		N24   , Gn5 
	.byte	W24
	.byte		N12   , An4 
	.byte		N12   , An5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , As5 
	.byte	W12
@ 051   ----------------------------------------
	.byte		N48   , An4 
	.byte		N48   , An5 
	.byte	W48
	.byte		N24   , Fn4 
	.byte		N24   , Fn5 
	.byte	W24
	.byte		        Cn4 
	.byte		N24   , Cn5 
	.byte	W24
@ 052   ----------------------------------------
	.byte		N03   , Dn4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N90   , Dn4 
	.byte		N90   , Dn5 
	.byte	W90
@ 053   ----------------------------------------
	.byte		N72   , Gn4 
	.byte		N72   , Gn5 
	.byte	W72
	.byte		N24   , Dn4 
	.byte		N24   , Dn5 
	.byte	W24
@ 054   ----------------------------------------
	.byte		N48   , Gn4 
	.byte		N48   , Gn5 
	.byte	W48
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		N12   , As4 
	.byte		N12   , As5 
	.byte	W12
	.byte		        Cn5 
	.byte		N12   , Cn6 
	.byte	W12
@ 055   ----------------------------------------
	.byte		N48   , As4 
	.byte		N48   , As5 
	.byte	W48
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		        Fn4 
	.byte		N24   , Fn5 
	.byte	W24
@ 056   ----------------------------------------
	.byte		N03   , Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N92   , Dn4 , v088, gtp1
	.byte		N03   , Fn4 
	.byte		N92   , Dn5 , v088, gtp1
	.byte		N03   , Fn5 
	.byte	W03
	.byte	W90
@ 057   ----------------------------------------
	.byte		N72   , Gn4 
	.byte		N72   , Gn5 
	.byte	W72
	.byte		N24   , Cn4 
	.byte		N24   , Cn5 
	.byte	W24
@ 058   ----------------------------------------
	.byte		N48   , Dn4 
	.byte		N48   , Dn5 
	.byte	W48
	.byte		N24   , Gn4 
	.byte		N24   , Gn5 
	.byte	W24
	.byte		N12   , An4 
	.byte		N12   , An5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , As5 
	.byte	W12
@ 059   ----------------------------------------
	.byte		N48   , An4 
	.byte		N48   , An5 
	.byte	W48
	.byte		N24   , Fn4 
	.byte		N24   , Fn5 
	.byte	W24
	.byte		        Cn4 
	.byte		N24   , Cn5 
	.byte	W24
@ 060   ----------------------------------------
	.byte		N03   , Dn4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N30   , Dn4 
	.byte		N30   , Dn5 
	.byte	W30
	.byte		TIE   , Gn3 
	.byte		TIE   , Gn4 
	.byte	W60
@ 061   ----------------------------------------
	.byte	W72
	.byte		EOT   , Gn3 
	.byte		        Gn4 
	.byte		N24   , Dn4 
	.byte		N24   , Dn5 
	.byte	W24
@ 062   ----------------------------------------
	.byte		N48   , Gn4 
	.byte		N48   , Gn5 
	.byte	W48
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		N12   , As4 
	.byte		N12   , As5 
	.byte	W12
	.byte		        Cn5 
	.byte		N12   , Cn6 
	.byte	W12
@ 063   ----------------------------------------
	.byte		N48   , As4 
	.byte		N48   , As5 
	.byte	W48
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		        Fn4 
	.byte		N24   , Fn5 
	.byte	W24
@ 064   ----------------------------------------
	.byte		N03   , Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N92   , Dn4 , v088, gtp1
	.byte		N03   , Fn4 
	.byte		N92   , Dn5 , v088, gtp1
	.byte		N03   , Fn5 
	.byte	W03
	.byte	W90
@ 065   ----------------------------------------
	.byte		N72   , Gn4 
	.byte		N72   , Gn5 
	.byte	W72
	.byte		N24   , Cn4 
	.byte		N24   , Cn5 
	.byte	W24
@ 066   ----------------------------------------
	.byte		N48   , Dn4 
	.byte		N48   , Dn5 
	.byte	W48
	.byte		N24   , Gn4 
	.byte		N24   , Gn5 
	.byte	W24
	.byte		N12   , An4 
	.byte		N12   , An5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , As5 
	.byte	W12
@ 067   ----------------------------------------
	.byte		N48   , An4 
	.byte		N48   , An5 
	.byte	W48
	.byte		N24   , Fn4 
	.byte		N24   , Fn5 
	.byte	W24
	.byte		        Cn4 
	.byte		N24   , Cn5 
	.byte	W24
@ 068   ----------------------------------------
	.byte		N03   , Dn4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N90   , Dn4 
	.byte		N90   , Dn5 
	.byte	W90
@ 069   ----------------------------------------
	.byte		N96   , Gn4 
	.byte		N96   , Gn5 
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
	.byte	FINE

@**************** Track 9 (Midi-Chn.10) ****************@

mus_touhou5_stage2_9:
	.byte	KEYSH , mus_touhou5_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		        16
	.byte		        16
	.byte		VOL   , 127*mus_touhou5_stage2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*mus_touhou5_stage2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*mus_touhou5_stage2_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		N03   , Cn1 , v100
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W92
	.byte	W01
@ 003   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W92
	.byte	W01
@ 004   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W44
	.byte	W01
@ 005   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		N03   
	.byte		N03   , Cs2 
	.byte		N03   , Dn2 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Dn2 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Cn2 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Cn2 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Bn1 , v112
	.byte		N03   , Cs2 , v100
	.byte	W03
	.byte		        Bn1 , v112
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , An1 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , An1 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
@ 006   ----------------------------------------
mus_touhou5_stage2_9_006:
	.byte		N03   , Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte		N03   , Cs2 , v100
	.byte	W03
	.byte	PEND
	.byte	W03
	.byte		        Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 007   ----------------------------------------
mus_touhou5_stage2_9_007:
	.byte		N03   , Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	PEND
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 , v076
	.byte		N03   , Dn2 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte		N03   , Dn2 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte		N03   , Cn2 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte		N03   , Cn2 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , An1 , v112
	.byte		N03   , As1 , v076
	.byte	W03
	.byte		        An1 , v112
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte		N03   , An1 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
@ 022   ----------------------------------------
mus_touhou5_stage2_9_022:
	.byte		N03   , Cn1 , v100
	.byte		N03   , As1 , v076
	.byte		N03   , Cs2 , v100
	.byte	W03
	.byte	PEND
	.byte	W03
	.byte		        Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
@ 023   ----------------------------------------
mus_touhou5_stage2_9_023:
	.byte		N03   , Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	PEND
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_023
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_023
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_023
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_023
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_023
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_023
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_022
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_023
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_023
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_023
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_023
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_023
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_023
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_023
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte		N03   , Dn2 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte		N03   , Dn2 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte		N03   , Cn2 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte		N03   , Cn2 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , As1 , v076
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte		N03   , An1 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte		N03   , An1 , v112
	.byte	W03
	.byte		N03   
	.byte	W03
@ 038   ----------------------------------------
	.byte		        Cn1 , v100
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W92
	.byte	W01
@ 039   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W68
	.byte	W01
	.byte		        En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W21
@ 040   ----------------------------------------
	.byte		        Cn1 , v100
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W92
	.byte	W01
@ 041   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W68
	.byte	W01
	.byte		        En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W21
@ 042   ----------------------------------------
	.byte		        Cn1 , v100
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W92
	.byte	W01
@ 043   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W92
	.byte	W01
@ 044   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W92
	.byte	W01
@ 045   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W68
	.byte	W01
	.byte		        En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte	W03
	.byte	W09
@ 046   ----------------------------------------
	.byte		N03   
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		        Cn1 
	.byte	W03
	.byte	W44
	.byte	W01
@ 047   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		        En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W21
@ 048   ----------------------------------------
	.byte		        Cn1 , v100
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		        Cn1 
	.byte	W03
	.byte	W44
	.byte	W01
@ 049   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		        En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W21
@ 050   ----------------------------------------
	.byte		        Cn1 , v100
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		        Cn1 
	.byte	W03
	.byte	W44
	.byte	W01
@ 051   ----------------------------------------
	.byte		N03   
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		N03   
	.byte	W03
	.byte	W21
	.byte		        En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W21
@ 052   ----------------------------------------
	.byte		        Cn1 , v100
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        En1 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		        En1 
	.byte	W03
	.byte	W21
@ 053   ----------------------------------------
	.byte		        Cn1 
	.byte	W03
	.byte	W21
	.byte		        En1 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_006
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
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
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
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
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
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
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
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
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_006
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
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
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
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
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
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
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_007
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
@ 068   ----------------------------------------
mus_touhou5_stage2_9_068:
	.byte		N03   , Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	PEND
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
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W09
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou5_stage2_9_068
	.byte	W03
	.byte		N03   , En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte	W03
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte	W03
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte		N03   , Dn2 , v112
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Dn2 , v112
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte		N03   , Dn2 , v112
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Dn2 , v112
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , As1 , v076
	.byte		N03   , Cn2 , v112
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Cn2 , v112
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Cn2 , v112
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Cn2 , v112
	.byte	W03
	.byte		        Cn1 , v100
	.byte		N03   , En1 
	.byte		N03   , Fs1 , v076
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Fs1 , v076
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , Bn1 , v112
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , An1 , v112
	.byte		N03   , As1 , v076
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , An1 , v112
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , An1 , v112
	.byte	W03
	.byte		        En1 , v100
	.byte		N03   , An1 , v112
	.byte	W03
@ 070   ----------------------------------------
	.byte		        Cn1 , v100
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W92
	.byte	W01
@ 071   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W92
	.byte	W01
@ 072   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W44
	.byte	W01
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W44
	.byte	W01
@ 073   ----------------------------------------
	.byte		        Cn1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W21
	.byte		        Cn1 
	.byte	W03
	.byte	W15
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W09
	.byte		        En1 
	.byte	W03
	.byte	W09
	.byte		        Cn1 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		N03   
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
@ 074   ----------------------------------------
	.byte	FINE

@**************** Track 10 (Midi-Chn.11) ****************@

mus_touhou5_stage2_10:
	.byte	KEYSH , mus_touhou5_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 16
	.byte		VOL   , 127*mus_touhou5_stage2_mvl/mxv
	.byte		PAN   , c_v-22
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
	.byte	W84
	.byte		N24   , Dn4 , v060
	.byte		N24   , Dn5 
	.byte	W12
@ 038   ----------------------------------------
	.byte	W12
	.byte		N48   , Gn4 
	.byte		N48   , Gn5 
	.byte	W48
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		N12   , As4 
	.byte		N12   , As5 
	.byte	W12
@ 039   ----------------------------------------
	.byte		        Cn5 
	.byte		N12   , Cn6 
	.byte	W12
	.byte		N48   , As4 
	.byte		N48   , As5 
	.byte	W48
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		        Fn4 
	.byte		N24   , Fn5 
	.byte	W12
@ 040   ----------------------------------------
	.byte	W12
	.byte		N03   , Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N92   , Dn4 , v060, gtp1
	.byte		N03   , Fn4 
	.byte		N92   , Dn5 , v060, gtp1
	.byte		N03   , Fn5 
	.byte	W03
	.byte	W78
@ 041   ----------------------------------------
	.byte	W12
	.byte		N72   , Gn4 
	.byte		N72   , Gn5 
	.byte	W72
	.byte		N24   , Cn4 
	.byte		N24   , Cn5 
	.byte	W12
@ 042   ----------------------------------------
	.byte	W12
	.byte		N48   , Dn4 
	.byte		N48   , Dn5 
	.byte	W48
	.byte		N24   , Gn4 
	.byte		N24   , Gn5 
	.byte	W24
	.byte		N12   , An4 
	.byte		N12   , An5 
	.byte	W12
@ 043   ----------------------------------------
	.byte		        As4 
	.byte		N12   , As5 
	.byte	W12
	.byte		N48   , An4 
	.byte		N48   , An5 
	.byte	W48
	.byte		N24   , Fn4 
	.byte		N24   , Fn5 
	.byte	W24
	.byte		        Cn4 
	.byte		N24   , Cn5 
	.byte	W12
@ 044   ----------------------------------------
	.byte	W12
	.byte		N03   , Dn4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N30   , Dn4 
	.byte		N30   , Dn5 
	.byte	W30
	.byte		TIE   , Gn3 
	.byte		TIE   , Gn4 
	.byte	W48
@ 045   ----------------------------------------
	.byte	W84
	.byte		EOT   , Gn3 
	.byte		        Gn4 
	.byte		N24   , Dn4 
	.byte		N24   , Dn5 
	.byte	W12
@ 046   ----------------------------------------
	.byte	W12
	.byte		N48   , Gn4 
	.byte		N48   , Gn5 
	.byte	W48
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		N12   , As4 
	.byte		N12   , As5 
	.byte	W12
@ 047   ----------------------------------------
	.byte		        Cn5 
	.byte		N12   , Cn6 
	.byte	W12
	.byte		N48   , As4 
	.byte		N48   , As5 
	.byte	W48
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		        Fn4 
	.byte		N24   , Fn5 
	.byte	W12
@ 048   ----------------------------------------
	.byte	W12
	.byte		N03   , Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N92   , Dn4 , v060, gtp1
	.byte		N03   , Fn4 
	.byte		N92   , Dn5 , v060, gtp1
	.byte		N03   , Fn5 
	.byte	W03
	.byte	W78
@ 049   ----------------------------------------
	.byte	W12
	.byte		N72   , Gn4 
	.byte		N72   , Gn5 
	.byte	W72
	.byte		N24   , Cn4 
	.byte		N24   , Cn5 
	.byte	W12
@ 050   ----------------------------------------
	.byte	W12
	.byte		N48   , Dn4 
	.byte		N48   , Dn5 
	.byte	W48
	.byte		N24   , Gn4 
	.byte		N24   , Gn5 
	.byte	W24
	.byte		N12   , An4 
	.byte		N12   , An5 
	.byte	W12
@ 051   ----------------------------------------
	.byte		        As4 
	.byte		N12   , As5 
	.byte	W12
	.byte		N48   , An4 
	.byte		N48   , An5 
	.byte	W48
	.byte		N24   , Fn4 
	.byte		N24   , Fn5 
	.byte	W24
	.byte		        Cn4 
	.byte		N24   , Cn5 
	.byte	W12
@ 052   ----------------------------------------
	.byte	W12
	.byte		N03   , Dn4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N90   , Dn4 
	.byte		N90   , Dn5 
	.byte	W78
@ 053   ----------------------------------------
	.byte	W12
	.byte		N72   , Gn4 
	.byte		N72   , Gn5 
	.byte	W72
	.byte		N24   , Dn4 
	.byte		N24   , Dn5 
	.byte	W12
@ 054   ----------------------------------------
	.byte	W12
	.byte		N48   , Gn4 
	.byte		N48   , Gn5 
	.byte	W48
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		N12   , As4 
	.byte		N12   , As5 
	.byte	W12
@ 055   ----------------------------------------
	.byte		        Cn5 
	.byte		N12   , Cn6 
	.byte	W12
	.byte		N48   , As4 
	.byte		N48   , As5 
	.byte	W48
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		        Fn4 
	.byte		N24   , Fn5 
	.byte	W12
@ 056   ----------------------------------------
	.byte	W12
	.byte		N03   , Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N92   , Dn4 , v060, gtp1
	.byte		N03   , Fn4 
	.byte		N92   , Dn5 , v060, gtp1
	.byte		N03   , Fn5 
	.byte	W03
	.byte	W78
@ 057   ----------------------------------------
	.byte	W12
	.byte		N72   , Gn4 
	.byte		N72   , Gn5 
	.byte	W72
	.byte		N24   , Cn4 
	.byte		N24   , Cn5 
	.byte	W12
@ 058   ----------------------------------------
	.byte	W12
	.byte		N48   , Dn4 
	.byte		N48   , Dn5 
	.byte	W48
	.byte		N24   , Gn4 
	.byte		N24   , Gn5 
	.byte	W24
	.byte		N12   , An4 
	.byte		N12   , An5 
	.byte	W12
@ 059   ----------------------------------------
	.byte		        As4 
	.byte		N12   , As5 
	.byte	W12
	.byte		N48   , An4 
	.byte		N48   , An5 
	.byte	W48
	.byte		N24   , Fn4 
	.byte		N24   , Fn5 
	.byte	W24
	.byte		        Cn4 
	.byte		N24   , Cn5 
	.byte	W12
@ 060   ----------------------------------------
	.byte	W12
	.byte		N03   , Dn4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N30   , Dn4 
	.byte		N30   , Dn5 
	.byte	W30
	.byte		TIE   , Gn3 
	.byte		TIE   , Gn4 
	.byte	W48
@ 061   ----------------------------------------
	.byte	W84
	.byte		EOT   , Gn3 
	.byte		        Gn4 
	.byte		N24   , Dn4 
	.byte		N24   , Dn5 
	.byte	W12
@ 062   ----------------------------------------
	.byte	W12
	.byte		N48   , Gn4 
	.byte		N48   , Gn5 
	.byte	W48
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		N12   , As4 
	.byte		N12   , As5 
	.byte	W12
@ 063   ----------------------------------------
	.byte		        Cn5 
	.byte		N12   , Cn6 
	.byte	W12
	.byte		N48   , As4 
	.byte		N48   , As5 
	.byte	W48
	.byte		N24   , An4 
	.byte		N24   , An5 
	.byte	W24
	.byte		        Fn4 
	.byte		N24   , Fn5 
	.byte	W12
@ 064   ----------------------------------------
	.byte	W12
	.byte		N03   , Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N92   , Dn4 , v060, gtp1
	.byte		N03   , Fn4 
	.byte		N92   , Dn5 , v060, gtp1
	.byte		N03   , Fn5 
	.byte	W03
	.byte	W78
@ 065   ----------------------------------------
	.byte	W12
	.byte		N72   , Gn4 
	.byte		N72   , Gn5 
	.byte	W72
	.byte		N24   , Cn4 
	.byte		N24   , Cn5 
	.byte	W12
@ 066   ----------------------------------------
	.byte	W12
	.byte		N48   , Dn4 
	.byte		N48   , Dn5 
	.byte	W48
	.byte		N24   , Gn4 
	.byte		N24   , Gn5 
	.byte	W24
	.byte		N12   , An4 
	.byte		N12   , An5 
	.byte	W12
@ 067   ----------------------------------------
	.byte		        As4 
	.byte		N12   , As5 
	.byte	W12
	.byte		N48   , An4 
	.byte		N48   , An5 
	.byte	W48
	.byte		N24   , Fn4 
	.byte		N24   , Fn5 
	.byte	W24
	.byte		        Cn4 
	.byte		N24   , Cn5 
	.byte	W12
@ 068   ----------------------------------------
	.byte	W12
	.byte		N03   , Dn4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte		        Cn4 
	.byte		N03   , Cn5 
	.byte	W03
	.byte		N90   , Dn4 
	.byte		N90   , Dn5 
	.byte	W78
@ 069   ----------------------------------------
	.byte	W12
	.byte		N96   , Gn4 
	.byte		N96   , Gn5 
	.byte	W84
@ 070   ----------------------------------------
	.byte	W12
	.byte	W84
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	FINE

@**************** Track 11 (Midi-Chn.12) ****************@

mus_touhou5_stage2_11:
	.byte	KEYSH , mus_touhou5_stage2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 15
	.byte		VOL   , 64*mus_touhou5_stage2_mvl/mxv
	.byte		PAN   , c_v-22
	.byte		VOL   , 64*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , Gn3 , v068
	.byte	W03
	.byte		VOL   , 65*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        66*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , An3 
	.byte	W03
	.byte		VOL   , 67*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        68*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , As3 
	.byte	W03
	.byte		VOL   , 69*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        70*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , Dn4 
	.byte	W03
	.byte		VOL   , 71*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        72*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , Gn3 
	.byte	W03
	.byte		VOL   , 73*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        74*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , An3 
	.byte	W03
	.byte		VOL   , 75*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        76*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , As3 
	.byte	W03
	.byte		VOL   , 77*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        78*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , Dn4 
	.byte	W03
	.byte		VOL   , 79*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        80*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , Gn3 
	.byte	W03
	.byte		VOL   , 81*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        82*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , An3 
	.byte	W03
	.byte		VOL   , 83*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        84*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , As3 
	.byte	W03
	.byte		VOL   , 85*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        86*mus_touhou5_stage2_mvl/mxv
	.byte		N06   , Dn4 
	.byte	W04
	.byte		VOL   , 87*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W01
	.byte		VOL   , 88*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        89*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , An3 
	.byte	W01
	.byte		VOL   , 90*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        91*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , As3 
	.byte	W01
	.byte		VOL   , 92*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        93*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W01
	.byte		VOL   , 94*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        95*mus_touhou5_stage2_mvl/mxv
	.byte	W02
@ 001   ----------------------------------------
	.byte		N06   , Gn3 
	.byte	W01
	.byte		VOL   , 96*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        97*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , An3 
	.byte	W01
	.byte		VOL   , 98*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        99*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , As3 
	.byte	W01
	.byte		VOL   , 100*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        101*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , Dn4 
	.byte	W01
	.byte		VOL   , 102*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        103*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , Gn3 
	.byte	W01
	.byte		VOL   , 104*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        105*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , An3 
	.byte	W01
	.byte		VOL   , 106*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        107*mus_touhou5_stage2_mvl/mxv
	.byte	W02
	.byte		N06   , As3 
	.byte	W01
	.byte		VOL   , 108*mus_touhou5_stage2_mvl/mxv
	.byte	W04
	.byte		        109*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , Dn4 
	.byte	W02
	.byte		VOL   , 110*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        111*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , Gn3 
	.byte	W02
	.byte		VOL   , 112*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        113*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , An3 
	.byte	W02
	.byte		VOL   , 114*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        115*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , As3 
	.byte	W02
	.byte		VOL   , 116*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        117*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , Dn4 
	.byte	W02
	.byte		VOL   , 118*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        119*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , Gn3 
	.byte	W02
	.byte		VOL   , 120*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        121*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , An3 
	.byte	W02
	.byte		VOL   , 122*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        123*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , As3 
	.byte	W02
	.byte		VOL   , 124*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        125*mus_touhou5_stage2_mvl/mxv
	.byte	W01
	.byte		N06   , Dn4 
	.byte	W02
	.byte		VOL   , 126*mus_touhou5_stage2_mvl/mxv
	.byte	W03
	.byte		        127*mus_touhou5_stage2_mvl/mxv
	.byte	W01
@ 002   ----------------------------------------
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 007   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 008   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 009   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 010   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 011   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 012   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 013   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 015   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 016   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 017   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 018   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 019   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
@ 020   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 021   ----------------------------------------
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
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
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 047   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 048   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 049   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 050   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 051   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 052   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 053   ----------------------------------------
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
@ 054   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 055   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 056   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 057   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 058   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 059   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 060   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 061   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 062   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 063   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 064   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 065   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 066   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 067   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 068   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
@ 069   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
@ 070   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 071   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 072   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 073   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 074   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_touhou5_stage2:
	.byte	11	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_touhou5_stage2_pri	@ Priority
	.byte	mus_touhou5_stage2_rev	@ Reverb.

	.word	mus_touhou5_stage2_grp

	.word	mus_touhou5_stage2_1
	.word	mus_touhou5_stage2_2
	.word	mus_touhou5_stage2_3
	.word	mus_touhou5_stage2_4
	.word	mus_touhou5_stage2_5
	.word	mus_touhou5_stage2_6
	.word	mus_touhou5_stage2_7
	.word	mus_touhou5_stage2_8
	.word	mus_touhou5_stage2_9
	.word	mus_touhou5_stage2_10
	.word	mus_touhou5_stage2_11

	.end
