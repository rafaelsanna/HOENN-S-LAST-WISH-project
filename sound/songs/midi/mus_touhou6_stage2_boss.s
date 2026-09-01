	.include "MPlayDef.s"

	.equ	mus_touhou6_stage2_boss_grp, voicegroup_ancient_groover
	.equ	mus_touhou6_stage2_boss_pri, 0
	.equ	mus_touhou6_stage2_boss_rev, reverb_set+50
	.equ	mus_touhou6_stage2_boss_mvl, 100
	.equ	mus_touhou6_stage2_boss_key, 0
	.equ	mus_touhou6_stage2_boss_tbs, 1
	.equ	mus_touhou6_stage2_boss_exg, 1
	.equ	mus_touhou6_stage2_boss_cmp, 1

	.section .rodata
	.global	mus_touhou6_stage2_boss
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_touhou6_stage2_boss_1:
	.byte	KEYSH , mus_touhou6_stage2_boss_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 152*mus_touhou6_stage2_boss_tbs/2
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou6_stage2_boss_mvl/mxv
	.byte		PAN   , c_v+8
	.byte	W96
@ 001   ----------------------------------------
	.byte	W72
	.byte		N24   , Ds3 , v100
	.byte		N24   , Gn3 
	.byte	W24
@ 002   ----------------------------------------
	.byte		N18   , Ds3 
	.byte		N18   , Cn4 
	.byte	W18
	.byte		        Ds3 
	.byte		N18   , As3 
	.byte	W18
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N48   
	.byte		N48   , Ds4 
	.byte	W48
@ 003   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W60
@ 005   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte		N24   , Fn4 
	.byte	W24
@ 006   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W60
@ 007   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
@ 008   ----------------------------------------
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W60
@ 009   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte		N24   , Fn4 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N18   , Ds3 
	.byte		N18   , Cn4 
	.byte	W18
	.byte		        Ds3 
	.byte		N18   , As3 
	.byte	W18
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N48   
	.byte		N48   , Ds4 
	.byte	W48
@ 011   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W60
@ 013   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte		N24   , Fn4 
	.byte	W24
@ 014   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W60
@ 015   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W60
@ 017   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N02   , Ds3 
	.byte		N02   , Fs3 
	.byte	W02
	.byte		        En3 
	.byte		N02   , Gn3 
	.byte	W02
	.byte		        Fn3 
	.byte		N02   , Gs3 
	.byte	W02
	.byte		        Fs3 
	.byte		N02   , An3 
	.byte	W02
	.byte		        Gn3 
	.byte		N02   , As3 
	.byte	W02
	.byte		        Gs3 
	.byte		N02   , Bn3 
	.byte	W02
	.byte		        An3 
	.byte		N02   , Cn4 
	.byte	W02
	.byte		        As3 
	.byte		N02   , Cs4 
	.byte	W02
	.byte		        Bn3 
	.byte		N02   , Dn4 
	.byte	W02
	.byte		        Cn4 
	.byte		N02   , Ds4 
	.byte	W02
	.byte		        Cs4 
	.byte		N02   , En4 
	.byte	W02
	.byte		        Dn4 
	.byte		N02   , Fn4 
	.byte	W02
@ 018   ----------------------------------------
	.byte		N12   , Fs3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N06   , Cs4 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N24   , Fn3 
	.byte		N24   , Gs3 
	.byte	W24
@ 019   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte	W48
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
	.byte	W72
	.byte		N02   , Ds3 , v068
	.byte		N02   , Gn3 
	.byte	W02
	.byte		        En3 
	.byte		N02   , Gs3 
	.byte	W02
	.byte		        Fn3 
	.byte		N02   , An3 
	.byte	W02
	.byte		        Fs3 
	.byte		N02   , As3 
	.byte	W02
	.byte		        Gn3 
	.byte		N02   , Bn3 
	.byte	W02
	.byte		        Gs3 
	.byte		N02   , Cn4 
	.byte	W02
	.byte		        An3 
	.byte		N02   , Cs4 
	.byte	W02
	.byte		        As3 
	.byte		N02   , Dn4 
	.byte	W02
	.byte		        Bn3 
	.byte		N02   , Ds4 
	.byte	W02
	.byte		        Cn4 
	.byte		N02   , En4 
	.byte	W02
	.byte		        Cs4 
	.byte		N02   , Fn4 
	.byte	W02
	.byte		        Dn4 
	.byte		N02   , Fs4 
	.byte	W02
@ 055   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_touhou6_stage2_boss_2:
	.byte	KEYSH , mus_touhou6_stage2_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou6_stage2_boss_mvl/mxv
	.byte		PAN   , c_v-16
	.byte	W96
@ 001   ----------------------------------------
	.byte	W72
	.byte		N24   , Ds3 , v076
	.byte		N24   , Gn3 
	.byte	W24
@ 002   ----------------------------------------
	.byte		N18   , Ds3 
	.byte		N18   , Cn4 
	.byte	W18
	.byte		        Ds3 
	.byte		N18   , As3 
	.byte	W18
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N48   
	.byte		N48   , Ds4 
	.byte	W48
@ 003   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W60
@ 005   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte		N24   , Fn4 
	.byte	W24
@ 006   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W60
@ 007   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
@ 008   ----------------------------------------
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W60
@ 009   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte		N24   , Fn4 
	.byte	W24
