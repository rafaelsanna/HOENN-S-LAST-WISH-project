	.include "MPlayDef.s"

	.equ	mus_vs_gym_leader_metal_grp, voicegroup_hlw_rock_metal
	.equ	mus_vs_gym_leader_metal_pri, 0
	.equ	mus_vs_gym_leader_metal_rev, reverb_set+12
	.equ	mus_vs_gym_leader_metal_mvl, 90
	.equ	mus_vs_gym_leader_metal_key, 0
	.equ	mus_vs_gym_leader_metal_tbs, 1
	.equ	mus_vs_gym_leader_metal_exg, 0
	.equ	mus_vs_gym_leader_metal_cmp, 1

	.section .rodata
	.global	mus_vs_gym_leader_metal
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_vs_gym_leader_metal_1:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
@ 001   ----------------------------------------
	.byte	TEMPO , 116*mus_vs_gym_leader_metal_tbs/2
	.byte		VOICE , 31
	.byte		VOL   , 118*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+12
	.byte		N04   , Cn5 , v104
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
@ 002   ----------------------------------------
mus_vs_gym_leader_metal_1_002:
	.byte		N10   , Cn4 , v104
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Fn3 , v100
	.byte	W06
	.byte		        Ds3 , v104
	.byte	W06
	.byte		N10   , Cn3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En3 , v100
	.byte	W06
	.byte		        Fn3 , v104
	.byte	W06
	.byte		N10   , Gn3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En3 , v100
	.byte	W06
	.byte		        Dn3 , v104
	.byte	W06
	.byte		N10   , Cs3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Gn3 , v100
	.byte	W06
	.byte		        An3 , v104
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte		N10   , Cn4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En4 , v100
	.byte	W06
	.byte		        Fn4 , v104
	.byte	W06
	.byte		N10   , Gn4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        As4 , v100
	.byte	W06
	.byte		        Cn5 , v104
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Fn4 , v100
	.byte	W06
	.byte		        En4 , v104
	.byte	W06
	.byte		N10   , Cs4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn4 , v100
	.byte	W06
	.byte		        Cn4 , v104
	.byte	W06
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_1_002
@ 005   ----------------------------------------
	.byte		N10   , Cn4 , v104
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Fn3 , v100
	.byte	W06
	.byte		        Ds3 , v104
	.byte	W06
	.byte		N10   , Cn3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Gn3 , v100
	.byte	W06
	.byte		        As3 , v104
	.byte	W06
	.byte		N10   , Cs4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Gn3 , v100
	.byte	W06
	.byte		        Fn3 , v104
	.byte	W06
	.byte		N11   , Ds3 
	.byte	W06
	.byte		N04   , An3 
	.byte	W06
	.byte		N11   , Cs4 
	.byte	W06
	.byte		N04   , Cn4 
	.byte	W06
mus_vs_gym_leader_metal_1_B1:
@ 006   ----------------------------------------
	.byte		N10   , Cn4 , v104
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        As3 , v100
	.byte	W06
	.byte		        As3 , v104
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn4 , v100
	.byte	W06
	.byte		        Cs4 , v104
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W02
	.byte		N10   , Gn3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N03   , Gn3 , v100
	.byte	W04
	.byte		N01   , Gn3 , v104
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 007   ----------------------------------------
	.byte		N10   , En4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cs4 , v100
	.byte	W06
	.byte		N10   , Cn4 , v104
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cs4 , v100
	.byte	W06
	.byte		N05   , Dn4 , v104
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N04   , Dn4 
	.byte	W06
	.byte		N10   , Cn4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn4 , v100
	.byte	W06
	.byte		        Gn4 , v104
	.byte	W06
	.byte		        An4 , v100
	.byte	W06
@ 008   ----------------------------------------
	.byte		N10   , As4 , v104
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        As4 , v100
	.byte	W06
	.byte		        An4 , v104
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Gn4 , v100
	.byte	W06
	.byte		        Gn4 , v104
	.byte	W06
	.byte		N11   
	.byte	W06
	.byte		N04   , An4 
	.byte	W06
	.byte		N11   
	.byte	W06
	.byte		N04   , Gn4 
	.byte	W06
	.byte		N11   
	.byte	W06
	.byte		N04   , Fn4 
	.byte	W06
	.byte		N11   
	.byte	W06
	.byte		N04   , En4 
	.byte	W06
@ 009   ----------------------------------------
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Fn4 , v100
	.byte	W06
	.byte		N11   , Fn4 , v104
	.byte	W06
	.byte		N04   , En4 
	.byte	W06
	.byte		N16   
	.byte	W06
	.byte		N11   , Cn4 
	.byte	W06
	.byte		N04   , En4 
	.byte	W06
	.byte		N24   , Gn4 
	.byte	W06
	.byte		N10   , Cn4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N10   , Cn4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Ds4 , v100
	.byte	W06
@ 010   ----------------------------------------
	.byte		N10   , Fn4 , v104
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En4 , v100
	.byte	W06
	.byte		        En4 , v104
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En4 , v100
	.byte	W06
	.byte		        Fn4 , v104
	.byte	W06
	.byte		N11   
	.byte	W06
	.byte		N04   , En4 
	.byte	W06
	.byte		N11   
	.byte	W06
	.byte		N04   , Gn4 
	.byte	W06
	.byte		N11   , An4 
	.byte	W06
	.byte		N04   , Cn5 
	.byte	W06
	.byte		N11   , Dn5 
	.byte	W06
	.byte		N04   , Cs5 
	.byte	W06