@ 010   ----------------------------------------
	.byte		N18   , Ds3 
	.byte		N18   , Cn4 
	.byte	W18
	.byte		        Ds3 
	.byte		N18   , As3 
	.byte	W18
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N48   
	.byte		N48   , Ds4 
	.byte	W48
@ 011   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Cn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
@ 012   ----------------------------------------
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W60
@ 013   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte		N24   , Fn4 
	.byte	W24
@ 014   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W60
@ 015   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N60   
	.byte		N60   , Ds4 
	.byte	W60
@ 017   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , As3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N02   , Ds3 
	.byte		N02   , Fs3 
	.byte	W02
	.byte		        En3 
	.byte		N02   , Gn3 
	.byte	W02
	.byte		        Fn3 
	.byte		N02   , Gs3 
	.byte	W02
	.byte		        Fs3 
	.byte		N02   , An3 
	.byte	W02
	.byte		        Gn3 
	.byte		N02   , As3 
	.byte	W02
	.byte		        Gs3 
	.byte		N02   , Bn3 
	.byte	W02
	.byte		        An3 
	.byte		N02   , Cn4 
	.byte	W02
	.byte		        As3 
	.byte		N02   , Cs4 
	.byte	W02
	.byte		        Bn3 
	.byte		N02   , Dn4 
	.byte	W02
	.byte		        Cn4 
	.byte		N02   , Ds4 
	.byte	W02
	.byte		        Cs4 
	.byte		N02   , En4 
	.byte	W02
	.byte		        Dn4 
	.byte		N02   , Fn4 
	.byte	W02
@ 018   ----------------------------------------
	.byte		N12   , Fs3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N06   , Cs4 
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Gs3 
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N24   , Fn3 
	.byte		N24   , Gs3 
	.byte	W24
@ 019   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte	W48
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
	.byte	W60
	.byte		N12   , Fn3 , v068
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N03   , As3 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		N12   , As3 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N48   , Fs3 
	.byte	W48
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N36   , As4 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N03   , Fn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		N12   , Cs4 
	.byte	W12
@ 039   ----------------------------------------
	.byte		N48   , Dn4 
	.byte	W48
	.byte	W24
	.byte		N24   , Gs4 
	.byte	W24
@ 040   ----------------------------------------
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
@ 041   ----------------------------------------
	.byte		        Ds5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Gs4 
	.byte	W09
	.byte		        Ds5 
	.byte	W03
	.byte	W09
	.byte	W03
	.byte		        Cn5 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N24   , Cs5 
	.byte	W24
@ 042   ----------------------------------------
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
@ 043   ----------------------------------------
	.byte		N36   
	.byte	W36
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
@ 044   ----------------------------------------
	.byte		N36   , Fs4 
	.byte		N36   , Fs5 
	.byte	W36
	.byte		N12   , Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N03   , As3 
	.byte		N03   , As4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , Fs5 
	.byte	W03
	.byte		        As3 
	.byte		N03   , As4 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , Fs5 
	.byte	W03
	.byte		N12   , As3 
	.byte		N12   , As4 
	.byte	W12
@ 045   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Fs4 
	.byte	W48
	.byte	W12
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Ds5 
	.byte	W12
@ 046   ----------------------------------------
	.byte		N36   , As4 
	.byte		N36   , As5 
	.byte	W36
	.byte		N12   , As4 
	.byte		N12   , As5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N03   , Fn4 
	.byte		N03   , Fn5 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , Fs5 
	.byte	W03
	.byte		        Fn4 
	.byte		N03   , Fn5 
	.byte	W03
	.byte		        Fs4 
	.byte		N03   , Fs5 
	.byte	W03
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
@ 047   ----------------------------------------
	.byte		N48   , Dn4 
	.byte		N48   , Dn5 
	.byte	W48
	.byte	W24
	.byte		N24   , Gs4 
	.byte		N24   , Gs5 
	.byte	W24
@ 048   ----------------------------------------
	.byte		N36   , Fs4 
	.byte		N36   , Fs5 
	.byte	W36
	.byte		N12   , Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , As5 
	.byte	W12
	.byte		        Cs5 
	.byte		N12   , Cs6 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Gs5 
	.byte	W12
@ 049   ----------------------------------------
	.byte		        Ds5 
	.byte		N12   , Ds6 
	.byte	W12
	.byte		        Cn5 
	.byte		N12   , Cn6 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Gs5 
	.byte	W09
	.byte		        Ds5 
	.byte		N12   , Ds6 
	.byte	W03
	.byte	W09
	.byte	W03
	.byte		        Cn5 
	.byte		N12   , Cn6 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		N24   , Cs5 
	.byte		N24   , Cs6 
	.byte	W24
@ 050   ----------------------------------------
	.byte		N12   , As4 
	.byte		N12   , As5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        Ds4 
	.byte		N12   , Ds5 
	.byte	W12
	.byte		        As4 
	.byte		N12   , As5 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        Fn4 
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Gs5 
	.byte	W12
@ 051   ----------------------------------------
	.byte		N36   , Gs4 
	.byte		N36   , Gs5 
	.byte	W36
	.byte		N12   , As4 
	.byte		N12   , As5 
	.byte	W12
	.byte		N24   , As4 
	.byte		N24   , As5 
	.byte	W24
	.byte		        As4 
	.byte	W24