@ 011   ----------------------------------------
	.byte		N10   , Cn5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        As4 , v104
	.byte	W06
	.byte		        As4 , v100
	.byte	W06
	.byte		        As4 , v104
	.byte	W06
	.byte		N11   , An4 
	.byte	W06
	.byte		N04   , Gn4 
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Gn4 , v100
	.byte	W06
	.byte		        Dn5 , v104
	.byte	W06
	.byte		        Cs4 , v100
	.byte	W06
	.byte		        Cn4 , v104
	.byte	W06
	.byte		        As3 , v100
	.byte	W06
	.byte		        Gn3 , v104
	.byte	W06
@ 012   ----------------------------------------
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N22   , As3 
	.byte	W06
	.byte		N04   , Gn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N04   , As3 
	.byte	W06
	.byte		N17   , Dn4 
	.byte	W06
	.byte		N04   , Gn3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
@ 013   ----------------------------------------
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N05   , Dn4 
	.byte	W06
	.byte		N04   , Gn3 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N04   , Gn3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
@ 014   ----------------------------------------
	.byte		N23   , As2 , v096
	.byte	W06
	.byte		N04   , Dn3 
	.byte	W08
	.byte		N06   
	.byte	W04
	.byte		N02   
	.byte	W06
	.byte		N23   , An3 
	.byte	W06
	.byte		N04   , Dn3 
	.byte	W06
	.byte		N05   
	.byte	W08
	.byte		N06   
	.byte	W04
	.byte		N02   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N11   , An3 
	.byte	W06
	.byte		N04   , Dn3 
	.byte	W06
	.byte		N11   , Gn3 
	.byte	W06
	.byte		N04   , Dn3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
@ 015   ----------------------------------------
	.byte		        Gn3 
	.byte	W06
	.byte		N04   
	.byte	W08
	.byte		N06   
	.byte	W04
	.byte		N02   
	.byte	W08
	.byte		N06   
	.byte	W04
	.byte		N02   
	.byte	W06
	.byte		N05   
	.byte	W08
	.byte		N06   
	.byte	W04
	.byte		N02   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N04   
	.byte	W08
	.byte		N06   
	.byte	W04
	.byte		N02   
	.byte	W06
	.byte		N11   , Dn3 
	.byte	W08
	.byte		N06   , Cn4 
	.byte	W04
@ 016   ----------------------------------------
	.byte		N14   , Fn4 
	.byte	W08
	.byte		N06   
	.byte	W08
	.byte		        En4 , v088
	.byte	W08
	.byte		N14   , En4 , v096
	.byte	W08
	.byte		N06   
	.byte	W08
	.byte		        Fn4 , v088
	.byte	W08
	.byte		N11   , Fn4 , v096
	.byte	W08
	.byte		N06   , En4 
	.byte	W04
	.byte		N02   
	.byte	W08
	.byte		N06   , Gn4 
	.byte	W04
	.byte		N11   , An4 
	.byte	W06
	.byte		N04   , Fn3 
	.byte	W06
	.byte		N11   , Dn5 
	.byte	W06
	.byte		N04   , Fn3 
	.byte	W06
@ 017   ----------------------------------------
	.byte		N14   , Cn5 
	.byte	W08
	.byte		N06   
	.byte	W10
	.byte		N04   , Gn3 
	.byte	W08
	.byte		N06   
	.byte	W10
	.byte		N11   , En4 
	.byte	W08
	.byte		N06   , An4 
	.byte	W04
	.byte		N24   , Cn5 
	.byte	W08
	.byte		N06   , As3 
	.byte	W04
	.byte		N04   , En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W08
	.byte		N06   , Fn3 
	.byte	W04
	.byte		N04   , En3 
	.byte	W06
	.byte		N05   , Gn3 
	.byte	W08
	.byte		N06   
	.byte	W04
@ 018   ----------------------------------------
	.byte		N02   , Gn3 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Fn3 , v104
	.byte	W06
	.byte		N10   , Fn3 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Gn3 , v104
	.byte	W06
	.byte		N11   , Gn3 , v112
	.byte	W06
	.byte		N04   , An3 
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Fn3 , v104
	.byte	W06
	.byte		N10   , Fn3 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        An3 , v104
	.byte	W06
	.byte		N11   , An3 , v112
	.byte	W06
	.byte		N04   , Gn3 
	.byte	W06
@ 019   ----------------------------------------
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Gn3 , v104
	.byte	W06
	.byte		        Dn4 , v112
	.byte	W06
	.byte		        En3 , v104
	.byte	W06
	.byte		        Ds3 , v112
	.byte	W06
	.byte		        Dn3 , v104
	.byte	W06
	.byte		        Cs3 , v112
	.byte	W06
	.byte		N10   , Cn3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn3 , v104
	.byte	W06
	.byte		        Cn3 , v112
	.byte	W06
	.byte		        Cn3 , v104
	.byte	W06
	.byte		        Cn3 , v112
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 020   ----------------------------------------
	.byte		N10   , Cs3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cs3 , v104
	.byte	W06
	.byte		        Gs3 , v112
	.byte	W06
	.byte		        Dn3 , v104
	.byte	W06
	.byte		        Dn3 , v112
	.byte	W06
	.byte		        Dn3 , v104
	.byte	W06
	.byte		        Ds3 , v112
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Ds3 , v104
	.byte	W06
	.byte		        As3 , v112
	.byte	W06
	.byte		        Dn3 , v104
	.byte	W06
	.byte		        Cs3 , v112
	.byte	W06
	.byte		        Cs3 , v104
	.byte	W06
	.byte		        Cn3 , v112
	.byte	W06
@ 021   ----------------------------------------
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn3 , v104
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        Gn3 , v104
	.byte	W06
	.byte		        An3 , v112
	.byte	W06
	.byte		        An3 , v104
	.byte	W06
	.byte		        As3 , v112
	.byte	W42
	.byte		N05   , Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 022   ----------------------------------------
	.byte		N10   , Cs4 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cs4 , v104
	.byte	W06
	.byte		        Gs4 , v112
	.byte	W06
	.byte		        Dn4 , v104
	.byte	W06
	.byte		        Dn4 , v112
	.byte	W06
	.byte		        Dn4 , v104
	.byte	W06
	.byte		        Ds4 , v112
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Ds4 , v104
	.byte	W06
	.byte		        As4 , v112
	.byte	W06
	.byte		        Dn4 , v104
	.byte	W06
	.byte		        Cs4 , v112
	.byte	W06
	.byte		        Cs4 , v104
	.byte	W06
	.byte		        Cn4 , v112
	.byte	W06
@ 023   ----------------------------------------
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn4 , v104
	.byte	W06
	.byte		        Gn4 , v112
	.byte	W06
	.byte		        Cn4 , v104
	.byte	W06
	.byte		        Cn4 , v112
	.byte	W06
	.byte		        Cn4 , v104
	.byte	W06
	.byte		        Cn4 , v112
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn4 , v104
	.byte	W06
	.byte		        Cn4 , v112
	.byte	W06
	.byte		        Cn4 , v104
	.byte	W06
	.byte		        Cn4 , v112
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As3 
	.byte	W06
@ 024   ----------------------------------------
	.byte		N24   , Cs4 
	.byte	W06
	.byte		N04   , An3 
	.byte	W06
	.byte		N10   , Fn3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Gn4 , v104
	.byte	W06
	.byte		N10   , Cs5 , v112
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cs5 , v104
	.byte	W06
	.byte		N05   , Cs5 , v112
	.byte	W06
	.byte		N10   , Ds5 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As4 
	.byte	W06
@ 025   ----------------------------------------
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        As4 , v104
	.byte	W06
	.byte		N05   , As4 , v112
	.byte	W06
	.byte		N04   , En5 
	.byte	W01
	.byte		        Ds5 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte		        Cs5 
	.byte	W02
	.byte		        Cn5 
	.byte	W01
	.byte		        Bn4 
	.byte	W02
	.byte		        As4 
	.byte	W02
	.byte		        An4 
	.byte	W01
	.byte		        Gs4 
	.byte	W02
	.byte		        Gn4 
	.byte	W01
	.byte		        Fs4 
	.byte	W02
	.byte		        Fn4 
	.byte	W02
	.byte		        En4 
	.byte	W01
	.byte		        Ds4 
	.byte	W02
	.byte		        Dn4 
	.byte	W01
	.byte		        Cs4 
	.byte	W02
	.byte		        Cn4 
	.byte	W02
	.byte		        Bn3 
	.byte	W01
	.byte		        As3 
	.byte	W02
	.byte		        An3 
	.byte	W01
	.byte		        Gs3 
	.byte	W02
	.byte		        Gn3 
	.byte	W03
	.byte		N10   , Fs3 
	.byte	W06
	.byte		N04   
	.byte	W05
	.byte		        Fs3 , v108
	.byte	W01
	.byte		        Fs3 , v104
	.byte	W05
	.byte		        An3 , v108
	.byte	W01
	.byte		        En4 , v112
	.byte	W05
	.byte		        As3 
	.byte	W01
	.byte		        An4 , v104
	.byte	W05
	.byte		        Ds5 , v112
	.byte	W01
	.byte		        Cn5 
	.byte	W06
@ 026   ----------------------------------------
	.byte		N05   , Ds5 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Ds5 , v104
	.byte	W06
	.byte		N05   , Ds5 , v112
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Dn5 , v104
	.byte	W06
	.byte		N05   , Dn5 , v112
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 027   ----------------------------------------
	.byte		        Cn5 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn5 , v104
	.byte	W06
	.byte		N05   , Cn5 , v112
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        As4 , v104
	.byte	W06
	.byte		N05   , As4 , v112
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N05   
	.byte	W06