@ 052   ----------------------------------------
	.byte		N12   , As4 , v076
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
@ 053   ----------------------------------------
	.byte		N36   
	.byte	W36
	.byte		N12   , As4 
	.byte	W12
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N12   , As4 
	.byte	W12
@ 054   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
@ 055   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_touhou6_stage2_boss_3:
	.byte	KEYSH , mus_touhou6_stage2_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou6_stage2_boss_mvl/mxv
	.byte		PAN   , c_v+8
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
	.byte	W48
	.byte		N12   , Ds3 , v112
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 020   ----------------------------------------
	.byte		N36   , As3 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N03   , Fs3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		N12   , Fs3 
	.byte	W12
@ 021   ----------------------------------------
	.byte		N48   , Ds3 
	.byte	W48
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		N12   , Gs3 
	.byte	W12
@ 023   ----------------------------------------
	.byte		N48   , As3 
	.byte	W48
	.byte	W24
	.byte		N24   , Fn4 
	.byte	W24
@ 024   ----------------------------------------
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W24
@ 026   ----------------------------------------
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 027   ----------------------------------------
	.byte		N36   
	.byte	W36
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 028   ----------------------------------------
	.byte		N36   , As3 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N03   , Fs3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		N12   , Fs3 
	.byte	W12
@ 029   ----------------------------------------
	.byte		N48   , Ds3 
	.byte	W48
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 030   ----------------------------------------
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		N12   , Gs3 
	.byte	W12
@ 031   ----------------------------------------
	.byte		N48   , As3 
	.byte	W48
	.byte	W24
	.byte		N24   , Fn4 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 033   ----------------------------------------
	.byte		        Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W24
@ 034   ----------------------------------------
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 035   ----------------------------------------
	.byte		N36   
	.byte	W36
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N36   , As3 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N03   , Fs3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		N12   , Fs3 
	.byte	W12
@ 037   ----------------------------------------
	.byte		N48   , Ds3 
	.byte	W48
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		N12   , Gs3 
	.byte	W12
@ 039   ----------------------------------------
	.byte		N48   , As3 
	.byte	W48
	.byte	W24
	.byte		N24   , Fn4 
	.byte	W24
@ 040   ----------------------------------------
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 041   ----------------------------------------
	.byte		        Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W24
@ 042   ----------------------------------------
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 043   ----------------------------------------
	.byte		N36   
	.byte	W36
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 044   ----------------------------------------
	.byte		N36   , As3 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N03   , Fs3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		N12   , Fs3 
	.byte	W12
@ 045   ----------------------------------------
	.byte		N48   , Ds3 
	.byte	W48
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 046   ----------------------------------------
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		N12   , Gs3 
	.byte	W12
@ 047   ----------------------------------------
	.byte		N48   , As3 
	.byte	W48
	.byte	W24
	.byte		N24   , Fn4 
	.byte	W24
@ 048   ----------------------------------------
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N12   
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 049   ----------------------------------------
	.byte		        Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W24
@ 050   ----------------------------------------
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 051   ----------------------------------------
	.byte		N36   
	.byte	W36
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N24   
	.byte	W24
	.byte		        As4 
	.byte	W24
@ 052   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
@ 053   ----------------------------------------
	.byte		N36   
	.byte	W36
	.byte		N12   , As4 
	.byte	W12
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N12   , As4 
	.byte	W12
@ 054   ----------------------------------------
	.byte		N12   
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
@ 055   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_touhou6_stage2_boss_4:
	.byte	KEYSH , mus_touhou6_stage2_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_touhou6_stage2_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-3
	.byte		N24   , Ds1 , v068
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-15
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-29
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-36
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-50
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
@ 002   ----------------------------------------
	.byte		        c_v+0
	.byte		N12   , Cn1 
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
@ 003   ----------------------------------------
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
@ 004   ----------------------------------------
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
@ 005   ----------------------------------------
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
@ 006   ----------------------------------------
	.byte		        Gs0 
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
@ 007   ----------------------------------------
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
@ 008   ----------------------------------------
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
@ 009   ----------------------------------------
	.byte		        As0 
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
@ 010   ----------------------------------------
	.byte		        Cn1 
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
@ 011   ----------------------------------------
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
@ 012   ----------------------------------------
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
@ 013   ----------------------------------------
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
@ 014   ----------------------------------------
	.byte		        Gs0 
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
@ 015   ----------------------------------------
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
@ 016   ----------------------------------------
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
@ 017   ----------------------------------------
	.byte		        As0 
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
@ 018   ----------------------------------------
	.byte		N36   , Bn0 
	.byte	W36
	.byte		N60   , Cs1 
	.byte	W60
@ 019   ----------------------------------------
	.byte		N96   , Ds1 
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
	.byte	W72
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-3
	.byte		N24   
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-15
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-29
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-36
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-50
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
@ 036   ----------------------------------------
mus_touhou6_stage2_boss_4_036:
	.byte		BEND  , c_v+0
	.byte		N48   , Ds1 , v068
	.byte	W48
	.byte	PEND
	.byte		        Cs1 
	.byte	W48
@ 037   ----------------------------------------
	.byte		N72   , Cn1 
	.byte	W72
	.byte		N24   
	.byte	W24