@ 028   ----------------------------------------
	.byte		N10   , Cn3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn3 , v104
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        As2 , v104
	.byte	W06
	.byte		        As2 , v112
	.byte	W06
	.byte		        As2 , v104
	.byte	W06
	.byte		        As2 , v112
	.byte	W06
	.byte		N10   
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Cn3 , v104
	.byte	W06
	.byte		        Cs3 , v112
	.byte	W06
	.byte		N10   , Dn3 
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        En3 , v104
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
@ 029   ----------------------------------------
	.byte		N04   
	.byte	W06
	.byte		        Dn4 , v104
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn3 , v112
	.byte	W06
	.byte		        Cn4 , v104
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        Dn4 , v104
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 , v112
	.byte	W06
	.byte		        En4 , v104
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
@ 030   ----------------------------------------
	.byte		        Fn3 , v112
	.byte	W06
	.byte		        Cn4 , v104
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 , v112
	.byte	W06
	.byte		        En4 , v104
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        Dn4 , v104
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N17   , Cs3 , v112
	.byte	W06
	.byte		N04   , Gn3 , v104
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
@ 031   ----------------------------------------
	.byte		        Cn3 , v112
	.byte	W06
	.byte		        Gn3 , v104
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        As3 , v112
	.byte	W06
	.byte		        Fn3 , v104
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N24   , En3 , v112
	.byte	W06
	.byte		N04   , Gs3 , v104
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 , v112
	.byte	W06
	.byte		        En3 , v104
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_1_B1
mus_vs_gym_leader_metal_1_B2:
@ 032   ----------------------------------------
	.byte		N04   , Cn3 , v112
	.byte	W04
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_vs_gym_leader_metal_2:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 96*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v-18
	.byte		N08   , Cn2 , v088
	.byte		N08   , Gn2 , v084
	.byte	W48
	.byte		        Gs2 , v088
	.byte		N08   , Ds3 , v084
	.byte	W48
@ 001   ----------------------------------------
	.byte		        Cn2 , v088
	.byte		N08   , Gn2 , v084
	.byte	W48
	.byte		        Cn2 , v088
	.byte		N08   , Gn2 , v084
	.byte	W48
@ 002   ----------------------------------------
mus_vs_gym_leader_metal_2_002:
	.byte		N08   , Cn2 , v096
	.byte		N08   , Gn2 , v092
	.byte	W24
	.byte		        Fn2 , v096
	.byte		N08   , Cn3 , v092
	.byte	W24
	.byte		        Cn2 , v096
	.byte		N08   , Gn2 , v092
	.byte	W24
	.byte		        Fn2 , v096
	.byte		N08   , Cn3 , v092
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_002
mus_vs_gym_leader_metal_2_B1:
@ 005   ----------------------------------------
mus_vs_gym_leader_metal_2_005:
	.byte		N08   , Cn2 , v096
	.byte		N08   , Gn2 , v092
	.byte	W24
	.byte		        Cn2 , v096
	.byte		N08   , Gn2 , v092
	.byte	W24
	.byte		        Cn2 , v096
	.byte		N08   , Gn2 , v092
	.byte	W24
	.byte		        Cn2 , v096
	.byte		N08   , Gn2 , v092
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte		        Cn2 , v096
	.byte		N08   , Gn2 , v092
	.byte	W24
	.byte		        An2 , v096
	.byte		N08   , En3 , v092
	.byte	W24
	.byte		        Cn2 , v096
	.byte		N08   , Gn2 , v092
	.byte	W24
	.byte		        Gn2 , v096
	.byte		N08   , Dn3 , v092
	.byte	W24
@ 007   ----------------------------------------
mus_vs_gym_leader_metal_2_007:
	.byte		N08   , As1 , v096
	.byte		N08   , Fn2 , v092
	.byte	W24
	.byte		        As1 , v096
	.byte		N08   , Fn2 , v092
	.byte	W24
	.byte		        As1 , v096
	.byte		N08   , Fn2 , v092
	.byte	W24
	.byte		        As1 , v096
	.byte		N08   , Fn2 , v092
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
	.byte		        Cn2 , v096
	.byte		N08   , Gn2 , v092
	.byte		N12   , Cn3 , v100
	.byte		N12   , En3 
	.byte	W18
	.byte		N11   , Dn3 
	.byte		N11   , Fn3 
	.byte	W06
	.byte		N08   , Cn2 , v096
	.byte		N08   , Gn2 , v092
	.byte	W06
	.byte		N12   , Cn3 , v100
	.byte		N12   , En3 
	.byte	W18
	.byte		N08   , Cn2 , v096
	.byte		N08   , Gn2 , v092
	.byte	W06
	.byte		N11   , Cn3 , v100
	.byte		N11   , En3 
	.byte	W12
	.byte		N05   , Cn3 
	.byte		N05   , Gn3 
	.byte	W06
	.byte		N08   , Cn2 , v096
	.byte		N08   , Gn2 , v092
	.byte		N05   , An2 , v100
	.byte		N05   , Dn3 
	.byte	W06
	.byte		N12   , Cn3 
	.byte		N12   , En3 
	.byte	W18
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_007
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_005
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_005
@ 012   ----------------------------------------
	.byte		N08   , Cn2 , v096
	.byte		N02   , Gn2 , v100
	.byte	W06
	.byte		N02   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N08   , Cn2 , v096
	.byte		N08   , Gn2 , v092
	.byte	W06
	.byte		N02   , Gn2 , v100
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N08   , Cn2 , v096
	.byte		N05   , Gn2 , v100
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N08   , Cn2 , v096
	.byte		N08   , Gn2 , v092
	.byte	W06
	.byte		N02   , Gn2 , v100
	.byte	W06
	.byte		N02   
	.byte	W06
	.byte		N02   
	.byte	W06
@ 013   ----------------------------------------
mus_vs_gym_leader_metal_2_013:
	.byte		N08   , As1 , v092
	.byte		N08   , Fn2 , v088
	.byte	W48
	.byte		        As1 , v092
	.byte		N08   , Fn2 , v088
	.byte	W48
	.byte	PEND
@ 014   ----------------------------------------
mus_vs_gym_leader_metal_2_014:
	.byte		N08   , Cn2 , v092
	.byte		N08   , Gn2 , v088
	.byte	W48
	.byte		        Cn2 , v092
	.byte		N08   , Gn2 , v088
	.byte	W48
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_013
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_014
@ 017   ----------------------------------------
mus_vs_gym_leader_metal_2_017:
	.byte		N06   , Cn2 , v104
	.byte		N06   , Gn2 , v100
	.byte	W12
	.byte		        Cn2 , v104
	.byte		N06   , Gn2 , v100
	.byte	W12
	.byte		        Cn2 , v104
	.byte		N06   , Gn2 , v100
	.byte	W24
	.byte		        Cn2 , v104
	.byte		N06   , Gn2 , v100
	.byte	W12
	.byte		        Cn2 , v104
	.byte		N06   , Gn2 , v100
	.byte	W12
	.byte		        Cn2 , v104
	.byte		N06   , Gn2 , v100
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_017
@ 019   ----------------------------------------
mus_vs_gym_leader_metal_2_019:
	.byte		N06   , Cs2 , v104
	.byte		N06   , Gs2 , v100
	.byte	W12
	.byte		        Cs2 , v104
	.byte		N06   , Gs2 , v100
	.byte	W12
	.byte		        Cs2 , v104
	.byte		N06   , Gs2 , v100
	.byte	W24
	.byte		        Ds2 , v104
	.byte		N06   , As2 , v100
	.byte	W12
	.byte		        Ds2 , v104
	.byte		N06   , As2 , v100
	.byte	W12
	.byte		        Ds2 , v104
	.byte		N06   , As2 , v100
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_017
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_017
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_019
@ 024   ----------------------------------------
	.byte		N06   , As1 , v104
	.byte		N06   , Fn2 , v100
	.byte		N12   , As2 
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , As1 , v104
	.byte		N06   , Fn2 , v100
	.byte	W06
	.byte		N05   , As2 
	.byte		N05   , Fn3 
	.byte	W06
	.byte		N06   , As1 , v104
	.byte		N06   , Fn2 , v100
	.byte		N01   , En3 
	.byte	W01
	.byte		        Ds3 
	.byte	W02
	.byte		        Dn3 
	.byte	W01
	.byte		        Cs3 
	.byte	W02
	.byte		        Cn3 
	.byte	W01
	.byte		        Bn2 
	.byte	W02
	.byte		        As2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		        Gs3 
	.byte	W02
	.byte		        Gn3 
	.byte	W01
	.byte		        Fs3 
	.byte	W02
	.byte		        Fn3 
	.byte	W02
	.byte		        En3 
	.byte	W01
	.byte		        Ds3 
	.byte	W02
	.byte		        Dn3 
	.byte	W01
	.byte		        Cs3 
	.byte	W01
	.byte		N06   , As1 , v104
	.byte		N06   , Fn2 , v100
	.byte	W01
	.byte		N01   , Cn3 
	.byte	W02
	.byte		        Bn2 
	.byte	W01
	.byte		        As2 
	.byte	W02
	.byte		        An2 
	.byte	W01
	.byte		        Gs3 
	.byte	W02
	.byte		N02   , Gn3 
	.byte	W03
	.byte		N06   , As1 , v104
	.byte		N06   , Fn2 , v100
	.byte		N11   , Fs3 
	.byte	W12
	.byte		N06   , As1 , v104
	.byte		N06   , Fn2 , v100
	.byte	W24
@ 025   ----------------------------------------
mus_vs_gym_leader_metal_2_025:
	.byte		N06   , As1 , v104
	.byte		N06   , Fn2 , v100
	.byte	W12
	.byte		        As1 , v104
	.byte		N06   , Fn2 , v100
	.byte	W12
	.byte		        As1 , v104
	.byte		N06   , Fn2 , v100
	.byte	W24
	.byte		        As1 , v104
	.byte		N06   , Fn2 , v100
	.byte	W12
	.byte		        As1 , v104
	.byte		N06   , Fn2 , v100
	.byte	W12
	.byte		        As1 , v104
	.byte		N06   , Fn2 , v100
	.byte	W24
	.byte	PEND
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_025
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_017
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_017
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_025
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_2_017
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_2_B1
mus_vs_gym_leader_metal_2_B2:
@ 031   ----------------------------------------
	.byte		N06   , Gn2 , v104
	.byte		N06   , Dn3 , v100
	.byte	W06
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_vs_gym_leader_metal_3:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 114*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N11   , Cn2 , v088
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N05   , As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
@ 001   ----------------------------------------
	.byte		        Cn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