@ 038   ----------------------------------------
	.byte		N48   , Bn0 
	.byte	W48
	.byte		        Cs1 
	.byte	W48
@ 039   ----------------------------------------
	.byte		N72   , Dn1 
	.byte	W72
	.byte		N24   
	.byte	W24
@ 040   ----------------------------------------
	.byte		N48   , Ds1 
	.byte	W48
	.byte		        Cs1 
	.byte	W48
@ 041   ----------------------------------------
	.byte		N72   , Cn1 
	.byte	W72
	.byte		N24   , Cs1 
	.byte	W24
@ 042   ----------------------------------------
	.byte		N48   , Bn0 
	.byte	W48
	.byte		        Cs1 
	.byte	W48
@ 043   ----------------------------------------
	.byte		N72   , Ds1 
	.byte	W72
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-3
	.byte		N24   
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-15
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-29
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-36
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-50
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou6_stage2_boss_4_036
	.byte		N48   , Cs1 , v068
	.byte	W48
@ 045   ----------------------------------------
	.byte		N72   , Cn1 
	.byte	W72
	.byte		N24   
	.byte	W24
@ 046   ----------------------------------------
	.byte		N48   , Bn0 
	.byte	W48
	.byte		        Cs1 
	.byte	W48
@ 047   ----------------------------------------
	.byte		N72   , Dn1 
	.byte	W72
	.byte		N24   
	.byte	W24
@ 048   ----------------------------------------
	.byte		N48   , Ds1 
	.byte	W48
	.byte		        Cs1 
	.byte	W48
@ 049   ----------------------------------------
	.byte		N72   , Cn1 
	.byte	W72
	.byte		N24   , Cs1 
	.byte	W24
@ 050   ----------------------------------------
	.byte		N48   , Bn0 
	.byte	W48
	.byte		        Cs1 
	.byte	W48
@ 051   ----------------------------------------
	.byte		N72   , Ds1 
	.byte	W72
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-3
	.byte		N24   
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-15
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-29
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-36
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-50
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
@ 052   ----------------------------------------
mus_touhou6_stage2_boss_4_052:
	.byte		BEND  , c_v+0
	.byte		N48   , Bn0 , v068
	.byte	W48
	.byte	PEND
	.byte		        Cs1 
	.byte	W48
@ 053   ----------------------------------------
	.byte		N72   , Ds1 
	.byte	W72
	.byte		BEND  , c_v+0
	.byte		        c_v-1
	.byte		        c_v-2
	.byte		        c_v-2
	.byte		        c_v-3
	.byte		N24   
	.byte	W01
	.byte		BEND  , c_v-3
	.byte		        c_v-4
	.byte		        c_v-4
	.byte		        c_v-5
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte		        c_v-6
	.byte		        c_v-7
	.byte		        c_v-7
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte		        c_v-9
	.byte		        c_v-10
	.byte		        c_v-10
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-11
	.byte		        c_v-12
	.byte		        c_v-12
	.byte		        c_v-13
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte		        c_v-14
	.byte		        c_v-15
	.byte		        c_v-16
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-17
	.byte		        c_v-17
	.byte		        c_v-18
	.byte		        c_v-18
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-19
	.byte		        c_v-20
	.byte		        c_v-20
	.byte		        c_v-21
	.byte		        c_v-21
	.byte	W01
	.byte		        c_v-22
	.byte		        c_v-23
	.byte		        c_v-23
	.byte		        c_v-24
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-25
	.byte		        c_v-25
	.byte		        c_v-26
	.byte		        c_v-26
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-27
	.byte		        c_v-28
	.byte		        c_v-28
	.byte		        c_v-29
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-30
	.byte		        c_v-31
	.byte		        c_v-31
	.byte		        c_v-32
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-33
	.byte		        c_v-33
	.byte		        c_v-34
	.byte		        c_v-34
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-35
	.byte		        c_v-36
	.byte		        c_v-37
	.byte		        c_v-37
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-38
	.byte		        c_v-39
	.byte		        c_v-39
	.byte		        c_v-40
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-41
	.byte		        c_v-41
	.byte		        c_v-42
	.byte		        c_v-42
	.byte		        c_v-43
	.byte	W01
	.byte		        c_v-44
	.byte		        c_v-44
	.byte		        c_v-45
	.byte		        c_v-45
	.byte		        c_v-46
	.byte	W01
	.byte		        c_v-46
	.byte		        c_v-47
	.byte		        c_v-47
	.byte		        c_v-48
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-49
	.byte		        c_v-49
	.byte		        c_v-50
	.byte		        c_v-51
	.byte		        c_v-51
	.byte	W01
	.byte		        c_v-52
	.byte		        c_v-52
	.byte		        c_v-53
	.byte		        c_v-53
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-54
	.byte		        c_v-55
	.byte		        c_v-55
	.byte		        c_v-56
	.byte		        c_v-56
	.byte	W01
	.byte		        c_v-57
	.byte		        c_v-58
	.byte		        c_v-58
	.byte		        c_v-59
	.byte		        c_v-59
	.byte	W01
	.byte		        c_v-60
	.byte		        c_v-60
	.byte		        c_v-61
	.byte		        c_v-61
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-62
	.byte		        c_v-63
	.byte		        c_v-63
	.byte		        c_v-64
	.byte		        c_v-64
	.byte	W01
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou6_stage2_boss_4_052
	.byte		N48   , Cs1 , v068
	.byte	W48