@ 002   ----------------------------------------
mus_vs_gym_leader_metal_3_002:
	.byte		N05   , Cn1 , v096
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_002
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_002
mus_vs_gym_leader_metal_3_B1:
@ 005   ----------------------------------------
	.byte		N05   , Cn1 , v096
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Cn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
@ 007   ----------------------------------------
mus_vs_gym_leader_metal_3_007:
	.byte		N05   , As0 , v096
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 009   ----------------------------------------
mus_vs_gym_leader_metal_3_009:
	.byte		N05   , As0 , v096
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 011   ----------------------------------------
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 012   ----------------------------------------
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		N05   
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_007
@ 014   ----------------------------------------
	.byte		N05   , Cn1 , v096
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_009
@ 016   ----------------------------------------
	.byte		N05   , Cn1 , v096
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
@ 017   ----------------------------------------
mus_vs_gym_leader_metal_3_017:
	.byte		N05   , Cn1 , v104
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_017
@ 019   ----------------------------------------
mus_vs_gym_leader_metal_3_019:
	.byte		N05   , Cs1 , v104
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_017
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_019
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_017
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_019
@ 024   ----------------------------------------
mus_vs_gym_leader_metal_3_024:
	.byte		N05   , As0 , v104
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_024
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_024
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_017
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_017
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_3_024
@ 030   ----------------------------------------
	.byte		N05   , Cn1 , v104
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_3_B1
mus_vs_gym_leader_metal_3_B2:
@ 031   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_vs_gym_leader_metal_4:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 84*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+4
	.byte		N02   , Gn3 , v080
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N02   , Gn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N02   , Gn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N02   , Gn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N05   , Gn4 
	.byte	W06
	.byte		N02   , Fn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N02   , Fn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N05   , Fn4 
	.byte	W06
	.byte		N02   , Fn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N05   , Fn4 
	.byte	W09
	.byte		N02   
	.byte	W06
	.byte		        Fs4 
	.byte	W03
@ 001   ----------------------------------------
	.byte		N23   , Cn4 
	.byte	W18
	.byte		N17   , Cs4 
	.byte	W06
	.byte		N23   , Cn3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W18
	.byte		N17   , Gs3 
	.byte	W06
	.byte		N23   , Cs3 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 002   ----------------------------------------
	.byte		N23   , Cn4 
	.byte	W18
	.byte		N17   , Cs4 
	.byte	W06
	.byte		N23   , Gn4 
	.byte	W12
	.byte		N11   , Cn3 
	.byte	W12
	.byte		N17   , Gn3 
	.byte		N23   , Cn4 
	.byte	W18
	.byte		N17   , Gs3 
	.byte	W06
	.byte		N23   , Cs4 
	.byte	W12
	.byte		N11   
	.byte	W12
@ 003   ----------------------------------------
	.byte		N23   , Cn4 
	.byte	W18
	.byte		N17   , Cs4 
	.byte	W06
	.byte		N23   , Cn3 
	.byte	W12
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N23   , Gn3 
	.byte		N17   , Gn4 
	.byte	W18
	.byte		        Gs4 
	.byte	W06
	.byte		N23   , Cs3 
	.byte	W12
	.byte		N11   , Cs4 
	.byte	W12
@ 004   ----------------------------------------
	.byte	W96
mus_vs_gym_leader_metal_4_B1:
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
	.byte		N23   , As3 , v076
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N11   , Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N32   , En4 
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N28   , Gn4 
	.byte	W30
	.byte		N05   
	.byte	W06
	.byte		        Cn4 
	.byte	W12
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
	.byte		N48   , Cn2 
	.byte	W84
	.byte		N05   , Cn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte		N48   , Fn3 
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte		N44   , Gn2 
	.byte	W48
	.byte		        Cn3 
	.byte	W48
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_4_B1
mus_vs_gym_leader_metal_4_B2:
@ 031   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.10) ****************@

mus_vs_gym_leader_metal_5:
	.byte	KEYSH , mus_vs_gym_leader_metal_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 122*mus_vs_gym_leader_metal_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N02   , Cn1 , v108
	.byte		N03   , Cs2 , v112
	.byte		N03   
	.byte	W24
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        Cn1 , v104
	.byte	W24
	.byte		        En1 , v108
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
@ 001   ----------------------------------------
	.byte		        Cn1 , v108
	.byte		N03   , Cs2 , v112
	.byte	W24
	.byte		N02   , Fs1 , v064
	.byte	W24
	.byte		        Cn1 , v104
	.byte	W24
	.byte		        En1 , v108
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Fs1 , v076
	.byte		N04   , Cs2 , v112
	.byte	W12
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v108
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v108
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cs2 , v112
	.byte	W06
	.byte		N02   , Fs1 , v068
	.byte	W12
@ 003   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Fs1 , v076
	.byte		N03   , Cs2 , v112
	.byte	W12
	.byte		N02   , Cn1 , v084
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v108
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v108
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
@ 004   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v108
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , En1 , v104
	.byte	W06
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte		N02   , Cs2 , v112
	.byte	W03
	.byte		        Cn1 , v104
	.byte	W09
	.byte		N03   
	.byte		N02   , En1 , v108
	.byte		N01   , En1 , v104
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N01   , En1 , v092
	.byte		N02   , Ds2 , v112
	.byte	W03
	.byte		        Cn1 , v104
	.byte	W03
	.byte		N01   , En1 , v100
	.byte		N01   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v104
	.byte	W03
	.byte		N01   , En1 , v108
	.byte	W03
	.byte		N02   , En1 , v104
	.byte	W03
mus_vs_gym_leader_metal_5_B1:
@ 005   ----------------------------------------
	.byte		N02   , Cn1 , v104
	.byte		N01   
	.byte		N02   , Fs1 , v076
	.byte		N03   , Cs2 , v112
	.byte		N03   
	.byte	W12
	.byte		N02   , Cn1 , v084
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v108
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v108
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Cn1 , v104
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , En1 , v104
	.byte	W06
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v104
	.byte	W09
	.byte		N03   
	.byte		N02   , En1 , v108
	.byte		N01   , En1 , v104
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Ds2 , v112
	.byte	W03
	.byte		        Cn1 , v104
	.byte	W03
	.byte		        En1 
	.byte		N02   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v104
	.byte	W06
	.byte		        En1 
	.byte	W03
	.byte		        Cn1 
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v108
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
@ 007   ----------------------------------------
mus_vs_gym_leader_metal_5_007:
	.byte		N02   , Cn1 , v104
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v108
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v108
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
mus_vs_gym_leader_metal_5_008:
	.byte		N02   , Cn1 , v104
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v108
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v108
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N01   , En1 , v092
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		N01   , En1 , v100
	.byte		N01   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W06
	.byte		N01   , En1 , v108
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_007
@ 010   ----------------------------------------
	.byte		N02   , Cn1 , v104
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v084
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v108
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v104
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , En1 , v104
	.byte	W06
	.byte		N02   , Cn1 , v084
	.byte		N02   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v104
	.byte	W09
	.byte		N03   
	.byte		N02   , En1 , v108
	.byte		N01   , En1 , v104
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Ds2 , v112
	.byte	W03
	.byte		        Cn1 , v104
	.byte	W03
	.byte		        En1 
	.byte		N02   , Fs1 , v068
	.byte	W03
	.byte		        Cn1 , v104
	.byte	W06
	.byte		        En1 
	.byte	W03
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_007
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_008
@ 013   ----------------------------------------
	.byte		N02   , Cn1 , v104
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v060
	.byte		N04   , Cs2 , v112
	.byte	W12
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N01   , Cn1 , v104
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        En1 , v112
	.byte		N02   , Fs1 , v060
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte		N02   , Fs1 , v052
	.byte	W12
@ 014   ----------------------------------------
mus_vs_gym_leader_metal_5_014:
	.byte		N02   , Cn1 , v104
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N01   , Cn1 , v104
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        En1 , v112
	.byte		N02   , Fs1 , v060
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_014
@ 016   ----------------------------------------
	.byte		N02   , Cn1 , v104
	.byte		N01   
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v060
	.byte	W12
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte		N02   , Fs1 , v052
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N01   , Cn1 , v104
	.byte		N01   , En1 , v072
	.byte		N01   , En1 , v104
	.byte		N02   , Fs1 , v060
	.byte	W06
	.byte		N01   , En1 , v080
	.byte		N01   , En1 , v104
	.byte	W06
	.byte		        En1 , v084
	.byte		N01   , En1 , v104
	.byte		N02   , Fs1 , v052
	.byte	W03
	.byte		        Cn1 , v104
	.byte	W03
	.byte		N01   , En1 , v088
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N02   , En1 , v112
	.byte		N01   , En1 , v104
	.byte		N02   , Fs1 , v060
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N01   , En1 , v100
	.byte		N02   , Ds2 , v112
	.byte	W03
	.byte		        Cn1 , v104
	.byte	W03
	.byte		N01   , En1 
	.byte		N01   
	.byte		N02   , Fs1 , v052
	.byte	W03
	.byte		        Cn1 , v104
	.byte	W03
	.byte		N01   , En1 , v108
	.byte	W03
	.byte		N02   , En1 , v104
	.byte	W03
@ 017   ----------------------------------------
	.byte		        Cn1 , v112
	.byte		N01   , Cn1 , v104
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v076
	.byte		N04   , Cs2 , v112
	.byte	W12
	.byte		N02   , Cn1 , v092
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v112
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Cn1 , v104
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v116
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		N02   , Cn1 , v100
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
@ 018   ----------------------------------------
	.byte		        Cn1 , v112
	.byte		N01   , Cn1 , v104
	.byte		N03   , En1 
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v112
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Cn1 , v104
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v116
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte	W06
	.byte		N02   , Cn1 , v100
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
@ 019   ----------------------------------------
mus_vs_gym_leader_metal_5_019:
	.byte		N02   , Cn1 , v112
	.byte		N01   , Cn1 , v104
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v112
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Cn1 , v104
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v116
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte	W06
	.byte		N02   , Cn1 , v100
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_vs_gym_leader_metal_5_020:
	.byte		N02   , Cn1 , v112
	.byte		N01   , Cn1 , v104
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v112
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Cn1 , v104
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v116
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N01   , En1 , v092
	.byte	W06
	.byte		N02   , Cn1 , v100
	.byte		N01   , En1 
	.byte		N01   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W06
	.byte		N01   , En1 , v108
	.byte	W06
	.byte	PEND