@ 055   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_touhou6_stage2_boss_5:
	.byte	KEYSH , mus_touhou6_stage2_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou6_stage2_boss_mvl/mxv
	.byte		PAN   , c_v-16
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		N06   , Ds4 , v072
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
@ 007   ----------------------------------------
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
@ 008   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
@ 009   ----------------------------------------
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
@ 010   ----------------------------------------
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds6 
	.byte	W06
@ 011   ----------------------------------------
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        As3 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
@ 012   ----------------------------------------
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds6 
	.byte	W06
@ 013   ----------------------------------------
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Gn6 
	.byte	W06
	.byte		        Fn5 
	.byte		N06   , Fn6 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Gn6 
	.byte	W06
	.byte		        Fn5 
	.byte		N06   , Fn6 
	.byte	W06
@ 014   ----------------------------------------
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds6 
	.byte	W06
@ 015   ----------------------------------------
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        As3 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
@ 016   ----------------------------------------
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds6 
	.byte	W06
@ 017   ----------------------------------------
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Gn6 
	.byte	W06
	.byte		        Fn5 
	.byte		N06   , Fn6 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		N02   , Ds4 
	.byte		N02   , Fs4 
	.byte	W02
	.byte		        En4 
	.byte		N02   , Gn4 
	.byte	W02
	.byte		        Fn4 
	.byte		N02   , Gs4 
	.byte	W02
	.byte		        Fs4 
	.byte		N02   , An4 
	.byte	W02
	.byte		        Gn4 
	.byte		N02   , As4 
	.byte	W02
	.byte		        Gs4 
	.byte		N02   , Bn4 
	.byte	W02
	.byte		        An4 
	.byte		N02   , Cn5 
	.byte	W02
	.byte		        As4 
	.byte		N02   , Cs5 
	.byte	W02
	.byte		        Bn4 
	.byte		N02   , Dn5 
	.byte	W02
	.byte		        Cn5 
	.byte		N02   , Ds5 
	.byte	W02
	.byte		        Cs5 
	.byte		N02   , En5 
	.byte	W02
	.byte		        Dn5 
	.byte		N02   , Fn5 
	.byte	W02
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
	.byte	W72
	.byte		        Ds3 , v032
	.byte		N02   , Gn3 
	.byte	W02
	.byte		        En3 
	.byte		N02   , Gs3 
	.byte	W02
	.byte		        Fn3 
	.byte		N02   , An3 
	.byte	W02
	.byte		        Fs3 
	.byte		N02   , As3 
	.byte	W02
	.byte		        Gn3 
	.byte		N02   , Bn3 
	.byte	W02
	.byte		        Gs3 
	.byte		N02   , Cn4 
	.byte	W02
	.byte		        An3 
	.byte		N02   , Cs4 
	.byte	W02
	.byte		        As3 
	.byte		N02   , Dn4 
	.byte	W02
	.byte		        Bn3 
	.byte		N02   , Ds4 
	.byte	W02
	.byte		        Cn4 
	.byte		N02   , En4 
	.byte	W02
	.byte		        Cs4 
	.byte		N02   , Fn4 
	.byte	W02
	.byte		        Dn4 
	.byte		N02   , Fs4 
	.byte	W02
@ 055   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_touhou6_stage2_boss_6:
	.byte	KEYSH , mus_touhou6_stage2_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou6_stage2_boss_mvl/mxv
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
	.byte		N12   , Ds3 , v068
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
@ 021   ----------------------------------------
	.byte		N12   , As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 022   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N18   , Fn3 
	.byte	W18
@ 023   ----------------------------------------
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N18   , As3 
	.byte	W18
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N18   , As3 
	.byte	W18
@ 024   ----------------------------------------
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , As2 
	.byte	W06
	.byte		N18   , Fn3 
	.byte	W18
@ 025   ----------------------------------------
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 026   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N18   , Gs3 
	.byte	W18
@ 027   ----------------------------------------
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 028   ----------------------------------------
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
@ 029   ----------------------------------------
	.byte		N12   , As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N18   , Fn3 
	.byte	W18
@ 031   ----------------------------------------
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N18   , As3 
	.byte	W18
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N18   , As3 
	.byte	W18
@ 032   ----------------------------------------
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , As2 
	.byte	W06
	.byte		N18   , Fn3 
	.byte	W18
@ 033   ----------------------------------------
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 034   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N18   , Gs3 
	.byte	W18
@ 035   ----------------------------------------
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 036   ----------------------------------------
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
@ 037   ----------------------------------------
	.byte		N12   , As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 038   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N18   , Fn3 
	.byte	W18
@ 039   ----------------------------------------
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N18   , As3 
	.byte	W18
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N18   , As3 
	.byte	W18
@ 040   ----------------------------------------
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , As2 
	.byte	W06
	.byte		N18   , Fn3 
	.byte	W18
@ 041   ----------------------------------------
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 042   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N18   , Gs3 
	.byte	W18
@ 043   ----------------------------------------
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 044   ----------------------------------------
	.byte		        Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
@ 045   ----------------------------------------
	.byte		N12   , As2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 046   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N18   , Fn3 
	.byte	W18