@ 021   ----------------------------------------
	.byte		N02   , Cn1 , v112
	.byte		N01   , Cn1 , v104
	.byte		N02   , Fs1 , v076
	.byte		N04   , Cs2 , v112
	.byte	W12
	.byte		N02   , Cn1 , v092
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v112
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte	W06
	.byte		        En1 
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Cn1 , v104
	.byte		N02   , Fs1 , v076
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
	.byte		        En1 , v116
	.byte		N02   , Fs1 , v076
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte	W06
	.byte		N02   , Cn1 , v100
	.byte		N03   , En1 , v104
	.byte		N02   , Fs1 , v068
	.byte	W12
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_019
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_019
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_020
@ 025   ----------------------------------------
	.byte		N02   , Cn1 , v112
	.byte		N01   , Cn1 , v104
	.byte		N04   , Cs2 , v112
	.byte		N02   , Ds2 , v084
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N03   , En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W12
	.byte		        En1 , v112
	.byte		N02   , Ds2 , v084
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte	W06
	.byte		        En1 
	.byte		N02   , Ds2 , v072
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Cn1 , v104
	.byte		N02   , Ds2 , v084
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N03   , En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W12
	.byte		        En1 , v116
	.byte		N02   , Ds2 , v084
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte	W06
	.byte		N02   , Cn1 , v100
	.byte		N03   , En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W12
@ 026   ----------------------------------------
	.byte		        Cn1 , v112
	.byte		N01   , Cn1 , v104
	.byte		N02   , Ds2 , v084
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N03   , En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W12
	.byte		        En1 , v112
	.byte		N02   , Ds2 , v084
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte	W06
	.byte		        En1 
	.byte		N02   , Ds2 , v072
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Cn1 , v104
	.byte		N03   , En1 
	.byte		N02   , Ds2 , v084
	.byte	W06
	.byte		N03   , En1 , v104
	.byte	W06
	.byte		N02   , Cn1 , v096
	.byte		N02   , En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W03
	.byte		        Cn1 , v104
	.byte	W09
	.byte		N03   
	.byte		N02   , En1 , v116
	.byte		N01   , En1 , v104
	.byte		N02   , Ds2 , v084
	.byte	W06
	.byte		        Cn1 , v104
	.byte		N02   , Ds2 , v112
	.byte	W03
	.byte		        Cn1 , v104
	.byte	W03
	.byte		N01   , Cn1 , v100
	.byte		N02   , En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W03
	.byte		        Cn1 , v104
	.byte	W06
	.byte		        En1 
	.byte	W03
@ 027   ----------------------------------------
mus_vs_gym_leader_metal_5_027:
	.byte		N02   , Cn1 , v112
	.byte		N01   , Cn1 , v104
	.byte		N03   , En1 
	.byte		N02   , Ds2 , v084
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N03   , En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W12
	.byte		        En1 , v112
	.byte		N02   , Ds2 , v084
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Cn1 , v104
	.byte		N03   , En1 
	.byte		N02   , Ds2 , v084
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N03   , En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W12
	.byte		        En1 , v116
	.byte		N02   , Ds2 , v084
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		N02   , Cn1 , v100
	.byte		N03   , En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
	.byte		        Cn1 , v112
	.byte		N01   , Cn1 , v104
	.byte		N03   , En1 
	.byte		N02   , Ds2 , v084
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N03   , En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W12
	.byte		        En1 , v112
	.byte		N02   , Ds2 , v084
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Cn1 , v104
	.byte		N03   , En1 
	.byte		N02   , Ds2 , v084
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N03   , En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W12
	.byte		        En1 , v116
	.byte		N02   , Ds2 , v084
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N01   , En1 , v092
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		N02   , Cn1 , v100
	.byte		N01   , En1 
	.byte		N01   , En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W06
	.byte		N01   , En1 , v108
	.byte	W06
@ 029   ----------------------------------------
	.byte		N02   , Cn1 , v112
	.byte		N01   , Cn1 , v104
	.byte		N03   , En1 
	.byte		N04   , Cs2 , v112
	.byte		N02   , Ds2 , v084
	.byte	W12
	.byte		        Cn1 , v092
	.byte		N03   , En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W12
	.byte		        En1 , v112
	.byte		N02   , Ds2 , v084
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		        En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W12
	.byte		        Cn1 , v108
	.byte		N01   , Cn1 , v104
	.byte		N03   , En1 
	.byte		N02   , Ds2 , v084
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N03   , En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W12
	.byte		        En1 , v116
	.byte		N02   , Ds2 , v084
	.byte	W06
	.byte		N03   , Cn1 , v104
	.byte		N03   , Ds2 , v112
	.byte	W06
	.byte		N02   , Cn1 , v100
	.byte		N03   , En1 , v104
	.byte		N02   , Ds2 , v072
	.byte	W12
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_gym_leader_metal_5_027
	.byte	GOTO
	 .word	mus_vs_gym_leader_metal_5_B1
mus_vs_gym_leader_metal_5_B2:
@ 031   ----------------------------------------
	.byte		N02   , Cn1 , v112
	.byte		N02   , Ds2 , v084
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_vs_gym_leader_metal:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_vs_gym_leader_metal_pri	@ Priority
	.byte	mus_vs_gym_leader_metal_rev	@ Reverb.

	.word	mus_vs_gym_leader_metal_grp

	.word	mus_vs_gym_leader_metal_1
	.word	mus_vs_gym_leader_metal_2
	.word	mus_vs_gym_leader_metal_3
	.word	mus_vs_gym_leader_metal_4
	.word	mus_vs_gym_leader_metal_5

	.end