@ 047   ----------------------------------------
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N18   , As3 
	.byte	W18
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N18   , As3 
	.byte	W18
@ 048   ----------------------------------------
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , As2 
	.byte	W06
	.byte		N18   , Fn3 
	.byte	W18
@ 049   ----------------------------------------
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 050   ----------------------------------------
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N18   , Gs3 
	.byte	W18
@ 051   ----------------------------------------
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W18
	.byte		N12   , As3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_touhou6_stage2_boss_7:
	.byte	KEYSH , mus_touhou6_stage2_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou6_stage2_boss_mvl/mxv
	.byte		PAN   , c_v+8
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
	.byte		N48   , Fs3 , v052
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Fn4 
	.byte	W48
@ 020   ----------------------------------------
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
@ 021   ----------------------------------------
	.byte		        Cn4 
	.byte		N48   , Gs4 
	.byte	W48
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
@ 022   ----------------------------------------
	.byte		N48   , Bn2 
	.byte		N48   , Ds3 
	.byte	W48
	.byte		N24   , Cs3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N24   
	.byte		N24   , Cs4 
	.byte	W24
@ 023   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N24   , Fs3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , Dn4 
	.byte	W24
@ 024   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
@ 025   ----------------------------------------
	.byte		        Ds3 
	.byte		N48   , Cn4 
	.byte	W48
	.byte		        Ds3 
	.byte		N48   , Cn4 
	.byte	W48
@ 026   ----------------------------------------
	.byte		        Ds3 
	.byte		N48   , Bn3 
	.byte	W48
	.byte		        Fn3 
	.byte		N48   , Cs4 
	.byte	W48
@ 027   ----------------------------------------
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
@ 028   ----------------------------------------
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
@ 029   ----------------------------------------
	.byte		        Cn4 
	.byte		N48   , Gs4 
	.byte	W48
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
@ 030   ----------------------------------------
	.byte		N48   , Bn2 
	.byte		N48   , Ds3 
	.byte	W48
	.byte		N24   , Cs3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N24   
	.byte		N24   , Cs4 
	.byte	W24
@ 031   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N24   , Fs3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , Dn4 
	.byte	W24
@ 032   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
@ 033   ----------------------------------------
	.byte		        Ds3 
	.byte		N48   , Cn4 
	.byte	W48
	.byte		        Ds3 
	.byte		N48   , Cn4 
	.byte	W48
@ 034   ----------------------------------------
	.byte		        Ds3 
	.byte		N48   , Bn3 
	.byte	W48
	.byte		        Fn3 
	.byte		N48   , Cs4 
	.byte	W48
@ 035   ----------------------------------------
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
@ 036   ----------------------------------------
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
@ 037   ----------------------------------------
	.byte		        Cn4 
	.byte		N48   , Gs4 
	.byte	W48
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
@ 038   ----------------------------------------
	.byte		N48   , Bn2 
	.byte		N48   , Ds3 
	.byte	W48
	.byte		N24   , Cs3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N24   
	.byte		N24   , Cs4 
	.byte	W24
@ 039   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N24   , Fs3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , Dn4 
	.byte	W24
@ 040   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
@ 041   ----------------------------------------
	.byte		        Ds3 
	.byte		N48   , Cn4 
	.byte	W48
	.byte		        Ds3 
	.byte		N48   , Cn4 
	.byte	W48
@ 042   ----------------------------------------
	.byte		        Ds3 
	.byte		N48   , Bn3 
	.byte	W48
	.byte		        Fn3 
	.byte		N48   , Cs4 
	.byte	W48
@ 043   ----------------------------------------
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
@ 044   ----------------------------------------
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
@ 045   ----------------------------------------
	.byte		        Cn4 
	.byte		N48   , Gs4 
	.byte	W48
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Gs3 
	.byte	W12
@ 046   ----------------------------------------
	.byte		N48   , Bn2 
	.byte		N48   , Ds3 
	.byte	W48
	.byte		N24   , Cs3 
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N24   
	.byte		N24   , Cs4 
	.byte	W24
@ 047   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N24   , Fs3 
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Fs3 
	.byte		N24   , Dn4 
	.byte	W24
@ 048   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
@ 049   ----------------------------------------
	.byte		        Ds3 
	.byte		N48   , Cn4 
	.byte	W48
	.byte		        Ds3 
	.byte		N48   , Cn4 
	.byte	W48
@ 050   ----------------------------------------
	.byte		        Ds3 
	.byte		N48   , Bn3 
	.byte	W48
	.byte		        Fn3 
	.byte		N48   , Cs4 
	.byte	W48
@ 051   ----------------------------------------
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
	.byte		        Fs3 
	.byte		N48   , Ds4 
	.byte	W48
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_touhou6_stage2_boss_8:
	.byte	KEYSH , mus_touhou6_stage2_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou6_stage2_boss_mvl/mxv
	.byte		PAN   , c_v-32
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
	.byte		N48   , Ds2 , v052
	.byte		N48   , As2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , Gs2 
	.byte	W48
@ 020   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , As2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , As2 
	.byte	W48
@ 021   ----------------------------------------
	.byte		        Cn2 
	.byte		N48   , Gs2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Gs2 
	.byte	W48
@ 022   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , Fn2 
	.byte	W48
@ 023   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , As2 
	.byte	W48
	.byte		        Dn2 
	.byte		N48   , As2 
	.byte	W48
@ 024   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , As2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , As2 
	.byte	W48
@ 025   ----------------------------------------
	.byte		N72   , Cn2 
	.byte		N72   , Gs2 
	.byte	W72
	.byte		N24   , Cs2 
	.byte		N24   , Gs2 
	.byte	W24
@ 026   ----------------------------------------
	.byte		N48   , Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , Gs2 
	.byte	W48
@ 027   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , As2 
	.byte	W48
	.byte		        Ds2 
	.byte		N48   , As2 
	.byte	W48
@ 028   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , As2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , As2 
	.byte	W48
@ 029   ----------------------------------------
	.byte		        Cn2 
	.byte		N48   , Gs2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Gs2 
	.byte	W48
@ 030   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , Fn2 
	.byte	W48
@ 031   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , As2 
	.byte	W48
	.byte		        Dn2 
	.byte		N48   , As2 
	.byte	W48
@ 032   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , As2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , As2 
	.byte	W48
@ 033   ----------------------------------------
	.byte		N72   , Cn2 
	.byte		N72   , Gs2 
	.byte	W72
	.byte		N24   , Cs2 
	.byte		N24   , Gs2 
	.byte	W24
@ 034   ----------------------------------------
	.byte		N48   , Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , Gs2 
	.byte	W48
@ 035   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , As2 
	.byte	W48
	.byte		        Ds2 
	.byte		N48   , As2 
	.byte	W48
@ 036   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , As2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , As2 
	.byte	W48
@ 037   ----------------------------------------
	.byte		        Cn2 
	.byte		N48   , Gs2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Gs2 
	.byte	W48
@ 038   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , Fn2 
	.byte	W48
@ 039   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , As2 
	.byte	W48
	.byte		        Dn2 
	.byte		N48   , As2 
	.byte	W48
@ 040   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , As2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , As2 
	.byte	W48
@ 041   ----------------------------------------
	.byte		N72   , Cn2 
	.byte		N72   , Gs2 
	.byte	W72
	.byte		N24   , Cs2 
	.byte		N24   , Gs2 
	.byte	W24
@ 042   ----------------------------------------
	.byte		N48   , Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , Gs2 
	.byte	W48
@ 043   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , As2 
	.byte	W48
	.byte		        Ds2 
	.byte		N48   , As2 
	.byte	W48
@ 044   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , As2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , As2 
	.byte	W48
@ 045   ----------------------------------------
	.byte		        Cn2 
	.byte		N48   , Gs2 
	.byte	W48
	.byte		        Cn2 
	.byte		N48   , Gs2 
	.byte	W48
@ 046   ----------------------------------------
	.byte		        Bn1 
	.byte		N48   , Ds2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , Fn2 
	.byte	W48
@ 047   ----------------------------------------
	.byte		        Dn2 
	.byte		N48   , As2 
	.byte	W48
	.byte		        Dn2 
	.byte		N48   , As2 
	.byte	W48
@ 048   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , As2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , As2 
	.byte	W48
@ 049   ----------------------------------------
	.byte		N72   , Cn2 
	.byte		N72   , Gs2 
	.byte	W72
	.byte		N24   , Cs2 
	.byte		N24   , Gs2 
	.byte	W24
@ 050   ----------------------------------------
	.byte		N48   , Bn1 
	.byte		N48   , Fs2 
	.byte	W48
	.byte		        Cs2 
	.byte		N48   , Gs2 
	.byte	W48
@ 051   ----------------------------------------
	.byte		        Ds2 
	.byte		N48   , As2 
	.byte	W48
	.byte		        Ds2 
	.byte		N48   , As2 
	.byte	W48
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	FINE

@**************** Track 9 (Midi-Chn.10) ****************@

mus_touhou6_stage2_boss_9:
	.byte	KEYSH , mus_touhou6_stage2_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 127*mus_touhou6_stage2_boss_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Bn0 , v076
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
@ 001   ----------------------------------------
mus_touhou6_stage2_boss_9_001:
	.byte	W06
	.byte		N03   , Bn0 , v076
	.byte		N03   , Fs1 
	.byte	W03
	.byte	PEND
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Cn2 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte		N03   , Cn2 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte		N03   , Fs1 
	.byte		N03   , Gn1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
@ 002   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou6_stage2_boss_9_001
	.byte	W03
	.byte		N03   , Bn0 , v076
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
@ 004   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou6_stage2_boss_9_001
	.byte	W03
	.byte		N03   , Bn0 , v076
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
@ 006   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou6_stage2_boss_9_001
	.byte	W03
	.byte		N03   , Bn0 , v076
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
@ 008   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou6_stage2_boss_9_001
	.byte	W03
	.byte		N03   , Bn0 , v076
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
@ 010   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou6_stage2_boss_9_001
	.byte	W03
	.byte		N03   , Bn0 , v076
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
@ 012   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou6_stage2_boss_9_001
	.byte	W03
	.byte		N03   , Bn0 , v076
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
@ 014   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou6_stage2_boss_9_001
	.byte	W03
	.byte		N03   , Bn0 , v076
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
@ 016   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou6_stage2_boss_9_001
	.byte	W03
	.byte		N03   , Bn0 , v076
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        Bn0 , v028
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 , v036
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 , v044
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 , v052
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 , v060
	.byte		N03   , En1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Bn0 , v068
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 , v076
	.byte		N03   , En1 
	.byte	W03
	.byte	W09
@ 018   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W32
	.byte	W01
	.byte		        Bn0 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W32
	.byte	W01
	.byte		        Bn0 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W09
@ 019   ----------------------------------------
	.byte		N03   
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
@ 020   ----------------------------------------
mus_touhou6_stage2_boss_9_020:
	.byte		N03   , Bn0 , v076
	.byte		N03   , Fs1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	PEND
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 021   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 022   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 023   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou6_stage2_boss_9_020
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 025   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 026   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 027   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou6_stage2_boss_9_020
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 029   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 030   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 031   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou6_stage2_boss_9_020
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 033   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 034   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 035   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 036   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou6_stage2_boss_9_020
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 037   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 038   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 039   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou6_stage2_boss_9_020
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 041   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 042   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 043   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou6_stage2_boss_9_020
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 045   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 046   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 047   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_touhou6_stage2_boss_9_020
	.byte	W03
	.byte		N03   , Fs1 , v076
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 049   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 050   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W09
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 051   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
@ 052   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
@ 053   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , As1 
	.byte	W03
	.byte	W09
@ 054   ----------------------------------------
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte		N03   , Fs1 
	.byte		N03   , Cs2 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	W03
	.byte		        Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte		N03   , Fs1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte		N03   , As1 
	.byte	W03
	.byte	W03
	.byte		        Bn0 
	.byte		N03   , En1 
	.byte	W03
	.byte	W03
@ 055   ----------------------------------------
	.byte	FINE

@**************** Track 10 (Midi-Chn.10) ****************@

mus_touhou6_stage2_boss_10:
	.byte	KEYSH , mus_touhou6_stage2_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 127*mus_touhou6_stage2_boss_mvl/mxv
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
	.byte		N03   , Fn3 , v044
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 021   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 022   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 023   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 024   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 025   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 026   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 027   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 028   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 029   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 030   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 031   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 032   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 033   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 034   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 035   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 036   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 037   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 038   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 039   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 040   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 041   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 042   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 043   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 044   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 045   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 046   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 047   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 048   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 049   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 050   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 051   ----------------------------------------
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W09
	.byte		        Fs3 
	.byte	W03
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte	W09
	.byte		N03   
	.byte	W03
	.byte	W03
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	FINE

@**************** Track 11 (Midi-Chn.11) ****************@

mus_touhou6_stage2_boss_11:
	.byte	KEYSH , mus_touhou6_stage2_boss_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*mus_touhou6_stage2_boss_mvl/mxv
	.byte		PAN   , c_v+8
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W12
	.byte		N06   , Ds4 , v032
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
@ 007   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
@ 008   ----------------------------------------
	.byte		        Cn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
@ 009   ----------------------------------------
	.byte		        Ds4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N06   
	.byte	W06
@ 010   ----------------------------------------
	.byte		        Gn5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds6 
	.byte	W06
@ 011   ----------------------------------------
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        As3 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
@ 012   ----------------------------------------
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds6 
	.byte	W06
@ 013   ----------------------------------------
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Gn6 
	.byte	W06
	.byte		        Fn5 
	.byte		N06   , Fn6 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
@ 014   ----------------------------------------
	.byte		N06   
	.byte		N06   , Gn6 
	.byte	W06
	.byte		        Fn5 
	.byte		N06   , Fn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds6 
	.byte	W06
@ 015   ----------------------------------------
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Dn4 
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        As3 
	.byte		N06   , As4 
	.byte	W06
	.byte		        Cn4 
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
@ 016   ----------------------------------------
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte		N06   , Cn6 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds6 
	.byte	W06
@ 017   ----------------------------------------
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		N06   
	.byte		N06   , Gn6 
	.byte	W06
	.byte		        Fn5 
	.byte		N06   , Fn6 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Ds4 
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Fn4 
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Gn4 
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        Ds5 
	.byte		N06   , Ds6 
	.byte	W06
	.byte		        Dn5 
	.byte		N06   , Dn6 
	.byte	W06
	.byte		N02   , Ds4 
	.byte		N02   , Fs4 
	.byte	W02
	.byte	W10
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
	.byte	FINE

@******************************************************@
	.align	2

mus_touhou6_stage2_boss:
	.byte	11	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_touhou6_stage2_boss_pri	@ Priority
	.byte	mus_touhou6_stage2_boss_rev	@ Reverb.

	.word	mus_touhou6_stage2_boss_grp

	.word	mus_touhou6_stage2_boss_1
	.word	mus_touhou6_stage2_boss_2
	.word	mus_touhou6_stage2_boss_3
	.word	mus_touhou6_stage2_boss_4
	.word	mus_touhou6_stage2_boss_5
	.word	mus_touhou6_stage2_boss_6
	.word	mus_touhou6_stage2_boss_7
	.word	mus_touhou6_stage2_boss_8
	.word	mus_touhou6_stage2_boss_9
	.word	mus_touhou6_stage2_boss_10
	.word	mus_touhou6_stage2_boss_11

	.end
